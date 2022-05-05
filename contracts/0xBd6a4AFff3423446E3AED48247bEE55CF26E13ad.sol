contract main {




// =====================  Runtime code  =====================


#
#  - sub_50204496(?)
#
address owner;
address refAddress;
array of struct stor2;
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

function _fallback() payable {
    revert
}

function liquidatePosition() payable {
  stop
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

function sub_bc10ca6c(?) payable {
    require calldata.size - 4 >= 64
    if arg1 and arg2 > -1 / arg1:
        revert with 0, 17
    if arg1 * arg2 / 100 < arg1:
        revert with 0, 17
    if arg1 * arg2 / 100 < (arg1 * arg2 / 100) - arg1:
        revert with 0, 17
    if arg1 < arg1:
        revert with 0, 17
    return arg1 * arg2 / 100, (arg1 * arg2 / 100) - arg1
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

function getTokenDecimals(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(arg1)
    staticcall arg1.0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    return ext_call.return_data[31 len 1]
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
    if ceil32(_5) <= _5:
        _19 = mem[64]
        mem[mem[64]] = 32
        mem[mem[64] + 32] = _5
        mem[mem[64] + 64 len ceil32(_5)] = mem[ceil32(return_data.size) + 128 len ceil32(_5)]
        if ceil32(_5) <= _5:
            return Array(len=_5, data=mem[mem[64] + 64 len ceil32(_5)])
        mem[mem[64] + _5 + 64] = 0
        return memory
          from mem[64]
           len ceil32(_5) + _19 + -mem[64] + 64
    mem[ceil32(return_data.size) + _5 + 128] = 0
    _20 = mem[64]
    mem[mem[64]] = 32
    mem[mem[64] + 32] = _5
    mem[mem[64] + 64 len ceil32(_5)] = mem[ceil32(return_data.size) + 128 len ceil32(_5)]
    if ceil32(_5) <= _5:
        return Array(len=_5, data=mem[mem[64] + 64 len ceil32(_5)])
    mem[mem[64] + _5 + 64] = 0
    return memory
      from mem[64]
       len ceil32(_5) + _20 + -mem[64] + 64
}

function getTokenSymbol(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[96] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
    require ext_code.size(arg1)
    staticcall arg1.0x95d89b41 with:
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
        _19 = mem[64]
        mem[mem[64]] = 32
        mem[mem[64] + 32] = _5
        mem[mem[64] + 64 len ceil32(_5)] = mem[ceil32(return_data.size) + 128 len ceil32(_5)]
        if ceil32(_5) <= _5:
            return Array(len=_5, data=mem[mem[64] + 64 len ceil32(_5)])
        mem[mem[64] + _5 + 64] = 0
        return memory
          from mem[64]
           len ceil32(_5) + _19 + -mem[64] + 64
    mem[ceil32(return_data.size) + _5 + 128] = 0
    _20 = mem[64]
    mem[mem[64]] = 32
    mem[mem[64] + 32] = _5
    mem[mem[64] + 64 len ceil32(_5)] = mem[ceil32(return_data.size) + 128 len ceil32(_5)]
    if ceil32(_5) <= _5:
        return Array(len=_5, data=mem[mem[64] + 64 len ceil32(_5)])
    mem[mem[64] + _5 + 64] = 0
    return memory
      from mem[64]
       len ceil32(_5) + _20 + -mem[64] + 64
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
        mem[ceil32(arg1.length) + ceil32(arg2.length) + arg1.length + 260] = 0
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 196] = ceil32(arg1.length) + 96
    mem[(2 * ceil32(arg1.length)) + ceil32(arg2.length) + 260] = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
    mem[(2 * ceil32(arg1.length)) + ceil32(arg2.length) + 292 len ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])] = mem[ceil32(arg1.length) + 160 len ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])]
    if ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) > Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]:
        mem[(2 * ceil32(arg1.length)) + ceil32(arg2.length) + Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] + 292] = 0
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

function sub_d2b65627(?) payable {
    require calldata.size - 4 >= 32
    if arg1 >= stor2.length:
        revert with 0, 50
    mem[0] = 2
    mem[96] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
    require ext_code.size(stor2[arg1].field_1536)
    staticcall stor2[arg1].field_1536.0x95d89b41 with:
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
        require ext_code.size(stor2[arg1].field_1536)
        staticcall stor2[arg1].field_1536.0x313ce567 with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _190 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _192 = mem[_190]
        require mem[_190] == mem[_190 + 31 len 1]
        _194 = mem[64]
        mem[64] = mem[64] + 64
        mem[_194] = 3
        mem[_194 + 32] = 0x5553440000000000000000000000000000000000000000000000000000000000
        _195 = mem[64]
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
            _540 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _551 = mem[64]
            if mem[64] + 96 > test266151307() or mem[64] + 96 < mem[64]:
                revert with 0, 65
            mem[64] = mem[64] + 96
            mem[_551] = mem[_540]
            mem[_551 + 32] = mem[_540 + 32]
            mem[_551 + 64] = mem[_540 + 64]
            if not uint8(_192):
                if stor2[arg1].field_1792 and mem[_551] > -1 / stor2[arg1].field_1792:
                    revert with 0, 17
                mem[mem[64]] = stor2[arg1].field_1792 * mem[_551]
                if stor2[arg1].field_2048 <= stor2[arg1].field_1792 * mem[_551]:
                    return mem[mem[64]], 0
            else:
                if bool(bool(uint8(_192) < 78)) or bool(bool(uint8(_192) < 32)):
                    if 10^uint8(_192) > -1:
                        revert with 0, 17
                    if stor2[arg1].field_1792 and mem[_551] > -1 / stor2[arg1].field_1792:
                        revert with 0, 17
                    if not 10^uint8(_192):
                        revert with 0, 18
                    mem[mem[64]] = stor2[arg1].field_1792 * mem[_551] / 10^uint8(_192)
                    if stor2[arg1].field_2048 <= stor2[arg1].field_1792 * mem[_551] / 10^uint8(_192):
                        return mem[mem[64]], 0
                else:
                    if var79005 > 1:
                        s = var79001
                        t = var79002
                        u = var79005
                        while s <= -1 / s:
                            if not bool(u):
                                if uint255(u) * 0.5 > 1:
                                    s = s * s
                                    t = t
                                    u = uint255(u) * 0.5
                                    continue 
                                if t > -1 / s * s:
                                    revert with 0, 17
                                if stor2[arg1].field_1792 and mem[_551] > -1 / stor2[arg1].field_1792:
                                    revert with 0, 17
                                if not s * s * t:
                                    revert with 0, 18
                                mem[mem[64]] = stor2[arg1].field_1792 * mem[_551] / s * s * t
                                if stor2[arg1].field_2048 <= stor2[arg1].field_1792 * mem[_551] / s * s * t:
                                    return mem[mem[64]], 0
                            else:
                                if uint255(u) * 0.5 > 1:
                                    s = s * s
                                    t = s * t
                                    u = uint255(u) * 0.5
                                    continue 
                                if s * t > -1 / s * s:
                                    revert with 0, 17
                                if stor2[arg1].field_1792 and mem[_551] > -1 / stor2[arg1].field_1792:
                                    revert with 0, 17
                                if not s * s * s * t:
                                    revert with 0, 18
                                mem[mem[64]] = stor2[arg1].field_1792 * mem[_551] / s * s * s * t
                                if stor2[arg1].field_2048 <= stor2[arg1].field_1792 * mem[_551] / s * s * s * t:
                                    return mem[mem[64]], 0
                            return mem[mem[64]], 1
                        revert with 0, 17
                    if var79002 > -1 / var79001:
                        revert with 0, 17
                    if stor2[arg1].field_1792 and mem[_551] > -1 / stor2[arg1].field_1792:
                        revert with 0, 17
                    if not var79001 * var79002:
                        revert with 0, 18
                    mem[mem[64]] = stor2[arg1].field_1792 * mem[_551] / var79001 * var79002
                    if stor2[arg1].field_2048 <= stor2[arg1].field_1792 * mem[_551] / var79001 * var79002:
                        return mem[mem[64]], 0
        else:
            mem[mem[64] + _6 + 100] = 0
            mem[mem[64] + 36] = ceil32(_6) + 96
            mem[ceil32(_6) + _195 + 100] = 3
            mem[ceil32(_6) + _195 + 132] = 0x5553440000000000000000000000000000000000000000000000000000000000
            mem[ceil32(_6) + _195 + 135] = 0
            require ext_code.size(refAddress)
            staticcall refAddress.getReferenceData(string arg1, string arg2) with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len ceil32(_6) + _195 + -mem[64] + 160]
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _541 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _555 = mem[64]
            if mem[64] + 96 > test266151307() or mem[64] + 96 < mem[64]:
                revert with 0, 65
            mem[64] = mem[64] + 96
            mem[_555] = mem[_541]
            mem[_555 + 32] = mem[_541 + 32]
            mem[_555 + 64] = mem[_541 + 64]
            if not uint8(_192):
                if stor2[arg1].field_1792 and mem[_555] > -1 / stor2[arg1].field_1792:
                    revert with 0, 17
                mem[mem[64]] = stor2[arg1].field_1792 * mem[_555]
                if stor2[arg1].field_2048 <= stor2[arg1].field_1792 * mem[_555]:
                    return mem[mem[64]], 0
            else:
                if bool(bool(uint8(_192) < 78)) or bool(bool(uint8(_192) < 32)):
                    if 10^uint8(_192) > -1:
                        revert with 0, 17
                    if stor2[arg1].field_1792 and mem[_555] > -1 / stor2[arg1].field_1792:
                        revert with 0, 17
                    if not 10^uint8(_192):
                        revert with 0, 18
                    mem[mem[64]] = stor2[arg1].field_1792 * mem[_555] / 10^uint8(_192)
                    if stor2[arg1].field_2048 <= stor2[arg1].field_1792 * mem[_555] / 10^uint8(_192):
                        return mem[mem[64]], 0
                else:
                    if var80005 > 1:
                        s = var80001
                        t = var80002
                        u = var80005
                        while s <= -1 / s:
                            if not bool(u):
                                if uint255(u) * 0.5 > 1:
                                    s = s * s
                                    t = t
                                    u = uint255(u) * 0.5
                                    continue 
                                if t > -1 / s * s:
                                    revert with 0, 17
                                if stor2[arg1].field_1792 and mem[_555] > -1 / stor2[arg1].field_1792:
                                    revert with 0, 17
                                if not s * s * t:
                                    revert with 0, 18
                                mem[mem[64]] = stor2[arg1].field_1792 * mem[_555] / s * s * t
                                if stor2[arg1].field_2048 <= stor2[arg1].field_1792 * mem[_555] / s * s * t:
                                    return mem[mem[64]], 0
                            else:
                                if uint255(u) * 0.5 > 1:
                                    s = s * s
                                    t = s * t
                                    u = uint255(u) * 0.5
                                    continue 
                                if s * t > -1 / s * s:
                                    revert with 0, 17
                                if stor2[arg1].field_1792 and mem[_555] > -1 / stor2[arg1].field_1792:
                                    revert with 0, 17
                                if not s * s * s * t:
                                    revert with 0, 18
                                mem[mem[64]] = stor2[arg1].field_1792 * mem[_555] / s * s * s * t
                                if stor2[arg1].field_2048 <= stor2[arg1].field_1792 * mem[_555] / s * s * s * t:
                                    return mem[mem[64]], 0
                            return mem[mem[64]], 1
                        revert with 0, 17
                    if var80002 > -1 / var80001:
                        revert with 0, 17
                    if stor2[arg1].field_1792 and mem[_555] > -1 / stor2[arg1].field_1792:
                        revert with 0, 17
                    if not var80001 * var80002:
                        revert with 0, 18
                    mem[mem[64]] = stor2[arg1].field_1792 * mem[_555] / var80001 * var80002
                    if stor2[arg1].field_2048 <= stor2[arg1].field_1792 * mem[_555] / var80001 * var80002:
                        return mem[mem[64]], 0
    else:
        mem[ceil32(return_data.size) + _6 + 128] = 0
        require ext_code.size(stor2[arg1].field_1536)
        staticcall stor2[arg1].field_1536.0x313ce567 with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _191 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _193 = mem[_191]
        require mem[_191] == mem[_191 + 31 len 1]
        _196 = mem[64]
        mem[64] = mem[64] + 64
        mem[_196] = 3
        mem[_196 + 32] = 0x5553440000000000000000000000000000000000000000000000000000000000
        _197 = mem[64]
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
            _542 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _559 = mem[64]
            if mem[64] + 96 > test266151307() or mem[64] + 96 < mem[64]:
                revert with 0, 65
            mem[64] = mem[64] + 96
            mem[_559] = mem[_542]
            mem[_559 + 32] = mem[_542 + 32]
            mem[_559 + 64] = mem[_542 + 64]
            if not uint8(_193):
                if stor2[arg1].field_1792 and mem[_559] > -1 / stor2[arg1].field_1792:
                    revert with 0, 17
                mem[mem[64]] = stor2[arg1].field_1792 * mem[_559]
                if stor2[arg1].field_2048 <= stor2[arg1].field_1792 * mem[_559]:
                    return mem[mem[64]], 0
            else:
                if bool(bool(uint8(_193) < 78)) or bool(bool(uint8(_193) < 32)):
                    if 10^uint8(_193) > -1:
                        revert with 0, 17
                    if stor2[arg1].field_1792 and mem[_559] > -1 / stor2[arg1].field_1792:
                        revert with 0, 17
                    if not 10^uint8(_193):
                        revert with 0, 18
                    mem[mem[64]] = stor2[arg1].field_1792 * mem[_559] / 10^uint8(_193)
                    if stor2[arg1].field_2048 <= stor2[arg1].field_1792 * mem[_559] / 10^uint8(_193):
                        return mem[mem[64]], 0
                else:
                    if var80005 > 1:
                        s = var80001
                        t = var80002
                        u = var80005
                        while s <= -1 / s:
                            if not bool(u):
                                if uint255(u) * 0.5 > 1:
                                    s = s * s
                                    t = t
                                    u = uint255(u) * 0.5
                                    continue 
                                if t > -1 / s * s:
                                    revert with 0, 17
                                if stor2[arg1].field_1792 and mem[_559] > -1 / stor2[arg1].field_1792:
                                    revert with 0, 17
                                if not s * s * t:
                                    revert with 0, 18
                                mem[mem[64]] = stor2[arg1].field_1792 * mem[_559] / s * s * t
                                if stor2[arg1].field_2048 <= stor2[arg1].field_1792 * mem[_559] / s * s * t:
                                    return mem[mem[64]], 0
                            else:
                                if uint255(u) * 0.5 > 1:
                                    s = s * s
                                    t = s * t
                                    u = uint255(u) * 0.5
                                    continue 
                                if s * t > -1 / s * s:
                                    revert with 0, 17
                                if stor2[arg1].field_1792 and mem[_559] > -1 / stor2[arg1].field_1792:
                                    revert with 0, 17
                                if not s * s * s * t:
                                    revert with 0, 18
                                mem[mem[64]] = stor2[arg1].field_1792 * mem[_559] / s * s * s * t
                                if stor2[arg1].field_2048 <= stor2[arg1].field_1792 * mem[_559] / s * s * s * t:
                                    return mem[mem[64]], 0
                            return mem[mem[64]], 1
                        revert with 0, 17
                    if var80002 > -1 / var80001:
                        revert with 0, 17
                    if stor2[arg1].field_1792 and mem[_559] > -1 / stor2[arg1].field_1792:
                        revert with 0, 17
                    if not var80001 * var80002:
                        revert with 0, 18
                    mem[mem[64]] = stor2[arg1].field_1792 * mem[_559] / var80001 * var80002
                    if stor2[arg1].field_2048 <= stor2[arg1].field_1792 * mem[_559] / var80001 * var80002:
                        return mem[mem[64]], 0
        else:
            mem[mem[64] + _6 + 100] = 0
            mem[mem[64] + 36] = ceil32(_6) + 96
            mem[ceil32(_6) + _197 + 100] = 3
            mem[ceil32(_6) + _197 + 132] = 0x5553440000000000000000000000000000000000000000000000000000000000
            mem[ceil32(_6) + _197 + 135] = 0
            require ext_code.size(refAddress)
            staticcall refAddress.getReferenceData(string arg1, string arg2) with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len ceil32(_6) + _197 + -mem[64] + 160]
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _543 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _563 = mem[64]
            if mem[64] + 96 > test266151307() or mem[64] + 96 < mem[64]:
                revert with 0, 65
            mem[64] = mem[64] + 96
            mem[_563] = mem[_543]
            mem[_563 + 32] = mem[_543 + 32]
            mem[_563 + 64] = mem[_543 + 64]
            if not uint8(_193):
                if stor2[arg1].field_1792 and mem[_563] > -1 / stor2[arg1].field_1792:
                    revert with 0, 17
                mem[mem[64]] = stor2[arg1].field_1792 * mem[_563]
                if stor2[arg1].field_2048 <= stor2[arg1].field_1792 * mem[_563]:
                    return mem[mem[64]], 0
            else:
                if bool(bool(uint8(_193) < 78)) or bool(bool(uint8(_193) < 32)):
                    if 10^uint8(_193) > -1:
                        revert with 0, 17
                    if stor2[arg1].field_1792 and mem[_563] > -1 / stor2[arg1].field_1792:
                        revert with 0, 17
                    if not 10^uint8(_193):
                        revert with 0, 18
                    mem[mem[64]] = stor2[arg1].field_1792 * mem[_563] / 10^uint8(_193)
                    if stor2[arg1].field_2048 <= stor2[arg1].field_1792 * mem[_563] / 10^uint8(_193):
                        return mem[mem[64]], 0
                else:
                    if var81005 > 1:
                        s = var81001
                        t = var81002
                        u = var81005
                        while s <= -1 / s:
                            if not bool(u):
                                if uint255(u) * 0.5 > 1:
                                    s = s * s
                                    t = t
                                    u = uint255(u) * 0.5
                                    continue 
                                if t > -1 / s * s:
                                    revert with 0, 17
                                if stor2[arg1].field_1792 and mem[_563] > -1 / stor2[arg1].field_1792:
                                    revert with 0, 17
                                if not s * s * t:
                                    revert with 0, 18
                                mem[mem[64]] = stor2[arg1].field_1792 * mem[_563] / s * s * t
                                if stor2[arg1].field_2048 <= stor2[arg1].field_1792 * mem[_563] / s * s * t:
                                    return mem[mem[64]], 0
                            else:
                                if uint255(u) * 0.5 > 1:
                                    s = s * s
                                    t = s * t
                                    u = uint255(u) * 0.5
                                    continue 
                                if s * t > -1 / s * s:
                                    revert with 0, 17
                                if stor2[arg1].field_1792 and mem[_563] > -1 / stor2[arg1].field_1792:
                                    revert with 0, 17
                                if not s * s * s * t:
                                    revert with 0, 18
                                mem[mem[64]] = stor2[arg1].field_1792 * mem[_563] / s * s * s * t
                                if stor2[arg1].field_2048 <= stor2[arg1].field_1792 * mem[_563] / s * s * s * t:
                                    return mem[mem[64]], 0
                            return mem[mem[64]], 1
                        revert with 0, 17
                    if var81002 > -1 / var81001:
                        revert with 0, 17
                    if stor2[arg1].field_1792 and mem[_563] > -1 / stor2[arg1].field_1792:
                        revert with 0, 17
                    if not var81001 * var81002:
                        revert with 0, 18
                    mem[mem[64]] = stor2[arg1].field_1792 * mem[_563] / var81001 * var81002
                    if stor2[arg1].field_2048 <= stor2[arg1].field_1792 * mem[_563] / var81001 * var81002:
                        return mem[mem[64]], 0
    return mem[mem[64]], 1
}

function sub_f08d010c(?) payable {
    require calldata.size - 4 >= 32
    if arg1 >= stor2.length:
        revert with 0, 50
    mem[0] = 2
    mem[96] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
    require ext_code.size(stor2[arg1].field_1536)
    staticcall stor2[arg1].field_1536.0x95d89b41 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _6 = mem[96]
    require mem[96] <= test266151307()
    require return_data.size + 96 > mem[96] + 127
    _7 = mem[mem[96] + 96]
    if mem[mem[96] + 96] > test266151307():
        revert with 0, 65
    if ceil32(mem[mem[96] + 96]) + 32 < 0 or ceil32(return_data.size) + ceil32(mem[mem[96] + 96]) + 128 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(return_data.size) + ceil32(mem[mem[96] + 96]) + 128
    mem[ceil32(return_data.size) + 96] = _7
    require _6 + _7 + 32 <= return_data.size
    mem[ceil32(return_data.size) + 128 len ceil32(_7)] = mem[_6 + 128 len ceil32(_7)]
    if ceil32(_7) <= _7:
        require ext_code.size(stor2[arg1].field_1536)
        staticcall stor2[arg1].field_1536.0x313ce567 with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _383 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _385 = mem[_383]
        require mem[_383] == mem[_383 + 31 len 1]
        _387 = mem[64]
        mem[64] = mem[64] + 64
        mem[_387] = 3
        mem[_387 + 32] = 0x5553440000000000000000000000000000000000000000000000000000000000
        _388 = mem[64]
        mem[mem[64]] = 0x65555bcc00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 64
        mem[mem[64] + 68] = _7
        mem[mem[64] + 100 len ceil32(_7)] = mem[ceil32(return_data.size) + 128 len ceil32(_7)]
        if ceil32(_7) <= _7:
            mem[ceil32(_7) + mem[64] + 100] = 3
            mem[ceil32(_7) + mem[64] + 132] = 0x5553440000000000000000000000000000000000000000000000000000000000
            mem[ceil32(_7) + mem[64] + 135] = 0
            require ext_code.size(refAddress)
            staticcall refAddress.getReferenceData(string arg1, string arg2) with:
                    gas gas_remaining wei
                   args 64, ceil32(_7) + 96, _7, mem[mem[64] + 100 len ceil32(_7) + 32], 0, 0
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1117 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _1128 = mem[64]
            if mem[64] + 96 > test266151307() or mem[64] + 96 < mem[64]:
                revert with 0, 65
            mem[64] = mem[64] + 96
            mem[_1128] = mem[_1117]
            if not uint8(_385):
                if stor2[arg1].field_1792 and mem[_1128] > -1 / stor2[arg1].field_1792:
                    revert with 0, 17
                if stor2[arg1].field_2048 <= stor2[arg1].field_1792 * mem[_1128]:
                    return 0
                if stor2[arg1].field_2048 < stor2[arg1].field_1792 * mem[_1128]:
                    revert with 0, 17
                if stor2[arg1].field_2048 - (stor2[arg1].field_1792 * mem[_1128]) <= stor2[arg1].field_768:
                    return 0
            else:
                if bool(bool(uint8(_385) < 78)) or bool(bool(uint8(_385) < 32)):
                    if 10^uint8(_385) > -1:
                        revert with 0, 17
                    if stor2[arg1].field_1792 and mem[_1128] > -1 / stor2[arg1].field_1792:
                        revert with 0, 17
                    if not 10^uint8(_385):
                        revert with 0, 18
                    if stor2[arg1].field_2048 <= stor2[arg1].field_1792 * mem[_1128] / 10^uint8(_385):
                        return 0
                    if stor2[arg1].field_2048 < stor2[arg1].field_1792 * mem[_1128] / 10^uint8(_385):
                        revert with 0, 17
                    if stor2[arg1].field_2048 - (stor2[arg1].field_1792 * mem[_1128] / 10^uint8(_385)) <= stor2[arg1].field_768:
                        return 0
                else:
                    if var81005 > 1:
                        s = var81001
                        t = var81002
                        u = var81005
                        while s <= -1 / s:
                            if not bool(u):
                                if uint255(u) * 0.5 > 1:
                                    s = s * s
                                    t = t
                                    u = uint255(u) * 0.5
                                    continue 
                                if t > -1 / s * s:
                                    revert with 0, 17
                                if stor2[arg1].field_1792 and mem[_1128] > -1 / stor2[arg1].field_1792:
                                    revert with 0, 17
                                if not s * s * t:
                                    revert with 0, 18
                                if stor2[arg1].field_2048 <= stor2[arg1].field_1792 * mem[_1128] / s * s * t:
                                    return 0
                                if stor2[arg1].field_2048 < stor2[arg1].field_1792 * mem[_1128] / s * s * t:
                                    revert with 0, 17
                                if stor2[arg1].field_2048 - (stor2[arg1].field_1792 * mem[_1128] / s * s * t) <= stor2[arg1].field_768:
                                    return 0
                            else:
                                if uint255(u) * 0.5 > 1:
                                    s = s * s
                                    t = s * t
                                    u = uint255(u) * 0.5
                                    continue 
                                if s * t > -1 / s * s:
                                    revert with 0, 17
                                if stor2[arg1].field_1792 and mem[_1128] > -1 / stor2[arg1].field_1792:
                                    revert with 0, 17
                                if not s * s * s * t:
                                    revert with 0, 18
                                if stor2[arg1].field_2048 <= stor2[arg1].field_1792 * mem[_1128] / s * s * s * t:
                                    return 0
                                if stor2[arg1].field_2048 < stor2[arg1].field_1792 * mem[_1128] / s * s * s * t:
                                    revert with 0, 17
                                if stor2[arg1].field_2048 - (stor2[arg1].field_1792 * mem[_1128] / s * s * s * t) <= stor2[arg1].field_768:
                                    return 0
                            return 1
                        revert with 0, 17
                    if var81002 > -1 / var81001:
                        revert with 0, 17
                    if stor2[arg1].field_1792 and mem[_1128] > -1 / stor2[arg1].field_1792:
                        revert with 0, 17
                    if not var81001 * var81002:
                        revert with 0, 18
                    if stor2[arg1].field_2048 <= stor2[arg1].field_1792 * mem[_1128] / var81001 * var81002:
                        return 0
                    if stor2[arg1].field_2048 < stor2[arg1].field_1792 * mem[_1128] / var81001 * var81002:
                        revert with 0, 17
                    if stor2[arg1].field_2048 - (stor2[arg1].field_1792 * mem[_1128] / var81001 * var81002) <= stor2[arg1].field_768:
                        return 0
        else:
            mem[mem[64] + _7 + 100] = 0
            mem[mem[64] + 36] = ceil32(_7) + 96
            mem[ceil32(_7) + _388 + 100] = 3
            mem[ceil32(_7) + _388 + 132] = 0x5553440000000000000000000000000000000000000000000000000000000000
            mem[ceil32(_7) + _388 + 135] = 0
            require ext_code.size(refAddress)
            staticcall refAddress.getReferenceData(string arg1, string arg2) with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len ceil32(_7) + _388 + -mem[64] + 160]
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1118 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _1132 = mem[64]
            if mem[64] + 96 > test266151307() or mem[64] + 96 < mem[64]:
                revert with 0, 65
            mem[64] = mem[64] + 96
            mem[_1132] = mem[_1118]
            if not uint8(_385):
                if stor2[arg1].field_1792 and mem[_1132] > -1 / stor2[arg1].field_1792:
                    revert with 0, 17
                if stor2[arg1].field_2048 <= stor2[arg1].field_1792 * mem[_1132]:
                    return 0
                if stor2[arg1].field_2048 < stor2[arg1].field_1792 * mem[_1132]:
                    revert with 0, 17
                if stor2[arg1].field_2048 - (stor2[arg1].field_1792 * mem[_1132]) <= stor2[arg1].field_768:
                    return 0
            else:
                if bool(bool(uint8(_385) < 78)) or bool(bool(uint8(_385) < 32)):
                    if 10^uint8(_385) > -1:
                        revert with 0, 17
                    if stor2[arg1].field_1792 and mem[_1132] > -1 / stor2[arg1].field_1792:
                        revert with 0, 17
                    if not 10^uint8(_385):
                        revert with 0, 18
                    if stor2[arg1].field_2048 <= stor2[arg1].field_1792 * mem[_1132] / 10^uint8(_385):
                        return 0
                    if stor2[arg1].field_2048 < stor2[arg1].field_1792 * mem[_1132] / 10^uint8(_385):
                        revert with 0, 17
                    if stor2[arg1].field_2048 - (stor2[arg1].field_1792 * mem[_1132] / 10^uint8(_385)) <= stor2[arg1].field_768:
                        return 0
                else:
                    if var82005 > 1:
                        s = var82001
                        t = var82002
                        u = var82005
                        while s <= -1 / s:
                            if not bool(u):
                                if uint255(u) * 0.5 > 1:
                                    s = s * s
                                    t = t
                                    u = uint255(u) * 0.5
                                    continue 
                                if t > -1 / s * s:
                                    revert with 0, 17
                                if stor2[arg1].field_1792 and mem[_1132] > -1 / stor2[arg1].field_1792:
                                    revert with 0, 17
                                if not s * s * t:
                                    revert with 0, 18
                                if stor2[arg1].field_2048 <= stor2[arg1].field_1792 * mem[_1132] / s * s * t:
                                    return 0
                                if stor2[arg1].field_2048 < stor2[arg1].field_1792 * mem[_1132] / s * s * t:
                                    revert with 0, 17
                                if stor2[arg1].field_2048 - (stor2[arg1].field_1792 * mem[_1132] / s * s * t) <= stor2[arg1].field_768:
                                    return 0
                            else:
                                if uint255(u) * 0.5 > 1:
                                    s = s * s
                                    t = s * t
                                    u = uint255(u) * 0.5
                                    continue 
                                if s * t > -1 / s * s:
                                    revert with 0, 17
                                if stor2[arg1].field_1792 and mem[_1132] > -1 / stor2[arg1].field_1792:
                                    revert with 0, 17
                                if not s * s * s * t:
                                    revert with 0, 18
                                if stor2[arg1].field_2048 <= stor2[arg1].field_1792 * mem[_1132] / s * s * s * t:
                                    return 0
                                if stor2[arg1].field_2048 < stor2[arg1].field_1792 * mem[_1132] / s * s * s * t:
                                    revert with 0, 17
                                if stor2[arg1].field_2048 - (stor2[arg1].field_1792 * mem[_1132] / s * s * s * t) <= stor2[arg1].field_768:
                                    return 0
                            return 1
                        revert with 0, 17
                    if var82002 > -1 / var82001:
                        revert with 0, 17
                    if stor2[arg1].field_1792 and mem[_1132] > -1 / stor2[arg1].field_1792:
                        revert with 0, 17
                    if not var82001 * var82002:
                        revert with 0, 18
                    if stor2[arg1].field_2048 <= stor2[arg1].field_1792 * mem[_1132] / var82001 * var82002:
                        return 0
                    if stor2[arg1].field_2048 < stor2[arg1].field_1792 * mem[_1132] / var82001 * var82002:
                        revert with 0, 17
                    if stor2[arg1].field_2048 - (stor2[arg1].field_1792 * mem[_1132] / var82001 * var82002) <= stor2[arg1].field_768:
                        return 0
    else:
        mem[ceil32(return_data.size) + _7 + 128] = 0
        require ext_code.size(stor2[arg1].field_1536)
        staticcall stor2[arg1].field_1536.0x313ce567 with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _384 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _386 = mem[_384]
        require mem[_384] == mem[_384 + 31 len 1]
        _389 = mem[64]
        mem[64] = mem[64] + 64
        mem[_389] = 3
        mem[_389 + 32] = 0x5553440000000000000000000000000000000000000000000000000000000000
        _390 = mem[64]
        mem[mem[64]] = 0x65555bcc00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 64
        mem[mem[64] + 68] = _7
        mem[mem[64] + 100 len ceil32(_7)] = mem[ceil32(return_data.size) + 128 len ceil32(_7)]
        if ceil32(_7) <= _7:
            mem[ceil32(_7) + mem[64] + 100] = 3
            mem[ceil32(_7) + mem[64] + 132] = 0x5553440000000000000000000000000000000000000000000000000000000000
            mem[ceil32(_7) + mem[64] + 135] = 0
            require ext_code.size(refAddress)
            staticcall refAddress.getReferenceData(string arg1, string arg2) with:
                    gas gas_remaining wei
                   args 64, ceil32(_7) + 96, _7, mem[mem[64] + 100 len ceil32(_7) + 32], 0, 0
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1119 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _1136 = mem[64]
            if mem[64] + 96 > test266151307() or mem[64] + 96 < mem[64]:
                revert with 0, 65
            mem[64] = mem[64] + 96
            mem[_1136] = mem[_1119]
            if not uint8(_386):
                if stor2[arg1].field_1792 and mem[_1136] > -1 / stor2[arg1].field_1792:
                    revert with 0, 17
                if stor2[arg1].field_2048 <= stor2[arg1].field_1792 * mem[_1136]:
                    return 0
                if stor2[arg1].field_2048 < stor2[arg1].field_1792 * mem[_1136]:
                    revert with 0, 17
                if stor2[arg1].field_2048 - (stor2[arg1].field_1792 * mem[_1136]) <= stor2[arg1].field_768:
                    return 0
            else:
                if bool(bool(uint8(_386) < 78)) or bool(bool(uint8(_386) < 32)):
                    if 10^uint8(_386) > -1:
                        revert with 0, 17
                    if stor2[arg1].field_1792 and mem[_1136] > -1 / stor2[arg1].field_1792:
                        revert with 0, 17
                    if not 10^uint8(_386):
                        revert with 0, 18
                    if stor2[arg1].field_2048 <= stor2[arg1].field_1792 * mem[_1136] / 10^uint8(_386):
                        return 0
                    if stor2[arg1].field_2048 < stor2[arg1].field_1792 * mem[_1136] / 10^uint8(_386):
                        revert with 0, 17
                    if stor2[arg1].field_2048 - (stor2[arg1].field_1792 * mem[_1136] / 10^uint8(_386)) <= stor2[arg1].field_768:
                        return 0
                else:
                    if var82005 > 1:
                        s = var82001
                        t = var82002
                        u = var82005
                        while s <= -1 / s:
                            if not bool(u):
                                if uint255(u) * 0.5 > 1:
                                    s = s * s
                                    t = t
                                    u = uint255(u) * 0.5
                                    continue 
                                if t > -1 / s * s:
                                    revert with 0, 17
                                if stor2[arg1].field_1792 and mem[_1136] > -1 / stor2[arg1].field_1792:
                                    revert with 0, 17
                                if not s * s * t:
                                    revert with 0, 18
                                if stor2[arg1].field_2048 <= stor2[arg1].field_1792 * mem[_1136] / s * s * t:
                                    return 0
                                if stor2[arg1].field_2048 < stor2[arg1].field_1792 * mem[_1136] / s * s * t:
                                    revert with 0, 17
                                if stor2[arg1].field_2048 - (stor2[arg1].field_1792 * mem[_1136] / s * s * t) <= stor2[arg1].field_768:
                                    return 0
                            else:
                                if uint255(u) * 0.5 > 1:
                                    s = s * s
                                    t = s * t
                                    u = uint255(u) * 0.5
                                    continue 
                                if s * t > -1 / s * s:
                                    revert with 0, 17
                                if stor2[arg1].field_1792 and mem[_1136] > -1 / stor2[arg1].field_1792:
                                    revert with 0, 17
                                if not s * s * s * t:
                                    revert with 0, 18
                                if stor2[arg1].field_2048 <= stor2[arg1].field_1792 * mem[_1136] / s * s * s * t:
                                    return 0
                                if stor2[arg1].field_2048 < stor2[arg1].field_1792 * mem[_1136] / s * s * s * t:
                                    revert with 0, 17
                                if stor2[arg1].field_2048 - (stor2[arg1].field_1792 * mem[_1136] / s * s * s * t) <= stor2[arg1].field_768:
                                    return 0
                            return 1
                        revert with 0, 17
                    if var82002 > -1 / var82001:
                        revert with 0, 17
                    if stor2[arg1].field_1792 and mem[_1136] > -1 / stor2[arg1].field_1792:
                        revert with 0, 17
                    if not var82001 * var82002:
                        revert with 0, 18
                    if stor2[arg1].field_2048 <= stor2[arg1].field_1792 * mem[_1136] / var82001 * var82002:
                        return 0
                    if stor2[arg1].field_2048 < stor2[arg1].field_1792 * mem[_1136] / var82001 * var82002:
                        revert with 0, 17
                    if stor2[arg1].field_2048 - (stor2[arg1].field_1792 * mem[_1136] / var82001 * var82002) <= stor2[arg1].field_768:
                        return 0
        else:
            mem[mem[64] + _7 + 100] = 0
            mem[mem[64] + 36] = ceil32(_7) + 96
            mem[ceil32(_7) + _390 + 100] = 3
            mem[ceil32(_7) + _390 + 132] = 0x5553440000000000000000000000000000000000000000000000000000000000
            mem[ceil32(_7) + _390 + 135] = 0
            require ext_code.size(refAddress)
            staticcall refAddress.getReferenceData(string arg1, string arg2) with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len ceil32(_7) + _390 + -mem[64] + 160]
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1120 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _1140 = mem[64]
            if mem[64] + 96 > test266151307() or mem[64] + 96 < mem[64]:
                revert with 0, 65
            mem[64] = mem[64] + 96
            mem[_1140] = mem[_1120]
            if not uint8(_386):
                if stor2[arg1].field_1792 and mem[_1140] > -1 / stor2[arg1].field_1792:
                    revert with 0, 17
                if stor2[arg1].field_2048 <= stor2[arg1].field_1792 * mem[_1140]:
                    return 0
                if stor2[arg1].field_2048 < stor2[arg1].field_1792 * mem[_1140]:
                    revert with 0, 17
                if stor2[arg1].field_2048 - (stor2[arg1].field_1792 * mem[_1140]) <= stor2[arg1].field_768:
                    return 0
            else:
                if bool(bool(uint8(_386) < 78)) or bool(bool(uint8(_386) < 32)):
                    if 10^uint8(_386) > -1:
                        revert with 0, 17
                    if stor2[arg1].field_1792 and mem[_1140] > -1 / stor2[arg1].field_1792:
                        revert with 0, 17
                    if not 10^uint8(_386):
                        revert with 0, 18
                    if stor2[arg1].field_2048 <= stor2[arg1].field_1792 * mem[_1140] / 10^uint8(_386):
                        return 0
                    if stor2[arg1].field_2048 < stor2[arg1].field_1792 * mem[_1140] / 10^uint8(_386):
                        revert with 0, 17
                    if stor2[arg1].field_2048 - (stor2[arg1].field_1792 * mem[_1140] / 10^uint8(_386)) <= stor2[arg1].field_768:
                        return 0
                else:
                    if var83005 > 1:
                        s = var83001
                        t = var83002
                        u = var83005
                        while s <= -1 / s:
                            if not bool(u):
                                if uint255(u) * 0.5 > 1:
                                    s = s * s
                                    t = t
                                    u = uint255(u) * 0.5
                                    continue 
                                if t > -1 / s * s:
                                    revert with 0, 17
                                if stor2[arg1].field_1792 and mem[_1140] > -1 / stor2[arg1].field_1792:
                                    revert with 0, 17
                                if not s * s * t:
                                    revert with 0, 18
                                if stor2[arg1].field_2048 <= stor2[arg1].field_1792 * mem[_1140] / s * s * t:
                                    return 0
                                if stor2[arg1].field_2048 < stor2[arg1].field_1792 * mem[_1140] / s * s * t:
                                    revert with 0, 17
                                if stor2[arg1].field_2048 - (stor2[arg1].field_1792 * mem[_1140] / s * s * t) <= stor2[arg1].field_768:
                                    return 0
                            else:
                                if uint255(u) * 0.5 > 1:
                                    s = s * s
                                    t = s * t
                                    u = uint255(u) * 0.5
                                    continue 
                                if s * t > -1 / s * s:
                                    revert with 0, 17
                                if stor2[arg1].field_1792 and mem[_1140] > -1 / stor2[arg1].field_1792:
                                    revert with 0, 17
                                if not s * s * s * t:
                                    revert with 0, 18
                                if stor2[arg1].field_2048 <= stor2[arg1].field_1792 * mem[_1140] / s * s * s * t:
                                    return 0
                                if stor2[arg1].field_2048 < stor2[arg1].field_1792 * mem[_1140] / s * s * s * t:
                                    revert with 0, 17
                                if stor2[arg1].field_2048 - (stor2[arg1].field_1792 * mem[_1140] / s * s * s * t) <= stor2[arg1].field_768:
                                    return 0
                            return 1
                        revert with 0, 17
                    if var83002 > -1 / var83001:
                        revert with 0, 17
                    if stor2[arg1].field_1792 and mem[_1140] > -1 / stor2[arg1].field_1792:
                        revert with 0, 17
                    if not var83001 * var83002:
                        revert with 0, 18
                    if stor2[arg1].field_2048 <= stor2[arg1].field_1792 * mem[_1140] / var83001 * var83002:
                        return 0
                    if stor2[arg1].field_2048 < stor2[arg1].field_1792 * mem[_1140] / var83001 * var83002:
                        revert with 0, 17
                    if stor2[arg1].field_2048 - (stor2[arg1].field_1792 * mem[_1140] / var83001 * var83002) <= stor2[arg1].field_768:
                        return 0
    return 1
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
    _475 = mem[224 len 4], Mask(224, 32, arg1 * arg2 / 100) >> 32
    require mem[224 len 4], Mask(224, 32, arg1 * arg2 / 100) >> 32 <= test266151307()
    require mem[224 len 4], Mask(224, 32, arg1 * arg2 / 100) >> 32 + 255 < return_data.size + 224
    _476 = mem[mem[224 len 4], Mask(224, 32, arg1 * arg2 / 100) >> 32 + 224]
    if mem[mem[224 len 4], Mask(224, 32, arg1 * arg2 / 100) >> 32 + 224] > test266151307():
        revert with 0, 65
    if (32 * mem[mem[224 len 4], Mask(224, 32, arg1 * arg2 / 100) >> 32 + 224]) + 32 < 0 or ceil32(return_data.size) + (32 * mem[mem[224 len 4], Mask(224, 32, arg1 * arg2 / 100) >> 32 + 224]) + 256 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(return_data.size) + (32 * mem[mem[224 len 4], Mask(224, 32, arg1 * arg2 / 100) >> 32 + 224]) + 256
    mem[ceil32(return_data.size) + 224] = mem[mem[224 len 4], Mask(224, 32, arg1 * arg2 / 100) >> 32 + 224]
    require return_data.size >= _475 + (32 * _476) + 32
    mem[ceil32(return_data.size) + 256 len 32 * _476] = mem[_475 + 256 len 32 * _476]
    if 2 >= _476:
        revert with 0, 50
    _930 = mem[ceil32(return_data.size) + 320]
    mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
    require ext_code.size(address(arg4))
    staticcall address(arg4).0x95d89b41 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _933 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _934 = mem[_933]
    require mem[_933] <= test266151307()
    require _933 + return_data.size > _933 + mem[_933] + 31
    _935 = mem[_933 + mem[_933]]
    if mem[_933 + mem[_933]] > test266151307():
        revert with 0, 65
    if ceil32(mem[_933 + mem[_933]]) + 32 < 0 or _933 + ceil32(return_data.size) + ceil32(mem[_933 + mem[_933]]) + 32 > test266151307():
        revert with 0, 65
    mem[64] = _933 + ceil32(return_data.size) + ceil32(mem[_933 + mem[_933]]) + 32
    mem[_933 + ceil32(return_data.size)] = _935
    require _934 + _935 + 32 <= return_data.size
    mem[_933 + ceil32(return_data.size) + 32 len ceil32(_935)] = mem[_933 + _934 + 32 len ceil32(_935)]
    if ceil32(_935) <= _935:
        require ext_code.size(address(arg4))
        staticcall address(arg4).0x313ce567 with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1383 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _1385 = mem[_1383]
        require mem[_1383] == mem[_1383 + 31 len 1]
        _1387 = mem[64]
        mem[64] = mem[64] + 64
        mem[_1387] = 3
        mem[_1387 + 32] = 0x5553440000000000000000000000000000000000000000000000000000000000
        mem[mem[64]] = 0x65555bcc00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 64
        mem[mem[64] + 68] = _935
        mem[mem[64] + 100 len ceil32(_935)] = mem[_933 + ceil32(return_data.size) + 32 len ceil32(_935)]
        if ceil32(_935) <= _935:
            mem[ceil32(_935) + mem[64] + 100] = 3
            mem[ceil32(_935) + mem[64] + 132] = 0x5553440000000000000000000000000000000000000000000000000000000000
            mem[ceil32(_935) + mem[64] + 135] = 0
            require ext_code.size(refAddress)
            staticcall refAddress.getReferenceData(string arg1, string arg2) with:
                    gas gas_remaining wei
                   args 64, ceil32(_935) + 96, _935, mem[mem[64] + 100 len ceil32(_935) + 32], 0, 0
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2261 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _2272 = mem[64]
            if mem[64] + 96 > test266151307() or mem[64] + 96 < mem[64]:
                revert with 0, 65
            mem[64] = mem[64] + 96
            mem[_2272] = mem[_2261]
            if not uint8(_1385):
                if _930 and mem[_2272] > -1 / _930:
                    revert with 0, 17
                stor2.length++
                stor2[stor2.length].field_0 = 0
                stor2[stor2.length].field_256 = block.timestamp
                stor2[stor2.length].field_512 = msg.sender
                stor2[stor2.length].field_768 = arg1
                stor2[stor2.length].field_1024 = arg2
                stor2[stor2.length].field_1280 = address(arg3)
                stor2[stor2.length].field_1536 = address(arg4)
                stor2[stor2.length].field_1792 = _930
                stor2[stor2.length].field_2048 = _930 * mem[_2272]
                emit 0x102c3eb8: arg1, arg2, address(arg3), address(arg4)
                return (_930 * mem[_2272])
            if bool(bool(uint8(_1385) < 78)) or bool(bool(uint8(_1385) < 32)):
                if 10^uint8(_1385) > -1:
                    revert with 0, 17
                if _930 and mem[_2272] > -1 / _930:
                    revert with 0, 17
                if not 10^uint8(_1385):
                    revert with 0, 18
                stor2.length++
                stor2[stor2.length].field_0 = 0
                stor2[stor2.length].field_256 = block.timestamp
                stor2[stor2.length].field_512 = msg.sender
                stor2[stor2.length].field_768 = arg1
                stor2[stor2.length].field_1024 = arg2
                stor2[stor2.length].field_1280 = address(arg3)
                stor2[stor2.length].field_1536 = address(arg4)
                stor2[stor2.length].field_1792 = _930
                stor2[stor2.length].field_2048 = _930 * mem[_2272] / 10^uint8(_1385)
                emit 0x102c3eb8: arg1, arg2, address(arg3), address(arg4)
                return (_930 * mem[_2272] / 10^uint8(_1385))
            if var141005 > 1:
                s = var141001
                t = var141002
                u = var141005
                while s <= -1 / s:
                    if not bool(u):
                        if uint255(u) * 0.5 > 1:
                            s = s * s
                            t = t
                            u = uint255(u) * 0.5
                            continue 
                        if t > -1 / s * s:
                            revert with 0, 17
                        if _930 and mem[_2272] > -1 / _930:
                            revert with 0, 17
                        if not s * s * t:
                            revert with 0, 18
                        stor2.length++
                        stor2[stor2.length].field_0 = 0
                        stor2[stor2.length].field_256 = block.timestamp
                        stor2[stor2.length].field_512 = msg.sender
                        stor2[stor2.length].field_768 = arg1
                        stor2[stor2.length].field_1024 = arg2
                        stor2[stor2.length].field_1280 = address(arg3)
                        stor2[stor2.length].field_1536 = address(arg4)
                        stor2[stor2.length].field_1792 = _930
                        stor2[stor2.length].field_2048 = _930 * mem[_2272] / s * s * t
                        emit 0x102c3eb8: arg1, arg2, address(arg3), address(arg4)
                        return (_930 * mem[_2272] / s * s * t)
                    if uint255(u) * 0.5 > 1:
                        s = s * s
                        t = s * t
                        u = uint255(u) * 0.5
                        continue 
                    if s * t > -1 / s * s:
                        revert with 0, 17
                    if _930 and mem[_2272] > -1 / _930:
                        revert with 0, 17
                    if not s * s * s * t:
                        revert with 0, 18
                    stor2.length++
                    stor2[stor2.length].field_0 = 0
                    stor2[stor2.length].field_256 = block.timestamp
                    stor2[stor2.length].field_512 = msg.sender
                    stor2[stor2.length].field_768 = arg1
                    stor2[stor2.length].field_1024 = arg2
                    stor2[stor2.length].field_1280 = address(arg3)
                    stor2[stor2.length].field_1536 = address(arg4)
                    stor2[stor2.length].field_1792 = _930
                    stor2[stor2.length].field_2048 = _930 * mem[_2272] / s * s * s * t
                    emit 0x102c3eb8: arg1, arg2, address(arg3), address(arg4)
                    return (_930 * mem[_2272] / s * s * s * t)
                revert with 0, 17
            if var141002 > -1 / var141001:
                revert with 0, 17
            if _930 and mem[_2272] > -1 / _930:
                revert with 0, 17
            if not var141001 * var141002:
                revert with 0, 18
            stor2.length++
            stor2[stor2.length].field_0 = 0
            stor2[stor2.length].field_256 = block.timestamp
            stor2[stor2.length].field_512 = msg.sender
            stor2[stor2.length].field_768 = arg1
            stor2[stor2.length].field_1024 = arg2
            stor2[stor2.length].field_1280 = address(arg3)
            stor2[stor2.length].field_1536 = address(arg4)
            stor2[stor2.length].field_1792 = _930
            stor2[stor2.length].field_2048 = _930 * mem[_2272] / var141001 * var141002
            emit 0x102c3eb8: arg1, arg2, address(arg3), address(arg4)
            return (_930 * mem[_2272] / var141001 * var141002)
        mem[mem[64] + _935 + 100] = 0
        mem[ceil32(_935) + mem[64] + 100] = 3
        mem[ceil32(_935) + mem[64] + 132] = 0x5553440000000000000000000000000000000000000000000000000000000000
        mem[ceil32(_935) + mem[64] + 135] = 0
        require ext_code.size(refAddress)
        staticcall refAddress.getReferenceData(string arg1, string arg2) with:
                gas gas_remaining wei
               args 64, ceil32(_935) + 96, _935, mem[mem[64] + 100 len ceil32(_935) + 32], 0, 0
        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _2262 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 96
        _2276 = mem[64]
        if mem[64] + 96 > test266151307() or mem[64] + 96 < mem[64]:
            revert with 0, 65
        mem[64] = mem[64] + 96
        mem[_2276] = mem[_2262]
        if not uint8(_1385):
            if _930 and mem[_2276] > -1 / _930:
                revert with 0, 17
            stor2.length++
            stor2[stor2.length].field_0 = 0
            stor2[stor2.length].field_256 = block.timestamp
            stor2[stor2.length].field_512 = msg.sender
            stor2[stor2.length].field_768 = arg1
            stor2[stor2.length].field_1024 = arg2
            stor2[stor2.length].field_1280 = address(arg3)
            stor2[stor2.length].field_1536 = address(arg4)
            stor2[stor2.length].field_1792 = _930
            stor2[stor2.length].field_2048 = _930 * mem[_2276]
            emit 0x102c3eb8: arg1, arg2, address(arg3), address(arg4)
            return (_930 * mem[_2276])
        if bool(bool(uint8(_1385) < 78)) or bool(bool(uint8(_1385) < 32)):
            if 10^uint8(_1385) > -1:
                revert with 0, 17
            if _930 and mem[_2276] > -1 / _930:
                revert with 0, 17
            if not 10^uint8(_1385):
                revert with 0, 18
            stor2.length++
            stor2[stor2.length].field_0 = 0
            stor2[stor2.length].field_256 = block.timestamp
            stor2[stor2.length].field_512 = msg.sender
            stor2[stor2.length].field_768 = arg1
            stor2[stor2.length].field_1024 = arg2
            stor2[stor2.length].field_1280 = address(arg3)
            stor2[stor2.length].field_1536 = address(arg4)
            stor2[stor2.length].field_1792 = _930
            stor2[stor2.length].field_2048 = _930 * mem[_2276] / 10^uint8(_1385)
            emit 0x102c3eb8: arg1, arg2, address(arg3), address(arg4)
            return (_930 * mem[_2276] / 10^uint8(_1385))
        if var142005 > 1:
            s = var142001
            t = var142002
            u = var142005
            while s <= -1 / s:
                if not bool(u):
                    if uint255(u) * 0.5 > 1:
                        s = s * s
                        t = t
                        u = uint255(u) * 0.5
                        continue 
                    if t > -1 / s * s:
                        revert with 0, 17
                    if _930 and mem[_2276] > -1 / _930:
                        revert with 0, 17
                    if not s * s * t:
                        revert with 0, 18
                    stor2.length++
                    stor2[stor2.length].field_0 = 0
                    stor2[stor2.length].field_256 = block.timestamp
                    stor2[stor2.length].field_512 = msg.sender
                    stor2[stor2.length].field_768 = arg1
                    stor2[stor2.length].field_1024 = arg2
                    stor2[stor2.length].field_1280 = address(arg3)
                    stor2[stor2.length].field_1536 = address(arg4)
                    stor2[stor2.length].field_1792 = _930
                    stor2[stor2.length].field_2048 = _930 * mem[_2276] / s * s * t
                    emit 0x102c3eb8: arg1, arg2, address(arg3), address(arg4)
                    return (_930 * mem[_2276] / s * s * t)
                if uint255(u) * 0.5 > 1:
                    s = s * s
                    t = s * t
                    u = uint255(u) * 0.5
                    continue 
                if s * t > -1 / s * s:
                    revert with 0, 17
                if _930 and mem[_2276] > -1 / _930:
                    revert with 0, 17
                if not s * s * s * t:
                    revert with 0, 18
                stor2.length++
                stor2[stor2.length].field_0 = 0
                stor2[stor2.length].field_256 = block.timestamp
                stor2[stor2.length].field_512 = msg.sender
                stor2[stor2.length].field_768 = arg1
                stor2[stor2.length].field_1024 = arg2
                stor2[stor2.length].field_1280 = address(arg3)
                stor2[stor2.length].field_1536 = address(arg4)
                stor2[stor2.length].field_1792 = _930
                stor2[stor2.length].field_2048 = _930 * mem[_2276] / s * s * s * t
                emit 0x102c3eb8: arg1, arg2, address(arg3), address(arg4)
                return (_930 * mem[_2276] / s * s * s * t)
            revert with 0, 17
        if var142002 > -1 / var142001:
            revert with 0, 17
        if _930 and mem[_2276] > -1 / _930:
            revert with 0, 17
        if not var142001 * var142002:
            revert with 0, 18
        stor2.length++
        stor2[stor2.length].field_0 = 0
        stor2[stor2.length].field_256 = block.timestamp
        stor2[stor2.length].field_512 = msg.sender
        stor2[stor2.length].field_768 = arg1
        stor2[stor2.length].field_1024 = arg2
        stor2[stor2.length].field_1280 = address(arg3)
        stor2[stor2.length].field_1536 = address(arg4)
        stor2[stor2.length].field_1792 = _930
        stor2[stor2.length].field_2048 = _930 * mem[_2276] / var142001 * var142002
        emit 0x102c3eb8: arg1, arg2, address(arg3), address(arg4)
        return (_930 * mem[_2276] / var142001 * var142002)
    mem[_933 + ceil32(return_data.size) + _935 + 32] = 0
    require ext_code.size(address(arg4))
    staticcall address(arg4).0x313ce567 with:
            gas gas_remaining wei
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _1384 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _1386 = mem[_1384]
    require mem[_1384] == mem[_1384 + 31 len 1]
    _1389 = mem[64]
    mem[64] = mem[64] + 64
    mem[_1389] = 3
    mem[_1389 + 32] = 0x5553440000000000000000000000000000000000000000000000000000000000
    mem[mem[64]] = 0x65555bcc00000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = 64
    mem[mem[64] + 68] = _935
    mem[mem[64] + 100 len ceil32(_935)] = mem[_933 + ceil32(return_data.size) + 32 len ceil32(_935)]
    if ceil32(_935) <= _935:
        mem[ceil32(_935) + mem[64] + 100] = 3
        mem[ceil32(_935) + mem[64] + 132] = 0x5553440000000000000000000000000000000000000000000000000000000000
        mem[ceil32(_935) + mem[64] + 135] = 0
        require ext_code.size(refAddress)
        staticcall refAddress.getReferenceData(string arg1, string arg2) with:
                gas gas_remaining wei
               args 64, ceil32(_935) + 96, _935, mem[mem[64] + 100 len ceil32(_935) + 32], 0, 0
        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _2263 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 96
        _2280 = mem[64]
        if mem[64] + 96 > test266151307() or mem[64] + 96 < mem[64]:
            revert with 0, 65
        mem[64] = mem[64] + 96
        mem[_2280] = mem[_2263]
        if not uint8(_1386):
            if _930 and mem[_2280] > -1 / _930:
                revert with 0, 17
            stor2.length++
            stor2[stor2.length].field_0 = 0
            stor2[stor2.length].field_256 = block.timestamp
            stor2[stor2.length].field_512 = msg.sender
            stor2[stor2.length].field_768 = arg1
            stor2[stor2.length].field_1024 = arg2
            stor2[stor2.length].field_1280 = address(arg3)
            stor2[stor2.length].field_1536 = address(arg4)
            stor2[stor2.length].field_1792 = _930
            stor2[stor2.length].field_2048 = _930 * mem[_2280]
            emit 0x102c3eb8: arg1, arg2, address(arg3), address(arg4)
            return (_930 * mem[_2280])
        if bool(bool(uint8(_1386) < 78)) or bool(bool(uint8(_1386) < 32)):
            if 10^uint8(_1386) > -1:
                revert with 0, 17
            if _930 and mem[_2280] > -1 / _930:
                revert with 0, 17
            if not 10^uint8(_1386):
                revert with 0, 18
            stor2.length++
            stor2[stor2.length].field_0 = 0
            stor2[stor2.length].field_256 = block.timestamp
            stor2[stor2.length].field_512 = msg.sender
            stor2[stor2.length].field_768 = arg1
            stor2[stor2.length].field_1024 = arg2
            stor2[stor2.length].field_1280 = address(arg3)
            stor2[stor2.length].field_1536 = address(arg4)
            stor2[stor2.length].field_1792 = _930
            stor2[stor2.length].field_2048 = _930 * mem[_2280] / 10^uint8(_1386)
            emit 0x102c3eb8: arg1, arg2, address(arg3), address(arg4)
            return (_930 * mem[_2280] / 10^uint8(_1386))
        if var142005 > 1:
            s = var142001
            t = var142002
            u = var142005
            while s <= -1 / s:
                if not bool(u):
                    if uint255(u) * 0.5 > 1:
                        s = s * s
                        t = t
                        u = uint255(u) * 0.5
                        continue 
                    if t > -1 / s * s:
                        revert with 0, 17
                    if _930 and mem[_2280] > -1 / _930:
                        revert with 0, 17
                    if not s * s * t:
                        revert with 0, 18
                    stor2.length++
                    stor2[stor2.length].field_0 = 0
                    stor2[stor2.length].field_256 = block.timestamp
                    stor2[stor2.length].field_512 = msg.sender
                    stor2[stor2.length].field_768 = arg1
                    stor2[stor2.length].field_1024 = arg2
                    stor2[stor2.length].field_1280 = address(arg3)
                    stor2[stor2.length].field_1536 = address(arg4)
                    stor2[stor2.length].field_1792 = _930
                    stor2[stor2.length].field_2048 = _930 * mem[_2280] / s * s * t
                    emit 0x102c3eb8: arg1, arg2, address(arg3), address(arg4)
                    return (_930 * mem[_2280] / s * s * t)
                if uint255(u) * 0.5 > 1:
                    s = s * s
                    t = s * t
                    u = uint255(u) * 0.5
                    continue 
                if s * t > -1 / s * s:
                    revert with 0, 17
                if _930 and mem[_2280] > -1 / _930:
                    revert with 0, 17
                if not s * s * s * t:
                    revert with 0, 18
                stor2.length++
                stor2[stor2.length].field_0 = 0
                stor2[stor2.length].field_256 = block.timestamp
                stor2[stor2.length].field_512 = msg.sender
                stor2[stor2.length].field_768 = arg1
                stor2[stor2.length].field_1024 = arg2
                stor2[stor2.length].field_1280 = address(arg3)
                stor2[stor2.length].field_1536 = address(arg4)
                stor2[stor2.length].field_1792 = _930
                stor2[stor2.length].field_2048 = _930 * mem[_2280] / s * s * s * t
                emit 0x102c3eb8: arg1, arg2, address(arg3), address(arg4)
                return (_930 * mem[_2280] / s * s * s * t)
            revert with 0, 17
        if var142002 > -1 / var142001:
            revert with 0, 17
        if _930 and mem[_2280] > -1 / _930:
            revert with 0, 17
        if not var142001 * var142002:
            revert with 0, 18
        stor2.length++
        stor2[stor2.length].field_0 = 0
        stor2[stor2.length].field_256 = block.timestamp
        stor2[stor2.length].field_512 = msg.sender
        stor2[stor2.length].field_768 = arg1
        stor2[stor2.length].field_1024 = arg2
        stor2[stor2.length].field_1280 = address(arg3)
        stor2[stor2.length].field_1536 = address(arg4)
        stor2[stor2.length].field_1792 = _930
        stor2[stor2.length].field_2048 = _930 * mem[_2280] / var142001 * var142002
        emit 0x102c3eb8: arg1, arg2, address(arg3), address(arg4)
        return (_930 * mem[_2280] / var142001 * var142002)
    mem[mem[64] + _935 + 100] = 0
    mem[ceil32(_935) + mem[64] + 100] = 3
    mem[ceil32(_935) + mem[64] + 132] = 0x5553440000000000000000000000000000000000000000000000000000000000
    mem[ceil32(_935) + mem[64] + 135] = 0
    require ext_code.size(refAddress)
    staticcall refAddress.getReferenceData(string arg1, string arg2) with:
            gas gas_remaining wei
           args 64, ceil32(_935) + 96, _935, mem[mem[64] + 100 len ceil32(_935) + 32], 0, 0
    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _2264 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 96
    _2284 = mem[64]
    if mem[64] + 96 > test266151307() or mem[64] + 96 < mem[64]:
        revert with 0, 65
    mem[64] = mem[64] + 96
    mem[_2284] = mem[_2264]
    if not uint8(_1386):
        if _930 and mem[_2284] > -1 / _930:
            revert with 0, 17
        stor2.length++
        stor2[stor2.length].field_0 = 0
        stor2[stor2.length].field_256 = block.timestamp
        stor2[stor2.length].field_512 = msg.sender
        stor2[stor2.length].field_768 = arg1
        stor2[stor2.length].field_1024 = arg2
        stor2[stor2.length].field_1280 = address(arg3)
        stor2[stor2.length].field_1536 = address(arg4)
        stor2[stor2.length].field_1792 = _930
        stor2[stor2.length].field_2048 = _930 * mem[_2284]
        emit 0x102c3eb8: arg1, arg2, address(arg3), address(arg4)
        return (_930 * mem[_2284])
    if bool(bool(uint8(_1386) < 78)) or bool(bool(uint8(_1386) < 32)):
        if 10^uint8(_1386) > -1:
            revert with 0, 17
        if _930 and mem[_2284] > -1 / _930:
            revert with 0, 17
        if not 10^uint8(_1386):
            revert with 0, 18
        stor2.length++
        stor2[stor2.length].field_0 = 0
        stor2[stor2.length].field_256 = block.timestamp
        stor2[stor2.length].field_512 = msg.sender
        stor2[stor2.length].field_768 = arg1
        stor2[stor2.length].field_1024 = arg2
        stor2[stor2.length].field_1280 = address(arg3)
        stor2[stor2.length].field_1536 = address(arg4)
        stor2[stor2.length].field_1792 = _930
        stor2[stor2.length].field_2048 = _930 * mem[_2284] / 10^uint8(_1386)
        emit 0x102c3eb8: arg1, arg2, address(arg3), address(arg4)
        return (_930 * mem[_2284] / 10^uint8(_1386))
    if var143005 > 1:
        s = var143001
        t = var143002
        u = var143005
        while s <= -1 / s:
            if not bool(u):
                if uint255(u) * 0.5 > 1:
                    s = s * s
                    t = t
                    u = uint255(u) * 0.5
                    continue 
                if t > -1 / s * s:
                    revert with 0, 17
                if _930 and mem[_2284] > -1 / _930:
                    revert with 0, 17
                if not s * s * t:
                    revert with 0, 18
                stor2.length++
                stor2[stor2.length].field_0 = 0
                stor2[stor2.length].field_256 = block.timestamp
                stor2[stor2.length].field_512 = msg.sender
                stor2[stor2.length].field_768 = arg1
                stor2[stor2.length].field_1024 = arg2
                stor2[stor2.length].field_1280 = address(arg3)
                stor2[stor2.length].field_1536 = address(arg4)
                stor2[stor2.length].field_1792 = _930
                stor2[stor2.length].field_2048 = _930 * mem[_2284] / s * s * t
                emit 0x102c3eb8: arg1, arg2, address(arg3), address(arg4)
                return (_930 * mem[_2284] / s * s * t)
            if uint255(u) * 0.5 > 1:
                s = s * s
                t = s * t
                u = uint255(u) * 0.5
                continue 
            if s * t > -1 / s * s:
                revert with 0, 17
            if _930 and mem[_2284] > -1 / _930:
                revert with 0, 17
            if not s * s * s * t:
                revert with 0, 18
            stor2.length++
            stor2[stor2.length].field_0 = 0
            stor2[stor2.length].field_256 = block.timestamp
            stor2[stor2.length].field_512 = msg.sender
            stor2[stor2.length].field_768 = arg1
            stor2[stor2.length].field_1024 = arg2
            stor2[stor2.length].field_1280 = address(arg3)
            stor2[stor2.length].field_1536 = address(arg4)
            stor2[stor2.length].field_1792 = _930
            stor2[stor2.length].field_2048 = _930 * mem[_2284] / s * s * s * t
            emit 0x102c3eb8: arg1, arg2, address(arg3), address(arg4)
            return (_930 * mem[_2284] / s * s * s * t)
        revert with 0, 17
    if var143002 > -1 / var143001:
        revert with 0, 17
    if _930 and mem[_2284] > -1 / _930:
        revert with 0, 17
    if not var143001 * var143002:
        revert with 0, 18
    stor2.length++
    stor2[stor2.length].field_0 = 0
    stor2[stor2.length].field_256 = block.timestamp
    stor2[stor2.length].field_512 = msg.sender
    stor2[stor2.length].field_768 = arg1
    stor2[stor2.length].field_1024 = arg2
    stor2[stor2.length].field_1280 = address(arg3)
    stor2[stor2.length].field_1536 = address(arg4)
    stor2[stor2.length].field_1792 = _930
    stor2[stor2.length].field_2048 = _930 * mem[_2284] / var143001 * var143002
    emit 0x102c3eb8: arg1, arg2, address(arg3), address(arg4)
    return (_930 * mem[_2284] / var143001 * var143002)
}

function sub_0d8bfaba(?) payable {
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
    _475 = mem[224 len 4], Mask(224, 32, arg1 * arg2 / 100) >> 32
    require mem[224 len 4], Mask(224, 32, arg1 * arg2 / 100) >> 32 <= test266151307()
    require mem[224 len 4], Mask(224, 32, arg1 * arg2 / 100) >> 32 + 255 < return_data.size + 224
    _476 = mem[mem[224 len 4], Mask(224, 32, arg1 * arg2 / 100) >> 32 + 224]
    if mem[mem[224 len 4], Mask(224, 32, arg1 * arg2 / 100) >> 32 + 224] > test266151307():
        revert with 0, 65
    if (32 * mem[mem[224 len 4], Mask(224, 32, arg1 * arg2 / 100) >> 32 + 224]) + 32 < 0 or ceil32(return_data.size) + (32 * mem[mem[224 len 4], Mask(224, 32, arg1 * arg2 / 100) >> 32 + 224]) + 256 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(return_data.size) + (32 * mem[mem[224 len 4], Mask(224, 32, arg1 * arg2 / 100) >> 32 + 224]) + 256
    mem[ceil32(return_data.size) + 224] = mem[mem[224 len 4], Mask(224, 32, arg1 * arg2 / 100) >> 32 + 224]
    require return_data.size >= _475 + (32 * _476) + 32
    mem[ceil32(return_data.size) + 256 len 32 * _476] = mem[_475 + 256 len 32 * _476]
    if 2 >= _476:
        revert with 0, 50
    _930 = mem[ceil32(return_data.size) + 320]
    mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
    require ext_code.size(address(arg3))
    staticcall address(arg3).0x95d89b41 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _933 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _934 = mem[_933]
    require mem[_933] <= test266151307()
    require _933 + return_data.size > _933 + mem[_933] + 31
    _935 = mem[_933 + mem[_933]]
    if mem[_933 + mem[_933]] > test266151307():
        revert with 0, 65
    if ceil32(mem[_933 + mem[_933]]) + 32 < 0 or _933 + ceil32(return_data.size) + ceil32(mem[_933 + mem[_933]]) + 32 > test266151307():
        revert with 0, 65
    mem[64] = _933 + ceil32(return_data.size) + ceil32(mem[_933 + mem[_933]]) + 32
    mem[_933 + ceil32(return_data.size)] = _935
    require _934 + _935 + 32 <= return_data.size
    mem[_933 + ceil32(return_data.size) + 32 len ceil32(_935)] = mem[_933 + _934 + 32 len ceil32(_935)]
    if ceil32(_935) <= _935:
        require ext_code.size(address(arg3))
        staticcall address(arg3).0x313ce567 with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1383 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _1385 = mem[_1383]
        require mem[_1383] == mem[_1383 + 31 len 1]
        _1387 = mem[64]
        mem[64] = mem[64] + 64
        mem[_1387] = 3
        mem[_1387 + 32] = 0x5553440000000000000000000000000000000000000000000000000000000000
        mem[mem[64]] = 0x65555bcc00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 64
        mem[mem[64] + 68] = _935
        mem[mem[64] + 100 len ceil32(_935)] = mem[_933 + ceil32(return_data.size) + 32 len ceil32(_935)]
        if ceil32(_935) <= _935:
            mem[ceil32(_935) + mem[64] + 100] = 3
            mem[ceil32(_935) + mem[64] + 132] = 0x5553440000000000000000000000000000000000000000000000000000000000
            mem[ceil32(_935) + mem[64] + 135] = 0
            require ext_code.size(refAddress)
            staticcall refAddress.getReferenceData(string arg1, string arg2) with:
                    gas gas_remaining wei
                   args 64, ceil32(_935) + 96, _935, mem[mem[64] + 100 len ceil32(_935) + 32], 0, 0
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2261 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _2272 = mem[64]
            if mem[64] + 96 > test266151307() or mem[64] + 96 < mem[64]:
                revert with 0, 65
            mem[64] = mem[64] + 96
            mem[_2272] = mem[_2261]
            if not uint8(_1385):
                if arg1 * arg2 / 100 and mem[_2272] > -1 / arg1 * arg2 / 100:
                    revert with 0, 17
                stor2.length++
                stor2[stor2.length].field_0 = 1
                stor2[stor2.length].field_256 = block.timestamp
                stor2[stor2.length].field_512 = msg.sender
                stor2[stor2.length].field_768 = arg1
                stor2[stor2.length].field_1024 = arg2
                stor2[stor2.length].field_1280 = address(arg3)
                stor2[stor2.length].field_1536 = address(arg4)
                stor2[stor2.length].field_1792 = _930
                stor2[stor2.length].field_2048 = arg1 * arg2 / 100 * mem[_2272]
                emit 0x102c3eb8: arg1, arg2, address(arg3), address(arg4)
                return (arg1 * arg2 / 100 * mem[_2272])
            if bool(bool(uint8(_1385) < 78)) or bool(bool(uint8(_1385) < 32)):
                if 10^uint8(_1385) > -1:
                    revert with 0, 17
                if arg1 * arg2 / 100 and mem[_2272] > -1 / arg1 * arg2 / 100:
                    revert with 0, 17
                if not 10^uint8(_1385):
                    revert with 0, 18
                stor2.length++
                stor2[stor2.length].field_0 = 1
                stor2[stor2.length].field_256 = block.timestamp
                stor2[stor2.length].field_512 = msg.sender
                stor2[stor2.length].field_768 = arg1
                stor2[stor2.length].field_1024 = arg2
                stor2[stor2.length].field_1280 = address(arg3)
                stor2[stor2.length].field_1536 = address(arg4)
                stor2[stor2.length].field_1792 = _930
                stor2[stor2.length].field_2048 = arg1 * arg2 / 100 * mem[_2272] / 10^uint8(_1385)
                emit 0x102c3eb8: arg1, arg2, address(arg3), address(arg4)
                return (arg1 * arg2 / 100 * mem[_2272] / 10^uint8(_1385))
            if var141005 > 1:
                s = var141001
                t = var141002
                u = var141005
                while s <= -1 / s:
                    if not bool(u):
                        if uint255(u) * 0.5 > 1:
                            s = s * s
                            t = t
                            u = uint255(u) * 0.5
                            continue 
                        if t > -1 / s * s:
                            revert with 0, 17
                        if arg1 * arg2 / 100 and mem[_2272] > -1 / arg1 * arg2 / 100:
                            revert with 0, 17
                        if not s * s * t:
                            revert with 0, 18
                        stor2.length++
                        stor2[stor2.length].field_0 = 1
                        stor2[stor2.length].field_256 = block.timestamp
                        stor2[stor2.length].field_512 = msg.sender
                        stor2[stor2.length].field_768 = arg1
                        stor2[stor2.length].field_1024 = arg2
                        stor2[stor2.length].field_1280 = address(arg3)
                        stor2[stor2.length].field_1536 = address(arg4)
                        stor2[stor2.length].field_1792 = _930
                        stor2[stor2.length].field_2048 = arg1 * arg2 / 100 * mem[_2272] / s * s * t
                        emit 0x102c3eb8: arg1, arg2, address(arg3), address(arg4)
                        return (arg1 * arg2 / 100 * mem[_2272] / s * s * t)
                    if uint255(u) * 0.5 > 1:
                        s = s * s
                        t = s * t
                        u = uint255(u) * 0.5
                        continue 
                    if s * t > -1 / s * s:
                        revert with 0, 17
                    if arg1 * arg2 / 100 and mem[_2272] > -1 / arg1 * arg2 / 100:
                        revert with 0, 17
                    if not s * s * s * t:
                        revert with 0, 18
                    stor2.length++
                    stor2[stor2.length].field_0 = 1
                    stor2[stor2.length].field_256 = block.timestamp
                    stor2[stor2.length].field_512 = msg.sender
                    stor2[stor2.length].field_768 = arg1
                    stor2[stor2.length].field_1024 = arg2
                    stor2[stor2.length].field_1280 = address(arg3)
                    stor2[stor2.length].field_1536 = address(arg4)
                    stor2[stor2.length].field_1792 = _930
                    stor2[stor2.length].field_2048 = arg1 * arg2 / 100 * mem[_2272] / s * s * s * t
                    emit 0x102c3eb8: arg1, arg2, address(arg3), address(arg4)
                    return (arg1 * arg2 / 100 * mem[_2272] / s * s * s * t)
                revert with 0, 17
            if var141002 > -1 / var141001:
                revert with 0, 17
            if arg1 * arg2 / 100 and mem[_2272] > -1 / arg1 * arg2 / 100:
                revert with 0, 17
            if not var141001 * var141002:
                revert with 0, 18
            stor2.length++
            stor2[stor2.length].field_0 = 1
            stor2[stor2.length].field_256 = block.timestamp
            stor2[stor2.length].field_512 = msg.sender
            stor2[stor2.length].field_768 = arg1
            stor2[stor2.length].field_1024 = arg2
            stor2[stor2.length].field_1280 = address(arg3)
            stor2[stor2.length].field_1536 = address(arg4)
            stor2[stor2.length].field_1792 = _930
            stor2[stor2.length].field_2048 = arg1 * arg2 / 100 * mem[_2272] / var141001 * var141002
            emit 0x102c3eb8: arg1, arg2, address(arg3), address(arg4)
            return (arg1 * arg2 / 100 * mem[_2272] / var141001 * var141002)
        mem[mem[64] + _935 + 100] = 0
        mem[ceil32(_935) + mem[64] + 100] = 3
        mem[ceil32(_935) + mem[64] + 132] = 0x5553440000000000000000000000000000000000000000000000000000000000
        mem[ceil32(_935) + mem[64] + 135] = 0
        require ext_code.size(refAddress)
        staticcall refAddress.getReferenceData(string arg1, string arg2) with:
                gas gas_remaining wei
               args 64, ceil32(_935) + 96, _935, mem[mem[64] + 100 len ceil32(_935) + 32], 0, 0
        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _2262 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 96
        _2276 = mem[64]
        if mem[64] + 96 > test266151307() or mem[64] + 96 < mem[64]:
            revert with 0, 65
        mem[64] = mem[64] + 96
        mem[_2276] = mem[_2262]
        if not uint8(_1385):
            if arg1 * arg2 / 100 and mem[_2276] > -1 / arg1 * arg2 / 100:
                revert with 0, 17
            stor2.length++
            stor2[stor2.length].field_0 = 1
            stor2[stor2.length].field_256 = block.timestamp
            stor2[stor2.length].field_512 = msg.sender
            stor2[stor2.length].field_768 = arg1
            stor2[stor2.length].field_1024 = arg2
            stor2[stor2.length].field_1280 = address(arg3)
            stor2[stor2.length].field_1536 = address(arg4)
            stor2[stor2.length].field_1792 = _930
            stor2[stor2.length].field_2048 = arg1 * arg2 / 100 * mem[_2276]
            emit 0x102c3eb8: arg1, arg2, address(arg3), address(arg4)
            return (arg1 * arg2 / 100 * mem[_2276])
        if bool(bool(uint8(_1385) < 78)) or bool(bool(uint8(_1385) < 32)):
            if 10^uint8(_1385) > -1:
                revert with 0, 17
            if arg1 * arg2 / 100 and mem[_2276] > -1 / arg1 * arg2 / 100:
                revert with 0, 17
            if not 10^uint8(_1385):
                revert with 0, 18
            stor2.length++
            stor2[stor2.length].field_0 = 1
            stor2[stor2.length].field_256 = block.timestamp
            stor2[stor2.length].field_512 = msg.sender
            stor2[stor2.length].field_768 = arg1
            stor2[stor2.length].field_1024 = arg2
            stor2[stor2.length].field_1280 = address(arg3)
            stor2[stor2.length].field_1536 = address(arg4)
            stor2[stor2.length].field_1792 = _930
            stor2[stor2.length].field_2048 = arg1 * arg2 / 100 * mem[_2276] / 10^uint8(_1385)
            emit 0x102c3eb8: arg1, arg2, address(arg3), address(arg4)
            return (arg1 * arg2 / 100 * mem[_2276] / 10^uint8(_1385))
        if var142005 > 1:
            s = var142001
            t = var142002
            u = var142005
            while s <= -1 / s:
                if not bool(u):
                    if uint255(u) * 0.5 > 1:
                        s = s * s
                        t = t
                        u = uint255(u) * 0.5
                        continue 
                    if t > -1 / s * s:
                        revert with 0, 17
                    if arg1 * arg2 / 100 and mem[_2276] > -1 / arg1 * arg2 / 100:
                        revert with 0, 17
                    if not s * s * t:
                        revert with 0, 18
                    stor2.length++
                    stor2[stor2.length].field_0 = 1
                    stor2[stor2.length].field_256 = block.timestamp
                    stor2[stor2.length].field_512 = msg.sender
                    stor2[stor2.length].field_768 = arg1
                    stor2[stor2.length].field_1024 = arg2
                    stor2[stor2.length].field_1280 = address(arg3)
                    stor2[stor2.length].field_1536 = address(arg4)
                    stor2[stor2.length].field_1792 = _930
                    stor2[stor2.length].field_2048 = arg1 * arg2 / 100 * mem[_2276] / s * s * t
                    emit 0x102c3eb8: arg1, arg2, address(arg3), address(arg4)
                    return (arg1 * arg2 / 100 * mem[_2276] / s * s * t)
                if uint255(u) * 0.5 > 1:
                    s = s * s
                    t = s * t
                    u = uint255(u) * 0.5
                    continue 
                if s * t > -1 / s * s:
                    revert with 0, 17
                if arg1 * arg2 / 100 and mem[_2276] > -1 / arg1 * arg2 / 100:
                    revert with 0, 17
                if not s * s * s * t:
                    revert with 0, 18
                stor2.length++
                stor2[stor2.length].field_0 = 1
                stor2[stor2.length].field_256 = block.timestamp
                stor2[stor2.length].field_512 = msg.sender
                stor2[stor2.length].field_768 = arg1
                stor2[stor2.length].field_1024 = arg2
                stor2[stor2.length].field_1280 = address(arg3)
                stor2[stor2.length].field_1536 = address(arg4)
                stor2[stor2.length].field_1792 = _930
                stor2[stor2.length].field_2048 = arg1 * arg2 / 100 * mem[_2276] / s * s * s * t
                emit 0x102c3eb8: arg1, arg2, address(arg3), address(arg4)
                return (arg1 * arg2 / 100 * mem[_2276] / s * s * s * t)
            revert with 0, 17
        if var142002 > -1 / var142001:
            revert with 0, 17
        if arg1 * arg2 / 100 and mem[_2276] > -1 / arg1 * arg2 / 100:
            revert with 0, 17
        if not var142001 * var142002:
            revert with 0, 18
        stor2.length++
        stor2[stor2.length].field_0 = 1
        stor2[stor2.length].field_256 = block.timestamp
        stor2[stor2.length].field_512 = msg.sender
        stor2[stor2.length].field_768 = arg1
        stor2[stor2.length].field_1024 = arg2
        stor2[stor2.length].field_1280 = address(arg3)
        stor2[stor2.length].field_1536 = address(arg4)
        stor2[stor2.length].field_1792 = _930
        stor2[stor2.length].field_2048 = arg1 * arg2 / 100 * mem[_2276] / var142001 * var142002
        emit 0x102c3eb8: arg1, arg2, address(arg3), address(arg4)
        return (arg1 * arg2 / 100 * mem[_2276] / var142001 * var142002)
    mem[_933 + ceil32(return_data.size) + _935 + 32] = 0
    require ext_code.size(address(arg3))
    staticcall address(arg3).0x313ce567 with:
            gas gas_remaining wei
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _1384 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _1386 = mem[_1384]
    require mem[_1384] == mem[_1384 + 31 len 1]
    _1389 = mem[64]
    mem[64] = mem[64] + 64
    mem[_1389] = 3
    mem[_1389 + 32] = 0x5553440000000000000000000000000000000000000000000000000000000000
    mem[mem[64]] = 0x65555bcc00000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = 64
    mem[mem[64] + 68] = _935
    mem[mem[64] + 100 len ceil32(_935)] = mem[_933 + ceil32(return_data.size) + 32 len ceil32(_935)]
    if ceil32(_935) <= _935:
        mem[ceil32(_935) + mem[64] + 100] = 3
        mem[ceil32(_935) + mem[64] + 132] = 0x5553440000000000000000000000000000000000000000000000000000000000
        mem[ceil32(_935) + mem[64] + 135] = 0
        require ext_code.size(refAddress)
        staticcall refAddress.getReferenceData(string arg1, string arg2) with:
                gas gas_remaining wei
               args 64, ceil32(_935) + 96, _935, mem[mem[64] + 100 len ceil32(_935) + 32], 0, 0
        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _2263 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 96
        _2280 = mem[64]
        if mem[64] + 96 > test266151307() or mem[64] + 96 < mem[64]:
            revert with 0, 65
        mem[64] = mem[64] + 96
        mem[_2280] = mem[_2263]
        if not uint8(_1386):
            if arg1 * arg2 / 100 and mem[_2280] > -1 / arg1 * arg2 / 100:
                revert with 0, 17
            stor2.length++
            stor2[stor2.length].field_0 = 1
            stor2[stor2.length].field_256 = block.timestamp
            stor2[stor2.length].field_512 = msg.sender
            stor2[stor2.length].field_768 = arg1
            stor2[stor2.length].field_1024 = arg2
            stor2[stor2.length].field_1280 = address(arg3)
            stor2[stor2.length].field_1536 = address(arg4)
            stor2[stor2.length].field_1792 = _930
            stor2[stor2.length].field_2048 = arg1 * arg2 / 100 * mem[_2280]
            emit 0x102c3eb8: arg1, arg2, address(arg3), address(arg4)
            return (arg1 * arg2 / 100 * mem[_2280])
        if bool(bool(uint8(_1386) < 78)) or bool(bool(uint8(_1386) < 32)):
            if 10^uint8(_1386) > -1:
                revert with 0, 17
            if arg1 * arg2 / 100 and mem[_2280] > -1 / arg1 * arg2 / 100:
                revert with 0, 17
            if not 10^uint8(_1386):
                revert with 0, 18
            stor2.length++
            stor2[stor2.length].field_0 = 1
            stor2[stor2.length].field_256 = block.timestamp
            stor2[stor2.length].field_512 = msg.sender
            stor2[stor2.length].field_768 = arg1
            stor2[stor2.length].field_1024 = arg2
            stor2[stor2.length].field_1280 = address(arg3)
            stor2[stor2.length].field_1536 = address(arg4)
            stor2[stor2.length].field_1792 = _930
            stor2[stor2.length].field_2048 = arg1 * arg2 / 100 * mem[_2280] / 10^uint8(_1386)
            emit 0x102c3eb8: arg1, arg2, address(arg3), address(arg4)
            return (arg1 * arg2 / 100 * mem[_2280] / 10^uint8(_1386))
        if var142005 > 1:
            s = var142001
            t = var142002
            u = var142005
            while s <= -1 / s:
                if not bool(u):
                    if uint255(u) * 0.5 > 1:
                        s = s * s
                        t = t
                        u = uint255(u) * 0.5
                        continue 
                    if t > -1 / s * s:
                        revert with 0, 17
                    if arg1 * arg2 / 100 and mem[_2280] > -1 / arg1 * arg2 / 100:
                        revert with 0, 17
                    if not s * s * t:
                        revert with 0, 18
                    stor2.length++
                    stor2[stor2.length].field_0 = 1
                    stor2[stor2.length].field_256 = block.timestamp
                    stor2[stor2.length].field_512 = msg.sender
                    stor2[stor2.length].field_768 = arg1
                    stor2[stor2.length].field_1024 = arg2
                    stor2[stor2.length].field_1280 = address(arg3)
                    stor2[stor2.length].field_1536 = address(arg4)
                    stor2[stor2.length].field_1792 = _930
                    stor2[stor2.length].field_2048 = arg1 * arg2 / 100 * mem[_2280] / s * s * t
                    emit 0x102c3eb8: arg1, arg2, address(arg3), address(arg4)
                    return (arg1 * arg2 / 100 * mem[_2280] / s * s * t)
                if uint255(u) * 0.5 > 1:
                    s = s * s
                    t = s * t
                    u = uint255(u) * 0.5
                    continue 
                if s * t > -1 / s * s:
                    revert with 0, 17
                if arg1 * arg2 / 100 and mem[_2280] > -1 / arg1 * arg2 / 100:
                    revert with 0, 17
                if not s * s * s * t:
                    revert with 0, 18
                stor2.length++
                stor2[stor2.length].field_0 = 1
                stor2[stor2.length].field_256 = block.timestamp
                stor2[stor2.length].field_512 = msg.sender
                stor2[stor2.length].field_768 = arg1
                stor2[stor2.length].field_1024 = arg2
                stor2[stor2.length].field_1280 = address(arg3)
                stor2[stor2.length].field_1536 = address(arg4)
                stor2[stor2.length].field_1792 = _930
                stor2[stor2.length].field_2048 = arg1 * arg2 / 100 * mem[_2280] / s * s * s * t
                emit 0x102c3eb8: arg1, arg2, address(arg3), address(arg4)
                return (arg1 * arg2 / 100 * mem[_2280] / s * s * s * t)
            revert with 0, 17
        if var142002 > -1 / var142001:
            revert with 0, 17
        if arg1 * arg2 / 100 and mem[_2280] > -1 / arg1 * arg2 / 100:
            revert with 0, 17
        if not var142001 * var142002:
            revert with 0, 18
        stor2.length++
        stor2[stor2.length].field_0 = 1
        stor2[stor2.length].field_256 = block.timestamp
        stor2[stor2.length].field_512 = msg.sender
        stor2[stor2.length].field_768 = arg1
        stor2[stor2.length].field_1024 = arg2
        stor2[stor2.length].field_1280 = address(arg3)
        stor2[stor2.length].field_1536 = address(arg4)
        stor2[stor2.length].field_1792 = _930
        stor2[stor2.length].field_2048 = arg1 * arg2 / 100 * mem[_2280] / var142001 * var142002
        emit 0x102c3eb8: arg1, arg2, address(arg3), address(arg4)
        return (arg1 * arg2 / 100 * mem[_2280] / var142001 * var142002)
    mem[mem[64] + _935 + 100] = 0
    mem[ceil32(_935) + mem[64] + 100] = 3
    mem[ceil32(_935) + mem[64] + 132] = 0x5553440000000000000000000000000000000000000000000000000000000000
    mem[ceil32(_935) + mem[64] + 135] = 0
    require ext_code.size(refAddress)
    staticcall refAddress.getReferenceData(string arg1, string arg2) with:
            gas gas_remaining wei
           args 64, ceil32(_935) + 96, _935, mem[mem[64] + 100 len ceil32(_935) + 32], 0, 0
    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _2264 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 96
    _2284 = mem[64]
    if mem[64] + 96 > test266151307() or mem[64] + 96 < mem[64]:
        revert with 0, 65
    mem[64] = mem[64] + 96
    mem[_2284] = mem[_2264]
    if not uint8(_1386):
        if arg1 * arg2 / 100 and mem[_2284] > -1 / arg1 * arg2 / 100:
            revert with 0, 17
        stor2.length++
        stor2[stor2.length].field_0 = 1
        stor2[stor2.length].field_256 = block.timestamp
        stor2[stor2.length].field_512 = msg.sender
        stor2[stor2.length].field_768 = arg1
        stor2[stor2.length].field_1024 = arg2
        stor2[stor2.length].field_1280 = address(arg3)
        stor2[stor2.length].field_1536 = address(arg4)
        stor2[stor2.length].field_1792 = _930
        stor2[stor2.length].field_2048 = arg1 * arg2 / 100 * mem[_2284]
        emit 0x102c3eb8: arg1, arg2, address(arg3), address(arg4)
        return (arg1 * arg2 / 100 * mem[_2284])
    if bool(bool(uint8(_1386) < 78)) or bool(bool(uint8(_1386) < 32)):
        if 10^uint8(_1386) > -1:
            revert with 0, 17
        if arg1 * arg2 / 100 and mem[_2284] > -1 / arg1 * arg2 / 100:
            revert with 0, 17
        if not 10^uint8(_1386):
            revert with 0, 18
        stor2.length++
        stor2[stor2.length].field_0 = 1
        stor2[stor2.length].field_256 = block.timestamp
        stor2[stor2.length].field_512 = msg.sender
        stor2[stor2.length].field_768 = arg1
        stor2[stor2.length].field_1024 = arg2
        stor2[stor2.length].field_1280 = address(arg3)
        stor2[stor2.length].field_1536 = address(arg4)
        stor2[stor2.length].field_1792 = _930
        stor2[stor2.length].field_2048 = arg1 * arg2 / 100 * mem[_2284] / 10^uint8(_1386)
        emit 0x102c3eb8: arg1, arg2, address(arg3), address(arg4)
        return (arg1 * arg2 / 100 * mem[_2284] / 10^uint8(_1386))
    if var143005 > 1:
        s = var143001
        t = var143002
        u = var143005
        while s <= -1 / s:
            if not bool(u):
                if uint255(u) * 0.5 > 1:
                    s = s * s
                    t = t
                    u = uint255(u) * 0.5
                    continue 
                if t > -1 / s * s:
                    revert with 0, 17
                if arg1 * arg2 / 100 and mem[_2284] > -1 / arg1 * arg2 / 100:
                    revert with 0, 17
                if not s * s * t:
                    revert with 0, 18
                stor2.length++
                stor2[stor2.length].field_0 = 1
                stor2[stor2.length].field_256 = block.timestamp
                stor2[stor2.length].field_512 = msg.sender
                stor2[stor2.length].field_768 = arg1
                stor2[stor2.length].field_1024 = arg2
                stor2[stor2.length].field_1280 = address(arg3)
                stor2[stor2.length].field_1536 = address(arg4)
                stor2[stor2.length].field_1792 = _930
                stor2[stor2.length].field_2048 = arg1 * arg2 / 100 * mem[_2284] / s * s * t
                emit 0x102c3eb8: arg1, arg2, address(arg3), address(arg4)
                return (arg1 * arg2 / 100 * mem[_2284] / s * s * t)
            if uint255(u) * 0.5 > 1:
                s = s * s
                t = s * t
                u = uint255(u) * 0.5
                continue 
            if s * t > -1 / s * s:
                revert with 0, 17
            if arg1 * arg2 / 100 and mem[_2284] > -1 / arg1 * arg2 / 100:
                revert with 0, 17
            if not s * s * s * t:
                revert with 0, 18
            stor2.length++
            stor2[stor2.length].field_0 = 1
            stor2[stor2.length].field_256 = block.timestamp
            stor2[stor2.length].field_512 = msg.sender
            stor2[stor2.length].field_768 = arg1
            stor2[stor2.length].field_1024 = arg2
            stor2[stor2.length].field_1280 = address(arg3)
            stor2[stor2.length].field_1536 = address(arg4)
            stor2[stor2.length].field_1792 = _930
            stor2[stor2.length].field_2048 = arg1 * arg2 / 100 * mem[_2284] / s * s * s * t
            emit 0x102c3eb8: arg1, arg2, address(arg3), address(arg4)
            return (arg1 * arg2 / 100 * mem[_2284] / s * s * s * t)
        revert with 0, 17
    if var143002 > -1 / var143001:
        revert with 0, 17
    if arg1 * arg2 / 100 and mem[_2284] > -1 / arg1 * arg2 / 100:
        revert with 0, 17
    if not var143001 * var143002:
        revert with 0, 18
    stor2.length++
    stor2[stor2.length].field_0 = 1
    stor2[stor2.length].field_256 = block.timestamp
    stor2[stor2.length].field_512 = msg.sender
    stor2[stor2.length].field_768 = arg1
    stor2[stor2.length].field_1024 = arg2
    stor2[stor2.length].field_1280 = address(arg3)
    stor2[stor2.length].field_1536 = address(arg4)
    stor2[stor2.length].field_1792 = _930
    stor2[stor2.length].field_2048 = arg1 * arg2 / 100 * mem[_2284] / var143001 * var143002
    emit 0x102c3eb8: arg1, arg2, address(arg3), address(arg4)
    return (arg1 * arg2 / 100 * mem[_2284] / var143001 * var143002)
}

function getPosition(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if arg1 >= stor2.length:
        revert with 0, 50
    mem[0] = 2
    mem[96] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
    require ext_code.size(stor2[arg1].field_1536)
    staticcall stor2[arg1].field_1536.0x95d89b41 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _6 = mem[96]
    require mem[96] <= test266151307()
    require return_data.size + 96 > mem[96] + 127
    _7 = mem[mem[96] + 96]
    if mem[mem[96] + 96] > test266151307():
        revert with 0, 65
    if ceil32(mem[mem[96] + 96]) + 32 < 0 or ceil32(return_data.size) + ceil32(mem[mem[96] + 96]) + 128 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(return_data.size) + ceil32(mem[mem[96] + 96]) + 128
    mem[ceil32(return_data.size) + 96] = _7
    require _6 + _7 + 32 <= return_data.size
    mem[ceil32(return_data.size) + 128 len ceil32(_7)] = mem[_6 + 128 len ceil32(_7)]
    if ceil32(_7) <= _7:
        require ext_code.size(stor2[arg1].field_1536)
        staticcall stor2[arg1].field_1536.0x313ce567 with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _287 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _289 = mem[_287]
        require mem[_287] == mem[_287 + 31 len 1]
        _291 = mem[64]
        mem[64] = mem[64] + 64
        mem[_291] = 3
        mem[_291 + 32] = 0x5553440000000000000000000000000000000000000000000000000000000000
        _292 = mem[64]
        mem[mem[64]] = 0x65555bcc00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 64
        mem[mem[64] + 68] = _7
        mem[mem[64] + 100 len ceil32(_7)] = mem[ceil32(return_data.size) + 128 len ceil32(_7)]
        if ceil32(_7) <= _7:
            mem[ceil32(_7) + mem[64] + 100] = 3
            mem[ceil32(_7) + mem[64] + 132] = 0x5553440000000000000000000000000000000000000000000000000000000000
            mem[ceil32(_7) + mem[64] + 135] = 0
            require ext_code.size(refAddress)
            staticcall refAddress.getReferenceData(string arg1, string arg2) with:
                    gas gas_remaining wei
                   args 64, ceil32(_7) + 96, _7, mem[mem[64] + 100 len ceil32(_7) + 32], 0, 0
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _829 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _840 = mem[64]
            if mem[64] + 96 > test266151307() or mem[64] + 96 < mem[64]:
                revert with 0, 65
            mem[64] = mem[64] + 96
            mem[_840] = mem[_829]
            if not uint8(_289):
                if stor2[arg1].field_1792 and mem[_840] > -1 / stor2[arg1].field_1792:
                    revert with 0, 17
                if stor2[arg1].field_2048 <= stor2[arg1].field_1792 * mem[_840]:
                    if stor2[arg1].field_1792 * mem[_840] < stor2[arg1].field_2048:
                        revert with 0, 17
                    return bool(stor2[arg1].field_0), 
                           stor2[arg1].field_256,
                           stor2[arg1].field_512,
                           stor2[arg1].field_768,
                           stor2[arg1].field_1024,
                           stor2[arg1].field_1280,
                           stor2[arg1].field_1536,
                           stor2[arg1].field_1792,
                           stor2[arg1].field_2048,
                           stor2[arg1].field_1792 * mem[_840],
                           (stor2[arg1].field_1792 * mem[_840]) - stor2[arg1].field_2048,
                           0
                if stor2[arg1].field_2048 < stor2[arg1].field_1792 * mem[_840]:
                    revert with 0, 17
                return bool(stor2[arg1].field_0), 
                       stor2[arg1].field_256,
                       stor2[arg1].field_512,
                       stor2[arg1].field_768,
                       stor2[arg1].field_1024,
                       stor2[arg1].field_1280,
                       stor2[arg1].field_1536,
                       stor2[arg1].field_1792,
                       stor2[arg1].field_2048,
                       stor2[arg1].field_1792 * mem[_840],
                       stor2[arg1].field_2048 - (stor2[arg1].field_1792 * mem[_840]),
                       1
            if bool(bool(uint8(_289) < 78)) or bool(bool(uint8(_289) < 32)):
                if 10^uint8(_289) > -1:
                    revert with 0, 17
                if stor2[arg1].field_1792 and mem[_840] > -1 / stor2[arg1].field_1792:
                    revert with 0, 17
                if not 10^uint8(_289):
                    revert with 0, 18
                if stor2[arg1].field_2048 <= stor2[arg1].field_1792 * mem[_840] / 10^uint8(_289):
                    if stor2[arg1].field_1792 * mem[_840] / 10^uint8(_289) < stor2[arg1].field_2048:
                        revert with 0, 17
                    return bool(stor2[arg1].field_0), 
                           stor2[arg1].field_256,
                           stor2[arg1].field_512,
                           stor2[arg1].field_768,
                           stor2[arg1].field_1024,
                           stor2[arg1].field_1280,
                           stor2[arg1].field_1536,
                           stor2[arg1].field_1792,
                           stor2[arg1].field_2048,
                           stor2[arg1].field_1792 * mem[_840] / 10^uint8(_289),
                           (stor2[arg1].field_1792 * mem[_840] / 10^uint8(_289)) - stor2[arg1].field_2048,
                           0
                if stor2[arg1].field_2048 < stor2[arg1].field_1792 * mem[_840] / 10^uint8(_289):
                    revert with 0, 17
                return bool(stor2[arg1].field_0), 
                       stor2[arg1].field_256,
                       stor2[arg1].field_512,
                       stor2[arg1].field_768,
                       stor2[arg1].field_1024,
                       stor2[arg1].field_1280,
                       stor2[arg1].field_1536,
                       stor2[arg1].field_1792,
                       stor2[arg1].field_2048,
                       stor2[arg1].field_1792 * mem[_840] / 10^uint8(_289),
                       stor2[arg1].field_2048 - (stor2[arg1].field_1792 * mem[_840] / 10^uint8(_289)),
                       1
            if var81005 > 1:
                s = var81001
                t = var81002
                u = var81005
                while s <= -1 / s:
                    if not bool(u):
                        if uint255(u) * 0.5 > 1:
                            s = s * s
                            t = t
                            u = uint255(u) * 0.5
                            continue 
                        if t > -1 / s * s:
                            revert with 0, 17
                        if stor2[arg1].field_1792 and mem[_840] > -1 / stor2[arg1].field_1792:
                            revert with 0, 17
                        if not s * s * t:
                            revert with 0, 18
                        if stor2[arg1].field_2048 <= stor2[arg1].field_1792 * mem[_840] / s * s * t:
                            if stor2[arg1].field_1792 * mem[_840] / s * s * t < stor2[arg1].field_2048:
                                revert with 0, 17
                            return bool(stor2[arg1].field_0), 
                                   stor2[arg1].field_256,
                                   stor2[arg1].field_512,
                                   stor2[arg1].field_768,
                                   stor2[arg1].field_1024,
                                   stor2[arg1].field_1280,
                                   stor2[arg1].field_1536,
                                   stor2[arg1].field_1792,
                                   stor2[arg1].field_2048,
                                   stor2[arg1].field_1792 * mem[_840] / s * s * t,
                                   (stor2[arg1].field_1792 * mem[_840] / s * s * t) - stor2[arg1].field_2048,
                                   0
                        if stor2[arg1].field_2048 < stor2[arg1].field_1792 * mem[_840] / s * s * t:
                            revert with 0, 17
                        return bool(stor2[arg1].field_0), 
                               stor2[arg1].field_256,
                               stor2[arg1].field_512,
                               stor2[arg1].field_768,
                               stor2[arg1].field_1024,
                               stor2[arg1].field_1280,
                               stor2[arg1].field_1536,
                               stor2[arg1].field_1792,
                               stor2[arg1].field_2048,
                               stor2[arg1].field_1792 * mem[_840] / s * s * t,
                               stor2[arg1].field_2048 - (stor2[arg1].field_1792 * mem[_840] / s * s * t),
                               1
                    if uint255(u) * 0.5 > 1:
                        s = s * s
                        t = s * t
                        u = uint255(u) * 0.5
                        continue 
                    if s * t > -1 / s * s:
                        revert with 0, 17
                    if stor2[arg1].field_1792 and mem[_840] > -1 / stor2[arg1].field_1792:
                        revert with 0, 17
                    if not s * s * s * t:
                        revert with 0, 18
                    if stor2[arg1].field_2048 <= stor2[arg1].field_1792 * mem[_840] / s * s * s * t:
                        if stor2[arg1].field_1792 * mem[_840] / s * s * s * t < stor2[arg1].field_2048:
                            revert with 0, 17
                        return bool(stor2[arg1].field_0), 
                               stor2[arg1].field_256,
                               stor2[arg1].field_512,
                               stor2[arg1].field_768,
                               stor2[arg1].field_1024,
                               stor2[arg1].field_1280,
                               stor2[arg1].field_1536,
                               stor2[arg1].field_1792,
                               stor2[arg1].field_2048,
                               stor2[arg1].field_1792 * mem[_840] / s * s * s * t,
                               (stor2[arg1].field_1792 * mem[_840] / s * s * s * t) - stor2[arg1].field_2048,
                               0
                    if stor2[arg1].field_2048 < stor2[arg1].field_1792 * mem[_840] / s * s * s * t:
                        revert with 0, 17
                    return bool(stor2[arg1].field_0), 
                           stor2[arg1].field_256,
                           stor2[arg1].field_512,
                           stor2[arg1].field_768,
                           stor2[arg1].field_1024,
                           stor2[arg1].field_1280,
                           stor2[arg1].field_1536,
                           stor2[arg1].field_1792,
                           stor2[arg1].field_2048,
                           stor2[arg1].field_1792 * mem[_840] / s * s * s * t,
                           stor2[arg1].field_2048 - (stor2[arg1].field_1792 * mem[_840] / s * s * s * t),
                           1
                revert with 0, 17
            if var81002 > -1 / var81001:
                revert with 0, 17
            if stor2[arg1].field_1792 and mem[_840] > -1 / stor2[arg1].field_1792:
                revert with 0, 17
            if not var81001 * var81002:
                revert with 0, 18
            if stor2[arg1].field_2048 <= stor2[arg1].field_1792 * mem[_840] / var81001 * var81002:
                if stor2[arg1].field_1792 * mem[_840] / var81001 * var81002 < stor2[arg1].field_2048:
                    revert with 0, 17
                return bool(stor2[arg1].field_0), 
                       stor2[arg1].field_256,
                       stor2[arg1].field_512,
                       stor2[arg1].field_768,
                       stor2[arg1].field_1024,
                       stor2[arg1].field_1280,
                       stor2[arg1].field_1536,
                       stor2[arg1].field_1792,
                       stor2[arg1].field_2048,
                       stor2[arg1].field_1792 * mem[_840] / var81001 * var81002,
                       (stor2[arg1].field_1792 * mem[_840] / var81001 * var81002) - stor2[arg1].field_2048,
                       0
            if stor2[arg1].field_2048 < stor2[arg1].field_1792 * mem[_840] / var81001 * var81002:
                revert with 0, 17
            return bool(stor2[arg1].field_0), 
                   stor2[arg1].field_256,
                   stor2[arg1].field_512,
                   stor2[arg1].field_768,
                   stor2[arg1].field_1024,
                   stor2[arg1].field_1280,
                   stor2[arg1].field_1536,
                   stor2[arg1].field_1792,
                   stor2[arg1].field_2048,
                   stor2[arg1].field_1792 * mem[_840] / var81001 * var81002,
                   stor2[arg1].field_2048 - (stor2[arg1].field_1792 * mem[_840] / var81001 * var81002),
                   1
        mem[mem[64] + _7 + 100] = 0
        mem[mem[64] + 36] = ceil32(_7) + 96
        mem[ceil32(_7) + _292 + 100] = 3
        mem[ceil32(_7) + _292 + 132] = 0x5553440000000000000000000000000000000000000000000000000000000000
        mem[ceil32(_7) + _292 + 135] = 0
        require ext_code.size(refAddress)
        staticcall refAddress.getReferenceData(string arg1, string arg2) with:
                gas gas_remaining wei
               args mem[mem[64] + 4 len ceil32(_7) + _292 + -mem[64] + 160]
        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _830 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 96
        _844 = mem[64]
        if mem[64] + 96 > test266151307() or mem[64] + 96 < mem[64]:
            revert with 0, 65
        mem[64] = mem[64] + 96
        mem[_844] = mem[_830]
        if not uint8(_289):
            if stor2[arg1].field_1792 and mem[_844] > -1 / stor2[arg1].field_1792:
                revert with 0, 17
            if stor2[arg1].field_2048 <= stor2[arg1].field_1792 * mem[_844]:
                if stor2[arg1].field_1792 * mem[_844] < stor2[arg1].field_2048:
                    revert with 0, 17
                return bool(stor2[arg1].field_0), 
                       stor2[arg1].field_256,
                       stor2[arg1].field_512,
                       stor2[arg1].field_768,
                       stor2[arg1].field_1024,
                       stor2[arg1].field_1280,
                       stor2[arg1].field_1536,
                       stor2[arg1].field_1792,
                       stor2[arg1].field_2048,
                       stor2[arg1].field_1792 * mem[_844],
                       (stor2[arg1].field_1792 * mem[_844]) - stor2[arg1].field_2048,
                       0
            if stor2[arg1].field_2048 < stor2[arg1].field_1792 * mem[_844]:
                revert with 0, 17
            return bool(stor2[arg1].field_0), 
                   stor2[arg1].field_256,
                   stor2[arg1].field_512,
                   stor2[arg1].field_768,
                   stor2[arg1].field_1024,
                   stor2[arg1].field_1280,
                   stor2[arg1].field_1536,
                   stor2[arg1].field_1792,
                   stor2[arg1].field_2048,
                   stor2[arg1].field_1792 * mem[_844],
                   stor2[arg1].field_2048 - (stor2[arg1].field_1792 * mem[_844]),
                   1
        if bool(bool(uint8(_289) < 78)) or bool(bool(uint8(_289) < 32)):
            if 10^uint8(_289) > -1:
                revert with 0, 17
            if stor2[arg1].field_1792 and mem[_844] > -1 / stor2[arg1].field_1792:
                revert with 0, 17
            if not 10^uint8(_289):
                revert with 0, 18
            if stor2[arg1].field_2048 <= stor2[arg1].field_1792 * mem[_844] / 10^uint8(_289):
                if stor2[arg1].field_1792 * mem[_844] / 10^uint8(_289) < stor2[arg1].field_2048:
                    revert with 0, 17
                return bool(stor2[arg1].field_0), 
                       stor2[arg1].field_256,
                       stor2[arg1].field_512,
                       stor2[arg1].field_768,
                       stor2[arg1].field_1024,
                       stor2[arg1].field_1280,
                       stor2[arg1].field_1536,
                       stor2[arg1].field_1792,
                       stor2[arg1].field_2048,
                       stor2[arg1].field_1792 * mem[_844] / 10^uint8(_289),
                       (stor2[arg1].field_1792 * mem[_844] / 10^uint8(_289)) - stor2[arg1].field_2048,
                       0
            if stor2[arg1].field_2048 < stor2[arg1].field_1792 * mem[_844] / 10^uint8(_289):
                revert with 0, 17
            return bool(stor2[arg1].field_0), 
                   stor2[arg1].field_256,
                   stor2[arg1].field_512,
                   stor2[arg1].field_768,
                   stor2[arg1].field_1024,
                   stor2[arg1].field_1280,
                   stor2[arg1].field_1536,
                   stor2[arg1].field_1792,
                   stor2[arg1].field_2048,
                   stor2[arg1].field_1792 * mem[_844] / 10^uint8(_289),
                   stor2[arg1].field_2048 - (stor2[arg1].field_1792 * mem[_844] / 10^uint8(_289)),
                   1
        if var82005 > 1:
            s = var82001
            t = var82002
            u = var82005
            while s <= -1 / s:
                if not bool(u):
                    if uint255(u) * 0.5 > 1:
                        s = s * s
                        t = t
                        u = uint255(u) * 0.5
                        continue 
                    if t > -1 / s * s:
                        revert with 0, 17
                    if stor2[arg1].field_1792 and mem[_844] > -1 / stor2[arg1].field_1792:
                        revert with 0, 17
                    if not s * s * t:
                        revert with 0, 18
                    if stor2[arg1].field_2048 <= stor2[arg1].field_1792 * mem[_844] / s * s * t:
                        if stor2[arg1].field_1792 * mem[_844] / s * s * t < stor2[arg1].field_2048:
                            revert with 0, 17
                        return bool(stor2[arg1].field_0), 
                               stor2[arg1].field_256,
                               stor2[arg1].field_512,
                               stor2[arg1].field_768,
                               stor2[arg1].field_1024,
                               stor2[arg1].field_1280,
                               stor2[arg1].field_1536,
                               stor2[arg1].field_1792,
                               stor2[arg1].field_2048,
                               stor2[arg1].field_1792 * mem[_844] / s * s * t,
                               (stor2[arg1].field_1792 * mem[_844] / s * s * t) - stor2[arg1].field_2048,
                               0
                    if stor2[arg1].field_2048 < stor2[arg1].field_1792 * mem[_844] / s * s * t:
                        revert with 0, 17
                    return bool(stor2[arg1].field_0), 
                           stor2[arg1].field_256,
                           stor2[arg1].field_512,
                           stor2[arg1].field_768,
                           stor2[arg1].field_1024,
                           stor2[arg1].field_1280,
                           stor2[arg1].field_1536,
                           stor2[arg1].field_1792,
                           stor2[arg1].field_2048,
                           stor2[arg1].field_1792 * mem[_844] / s * s * t,
                           stor2[arg1].field_2048 - (stor2[arg1].field_1792 * mem[_844] / s * s * t),
                           1
                if uint255(u) * 0.5 > 1:
                    s = s * s
                    t = s * t
                    u = uint255(u) * 0.5
                    continue 
                if s * t > -1 / s * s:
                    revert with 0, 17
                if stor2[arg1].field_1792 and mem[_844] > -1 / stor2[arg1].field_1792:
                    revert with 0, 17
                if not s * s * s * t:
                    revert with 0, 18
                if stor2[arg1].field_2048 <= stor2[arg1].field_1792 * mem[_844] / s * s * s * t:
                    if stor2[arg1].field_1792 * mem[_844] / s * s * s * t < stor2[arg1].field_2048:
                        revert with 0, 17
                    return bool(stor2[arg1].field_0), 
                           stor2[arg1].field_256,
                           stor2[arg1].field_512,
                           stor2[arg1].field_768,
                           stor2[arg1].field_1024,
                           stor2[arg1].field_1280,
                           stor2[arg1].field_1536,
                           stor2[arg1].field_1792,
                           stor2[arg1].field_2048,
                           stor2[arg1].field_1792 * mem[_844] / s * s * s * t,
                           (stor2[arg1].field_1792 * mem[_844] / s * s * s * t) - stor2[arg1].field_2048,
                           0
                if stor2[arg1].field_2048 < stor2[arg1].field_1792 * mem[_844] / s * s * s * t:
                    revert with 0, 17
                return bool(stor2[arg1].field_0), 
                       stor2[arg1].field_256,
                       stor2[arg1].field_512,
                       stor2[arg1].field_768,
                       stor2[arg1].field_1024,
                       stor2[arg1].field_1280,
                       stor2[arg1].field_1536,
                       stor2[arg1].field_1792,
                       stor2[arg1].field_2048,
                       stor2[arg1].field_1792 * mem[_844] / s * s * s * t,
                       stor2[arg1].field_2048 - (stor2[arg1].field_1792 * mem[_844] / s * s * s * t),
                       1
            revert with 0, 17
        if var82002 > -1 / var82001:
            revert with 0, 17
        if stor2[arg1].field_1792 and mem[_844] > -1 / stor2[arg1].field_1792:
            revert with 0, 17
        if not var82001 * var82002:
            revert with 0, 18
        if stor2[arg1].field_2048 <= stor2[arg1].field_1792 * mem[_844] / var82001 * var82002:
            if stor2[arg1].field_1792 * mem[_844] / var82001 * var82002 < stor2[arg1].field_2048:
                revert with 0, 17
            return bool(stor2[arg1].field_0), 
                   stor2[arg1].field_256,
                   stor2[arg1].field_512,
                   stor2[arg1].field_768,
                   stor2[arg1].field_1024,
                   stor2[arg1].field_1280,
                   stor2[arg1].field_1536,
                   stor2[arg1].field_1792,
                   stor2[arg1].field_2048,
                   stor2[arg1].field_1792 * mem[_844] / var82001 * var82002,
                   (stor2[arg1].field_1792 * mem[_844] / var82001 * var82002) - stor2[arg1].field_2048,
                   0
        if stor2[arg1].field_2048 < stor2[arg1].field_1792 * mem[_844] / var82001 * var82002:
            revert with 0, 17
        return bool(stor2[arg1].field_0), 
               stor2[arg1].field_256,
               stor2[arg1].field_512,
               stor2[arg1].field_768,
               stor2[arg1].field_1024,
               stor2[arg1].field_1280,
               stor2[arg1].field_1536,
               stor2[arg1].field_1792,
               stor2[arg1].field_2048,
               stor2[arg1].field_1792 * mem[_844] / var82001 * var82002,
               stor2[arg1].field_2048 - (stor2[arg1].field_1792 * mem[_844] / var82001 * var82002),
               1
    mem[ceil32(return_data.size) + _7 + 128] = 0
    require ext_code.size(stor2[arg1].field_1536)
    staticcall stor2[arg1].field_1536.0x313ce567 with:
            gas gas_remaining wei
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _288 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _290 = mem[_288]
    require mem[_288] == mem[_288 + 31 len 1]
    _293 = mem[64]
    mem[64] = mem[64] + 64
    mem[_293] = 3
    mem[_293 + 32] = 0x5553440000000000000000000000000000000000000000000000000000000000
    _294 = mem[64]
    mem[mem[64]] = 0x65555bcc00000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = 64
    mem[mem[64] + 68] = _7
    mem[mem[64] + 100 len ceil32(_7)] = mem[ceil32(return_data.size) + 128 len ceil32(_7)]
    if ceil32(_7) <= _7:
        mem[ceil32(_7) + mem[64] + 100] = 3
        mem[ceil32(_7) + mem[64] + 132] = 0x5553440000000000000000000000000000000000000000000000000000000000
        mem[ceil32(_7) + mem[64] + 135] = 0
        require ext_code.size(refAddress)
        staticcall refAddress.getReferenceData(string arg1, string arg2) with:
                gas gas_remaining wei
               args 64, ceil32(_7) + 96, _7, mem[mem[64] + 100 len ceil32(_7) + 32], 0, 0
        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _831 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 96
        _848 = mem[64]
        if mem[64] + 96 > test266151307() or mem[64] + 96 < mem[64]:
            revert with 0, 65
        mem[64] = mem[64] + 96
        mem[_848] = mem[_831]
        if not uint8(_290):
            if stor2[arg1].field_1792 and mem[_848] > -1 / stor2[arg1].field_1792:
                revert with 0, 17
            if stor2[arg1].field_2048 <= stor2[arg1].field_1792 * mem[_848]:
                if stor2[arg1].field_1792 * mem[_848] < stor2[arg1].field_2048:
                    revert with 0, 17
                return bool(stor2[arg1].field_0), 
                       stor2[arg1].field_256,
                       stor2[arg1].field_512,
                       stor2[arg1].field_768,
                       stor2[arg1].field_1024,
                       stor2[arg1].field_1280,
                       stor2[arg1].field_1536,
                       stor2[arg1].field_1792,
                       stor2[arg1].field_2048,
                       stor2[arg1].field_1792 * mem[_848],
                       (stor2[arg1].field_1792 * mem[_848]) - stor2[arg1].field_2048,
                       0
            if stor2[arg1].field_2048 < stor2[arg1].field_1792 * mem[_848]:
                revert with 0, 17
            return bool(stor2[arg1].field_0), 
                   stor2[arg1].field_256,
                   stor2[arg1].field_512,
                   stor2[arg1].field_768,
                   stor2[arg1].field_1024,
                   stor2[arg1].field_1280,
                   stor2[arg1].field_1536,
                   stor2[arg1].field_1792,
                   stor2[arg1].field_2048,
                   stor2[arg1].field_1792 * mem[_848],
                   stor2[arg1].field_2048 - (stor2[arg1].field_1792 * mem[_848]),
                   1
        if bool(bool(uint8(_290) < 78)) or bool(bool(uint8(_290) < 32)):
            if 10^uint8(_290) > -1:
                revert with 0, 17
            if stor2[arg1].field_1792 and mem[_848] > -1 / stor2[arg1].field_1792:
                revert with 0, 17
            if not 10^uint8(_290):
                revert with 0, 18
            if stor2[arg1].field_2048 <= stor2[arg1].field_1792 * mem[_848] / 10^uint8(_290):
                if stor2[arg1].field_1792 * mem[_848] / 10^uint8(_290) < stor2[arg1].field_2048:
                    revert with 0, 17
                return bool(stor2[arg1].field_0), 
                       stor2[arg1].field_256,
                       stor2[arg1].field_512,
                       stor2[arg1].field_768,
                       stor2[arg1].field_1024,
                       stor2[arg1].field_1280,
                       stor2[arg1].field_1536,
                       stor2[arg1].field_1792,
                       stor2[arg1].field_2048,
                       stor2[arg1].field_1792 * mem[_848] / 10^uint8(_290),
                       (stor2[arg1].field_1792 * mem[_848] / 10^uint8(_290)) - stor2[arg1].field_2048,
                       0
            if stor2[arg1].field_2048 < stor2[arg1].field_1792 * mem[_848] / 10^uint8(_290):
                revert with 0, 17
            return bool(stor2[arg1].field_0), 
                   stor2[arg1].field_256,
                   stor2[arg1].field_512,
                   stor2[arg1].field_768,
                   stor2[arg1].field_1024,
                   stor2[arg1].field_1280,
                   stor2[arg1].field_1536,
                   stor2[arg1].field_1792,
                   stor2[arg1].field_2048,
                   stor2[arg1].field_1792 * mem[_848] / 10^uint8(_290),
                   stor2[arg1].field_2048 - (stor2[arg1].field_1792 * mem[_848] / 10^uint8(_290)),
                   1
        if var82005 > 1:
            s = var82001
            t = var82002
            u = var82005
            while s <= -1 / s:
                if not bool(u):
                    if uint255(u) * 0.5 > 1:
                        s = s * s
                        t = t
                        u = uint255(u) * 0.5
                        continue 
                    if t > -1 / s * s:
                        revert with 0, 17
                    if stor2[arg1].field_1792 and mem[_848] > -1 / stor2[arg1].field_1792:
                        revert with 0, 17
                    if not s * s * t:
                        revert with 0, 18
                    if stor2[arg1].field_2048 <= stor2[arg1].field_1792 * mem[_848] / s * s * t:
                        if stor2[arg1].field_1792 * mem[_848] / s * s * t < stor2[arg1].field_2048:
                            revert with 0, 17
                        return bool(stor2[arg1].field_0), 
                               stor2[arg1].field_256,
                               stor2[arg1].field_512,
                               stor2[arg1].field_768,
                               stor2[arg1].field_1024,
                               stor2[arg1].field_1280,
                               stor2[arg1].field_1536,
                               stor2[arg1].field_1792,
                               stor2[arg1].field_2048,
                               stor2[arg1].field_1792 * mem[_848] / s * s * t,
                               (stor2[arg1].field_1792 * mem[_848] / s * s * t) - stor2[arg1].field_2048,
                               0
                    if stor2[arg1].field_2048 < stor2[arg1].field_1792 * mem[_848] / s * s * t:
                        revert with 0, 17
                    return bool(stor2[arg1].field_0), 
                           stor2[arg1].field_256,
                           stor2[arg1].field_512,
                           stor2[arg1].field_768,
                           stor2[arg1].field_1024,
                           stor2[arg1].field_1280,
                           stor2[arg1].field_1536,
                           stor2[arg1].field_1792,
                           stor2[arg1].field_2048,
                           stor2[arg1].field_1792 * mem[_848] / s * s * t,
                           stor2[arg1].field_2048 - (stor2[arg1].field_1792 * mem[_848] / s * s * t),
                           1
                if uint255(u) * 0.5 > 1:
                    s = s * s
                    t = s * t
                    u = uint255(u) * 0.5
                    continue 
                if s * t > -1 / s * s:
                    revert with 0, 17
                if stor2[arg1].field_1792 and mem[_848] > -1 / stor2[arg1].field_1792:
                    revert with 0, 17
                if not s * s * s * t:
                    revert with 0, 18
                if stor2[arg1].field_2048 <= stor2[arg1].field_1792 * mem[_848] / s * s * s * t:
                    if stor2[arg1].field_1792 * mem[_848] / s * s * s * t < stor2[arg1].field_2048:
                        revert with 0, 17
                    return bool(stor2[arg1].field_0), 
                           stor2[arg1].field_256,
                           stor2[arg1].field_512,
                           stor2[arg1].field_768,
                           stor2[arg1].field_1024,
                           stor2[arg1].field_1280,
                           stor2[arg1].field_1536,
                           stor2[arg1].field_1792,
                           stor2[arg1].field_2048,
                           stor2[arg1].field_1792 * mem[_848] / s * s * s * t,
                           (stor2[arg1].field_1792 * mem[_848] / s * s * s * t) - stor2[arg1].field_2048,
                           0
                if stor2[arg1].field_2048 < stor2[arg1].field_1792 * mem[_848] / s * s * s * t:
                    revert with 0, 17
                return bool(stor2[arg1].field_0), 
                       stor2[arg1].field_256,
                       stor2[arg1].field_512,
                       stor2[arg1].field_768,
                       stor2[arg1].field_1024,
                       stor2[arg1].field_1280,
                       stor2[arg1].field_1536,
                       stor2[arg1].field_1792,
                       stor2[arg1].field_2048,
                       stor2[arg1].field_1792 * mem[_848] / s * s * s * t,
                       stor2[arg1].field_2048 - (stor2[arg1].field_1792 * mem[_848] / s * s * s * t),
                       1
            revert with 0, 17
        if var82002 > -1 / var82001:
            revert with 0, 17
        if stor2[arg1].field_1792 and mem[_848] > -1 / stor2[arg1].field_1792:
            revert with 0, 17
        if not var82001 * var82002:
            revert with 0, 18
        if stor2[arg1].field_2048 <= stor2[arg1].field_1792 * mem[_848] / var82001 * var82002:
            if stor2[arg1].field_1792 * mem[_848] / var82001 * var82002 < stor2[arg1].field_2048:
                revert with 0, 17
            return bool(stor2[arg1].field_0), 
                   stor2[arg1].field_256,
                   stor2[arg1].field_512,
                   stor2[arg1].field_768,
                   stor2[arg1].field_1024,
                   stor2[arg1].field_1280,
                   stor2[arg1].field_1536,
                   stor2[arg1].field_1792,
                   stor2[arg1].field_2048,
                   stor2[arg1].field_1792 * mem[_848] / var82001 * var82002,
                   (stor2[arg1].field_1792 * mem[_848] / var82001 * var82002) - stor2[arg1].field_2048,
                   0
        if stor2[arg1].field_2048 < stor2[arg1].field_1792 * mem[_848] / var82001 * var82002:
            revert with 0, 17
        return bool(stor2[arg1].field_0), 
               stor2[arg1].field_256,
               stor2[arg1].field_512,
               stor2[arg1].field_768,
               stor2[arg1].field_1024,
               stor2[arg1].field_1280,
               stor2[arg1].field_1536,
               stor2[arg1].field_1792,
               stor2[arg1].field_2048,
               stor2[arg1].field_1792 * mem[_848] / var82001 * var82002,
               stor2[arg1].field_2048 - (stor2[arg1].field_1792 * mem[_848] / var82001 * var82002),
               1
    mem[mem[64] + _7 + 100] = 0
    mem[mem[64] + 36] = ceil32(_7) + 96
    mem[ceil32(_7) + _294 + 100] = 3
    mem[ceil32(_7) + _294 + 132] = 0x5553440000000000000000000000000000000000000000000000000000000000
    mem[ceil32(_7) + _294 + 135] = 0
    require ext_code.size(refAddress)
    staticcall refAddress.getReferenceData(string arg1, string arg2) with:
            gas gas_remaining wei
           args mem[mem[64] + 4 len ceil32(_7) + _294 + -mem[64] + 160]
    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _832 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 96
    _852 = mem[64]
    if mem[64] + 96 > test266151307() or mem[64] + 96 < mem[64]:
        revert with 0, 65
    mem[64] = mem[64] + 96
    mem[_852] = mem[_832]
    if not uint8(_290):
        if stor2[arg1].field_1792 and mem[_852] > -1 / stor2[arg1].field_1792:
            revert with 0, 17
        if stor2[arg1].field_2048 <= stor2[arg1].field_1792 * mem[_852]:
            if stor2[arg1].field_1792 * mem[_852] < stor2[arg1].field_2048:
                revert with 0, 17
            return bool(stor2[arg1].field_0), 
                   stor2[arg1].field_256,
                   stor2[arg1].field_512,
                   stor2[arg1].field_768,
                   stor2[arg1].field_1024,
                   stor2[arg1].field_1280,
                   stor2[arg1].field_1536,
                   stor2[arg1].field_1792,
                   stor2[arg1].field_2048,
                   stor2[arg1].field_1792 * mem[_852],
                   (stor2[arg1].field_1792 * mem[_852]) - stor2[arg1].field_2048,
                   0
        if stor2[arg1].field_2048 < stor2[arg1].field_1792 * mem[_852]:
            revert with 0, 17
        return bool(stor2[arg1].field_0), 
               stor2[arg1].field_256,
               stor2[arg1].field_512,
               stor2[arg1].field_768,
               stor2[arg1].field_1024,
               stor2[arg1].field_1280,
               stor2[arg1].field_1536,
               stor2[arg1].field_1792,
               stor2[arg1].field_2048,
               stor2[arg1].field_1792 * mem[_852],
               stor2[arg1].field_2048 - (stor2[arg1].field_1792 * mem[_852]),
               1
    if bool(bool(uint8(_290) < 78)) or bool(bool(uint8(_290) < 32)):
        if 10^uint8(_290) > -1:
            revert with 0, 17
        if stor2[arg1].field_1792 and mem[_852] > -1 / stor2[arg1].field_1792:
            revert with 0, 17
        if not 10^uint8(_290):
            revert with 0, 18
        if stor2[arg1].field_2048 <= stor2[arg1].field_1792 * mem[_852] / 10^uint8(_290):
            if stor2[arg1].field_1792 * mem[_852] / 10^uint8(_290) < stor2[arg1].field_2048:
                revert with 0, 17
            return bool(stor2[arg1].field_0), 
                   stor2[arg1].field_256,
                   stor2[arg1].field_512,
                   stor2[arg1].field_768,
                   stor2[arg1].field_1024,
                   stor2[arg1].field_1280,
                   stor2[arg1].field_1536,
                   stor2[arg1].field_1792,
                   stor2[arg1].field_2048,
                   stor2[arg1].field_1792 * mem[_852] / 10^uint8(_290),
                   (stor2[arg1].field_1792 * mem[_852] / 10^uint8(_290)) - stor2[arg1].field_2048,
                   0
        if stor2[arg1].field_2048 < stor2[arg1].field_1792 * mem[_852] / 10^uint8(_290):
            revert with 0, 17
        return bool(stor2[arg1].field_0), 
               stor2[arg1].field_256,
               stor2[arg1].field_512,
               stor2[arg1].field_768,
               stor2[arg1].field_1024,
               stor2[arg1].field_1280,
               stor2[arg1].field_1536,
               stor2[arg1].field_1792,
               stor2[arg1].field_2048,
               stor2[arg1].field_1792 * mem[_852] / 10^uint8(_290),
               stor2[arg1].field_2048 - (stor2[arg1].field_1792 * mem[_852] / 10^uint8(_290)),
               1
    if var83005 > 1:
        s = var83001
        t = var83002
        u = var83005
        while s <= -1 / s:
            if not bool(u):
                if uint255(u) * 0.5 > 1:
                    s = s * s
                    t = t
                    u = uint255(u) * 0.5
                    continue 
                if t > -1 / s * s:
                    revert with 0, 17
                if stor2[arg1].field_1792 and mem[_852] > -1 / stor2[arg1].field_1792:
                    revert with 0, 17
                if not s * s * t:
                    revert with 0, 18
                if stor2[arg1].field_2048 <= stor2[arg1].field_1792 * mem[_852] / s * s * t:
                    if stor2[arg1].field_1792 * mem[_852] / s * s * t < stor2[arg1].field_2048:
                        revert with 0, 17
                    return bool(stor2[arg1].field_0), 
                           stor2[arg1].field_256,
                           stor2[arg1].field_512,
                           stor2[arg1].field_768,
                           stor2[arg1].field_1024,
                           stor2[arg1].field_1280,
                           stor2[arg1].field_1536,
                           stor2[arg1].field_1792,
                           stor2[arg1].field_2048,
                           stor2[arg1].field_1792 * mem[_852] / s * s * t,
                           (stor2[arg1].field_1792 * mem[_852] / s * s * t) - stor2[arg1].field_2048,
                           0
                if stor2[arg1].field_2048 < stor2[arg1].field_1792 * mem[_852] / s * s * t:
                    revert with 0, 17
                return bool(stor2[arg1].field_0), 
                       stor2[arg1].field_256,
                       stor2[arg1].field_512,
                       stor2[arg1].field_768,
                       stor2[arg1].field_1024,
                       stor2[arg1].field_1280,
                       stor2[arg1].field_1536,
                       stor2[arg1].field_1792,
                       stor2[arg1].field_2048,
                       stor2[arg1].field_1792 * mem[_852] / s * s * t,
                       stor2[arg1].field_2048 - (stor2[arg1].field_1792 * mem[_852] / s * s * t),
                       1
            if uint255(u) * 0.5 > 1:
                s = s * s
                t = s * t
                u = uint255(u) * 0.5
                continue 
            if s * t > -1 / s * s:
                revert with 0, 17
            if stor2[arg1].field_1792 and mem[_852] > -1 / stor2[arg1].field_1792:
                revert with 0, 17
            if not s * s * s * t:
                revert with 0, 18
            if stor2[arg1].field_2048 <= stor2[arg1].field_1792 * mem[_852] / s * s * s * t:
                if stor2[arg1].field_1792 * mem[_852] / s * s * s * t < stor2[arg1].field_2048:
                    revert with 0, 17
                return bool(stor2[arg1].field_0), 
                       stor2[arg1].field_256,
                       stor2[arg1].field_512,
                       stor2[arg1].field_768,
                       stor2[arg1].field_1024,
                       stor2[arg1].field_1280,
                       stor2[arg1].field_1536,
                       stor2[arg1].field_1792,
                       stor2[arg1].field_2048,
                       stor2[arg1].field_1792 * mem[_852] / s * s * s * t,
                       (stor2[arg1].field_1792 * mem[_852] / s * s * s * t) - stor2[arg1].field_2048,
                       0
            if stor2[arg1].field_2048 < stor2[arg1].field_1792 * mem[_852] / s * s * s * t:
                revert with 0, 17
            return bool(stor2[arg1].field_0), 
                   stor2[arg1].field_256,
                   stor2[arg1].field_512,
                   stor2[arg1].field_768,
                   stor2[arg1].field_1024,
                   stor2[arg1].field_1280,
                   stor2[arg1].field_1536,
                   stor2[arg1].field_1792,
                   stor2[arg1].field_2048,
                   stor2[arg1].field_1792 * mem[_852] / s * s * s * t,
                   stor2[arg1].field_2048 - (stor2[arg1].field_1792 * mem[_852] / s * s * s * t),
                   1
        revert with 0, 17
    if var83002 > -1 / var83001:
        revert with 0, 17
    if stor2[arg1].field_1792 and mem[_852] > -1 / stor2[arg1].field_1792:
        revert with 0, 17
    if not var83001 * var83002:
        revert with 0, 18
    if stor2[arg1].field_2048 <= stor2[arg1].field_1792 * mem[_852] / var83001 * var83002:
        if stor2[arg1].field_1792 * mem[_852] / var83001 * var83002 < stor2[arg1].field_2048:
            revert with 0, 17
        return bool(stor2[arg1].field_0), 
               stor2[arg1].field_256,
               stor2[arg1].field_512,
               stor2[arg1].field_768,
               stor2[arg1].field_1024,
               stor2[arg1].field_1280,
               stor2[arg1].field_1536,
               stor2[arg1].field_1792,
               stor2[arg1].field_2048,
               stor2[arg1].field_1792 * mem[_852] / var83001 * var83002,
               (stor2[arg1].field_1792 * mem[_852] / var83001 * var83002) - stor2[arg1].field_2048,
               0
    if stor2[arg1].field_2048 < stor2[arg1].field_1792 * mem[_852] / var83001 * var83002:
        revert with 0, 17
    return bool(stor2[arg1].field_0), 
           stor2[arg1].field_256,
           stor2[arg1].field_512,
           stor2[arg1].field_768,
           stor2[arg1].field_1024,
           stor2[arg1].field_1280,
           stor2[arg1].field_1536,
           stor2[arg1].field_1792,
           stor2[arg1].field_2048,
           stor2[arg1].field_1792 * mem[_852] / var83001 * var83002,
           stor2[arg1].field_2048 - (stor2[arg1].field_1792 * mem[_852] / var83001 * var83002),
           1
}



}
