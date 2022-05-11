contract main {




// =====================  Runtime code  =====================


#
#  - getAddressFromBytes(bytes arg1)
#  - getPoolFallback(address arg1, uint256 arg2, address arg3)
#  - getTokenDetails(address arg1)
#  - getPoolStandard(address arg1, uint256 arg2, address arg3)
#  - fetchPools(address arg1, address arg2, uint256 arg3, uint256 arg4)
#  - getUint32FromBytes(bytes arg1)
#
address checkerAddress;

function checker() payable {
    return checkerAddress
}

function _fallback() payable {
    revert
}

function getTotal(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require ext_code.size(arg2)
    staticcall arg2.balanceOf(address arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        return 0
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function isStandardChef(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(checkerAddress)
    staticcall checkerAddress.0x34363eab with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        return 0
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    return bool(ext_call.return_data[0])
}

function getTokenName(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[96] = 7
    mem[128] = 0x554e4b4e4f574e00000000000000000000000000000000000000000000000000
    mem[160] = 7
    mem[192] = 0x554e4b4e4f574e00000000000000000000000000000000000000000000000000
    mem[224] = 0x6fdde0300000000000000000000000000000000000000000000000000000000
    require ext_code.size(arg1)
    staticcall arg1.name() with:
            gas gas_remaining wei
    if not ext_call.success:
        mem[224] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
        require ext_code.size(arg1)
        staticcall arg1.symbol() with:
                gas gas_remaining wei
        if not ext_call.success:
            return 64, 128, 7, 0, 0, 7, 0, 0
        mem[224 len return_data.size] = ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        _12 = mem[224]
        require mem[224] <= test266151307()
        require return_data.size + 224 > mem[224] + 255
        _14 = mem[mem[224] + 224]
        if mem[mem[224] + 224] > test266151307():
            revert with 0, 65
        if ceil32(ceil32(mem[mem[224] + 224])) + 1 < 0 or ceil32(return_data.size) + ceil32(ceil32(mem[mem[224] + 224])) + 225 > test266151307():
            revert with 0, 65
        mem[64] = ceil32(return_data.size) + ceil32(ceil32(mem[mem[224] + 224])) + 225
        mem[ceil32(return_data.size) + 224] = mem[mem[224] + 224]
        require _12 + _14 + 32 <= return_data.size
        mem[ceil32(return_data.size) + 256 len ceil32(_14)] = mem[_12 + 256 len ceil32(_14)]
        if ceil32(_14) <= _14:
            _135 = mem[64]
            mem[mem[64]] = 64
            mem[mem[64] + 64] = 7
            mem[mem[64] + 96] = 0x554e4b4e4f574e00000000000000000000000000000000000000000000000000
            mem[mem[64] + 103] = 0
            mem[mem[64] + 32] = 128
            _259 = mem[ceil32(return_data.size) + 224]
            mem[_135 + 128] = mem[ceil32(return_data.size) + 224]
            mem[_135 + 160 len ceil32(_259)] = mem[ceil32(return_data.size) + 256 len ceil32(_259)]
            if ceil32(_259) > _259:
                mem[_135 + _259 + 160] = 0
            return memory
              from mem[64]
               len ceil32(_259) + _135 + -mem[64] + 160
        mem[ceil32(return_data.size) + _14 + 256] = 0
        _139 = mem[64]
        mem[mem[64]] = 64
        mem[mem[64] + 64] = 7
        mem[mem[64] + 96] = 0x554e4b4e4f574e00000000000000000000000000000000000000000000000000
        mem[mem[64] + 103] = 0
        mem[mem[64] + 32] = 128
        _260 = mem[ceil32(return_data.size) + 224]
        mem[_139 + 128] = mem[ceil32(return_data.size) + 224]
        mem[_139 + 160 len ceil32(_260)] = mem[ceil32(return_data.size) + 256 len ceil32(_260)]
        if ceil32(_260) > _260:
            mem[_139 + _260 + 160] = 0
        return memory
          from mem[64]
           len ceil32(_260) + _139 + -mem[64] + 160
    mem[224 len return_data.size] = ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    _8 = mem[224]
    require mem[224] <= test266151307()
    require return_data.size + 224 > mem[224] + 255
    _10 = mem[mem[224] + 224]
    if mem[mem[224] + 224] > test266151307():
        revert with 0, 65
    if ceil32(ceil32(mem[mem[224] + 224])) + 1 < 0 or ceil32(return_data.size) + ceil32(ceil32(mem[mem[224] + 224])) + 225 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(return_data.size) + ceil32(ceil32(mem[mem[224] + 224])) + 225
    mem[ceil32(return_data.size) + 224] = mem[mem[224] + 224]
    require _8 + _10 + 32 <= return_data.size
    mem[ceil32(return_data.size) + 256 len ceil32(_10)] = mem[_8 + 256 len ceil32(_10)]
    if ceil32(_10) <= _10:
        mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
        require ext_code.size(arg1)
        staticcall arg1.symbol() with:
                gas gas_remaining wei
        if not ext_call.success:
            _147 = mem[64]
            mem[mem[64]] = 64
            mem[mem[64] + 64] = _10
            mem[mem[64] + 96 len ceil32(_10)] = mem[ceil32(return_data.size) + 256 len ceil32(_10)]
            if ceil32(_10) > _10:
                mem[mem[64] + _10 + 96] = 0
            mem[mem[64] + 32] = ceil32(_10) + 96
            mem[ceil32(_10) + _147 + 96] = 7
            mem[ceil32(_10) + _147 + 128] = 0x554e4b4e4f574e00000000000000000000000000000000000000000000000000
            mem[ceil32(_10) + _147 + 135] = 0
            return memory
              from mem[64]
               len ceil32(_10) + _147 + -mem[64] + 160
        _144 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _148 = mem[_144]
        require mem[_144] <= test266151307()
        require _144 + return_data.size > _144 + mem[_144] + 31
        _157 = mem[_144 + mem[_144]]
        if mem[_144 + mem[_144]] > test266151307():
            revert with 0, 65
        if ceil32(ceil32(mem[_144 + mem[_144]])) + 1 < 0 or _144 + ceil32(return_data.size) + ceil32(ceil32(mem[_144 + mem[_144]])) + 1 > test266151307():
            revert with 0, 65
        mem[64] = _144 + ceil32(return_data.size) + ceil32(ceil32(mem[_144 + mem[_144]])) + 1
        mem[_144 + ceil32(return_data.size)] = _157
        require _148 + _157 + 32 <= return_data.size
        mem[_144 + ceil32(return_data.size) + 32 len ceil32(_157)] = mem[_144 + _148 + 32 len ceil32(_157)]
        if ceil32(_157) <= _157:
            _263 = mem[64]
            mem[mem[64]] = 64
            _274 = mem[ceil32(return_data.size) + 224]
            mem[mem[64] + 64] = mem[ceil32(return_data.size) + 224]
            mem[mem[64] + 96 len ceil32(_274)] = mem[ceil32(return_data.size) + 256 len ceil32(_274)]
            if ceil32(_274) > _274:
                mem[mem[64] + _274 + 96] = 0
            mem[mem[64] + 32] = ceil32(_274) + 96
            mem[ceil32(_274) + _263 + 96] = _157
            mem[ceil32(_274) + _263 + 128 len ceil32(_157)] = mem[_144 + ceil32(return_data.size) + 32 len ceil32(_157)]
            if ceil32(_157) > _157:
                mem[ceil32(_274) + _263 + _157 + 128] = 0
            return memory
              from mem[64]
               len ceil32(_157) + ceil32(_274) + _263 + -mem[64] + 128
        mem[_144 + ceil32(return_data.size) + _157 + 32] = 0
        _268 = mem[64]
        mem[mem[64]] = 64
        _277 = mem[ceil32(return_data.size) + 224]
        mem[mem[64] + 64] = mem[ceil32(return_data.size) + 224]
        mem[mem[64] + 96 len ceil32(_277)] = mem[ceil32(return_data.size) + 256 len ceil32(_277)]
        if ceil32(_277) > _277:
            mem[mem[64] + _277 + 96] = 0
        mem[mem[64] + 32] = ceil32(_277) + 96
        mem[ceil32(_277) + _268 + 96] = _157
        mem[ceil32(_277) + _268 + 128 len ceil32(_157)] = mem[_144 + ceil32(return_data.size) + 32 len ceil32(_157)]
        if ceil32(_157) > _157:
            mem[ceil32(_277) + _268 + _157 + 128] = 0
        return memory
          from mem[64]
           len ceil32(_157) + ceil32(_277) + _268 + -mem[64] + 128
    mem[ceil32(return_data.size) + _10 + 256] = 0
    mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
    require ext_code.size(arg1)
    staticcall arg1.symbol() with:
            gas gas_remaining wei
    if not ext_call.success:
        _151 = mem[64]
        mem[mem[64]] = 64
        mem[mem[64] + 64] = _10
        mem[mem[64] + 96 len ceil32(_10)] = mem[ceil32(return_data.size) + 256 len ceil32(_10)]
        if ceil32(_10) > _10:
            mem[mem[64] + _10 + 96] = 0
        mem[mem[64] + 32] = ceil32(_10) + 96
        mem[ceil32(_10) + _151 + 96] = 7
        mem[ceil32(_10) + _151 + 128] = 0x554e4b4e4f574e00000000000000000000000000000000000000000000000000
        mem[ceil32(_10) + _151 + 135] = 0
        return memory
          from mem[64]
           len ceil32(_10) + _151 + -mem[64] + 160
    _146 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _152 = mem[_146]
    require mem[_146] <= test266151307()
    require _146 + return_data.size > _146 + mem[_146] + 31
    _160 = mem[_146 + mem[_146]]
    if mem[_146 + mem[_146]] > test266151307():
        revert with 0, 65
    if ceil32(ceil32(mem[_146 + mem[_146]])) + 1 < 0 or _146 + ceil32(return_data.size) + ceil32(ceil32(mem[_146 + mem[_146]])) + 1 > test266151307():
        revert with 0, 65
    mem[64] = _146 + ceil32(return_data.size) + ceil32(ceil32(mem[_146 + mem[_146]])) + 1
    mem[_146 + ceil32(return_data.size)] = _160
    require _152 + _160 + 32 <= return_data.size
    mem[_146 + ceil32(return_data.size) + 32 len ceil32(_160)] = mem[_146 + _152 + 32 len ceil32(_160)]
    if ceil32(_160) <= _160:
        _264 = mem[64]
        mem[mem[64]] = 64
        _276 = mem[ceil32(return_data.size) + 224]
        mem[mem[64] + 64] = mem[ceil32(return_data.size) + 224]
        mem[mem[64] + 96 len ceil32(_276)] = mem[ceil32(return_data.size) + 256 len ceil32(_276)]
        if ceil32(_276) > _276:
            mem[mem[64] + _276 + 96] = 0
        mem[mem[64] + 32] = ceil32(_276) + 96
        mem[ceil32(_276) + _264 + 96] = _160
        mem[ceil32(_276) + _264 + 128 len ceil32(_160)] = mem[_146 + ceil32(return_data.size) + 32 len ceil32(_160)]
        if ceil32(_160) > _160:
            mem[ceil32(_276) + _264 + _160 + 128] = 0
        return memory
          from mem[64]
           len ceil32(_160) + ceil32(_276) + _264 + -mem[64] + 128
    mem[_146 + ceil32(return_data.size) + _160 + 32] = 0
    _270 = mem[64]
    mem[mem[64]] = 64
    _278 = mem[ceil32(return_data.size) + 224]
    mem[mem[64] + 64] = mem[ceil32(return_data.size) + 224]
    mem[mem[64] + 96 len ceil32(_278)] = mem[ceil32(return_data.size) + 256 len ceil32(_278)]
    if ceil32(_278) > _278:
        mem[mem[64] + _278 + 96] = 0
    mem[mem[64] + 32] = ceil32(_278) + 96
    mem[ceil32(_278) + _270 + 96] = _160
    mem[ceil32(_278) + _270 + 128 len ceil32(_160)] = mem[_146 + ceil32(return_data.size) + 32 len ceil32(_160)]
    if ceil32(_160) > _160:
        mem[ceil32(_278) + _270 + _160 + 128] = 0
    return memory
      from mem[64]
       len ceil32(_160) + ceil32(_278) + _270 + -mem[64] + 128
}



}
