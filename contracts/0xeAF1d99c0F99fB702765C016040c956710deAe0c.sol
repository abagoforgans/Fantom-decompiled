contract main {




// =====================  Runtime code  =====================


#
#  - sub_d2b65627(?)
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

function sub_50204496(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    mem[96] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x95d89b41 with:
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
        require ext_code.size(address(arg1))
        staticcall address(arg1).0x313ce567 with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _141 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _143 = mem[_141]
        require mem[_141] == mem[_141 + 31 len 1]
        _145 = mem[64]
        mem[64] = mem[64] + 64
        mem[_145] = 3
        mem[_145 + 32] = 0x5553440000000000000000000000000000000000000000000000000000000000
        _146 = mem[64]
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
            _395 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _406 = mem[64]
            if mem[64] + 96 > test266151307() or mem[64] + 96 < mem[64]:
                revert with 0, 65
            mem[64] = mem[64] + 96
            mem[_406] = mem[_395]
            mem[_406 + 32] = mem[_395 + 32]
            mem[_406 + 64] = mem[_395 + 64]
            if not uint8(_143):
                if arg2 and mem[_406] > -1 / arg2:
                    revert with 0, 17
                mem[mem[64]] = arg2 * mem[_406]
            else:
                if bool(bool(uint8(_143) < 78)) or bool(bool(uint8(_143) < 32)):
                    if 10^uint8(_143) > -1:
                        revert with 0, 17
                    if arg2 and mem[_406] > -1 / arg2:
                        revert with 0, 17
                    if not 10^uint8(_143):
                        revert with 0, 18
                    mem[mem[64]] = arg2 * mem[_406] / 10^uint8(_143)
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
                                if arg2 and mem[_406] > -1 / arg2:
                                    revert with 0, 17
                                if not s * s * t:
                                    revert with 0, 18
                                mem[mem[64]] = arg2 * mem[_406] / s * s * t
                            else:
                                if uint255(u) * 0.5 > 1:
                                    s = s * s
                                    t = s * t
                                    u = uint255(u) * 0.5
                                    continue 
                                if s * t > -1 / s * s:
                                    revert with 0, 17
                                if arg2 and mem[_406] > -1 / arg2:
                                    revert with 0, 17
                                if not s * s * s * t:
                                    revert with 0, 18
                                mem[mem[64]] = arg2 * mem[_406] / s * s * s * t
                            return memory
                              from mem[64]
                               len 32
                        revert with 0, 17
                    if var80002 > -1 / var80001:
                        revert with 0, 17
                    if arg2 and mem[_406] > -1 / arg2:
                        revert with 0, 17
                    if not var80001 * var80002:
                        revert with 0, 18
                    mem[mem[64]] = arg2 * mem[_406] / var80001 * var80002
        else:
            mem[mem[64] + _5 + 100] = 0
            mem[mem[64] + 36] = ceil32(_5) + 96
            mem[ceil32(_5) + _146 + 100] = 3
            mem[ceil32(_5) + _146 + 132] = 0x5553440000000000000000000000000000000000000000000000000000000000
            mem[ceil32(_5) + _146 + 135] = 0
            require ext_code.size(refAddress)
            staticcall refAddress.getReferenceData(string arg1, string arg2) with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len ceil32(_5) + _146 + -mem[64] + 160]
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _396 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _410 = mem[64]
            if mem[64] + 96 > test266151307() or mem[64] + 96 < mem[64]:
                revert with 0, 65
            mem[64] = mem[64] + 96
            mem[_410] = mem[_396]
            mem[_410 + 32] = mem[_396 + 32]
            mem[_410 + 64] = mem[_396 + 64]
            if not uint8(_143):
                if arg2 and mem[_410] > -1 / arg2:
                    revert with 0, 17
                mem[mem[64]] = arg2 * mem[_410]
            else:
                if bool(bool(uint8(_143) < 78)) or bool(bool(uint8(_143) < 32)):
                    if 10^uint8(_143) > -1:
                        revert with 0, 17
                    if arg2 and mem[_410] > -1 / arg2:
                        revert with 0, 17
                    if not 10^uint8(_143):
                        revert with 0, 18
                    mem[mem[64]] = arg2 * mem[_410] / 10^uint8(_143)
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
                                if arg2 and mem[_410] > -1 / arg2:
                                    revert with 0, 17
                                if not s * s * t:
                                    revert with 0, 18
                                mem[mem[64]] = arg2 * mem[_410] / s * s * t
                            else:
                                if uint255(u) * 0.5 > 1:
                                    s = s * s
                                    t = s * t
                                    u = uint255(u) * 0.5
                                    continue 
                                if s * t > -1 / s * s:
                                    revert with 0, 17
                                if arg2 and mem[_410] > -1 / arg2:
                                    revert with 0, 17
                                if not s * s * s * t:
                                    revert with 0, 18
                                mem[mem[64]] = arg2 * mem[_410] / s * s * s * t
                            return memory
                              from mem[64]
                               len 32
                        revert with 0, 17
                    if var81002 > -1 / var81001:
                        revert with 0, 17
                    if arg2 and mem[_410] > -1 / arg2:
                        revert with 0, 17
                    if not var81001 * var81002:
                        revert with 0, 18
                    mem[mem[64]] = arg2 * mem[_410] / var81001 * var81002
    else:
        mem[ceil32(return_data.size) + _5 + 128] = 0
        require ext_code.size(address(arg1))
        staticcall address(arg1).0x313ce567 with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _142 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _144 = mem[_142]
        require mem[_142] == mem[_142 + 31 len 1]
        _147 = mem[64]
        mem[64] = mem[64] + 64
        mem[_147] = 3
        mem[_147 + 32] = 0x5553440000000000000000000000000000000000000000000000000000000000
        _148 = mem[64]
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
            _397 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _414 = mem[64]
            if mem[64] + 96 > test266151307() or mem[64] + 96 < mem[64]:
                revert with 0, 65
            mem[64] = mem[64] + 96
            mem[_414] = mem[_397]
            mem[_414 + 32] = mem[_397 + 32]
            mem[_414 + 64] = mem[_397 + 64]
            if not uint8(_144):
                if arg2 and mem[_414] > -1 / arg2:
                    revert with 0, 17
                mem[mem[64]] = arg2 * mem[_414]
            else:
                if bool(bool(uint8(_144) < 78)) or bool(bool(uint8(_144) < 32)):
                    if 10^uint8(_144) > -1:
                        revert with 0, 17
                    if arg2 and mem[_414] > -1 / arg2:
                        revert with 0, 17
                    if not 10^uint8(_144):
                        revert with 0, 18
                    mem[mem[64]] = arg2 * mem[_414] / 10^uint8(_144)
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
                                if arg2 and mem[_414] > -1 / arg2:
                                    revert with 0, 17
                                if not s * s * t:
                                    revert with 0, 18
                                mem[mem[64]] = arg2 * mem[_414] / s * s * t
                            else:
                                if uint255(u) * 0.5 > 1:
                                    s = s * s
                                    t = s * t
                                    u = uint255(u) * 0.5
                                    continue 
                                if s * t > -1 / s * s:
                                    revert with 0, 17
                                if arg2 and mem[_414] > -1 / arg2:
                                    revert with 0, 17
                                if not s * s * s * t:
                                    revert with 0, 18
                                mem[mem[64]] = arg2 * mem[_414] / s * s * s * t
                            return memory
                              from mem[64]
                               len 32
                        revert with 0, 17
                    if var81002 > -1 / var81001:
                        revert with 0, 17
                    if arg2 and mem[_414] > -1 / arg2:
                        revert with 0, 17
                    if not var81001 * var81002:
                        revert with 0, 18
                    mem[mem[64]] = arg2 * mem[_414] / var81001 * var81002
        else:
            mem[mem[64] + _5 + 100] = 0
            mem[mem[64] + 36] = ceil32(_5) + 96
            mem[ceil32(_5) + _148 + 100] = 3
            mem[ceil32(_5) + _148 + 132] = 0x5553440000000000000000000000000000000000000000000000000000000000
            mem[ceil32(_5) + _148 + 135] = 0
            require ext_code.size(refAddress)
            staticcall refAddress.getReferenceData(string arg1, string arg2) with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len ceil32(_5) + _148 + -mem[64] + 160]
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _398 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _418 = mem[64]
            if mem[64] + 96 > test266151307() or mem[64] + 96 < mem[64]:
                revert with 0, 65
            mem[64] = mem[64] + 96
            mem[_418] = mem[_398]
            mem[_418 + 32] = mem[_398 + 32]
            mem[_418 + 64] = mem[_398 + 64]
            if not uint8(_144):
                if arg2 and mem[_418] > -1 / arg2:
                    revert with 0, 17
                mem[mem[64]] = arg2 * mem[_418]
            else:
                if bool(bool(uint8(_144) < 78)) or bool(bool(uint8(_144) < 32)):
                    if 10^uint8(_144) > -1:
                        revert with 0, 17
                    if arg2 and mem[_418] > -1 / arg2:
                        revert with 0, 17
                    if not 10^uint8(_144):
                        revert with 0, 18
                    mem[mem[64]] = arg2 * mem[_418] / 10^uint8(_144)
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
                                if arg2 and mem[_418] > -1 / arg2:
                                    revert with 0, 17
                                if not s * s * t:
                                    revert with 0, 18
                                mem[mem[64]] = arg2 * mem[_418] / s * s * t
                            else:
                                if uint255(u) * 0.5 > 1:
                                    s = s * s
                                    t = s * t
                                    u = uint255(u) * 0.5
                                    continue 
                                if s * t > -1 / s * s:
                                    revert with 0, 17
                                if arg2 and mem[_418] > -1 / arg2:
                                    revert with 0, 17
                                if not s * s * s * t:
                                    revert with 0, 18
                                mem[mem[64]] = arg2 * mem[_418] / s * s * s * t
                            return memory
                              from mem[64]
                               len 32
                        revert with 0, 17
                    if var82002 > -1 / var82001:
                        revert with 0, 17
                    if arg2 and mem[_418] > -1 / arg2:
                        revert with 0, 17
                    if not var82001 * var82002:
                        revert with 0, 18
                    mem[mem[64]] = arg2 * mem[_418] / var82001 * var82002
    return memory
      from mem[64]
       len 32
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
    _499 = mem[224 len 4], Mask(224, 32, arg1 * arg2 / 100) >> 32
    require mem[224 len 4], Mask(224, 32, arg1 * arg2 / 100) >> 32 <= test266151307()
    require mem[224 len 4], Mask(224, 32, arg1 * arg2 / 100) >> 32 + 255 < return_data.size + 224
    _500 = mem[mem[224 len 4], Mask(224, 32, arg1 * arg2 / 100) >> 32 + 224]
    if mem[mem[224 len 4], Mask(224, 32, arg1 * arg2 / 100) >> 32 + 224] > test266151307():
        revert with 0, 65
    if (32 * mem[mem[224 len 4], Mask(224, 32, arg1 * arg2 / 100) >> 32 + 224]) + 32 < 0 or ceil32(return_data.size) + (32 * mem[mem[224 len 4], Mask(224, 32, arg1 * arg2 / 100) >> 32 + 224]) + 256 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(return_data.size) + (32 * mem[mem[224 len 4], Mask(224, 32, arg1 * arg2 / 100) >> 32 + 224]) + 256
    mem[ceil32(return_data.size) + 224] = mem[mem[224 len 4], Mask(224, 32, arg1 * arg2 / 100) >> 32 + 224]
    require return_data.size >= _499 + (32 * _500) + 32
    mem[ceil32(return_data.size) + 256 len 32 * _500] = mem[_499 + 256 len 32 * _500]
    if 2 >= _500:
        revert with 0, 50
    _978 = mem[ceil32(return_data.size) + 320]
    mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
    require ext_code.size(address(arg4))
    staticcall address(arg4).0x95d89b41 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _981 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _982 = mem[_981]
    require mem[_981] <= test266151307()
    require _981 + return_data.size > _981 + mem[_981] + 31
    _983 = mem[_981 + mem[_981]]
    if mem[_981 + mem[_981]] > test266151307():
        revert with 0, 65
    if ceil32(mem[_981 + mem[_981]]) + 32 < 0 or _981 + ceil32(return_data.size) + ceil32(mem[_981 + mem[_981]]) + 32 > test266151307():
        revert with 0, 65
    mem[64] = _981 + ceil32(return_data.size) + ceil32(mem[_981 + mem[_981]]) + 32
    mem[_981 + ceil32(return_data.size)] = _983
    require _982 + _983 + 32 <= return_data.size
    mem[_981 + ceil32(return_data.size) + 32 len ceil32(_983)] = mem[_981 + _982 + 32 len ceil32(_983)]
    if ceil32(_983) <= _983:
        require ext_code.size(address(arg4))
        staticcall address(arg4).0x313ce567 with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1455 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _1457 = mem[_1455]
        require mem[_1455] == mem[_1455 + 31 len 1]
        _1459 = mem[64]
        mem[64] = mem[64] + 64
        mem[_1459] = 3
        mem[_1459 + 32] = 0x5553440000000000000000000000000000000000000000000000000000000000
        _1460 = mem[64]
        mem[mem[64]] = 0x65555bcc00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 64
        mem[mem[64] + 68] = _983
        mem[mem[64] + 100 len ceil32(_983)] = mem[_981 + ceil32(return_data.size) + 32 len ceil32(_983)]
        if ceil32(_983) <= _983:
            mem[ceil32(_983) + mem[64] + 100] = 3
            mem[ceil32(_983) + mem[64] + 132] = 0x5553440000000000000000000000000000000000000000000000000000000000
            mem[ceil32(_983) + mem[64] + 135] = 0
            require ext_code.size(refAddress)
            staticcall refAddress.getReferenceData(string arg1, string arg2) with:
                    gas gas_remaining wei
                   args 64, ceil32(_983) + 96, _983, mem[mem[64] + 100 len ceil32(_983) + 32], 0, 0
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2381 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _2392 = mem[64]
            if mem[64] + 96 > test266151307() or mem[64] + 96 < mem[64]:
                revert with 0, 65
            mem[64] = mem[64] + 96
            mem[_2392] = mem[_2381]
            if not uint8(_1457):
                if _978 and mem[_2392] > -1 / _978:
                    revert with 0, 17
                stor2.length++
                stor2[stor2.length].field_0 = 0
                stor2[stor2.length].field_256 = block.timestamp
                stor2[stor2.length].field_512 = msg.sender
                stor2[stor2.length].field_768 = arg1
                stor2[stor2.length].field_1024 = arg2
                stor2[stor2.length].field_1280 = address(arg3)
                stor2[stor2.length].field_1536 = address(arg4)
                stor2[stor2.length].field_1792 = arg1 * arg2 / 100
                stor2[stor2.length].field_2048 = _978
                stor2[stor2.length].field_2304 = _978 * mem[_2392]
                emit 0x102c3eb8: arg1, arg2, address(arg3), address(arg4)
                return (_978 * mem[_2392])
            if bool(bool(uint8(_1457) < 78)) or bool(bool(uint8(_1457) < 32)):
                if 10^uint8(_1457) > -1:
                    revert with 0, 17
                if _978 and mem[_2392] > -1 / _978:
                    revert with 0, 17
                if not 10^uint8(_1457):
                    revert with 0, 18
                stor2.length++
                stor2[stor2.length].field_0 = 0
                stor2[stor2.length].field_256 = block.timestamp
                stor2[stor2.length].field_512 = msg.sender
                stor2[stor2.length].field_768 = arg1
                stor2[stor2.length].field_1024 = arg2
                stor2[stor2.length].field_1280 = address(arg3)
                stor2[stor2.length].field_1536 = address(arg4)
                stor2[stor2.length].field_1792 = arg1 * arg2 / 100
                stor2[stor2.length].field_2048 = _978
                stor2[stor2.length].field_2304 = _978 * mem[_2392] / 10^uint8(_1457)
                emit 0x102c3eb8: arg1, arg2, address(arg3), address(arg4)
                return (_978 * mem[_2392] / 10^uint8(_1457))
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
                        if _978 and mem[_2392] > -1 / _978:
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
                        stor2[stor2.length].field_1792 = arg1 * arg2 / 100
                        stor2[stor2.length].field_2048 = _978
                        stor2[stor2.length].field_2304 = _978 * mem[_2392] / s * s * t
                        emit 0x102c3eb8: arg1, arg2, address(arg3), address(arg4)
                        return (_978 * mem[_2392] / s * s * t)
                    if uint255(u) * 0.5 > 1:
                        s = s * s
                        t = s * t
                        u = uint255(u) * 0.5
                        continue 
                    if s * t > -1 / s * s:
                        revert with 0, 17
                    if _978 and mem[_2392] > -1 / _978:
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
                    stor2[stor2.length].field_1792 = arg1 * arg2 / 100
                    stor2[stor2.length].field_2048 = _978
                    stor2[stor2.length].field_2304 = _978 * mem[_2392] / s * s * s * t
                    emit 0x102c3eb8: arg1, arg2, address(arg3), address(arg4)
                    return (_978 * mem[_2392] / s * s * s * t)
                revert with 0, 17
            if var141002 > -1 / var141001:
                revert with 0, 17
            if _978 and mem[_2392] > -1 / _978:
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
            stor2[stor2.length].field_1792 = arg1 * arg2 / 100
            stor2[stor2.length].field_2048 = _978
            stor2[stor2.length].field_2304 = _978 * mem[_2392] / var141001 * var141002
            emit 0x102c3eb8: arg1, arg2, address(arg3), address(arg4)
            return (_978 * mem[_2392] / var141001 * var141002)
        mem[mem[64] + _983 + 100] = 0
        mem[mem[64] + 36] = ceil32(_983) + 96
        mem[ceil32(_983) + _1460 + 100] = 3
        mem[ceil32(_983) + _1460 + 132] = 0x5553440000000000000000000000000000000000000000000000000000000000
        mem[ceil32(_983) + _1460 + 135] = 0
        require ext_code.size(refAddress)
        staticcall refAddress.getReferenceData(string arg1, string arg2) with:
                gas gas_remaining wei
               args mem[mem[64] + 4 len ceil32(_983) + _1460 + -mem[64] + 160]
        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _2382 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 96
        _2396 = mem[64]
        if mem[64] + 96 > test266151307() or mem[64] + 96 < mem[64]:
            revert with 0, 65
        mem[64] = mem[64] + 96
        mem[_2396] = mem[_2382]
        if not uint8(_1457):
            if _978 and mem[_2396] > -1 / _978:
                revert with 0, 17
            stor2.length++
            stor2[stor2.length].field_0 = 0
            stor2[stor2.length].field_256 = block.timestamp
            stor2[stor2.length].field_512 = msg.sender
            stor2[stor2.length].field_768 = arg1
            stor2[stor2.length].field_1024 = arg2
            stor2[stor2.length].field_1280 = address(arg3)
            stor2[stor2.length].field_1536 = address(arg4)
            stor2[stor2.length].field_1792 = arg1 * arg2 / 100
            stor2[stor2.length].field_2048 = _978
            stor2[stor2.length].field_2304 = _978 * mem[_2396]
            emit 0x102c3eb8: arg1, arg2, address(arg3), address(arg4)
            return (_978 * mem[_2396])
        if bool(bool(uint8(_1457) < 78)) or bool(bool(uint8(_1457) < 32)):
            if 10^uint8(_1457) > -1:
                revert with 0, 17
            if _978 and mem[_2396] > -1 / _978:
                revert with 0, 17
            if not 10^uint8(_1457):
                revert with 0, 18
            stor2.length++
            stor2[stor2.length].field_0 = 0
            stor2[stor2.length].field_256 = block.timestamp
            stor2[stor2.length].field_512 = msg.sender
            stor2[stor2.length].field_768 = arg1
            stor2[stor2.length].field_1024 = arg2
            stor2[stor2.length].field_1280 = address(arg3)
            stor2[stor2.length].field_1536 = address(arg4)
            stor2[stor2.length].field_1792 = arg1 * arg2 / 100
            stor2[stor2.length].field_2048 = _978
            stor2[stor2.length].field_2304 = _978 * mem[_2396] / 10^uint8(_1457)
            emit 0x102c3eb8: arg1, arg2, address(arg3), address(arg4)
            return (_978 * mem[_2396] / 10^uint8(_1457))
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
                    if _978 and mem[_2396] > -1 / _978:
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
                    stor2[stor2.length].field_1792 = arg1 * arg2 / 100
                    stor2[stor2.length].field_2048 = _978
                    stor2[stor2.length].field_2304 = _978 * mem[_2396] / s * s * t
                    emit 0x102c3eb8: arg1, arg2, address(arg3), address(arg4)
                    return (_978 * mem[_2396] / s * s * t)
                if uint255(u) * 0.5 > 1:
                    s = s * s
                    t = s * t
                    u = uint255(u) * 0.5
                    continue 
                if s * t > -1 / s * s:
                    revert with 0, 17
                if _978 and mem[_2396] > -1 / _978:
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
                stor2[stor2.length].field_1792 = arg1 * arg2 / 100
                stor2[stor2.length].field_2048 = _978
                stor2[stor2.length].field_2304 = _978 * mem[_2396] / s * s * s * t
                emit 0x102c3eb8: arg1, arg2, address(arg3), address(arg4)
                return (_978 * mem[_2396] / s * s * s * t)
            revert with 0, 17
        if var142002 > -1 / var142001:
            revert with 0, 17
        if _978 and mem[_2396] > -1 / _978:
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
        stor2[stor2.length].field_1792 = arg1 * arg2 / 100
        stor2[stor2.length].field_2048 = _978
        stor2[stor2.length].field_2304 = _978 * mem[_2396] / var142001 * var142002
        emit 0x102c3eb8: arg1, arg2, address(arg3), address(arg4)
        return (_978 * mem[_2396] / var142001 * var142002)
    mem[_981 + ceil32(return_data.size) + _983 + 32] = 0
    require ext_code.size(address(arg4))
    staticcall address(arg4).0x313ce567 with:
            gas gas_remaining wei
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _1456 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _1458 = mem[_1456]
    require mem[_1456] == mem[_1456 + 31 len 1]
    _1461 = mem[64]
    mem[64] = mem[64] + 64
    mem[_1461] = 3
    mem[_1461 + 32] = 0x5553440000000000000000000000000000000000000000000000000000000000
    _1462 = mem[64]
    mem[mem[64]] = 0x65555bcc00000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = 64
    mem[mem[64] + 68] = _983
    mem[mem[64] + 100 len ceil32(_983)] = mem[_981 + ceil32(return_data.size) + 32 len ceil32(_983)]
    if ceil32(_983) <= _983:
        mem[ceil32(_983) + mem[64] + 100] = 3
        mem[ceil32(_983) + mem[64] + 132] = 0x5553440000000000000000000000000000000000000000000000000000000000
        mem[ceil32(_983) + mem[64] + 135] = 0
        require ext_code.size(refAddress)
        staticcall refAddress.getReferenceData(string arg1, string arg2) with:
                gas gas_remaining wei
               args 64, ceil32(_983) + 96, _983, mem[mem[64] + 100 len ceil32(_983) + 32], 0, 0
        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _2383 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 96
        _2400 = mem[64]
        if mem[64] + 96 > test266151307() or mem[64] + 96 < mem[64]:
            revert with 0, 65
        mem[64] = mem[64] + 96
        mem[_2400] = mem[_2383]
        if not uint8(_1458):
            if _978 and mem[_2400] > -1 / _978:
                revert with 0, 17
            stor2.length++
            stor2[stor2.length].field_0 = 0
            stor2[stor2.length].field_256 = block.timestamp
            stor2[stor2.length].field_512 = msg.sender
            stor2[stor2.length].field_768 = arg1
            stor2[stor2.length].field_1024 = arg2
            stor2[stor2.length].field_1280 = address(arg3)
            stor2[stor2.length].field_1536 = address(arg4)
            stor2[stor2.length].field_1792 = arg1 * arg2 / 100
            stor2[stor2.length].field_2048 = _978
            stor2[stor2.length].field_2304 = _978 * mem[_2400]
            emit 0x102c3eb8: arg1, arg2, address(arg3), address(arg4)
            return (_978 * mem[_2400])
        if bool(bool(uint8(_1458) < 78)) or bool(bool(uint8(_1458) < 32)):
            if 10^uint8(_1458) > -1:
                revert with 0, 17
            if _978 and mem[_2400] > -1 / _978:
                revert with 0, 17
            if not 10^uint8(_1458):
                revert with 0, 18
            stor2.length++
            stor2[stor2.length].field_0 = 0
            stor2[stor2.length].field_256 = block.timestamp
            stor2[stor2.length].field_512 = msg.sender
            stor2[stor2.length].field_768 = arg1
            stor2[stor2.length].field_1024 = arg2
            stor2[stor2.length].field_1280 = address(arg3)
            stor2[stor2.length].field_1536 = address(arg4)
            stor2[stor2.length].field_1792 = arg1 * arg2 / 100
            stor2[stor2.length].field_2048 = _978
            stor2[stor2.length].field_2304 = _978 * mem[_2400] / 10^uint8(_1458)
            emit 0x102c3eb8: arg1, arg2, address(arg3), address(arg4)
            return (_978 * mem[_2400] / 10^uint8(_1458))
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
                    if _978 and mem[_2400] > -1 / _978:
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
                    stor2[stor2.length].field_1792 = arg1 * arg2 / 100
                    stor2[stor2.length].field_2048 = _978
                    stor2[stor2.length].field_2304 = _978 * mem[_2400] / s * s * t
                    emit 0x102c3eb8: arg1, arg2, address(arg3), address(arg4)
                    return (_978 * mem[_2400] / s * s * t)
                if uint255(u) * 0.5 > 1:
                    s = s * s
                    t = s * t
                    u = uint255(u) * 0.5
                    continue 
                if s * t > -1 / s * s:
                    revert with 0, 17
                if _978 and mem[_2400] > -1 / _978:
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
                stor2[stor2.length].field_1792 = arg1 * arg2 / 100
                stor2[stor2.length].field_2048 = _978
                stor2[stor2.length].field_2304 = _978 * mem[_2400] / s * s * s * t
                emit 0x102c3eb8: arg1, arg2, address(arg3), address(arg4)
                return (_978 * mem[_2400] / s * s * s * t)
            revert with 0, 17
        if var142002 > -1 / var142001:
            revert with 0, 17
        if _978 and mem[_2400] > -1 / _978:
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
        stor2[stor2.length].field_1792 = arg1 * arg2 / 100
        stor2[stor2.length].field_2048 = _978
        stor2[stor2.length].field_2304 = _978 * mem[_2400] / var142001 * var142002
        emit 0x102c3eb8: arg1, arg2, address(arg3), address(arg4)
        return (_978 * mem[_2400] / var142001 * var142002)
    mem[mem[64] + _983 + 100] = 0
    mem[mem[64] + 36] = ceil32(_983) + 96
    mem[ceil32(_983) + _1462 + 100] = 3
    mem[ceil32(_983) + _1462 + 132] = 0x5553440000000000000000000000000000000000000000000000000000000000
    mem[ceil32(_983) + _1462 + 135] = 0
    require ext_code.size(refAddress)
    staticcall refAddress.getReferenceData(string arg1, string arg2) with:
            gas gas_remaining wei
           args mem[mem[64] + 4 len ceil32(_983) + _1462 + -mem[64] + 160]
    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _2384 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 96
    _2404 = mem[64]
    if mem[64] + 96 > test266151307() or mem[64] + 96 < mem[64]:
        revert with 0, 65
    mem[64] = mem[64] + 96
    mem[_2404] = mem[_2384]
    if not uint8(_1458):
        if _978 and mem[_2404] > -1 / _978:
            revert with 0, 17
        stor2.length++
        stor2[stor2.length].field_0 = 0
        stor2[stor2.length].field_256 = block.timestamp
        stor2[stor2.length].field_512 = msg.sender
        stor2[stor2.length].field_768 = arg1
        stor2[stor2.length].field_1024 = arg2
        stor2[stor2.length].field_1280 = address(arg3)
        stor2[stor2.length].field_1536 = address(arg4)
        stor2[stor2.length].field_1792 = arg1 * arg2 / 100
        stor2[stor2.length].field_2048 = _978
        stor2[stor2.length].field_2304 = _978 * mem[_2404]
        emit 0x102c3eb8: arg1, arg2, address(arg3), address(arg4)
        return (_978 * mem[_2404])
    if bool(bool(uint8(_1458) < 78)) or bool(bool(uint8(_1458) < 32)):
        if 10^uint8(_1458) > -1:
            revert with 0, 17
        if _978 and mem[_2404] > -1 / _978:
            revert with 0, 17
        if not 10^uint8(_1458):
            revert with 0, 18
        stor2.length++
        stor2[stor2.length].field_0 = 0
        stor2[stor2.length].field_256 = block.timestamp
        stor2[stor2.length].field_512 = msg.sender
        stor2[stor2.length].field_768 = arg1
        stor2[stor2.length].field_1024 = arg2
        stor2[stor2.length].field_1280 = address(arg3)
        stor2[stor2.length].field_1536 = address(arg4)
        stor2[stor2.length].field_1792 = arg1 * arg2 / 100
        stor2[stor2.length].field_2048 = _978
        stor2[stor2.length].field_2304 = _978 * mem[_2404] / 10^uint8(_1458)
        emit 0x102c3eb8: arg1, arg2, address(arg3), address(arg4)
        return (_978 * mem[_2404] / 10^uint8(_1458))
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
                if _978 and mem[_2404] > -1 / _978:
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
                stor2[stor2.length].field_1792 = arg1 * arg2 / 100
                stor2[stor2.length].field_2048 = _978
                stor2[stor2.length].field_2304 = _978 * mem[_2404] / s * s * t
                emit 0x102c3eb8: arg1, arg2, address(arg3), address(arg4)
                return (_978 * mem[_2404] / s * s * t)
            if uint255(u) * 0.5 > 1:
                s = s * s
                t = s * t
                u = uint255(u) * 0.5
                continue 
            if s * t > -1 / s * s:
                revert with 0, 17
            if _978 and mem[_2404] > -1 / _978:
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
            stor2[stor2.length].field_1792 = arg1 * arg2 / 100
            stor2[stor2.length].field_2048 = _978
            stor2[stor2.length].field_2304 = _978 * mem[_2404] / s * s * s * t
            emit 0x102c3eb8: arg1, arg2, address(arg3), address(arg4)
            return (_978 * mem[_2404] / s * s * s * t)
        revert with 0, 17
    if var143002 > -1 / var143001:
        revert with 0, 17
    if _978 and mem[_2404] > -1 / _978:
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
    stor2[stor2.length].field_1792 = arg1 * arg2 / 100
    stor2[stor2.length].field_2048 = _978
    stor2[stor2.length].field_2304 = _978 * mem[_2404] / var143001 * var143002
    emit 0x102c3eb8: arg1, arg2, address(arg3), address(arg4)
    return (_978 * mem[_2404] / var143001 * var143002)
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
    _499 = mem[224 len 4], Mask(224, 32, arg1 * arg2 / 100) >> 32
    require mem[224 len 4], Mask(224, 32, arg1 * arg2 / 100) >> 32 <= test266151307()
    require mem[224 len 4], Mask(224, 32, arg1 * arg2 / 100) >> 32 + 255 < return_data.size + 224
    _500 = mem[mem[224 len 4], Mask(224, 32, arg1 * arg2 / 100) >> 32 + 224]
    if mem[mem[224 len 4], Mask(224, 32, arg1 * arg2 / 100) >> 32 + 224] > test266151307():
        revert with 0, 65
    if (32 * mem[mem[224 len 4], Mask(224, 32, arg1 * arg2 / 100) >> 32 + 224]) + 32 < 0 or ceil32(return_data.size) + (32 * mem[mem[224 len 4], Mask(224, 32, arg1 * arg2 / 100) >> 32 + 224]) + 256 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(return_data.size) + (32 * mem[mem[224 len 4], Mask(224, 32, arg1 * arg2 / 100) >> 32 + 224]) + 256
    mem[ceil32(return_data.size) + 224] = mem[mem[224 len 4], Mask(224, 32, arg1 * arg2 / 100) >> 32 + 224]
    require return_data.size >= _499 + (32 * _500) + 32
    mem[ceil32(return_data.size) + 256 len 32 * _500] = mem[_499 + 256 len 32 * _500]
    if 2 >= _500:
        revert with 0, 50
    _978 = mem[ceil32(return_data.size) + 320]
    mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
    require ext_code.size(address(arg4))
    staticcall address(arg4).0x95d89b41 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _981 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _982 = mem[_981]
    require mem[_981] <= test266151307()
    require _981 + return_data.size > _981 + mem[_981] + 31
    _983 = mem[_981 + mem[_981]]
    if mem[_981 + mem[_981]] > test266151307():
        revert with 0, 65
    if ceil32(mem[_981 + mem[_981]]) + 32 < 0 or _981 + ceil32(return_data.size) + ceil32(mem[_981 + mem[_981]]) + 32 > test266151307():
        revert with 0, 65
    mem[64] = _981 + ceil32(return_data.size) + ceil32(mem[_981 + mem[_981]]) + 32
    mem[_981 + ceil32(return_data.size)] = _983
    require _982 + _983 + 32 <= return_data.size
    mem[_981 + ceil32(return_data.size) + 32 len ceil32(_983)] = mem[_981 + _982 + 32 len ceil32(_983)]
    if ceil32(_983) <= _983:
        require ext_code.size(address(arg4))
        staticcall address(arg4).0x313ce567 with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1455 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _1457 = mem[_1455]
        require mem[_1455] == mem[_1455 + 31 len 1]
        _1459 = mem[64]
        mem[64] = mem[64] + 64
        mem[_1459] = 3
        mem[_1459 + 32] = 0x5553440000000000000000000000000000000000000000000000000000000000
        _1460 = mem[64]
        mem[mem[64]] = 0x65555bcc00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 64
        mem[mem[64] + 68] = _983
        mem[mem[64] + 100 len ceil32(_983)] = mem[_981 + ceil32(return_data.size) + 32 len ceil32(_983)]
        if ceil32(_983) <= _983:
            mem[ceil32(_983) + mem[64] + 100] = 3
            mem[ceil32(_983) + mem[64] + 132] = 0x5553440000000000000000000000000000000000000000000000000000000000
            mem[ceil32(_983) + mem[64] + 135] = 0
            require ext_code.size(refAddress)
            staticcall refAddress.getReferenceData(string arg1, string arg2) with:
                    gas gas_remaining wei
                   args 64, ceil32(_983) + 96, _983, mem[mem[64] + 100 len ceil32(_983) + 32], 0, 0
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2381 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _2392 = mem[64]
            if mem[64] + 96 > test266151307() or mem[64] + 96 < mem[64]:
                revert with 0, 65
            mem[64] = mem[64] + 96
            mem[_2392] = mem[_2381]
            if not uint8(_1457):
                if _978 and mem[_2392] > -1 / _978:
                    revert with 0, 17
                stor2.length++
                stor2[stor2.length].field_0 = 1
                stor2[stor2.length].field_256 = block.timestamp
                stor2[stor2.length].field_512 = msg.sender
                stor2[stor2.length].field_768 = arg1
                stor2[stor2.length].field_1024 = arg2
                stor2[stor2.length].field_1280 = address(arg3)
                stor2[stor2.length].field_1536 = address(arg4)
                stor2[stor2.length].field_1792 = arg1 * arg2 / 100
                stor2[stor2.length].field_2048 = _978
                stor2[stor2.length].field_2304 = _978 * mem[_2392]
                emit 0x102c3eb8: arg1, arg2, address(arg3), address(arg4)
                return (_978 * mem[_2392])
            if bool(bool(uint8(_1457) < 78)) or bool(bool(uint8(_1457) < 32)):
                if 10^uint8(_1457) > -1:
                    revert with 0, 17
                if _978 and mem[_2392] > -1 / _978:
                    revert with 0, 17
                if not 10^uint8(_1457):
                    revert with 0, 18
                stor2.length++
                stor2[stor2.length].field_0 = 1
                stor2[stor2.length].field_256 = block.timestamp
                stor2[stor2.length].field_512 = msg.sender
                stor2[stor2.length].field_768 = arg1
                stor2[stor2.length].field_1024 = arg2
                stor2[stor2.length].field_1280 = address(arg3)
                stor2[stor2.length].field_1536 = address(arg4)
                stor2[stor2.length].field_1792 = arg1 * arg2 / 100
                stor2[stor2.length].field_2048 = _978
                stor2[stor2.length].field_2304 = _978 * mem[_2392] / 10^uint8(_1457)
                emit 0x102c3eb8: arg1, arg2, address(arg3), address(arg4)
                return (_978 * mem[_2392] / 10^uint8(_1457))
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
                        if _978 and mem[_2392] > -1 / _978:
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
                        stor2[stor2.length].field_1792 = arg1 * arg2 / 100
                        stor2[stor2.length].field_2048 = _978
                        stor2[stor2.length].field_2304 = _978 * mem[_2392] / s * s * t
                        emit 0x102c3eb8: arg1, arg2, address(arg3), address(arg4)
                        return (_978 * mem[_2392] / s * s * t)
                    if uint255(u) * 0.5 > 1:
                        s = s * s
                        t = s * t
                        u = uint255(u) * 0.5
                        continue 
                    if s * t > -1 / s * s:
                        revert with 0, 17
                    if _978 and mem[_2392] > -1 / _978:
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
                    stor2[stor2.length].field_1792 = arg1 * arg2 / 100
                    stor2[stor2.length].field_2048 = _978
                    stor2[stor2.length].field_2304 = _978 * mem[_2392] / s * s * s * t
                    emit 0x102c3eb8: arg1, arg2, address(arg3), address(arg4)
                    return (_978 * mem[_2392] / s * s * s * t)
                revert with 0, 17
            if var141002 > -1 / var141001:
                revert with 0, 17
            if _978 and mem[_2392] > -1 / _978:
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
            stor2[stor2.length].field_1792 = arg1 * arg2 / 100
            stor2[stor2.length].field_2048 = _978
            stor2[stor2.length].field_2304 = _978 * mem[_2392] / var141001 * var141002
            emit 0x102c3eb8: arg1, arg2, address(arg3), address(arg4)
            return (_978 * mem[_2392] / var141001 * var141002)
        mem[mem[64] + _983 + 100] = 0
        mem[mem[64] + 36] = ceil32(_983) + 96
        mem[ceil32(_983) + _1460 + 100] = 3
        mem[ceil32(_983) + _1460 + 132] = 0x5553440000000000000000000000000000000000000000000000000000000000
        mem[ceil32(_983) + _1460 + 135] = 0
        require ext_code.size(refAddress)
        staticcall refAddress.getReferenceData(string arg1, string arg2) with:
                gas gas_remaining wei
               args mem[mem[64] + 4 len ceil32(_983) + _1460 + -mem[64] + 160]
        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _2382 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 96
        _2396 = mem[64]
        if mem[64] + 96 > test266151307() or mem[64] + 96 < mem[64]:
            revert with 0, 65
        mem[64] = mem[64] + 96
        mem[_2396] = mem[_2382]
        if not uint8(_1457):
            if _978 and mem[_2396] > -1 / _978:
                revert with 0, 17
            stor2.length++
            stor2[stor2.length].field_0 = 1
            stor2[stor2.length].field_256 = block.timestamp
            stor2[stor2.length].field_512 = msg.sender
            stor2[stor2.length].field_768 = arg1
            stor2[stor2.length].field_1024 = arg2
            stor2[stor2.length].field_1280 = address(arg3)
            stor2[stor2.length].field_1536 = address(arg4)
            stor2[stor2.length].field_1792 = arg1 * arg2 / 100
            stor2[stor2.length].field_2048 = _978
            stor2[stor2.length].field_2304 = _978 * mem[_2396]
            emit 0x102c3eb8: arg1, arg2, address(arg3), address(arg4)
            return (_978 * mem[_2396])
        if bool(bool(uint8(_1457) < 78)) or bool(bool(uint8(_1457) < 32)):
            if 10^uint8(_1457) > -1:
                revert with 0, 17
            if _978 and mem[_2396] > -1 / _978:
                revert with 0, 17
            if not 10^uint8(_1457):
                revert with 0, 18
            stor2.length++
            stor2[stor2.length].field_0 = 1
            stor2[stor2.length].field_256 = block.timestamp
            stor2[stor2.length].field_512 = msg.sender
            stor2[stor2.length].field_768 = arg1
            stor2[stor2.length].field_1024 = arg2
            stor2[stor2.length].field_1280 = address(arg3)
            stor2[stor2.length].field_1536 = address(arg4)
            stor2[stor2.length].field_1792 = arg1 * arg2 / 100
            stor2[stor2.length].field_2048 = _978
            stor2[stor2.length].field_2304 = _978 * mem[_2396] / 10^uint8(_1457)
            emit 0x102c3eb8: arg1, arg2, address(arg3), address(arg4)
            return (_978 * mem[_2396] / 10^uint8(_1457))
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
                    if _978 and mem[_2396] > -1 / _978:
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
                    stor2[stor2.length].field_1792 = arg1 * arg2 / 100
                    stor2[stor2.length].field_2048 = _978
                    stor2[stor2.length].field_2304 = _978 * mem[_2396] / s * s * t
                    emit 0x102c3eb8: arg1, arg2, address(arg3), address(arg4)
                    return (_978 * mem[_2396] / s * s * t)
                if uint255(u) * 0.5 > 1:
                    s = s * s
                    t = s * t
                    u = uint255(u) * 0.5
                    continue 
                if s * t > -1 / s * s:
                    revert with 0, 17
                if _978 and mem[_2396] > -1 / _978:
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
                stor2[stor2.length].field_1792 = arg1 * arg2 / 100
                stor2[stor2.length].field_2048 = _978
                stor2[stor2.length].field_2304 = _978 * mem[_2396] / s * s * s * t
                emit 0x102c3eb8: arg1, arg2, address(arg3), address(arg4)
                return (_978 * mem[_2396] / s * s * s * t)
            revert with 0, 17
        if var142002 > -1 / var142001:
            revert with 0, 17
        if _978 and mem[_2396] > -1 / _978:
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
        stor2[stor2.length].field_1792 = arg1 * arg2 / 100
        stor2[stor2.length].field_2048 = _978
        stor2[stor2.length].field_2304 = _978 * mem[_2396] / var142001 * var142002
        emit 0x102c3eb8: arg1, arg2, address(arg3), address(arg4)
        return (_978 * mem[_2396] / var142001 * var142002)
    mem[_981 + ceil32(return_data.size) + _983 + 32] = 0
    require ext_code.size(address(arg4))
    staticcall address(arg4).0x313ce567 with:
            gas gas_remaining wei
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _1456 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _1458 = mem[_1456]
    require mem[_1456] == mem[_1456 + 31 len 1]
    _1461 = mem[64]
    mem[64] = mem[64] + 64
    mem[_1461] = 3
    mem[_1461 + 32] = 0x5553440000000000000000000000000000000000000000000000000000000000
    _1462 = mem[64]
    mem[mem[64]] = 0x65555bcc00000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = 64
    mem[mem[64] + 68] = _983
    mem[mem[64] + 100 len ceil32(_983)] = mem[_981 + ceil32(return_data.size) + 32 len ceil32(_983)]
    if ceil32(_983) <= _983:
        mem[ceil32(_983) + mem[64] + 100] = 3
        mem[ceil32(_983) + mem[64] + 132] = 0x5553440000000000000000000000000000000000000000000000000000000000
        mem[ceil32(_983) + mem[64] + 135] = 0
        require ext_code.size(refAddress)
        staticcall refAddress.getReferenceData(string arg1, string arg2) with:
                gas gas_remaining wei
               args 64, ceil32(_983) + 96, _983, mem[mem[64] + 100 len ceil32(_983) + 32], 0, 0
        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _2383 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 96
        _2400 = mem[64]
        if mem[64] + 96 > test266151307() or mem[64] + 96 < mem[64]:
            revert with 0, 65
        mem[64] = mem[64] + 96
        mem[_2400] = mem[_2383]
        if not uint8(_1458):
            if _978 and mem[_2400] > -1 / _978:
                revert with 0, 17
            stor2.length++
            stor2[stor2.length].field_0 = 1
            stor2[stor2.length].field_256 = block.timestamp
            stor2[stor2.length].field_512 = msg.sender
            stor2[stor2.length].field_768 = arg1
            stor2[stor2.length].field_1024 = arg2
            stor2[stor2.length].field_1280 = address(arg3)
            stor2[stor2.length].field_1536 = address(arg4)
            stor2[stor2.length].field_1792 = arg1 * arg2 / 100
            stor2[stor2.length].field_2048 = _978
            stor2[stor2.length].field_2304 = _978 * mem[_2400]
            emit 0x102c3eb8: arg1, arg2, address(arg3), address(arg4)
            return (_978 * mem[_2400])
        if bool(bool(uint8(_1458) < 78)) or bool(bool(uint8(_1458) < 32)):
            if 10^uint8(_1458) > -1:
                revert with 0, 17
            if _978 and mem[_2400] > -1 / _978:
                revert with 0, 17
            if not 10^uint8(_1458):
                revert with 0, 18
            stor2.length++
            stor2[stor2.length].field_0 = 1
            stor2[stor2.length].field_256 = block.timestamp
            stor2[stor2.length].field_512 = msg.sender
            stor2[stor2.length].field_768 = arg1
            stor2[stor2.length].field_1024 = arg2
            stor2[stor2.length].field_1280 = address(arg3)
            stor2[stor2.length].field_1536 = address(arg4)
            stor2[stor2.length].field_1792 = arg1 * arg2 / 100
            stor2[stor2.length].field_2048 = _978
            stor2[stor2.length].field_2304 = _978 * mem[_2400] / 10^uint8(_1458)
            emit 0x102c3eb8: arg1, arg2, address(arg3), address(arg4)
            return (_978 * mem[_2400] / 10^uint8(_1458))
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
                    if _978 and mem[_2400] > -1 / _978:
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
                    stor2[stor2.length].field_1792 = arg1 * arg2 / 100
                    stor2[stor2.length].field_2048 = _978
                    stor2[stor2.length].field_2304 = _978 * mem[_2400] / s * s * t
                    emit 0x102c3eb8: arg1, arg2, address(arg3), address(arg4)
                    return (_978 * mem[_2400] / s * s * t)
                if uint255(u) * 0.5 > 1:
                    s = s * s
                    t = s * t
                    u = uint255(u) * 0.5
                    continue 
                if s * t > -1 / s * s:
                    revert with 0, 17
                if _978 and mem[_2400] > -1 / _978:
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
                stor2[stor2.length].field_1792 = arg1 * arg2 / 100
                stor2[stor2.length].field_2048 = _978
                stor2[stor2.length].field_2304 = _978 * mem[_2400] / s * s * s * t
                emit 0x102c3eb8: arg1, arg2, address(arg3), address(arg4)
                return (_978 * mem[_2400] / s * s * s * t)
            revert with 0, 17
        if var142002 > -1 / var142001:
            revert with 0, 17
        if _978 and mem[_2400] > -1 / _978:
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
        stor2[stor2.length].field_1792 = arg1 * arg2 / 100
        stor2[stor2.length].field_2048 = _978
        stor2[stor2.length].field_2304 = _978 * mem[_2400] / var142001 * var142002
        emit 0x102c3eb8: arg1, arg2, address(arg3), address(arg4)
        return (_978 * mem[_2400] / var142001 * var142002)
    mem[mem[64] + _983 + 100] = 0
    mem[mem[64] + 36] = ceil32(_983) + 96
    mem[ceil32(_983) + _1462 + 100] = 3
    mem[ceil32(_983) + _1462 + 132] = 0x5553440000000000000000000000000000000000000000000000000000000000
    mem[ceil32(_983) + _1462 + 135] = 0
    require ext_code.size(refAddress)
    staticcall refAddress.getReferenceData(string arg1, string arg2) with:
            gas gas_remaining wei
           args mem[mem[64] + 4 len ceil32(_983) + _1462 + -mem[64] + 160]
    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _2384 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 96
    _2404 = mem[64]
    if mem[64] + 96 > test266151307() or mem[64] + 96 < mem[64]:
        revert with 0, 65
    mem[64] = mem[64] + 96
    mem[_2404] = mem[_2384]
    if not uint8(_1458):
        if _978 and mem[_2404] > -1 / _978:
            revert with 0, 17
        stor2.length++
        stor2[stor2.length].field_0 = 1
        stor2[stor2.length].field_256 = block.timestamp
        stor2[stor2.length].field_512 = msg.sender
        stor2[stor2.length].field_768 = arg1
        stor2[stor2.length].field_1024 = arg2
        stor2[stor2.length].field_1280 = address(arg3)
        stor2[stor2.length].field_1536 = address(arg4)
        stor2[stor2.length].field_1792 = arg1 * arg2 / 100
        stor2[stor2.length].field_2048 = _978
        stor2[stor2.length].field_2304 = _978 * mem[_2404]
        emit 0x102c3eb8: arg1, arg2, address(arg3), address(arg4)
        return (_978 * mem[_2404])
    if bool(bool(uint8(_1458) < 78)) or bool(bool(uint8(_1458) < 32)):
        if 10^uint8(_1458) > -1:
            revert with 0, 17
        if _978 and mem[_2404] > -1 / _978:
            revert with 0, 17
        if not 10^uint8(_1458):
            revert with 0, 18
        stor2.length++
        stor2[stor2.length].field_0 = 1
        stor2[stor2.length].field_256 = block.timestamp
        stor2[stor2.length].field_512 = msg.sender
        stor2[stor2.length].field_768 = arg1
        stor2[stor2.length].field_1024 = arg2
        stor2[stor2.length].field_1280 = address(arg3)
        stor2[stor2.length].field_1536 = address(arg4)
        stor2[stor2.length].field_1792 = arg1 * arg2 / 100
        stor2[stor2.length].field_2048 = _978
        stor2[stor2.length].field_2304 = _978 * mem[_2404] / 10^uint8(_1458)
        emit 0x102c3eb8: arg1, arg2, address(arg3), address(arg4)
        return (_978 * mem[_2404] / 10^uint8(_1458))
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
                if _978 and mem[_2404] > -1 / _978:
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
                stor2[stor2.length].field_1792 = arg1 * arg2 / 100
                stor2[stor2.length].field_2048 = _978
                stor2[stor2.length].field_2304 = _978 * mem[_2404] / s * s * t
                emit 0x102c3eb8: arg1, arg2, address(arg3), address(arg4)
                return (_978 * mem[_2404] / s * s * t)
            if uint255(u) * 0.5 > 1:
                s = s * s
                t = s * t
                u = uint255(u) * 0.5
                continue 
            if s * t > -1 / s * s:
                revert with 0, 17
            if _978 and mem[_2404] > -1 / _978:
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
            stor2[stor2.length].field_1792 = arg1 * arg2 / 100
            stor2[stor2.length].field_2048 = _978
            stor2[stor2.length].field_2304 = _978 * mem[_2404] / s * s * s * t
            emit 0x102c3eb8: arg1, arg2, address(arg3), address(arg4)
            return (_978 * mem[_2404] / s * s * s * t)
        revert with 0, 17
    if var143002 > -1 / var143001:
        revert with 0, 17
    if _978 and mem[_2404] > -1 / _978:
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
    stor2[stor2.length].field_1792 = arg1 * arg2 / 100
    stor2[stor2.length].field_2048 = _978
    stor2[stor2.length].field_2304 = _978 * mem[_2404] / var143001 * var143002
    emit 0x102c3eb8: arg1, arg2, address(arg3), address(arg4)
    return (_978 * mem[_2404] / var143001 * var143002)
}

function sub_f08d010c(?) payable {
    require calldata.size - 4 >= 32
    if arg1 >= stor2.length:
        revert with 0, 50
    mem[0] = 2
    if not stor2[arg1].field_0:
        mem[96] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
        require ext_code.size(stor2[arg1].field_1536)
        staticcall stor2[arg1].field_1536.0x95d89b41 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 96
        require return_data.size >= 32
        _9 = mem[96]
        require mem[96] <= test266151307()
        require return_data.size + 96 > mem[96] + 127
        _12 = mem[mem[96] + 96]
        if mem[mem[96] + 96] > test266151307():
            revert with 0, 65
        if ceil32(mem[mem[96] + 96]) + 32 < 0 or ceil32(return_data.size) + ceil32(mem[mem[96] + 96]) + 128 > test266151307():
            revert with 0, 65
        mem[64] = ceil32(return_data.size) + ceil32(mem[mem[96] + 96]) + 128
        mem[ceil32(return_data.size) + 96] = _12
        require _9 + _12 + 32 <= return_data.size
        mem[ceil32(return_data.size) + 128 len ceil32(_12)] = mem[_9 + 128 len ceil32(_12)]
        if ceil32(_12) <= _12:
            require ext_code.size(stor2[arg1].field_1536)
            staticcall stor2[arg1].field_1536.0x313ce567 with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _770 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _774 = mem[_770]
            require mem[_770] == mem[_770 + 31 len 1]
            _778 = mem[64]
            mem[64] = mem[64] + 64
            mem[_778] = 3
            mem[_778 + 32] = 0x5553440000000000000000000000000000000000000000000000000000000000
            _781 = mem[64]
            mem[mem[64]] = 0x65555bcc00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 64
            mem[mem[64] + 68] = _12
            mem[mem[64] + 100 len ceil32(_12)] = mem[ceil32(return_data.size) + 128 len ceil32(_12)]
            if ceil32(_12) <= _12:
                mem[ceil32(_12) + mem[64] + 100] = 3
                mem[ceil32(_12) + mem[64] + 132] = 0x5553440000000000000000000000000000000000000000000000000000000000
                mem[ceil32(_12) + mem[64] + 135] = 0
                require ext_code.size(refAddress)
                staticcall refAddress.getReferenceData(string arg1, string arg2) with:
                        gas gas_remaining wei
                       args 64, ceil32(_12) + 96, _12, mem[mem[64] + 100 len ceil32(_12) + 32], 0, 0
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2241 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _2272 = mem[64]
                if mem[64] + 96 > test266151307() or mem[64] + 96 < mem[64]:
                    revert with 0, 65
                mem[64] = mem[64] + 96
                mem[_2272] = mem[_2241]
                if not uint8(_774):
                    if stor2[arg1].field_2048 and mem[_2272] > -1 / stor2[arg1].field_2048:
                        revert with 0, 17
                    if stor2[arg1].field_2304 <= stor2[arg1].field_2048 * mem[_2272]:
                        return 0
                    if stor2[arg1].field_2304 < stor2[arg1].field_2048 * mem[_2272]:
                        revert with 0, 17
                    if stor2[arg1].field_2304 - (stor2[arg1].field_2048 * mem[_2272]) <= stor2[arg1].field_768:
                        return 0
                else:
                    if bool(bool(uint8(_774) < 78)) or bool(bool(uint8(_774) < 32)):
                        if 10^uint8(_774) > -1:
                            revert with 0, 17
                        if stor2[arg1].field_2048 and mem[_2272] > -1 / stor2[arg1].field_2048:
                            revert with 0, 17
                        if not 10^uint8(_774):
                            revert with 0, 18
                        if stor2[arg1].field_2304 <= stor2[arg1].field_2048 * mem[_2272] / 10^uint8(_774):
                            return 0
                        if stor2[arg1].field_2304 < stor2[arg1].field_2048 * mem[_2272] / 10^uint8(_774):
                            revert with 0, 17
                        if stor2[arg1].field_2304 - (stor2[arg1].field_2048 * mem[_2272] / 10^uint8(_774)) <= stor2[arg1].field_768:
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
                                    if stor2[arg1].field_2048 and mem[_2272] > -1 / stor2[arg1].field_2048:
                                        revert with 0, 17
                                    if not s * s * t:
                                        revert with 0, 18
                                    if stor2[arg1].field_2304 <= stor2[arg1].field_2048 * mem[_2272] / s * s * t:
                                        return 0
                                    if stor2[arg1].field_2304 < stor2[arg1].field_2048 * mem[_2272] / s * s * t:
                                        revert with 0, 17
                                    if stor2[arg1].field_2304 - (stor2[arg1].field_2048 * mem[_2272] / s * s * t) <= stor2[arg1].field_768:
                                        return 0
                                else:
                                    if uint255(u) * 0.5 > 1:
                                        s = s * s
                                        t = s * t
                                        u = uint255(u) * 0.5
                                        continue 
                                    if s * t > -1 / s * s:
                                        revert with 0, 17
                                    if stor2[arg1].field_2048 and mem[_2272] > -1 / stor2[arg1].field_2048:
                                        revert with 0, 17
                                    if not s * s * s * t:
                                        revert with 0, 18
                                    if stor2[arg1].field_2304 <= stor2[arg1].field_2048 * mem[_2272] / s * s * s * t:
                                        return 0
                                    if stor2[arg1].field_2304 < stor2[arg1].field_2048 * mem[_2272] / s * s * s * t:
                                        revert with 0, 17
                                    if stor2[arg1].field_2304 - (stor2[arg1].field_2048 * mem[_2272] / s * s * s * t) <= stor2[arg1].field_768:
                                        return 0
                                return 1
                            revert with 0, 17
                        if var82002 > -1 / var82001:
                            revert with 0, 17
                        if stor2[arg1].field_2048 and mem[_2272] > -1 / stor2[arg1].field_2048:
                            revert with 0, 17
                        if not var82001 * var82002:
                            revert with 0, 18
                        if stor2[arg1].field_2304 <= stor2[arg1].field_2048 * mem[_2272] / var82001 * var82002:
                            return 0
                        if stor2[arg1].field_2304 < stor2[arg1].field_2048 * mem[_2272] / var82001 * var82002:
                            revert with 0, 17
                        if stor2[arg1].field_2304 - (stor2[arg1].field_2048 * mem[_2272] / var82001 * var82002) <= stor2[arg1].field_768:
                            return 0
            else:
                mem[mem[64] + _12 + 100] = 0
                mem[mem[64] + 36] = ceil32(_12) + 96
                mem[ceil32(_12) + _781 + 100] = 3
                mem[ceil32(_12) + _781 + 132] = 0x5553440000000000000000000000000000000000000000000000000000000000
                mem[ceil32(_12) + _781 + 135] = 0
                require ext_code.size(refAddress)
                staticcall refAddress.getReferenceData(string arg1, string arg2) with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len ceil32(_12) + _781 + -mem[64] + 160]
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2242 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _2276 = mem[64]
                if mem[64] + 96 > test266151307() or mem[64] + 96 < mem[64]:
                    revert with 0, 65
                mem[64] = mem[64] + 96
                mem[_2276] = mem[_2242]
                if not uint8(_774):
                    if stor2[arg1].field_2048 and mem[_2276] > -1 / stor2[arg1].field_2048:
                        revert with 0, 17
                    if stor2[arg1].field_2304 <= stor2[arg1].field_2048 * mem[_2276]:
                        return 0
                    if stor2[arg1].field_2304 < stor2[arg1].field_2048 * mem[_2276]:
                        revert with 0, 17
                    if stor2[arg1].field_2304 - (stor2[arg1].field_2048 * mem[_2276]) <= stor2[arg1].field_768:
                        return 0
                else:
                    if bool(bool(uint8(_774) < 78)) or bool(bool(uint8(_774) < 32)):
                        if 10^uint8(_774) > -1:
                            revert with 0, 17
                        if stor2[arg1].field_2048 and mem[_2276] > -1 / stor2[arg1].field_2048:
                            revert with 0, 17
                        if not 10^uint8(_774):
                            revert with 0, 18
                        if stor2[arg1].field_2304 <= stor2[arg1].field_2048 * mem[_2276] / 10^uint8(_774):
                            return 0
                        if stor2[arg1].field_2304 < stor2[arg1].field_2048 * mem[_2276] / 10^uint8(_774):
                            revert with 0, 17
                        if stor2[arg1].field_2304 - (stor2[arg1].field_2048 * mem[_2276] / 10^uint8(_774)) <= stor2[arg1].field_768:
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
                                    if stor2[arg1].field_2048 and mem[_2276] > -1 / stor2[arg1].field_2048:
                                        revert with 0, 17
                                    if not s * s * t:
                                        revert with 0, 18
                                    if stor2[arg1].field_2304 <= stor2[arg1].field_2048 * mem[_2276] / s * s * t:
                                        return 0
                                    if stor2[arg1].field_2304 < stor2[arg1].field_2048 * mem[_2276] / s * s * t:
                                        revert with 0, 17
                                    if stor2[arg1].field_2304 - (stor2[arg1].field_2048 * mem[_2276] / s * s * t) <= stor2[arg1].field_768:
                                        return 0
                                else:
                                    if uint255(u) * 0.5 > 1:
                                        s = s * s
                                        t = s * t
                                        u = uint255(u) * 0.5
                                        continue 
                                    if s * t > -1 / s * s:
                                        revert with 0, 17
                                    if stor2[arg1].field_2048 and mem[_2276] > -1 / stor2[arg1].field_2048:
                                        revert with 0, 17
                                    if not s * s * s * t:
                                        revert with 0, 18
                                    if stor2[arg1].field_2304 <= stor2[arg1].field_2048 * mem[_2276] / s * s * s * t:
                                        return 0
                                    if stor2[arg1].field_2304 < stor2[arg1].field_2048 * mem[_2276] / s * s * s * t:
                                        revert with 0, 17
                                    if stor2[arg1].field_2304 - (stor2[arg1].field_2048 * mem[_2276] / s * s * s * t) <= stor2[arg1].field_768:
                                        return 0
                                return 1
                            revert with 0, 17
                        if var83002 > -1 / var83001:
                            revert with 0, 17
                        if stor2[arg1].field_2048 and mem[_2276] > -1 / stor2[arg1].field_2048:
                            revert with 0, 17
                        if not var83001 * var83002:
                            revert with 0, 18
                        if stor2[arg1].field_2304 <= stor2[arg1].field_2048 * mem[_2276] / var83001 * var83002:
                            return 0
                        if stor2[arg1].field_2304 < stor2[arg1].field_2048 * mem[_2276] / var83001 * var83002:
                            revert with 0, 17
                        if stor2[arg1].field_2304 - (stor2[arg1].field_2048 * mem[_2276] / var83001 * var83002) <= stor2[arg1].field_768:
                            return 0
        else:
            mem[ceil32(return_data.size) + _12 + 128] = 0
            require ext_code.size(stor2[arg1].field_1536)
            staticcall stor2[arg1].field_1536.0x313ce567 with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _772 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _776 = mem[_772]
            require mem[_772] == mem[_772 + 31 len 1]
            _782 = mem[64]
            mem[64] = mem[64] + 64
            mem[_782] = 3
            mem[_782 + 32] = 0x5553440000000000000000000000000000000000000000000000000000000000
            _784 = mem[64]
            mem[mem[64]] = 0x65555bcc00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 64
            mem[mem[64] + 68] = _12
            mem[mem[64] + 100 len ceil32(_12)] = mem[ceil32(return_data.size) + 128 len ceil32(_12)]
            if ceil32(_12) <= _12:
                mem[ceil32(_12) + mem[64] + 100] = 3
                mem[ceil32(_12) + mem[64] + 132] = 0x5553440000000000000000000000000000000000000000000000000000000000
                mem[ceil32(_12) + mem[64] + 135] = 0
                require ext_code.size(refAddress)
                staticcall refAddress.getReferenceData(string arg1, string arg2) with:
                        gas gas_remaining wei
                       args 64, ceil32(_12) + 96, _12, mem[mem[64] + 100 len ceil32(_12) + 32], 0, 0
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2243 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _2280 = mem[64]
                if mem[64] + 96 > test266151307() or mem[64] + 96 < mem[64]:
                    revert with 0, 65
                mem[64] = mem[64] + 96
                mem[_2280] = mem[_2243]
                if not uint8(_776):
                    if stor2[arg1].field_2048 and mem[_2280] > -1 / stor2[arg1].field_2048:
                        revert with 0, 17
                    if stor2[arg1].field_2304 <= stor2[arg1].field_2048 * mem[_2280]:
                        return 0
                    if stor2[arg1].field_2304 < stor2[arg1].field_2048 * mem[_2280]:
                        revert with 0, 17
                    if stor2[arg1].field_2304 - (stor2[arg1].field_2048 * mem[_2280]) <= stor2[arg1].field_768:
                        return 0
                else:
                    if bool(bool(uint8(_776) < 78)) or bool(bool(uint8(_776) < 32)):
                        if 10^uint8(_776) > -1:
                            revert with 0, 17
                        if stor2[arg1].field_2048 and mem[_2280] > -1 / stor2[arg1].field_2048:
                            revert with 0, 17
                        if not 10^uint8(_776):
                            revert with 0, 18
                        if stor2[arg1].field_2304 <= stor2[arg1].field_2048 * mem[_2280] / 10^uint8(_776):
                            return 0
                        if stor2[arg1].field_2304 < stor2[arg1].field_2048 * mem[_2280] / 10^uint8(_776):
                            revert with 0, 17
                        if stor2[arg1].field_2304 - (stor2[arg1].field_2048 * mem[_2280] / 10^uint8(_776)) <= stor2[arg1].field_768:
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
                                    if stor2[arg1].field_2048 and mem[_2280] > -1 / stor2[arg1].field_2048:
                                        revert with 0, 17
                                    if not s * s * t:
                                        revert with 0, 18
                                    if stor2[arg1].field_2304 <= stor2[arg1].field_2048 * mem[_2280] / s * s * t:
                                        return 0
                                    if stor2[arg1].field_2304 < stor2[arg1].field_2048 * mem[_2280] / s * s * t:
                                        revert with 0, 17
                                    if stor2[arg1].field_2304 - (stor2[arg1].field_2048 * mem[_2280] / s * s * t) <= stor2[arg1].field_768:
                                        return 0
                                else:
                                    if uint255(u) * 0.5 > 1:
                                        s = s * s
                                        t = s * t
                                        u = uint255(u) * 0.5
                                        continue 
                                    if s * t > -1 / s * s:
                                        revert with 0, 17
                                    if stor2[arg1].field_2048 and mem[_2280] > -1 / stor2[arg1].field_2048:
                                        revert with 0, 17
                                    if not s * s * s * t:
                                        revert with 0, 18
                                    if stor2[arg1].field_2304 <= stor2[arg1].field_2048 * mem[_2280] / s * s * s * t:
                                        return 0
                                    if stor2[arg1].field_2304 < stor2[arg1].field_2048 * mem[_2280] / s * s * s * t:
                                        revert with 0, 17
                                    if stor2[arg1].field_2304 - (stor2[arg1].field_2048 * mem[_2280] / s * s * s * t) <= stor2[arg1].field_768:
                                        return 0
                                return 1
                            revert with 0, 17
                        if var83002 > -1 / var83001:
                            revert with 0, 17
                        if stor2[arg1].field_2048 and mem[_2280] > -1 / stor2[arg1].field_2048:
                            revert with 0, 17
                        if not var83001 * var83002:
                            revert with 0, 18
                        if stor2[arg1].field_2304 <= stor2[arg1].field_2048 * mem[_2280] / var83001 * var83002:
                            return 0
                        if stor2[arg1].field_2304 < stor2[arg1].field_2048 * mem[_2280] / var83001 * var83002:
                            revert with 0, 17
                        if stor2[arg1].field_2304 - (stor2[arg1].field_2048 * mem[_2280] / var83001 * var83002) <= stor2[arg1].field_768:
                            return 0
            else:
                mem[mem[64] + _12 + 100] = 0
                mem[mem[64] + 36] = ceil32(_12) + 96
                mem[ceil32(_12) + _784 + 100] = 3
                mem[ceil32(_12) + _784 + 132] = 0x5553440000000000000000000000000000000000000000000000000000000000
                mem[ceil32(_12) + _784 + 135] = 0
                require ext_code.size(refAddress)
                staticcall refAddress.getReferenceData(string arg1, string arg2) with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len ceil32(_12) + _784 + -mem[64] + 160]
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2244 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _2284 = mem[64]
                if mem[64] + 96 > test266151307() or mem[64] + 96 < mem[64]:
                    revert with 0, 65
                mem[64] = mem[64] + 96
                mem[_2284] = mem[_2244]
                if not uint8(_776):
                    if stor2[arg1].field_2048 and mem[_2284] > -1 / stor2[arg1].field_2048:
                        revert with 0, 17
                    if stor2[arg1].field_2304 <= stor2[arg1].field_2048 * mem[_2284]:
                        return 0
                    if stor2[arg1].field_2304 < stor2[arg1].field_2048 * mem[_2284]:
                        revert with 0, 17
                    if stor2[arg1].field_2304 - (stor2[arg1].field_2048 * mem[_2284]) <= stor2[arg1].field_768:
                        return 0
                else:
                    if bool(bool(uint8(_776) < 78)) or bool(bool(uint8(_776) < 32)):
                        if 10^uint8(_776) > -1:
                            revert with 0, 17
                        if stor2[arg1].field_2048 and mem[_2284] > -1 / stor2[arg1].field_2048:
                            revert with 0, 17
                        if not 10^uint8(_776):
                            revert with 0, 18
                        if stor2[arg1].field_2304 <= stor2[arg1].field_2048 * mem[_2284] / 10^uint8(_776):
                            return 0
                        if stor2[arg1].field_2304 < stor2[arg1].field_2048 * mem[_2284] / 10^uint8(_776):
                            revert with 0, 17
                        if stor2[arg1].field_2304 - (stor2[arg1].field_2048 * mem[_2284] / 10^uint8(_776)) <= stor2[arg1].field_768:
                            return 0
                    else:
                        if var84005 > 1:
                            s = var84001
                            t = var84002
                            u = var84005
                            while s <= -1 / s:
                                if not bool(u):
                                    if uint255(u) * 0.5 > 1:
                                        s = s * s
                                        t = t
                                        u = uint255(u) * 0.5
                                        continue 
                                    if t > -1 / s * s:
                                        revert with 0, 17
                                    if stor2[arg1].field_2048 and mem[_2284] > -1 / stor2[arg1].field_2048:
                                        revert with 0, 17
                                    if not s * s * t:
                                        revert with 0, 18
                                    if stor2[arg1].field_2304 <= stor2[arg1].field_2048 * mem[_2284] / s * s * t:
                                        return 0
                                    if stor2[arg1].field_2304 < stor2[arg1].field_2048 * mem[_2284] / s * s * t:
                                        revert with 0, 17
                                    if stor2[arg1].field_2304 - (stor2[arg1].field_2048 * mem[_2284] / s * s * t) <= stor2[arg1].field_768:
                                        return 0
                                else:
                                    if uint255(u) * 0.5 > 1:
                                        s = s * s
                                        t = s * t
                                        u = uint255(u) * 0.5
                                        continue 
                                    if s * t > -1 / s * s:
                                        revert with 0, 17
                                    if stor2[arg1].field_2048 and mem[_2284] > -1 / stor2[arg1].field_2048:
                                        revert with 0, 17
                                    if not s * s * s * t:
                                        revert with 0, 18
                                    if stor2[arg1].field_2304 <= stor2[arg1].field_2048 * mem[_2284] / s * s * s * t:
                                        return 0
                                    if stor2[arg1].field_2304 < stor2[arg1].field_2048 * mem[_2284] / s * s * s * t:
                                        revert with 0, 17
                                    if stor2[arg1].field_2304 - (stor2[arg1].field_2048 * mem[_2284] / s * s * s * t) <= stor2[arg1].field_768:
                                        return 0
                                return 1
                            revert with 0, 17
                        if var84002 > -1 / var84001:
                            revert with 0, 17
                        if stor2[arg1].field_2048 and mem[_2284] > -1 / stor2[arg1].field_2048:
                            revert with 0, 17
                        if not var84001 * var84002:
                            revert with 0, 18
                        if stor2[arg1].field_2304 <= stor2[arg1].field_2048 * mem[_2284] / var84001 * var84002:
                            return 0
                        if stor2[arg1].field_2304 < stor2[arg1].field_2048 * mem[_2284] / var84001 * var84002:
                            revert with 0, 17
                        if stor2[arg1].field_2304 - (stor2[arg1].field_2048 * mem[_2284] / var84001 * var84002) <= stor2[arg1].field_768:
                            return 0
    else:
        if bool(stor2[arg1].field_0) != 1:
            return 0
        mem[96] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
        require ext_code.size(stor2[arg1].field_1280)
        staticcall stor2[arg1].field_1280.0x95d89b41 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 96
        require return_data.size >= 32
        _11 = mem[96]
        require mem[96] <= test266151307()
        require return_data.size + 96 > mem[96] + 127
        _14 = mem[mem[96] + 96]
        if mem[mem[96] + 96] > test266151307():
            revert with 0, 65
        if ceil32(mem[mem[96] + 96]) + 32 < 0 or ceil32(return_data.size) + ceil32(mem[mem[96] + 96]) + 128 > test266151307():
            revert with 0, 65
        mem[64] = ceil32(return_data.size) + ceil32(mem[mem[96] + 96]) + 128
        mem[ceil32(return_data.size) + 96] = _14
        require _11 + _14 + 32 <= return_data.size
        mem[ceil32(return_data.size) + 128 len ceil32(_14)] = mem[_11 + 128 len ceil32(_14)]
        if ceil32(_14) <= _14:
            require ext_code.size(stor2[arg1].field_1280)
            staticcall stor2[arg1].field_1280.0x313ce567 with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _769 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _773 = mem[_769]
            require mem[_769] == mem[_769 + 31 len 1]
            _777 = mem[64]
            mem[64] = mem[64] + 64
            mem[_777] = 3
            mem[_777 + 32] = 0x5553440000000000000000000000000000000000000000000000000000000000
            _779 = mem[64]
            mem[mem[64]] = 0x65555bcc00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 64
            mem[mem[64] + 68] = _14
            mem[mem[64] + 100 len ceil32(_14)] = mem[ceil32(return_data.size) + 128 len ceil32(_14)]
            if ceil32(_14) <= _14:
                mem[ceil32(_14) + mem[64] + 100] = 3
                mem[ceil32(_14) + mem[64] + 132] = 0x5553440000000000000000000000000000000000000000000000000000000000
                mem[ceil32(_14) + mem[64] + 135] = 0
                require ext_code.size(refAddress)
                staticcall refAddress.getReferenceData(string arg1, string arg2) with:
                        gas gas_remaining wei
                       args 64, ceil32(_14) + 96, _14, mem[mem[64] + 100 len ceil32(_14) + 32], 0, 0
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2237 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _2256 = mem[64]
                if mem[64] + 96 > test266151307() or mem[64] + 96 < mem[64]:
                    revert with 0, 65
                mem[64] = mem[64] + 96
                mem[_2256] = mem[_2237]
                if not uint8(_773):
                    if stor2[arg1].field_1792 and mem[_2256] > -1 / stor2[arg1].field_1792:
                        revert with 0, 17
                    if stor2[arg1].field_2304 >= stor2[arg1].field_1792 * mem[_2256]:
                        return 0
                    if stor2[arg1].field_2304 < stor2[arg1].field_1792 * mem[_2256]:
                        revert with 0, 17
                    if stor2[arg1].field_2304 - (stor2[arg1].field_1792 * mem[_2256]) <= stor2[arg1].field_768:
                        return 0
                else:
                    if bool(bool(uint8(_773) < 78)) or bool(bool(uint8(_773) < 32)):
                        if 10^uint8(_773) > -1:
                            revert with 0, 17
                        if stor2[arg1].field_1792 and mem[_2256] > -1 / stor2[arg1].field_1792:
                            revert with 0, 17
                        if not 10^uint8(_773):
                            revert with 0, 18
                        if stor2[arg1].field_2304 >= stor2[arg1].field_1792 * mem[_2256] / 10^uint8(_773):
                            return 0
                        if stor2[arg1].field_2304 < stor2[arg1].field_1792 * mem[_2256] / 10^uint8(_773):
                            revert with 0, 17
                        if stor2[arg1].field_2304 - (stor2[arg1].field_1792 * mem[_2256] / 10^uint8(_773)) <= stor2[arg1].field_768:
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
                                    if stor2[arg1].field_1792 and mem[_2256] > -1 / stor2[arg1].field_1792:
                                        revert with 0, 17
                                    if not s * s * t:
                                        revert with 0, 18
                                    if stor2[arg1].field_2304 >= stor2[arg1].field_1792 * mem[_2256] / s * s * t:
                                        return 0
                                    if stor2[arg1].field_2304 < stor2[arg1].field_1792 * mem[_2256] / s * s * t:
                                        revert with 0, 17
                                    if stor2[arg1].field_2304 - (stor2[arg1].field_1792 * mem[_2256] / s * s * t) <= stor2[arg1].field_768:
                                        return 0
                                else:
                                    if uint255(u) * 0.5 > 1:
                                        s = s * s
                                        t = s * t
                                        u = uint255(u) * 0.5
                                        continue 
                                    if s * t > -1 / s * s:
                                        revert with 0, 17
                                    if stor2[arg1].field_1792 and mem[_2256] > -1 / stor2[arg1].field_1792:
                                        revert with 0, 17
                                    if not s * s * s * t:
                                        revert with 0, 18
                                    if stor2[arg1].field_2304 >= stor2[arg1].field_1792 * mem[_2256] / s * s * s * t:
                                        return 0
                                    if stor2[arg1].field_2304 < stor2[arg1].field_1792 * mem[_2256] / s * s * s * t:
                                        revert with 0, 17
                                    if stor2[arg1].field_2304 - (stor2[arg1].field_1792 * mem[_2256] / s * s * s * t) <= stor2[arg1].field_768:
                                        return 0
                                return 1
                            revert with 0, 17
                        if var83002 > -1 / var83001:
                            revert with 0, 17
                        if stor2[arg1].field_1792 and mem[_2256] > -1 / stor2[arg1].field_1792:
                            revert with 0, 17
                        if not var83001 * var83002:
                            revert with 0, 18
                        if stor2[arg1].field_2304 >= stor2[arg1].field_1792 * mem[_2256] / var83001 * var83002:
                            return 0
                        if stor2[arg1].field_2304 < stor2[arg1].field_1792 * mem[_2256] / var83001 * var83002:
                            revert with 0, 17
                        if stor2[arg1].field_2304 - (stor2[arg1].field_1792 * mem[_2256] / var83001 * var83002) <= stor2[arg1].field_768:
                            return 0
            else:
                mem[mem[64] + _14 + 100] = 0
                mem[mem[64] + 36] = ceil32(_14) + 96
                mem[ceil32(_14) + _779 + 100] = 3
                mem[ceil32(_14) + _779 + 132] = 0x5553440000000000000000000000000000000000000000000000000000000000
                mem[ceil32(_14) + _779 + 135] = 0
                require ext_code.size(refAddress)
                staticcall refAddress.getReferenceData(string arg1, string arg2) with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len ceil32(_14) + _779 + -mem[64] + 160]
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2238 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _2260 = mem[64]
                if mem[64] + 96 > test266151307() or mem[64] + 96 < mem[64]:
                    revert with 0, 65
                mem[64] = mem[64] + 96
                mem[_2260] = mem[_2238]
                if not uint8(_773):
                    if stor2[arg1].field_1792 and mem[_2260] > -1 / stor2[arg1].field_1792:
                        revert with 0, 17
                    if stor2[arg1].field_2304 >= stor2[arg1].field_1792 * mem[_2260]:
                        return 0
                    if stor2[arg1].field_2304 < stor2[arg1].field_1792 * mem[_2260]:
                        revert with 0, 17
                    if stor2[arg1].field_2304 - (stor2[arg1].field_1792 * mem[_2260]) <= stor2[arg1].field_768:
                        return 0
                else:
                    if bool(bool(uint8(_773) < 78)) or bool(bool(uint8(_773) < 32)):
                        if 10^uint8(_773) > -1:
                            revert with 0, 17
                        if stor2[arg1].field_1792 and mem[_2260] > -1 / stor2[arg1].field_1792:
                            revert with 0, 17
                        if not 10^uint8(_773):
                            revert with 0, 18
                        if stor2[arg1].field_2304 >= stor2[arg1].field_1792 * mem[_2260] / 10^uint8(_773):
                            return 0
                        if stor2[arg1].field_2304 < stor2[arg1].field_1792 * mem[_2260] / 10^uint8(_773):
                            revert with 0, 17
                        if stor2[arg1].field_2304 - (stor2[arg1].field_1792 * mem[_2260] / 10^uint8(_773)) <= stor2[arg1].field_768:
                            return 0
                    else:
                        if var84005 > 1:
                            s = var84001
                            t = var84002
                            u = var84005
                            while s <= -1 / s:
                                if not bool(u):
                                    if uint255(u) * 0.5 > 1:
                                        s = s * s
                                        t = t
                                        u = uint255(u) * 0.5
                                        continue 
                                    if t > -1 / s * s:
                                        revert with 0, 17
                                    if stor2[arg1].field_1792 and mem[_2260] > -1 / stor2[arg1].field_1792:
                                        revert with 0, 17
                                    if not s * s * t:
                                        revert with 0, 18
                                    if stor2[arg1].field_2304 >= stor2[arg1].field_1792 * mem[_2260] / s * s * t:
                                        return 0
                                    if stor2[arg1].field_2304 < stor2[arg1].field_1792 * mem[_2260] / s * s * t:
                                        revert with 0, 17
                                    if stor2[arg1].field_2304 - (stor2[arg1].field_1792 * mem[_2260] / s * s * t) <= stor2[arg1].field_768:
                                        return 0
                                else:
                                    if uint255(u) * 0.5 > 1:
                                        s = s * s
                                        t = s * t
                                        u = uint255(u) * 0.5
                                        continue 
                                    if s * t > -1 / s * s:
                                        revert with 0, 17
                                    if stor2[arg1].field_1792 and mem[_2260] > -1 / stor2[arg1].field_1792:
                                        revert with 0, 17
                                    if not s * s * s * t:
                                        revert with 0, 18
                                    if stor2[arg1].field_2304 >= stor2[arg1].field_1792 * mem[_2260] / s * s * s * t:
                                        return 0
                                    if stor2[arg1].field_2304 < stor2[arg1].field_1792 * mem[_2260] / s * s * s * t:
                                        revert with 0, 17
                                    if stor2[arg1].field_2304 - (stor2[arg1].field_1792 * mem[_2260] / s * s * s * t) <= stor2[arg1].field_768:
                                        return 0
                                return 1
                            revert with 0, 17
                        if var84002 > -1 / var84001:
                            revert with 0, 17
                        if stor2[arg1].field_1792 and mem[_2260] > -1 / stor2[arg1].field_1792:
                            revert with 0, 17
                        if not var84001 * var84002:
                            revert with 0, 18
                        if stor2[arg1].field_2304 >= stor2[arg1].field_1792 * mem[_2260] / var84001 * var84002:
                            return 0
                        if stor2[arg1].field_2304 < stor2[arg1].field_1792 * mem[_2260] / var84001 * var84002:
                            revert with 0, 17
                        if stor2[arg1].field_2304 - (stor2[arg1].field_1792 * mem[_2260] / var84001 * var84002) <= stor2[arg1].field_768:
                            return 0
        else:
            mem[ceil32(return_data.size) + _14 + 128] = 0
            require ext_code.size(stor2[arg1].field_1280)
            staticcall stor2[arg1].field_1280.0x313ce567 with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _771 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _775 = mem[_771]
            require mem[_771] == mem[_771 + 31 len 1]
            _780 = mem[64]
            mem[64] = mem[64] + 64
            mem[_780] = 3
            mem[_780 + 32] = 0x5553440000000000000000000000000000000000000000000000000000000000
            _783 = mem[64]
            mem[mem[64]] = 0x65555bcc00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 64
            mem[mem[64] + 68] = _14
            mem[mem[64] + 100 len ceil32(_14)] = mem[ceil32(return_data.size) + 128 len ceil32(_14)]
            if ceil32(_14) <= _14:
                mem[ceil32(_14) + mem[64] + 100] = 3
                mem[ceil32(_14) + mem[64] + 132] = 0x5553440000000000000000000000000000000000000000000000000000000000
                mem[ceil32(_14) + mem[64] + 135] = 0
                require ext_code.size(refAddress)
                staticcall refAddress.getReferenceData(string arg1, string arg2) with:
                        gas gas_remaining wei
                       args 64, ceil32(_14) + 96, _14, mem[mem[64] + 100 len ceil32(_14) + 32], 0, 0
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2239 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _2264 = mem[64]
                if mem[64] + 96 > test266151307() or mem[64] + 96 < mem[64]:
                    revert with 0, 65
                mem[64] = mem[64] + 96
                mem[_2264] = mem[_2239]
                if not uint8(_775):
                    if stor2[arg1].field_1792 and mem[_2264] > -1 / stor2[arg1].field_1792:
                        revert with 0, 17
                    if stor2[arg1].field_2304 >= stor2[arg1].field_1792 * mem[_2264]:
                        return 0
                    if stor2[arg1].field_2304 < stor2[arg1].field_1792 * mem[_2264]:
                        revert with 0, 17
                    if stor2[arg1].field_2304 - (stor2[arg1].field_1792 * mem[_2264]) <= stor2[arg1].field_768:
                        return 0
                else:
                    if bool(bool(uint8(_775) < 78)) or bool(bool(uint8(_775) < 32)):
                        if 10^uint8(_775) > -1:
                            revert with 0, 17
                        if stor2[arg1].field_1792 and mem[_2264] > -1 / stor2[arg1].field_1792:
                            revert with 0, 17
                        if not 10^uint8(_775):
                            revert with 0, 18
                        if stor2[arg1].field_2304 >= stor2[arg1].field_1792 * mem[_2264] / 10^uint8(_775):
                            return 0
                        if stor2[arg1].field_2304 < stor2[arg1].field_1792 * mem[_2264] / 10^uint8(_775):
                            revert with 0, 17
                        if stor2[arg1].field_2304 - (stor2[arg1].field_1792 * mem[_2264] / 10^uint8(_775)) <= stor2[arg1].field_768:
                            return 0
                    else:
                        if var84005 > 1:
                            s = var84001
                            t = var84002
                            u = var84005
                            while s <= -1 / s:
                                if not bool(u):
                                    if uint255(u) * 0.5 > 1:
                                        s = s * s
                                        t = t
                                        u = uint255(u) * 0.5
                                        continue 
                                    if t > -1 / s * s:
                                        revert with 0, 17
                                    if stor2[arg1].field_1792 and mem[_2264] > -1 / stor2[arg1].field_1792:
                                        revert with 0, 17
                                    if not s * s * t:
                                        revert with 0, 18
                                    if stor2[arg1].field_2304 >= stor2[arg1].field_1792 * mem[_2264] / s * s * t:
                                        return 0
                                    if stor2[arg1].field_2304 < stor2[arg1].field_1792 * mem[_2264] / s * s * t:
                                        revert with 0, 17
                                    if stor2[arg1].field_2304 - (stor2[arg1].field_1792 * mem[_2264] / s * s * t) <= stor2[arg1].field_768:
                                        return 0
                                else:
                                    if uint255(u) * 0.5 > 1:
                                        s = s * s
                                        t = s * t
                                        u = uint255(u) * 0.5
                                        continue 
                                    if s * t > -1 / s * s:
                                        revert with 0, 17
                                    if stor2[arg1].field_1792 and mem[_2264] > -1 / stor2[arg1].field_1792:
                                        revert with 0, 17
                                    if not s * s * s * t:
                                        revert with 0, 18
                                    if stor2[arg1].field_2304 >= stor2[arg1].field_1792 * mem[_2264] / s * s * s * t:
                                        return 0
                                    if stor2[arg1].field_2304 < stor2[arg1].field_1792 * mem[_2264] / s * s * s * t:
                                        revert with 0, 17
                                    if stor2[arg1].field_2304 - (stor2[arg1].field_1792 * mem[_2264] / s * s * s * t) <= stor2[arg1].field_768:
                                        return 0
                                return 1
                            revert with 0, 17
                        if var84002 > -1 / var84001:
                            revert with 0, 17
                        if stor2[arg1].field_1792 and mem[_2264] > -1 / stor2[arg1].field_1792:
                            revert with 0, 17
                        if not var84001 * var84002:
                            revert with 0, 18
                        if stor2[arg1].field_2304 >= stor2[arg1].field_1792 * mem[_2264] / var84001 * var84002:
                            return 0
                        if stor2[arg1].field_2304 < stor2[arg1].field_1792 * mem[_2264] / var84001 * var84002:
                            revert with 0, 17
                        if stor2[arg1].field_2304 - (stor2[arg1].field_1792 * mem[_2264] / var84001 * var84002) <= stor2[arg1].field_768:
                            return 0
            else:
                mem[mem[64] + _14 + 100] = 0
                mem[mem[64] + 36] = ceil32(_14) + 96
                mem[ceil32(_14) + _783 + 100] = 3
                mem[ceil32(_14) + _783 + 132] = 0x5553440000000000000000000000000000000000000000000000000000000000
                mem[ceil32(_14) + _783 + 135] = 0
                require ext_code.size(refAddress)
                staticcall refAddress.getReferenceData(string arg1, string arg2) with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len ceil32(_14) + _783 + -mem[64] + 160]
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2240 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _2268 = mem[64]
                if mem[64] + 96 > test266151307() or mem[64] + 96 < mem[64]:
                    revert with 0, 65
                mem[64] = mem[64] + 96
                mem[_2268] = mem[_2240]
                if not uint8(_775):
                    if stor2[arg1].field_1792 and mem[_2268] > -1 / stor2[arg1].field_1792:
                        revert with 0, 17
                    if stor2[arg1].field_2304 >= stor2[arg1].field_1792 * mem[_2268]:
                        return 0
                    if stor2[arg1].field_2304 < stor2[arg1].field_1792 * mem[_2268]:
                        revert with 0, 17
                    if stor2[arg1].field_2304 - (stor2[arg1].field_1792 * mem[_2268]) <= stor2[arg1].field_768:
                        return 0
                else:
                    if bool(bool(uint8(_775) < 78)) or bool(bool(uint8(_775) < 32)):
                        if 10^uint8(_775) > -1:
                            revert with 0, 17
                        if stor2[arg1].field_1792 and mem[_2268] > -1 / stor2[arg1].field_1792:
                            revert with 0, 17
                        if not 10^uint8(_775):
                            revert with 0, 18
                        if stor2[arg1].field_2304 >= stor2[arg1].field_1792 * mem[_2268] / 10^uint8(_775):
                            return 0
                        if stor2[arg1].field_2304 < stor2[arg1].field_1792 * mem[_2268] / 10^uint8(_775):
                            revert with 0, 17
                        if stor2[arg1].field_2304 - (stor2[arg1].field_1792 * mem[_2268] / 10^uint8(_775)) <= stor2[arg1].field_768:
                            return 0
                    else:
                        if var85005 > 1:
                            s = var85001
                            t = var85002
                            u = var85005
                            while s <= -1 / s:
                                if not bool(u):
                                    if uint255(u) * 0.5 > 1:
                                        s = s * s
                                        t = t
                                        u = uint255(u) * 0.5
                                        continue 
                                    if t > -1 / s * s:
                                        revert with 0, 17
                                    if stor2[arg1].field_1792 and mem[_2268] > -1 / stor2[arg1].field_1792:
                                        revert with 0, 17
                                    if not s * s * t:
                                        revert with 0, 18
                                    if stor2[arg1].field_2304 >= stor2[arg1].field_1792 * mem[_2268] / s * s * t:
                                        return 0
                                    if stor2[arg1].field_2304 < stor2[arg1].field_1792 * mem[_2268] / s * s * t:
                                        revert with 0, 17
                                    if stor2[arg1].field_2304 - (stor2[arg1].field_1792 * mem[_2268] / s * s * t) <= stor2[arg1].field_768:
                                        return 0
                                else:
                                    if uint255(u) * 0.5 > 1:
                                        s = s * s
                                        t = s * t
                                        u = uint255(u) * 0.5
                                        continue 
                                    if s * t > -1 / s * s:
                                        revert with 0, 17
                                    if stor2[arg1].field_1792 and mem[_2268] > -1 / stor2[arg1].field_1792:
                                        revert with 0, 17
                                    if not s * s * s * t:
                                        revert with 0, 18
                                    if stor2[arg1].field_2304 >= stor2[arg1].field_1792 * mem[_2268] / s * s * s * t:
                                        return 0
                                    if stor2[arg1].field_2304 < stor2[arg1].field_1792 * mem[_2268] / s * s * s * t:
                                        revert with 0, 17
                                    if stor2[arg1].field_2304 - (stor2[arg1].field_1792 * mem[_2268] / s * s * s * t) <= stor2[arg1].field_768:
                                        return 0
                                return 1
                            revert with 0, 17
                        if var85002 > -1 / var85001:
                            revert with 0, 17
                        if stor2[arg1].field_1792 and mem[_2268] > -1 / stor2[arg1].field_1792:
                            revert with 0, 17
                        if not var85001 * var85002:
                            revert with 0, 18
                        if stor2[arg1].field_2304 >= stor2[arg1].field_1792 * mem[_2268] / var85001 * var85002:
                            return 0
                        if stor2[arg1].field_2304 < stor2[arg1].field_1792 * mem[_2268] / var85001 * var85002:
                            revert with 0, 17
                        if stor2[arg1].field_2304 - (stor2[arg1].field_1792 * mem[_2268] / var85001 * var85002) <= stor2[arg1].field_768:
                            return 0
    return 1
}

function getPosition(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if arg1 >= stor2.length:
        revert with 0, 50
    mem[0] = 2
    if not stor2[arg1].field_0:
        mem[96] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
        require ext_code.size(stor2[arg1].field_1536)
        staticcall stor2[arg1].field_1536.0x95d89b41 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 96
        require return_data.size >= 32
        _9 = mem[96]
        require mem[96] <= test266151307()
        require return_data.size + 96 > mem[96] + 127
        _11 = mem[mem[96] + 96]
        if mem[mem[96] + 96] > test266151307():
            revert with 0, 65
        if ceil32(mem[mem[96] + 96]) + 32 < 0 or ceil32(return_data.size) + ceil32(mem[mem[96] + 96]) + 128 > test266151307():
            revert with 0, 65
        mem[64] = ceil32(return_data.size) + ceil32(mem[mem[96] + 96]) + 128
        mem[ceil32(return_data.size) + 96] = _11
        require _9 + _11 + 32 <= return_data.size
        mem[ceil32(return_data.size) + 128 len ceil32(_11)] = mem[_9 + 128 len ceil32(_11)]
        if ceil32(_11) <= _11:
            require ext_code.size(stor2[arg1].field_1536)
            staticcall stor2[arg1].field_1536.0x313ce567 with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _576 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _580 = mem[_576]
            require mem[_576] == mem[_576 + 31 len 1]
            _584 = mem[64]
            mem[64] = mem[64] + 64
            mem[_584] = 3
            mem[_584 + 32] = 0x5553440000000000000000000000000000000000000000000000000000000000
            _587 = mem[64]
            mem[mem[64]] = 0x65555bcc00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 64
            mem[mem[64] + 68] = _11
            mem[mem[64] + 100 len ceil32(_11)] = mem[ceil32(return_data.size) + 128 len ceil32(_11)]
            if ceil32(_11) <= _11:
                mem[ceil32(_11) + mem[64] + 100] = 3
                mem[ceil32(_11) + mem[64] + 132] = 0x5553440000000000000000000000000000000000000000000000000000000000
                mem[ceil32(_11) + mem[64] + 135] = 0
                require ext_code.size(refAddress)
                staticcall refAddress.getReferenceData(string arg1, string arg2) with:
                        gas gas_remaining wei
                       args 64, ceil32(_11) + 96, _11, mem[mem[64] + 100 len ceil32(_11) + 32], 0, 0
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1663 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _1694 = mem[64]
                if mem[64] + 96 > test266151307() or mem[64] + 96 < mem[64]:
                    revert with 0, 65
                mem[64] = mem[64] + 96
                mem[_1694] = mem[_1663]
                if not uint8(_580):
                    if stor2[arg1].field_2048 and mem[_1694] > -1 / stor2[arg1].field_2048:
                        revert with 0, 17
                    if stor2[arg1].field_2304 <= stor2[arg1].field_2048 * mem[_1694]:
                        if stor2[arg1].field_2048 * mem[_1694] < stor2[arg1].field_2304:
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
                               stor2[arg1].field_2304,
                               stor2[arg1].field_2048 * mem[_1694],
                               (stor2[arg1].field_2048 * mem[_1694]) - stor2[arg1].field_2304,
                               0
                    if stor2[arg1].field_2304 < stor2[arg1].field_2048 * mem[_1694]:
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
                           stor2[arg1].field_2304,
                           stor2[arg1].field_2048 * mem[_1694],
                           stor2[arg1].field_2304 - (stor2[arg1].field_2048 * mem[_1694]),
                           1
                if bool(bool(uint8(_580) < 78)) or bool(bool(uint8(_580) < 32)):
                    if 10^uint8(_580) > -1:
                        revert with 0, 17
                    if stor2[arg1].field_2048 and mem[_1694] > -1 / stor2[arg1].field_2048:
                        revert with 0, 17
                    if not 10^uint8(_580):
                        revert with 0, 18
                    if stor2[arg1].field_2304 <= stor2[arg1].field_2048 * mem[_1694] / 10^uint8(_580):
                        if stor2[arg1].field_2048 * mem[_1694] / 10^uint8(_580) < stor2[arg1].field_2304:
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
                               stor2[arg1].field_2304,
                               stor2[arg1].field_2048 * mem[_1694] / 10^uint8(_580),
                               (stor2[arg1].field_2048 * mem[_1694] / 10^uint8(_580)) - stor2[arg1].field_2304,
                               0
                    if stor2[arg1].field_2304 < stor2[arg1].field_2048 * mem[_1694] / 10^uint8(_580):
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
                           stor2[arg1].field_2304,
                           stor2[arg1].field_2048 * mem[_1694] / 10^uint8(_580),
                           stor2[arg1].field_2304 - (stor2[arg1].field_2048 * mem[_1694] / 10^uint8(_580)),
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
                            if stor2[arg1].field_2048 and mem[_1694] > -1 / stor2[arg1].field_2048:
                                revert with 0, 17
                            if not s * s * t:
                                revert with 0, 18
                            if stor2[arg1].field_2304 <= stor2[arg1].field_2048 * mem[_1694] / s * s * t:
                                if stor2[arg1].field_2048 * mem[_1694] / s * s * t < stor2[arg1].field_2304:
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
                                       stor2[arg1].field_2304,
                                       stor2[arg1].field_2048 * mem[_1694] / s * s * t,
                                       (stor2[arg1].field_2048 * mem[_1694] / s * s * t) - stor2[arg1].field_2304,
                                       0
                            if stor2[arg1].field_2304 < stor2[arg1].field_2048 * mem[_1694] / s * s * t:
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
                                   stor2[arg1].field_2304,
                                   stor2[arg1].field_2048 * mem[_1694] / s * s * t,
                                   stor2[arg1].field_2304 - (stor2[arg1].field_2048 * mem[_1694] / s * s * t),
                                   1
                        if uint255(u) * 0.5 > 1:
                            s = s * s
                            t = s * t
                            u = uint255(u) * 0.5
                            continue 
                        if s * t > -1 / s * s:
                            revert with 0, 17
                        if stor2[arg1].field_2048 and mem[_1694] > -1 / stor2[arg1].field_2048:
                            revert with 0, 17
                        if not s * s * s * t:
                            revert with 0, 18
                        if stor2[arg1].field_2304 <= stor2[arg1].field_2048 * mem[_1694] / s * s * s * t:
                            if stor2[arg1].field_2048 * mem[_1694] / s * s * s * t < stor2[arg1].field_2304:
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
                                   stor2[arg1].field_2304,
                                   stor2[arg1].field_2048 * mem[_1694] / s * s * s * t,
                                   (stor2[arg1].field_2048 * mem[_1694] / s * s * s * t) - stor2[arg1].field_2304,
                                   0
                        if stor2[arg1].field_2304 < stor2[arg1].field_2048 * mem[_1694] / s * s * s * t:
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
                               stor2[arg1].field_2304,
                               stor2[arg1].field_2048 * mem[_1694] / s * s * s * t,
                               stor2[arg1].field_2304 - (stor2[arg1].field_2048 * mem[_1694] / s * s * s * t),
                               1
                    revert with 0, 17
                if var82002 > -1 / var82001:
                    revert with 0, 17
                if stor2[arg1].field_2048 and mem[_1694] > -1 / stor2[arg1].field_2048:
                    revert with 0, 17
                if not var82001 * var82002:
                    revert with 0, 18
                if stor2[arg1].field_2304 <= stor2[arg1].field_2048 * mem[_1694] / var82001 * var82002:
                    if stor2[arg1].field_2048 * mem[_1694] / var82001 * var82002 < stor2[arg1].field_2304:
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
                           stor2[arg1].field_2304,
                           stor2[arg1].field_2048 * mem[_1694] / var82001 * var82002,
                           (stor2[arg1].field_2048 * mem[_1694] / var82001 * var82002) - stor2[arg1].field_2304,
                           0
                if stor2[arg1].field_2304 < stor2[arg1].field_2048 * mem[_1694] / var82001 * var82002:
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
                       stor2[arg1].field_2304,
                       stor2[arg1].field_2048 * mem[_1694] / var82001 * var82002,
                       stor2[arg1].field_2304 - (stor2[arg1].field_2048 * mem[_1694] / var82001 * var82002),
                       1
            mem[mem[64] + _11 + 100] = 0
            mem[mem[64] + 36] = ceil32(_11) + 96
            mem[ceil32(_11) + _587 + 100] = 3
            mem[ceil32(_11) + _587 + 132] = 0x5553440000000000000000000000000000000000000000000000000000000000
            mem[ceil32(_11) + _587 + 135] = 0
            require ext_code.size(refAddress)
            staticcall refAddress.getReferenceData(string arg1, string arg2) with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len ceil32(_11) + _587 + -mem[64] + 160]
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1664 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _1698 = mem[64]
            if mem[64] + 96 > test266151307() or mem[64] + 96 < mem[64]:
                revert with 0, 65
            mem[64] = mem[64] + 96
            mem[_1698] = mem[_1664]
            if not uint8(_580):
                if stor2[arg1].field_2048 and mem[_1698] > -1 / stor2[arg1].field_2048:
                    revert with 0, 17
                if stor2[arg1].field_2304 <= stor2[arg1].field_2048 * mem[_1698]:
                    if stor2[arg1].field_2048 * mem[_1698] < stor2[arg1].field_2304:
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
                           stor2[arg1].field_2304,
                           stor2[arg1].field_2048 * mem[_1698],
                           (stor2[arg1].field_2048 * mem[_1698]) - stor2[arg1].field_2304,
                           0
                if stor2[arg1].field_2304 < stor2[arg1].field_2048 * mem[_1698]:
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
                       stor2[arg1].field_2304,
                       stor2[arg1].field_2048 * mem[_1698],
                       stor2[arg1].field_2304 - (stor2[arg1].field_2048 * mem[_1698]),
                       1
            if bool(bool(uint8(_580) < 78)) or bool(bool(uint8(_580) < 32)):
                if 10^uint8(_580) > -1:
                    revert with 0, 17
                if stor2[arg1].field_2048 and mem[_1698] > -1 / stor2[arg1].field_2048:
                    revert with 0, 17
                if not 10^uint8(_580):
                    revert with 0, 18
                if stor2[arg1].field_2304 <= stor2[arg1].field_2048 * mem[_1698] / 10^uint8(_580):
                    if stor2[arg1].field_2048 * mem[_1698] / 10^uint8(_580) < stor2[arg1].field_2304:
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
                           stor2[arg1].field_2304,
                           stor2[arg1].field_2048 * mem[_1698] / 10^uint8(_580),
                           (stor2[arg1].field_2048 * mem[_1698] / 10^uint8(_580)) - stor2[arg1].field_2304,
                           0
                if stor2[arg1].field_2304 < stor2[arg1].field_2048 * mem[_1698] / 10^uint8(_580):
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
                       stor2[arg1].field_2304,
                       stor2[arg1].field_2048 * mem[_1698] / 10^uint8(_580),
                       stor2[arg1].field_2304 - (stor2[arg1].field_2048 * mem[_1698] / 10^uint8(_580)),
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
                        if stor2[arg1].field_2048 and mem[_1698] > -1 / stor2[arg1].field_2048:
                            revert with 0, 17
                        if not s * s * t:
                            revert with 0, 18
                        if stor2[arg1].field_2304 <= stor2[arg1].field_2048 * mem[_1698] / s * s * t:
                            if stor2[arg1].field_2048 * mem[_1698] / s * s * t < stor2[arg1].field_2304:
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
                                   stor2[arg1].field_2304,
                                   stor2[arg1].field_2048 * mem[_1698] / s * s * t,
                                   (stor2[arg1].field_2048 * mem[_1698] / s * s * t) - stor2[arg1].field_2304,
                                   0
                        if stor2[arg1].field_2304 < stor2[arg1].field_2048 * mem[_1698] / s * s * t:
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
                               stor2[arg1].field_2304,
                               stor2[arg1].field_2048 * mem[_1698] / s * s * t,
                               stor2[arg1].field_2304 - (stor2[arg1].field_2048 * mem[_1698] / s * s * t),
                               1
                    if uint255(u) * 0.5 > 1:
                        s = s * s
                        t = s * t
                        u = uint255(u) * 0.5
                        continue 
                    if s * t > -1 / s * s:
                        revert with 0, 17
                    if stor2[arg1].field_2048 and mem[_1698] > -1 / stor2[arg1].field_2048:
                        revert with 0, 17
                    if not s * s * s * t:
                        revert with 0, 18
                    if stor2[arg1].field_2304 <= stor2[arg1].field_2048 * mem[_1698] / s * s * s * t:
                        if stor2[arg1].field_2048 * mem[_1698] / s * s * s * t < stor2[arg1].field_2304:
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
                               stor2[arg1].field_2304,
                               stor2[arg1].field_2048 * mem[_1698] / s * s * s * t,
                               (stor2[arg1].field_2048 * mem[_1698] / s * s * s * t) - stor2[arg1].field_2304,
                               0
                    if stor2[arg1].field_2304 < stor2[arg1].field_2048 * mem[_1698] / s * s * s * t:
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
                           stor2[arg1].field_2304,
                           stor2[arg1].field_2048 * mem[_1698] / s * s * s * t,
                           stor2[arg1].field_2304 - (stor2[arg1].field_2048 * mem[_1698] / s * s * s * t),
                           1
                revert with 0, 17
            if var83002 > -1 / var83001:
                revert with 0, 17
            if stor2[arg1].field_2048 and mem[_1698] > -1 / stor2[arg1].field_2048:
                revert with 0, 17
            if not var83001 * var83002:
                revert with 0, 18
            if stor2[arg1].field_2304 <= stor2[arg1].field_2048 * mem[_1698] / var83001 * var83002:
                if stor2[arg1].field_2048 * mem[_1698] / var83001 * var83002 < stor2[arg1].field_2304:
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
                       stor2[arg1].field_2304,
                       stor2[arg1].field_2048 * mem[_1698] / var83001 * var83002,
                       (stor2[arg1].field_2048 * mem[_1698] / var83001 * var83002) - stor2[arg1].field_2304,
                       0
            if stor2[arg1].field_2304 < stor2[arg1].field_2048 * mem[_1698] / var83001 * var83002:
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
                   stor2[arg1].field_2304,
                   stor2[arg1].field_2048 * mem[_1698] / var83001 * var83002,
                   stor2[arg1].field_2304 - (stor2[arg1].field_2048 * mem[_1698] / var83001 * var83002),
                   1
        mem[ceil32(return_data.size) + _11 + 128] = 0
        require ext_code.size(stor2[arg1].field_1536)
        staticcall stor2[arg1].field_1536.0x313ce567 with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _578 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _582 = mem[_578]
        require mem[_578] == mem[_578 + 31 len 1]
        _588 = mem[64]
        mem[64] = mem[64] + 64
        mem[_588] = 3
        mem[_588 + 32] = 0x5553440000000000000000000000000000000000000000000000000000000000
        _590 = mem[64]
        mem[mem[64]] = 0x65555bcc00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 64
        mem[mem[64] + 68] = _11
        mem[mem[64] + 100 len ceil32(_11)] = mem[ceil32(return_data.size) + 128 len ceil32(_11)]
        if ceil32(_11) <= _11:
            mem[ceil32(_11) + mem[64] + 100] = 3
            mem[ceil32(_11) + mem[64] + 132] = 0x5553440000000000000000000000000000000000000000000000000000000000
            mem[ceil32(_11) + mem[64] + 135] = 0
            require ext_code.size(refAddress)
            staticcall refAddress.getReferenceData(string arg1, string arg2) with:
                    gas gas_remaining wei
                   args 64, ceil32(_11) + 96, _11, mem[mem[64] + 100 len ceil32(_11) + 32], 0, 0
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1665 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _1702 = mem[64]
            if mem[64] + 96 > test266151307() or mem[64] + 96 < mem[64]:
                revert with 0, 65
            mem[64] = mem[64] + 96
            mem[_1702] = mem[_1665]
            if not uint8(_582):
                if stor2[arg1].field_2048 and mem[_1702] > -1 / stor2[arg1].field_2048:
                    revert with 0, 17
                if stor2[arg1].field_2304 <= stor2[arg1].field_2048 * mem[_1702]:
                    if stor2[arg1].field_2048 * mem[_1702] < stor2[arg1].field_2304:
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
                           stor2[arg1].field_2304,
                           stor2[arg1].field_2048 * mem[_1702],
                           (stor2[arg1].field_2048 * mem[_1702]) - stor2[arg1].field_2304,
                           0
                if stor2[arg1].field_2304 < stor2[arg1].field_2048 * mem[_1702]:
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
                       stor2[arg1].field_2304,
                       stor2[arg1].field_2048 * mem[_1702],
                       stor2[arg1].field_2304 - (stor2[arg1].field_2048 * mem[_1702]),
                       1
            if bool(bool(uint8(_582) < 78)) or bool(bool(uint8(_582) < 32)):
                if 10^uint8(_582) > -1:
                    revert with 0, 17
                if stor2[arg1].field_2048 and mem[_1702] > -1 / stor2[arg1].field_2048:
                    revert with 0, 17
                if not 10^uint8(_582):
                    revert with 0, 18
                if stor2[arg1].field_2304 <= stor2[arg1].field_2048 * mem[_1702] / 10^uint8(_582):
                    if stor2[arg1].field_2048 * mem[_1702] / 10^uint8(_582) < stor2[arg1].field_2304:
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
                           stor2[arg1].field_2304,
                           stor2[arg1].field_2048 * mem[_1702] / 10^uint8(_582),
                           (stor2[arg1].field_2048 * mem[_1702] / 10^uint8(_582)) - stor2[arg1].field_2304,
                           0
                if stor2[arg1].field_2304 < stor2[arg1].field_2048 * mem[_1702] / 10^uint8(_582):
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
                       stor2[arg1].field_2304,
                       stor2[arg1].field_2048 * mem[_1702] / 10^uint8(_582),
                       stor2[arg1].field_2304 - (stor2[arg1].field_2048 * mem[_1702] / 10^uint8(_582)),
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
                        if stor2[arg1].field_2048 and mem[_1702] > -1 / stor2[arg1].field_2048:
                            revert with 0, 17
                        if not s * s * t:
                            revert with 0, 18
                        if stor2[arg1].field_2304 <= stor2[arg1].field_2048 * mem[_1702] / s * s * t:
                            if stor2[arg1].field_2048 * mem[_1702] / s * s * t < stor2[arg1].field_2304:
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
                                   stor2[arg1].field_2304,
                                   stor2[arg1].field_2048 * mem[_1702] / s * s * t,
                                   (stor2[arg1].field_2048 * mem[_1702] / s * s * t) - stor2[arg1].field_2304,
                                   0
                        if stor2[arg1].field_2304 < stor2[arg1].field_2048 * mem[_1702] / s * s * t:
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
                               stor2[arg1].field_2304,
                               stor2[arg1].field_2048 * mem[_1702] / s * s * t,
                               stor2[arg1].field_2304 - (stor2[arg1].field_2048 * mem[_1702] / s * s * t),
                               1
                    if uint255(u) * 0.5 > 1:
                        s = s * s
                        t = s * t
                        u = uint255(u) * 0.5
                        continue 
                    if s * t > -1 / s * s:
                        revert with 0, 17
                    if stor2[arg1].field_2048 and mem[_1702] > -1 / stor2[arg1].field_2048:
                        revert with 0, 17
                    if not s * s * s * t:
                        revert with 0, 18
                    if stor2[arg1].field_2304 <= stor2[arg1].field_2048 * mem[_1702] / s * s * s * t:
                        if stor2[arg1].field_2048 * mem[_1702] / s * s * s * t < stor2[arg1].field_2304:
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
                               stor2[arg1].field_2304,
                               stor2[arg1].field_2048 * mem[_1702] / s * s * s * t,
                               (stor2[arg1].field_2048 * mem[_1702] / s * s * s * t) - stor2[arg1].field_2304,
                               0
                    if stor2[arg1].field_2304 < stor2[arg1].field_2048 * mem[_1702] / s * s * s * t:
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
                           stor2[arg1].field_2304,
                           stor2[arg1].field_2048 * mem[_1702] / s * s * s * t,
                           stor2[arg1].field_2304 - (stor2[arg1].field_2048 * mem[_1702] / s * s * s * t),
                           1
                revert with 0, 17
            if var83002 > -1 / var83001:
                revert with 0, 17
            if stor2[arg1].field_2048 and mem[_1702] > -1 / stor2[arg1].field_2048:
                revert with 0, 17
            if not var83001 * var83002:
                revert with 0, 18
            if stor2[arg1].field_2304 <= stor2[arg1].field_2048 * mem[_1702] / var83001 * var83002:
                if stor2[arg1].field_2048 * mem[_1702] / var83001 * var83002 < stor2[arg1].field_2304:
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
                       stor2[arg1].field_2304,
                       stor2[arg1].field_2048 * mem[_1702] / var83001 * var83002,
                       (stor2[arg1].field_2048 * mem[_1702] / var83001 * var83002) - stor2[arg1].field_2304,
                       0
            if stor2[arg1].field_2304 < stor2[arg1].field_2048 * mem[_1702] / var83001 * var83002:
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
                   stor2[arg1].field_2304,
                   stor2[arg1].field_2048 * mem[_1702] / var83001 * var83002,
                   stor2[arg1].field_2304 - (stor2[arg1].field_2048 * mem[_1702] / var83001 * var83002),
                   1
        mem[mem[64] + _11 + 100] = 0
        mem[mem[64] + 36] = ceil32(_11) + 96
        mem[ceil32(_11) + _590 + 100] = 3
        mem[ceil32(_11) + _590 + 132] = 0x5553440000000000000000000000000000000000000000000000000000000000
        mem[ceil32(_11) + _590 + 135] = 0
        require ext_code.size(refAddress)
        staticcall refAddress.getReferenceData(string arg1, string arg2) with:
                gas gas_remaining wei
               args mem[mem[64] + 4 len ceil32(_11) + _590 + -mem[64] + 160]
        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1666 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 96
        _1706 = mem[64]
        if mem[64] + 96 > test266151307() or mem[64] + 96 < mem[64]:
            revert with 0, 65
        mem[64] = mem[64] + 96
        mem[_1706] = mem[_1666]
        if not uint8(_582):
            if stor2[arg1].field_2048 and mem[_1706] > -1 / stor2[arg1].field_2048:
                revert with 0, 17
            if stor2[arg1].field_2304 <= stor2[arg1].field_2048 * mem[_1706]:
                if stor2[arg1].field_2048 * mem[_1706] < stor2[arg1].field_2304:
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
                       stor2[arg1].field_2304,
                       stor2[arg1].field_2048 * mem[_1706],
                       (stor2[arg1].field_2048 * mem[_1706]) - stor2[arg1].field_2304,
                       0
            if stor2[arg1].field_2304 < stor2[arg1].field_2048 * mem[_1706]:
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
                   stor2[arg1].field_2304,
                   stor2[arg1].field_2048 * mem[_1706],
                   stor2[arg1].field_2304 - (stor2[arg1].field_2048 * mem[_1706]),
                   1
        if bool(bool(uint8(_582) < 78)) or bool(bool(uint8(_582) < 32)):
            if 10^uint8(_582) > -1:
                revert with 0, 17
            if stor2[arg1].field_2048 and mem[_1706] > -1 / stor2[arg1].field_2048:
                revert with 0, 17
            if not 10^uint8(_582):
                revert with 0, 18
            if stor2[arg1].field_2304 <= stor2[arg1].field_2048 * mem[_1706] / 10^uint8(_582):
                if stor2[arg1].field_2048 * mem[_1706] / 10^uint8(_582) < stor2[arg1].field_2304:
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
                       stor2[arg1].field_2304,
                       stor2[arg1].field_2048 * mem[_1706] / 10^uint8(_582),
                       (stor2[arg1].field_2048 * mem[_1706] / 10^uint8(_582)) - stor2[arg1].field_2304,
                       0
            if stor2[arg1].field_2304 < stor2[arg1].field_2048 * mem[_1706] / 10^uint8(_582):
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
                   stor2[arg1].field_2304,
                   stor2[arg1].field_2048 * mem[_1706] / 10^uint8(_582),
                   stor2[arg1].field_2304 - (stor2[arg1].field_2048 * mem[_1706] / 10^uint8(_582)),
                   1
        if var84005 > 1:
            s = var84001
            t = var84002
            u = var84005
            while s <= -1 / s:
                if not bool(u):
                    if uint255(u) * 0.5 > 1:
                        s = s * s
                        t = t
                        u = uint255(u) * 0.5
                        continue 
                    if t > -1 / s * s:
                        revert with 0, 17
                    if stor2[arg1].field_2048 and mem[_1706] > -1 / stor2[arg1].field_2048:
                        revert with 0, 17
                    if not s * s * t:
                        revert with 0, 18
                    if stor2[arg1].field_2304 <= stor2[arg1].field_2048 * mem[_1706] / s * s * t:
                        if stor2[arg1].field_2048 * mem[_1706] / s * s * t < stor2[arg1].field_2304:
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
                               stor2[arg1].field_2304,
                               stor2[arg1].field_2048 * mem[_1706] / s * s * t,
                               (stor2[arg1].field_2048 * mem[_1706] / s * s * t) - stor2[arg1].field_2304,
                               0
                    if stor2[arg1].field_2304 < stor2[arg1].field_2048 * mem[_1706] / s * s * t:
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
                           stor2[arg1].field_2304,
                           stor2[arg1].field_2048 * mem[_1706] / s * s * t,
                           stor2[arg1].field_2304 - (stor2[arg1].field_2048 * mem[_1706] / s * s * t),
                           1
                if uint255(u) * 0.5 > 1:
                    s = s * s
                    t = s * t
                    u = uint255(u) * 0.5
                    continue 
                if s * t > -1 / s * s:
                    revert with 0, 17
                if stor2[arg1].field_2048 and mem[_1706] > -1 / stor2[arg1].field_2048:
                    revert with 0, 17
                if not s * s * s * t:
                    revert with 0, 18
                if stor2[arg1].field_2304 <= stor2[arg1].field_2048 * mem[_1706] / s * s * s * t:
                    if stor2[arg1].field_2048 * mem[_1706] / s * s * s * t < stor2[arg1].field_2304:
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
                           stor2[arg1].field_2304,
                           stor2[arg1].field_2048 * mem[_1706] / s * s * s * t,
                           (stor2[arg1].field_2048 * mem[_1706] / s * s * s * t) - stor2[arg1].field_2304,
                           0
                if stor2[arg1].field_2304 < stor2[arg1].field_2048 * mem[_1706] / s * s * s * t:
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
                       stor2[arg1].field_2304,
                       stor2[arg1].field_2048 * mem[_1706] / s * s * s * t,
                       stor2[arg1].field_2304 - (stor2[arg1].field_2048 * mem[_1706] / s * s * s * t),
                       1
            revert with 0, 17
        if var84002 > -1 / var84001:
            revert with 0, 17
        if stor2[arg1].field_2048 and mem[_1706] > -1 / stor2[arg1].field_2048:
            revert with 0, 17
        if not var84001 * var84002:
            revert with 0, 18
        if stor2[arg1].field_2304 <= stor2[arg1].field_2048 * mem[_1706] / var84001 * var84002:
            if stor2[arg1].field_2048 * mem[_1706] / var84001 * var84002 < stor2[arg1].field_2304:
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
                   stor2[arg1].field_2304,
                   stor2[arg1].field_2048 * mem[_1706] / var84001 * var84002,
                   (stor2[arg1].field_2048 * mem[_1706] / var84001 * var84002) - stor2[arg1].field_2304,
                   0
        if stor2[arg1].field_2304 < stor2[arg1].field_2048 * mem[_1706] / var84001 * var84002:
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
               stor2[arg1].field_2304,
               stor2[arg1].field_2048 * mem[_1706] / var84001 * var84002,
               stor2[arg1].field_2304 - (stor2[arg1].field_2048 * mem[_1706] / var84001 * var84002),
               1
    if bool(stor2[arg1].field_0) != 1:
        if 0 < stor2[arg1].field_2304:
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
               stor2[arg1].field_2304,
               0,
               -stor2[arg1].field_2304,
               0
    mem[96] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
    require ext_code.size(stor2[arg1].field_1280)
    staticcall stor2[arg1].field_1280.0x95d89b41 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _10 = mem[96]
    require mem[96] <= test266151307()
    require return_data.size + 96 > mem[96] + 127
    _13 = mem[mem[96] + 96]
    if mem[mem[96] + 96] > test266151307():
        revert with 0, 65
    if ceil32(mem[mem[96] + 96]) + 32 < 0 or ceil32(return_data.size) + ceil32(mem[mem[96] + 96]) + 128 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(return_data.size) + ceil32(mem[mem[96] + 96]) + 128
    mem[ceil32(return_data.size) + 96] = _13
    require _10 + _13 + 32 <= return_data.size
    mem[ceil32(return_data.size) + 128 len ceil32(_13)] = mem[_10 + 128 len ceil32(_13)]
    if ceil32(_13) <= _13:
        require ext_code.size(stor2[arg1].field_1280)
        staticcall stor2[arg1].field_1280.0x313ce567 with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _575 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _579 = mem[_575]
        require mem[_575] == mem[_575 + 31 len 1]
        _583 = mem[64]
        mem[64] = mem[64] + 64
        mem[_583] = 3
        mem[_583 + 32] = 0x5553440000000000000000000000000000000000000000000000000000000000
        _585 = mem[64]
        mem[mem[64]] = 0x65555bcc00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 64
        mem[mem[64] + 68] = _13
        mem[mem[64] + 100 len ceil32(_13)] = mem[ceil32(return_data.size) + 128 len ceil32(_13)]
        if ceil32(_13) <= _13:
            mem[ceil32(_13) + mem[64] + 100] = 3
            mem[ceil32(_13) + mem[64] + 132] = 0x5553440000000000000000000000000000000000000000000000000000000000
            mem[ceil32(_13) + mem[64] + 135] = 0
            require ext_code.size(refAddress)
            staticcall refAddress.getReferenceData(string arg1, string arg2) with:
                    gas gas_remaining wei
                   args 64, ceil32(_13) + 96, _13, mem[mem[64] + 100 len ceil32(_13) + 32], 0, 0
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1659 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _1678 = mem[64]
            if mem[64] + 96 > test266151307() or mem[64] + 96 < mem[64]:
                revert with 0, 65
            mem[64] = mem[64] + 96
            mem[_1678] = mem[_1659]
            if not uint8(_579):
                if stor2[arg1].field_1792 and mem[_1678] > -1 / stor2[arg1].field_1792:
                    revert with 0, 17
                if stor2[arg1].field_2304 >= stor2[arg1].field_1792 * mem[_1678]:
                    if stor2[arg1].field_1792 * mem[_1678] < stor2[arg1].field_2304:
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
                           stor2[arg1].field_2304,
                           stor2[arg1].field_1792 * mem[_1678],
                           (stor2[arg1].field_1792 * mem[_1678]) - stor2[arg1].field_2304,
                           0
                if stor2[arg1].field_2304 < stor2[arg1].field_1792 * mem[_1678]:
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
                       stor2[arg1].field_2304,
                       stor2[arg1].field_1792 * mem[_1678],
                       stor2[arg1].field_2304 - (stor2[arg1].field_1792 * mem[_1678]),
                       1
            if bool(bool(uint8(_579) < 78)) or bool(bool(uint8(_579) < 32)):
                if 10^uint8(_579) > -1:
                    revert with 0, 17
                if stor2[arg1].field_1792 and mem[_1678] > -1 / stor2[arg1].field_1792:
                    revert with 0, 17
                if not 10^uint8(_579):
                    revert with 0, 18
                if stor2[arg1].field_2304 >= stor2[arg1].field_1792 * mem[_1678] / 10^uint8(_579):
                    if stor2[arg1].field_1792 * mem[_1678] / 10^uint8(_579) < stor2[arg1].field_2304:
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
                           stor2[arg1].field_2304,
                           stor2[arg1].field_1792 * mem[_1678] / 10^uint8(_579),
                           (stor2[arg1].field_1792 * mem[_1678] / 10^uint8(_579)) - stor2[arg1].field_2304,
                           0
                if stor2[arg1].field_2304 < stor2[arg1].field_1792 * mem[_1678] / 10^uint8(_579):
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
                       stor2[arg1].field_2304,
                       stor2[arg1].field_1792 * mem[_1678] / 10^uint8(_579),
                       stor2[arg1].field_2304 - (stor2[arg1].field_1792 * mem[_1678] / 10^uint8(_579)),
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
                        if stor2[arg1].field_1792 and mem[_1678] > -1 / stor2[arg1].field_1792:
                            revert with 0, 17
                        if not s * s * t:
                            revert with 0, 18
                        if stor2[arg1].field_2304 >= stor2[arg1].field_1792 * mem[_1678] / s * s * t:
                            if stor2[arg1].field_1792 * mem[_1678] / s * s * t < stor2[arg1].field_2304:
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
                                   stor2[arg1].field_2304,
                                   stor2[arg1].field_1792 * mem[_1678] / s * s * t,
                                   (stor2[arg1].field_1792 * mem[_1678] / s * s * t) - stor2[arg1].field_2304,
                                   0
                        if stor2[arg1].field_2304 < stor2[arg1].field_1792 * mem[_1678] / s * s * t:
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
                               stor2[arg1].field_2304,
                               stor2[arg1].field_1792 * mem[_1678] / s * s * t,
                               stor2[arg1].field_2304 - (stor2[arg1].field_1792 * mem[_1678] / s * s * t),
                               1
                    if uint255(u) * 0.5 > 1:
                        s = s * s
                        t = s * t
                        u = uint255(u) * 0.5
                        continue 
                    if s * t > -1 / s * s:
                        revert with 0, 17
                    if stor2[arg1].field_1792 and mem[_1678] > -1 / stor2[arg1].field_1792:
                        revert with 0, 17
                    if not s * s * s * t:
                        revert with 0, 18
                    if stor2[arg1].field_2304 >= stor2[arg1].field_1792 * mem[_1678] / s * s * s * t:
                        if stor2[arg1].field_1792 * mem[_1678] / s * s * s * t < stor2[arg1].field_2304:
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
                               stor2[arg1].field_2304,
                               stor2[arg1].field_1792 * mem[_1678] / s * s * s * t,
                               (stor2[arg1].field_1792 * mem[_1678] / s * s * s * t) - stor2[arg1].field_2304,
                               0
                    if stor2[arg1].field_2304 < stor2[arg1].field_1792 * mem[_1678] / s * s * s * t:
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
                           stor2[arg1].field_2304,
                           stor2[arg1].field_1792 * mem[_1678] / s * s * s * t,
                           stor2[arg1].field_2304 - (stor2[arg1].field_1792 * mem[_1678] / s * s * s * t),
                           1
                revert with 0, 17
            if var83002 > -1 / var83001:
                revert with 0, 17
            if stor2[arg1].field_1792 and mem[_1678] > -1 / stor2[arg1].field_1792:
                revert with 0, 17
            if not var83001 * var83002:
                revert with 0, 18
            if stor2[arg1].field_2304 >= stor2[arg1].field_1792 * mem[_1678] / var83001 * var83002:
                if stor2[arg1].field_1792 * mem[_1678] / var83001 * var83002 < stor2[arg1].field_2304:
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
                       stor2[arg1].field_2304,
                       stor2[arg1].field_1792 * mem[_1678] / var83001 * var83002,
                       (stor2[arg1].field_1792 * mem[_1678] / var83001 * var83002) - stor2[arg1].field_2304,
                       0
            if stor2[arg1].field_2304 < stor2[arg1].field_1792 * mem[_1678] / var83001 * var83002:
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
                   stor2[arg1].field_2304,
                   stor2[arg1].field_1792 * mem[_1678] / var83001 * var83002,
                   stor2[arg1].field_2304 - (stor2[arg1].field_1792 * mem[_1678] / var83001 * var83002),
                   1
        mem[mem[64] + _13 + 100] = 0
        mem[mem[64] + 36] = ceil32(_13) + 96
        mem[ceil32(_13) + _585 + 100] = 3
        mem[ceil32(_13) + _585 + 132] = 0x5553440000000000000000000000000000000000000000000000000000000000
        mem[ceil32(_13) + _585 + 135] = 0
        require ext_code.size(refAddress)
        staticcall refAddress.getReferenceData(string arg1, string arg2) with:
                gas gas_remaining wei
               args mem[mem[64] + 4 len ceil32(_13) + _585 + -mem[64] + 160]
        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1660 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 96
        _1682 = mem[64]
        if mem[64] + 96 > test266151307() or mem[64] + 96 < mem[64]:
            revert with 0, 65
        mem[64] = mem[64] + 96
        mem[_1682] = mem[_1660]
        if not uint8(_579):
            if stor2[arg1].field_1792 and mem[_1682] > -1 / stor2[arg1].field_1792:
                revert with 0, 17
            if stor2[arg1].field_2304 >= stor2[arg1].field_1792 * mem[_1682]:
                if stor2[arg1].field_1792 * mem[_1682] < stor2[arg1].field_2304:
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
                       stor2[arg1].field_2304,
                       stor2[arg1].field_1792 * mem[_1682],
                       (stor2[arg1].field_1792 * mem[_1682]) - stor2[arg1].field_2304,
                       0
            if stor2[arg1].field_2304 < stor2[arg1].field_1792 * mem[_1682]:
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
                   stor2[arg1].field_2304,
                   stor2[arg1].field_1792 * mem[_1682],
                   stor2[arg1].field_2304 - (stor2[arg1].field_1792 * mem[_1682]),
                   1
        if bool(bool(uint8(_579) < 78)) or bool(bool(uint8(_579) < 32)):
            if 10^uint8(_579) > -1:
                revert with 0, 17
            if stor2[arg1].field_1792 and mem[_1682] > -1 / stor2[arg1].field_1792:
                revert with 0, 17
            if not 10^uint8(_579):
                revert with 0, 18
            if stor2[arg1].field_2304 >= stor2[arg1].field_1792 * mem[_1682] / 10^uint8(_579):
                if stor2[arg1].field_1792 * mem[_1682] / 10^uint8(_579) < stor2[arg1].field_2304:
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
                       stor2[arg1].field_2304,
                       stor2[arg1].field_1792 * mem[_1682] / 10^uint8(_579),
                       (stor2[arg1].field_1792 * mem[_1682] / 10^uint8(_579)) - stor2[arg1].field_2304,
                       0
            if stor2[arg1].field_2304 < stor2[arg1].field_1792 * mem[_1682] / 10^uint8(_579):
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
                   stor2[arg1].field_2304,
                   stor2[arg1].field_1792 * mem[_1682] / 10^uint8(_579),
                   stor2[arg1].field_2304 - (stor2[arg1].field_1792 * mem[_1682] / 10^uint8(_579)),
                   1
        if var84005 > 1:
            s = var84001
            t = var84002
            u = var84005
            while s <= -1 / s:
                if not bool(u):
                    if uint255(u) * 0.5 > 1:
                        s = s * s
                        t = t
                        u = uint255(u) * 0.5
                        continue 
                    if t > -1 / s * s:
                        revert with 0, 17
                    if stor2[arg1].field_1792 and mem[_1682] > -1 / stor2[arg1].field_1792:
                        revert with 0, 17
                    if not s * s * t:
                        revert with 0, 18
                    if stor2[arg1].field_2304 >= stor2[arg1].field_1792 * mem[_1682] / s * s * t:
                        if stor2[arg1].field_1792 * mem[_1682] / s * s * t < stor2[arg1].field_2304:
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
                               stor2[arg1].field_2304,
                               stor2[arg1].field_1792 * mem[_1682] / s * s * t,
                               (stor2[arg1].field_1792 * mem[_1682] / s * s * t) - stor2[arg1].field_2304,
                               0
                    if stor2[arg1].field_2304 < stor2[arg1].field_1792 * mem[_1682] / s * s * t:
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
                           stor2[arg1].field_2304,
                           stor2[arg1].field_1792 * mem[_1682] / s * s * t,
                           stor2[arg1].field_2304 - (stor2[arg1].field_1792 * mem[_1682] / s * s * t),
                           1
                if uint255(u) * 0.5 > 1:
                    s = s * s
                    t = s * t
                    u = uint255(u) * 0.5
                    continue 
                if s * t > -1 / s * s:
                    revert with 0, 17
                if stor2[arg1].field_1792 and mem[_1682] > -1 / stor2[arg1].field_1792:
                    revert with 0, 17
                if not s * s * s * t:
                    revert with 0, 18
                if stor2[arg1].field_2304 >= stor2[arg1].field_1792 * mem[_1682] / s * s * s * t:
                    if stor2[arg1].field_1792 * mem[_1682] / s * s * s * t < stor2[arg1].field_2304:
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
                           stor2[arg1].field_2304,
                           stor2[arg1].field_1792 * mem[_1682] / s * s * s * t,
                           (stor2[arg1].field_1792 * mem[_1682] / s * s * s * t) - stor2[arg1].field_2304,
                           0
                if stor2[arg1].field_2304 < stor2[arg1].field_1792 * mem[_1682] / s * s * s * t:
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
                       stor2[arg1].field_2304,
                       stor2[arg1].field_1792 * mem[_1682] / s * s * s * t,
                       stor2[arg1].field_2304 - (stor2[arg1].field_1792 * mem[_1682] / s * s * s * t),
                       1
            revert with 0, 17
        if var84002 > -1 / var84001:
            revert with 0, 17
        if stor2[arg1].field_1792 and mem[_1682] > -1 / stor2[arg1].field_1792:
            revert with 0, 17
        if not var84001 * var84002:
            revert with 0, 18
        if stor2[arg1].field_2304 >= stor2[arg1].field_1792 * mem[_1682] / var84001 * var84002:
            if stor2[arg1].field_1792 * mem[_1682] / var84001 * var84002 < stor2[arg1].field_2304:
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
                   stor2[arg1].field_2304,
                   stor2[arg1].field_1792 * mem[_1682] / var84001 * var84002,
                   (stor2[arg1].field_1792 * mem[_1682] / var84001 * var84002) - stor2[arg1].field_2304,
                   0
        if stor2[arg1].field_2304 < stor2[arg1].field_1792 * mem[_1682] / var84001 * var84002:
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
               stor2[arg1].field_2304,
               stor2[arg1].field_1792 * mem[_1682] / var84001 * var84002,
               stor2[arg1].field_2304 - (stor2[arg1].field_1792 * mem[_1682] / var84001 * var84002),
               1
    mem[ceil32(return_data.size) + _13 + 128] = 0
    require ext_code.size(stor2[arg1].field_1280)
    staticcall stor2[arg1].field_1280.0x313ce567 with:
            gas gas_remaining wei
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _577 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _581 = mem[_577]
    require mem[_577] == mem[_577 + 31 len 1]
    _586 = mem[64]
    mem[64] = mem[64] + 64
    mem[_586] = 3
    mem[_586 + 32] = 0x5553440000000000000000000000000000000000000000000000000000000000
    _589 = mem[64]
    mem[mem[64]] = 0x65555bcc00000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = 64
    mem[mem[64] + 68] = _13
    mem[mem[64] + 100 len ceil32(_13)] = mem[ceil32(return_data.size) + 128 len ceil32(_13)]
    if ceil32(_13) <= _13:
        mem[ceil32(_13) + mem[64] + 100] = 3
        mem[ceil32(_13) + mem[64] + 132] = 0x5553440000000000000000000000000000000000000000000000000000000000
        mem[ceil32(_13) + mem[64] + 135] = 0
        require ext_code.size(refAddress)
        staticcall refAddress.getReferenceData(string arg1, string arg2) with:
                gas gas_remaining wei
               args 64, ceil32(_13) + 96, _13, mem[mem[64] + 100 len ceil32(_13) + 32], 0, 0
        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1661 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 96
        _1686 = mem[64]
        if mem[64] + 96 > test266151307() or mem[64] + 96 < mem[64]:
            revert with 0, 65
        mem[64] = mem[64] + 96
        mem[_1686] = mem[_1661]
        if not uint8(_581):
            if stor2[arg1].field_1792 and mem[_1686] > -1 / stor2[arg1].field_1792:
                revert with 0, 17
            if stor2[arg1].field_2304 >= stor2[arg1].field_1792 * mem[_1686]:
                if stor2[arg1].field_1792 * mem[_1686] < stor2[arg1].field_2304:
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
                       stor2[arg1].field_2304,
                       stor2[arg1].field_1792 * mem[_1686],
                       (stor2[arg1].field_1792 * mem[_1686]) - stor2[arg1].field_2304,
                       0
            if stor2[arg1].field_2304 < stor2[arg1].field_1792 * mem[_1686]:
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
                   stor2[arg1].field_2304,
                   stor2[arg1].field_1792 * mem[_1686],
                   stor2[arg1].field_2304 - (stor2[arg1].field_1792 * mem[_1686]),
                   1
        if bool(bool(uint8(_581) < 78)) or bool(bool(uint8(_581) < 32)):
            if 10^uint8(_581) > -1:
                revert with 0, 17
            if stor2[arg1].field_1792 and mem[_1686] > -1 / stor2[arg1].field_1792:
                revert with 0, 17
            if not 10^uint8(_581):
                revert with 0, 18
            if stor2[arg1].field_2304 >= stor2[arg1].field_1792 * mem[_1686] / 10^uint8(_581):
                if stor2[arg1].field_1792 * mem[_1686] / 10^uint8(_581) < stor2[arg1].field_2304:
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
                       stor2[arg1].field_2304,
                       stor2[arg1].field_1792 * mem[_1686] / 10^uint8(_581),
                       (stor2[arg1].field_1792 * mem[_1686] / 10^uint8(_581)) - stor2[arg1].field_2304,
                       0
            if stor2[arg1].field_2304 < stor2[arg1].field_1792 * mem[_1686] / 10^uint8(_581):
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
                   stor2[arg1].field_2304,
                   stor2[arg1].field_1792 * mem[_1686] / 10^uint8(_581),
                   stor2[arg1].field_2304 - (stor2[arg1].field_1792 * mem[_1686] / 10^uint8(_581)),
                   1
        if var84005 > 1:
            s = var84001
            t = var84002
            u = var84005
            while s <= -1 / s:
                if not bool(u):
                    if uint255(u) * 0.5 > 1:
                        s = s * s
                        t = t
                        u = uint255(u) * 0.5
                        continue 
                    if t > -1 / s * s:
                        revert with 0, 17
                    if stor2[arg1].field_1792 and mem[_1686] > -1 / stor2[arg1].field_1792:
                        revert with 0, 17
                    if not s * s * t:
                        revert with 0, 18
                    if stor2[arg1].field_2304 >= stor2[arg1].field_1792 * mem[_1686] / s * s * t:
                        if stor2[arg1].field_1792 * mem[_1686] / s * s * t < stor2[arg1].field_2304:
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
                               stor2[arg1].field_2304,
                               stor2[arg1].field_1792 * mem[_1686] / s * s * t,
                               (stor2[arg1].field_1792 * mem[_1686] / s * s * t) - stor2[arg1].field_2304,
                               0
                    if stor2[arg1].field_2304 < stor2[arg1].field_1792 * mem[_1686] / s * s * t:
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
                           stor2[arg1].field_2304,
                           stor2[arg1].field_1792 * mem[_1686] / s * s * t,
                           stor2[arg1].field_2304 - (stor2[arg1].field_1792 * mem[_1686] / s * s * t),
                           1
                if uint255(u) * 0.5 > 1:
                    s = s * s
                    t = s * t
                    u = uint255(u) * 0.5
                    continue 
                if s * t > -1 / s * s:
                    revert with 0, 17
                if stor2[arg1].field_1792 and mem[_1686] > -1 / stor2[arg1].field_1792:
                    revert with 0, 17
                if not s * s * s * t:
                    revert with 0, 18
                if stor2[arg1].field_2304 >= stor2[arg1].field_1792 * mem[_1686] / s * s * s * t:
                    if stor2[arg1].field_1792 * mem[_1686] / s * s * s * t < stor2[arg1].field_2304:
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
                           stor2[arg1].field_2304,
                           stor2[arg1].field_1792 * mem[_1686] / s * s * s * t,
                           (stor2[arg1].field_1792 * mem[_1686] / s * s * s * t) - stor2[arg1].field_2304,
                           0
                if stor2[arg1].field_2304 < stor2[arg1].field_1792 * mem[_1686] / s * s * s * t:
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
                       stor2[arg1].field_2304,
                       stor2[arg1].field_1792 * mem[_1686] / s * s * s * t,
                       stor2[arg1].field_2304 - (stor2[arg1].field_1792 * mem[_1686] / s * s * s * t),
                       1
            revert with 0, 17
        if var84002 > -1 / var84001:
            revert with 0, 17
        if stor2[arg1].field_1792 and mem[_1686] > -1 / stor2[arg1].field_1792:
            revert with 0, 17
        if not var84001 * var84002:
            revert with 0, 18
        if stor2[arg1].field_2304 >= stor2[arg1].field_1792 * mem[_1686] / var84001 * var84002:
            if stor2[arg1].field_1792 * mem[_1686] / var84001 * var84002 < stor2[arg1].field_2304:
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
                   stor2[arg1].field_2304,
                   stor2[arg1].field_1792 * mem[_1686] / var84001 * var84002,
                   (stor2[arg1].field_1792 * mem[_1686] / var84001 * var84002) - stor2[arg1].field_2304,
                   0
        if stor2[arg1].field_2304 < stor2[arg1].field_1792 * mem[_1686] / var84001 * var84002:
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
               stor2[arg1].field_2304,
               stor2[arg1].field_1792 * mem[_1686] / var84001 * var84002,
               stor2[arg1].field_2304 - (stor2[arg1].field_1792 * mem[_1686] / var84001 * var84002),
               1
    mem[mem[64] + _13 + 100] = 0
    mem[mem[64] + 36] = ceil32(_13) + 96
    mem[ceil32(_13) + _589 + 100] = 3
    mem[ceil32(_13) + _589 + 132] = 0x5553440000000000000000000000000000000000000000000000000000000000
    mem[ceil32(_13) + _589 + 135] = 0
    require ext_code.size(refAddress)
    staticcall refAddress.getReferenceData(string arg1, string arg2) with:
            gas gas_remaining wei
           args mem[mem[64] + 4 len ceil32(_13) + _589 + -mem[64] + 160]
    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _1662 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 96
    _1690 = mem[64]
    if mem[64] + 96 > test266151307() or mem[64] + 96 < mem[64]:
        revert with 0, 65
    mem[64] = mem[64] + 96
    mem[_1690] = mem[_1662]
    if not uint8(_581):
        if stor2[arg1].field_1792 and mem[_1690] > -1 / stor2[arg1].field_1792:
            revert with 0, 17
        if stor2[arg1].field_2304 >= stor2[arg1].field_1792 * mem[_1690]:
            if stor2[arg1].field_1792 * mem[_1690] < stor2[arg1].field_2304:
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
                   stor2[arg1].field_2304,
                   stor2[arg1].field_1792 * mem[_1690],
                   (stor2[arg1].field_1792 * mem[_1690]) - stor2[arg1].field_2304,
                   0
        if stor2[arg1].field_2304 < stor2[arg1].field_1792 * mem[_1690]:
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
               stor2[arg1].field_2304,
               stor2[arg1].field_1792 * mem[_1690],
               stor2[arg1].field_2304 - (stor2[arg1].field_1792 * mem[_1690]),
               1
    if bool(bool(uint8(_581) < 78)) or bool(bool(uint8(_581) < 32)):
        if 10^uint8(_581) > -1:
            revert with 0, 17
        if stor2[arg1].field_1792 and mem[_1690] > -1 / stor2[arg1].field_1792:
            revert with 0, 17
        if not 10^uint8(_581):
            revert with 0, 18
        if stor2[arg1].field_2304 >= stor2[arg1].field_1792 * mem[_1690] / 10^uint8(_581):
            if stor2[arg1].field_1792 * mem[_1690] / 10^uint8(_581) < stor2[arg1].field_2304:
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
                   stor2[arg1].field_2304,
                   stor2[arg1].field_1792 * mem[_1690] / 10^uint8(_581),
                   (stor2[arg1].field_1792 * mem[_1690] / 10^uint8(_581)) - stor2[arg1].field_2304,
                   0
        if stor2[arg1].field_2304 < stor2[arg1].field_1792 * mem[_1690] / 10^uint8(_581):
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
               stor2[arg1].field_2304,
               stor2[arg1].field_1792 * mem[_1690] / 10^uint8(_581),
               stor2[arg1].field_2304 - (stor2[arg1].field_1792 * mem[_1690] / 10^uint8(_581)),
               1
    if var85005 > 1:
        s = var85001
        t = var85002
        u = var85005
        while s <= -1 / s:
            if not bool(u):
                if uint255(u) * 0.5 > 1:
                    s = s * s
                    t = t
                    u = uint255(u) * 0.5
                    continue 
                if t > -1 / s * s:
                    revert with 0, 17
                if stor2[arg1].field_1792 and mem[_1690] > -1 / stor2[arg1].field_1792:
                    revert with 0, 17
                if not s * s * t:
                    revert with 0, 18
                if stor2[arg1].field_2304 >= stor2[arg1].field_1792 * mem[_1690] / s * s * t:
                    if stor2[arg1].field_1792 * mem[_1690] / s * s * t < stor2[arg1].field_2304:
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
                           stor2[arg1].field_2304,
                           stor2[arg1].field_1792 * mem[_1690] / s * s * t,
                           (stor2[arg1].field_1792 * mem[_1690] / s * s * t) - stor2[arg1].field_2304,
                           0
                if stor2[arg1].field_2304 < stor2[arg1].field_1792 * mem[_1690] / s * s * t:
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
                       stor2[arg1].field_2304,
                       stor2[arg1].field_1792 * mem[_1690] / s * s * t,
                       stor2[arg1].field_2304 - (stor2[arg1].field_1792 * mem[_1690] / s * s * t),
                       1
            if uint255(u) * 0.5 > 1:
                s = s * s
                t = s * t
                u = uint255(u) * 0.5
                continue 
            if s * t > -1 / s * s:
                revert with 0, 17
            if stor2[arg1].field_1792 and mem[_1690] > -1 / stor2[arg1].field_1792:
                revert with 0, 17
            if not s * s * s * t:
                revert with 0, 18
            if stor2[arg1].field_2304 >= stor2[arg1].field_1792 * mem[_1690] / s * s * s * t:
                if stor2[arg1].field_1792 * mem[_1690] / s * s * s * t < stor2[arg1].field_2304:
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
                       stor2[arg1].field_2304,
                       stor2[arg1].field_1792 * mem[_1690] / s * s * s * t,
                       (stor2[arg1].field_1792 * mem[_1690] / s * s * s * t) - stor2[arg1].field_2304,
                       0
            if stor2[arg1].field_2304 < stor2[arg1].field_1792 * mem[_1690] / s * s * s * t:
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
                   stor2[arg1].field_2304,
                   stor2[arg1].field_1792 * mem[_1690] / s * s * s * t,
                   stor2[arg1].field_2304 - (stor2[arg1].field_1792 * mem[_1690] / s * s * s * t),
                   1
        revert with 0, 17
    if var85002 > -1 / var85001:
        revert with 0, 17
    if stor2[arg1].field_1792 and mem[_1690] > -1 / stor2[arg1].field_1792:
        revert with 0, 17
    if not var85001 * var85002:
        revert with 0, 18
    if stor2[arg1].field_2304 >= stor2[arg1].field_1792 * mem[_1690] / var85001 * var85002:
        if stor2[arg1].field_1792 * mem[_1690] / var85001 * var85002 < stor2[arg1].field_2304:
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
               stor2[arg1].field_2304,
               stor2[arg1].field_1792 * mem[_1690] / var85001 * var85002,
               (stor2[arg1].field_1792 * mem[_1690] / var85001 * var85002) - stor2[arg1].field_2304,
               0
    if stor2[arg1].field_2304 < stor2[arg1].field_1792 * mem[_1690] / var85001 * var85002:
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
           stor2[arg1].field_2304,
           stor2[arg1].field_1792 * mem[_1690] / var85001 * var85002,
           stor2[arg1].field_2304 - (stor2[arg1].field_1792 * mem[_1690] / var85001 * var85002),
           1
}



}
