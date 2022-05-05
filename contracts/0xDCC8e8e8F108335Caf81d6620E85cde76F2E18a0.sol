contract main {




// =====================  Runtime code  =====================


#
#  - sub_3006abb9(?)
#  - getPosition(uint256 arg1)
#  - sub_f08d010c(?)
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
    mem[132] = arg3
    require ext_code.size(address(arg1))
    call address(arg1).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg5), arg3
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
    mem[64] = (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 256
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

function sub_9db29307(?) payable {
    require calldata.size - 4 >= 32
    if arg1 >= stor2.length:
        revert with 0, 50
    mem[0] = 2
    mem[96] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
    require ext_code.size(stor2[arg1].field_1280)
    staticcall stor2[arg1].field_1280.0x95d89b41 with:
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
        require ext_code.size(stor2[arg1].field_1280)
        staticcall stor2[arg1].field_1280.0x313ce567 with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _238 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _240 = mem[_238]
        require mem[_238] == mem[_238 + 31 len 1]
        _242 = mem[64]
        mem[64] = mem[64] + 64
        mem[_242] = 3
        mem[_242 + 32] = 0x5553440000000000000000000000000000000000000000000000000000000000
        _243 = mem[64]
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
            _684 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _695 = mem[64]
            if mem[64] + 96 > test266151307() or mem[64] + 96 < mem[64]:
                revert with 0, 65
            mem[64] = mem[64] + 96
            mem[_695] = mem[_684]
            mem[_695 + 32] = mem[_684 + 32]
            mem[_695 + 64] = mem[_684 + 64]
            if not uint8(_240):
                if stor2[arg1].field_768 and mem[_695] > -1 / stor2[arg1].field_768:
                    revert with 0, 17
                if not stor2[arg1].field_0:
                    if stor2[arg1].field_2304 < stor2[arg1].field_768 * mem[_695]:
                        revert with 0, 17
                    mem[mem[64]] = stor2[arg1].field_2304 - (stor2[arg1].field_768 * mem[_695])
                else:
                    if bool(stor2[arg1].field_0) != 1:
                        return 0
                    if stor2[arg1].field_2304 > !(stor2[arg1].field_768 * mem[_695]):
                        revert with 0, 17
                    mem[mem[64]] = stor2[arg1].field_2304 + (stor2[arg1].field_768 * mem[_695])
            else:
                if bool(bool(uint8(_240) < 78)) or bool(bool(uint8(_240) < 32)):
                    if 10^uint8(_240) > -1:
                        revert with 0, 17
                    if stor2[arg1].field_768 and mem[_695] > -1 / stor2[arg1].field_768:
                        revert with 0, 17
                    if not 10^uint8(_240):
                        revert with 0, 18
                    if not stor2[arg1].field_0:
                        if stor2[arg1].field_2304 < stor2[arg1].field_768 * mem[_695] / 10^uint8(_240):
                            revert with 0, 17
                        mem[mem[64]] = stor2[arg1].field_2304 - (stor2[arg1].field_768 * mem[_695] / 10^uint8(_240))
                    else:
                        if bool(stor2[arg1].field_0) != 1:
                            return 0
                        if stor2[arg1].field_2304 > !(stor2[arg1].field_768 * mem[_695] / 10^uint8(_240)):
                            revert with 0, 17
                        mem[mem[64]] = stor2[arg1].field_2304 + (stor2[arg1].field_768 * mem[_695] / 10^uint8(_240))
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
                                if stor2[arg1].field_768 and mem[_695] > -1 / stor2[arg1].field_768:
                                    revert with 0, 17
                                if not s * s * t:
                                    revert with 0, 18
                                if not stor2[arg1].field_0:
                                    if stor2[arg1].field_2304 < stor2[arg1].field_768 * mem[_695] / s * s * t:
                                        revert with 0, 17
                                    mem[mem[64]] = stor2[arg1].field_2304 - (stor2[arg1].field_768 * mem[_695] / s * s * t)
                                else:
                                    if bool(stor2[arg1].field_0) != 1:
                                        return 0
                                    if stor2[arg1].field_2304 > !(stor2[arg1].field_768 * mem[_695] / s * s * t):
                                        revert with 0, 17
                                    mem[mem[64]] = stor2[arg1].field_2304 + (stor2[arg1].field_768 * mem[_695] / s * s * t)
                            else:
                                if uint255(u) * 0.5 > 1:
                                    s = s * s
                                    t = s * t
                                    u = uint255(u) * 0.5
                                    continue 
                                if s * t > -1 / s * s:
                                    revert with 0, 17
                                if stor2[arg1].field_768 and mem[_695] > -1 / stor2[arg1].field_768:
                                    revert with 0, 17
                                if not s * s * s * t:
                                    revert with 0, 18
                                if not stor2[arg1].field_0:
                                    if stor2[arg1].field_2304 < stor2[arg1].field_768 * mem[_695] / s * s * s * t:
                                        revert with 0, 17
                                    mem[mem[64]] = stor2[arg1].field_2304 - (stor2[arg1].field_768 * mem[_695] / s * s * s * t)
                                else:
                                    if bool(stor2[arg1].field_0) != 1:
                                        return 0
                                    if stor2[arg1].field_2304 > !(stor2[arg1].field_768 * mem[_695] / s * s * s * t):
                                        revert with 0, 17
                                    mem[mem[64]] = stor2[arg1].field_2304 + (stor2[arg1].field_768 * mem[_695] / s * s * s * t)
                            return memory
                              from mem[64]
                               len 32
                        revert with 0, 17
                    if var79002 > -1 / var79001:
                        revert with 0, 17
                    if stor2[arg1].field_768 and mem[_695] > -1 / stor2[arg1].field_768:
                        revert with 0, 17
                    if not var79001 * var79002:
                        revert with 0, 18
                    if not stor2[arg1].field_0:
                        if stor2[arg1].field_2304 < stor2[arg1].field_768 * mem[_695] / var79001 * var79002:
                            revert with 0, 17
                        mem[mem[64]] = stor2[arg1].field_2304 - (stor2[arg1].field_768 * mem[_695] / var79001 * var79002)
                    else:
                        if bool(stor2[arg1].field_0) != 1:
                            return 0
                        if stor2[arg1].field_2304 > !(stor2[arg1].field_768 * mem[_695] / var79001 * var79002):
                            revert with 0, 17
                        mem[mem[64]] = stor2[arg1].field_2304 + (stor2[arg1].field_768 * mem[_695] / var79001 * var79002)
        else:
            mem[mem[64] + _6 + 100] = 0
            mem[mem[64] + 36] = ceil32(_6) + 96
            mem[ceil32(_6) + _243 + 100] = 3
            mem[ceil32(_6) + _243 + 132] = 0x5553440000000000000000000000000000000000000000000000000000000000
            mem[ceil32(_6) + _243 + 135] = 0
            require ext_code.size(refAddress)
            staticcall refAddress.getReferenceData(string arg1, string arg2) with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len ceil32(_6) + _243 + -mem[64] + 160]
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _685 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _699 = mem[64]
            if mem[64] + 96 > test266151307() or mem[64] + 96 < mem[64]:
                revert with 0, 65
            mem[64] = mem[64] + 96
            mem[_699] = mem[_685]
            mem[_699 + 32] = mem[_685 + 32]
            mem[_699 + 64] = mem[_685 + 64]
            if not uint8(_240):
                if stor2[arg1].field_768 and mem[_699] > -1 / stor2[arg1].field_768:
                    revert with 0, 17
                if not stor2[arg1].field_0:
                    if stor2[arg1].field_2304 < stor2[arg1].field_768 * mem[_699]:
                        revert with 0, 17
                    mem[mem[64]] = stor2[arg1].field_2304 - (stor2[arg1].field_768 * mem[_699])
                else:
                    if bool(stor2[arg1].field_0) != 1:
                        return 0
                    if stor2[arg1].field_2304 > !(stor2[arg1].field_768 * mem[_699]):
                        revert with 0, 17
                    mem[mem[64]] = stor2[arg1].field_2304 + (stor2[arg1].field_768 * mem[_699])
            else:
                if bool(bool(uint8(_240) < 78)) or bool(bool(uint8(_240) < 32)):
                    if 10^uint8(_240) > -1:
                        revert with 0, 17
                    if stor2[arg1].field_768 and mem[_699] > -1 / stor2[arg1].field_768:
                        revert with 0, 17
                    if not 10^uint8(_240):
                        revert with 0, 18
                    if not stor2[arg1].field_0:
                        if stor2[arg1].field_2304 < stor2[arg1].field_768 * mem[_699] / 10^uint8(_240):
                            revert with 0, 17
                        mem[mem[64]] = stor2[arg1].field_2304 - (stor2[arg1].field_768 * mem[_699] / 10^uint8(_240))
                    else:
                        if bool(stor2[arg1].field_0) != 1:
                            return 0
                        if stor2[arg1].field_2304 > !(stor2[arg1].field_768 * mem[_699] / 10^uint8(_240)):
                            revert with 0, 17
                        mem[mem[64]] = stor2[arg1].field_2304 + (stor2[arg1].field_768 * mem[_699] / 10^uint8(_240))
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
                                if stor2[arg1].field_768 and mem[_699] > -1 / stor2[arg1].field_768:
                                    revert with 0, 17
                                if not s * s * t:
                                    revert with 0, 18
                                if not stor2[arg1].field_0:
                                    if stor2[arg1].field_2304 < stor2[arg1].field_768 * mem[_699] / s * s * t:
                                        revert with 0, 17
                                    mem[mem[64]] = stor2[arg1].field_2304 - (stor2[arg1].field_768 * mem[_699] / s * s * t)
                                else:
                                    if bool(stor2[arg1].field_0) != 1:
                                        return 0
                                    if stor2[arg1].field_2304 > !(stor2[arg1].field_768 * mem[_699] / s * s * t):
                                        revert with 0, 17
                                    mem[mem[64]] = stor2[arg1].field_2304 + (stor2[arg1].field_768 * mem[_699] / s * s * t)
                            else:
                                if uint255(u) * 0.5 > 1:
                                    s = s * s
                                    t = s * t
                                    u = uint255(u) * 0.5
                                    continue 
                                if s * t > -1 / s * s:
                                    revert with 0, 17
                                if stor2[arg1].field_768 and mem[_699] > -1 / stor2[arg1].field_768:
                                    revert with 0, 17
                                if not s * s * s * t:
                                    revert with 0, 18
                                if not stor2[arg1].field_0:
                                    if stor2[arg1].field_2304 < stor2[arg1].field_768 * mem[_699] / s * s * s * t:
                                        revert with 0, 17
                                    mem[mem[64]] = stor2[arg1].field_2304 - (stor2[arg1].field_768 * mem[_699] / s * s * s * t)
                                else:
                                    if bool(stor2[arg1].field_0) != 1:
                                        return 0
                                    if stor2[arg1].field_2304 > !(stor2[arg1].field_768 * mem[_699] / s * s * s * t):
                                        revert with 0, 17
                                    mem[mem[64]] = stor2[arg1].field_2304 + (stor2[arg1].field_768 * mem[_699] / s * s * s * t)
                            return memory
                              from mem[64]
                               len 32
                        revert with 0, 17
                    if var80002 > -1 / var80001:
                        revert with 0, 17
                    if stor2[arg1].field_768 and mem[_699] > -1 / stor2[arg1].field_768:
                        revert with 0, 17
                    if not var80001 * var80002:
                        revert with 0, 18
                    if not stor2[arg1].field_0:
                        if stor2[arg1].field_2304 < stor2[arg1].field_768 * mem[_699] / var80001 * var80002:
                            revert with 0, 17
                        mem[mem[64]] = stor2[arg1].field_2304 - (stor2[arg1].field_768 * mem[_699] / var80001 * var80002)
                    else:
                        if bool(stor2[arg1].field_0) != 1:
                            return 0
                        if stor2[arg1].field_2304 > !(stor2[arg1].field_768 * mem[_699] / var80001 * var80002):
                            revert with 0, 17
                        mem[mem[64]] = stor2[arg1].field_2304 + (stor2[arg1].field_768 * mem[_699] / var80001 * var80002)
    else:
        mem[ceil32(return_data.size) + _6 + 128] = 0
        require ext_code.size(stor2[arg1].field_1280)
        staticcall stor2[arg1].field_1280.0x313ce567 with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _239 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _241 = mem[_239]
        require mem[_239] == mem[_239 + 31 len 1]
        _244 = mem[64]
        mem[64] = mem[64] + 64
        mem[_244] = 3
        mem[_244 + 32] = 0x5553440000000000000000000000000000000000000000000000000000000000
        _245 = mem[64]
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
            _686 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _703 = mem[64]
            if mem[64] + 96 > test266151307() or mem[64] + 96 < mem[64]:
                revert with 0, 65
            mem[64] = mem[64] + 96
            mem[_703] = mem[_686]
            mem[_703 + 32] = mem[_686 + 32]
            mem[_703 + 64] = mem[_686 + 64]
            if not uint8(_241):
                if stor2[arg1].field_768 and mem[_703] > -1 / stor2[arg1].field_768:
                    revert with 0, 17
                if not stor2[arg1].field_0:
                    if stor2[arg1].field_2304 < stor2[arg1].field_768 * mem[_703]:
                        revert with 0, 17
                    mem[mem[64]] = stor2[arg1].field_2304 - (stor2[arg1].field_768 * mem[_703])
                else:
                    if bool(stor2[arg1].field_0) != 1:
                        return 0
                    if stor2[arg1].field_2304 > !(stor2[arg1].field_768 * mem[_703]):
                        revert with 0, 17
                    mem[mem[64]] = stor2[arg1].field_2304 + (stor2[arg1].field_768 * mem[_703])
            else:
                if bool(bool(uint8(_241) < 78)) or bool(bool(uint8(_241) < 32)):
                    if 10^uint8(_241) > -1:
                        revert with 0, 17
                    if stor2[arg1].field_768 and mem[_703] > -1 / stor2[arg1].field_768:
                        revert with 0, 17
                    if not 10^uint8(_241):
                        revert with 0, 18
                    if not stor2[arg1].field_0:
                        if stor2[arg1].field_2304 < stor2[arg1].field_768 * mem[_703] / 10^uint8(_241):
                            revert with 0, 17
                        mem[mem[64]] = stor2[arg1].field_2304 - (stor2[arg1].field_768 * mem[_703] / 10^uint8(_241))
                    else:
                        if bool(stor2[arg1].field_0) != 1:
                            return 0
                        if stor2[arg1].field_2304 > !(stor2[arg1].field_768 * mem[_703] / 10^uint8(_241)):
                            revert with 0, 17
                        mem[mem[64]] = stor2[arg1].field_2304 + (stor2[arg1].field_768 * mem[_703] / 10^uint8(_241))
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
                                if stor2[arg1].field_768 and mem[_703] > -1 / stor2[arg1].field_768:
                                    revert with 0, 17
                                if not s * s * t:
                                    revert with 0, 18
                                if not stor2[arg1].field_0:
                                    if stor2[arg1].field_2304 < stor2[arg1].field_768 * mem[_703] / s * s * t:
                                        revert with 0, 17
                                    mem[mem[64]] = stor2[arg1].field_2304 - (stor2[arg1].field_768 * mem[_703] / s * s * t)
                                else:
                                    if bool(stor2[arg1].field_0) != 1:
                                        return 0
                                    if stor2[arg1].field_2304 > !(stor2[arg1].field_768 * mem[_703] / s * s * t):
                                        revert with 0, 17
                                    mem[mem[64]] = stor2[arg1].field_2304 + (stor2[arg1].field_768 * mem[_703] / s * s * t)
                            else:
                                if uint255(u) * 0.5 > 1:
                                    s = s * s
                                    t = s * t
                                    u = uint255(u) * 0.5
                                    continue 
                                if s * t > -1 / s * s:
                                    revert with 0, 17
                                if stor2[arg1].field_768 and mem[_703] > -1 / stor2[arg1].field_768:
                                    revert with 0, 17
                                if not s * s * s * t:
                                    revert with 0, 18
                                if not stor2[arg1].field_0:
                                    if stor2[arg1].field_2304 < stor2[arg1].field_768 * mem[_703] / s * s * s * t:
                                        revert with 0, 17
                                    mem[mem[64]] = stor2[arg1].field_2304 - (stor2[arg1].field_768 * mem[_703] / s * s * s * t)
                                else:
                                    if bool(stor2[arg1].field_0) != 1:
                                        return 0
                                    if stor2[arg1].field_2304 > !(stor2[arg1].field_768 * mem[_703] / s * s * s * t):
                                        revert with 0, 17
                                    mem[mem[64]] = stor2[arg1].field_2304 + (stor2[arg1].field_768 * mem[_703] / s * s * s * t)
                            return memory
                              from mem[64]
                               len 32
                        revert with 0, 17
                    if var80002 > -1 / var80001:
                        revert with 0, 17
                    if stor2[arg1].field_768 and mem[_703] > -1 / stor2[arg1].field_768:
                        revert with 0, 17
                    if not var80001 * var80002:
                        revert with 0, 18
                    if not stor2[arg1].field_0:
                        if stor2[arg1].field_2304 < stor2[arg1].field_768 * mem[_703] / var80001 * var80002:
                            revert with 0, 17
                        mem[mem[64]] = stor2[arg1].field_2304 - (stor2[arg1].field_768 * mem[_703] / var80001 * var80002)
                    else:
                        if bool(stor2[arg1].field_0) != 1:
                            return 0
                        if stor2[arg1].field_2304 > !(stor2[arg1].field_768 * mem[_703] / var80001 * var80002):
                            revert with 0, 17
                        mem[mem[64]] = stor2[arg1].field_2304 + (stor2[arg1].field_768 * mem[_703] / var80001 * var80002)
        else:
            mem[mem[64] + _6 + 100] = 0
            mem[mem[64] + 36] = ceil32(_6) + 96
            mem[ceil32(_6) + _245 + 100] = 3
            mem[ceil32(_6) + _245 + 132] = 0x5553440000000000000000000000000000000000000000000000000000000000
            mem[ceil32(_6) + _245 + 135] = 0
            require ext_code.size(refAddress)
            staticcall refAddress.getReferenceData(string arg1, string arg2) with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len ceil32(_6) + _245 + -mem[64] + 160]
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _687 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _707 = mem[64]
            if mem[64] + 96 > test266151307() or mem[64] + 96 < mem[64]:
                revert with 0, 65
            mem[64] = mem[64] + 96
            mem[_707] = mem[_687]
            mem[_707 + 32] = mem[_687 + 32]
            mem[_707 + 64] = mem[_687 + 64]
            if not uint8(_241):
                if stor2[arg1].field_768 and mem[_707] > -1 / stor2[arg1].field_768:
                    revert with 0, 17
                if not stor2[arg1].field_0:
                    if stor2[arg1].field_2304 < stor2[arg1].field_768 * mem[_707]:
                        revert with 0, 17
                    mem[mem[64]] = stor2[arg1].field_2304 - (stor2[arg1].field_768 * mem[_707])
                else:
                    if bool(stor2[arg1].field_0) != 1:
                        return 0
                    if stor2[arg1].field_2304 > !(stor2[arg1].field_768 * mem[_707]):
                        revert with 0, 17
                    mem[mem[64]] = stor2[arg1].field_2304 + (stor2[arg1].field_768 * mem[_707])
            else:
                if bool(bool(uint8(_241) < 78)) or bool(bool(uint8(_241) < 32)):
                    if 10^uint8(_241) > -1:
                        revert with 0, 17
                    if stor2[arg1].field_768 and mem[_707] > -1 / stor2[arg1].field_768:
                        revert with 0, 17
                    if not 10^uint8(_241):
                        revert with 0, 18
                    if not stor2[arg1].field_0:
                        if stor2[arg1].field_2304 < stor2[arg1].field_768 * mem[_707] / 10^uint8(_241):
                            revert with 0, 17
                        mem[mem[64]] = stor2[arg1].field_2304 - (stor2[arg1].field_768 * mem[_707] / 10^uint8(_241))
                    else:
                        if bool(stor2[arg1].field_0) != 1:
                            return 0
                        if stor2[arg1].field_2304 > !(stor2[arg1].field_768 * mem[_707] / 10^uint8(_241)):
                            revert with 0, 17
                        mem[mem[64]] = stor2[arg1].field_2304 + (stor2[arg1].field_768 * mem[_707] / 10^uint8(_241))
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
                                if stor2[arg1].field_768 and mem[_707] > -1 / stor2[arg1].field_768:
                                    revert with 0, 17
                                if not s * s * t:
                                    revert with 0, 18
                                if not stor2[arg1].field_0:
                                    if stor2[arg1].field_2304 < stor2[arg1].field_768 * mem[_707] / s * s * t:
                                        revert with 0, 17
                                    mem[mem[64]] = stor2[arg1].field_2304 - (stor2[arg1].field_768 * mem[_707] / s * s * t)
                                else:
                                    if bool(stor2[arg1].field_0) != 1:
                                        return 0
                                    if stor2[arg1].field_2304 > !(stor2[arg1].field_768 * mem[_707] / s * s * t):
                                        revert with 0, 17
                                    mem[mem[64]] = stor2[arg1].field_2304 + (stor2[arg1].field_768 * mem[_707] / s * s * t)
                            else:
                                if uint255(u) * 0.5 > 1:
                                    s = s * s
                                    t = s * t
                                    u = uint255(u) * 0.5
                                    continue 
                                if s * t > -1 / s * s:
                                    revert with 0, 17
                                if stor2[arg1].field_768 and mem[_707] > -1 / stor2[arg1].field_768:
                                    revert with 0, 17
                                if not s * s * s * t:
                                    revert with 0, 18
                                if not stor2[arg1].field_0:
                                    if stor2[arg1].field_2304 < stor2[arg1].field_768 * mem[_707] / s * s * s * t:
                                        revert with 0, 17
                                    mem[mem[64]] = stor2[arg1].field_2304 - (stor2[arg1].field_768 * mem[_707] / s * s * s * t)
                                else:
                                    if bool(stor2[arg1].field_0) != 1:
                                        return 0
                                    if stor2[arg1].field_2304 > !(stor2[arg1].field_768 * mem[_707] / s * s * s * t):
                                        revert with 0, 17
                                    mem[mem[64]] = stor2[arg1].field_2304 + (stor2[arg1].field_768 * mem[_707] / s * s * s * t)
                            return memory
                              from mem[64]
                               len 32
                        revert with 0, 17
                    if var81002 > -1 / var81001:
                        revert with 0, 17
                    if stor2[arg1].field_768 and mem[_707] > -1 / stor2[arg1].field_768:
                        revert with 0, 17
                    if not var81001 * var81002:
                        revert with 0, 18
                    if not stor2[arg1].field_0:
                        if stor2[arg1].field_2304 < stor2[arg1].field_768 * mem[_707] / var81001 * var81002:
                            revert with 0, 17
                        mem[mem[64]] = stor2[arg1].field_2304 - (stor2[arg1].field_768 * mem[_707] / var81001 * var81002)
                    else:
                        if bool(stor2[arg1].field_0) != 1:
                            return 0
                        if stor2[arg1].field_2304 > !(stor2[arg1].field_768 * mem[_707] / var81001 * var81002):
                            revert with 0, 17
                        mem[mem[64]] = stor2[arg1].field_2304 + (stor2[arg1].field_768 * mem[_707] / var81001 * var81002)
    return memory
      from mem[64]
       len 32
}

function sub_d2b65627(?) payable {
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
        _10 = mem[96]
        require mem[96] <= test266151307()
        require return_data.size + 96 > mem[96] + 127
        _12 = mem[mem[96] + 96]
        if mem[mem[96] + 96] > test266151307():
            revert with 0, 65
        if ceil32(mem[mem[96] + 96]) + 32 < 0 or ceil32(return_data.size) + ceil32(mem[mem[96] + 96]) + 128 > test266151307():
            revert with 0, 65
        mem[64] = ceil32(return_data.size) + ceil32(mem[mem[96] + 96]) + 128
        mem[ceil32(return_data.size) + 96] = _12
        require _10 + _12 + 32 <= return_data.size
        mem[ceil32(return_data.size) + 128 len ceil32(_12)] = mem[_10 + 128 len ceil32(_12)]
        if ceil32(_12) <= _12:
            require ext_code.size(stor2[arg1].field_1536)
            staticcall stor2[arg1].field_1536.0x313ce567 with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _285 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _289 = mem[_285]
            require mem[_285] == mem[_285 + 31 len 1]
            _293 = mem[64]
            mem[64] = mem[64] + 64
            mem[_293] = 3
            mem[_293 + 32] = 0x5553440000000000000000000000000000000000000000000000000000000000
            _296 = mem[64]
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
                _796 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _827 = mem[64]
                if mem[64] + 96 > test266151307() or mem[64] + 96 < mem[64]:
                    revert with 0, 65
                mem[64] = mem[64] + 96
                mem[_827] = mem[_796]
                mem[_827 + 32] = mem[_796 + 32]
                mem[_827 + 64] = mem[_796 + 64]
                if not uint8(_289):
                    if stor2[arg1].field_2048 and mem[_827] > -1 / stor2[arg1].field_2048:
                        revert with 0, 17
                    mem[mem[64]] = stor2[arg1].field_2048 * mem[_827]
                else:
                    if bool(bool(uint8(_289) < 78)) or bool(bool(uint8(_289) < 32)):
                        if 10^uint8(_289) > -1:
                            revert with 0, 17
                        if stor2[arg1].field_2048 and mem[_827] > -1 / stor2[arg1].field_2048:
                            revert with 0, 17
                        if not 10^uint8(_289):
                            revert with 0, 18
                        mem[mem[64]] = stor2[arg1].field_2048 * mem[_827] / 10^uint8(_289)
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
                                    if stor2[arg1].field_2048 and mem[_827] > -1 / stor2[arg1].field_2048:
                                        revert with 0, 17
                                    if not s * s * t:
                                        revert with 0, 18
                                    mem[mem[64]] = stor2[arg1].field_2048 * mem[_827] / s * s * t
                                else:
                                    if uint255(u) * 0.5 > 1:
                                        s = s * s
                                        t = s * t
                                        u = uint255(u) * 0.5
                                        continue 
                                    if s * t > -1 / s * s:
                                        revert with 0, 17
                                    if stor2[arg1].field_2048 and mem[_827] > -1 / stor2[arg1].field_2048:
                                        revert with 0, 17
                                    if not s * s * s * t:
                                        revert with 0, 18
                                    mem[mem[64]] = stor2[arg1].field_2048 * mem[_827] / s * s * s * t
                                return memory
                                  from mem[64]
                                   len 32
                            revert with 0, 17
                        if var80002 > -1 / var80001:
                            revert with 0, 17
                        if stor2[arg1].field_2048 and mem[_827] > -1 / stor2[arg1].field_2048:
                            revert with 0, 17
                        if not var80001 * var80002:
                            revert with 0, 18
                        mem[mem[64]] = stor2[arg1].field_2048 * mem[_827] / var80001 * var80002
            else:
                mem[mem[64] + _12 + 100] = 0
                mem[mem[64] + 36] = ceil32(_12) + 96
                mem[ceil32(_12) + _296 + 100] = 3
                mem[ceil32(_12) + _296 + 132] = 0x5553440000000000000000000000000000000000000000000000000000000000
                mem[ceil32(_12) + _296 + 135] = 0
                require ext_code.size(refAddress)
                staticcall refAddress.getReferenceData(string arg1, string arg2) with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len ceil32(_12) + _296 + -mem[64] + 160]
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _797 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _831 = mem[64]
                if mem[64] + 96 > test266151307() or mem[64] + 96 < mem[64]:
                    revert with 0, 65
                mem[64] = mem[64] + 96
                mem[_831] = mem[_797]
                mem[_831 + 32] = mem[_797 + 32]
                mem[_831 + 64] = mem[_797 + 64]
                if not uint8(_289):
                    if stor2[arg1].field_2048 and mem[_831] > -1 / stor2[arg1].field_2048:
                        revert with 0, 17
                    mem[mem[64]] = stor2[arg1].field_2048 * mem[_831]
                else:
                    if bool(bool(uint8(_289) < 78)) or bool(bool(uint8(_289) < 32)):
                        if 10^uint8(_289) > -1:
                            revert with 0, 17
                        if stor2[arg1].field_2048 and mem[_831] > -1 / stor2[arg1].field_2048:
                            revert with 0, 17
                        if not 10^uint8(_289):
                            revert with 0, 18
                        mem[mem[64]] = stor2[arg1].field_2048 * mem[_831] / 10^uint8(_289)
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
                                    if stor2[arg1].field_2048 and mem[_831] > -1 / stor2[arg1].field_2048:
                                        revert with 0, 17
                                    if not s * s * t:
                                        revert with 0, 18
                                    mem[mem[64]] = stor2[arg1].field_2048 * mem[_831] / s * s * t
                                else:
                                    if uint255(u) * 0.5 > 1:
                                        s = s * s
                                        t = s * t
                                        u = uint255(u) * 0.5
                                        continue 
                                    if s * t > -1 / s * s:
                                        revert with 0, 17
                                    if stor2[arg1].field_2048 and mem[_831] > -1 / stor2[arg1].field_2048:
                                        revert with 0, 17
                                    if not s * s * s * t:
                                        revert with 0, 18
                                    mem[mem[64]] = stor2[arg1].field_2048 * mem[_831] / s * s * s * t
                                return memory
                                  from mem[64]
                                   len 32
                            revert with 0, 17
                        if var81002 > -1 / var81001:
                            revert with 0, 17
                        if stor2[arg1].field_2048 and mem[_831] > -1 / stor2[arg1].field_2048:
                            revert with 0, 17
                        if not var81001 * var81002:
                            revert with 0, 18
                        mem[mem[64]] = stor2[arg1].field_2048 * mem[_831] / var81001 * var81002
        else:
            mem[ceil32(return_data.size) + _12 + 128] = 0
            require ext_code.size(stor2[arg1].field_1536)
            staticcall stor2[arg1].field_1536.0x313ce567 with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _287 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _291 = mem[_287]
            require mem[_287] == mem[_287 + 31 len 1]
            _297 = mem[64]
            mem[64] = mem[64] + 64
            mem[_297] = 3
            mem[_297 + 32] = 0x5553440000000000000000000000000000000000000000000000000000000000
            _299 = mem[64]
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
                _798 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _835 = mem[64]
                if mem[64] + 96 > test266151307() or mem[64] + 96 < mem[64]:
                    revert with 0, 65
                mem[64] = mem[64] + 96
                mem[_835] = mem[_798]
                mem[_835 + 32] = mem[_798 + 32]
                mem[_835 + 64] = mem[_798 + 64]
                if not uint8(_291):
                    if stor2[arg1].field_2048 and mem[_835] > -1 / stor2[arg1].field_2048:
                        revert with 0, 17
                    mem[mem[64]] = stor2[arg1].field_2048 * mem[_835]
                else:
                    if bool(bool(uint8(_291) < 78)) or bool(bool(uint8(_291) < 32)):
                        if 10^uint8(_291) > -1:
                            revert with 0, 17
                        if stor2[arg1].field_2048 and mem[_835] > -1 / stor2[arg1].field_2048:
                            revert with 0, 17
                        if not 10^uint8(_291):
                            revert with 0, 18
                        mem[mem[64]] = stor2[arg1].field_2048 * mem[_835] / 10^uint8(_291)
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
                                    if stor2[arg1].field_2048 and mem[_835] > -1 / stor2[arg1].field_2048:
                                        revert with 0, 17
                                    if not s * s * t:
                                        revert with 0, 18
                                    mem[mem[64]] = stor2[arg1].field_2048 * mem[_835] / s * s * t
                                else:
                                    if uint255(u) * 0.5 > 1:
                                        s = s * s
                                        t = s * t
                                        u = uint255(u) * 0.5
                                        continue 
                                    if s * t > -1 / s * s:
                                        revert with 0, 17
                                    if stor2[arg1].field_2048 and mem[_835] > -1 / stor2[arg1].field_2048:
                                        revert with 0, 17
                                    if not s * s * s * t:
                                        revert with 0, 18
                                    mem[mem[64]] = stor2[arg1].field_2048 * mem[_835] / s * s * s * t
                                return memory
                                  from mem[64]
                                   len 32
                            revert with 0, 17
                        if var81002 > -1 / var81001:
                            revert with 0, 17
                        if stor2[arg1].field_2048 and mem[_835] > -1 / stor2[arg1].field_2048:
                            revert with 0, 17
                        if not var81001 * var81002:
                            revert with 0, 18
                        mem[mem[64]] = stor2[arg1].field_2048 * mem[_835] / var81001 * var81002
            else:
                mem[mem[64] + _12 + 100] = 0
                mem[mem[64] + 36] = ceil32(_12) + 96
                mem[ceil32(_12) + _299 + 100] = 3
                mem[ceil32(_12) + _299 + 132] = 0x5553440000000000000000000000000000000000000000000000000000000000
                mem[ceil32(_12) + _299 + 135] = 0
                require ext_code.size(refAddress)
                staticcall refAddress.getReferenceData(string arg1, string arg2) with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len ceil32(_12) + _299 + -mem[64] + 160]
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _799 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _839 = mem[64]
                if mem[64] + 96 > test266151307() or mem[64] + 96 < mem[64]:
                    revert with 0, 65
                mem[64] = mem[64] + 96
                mem[_839] = mem[_799]
                mem[_839 + 32] = mem[_799 + 32]
                mem[_839 + 64] = mem[_799 + 64]
                if not uint8(_291):
                    if stor2[arg1].field_2048 and mem[_839] > -1 / stor2[arg1].field_2048:
                        revert with 0, 17
                    mem[mem[64]] = stor2[arg1].field_2048 * mem[_839]
                else:
                    if bool(bool(uint8(_291) < 78)) or bool(bool(uint8(_291) < 32)):
                        if 10^uint8(_291) > -1:
                            revert with 0, 17
                        if stor2[arg1].field_2048 and mem[_839] > -1 / stor2[arg1].field_2048:
                            revert with 0, 17
                        if not 10^uint8(_291):
                            revert with 0, 18
                        mem[mem[64]] = stor2[arg1].field_2048 * mem[_839] / 10^uint8(_291)
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
                                    if stor2[arg1].field_2048 and mem[_839] > -1 / stor2[arg1].field_2048:
                                        revert with 0, 17
                                    if not s * s * t:
                                        revert with 0, 18
                                    mem[mem[64]] = stor2[arg1].field_2048 * mem[_839] / s * s * t
                                else:
                                    if uint255(u) * 0.5 > 1:
                                        s = s * s
                                        t = s * t
                                        u = uint255(u) * 0.5
                                        continue 
                                    if s * t > -1 / s * s:
                                        revert with 0, 17
                                    if stor2[arg1].field_2048 and mem[_839] > -1 / stor2[arg1].field_2048:
                                        revert with 0, 17
                                    if not s * s * s * t:
                                        revert with 0, 18
                                    mem[mem[64]] = stor2[arg1].field_2048 * mem[_839] / s * s * s * t
                                return memory
                                  from mem[64]
                                   len 32
                            revert with 0, 17
                        if var82002 > -1 / var82001:
                            revert with 0, 17
                        if stor2[arg1].field_2048 and mem[_839] > -1 / stor2[arg1].field_2048:
                            revert with 0, 17
                        if not var82001 * var82002:
                            revert with 0, 18
                        mem[mem[64]] = stor2[arg1].field_2048 * mem[_839] / var82001 * var82002
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
        _13 = mem[mem[96] + 96]
        if mem[mem[96] + 96] > test266151307():
            revert with 0, 65
        if ceil32(mem[mem[96] + 96]) + 32 < 0 or ceil32(return_data.size) + ceil32(mem[mem[96] + 96]) + 128 > test266151307():
            revert with 0, 65
        mem[64] = ceil32(return_data.size) + ceil32(mem[mem[96] + 96]) + 128
        mem[ceil32(return_data.size) + 96] = _13
        require _11 + _13 + 32 <= return_data.size
        mem[ceil32(return_data.size) + 128 len ceil32(_13)] = mem[_11 + 128 len ceil32(_13)]
        if ceil32(_13) <= _13:
            require ext_code.size(stor2[arg1].field_1280)
            staticcall stor2[arg1].field_1280.0x313ce567 with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _284 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _288 = mem[_284]
            require mem[_284] == mem[_284 + 31 len 1]
            _292 = mem[64]
            mem[64] = mem[64] + 64
            mem[_292] = 3
            mem[_292 + 32] = 0x5553440000000000000000000000000000000000000000000000000000000000
            _294 = mem[64]
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
                _792 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _811 = mem[64]
                if mem[64] + 96 > test266151307() or mem[64] + 96 < mem[64]:
                    revert with 0, 65
                mem[64] = mem[64] + 96
                mem[_811] = mem[_792]
                mem[_811 + 32] = mem[_792 + 32]
                mem[_811 + 64] = mem[_792 + 64]
                if not uint8(_288):
                    if stor2[arg1].field_1792 and mem[_811] > -1 / stor2[arg1].field_1792:
                        revert with 0, 17
                    mem[mem[64]] = stor2[arg1].field_1792 * mem[_811]
                else:
                    if bool(bool(uint8(_288) < 78)) or bool(bool(uint8(_288) < 32)):
                        if 10^uint8(_288) > -1:
                            revert with 0, 17
                        if stor2[arg1].field_1792 and mem[_811] > -1 / stor2[arg1].field_1792:
                            revert with 0, 17
                        if not 10^uint8(_288):
                            revert with 0, 18
                        mem[mem[64]] = stor2[arg1].field_1792 * mem[_811] / 10^uint8(_288)
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
                                    if stor2[arg1].field_1792 and mem[_811] > -1 / stor2[arg1].field_1792:
                                        revert with 0, 17
                                    if not s * s * t:
                                        revert with 0, 18
                                    mem[mem[64]] = stor2[arg1].field_1792 * mem[_811] / s * s * t
                                else:
                                    if uint255(u) * 0.5 > 1:
                                        s = s * s
                                        t = s * t
                                        u = uint255(u) * 0.5
                                        continue 
                                    if s * t > -1 / s * s:
                                        revert with 0, 17
                                    if stor2[arg1].field_1792 and mem[_811] > -1 / stor2[arg1].field_1792:
                                        revert with 0, 17
                                    if not s * s * s * t:
                                        revert with 0, 18
                                    mem[mem[64]] = stor2[arg1].field_1792 * mem[_811] / s * s * s * t
                                return memory
                                  from mem[64]
                                   len 32
                            revert with 0, 17
                        if var81002 > -1 / var81001:
                            revert with 0, 17
                        if stor2[arg1].field_1792 and mem[_811] > -1 / stor2[arg1].field_1792:
                            revert with 0, 17
                        if not var81001 * var81002:
                            revert with 0, 18
                        mem[mem[64]] = stor2[arg1].field_1792 * mem[_811] / var81001 * var81002
            else:
                mem[mem[64] + _13 + 100] = 0
                mem[mem[64] + 36] = ceil32(_13) + 96
                mem[ceil32(_13) + _294 + 100] = 3
                mem[ceil32(_13) + _294 + 132] = 0x5553440000000000000000000000000000000000000000000000000000000000
                mem[ceil32(_13) + _294 + 135] = 0
                require ext_code.size(refAddress)
                staticcall refAddress.getReferenceData(string arg1, string arg2) with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len ceil32(_13) + _294 + -mem[64] + 160]
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _793 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _815 = mem[64]
                if mem[64] + 96 > test266151307() or mem[64] + 96 < mem[64]:
                    revert with 0, 65
                mem[64] = mem[64] + 96
                mem[_815] = mem[_793]
                mem[_815 + 32] = mem[_793 + 32]
                mem[_815 + 64] = mem[_793 + 64]
                if not uint8(_288):
                    if stor2[arg1].field_1792 and mem[_815] > -1 / stor2[arg1].field_1792:
                        revert with 0, 17
                    mem[mem[64]] = stor2[arg1].field_1792 * mem[_815]
                else:
                    if bool(bool(uint8(_288) < 78)) or bool(bool(uint8(_288) < 32)):
                        if 10^uint8(_288) > -1:
                            revert with 0, 17
                        if stor2[arg1].field_1792 and mem[_815] > -1 / stor2[arg1].field_1792:
                            revert with 0, 17
                        if not 10^uint8(_288):
                            revert with 0, 18
                        mem[mem[64]] = stor2[arg1].field_1792 * mem[_815] / 10^uint8(_288)
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
                                    if stor2[arg1].field_1792 and mem[_815] > -1 / stor2[arg1].field_1792:
                                        revert with 0, 17
                                    if not s * s * t:
                                        revert with 0, 18
                                    mem[mem[64]] = stor2[arg1].field_1792 * mem[_815] / s * s * t
                                else:
                                    if uint255(u) * 0.5 > 1:
                                        s = s * s
                                        t = s * t
                                        u = uint255(u) * 0.5
                                        continue 
                                    if s * t > -1 / s * s:
                                        revert with 0, 17
                                    if stor2[arg1].field_1792 and mem[_815] > -1 / stor2[arg1].field_1792:
                                        revert with 0, 17
                                    if not s * s * s * t:
                                        revert with 0, 18
                                    mem[mem[64]] = stor2[arg1].field_1792 * mem[_815] / s * s * s * t
                                return memory
                                  from mem[64]
                                   len 32
                            revert with 0, 17
                        if var82002 > -1 / var82001:
                            revert with 0, 17
                        if stor2[arg1].field_1792 and mem[_815] > -1 / stor2[arg1].field_1792:
                            revert with 0, 17
                        if not var82001 * var82002:
                            revert with 0, 18
                        mem[mem[64]] = stor2[arg1].field_1792 * mem[_815] / var82001 * var82002
        else:
            mem[ceil32(return_data.size) + _13 + 128] = 0
            require ext_code.size(stor2[arg1].field_1280)
            staticcall stor2[arg1].field_1280.0x313ce567 with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _286 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _290 = mem[_286]
            require mem[_286] == mem[_286 + 31 len 1]
            _295 = mem[64]
            mem[64] = mem[64] + 64
            mem[_295] = 3
            mem[_295 + 32] = 0x5553440000000000000000000000000000000000000000000000000000000000
            _298 = mem[64]
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
                _794 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _819 = mem[64]
                if mem[64] + 96 > test266151307() or mem[64] + 96 < mem[64]:
                    revert with 0, 65
                mem[64] = mem[64] + 96
                mem[_819] = mem[_794]
                mem[_819 + 32] = mem[_794 + 32]
                mem[_819 + 64] = mem[_794 + 64]
                if not uint8(_290):
                    if stor2[arg1].field_1792 and mem[_819] > -1 / stor2[arg1].field_1792:
                        revert with 0, 17
                    mem[mem[64]] = stor2[arg1].field_1792 * mem[_819]
                else:
                    if bool(bool(uint8(_290) < 78)) or bool(bool(uint8(_290) < 32)):
                        if 10^uint8(_290) > -1:
                            revert with 0, 17
                        if stor2[arg1].field_1792 and mem[_819] > -1 / stor2[arg1].field_1792:
                            revert with 0, 17
                        if not 10^uint8(_290):
                            revert with 0, 18
                        mem[mem[64]] = stor2[arg1].field_1792 * mem[_819] / 10^uint8(_290)
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
                                    if stor2[arg1].field_1792 and mem[_819] > -1 / stor2[arg1].field_1792:
                                        revert with 0, 17
                                    if not s * s * t:
                                        revert with 0, 18
                                    mem[mem[64]] = stor2[arg1].field_1792 * mem[_819] / s * s * t
                                else:
                                    if uint255(u) * 0.5 > 1:
                                        s = s * s
                                        t = s * t
                                        u = uint255(u) * 0.5
                                        continue 
                                    if s * t > -1 / s * s:
                                        revert with 0, 17
                                    if stor2[arg1].field_1792 and mem[_819] > -1 / stor2[arg1].field_1792:
                                        revert with 0, 17
                                    if not s * s * s * t:
                                        revert with 0, 18
                                    mem[mem[64]] = stor2[arg1].field_1792 * mem[_819] / s * s * s * t
                                return memory
                                  from mem[64]
                                   len 32
                            revert with 0, 17
                        if var82002 > -1 / var82001:
                            revert with 0, 17
                        if stor2[arg1].field_1792 and mem[_819] > -1 / stor2[arg1].field_1792:
                            revert with 0, 17
                        if not var82001 * var82002:
                            revert with 0, 18
                        mem[mem[64]] = stor2[arg1].field_1792 * mem[_819] / var82001 * var82002
            else:
                mem[mem[64] + _13 + 100] = 0
                mem[mem[64] + 36] = ceil32(_13) + 96
                mem[ceil32(_13) + _298 + 100] = 3
                mem[ceil32(_13) + _298 + 132] = 0x5553440000000000000000000000000000000000000000000000000000000000
                mem[ceil32(_13) + _298 + 135] = 0
                require ext_code.size(refAddress)
                staticcall refAddress.getReferenceData(string arg1, string arg2) with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len ceil32(_13) + _298 + -mem[64] + 160]
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _795 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _823 = mem[64]
                if mem[64] + 96 > test266151307() or mem[64] + 96 < mem[64]:
                    revert with 0, 65
                mem[64] = mem[64] + 96
                mem[_823] = mem[_795]
                mem[_823 + 32] = mem[_795 + 32]
                mem[_823 + 64] = mem[_795 + 64]
                if not uint8(_290):
                    if stor2[arg1].field_1792 and mem[_823] > -1 / stor2[arg1].field_1792:
                        revert with 0, 17
                    mem[mem[64]] = stor2[arg1].field_1792 * mem[_823]
                else:
                    if bool(bool(uint8(_290) < 78)) or bool(bool(uint8(_290) < 32)):
                        if 10^uint8(_290) > -1:
                            revert with 0, 17
                        if stor2[arg1].field_1792 and mem[_823] > -1 / stor2[arg1].field_1792:
                            revert with 0, 17
                        if not 10^uint8(_290):
                            revert with 0, 18
                        mem[mem[64]] = stor2[arg1].field_1792 * mem[_823] / 10^uint8(_290)
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
                                    if stor2[arg1].field_1792 and mem[_823] > -1 / stor2[arg1].field_1792:
                                        revert with 0, 17
                                    if not s * s * t:
                                        revert with 0, 18
                                    mem[mem[64]] = stor2[arg1].field_1792 * mem[_823] / s * s * t
                                else:
                                    if uint255(u) * 0.5 > 1:
                                        s = s * s
                                        t = s * t
                                        u = uint255(u) * 0.5
                                        continue 
                                    if s * t > -1 / s * s:
                                        revert with 0, 17
                                    if stor2[arg1].field_1792 and mem[_823] > -1 / stor2[arg1].field_1792:
                                        revert with 0, 17
                                    if not s * s * s * t:
                                        revert with 0, 18
                                    mem[mem[64]] = stor2[arg1].field_1792 * mem[_823] / s * s * s * t
                                return memory
                                  from mem[64]
                                   len 32
                            revert with 0, 17
                        if var83002 > -1 / var83001:
                            revert with 0, 17
                        if stor2[arg1].field_1792 and mem[_823] > -1 / stor2[arg1].field_1792:
                            revert with 0, 17
                        if not var83001 * var83002:
                            revert with 0, 18
                        mem[mem[64]] = stor2[arg1].field_1792 * mem[_823] / var83001 * var83002
    return memory
      from mem[64]
       len 32
}



}
