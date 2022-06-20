contract main {




// =====================  Runtime code  =====================


address sub_c4cf0995Address;

function sub_c4cf0995(?) payable {
    return sub_c4cf0995Address
}

function _fallback() payable {
    revert
}

function sub_aa93b124(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require ext_code.size(address(arg1))
    staticcall address(arg1).poolId() with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    mem[ceil32(return_data.size) + 100] = ext_call.return_data[0]
    mem[ceil32(return_data.size) + 132] = address(arg1)
    require ext_code.size(sub_c4cf0995Address)
    staticcall sub_c4cf0995Address.0xa279b07f with:
            gas gas_remaining wei
           args ext_call.return_data[0], address(arg1)
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    mem[(2 * ceil32(return_data.size)) + 96] = 2
    mem[(2 * ceil32(return_data.size)) + 128] = 0x841fad6eae12c286d1fd18d1d525dffa75c7effe
    mem[(2 * ceil32(return_data.size)) + 160] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
    require ext_code.size(address(arg1))
    staticcall address(arg1).unirouter() with:
            gas gas_remaining wei
    mem[(2 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[(4 * ceil32(return_data.size)) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[(4 * ceil32(return_data.size)) + 196] = ext_call.return_data[0]
    mem[(4 * ceil32(return_data.size)) + 228] = 64
    mem[(4 * ceil32(return_data.size)) + 260] = 2
    idx = 0
    s = (2 * ceil32(return_data.size)) + 128
    t = (4 * ceil32(return_data.size)) + 292
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args ext_call.return_data[0], Array(len=2, data=mem[(4 * ceil32(return_data.size)) + 292 len 64])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(4 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (6 * ceil32(return_data.size)) + 192
    require return_data.size >= 32
    _44 = mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28]
    require mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] <= test266151307()
    require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 223 < (4 * ceil32(return_data.size)) + return_data.size + 192
    _45 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]
    if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192] > test266151307():
        revert with 'NH{q', 65
    if (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 193 > test266151307() or floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 193
    mem[(6 * ceil32(return_data.size)) + 192] = _45
    require _44 + (32 * _45) + 32 <= return_data.size
    idx = 0
    s = (4 * ceil32(return_data.size)) + _44 + 224
    t = (6 * ceil32(return_data.size)) + 224
    while idx < _45:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[mem[64] + 4] = address(arg1)
    require ext_code.size(0x841fad6eae12c286d1fd18d1d525dffa75c7effe)
    staticcall 0x841fad6eae12c286d1fd18d1d525dffa75c7effe.balanceOf(address arg1) with:
            gas gas_remaining wei
           args address(arg1)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _68 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _69 = mem[_68]
    require mem[_68] == mem[_68]
    require ext_code.size(address(arg1))
    staticcall address(arg1).MAX_FEE() with:
            gas gas_remaining wei
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _72 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _73 = mem[_72]
    require mem[_72] == mem[_72]
    require ext_code.size(address(arg1))
    staticcall address(arg1).callFee() with:
            gas gas_remaining wei
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _76 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_76] == mem[_76]
    if _45 < 1:
        revert with 'NH{q', 17
    if _45 - 1 >= _45:
        revert with 'NH{q', 50
    if mem[(32 * _45 - 1) + (6 * ceil32(return_data.size)) + 224] and 45 > -1 / mem[(32 * _45 - 1) + (6 * ceil32(return_data.size)) + 224]:
        revert with 'NH{q', 17
    if 45 * mem[(32 * _45 - 1) + (6 * ceil32(return_data.size)) + 224] / 1000 and mem[_76] > -1 / 45 * mem[(32 * _45 - 1) + (6 * ceil32(return_data.size)) + 224] / 1000:
        revert with 'NH{q', 17
    if not _73:
        revert with 'NH{q', 18
    if 45 * mem[(32 * _45 - 1) + (6 * ceil32(return_data.size)) + 224] / 1000 * mem[_76] / _73 > -_69 - 1:
        revert with 'NH{q', 17
    mem[mem[64]] = (45 * mem[(32 * _45 - 1) + (6 * ceil32(return_data.size)) + 224] / 1000 * mem[_76] / _73) + _69
    return memory
      from mem[64]
       len 32
}

function sub_c148a60e(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require ext_code.size(address(arg1))
    staticcall address(arg1).poolId() with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    mem[ceil32(return_data.size) + 100] = ext_call.return_data[0]
    mem[ceil32(return_data.size) + 132] = address(arg1)
    require ext_code.size(sub_c4cf0995Address)
    staticcall sub_c4cf0995Address.0xa279b07f with:
            gas gas_remaining wei
           args ext_call.return_data[0], address(arg1)
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(address(arg1))
    staticcall address(arg1).uniRouter() with:
            gas gas_remaining wei
    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[(4 * ceil32(return_data.size)) + 96] = 0x35b644a300000000000000000000000000000000000000000000000000000000
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x35b644a3 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(4 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (6 * ceil32(return_data.size)) + 96
    require return_data.size >= 32
    _16 = mem[(4 * ceil32(return_data.size)) + 96]
    require mem[(4 * ceil32(return_data.size)) + 96] <= test266151307()
    require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96] + 127 < (4 * ceil32(return_data.size)) + return_data.size + 96
    _17 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96] + 96]
    if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96] + 96] > test266151307():
        revert with 'NH{q', 65
    if (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96] + 96]) + 97 > test266151307() or floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96] + 96]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96] + 96]) + 97
    mem[(6 * ceil32(return_data.size)) + 96] = _17
    require _16 + (32 * _17) + 32 <= return_data.size
    idx = 0
    s = (4 * ceil32(return_data.size)) + _16 + 128
    t = (6 * ceil32(return_data.size)) + 128
    while idx < _17:
        require mem[s] == mem[s + 12 len 20]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    _51 = mem[64]
    mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = ext_call.return_data[0]
    mem[mem[64] + 36] = 64
    mem[mem[64] + 68] = _17
    idx = 0
    s = (6 * ceil32(return_data.size)) + 128
    t = mem[64] + 100
    while idx < _17:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).mem[mem[64] len 4] with:
            gas gas_remaining wei
           args mem[mem[64] + 4 len _51 + (32 * _17) + -mem[64] + 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _87 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _88 = mem[_87]
    require mem[_87] <= test266151307()
    require _87 + mem[_87] + 31 < _87 + return_data.size
    _89 = mem[_87 + mem[_87]]
    if mem[_87 + mem[_87]] > test266151307():
        revert with 'NH{q', 65
    if _87 + ceil32(return_data.size) + floor32(mem[_87 + mem[_87]]) + 1 > test266151307() or floor32(mem[_87 + mem[_87]]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = _87 + ceil32(return_data.size) + floor32(mem[_87 + mem[_87]]) + 1
    mem[_87 + ceil32(return_data.size)] = _89
    require _88 + (32 * _89) + 32 <= return_data.size
    idx = 0
    s = _87 + _88 + 32
    t = _87 + ceil32(return_data.size) + 32
    while idx < _89:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[mem[64] + 4] = address(arg1)
    require ext_code.size(0x841fad6eae12c286d1fd18d1d525dffa75c7effe)
    staticcall 0x841fad6eae12c286d1fd18d1d525dffa75c7effe.balanceOf(address arg1) with:
            gas gas_remaining wei
           args address(arg1)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _120 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _121 = mem[_120]
    require mem[_120] == mem[_120]
    require ext_code.size(address(arg1))
    staticcall address(arg1).PERCENT_DIVISOR() with:
            gas gas_remaining wei
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _124 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _125 = mem[_124]
    require mem[_124] == mem[_124]
    require ext_code.size(address(arg1))
    staticcall address(arg1).callFee() with:
            gas gas_remaining wei
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _128 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _129 = mem[_128]
    require mem[_128] == mem[_128]
    require ext_code.size(address(arg1))
    staticcall address(arg1).PERCENT_DIVISOR() with:
            gas gas_remaining wei
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _132 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _133 = mem[_132]
    require mem[_132] == mem[_132]
    require ext_code.size(address(arg1))
    staticcall address(arg1).totalFee() with:
            gas gas_remaining wei
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _136 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_136] == mem[_136]
    if _89 < 1:
        revert with 'NH{q', 17
    if _89 - 1 >= _89:
        revert with 'NH{q', 50
    if mem[(32 * _89 - 1) + _87 + ceil32(return_data.size) + 32] and mem[_136] > -1 / mem[(32 * _89 - 1) + _87 + ceil32(return_data.size) + 32]:
        revert with 'NH{q', 17
    if not _133:
        revert with 'NH{q', 18
    if mem[(32 * _89 - 1) + _87 + ceil32(return_data.size) + 32] * mem[_136] / _133 and _129 > -1 / mem[(32 * _89 - 1) + _87 + ceil32(return_data.size) + 32] * mem[_136] / _133:
        revert with 'NH{q', 17
    if not _125:
        revert with 'NH{q', 18
    if mem[(32 * _89 - 1) + _87 + ceil32(return_data.size) + 32] * mem[_136] / _133 * _129 / _125 > -_121 - 1:
        revert with 'NH{q', 17
    mem[mem[64]] = (mem[(32 * _89 - 1) + _87 + ceil32(return_data.size) + 32] * mem[_136] / _133 * _129 / _125) + _121
    return memory
      from mem[64]
       len 32
}



}
