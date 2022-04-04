contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function sub_441c38cf(?) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(arg1)
    staticcall arg1.allPairsLength() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function getPair(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(arg1)
    staticcall arg1.allPairs(uint256 rg1) with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[12 len 20]
}

function getPairFor(address arg1, address arg2, address arg3) payable {
    require calldata.size - 4 >= 96
    if arg2 == arg3:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x54556e697377617056324c6962726172793a204944454e544943414c5f4144445245535345,
                    mem[201 len 27]
    if arg2 < arg3:
        if not arg2:
            revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
        return address(sha3(0, arg1, sha3(arg2, arg3), 0xe18a34eb0e04b04f7a0ac29a6e80748dca96319b42c54d679cb821dca90c6303))
    if not arg3:
        revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
    return address(sha3(0, arg1, sha3(arg3, arg2), 0xe18a34eb0e04b04f7a0ac29a6e80748dca96319b42c54d679cb821dca90c6303))
}

function sub_4ce6e8e6(?) payable {
    require calldata.size - 4 >= 96
    if arg2 == arg3:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x54556e697377617056324c6962726172793a204944454e544943414c5f4144445245535345,
                    mem[201 len 27]
    if arg2 < arg3:
        if not arg2:
            revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
        if arg2 == arg3:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        37,
                        0x54556e697377617056324c6962726172793a204944454e544943414c5f4144445245535345,
                        mem[201 len 27]
        if arg2 < arg3:
            if not arg2:
                revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
            require ext_code.size(address(sha3(0, arg1, sha3(arg2, arg3), 0xe18a34eb0e04b04f7a0ac29a6e80748dca96319b42c54d679cb821dca90c6303)))
            staticcall address(sha3(0, arg1, sha3(arg2, arg3), 0xe18a34eb0e04b04f7a0ac29a6e80748dca96319b42c54d679cb821dca90c6303)).getReserves() with:
                    gas gas_remaining wei
        else:
            if not arg3:
                revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
            require ext_code.size(address(sha3(0, arg1, sha3(arg3, arg2), 0xe18a34eb0e04b04f7a0ac29a6e80748dca96319b42c54d679cb821dca90c6303)))
            staticcall address(sha3(0, arg1, sha3(arg3, arg2), 0xe18a34eb0e04b04f7a0ac29a6e80748dca96319b42c54d679cb821dca90c6303)).getReserves() with:
                    gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        if arg2 == arg2:
            return ext_call.return_data[18 len 14], ext_call.return_data[32] << 144
    else:
        if not arg3:
            revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
        if arg2 == arg3:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        37,
                        0x54556e697377617056324c6962726172793a204944454e544943414c5f4144445245535345,
                        mem[201 len 27]
        if arg2 < arg3:
            if not arg2:
                revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
            require ext_code.size(address(sha3(0, arg1, sha3(arg2, arg3), 0xe18a34eb0e04b04f7a0ac29a6e80748dca96319b42c54d679cb821dca90c6303)))
            staticcall address(sha3(0, arg1, sha3(arg2, arg3), 0xe18a34eb0e04b04f7a0ac29a6e80748dca96319b42c54d679cb821dca90c6303)).getReserves() with:
                    gas gas_remaining wei
        else:
            if not arg3:
                revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
            require ext_code.size(address(sha3(0, arg1, sha3(arg3, arg2), 0xe18a34eb0e04b04f7a0ac29a6e80748dca96319b42c54d679cb821dca90c6303)))
            staticcall address(sha3(0, arg1, sha3(arg3, arg2), 0xe18a34eb0e04b04f7a0ac29a6e80748dca96319b42c54d679cb821dca90c6303)).getReserves() with:
                    gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        if arg2 == arg3:
            return ext_call.return_data[18 len 14], ext_call.return_data[32] << 144
    return ext_call.return_data[50 len 14], ext_call.return_data[0] << 144
}

function sub_dee9f0a6(?) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(arg1)
    staticcall arg1.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    staticcall arg1.token1() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    staticcall arg1.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[96] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).symbol() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _16 = mem[96]
    require mem[96] <= 4294967296
    require mem[96] + 32 <= return_data.size
    require mem[mem[96] + 96] <= 4294967296 and mem[96] + mem[mem[96] + 96] + 32 <= return_data.size
    mem[ceil32(return_data.size) + 96] = mem[mem[96] + 96]
    _19 = mem[_16 + 96]
    mem[ceil32(return_data.size) + 128 len ceil32(mem[_16 + 96])] = mem[_16 + 128 len ceil32(mem[_16 + 96])]
    if not _19 % 32:
        require ext_code.size(arg1)
        staticcall arg1.token1() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[_19 + ceil32(return_data.size) + 128] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).symbol() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[_19 + ceil32(return_data.size) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = _19 + (2 * ceil32(return_data.size)) + 128
        require return_data.size >= 32
        _131 = mem[_19 + ceil32(return_data.size) + 128]
        require mem[_19 + ceil32(return_data.size) + 128] <= 4294967296
        require mem[_19 + ceil32(return_data.size) + 128] + 32 <= return_data.size
        require mem[mem[_19 + ceil32(return_data.size) + 128] + _19 + ceil32(return_data.size) + 128] <= 4294967296 and mem[_19 + ceil32(return_data.size) + 128] + mem[mem[_19 + ceil32(return_data.size) + 128] + _19 + ceil32(return_data.size) + 128] + 32 <= return_data.size
        mem[_19 + (2 * ceil32(return_data.size)) + 128] = mem[mem[_19 + ceil32(return_data.size) + 128] + _19 + ceil32(return_data.size) + 128]
        _137 = mem[_131 + _19 + ceil32(return_data.size) + 128]
        mem[_19 + (2 * ceil32(return_data.size)) + 160 len ceil32(mem[_131 + _19 + ceil32(return_data.size) + 128])] = mem[_131 + _19 + ceil32(return_data.size) + 160 len ceil32(mem[_131 + _19 + ceil32(return_data.size) + 128])]
        if not _137 % 32:
            mem[64] = _137 + _19 + (2 * ceil32(return_data.size)) + 160
            mem[_137 + _19 + (2 * ceil32(return_data.size)) + 160] = address(ext_call.return_data[0])
            mem[_137 + _19 + (2 * ceil32(return_data.size)) + 224] = address(ext_call.return_data[0])
            mem[_137 + _19 + (2 * ceil32(return_data.size)) + 192] = 128
            mem[_137 + _19 + (2 * ceil32(return_data.size)) + 288] = mem[ceil32(return_data.size) + 96]
            _218 = mem[ceil32(return_data.size) + 96]
            mem[_137 + _19 + (2 * ceil32(return_data.size)) + 320 len ceil32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len ceil32(mem[ceil32(return_data.size) + 96])]
            mem[_137 + _19 + (2 * ceil32(return_data.size)) + 256] = mem[ceil32(return_data.size) + 96] + 160
            mem[mem[ceil32(return_data.size) + 96] + _137 + _19 + (2 * ceil32(return_data.size)) + 320] = mem[_19 + (2 * ceil32(return_data.size)) + 128]
            mem[mem[ceil32(return_data.size) + 96] + _137 + _19 + (2 * ceil32(return_data.size)) + 352 len ceil32(mem[_19 + (2 * ceil32(return_data.size)) + 128])] = mem[_19 + (2 * ceil32(return_data.size)) + 160 len ceil32(mem[_19 + (2 * ceil32(return_data.size)) + 128])]
            if not mem[_19 + (2 * ceil32(return_data.size)) + 128] % 32:
                return address(ext_call.return_data[0]), 
                       Array(len=mem[ceil32(return_data.size) + 96], data=mem[_137 + _19 + (2 * ceil32(return_data.size)) + 320 len mem[_19 + (2 * ceil32(return_data.size)) + 128] + mem[ceil32(return_data.size) + 96] + 32]),
                       address(ext_call.return_data[0]),
                       mem[ceil32(return_data.size) + 96] + 160
            mem[floor32(mem[_19 + (2 * ceil32(return_data.size)) + 128]) + mem[ceil32(return_data.size) + 96] + _137 + _19 + (2 * ceil32(return_data.size)) + 352] = mem[floor32(mem[_19 + (2 * ceil32(return_data.size)) + 128]) + mem[ceil32(return_data.size) + 96] + _137 + _19 + (2 * ceil32(return_data.size)) + -(mem[_19 + (2 * ceil32(return_data.size)) + 128] % 32) + 384 len mem[_19 + (2 * ceil32(return_data.size)) + 128] % 32]
            return address(ext_call.return_data[0]), 
                   128,
                   address(ext_call.return_data[0]),
                   mem[_137 + _19 + (2 * ceil32(return_data.size)) + 256 len floor32(mem[_19 + (2 * ceil32(return_data.size)) + 128]) + _218 + 128]
        mem[floor32(_137) + _19 + (2 * ceil32(return_data.size)) + 160] = mem[floor32(_137) + _19 + (2 * ceil32(return_data.size)) + -(_137 % 32) + 192 len _137 % 32]
        mem[64] = floor32(_137) + _19 + (2 * ceil32(return_data.size)) + 192
        mem[floor32(_137) + _19 + (2 * ceil32(return_data.size)) + 192] = address(ext_call.return_data[0])
        mem[floor32(_137) + _19 + (2 * ceil32(return_data.size)) + 256] = address(ext_call.return_data[0])
        mem[floor32(_137) + _19 + (2 * ceil32(return_data.size)) + 224] = 128
        mem[floor32(_137) + _19 + (2 * ceil32(return_data.size)) + 320] = mem[ceil32(return_data.size) + 96]
        _224 = mem[ceil32(return_data.size) + 96]
        mem[floor32(_137) + _19 + (2 * ceil32(return_data.size)) + 352 len ceil32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len ceil32(mem[ceil32(return_data.size) + 96])]
        mem[floor32(_137) + _19 + (2 * ceil32(return_data.size)) + 288] = mem[ceil32(return_data.size) + 96] + 160
        mem[mem[ceil32(return_data.size) + 96] + floor32(_137) + _19 + (2 * ceil32(return_data.size)) + 352] = mem[_19 + (2 * ceil32(return_data.size)) + 128]
        mem[mem[ceil32(return_data.size) + 96] + floor32(_137) + _19 + (2 * ceil32(return_data.size)) + 384 len ceil32(mem[_19 + (2 * ceil32(return_data.size)) + 128])] = mem[_19 + (2 * ceil32(return_data.size)) + 160 len ceil32(mem[_19 + (2 * ceil32(return_data.size)) + 128])]
        if not mem[_19 + (2 * ceil32(return_data.size)) + 128] % 32:
            return address(ext_call.return_data[0]), 
                   Array(len=mem[ceil32(return_data.size) + 96], data=mem[floor32(_137) + _19 + (2 * ceil32(return_data.size)) + 352 len mem[_19 + (2 * ceil32(return_data.size)) + 128] + mem[ceil32(return_data.size) + 96] + 32]),
                   address(ext_call.return_data[0]),
                   mem[ceil32(return_data.size) + 96] + 160
        mem[floor32(mem[_19 + (2 * ceil32(return_data.size)) + 128]) + mem[ceil32(return_data.size) + 96] + floor32(_137) + _19 + (2 * ceil32(return_data.size)) + 384] = mem[floor32(mem[_19 + (2 * ceil32(return_data.size)) + 128]) + mem[ceil32(return_data.size) + 96] + floor32(_137) + _19 + (2 * ceil32(return_data.size)) + -(mem[_19 + (2 * ceil32(return_data.size)) + 128] % 32) + 416 len mem[_19 + (2 * ceil32(return_data.size)) + 128] % 32]
        return address(ext_call.return_data[0]), 
               128,
               address(ext_call.return_data[0]),
               mem[floor32(_137) + _19 + (2 * ceil32(return_data.size)) + 288 len floor32(mem[_19 + (2 * ceil32(return_data.size)) + 128]) + _224 + 128]
    mem[floor32(_19) + ceil32(return_data.size) + 128] = mem[floor32(_19) + ceil32(return_data.size) + -(_19 % 32) + 160 len _19 % 32]
    require ext_code.size(arg1)
    staticcall arg1.token1() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[floor32(_19) + ceil32(return_data.size) + 160] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).symbol() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[floor32(_19) + ceil32(return_data.size) + 160 len return_data.size] = ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    _134 = mem[floor32(_19) + ceil32(return_data.size) + 160]
    require mem[floor32(_19) + ceil32(return_data.size) + 160] <= 4294967296
    require mem[floor32(_19) + ceil32(return_data.size) + 160] + 32 <= return_data.size
    require mem[mem[floor32(_19) + ceil32(return_data.size) + 160] + floor32(_19) + ceil32(return_data.size) + 160] <= 4294967296 and mem[floor32(_19) + ceil32(return_data.size) + 160] + mem[mem[floor32(_19) + ceil32(return_data.size) + 160] + floor32(_19) + ceil32(return_data.size) + 160] + 32 <= return_data.size
    mem[floor32(_19) + (2 * ceil32(return_data.size)) + 160] = mem[mem[floor32(_19) + ceil32(return_data.size) + 160] + floor32(_19) + ceil32(return_data.size) + 160]
    _139 = mem[_134 + floor32(_19) + ceil32(return_data.size) + 160]
    mem[floor32(_19) + (2 * ceil32(return_data.size)) + 192 len ceil32(mem[_134 + floor32(_19) + ceil32(return_data.size) + 160])] = mem[_134 + floor32(_19) + ceil32(return_data.size) + 192 len ceil32(mem[_134 + floor32(_19) + ceil32(return_data.size) + 160])]
    if not _139 % 32:
        mem[64] = _139 + floor32(_19) + (2 * ceil32(return_data.size)) + 192
        mem[_139 + floor32(_19) + (2 * ceil32(return_data.size)) + 192] = address(ext_call.return_data[0])
        mem[_139 + floor32(_19) + (2 * ceil32(return_data.size)) + 256] = address(ext_call.return_data[0])
        mem[_139 + floor32(_19) + (2 * ceil32(return_data.size)) + 224] = 128
        mem[_139 + floor32(_19) + (2 * ceil32(return_data.size)) + 320] = mem[ceil32(return_data.size) + 96]
        _221 = mem[ceil32(return_data.size) + 96]
        mem[_139 + floor32(_19) + (2 * ceil32(return_data.size)) + 352 len ceil32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len ceil32(mem[ceil32(return_data.size) + 96])]
        mem[_139 + floor32(_19) + (2 * ceil32(return_data.size)) + 288] = mem[ceil32(return_data.size) + 96] + 160
        mem[mem[ceil32(return_data.size) + 96] + _139 + floor32(_19) + (2 * ceil32(return_data.size)) + 352] = mem[floor32(_19) + (2 * ceil32(return_data.size)) + 160]
        mem[mem[ceil32(return_data.size) + 96] + _139 + floor32(_19) + (2 * ceil32(return_data.size)) + 384 len ceil32(mem[floor32(_19) + (2 * ceil32(return_data.size)) + 160])] = mem[floor32(_19) + (2 * ceil32(return_data.size)) + 192 len ceil32(mem[floor32(_19) + (2 * ceil32(return_data.size)) + 160])]
        if not mem[floor32(_19) + (2 * ceil32(return_data.size)) + 160] % 32:
            return address(ext_call.return_data[0]), 
                   Array(len=mem[ceil32(return_data.size) + 96], data=mem[_139 + floor32(_19) + (2 * ceil32(return_data.size)) + 352 len mem[floor32(_19) + (2 * ceil32(return_data.size)) + 160] + mem[ceil32(return_data.size) + 96] + 32]),
                   address(ext_call.return_data[0]),
                   mem[ceil32(return_data.size) + 96] + 160
        mem[floor32(mem[floor32(_19) + (2 * ceil32(return_data.size)) + 160]) + mem[ceil32(return_data.size) + 96] + _139 + floor32(_19) + (2 * ceil32(return_data.size)) + 384] = mem[floor32(mem[floor32(_19) + (2 * ceil32(return_data.size)) + 160]) + mem[ceil32(return_data.size) + 96] + _139 + floor32(_19) + (2 * ceil32(return_data.size)) + -(mem[floor32(_19) + (2 * ceil32(return_data.size)) + 160] % 32) + 416 len mem[floor32(_19) + (2 * ceil32(return_data.size)) + 160] % 32]
        return address(ext_call.return_data[0]), 
               128,
               address(ext_call.return_data[0]),
               mem[_139 + floor32(_19) + (2 * ceil32(return_data.size)) + 288 len floor32(mem[floor32(_19) + (2 * ceil32(return_data.size)) + 160]) + _221 + 128]
    mem[floor32(_139) + floor32(_19) + (2 * ceil32(return_data.size)) + 192] = mem[floor32(_139) + floor32(_19) + (2 * ceil32(return_data.size)) + -(_139 % 32) + 224 len _139 % 32]
    mem[64] = floor32(_139) + floor32(_19) + (2 * ceil32(return_data.size)) + 224
    mem[floor32(_139) + floor32(_19) + (2 * ceil32(return_data.size)) + 224] = address(ext_call.return_data[0])
    mem[floor32(_139) + floor32(_19) + (2 * ceil32(return_data.size)) + 288] = address(ext_call.return_data[0])
    mem[floor32(_139) + floor32(_19) + (2 * ceil32(return_data.size)) + 256] = 128
    mem[floor32(_139) + floor32(_19) + (2 * ceil32(return_data.size)) + 352] = mem[ceil32(return_data.size) + 96]
    _227 = mem[ceil32(return_data.size) + 96]
    mem[floor32(_139) + floor32(_19) + (2 * ceil32(return_data.size)) + 384 len ceil32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len ceil32(mem[ceil32(return_data.size) + 96])]
    mem[floor32(_139) + floor32(_19) + (2 * ceil32(return_data.size)) + 320] = mem[ceil32(return_data.size) + 96] + 160
    mem[mem[ceil32(return_data.size) + 96] + floor32(_139) + floor32(_19) + (2 * ceil32(return_data.size)) + 384] = mem[floor32(_19) + (2 * ceil32(return_data.size)) + 160]
    mem[mem[ceil32(return_data.size) + 96] + floor32(_139) + floor32(_19) + (2 * ceil32(return_data.size)) + 416 len ceil32(mem[floor32(_19) + (2 * ceil32(return_data.size)) + 160])] = mem[floor32(_19) + (2 * ceil32(return_data.size)) + 192 len ceil32(mem[floor32(_19) + (2 * ceil32(return_data.size)) + 160])]
    if not mem[floor32(_19) + (2 * ceil32(return_data.size)) + 160] % 32:
        return address(ext_call.return_data[0]), 
               Array(len=mem[ceil32(return_data.size) + 96], data=mem[floor32(_139) + floor32(_19) + (2 * ceil32(return_data.size)) + 384 len mem[floor32(_19) + (2 * ceil32(return_data.size)) + 160] + mem[ceil32(return_data.size) + 96] + 32]),
               address(ext_call.return_data[0]),
               mem[ceil32(return_data.size) + 96] + 160
    mem[floor32(mem[floor32(_19) + (2 * ceil32(return_data.size)) + 160]) + mem[ceil32(return_data.size) + 96] + floor32(_139) + floor32(_19) + (2 * ceil32(return_data.size)) + 416] = mem[floor32(mem[floor32(_19) + (2 * ceil32(return_data.size)) + 160]) + mem[ceil32(return_data.size) + 96] + floor32(_139) + floor32(_19) + (2 * ceil32(return_data.size)) + -(mem[floor32(_19) + (2 * ceil32(return_data.size)) + 160] % 32) + 448 len mem[floor32(_19) + (2 * ceil32(return_data.size)) + 160] % 32]
    return address(ext_call.return_data[0]), 
           128,
           address(ext_call.return_data[0]),
           mem[floor32(_139) + floor32(_19) + (2 * ceil32(return_data.size)) + 320 len floor32(mem[floor32(_19) + (2 * ceil32(return_data.size)) + 160]) + _227 + 128]
}

function sub_de425e6a(?) payable {
    require calldata.size - 4 >= 128
    if arg2 == arg3:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x54556e697377617056324c6962726172793a204944454e544943414c5f4144445245535345,
                    mem[201 len 27]
    if arg2 < arg3:
        if not arg2:
            revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
        if arg2 == arg3:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        37,
                        0x54556e697377617056324c6962726172793a204944454e544943414c5f4144445245535345,
                        mem[201 len 27]
        if arg2 < arg3:
            if not arg2:
                revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
            require ext_code.size(address(sha3(0, arg1, sha3(arg2, arg3), 0xe18a34eb0e04b04f7a0ac29a6e80748dca96319b42c54d679cb821dca90c6303)))
            staticcall address(sha3(0, arg1, sha3(arg2, arg3), 0xe18a34eb0e04b04f7a0ac29a6e80748dca96319b42c54d679cb821dca90c6303)).getReserves() with:
                    gas gas_remaining wei
        else:
            if not arg3:
                revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
            require ext_code.size(address(sha3(0, arg1, sha3(arg3, arg2), 0xe18a34eb0e04b04f7a0ac29a6e80748dca96319b42c54d679cb821dca90c6303)))
            staticcall address(sha3(0, arg1, sha3(arg3, arg2), 0xe18a34eb0e04b04f7a0ac29a6e80748dca96319b42c54d679cb821dca90c6303)).getReserves() with:
                    gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        if arg4 <= 0:
            revert with 0, 32, 43, 0x59556e697377617056324c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e, mem[396 len 21]
        if arg2 == arg2:
            if ext_call.return_data[18 len 14] <= 0:
                revert with 0, 32, 40, 0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[393 len 24]
            if ext_call.return_data[50 len 14] <= 0:
                revert with 0, 32, 40, 0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[393 len 24]
            if not arg4:
                if ext_call.return_data[18 len 14]:
                    if ext_call.return_data[18 len 14]:
                        if 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] == 1000:
                            if 1000 * ext_call.return_data[18 len 14] >= 1000 * ext_call.return_data[18 len 14]:
                                if 1000 * ext_call.return_data[18 len 14]:
                                    return (0 / 1000 * ext_call.return_data[18 len 14])
            else:
                if arg4:
                    if 997 * arg4 / arg4 == 997:
                        if not 997 * arg4:
                            if not ext_call.return_data[18 len 14]:
                                if 997 * arg4 >= 0:
                                    if 997 * arg4:
                                        return (0 / 997 * arg4)
                            else:
                                if ext_call.return_data[18 len 14]:
                                    if 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] == 1000:
                                        if (1000 * ext_call.return_data[18 len 14]) + (997 * arg4) >= 1000 * ext_call.return_data[18 len 14]:
                                            if (1000 * ext_call.return_data[18 len 14]) + (997 * arg4):
                                                return (0 / (1000 * ext_call.return_data[18 len 14]) + (997 * arg4))
                        else:
                            if 997 * arg4:
                                if 997 * arg4 * ext_call.return_data[50 len 14] / 997 * arg4 == ext_call.return_data[50 len 14]:
                                    if not ext_call.return_data[18 len 14]:
                                        if 997 * arg4 >= 0:
                                            if 997 * arg4:
                                                return (997 * arg4 * ext_call.return_data[50 len 14] / 997 * arg4)
                                    else:
                                        if ext_call.return_data[18 len 14]:
                                            if 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] == 1000:
                                                if (1000 * ext_call.return_data[18 len 14]) + (997 * arg4) >= 1000 * ext_call.return_data[18 len 14]:
                                                    if (1000 * ext_call.return_data[18 len 14]) + (997 * arg4):
                                                        return (997 * arg4 * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * arg4))
        else:
            if ext_call.return_data[50 len 14] <= 0:
                revert with 0, 32, 40, 0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[393 len 24]
            if ext_call.return_data[18 len 14] <= 0:
                revert with 0, 32, 40, 0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[393 len 24]
            if not arg4:
                if ext_call.return_data[50 len 14]:
                    if ext_call.return_data[50 len 14]:
                        if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] == 1000:
                            if 1000 * ext_call.return_data[50 len 14] >= 1000 * ext_call.return_data[50 len 14]:
                                if 1000 * ext_call.return_data[50 len 14]:
                                    return (0 / 1000 * ext_call.return_data[50 len 14])
            else:
                if arg4:
                    if 997 * arg4 / arg4 == 997:
                        if not 997 * arg4:
                            if not ext_call.return_data[50 len 14]:
                                if 997 * arg4 >= 0:
                                    if 997 * arg4:
                                        return (0 / 997 * arg4)
                            else:
                                if ext_call.return_data[50 len 14]:
                                    if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] == 1000:
                                        if (1000 * ext_call.return_data[50 len 14]) + (997 * arg4) >= 1000 * ext_call.return_data[50 len 14]:
                                            if (1000 * ext_call.return_data[50 len 14]) + (997 * arg4):
                                                return (0 / (1000 * ext_call.return_data[50 len 14]) + (997 * arg4))
                        else:
                            if 997 * arg4:
                                if 997 * arg4 * ext_call.return_data[18 len 14] / 997 * arg4 == ext_call.return_data[18 len 14]:
                                    if not ext_call.return_data[50 len 14]:
                                        if 997 * arg4 >= 0:
                                            if 997 * arg4:
                                                return (997 * arg4 * ext_call.return_data[18 len 14] / 997 * arg4)
                                    else:
                                        if ext_call.return_data[50 len 14]:
                                            if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] == 1000:
                                                if (1000 * ext_call.return_data[50 len 14]) + (997 * arg4) >= 1000 * ext_call.return_data[50 len 14]:
                                                    if (1000 * ext_call.return_data[50 len 14]) + (997 * arg4):
                                                        return (997 * arg4 * ext_call.return_data[18 len 14] / (1000 * ext_call.return_data[50 len 14]) + (997 * arg4))
    else:
        if not arg3:
            revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
        if arg2 == arg3:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        37,
                        0x54556e697377617056324c6962726172793a204944454e544943414c5f4144445245535345,
                        mem[201 len 27]
        if arg2 < arg3:
            if not arg2:
                revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
            require ext_code.size(address(sha3(0, arg1, sha3(arg2, arg3), 0xe18a34eb0e04b04f7a0ac29a6e80748dca96319b42c54d679cb821dca90c6303)))
            staticcall address(sha3(0, arg1, sha3(arg2, arg3), 0xe18a34eb0e04b04f7a0ac29a6e80748dca96319b42c54d679cb821dca90c6303)).getReserves() with:
                    gas gas_remaining wei
        else:
            if not arg3:
                revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
            require ext_code.size(address(sha3(0, arg1, sha3(arg3, arg2), 0xe18a34eb0e04b04f7a0ac29a6e80748dca96319b42c54d679cb821dca90c6303)))
            staticcall address(sha3(0, arg1, sha3(arg3, arg2), 0xe18a34eb0e04b04f7a0ac29a6e80748dca96319b42c54d679cb821dca90c6303)).getReserves() with:
                    gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        if arg4 <= 0:
            revert with 0, 32, 43, 0x59556e697377617056324c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e, mem[396 len 21]
        if arg2 == arg3:
            if ext_call.return_data[18 len 14] <= 0:
                revert with 0, 32, 40, 0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[393 len 24]
            if ext_call.return_data[50 len 14] <= 0:
                revert with 0, 32, 40, 0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[393 len 24]
            if not arg4:
                if ext_call.return_data[18 len 14]:
                    if ext_call.return_data[18 len 14]:
                        if 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] == 1000:
                            if 1000 * ext_call.return_data[18 len 14] >= 1000 * ext_call.return_data[18 len 14]:
                                if 1000 * ext_call.return_data[18 len 14]:
                                    return (0 / 1000 * ext_call.return_data[18 len 14])
            else:
                if arg4:
                    if 997 * arg4 / arg4 == 997:
                        if not 997 * arg4:
                            if not ext_call.return_data[18 len 14]:
                                if 997 * arg4 >= 0:
                                    if 997 * arg4:
                                        return (0 / 997 * arg4)
                            else:
                                if ext_call.return_data[18 len 14]:
                                    if 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] == 1000:
                                        if (1000 * ext_call.return_data[18 len 14]) + (997 * arg4) >= 1000 * ext_call.return_data[18 len 14]:
                                            if (1000 * ext_call.return_data[18 len 14]) + (997 * arg4):
                                                return (0 / (1000 * ext_call.return_data[18 len 14]) + (997 * arg4))
                        else:
                            if 997 * arg4:
                                if 997 * arg4 * ext_call.return_data[50 len 14] / 997 * arg4 == ext_call.return_data[50 len 14]:
                                    if not ext_call.return_data[18 len 14]:
                                        if 997 * arg4 >= 0:
                                            if 997 * arg4:
                                                return (997 * arg4 * ext_call.return_data[50 len 14] / 997 * arg4)
                                    else:
                                        if ext_call.return_data[18 len 14]:
                                            if 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] == 1000:
                                                if (1000 * ext_call.return_data[18 len 14]) + (997 * arg4) >= 1000 * ext_call.return_data[18 len 14]:
                                                    if (1000 * ext_call.return_data[18 len 14]) + (997 * arg4):
                                                        return (997 * arg4 * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * arg4))
        else:
            if ext_call.return_data[50 len 14] <= 0:
                revert with 0, 32, 40, 0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[393 len 24]
            if ext_call.return_data[18 len 14] <= 0:
                revert with 0, 32, 40, 0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[393 len 24]
            if not arg4:
                if ext_call.return_data[50 len 14]:
                    if ext_call.return_data[50 len 14]:
                        if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] == 1000:
                            if 1000 * ext_call.return_data[50 len 14] >= 1000 * ext_call.return_data[50 len 14]:
                                if 1000 * ext_call.return_data[50 len 14]:
                                    return (0 / 1000 * ext_call.return_data[50 len 14])
            else:
                if arg4:
                    if 997 * arg4 / arg4 == 997:
                        if not 997 * arg4:
                            if not ext_call.return_data[50 len 14]:
                                if 997 * arg4 >= 0:
                                    if 997 * arg4:
                                        return (0 / 997 * arg4)
                            else:
                                if ext_call.return_data[50 len 14]:
                                    if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] == 1000:
                                        if (1000 * ext_call.return_data[50 len 14]) + (997 * arg4) >= 1000 * ext_call.return_data[50 len 14]:
                                            if (1000 * ext_call.return_data[50 len 14]) + (997 * arg4):
                                                return (0 / (1000 * ext_call.return_data[50 len 14]) + (997 * arg4))
                        else:
                            if 997 * arg4:
                                if 997 * arg4 * ext_call.return_data[18 len 14] / 997 * arg4 == ext_call.return_data[18 len 14]:
                                    if not ext_call.return_data[50 len 14]:
                                        if 997 * arg4 >= 0:
                                            if 997 * arg4:
                                                return (997 * arg4 * ext_call.return_data[18 len 14] / 997 * arg4)
                                    else:
                                        if ext_call.return_data[50 len 14]:
                                            if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] == 1000:
                                                if (1000 * ext_call.return_data[50 len 14]) + (997 * arg4) >= 1000 * ext_call.return_data[50 len 14]:
                                                    if (1000 * ext_call.return_data[50 len 14]) + (997 * arg4):
                                                        return (997 * arg4 * ext_call.return_data[18 len 14] / (1000 * ext_call.return_data[50 len 14]) + (997 * arg4))
    revert
}

function sub_73fa66c3(?) payable {
    require calldata.size - 4 >= 128
    if arg2 == arg3:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x54556e697377617056324c6962726172793a204944454e544943414c5f4144445245535345,
                    mem[201 len 27]
    if arg2 < arg3:
        if not arg2:
            revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
        if arg2 == arg3:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        37,
                        0x54556e697377617056324c6962726172793a204944454e544943414c5f4144445245535345,
                        mem[201 len 27]
        if arg2 < arg3:
            if not arg2:
                revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
            require ext_code.size(address(sha3(0, arg1, sha3(arg2, arg3), 0xe18a34eb0e04b04f7a0ac29a6e80748dca96319b42c54d679cb821dca90c6303)))
            staticcall address(sha3(0, arg1, sha3(arg2, arg3), 0xe18a34eb0e04b04f7a0ac29a6e80748dca96319b42c54d679cb821dca90c6303)).getReserves() with:
                    gas gas_remaining wei
        else:
            if not arg3:
                revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
            require ext_code.size(address(sha3(0, arg1, sha3(arg3, arg2), 0xe18a34eb0e04b04f7a0ac29a6e80748dca96319b42c54d679cb821dca90c6303)))
            staticcall address(sha3(0, arg1, sha3(arg3, arg2), 0xe18a34eb0e04b04f7a0ac29a6e80748dca96319b42c54d679cb821dca90c6303)).getReserves() with:
                    gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        if arg4 <= 0:
            revert with 0, 32, 44, 0xfe556e697377617056324c6962726172793a20494e53554646494349454e545f4f55545055545f414d4f554e, mem[397 len 20]
        if arg2 == arg2:
            if ext_call.return_data[18 len 14] <= 0:
                revert with 0, 32, 40, 0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[393 len 24]
            if ext_call.return_data[50 len 14] <= 0:
                revert with 0, 32, 40, 0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[393 len 24]
            if not ext_call.return_data[18 len 14]:
                if arg4 <= ext_call.return_data[50 len 14]:
                    if ext_call.return_data[50 len 14] - arg4:
                        if ext_call.return_data[50 len 14] - arg4:
                            if (997 * ext_call.return_data[50 len 14]) - (997 * arg4) / ext_call.return_data[50 len 14] - arg4 == 997:
                                if (997 * ext_call.return_data[50 len 14]) - (997 * arg4):
                                    if (0 / (997 * ext_call.return_data[50 len 14]) - (997 * arg4)) + 1 >= 0 / (997 * ext_call.return_data[50 len 14]) - (997 * arg4):
                                        return ((0 / (997 * ext_call.return_data[50 len 14]) - (997 * arg4)) + 1)
            else:
                if ext_call.return_data[18 len 14]:
                    if ext_call.return_data[18 len 14] * arg4 / ext_call.return_data[18 len 14] == arg4:
                        if not ext_call.return_data[18 len 14] * arg4:
                            if arg4 <= ext_call.return_data[50 len 14]:
                                if ext_call.return_data[50 len 14] - arg4:
                                    if ext_call.return_data[50 len 14] - arg4:
                                        if (997 * ext_call.return_data[50 len 14]) - (997 * arg4) / ext_call.return_data[50 len 14] - arg4 == 997:
                                            if (997 * ext_call.return_data[50 len 14]) - (997 * arg4):
                                                if (0 / (997 * ext_call.return_data[50 len 14]) - (997 * arg4)) + 1 >= 0 / (997 * ext_call.return_data[50 len 14]) - (997 * arg4):
                                                    return ((0 / (997 * ext_call.return_data[50 len 14]) - (997 * arg4)) + 1)
                        else:
                            if ext_call.return_data[18 len 14] * arg4:
                                if 1000 * ext_call.return_data[18 len 14] * arg4 / ext_call.return_data[18 len 14] * arg4 == 1000:
                                    if arg4 <= ext_call.return_data[50 len 14]:
                                        if ext_call.return_data[50 len 14] - arg4:
                                            if ext_call.return_data[50 len 14] - arg4:
                                                if (997 * ext_call.return_data[50 len 14]) - (997 * arg4) / ext_call.return_data[50 len 14] - arg4 == 997:
                                                    if (997 * ext_call.return_data[50 len 14]) - (997 * arg4):
                                                        if (1000 * ext_call.return_data[18 len 14] * arg4 / (997 * ext_call.return_data[50 len 14]) - (997 * arg4)) + 1 >= 1000 * ext_call.return_data[18 len 14] * arg4 / (997 * ext_call.return_data[50 len 14]) - (997 * arg4):
                                                            return ((1000 * ext_call.return_data[18 len 14] * arg4 / (997 * ext_call.return_data[50 len 14]) - (997 * arg4)) + 1)
        else:
            if ext_call.return_data[50 len 14] <= 0:
                revert with 0, 32, 40, 0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[393 len 24]
            if ext_call.return_data[18 len 14] <= 0:
                revert with 0, 32, 40, 0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[393 len 24]
            if not ext_call.return_data[50 len 14]:
                if arg4 <= ext_call.return_data[18 len 14]:
                    if ext_call.return_data[18 len 14] - arg4:
                        if ext_call.return_data[18 len 14] - arg4:
                            if (997 * ext_call.return_data[18 len 14]) - (997 * arg4) / ext_call.return_data[18 len 14] - arg4 == 997:
                                if (997 * ext_call.return_data[18 len 14]) - (997 * arg4):
                                    if (0 / (997 * ext_call.return_data[18 len 14]) - (997 * arg4)) + 1 >= 0 / (997 * ext_call.return_data[18 len 14]) - (997 * arg4):
                                        return ((0 / (997 * ext_call.return_data[18 len 14]) - (997 * arg4)) + 1)
            else:
                if ext_call.return_data[50 len 14]:
                    if ext_call.return_data[50 len 14] * arg4 / ext_call.return_data[50 len 14] == arg4:
                        if not ext_call.return_data[50 len 14] * arg4:
                            if arg4 <= ext_call.return_data[18 len 14]:
                                if ext_call.return_data[18 len 14] - arg4:
                                    if ext_call.return_data[18 len 14] - arg4:
                                        if (997 * ext_call.return_data[18 len 14]) - (997 * arg4) / ext_call.return_data[18 len 14] - arg4 == 997:
                                            if (997 * ext_call.return_data[18 len 14]) - (997 * arg4):
                                                if (0 / (997 * ext_call.return_data[18 len 14]) - (997 * arg4)) + 1 >= 0 / (997 * ext_call.return_data[18 len 14]) - (997 * arg4):
                                                    return ((0 / (997 * ext_call.return_data[18 len 14]) - (997 * arg4)) + 1)
                        else:
                            if ext_call.return_data[50 len 14] * arg4:
                                if 1000 * ext_call.return_data[50 len 14] * arg4 / ext_call.return_data[50 len 14] * arg4 == 1000:
                                    if arg4 <= ext_call.return_data[18 len 14]:
                                        if ext_call.return_data[18 len 14] - arg4:
                                            if ext_call.return_data[18 len 14] - arg4:
                                                if (997 * ext_call.return_data[18 len 14]) - (997 * arg4) / ext_call.return_data[18 len 14] - arg4 == 997:
                                                    if (997 * ext_call.return_data[18 len 14]) - (997 * arg4):
                                                        if (1000 * ext_call.return_data[50 len 14] * arg4 / (997 * ext_call.return_data[18 len 14]) - (997 * arg4)) + 1 >= 1000 * ext_call.return_data[50 len 14] * arg4 / (997 * ext_call.return_data[18 len 14]) - (997 * arg4):
                                                            return ((1000 * ext_call.return_data[50 len 14] * arg4 / (997 * ext_call.return_data[18 len 14]) - (997 * arg4)) + 1)
    else:
        if not arg3:
            revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
        if arg2 == arg3:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        37,
                        0x54556e697377617056324c6962726172793a204944454e544943414c5f4144445245535345,
                        mem[201 len 27]
        if arg2 < arg3:
            if not arg2:
                revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
            require ext_code.size(address(sha3(0, arg1, sha3(arg2, arg3), 0xe18a34eb0e04b04f7a0ac29a6e80748dca96319b42c54d679cb821dca90c6303)))
            staticcall address(sha3(0, arg1, sha3(arg2, arg3), 0xe18a34eb0e04b04f7a0ac29a6e80748dca96319b42c54d679cb821dca90c6303)).getReserves() with:
                    gas gas_remaining wei
        else:
            if not arg3:
                revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
            require ext_code.size(address(sha3(0, arg1, sha3(arg3, arg2), 0xe18a34eb0e04b04f7a0ac29a6e80748dca96319b42c54d679cb821dca90c6303)))
            staticcall address(sha3(0, arg1, sha3(arg3, arg2), 0xe18a34eb0e04b04f7a0ac29a6e80748dca96319b42c54d679cb821dca90c6303)).getReserves() with:
                    gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        if arg4 <= 0:
            revert with 0, 32, 44, 0xfe556e697377617056324c6962726172793a20494e53554646494349454e545f4f55545055545f414d4f554e, mem[397 len 20]
        if arg2 == arg3:
            if ext_call.return_data[18 len 14] <= 0:
                revert with 0, 32, 40, 0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[393 len 24]
            if ext_call.return_data[50 len 14] <= 0:
                revert with 0, 32, 40, 0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[393 len 24]
            if not ext_call.return_data[18 len 14]:
                if arg4 <= ext_call.return_data[50 len 14]:
                    if ext_call.return_data[50 len 14] - arg4:
                        if ext_call.return_data[50 len 14] - arg4:
                            if (997 * ext_call.return_data[50 len 14]) - (997 * arg4) / ext_call.return_data[50 len 14] - arg4 == 997:
                                if (997 * ext_call.return_data[50 len 14]) - (997 * arg4):
                                    if (0 / (997 * ext_call.return_data[50 len 14]) - (997 * arg4)) + 1 >= 0 / (997 * ext_call.return_data[50 len 14]) - (997 * arg4):
                                        return ((0 / (997 * ext_call.return_data[50 len 14]) - (997 * arg4)) + 1)
            else:
                if ext_call.return_data[18 len 14]:
                    if ext_call.return_data[18 len 14] * arg4 / ext_call.return_data[18 len 14] == arg4:
                        if not ext_call.return_data[18 len 14] * arg4:
                            if arg4 <= ext_call.return_data[50 len 14]:
                                if ext_call.return_data[50 len 14] - arg4:
                                    if ext_call.return_data[50 len 14] - arg4:
                                        if (997 * ext_call.return_data[50 len 14]) - (997 * arg4) / ext_call.return_data[50 len 14] - arg4 == 997:
                                            if (997 * ext_call.return_data[50 len 14]) - (997 * arg4):
                                                if (0 / (997 * ext_call.return_data[50 len 14]) - (997 * arg4)) + 1 >= 0 / (997 * ext_call.return_data[50 len 14]) - (997 * arg4):
                                                    return ((0 / (997 * ext_call.return_data[50 len 14]) - (997 * arg4)) + 1)
                        else:
                            if ext_call.return_data[18 len 14] * arg4:
                                if 1000 * ext_call.return_data[18 len 14] * arg4 / ext_call.return_data[18 len 14] * arg4 == 1000:
                                    if arg4 <= ext_call.return_data[50 len 14]:
                                        if ext_call.return_data[50 len 14] - arg4:
                                            if ext_call.return_data[50 len 14] - arg4:
                                                if (997 * ext_call.return_data[50 len 14]) - (997 * arg4) / ext_call.return_data[50 len 14] - arg4 == 997:
                                                    if (997 * ext_call.return_data[50 len 14]) - (997 * arg4):
                                                        if (1000 * ext_call.return_data[18 len 14] * arg4 / (997 * ext_call.return_data[50 len 14]) - (997 * arg4)) + 1 >= 1000 * ext_call.return_data[18 len 14] * arg4 / (997 * ext_call.return_data[50 len 14]) - (997 * arg4):
                                                            return ((1000 * ext_call.return_data[18 len 14] * arg4 / (997 * ext_call.return_data[50 len 14]) - (997 * arg4)) + 1)
        else:
            if ext_call.return_data[50 len 14] <= 0:
                revert with 0, 32, 40, 0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[393 len 24]
            if ext_call.return_data[18 len 14] <= 0:
                revert with 0, 32, 40, 0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[393 len 24]
            if not ext_call.return_data[50 len 14]:
                if arg4 <= ext_call.return_data[18 len 14]:
                    if ext_call.return_data[18 len 14] - arg4:
                        if ext_call.return_data[18 len 14] - arg4:
                            if (997 * ext_call.return_data[18 len 14]) - (997 * arg4) / ext_call.return_data[18 len 14] - arg4 == 997:
                                if (997 * ext_call.return_data[18 len 14]) - (997 * arg4):
                                    if (0 / (997 * ext_call.return_data[18 len 14]) - (997 * arg4)) + 1 >= 0 / (997 * ext_call.return_data[18 len 14]) - (997 * arg4):
                                        return ((0 / (997 * ext_call.return_data[18 len 14]) - (997 * arg4)) + 1)
            else:
                if ext_call.return_data[50 len 14]:
                    if ext_call.return_data[50 len 14] * arg4 / ext_call.return_data[50 len 14] == arg4:
                        if not ext_call.return_data[50 len 14] * arg4:
                            if arg4 <= ext_call.return_data[18 len 14]:
                                if ext_call.return_data[18 len 14] - arg4:
                                    if ext_call.return_data[18 len 14] - arg4:
                                        if (997 * ext_call.return_data[18 len 14]) - (997 * arg4) / ext_call.return_data[18 len 14] - arg4 == 997:
                                            if (997 * ext_call.return_data[18 len 14]) - (997 * arg4):
                                                if (0 / (997 * ext_call.return_data[18 len 14]) - (997 * arg4)) + 1 >= 0 / (997 * ext_call.return_data[18 len 14]) - (997 * arg4):
                                                    return ((0 / (997 * ext_call.return_data[18 len 14]) - (997 * arg4)) + 1)
                        else:
                            if ext_call.return_data[50 len 14] * arg4:
                                if 1000 * ext_call.return_data[50 len 14] * arg4 / ext_call.return_data[50 len 14] * arg4 == 1000:
                                    if arg4 <= ext_call.return_data[18 len 14]:
                                        if ext_call.return_data[18 len 14] - arg4:
                                            if ext_call.return_data[18 len 14] - arg4:
                                                if (997 * ext_call.return_data[18 len 14]) - (997 * arg4) / ext_call.return_data[18 len 14] - arg4 == 997:
                                                    if (997 * ext_call.return_data[18 len 14]) - (997 * arg4):
                                                        if (1000 * ext_call.return_data[50 len 14] * arg4 / (997 * ext_call.return_data[18 len 14]) - (997 * arg4)) + 1 >= 1000 * ext_call.return_data[50 len 14] * arg4 / (997 * ext_call.return_data[18 len 14]) - (997 * arg4):
                                                            return ((1000 * ext_call.return_data[50 len 14] * arg4 / (997 * ext_call.return_data[18 len 14]) - (997 * arg4)) + 1)
    revert
}



}
