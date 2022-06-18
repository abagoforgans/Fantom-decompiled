contract main {




// =====================  Runtime code  =====================


const getBlockTimestamp = uint32(block.timestamp)


address owner;
uint32 PERIOD; offset 160
address sub_9478e212Address;
mapping of struct pair;

function getPair(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return pair[arg1].field_0, pair[arg1].field_256, pair[arg1].field_512, bool(pair[arg1].field_768)
}

function owner() payable {
    return owner
}

function sub_9478e212(?) payable {
    return sub_9478e212Address
}

function PERIOD() payable {
    return PERIOD
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

function setUniswapV2RouterAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_9478e212Address = arg1
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

function getReserves(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require ext_code.size(sub_9478e212Address)
    staticcall sub_9478e212Address.factory() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
            gas gas_remaining wei
           args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if not ext_call.return_data[12 len 20]:
        return 0
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    return ext_call.return_data[18 len 14], ext_call.return_data[32] << 144
}

function getRate(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require ext_code.size(sub_9478e212Address)
    staticcall sub_9478e212Address.factory() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
            gas gas_remaining wei
           args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if not ext_call.return_data[12 len 20]:
        return 0
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != arg1:
        if 0x10000000000000000000000000000 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff / Mask(112, 0, ext_call.return_data[0]) and Mask(112, 0, ext_call.return_data[0]):
            revert with 0, 17
        if not Mask(112, 0, ext_call.return_data[32]):
            revert with 0, 18
        require ext_code.size(arg2)
        staticcall arg2.0x313ce567 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
        return 4294967296 * Mask(112, 0, ext_call.return_data[0]) << 112 / Mask(112, 0, ext_call.return_data[32]), 
               uint8(ext_call.return_data[0])
    if 0x10000000000000000000000000000 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff / Mask(112, 0, ext_call.return_data[32]) and Mask(112, 0, ext_call.return_data[32]):
        revert with 0, 17
    if not Mask(112, 0, ext_call.return_data[0]):
        revert with 0, 18
    require ext_code.size(arg2)
    staticcall arg2.0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    return 4294967296 * Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0]), 
           uint8(ext_call.return_data[0])
}

function sub_28bcbb05(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    mem[96] = 2
    mem[128] = address(arg1)
    mem[160] = address(arg2)
    require ext_code.size(sub_9478e212Address)
    staticcall sub_9478e212Address.factory() with:
            gas gas_remaining wei
    mem[192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[ceil32(return_data.size) + 196] = address(arg1)
    mem[ceil32(return_data.size) + 228] = address(arg2)
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
            gas gas_remaining wei
           args address(arg1), address(arg2)
    mem[ceil32(return_data.size) + 192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if not ext_call.return_data[12 len 20]:
        return 0
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x313ce567 with:
            gas gas_remaining wei
    mem[(2 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    if not ext_call.return_data[31 len 1]:
        mem[(4 * ceil32(return_data.size)) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[(4 * ceil32(return_data.size)) + 196] = 1
        mem[(4 * ceil32(return_data.size)) + 228] = 64
        mem[(4 * ceil32(return_data.size)) + 260] = 2
        idx = 0
        s = (4 * ceil32(return_data.size)) + 292
        t = 128
        while idx < 2:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(sub_9478e212Address)
        staticcall sub_9478e212Address.getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args 1, Array(len=2, data=mem[(4 * ceil32(return_data.size)) + 292 len 64])
        if not ext_call.success:
            return 0
        mem[(4 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (6 * ceil32(return_data.size)) + 192
        require return_data.size >= 32
        _93 = mem[(4 * ceil32(return_data.size)) + 192 len 4], 0
        require mem[(4 * ceil32(return_data.size)) + 192 len 4], 0 <= test266151307()
        require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], 0 + 223 < (4 * ceil32(return_data.size)) + return_data.size + 192
        _96 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], 0 + 192]
        if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], 0 + 192] > test266151307():
            revert with 0, 65
        if (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], 0 + 192]) + 193 > test266151307() or ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], 0 + 192]) + 1 < 0:
            revert with 0, 65
        mem[64] = (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], 0 + 192]) + 193
        mem[(6 * ceil32(return_data.size)) + 192] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], 0 + 192]
        require return_data.size >= _93 + (32 * _96) + 32
        mem[(6 * ceil32(return_data.size)) + 224 len 32 * _96] = mem[(4 * ceil32(return_data.size)) + _93 + 224 len 32 * _96]
        if 1 >= _96:
            revert with 0, 50
        _156 = mem[(6 * ceil32(return_data.size)) + 256]
        require ext_code.size(address(arg2))
        staticcall address(arg2).0x313ce567 with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _162 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_162] == mem[_162 + 31 len 1]
        return _156, mem[_162 + 31 len 1]
    if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
        if 10^ext_call.return_data[31 len 1] > -1:
            revert with 0, 17
        mem[(4 * ceil32(return_data.size)) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[(4 * ceil32(return_data.size)) + 196] = 10^uint8(ext_call.return_data[0])
        mem[(4 * ceil32(return_data.size)) + 228] = 64
        mem[(4 * ceil32(return_data.size)) + 260] = 2
        idx = 0
        s = (4 * ceil32(return_data.size)) + 292
        t = 128
        while idx < 2:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(sub_9478e212Address)
        staticcall sub_9478e212Address.getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args 10^uint8(ext_call.return_data[0]), Array(len=2, data=mem[(4 * ceil32(return_data.size)) + 292 len 64])
        if not ext_call.success:
            return 0
        mem[(4 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (6 * ceil32(return_data.size)) + 192
        require return_data.size >= 32
        _91 = mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32
        require mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 <= test266151307()
        require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 223 < (4 * ceil32(return_data.size)) + return_data.size + 192
        _95 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]
        if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192] > test266151307():
            revert with 0, 65
        if (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]) + 193 > test266151307() or ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]) + 1 < 0:
            revert with 0, 65
        mem[64] = (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]) + 193
        mem[(6 * ceil32(return_data.size)) + 192] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]
        require return_data.size >= _91 + (32 * _95) + 32
        mem[(6 * ceil32(return_data.size)) + 224 len 32 * _95] = mem[(4 * ceil32(return_data.size)) + _91 + 224 len 32 * _95]
        if 1 >= _95:
            revert with 0, 50
        _153 = mem[(6 * ceil32(return_data.size)) + 256]
        require ext_code.size(address(arg2))
        staticcall address(arg2).0x313ce567 with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _161 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_161] == mem[_161 + 31 len 1]
        return _153, mem[_161 + 31 len 1]
    s = 10
    t = 1
    idx = ext_call.return_data[31 len 1]
    while idx > 1:
        if s > -1 / s:
            revert with 0, 17
        if not bool(idx):
            s = s * s
            t = t
            idx = uint255(idx) * 0.5
            continue 
        s = s * s
        t = s * t
        idx = uint255(idx) * 0.5
        continue 
    if t > -1 / s:
        revert with 0, 17
    if s * t > -1:
        revert with 0, 17
    mem[(4 * ceil32(return_data.size)) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[(4 * ceil32(return_data.size)) + 196] = s * t
    mem[(4 * ceil32(return_data.size)) + 228] = 64
    mem[(4 * ceil32(return_data.size)) + 260] = 2
    idx = 0
    u = (4 * ceil32(return_data.size)) + 292
    v = 128
    while idx < 2:
        mem[u] = mem[v + 12 len 20]
        idx = idx + 1
        u = u + 32
        v = v + 32
        continue 
    require ext_code.size(sub_9478e212Address)
    staticcall sub_9478e212Address.getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args s * t, Array(len=2, data=mem[(4 * ceil32(return_data.size)) + 292 len 64])
    if not ext_call.success:
        return 0
    mem[(4 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (6 * ceil32(return_data.size)) + 192
    require return_data.size >= 32
    _160 = mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, s * t) >> 32
    require mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, s * t) >> 32 <= test266151307()
    require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, s * t) >> 32 + 223 < (4 * ceil32(return_data.size)) + return_data.size + 192
    _163 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, s * t) >> 32 + 192]
    if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, s * t) >> 32 + 192] > test266151307():
        revert with 0, 65
    if (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, s * t) >> 32 + 192]) + 193 > test266151307() or ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, s * t) >> 32 + 192]) + 1 < 0:
        revert with 0, 65
    mem[64] = (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, s * t) >> 32 + 192]) + 193
    mem[(6 * ceil32(return_data.size)) + 192] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, s * t) >> 32 + 192]
    require return_data.size >= _160 + (32 * _163) + 32
    mem[(6 * ceil32(return_data.size)) + 224 len 32 * _163] = mem[(4 * ceil32(return_data.size)) + _160 + 224 len 32 * _163]
    if 1 >= _163:
        revert with 0, 50
    _186 = mem[(6 * ceil32(return_data.size)) + 256]
    require ext_code.size(address(arg2))
    staticcall address(arg2).0x313ce567 with:
            gas gas_remaining wei
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _189 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_189] == mem[_189 + 31 len 1]
    return _186, mem[_189 + 31 len 1]
}



}
