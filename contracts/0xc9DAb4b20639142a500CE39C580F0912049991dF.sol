contract main {




// =====================  Runtime code  =====================


address sub_722d01daAddress;

function sub_722d01da(?) payable {
    return sub_722d01daAddress
}

function _fallback() payable {
    revert
}

function sub_9340638e(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == arg2
    require ext_code.size(address(arg1))
    staticcall address(arg1).unirouter() with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(arg1))
    staticcall address(arg1).poolId() with:
            gas gas_remaining wei
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    mem[(2 * ceil32(return_data.size)) + 100] = ext_call.return_data[0]
    mem[(2 * ceil32(return_data.size)) + 132] = address(arg1)
    require ext_code.size(sub_722d01daAddress)
    staticcall sub_722d01daAddress.0xa279b07f with:
            gas gas_remaining wei
           args ext_call.return_data[0], address(arg1)
    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    mem[(4 * ceil32(return_data.size)) + 96] = 2
    mem[(4 * ceil32(return_data.size)) + 128] = 0x841fad6eae12c286d1fd18d1d525dffa75c7effe
    mem[(4 * ceil32(return_data.size)) + 160] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
    mem[(4 * ceil32(return_data.size)) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[(4 * ceil32(return_data.size)) + 196] = ext_call.return_data[0]
    mem[(4 * ceil32(return_data.size)) + 228] = 64
    mem[(4 * ceil32(return_data.size)) + 260] = 2
    idx = 0
    s = (4 * ceil32(return_data.size)) + 128
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
    _41 = mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28]
    require mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] <= test266151307()
    require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 223 < (4 * ceil32(return_data.size)) + return_data.size + 192
    _42 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]
    if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192] > test266151307():
        revert with 'NH{q', 65
    if (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 193 > test266151307() or floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 193
    mem[(6 * ceil32(return_data.size)) + 192] = _42
    require _41 + (32 * _42) + 32 <= return_data.size
    idx = 0
    s = (4 * ceil32(return_data.size)) + _41 + 224
    t = (6 * ceil32(return_data.size)) + 224
    while idx < _42:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(address(arg1))
    staticcall address(arg1).MAX_FEE() with:
            gas gas_remaining wei
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _61 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _62 = mem[_61]
    require mem[_61] == mem[_61]
    require ext_code.size(address(arg1))
    staticcall address(arg1).callFee() with:
            gas gas_remaining wei
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _65 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_65] == mem[_65]
    if _42 < 1:
        revert with 'NH{q', 17
    if _42 - 1 >= _42:
        revert with 'NH{q', 50
    if mem[(32 * _42 - 1) + (6 * ceil32(return_data.size)) + 224] and 45 > -1 / mem[(32 * _42 - 1) + (6 * ceil32(return_data.size)) + 224]:
        revert with 'NH{q', 17
    if 45 * mem[(32 * _42 - 1) + (6 * ceil32(return_data.size)) + 224] / 1000 and mem[_65] > -1 / 45 * mem[(32 * _42 - 1) + (6 * ceil32(return_data.size)) + 224] / 1000:
        revert with 'NH{q', 17
    if not _62:
        revert with 'NH{q', 18
    mem[mem[64]] = 45 * mem[(32 * _42 - 1) + (6 * ceil32(return_data.size)) + 224] / 1000 * mem[_65] / _62
    return memory
      from mem[64]
       len 32
}



}
