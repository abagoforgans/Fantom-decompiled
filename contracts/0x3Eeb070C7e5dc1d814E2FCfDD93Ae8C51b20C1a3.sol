contract main {




// =====================  Runtime code  =====================


address stor0;
address stor1;
address stor2;
address stor3;

function _fallback() payable {
    revert
}

function sub_6d2b2faa(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require ext_code.size(address(arg1))
    staticcall address(arg1).pid() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(stor1)
    staticcall stor1.0x1778809f with:
            gas gas_remaining wei
           args ext_call.return_data[0], address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return ext_call.return_data[0]
}

function sub_8685f6a2(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require ext_code.size(address(arg1))
    staticcall address(arg1).pid() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(stor0)
    staticcall stor0.0xa279b07f with:
            gas gas_remaining wei
           args ext_call.return_data[0], address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return ext_call.return_data[0]
}

function sub_60963599(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require ext_code.size(address(arg1))
    staticcall address(arg1).pid() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(stor0)
    staticcall stor0.0xa279b07f with:
            gas gas_remaining wei
           args ext_call.return_data[0], address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return (ext_call.return_data[0] / 100)
}

function sub_a4dddda0(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require ext_code.size(address(arg1))
    staticcall address(arg1).pid() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(stor1)
    staticcall stor1.0x1778809f with:
            gas gas_remaining wei
           args ext_call.return_data[0], address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return (ext_call.return_data[0] / 100)
}

function sub_3da751fc(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require ext_code.size(address(arg1))
    staticcall address(arg1).pid() with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    mem[ceil32(return_data.size) + 100] = ext_call.return_data[0]
    mem[ceil32(return_data.size) + 132] = address(arg1)
    require ext_code.size(stor1)
    staticcall stor1.0x1778809f with:
            gas gas_remaining wei
           args ext_call.return_data[0], address(arg1)
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    mem[(2 * ceil32(return_data.size)) + 96] = 26
    mem[(2 * ceil32(return_data.size)) + 128] = 'SafeMath: division by zero'
    mem[(2 * ceil32(return_data.size)) + 160] = 2
    mem[(2 * ceil32(return_data.size)) + 192] = 0x5cc61a78f164885776aa610fb0fe1257df78e59b
    mem[(2 * ceil32(return_data.size)) + 224] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
    mem[(2 * ceil32(return_data.size)) + 256] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[(2 * ceil32(return_data.size)) + 260] = ext_call.return_data[0] / 100
    mem[(2 * ceil32(return_data.size)) + 292] = 64
    mem[(2 * ceil32(return_data.size)) + 324] = 2
    idx = 0
    s = (2 * ceil32(return_data.size)) + 192
    t = (2 * ceil32(return_data.size)) + 356
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(stor3)
    staticcall stor3.getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args ext_call.return_data[0] / 100, Array(len=2, data=mem[(2 * ceil32(return_data.size)) + 356 len 64])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(2 * ceil32(return_data.size)) + 256 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (4 * ceil32(return_data.size)) + 256
    require return_data.size >= 32
    _29 = mem[(2 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, ext_call.return_data[0] / 100) >> 32
    require mem[(2 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, ext_call.return_data[0] / 100) >> 32 <= test266151307()
    require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, ext_call.return_data[0] / 100) >> 32 + 287 < (2 * ceil32(return_data.size)) + return_data.size + 256
    _30 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, ext_call.return_data[0] / 100) >> 32 + 256]
    if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, ext_call.return_data[0] / 100) >> 32 + 256] > test266151307():
        revert with 'NH{q', 65
    if (4 * ceil32(return_data.size)) + floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, ext_call.return_data[0] / 100) >> 32 + 256]) + 257 > test266151307() or floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, ext_call.return_data[0] / 100) >> 32 + 256]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = (4 * ceil32(return_data.size)) + floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, ext_call.return_data[0] / 100) >> 32 + 256]) + 257
    mem[(4 * ceil32(return_data.size)) + 256] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, ext_call.return_data[0] / 100) >> 32 + 256]
    require _29 + (32 * _30) + 32 <= return_data.size
    idx = (2 * ceil32(return_data.size)) + _29 + 288
    s = (4 * ceil32(return_data.size)) + 288
    while idx < (2 * ceil32(return_data.size)) + _29 + (32 * _30) + 288:
        require mem[idx] == mem[idx]
        mem[s] = mem[idx]
        idx = idx + 32
        s = s + 32
        continue 
    mem[mem[64]] = 32
    mem[mem[64] + 32] = _30
    mem[mem[64] + 64 len 32 * _30] = mem[(4 * ceil32(return_data.size)) + 288 len 32 * _30]
    return Array(len=_30, data=mem[mem[64] + 64 len 32 * _30])
}

function sub_ea12458e(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require ext_code.size(address(arg1))
    staticcall address(arg1).pid() with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    mem[ceil32(return_data.size) + 100] = ext_call.return_data[0]
    mem[ceil32(return_data.size) + 132] = address(arg1)
    require ext_code.size(stor0)
    staticcall stor0.0xa279b07f with:
            gas gas_remaining wei
           args ext_call.return_data[0], address(arg1)
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    mem[(2 * ceil32(return_data.size)) + 96] = 26
    mem[(2 * ceil32(return_data.size)) + 128] = 'SafeMath: division by zero'
    mem[(2 * ceil32(return_data.size)) + 160] = 2
    mem[(2 * ceil32(return_data.size)) + 192] = 0x841fad6eae12c286d1fd18d1d525dffa75c7effe
    mem[(2 * ceil32(return_data.size)) + 224] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
    mem[(2 * ceil32(return_data.size)) + 256] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[(2 * ceil32(return_data.size)) + 260] = ext_call.return_data[0] / 100
    mem[(2 * ceil32(return_data.size)) + 292] = 64
    mem[(2 * ceil32(return_data.size)) + 324] = 2
    idx = 0
    s = (2 * ceil32(return_data.size)) + 192
    t = (2 * ceil32(return_data.size)) + 356
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(stor2)
    staticcall stor2.getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args ext_call.return_data[0] / 100, Array(len=2, data=mem[(2 * ceil32(return_data.size)) + 356 len 64])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(2 * ceil32(return_data.size)) + 256 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (4 * ceil32(return_data.size)) + 256
    require return_data.size >= 32
    _29 = mem[(2 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, ext_call.return_data[0] / 100) >> 32
    require mem[(2 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, ext_call.return_data[0] / 100) >> 32 <= test266151307()
    require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, ext_call.return_data[0] / 100) >> 32 + 287 < (2 * ceil32(return_data.size)) + return_data.size + 256
    _30 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, ext_call.return_data[0] / 100) >> 32 + 256]
    if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, ext_call.return_data[0] / 100) >> 32 + 256] > test266151307():
        revert with 'NH{q', 65
    if (4 * ceil32(return_data.size)) + floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, ext_call.return_data[0] / 100) >> 32 + 256]) + 257 > test266151307() or floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, ext_call.return_data[0] / 100) >> 32 + 256]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = (4 * ceil32(return_data.size)) + floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, ext_call.return_data[0] / 100) >> 32 + 256]) + 257
    mem[(4 * ceil32(return_data.size)) + 256] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, ext_call.return_data[0] / 100) >> 32 + 256]
    require _29 + (32 * _30) + 32 <= return_data.size
    idx = (2 * ceil32(return_data.size)) + _29 + 288
    s = (4 * ceil32(return_data.size)) + 288
    while idx < (2 * ceil32(return_data.size)) + _29 + (32 * _30) + 288:
        require mem[idx] == mem[idx]
        mem[s] = mem[idx]
        idx = idx + 32
        s = s + 32
        continue 
    mem[mem[64]] = 32
    mem[mem[64] + 32] = _30
    mem[mem[64] + 64 len 32 * _30] = mem[(4 * ceil32(return_data.size)) + 288 len 32 * _30]
    return Array(len=_30, data=mem[mem[64] + 64 len 32 * _30])
}



}
