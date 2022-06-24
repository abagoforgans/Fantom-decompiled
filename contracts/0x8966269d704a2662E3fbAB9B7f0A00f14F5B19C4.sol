contract main {




// =====================  Runtime code  =====================


#
#  - sub_db56f413(?)
#
address sub_abc7e0dfAddress;
address usdcTokenAddress;
address wNativeAddress;
address sub_8ed8ea7eAddress;
address sub_d4384dbeAddress;
address sub_32d3539fAddress;
array of address vaults;
array of address sub_cce3db19;

function usdcToken() payable {
    return usdcTokenAddress
}

function wNative() payable {
    return wNativeAddress
}

function sub_32d3539f(?) payable {
    return sub_32d3539fAddress
}

function vaults(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < vaults.length
    return vaults[arg1]
}

function sub_8ed8ea7e(?) payable {
    return sub_8ed8ea7eAddress
}

function sub_abc7e0df(?) payable {
    return sub_abc7e0dfAddress
}

function sub_cce3db19(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_cce3db19.length
    return sub_cce3db19[arg1]
}

function sub_d4384dbe(?) payable {
    return sub_d4384dbeAddress
}

function _fallback() payable {
    revert
}

function sub_97ff562e(?) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(arg1)
    staticcall arg1.getReserves() with:
            gas gas_remaining wei
    mem[96 len 96] = ext_call.return_data[0 len 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
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
    _13 = mem[96]
    require mem[96] <= 4294967296
    require mem[96] + 32 <= return_data.size
    require return_data.size >= mem[mem[96] + 96] + mem[96] + 32 and mem[mem[96] + 96] <= 4294967296
    mem[ceil32(return_data.size) + 96] = mem[mem[96] + 96]
    _16 = mem[_13 + 96]
    mem[ceil32(return_data.size) + 128 len ceil32(mem[_13 + 96])] = mem[_13 + 128 len ceil32(mem[_13 + 96])]
    if not _16 % 32:
        mem[_16 + ceil32(return_data.size) + 128] = 7
        mem[_16 + ceil32(return_data.size) + 160] = 'wNative' << 200
        require ext_code.size(arg1)
        if 0x45dfd164470d9e5d120164c67fc395ebe9289a35b7dcc8432b3a2d09a266c851 == sha3(mem[ceil32(return_data.size) + 128 len mem[ceil32(return_data.size) + 96]]):
            staticcall arg1.token1() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).decimals() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not Mask(112, 0, ext_call.return_data[0]):
                if Mask(112, 0, ext_call.return_data[32]) <= 0:
                    revert with 0, 'SafeMath: division by zero'
                if Mask(112, 0, ext_call.return_data[32]):
                    return (0 / Mask(112, 0, ext_call.return_data[32]))
            else:
                if 10^ext_call.return_data[31 len 1] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 10^ext_call.return_data[31 len 1]:
                    revert with 0, 
                                32,
                                33,
                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[_16 + ceil32(return_data.size) + 293 len 31]
                if Mask(112, 0, ext_call.return_data[32]) <= 0:
                    revert with 0, 'SafeMath: division by zero'
                if Mask(112, 0, ext_call.return_data[32]):
                    return (10^ext_call.return_data[31 len 1] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]))
            ('iszero', ('mask_shl', 112, 0, 0, ('ext_call.return_data', 32, 32)))
        else:
            staticcall arg1.token0() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).decimals() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not Mask(112, 0, ext_call.return_data[32]):
                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                    revert with 0, 'SafeMath: division by zero'
                if Mask(112, 0, ext_call.return_data[0]):
                    return (0 / Mask(112, 0, ext_call.return_data[0]))
            else:
                if 10^ext_call.return_data[31 len 1] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 10^ext_call.return_data[31 len 1]:
                    revert with 0, 
                                32,
                                33,
                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[_16 + ceil32(return_data.size) + 293 len 31]
                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                    revert with 0, 'SafeMath: division by zero'
                if Mask(112, 0, ext_call.return_data[0]):
                    return (10^ext_call.return_data[31 len 1] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]))
            ('iszero', ('mask_shl', 112, 0, 0, ('ext_call.return_data', 0, 32)))
    else:
        mem[floor32(_16) + ceil32(return_data.size) + 128] = mem[floor32(_16) + ceil32(return_data.size) + -(_16 % 32) + 160 len _16 % 32]
        mem[floor32(_16) + ceil32(return_data.size) + 160] = 7
        mem[floor32(_16) + ceil32(return_data.size) + 192] = 'wNative' << 200
        require ext_code.size(arg1)
        if 0x45dfd164470d9e5d120164c67fc395ebe9289a35b7dcc8432b3a2d09a266c851 == sha3(mem[ceil32(return_data.size) + 128 len mem[ceil32(return_data.size) + 96]]):
            staticcall arg1.token1() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).decimals() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not Mask(112, 0, ext_call.return_data[0]):
                if Mask(112, 0, ext_call.return_data[32]) <= 0:
                    revert with 0, 'SafeMath: division by zero'
                if Mask(112, 0, ext_call.return_data[32]):
                    return (0 / Mask(112, 0, ext_call.return_data[32]))
            else:
                if 10^ext_call.return_data[31 len 1] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 10^ext_call.return_data[31 len 1]:
                    revert with 0, 
                                32,
                                33,
                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[floor32(_16) + ceil32(return_data.size) + 325 len 31]
                if Mask(112, 0, ext_call.return_data[32]) <= 0:
                    revert with 0, 'SafeMath: division by zero'
                if Mask(112, 0, ext_call.return_data[32]):
                    return (10^ext_call.return_data[31 len 1] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]))
            ('iszero', ('mask_shl', 112, 0, 0, ('ext_call.return_data', 32, 32)))
        else:
            staticcall arg1.token0() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).decimals() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not Mask(112, 0, ext_call.return_data[32]):
                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                    revert with 0, 'SafeMath: division by zero'
                if Mask(112, 0, ext_call.return_data[0]):
                    return (0 / Mask(112, 0, ext_call.return_data[0]))
            else:
                if 10^ext_call.return_data[31 len 1] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 10^ext_call.return_data[31 len 1]:
                    revert with 0, 
                                32,
                                33,
                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[floor32(_16) + ceil32(return_data.size) + 325 len 31]
                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                    revert with 0, 'SafeMath: division by zero'
                if Mask(112, 0, ext_call.return_data[0]):
                    return (10^ext_call.return_data[31 len 1] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]))
            ('iszero', ('mask_shl', 112, 0, 0, ('ext_call.return_data', 0, 32)))
    revert
}

function sub_59592396(?) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(arg1)
    staticcall arg1.getReserves() with:
            gas gas_remaining wei
    mem[96 len 96] = ext_call.return_data[0 len 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
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
    _13 = mem[96]
    require mem[96] <= 4294967296
    require mem[96] + 32 <= return_data.size
    require return_data.size >= mem[mem[96] + 96] + mem[96] + 32 and mem[mem[96] + 96] <= 4294967296
    mem[ceil32(return_data.size) + 96] = mem[mem[96] + 96]
    _16 = mem[_13 + 96]
    mem[ceil32(return_data.size) + 128 len ceil32(mem[_13 + 96])] = mem[_13 + 128 len ceil32(mem[_13 + 96])]
    if not _16 % 32:
        mem[_16 + ceil32(return_data.size) + 128] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
        require ext_code.size(wNativeAddress)
        staticcall wNativeAddress.symbol() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[_16 + ceil32(return_data.size) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = _16 + (2 * ceil32(return_data.size)) + 128
        require return_data.size >= 32
        _136 = mem[_16 + ceil32(return_data.size) + 128]
        require mem[_16 + ceil32(return_data.size) + 128] <= 4294967296
        require mem[_16 + ceil32(return_data.size) + 128] + 32 <= return_data.size
        require return_data.size >= mem[_16 + ceil32(return_data.size) + mem[_16 + ceil32(return_data.size) + 128] + 128] + mem[_16 + ceil32(return_data.size) + 128] + 32 and mem[_16 + ceil32(return_data.size) + mem[_16 + ceil32(return_data.size) + 128] + 128] <= 4294967296
        mem[_16 + (2 * ceil32(return_data.size)) + 128] = mem[_16 + ceil32(return_data.size) + mem[_16 + ceil32(return_data.size) + 128] + 128]
        _142 = mem[_16 + ceil32(return_data.size) + _136 + 128]
        mem[_16 + (2 * ceil32(return_data.size)) + 160 len ceil32(mem[_16 + ceil32(return_data.size) + _136 + 128])] = mem[_16 + ceil32(return_data.size) + _136 + 160 len ceil32(mem[_16 + ceil32(return_data.size) + _136 + 128])]
        if not _142 % 32:
            if sha3(mem[ceil32(return_data.size) + 128 len mem[ceil32(return_data.size) + 96]]) == sha3(mem[_16 + (2 * ceil32(return_data.size)) + 160 len mem[_16 + (2 * ceil32(return_data.size)) + 128]]):
                if not Mask(112, 0, ext_call.return_data[32]):
                    if Mask(112, 0, ext_call.return_data[0]) <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    if Mask(112, 0, ext_call.return_data[0]):
                        return (0 / Mask(112, 0, ext_call.return_data[0]))
                else:
                    if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 10^18:
                        revert with 0, 
                                    32,
                                    33,
                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[_142 + _16 + (2 * ceil32(return_data.size)) + 261 len 31]
                    if Mask(112, 0, ext_call.return_data[0]) <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    if Mask(112, 0, ext_call.return_data[0]):
                        return (10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]))
                ('iszero', ('mask_shl', 112, 0, 0, ('ext_call.return_data', 0, 32)))
            else:
                if not Mask(112, 0, ext_call.return_data[0]):
                    if Mask(112, 0, ext_call.return_data[32]) <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    if Mask(112, 0, ext_call.return_data[32]):
                        return (0 / Mask(112, 0, ext_call.return_data[32]))
                else:
                    if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 10^18:
                        revert with 0, 
                                    32,
                                    33,
                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[_142 + _16 + (2 * ceil32(return_data.size)) + 261 len 31]
                    if Mask(112, 0, ext_call.return_data[32]) <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    if Mask(112, 0, ext_call.return_data[32]):
                        return (10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]))
                ('iszero', ('mask_shl', 112, 0, 0, ('ext_call.return_data', 32, 32)))
        else:
            mem[floor32(_142) + _16 + (2 * ceil32(return_data.size)) + 160] = mem[floor32(_142) + _16 + (2 * ceil32(return_data.size)) + -(_142 % 32) + 192 len _142 % 32]
            if sha3(mem[ceil32(return_data.size) + 128 len mem[ceil32(return_data.size) + 96]]) == sha3(mem[_16 + (2 * ceil32(return_data.size)) + 160 len mem[_16 + (2 * ceil32(return_data.size)) + 128]]):
                if not Mask(112, 0, ext_call.return_data[32]):
                    if Mask(112, 0, ext_call.return_data[0]) <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    if Mask(112, 0, ext_call.return_data[0]):
                        return (0 / Mask(112, 0, ext_call.return_data[0]))
                else:
                    if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 10^18:
                        revert with 0, 
                                    32,
                                    33,
                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[floor32(_142) + _16 + (2 * ceil32(return_data.size)) + 293 len 31]
                    if Mask(112, 0, ext_call.return_data[0]) <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    if Mask(112, 0, ext_call.return_data[0]):
                        return (10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]))
                ('iszero', ('mask_shl', 112, 0, 0, ('ext_call.return_data', 0, 32)))
            else:
                if not Mask(112, 0, ext_call.return_data[0]):
                    if Mask(112, 0, ext_call.return_data[32]) <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    if Mask(112, 0, ext_call.return_data[32]):
                        return (0 / Mask(112, 0, ext_call.return_data[32]))
                else:
                    if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 10^18:
                        revert with 0, 
                                    32,
                                    33,
                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[floor32(_142) + _16 + (2 * ceil32(return_data.size)) + 293 len 31]
                    if Mask(112, 0, ext_call.return_data[32]) <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    if Mask(112, 0, ext_call.return_data[32]):
                        return (10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]))
                ('iszero', ('mask_shl', 112, 0, 0, ('ext_call.return_data', 32, 32)))
    else:
        mem[floor32(_16) + ceil32(return_data.size) + 128] = mem[floor32(_16) + ceil32(return_data.size) + -(_16 % 32) + 160 len _16 % 32]
        mem[floor32(_16) + ceil32(return_data.size) + 160] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
        require ext_code.size(wNativeAddress)
        staticcall wNativeAddress.symbol() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[floor32(_16) + ceil32(return_data.size) + 160 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = floor32(_16) + (2 * ceil32(return_data.size)) + 160
        require return_data.size >= 32
        _139 = mem[floor32(_16) + ceil32(return_data.size) + 160]
        require mem[floor32(_16) + ceil32(return_data.size) + 160] <= 4294967296
        require mem[floor32(_16) + ceil32(return_data.size) + 160] + 32 <= return_data.size
        require return_data.size >= mem[floor32(_16) + ceil32(return_data.size) + mem[floor32(_16) + ceil32(return_data.size) + 160] + 160] + mem[floor32(_16) + ceil32(return_data.size) + 160] + 32 and mem[floor32(_16) + ceil32(return_data.size) + mem[floor32(_16) + ceil32(return_data.size) + 160] + 160] <= 4294967296
        mem[floor32(_16) + (2 * ceil32(return_data.size)) + 160] = mem[floor32(_16) + ceil32(return_data.size) + mem[floor32(_16) + ceil32(return_data.size) + 160] + 160]
        _144 = mem[floor32(_16) + ceil32(return_data.size) + _139 + 160]
        mem[floor32(_16) + (2 * ceil32(return_data.size)) + 192 len ceil32(mem[floor32(_16) + ceil32(return_data.size) + _139 + 160])] = mem[floor32(_16) + ceil32(return_data.size) + _139 + 192 len ceil32(mem[floor32(_16) + ceil32(return_data.size) + _139 + 160])]
        if not _144 % 32:
            if sha3(mem[ceil32(return_data.size) + 128 len mem[ceil32(return_data.size) + 96]]) == sha3(mem[floor32(_16) + (2 * ceil32(return_data.size)) + 192 len mem[floor32(_16) + (2 * ceil32(return_data.size)) + 160]]):
                if not Mask(112, 0, ext_call.return_data[32]):
                    if Mask(112, 0, ext_call.return_data[0]) <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    if Mask(112, 0, ext_call.return_data[0]):
                        return (0 / Mask(112, 0, ext_call.return_data[0]))
                else:
                    if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 10^18:
                        revert with 0, 
                                    32,
                                    33,
                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[_144 + floor32(_16) + (2 * ceil32(return_data.size)) + 293 len 31]
                    if Mask(112, 0, ext_call.return_data[0]) <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    if Mask(112, 0, ext_call.return_data[0]):
                        return (10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]))
                ('iszero', ('mask_shl', 112, 0, 0, ('ext_call.return_data', 0, 32)))
            else:
                if not Mask(112, 0, ext_call.return_data[0]):
                    if Mask(112, 0, ext_call.return_data[32]) <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    if Mask(112, 0, ext_call.return_data[32]):
                        return (0 / Mask(112, 0, ext_call.return_data[32]))
                else:
                    if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 10^18:
                        revert with 0, 
                                    32,
                                    33,
                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[_144 + floor32(_16) + (2 * ceil32(return_data.size)) + 293 len 31]
                    if Mask(112, 0, ext_call.return_data[32]) <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    if Mask(112, 0, ext_call.return_data[32]):
                        return (10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]))
                ('iszero', ('mask_shl', 112, 0, 0, ('ext_call.return_data', 32, 32)))
        else:
            mem[floor32(_144) + floor32(_16) + (2 * ceil32(return_data.size)) + 192] = mem[floor32(_144) + floor32(_16) + (2 * ceil32(return_data.size)) + -(_144 % 32) + 224 len _144 % 32]
            if sha3(mem[ceil32(return_data.size) + 128 len mem[ceil32(return_data.size) + 96]]) == sha3(mem[floor32(_16) + (2 * ceil32(return_data.size)) + 192 len mem[floor32(_16) + (2 * ceil32(return_data.size)) + 160]]):
                if not Mask(112, 0, ext_call.return_data[32]):
                    if Mask(112, 0, ext_call.return_data[0]) <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    if Mask(112, 0, ext_call.return_data[0]):
                        return (0 / Mask(112, 0, ext_call.return_data[0]))
                else:
                    if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 10^18:
                        revert with 0, 
                                    32,
                                    33,
                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[floor32(_144) + floor32(_16) + (2 * ceil32(return_data.size)) + 325 len 31]
                    if Mask(112, 0, ext_call.return_data[0]) <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    if Mask(112, 0, ext_call.return_data[0]):
                        return (10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]))
                ('iszero', ('mask_shl', 112, 0, 0, ('ext_call.return_data', 0, 32)))
            else:
                if not Mask(112, 0, ext_call.return_data[0]):
                    if Mask(112, 0, ext_call.return_data[32]) <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    if Mask(112, 0, ext_call.return_data[32]):
                        return (0 / Mask(112, 0, ext_call.return_data[32]))
                else:
                    if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 10^18:
                        revert with 0, 
                                    32,
                                    33,
                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[floor32(_144) + floor32(_16) + (2 * ceil32(return_data.size)) + 325 len 31]
                    if Mask(112, 0, ext_call.return_data[32]) <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    if Mask(112, 0, ext_call.return_data[32]):
                        return (10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]))
                ('iszero', ('mask_shl', 112, 0, 0, ('ext_call.return_data', 32, 32)))
    revert
}

function meowPrice() payable {
    require ext_code.size(sub_d4384dbeAddress)
    staticcall sub_d4384dbeAddress.getPair(address arg1, address arg2) with:
            gas gas_remaining wei
           args wNativeAddress, sub_abc7e0dfAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[12 len 20]:
        return 0
    require ext_code.size(sub_d4384dbeAddress)
    staticcall sub_d4384dbeAddress.getPair(address arg1, address arg2) with:
            gas gas_remaining wei
           args wNativeAddress, sub_abc7e0dfAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).getReserves() with:
            gas gas_remaining wei
    mem[96 len 96] = ext_call.return_data[0 len 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).token0() with:
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
    _23 = mem[96]
    require mem[96] <= 4294967296
    require mem[96] + 32 <= return_data.size
    require return_data.size >= mem[mem[96] + 96] + mem[96] + 32 and mem[mem[96] + 96] <= 4294967296
    mem[ceil32(return_data.size) + 96] = mem[mem[96] + 96]
    _26 = mem[_23 + 96]
    mem[ceil32(return_data.size) + 128 len ceil32(mem[_23 + 96])] = mem[_23 + 128 len ceil32(mem[_23 + 96])]
    if not _26 % 32:
        mem[_26 + ceil32(return_data.size) + 128] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
        require ext_code.size(wNativeAddress)
        staticcall wNativeAddress.symbol() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[_26 + ceil32(return_data.size) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = _26 + (2 * ceil32(return_data.size)) + 128
        require return_data.size >= 32
        _4306 = mem[_26 + ceil32(return_data.size) + 128]
        require mem[_26 + ceil32(return_data.size) + 128] <= 4294967296
        require mem[_26 + ceil32(return_data.size) + 128] + 32 <= return_data.size
        require return_data.size >= mem[_26 + ceil32(return_data.size) + mem[_26 + ceil32(return_data.size) + 128] + 128] + mem[_26 + ceil32(return_data.size) + 128] + 32 and mem[_26 + ceil32(return_data.size) + mem[_26 + ceil32(return_data.size) + 128] + 128] <= 4294967296
        mem[_26 + (2 * ceil32(return_data.size)) + 128] = mem[_26 + ceil32(return_data.size) + mem[_26 + ceil32(return_data.size) + 128] + 128]
        _4312 = mem[_26 + ceil32(return_data.size) + _4306 + 128]
        mem[_26 + (2 * ceil32(return_data.size)) + 160 len ceil32(mem[_26 + ceil32(return_data.size) + _4306 + 128])] = mem[_26 + ceil32(return_data.size) + _4306 + 160 len ceil32(mem[_26 + ceil32(return_data.size) + _4306 + 128])]
        if not _4312 % 32:
            if sha3(mem[ceil32(return_data.size) + 128 len mem[ceil32(return_data.size) + 96]]) == sha3(mem[_26 + (2 * ceil32(return_data.size)) + 160 len mem[_26 + (2 * ceil32(return_data.size)) + 128]]):
                if not Mask(112, 0, ext_call.return_data[32]):
                    if Mask(112, 0, ext_call.return_data[0]) <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    if Mask(112, 0, ext_call.return_data[0]):
                        require ext_code.size(sub_d4384dbeAddress)
                        staticcall sub_d4384dbeAddress.getPair(address arg1, address arg2) with:
                                gas gas_remaining wei
                               args wNativeAddress, usdcTokenAddress
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).getReserves() with:
                                gas gas_remaining wei
                        mem[_4312 + _26 + (2 * ceil32(return_data.size)) + 160 len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[_4312 + _26 + (2 * ceil32(return_data.size)) + 160] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).symbol() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_4312 + _26 + (2 * ceil32(return_data.size)) + 160 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = _4312 + _26 + (4 * ceil32(return_data.size)) + 160
                        require return_data.size >= 32
                        _8880 = mem[_4312 + _26 + (2 * ceil32(return_data.size)) + 160]
                        require mem[_4312 + _26 + (2 * ceil32(return_data.size)) + 160] <= 4294967296
                        require mem[_4312 + _26 + (2 * ceil32(return_data.size)) + 160] + 32 <= return_data.size
                        require return_data.size >= mem[_4312 + _26 + (2 * ceil32(return_data.size)) + mem[_4312 + _26 + (2 * ceil32(return_data.size)) + 160] + 160] + mem[_4312 + _26 + (2 * ceil32(return_data.size)) + 160] + 32 and mem[_4312 + _26 + (2 * ceil32(return_data.size)) + mem[_4312 + _26 + (2 * ceil32(return_data.size)) + 160] + 160] <= 4294967296
                        mem[_4312 + _26 + (4 * ceil32(return_data.size)) + 160] = mem[_4312 + _26 + (2 * ceil32(return_data.size)) + mem[_4312 + _26 + (2 * ceil32(return_data.size)) + 160] + 160]
                        _8930 = mem[_4312 + _26 + (2 * ceil32(return_data.size)) + _8880 + 160]
                        mem[_4312 + _26 + (4 * ceil32(return_data.size)) + 192 len ceil32(mem[_4312 + _26 + (2 * ceil32(return_data.size)) + _8880 + 160])] = mem[_4312 + _26 + (2 * ceil32(return_data.size)) + _8880 + 192 len ceil32(mem[_4312 + _26 + (2 * ceil32(return_data.size)) + _8880 + 160])]
                        if not _8930 % 32:
                            mem[_8930 + _4312 + _26 + (4 * ceil32(return_data.size)) + 192] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                            require ext_code.size(wNativeAddress)
                            staticcall wNativeAddress.symbol() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[_8930 + _4312 + _26 + (4 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = _8930 + _4312 + _26 + (6 * ceil32(return_data.size)) + 192
                            require return_data.size >= 32
                            _12918 = mem[_8930 + _4312 + _26 + (4 * ceil32(return_data.size)) + 192]
                            require mem[_8930 + _4312 + _26 + (4 * ceil32(return_data.size)) + 192] <= 4294967296
                            require mem[_8930 + _4312 + _26 + (4 * ceil32(return_data.size)) + 192] + 32 <= return_data.size
                            require return_data.size >= mem[_8930 + _4312 + _26 + (4 * ceil32(return_data.size)) + mem[_8930 + _4312 + _26 + (4 * ceil32(return_data.size)) + 192] + 192] + mem[_8930 + _4312 + _26 + (4 * ceil32(return_data.size)) + 192] + 32 and mem[_8930 + _4312 + _26 + (4 * ceil32(return_data.size)) + mem[_8930 + _4312 + _26 + (4 * ceil32(return_data.size)) + 192] + 192] <= 4294967296
                            mem[_8930 + _4312 + _26 + (6 * ceil32(return_data.size)) + 192] = mem[_8930 + _4312 + _26 + (4 * ceil32(return_data.size)) + mem[_8930 + _4312 + _26 + (4 * ceil32(return_data.size)) + 192] + 192]
                            _13013 = mem[_8930 + _4312 + _26 + (4 * ceil32(return_data.size)) + _12918 + 192]
                            mem[_8930 + _4312 + _26 + (6 * ceil32(return_data.size)) + 224 len ceil32(mem[_8930 + _4312 + _26 + (4 * ceil32(return_data.size)) + _12918 + 192])] = mem[_8930 + _4312 + _26 + (4 * ceil32(return_data.size)) + _12918 + 224 len ceil32(mem[_8930 + _4312 + _26 + (4 * ceil32(return_data.size)) + _12918 + 192])]
                            if not _13013 % 32:
                                if sha3(mem[_4312 + _26 + (4 * ceil32(return_data.size)) + 192 len mem[_4312 + _26 + (4 * ceil32(return_data.size)) + 160]]) == sha3(mem[_8930 + _4312 + _26 + (6 * ceil32(return_data.size)) + 224 len mem[_8930 + _4312 + _26 + (6 * ceil32(return_data.size)) + 192]]):
                                    if not Mask(112, 0, ext_call.return_data[32]):
                                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if Mask(112, 0, ext_call.return_data[0]):
                                            if not 0 / Mask(112, 0, ext_call.return_data[0]):
                                                if 0 / Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 0 / Mask(112, 0, ext_call.return_data[0]):
                                                    return (0 / 0 / Mask(112, 0, ext_call.return_data[0]))
                                            else:
                                                if 10^18 * 0 / Mask(112, 0, ext_call.return_data[0]) / 0 / Mask(112, 0, ext_call.return_data[0]) != 10^18:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[_13013 + _8930 + _4312 + _26 + (6 * ceil32(return_data.size)) + 325 len 31]
                                                if 0 / Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 0 / Mask(112, 0, ext_call.return_data[0]):
                                                    return (10^18 * 0 / Mask(112, 0, ext_call.return_data[0]) / 0 / Mask(112, 0, ext_call.return_data[0]))
                                            ('iszero', ('div', 0, ('mask_shl', 112, 0, 0, ('ext_call.return_data', 0, 32))))
                                    else:
                                        if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 10^18:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[_13013 + _8930 + _4312 + _26 + (6 * ceil32(return_data.size)) + 325 len 31]
                                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if Mask(112, 0, ext_call.return_data[0]):
                                            if not 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                                                if 0 / Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 0 / Mask(112, 0, ext_call.return_data[0]):
                                                    return (0 / 0 / Mask(112, 0, ext_call.return_data[0]))
                                            else:
                                                if 10^18 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) != 10^18:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[_13013 + _8930 + _4312 + _26 + (6 * ceil32(return_data.size)) + 325 len 31]
                                                if 0 / Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 0 / Mask(112, 0, ext_call.return_data[0]):
                                                    return (10^18 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 0 / Mask(112, 0, ext_call.return_data[0]))
                                            ('iszero', ('div', 0, ('mask_shl', 112, 0, 0, ('ext_call.return_data', 0, 32))))
                                else:
                                    if not Mask(112, 0, ext_call.return_data[0]):
                                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if Mask(112, 0, ext_call.return_data[32]):
                                            if not 0 / Mask(112, 0, ext_call.return_data[32]):
                                                if 0 / Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 0 / Mask(112, 0, ext_call.return_data[0]):
                                                    return (0 / 0 / Mask(112, 0, ext_call.return_data[0]))
                                            else:
                                                if 10^18 * 0 / Mask(112, 0, ext_call.return_data[32]) / 0 / Mask(112, 0, ext_call.return_data[32]) != 10^18:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[_13013 + _8930 + _4312 + _26 + (6 * ceil32(return_data.size)) + 325 len 31]
                                                if 0 / Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 0 / Mask(112, 0, ext_call.return_data[0]):
                                                    return (10^18 * 0 / Mask(112, 0, ext_call.return_data[32]) / 0 / Mask(112, 0, ext_call.return_data[0]))
                                            ('iszero', ('div', 0, ('mask_shl', 112, 0, 0, ('ext_call.return_data', 0, 32))))
                                    else:
                                        if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 10^18:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[_13013 + _8930 + _4312 + _26 + (6 * ceil32(return_data.size)) + 325 len 31]
                                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if Mask(112, 0, ext_call.return_data[32]):
                                            if not 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                                                if 0 / Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 0 / Mask(112, 0, ext_call.return_data[0]):
                                                    return (0 / 0 / Mask(112, 0, ext_call.return_data[0]))
                                            else:
                                                if 10^18 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) / 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) != 10^18:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[_13013 + _8930 + _4312 + _26 + (6 * ceil32(return_data.size)) + 325 len 31]
                                                if 0 / Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 0 / Mask(112, 0, ext_call.return_data[0]):
                                                    return (10^18 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) / 0 / Mask(112, 0, ext_call.return_data[0]))
                                            ('iszero', ('div', 0, ('mask_shl', 112, 0, 0, ('ext_call.return_data', 0, 32))))
                            else:
                                mem[floor32(_13013) + _8930 + _4312 + _26 + (6 * ceil32(return_data.size)) + 224] = mem[floor32(_13013) + _8930 + _4312 + _26 + (6 * ceil32(return_data.size)) + -(_13013 % 32) + 256 len _13013 % 32]
                                if sha3(mem[_4312 + _26 + (4 * ceil32(return_data.size)) + 192 len mem[_4312 + _26 + (4 * ceil32(return_data.size)) + 160]]) == sha3(mem[_8930 + _4312 + _26 + (6 * ceil32(return_data.size)) + 224 len mem[_8930 + _4312 + _26 + (6 * ceil32(return_data.size)) + 192]]):
                                    if not Mask(112, 0, ext_call.return_data[32]):
                                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if Mask(112, 0, ext_call.return_data[0]):
                                            if not 0 / Mask(112, 0, ext_call.return_data[0]):
                                                if 0 / Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 0 / Mask(112, 0, ext_call.return_data[0]):
                                                    return (0 / 0 / Mask(112, 0, ext_call.return_data[0]))
                                            else:
                                                if 10^18 * 0 / Mask(112, 0, ext_call.return_data[0]) / 0 / Mask(112, 0, ext_call.return_data[0]) != 10^18:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[floor32(_13013) + _8930 + _4312 + _26 + (6 * ceil32(return_data.size)) + 357 len 31]
                                                if 0 / Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 0 / Mask(112, 0, ext_call.return_data[0]):
                                                    return (10^18 * 0 / Mask(112, 0, ext_call.return_data[0]) / 0 / Mask(112, 0, ext_call.return_data[0]))
                                            ('iszero', ('div', 0, ('mask_shl', 112, 0, 0, ('ext_call.return_data', 0, 32))))
                                    else:
                                        if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 10^18:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[floor32(_13013) + _8930 + _4312 + _26 + (6 * ceil32(return_data.size)) + 357 len 31]
                                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if Mask(112, 0, ext_call.return_data[0]):
                                            if not 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                                                if 0 / Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 0 / Mask(112, 0, ext_call.return_data[0]):
                                                    return (0 / 0 / Mask(112, 0, ext_call.return_data[0]))
                                            else:
                                                if 10^18 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) != 10^18:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[floor32(_13013) + _8930 + _4312 + _26 + (6 * ceil32(return_data.size)) + 357 len 31]
                                                if 0 / Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 0 / Mask(112, 0, ext_call.return_data[0]):
                                                    return (10^18 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 0 / Mask(112, 0, ext_call.return_data[0]))
                                            ('iszero', ('div', 0, ('mask_shl', 112, 0, 0, ('ext_call.return_data', 0, 32))))
                                else:
                                    if not Mask(112, 0, ext_call.return_data[0]):
                                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if Mask(112, 0, ext_call.return_data[32]):
                                            if not 0 / Mask(112, 0, ext_call.return_data[32]):
                                                if 0 / Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 0 / Mask(112, 0, ext_call.return_data[0]):
                                                    return (0 / 0 / Mask(112, 0, ext_call.return_data[0]))
                                            else:
                                                if 10^18 * 0 / Mask(112, 0, ext_call.return_data[32]) / 0 / Mask(112, 0, ext_call.return_data[32]) != 10^18:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[floor32(_13013) + _8930 + _4312 + _26 + (6 * ceil32(return_data.size)) + 357 len 31]
                                                if 0 / Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 0 / Mask(112, 0, ext_call.return_data[0]):
                                                    return (10^18 * 0 / Mask(112, 0, ext_call.return_data[32]) / 0 / Mask(112, 0, ext_call.return_data[0]))
                                            ('iszero', ('div', 0, ('mask_shl', 112, 0, 0, ('ext_call.return_data', 0, 32))))
                                    else:
                                        if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 10^18:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[floor32(_13013) + _8930 + _4312 + _26 + (6 * ceil32(return_data.size)) + 357 len 31]
                                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if Mask(112, 0, ext_call.return_data[32]):
                                            if not 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                                                if 0 / Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 0 / Mask(112, 0, ext_call.return_data[0]):
                                                    return (0 / 0 / Mask(112, 0, ext_call.return_data[0]))
                                            else:
                                                if 10^18 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) / 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) != 10^18:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[floor32(_13013) + _8930 + _4312 + _26 + (6 * ceil32(return_data.size)) + 357 len 31]
                                                if 0 / Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 0 / Mask(112, 0, ext_call.return_data[0]):
                                                    return (10^18 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) / 0 / Mask(112, 0, ext_call.return_data[0]))
                                            ('iszero', ('div', 0, ('mask_shl', 112, 0, 0, ('ext_call.return_data', 0, 32))))
                        else:
                            mem[floor32(_8930) + _4312 + _26 + (4 * ceil32(return_data.size)) + 192] = mem[floor32(_8930) + _4312 + _26 + (4 * ceil32(return_data.size)) + -(_8930 % 32) + 224 len _8930 % 32]
                            mem[floor32(_8930) + _4312 + _26 + (4 * ceil32(return_data.size)) + 224] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                            require ext_code.size(wNativeAddress)
                            staticcall wNativeAddress.symbol() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[floor32(_8930) + _4312 + _26 + (4 * ceil32(return_data.size)) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = floor32(_8930) + _4312 + _26 + (6 * ceil32(return_data.size)) + 224
                            require return_data.size >= 32
                            _12965 = mem[floor32(_8930) + _4312 + _26 + (4 * ceil32(return_data.size)) + 224]
                            require mem[floor32(_8930) + _4312 + _26 + (4 * ceil32(return_data.size)) + 224] <= 4294967296
                            require mem[floor32(_8930) + _4312 + _26 + (4 * ceil32(return_data.size)) + 224] + 32 <= return_data.size
                            require return_data.size >= mem[floor32(_8930) + _4312 + _26 + (4 * ceil32(return_data.size)) + mem[floor32(_8930) + _4312 + _26 + (4 * ceil32(return_data.size)) + 224] + 224] + mem[floor32(_8930) + _4312 + _26 + (4 * ceil32(return_data.size)) + 224] + 32 and mem[floor32(_8930) + _4312 + _26 + (4 * ceil32(return_data.size)) + mem[floor32(_8930) + _4312 + _26 + (4 * ceil32(return_data.size)) + 224] + 224] <= 4294967296
                            mem[floor32(_8930) + _4312 + _26 + (6 * ceil32(return_data.size)) + 224] = mem[floor32(_8930) + _4312 + _26 + (4 * ceil32(return_data.size)) + mem[floor32(_8930) + _4312 + _26 + (4 * ceil32(return_data.size)) + 224] + 224]
                            _13044 = mem[floor32(_8930) + _4312 + _26 + (4 * ceil32(return_data.size)) + _12965 + 224]
                            mem[floor32(_8930) + _4312 + _26 + (6 * ceil32(return_data.size)) + 256 len ceil32(mem[floor32(_8930) + _4312 + _26 + (4 * ceil32(return_data.size)) + _12965 + 224])] = mem[floor32(_8930) + _4312 + _26 + (4 * ceil32(return_data.size)) + _12965 + 256 len ceil32(mem[floor32(_8930) + _4312 + _26 + (4 * ceil32(return_data.size)) + _12965 + 224])]
                            if not _13044 % 32:
                                if sha3(mem[_4312 + _26 + (4 * ceil32(return_data.size)) + 192 len mem[_4312 + _26 + (4 * ceil32(return_data.size)) + 160]]) == sha3(mem[floor32(_8930) + _4312 + _26 + (6 * ceil32(return_data.size)) + 256 len mem[floor32(_8930) + _4312 + _26 + (6 * ceil32(return_data.size)) + 224]]):
                                    if not Mask(112, 0, ext_call.return_data[32]):
                                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if Mask(112, 0, ext_call.return_data[0]):
                                            if not 0 / Mask(112, 0, ext_call.return_data[0]):
                                                if 0 / Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 0 / Mask(112, 0, ext_call.return_data[0]):
                                                    return (0 / 0 / Mask(112, 0, ext_call.return_data[0]))
                                            else:
                                                if 10^18 * 0 / Mask(112, 0, ext_call.return_data[0]) / 0 / Mask(112, 0, ext_call.return_data[0]) != 10^18:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[_13044 + floor32(_8930) + _4312 + _26 + (6 * ceil32(return_data.size)) + 357 len 31]
                                                if 0 / Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 0 / Mask(112, 0, ext_call.return_data[0]):
                                                    return (10^18 * 0 / Mask(112, 0, ext_call.return_data[0]) / 0 / Mask(112, 0, ext_call.return_data[0]))
                                            ('iszero', ('div', 0, ('mask_shl', 112, 0, 0, ('ext_call.return_data', 0, 32))))
                                    else:
                                        if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 10^18:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[_13044 + floor32(_8930) + _4312 + _26 + (6 * ceil32(return_data.size)) + 357 len 31]
                                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if Mask(112, 0, ext_call.return_data[0]):
                                            if not 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                                                if 0 / Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 0 / Mask(112, 0, ext_call.return_data[0]):
                                                    return (0 / 0 / Mask(112, 0, ext_call.return_data[0]))
                                            else:
                                                if 10^18 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) != 10^18:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[_13044 + floor32(_8930) + _4312 + _26 + (6 * ceil32(return_data.size)) + 357 len 31]
                                                if 0 / Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 0 / Mask(112, 0, ext_call.return_data[0]):
                                                    return (10^18 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 0 / Mask(112, 0, ext_call.return_data[0]))
                                            ('iszero', ('div', 0, ('mask_shl', 112, 0, 0, ('ext_call.return_data', 0, 32))))
                                else:
                                    if not Mask(112, 0, ext_call.return_data[0]):
                                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if Mask(112, 0, ext_call.return_data[32]):
                                            if not 0 / Mask(112, 0, ext_call.return_data[32]):
                                                if 0 / Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 0 / Mask(112, 0, ext_call.return_data[0]):
                                                    return (0 / 0 / Mask(112, 0, ext_call.return_data[0]))
                                            else:
                                                if 10^18 * 0 / Mask(112, 0, ext_call.return_data[32]) / 0 / Mask(112, 0, ext_call.return_data[32]) != 10^18:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[_13044 + floor32(_8930) + _4312 + _26 + (6 * ceil32(return_data.size)) + 357 len 31]
                                                if 0 / Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 0 / Mask(112, 0, ext_call.return_data[0]):
                                                    return (10^18 * 0 / Mask(112, 0, ext_call.return_data[32]) / 0 / Mask(112, 0, ext_call.return_data[0]))
                                            ('iszero', ('div', 0, ('mask_shl', 112, 0, 0, ('ext_call.return_data', 0, 32))))
                                    else:
                                        if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 10^18:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[_13044 + floor32(_8930) + _4312 + _26 + (6 * ceil32(return_data.size)) + 357 len 31]
                                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if Mask(112, 0, ext_call.return_data[32]):
                                            if not 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                                                if 0 / Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 0 / Mask(112, 0, ext_call.return_data[0]):
                                                    return (0 / 0 / Mask(112, 0, ext_call.return_data[0]))
                                            else:
                                                if 10^18 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) / 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) != 10^18:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[_13044 + floor32(_8930) + _4312 + _26 + (6 * ceil32(return_data.size)) + 357 len 31]
                                                if 0 / Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 0 / Mask(112, 0, ext_call.return_data[0]):
                                                    return (10^18 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) / 0 / Mask(112, 0, ext_call.return_data[0]))
                                            ('iszero', ('div', 0, ('mask_shl', 112, 0, 0, ('ext_call.return_data', 0, 32))))
                            else:
                                mem[floor32(_13044) + floor32(_8930) + _4312 + _26 + (6 * ceil32(return_data.size)) + 256] = mem[floor32(_13044) + floor32(_8930) + _4312 + _26 + (6 * ceil32(return_data.size)) + -(_13044 % 32) + 288 len _13044 % 32]
                                if sha3(mem[_4312 + _26 + (4 * ceil32(return_data.size)) + 192 len mem[_4312 + _26 + (4 * ceil32(return_data.size)) + 160]]) == sha3(mem[floor32(_8930) + _4312 + _26 + (6 * ceil32(return_data.size)) + 256 len mem[floor32(_8930) + _4312 + _26 + (6 * ceil32(return_data.size)) + 224]]):
                                    if not Mask(112, 0, ext_call.return_data[32]):
                                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if Mask(112, 0, ext_call.return_data[0]):
                                            if not 0 / Mask(112, 0, ext_call.return_data[0]):
                                                if 0 / Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 0 / Mask(112, 0, ext_call.return_data[0]):
                                                    return (0 / 0 / Mask(112, 0, ext_call.return_data[0]))
                                            else:
                                                if 10^18 * 0 / Mask(112, 0, ext_call.return_data[0]) / 0 / Mask(112, 0, ext_call.return_data[0]) != 10^18:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[floor32(_13044) + floor32(_8930) + _4312 + _26 + (6 * ceil32(return_data.size)) + 389 len 31]
                                                if 0 / Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 0 / Mask(112, 0, ext_call.return_data[0]):
                                                    return (10^18 * 0 / Mask(112, 0, ext_call.return_data[0]) / 0 / Mask(112, 0, ext_call.return_data[0]))
                                            ('iszero', ('div', 0, ('mask_shl', 112, 0, 0, ('ext_call.return_data', 0, 32))))
                                    else:
                                        if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 10^18:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[floor32(_13044) + floor32(_8930) + _4312 + _26 + (6 * ceil32(return_data.size)) + 389 len 31]
                                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if Mask(112, 0, ext_call.return_data[0]):
                                            if not 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                                                if 0 / Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 0 / Mask(112, 0, ext_call.return_data[0]):
                                                    return (0 / 0 / Mask(112, 0, ext_call.return_data[0]))
                                            else:
                                                if 10^18 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) != 10^18:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[floor32(_13044) + floor32(_8930) + _4312 + _26 + (6 * ceil32(return_data.size)) + 389 len 31]
                                                if 0 / Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 0 / Mask(112, 0, ext_call.return_data[0]):
                                                    return (10^18 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 0 / Mask(112, 0, ext_call.return_data[0]))
                                            ('iszero', ('div', 0, ('mask_shl', 112, 0, 0, ('ext_call.return_data', 0, 32))))
                                else:
                                    if not Mask(112, 0, ext_call.return_data[0]):
                                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if Mask(112, 0, ext_call.return_data[32]):
                                            if not 0 / Mask(112, 0, ext_call.return_data[32]):
                                                if 0 / Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 0 / Mask(112, 0, ext_call.return_data[0]):
                                                    return (0 / 0 / Mask(112, 0, ext_call.return_data[0]))
                                            else:
                                                if 10^18 * 0 / Mask(112, 0, ext_call.return_data[32]) / 0 / Mask(112, 0, ext_call.return_data[32]) != 10^18:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[floor32(_13044) + floor32(_8930) + _4312 + _26 + (6 * ceil32(return_data.size)) + 389 len 31]
                                                if 0 / Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 0 / Mask(112, 0, ext_call.return_data[0]):
                                                    return (10^18 * 0 / Mask(112, 0, ext_call.return_data[32]) / 0 / Mask(112, 0, ext_call.return_data[0]))
                                            ('iszero', ('div', 0, ('mask_shl', 112, 0, 0, ('ext_call.return_data', 0, 32))))
                                    else:
                                        if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 10^18:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[floor32(_13044) + floor32(_8930) + _4312 + _26 + (6 * ceil32(return_data.size)) + 389 len 31]
                                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if Mask(112, 0, ext_call.return_data[32]):
                                            if not 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                                                if 0 / Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 0 / Mask(112, 0, ext_call.return_data[0]):
                                                    return (0 / 0 / Mask(112, 0, ext_call.return_data[0]))
                                            else:
                                                if 10^18 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) / 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) != 10^18:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[floor32(_13044) + floor32(_8930) + _4312 + _26 + (6 * ceil32(return_data.size)) + 389 len 31]
                                                if 0 / Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 0 / Mask(112, 0, ext_call.return_data[0]):
                                                    return (10^18 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) / 0 / Mask(112, 0, ext_call.return_data[0]))
                                            ('iszero', ('div', 0, ('mask_shl', 112, 0, 0, ('ext_call.return_data', 0, 32))))
                else:
                    if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 10^18:
                        revert with 0, 
                                    32,
                                    33,
                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[_4312 + _26 + (2 * ceil32(return_data.size)) + 261 len 31]
                    if Mask(112, 0, ext_call.return_data[0]) <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    if Mask(112, 0, ext_call.return_data[0]):
                        require ext_code.size(sub_d4384dbeAddress)
                        staticcall sub_d4384dbeAddress.getPair(address arg1, address arg2) with:
                                gas gas_remaining wei
                               args wNativeAddress, usdcTokenAddress
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).getReserves() with:
                                gas gas_remaining wei
                        mem[_4312 + _26 + (2 * ceil32(return_data.size)) + 160 len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[_4312 + _26 + (2 * ceil32(return_data.size)) + 160] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).symbol() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_4312 + _26 + (2 * ceil32(return_data.size)) + 160 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = _4312 + _26 + (4 * ceil32(return_data.size)) + 160
                        require return_data.size >= 32
                        _8895 = mem[_4312 + _26 + (2 * ceil32(return_data.size)) + 160]
                        require mem[_4312 + _26 + (2 * ceil32(return_data.size)) + 160] <= 4294967296
                        require mem[_4312 + _26 + (2 * ceil32(return_data.size)) + 160] + 32 <= return_data.size
                        require return_data.size >= mem[_4312 + _26 + (2 * ceil32(return_data.size)) + mem[_4312 + _26 + (2 * ceil32(return_data.size)) + 160] + 160] + mem[_4312 + _26 + (2 * ceil32(return_data.size)) + 160] + 32 and mem[_4312 + _26 + (2 * ceil32(return_data.size)) + mem[_4312 + _26 + (2 * ceil32(return_data.size)) + 160] + 160] <= 4294967296
                        mem[_4312 + _26 + (4 * ceil32(return_data.size)) + 160] = mem[_4312 + _26 + (2 * ceil32(return_data.size)) + mem[_4312 + _26 + (2 * ceil32(return_data.size)) + 160] + 160]
                        _8941 = mem[_4312 + _26 + (2 * ceil32(return_data.size)) + _8895 + 160]
                        mem[_4312 + _26 + (4 * ceil32(return_data.size)) + 192 len ceil32(mem[_4312 + _26 + (2 * ceil32(return_data.size)) + _8895 + 160])] = mem[_4312 + _26 + (2 * ceil32(return_data.size)) + _8895 + 192 len ceil32(mem[_4312 + _26 + (2 * ceil32(return_data.size)) + _8895 + 160])]
                        if not _8941 % 32:
                            mem[_8941 + _4312 + _26 + (4 * ceil32(return_data.size)) + 192] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                            require ext_code.size(wNativeAddress)
                            staticcall wNativeAddress.symbol() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[_8941 + _4312 + _26 + (4 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = _8941 + _4312 + _26 + (6 * ceil32(return_data.size)) + 192
                            require return_data.size >= 32
                            _12915 = mem[_8941 + _4312 + _26 + (4 * ceil32(return_data.size)) + 192]
                            require mem[_8941 + _4312 + _26 + (4 * ceil32(return_data.size)) + 192] <= 4294967296
                            require mem[_8941 + _4312 + _26 + (4 * ceil32(return_data.size)) + 192] + 32 <= return_data.size
                            require return_data.size >= mem[_8941 + _4312 + _26 + (4 * ceil32(return_data.size)) + mem[_8941 + _4312 + _26 + (4 * ceil32(return_data.size)) + 192] + 192] + mem[_8941 + _4312 + _26 + (4 * ceil32(return_data.size)) + 192] + 32 and mem[_8941 + _4312 + _26 + (4 * ceil32(return_data.size)) + mem[_8941 + _4312 + _26 + (4 * ceil32(return_data.size)) + 192] + 192] <= 4294967296
                            mem[_8941 + _4312 + _26 + (6 * ceil32(return_data.size)) + 192] = mem[_8941 + _4312 + _26 + (4 * ceil32(return_data.size)) + mem[_8941 + _4312 + _26 + (4 * ceil32(return_data.size)) + 192] + 192]
                            _13011 = mem[_8941 + _4312 + _26 + (4 * ceil32(return_data.size)) + _12915 + 192]
                            mem[_8941 + _4312 + _26 + (6 * ceil32(return_data.size)) + 224 len ceil32(mem[_8941 + _4312 + _26 + (4 * ceil32(return_data.size)) + _12915 + 192])] = mem[_8941 + _4312 + _26 + (4 * ceil32(return_data.size)) + _12915 + 224 len ceil32(mem[_8941 + _4312 + _26 + (4 * ceil32(return_data.size)) + _12915 + 192])]
                            if not _13011 % 32:
                                if sha3(mem[_4312 + _26 + (4 * ceil32(return_data.size)) + 192 len mem[_4312 + _26 + (4 * ceil32(return_data.size)) + 160]]) == sha3(mem[_8941 + _4312 + _26 + (6 * ceil32(return_data.size)) + 224 len mem[_8941 + _4312 + _26 + (6 * ceil32(return_data.size)) + 192]]):
                                    if not Mask(112, 0, ext_call.return_data[32]):
                                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if Mask(112, 0, ext_call.return_data[0]):
                                            if not 0 / Mask(112, 0, ext_call.return_data[0]):
                                                if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                                                    return (0 / 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]))
                                            else:
                                                if 10^18 * 0 / Mask(112, 0, ext_call.return_data[0]) / 0 / Mask(112, 0, ext_call.return_data[0]) != 10^18:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[_13011 + _8941 + _4312 + _26 + (6 * ceil32(return_data.size)) + 325 len 31]
                                                if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                                                    return (10^18 * 0 / Mask(112, 0, ext_call.return_data[0]) / 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]))
                                            ('iszero', ('div', ('mul', 1000000000000000000, ('mask_shl', 112, 0, 0, ('ext_call.return_data', 32, 32))), ('mask_shl', 112, 0, 0, ('ext_call.return_data', 0, 32))))
                                    else:
                                        if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 10^18:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[_13011 + _8941 + _4312 + _26 + (6 * ceil32(return_data.size)) + 325 len 31]
                                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if Mask(112, 0, ext_call.return_data[0]):
                                            if not 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                                                if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                                                    return (0 / 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]))
                                            else:
                                                if 10^18 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) != 10^18:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[_13011 + _8941 + _4312 + _26 + (6 * ceil32(return_data.size)) + 325 len 31]
                                                if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                                                    return (10^18 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]))
                                            ('iszero', ('div', ('mul', 1000000000000000000, ('mask_shl', 112, 0, 0, ('ext_call.return_data', 32, 32))), ('mask_shl', 112, 0, 0, ('ext_call.return_data', 0, 32))))
                                else:
                                    if not Mask(112, 0, ext_call.return_data[0]):
                                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if Mask(112, 0, ext_call.return_data[32]):
                                            if not 0 / Mask(112, 0, ext_call.return_data[32]):
                                                if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                                                    return (0 / 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]))
                                            else:
                                                if 10^18 * 0 / Mask(112, 0, ext_call.return_data[32]) / 0 / Mask(112, 0, ext_call.return_data[32]) != 10^18:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[_13011 + _8941 + _4312 + _26 + (6 * ceil32(return_data.size)) + 325 len 31]
                                                if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                                                    return (10^18 * 0 / Mask(112, 0, ext_call.return_data[32]) / 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]))
                                            ('iszero', ('div', ('mul', 1000000000000000000, ('mask_shl', 112, 0, 0, ('ext_call.return_data', 32, 32))), ('mask_shl', 112, 0, 0, ('ext_call.return_data', 0, 32))))
                                    else:
                                        if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 10^18:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[_13011 + _8941 + _4312 + _26 + (6 * ceil32(return_data.size)) + 325 len 31]
                                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if Mask(112, 0, ext_call.return_data[32]):
                                            if not 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                                                if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                                                    return (0 / 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]))
                                            else:
                                                if 10^18 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) / 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) != 10^18:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[_13011 + _8941 + _4312 + _26 + (6 * ceil32(return_data.size)) + 325 len 31]
                                                if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                                                    return (10^18 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) / 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]))
                                            ('iszero', ('div', ('mul', 1000000000000000000, ('mask_shl', 112, 0, 0, ('ext_call.return_data', 32, 32))), ('mask_shl', 112, 0, 0, ('ext_call.return_data', 0, 32))))
                            else:
                                mem[floor32(_13011) + _8941 + _4312 + _26 + (6 * ceil32(return_data.size)) + 224] = mem[floor32(_13011) + _8941 + _4312 + _26 + (6 * ceil32(return_data.size)) + -(_13011 % 32) + 256 len _13011 % 32]
                                if sha3(mem[_4312 + _26 + (4 * ceil32(return_data.size)) + 192 len mem[_4312 + _26 + (4 * ceil32(return_data.size)) + 160]]) == sha3(mem[_8941 + _4312 + _26 + (6 * ceil32(return_data.size)) + 224 len mem[_8941 + _4312 + _26 + (6 * ceil32(return_data.size)) + 192]]):
                                    if not Mask(112, 0, ext_call.return_data[32]):
                                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if Mask(112, 0, ext_call.return_data[0]):
                                            if not 0 / Mask(112, 0, ext_call.return_data[0]):
                                                if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                                                    return (0 / 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]))
                                            else:
                                                if 10^18 * 0 / Mask(112, 0, ext_call.return_data[0]) / 0 / Mask(112, 0, ext_call.return_data[0]) != 10^18:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[floor32(_13011) + _8941 + _4312 + _26 + (6 * ceil32(return_data.size)) + 357 len 31]
                                                if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                                                    return (10^18 * 0 / Mask(112, 0, ext_call.return_data[0]) / 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]))
                                            ('iszero', ('div', ('mul', 1000000000000000000, ('mask_shl', 112, 0, 0, ('ext_call.return_data', 32, 32))), ('mask_shl', 112, 0, 0, ('ext_call.return_data', 0, 32))))
                                    else:
                                        if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 10^18:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[floor32(_13011) + _8941 + _4312 + _26 + (6 * ceil32(return_data.size)) + 357 len 31]
                                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if Mask(112, 0, ext_call.return_data[0]):
                                            if not 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                                                if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                                                    return (0 / 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]))
                                            else:
                                                if 10^18 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) != 10^18:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[floor32(_13011) + _8941 + _4312 + _26 + (6 * ceil32(return_data.size)) + 357 len 31]
                                                if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                                                    return (10^18 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]))
                                            ('iszero', ('div', ('mul', 1000000000000000000, ('mask_shl', 112, 0, 0, ('ext_call.return_data', 32, 32))), ('mask_shl', 112, 0, 0, ('ext_call.return_data', 0, 32))))
                                else:
                                    if not Mask(112, 0, ext_call.return_data[0]):
                                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if Mask(112, 0, ext_call.return_data[32]):
                                            if not 0 / Mask(112, 0, ext_call.return_data[32]):
                                                if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                                                    return (0 / 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]))
                                            else:
                                                if 10^18 * 0 / Mask(112, 0, ext_call.return_data[32]) / 0 / Mask(112, 0, ext_call.return_data[32]) != 10^18:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[floor32(_13011) + _8941 + _4312 + _26 + (6 * ceil32(return_data.size)) + 357 len 31]
                                                if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                                                    return (10^18 * 0 / Mask(112, 0, ext_call.return_data[32]) / 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]))
                                            ('iszero', ('div', ('mul', 1000000000000000000, ('mask_shl', 112, 0, 0, ('ext_call.return_data', 32, 32))), ('mask_shl', 112, 0, 0, ('ext_call.return_data', 0, 32))))
                                    else:
                                        if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 10^18:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[floor32(_13011) + _8941 + _4312 + _26 + (6 * ceil32(return_data.size)) + 357 len 31]
                                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if Mask(112, 0, ext_call.return_data[32]):
                                            if not 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                                                if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                                                    return (0 / 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]))
                                            else:
                                                if 10^18 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) / 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) != 10^18:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[floor32(_13011) + _8941 + _4312 + _26 + (6 * ceil32(return_data.size)) + 357 len 31]
                                                if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                                                    return (10^18 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) / 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]))
                                            ('iszero', ('div', ('mul', 1000000000000000000, ('mask_shl', 112, 0, 0, ('ext_call.return_data', 32, 32))), ('mask_shl', 112, 0, 0, ('ext_call.return_data', 0, 32))))
                        else:
                            mem[floor32(_8941) + _4312 + _26 + (4 * ceil32(return_data.size)) + 192] = mem[floor32(_8941) + _4312 + _26 + (4 * ceil32(return_data.size)) + -(_8941 % 32) + 224 len _8941 % 32]
                            mem[floor32(_8941) + _4312 + _26 + (4 * ceil32(return_data.size)) + 224] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                            require ext_code.size(wNativeAddress)
                            staticcall wNativeAddress.symbol() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[floor32(_8941) + _4312 + _26 + (4 * ceil32(return_data.size)) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = floor32(_8941) + _4312 + _26 + (6 * ceil32(return_data.size)) + 224
                            require return_data.size >= 32
                            _12963 = mem[floor32(_8941) + _4312 + _26 + (4 * ceil32(return_data.size)) + 224]
                            require mem[floor32(_8941) + _4312 + _26 + (4 * ceil32(return_data.size)) + 224] <= 4294967296
                            require mem[floor32(_8941) + _4312 + _26 + (4 * ceil32(return_data.size)) + 224] + 32 <= return_data.size
                            require return_data.size >= mem[floor32(_8941) + _4312 + _26 + (4 * ceil32(return_data.size)) + mem[floor32(_8941) + _4312 + _26 + (4 * ceil32(return_data.size)) + 224] + 224] + mem[floor32(_8941) + _4312 + _26 + (4 * ceil32(return_data.size)) + 224] + 32 and mem[floor32(_8941) + _4312 + _26 + (4 * ceil32(return_data.size)) + mem[floor32(_8941) + _4312 + _26 + (4 * ceil32(return_data.size)) + 224] + 224] <= 4294967296
                            mem[floor32(_8941) + _4312 + _26 + (6 * ceil32(return_data.size)) + 224] = mem[floor32(_8941) + _4312 + _26 + (4 * ceil32(return_data.size)) + mem[floor32(_8941) + _4312 + _26 + (4 * ceil32(return_data.size)) + 224] + 224]
                            _13043 = mem[floor32(_8941) + _4312 + _26 + (4 * ceil32(return_data.size)) + _12963 + 224]
                            mem[floor32(_8941) + _4312 + _26 + (6 * ceil32(return_data.size)) + 256 len ceil32(mem[floor32(_8941) + _4312 + _26 + (4 * ceil32(return_data.size)) + _12963 + 224])] = mem[floor32(_8941) + _4312 + _26 + (4 * ceil32(return_data.size)) + _12963 + 256 len ceil32(mem[floor32(_8941) + _4312 + _26 + (4 * ceil32(return_data.size)) + _12963 + 224])]
                            if not _13043 % 32:
                                if sha3(mem[_4312 + _26 + (4 * ceil32(return_data.size)) + 192 len mem[_4312 + _26 + (4 * ceil32(return_data.size)) + 160]]) == sha3(mem[floor32(_8941) + _4312 + _26 + (6 * ceil32(return_data.size)) + 256 len mem[floor32(_8941) + _4312 + _26 + (6 * ceil32(return_data.size)) + 224]]):
                                    if not Mask(112, 0, ext_call.return_data[32]):
                                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if Mask(112, 0, ext_call.return_data[0]):
                                            if not 0 / Mask(112, 0, ext_call.return_data[0]):
                                                if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                                                    return (0 / 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]))
                                            else:
                                                if 10^18 * 0 / Mask(112, 0, ext_call.return_data[0]) / 0 / Mask(112, 0, ext_call.return_data[0]) != 10^18:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[_13043 + floor32(_8941) + _4312 + _26 + (6 * ceil32(return_data.size)) + 357 len 31]
                                                if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                                                    return (10^18 * 0 / Mask(112, 0, ext_call.return_data[0]) / 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]))
                                            ('iszero', ('div', ('mul', 1000000000000000000, ('mask_shl', 112, 0, 0, ('ext_call.return_data', 32, 32))), ('mask_shl', 112, 0, 0, ('ext_call.return_data', 0, 32))))
                                    else:
                                        if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 10^18:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[_13043 + floor32(_8941) + _4312 + _26 + (6 * ceil32(return_data.size)) + 357 len 31]
                                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if Mask(112, 0, ext_call.return_data[0]):
                                            if not 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                                                if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                                                    return (0 / 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]))
                                            else:
                                                if 10^18 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) != 10^18:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[_13043 + floor32(_8941) + _4312 + _26 + (6 * ceil32(return_data.size)) + 357 len 31]
                                                if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                                                    return (10^18 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]))
                                            ('iszero', ('div', ('mul', 1000000000000000000, ('mask_shl', 112, 0, 0, ('ext_call.return_data', 32, 32))), ('mask_shl', 112, 0, 0, ('ext_call.return_data', 0, 32))))
                                else:
                                    if not Mask(112, 0, ext_call.return_data[0]):
                                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if Mask(112, 0, ext_call.return_data[32]):
                                            if not 0 / Mask(112, 0, ext_call.return_data[32]):
                                                if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                                                    return (0 / 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]))
                                            else:
                                                if 10^18 * 0 / Mask(112, 0, ext_call.return_data[32]) / 0 / Mask(112, 0, ext_call.return_data[32]) != 10^18:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[_13043 + floor32(_8941) + _4312 + _26 + (6 * ceil32(return_data.size)) + 357 len 31]
                                                if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                                                    return (10^18 * 0 / Mask(112, 0, ext_call.return_data[32]) / 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]))
                                            ('iszero', ('div', ('mul', 1000000000000000000, ('mask_shl', 112, 0, 0, ('ext_call.return_data', 32, 32))), ('mask_shl', 112, 0, 0, ('ext_call.return_data', 0, 32))))
                                    else:
                                        if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 10^18:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[_13043 + floor32(_8941) + _4312 + _26 + (6 * ceil32(return_data.size)) + 357 len 31]
                                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if Mask(112, 0, ext_call.return_data[32]):
                                            if not 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                                                if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                                                    return (0 / 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]))
                                            else:
                                                if 10^18 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) / 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) != 10^18:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[_13043 + floor32(_8941) + _4312 + _26 + (6 * ceil32(return_data.size)) + 357 len 31]
                                                if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                                                    return (10^18 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) / 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]))
                                            ('iszero', ('div', ('mul', 1000000000000000000, ('mask_shl', 112, 0, 0, ('ext_call.return_data', 32, 32))), ('mask_shl', 112, 0, 0, ('ext_call.return_data', 0, 32))))
                            else:
                                mem[floor32(_13043) + floor32(_8941) + _4312 + _26 + (6 * ceil32(return_data.size)) + 256] = mem[floor32(_13043) + floor32(_8941) + _4312 + _26 + (6 * ceil32(return_data.size)) + -(_13043 % 32) + 288 len _13043 % 32]
                                if sha3(mem[_4312 + _26 + (4 * ceil32(return_data.size)) + 192 len mem[_4312 + _26 + (4 * ceil32(return_data.size)) + 160]]) == sha3(mem[floor32(_8941) + _4312 + _26 + (6 * ceil32(return_data.size)) + 256 len mem[floor32(_8941) + _4312 + _26 + (6 * ceil32(return_data.size)) + 224]]):
                                    if not Mask(112, 0, ext_call.return_data[32]):
                                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if Mask(112, 0, ext_call.return_data[0]):
                                            if not 0 / Mask(112, 0, ext_call.return_data[0]):
                                                if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                                                    return (0 / 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]))
                                            else:
                                                if 10^18 * 0 / Mask(112, 0, ext_call.return_data[0]) / 0 / Mask(112, 0, ext_call.return_data[0]) != 10^18:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[floor32(_13043) + floor32(_8941) + _4312 + _26 + (6 * ceil32(return_data.size)) + 389 len 31]
                                                if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                                                    return (10^18 * 0 / Mask(112, 0, ext_call.return_data[0]) / 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]))
                                            ('iszero', ('div', ('mul', 1000000000000000000, ('mask_shl', 112, 0, 0, ('ext_call.return_data', 32, 32))), ('mask_shl', 112, 0, 0, ('ext_call.return_data', 0, 32))))
                                    else:
                                        if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 10^18:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[floor32(_13043) + floor32(_8941) + _4312 + _26 + (6 * ceil32(return_data.size)) + 389 len 31]
                                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if Mask(112, 0, ext_call.return_data[0]):
                                            if not 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                                                if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                                                    return (0 / 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]))
                                            else:
                                                if 10^18 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) != 10^18:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[floor32(_13043) + floor32(_8941) + _4312 + _26 + (6 * ceil32(return_data.size)) + 389 len 31]
                                                if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                                                    return (10^18 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]))
                                            ('iszero', ('div', ('mul', 1000000000000000000, ('mask_shl', 112, 0, 0, ('ext_call.return_data', 32, 32))), ('mask_shl', 112, 0, 0, ('ext_call.return_data', 0, 32))))
                                else:
                                    if not Mask(112, 0, ext_call.return_data[0]):
                                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if Mask(112, 0, ext_call.return_data[32]):
                                            if not 0 / Mask(112, 0, ext_call.return_data[32]):
                                                if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                                                    return (0 / 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]))
                                            else:
                                                if 10^18 * 0 / Mask(112, 0, ext_call.return_data[32]) / 0 / Mask(112, 0, ext_call.return_data[32]) != 10^18:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[floor32(_13043) + floor32(_8941) + _4312 + _26 + (6 * ceil32(return_data.size)) + 389 len 31]
                                                if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                                                    return (10^18 * 0 / Mask(112, 0, ext_call.return_data[32]) / 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]))
                                            ('iszero', ('div', ('mul', 1000000000000000000, ('mask_shl', 112, 0, 0, ('ext_call.return_data', 32, 32))), ('mask_shl', 112, 0, 0, ('ext_call.return_data', 0, 32))))
                                    else:
                                        if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 10^18:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[floor32(_13043) + floor32(_8941) + _4312 + _26 + (6 * ceil32(return_data.size)) + 389 len 31]
                                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if Mask(112, 0, ext_call.return_data[32]):
                                            if not 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                                                if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                                                    return (0 / 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]))
                                            else:
                                                if 10^18 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) / 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) != 10^18:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[floor32(_13043) + floor32(_8941) + _4312 + _26 + (6 * ceil32(return_data.size)) + 389 len 31]
                                                if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                                                    return (10^18 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) / 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]))
                                            ('iszero', ('div', ('mul', 1000000000000000000, ('mask_shl', 112, 0, 0, ('ext_call.return_data', 32, 32))), ('mask_shl', 112, 0, 0, ('ext_call.return_data', 0, 32))))
            else:
                if not Mask(112, 0, ext_call.return_data[0]):
                    if Mask(112, 0, ext_call.return_data[32]) <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    if Mask(112, 0, ext_call.return_data[32]):
                        require ext_code.size(sub_d4384dbeAddress)
                        staticcall sub_d4384dbeAddress.getPair(address arg1, address arg2) with:
                                gas gas_remaining wei
                               args wNativeAddress, usdcTokenAddress
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).getReserves() with:
                                gas gas_remaining wei
                        mem[_4312 + _26 + (2 * ceil32(return_data.size)) + 160 len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[_4312 + _26 + (2 * ceil32(return_data.size)) + 160] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).symbol() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_4312 + _26 + (2 * ceil32(return_data.size)) + 160 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = _4312 + _26 + (4 * ceil32(return_data.size)) + 160
                        require return_data.size >= 32
                        _8898 = mem[_4312 + _26 + (2 * ceil32(return_data.size)) + 160]
                        require mem[_4312 + _26 + (2 * ceil32(return_data.size)) + 160] <= 4294967296
                        require mem[_4312 + _26 + (2 * ceil32(return_data.size)) + 160] + 32 <= return_data.size
                        require return_data.size >= mem[_4312 + _26 + (2 * ceil32(return_data.size)) + mem[_4312 + _26 + (2 * ceil32(return_data.size)) + 160] + 160] + mem[_4312 + _26 + (2 * ceil32(return_data.size)) + 160] + 32 and mem[_4312 + _26 + (2 * ceil32(return_data.size)) + mem[_4312 + _26 + (2 * ceil32(return_data.size)) + 160] + 160] <= 4294967296
                        mem[_4312 + _26 + (4 * ceil32(return_data.size)) + 160] = mem[_4312 + _26 + (2 * ceil32(return_data.size)) + mem[_4312 + _26 + (2 * ceil32(return_data.size)) + 160] + 160]
                        _8943 = mem[_4312 + _26 + (2 * ceil32(return_data.size)) + _8898 + 160]
                        mem[_4312 + _26 + (4 * ceil32(return_data.size)) + 192 len ceil32(mem[_4312 + _26 + (2 * ceil32(return_data.size)) + _8898 + 160])] = mem[_4312 + _26 + (2 * ceil32(return_data.size)) + _8898 + 192 len ceil32(mem[_4312 + _26 + (2 * ceil32(return_data.size)) + _8898 + 160])]
                        if not _8943 % 32:
                            mem[_8943 + _4312 + _26 + (4 * ceil32(return_data.size)) + 192] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                            require ext_code.size(wNativeAddress)
                            staticcall wNativeAddress.symbol() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[_8943 + _4312 + _26 + (4 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = _8943 + _4312 + _26 + (6 * ceil32(return_data.size)) + 192
                            require return_data.size >= 32
                            _12924 = mem[_8943 + _4312 + _26 + (4 * ceil32(return_data.size)) + 192]
                            require mem[_8943 + _4312 + _26 + (4 * ceil32(return_data.size)) + 192] <= 4294967296
                            require mem[_8943 + _4312 + _26 + (4 * ceil32(return_data.size)) + 192] + 32 <= return_data.size
                            require return_data.size >= mem[_8943 + _4312 + _26 + (4 * ceil32(return_data.size)) + mem[_8943 + _4312 + _26 + (4 * ceil32(return_data.size)) + 192] + 192] + mem[_8943 + _4312 + _26 + (4 * ceil32(return_data.size)) + 192] + 32 and mem[_8943 + _4312 + _26 + (4 * ceil32(return_data.size)) + mem[_8943 + _4312 + _26 + (4 * ceil32(return_data.size)) + 192] + 192] <= 4294967296
                            mem[_8943 + _4312 + _26 + (6 * ceil32(return_data.size)) + 192] = mem[_8943 + _4312 + _26 + (4 * ceil32(return_data.size)) + mem[_8943 + _4312 + _26 + (4 * ceil32(return_data.size)) + 192] + 192]
                            _13017 = mem[_8943 + _4312 + _26 + (4 * ceil32(return_data.size)) + _12924 + 192]
                            mem[_8943 + _4312 + _26 + (6 * ceil32(return_data.size)) + 224 len ceil32(mem[_8943 + _4312 + _26 + (4 * ceil32(return_data.size)) + _12924 + 192])] = mem[_8943 + _4312 + _26 + (4 * ceil32(return_data.size)) + _12924 + 224 len ceil32(mem[_8943 + _4312 + _26 + (4 * ceil32(return_data.size)) + _12924 + 192])]
                            if not _13017 % 32:
                                if sha3(mem[_4312 + _26 + (4 * ceil32(return_data.size)) + 192 len mem[_4312 + _26 + (4 * ceil32(return_data.size)) + 160]]) == sha3(mem[_8943 + _4312 + _26 + (6 * ceil32(return_data.size)) + 224 len mem[_8943 + _4312 + _26 + (6 * ceil32(return_data.size)) + 192]]):
                                    if not Mask(112, 0, ext_call.return_data[32]):
                                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if Mask(112, 0, ext_call.return_data[0]):
                                            if not 0 / Mask(112, 0, ext_call.return_data[0]):
                                                if 0 / Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 0 / Mask(112, 0, ext_call.return_data[32]):
                                                    return (0 / 0 / Mask(112, 0, ext_call.return_data[32]))
                                            else:
                                                if 10^18 * 0 / Mask(112, 0, ext_call.return_data[0]) / 0 / Mask(112, 0, ext_call.return_data[0]) != 10^18:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[_13017 + _8943 + _4312 + _26 + (6 * ceil32(return_data.size)) + 325 len 31]
                                                if 0 / Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 0 / Mask(112, 0, ext_call.return_data[32]):
                                                    return (10^18 * 0 / Mask(112, 0, ext_call.return_data[0]) / 0 / Mask(112, 0, ext_call.return_data[32]))
                                            ('iszero', ('div', 0, ('mask_shl', 112, 0, 0, ('ext_call.return_data', 32, 32))))
                                    else:
                                        if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 10^18:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[_13017 + _8943 + _4312 + _26 + (6 * ceil32(return_data.size)) + 325 len 31]
                                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if Mask(112, 0, ext_call.return_data[0]):
                                            if not 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                                                if 0 / Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 0 / Mask(112, 0, ext_call.return_data[32]):
                                                    return (0 / 0 / Mask(112, 0, ext_call.return_data[32]))
                                            else:
                                                if 10^18 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) != 10^18:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[_13017 + _8943 + _4312 + _26 + (6 * ceil32(return_data.size)) + 325 len 31]
                                                if 0 / Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 0 / Mask(112, 0, ext_call.return_data[32]):
                                                    return (10^18 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 0 / Mask(112, 0, ext_call.return_data[32]))
                                            ('iszero', ('div', 0, ('mask_shl', 112, 0, 0, ('ext_call.return_data', 32, 32))))
                                else:
                                    if not Mask(112, 0, ext_call.return_data[0]):
                                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if Mask(112, 0, ext_call.return_data[32]):
                                            if not 0 / Mask(112, 0, ext_call.return_data[32]):
                                                if 0 / Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 0 / Mask(112, 0, ext_call.return_data[32]):
                                                    return (0 / 0 / Mask(112, 0, ext_call.return_data[32]))
                                            else:
                                                if 10^18 * 0 / Mask(112, 0, ext_call.return_data[32]) / 0 / Mask(112, 0, ext_call.return_data[32]) != 10^18:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[_13017 + _8943 + _4312 + _26 + (6 * ceil32(return_data.size)) + 325 len 31]
                                                if 0 / Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 0 / Mask(112, 0, ext_call.return_data[32]):
                                                    return (10^18 * 0 / Mask(112, 0, ext_call.return_data[32]) / 0 / Mask(112, 0, ext_call.return_data[32]))
                                            ('iszero', ('div', 0, ('mask_shl', 112, 0, 0, ('ext_call.return_data', 32, 32))))
                                    else:
                                        if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 10^18:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[_13017 + _8943 + _4312 + _26 + (6 * ceil32(return_data.size)) + 325 len 31]
                                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if Mask(112, 0, ext_call.return_data[32]):
                                            if not 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                                                if 0 / Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 0 / Mask(112, 0, ext_call.return_data[32]):
                                                    return (0 / 0 / Mask(112, 0, ext_call.return_data[32]))
                                            else:
                                                if 10^18 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) / 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) != 10^18:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[_13017 + _8943 + _4312 + _26 + (6 * ceil32(return_data.size)) + 325 len 31]
                                                if 0 / Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 0 / Mask(112, 0, ext_call.return_data[32]):
                                                    return (10^18 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) / 0 / Mask(112, 0, ext_call.return_data[32]))
                                            ('iszero', ('div', 0, ('mask_shl', 112, 0, 0, ('ext_call.return_data', 32, 32))))
                            else:
                                mem[floor32(_13017) + _8943 + _4312 + _26 + (6 * ceil32(return_data.size)) + 224] = mem[floor32(_13017) + _8943 + _4312 + _26 + (6 * ceil32(return_data.size)) + -(_13017 % 32) + 256 len _13017 % 32]
                                if sha3(mem[_4312 + _26 + (4 * ceil32(return_data.size)) + 192 len mem[_4312 + _26 + (4 * ceil32(return_data.size)) + 160]]) == sha3(mem[_8943 + _4312 + _26 + (6 * ceil32(return_data.size)) + 224 len mem[_8943 + _4312 + _26 + (6 * ceil32(return_data.size)) + 192]]):
                                    if not Mask(112, 0, ext_call.return_data[32]):
                                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if Mask(112, 0, ext_call.return_data[0]):
                                            if not 0 / Mask(112, 0, ext_call.return_data[0]):
                                                if 0 / Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 0 / Mask(112, 0, ext_call.return_data[32]):
                                                    return (0 / 0 / Mask(112, 0, ext_call.return_data[32]))
                                            else:
                                                if 10^18 * 0 / Mask(112, 0, ext_call.return_data[0]) / 0 / Mask(112, 0, ext_call.return_data[0]) != 10^18:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[floor32(_13017) + _8943 + _4312 + _26 + (6 * ceil32(return_data.size)) + 357 len 31]
                                                if 0 / Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 0 / Mask(112, 0, ext_call.return_data[32]):
                                                    return (10^18 * 0 / Mask(112, 0, ext_call.return_data[0]) / 0 / Mask(112, 0, ext_call.return_data[32]))
                                            ('iszero', ('div', 0, ('mask_shl', 112, 0, 0, ('ext_call.return_data', 32, 32))))
                                    else:
                                        if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 10^18:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[floor32(_13017) + _8943 + _4312 + _26 + (6 * ceil32(return_data.size)) + 357 len 31]
                                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if Mask(112, 0, ext_call.return_data[0]):
                                            if not 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                                                if 0 / Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 0 / Mask(112, 0, ext_call.return_data[32]):
                                                    return (0 / 0 / Mask(112, 0, ext_call.return_data[32]))
                                            else:
                                                if 10^18 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) != 10^18:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[floor32(_13017) + _8943 + _4312 + _26 + (6 * ceil32(return_data.size)) + 357 len 31]
                                                if 0 / Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 0 / Mask(112, 0, ext_call.return_data[32]):
                                                    return (10^18 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 0 / Mask(112, 0, ext_call.return_data[32]))
                                            ('iszero', ('div', 0, ('mask_shl', 112, 0, 0, ('ext_call.return_data', 32, 32))))
                                else:
                                    if not Mask(112, 0, ext_call.return_data[0]):
                                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if Mask(112, 0, ext_call.return_data[32]):
                                            if not 0 / Mask(112, 0, ext_call.return_data[32]):
                                                if 0 / Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 0 / Mask(112, 0, ext_call.return_data[32]):
                                                    return (0 / 0 / Mask(112, 0, ext_call.return_data[32]))
                                            else:
                                                if 10^18 * 0 / Mask(112, 0, ext_call.return_data[32]) / 0 / Mask(112, 0, ext_call.return_data[32]) != 10^18:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[floor32(_13017) + _8943 + _4312 + _26 + (6 * ceil32(return_data.size)) + 357 len 31]
                                                if 0 / Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 0 / Mask(112, 0, ext_call.return_data[32]):
                                                    return (10^18 * 0 / Mask(112, 0, ext_call.return_data[32]) / 0 / Mask(112, 0, ext_call.return_data[32]))
                                            ('iszero', ('div', 0, ('mask_shl', 112, 0, 0, ('ext_call.return_data', 32, 32))))
                                    else:
                                        if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 10^18:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[floor32(_13017) + _8943 + _4312 + _26 + (6 * ceil32(return_data.size)) + 357 len 31]
                                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if Mask(112, 0, ext_call.return_data[32]):
                                            if not 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                                                if 0 / Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 0 / Mask(112, 0, ext_call.return_data[32]):
                                                    return (0 / 0 / Mask(112, 0, ext_call.return_data[32]))
                                            else:
                                                if 10^18 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) / 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) != 10^18:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[floor32(_13017) + _8943 + _4312 + _26 + (6 * ceil32(return_data.size)) + 357 len 31]
                                                if 0 / Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 0 / Mask(112, 0, ext_call.return_data[32]):
                                                    return (10^18 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) / 0 / Mask(112, 0, ext_call.return_data[32]))
                                            ('iszero', ('div', 0, ('mask_shl', 112, 0, 0, ('ext_call.return_data', 32, 32))))
                        else:
                            mem[floor32(_8943) + _4312 + _26 + (4 * ceil32(return_data.size)) + 192] = mem[floor32(_8943) + _4312 + _26 + (4 * ceil32(return_data.size)) + -(_8943 % 32) + 224 len _8943 % 32]
                            mem[floor32(_8943) + _4312 + _26 + (4 * ceil32(return_data.size)) + 224] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                            require ext_code.size(wNativeAddress)
                            staticcall wNativeAddress.symbol() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[floor32(_8943) + _4312 + _26 + (4 * ceil32(return_data.size)) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = floor32(_8943) + _4312 + _26 + (6 * ceil32(return_data.size)) + 224
                            require return_data.size >= 32
                            _12969 = mem[floor32(_8943) + _4312 + _26 + (4 * ceil32(return_data.size)) + 224]
                            require mem[floor32(_8943) + _4312 + _26 + (4 * ceil32(return_data.size)) + 224] <= 4294967296
                            require mem[floor32(_8943) + _4312 + _26 + (4 * ceil32(return_data.size)) + 224] + 32 <= return_data.size
                            require return_data.size >= mem[floor32(_8943) + _4312 + _26 + (4 * ceil32(return_data.size)) + mem[floor32(_8943) + _4312 + _26 + (4 * ceil32(return_data.size)) + 224] + 224] + mem[floor32(_8943) + _4312 + _26 + (4 * ceil32(return_data.size)) + 224] + 32 and mem[floor32(_8943) + _4312 + _26 + (4 * ceil32(return_data.size)) + mem[floor32(_8943) + _4312 + _26 + (4 * ceil32(return_data.size)) + 224] + 224] <= 4294967296
                            mem[floor32(_8943) + _4312 + _26 + (6 * ceil32(return_data.size)) + 224] = mem[floor32(_8943) + _4312 + _26 + (4 * ceil32(return_data.size)) + mem[floor32(_8943) + _4312 + _26 + (4 * ceil32(return_data.size)) + 224] + 224]
                            _13046 = mem[floor32(_8943) + _4312 + _26 + (4 * ceil32(return_data.size)) + _12969 + 224]
                            mem[floor32(_8943) + _4312 + _26 + (6 * ceil32(return_data.size)) + 256 len ceil32(mem[floor32(_8943) + _4312 + _26 + (4 * ceil32(return_data.size)) + _12969 + 224])] = mem[floor32(_8943) + _4312 + _26 + (4 * ceil32(return_data.size)) + _12969 + 256 len ceil32(mem[floor32(_8943) + _4312 + _26 + (4 * ceil32(return_data.size)) + _12969 + 224])]
                            if not _13046 % 32:
                                if sha3(mem[_4312 + _26 + (4 * ceil32(return_data.size)) + 192 len mem[_4312 + _26 + (4 * ceil32(return_data.size)) + 160]]) == sha3(mem[floor32(_8943) + _4312 + _26 + (6 * ceil32(return_data.size)) + 256 len mem[floor32(_8943) + _4312 + _26 + (6 * ceil32(return_data.size)) + 224]]):
                                    if not Mask(112, 0, ext_call.return_data[32]):
                                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if Mask(112, 0, ext_call.return_data[0]):
                                            if not 0 / Mask(112, 0, ext_call.return_data[0]):
                                                if 0 / Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 0 / Mask(112, 0, ext_call.return_data[32]):
                                                    return (0 / 0 / Mask(112, 0, ext_call.return_data[32]))
                                            else:
                                                if 10^18 * 0 / Mask(112, 0, ext_call.return_data[0]) / 0 / Mask(112, 0, ext_call.return_data[0]) != 10^18:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[_13046 + floor32(_8943) + _4312 + _26 + (6 * ceil32(return_data.size)) + 357 len 31]
                                                if 0 / Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 0 / Mask(112, 0, ext_call.return_data[32]):
                                                    return (10^18 * 0 / Mask(112, 0, ext_call.return_data[0]) / 0 / Mask(112, 0, ext_call.return_data[32]))
                                            ('iszero', ('div', 0, ('mask_shl', 112, 0, 0, ('ext_call.return_data', 32, 32))))
                                    else:
                                        if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 10^18:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[_13046 + floor32(_8943) + _4312 + _26 + (6 * ceil32(return_data.size)) + 357 len 31]
                                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if Mask(112, 0, ext_call.return_data[0]):
                                            if not 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                                                if 0 / Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 0 / Mask(112, 0, ext_call.return_data[32]):
                                                    return (0 / 0 / Mask(112, 0, ext_call.return_data[32]))
                                            else:
                                                if 10^18 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) != 10^18:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[_13046 + floor32(_8943) + _4312 + _26 + (6 * ceil32(return_data.size)) + 357 len 31]
                                                if 0 / Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 0 / Mask(112, 0, ext_call.return_data[32]):
                                                    return (10^18 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 0 / Mask(112, 0, ext_call.return_data[32]))
                                            ('iszero', ('div', 0, ('mask_shl', 112, 0, 0, ('ext_call.return_data', 32, 32))))
                                else:
                                    if not Mask(112, 0, ext_call.return_data[0]):
                                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if Mask(112, 0, ext_call.return_data[32]):
                                            if not 0 / Mask(112, 0, ext_call.return_data[32]):
                                                if 0 / Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 0 / Mask(112, 0, ext_call.return_data[32]):
                                                    return (0 / 0 / Mask(112, 0, ext_call.return_data[32]))
                                            else:
                                                if 10^18 * 0 / Mask(112, 0, ext_call.return_data[32]) / 0 / Mask(112, 0, ext_call.return_data[32]) != 10^18:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[_13046 + floor32(_8943) + _4312 + _26 + (6 * ceil32(return_data.size)) + 357 len 31]
                                                if 0 / Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 0 / Mask(112, 0, ext_call.return_data[32]):
                                                    return (10^18 * 0 / Mask(112, 0, ext_call.return_data[32]) / 0 / Mask(112, 0, ext_call.return_data[32]))
                                            ('iszero', ('div', 0, ('mask_shl', 112, 0, 0, ('ext_call.return_data', 32, 32))))
                                    else:
                                        if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 10^18:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[_13046 + floor32(_8943) + _4312 + _26 + (6 * ceil32(return_data.size)) + 357 len 31]
                                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if Mask(112, 0, ext_call.return_data[32]):
                                            if not 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                                                if 0 / Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 0 / Mask(112, 0, ext_call.return_data[32]):
                                                    return (0 / 0 / Mask(112, 0, ext_call.return_data[32]))
                                            else:
                                                if 10^18 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) / 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) != 10^18:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[_13046 + floor32(_8943) + _4312 + _26 + (6 * ceil32(return_data.size)) + 357 len 31]
                                                if 0 / Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 0 / Mask(112, 0, ext_call.return_data[32]):
                                                    return (10^18 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) / 0 / Mask(112, 0, ext_call.return_data[32]))
                                            ('iszero', ('div', 0, ('mask_shl', 112, 0, 0, ('ext_call.return_data', 32, 32))))
                            else:
                                mem[floor32(_13046) + floor32(_8943) + _4312 + _26 + (6 * ceil32(return_data.size)) + 256] = mem[floor32(_13046) + floor32(_8943) + _4312 + _26 + (6 * ceil32(return_data.size)) + -(_13046 % 32) + 288 len _13046 % 32]
                                if sha3(mem[_4312 + _26 + (4 * ceil32(return_data.size)) + 192 len mem[_4312 + _26 + (4 * ceil32(return_data.size)) + 160]]) == sha3(mem[floor32(_8943) + _4312 + _26 + (6 * ceil32(return_data.size)) + 256 len mem[floor32(_8943) + _4312 + _26 + (6 * ceil32(return_data.size)) + 224]]):
                                    if not Mask(112, 0, ext_call.return_data[32]):
                                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if Mask(112, 0, ext_call.return_data[0]):
                                            if not 0 / Mask(112, 0, ext_call.return_data[0]):
                                                if 0 / Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 0 / Mask(112, 0, ext_call.return_data[32]):
                                                    return (0 / 0 / Mask(112, 0, ext_call.return_data[32]))
                                            else:
                                                if 10^18 * 0 / Mask(112, 0, ext_call.return_data[0]) / 0 / Mask(112, 0, ext_call.return_data[0]) != 10^18:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[floor32(_13046) + floor32(_8943) + _4312 + _26 + (6 * ceil32(return_data.size)) + 389 len 31]
                                                if 0 / Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 0 / Mask(112, 0, ext_call.return_data[32]):
                                                    return (10^18 * 0 / Mask(112, 0, ext_call.return_data[0]) / 0 / Mask(112, 0, ext_call.return_data[32]))
                                            ('iszero', ('div', 0, ('mask_shl', 112, 0, 0, ('ext_call.return_data', 32, 32))))
                                    else:
                                        if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 10^18:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[floor32(_13046) + floor32(_8943) + _4312 + _26 + (6 * ceil32(return_data.size)) + 389 len 31]
                                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if Mask(112, 0, ext_call.return_data[0]):
                                            if not 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                                                if 0 / Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 0 / Mask(112, 0, ext_call.return_data[32]):
                                                    return (0 / 0 / Mask(112, 0, ext_call.return_data[32]))
                                            else:
                                                if 10^18 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) != 10^18:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[floor32(_13046) + floor32(_8943) + _4312 + _26 + (6 * ceil32(return_data.size)) + 389 len 31]
                                                if 0 / Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 0 / Mask(112, 0, ext_call.return_data[32]):
                                                    return (10^18 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 0 / Mask(112, 0, ext_call.return_data[32]))
                                            ('iszero', ('div', 0, ('mask_shl', 112, 0, 0, ('ext_call.return_data', 32, 32))))
                                else:
                                    if not Mask(112, 0, ext_call.return_data[0]):
                                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if Mask(112, 0, ext_call.return_data[32]):
                                            if not 0 / Mask(112, 0, ext_call.return_data[32]):
                                                if 0 / Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 0 / Mask(112, 0, ext_call.return_data[32]):
                                                    return (0 / 0 / Mask(112, 0, ext_call.return_data[32]))
                                            else:
                                                if 10^18 * 0 / Mask(112, 0, ext_call.return_data[32]) / 0 / Mask(112, 0, ext_call.return_data[32]) != 10^18:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[floor32(_13046) + floor32(_8943) + _4312 + _26 + (6 * ceil32(return_data.size)) + 389 len 31]
                                                if 0 / Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 0 / Mask(112, 0, ext_call.return_data[32]):
                                                    return (10^18 * 0 / Mask(112, 0, ext_call.return_data[32]) / 0 / Mask(112, 0, ext_call.return_data[32]))
                                            ('iszero', ('div', 0, ('mask_shl', 112, 0, 0, ('ext_call.return_data', 32, 32))))
                                    else:
                                        if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 10^18:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[floor32(_13046) + floor32(_8943) + _4312 + _26 + (6 * ceil32(return_data.size)) + 389 len 31]
                                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if Mask(112, 0, ext_call.return_data[32]):
                                            if not 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                                                if 0 / Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 0 / Mask(112, 0, ext_call.return_data[32]):
                                                    return (0 / 0 / Mask(112, 0, ext_call.return_data[32]))
                                            else:
                                                if 10^18 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) / 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) != 10^18:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[floor32(_13046) + floor32(_8943) + _4312 + _26 + (6 * ceil32(return_data.size)) + 389 len 31]
                                                if 0 / Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 0 / Mask(112, 0, ext_call.return_data[32]):
                                                    return (10^18 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) / 0 / Mask(112, 0, ext_call.return_data[32]))
                                            ('iszero', ('div', 0, ('mask_shl', 112, 0, 0, ('ext_call.return_data', 32, 32))))
                else:
                    if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 10^18:
                        revert with 0, 
                                    32,
                                    33,
                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[_4312 + _26 + (2 * ceil32(return_data.size)) + 261 len 31]
                    if Mask(112, 0, ext_call.return_data[32]) <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    if Mask(112, 0, ext_call.return_data[32]):
                        require ext_code.size(sub_d4384dbeAddress)
                        staticcall sub_d4384dbeAddress.getPair(address arg1, address arg2) with:
                                gas gas_remaining wei
                               args wNativeAddress, usdcTokenAddress
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).getReserves() with:
                                gas gas_remaining wei
                        mem[_4312 + _26 + (2 * ceil32(return_data.size)) + 160 len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[_4312 + _26 + (2 * ceil32(return_data.size)) + 160] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).symbol() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_4312 + _26 + (2 * ceil32(return_data.size)) + 160 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = _4312 + _26 + (4 * ceil32(return_data.size)) + 160
                        require return_data.size >= 32
                        _8914 = mem[_4312 + _26 + (2 * ceil32(return_data.size)) + 160]
                        require mem[_4312 + _26 + (2 * ceil32(return_data.size)) + 160] <= 4294967296
                        require mem[_4312 + _26 + (2 * ceil32(return_data.size)) + 160] + 32 <= return_data.size
                        require return_data.size >= mem[_4312 + _26 + (2 * ceil32(return_data.size)) + mem[_4312 + _26 + (2 * ceil32(return_data.size)) + 160] + 160] + mem[_4312 + _26 + (2 * ceil32(return_data.size)) + 160] + 32 and mem[_4312 + _26 + (2 * ceil32(return_data.size)) + mem[_4312 + _26 + (2 * ceil32(return_data.size)) + 160] + 160] <= 4294967296
                        mem[_4312 + _26 + (4 * ceil32(return_data.size)) + 160] = mem[_4312 + _26 + (2 * ceil32(return_data.size)) + mem[_4312 + _26 + (2 * ceil32(return_data.size)) + 160] + 160]
                        _8954 = mem[_4312 + _26 + (2 * ceil32(return_data.size)) + _8914 + 160]
                        mem[_4312 + _26 + (4 * ceil32(return_data.size)) + 192 len ceil32(mem[_4312 + _26 + (2 * ceil32(return_data.size)) + _8914 + 160])] = mem[_4312 + _26 + (2 * ceil32(return_data.size)) + _8914 + 192 len ceil32(mem[_4312 + _26 + (2 * ceil32(return_data.size)) + _8914 + 160])]
                        if not _8954 % 32:
                            mem[_8954 + _4312 + _26 + (4 * ceil32(return_data.size)) + 192] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                            require ext_code.size(wNativeAddress)
                            staticcall wNativeAddress.symbol() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[_8954 + _4312 + _26 + (4 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = _8954 + _4312 + _26 + (6 * ceil32(return_data.size)) + 192
                            require return_data.size >= 32
                            _12921 = mem[_8954 + _4312 + _26 + (4 * ceil32(return_data.size)) + 192]
                            require mem[_8954 + _4312 + _26 + (4 * ceil32(return_data.size)) + 192] <= 4294967296
                            require mem[_8954 + _4312 + _26 + (4 * ceil32(return_data.size)) + 192] + 32 <= return_data.size
                            require return_data.size >= mem[_8954 + _4312 + _26 + (4 * ceil32(return_data.size)) + mem[_8954 + _4312 + _26 + (4 * ceil32(return_data.size)) + 192] + 192] + mem[_8954 + _4312 + _26 + (4 * ceil32(return_data.size)) + 192] + 32 and mem[_8954 + _4312 + _26 + (4 * ceil32(return_data.size)) + mem[_8954 + _4312 + _26 + (4 * ceil32(return_data.size)) + 192] + 192] <= 4294967296
                            mem[_8954 + _4312 + _26 + (6 * ceil32(return_data.size)) + 192] = mem[_8954 + _4312 + _26 + (4 * ceil32(return_data.size)) + mem[_8954 + _4312 + _26 + (4 * ceil32(return_data.size)) + 192] + 192]
                            _13015 = mem[_8954 + _4312 + _26 + (4 * ceil32(return_data.size)) + _12921 + 192]
                            mem[_8954 + _4312 + _26 + (6 * ceil32(return_data.size)) + 224 len ceil32(mem[_8954 + _4312 + _26 + (4 * ceil32(return_data.size)) + _12921 + 192])] = mem[_8954 + _4312 + _26 + (4 * ceil32(return_data.size)) + _12921 + 224 len ceil32(mem[_8954 + _4312 + _26 + (4 * ceil32(return_data.size)) + _12921 + 192])]
                            if not _13015 % 32:
                                if sha3(mem[_4312 + _26 + (4 * ceil32(return_data.size)) + 192 len mem[_4312 + _26 + (4 * ceil32(return_data.size)) + 160]]) == sha3(mem[_8954 + _4312 + _26 + (6 * ceil32(return_data.size)) + 224 len mem[_8954 + _4312 + _26 + (6 * ceil32(return_data.size)) + 192]]):
                                    if not Mask(112, 0, ext_call.return_data[32]):
                                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if Mask(112, 0, ext_call.return_data[0]):
                                            if not 0 / Mask(112, 0, ext_call.return_data[0]):
                                                if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                                                    return (0 / 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]))
                                            else:
                                                if 10^18 * 0 / Mask(112, 0, ext_call.return_data[0]) / 0 / Mask(112, 0, ext_call.return_data[0]) != 10^18:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[_13015 + _8954 + _4312 + _26 + (6 * ceil32(return_data.size)) + 325 len 31]
                                                if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                                                    return (10^18 * 0 / Mask(112, 0, ext_call.return_data[0]) / 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]))
                                            ('iszero', ('div', ('mul', 1000000000000000000, ('mask_shl', 112, 0, 0, ('ext_call.return_data', 0, 32))), ('mask_shl', 112, 0, 0, ('ext_call.return_data', 32, 32))))
                                    else:
                                        if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 10^18:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[_13015 + _8954 + _4312 + _26 + (6 * ceil32(return_data.size)) + 325 len 31]
                                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if Mask(112, 0, ext_call.return_data[0]):
                                            if not 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                                                if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                                                    return (0 / 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]))
                                            else:
                                                if 10^18 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) != 10^18:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[_13015 + _8954 + _4312 + _26 + (6 * ceil32(return_data.size)) + 325 len 31]
                                                if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                                                    return (10^18 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]))
                                            ('iszero', ('div', ('mul', 1000000000000000000, ('mask_shl', 112, 0, 0, ('ext_call.return_data', 0, 32))), ('mask_shl', 112, 0, 0, ('ext_call.return_data', 32, 32))))
                                else:
                                    if not Mask(112, 0, ext_call.return_data[0]):
                                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if Mask(112, 0, ext_call.return_data[32]):
                                            if not 0 / Mask(112, 0, ext_call.return_data[32]):
                                                if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                                                    return (0 / 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]))
                                            else:
                                                if 10^18 * 0 / Mask(112, 0, ext_call.return_data[32]) / 0 / Mask(112, 0, ext_call.return_data[32]) != 10^18:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[_13015 + _8954 + _4312 + _26 + (6 * ceil32(return_data.size)) + 325 len 31]
                                                if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                                                    return (10^18 * 0 / Mask(112, 0, ext_call.return_data[32]) / 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]))
                                            ('iszero', ('div', ('mul', 1000000000000000000, ('mask_shl', 112, 0, 0, ('ext_call.return_data', 0, 32))), ('mask_shl', 112, 0, 0, ('ext_call.return_data', 32, 32))))
                                    else:
                                        if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 10^18:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[_13015 + _8954 + _4312 + _26 + (6 * ceil32(return_data.size)) + 325 len 31]
                                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if Mask(112, 0, ext_call.return_data[32]):
                                            if not 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                                                if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                                                    return (0 / 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]))
                                            else:
                                                if 10^18 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) / 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) != 10^18:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[_13015 + _8954 + _4312 + _26 + (6 * ceil32(return_data.size)) + 325 len 31]
                                                if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                                                    return (10^18 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) / 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]))
                                            ('iszero', ('div', ('mul', 1000000000000000000, ('mask_shl', 112, 0, 0, ('ext_call.return_data', 0, 32))), ('mask_shl', 112, 0, 0, ('ext_call.return_data', 32, 32))))
                            else:
                                mem[floor32(_13015) + _8954 + _4312 + _26 + (6 * ceil32(return_data.size)) + 224] = mem[floor32(_13015) + _8954 + _4312 + _26 + (6 * ceil32(return_data.size)) + -(_13015 % 32) + 256 len _13015 % 32]
                                if sha3(mem[_4312 + _26 + (4 * ceil32(return_data.size)) + 192 len mem[_4312 + _26 + (4 * ceil32(return_data.size)) + 160]]) == sha3(mem[_8954 + _4312 + _26 + (6 * ceil32(return_data.size)) + 224 len mem[_8954 + _4312 + _26 + (6 * ceil32(return_data.size)) + 192]]):
                                    if not Mask(112, 0, ext_call.return_data[32]):
                                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if Mask(112, 0, ext_call.return_data[0]):
                                            if not 0 / Mask(112, 0, ext_call.return_data[0]):
                                                if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                                                    return (0 / 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]))
                                            else:
                                                if 10^18 * 0 / Mask(112, 0, ext_call.return_data[0]) / 0 / Mask(112, 0, ext_call.return_data[0]) != 10^18:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[floor32(_13015) + _8954 + _4312 + _26 + (6 * ceil32(return_data.size)) + 357 len 31]
                                                if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                                                    return (10^18 * 0 / Mask(112, 0, ext_call.return_data[0]) / 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]))
                                            ('iszero', ('div', ('mul', 1000000000000000000, ('mask_shl', 112, 0, 0, ('ext_call.return_data', 0, 32))), ('mask_shl', 112, 0, 0, ('ext_call.return_data', 32, 32))))
                                    else:
                                        if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 10^18:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[floor32(_13015) + _8954 + _4312 + _26 + (6 * ceil32(return_data.size)) + 357 len 31]
                                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if Mask(112, 0, ext_call.return_data[0]):
                                            if not 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                                                if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                                                    return (0 / 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]))
                                            else:
                                                if 10^18 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) != 10^18:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[floor32(_13015) + _8954 + _4312 + _26 + (6 * ceil32(return_data.size)) + 357 len 31]
                                                if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                                                    return (10^18 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]))
                                            ('iszero', ('div', ('mul', 1000000000000000000, ('mask_shl', 112, 0, 0, ('ext_call.return_data', 0, 32))), ('mask_shl', 112, 0, 0, ('ext_call.return_data', 32, 32))))
                                else:
                                    if not Mask(112, 0, ext_call.return_data[0]):
                                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if Mask(112, 0, ext_call.return_data[32]):
                                            if not 0 / Mask(112, 0, ext_call.return_data[32]):
                                                if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                                                    return (0 / 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]))
                                            else:
                                                if 10^18 * 0 / Mask(112, 0, ext_call.return_data[32]) / 0 / Mask(112, 0, ext_call.return_data[32]) != 10^18:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[floor32(_13015) + _8954 + _4312 + _26 + (6 * ceil32(return_data.size)) + 357 len 31]
                                                if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                                                    return (10^18 * 0 / Mask(112, 0, ext_call.return_data[32]) / 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]))
                                            ('iszero', ('div', ('mul', 1000000000000000000, ('mask_shl', 112, 0, 0, ('ext_call.return_data', 0, 32))), ('mask_shl', 112, 0, 0, ('ext_call.return_data', 32, 32))))
                                    else:
                                        if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 10^18:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[floor32(_13015) + _8954 + _4312 + _26 + (6 * ceil32(return_data.size)) + 357 len 31]
                                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if Mask(112, 0, ext_call.return_data[32]):
                                            if not 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                                                if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                                                    return (0 / 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]))
                                            else:
                                                if 10^18 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) / 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) != 10^18:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[floor32(_13015) + _8954 + _4312 + _26 + (6 * ceil32(return_data.size)) + 357 len 31]
                                                if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                                                    return (10^18 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) / 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]))
                                            ('iszero', ('div', ('mul', 1000000000000000000, ('mask_shl', 112, 0, 0, ('ext_call.return_data', 0, 32))), ('mask_shl', 112, 0, 0, ('ext_call.return_data', 32, 32))))
                        else:
                            mem[floor32(_8954) + _4312 + _26 + (4 * ceil32(return_data.size)) + 192] = mem[floor32(_8954) + _4312 + _26 + (4 * ceil32(return_data.size)) + -(_8954 % 32) + 224 len _8954 % 32]
                            mem[floor32(_8954) + _4312 + _26 + (4 * ceil32(return_data.size)) + 224] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                            require ext_code.size(wNativeAddress)
                            staticcall wNativeAddress.symbol() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[floor32(_8954) + _4312 + _26 + (4 * ceil32(return_data.size)) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = floor32(_8954) + _4312 + _26 + (6 * ceil32(return_data.size)) + 224
                            require return_data.size >= 32
                            _12967 = mem[floor32(_8954) + _4312 + _26 + (4 * ceil32(return_data.size)) + 224]
                            require mem[floor32(_8954) + _4312 + _26 + (4 * ceil32(return_data.size)) + 224] <= 4294967296
                            require mem[floor32(_8954) + _4312 + _26 + (4 * ceil32(return_data.size)) + 224] + 32 <= return_data.size
                            require return_data.size >= mem[floor32(_8954) + _4312 + _26 + (4 * ceil32(return_data.size)) + mem[floor32(_8954) + _4312 + _26 + (4 * ceil32(return_data.size)) + 224] + 224] + mem[floor32(_8954) + _4312 + _26 + (4 * ceil32(return_data.size)) + 224] + 32 and mem[floor32(_8954) + _4312 + _26 + (4 * ceil32(return_data.size)) + mem[floor32(_8954) + _4312 + _26 + (4 * ceil32(return_data.size)) + 224] + 224] <= 4294967296
                            mem[floor32(_8954) + _4312 + _26 + (6 * ceil32(return_data.size)) + 224] = mem[floor32(_8954) + _4312 + _26 + (4 * ceil32(return_data.size)) + mem[floor32(_8954) + _4312 + _26 + (4 * ceil32(return_data.size)) + 224] + 224]
                            _13045 = mem[floor32(_8954) + _4312 + _26 + (4 * ceil32(return_data.size)) + _12967 + 224]
                            mem[floor32(_8954) + _4312 + _26 + (6 * ceil32(return_data.size)) + 256 len ceil32(mem[floor32(_8954) + _4312 + _26 + (4 * ceil32(return_data.size)) + _12967 + 224])] = mem[floor32(_8954) + _4312 + _26 + (4 * ceil32(return_data.size)) + _12967 + 256 len ceil32(mem[floor32(_8954) + _4312 + _26 + (4 * ceil32(return_data.size)) + _12967 + 224])]
                            if not _13045 % 32:
                                if sha3(mem[_4312 + _26 + (4 * ceil32(return_data.size)) + 192 len mem[_4312 + _26 + (4 * ceil32(return_data.size)) + 160]]) == sha3(mem[floor32(_8954) + _4312 + _26 + (6 * ceil32(return_data.size)) + 256 len mem[floor32(_8954) + _4312 + _26 + (6 * ceil32(return_data.size)) + 224]]):
                                    if not Mask(112, 0, ext_call.return_data[32]):
                                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if Mask(112, 0, ext_call.return_data[0]):
                                            if not 0 / Mask(112, 0, ext_call.return_data[0]):
                                                if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                                                    return (0 / 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]))
                                            else:
                                                if 10^18 * 0 / Mask(112, 0, ext_call.return_data[0]) / 0 / Mask(112, 0, ext_call.return_data[0]) != 10^18:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[_13045 + floor32(_8954) + _4312 + _26 + (6 * ceil32(return_data.size)) + 357 len 31]
                                                if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                                                    return (10^18 * 0 / Mask(112, 0, ext_call.return_data[0]) / 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]))
                                            ('iszero', ('div', ('mul', 1000000000000000000, ('mask_shl', 112, 0, 0, ('ext_call.return_data', 0, 32))), ('mask_shl', 112, 0, 0, ('ext_call.return_data', 32, 32))))
                                    else:
                                        if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 10^18:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[_13045 + floor32(_8954) + _4312 + _26 + (6 * ceil32(return_data.size)) + 357 len 31]
                                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if Mask(112, 0, ext_call.return_data[0]):
                                            if not 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                                                if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                                                    return (0 / 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]))
                                            else:
                                                if 10^18 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) != 10^18:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[_13045 + floor32(_8954) + _4312 + _26 + (6 * ceil32(return_data.size)) + 357 len 31]
                                                if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                                                    return (10^18 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]))
                                            ('iszero', ('div', ('mul', 1000000000000000000, ('mask_shl', 112, 0, 0, ('ext_call.return_data', 0, 32))), ('mask_shl', 112, 0, 0, ('ext_call.return_data', 32, 32))))
                                else:
                                    if not Mask(112, 0, ext_call.return_data[0]):
                                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if Mask(112, 0, ext_call.return_data[32]):
                                            if not 0 / Mask(112, 0, ext_call.return_data[32]):
                                                if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                                                    return (0 / 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]))
                                            else:
                                                if 10^18 * 0 / Mask(112, 0, ext_call.return_data[32]) / 0 / Mask(112, 0, ext_call.return_data[32]) != 10^18:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[_13045 + floor32(_8954) + _4312 + _26 + (6 * ceil32(return_data.size)) + 357 len 31]
                                                if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                                                    return (10^18 * 0 / Mask(112, 0, ext_call.return_data[32]) / 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]))
                                            ('iszero', ('div', ('mul', 1000000000000000000, ('mask_shl', 112, 0, 0, ('ext_call.return_data', 0, 32))), ('mask_shl', 112, 0, 0, ('ext_call.return_data', 32, 32))))
                                    else:
                                        if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 10^18:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[_13045 + floor32(_8954) + _4312 + _26 + (6 * ceil32(return_data.size)) + 357 len 31]
                                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if Mask(112, 0, ext_call.return_data[32]):
                                            if not 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                                                if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                                                    return (0 / 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]))
                                            else:
                                                if 10^18 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) / 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) != 10^18:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[_13045 + floor32(_8954) + _4312 + _26 + (6 * ceil32(return_data.size)) + 357 len 31]
                                                if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                                                    return (10^18 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) / 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]))
                                            ('iszero', ('div', ('mul', 1000000000000000000, ('mask_shl', 112, 0, 0, ('ext_call.return_data', 0, 32))), ('mask_shl', 112, 0, 0, ('ext_call.return_data', 32, 32))))
                            else:
                                mem[floor32(_13045) + floor32(_8954) + _4312 + _26 + (6 * ceil32(return_data.size)) + 256] = mem[floor32(_13045) + floor32(_8954) + _4312 + _26 + (6 * ceil32(return_data.size)) + -(_13045 % 32) + 288 len _13045 % 32]
                                if sha3(mem[_4312 + _26 + (4 * ceil32(return_data.size)) + 192 len mem[_4312 + _26 + (4 * ceil32(return_data.size)) + 160]]) == sha3(mem[floor32(_8954) + _4312 + _26 + (6 * ceil32(return_data.size)) + 256 len mem[floor32(_8954) + _4312 + _26 + (6 * ceil32(return_data.size)) + 224]]):
                                    if not Mask(112, 0, ext_call.return_data[32]):
                                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if Mask(112, 0, ext_call.return_data[0]):
                                            if not 0 / Mask(112, 0, ext_call.return_data[0]):
                                                if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                                                    return (0 / 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]))
                                            else:
                                                if 10^18 * 0 / Mask(112, 0, ext_call.return_data[0]) / 0 / Mask(112, 0, ext_call.return_data[0]) != 10^18:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[floor32(_13045) + floor32(_8954) + _4312 + _26 + (6 * ceil32(return_data.size)) + 389 len 31]
                                                if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                                                    return (10^18 * 0 / Mask(112, 0, ext_call.return_data[0]) / 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]))
                                            ('iszero', ('div', ('mul', 1000000000000000000, ('mask_shl', 112, 0, 0, ('ext_call.return_data', 0, 32))), ('mask_shl', 112, 0, 0, ('ext_call.return_data', 32, 32))))
                                    else:
                                        if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 10^18:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[floor32(_13045) + floor32(_8954) + _4312 + _26 + (6 * ceil32(return_data.size)) + 389 len 31]
                                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if Mask(112, 0, ext_call.return_data[0]):
                                            if not 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                                                if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                                                    return (0 / 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]))
                                            else:
                                                if 10^18 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) != 10^18:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[floor32(_13045) + floor32(_8954) + _4312 + _26 + (6 * ceil32(return_data.size)) + 389 len 31]
                                                if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                                                    return (10^18 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]))
                                            ('iszero', ('div', ('mul', 1000000000000000000, ('mask_shl', 112, 0, 0, ('ext_call.return_data', 0, 32))), ('mask_shl', 112, 0, 0, ('ext_call.return_data', 32, 32))))
                                else:
                                    if not Mask(112, 0, ext_call.return_data[0]):
                                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if Mask(112, 0, ext_call.return_data[32]):
                                            if not 0 / Mask(112, 0, ext_call.return_data[32]):
                                                if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                                                    return (0 / 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]))
                                            else:
                                                if 10^18 * 0 / Mask(112, 0, ext_call.return_data[32]) / 0 / Mask(112, 0, ext_call.return_data[32]) != 10^18:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[floor32(_13045) + floor32(_8954) + _4312 + _26 + (6 * ceil32(return_data.size)) + 389 len 31]
                                                if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                                                    return (10^18 * 0 / Mask(112, 0, ext_call.return_data[32]) / 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]))
                                            ('iszero', ('div', ('mul', 1000000000000000000, ('mask_shl', 112, 0, 0, ('ext_call.return_data', 0, 32))), ('mask_shl', 112, 0, 0, ('ext_call.return_data', 32, 32))))
                                    else:
                                        if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 10^18:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[floor32(_13045) + floor32(_8954) + _4312 + _26 + (6 * ceil32(return_data.size)) + 389 len 31]
                                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if Mask(112, 0, ext_call.return_data[32]):
                                            if not 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                                                if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                                                    return (0 / 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]))
                                            else:
                                                if 10^18 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) / 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) != 10^18:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[floor32(_13045) + floor32(_8954) + _4312 + _26 + (6 * ceil32(return_data.size)) + 389 len 31]
                                                if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                                                    return (10^18 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) / 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]))
                                            ('iszero', ('div', ('mul', 1000000000000000000, ('mask_shl', 112, 0, 0, ('ext_call.return_data', 0, 32))), ('mask_shl', 112, 0, 0, ('ext_call.return_data', 32, 32))))
        else:
            mem[floor32(_4312) + _26 + (2 * ceil32(return_data.size)) + 160] = mem[floor32(_4312) + _26 + (2 * ceil32(return_data.size)) + -(_4312 % 32) + 192 len _4312 % 32]
            if sha3(mem[ceil32(return_data.size) + 128 len mem[ceil32(return_data.size) + 96]]) == sha3(mem[_26 + (2 * ceil32(return_data.size)) + 160 len mem[_26 + (2 * ceil32(return_data.size)) + 128]]):
                if not Mask(112, 0, ext_call.return_data[32]):
                    if Mask(112, 0, ext_call.return_data[0]) <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    if Mask(112, 0, ext_call.return_data[0]):
                        require ext_code.size(sub_d4384dbeAddress)
                        staticcall sub_d4384dbeAddress.getPair(address arg1, address arg2) with:
                                gas gas_remaining wei
                               args wNativeAddress, usdcTokenAddress
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).getReserves() with:
                                gas gas_remaining wei
                        mem[floor32(_4312) + _26 + (2 * ceil32(return_data.size)) + 192 len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[floor32(_4312) + _26 + (2 * ceil32(return_data.size)) + 192] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).symbol() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[floor32(_4312) + _26 + (2 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = floor32(_4312) + _26 + (4 * ceil32(return_data.size)) + 192
                        require return_data.size >= 32
                        _8901 = mem[floor32(_4312) + _26 + (2 * ceil32(return_data.size)) + 192]
                        require mem[floor32(_4312) + _26 + (2 * ceil32(return_data.size)) + 192] <= 4294967296
                        require mem[floor32(_4312) + _26 + (2 * ceil32(return_data.size)) + 192] + 32 <= return_data.size
                        require return_data.size >= mem[floor32(_4312) + _26 + (2 * ceil32(return_data.size)) + mem[floor32(_4312) + _26 + (2 * ceil32(return_data.size)) + 192] + 192] + mem[floor32(_4312) + _26 + (2 * ceil32(return_data.size)) + 192] + 32 and mem[floor32(_4312) + _26 + (2 * ceil32(return_data.size)) + mem[floor32(_4312) + _26 + (2 * ceil32(return_data.size)) + 192] + 192] <= 4294967296
                        mem[floor32(_4312) + _26 + (4 * ceil32(return_data.size)) + 192] = mem[floor32(_4312) + _26 + (2 * ceil32(return_data.size)) + mem[floor32(_4312) + _26 + (2 * ceil32(return_data.size)) + 192] + 192]
                        _8945 = mem[floor32(_4312) + _26 + (2 * ceil32(return_data.size)) + _8901 + 192]
                        mem[floor32(_4312) + _26 + (4 * ceil32(return_data.size)) + 224 len ceil32(mem[floor32(_4312) + _26 + (2 * ceil32(return_data.size)) + _8901 + 192])] = mem[floor32(_4312) + _26 + (2 * ceil32(return_data.size)) + _8901 + 224 len ceil32(mem[floor32(_4312) + _26 + (2 * ceil32(return_data.size)) + _8901 + 192])]
                        if not _8945 % 32:
                            mem[_8945 + floor32(_4312) + _26 + (4 * ceil32(return_data.size)) + 224] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                            require ext_code.size(wNativeAddress)
                            staticcall wNativeAddress.symbol() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[_8945 + floor32(_4312) + _26 + (4 * ceil32(return_data.size)) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = _8945 + floor32(_4312) + _26 + (6 * ceil32(return_data.size)) + 224
                            require return_data.size >= 32
                            _12930 = mem[_8945 + floor32(_4312) + _26 + (4 * ceil32(return_data.size)) + 224]
                            require mem[_8945 + floor32(_4312) + _26 + (4 * ceil32(return_data.size)) + 224] <= 4294967296
                            require mem[_8945 + floor32(_4312) + _26 + (4 * ceil32(return_data.size)) + 224] + 32 <= return_data.size
                            require return_data.size >= mem[_8945 + floor32(_4312) + _26 + (4 * ceil32(return_data.size)) + mem[_8945 + floor32(_4312) + _26 + (4 * ceil32(return_data.size)) + 224] + 224] + mem[_8945 + floor32(_4312) + _26 + (4 * ceil32(return_data.size)) + 224] + 32 and mem[_8945 + floor32(_4312) + _26 + (4 * ceil32(return_data.size)) + mem[_8945 + floor32(_4312) + _26 + (4 * ceil32(return_data.size)) + 224] + 224] <= 4294967296
                            mem[_8945 + floor32(_4312) + _26 + (6 * ceil32(return_data.size)) + 224] = mem[_8945 + floor32(_4312) + _26 + (4 * ceil32(return_data.size)) + mem[_8945 + floor32(_4312) + _26 + (4 * ceil32(return_data.size)) + 224] + 224]
                            _13021 = mem[_8945 + floor32(_4312) + _26 + (4 * ceil32(return_data.size)) + _12930 + 224]
                            mem[_8945 + floor32(_4312) + _26 + (6 * ceil32(return_data.size)) + 256 len ceil32(mem[_8945 + floor32(_4312) + _26 + (4 * ceil32(return_data.size)) + _12930 + 224])] = mem[_8945 + floor32(_4312) + _26 + (4 * ceil32(return_data.size)) + _12930 + 256 len ceil32(mem[_8945 + floor32(_4312) + _26 + (4 * ceil32(return_data.size)) + _12930 + 224])]
                            if not _13021 % 32:
                                if sha3(mem[floor32(_4312) + _26 + (4 * ceil32(return_data.size)) + 224 len mem[floor32(_4312) + _26 + (4 * ceil32(return_data.size)) + 192]]) == sha3(mem[_8945 + floor32(_4312) + _26 + (6 * ceil32(return_data.size)) + 256 len mem[_8945 + floor32(_4312) + _26 + (6 * ceil32(return_data.size)) + 224]]):
                                    if not Mask(112, 0, ext_call.return_data[32]):
                                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if Mask(112, 0, ext_call.return_data[0]):
                                            if not 0 / Mask(112, 0, ext_call.return_data[0]):
                                                if 0 / Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 0 / Mask(112, 0, ext_call.return_data[0]):
                                                    return (0 / 0 / Mask(112, 0, ext_call.return_data[0]))
                                            else:
                                                if 10^18 * 0 / Mask(112, 0, ext_call.return_data[0]) / 0 / Mask(112, 0, ext_call.return_data[0]) != 10^18:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[_13021 + _8945 + floor32(_4312) + _26 + (6 * ceil32(return_data.size)) + 357 len 31]
                                                if 0 / Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 0 / Mask(112, 0, ext_call.return_data[0]):
                                                    return (10^18 * 0 / Mask(112, 0, ext_call.return_data[0]) / 0 / Mask(112, 0, ext_call.return_data[0]))
                                            ('iszero', ('div', 0, ('mask_shl', 112, 0, 0, ('ext_call.return_data', 0, 32))))
                                    else:
                                        if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 10^18:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[_13021 + _8945 + floor32(_4312) + _26 + (6 * ceil32(return_data.size)) + 357 len 31]
                                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if Mask(112, 0, ext_call.return_data[0]):
                                            if not 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                                                if 0 / Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 0 / Mask(112, 0, ext_call.return_data[0]):
                                                    return (0 / 0 / Mask(112, 0, ext_call.return_data[0]))
                                            else:
                                                if 10^18 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) != 10^18:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[_13021 + _8945 + floor32(_4312) + _26 + (6 * ceil32(return_data.size)) + 357 len 31]
                                                if 0 / Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 0 / Mask(112, 0, ext_call.return_data[0]):
                                                    return (10^18 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 0 / Mask(112, 0, ext_call.return_data[0]))
                                            ('iszero', ('div', 0, ('mask_shl', 112, 0, 0, ('ext_call.return_data', 0, 32))))
                                else:
                                    if not Mask(112, 0, ext_call.return_data[0]):
                                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if Mask(112, 0, ext_call.return_data[32]):
                                            if not 0 / Mask(112, 0, ext_call.return_data[32]):
                                                if 0 / Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 0 / Mask(112, 0, ext_call.return_data[0]):
                                                    return (0 / 0 / Mask(112, 0, ext_call.return_data[0]))
                                            else:
                                                if 10^18 * 0 / Mask(112, 0, ext_call.return_data[32]) / 0 / Mask(112, 0, ext_call.return_data[32]) != 10^18:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[_13021 + _8945 + floor32(_4312) + _26 + (6 * ceil32(return_data.size)) + 357 len 31]
                                                if 0 / Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 0 / Mask(112, 0, ext_call.return_data[0]):
                                                    return (10^18 * 0 / Mask(112, 0, ext_call.return_data[32]) / 0 / Mask(112, 0, ext_call.return_data[0]))
                                            ('iszero', ('div', 0, ('mask_shl', 112, 0, 0, ('ext_call.return_data', 0, 32))))
                                    else:
                                        if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 10^18:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[_13021 + _8945 + floor32(_4312) + _26 + (6 * ceil32(return_data.size)) + 357 len 31]
                                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if Mask(112, 0, ext_call.return_data[32]):
                                            if not 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                                                if 0 / Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 0 / Mask(112, 0, ext_call.return_data[0]):
                                                    return (0 / 0 / Mask(112, 0, ext_call.return_data[0]))
                                            else:
                                                if 10^18 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) / 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) != 10^18:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[_13021 + _8945 + floor32(_4312) + _26 + (6 * ceil32(return_data.size)) + 357 len 31]
                                                if 0 / Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 0 / Mask(112, 0, ext_call.return_data[0]):
                                                    return (10^18 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) / 0 / Mask(112, 0, ext_call.return_data[0]))
                                            ('iszero', ('div', 0, ('mask_shl', 112, 0, 0, ('ext_call.return_data', 0, 32))))
                            else:
                                mem[floor32(_13021) + _8945 + floor32(_4312) + _26 + (6 * ceil32(return_data.size)) + 256] = mem[floor32(_13021) + _8945 + floor32(_4312) + _26 + (6 * ceil32(return_data.size)) + -(_13021 % 32) + 288 len _13021 % 32]
                                if sha3(mem[floor32(_4312) + _26 + (4 * ceil32(return_data.size)) + 224 len mem[floor32(_4312) + _26 + (4 * ceil32(return_data.size)) + 192]]) == sha3(mem[_8945 + floor32(_4312) + _26 + (6 * ceil32(return_data.size)) + 256 len mem[_8945 + floor32(_4312) + _26 + (6 * ceil32(return_data.size)) + 224]]):
                                    if not Mask(112, 0, ext_call.return_data[32]):
                                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if Mask(112, 0, ext_call.return_data[0]):
                                            if not 0 / Mask(112, 0, ext_call.return_data[0]):
                                                if 0 / Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 0 / Mask(112, 0, ext_call.return_data[0]):
                                                    return (0 / 0 / Mask(112, 0, ext_call.return_data[0]))
                                            else:
                                                if 10^18 * 0 / Mask(112, 0, ext_call.return_data[0]) / 0 / Mask(112, 0, ext_call.return_data[0]) != 10^18:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[floor32(_13021) + _8945 + floor32(_4312) + _26 + (6 * ceil32(return_data.size)) + 389 len 31]
                                                if 0 / Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 0 / Mask(112, 0, ext_call.return_data[0]):
                                                    return (10^18 * 0 / Mask(112, 0, ext_call.return_data[0]) / 0 / Mask(112, 0, ext_call.return_data[0]))
                                            ('iszero', ('div', 0, ('mask_shl', 112, 0, 0, ('ext_call.return_data', 0, 32))))
                                    else:
                                        if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 10^18:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[floor32(_13021) + _8945 + floor32(_4312) + _26 + (6 * ceil32(return_data.size)) + 389 len 31]
                                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if Mask(112, 0, ext_call.return_data[0]):
                                            if not 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                                                if 0 / Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 0 / Mask(112, 0, ext_call.return_data[0]):
                                                    return (0 / 0 / Mask(112, 0, ext_call.return_data[0]))
                                            else:
                                                if 10^18 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) != 10^18:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[floor32(_13021) + _8945 + floor32(_4312) + _26 + (6 * ceil32(return_data.size)) + 389 len 31]
                                                if 0 / Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 0 / Mask(112, 0, ext_call.return_data[0]):
                                                    return (10^18 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 0 / Mask(112, 0, ext_call.return_data[0]))
                                            ('iszero', ('div', 0, ('mask_shl', 112, 0, 0, ('ext_call.return_data', 0, 32))))
                                else:
                                    if not Mask(112, 0, ext_call.return_data[0]):
                                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if Mask(112, 0, ext_call.return_data[32]):
                                            if not 0 / Mask(112, 0, ext_call.return_data[32]):
                                                if 0 / Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 0 / Mask(112, 0, ext_call.return_data[0]):
                                                    return (0 / 0 / Mask(112, 0, ext_call.return_data[0]))
                                            else:
                                                if 10^18 * 0 / Mask(112, 0, ext_call.return_data[32]) / 0 / Mask(112, 0, ext_call.return_data[32]) != 10^18:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[floor32(_13021) + _8945 + floor32(_4312) + _26 + (6 * ceil32(return_data.size)) + 389 len 31]
                                                if 0 / Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 0 / Mask(112, 0, ext_call.return_data[0]):
                                                    return (10^18 * 0 / Mask(112, 0, ext_call.return_data[32]) / 0 / Mask(112, 0, ext_call.return_data[0]))
                                            ('iszero', ('div', 0, ('mask_shl', 112, 0, 0, ('ext_call.return_data', 0, 32))))
                                    else:
                                        if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 10^18:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[floor32(_13021) + _8945 + floor32(_4312) + _26 + (6 * ceil32(return_data.size)) + 389 len 31]
                                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if Mask(112, 0, ext_call.return_data[32]):
                                            if not 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                                                if 0 / Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 0 / Mask(112, 0, ext_call.return_data[0]):
                                                    return (0 / 0 / Mask(112, 0, ext_call.return_data[0]))
                                            else:
                                                if 10^18 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) / 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) != 10^18:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[floor32(_13021) + _8945 + floor32(_4312) + _26 + (6 * ceil32(return_data.size)) + 389 len 31]
                                                if 0 / Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 0 / Mask(112, 0, ext_call.return_data[0]):
                                                    return (10^18 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) / 0 / Mask(112, 0, ext_call.return_data[0]))
                                            ('iszero', ('div', 0, ('mask_shl', 112, 0, 0, ('ext_call.return_data', 0, 32))))
                        else:
                            mem[floor32(_8945) + floor32(_4312) + _26 + (4 * ceil32(return_data.size)) + 224] = mem[floor32(_8945) + floor32(_4312) + _26 + (4 * ceil32(return_data.size)) + -(_8945 % 32) + 256 len _8945 % 32]
                            mem[floor32(_8945) + floor32(_4312) + _26 + (4 * ceil32(return_data.size)) + 256] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                            require ext_code.size(wNativeAddress)
                            staticcall wNativeAddress.symbol() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[floor32(_8945) + floor32(_4312) + _26 + (4 * ceil32(return_data.size)) + 256 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = floor32(_8945) + floor32(_4312) + _26 + (6 * ceil32(return_data.size)) + 256
                            require return_data.size >= 32
                            _12973 = mem[floor32(_8945) + floor32(_4312) + _26 + (4 * ceil32(return_data.size)) + 256]
                            require mem[floor32(_8945) + floor32(_4312) + _26 + (4 * ceil32(return_data.size)) + 256] <= 4294967296
                            require mem[floor32(_8945) + floor32(_4312) + _26 + (4 * ceil32(return_data.size)) + 256] + 32 <= return_data.size
                            require return_data.size >= mem[floor32(_8945) + floor32(_4312) + _26 + (4 * ceil32(return_data.size)) + mem[floor32(_8945) + floor32(_4312) + _26 + (4 * ceil32(return_data.size)) + 256] + 256] + mem[floor32(_8945) + floor32(_4312) + _26 + (4 * ceil32(return_data.size)) + 256] + 32 and mem[floor32(_8945) + floor32(_4312) + _26 + (4 * ceil32(return_data.size)) + mem[floor32(_8945) + floor32(_4312) + _26 + (4 * ceil32(return_data.size)) + 256] + 256] <= 4294967296
                            mem[floor32(_8945) + floor32(_4312) + _26 + (6 * ceil32(return_data.size)) + 256] = mem[floor32(_8945) + floor32(_4312) + _26 + (4 * ceil32(return_data.size)) + mem[floor32(_8945) + floor32(_4312) + _26 + (4 * ceil32(return_data.size)) + 256] + 256]
                            _13048 = mem[floor32(_8945) + floor32(_4312) + _26 + (4 * ceil32(return_data.size)) + _12973 + 256]
                            mem[floor32(_8945) + floor32(_4312) + _26 + (6 * ceil32(return_data.size)) + 288 len ceil32(mem[floor32(_8945) + floor32(_4312) + _26 + (4 * ceil32(return_data.size)) + _12973 + 256])] = mem[floor32(_8945) + floor32(_4312) + _26 + (4 * ceil32(return_data.size)) + _12973 + 288 len ceil32(mem[floor32(_8945) + floor32(_4312) + _26 + (4 * ceil32(return_data.size)) + _12973 + 256])]
                            if not _13048 % 32:
                                if sha3(mem[floor32(_4312) + _26 + (4 * ceil32(return_data.size)) + 224 len mem[floor32(_4312) + _26 + (4 * ceil32(return_data.size)) + 192]]) == sha3(mem[floor32(_8945) + floor32(_4312) + _26 + (6 * ceil32(return_data.size)) + 288 len mem[floor32(_8945) + floor32(_4312) + _26 + (6 * ceil32(return_data.size)) + 256]]):
                                    if not Mask(112, 0, ext_call.return_data[32]):
                                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if Mask(112, 0, ext_call.return_data[0]):
                                            if not 0 / Mask(112, 0, ext_call.return_data[0]):
                                                if 0 / Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 0 / Mask(112, 0, ext_call.return_data[0]):
                                                    return (0 / 0 / Mask(112, 0, ext_call.return_data[0]))
                                            else:
                                                if 10^18 * 0 / Mask(112, 0, ext_call.return_data[0]) / 0 / Mask(112, 0, ext_call.return_data[0]) != 10^18:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[_13048 + floor32(_8945) + floor32(_4312) + _26 + (6 * ceil32(return_data.size)) + 389 len 31]
                                                if 0 / Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 0 / Mask(112, 0, ext_call.return_data[0]):
                                                    return (10^18 * 0 / Mask(112, 0, ext_call.return_data[0]) / 0 / Mask(112, 0, ext_call.return_data[0]))
                                            ('iszero', ('div', 0, ('mask_shl', 112, 0, 0, ('ext_call.return_data', 0, 32))))
                                    else:
                                        if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 10^18:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[_13048 + floor32(_8945) + floor32(_4312) + _26 + (6 * ceil32(return_data.size)) + 389 len 31]
                                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if Mask(112, 0, ext_call.return_data[0]):
                                            if not 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                                                if 0 / Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 0 / Mask(112, 0, ext_call.return_data[0]):
                                                    return (0 / 0 / Mask(112, 0, ext_call.return_data[0]))
                                            else:
                                                if 10^18 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) != 10^18:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[_13048 + floor32(_8945) + floor32(_4312) + _26 + (6 * ceil32(return_data.size)) + 389 len 31]
                                                if 0 / Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 0 / Mask(112, 0, ext_call.return_data[0]):
                                                    return (10^18 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 0 / Mask(112, 0, ext_call.return_data[0]))
                                            ('iszero', ('div', 0, ('mask_shl', 112, 0, 0, ('ext_call.return_data', 0, 32))))
                                else:
                                    if not Mask(112, 0, ext_call.return_data[0]):
                                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if Mask(112, 0, ext_call.return_data[32]):
                                            if not 0 / Mask(112, 0, ext_call.return_data[32]):
                                                if 0 / Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 0 / Mask(112, 0, ext_call.return_data[0]):
                                                    return (0 / 0 / Mask(112, 0, ext_call.return_data[0]))
                                            else:
                                                if 10^18 * 0 / Mask(112, 0, ext_call.return_data[32]) / 0 / Mask(112, 0, ext_call.return_data[32]) != 10^18:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[_13048 + floor32(_8945) + floor32(_4312) + _26 + (6 * ceil32(return_data.size)) + 389 len 31]
                                                if 0 / Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 0 / Mask(112, 0, ext_call.return_data[0]):
                                                    return (10^18 * 0 / Mask(112, 0, ext_call.return_data[32]) / 0 / Mask(112, 0, ext_call.return_data[0]))
                                            ('iszero', ('div', 0, ('mask_shl', 112, 0, 0, ('ext_call.return_data', 0, 32))))
                                    else:
                                        if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 10^18:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[_13048 + floor32(_8945) + floor32(_4312) + _26 + (6 * ceil32(return_data.size)) + 389 len 31]
                                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if Mask(112, 0, ext_call.return_data[32]):
                                            if not 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                                                if 0 / Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 0 / Mask(112, 0, ext_call.return_data[0]):
                                                    return (0 / 0 / Mask(112, 0, ext_call.return_data[0]))
                                            else:
                                                if 10^18 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) / 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) != 10^18:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[_13048 + floor32(_8945) + floor32(_4312) + _26 + (6 * ceil32(return_data.size)) + 389 len 31]
                                                if 0 / Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 0 / Mask(112, 0, ext_call.return_data[0]):
                                                    return (10^18 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) / 0 / Mask(112, 0, ext_call.return_data[0]))
                                            ('iszero', ('div', 0, ('mask_shl', 112, 0, 0, ('ext_call.return_data', 0, 32))))
                            else:
                                mem[floor32(_13048) + floor32(_8945) + floor32(_4312) + _26 + (6 * ceil32(return_data.size)) + 288] = mem[floor32(_13048) + floor32(_8945) + floor32(_4312) + _26 + (6 * ceil32(return_data.size)) + -(_13048 % 32) + 320 len _13048 % 32]
                                if sha3(mem[floor32(_4312) + _26 + (4 * ceil32(return_data.size)) + 224 len mem[floor32(_4312) + _26 + (4 * ceil32(return_data.size)) + 192]]) == sha3(mem[floor32(_8945) + floor32(_4312) + _26 + (6 * ceil32(return_data.size)) + 288 len mem[floor32(_8945) + floor32(_4312) + _26 + (6 * ceil32(return_data.size)) + 256]]):
                                    if not Mask(112, 0, ext_call.return_data[32]):
                                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if Mask(112, 0, ext_call.return_data[0]):
                                            if not 0 / Mask(112, 0, ext_call.return_data[0]):
                                                if 0 / Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 0 / Mask(112, 0, ext_call.return_data[0]):
                                                    return (0 / 0 / Mask(112, 0, ext_call.return_data[0]))
                                            else:
                                                if 10^18 * 0 / Mask(112, 0, ext_call.return_data[0]) / 0 / Mask(112, 0, ext_call.return_data[0]) != 10^18:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[floor32(_13048) + floor32(_8945) + floor32(_4312) + _26 + (6 * ceil32(return_data.size)) + 421 len 31]
                                                if 0 / Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 0 / Mask(112, 0, ext_call.return_data[0]):
                                                    return (10^18 * 0 / Mask(112, 0, ext_call.return_data[0]) / 0 / Mask(112, 0, ext_call.return_data[0]))
                                            ('iszero', ('div', 0, ('mask_shl', 112, 0, 0, ('ext_call.return_data', 0, 32))))
                                    else:
                                        if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 10^18:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[floor32(_13048) + floor32(_8945) + floor32(_4312) + _26 + (6 * ceil32(return_data.size)) + 421 len 31]
                                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if Mask(112, 0, ext_call.return_data[0]):
                                            if not 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                                                if 0 / Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 0 / Mask(112, 0, ext_call.return_data[0]):
                                                    return (0 / 0 / Mask(112, 0, ext_call.return_data[0]))
                                            else:
                                                if 10^18 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) != 10^18:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[floor32(_13048) + floor32(_8945) + floor32(_4312) + _26 + (6 * ceil32(return_data.size)) + 421 len 31]
                                                if 0 / Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 0 / Mask(112, 0, ext_call.return_data[0]):
                                                    return (10^18 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 0 / Mask(112, 0, ext_call.return_data[0]))
                                            ('iszero', ('div', 0, ('mask_shl', 112, 0, 0, ('ext_call.return_data', 0, 32))))
                                else:
                                    if not Mask(112, 0, ext_call.return_data[0]):
                                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if Mask(112, 0, ext_call.return_data[32]):
                                            if not 0 / Mask(112, 0, ext_call.return_data[32]):
                                                if 0 / Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 0 / Mask(112, 0, ext_call.return_data[0]):
                                                    return (0 / 0 / Mask(112, 0, ext_call.return_data[0]))
                                            else:
                                                if 10^18 * 0 / Mask(112, 0, ext_call.return_data[32]) / 0 / Mask(112, 0, ext_call.return_data[32]) != 10^18:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[floor32(_13048) + floor32(_8945) + floor32(_4312) + _26 + (6 * ceil32(return_data.size)) + 421 len 31]
                                                if 0 / Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 0 / Mask(112, 0, ext_call.return_data[0]):
                                                    return (10^18 * 0 / Mask(112, 0, ext_call.return_data[32]) / 0 / Mask(112, 0, ext_call.return_data[0]))
                                            ('iszero', ('div', 0, ('mask_shl', 112, 0, 0, ('ext_call.return_data', 0, 32))))
                                    else:
                                        if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 10^18:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[floor32(_13048) + floor32(_8945) + floor32(_4312) + _26 + (6 * ceil32(return_data.size)) + 421 len 31]
                                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if Mask(112, 0, ext_call.return_data[32]):
                                            if not 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                                                if 0 / Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 0 / Mask(112, 0, ext_call.return_data[0]):
                                                    return (0 / 0 / Mask(112, 0, ext_call.return_data[0]))
                                            else:
                                                if 10^18 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) / 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) != 10^18:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[floor32(_13048) + floor32(_8945) + floor32(_4312) + _26 + (6 * ceil32(return_data.size)) + 421 len 31]
                                                if 0 / Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 0 / Mask(112, 0, ext_call.return_data[0]):
                                                    return (10^18 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) / 0 / Mask(112, 0, ext_call.return_data[0]))
                                            ('iszero', ('div', 0, ('mask_shl', 112, 0, 0, ('ext_call.return_data', 0, 32))))
                else:
                    if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 10^18:
                        revert with 0, 
                                    32,
                                    33,
                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[floor32(_4312) + _26 + (2 * ceil32(return_data.size)) + 293 len 31]
                    if Mask(112, 0, ext_call.return_data[0]) <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    if Mask(112, 0, ext_call.return_data[0]):
                        require ext_code.size(sub_d4384dbeAddress)
                        staticcall sub_d4384dbeAddress.getPair(address arg1, address arg2) with:
                                gas gas_remaining wei
                               args wNativeAddress, usdcTokenAddress
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).getReserves() with:
                                gas gas_remaining wei
                        mem[floor32(_4312) + _26 + (2 * ceil32(return_data.size)) + 192 len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[floor32(_4312) + _26 + (2 * ceil32(return_data.size)) + 192] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).symbol() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[floor32(_4312) + _26 + (2 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = floor32(_4312) + _26 + (4 * ceil32(return_data.size)) + 192
                        require return_data.size >= 32
                        _8916 = mem[floor32(_4312) + _26 + (2 * ceil32(return_data.size)) + 192]
                        require mem[floor32(_4312) + _26 + (2 * ceil32(return_data.size)) + 192] <= 4294967296
                        require mem[floor32(_4312) + _26 + (2 * ceil32(return_data.size)) + 192] + 32 <= return_data.size
                        require return_data.size >= mem[floor32(_4312) + _26 + (2 * ceil32(return_data.size)) + mem[floor32(_4312) + _26 + (2 * ceil32(return_data.size)) + 192] + 192] + mem[floor32(_4312) + _26 + (2 * ceil32(return_data.size)) + 192] + 32 and mem[floor32(_4312) + _26 + (2 * ceil32(return_data.size)) + mem[floor32(_4312) + _26 + (2 * ceil32(return_data.size)) + 192] + 192] <= 4294967296
                        mem[floor32(_4312) + _26 + (4 * ceil32(return_data.size)) + 192] = mem[floor32(_4312) + _26 + (2 * ceil32(return_data.size)) + mem[floor32(_4312) + _26 + (2 * ceil32(return_data.size)) + 192] + 192]
                        _8955 = mem[floor32(_4312) + _26 + (2 * ceil32(return_data.size)) + _8916 + 192]
                        mem[floor32(_4312) + _26 + (4 * ceil32(return_data.size)) + 224 len ceil32(mem[floor32(_4312) + _26 + (2 * ceil32(return_data.size)) + _8916 + 192])] = mem[floor32(_4312) + _26 + (2 * ceil32(return_data.size)) + _8916 + 224 len ceil32(mem[floor32(_4312) + _26 + (2 * ceil32(return_data.size)) + _8916 + 192])]
                        if not _8955 % 32:
                            mem[_8955 + floor32(_4312) + _26 + (4 * ceil32(return_data.size)) + 224] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                            require ext_code.size(wNativeAddress)
                            staticcall wNativeAddress.symbol() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[_8955 + floor32(_4312) + _26 + (4 * ceil32(return_data.size)) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = _8955 + floor32(_4312) + _26 + (6 * ceil32(return_data.size)) + 224
                            require return_data.size >= 32
                            _12927 = mem[_8955 + floor32(_4312) + _26 + (4 * ceil32(return_data.size)) + 224]
                            require mem[_8955 + floor32(_4312) + _26 + (4 * ceil32(return_data.size)) + 224] <= 4294967296
                            require mem[_8955 + floor32(_4312) + _26 + (4 * ceil32(return_data.size)) + 224] + 32 <= return_data.size
                            require return_data.size >= mem[_8955 + floor32(_4312) + _26 + (4 * ceil32(return_data.size)) + mem[_8955 + floor32(_4312) + _26 + (4 * ceil32(return_data.size)) + 224] + 224] + mem[_8955 + floor32(_4312) + _26 + (4 * ceil32(return_data.size)) + 224] + 32 and mem[_8955 + floor32(_4312) + _26 + (4 * ceil32(return_data.size)) + mem[_8955 + floor32(_4312) + _26 + (4 * ceil32(return_data.size)) + 224] + 224] <= 4294967296
                            mem[_8955 + floor32(_4312) + _26 + (6 * ceil32(return_data.size)) + 224] = mem[_8955 + floor32(_4312) + _26 + (4 * ceil32(return_data.size)) + mem[_8955 + floor32(_4312) + _26 + (4 * ceil32(return_data.size)) + 224] + 224]
                            _13019 = mem[_8955 + floor32(_4312) + _26 + (4 * ceil32(return_data.size)) + _12927 + 224]
                            mem[_8955 + floor32(_4312) + _26 + (6 * ceil32(return_data.size)) + 256 len ceil32(mem[_8955 + floor32(_4312) + _26 + (4 * ceil32(return_data.size)) + _12927 + 224])] = mem[_8955 + floor32(_4312) + _26 + (4 * ceil32(return_data.size)) + _12927 + 256 len ceil32(mem[_8955 + floor32(_4312) + _26 + (4 * ceil32(return_data.size)) + _12927 + 224])]
                            if not _13019 % 32:
                                if sha3(mem[floor32(_4312) + _26 + (4 * ceil32(return_data.size)) + 224 len mem[floor32(_4312) + _26 + (4 * ceil32(return_data.size)) + 192]]) == sha3(mem[_8955 + floor32(_4312) + _26 + (6 * ceil32(return_data.size)) + 256 len mem[_8955 + floor32(_4312) + _26 + (6 * ceil32(return_data.size)) + 224]]):
                                    if not Mask(112, 0, ext_call.return_data[32]):
                                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if Mask(112, 0, ext_call.return_data[0]):
                                            if not 0 / Mask(112, 0, ext_call.return_data[0]):
                                                if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                                                    return (0 / 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]))
                                            else:
                                                if 10^18 * 0 / Mask(112, 0, ext_call.return_data[0]) / 0 / Mask(112, 0, ext_call.return_data[0]) != 10^18:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[_13019 + _8955 + floor32(_4312) + _26 + (6 * ceil32(return_data.size)) + 357 len 31]
                                                if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                                                    return (10^18 * 0 / Mask(112, 0, ext_call.return_data[0]) / 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]))
                                            ('iszero', ('div', ('mul', 1000000000000000000, ('mask_shl', 112, 0, 0, ('ext_call.return_data', 32, 32))), ('mask_shl', 112, 0, 0, ('ext_call.return_data', 0, 32))))
                                    else:
                                        if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 10^18:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[_13019 + _8955 + floor32(_4312) + _26 + (6 * ceil32(return_data.size)) + 357 len 31]
                                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if Mask(112, 0, ext_call.return_data[0]):
                                            if not 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                                                if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                                                    return (0 / 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]))
                                            else:
                                                if 10^18 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) != 10^18:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[_13019 + _8955 + floor32(_4312) + _26 + (6 * ceil32(return_data.size)) + 357 len 31]
                                                if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                                                    return (10^18 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]))
                                            ('iszero', ('div', ('mul', 1000000000000000000, ('mask_shl', 112, 0, 0, ('ext_call.return_data', 32, 32))), ('mask_shl', 112, 0, 0, ('ext_call.return_data', 0, 32))))
                                else:
                                    if not Mask(112, 0, ext_call.return_data[0]):
                                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if Mask(112, 0, ext_call.return_data[32]):
                                            if not 0 / Mask(112, 0, ext_call.return_data[32]):
                                                if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                                                    return (0 / 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]))
                                            else:
                                                if 10^18 * 0 / Mask(112, 0, ext_call.return_data[32]) / 0 / Mask(112, 0, ext_call.return_data[32]) != 10^18:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[_13019 + _8955 + floor32(_4312) + _26 + (6 * ceil32(return_data.size)) + 357 len 31]
                                                if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                                                    return (10^18 * 0 / Mask(112, 0, ext_call.return_data[32]) / 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]))
                                            ('iszero', ('div', ('mul', 1000000000000000000, ('mask_shl', 112, 0, 0, ('ext_call.return_data', 32, 32))), ('mask_shl', 112, 0, 0, ('ext_call.return_data', 0, 32))))
                                    else:
                                        if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 10^18:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[_13019 + _8955 + floor32(_4312) + _26 + (6 * ceil32(return_data.size)) + 357 len 31]
                                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if Mask(112, 0, ext_call.return_data[32]):
                                            if not 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                                                if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                                                    return (0 / 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]))
                                            else:
                                                if 10^18 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) / 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) != 10^18:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[_13019 + _8955 + floor32(_4312) + _26 + (6 * ceil32(return_data.size)) + 357 len 31]
                                                if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                                                    return (10^18 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) / 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]))
                                            ('iszero', ('div', ('mul', 1000000000000000000, ('mask_shl', 112, 0, 0, ('ext_call.return_data', 32, 32))), ('mask_shl', 112, 0, 0, ('ext_call.return_data', 0, 32))))
                            else:
                                mem[floor32(_13019) + _8955 + floor32(_4312) + _26 + (6 * ceil32(return_data.size)) + 256] = mem[floor32(_13019) + _8955 + floor32(_4312) + _26 + (6 * ceil32(return_data.size)) + -(_13019 % 32) + 288 len _13019 % 32]
                                if sha3(mem[floor32(_4312) + _26 + (4 * ceil32(return_data.size)) + 224 len mem[floor32(_4312) + _26 + (4 * ceil32(return_data.size)) + 192]]) == sha3(mem[_8955 + floor32(_4312) + _26 + (6 * ceil32(return_data.size)) + 256 len mem[_8955 + floor32(_4312) + _26 + (6 * ceil32(return_data.size)) + 224]]):
                                    if not Mask(112, 0, ext_call.return_data[32]):
                                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if Mask(112, 0, ext_call.return_data[0]):
                                            if not 0 / Mask(112, 0, ext_call.return_data[0]):
                                                if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                                                    return (0 / 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]))
                                            else:
                                                if 10^18 * 0 / Mask(112, 0, ext_call.return_data[0]) / 0 / Mask(112, 0, ext_call.return_data[0]) != 10^18:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[floor32(_13019) + _8955 + floor32(_4312) + _26 + (6 * ceil32(return_data.size)) + 389 len 31]
                                                if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                                                    return (10^18 * 0 / Mask(112, 0, ext_call.return_data[0]) / 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]))
                                            ('iszero', ('div', ('mul', 1000000000000000000, ('mask_shl', 112, 0, 0, ('ext_call.return_data', 32, 32))), ('mask_shl', 112, 0, 0, ('ext_call.return_data', 0, 32))))
                                    else:
                                        if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 10^18:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[floor32(_13019) + _8955 + floor32(_4312) + _26 + (6 * ceil32(return_data.size)) + 389 len 31]
                                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if Mask(112, 0, ext_call.return_data[0]):
                                            if not 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                                                if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                                                    return (0 / 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]))
                                            else:
                                                if 10^18 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) != 10^18:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[floor32(_13019) + _8955 + floor32(_4312) + _26 + (6 * ceil32(return_data.size)) + 389 len 31]
                                                if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                                                    return (10^18 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]))
                                            ('iszero', ('div', ('mul', 1000000000000000000, ('mask_shl', 112, 0, 0, ('ext_call.return_data', 32, 32))), ('mask_shl', 112, 0, 0, ('ext_call.return_data', 0, 32))))
                                else:
                                    if not Mask(112, 0, ext_call.return_data[0]):
                                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if Mask(112, 0, ext_call.return_data[32]):
                                            if not 0 / Mask(112, 0, ext_call.return_data[32]):
                                                if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                                                    return (0 / 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]))
                                            else:
                                                if 10^18 * 0 / Mask(112, 0, ext_call.return_data[32]) / 0 / Mask(112, 0, ext_call.return_data[32]) != 10^18:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[floor32(_13019) + _8955 + floor32(_4312) + _26 + (6 * ceil32(return_data.size)) + 389 len 31]
                                                if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                                                    return (10^18 * 0 / Mask(112, 0, ext_call.return_data[32]) / 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]))
                                            ('iszero', ('div', ('mul', 1000000000000000000, ('mask_shl', 112, 0, 0, ('ext_call.return_data', 32, 32))), ('mask_shl', 112, 0, 0, ('ext_call.return_data', 0, 32))))
                                    else:
                                        if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 10^18:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[floor32(_13019) + _8955 + floor32(_4312) + _26 + (6 * ceil32(return_data.size)) + 389 len 31]
                                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if Mask(112, 0, ext_call.return_data[32]):
                                            if not 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                                                if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                                                    return (0 / 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]))
                                            else:
                                                if 10^18 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) / 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) != 10^18:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[floor32(_13019) + _8955 + floor32(_4312) + _26 + (6 * ceil32(return_data.size)) + 389 len 31]
                                                if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                                                    return (10^18 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) / 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]))
                                            ('iszero', ('div', ('mul', 1000000000000000000, ('mask_shl', 112, 0, 0, ('ext_call.return_data', 32, 32))), ('mask_shl', 112, 0, 0, ('ext_call.return_data', 0, 32))))
                        else:
                            mem[floor32(_8955) + floor32(_4312) + _26 + (4 * ceil32(return_data.size)) + 224] = mem[floor32(_8955) + floor32(_4312) + _26 + (4 * ceil32(return_data.size)) + -(_8955 % 32) + 256 len _8955 % 32]
                            mem[floor32(_8955) + floor32(_4312) + _26 + (4 * ceil32(return_data.size)) + 256] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                            require ext_code.size(wNativeAddress)
                            staticcall wNativeAddress.symbol() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[floor32(_8955) + floor32(_4312) + _26 + (4 * ceil32(return_data.size)) + 256 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = floor32(_8955) + floor32(_4312) + _26 + (6 * ceil32(return_data.size)) + 256
                            require return_data.size >= 32
                            _12971 = mem[floor32(_8955) + floor32(_4312) + _26 + (4 * ceil32(return_data.size)) + 256]
                            require mem[floor32(_8955) + floor32(_4312) + _26 + (4 * ceil32(return_data.size)) + 256] <= 4294967296
                            require mem[floor32(_8955) + floor32(_4312) + _26 + (4 * ceil32(return_data.size)) + 256] + 32 <= return_data.size
                            require return_data.size >= mem[floor32(_8955) + floor32(_4312) + _26 + (4 * ceil32(return_data.size)) + mem[floor32(_8955) + floor32(_4312) + _26 + (4 * ceil32(return_data.size)) + 256] + 256] + mem[floor32(_8955) + floor32(_4312) + _26 + (4 * ceil32(return_data.size)) + 256] + 32 and mem[floor32(_8955) + floor32(_4312) + _26 + (4 * ceil32(return_data.size)) + mem[floor32(_8955) + floor32(_4312) + _26 + (4 * ceil32(return_data.size)) + 256] + 256] <= 4294967296
                            mem[floor32(_8955) + floor32(_4312) + _26 + (6 * ceil32(return_data.size)) + 256] = mem[floor32(_8955) + floor32(_4312) + _26 + (4 * ceil32(return_data.size)) + mem[floor32(_8955) + floor32(_4312) + _26 + (4 * ceil32(return_data.size)) + 256] + 256]
                            _13047 = mem[floor32(_8955) + floor32(_4312) + _26 + (4 * ceil32(return_data.size)) + _12971 + 256]
                            mem[floor32(_8955) + floor32(_4312) + _26 + (6 * ceil32(return_data.size)) + 288 len ceil32(mem[floor32(_8955) + floor32(_4312) + _26 + (4 * ceil32(return_data.size)) + _12971 + 256])] = mem[floor32(_8955) + floor32(_4312) + _26 + (4 * ceil32(return_data.size)) + _12971 + 288 len ceil32(mem[floor32(_8955) + floor32(_4312) + _26 + (4 * ceil32(return_data.size)) + _12971 + 256])]
                            if not _13047 % 32:
                                if sha3(mem[floor32(_4312) + _26 + (4 * ceil32(return_data.size)) + 224 len mem[floor32(_4312) + _26 + (4 * ceil32(return_data.size)) + 192]]) == sha3(mem[floor32(_8955) + floor32(_4312) + _26 + (6 * ceil32(return_data.size)) + 288 len mem[floor32(_8955) + floor32(_4312) + _26 + (6 * ceil32(return_data.size)) + 256]]):
                                    if not Mask(112, 0, ext_call.return_data[32]):
                                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if Mask(112, 0, ext_call.return_data[0]):
                                            if not 0 / Mask(112, 0, ext_call.return_data[0]):
                                                if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                                                    return (0 / 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]))
                                            else:
                                                if 10^18 * 0 / Mask(112, 0, ext_call.return_data[0]) / 0 / Mask(112, 0, ext_call.return_data[0]) != 10^18:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[_13047 + floor32(_8955) + floor32(_4312) + _26 + (6 * ceil32(return_data.size)) + 389 len 31]
                                                if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                                                    return (10^18 * 0 / Mask(112, 0, ext_call.return_data[0]) / 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]))
                                            ('iszero', ('div', ('mul', 1000000000000000000, ('mask_shl', 112, 0, 0, ('ext_call.return_data', 32, 32))), ('mask_shl', 112, 0, 0, ('ext_call.return_data', 0, 32))))
                                    else:
                                        if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 10^18:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[_13047 + floor32(_8955) + floor32(_4312) + _26 + (6 * ceil32(return_data.size)) + 389 len 31]
                                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if Mask(112, 0, ext_call.return_data[0]):
                                            if not 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                                                if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                                                    return (0 / 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]))
                                            else:
                                                if 10^18 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) != 10^18:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[_13047 + floor32(_8955) + floor32(_4312) + _26 + (6 * ceil32(return_data.size)) + 389 len 31]
                                                if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                                                    return (10^18 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]))
                                            ('iszero', ('div', ('mul', 1000000000000000000, ('mask_shl', 112, 0, 0, ('ext_call.return_data', 32, 32))), ('mask_shl', 112, 0, 0, ('ext_call.return_data', 0, 32))))
                                else:
                                    if not Mask(112, 0, ext_call.return_data[0]):
                                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if Mask(112, 0, ext_call.return_data[32]):
                                            if not 0 / Mask(112, 0, ext_call.return_data[32]):
                                                if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                                                    return (0 / 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]))
                                            else:
                                                if 10^18 * 0 / Mask(112, 0, ext_call.return_data[32]) / 0 / Mask(112, 0, ext_call.return_data[32]) != 10^18:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[_13047 + floor32(_8955) + floor32(_4312) + _26 + (6 * ceil32(return_data.size)) + 389 len 31]
                                                if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                                                    return (10^18 * 0 / Mask(112, 0, ext_call.return_data[32]) / 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]))
                                            ('iszero', ('div', ('mul', 1000000000000000000, ('mask_shl', 112, 0, 0, ('ext_call.return_data', 32, 32))), ('mask_shl', 112, 0, 0, ('ext_call.return_data', 0, 32))))
                                    else:
                                        if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 10^18:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[_13047 + floor32(_8955) + floor32(_4312) + _26 + (6 * ceil32(return_data.size)) + 389 len 31]
                                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if Mask(112, 0, ext_call.return_data[32]):
                                            if not 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                                                if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                                                    return (0 / 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]))
                                            else:
                                                if 10^18 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) / 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) != 10^18:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[_13047 + floor32(_8955) + floor32(_4312) + _26 + (6 * ceil32(return_data.size)) + 389 len 31]
                                                if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                                                    return (10^18 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) / 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]))
                                            ('iszero', ('div', ('mul', 1000000000000000000, ('mask_shl', 112, 0, 0, ('ext_call.return_data', 32, 32))), ('mask_shl', 112, 0, 0, ('ext_call.return_data', 0, 32))))
                            else:
                                mem[floor32(_13047) + floor32(_8955) + floor32(_4312) + _26 + (6 * ceil32(return_data.size)) + 288] = mem[floor32(_13047) + floor32(_8955) + floor32(_4312) + _26 + (6 * ceil32(return_data.size)) + -(_13047 % 32) + 320 len _13047 % 32]
                                if sha3(mem[floor32(_4312) + _26 + (4 * ceil32(return_data.size)) + 224 len mem[floor32(_4312) + _26 + (4 * ceil32(return_data.size)) + 192]]) == sha3(mem[floor32(_8955) + floor32(_4312) + _26 + (6 * ceil32(return_data.size)) + 288 len mem[floor32(_8955) + floor32(_4312) + _26 + (6 * ceil32(return_data.size)) + 256]]):
                                    if not Mask(112, 0, ext_call.return_data[32]):
                                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if Mask(112, 0, ext_call.return_data[0]):
                                            if not 0 / Mask(112, 0, ext_call.return_data[0]):
                                                if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                                                    return (0 / 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]))
                                            else:
                                                if 10^18 * 0 / Mask(112, 0, ext_call.return_data[0]) / 0 / Mask(112, 0, ext_call.return_data[0]) != 10^18:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[floor32(_13047) + floor32(_8955) + floor32(_4312) + _26 + (6 * ceil32(return_data.size)) + 421 len 31]
                                                if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                                                    return (10^18 * 0 / Mask(112, 0, ext_call.return_data[0]) / 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]))
                                            ('iszero', ('div', ('mul', 1000000000000000000, ('mask_shl', 112, 0, 0, ('ext_call.return_data', 32, 32))), ('mask_shl', 112, 0, 0, ('ext_call.return_data', 0, 32))))
                                    else:
                                        if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 10^18:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[floor32(_13047) + floor32(_8955) + floor32(_4312) + _26 + (6 * ceil32(return_data.size)) + 421 len 31]
                                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if Mask(112, 0, ext_call.return_data[0]):
                                            if not 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                                                if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                                                    return (0 / 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]))
                                            else:
                                                if 10^18 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) != 10^18:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[floor32(_13047) + floor32(_8955) + floor32(_4312) + _26 + (6 * ceil32(return_data.size)) + 421 len 31]
                                                if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                                                    return (10^18 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]))
                                            ('iszero', ('div', ('mul', 1000000000000000000, ('mask_shl', 112, 0, 0, ('ext_call.return_data', 32, 32))), ('mask_shl', 112, 0, 0, ('ext_call.return_data', 0, 32))))
                                else:
                                    if not Mask(112, 0, ext_call.return_data[0]):
                                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if Mask(112, 0, ext_call.return_data[32]):
                                            if not 0 / Mask(112, 0, ext_call.return_data[32]):
                                                if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                                                    return (0 / 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]))
                                            else:
                                                if 10^18 * 0 / Mask(112, 0, ext_call.return_data[32]) / 0 / Mask(112, 0, ext_call.return_data[32]) != 10^18:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[floor32(_13047) + floor32(_8955) + floor32(_4312) + _26 + (6 * ceil32(return_data.size)) + 421 len 31]
                                                if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                                                    return (10^18 * 0 / Mask(112, 0, ext_call.return_data[32]) / 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]))
                                            ('iszero', ('div', ('mul', 1000000000000000000, ('mask_shl', 112, 0, 0, ('ext_call.return_data', 32, 32))), ('mask_shl', 112, 0, 0, ('ext_call.return_data', 0, 32))))
                                    else:
                                        if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 10^18:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[floor32(_13047) + floor32(_8955) + floor32(_4312) + _26 + (6 * ceil32(return_data.size)) + 421 len 31]
                                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if Mask(112, 0, ext_call.return_data[32]):
                                            if not 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                                                if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                                                    return (0 / 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]))
                                            else:
                                                if 10^18 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) / 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) != 10^18:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[floor32(_13047) + floor32(_8955) + floor32(_4312) + _26 + (6 * ceil32(return_data.size)) + 421 len 31]
                                                if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                                                    return (10^18 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) / 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]))
                                            ('iszero', ('div', ('mul', 1000000000000000000, ('mask_shl', 112, 0, 0, ('ext_call.return_data', 32, 32))), ('mask_shl', 112, 0, 0, ('ext_call.return_data', 0, 32))))
            else:
                if not Mask(112, 0, ext_call.return_data[0]):
                    if Mask(112, 0, ext_call.return_data[32]) <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    if Mask(112, 0, ext_call.return_data[32]):
                        require ext_code.size(sub_d4384dbeAddress)
                        staticcall sub_d4384dbeAddress.getPair(address arg1, address arg2) with:
                                gas gas_remaining wei
                               args wNativeAddress, usdcTokenAddress
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).getReserves() with:
                                gas gas_remaining wei
                        mem[floor32(_4312) + _26 + (2 * ceil32(return_data.size)) + 192 len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[floor32(_4312) + _26 + (2 * ceil32(return_data.size)) + 192] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).symbol() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[floor32(_4312) + _26 + (2 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = floor32(_4312) + _26 + (4 * ceil32(return_data.size)) + 192
                        require return_data.size >= 32
                        _8919 = mem[floor32(_4312) + _26 + (2 * ceil32(return_data.size)) + 192]
                        require mem[floor32(_4312) + _26 + (2 * ceil32(return_data.size)) + 192] <= 4294967296
                        require mem[floor32(_4312) + _26 + (2 * ceil32(return_data.size)) + 192] + 32 <= return_data.size
                        require return_data.size >= mem[floor32(_4312) + _26 + (2 * ceil32(return_data.size)) + mem[floor32(_4312) + _26 + (2 * ceil32(return_data.size)) + 192] + 192] + mem[floor32(_4312) + _26 + (2 * ceil32(return_data.size)) + 192] + 32 and mem[floor32(_4312) + _26 + (2 * ceil32(return_data.size)) + mem[floor32(_4312) + _26 + (2 * ceil32(return_data.size)) + 192] + 192] <= 4294967296
                        mem[floor32(_4312) + _26 + (4 * ceil32(return_data.size)) + 192] = mem[floor32(_4312) + _26 + (2 * ceil32(return_data.size)) + mem[floor32(_4312) + _26 + (2 * ceil32(return_data.size)) + 192] + 192]
                        _8957 = mem[floor32(_4312) + _26 + (2 * ceil32(return_data.size)) + _8919 + 192]
                        mem[floor32(_4312) + _26 + (4 * ceil32(return_data.size)) + 224 len ceil32(mem[floor32(_4312) + _26 + (2 * ceil32(return_data.size)) + _8919 + 192])] = mem[floor32(_4312) + _26 + (2 * ceil32(return_data.size)) + _8919 + 224 len ceil32(mem[floor32(_4312) + _26 + (2 * ceil32(return_data.size)) + _8919 + 192])]
                        if not _8957 % 32:
                            mem[_8957 + floor32(_4312) + _26 + (4 * ceil32(return_data.size)) + 224] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                            require ext_code.size(wNativeAddress)
                            staticcall wNativeAddress.symbol() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[_8957 + floor32(_4312) + _26 + (4 * ceil32(return_data.size)) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = _8957 + floor32(_4312) + _26 + (6 * ceil32(return_data.size)) + 224
                            require return_data.size >= 32
                            _12936 = mem[_8957 + floor32(_4312) + _26 + (4 * ceil32(return_data.size)) + 224]
                            require mem[_8957 + floor32(_4312) + _26 + (4 * ceil32(return_data.size)) + 224] <= 4294967296
                            require mem[_8957 + floor32(_4312) + _26 + (4 * ceil32(return_data.size)) + 224] + 32 <= return_data.size
                            require return_data.size >= mem[_8957 + floor32(_4312) + _26 + (4 * ceil32(return_data.size)) + mem[_8957 + floor32(_4312) + _26 + (4 * ceil32(return_data.size)) + 224] + 224] + mem[_8957 + floor32(_4312) + _26 + (4 * ceil32(return_data.size)) + 224] + 32 and mem[_8957 + floor32(_4312) + _26 + (4 * ceil32(return_data.size)) + mem[_8957 + floor32(_4312) + _26 + (4 * ceil32(return_data.size)) + 224] + 224] <= 4294967296
                            mem[_8957 + floor32(_4312) + _26 + (6 * ceil32(return_data.size)) + 224] = mem[_8957 + floor32(_4312) + _26 + (4 * ceil32(return_data.size)) + mem[_8957 + floor32(_4312) + _26 + (4 * ceil32(return_data.size)) + 224] + 224]
                            _13025 = mem[_8957 + floor32(_4312) + _26 + (4 * ceil32(return_data.size)) + _12936 + 224]
                            mem[_8957 + floor32(_4312) + _26 + (6 * ceil32(return_data.size)) + 256 len ceil32(mem[_8957 + floor32(_4312) + _26 + (4 * ceil32(return_data.size)) + _12936 + 224])] = mem[_8957 + floor32(_4312) + _26 + (4 * ceil32(return_data.size)) + _12936 + 256 len ceil32(mem[_8957 + floor32(_4312) + _26 + (4 * ceil32(return_data.size)) + _12936 + 224])]
                            if not _13025 % 32:
                                if sha3(mem[floor32(_4312) + _26 + (4 * ceil32(return_data.size)) + 224 len mem[floor32(_4312) + _26 + (4 * ceil32(return_data.size)) + 192]]) == sha3(mem[_8957 + floor32(_4312) + _26 + (6 * ceil32(return_data.size)) + 256 len mem[_8957 + floor32(_4312) + _26 + (6 * ceil32(return_data.size)) + 224]]):
                                    if not Mask(112, 0, ext_call.return_data[32]):
                                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if Mask(112, 0, ext_call.return_data[0]):
                                            if not 0 / Mask(112, 0, ext_call.return_data[0]):
                                                if 0 / Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 0 / Mask(112, 0, ext_call.return_data[32]):
                                                    return (0 / 0 / Mask(112, 0, ext_call.return_data[32]))
                                            else:
                                                if 10^18 * 0 / Mask(112, 0, ext_call.return_data[0]) / 0 / Mask(112, 0, ext_call.return_data[0]) != 10^18:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[_13025 + _8957 + floor32(_4312) + _26 + (6 * ceil32(return_data.size)) + 357 len 31]
                                                if 0 / Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 0 / Mask(112, 0, ext_call.return_data[32]):
                                                    return (10^18 * 0 / Mask(112, 0, ext_call.return_data[0]) / 0 / Mask(112, 0, ext_call.return_data[32]))
                                            ('iszero', ('div', 0, ('mask_shl', 112, 0, 0, ('ext_call.return_data', 32, 32))))
                                    else:
                                        if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 10^18:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[_13025 + _8957 + floor32(_4312) + _26 + (6 * ceil32(return_data.size)) + 357 len 31]
                                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if Mask(112, 0, ext_call.return_data[0]):
                                            if not 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                                                if 0 / Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 0 / Mask(112, 0, ext_call.return_data[32]):
                                                    return (0 / 0 / Mask(112, 0, ext_call.return_data[32]))
                                            else:
                                                if 10^18 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) != 10^18:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[_13025 + _8957 + floor32(_4312) + _26 + (6 * ceil32(return_data.size)) + 357 len 31]
                                                if 0 / Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 0 / Mask(112, 0, ext_call.return_data[32]):
                                                    return (10^18 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 0 / Mask(112, 0, ext_call.return_data[32]))
                                            ('iszero', ('div', 0, ('mask_shl', 112, 0, 0, ('ext_call.return_data', 32, 32))))
                                else:
                                    if not Mask(112, 0, ext_call.return_data[0]):
                                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if Mask(112, 0, ext_call.return_data[32]):
                                            if not 0 / Mask(112, 0, ext_call.return_data[32]):
                                                if 0 / Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 0 / Mask(112, 0, ext_call.return_data[32]):
                                                    return (0 / 0 / Mask(112, 0, ext_call.return_data[32]))
                                            else:
                                                if 10^18 * 0 / Mask(112, 0, ext_call.return_data[32]) / 0 / Mask(112, 0, ext_call.return_data[32]) != 10^18:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[_13025 + _8957 + floor32(_4312) + _26 + (6 * ceil32(return_data.size)) + 357 len 31]
                                                if 0 / Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 0 / Mask(112, 0, ext_call.return_data[32]):
                                                    return (10^18 * 0 / Mask(112, 0, ext_call.return_data[32]) / 0 / Mask(112, 0, ext_call.return_data[32]))
                                            ('iszero', ('div', 0, ('mask_shl', 112, 0, 0, ('ext_call.return_data', 32, 32))))
                                    else:
                                        if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 10^18:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[_13025 + _8957 + floor32(_4312) + _26 + (6 * ceil32(return_data.size)) + 357 len 31]
                                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if Mask(112, 0, ext_call.return_data[32]):
                                            if not 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                                                if 0 / Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 0 / Mask(112, 0, ext_call.return_data[32]):
                                                    return (0 / 0 / Mask(112, 0, ext_call.return_data[32]))
                                            else:
                                                if 10^18 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) / 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) != 10^18:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[_13025 + _8957 + floor32(_4312) + _26 + (6 * ceil32(return_data.size)) + 357 len 31]
                                                if 0 / Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 0 / Mask(112, 0, ext_call.return_data[32]):
                                                    return (10^18 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) / 0 / Mask(112, 0, ext_call.return_data[32]))
                                            ('iszero', ('div', 0, ('mask_shl', 112, 0, 0, ('ext_call.return_data', 32, 32))))
                            else:
                                mem[floor32(_13025) + _8957 + floor32(_4312) + _26 + (6 * ceil32(return_data.size)) + 256] = mem[floor32(_13025) + _8957 + floor32(_4312) + _26 + (6 * ceil32(return_data.size)) + -(_13025 % 32) + 288 len _13025 % 32]
                                if sha3(mem[floor32(_4312) + _26 + (4 * ceil32(return_data.size)) + 224 len mem[floor32(_4312) + _26 + (4 * ceil32(return_data.size)) + 192]]) == sha3(mem[_8957 + floor32(_4312) + _26 + (6 * ceil32(return_data.size)) + 256 len mem[_8957 + floor32(_4312) + _26 + (6 * ceil32(return_data.size)) + 224]]):
                                    if not Mask(112, 0, ext_call.return_data[32]):
                                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if Mask(112, 0, ext_call.return_data[0]):
                                            if not 0 / Mask(112, 0, ext_call.return_data[0]):
                                                if 0 / Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 0 / Mask(112, 0, ext_call.return_data[32]):
                                                    return (0 / 0 / Mask(112, 0, ext_call.return_data[32]))
                                            else:
                                                if 10^18 * 0 / Mask(112, 0, ext_call.return_data[0]) / 0 / Mask(112, 0, ext_call.return_data[0]) != 10^18:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[floor32(_13025) + _8957 + floor32(_4312) + _26 + (6 * ceil32(return_data.size)) + 389 len 31]
                                                if 0 / Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 0 / Mask(112, 0, ext_call.return_data[32]):
                                                    return (10^18 * 0 / Mask(112, 0, ext_call.return_data[0]) / 0 / Mask(112, 0, ext_call.return_data[32]))
                                            ('iszero', ('div', 0, ('mask_shl', 112, 0, 0, ('ext_call.return_data', 32, 32))))
                                    else:
                                        if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 10^18:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[floor32(_13025) + _8957 + floor32(_4312) + _26 + (6 * ceil32(return_data.size)) + 389 len 31]
                                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if Mask(112, 0, ext_call.return_data[0]):
                                            if not 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                                                if 0 / Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 0 / Mask(112, 0, ext_call.return_data[32]):
                                                    return (0 / 0 / Mask(112, 0, ext_call.return_data[32]))
                                            else:
                                                if 10^18 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) != 10^18:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[floor32(_13025) + _8957 + floor32(_4312) + _26 + (6 * ceil32(return_data.size)) + 389 len 31]
                                                if 0 / Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 0 / Mask(112, 0, ext_call.return_data[32]):
                                                    return (10^18 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 0 / Mask(112, 0, ext_call.return_data[32]))
                                            ('iszero', ('div', 0, ('mask_shl', 112, 0, 0, ('ext_call.return_data', 32, 32))))
                                else:
                                    if not Mask(112, 0, ext_call.return_data[0]):
                                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if Mask(112, 0, ext_call.return_data[32]):
                                            if not 0 / Mask(112, 0, ext_call.return_data[32]):
                                                if 0 / Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 0 / Mask(112, 0, ext_call.return_data[32]):
                                                    return (0 / 0 / Mask(112, 0, ext_call.return_data[32]))
                                            else:
                                                if 10^18 * 0 / Mask(112, 0, ext_call.return_data[32]) / 0 / Mask(112, 0, ext_call.return_data[32]) != 10^18:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[floor32(_13025) + _8957 + floor32(_4312) + _26 + (6 * ceil32(return_data.size)) + 389 len 31]
                                                if 0 / Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 0 / Mask(112, 0, ext_call.return_data[32]):
                                                    return (10^18 * 0 / Mask(112, 0, ext_call.return_data[32]) / 0 / Mask(112, 0, ext_call.return_data[32]))
                                            ('iszero', ('div', 0, ('mask_shl', 112, 0, 0, ('ext_call.return_data', 32, 32))))
                                    else:
                                        if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 10^18:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[floor32(_13025) + _8957 + floor32(_4312) + _26 + (6 * ceil32(return_data.size)) + 389 len 31]
                                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if Mask(112, 0, ext_call.return_data[32]):
                                            if not 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                                                if 0 / Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 0 / Mask(112, 0, ext_call.return_data[32]):
                                                    return (0 / 0 / Mask(112, 0, ext_call.return_data[32]))
                                            else:
                                                if 10^18 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) / 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) != 10^18:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[floor32(_13025) + _8957 + floor32(_4312) + _26 + (6 * ceil32(return_data.size)) + 389 len 31]
                                                if 0 / Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 0 / Mask(112, 0, ext_call.return_data[32]):
                                                    return (10^18 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) / 0 / Mask(112, 0, ext_call.return_data[32]))
                                            ('iszero', ('div', 0, ('mask_shl', 112, 0, 0, ('ext_call.return_data', 32, 32))))
                        else:
                            mem[floor32(_8957) + floor32(_4312) + _26 + (4 * ceil32(return_data.size)) + 224] = mem[floor32(_8957) + floor32(_4312) + _26 + (4 * ceil32(return_data.size)) + -(_8957 % 32) + 256 len _8957 % 32]
                            mem[floor32(_8957) + floor32(_4312) + _26 + (4 * ceil32(return_data.size)) + 256] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                            require ext_code.size(wNativeAddress)
                            staticcall wNativeAddress.symbol() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[floor32(_8957) + floor32(_4312) + _26 + (4 * ceil32(return_data.size)) + 256 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = floor32(_8957) + floor32(_4312) + _26 + (6 * ceil32(return_data.size)) + 256
                            require return_data.size >= 32
                            _12977 = mem[floor32(_8957) + floor32(_4312) + _26 + (4 * ceil32(return_data.size)) + 256]
                            require mem[floor32(_8957) + floor32(_4312) + _26 + (4 * ceil32(return_data.size)) + 256] <= 4294967296
                            require mem[floor32(_8957) + floor32(_4312) + _26 + (4 * ceil32(return_data.size)) + 256] + 32 <= return_data.size
                            require return_data.size >= mem[floor32(_8957) + floor32(_4312) + _26 + (4 * ceil32(return_data.size)) + mem[floor32(_8957) + floor32(_4312) + _26 + (4 * ceil32(return_data.size)) + 256] + 256] + mem[floor32(_8957) + floor32(_4312) + _26 + (4 * ceil32(return_data.size)) + 256] + 32 and mem[floor32(_8957) + floor32(_4312) + _26 + (4 * ceil32(return_data.size)) + mem[floor32(_8957) + floor32(_4312) + _26 + (4 * ceil32(return_data.size)) + 256] + 256] <= 4294967296
                            mem[floor32(_8957) + floor32(_4312) + _26 + (6 * ceil32(return_data.size)) + 256] = mem[floor32(_8957) + floor32(_4312) + _26 + (4 * ceil32(return_data.size)) + mem[floor32(_8957) + floor32(_4312) + _26 + (4 * ceil32(return_data.size)) + 256] + 256]
                            _13050 = mem[floor32(_8957) + floor32(_4312) + _26 + (4 * ceil32(return_data.size)) + _12977 + 256]
                            mem[floor32(_8957) + floor32(_4312) + _26 + (6 * ceil32(return_data.size)) + 288 len ceil32(mem[floor32(_8957) + floor32(_4312) + _26 + (4 * ceil32(return_data.size)) + _12977 + 256])] = mem[floor32(_8957) + floor32(_4312) + _26 + (4 * ceil32(return_data.size)) + _12977 + 288 len ceil32(mem[floor32(_8957) + floor32(_4312) + _26 + (4 * ceil32(return_data.size)) + _12977 + 256])]
                            if not _13050 % 32:
                                if sha3(mem[floor32(_4312) + _26 + (4 * ceil32(return_data.size)) + 224 len mem[floor32(_4312) + _26 + (4 * ceil32(return_data.size)) + 192]]) == sha3(mem[floor32(_8957) + floor32(_4312) + _26 + (6 * ceil32(return_data.size)) + 288 len mem[floor32(_8957) + floor32(_4312) + _26 + (6 * ceil32(return_data.size)) + 256]]):
                                    if not Mask(112, 0, ext_call.return_data[32]):
                                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if Mask(112, 0, ext_call.return_data[0]):
                                            if not 0 / Mask(112, 0, ext_call.return_data[0]):
                                                if 0 / Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 0 / Mask(112, 0, ext_call.return_data[32]):
                                                    return (0 / 0 / Mask(112, 0, ext_call.return_data[32]))
                                            else:
                                                if 10^18 * 0 / Mask(112, 0, ext_call.return_data[0]) / 0 / Mask(112, 0, ext_call.return_data[0]) != 10^18:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[_13050 + floor32(_8957) + floor32(_4312) + _26 + (6 * ceil32(return_data.size)) + 389 len 31]
                                                if 0 / Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 0 / Mask(112, 0, ext_call.return_data[32]):
                                                    return (10^18 * 0 / Mask(112, 0, ext_call.return_data[0]) / 0 / Mask(112, 0, ext_call.return_data[32]))
                                            ('iszero', ('div', 0, ('mask_shl', 112, 0, 0, ('ext_call.return_data', 32, 32))))
                                    else:
                                        if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 10^18:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[_13050 + floor32(_8957) + floor32(_4312) + _26 + (6 * ceil32(return_data.size)) + 389 len 31]
                                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if Mask(112, 0, ext_call.return_data[0]):
                                            if not 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                                                if 0 / Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 0 / Mask(112, 0, ext_call.return_data[32]):
                                                    return (0 / 0 / Mask(112, 0, ext_call.return_data[32]))
                                            else:
                                                if 10^18 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) != 10^18:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[_13050 + floor32(_8957) + floor32(_4312) + _26 + (6 * ceil32(return_data.size)) + 389 len 31]
                                                if 0 / Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 0 / Mask(112, 0, ext_call.return_data[32]):
                                                    return (10^18 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 0 / Mask(112, 0, ext_call.return_data[32]))
                                            ('iszero', ('div', 0, ('mask_shl', 112, 0, 0, ('ext_call.return_data', 32, 32))))
                                else:
                                    if not Mask(112, 0, ext_call.return_data[0]):
                                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if Mask(112, 0, ext_call.return_data[32]):
                                            if not 0 / Mask(112, 0, ext_call.return_data[32]):
                                                if 0 / Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 0 / Mask(112, 0, ext_call.return_data[32]):
                                                    return (0 / 0 / Mask(112, 0, ext_call.return_data[32]))
                                            else:
                                                if 10^18 * 0 / Mask(112, 0, ext_call.return_data[32]) / 0 / Mask(112, 0, ext_call.return_data[32]) != 10^18:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[_13050 + floor32(_8957) + floor32(_4312) + _26 + (6 * ceil32(return_data.size)) + 389 len 31]
                                                if 0 / Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 0 / Mask(112, 0, ext_call.return_data[32]):
                                                    return (10^18 * 0 / Mask(112, 0, ext_call.return_data[32]) / 0 / Mask(112, 0, ext_call.return_data[32]))
                                            ('iszero', ('div', 0, ('mask_shl', 112, 0, 0, ('ext_call.return_data', 32, 32))))
                                    else:
                                        if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 10^18:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[_13050 + floor32(_8957) + floor32(_4312) + _26 + (6 * ceil32(return_data.size)) + 389 len 31]
                                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if Mask(112, 0, ext_call.return_data[32]):
                                            if not 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                                                if 0 / Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 0 / Mask(112, 0, ext_call.return_data[32]):
                                                    return (0 / 0 / Mask(112, 0, ext_call.return_data[32]))
                                            else:
                                                if 10^18 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) / 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) != 10^18:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[_13050 + floor32(_8957) + floor32(_4312) + _26 + (6 * ceil32(return_data.size)) + 389 len 31]
                                                if 0 / Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 0 / Mask(112, 0, ext_call.return_data[32]):
                                                    return (10^18 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) / 0 / Mask(112, 0, ext_call.return_data[32]))
                                            ('iszero', ('div', 0, ('mask_shl', 112, 0, 0, ('ext_call.return_data', 32, 32))))
                            else:
                                mem[floor32(_13050) + floor32(_8957) + floor32(_4312) + _26 + (6 * ceil32(return_data.size)) + 288] = mem[floor32(_13050) + floor32(_8957) + floor32(_4312) + _26 + (6 * ceil32(return_data.size)) + -(_13050 % 32) + 320 len _13050 % 32]
                                if sha3(mem[floor32(_4312) + _26 + (4 * ceil32(return_data.size)) + 224 len mem[floor32(_4312) + _26 + (4 * ceil32(return_data.size)) + 192]]) == sha3(mem[floor32(_8957) + floor32(_4312) + _26 + (6 * ceil32(return_data.size)) + 288 len mem[floor32(_8957) + floor32(_4312) + _26 + (6 * ceil32(return_data.size)) + 256]]):
                                    if not Mask(112, 0, ext_call.return_data[32]):
                                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if Mask(112, 0, ext_call.return_data[0]):
                                            if not 0 / Mask(112, 0, ext_call.return_data[0]):
                                                if 0 / Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 0 / Mask(112, 0, ext_call.return_data[32]):
                                                    return (0 / 0 / Mask(112, 0, ext_call.return_data[32]))
                                            else:
                                                if 10^18 * 0 / Mask(112, 0, ext_call.return_data[0]) / 0 / Mask(112, 0, ext_call.return_data[0]) != 10^18:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[floor32(_13050) + floor32(_8957) + floor32(_4312) + _26 + (6 * ceil32(return_data.size)) + 421 len 31]
                                                if 0 / Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 0 / Mask(112, 0, ext_call.return_data[32]):
                                                    return (10^18 * 0 / Mask(112, 0, ext_call.return_data[0]) / 0 / Mask(112, 0, ext_call.return_data[32]))
                                            ('iszero', ('div', 0, ('mask_shl', 112, 0, 0, ('ext_call.return_data', 32, 32))))
                                    else:
                                        if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 10^18:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[floor32(_13050) + floor32(_8957) + floor32(_4312) + _26 + (6 * ceil32(return_data.size)) + 421 len 31]
                                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if Mask(112, 0, ext_call.return_data[0]):
                                            if not 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                                                if 0 / Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 0 / Mask(112, 0, ext_call.return_data[32]):
                                                    return (0 / 0 / Mask(112, 0, ext_call.return_data[32]))
                                            else:
                                                if 10^18 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) != 10^18:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[floor32(_13050) + floor32(_8957) + floor32(_4312) + _26 + (6 * ceil32(return_data.size)) + 421 len 31]
                                                if 0 / Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 0 / Mask(112, 0, ext_call.return_data[32]):
                                                    return (10^18 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 0 / Mask(112, 0, ext_call.return_data[32]))
                                            ('iszero', ('div', 0, ('mask_shl', 112, 0, 0, ('ext_call.return_data', 32, 32))))
                                else:
                                    if not Mask(112, 0, ext_call.return_data[0]):
                                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if Mask(112, 0, ext_call.return_data[32]):
                                            if not 0 / Mask(112, 0, ext_call.return_data[32]):
                                                if 0 / Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 0 / Mask(112, 0, ext_call.return_data[32]):
                                                    return (0 / 0 / Mask(112, 0, ext_call.return_data[32]))
                                            else:
                                                if 10^18 * 0 / Mask(112, 0, ext_call.return_data[32]) / 0 / Mask(112, 0, ext_call.return_data[32]) != 10^18:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[floor32(_13050) + floor32(_8957) + floor32(_4312) + _26 + (6 * ceil32(return_data.size)) + 421 len 31]
                                                if 0 / Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 0 / Mask(112, 0, ext_call.return_data[32]):
                                                    return (10^18 * 0 / Mask(112, 0, ext_call.return_data[32]) / 0 / Mask(112, 0, ext_call.return_data[32]))
                                            ('iszero', ('div', 0, ('mask_shl', 112, 0, 0, ('ext_call.return_data', 32, 32))))
                                    else:
                                        if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 10^18:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[floor32(_13050) + floor32(_8957) + floor32(_4312) + _26 + (6 * ceil32(return_data.size)) + 421 len 31]
                                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if Mask(112, 0, ext_call.return_data[32]):
                                            if not 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                                                if 0 / Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 0 / Mask(112, 0, ext_call.return_data[32]):
                                                    return (0 / 0 / Mask(112, 0, ext_call.return_data[32]))
                                            else:
                                                if 10^18 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) / 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) != 10^18:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[floor32(_13050) + floor32(_8957) + floor32(_4312) + _26 + (6 * ceil32(return_data.size)) + 421 len 31]
                                                if 0 / Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 0 / Mask(112, 0, ext_call.return_data[32]):
                                                    return (10^18 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) / 0 / Mask(112, 0, ext_call.return_data[32]))
                                            ('iszero', ('div', 0, ('mask_shl', 112, 0, 0, ('ext_call.return_data', 32, 32))))
                else:
                    if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 10^18:
                        revert with 0, 
                                    32,
                                    33,
                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[floor32(_4312) + _26 + (2 * ceil32(return_data.size)) + 293 len 31]
                    if Mask(112, 0, ext_call.return_data[32]) <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    if Mask(112, 0, ext_call.return_data[32]):
                        require ext_code.size(sub_d4384dbeAddress)
                        staticcall sub_d4384dbeAddress.getPair(address arg1, address arg2) with:
                                gas gas_remaining wei
                               args wNativeAddress, usdcTokenAddress
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).getReserves() with:
                                gas gas_remaining wei
                        mem[floor32(_4312) + _26 + (2 * ceil32(return_data.size)) + 192 len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[floor32(_4312) + _26 + (2 * ceil32(return_data.size)) + 192] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).symbol() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[floor32(_4312) + _26 + (2 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = floor32(_4312) + _26 + (4 * ceil32(return_data.size)) + 192
                        require return_data.size >= 32
                        _8933 = mem[floor32(_4312) + _26 + (2 * ceil32(return_data.size)) + 192]
                        require mem[floor32(_4312) + _26 + (2 * ceil32(return_data.size)) + 192] <= 4294967296
                        require mem[floor32(_4312) + _26 + (2 * ceil32(return_data.size)) + 192] + 32 <= return_data.size
                        require return_data.size >= mem[floor32(_4312) + _26 + (2 * ceil32(return_data.size)) + mem[floor32(_4312) + _26 + (2 * ceil32(return_data.size)) + 192] + 192] + mem[floor32(_4312) + _26 + (2 * ceil32(return_data.size)) + 192] + 32 and mem[floor32(_4312) + _26 + (2 * ceil32(return_data.size)) + mem[floor32(_4312) + _26 + (2 * ceil32(return_data.size)) + 192] + 192] <= 4294967296
                        mem[floor32(_4312) + _26 + (4 * ceil32(return_data.size)) + 192] = mem[floor32(_4312) + _26 + (2 * ceil32(return_data.size)) + mem[floor32(_4312) + _26 + (2 * ceil32(return_data.size)) + 192] + 192]
                        _8968 = mem[floor32(_4312) + _26 + (2 * ceil32(return_data.size)) + _8933 + 192]
                        mem[floor32(_4312) + _26 + (4 * ceil32(return_data.size)) + 224 len ceil32(mem[floor32(_4312) + _26 + (2 * ceil32(return_data.size)) + _8933 + 192])] = mem[floor32(_4312) + _26 + (2 * ceil32(return_data.size)) + _8933 + 224 len ceil32(mem[floor32(_4312) + _26 + (2 * ceil32(return_data.size)) + _8933 + 192])]
                        if not _8968 % 32:
                            mem[_8968 + floor32(_4312) + _26 + (4 * ceil32(return_data.size)) + 224] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                            require ext_code.size(wNativeAddress)
                            staticcall wNativeAddress.symbol() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[_8968 + floor32(_4312) + _26 + (4 * ceil32(return_data.size)) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = _8968 + floor32(_4312) + _26 + (6 * ceil32(return_data.size)) + 224
                            require return_data.size >= 32
                            _12933 = mem[_8968 + floor32(_4312) + _26 + (4 * ceil32(return_data.size)) + 224]
                            require mem[_8968 + floor32(_4312) + _26 + (4 * ceil32(return_data.size)) + 224] <= 4294967296
                            require mem[_8968 + floor32(_4312) + _26 + (4 * ceil32(return_data.size)) + 224] + 32 <= return_data.size
                            require return_data.size >= mem[_8968 + floor32(_4312) + _26 + (4 * ceil32(return_data.size)) + mem[_8968 + floor32(_4312) + _26 + (4 * ceil32(return_data.size)) + 224] + 224] + mem[_8968 + floor32(_4312) + _26 + (4 * ceil32(return_data.size)) + 224] + 32 and mem[_8968 + floor32(_4312) + _26 + (4 * ceil32(return_data.size)) + mem[_8968 + floor32(_4312) + _26 + (4 * ceil32(return_data.size)) + 224] + 224] <= 4294967296
                            mem[_8968 + floor32(_4312) + _26 + (6 * ceil32(return_data.size)) + 224] = mem[_8968 + floor32(_4312) + _26 + (4 * ceil32(return_data.size)) + mem[_8968 + floor32(_4312) + _26 + (4 * ceil32(return_data.size)) + 224] + 224]
                            _13023 = mem[_8968 + floor32(_4312) + _26 + (4 * ceil32(return_data.size)) + _12933 + 224]
                            mem[_8968 + floor32(_4312) + _26 + (6 * ceil32(return_data.size)) + 256 len ceil32(mem[_8968 + floor32(_4312) + _26 + (4 * ceil32(return_data.size)) + _12933 + 224])] = mem[_8968 + floor32(_4312) + _26 + (4 * ceil32(return_data.size)) + _12933 + 256 len ceil32(mem[_8968 + floor32(_4312) + _26 + (4 * ceil32(return_data.size)) + _12933 + 224])]
                            if not _13023 % 32:
                                if sha3(mem[floor32(_4312) + _26 + (4 * ceil32(return_data.size)) + 224 len mem[floor32(_4312) + _26 + (4 * ceil32(return_data.size)) + 192]]) == sha3(mem[_8968 + floor32(_4312) + _26 + (6 * ceil32(return_data.size)) + 256 len mem[_8968 + floor32(_4312) + _26 + (6 * ceil32(return_data.size)) + 224]]):
                                    if not Mask(112, 0, ext_call.return_data[32]):
                                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if Mask(112, 0, ext_call.return_data[0]):
                                            if not 0 / Mask(112, 0, ext_call.return_data[0]):
                                                if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                                                    return (0 / 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]))
                                            else:
                                                if 10^18 * 0 / Mask(112, 0, ext_call.return_data[0]) / 0 / Mask(112, 0, ext_call.return_data[0]) != 10^18:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[_13023 + _8968 + floor32(_4312) + _26 + (6 * ceil32(return_data.size)) + 357 len 31]
                                                if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                                                    return (10^18 * 0 / Mask(112, 0, ext_call.return_data[0]) / 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]))
                                            ('iszero', ('div', ('mul', 1000000000000000000, ('mask_shl', 112, 0, 0, ('ext_call.return_data', 0, 32))), ('mask_shl', 112, 0, 0, ('ext_call.return_data', 32, 32))))
                                    else:
                                        if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 10^18:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[_13023 + _8968 + floor32(_4312) + _26 + (6 * ceil32(return_data.size)) + 357 len 31]
                                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if Mask(112, 0, ext_call.return_data[0]):
                                            if not 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                                                if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                                                    return (0 / 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]))
                                            else:
                                                if 10^18 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) != 10^18:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[_13023 + _8968 + floor32(_4312) + _26 + (6 * ceil32(return_data.size)) + 357 len 31]
                                                if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                                                    return (10^18 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]))
                                            ('iszero', ('div', ('mul', 1000000000000000000, ('mask_shl', 112, 0, 0, ('ext_call.return_data', 0, 32))), ('mask_shl', 112, 0, 0, ('ext_call.return_data', 32, 32))))
                                else:
                                    if not Mask(112, 0, ext_call.return_data[0]):
                                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if Mask(112, 0, ext_call.return_data[32]):
                                            if not 0 / Mask(112, 0, ext_call.return_data[32]):
                                                if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                                                    return (0 / 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]))
                                            else:
                                                if 10^18 * 0 / Mask(112, 0, ext_call.return_data[32]) / 0 / Mask(112, 0, ext_call.return_data[32]) != 10^18:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[_13023 + _8968 + floor32(_4312) + _26 + (6 * ceil32(return_data.size)) + 357 len 31]
                                                if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                                                    return (10^18 * 0 / Mask(112, 0, ext_call.return_data[32]) / 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]))
                                            ('iszero', ('div', ('mul', 1000000000000000000, ('mask_shl', 112, 0, 0, ('ext_call.return_data', 0, 32))), ('mask_shl', 112, 0, 0, ('ext_call.return_data', 32, 32))))
                                    else:
                                        if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 10^18:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[_13023 + _8968 + floor32(_4312) + _26 + (6 * ceil32(return_data.size)) + 357 len 31]
                                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if Mask(112, 0, ext_call.return_data[32]):
                                            if not 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                                                if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                                                    return (0 / 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]))
                                            else:
                                                if 10^18 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) / 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) != 10^18:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[_13023 + _8968 + floor32(_4312) + _26 + (6 * ceil32(return_data.size)) + 357 len 31]
                                                if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                                                    return (10^18 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) / 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]))
                                            ('iszero', ('div', ('mul', 1000000000000000000, ('mask_shl', 112, 0, 0, ('ext_call.return_data', 0, 32))), ('mask_shl', 112, 0, 0, ('ext_call.return_data', 32, 32))))
                            else:
                                mem[floor32(_13023) + _8968 + floor32(_4312) + _26 + (6 * ceil32(return_data.size)) + 256] = mem[floor32(_13023) + _8968 + floor32(_4312) + _26 + (6 * ceil32(return_data.size)) + -(_13023 % 32) + 288 len _13023 % 32]
                                if sha3(mem[floor32(_4312) + _26 + (4 * ceil32(return_data.size)) + 224 len mem[floor32(_4312) + _26 + (4 * ceil32(return_data.size)) + 192]]) == sha3(mem[_8968 + floor32(_4312) + _26 + (6 * ceil32(return_data.size)) + 256 len mem[_8968 + floor32(_4312) + _26 + (6 * ceil32(return_data.size)) + 224]]):
                                    if not Mask(112, 0, ext_call.return_data[32]):
                                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if Mask(112, 0, ext_call.return_data[0]):
                                            if not 0 / Mask(112, 0, ext_call.return_data[0]):
                                                if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                                                    return (0 / 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]))
                                            else:
                                                if 10^18 * 0 / Mask(112, 0, ext_call.return_data[0]) / 0 / Mask(112, 0, ext_call.return_data[0]) != 10^18:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[floor32(_13023) + _8968 + floor32(_4312) + _26 + (6 * ceil32(return_data.size)) + 389 len 31]
                                                if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                                                    return (10^18 * 0 / Mask(112, 0, ext_call.return_data[0]) / 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]))
                                            ('iszero', ('div', ('mul', 1000000000000000000, ('mask_shl', 112, 0, 0, ('ext_call.return_data', 0, 32))), ('mask_shl', 112, 0, 0, ('ext_call.return_data', 32, 32))))
                                    else:
                                        if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 10^18:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[floor32(_13023) + _8968 + floor32(_4312) + _26 + (6 * ceil32(return_data.size)) + 389 len 31]
                                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if Mask(112, 0, ext_call.return_data[0]):
                                            if not 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                                                if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                                                    return (0 / 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]))
                                            else:
                                                if 10^18 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) != 10^18:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[floor32(_13023) + _8968 + floor32(_4312) + _26 + (6 * ceil32(return_data.size)) + 389 len 31]
                                                if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                                                    return (10^18 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]))
                                            ('iszero', ('div', ('mul', 1000000000000000000, ('mask_shl', 112, 0, 0, ('ext_call.return_data', 0, 32))), ('mask_shl', 112, 0, 0, ('ext_call.return_data', 32, 32))))
                                else:
                                    if not Mask(112, 0, ext_call.return_data[0]):
                                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if Mask(112, 0, ext_call.return_data[32]):
                                            if not 0 / Mask(112, 0, ext_call.return_data[32]):
                                                if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                                                    return (0 / 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]))
                                            else:
                                                if 10^18 * 0 / Mask(112, 0, ext_call.return_data[32]) / 0 / Mask(112, 0, ext_call.return_data[32]) != 10^18:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[floor32(_13023) + _8968 + floor32(_4312) + _26 + (6 * ceil32(return_data.size)) + 389 len 31]
                                                if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                                                    return (10^18 * 0 / Mask(112, 0, ext_call.return_data[32]) / 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]))
                                            ('iszero', ('div', ('mul', 1000000000000000000, ('mask_shl', 112, 0, 0, ('ext_call.return_data', 0, 32))), ('mask_shl', 112, 0, 0, ('ext_call.return_data', 32, 32))))
                                    else:
                                        if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 10^18:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[floor32(_13023) + _8968 + floor32(_4312) + _26 + (6 * ceil32(return_data.size)) + 389 len 31]
                                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if Mask(112, 0, ext_call.return_data[32]):
                                            if not 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                                                if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                                                    return (0 / 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]))
                                            else:
                                                if 10^18 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) / 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) != 10^18:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[floor32(_13023) + _8968 + floor32(_4312) + _26 + (6 * ceil32(return_data.size)) + 389 len 31]
                                                if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                                                    return (10^18 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) / 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]))
                                            ('iszero', ('div', ('mul', 1000000000000000000, ('mask_shl', 112, 0, 0, ('ext_call.return_data', 0, 32))), ('mask_shl', 112, 0, 0, ('ext_call.return_data', 32, 32))))
                        else:
                            mem[floor32(_8968) + floor32(_4312) + _26 + (4 * ceil32(return_data.size)) + 224] = mem[floor32(_8968) + floor32(_4312) + _26 + (4 * ceil32(return_data.size)) + -(_8968 % 32) + 256 len _8968 % 32]
                            mem[floor32(_8968) + floor32(_4312) + _26 + (4 * ceil32(return_data.size)) + 256] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                            require ext_code.size(wNativeAddress)
                            staticcall wNativeAddress.symbol() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[floor32(_8968) + floor32(_4312) + _26 + (4 * ceil32(return_data.size)) + 256 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = floor32(_8968) + floor32(_4312) + _26 + (6 * ceil32(return_data.size)) + 256
                            require return_data.size >= 32
                            _12975 = mem[floor32(_8968) + floor32(_4312) + _26 + (4 * ceil32(return_data.size)) + 256]
                            require mem[floor32(_8968) + floor32(_4312) + _26 + (4 * ceil32(return_data.size)) + 256] <= 4294967296
                            require mem[floor32(_8968) + floor32(_4312) + _26 + (4 * ceil32(return_data.size)) + 256] + 32 <= return_data.size
                            require return_data.size >= mem[floor32(_8968) + floor32(_4312) + _26 + (4 * ceil32(return_data.size)) + mem[floor32(_8968) + floor32(_4312) + _26 + (4 * ceil32(return_data.size)) + 256] + 256] + mem[floor32(_8968) + floor32(_4312) + _26 + (4 * ceil32(return_data.size)) + 256] + 32 and mem[floor32(_8968) + floor32(_4312) + _26 + (4 * ceil32(return_data.size)) + mem[floor32(_8968) + floor32(_4312) + _26 + (4 * ceil32(return_data.size)) + 256] + 256] <= 4294967296
                            mem[floor32(_8968) + floor32(_4312) + _26 + (6 * ceil32(return_data.size)) + 256] = mem[floor32(_8968) + floor32(_4312) + _26 + (4 * ceil32(return_data.size)) + mem[floor32(_8968) + floor32(_4312) + _26 + (4 * ceil32(return_data.size)) + 256] + 256]
                            _13049 = mem[floor32(_8968) + floor32(_4312) + _26 + (4 * ceil32(return_data.size)) + _12975 + 256]
                            mem[floor32(_8968) + floor32(_4312) + _26 + (6 * ceil32(return_data.size)) + 288 len ceil32(mem[floor32(_8968) + floor32(_4312) + _26 + (4 * ceil32(return_data.size)) + _12975 + 256])] = mem[floor32(_8968) + floor32(_4312) + _26 + (4 * ceil32(return_data.size)) + _12975 + 288 len ceil32(mem[floor32(_8968) + floor32(_4312) + _26 + (4 * ceil32(return_data.size)) + _12975 + 256])]
                            if not _13049 % 32:
                                if sha3(mem[floor32(_4312) + _26 + (4 * ceil32(return_data.size)) + 224 len mem[floor32(_4312) + _26 + (4 * ceil32(return_data.size)) + 192]]) == sha3(mem[floor32(_8968) + floor32(_4312) + _26 + (6 * ceil32(return_data.size)) + 288 len mem[floor32(_8968) + floor32(_4312) + _26 + (6 * ceil32(return_data.size)) + 256]]):
                                    if not Mask(112, 0, ext_call.return_data[32]):
                                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if Mask(112, 0, ext_call.return_data[0]):
                                            if not 0 / Mask(112, 0, ext_call.return_data[0]):
                                                if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                                                    return (0 / 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]))
                                            else:
                                                if 10^18 * 0 / Mask(112, 0, ext_call.return_data[0]) / 0 / Mask(112, 0, ext_call.return_data[0]) != 10^18:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[_13049 + floor32(_8968) + floor32(_4312) + _26 + (6 * ceil32(return_data.size)) + 389 len 31]
                                                if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                                                    return (10^18 * 0 / Mask(112, 0, ext_call.return_data[0]) / 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]))
                                            ('iszero', ('div', ('mul', 1000000000000000000, ('mask_shl', 112, 0, 0, ('ext_call.return_data', 0, 32))), ('mask_shl', 112, 0, 0, ('ext_call.return_data', 32, 32))))
                                    else:
                                        if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 10^18:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[_13049 + floor32(_8968) + floor32(_4312) + _26 + (6 * ceil32(return_data.size)) + 389 len 31]
                                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if Mask(112, 0, ext_call.return_data[0]):
                                            if not 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                                                if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                                                    return (0 / 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]))
                                            else:
                                                if 10^18 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) != 10^18:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[_13049 + floor32(_8968) + floor32(_4312) + _26 + (6 * ceil32(return_data.size)) + 389 len 31]
                                                if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                                                    return (10^18 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]))
                                            ('iszero', ('div', ('mul', 1000000000000000000, ('mask_shl', 112, 0, 0, ('ext_call.return_data', 0, 32))), ('mask_shl', 112, 0, 0, ('ext_call.return_data', 32, 32))))
                                else:
                                    if not Mask(112, 0, ext_call.return_data[0]):
                                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if Mask(112, 0, ext_call.return_data[32]):
                                            if not 0 / Mask(112, 0, ext_call.return_data[32]):
                                                if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                                                    return (0 / 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]))
                                            else:
                                                if 10^18 * 0 / Mask(112, 0, ext_call.return_data[32]) / 0 / Mask(112, 0, ext_call.return_data[32]) != 10^18:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[_13049 + floor32(_8968) + floor32(_4312) + _26 + (6 * ceil32(return_data.size)) + 389 len 31]
                                                if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                                                    return (10^18 * 0 / Mask(112, 0, ext_call.return_data[32]) / 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]))
                                            ('iszero', ('div', ('mul', 1000000000000000000, ('mask_shl', 112, 0, 0, ('ext_call.return_data', 0, 32))), ('mask_shl', 112, 0, 0, ('ext_call.return_data', 32, 32))))
                                    else:
                                        if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 10^18:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[_13049 + floor32(_8968) + floor32(_4312) + _26 + (6 * ceil32(return_data.size)) + 389 len 31]
                                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if Mask(112, 0, ext_call.return_data[32]):
                                            if not 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                                                if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                                                    return (0 / 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]))
                                            else:
                                                if 10^18 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) / 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) != 10^18:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[_13049 + floor32(_8968) + floor32(_4312) + _26 + (6 * ceil32(return_data.size)) + 389 len 31]
                                                if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                                                    return (10^18 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) / 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]))
                                            ('iszero', ('div', ('mul', 1000000000000000000, ('mask_shl', 112, 0, 0, ('ext_call.return_data', 0, 32))), ('mask_shl', 112, 0, 0, ('ext_call.return_data', 32, 32))))
                            else:
                                mem[floor32(_13049) + floor32(_8968) + floor32(_4312) + _26 + (6 * ceil32(return_data.size)) + 288] = mem[floor32(_13049) + floor32(_8968) + floor32(_4312) + _26 + (6 * ceil32(return_data.size)) + -(_13049 % 32) + 320 len _13049 % 32]
                                if sha3(mem[floor32(_4312) + _26 + (4 * ceil32(return_data.size)) + 224 len mem[floor32(_4312) + _26 + (4 * ceil32(return_data.size)) + 192]]) == sha3(mem[floor32(_8968) + floor32(_4312) + _26 + (6 * ceil32(return_data.size)) + 288 len mem[floor32(_8968) + floor32(_4312) + _26 + (6 * ceil32(return_data.size)) + 256]]):
                                    if not Mask(112, 0, ext_call.return_data[32]):
                                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if Mask(112, 0, ext_call.return_data[0]):
                                            if not 0 / Mask(112, 0, ext_call.return_data[0]):
                                                if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                                                    return (0 / 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]))
                                            else:
                                                if 10^18 * 0 / Mask(112, 0, ext_call.return_data[0]) / 0 / Mask(112, 0, ext_call.return_data[0]) != 10^18:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[floor32(_13049) + floor32(_8968) + floor32(_4312) + _26 + (6 * ceil32(return_data.size)) + 421 len 31]
                                                if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                                                    return (10^18 * 0 / Mask(112, 0, ext_call.return_data[0]) / 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]))
                                            ('iszero', ('div', ('mul', 1000000000000000000, ('mask_shl', 112, 0, 0, ('ext_call.return_data', 0, 32))), ('mask_shl', 112, 0, 0, ('ext_call.return_data', 32, 32))))
                                    else:
                                        if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 10^18:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[floor32(_13049) + floor32(_8968) + floor32(_4312) + _26 + (6 * ceil32(return_data.size)) + 421 len 31]
                                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if Mask(112, 0, ext_call.return_data[0]):
                                            if not 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                                                if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                                                    return (0 / 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]))
                                            else:
                                                if 10^18 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) != 10^18:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[floor32(_13049) + floor32(_8968) + floor32(_4312) + _26 + (6 * ceil32(return_data.size)) + 421 len 31]
                                                if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                                                    return (10^18 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]))
                                            ('iszero', ('div', ('mul', 1000000000000000000, ('mask_shl', 112, 0, 0, ('ext_call.return_data', 0, 32))), ('mask_shl', 112, 0, 0, ('ext_call.return_data', 32, 32))))
                                else:
                                    if not Mask(112, 0, ext_call.return_data[0]):
                                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if Mask(112, 0, ext_call.return_data[32]):
                                            if not 0 / Mask(112, 0, ext_call.return_data[32]):
                                                if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                                                    return (0 / 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]))
                                            else:
                                                if 10^18 * 0 / Mask(112, 0, ext_call.return_data[32]) / 0 / Mask(112, 0, ext_call.return_data[32]) != 10^18:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[floor32(_13049) + floor32(_8968) + floor32(_4312) + _26 + (6 * ceil32(return_data.size)) + 421 len 31]
                                                if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                                                    return (10^18 * 0 / Mask(112, 0, ext_call.return_data[32]) / 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]))
                                            ('iszero', ('div', ('mul', 1000000000000000000, ('mask_shl', 112, 0, 0, ('ext_call.return_data', 0, 32))), ('mask_shl', 112, 0, 0, ('ext_call.return_data', 32, 32))))
                                    else:
                                        if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 10^18:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[floor32(_13049) + floor32(_8968) + floor32(_4312) + _26 + (6 * ceil32(return_data.size)) + 421 len 31]
                                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if Mask(112, 0, ext_call.return_data[32]):
                                            if not 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                                                if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                                                    return (0 / 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]))
                                            else:
                                                if 10^18 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) / 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) != 10^18:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[floor32(_13049) + floor32(_8968) + floor32(_4312) + _26 + (6 * ceil32(return_data.size)) + 421 len 31]
                                                if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                                                    return (10^18 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) / 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]))
                                            ('iszero', ('div', ('mul', 1000000000000000000, ('mask_shl', 112, 0, 0, ('ext_call.return_data', 0, 32))), ('mask_shl', 112, 0, 0, ('ext_call.return_data', 32, 32))))
    else:
        mem[floor32(_26) + ceil32(return_data.size) + 128] = mem[floor32(_26) + ceil32(return_data.size) + -(_26 % 32) + 160 len _26 % 32]
        mem[floor32(_26) + ceil32(return_data.size) + 160] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
        require ext_code.size(wNativeAddress)
        staticcall wNativeAddress.symbol() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[floor32(_26) + ceil32(return_data.size) + 160 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = floor32(_26) + (2 * ceil32(return_data.size)) + 160
        require return_data.size >= 32
        _4309 = mem[floor32(_26) + ceil32(return_data.size) + 160]
        require mem[floor32(_26) + ceil32(return_data.size) + 160] <= 4294967296
        require mem[floor32(_26) + ceil32(return_data.size) + 160] + 32 <= return_data.size
        require return_data.size >= mem[floor32(_26) + ceil32(return_data.size) + mem[floor32(_26) + ceil32(return_data.size) + 160] + 160] + mem[floor32(_26) + ceil32(return_data.size) + 160] + 32 and mem[floor32(_26) + ceil32(return_data.size) + mem[floor32(_26) + ceil32(return_data.size) + 160] + 160] <= 4294967296
        mem[floor32(_26) + (2 * ceil32(return_data.size)) + 160] = mem[floor32(_26) + ceil32(return_data.size) + mem[floor32(_26) + ceil32(return_data.size) + 160] + 160]
        _4314 = mem[floor32(_26) + ceil32(return_data.size) + _4309 + 160]
        mem[floor32(_26) + (2 * ceil32(return_data.size)) + 192 len ceil32(mem[floor32(_26) + ceil32(return_data.size) + _4309 + 160])] = mem[floor32(_26) + ceil32(return_data.size) + _4309 + 192 len ceil32(mem[floor32(_26) + ceil32(return_data.size) + _4309 + 160])]
        if not _4314 % 32:
            if sha3(mem[ceil32(return_data.size) + 128 len mem[ceil32(return_data.size) + 96]]) == sha3(mem[floor32(_26) + (2 * ceil32(return_data.size)) + 192 len mem[floor32(_26) + (2 * ceil32(return_data.size)) + 160]]):
                if not Mask(112, 0, ext_call.return_data[32]):
                    if Mask(112, 0, ext_call.return_data[0]) <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    if Mask(112, 0, ext_call.return_data[0]):
                        require ext_code.size(sub_d4384dbeAddress)
                        staticcall sub_d4384dbeAddress.getPair(address arg1, address arg2) with:
                                gas gas_remaining wei
                               args wNativeAddress, usdcTokenAddress
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).getReserves() with:
                                gas gas_remaining wei
                        mem[_4314 + floor32(_26) + (2 * ceil32(return_data.size)) + 192 len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[_4314 + floor32(_26) + (2 * ceil32(return_data.size)) + 192] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).symbol() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_4314 + floor32(_26) + (2 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = _4314 + floor32(_26) + (4 * ceil32(return_data.size)) + 192
                        require return_data.size >= 32
                        _8888 = mem[_4314 + floor32(_26) + (2 * ceil32(return_data.size)) + 192]
                        require mem[_4314 + floor32(_26) + (2 * ceil32(return_data.size)) + 192] <= 4294967296
                        require mem[_4314 + floor32(_26) + (2 * ceil32(return_data.size)) + 192] + 32 <= return_data.size
                        require return_data.size >= mem[_4314 + floor32(_26) + (2 * ceil32(return_data.size)) + mem[_4314 + floor32(_26) + (2 * ceil32(return_data.size)) + 192] + 192] + mem[_4314 + floor32(_26) + (2 * ceil32(return_data.size)) + 192] + 32 and mem[_4314 + floor32(_26) + (2 * ceil32(return_data.size)) + mem[_4314 + floor32(_26) + (2 * ceil32(return_data.size)) + 192] + 192] <= 4294967296
                        mem[_4314 + floor32(_26) + (4 * ceil32(return_data.size)) + 192] = mem[_4314 + floor32(_26) + (2 * ceil32(return_data.size)) + mem[_4314 + floor32(_26) + (2 * ceil32(return_data.size)) + 192] + 192]
                        _8936 = mem[_4314 + floor32(_26) + (2 * ceil32(return_data.size)) + _8888 + 192]
                        mem[_4314 + floor32(_26) + (4 * ceil32(return_data.size)) + 224 len ceil32(mem[_4314 + floor32(_26) + (2 * ceil32(return_data.size)) + _8888 + 192])] = mem[_4314 + floor32(_26) + (2 * ceil32(return_data.size)) + _8888 + 224 len ceil32(mem[_4314 + floor32(_26) + (2 * ceil32(return_data.size)) + _8888 + 192])]
                        if not _8936 % 32:
                            mem[_8936 + _4314 + floor32(_26) + (4 * ceil32(return_data.size)) + 224] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                            require ext_code.size(wNativeAddress)
                            staticcall wNativeAddress.symbol() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[_8936 + _4314 + floor32(_26) + (4 * ceil32(return_data.size)) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = _8936 + _4314 + floor32(_26) + (6 * ceil32(return_data.size)) + 224
                            require return_data.size >= 32
                            _12942 = mem[_8936 + _4314 + floor32(_26) + (4 * ceil32(return_data.size)) + 224]
                            require mem[_8936 + _4314 + floor32(_26) + (4 * ceil32(return_data.size)) + 224] <= 4294967296
                            require mem[_8936 + _4314 + floor32(_26) + (4 * ceil32(return_data.size)) + 224] + 32 <= return_data.size
                            require return_data.size >= mem[_8936 + _4314 + floor32(_26) + (4 * ceil32(return_data.size)) + mem[_8936 + _4314 + floor32(_26) + (4 * ceil32(return_data.size)) + 224] + 224] + mem[_8936 + _4314 + floor32(_26) + (4 * ceil32(return_data.size)) + 224] + 32 and mem[_8936 + _4314 + floor32(_26) + (4 * ceil32(return_data.size)) + mem[_8936 + _4314 + floor32(_26) + (4 * ceil32(return_data.size)) + 224] + 224] <= 4294967296
                            mem[_8936 + _4314 + floor32(_26) + (6 * ceil32(return_data.size)) + 224] = mem[_8936 + _4314 + floor32(_26) + (4 * ceil32(return_data.size)) + mem[_8936 + _4314 + floor32(_26) + (4 * ceil32(return_data.size)) + 224] + 224]
                            _13029 = mem[_8936 + _4314 + floor32(_26) + (4 * ceil32(return_data.size)) + _12942 + 224]
                            mem[_8936 + _4314 + floor32(_26) + (6 * ceil32(return_data.size)) + 256 len ceil32(mem[_8936 + _4314 + floor32(_26) + (4 * ceil32(return_data.size)) + _12942 + 224])] = mem[_8936 + _4314 + floor32(_26) + (4 * ceil32(return_data.size)) + _12942 + 256 len ceil32(mem[_8936 + _4314 + floor32(_26) + (4 * ceil32(return_data.size)) + _12942 + 224])]
                            if not _13029 % 32:
                                if sha3(mem[_4314 + floor32(_26) + (4 * ceil32(return_data.size)) + 224 len mem[_4314 + floor32(_26) + (4 * ceil32(return_data.size)) + 192]]) == sha3(mem[_8936 + _4314 + floor32(_26) + (6 * ceil32(return_data.size)) + 256 len mem[_8936 + _4314 + floor32(_26) + (6 * ceil32(return_data.size)) + 224]]):
                                    if not Mask(112, 0, ext_call.return_data[32]):
                                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if Mask(112, 0, ext_call.return_data[0]):
                                            if not 0 / Mask(112, 0, ext_call.return_data[0]):
                                                if 0 / Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 0 / Mask(112, 0, ext_call.return_data[0]):
                                                    return (0 / 0 / Mask(112, 0, ext_call.return_data[0]))
                                            else:
                                                if 10^18 * 0 / Mask(112, 0, ext_call.return_data[0]) / 0 / Mask(112, 0, ext_call.return_data[0]) != 10^18:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[_13029 + _8936 + _4314 + floor32(_26) + (6 * ceil32(return_data.size)) + 357 len 31]
                                                if 0 / Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 0 / Mask(112, 0, ext_call.return_data[0]):
                                                    return (10^18 * 0 / Mask(112, 0, ext_call.return_data[0]) / 0 / Mask(112, 0, ext_call.return_data[0]))
                                            ('iszero', ('div', 0, ('mask_shl', 112, 0, 0, ('ext_call.return_data', 0, 32))))
                                    else:
                                        if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 10^18:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[_13029 + _8936 + _4314 + floor32(_26) + (6 * ceil32(return_data.size)) + 357 len 31]
                                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if Mask(112, 0, ext_call.return_data[0]):
                                            if not 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                                                if 0 / Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 0 / Mask(112, 0, ext_call.return_data[0]):
                                                    return (0 / 0 / Mask(112, 0, ext_call.return_data[0]))
                                            else:
                                                if 10^18 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) != 10^18:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[_13029 + _8936 + _4314 + floor32(_26) + (6 * ceil32(return_data.size)) + 357 len 31]
                                                if 0 / Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 0 / Mask(112, 0, ext_call.return_data[0]):
                                                    return (10^18 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 0 / Mask(112, 0, ext_call.return_data[0]))
                                            ('iszero', ('div', 0, ('mask_shl', 112, 0, 0, ('ext_call.return_data', 0, 32))))
                                else:
                                    if not Mask(112, 0, ext_call.return_data[0]):
                                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if Mask(112, 0, ext_call.return_data[32]):
                                            if not 0 / Mask(112, 0, ext_call.return_data[32]):
                                                if 0 / Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 0 / Mask(112, 0, ext_call.return_data[0]):
                                                    return (0 / 0 / Mask(112, 0, ext_call.return_data[0]))
                                            else:
                                                if 10^18 * 0 / Mask(112, 0, ext_call.return_data[32]) / 0 / Mask(112, 0, ext_call.return_data[32]) != 10^18:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[_13029 + _8936 + _4314 + floor32(_26) + (6 * ceil32(return_data.size)) + 357 len 31]
                                                if 0 / Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 0 / Mask(112, 0, ext_call.return_data[0]):
                                                    return (10^18 * 0 / Mask(112, 0, ext_call.return_data[32]) / 0 / Mask(112, 0, ext_call.return_data[0]))
                                            ('iszero', ('div', 0, ('mask_shl', 112, 0, 0, ('ext_call.return_data', 0, 32))))
                                    else:
                                        if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 10^18:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[_13029 + _8936 + _4314 + floor32(_26) + (6 * ceil32(return_data.size)) + 357 len 31]
                                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if Mask(112, 0, ext_call.return_data[32]):
                                            if not 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                                                if 0 / Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 0 / Mask(112, 0, ext_call.return_data[0]):
                                                    return (0 / 0 / Mask(112, 0, ext_call.return_data[0]))
                                            else:
                                                if 10^18 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) / 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) != 10^18:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[_13029 + _8936 + _4314 + floor32(_26) + (6 * ceil32(return_data.size)) + 357 len 31]
                                                if 0 / Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 0 / Mask(112, 0, ext_call.return_data[0]):
                                                    return (10^18 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) / 0 / Mask(112, 0, ext_call.return_data[0]))
                                            ('iszero', ('div', 0, ('mask_shl', 112, 0, 0, ('ext_call.return_data', 0, 32))))
                            else:
                                mem[floor32(_13029) + _8936 + _4314 + floor32(_26) + (6 * ceil32(return_data.size)) + 256] = mem[floor32(_13029) + _8936 + _4314 + floor32(_26) + (6 * ceil32(return_data.size)) + -(_13029 % 32) + 288 len _13029 % 32]
                                if sha3(mem[_4314 + floor32(_26) + (4 * ceil32(return_data.size)) + 224 len mem[_4314 + floor32(_26) + (4 * ceil32(return_data.size)) + 192]]) == sha3(mem[_8936 + _4314 + floor32(_26) + (6 * ceil32(return_data.size)) + 256 len mem[_8936 + _4314 + floor32(_26) + (6 * ceil32(return_data.size)) + 224]]):
                                    if not Mask(112, 0, ext_call.return_data[32]):
                                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if Mask(112, 0, ext_call.return_data[0]):
                                            if not 0 / Mask(112, 0, ext_call.return_data[0]):
                                                if 0 / Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 0 / Mask(112, 0, ext_call.return_data[0]):
                                                    return (0 / 0 / Mask(112, 0, ext_call.return_data[0]))
                                            else:
                                                if 10^18 * 0 / Mask(112, 0, ext_call.return_data[0]) / 0 / Mask(112, 0, ext_call.return_data[0]) != 10^18:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[floor32(_13029) + _8936 + _4314 + floor32(_26) + (6 * ceil32(return_data.size)) + 389 len 31]
                                                if 0 / Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 0 / Mask(112, 0, ext_call.return_data[0]):
                                                    return (10^18 * 0 / Mask(112, 0, ext_call.return_data[0]) / 0 / Mask(112, 0, ext_call.return_data[0]))
                                            ('iszero', ('div', 0, ('mask_shl', 112, 0, 0, ('ext_call.return_data', 0, 32))))
                                    else:
                                        if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 10^18:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[floor32(_13029) + _8936 + _4314 + floor32(_26) + (6 * ceil32(return_data.size)) + 389 len 31]
                                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if Mask(112, 0, ext_call.return_data[0]):
                                            if not 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                                                if 0 / Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 0 / Mask(112, 0, ext_call.return_data[0]):
                                                    return (0 / 0 / Mask(112, 0, ext_call.return_data[0]))
                                            else:
                                                if 10^18 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) != 10^18:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[floor32(_13029) + _8936 + _4314 + floor32(_26) + (6 * ceil32(return_data.size)) + 389 len 31]
                                                if 0 / Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 0 / Mask(112, 0, ext_call.return_data[0]):
                                                    return (10^18 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 0 / Mask(112, 0, ext_call.return_data[0]))
                                            ('iszero', ('div', 0, ('mask_shl', 112, 0, 0, ('ext_call.return_data', 0, 32))))
                                else:
                                    if not Mask(112, 0, ext_call.return_data[0]):
                                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if Mask(112, 0, ext_call.return_data[32]):
                                            if not 0 / Mask(112, 0, ext_call.return_data[32]):
                                                if 0 / Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 0 / Mask(112, 0, ext_call.return_data[0]):
                                                    return (0 / 0 / Mask(112, 0, ext_call.return_data[0]))
                                            else:
                                                if 10^18 * 0 / Mask(112, 0, ext_call.return_data[32]) / 0 / Mask(112, 0, ext_call.return_data[32]) != 10^18:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[floor32(_13029) + _8936 + _4314 + floor32(_26) + (6 * ceil32(return_data.size)) + 389 len 31]
                                                if 0 / Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 0 / Mask(112, 0, ext_call.return_data[0]):
                                                    return (10^18 * 0 / Mask(112, 0, ext_call.return_data[32]) / 0 / Mask(112, 0, ext_call.return_data[0]))
                                            ('iszero', ('div', 0, ('mask_shl', 112, 0, 0, ('ext_call.return_data', 0, 32))))
                                    else:
                                        if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 10^18:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[floor32(_13029) + _8936 + _4314 + floor32(_26) + (6 * ceil32(return_data.size)) + 389 len 31]
                                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if Mask(112, 0, ext_call.return_data[32]):
                                            if not 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                                                if 0 / Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 0 / Mask(112, 0, ext_call.return_data[0]):
                                                    return (0 / 0 / Mask(112, 0, ext_call.return_data[0]))
                                            else:
                                                if 10^18 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) / 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) != 10^18:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[floor32(_13029) + _8936 + _4314 + floor32(_26) + (6 * ceil32(return_data.size)) + 389 len 31]
                                                if 0 / Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 0 / Mask(112, 0, ext_call.return_data[0]):
                                                    return (10^18 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) / 0 / Mask(112, 0, ext_call.return_data[0]))
                                            ('iszero', ('div', 0, ('mask_shl', 112, 0, 0, ('ext_call.return_data', 0, 32))))
                        else:
                            mem[floor32(_8936) + _4314 + floor32(_26) + (4 * ceil32(return_data.size)) + 224] = mem[floor32(_8936) + _4314 + floor32(_26) + (4 * ceil32(return_data.size)) + -(_8936 % 32) + 256 len _8936 % 32]
                            mem[floor32(_8936) + _4314 + floor32(_26) + (4 * ceil32(return_data.size)) + 256] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                            require ext_code.size(wNativeAddress)
                            staticcall wNativeAddress.symbol() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[floor32(_8936) + _4314 + floor32(_26) + (4 * ceil32(return_data.size)) + 256 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = floor32(_8936) + _4314 + floor32(_26) + (6 * ceil32(return_data.size)) + 256
                            require return_data.size >= 32
                            _12981 = mem[floor32(_8936) + _4314 + floor32(_26) + (4 * ceil32(return_data.size)) + 256]
                            require mem[floor32(_8936) + _4314 + floor32(_26) + (4 * ceil32(return_data.size)) + 256] <= 4294967296
                            require mem[floor32(_8936) + _4314 + floor32(_26) + (4 * ceil32(return_data.size)) + 256] + 32 <= return_data.size
                            require return_data.size >= mem[floor32(_8936) + _4314 + floor32(_26) + (4 * ceil32(return_data.size)) + mem[floor32(_8936) + _4314 + floor32(_26) + (4 * ceil32(return_data.size)) + 256] + 256] + mem[floor32(_8936) + _4314 + floor32(_26) + (4 * ceil32(return_data.size)) + 256] + 32 and mem[floor32(_8936) + _4314 + floor32(_26) + (4 * ceil32(return_data.size)) + mem[floor32(_8936) + _4314 + floor32(_26) + (4 * ceil32(return_data.size)) + 256] + 256] <= 4294967296
                            mem[floor32(_8936) + _4314 + floor32(_26) + (6 * ceil32(return_data.size)) + 256] = mem[floor32(_8936) + _4314 + floor32(_26) + (4 * ceil32(return_data.size)) + mem[floor32(_8936) + _4314 + floor32(_26) + (4 * ceil32(return_data.size)) + 256] + 256]
                            _13052 = mem[floor32(_8936) + _4314 + floor32(_26) + (4 * ceil32(return_data.size)) + _12981 + 256]
                            mem[floor32(_8936) + _4314 + floor32(_26) + (6 * ceil32(return_data.size)) + 288 len ceil32(mem[floor32(_8936) + _4314 + floor32(_26) + (4 * ceil32(return_data.size)) + _12981 + 256])] = mem[floor32(_8936) + _4314 + floor32(_26) + (4 * ceil32(return_data.size)) + _12981 + 288 len ceil32(mem[floor32(_8936) + _4314 + floor32(_26) + (4 * ceil32(return_data.size)) + _12981 + 256])]
                            if not _13052 % 32:
                                if sha3(mem[_4314 + floor32(_26) + (4 * ceil32(return_data.size)) + 224 len mem[_4314 + floor32(_26) + (4 * ceil32(return_data.size)) + 192]]) == sha3(mem[floor32(_8936) + _4314 + floor32(_26) + (6 * ceil32(return_data.size)) + 288 len mem[floor32(_8936) + _4314 + floor32(_26) + (6 * ceil32(return_data.size)) + 256]]):
                                    if not Mask(112, 0, ext_call.return_data[32]):
                                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if Mask(112, 0, ext_call.return_data[0]):
                                            if not 0 / Mask(112, 0, ext_call.return_data[0]):
                                                if 0 / Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 0 / Mask(112, 0, ext_call.return_data[0]):
                                                    return (0 / 0 / Mask(112, 0, ext_call.return_data[0]))
                                            else:
                                                if 10^18 * 0 / Mask(112, 0, ext_call.return_data[0]) / 0 / Mask(112, 0, ext_call.return_data[0]) != 10^18:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[_13052 + floor32(_8936) + _4314 + floor32(_26) + (6 * ceil32(return_data.size)) + 389 len 31]
                                                if 0 / Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 0 / Mask(112, 0, ext_call.return_data[0]):
                                                    return (10^18 * 0 / Mask(112, 0, ext_call.return_data[0]) / 0 / Mask(112, 0, ext_call.return_data[0]))
                                            ('iszero', ('div', 0, ('mask_shl', 112, 0, 0, ('ext_call.return_data', 0, 32))))
                                    else:
                                        if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 10^18:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[_13052 + floor32(_8936) + _4314 + floor32(_26) + (6 * ceil32(return_data.size)) + 389 len 31]
                                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if Mask(112, 0, ext_call.return_data[0]):
                                            if not 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                                                if 0 / Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 0 / Mask(112, 0, ext_call.return_data[0]):
                                                    return (0 / 0 / Mask(112, 0, ext_call.return_data[0]))
                                            else:
                                                if 10^18 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) != 10^18:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[_13052 + floor32(_8936) + _4314 + floor32(_26) + (6 * ceil32(return_data.size)) + 389 len 31]
                                                if 0 / Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 0 / Mask(112, 0, ext_call.return_data[0]):
                                                    return (10^18 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 0 / Mask(112, 0, ext_call.return_data[0]))
                                            ('iszero', ('div', 0, ('mask_shl', 112, 0, 0, ('ext_call.return_data', 0, 32))))
                                else:
                                    if not Mask(112, 0, ext_call.return_data[0]):
                                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if Mask(112, 0, ext_call.return_data[32]):
                                            if not 0 / Mask(112, 0, ext_call.return_data[32]):
                                                if 0 / Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 0 / Mask(112, 0, ext_call.return_data[0]):
                                                    return (0 / 0 / Mask(112, 0, ext_call.return_data[0]))
                                            else:
                                                if 10^18 * 0 / Mask(112, 0, ext_call.return_data[32]) / 0 / Mask(112, 0, ext_call.return_data[32]) != 10^18:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[_13052 + floor32(_8936) + _4314 + floor32(_26) + (6 * ceil32(return_data.size)) + 389 len 31]
                                                if 0 / Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 0 / Mask(112, 0, ext_call.return_data[0]):
                                                    return (10^18 * 0 / Mask(112, 0, ext_call.return_data[32]) / 0 / Mask(112, 0, ext_call.return_data[0]))
                                            ('iszero', ('div', 0, ('mask_shl', 112, 0, 0, ('ext_call.return_data', 0, 32))))
                                    else:
                                        if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 10^18:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[_13052 + floor32(_8936) + _4314 + floor32(_26) + (6 * ceil32(return_data.size)) + 389 len 31]
                                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if Mask(112, 0, ext_call.return_data[32]):
                                            if not 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                                                if 0 / Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 0 / Mask(112, 0, ext_call.return_data[0]):
                                                    return (0 / 0 / Mask(112, 0, ext_call.return_data[0]))
                                            else:
                                                if 10^18 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) / 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) != 10^18:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[_13052 + floor32(_8936) + _4314 + floor32(_26) + (6 * ceil32(return_data.size)) + 389 len 31]
                                                if 0 / Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 0 / Mask(112, 0, ext_call.return_data[0]):
                                                    return (10^18 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) / 0 / Mask(112, 0, ext_call.return_data[0]))
                                            ('iszero', ('div', 0, ('mask_shl', 112, 0, 0, ('ext_call.return_data', 0, 32))))
                            else:
                                mem[floor32(_13052) + floor32(_8936) + _4314 + floor32(_26) + (6 * ceil32(return_data.size)) + 288] = mem[floor32(_13052) + floor32(_8936) + _4314 + floor32(_26) + (6 * ceil32(return_data.size)) + -(_13052 % 32) + 320 len _13052 % 32]
                                if sha3(mem[_4314 + floor32(_26) + (4 * ceil32(return_data.size)) + 224 len mem[_4314 + floor32(_26) + (4 * ceil32(return_data.size)) + 192]]) == sha3(mem[floor32(_8936) + _4314 + floor32(_26) + (6 * ceil32(return_data.size)) + 288 len mem[floor32(_8936) + _4314 + floor32(_26) + (6 * ceil32(return_data.size)) + 256]]):
                                    if not Mask(112, 0, ext_call.return_data[32]):
                                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if Mask(112, 0, ext_call.return_data[0]):
                                            if not 0 / Mask(112, 0, ext_call.return_data[0]):
                                                if 0 / Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 0 / Mask(112, 0, ext_call.return_data[0]):
                                                    return (0 / 0 / Mask(112, 0, ext_call.return_data[0]))
                                            else:
                                                if 10^18 * 0 / Mask(112, 0, ext_call.return_data[0]) / 0 / Mask(112, 0, ext_call.return_data[0]) != 10^18:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[floor32(_13052) + floor32(_8936) + _4314 + floor32(_26) + (6 * ceil32(return_data.size)) + 421 len 31]
                                                if 0 / Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 0 / Mask(112, 0, ext_call.return_data[0]):
                                                    return (10^18 * 0 / Mask(112, 0, ext_call.return_data[0]) / 0 / Mask(112, 0, ext_call.return_data[0]))
                                            ('iszero', ('div', 0, ('mask_shl', 112, 0, 0, ('ext_call.return_data', 0, 32))))
                                    else:
                                        if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 10^18:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[floor32(_13052) + floor32(_8936) + _4314 + floor32(_26) + (6 * ceil32(return_data.size)) + 421 len 31]
                                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if Mask(112, 0, ext_call.return_data[0]):
                                            if not 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                                                if 0 / Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 0 / Mask(112, 0, ext_call.return_data[0]):
                                                    return (0 / 0 / Mask(112, 0, ext_call.return_data[0]))
                                            else:
                                                if 10^18 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) != 10^18:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[floor32(_13052) + floor32(_8936) + _4314 + floor32(_26) + (6 * ceil32(return_data.size)) + 421 len 31]
                                                if 0 / Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 0 / Mask(112, 0, ext_call.return_data[0]):
                                                    return (10^18 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 0 / Mask(112, 0, ext_call.return_data[0]))
                                            ('iszero', ('div', 0, ('mask_shl', 112, 0, 0, ('ext_call.return_data', 0, 32))))
                                else:
                                    if not Mask(112, 0, ext_call.return_data[0]):
                                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if Mask(112, 0, ext_call.return_data[32]):
                                            if not 0 / Mask(112, 0, ext_call.return_data[32]):
                                                if 0 / Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 0 / Mask(112, 0, ext_call.return_data[0]):
                                                    return (0 / 0 / Mask(112, 0, ext_call.return_data[0]))
                                            else:
                                                if 10^18 * 0 / Mask(112, 0, ext_call.return_data[32]) / 0 / Mask(112, 0, ext_call.return_data[32]) != 10^18:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[floor32(_13052) + floor32(_8936) + _4314 + floor32(_26) + (6 * ceil32(return_data.size)) + 421 len 31]
                                                if 0 / Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 0 / Mask(112, 0, ext_call.return_data[0]):
                                                    return (10^18 * 0 / Mask(112, 0, ext_call.return_data[32]) / 0 / Mask(112, 0, ext_call.return_data[0]))
                                            ('iszero', ('div', 0, ('mask_shl', 112, 0, 0, ('ext_call.return_data', 0, 32))))
                                    else:
                                        if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 10^18:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[floor32(_13052) + floor32(_8936) + _4314 + floor32(_26) + (6 * ceil32(return_data.size)) + 421 len 31]
                                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if Mask(112, 0, ext_call.return_data[32]):
                                            if not 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                                                if 0 / Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 0 / Mask(112, 0, ext_call.return_data[0]):
                                                    return (0 / 0 / Mask(112, 0, ext_call.return_data[0]))
                                            else:
                                                if 10^18 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) / 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) != 10^18:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[floor32(_13052) + floor32(_8936) + _4314 + floor32(_26) + (6 * ceil32(return_data.size)) + 421 len 31]
                                                if 0 / Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 0 / Mask(112, 0, ext_call.return_data[0]):
                                                    return (10^18 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) / 0 / Mask(112, 0, ext_call.return_data[0]))
                                            ('iszero', ('div', 0, ('mask_shl', 112, 0, 0, ('ext_call.return_data', 0, 32))))
                else:
                    if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 10^18:
                        revert with 0, 
                                    32,
                                    33,
                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[_4314 + floor32(_26) + (2 * ceil32(return_data.size)) + 293 len 31]
                    if Mask(112, 0, ext_call.return_data[0]) <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    if Mask(112, 0, ext_call.return_data[0]):
                        require ext_code.size(sub_d4384dbeAddress)
                        staticcall sub_d4384dbeAddress.getPair(address arg1, address arg2) with:
                                gas gas_remaining wei
                               args wNativeAddress, usdcTokenAddress
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).getReserves() with:
                                gas gas_remaining wei
                        mem[_4314 + floor32(_26) + (2 * ceil32(return_data.size)) + 192 len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[_4314 + floor32(_26) + (2 * ceil32(return_data.size)) + 192] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).symbol() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_4314 + floor32(_26) + (2 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = _4314 + floor32(_26) + (4 * ceil32(return_data.size)) + 192
                        require return_data.size >= 32
                        _8904 = mem[_4314 + floor32(_26) + (2 * ceil32(return_data.size)) + 192]
                        require mem[_4314 + floor32(_26) + (2 * ceil32(return_data.size)) + 192] <= 4294967296
                        require mem[_4314 + floor32(_26) + (2 * ceil32(return_data.size)) + 192] + 32 <= return_data.size
                        require return_data.size >= mem[_4314 + floor32(_26) + (2 * ceil32(return_data.size)) + mem[_4314 + floor32(_26) + (2 * ceil32(return_data.size)) + 192] + 192] + mem[_4314 + floor32(_26) + (2 * ceil32(return_data.size)) + 192] + 32 and mem[_4314 + floor32(_26) + (2 * ceil32(return_data.size)) + mem[_4314 + floor32(_26) + (2 * ceil32(return_data.size)) + 192] + 192] <= 4294967296
                        mem[_4314 + floor32(_26) + (4 * ceil32(return_data.size)) + 192] = mem[_4314 + floor32(_26) + (2 * ceil32(return_data.size)) + mem[_4314 + floor32(_26) + (2 * ceil32(return_data.size)) + 192] + 192]
                        _8947 = mem[_4314 + floor32(_26) + (2 * ceil32(return_data.size)) + _8904 + 192]
                        mem[_4314 + floor32(_26) + (4 * ceil32(return_data.size)) + 224 len ceil32(mem[_4314 + floor32(_26) + (2 * ceil32(return_data.size)) + _8904 + 192])] = mem[_4314 + floor32(_26) + (2 * ceil32(return_data.size)) + _8904 + 224 len ceil32(mem[_4314 + floor32(_26) + (2 * ceil32(return_data.size)) + _8904 + 192])]
                        if not _8947 % 32:
                            mem[_8947 + _4314 + floor32(_26) + (4 * ceil32(return_data.size)) + 224] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                            require ext_code.size(wNativeAddress)
                            staticcall wNativeAddress.symbol() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[_8947 + _4314 + floor32(_26) + (4 * ceil32(return_data.size)) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = _8947 + _4314 + floor32(_26) + (6 * ceil32(return_data.size)) + 224
                            require return_data.size >= 32
                            _12939 = mem[_8947 + _4314 + floor32(_26) + (4 * ceil32(return_data.size)) + 224]
                            require mem[_8947 + _4314 + floor32(_26) + (4 * ceil32(return_data.size)) + 224] <= 4294967296
                            require mem[_8947 + _4314 + floor32(_26) + (4 * ceil32(return_data.size)) + 224] + 32 <= return_data.size
                            require return_data.size >= mem[_8947 + _4314 + floor32(_26) + (4 * ceil32(return_data.size)) + mem[_8947 + _4314 + floor32(_26) + (4 * ceil32(return_data.size)) + 224] + 224] + mem[_8947 + _4314 + floor32(_26) + (4 * ceil32(return_data.size)) + 224] + 32 and mem[_8947 + _4314 + floor32(_26) + (4 * ceil32(return_data.size)) + mem[_8947 + _4314 + floor32(_26) + (4 * ceil32(return_data.size)) + 224] + 224] <= 4294967296
                            mem[_8947 + _4314 + floor32(_26) + (6 * ceil32(return_data.size)) + 224] = mem[_8947 + _4314 + floor32(_26) + (4 * ceil32(return_data.size)) + mem[_8947 + _4314 + floor32(_26) + (4 * ceil32(return_data.size)) + 224] + 224]
                            _13027 = mem[_8947 + _4314 + floor32(_26) + (4 * ceil32(return_data.size)) + _12939 + 224]
                            mem[_8947 + _4314 + floor32(_26) + (6 * ceil32(return_data.size)) + 256 len ceil32(mem[_8947 + _4314 + floor32(_26) + (4 * ceil32(return_data.size)) + _12939 + 224])] = mem[_8947 + _4314 + floor32(_26) + (4 * ceil32(return_data.size)) + _12939 + 256 len ceil32(mem[_8947 + _4314 + floor32(_26) + (4 * ceil32(return_data.size)) + _12939 + 224])]
                            if not _13027 % 32:
                                if sha3(mem[_4314 + floor32(_26) + (4 * ceil32(return_data.size)) + 224 len mem[_4314 + floor32(_26) + (4 * ceil32(return_data.size)) + 192]]) == sha3(mem[_8947 + _4314 + floor32(_26) + (6 * ceil32(return_data.size)) + 256 len mem[_8947 + _4314 + floor32(_26) + (6 * ceil32(return_data.size)) + 224]]):
                                    if not Mask(112, 0, ext_call.return_data[32]):
                                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if Mask(112, 0, ext_call.return_data[0]):
                                            if not 0 / Mask(112, 0, ext_call.return_data[0]):
                                                if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                                                    return (0 / 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]))
                                            else:
                                                if 10^18 * 0 / Mask(112, 0, ext_call.return_data[0]) / 0 / Mask(112, 0, ext_call.return_data[0]) != 10^18:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[_13027 + _8947 + _4314 + floor32(_26) + (6 * ceil32(return_data.size)) + 357 len 31]
                                                if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                                                    return (10^18 * 0 / Mask(112, 0, ext_call.return_data[0]) / 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]))
                                            ('iszero', ('div', ('mul', 1000000000000000000, ('mask_shl', 112, 0, 0, ('ext_call.return_data', 32, 32))), ('mask_shl', 112, 0, 0, ('ext_call.return_data', 0, 32))))
                                    else:
                                        if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 10^18:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[_13027 + _8947 + _4314 + floor32(_26) + (6 * ceil32(return_data.size)) + 357 len 31]
                                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if Mask(112, 0, ext_call.return_data[0]):
                                            if not 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                                                if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                                                    return (0 / 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]))
                                            else:
                                                if 10^18 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) != 10^18:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[_13027 + _8947 + _4314 + floor32(_26) + (6 * ceil32(return_data.size)) + 357 len 31]
                                                if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                                                    return (10^18 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]))
                                            ('iszero', ('div', ('mul', 1000000000000000000, ('mask_shl', 112, 0, 0, ('ext_call.return_data', 32, 32))), ('mask_shl', 112, 0, 0, ('ext_call.return_data', 0, 32))))
                                else:
                                    if not Mask(112, 0, ext_call.return_data[0]):
                                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if Mask(112, 0, ext_call.return_data[32]):
                                            if not 0 / Mask(112, 0, ext_call.return_data[32]):
                                                if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                                                    return (0 / 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]))
                                            else:
                                                if 10^18 * 0 / Mask(112, 0, ext_call.return_data[32]) / 0 / Mask(112, 0, ext_call.return_data[32]) != 10^18:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[_13027 + _8947 + _4314 + floor32(_26) + (6 * ceil32(return_data.size)) + 357 len 31]
                                                if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                                                    return (10^18 * 0 / Mask(112, 0, ext_call.return_data[32]) / 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]))
                                            ('iszero', ('div', ('mul', 1000000000000000000, ('mask_shl', 112, 0, 0, ('ext_call.return_data', 32, 32))), ('mask_shl', 112, 0, 0, ('ext_call.return_data', 0, 32))))
                                    else:
                                        if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 10^18:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[_13027 + _8947 + _4314 + floor32(_26) + (6 * ceil32(return_data.size)) + 357 len 31]
                                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if Mask(112, 0, ext_call.return_data[32]):
                                            if not 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                                                if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                                                    return (0 / 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]))
                                            else:
                                                if 10^18 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) / 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) != 10^18:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[_13027 + _8947 + _4314 + floor32(_26) + (6 * ceil32(return_data.size)) + 357 len 31]
                                                if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                                                    return (10^18 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) / 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]))
                                            ('iszero', ('div', ('mul', 1000000000000000000, ('mask_shl', 112, 0, 0, ('ext_call.return_data', 32, 32))), ('mask_shl', 112, 0, 0, ('ext_call.return_data', 0, 32))))
                            else:
                                mem[floor32(_13027) + _8947 + _4314 + floor32(_26) + (6 * ceil32(return_data.size)) + 256] = mem[floor32(_13027) + _8947 + _4314 + floor32(_26) + (6 * ceil32(return_data.size)) + -(_13027 % 32) + 288 len _13027 % 32]
                                if sha3(mem[_4314 + floor32(_26) + (4 * ceil32(return_data.size)) + 224 len mem[_4314 + floor32(_26) + (4 * ceil32(return_data.size)) + 192]]) == sha3(mem[_8947 + _4314 + floor32(_26) + (6 * ceil32(return_data.size)) + 256 len mem[_8947 + _4314 + floor32(_26) + (6 * ceil32(return_data.size)) + 224]]):
                                    if not Mask(112, 0, ext_call.return_data[32]):
                                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if Mask(112, 0, ext_call.return_data[0]):
                                            if not 0 / Mask(112, 0, ext_call.return_data[0]):
                                                if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                                                    return (0 / 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]))
                                            else:
                                                if 10^18 * 0 / Mask(112, 0, ext_call.return_data[0]) / 0 / Mask(112, 0, ext_call.return_data[0]) != 10^18:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[floor32(_13027) + _8947 + _4314 + floor32(_26) + (6 * ceil32(return_data.size)) + 389 len 31]
                                                if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                                                    return (10^18 * 0 / Mask(112, 0, ext_call.return_data[0]) / 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]))
                                            ('iszero', ('div', ('mul', 1000000000000000000, ('mask_shl', 112, 0, 0, ('ext_call.return_data', 32, 32))), ('mask_shl', 112, 0, 0, ('ext_call.return_data', 0, 32))))
                                    else:
                                        if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 10^18:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[floor32(_13027) + _8947 + _4314 + floor32(_26) + (6 * ceil32(return_data.size)) + 389 len 31]
                                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if Mask(112, 0, ext_call.return_data[0]):
                                            if not 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                                                if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                                                    return (0 / 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]))
                                            else:
                                                if 10^18 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) != 10^18:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[floor32(_13027) + _8947 + _4314 + floor32(_26) + (6 * ceil32(return_data.size)) + 389 len 31]
                                                if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                                                    return (10^18 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]))
                                            ('iszero', ('div', ('mul', 1000000000000000000, ('mask_shl', 112, 0, 0, ('ext_call.return_data', 32, 32))), ('mask_shl', 112, 0, 0, ('ext_call.return_data', 0, 32))))
                                else:
                                    if not Mask(112, 0, ext_call.return_data[0]):
                                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if Mask(112, 0, ext_call.return_data[32]):
                                            if not 0 / Mask(112, 0, ext_call.return_data[32]):
                                                if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                                                    return (0 / 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]))
                                            else:
                                                if 10^18 * 0 / Mask(112, 0, ext_call.return_data[32]) / 0 / Mask(112, 0, ext_call.return_data[32]) != 10^18:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[floor32(_13027) + _8947 + _4314 + floor32(_26) + (6 * ceil32(return_data.size)) + 389 len 31]
                                                if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                                                    return (10^18 * 0 / Mask(112, 0, ext_call.return_data[32]) / 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]))
                                            ('iszero', ('div', ('mul', 1000000000000000000, ('mask_shl', 112, 0, 0, ('ext_call.return_data', 32, 32))), ('mask_shl', 112, 0, 0, ('ext_call.return_data', 0, 32))))
                                    else:
                                        if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 10^18:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[floor32(_13027) + _8947 + _4314 + floor32(_26) + (6 * ceil32(return_data.size)) + 389 len 31]
                                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if Mask(112, 0, ext_call.return_data[32]):
                                            if not 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                                                if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                                                    return (0 / 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]))
                                            else:
                                                if 10^18 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) / 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) != 10^18:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[floor32(_13027) + _8947 + _4314 + floor32(_26) + (6 * ceil32(return_data.size)) + 389 len 31]
                                                if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                                                    return (10^18 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) / 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]))
                                            ('iszero', ('div', ('mul', 1000000000000000000, ('mask_shl', 112, 0, 0, ('ext_call.return_data', 32, 32))), ('mask_shl', 112, 0, 0, ('ext_call.return_data', 0, 32))))
                        else:
                            mem[floor32(_8947) + _4314 + floor32(_26) + (4 * ceil32(return_data.size)) + 224] = mem[floor32(_8947) + _4314 + floor32(_26) + (4 * ceil32(return_data.size)) + -(_8947 % 32) + 256 len _8947 % 32]
                            mem[floor32(_8947) + _4314 + floor32(_26) + (4 * ceil32(return_data.size)) + 256] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                            require ext_code.size(wNativeAddress)
                            staticcall wNativeAddress.symbol() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[floor32(_8947) + _4314 + floor32(_26) + (4 * ceil32(return_data.size)) + 256 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = floor32(_8947) + _4314 + floor32(_26) + (6 * ceil32(return_data.size)) + 256
                            require return_data.size >= 32
                            _12979 = mem[floor32(_8947) + _4314 + floor32(_26) + (4 * ceil32(return_data.size)) + 256]
                            require mem[floor32(_8947) + _4314 + floor32(_26) + (4 * ceil32(return_data.size)) + 256] <= 4294967296
                            require mem[floor32(_8947) + _4314 + floor32(_26) + (4 * ceil32(return_data.size)) + 256] + 32 <= return_data.size
                            require return_data.size >= mem[floor32(_8947) + _4314 + floor32(_26) + (4 * ceil32(return_data.size)) + mem[floor32(_8947) + _4314 + floor32(_26) + (4 * ceil32(return_data.size)) + 256] + 256] + mem[floor32(_8947) + _4314 + floor32(_26) + (4 * ceil32(return_data.size)) + 256] + 32 and mem[floor32(_8947) + _4314 + floor32(_26) + (4 * ceil32(return_data.size)) + mem[floor32(_8947) + _4314 + floor32(_26) + (4 * ceil32(return_data.size)) + 256] + 256] <= 4294967296
                            mem[floor32(_8947) + _4314 + floor32(_26) + (6 * ceil32(return_data.size)) + 256] = mem[floor32(_8947) + _4314 + floor32(_26) + (4 * ceil32(return_data.size)) + mem[floor32(_8947) + _4314 + floor32(_26) + (4 * ceil32(return_data.size)) + 256] + 256]
                            _13051 = mem[floor32(_8947) + _4314 + floor32(_26) + (4 * ceil32(return_data.size)) + _12979 + 256]
                            mem[floor32(_8947) + _4314 + floor32(_26) + (6 * ceil32(return_data.size)) + 288 len ceil32(mem[floor32(_8947) + _4314 + floor32(_26) + (4 * ceil32(return_data.size)) + _12979 + 256])] = mem[floor32(_8947) + _4314 + floor32(_26) + (4 * ceil32(return_data.size)) + _12979 + 288 len ceil32(mem[floor32(_8947) + _4314 + floor32(_26) + (4 * ceil32(return_data.size)) + _12979 + 256])]
                            if not _13051 % 32:
                                if sha3(mem[_4314 + floor32(_26) + (4 * ceil32(return_data.size)) + 224 len mem[_4314 + floor32(_26) + (4 * ceil32(return_data.size)) + 192]]) == sha3(mem[floor32(_8947) + _4314 + floor32(_26) + (6 * ceil32(return_data.size)) + 288 len mem[floor32(_8947) + _4314 + floor32(_26) + (6 * ceil32(return_data.size)) + 256]]):
                                    if not Mask(112, 0, ext_call.return_data[32]):
                                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if Mask(112, 0, ext_call.return_data[0]):
                                            if not 0 / Mask(112, 0, ext_call.return_data[0]):
                                                if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                                                    return (0 / 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]))
                                            else:
                                                if 10^18 * 0 / Mask(112, 0, ext_call.return_data[0]) / 0 / Mask(112, 0, ext_call.return_data[0]) != 10^18:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[_13051 + floor32(_8947) + _4314 + floor32(_26) + (6 * ceil32(return_data.size)) + 389 len 31]
                                                if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                                                    return (10^18 * 0 / Mask(112, 0, ext_call.return_data[0]) / 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]))
                                            ('iszero', ('div', ('mul', 1000000000000000000, ('mask_shl', 112, 0, 0, ('ext_call.return_data', 32, 32))), ('mask_shl', 112, 0, 0, ('ext_call.return_data', 0, 32))))
                                    else:
                                        if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 10^18:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[_13051 + floor32(_8947) + _4314 + floor32(_26) + (6 * ceil32(return_data.size)) + 389 len 31]
                                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if Mask(112, 0, ext_call.return_data[0]):
                                            if not 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                                                if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                                                    return (0 / 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]))
                                            else:
                                                if 10^18 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) != 10^18:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[_13051 + floor32(_8947) + _4314 + floor32(_26) + (6 * ceil32(return_data.size)) + 389 len 31]
                                                if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                                                    return (10^18 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]))
                                            ('iszero', ('div', ('mul', 1000000000000000000, ('mask_shl', 112, 0, 0, ('ext_call.return_data', 32, 32))), ('mask_shl', 112, 0, 0, ('ext_call.return_data', 0, 32))))
                                else:
                                    if not Mask(112, 0, ext_call.return_data[0]):
                                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if Mask(112, 0, ext_call.return_data[32]):
                                            if not 0 / Mask(112, 0, ext_call.return_data[32]):
                                                if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                                                    return (0 / 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]))
                                            else:
                                                if 10^18 * 0 / Mask(112, 0, ext_call.return_data[32]) / 0 / Mask(112, 0, ext_call.return_data[32]) != 10^18:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[_13051 + floor32(_8947) + _4314 + floor32(_26) + (6 * ceil32(return_data.size)) + 389 len 31]
                                                if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                                                    return (10^18 * 0 / Mask(112, 0, ext_call.return_data[32]) / 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]))
                                            ('iszero', ('div', ('mul', 1000000000000000000, ('mask_shl', 112, 0, 0, ('ext_call.return_data', 32, 32))), ('mask_shl', 112, 0, 0, ('ext_call.return_data', 0, 32))))
                                    else:
                                        if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 10^18:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[_13051 + floor32(_8947) + _4314 + floor32(_26) + (6 * ceil32(return_data.size)) + 389 len 31]
                                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if Mask(112, 0, ext_call.return_data[32]):
                                            if not 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                                                if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                                                    return (0 / 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]))
                                            else:
                                                if 10^18 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) / 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) != 10^18:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[_13051 + floor32(_8947) + _4314 + floor32(_26) + (6 * ceil32(return_data.size)) + 389 len 31]
                                                if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                                                    return (10^18 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) / 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]))
                                            ('iszero', ('div', ('mul', 1000000000000000000, ('mask_shl', 112, 0, 0, ('ext_call.return_data', 32, 32))), ('mask_shl', 112, 0, 0, ('ext_call.return_data', 0, 32))))
                            else:
                                mem[floor32(_13051) + floor32(_8947) + _4314 + floor32(_26) + (6 * ceil32(return_data.size)) + 288] = mem[floor32(_13051) + floor32(_8947) + _4314 + floor32(_26) + (6 * ceil32(return_data.size)) + -(_13051 % 32) + 320 len _13051 % 32]
                                if sha3(mem[_4314 + floor32(_26) + (4 * ceil32(return_data.size)) + 224 len mem[_4314 + floor32(_26) + (4 * ceil32(return_data.size)) + 192]]) == sha3(mem[floor32(_8947) + _4314 + floor32(_26) + (6 * ceil32(return_data.size)) + 288 len mem[floor32(_8947) + _4314 + floor32(_26) + (6 * ceil32(return_data.size)) + 256]]):
                                    if not Mask(112, 0, ext_call.return_data[32]):
                                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if Mask(112, 0, ext_call.return_data[0]):
                                            if not 0 / Mask(112, 0, ext_call.return_data[0]):
                                                if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                                                    return (0 / 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]))
                                            else:
                                                if 10^18 * 0 / Mask(112, 0, ext_call.return_data[0]) / 0 / Mask(112, 0, ext_call.return_data[0]) != 10^18:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[floor32(_13051) + floor32(_8947) + _4314 + floor32(_26) + (6 * ceil32(return_data.size)) + 421 len 31]
                                                if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                                                    return (10^18 * 0 / Mask(112, 0, ext_call.return_data[0]) / 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]))
                                            ('iszero', ('div', ('mul', 1000000000000000000, ('mask_shl', 112, 0, 0, ('ext_call.return_data', 32, 32))), ('mask_shl', 112, 0, 0, ('ext_call.return_data', 0, 32))))
                                    else:
                                        if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 10^18:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[floor32(_13051) + floor32(_8947) + _4314 + floor32(_26) + (6 * ceil32(return_data.size)) + 421 len 31]
                                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if Mask(112, 0, ext_call.return_data[0]):
                                            if not 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                                                if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                                                    return (0 / 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]))
                                            else:
                                                if 10^18 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) != 10^18:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[floor32(_13051) + floor32(_8947) + _4314 + floor32(_26) + (6 * ceil32(return_data.size)) + 421 len 31]
                                                if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                                                    return (10^18 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]))
                                            ('iszero', ('div', ('mul', 1000000000000000000, ('mask_shl', 112, 0, 0, ('ext_call.return_data', 32, 32))), ('mask_shl', 112, 0, 0, ('ext_call.return_data', 0, 32))))
                                else:
                                    if not Mask(112, 0, ext_call.return_data[0]):
                                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if Mask(112, 0, ext_call.return_data[32]):
                                            if not 0 / Mask(112, 0, ext_call.return_data[32]):
                                                if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                                                    return (0 / 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]))
                                            else:
                                                if 10^18 * 0 / Mask(112, 0, ext_call.return_data[32]) / 0 / Mask(112, 0, ext_call.return_data[32]) != 10^18:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[floor32(_13051) + floor32(_8947) + _4314 + floor32(_26) + (6 * ceil32(return_data.size)) + 421 len 31]
                                                if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                                                    return (10^18 * 0 / Mask(112, 0, ext_call.return_data[32]) / 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]))
                                            ('iszero', ('div', ('mul', 1000000000000000000, ('mask_shl', 112, 0, 0, ('ext_call.return_data', 32, 32))), ('mask_shl', 112, 0, 0, ('ext_call.return_data', 0, 32))))
                                    else:
                                        if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 10^18:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[floor32(_13051) + floor32(_8947) + _4314 + floor32(_26) + (6 * ceil32(return_data.size)) + 421 len 31]
                                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if Mask(112, 0, ext_call.return_data[32]):
                                            if not 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                                                if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                                                    return (0 / 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]))
                                            else:
                                                if 10^18 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) / 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) != 10^18:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[floor32(_13051) + floor32(_8947) + _4314 + floor32(_26) + (6 * ceil32(return_data.size)) + 421 len 31]
                                                if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                                                    return (10^18 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) / 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]))
                                            ('iszero', ('div', ('mul', 1000000000000000000, ('mask_shl', 112, 0, 0, ('ext_call.return_data', 32, 32))), ('mask_shl', 112, 0, 0, ('ext_call.return_data', 0, 32))))
            else:
                if not Mask(112, 0, ext_call.return_data[0]):
                    if Mask(112, 0, ext_call.return_data[32]) <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    if Mask(112, 0, ext_call.return_data[32]):
                        require ext_code.size(sub_d4384dbeAddress)
                        staticcall sub_d4384dbeAddress.getPair(address arg1, address arg2) with:
                                gas gas_remaining wei
                               args wNativeAddress, usdcTokenAddress
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).getReserves() with:
                                gas gas_remaining wei
                        mem[_4314 + floor32(_26) + (2 * ceil32(return_data.size)) + 192 len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[_4314 + floor32(_26) + (2 * ceil32(return_data.size)) + 192] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).symbol() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_4314 + floor32(_26) + (2 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = _4314 + floor32(_26) + (4 * ceil32(return_data.size)) + 192
                        require return_data.size >= 32
                        _8907 = mem[_4314 + floor32(_26) + (2 * ceil32(return_data.size)) + 192]
                        require mem[_4314 + floor32(_26) + (2 * ceil32(return_data.size)) + 192] <= 4294967296
                        require mem[_4314 + floor32(_26) + (2 * ceil32(return_data.size)) + 192] + 32 <= return_data.size
                        require return_data.size >= mem[_4314 + floor32(_26) + (2 * ceil32(return_data.size)) + mem[_4314 + floor32(_26) + (2 * ceil32(return_data.size)) + 192] + 192] + mem[_4314 + floor32(_26) + (2 * ceil32(return_data.size)) + 192] + 32 and mem[_4314 + floor32(_26) + (2 * ceil32(return_data.size)) + mem[_4314 + floor32(_26) + (2 * ceil32(return_data.size)) + 192] + 192] <= 4294967296
                        mem[_4314 + floor32(_26) + (4 * ceil32(return_data.size)) + 192] = mem[_4314 + floor32(_26) + (2 * ceil32(return_data.size)) + mem[_4314 + floor32(_26) + (2 * ceil32(return_data.size)) + 192] + 192]
                        _8949 = mem[_4314 + floor32(_26) + (2 * ceil32(return_data.size)) + _8907 + 192]
                        mem[_4314 + floor32(_26) + (4 * ceil32(return_data.size)) + 224 len ceil32(mem[_4314 + floor32(_26) + (2 * ceil32(return_data.size)) + _8907 + 192])] = mem[_4314 + floor32(_26) + (2 * ceil32(return_data.size)) + _8907 + 224 len ceil32(mem[_4314 + floor32(_26) + (2 * ceil32(return_data.size)) + _8907 + 192])]
                        if not _8949 % 32:
                            mem[_8949 + _4314 + floor32(_26) + (4 * ceil32(return_data.size)) + 224] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                            require ext_code.size(wNativeAddress)
                            staticcall wNativeAddress.symbol() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[_8949 + _4314 + floor32(_26) + (4 * ceil32(return_data.size)) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = _8949 + _4314 + floor32(_26) + (6 * ceil32(return_data.size)) + 224
                            require return_data.size >= 32
                            _12948 = mem[_8949 + _4314 + floor32(_26) + (4 * ceil32(return_data.size)) + 224]
                            require mem[_8949 + _4314 + floor32(_26) + (4 * ceil32(return_data.size)) + 224] <= 4294967296
                            require mem[_8949 + _4314 + floor32(_26) + (4 * ceil32(return_data.size)) + 224] + 32 <= return_data.size
                            require return_data.size >= mem[_8949 + _4314 + floor32(_26) + (4 * ceil32(return_data.size)) + mem[_8949 + _4314 + floor32(_26) + (4 * ceil32(return_data.size)) + 224] + 224] + mem[_8949 + _4314 + floor32(_26) + (4 * ceil32(return_data.size)) + 224] + 32 and mem[_8949 + _4314 + floor32(_26) + (4 * ceil32(return_data.size)) + mem[_8949 + _4314 + floor32(_26) + (4 * ceil32(return_data.size)) + 224] + 224] <= 4294967296
                            mem[_8949 + _4314 + floor32(_26) + (6 * ceil32(return_data.size)) + 224] = mem[_8949 + _4314 + floor32(_26) + (4 * ceil32(return_data.size)) + mem[_8949 + _4314 + floor32(_26) + (4 * ceil32(return_data.size)) + 224] + 224]
                            _13033 = mem[_8949 + _4314 + floor32(_26) + (4 * ceil32(return_data.size)) + _12948 + 224]
                            mem[_8949 + _4314 + floor32(_26) + (6 * ceil32(return_data.size)) + 256 len ceil32(mem[_8949 + _4314 + floor32(_26) + (4 * ceil32(return_data.size)) + _12948 + 224])] = mem[_8949 + _4314 + floor32(_26) + (4 * ceil32(return_data.size)) + _12948 + 256 len ceil32(mem[_8949 + _4314 + floor32(_26) + (4 * ceil32(return_data.size)) + _12948 + 224])]
                            if not _13033 % 32:
                                if sha3(mem[_4314 + floor32(_26) + (4 * ceil32(return_data.size)) + 224 len mem[_4314 + floor32(_26) + (4 * ceil32(return_data.size)) + 192]]) == sha3(mem[_8949 + _4314 + floor32(_26) + (6 * ceil32(return_data.size)) + 256 len mem[_8949 + _4314 + floor32(_26) + (6 * ceil32(return_data.size)) + 224]]):
                                    if not Mask(112, 0, ext_call.return_data[32]):
                                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if Mask(112, 0, ext_call.return_data[0]):
                                            if not 0 / Mask(112, 0, ext_call.return_data[0]):
                                                if 0 / Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 0 / Mask(112, 0, ext_call.return_data[32]):
                                                    return (0 / 0 / Mask(112, 0, ext_call.return_data[32]))
                                            else:
                                                if 10^18 * 0 / Mask(112, 0, ext_call.return_data[0]) / 0 / Mask(112, 0, ext_call.return_data[0]) != 10^18:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[_13033 + _8949 + _4314 + floor32(_26) + (6 * ceil32(return_data.size)) + 357 len 31]
                                                if 0 / Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 0 / Mask(112, 0, ext_call.return_data[32]):
                                                    return (10^18 * 0 / Mask(112, 0, ext_call.return_data[0]) / 0 / Mask(112, 0, ext_call.return_data[32]))
                                            ('iszero', ('div', 0, ('mask_shl', 112, 0, 0, ('ext_call.return_data', 32, 32))))
                                    else:
                                        if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 10^18:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[_13033 + _8949 + _4314 + floor32(_26) + (6 * ceil32(return_data.size)) + 357 len 31]
                                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if Mask(112, 0, ext_call.return_data[0]):
                                            if not 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                                                if 0 / Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 0 / Mask(112, 0, ext_call.return_data[32]):
                                                    return (0 / 0 / Mask(112, 0, ext_call.return_data[32]))
                                            else:
                                                if 10^18 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) != 10^18:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[_13033 + _8949 + _4314 + floor32(_26) + (6 * ceil32(return_data.size)) + 357 len 31]
                                                if 0 / Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 0 / Mask(112, 0, ext_call.return_data[32]):
                                                    return (10^18 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 0 / Mask(112, 0, ext_call.return_data[32]))
                                            ('iszero', ('div', 0, ('mask_shl', 112, 0, 0, ('ext_call.return_data', 32, 32))))
                                else:
                                    if not Mask(112, 0, ext_call.return_data[0]):
                                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if Mask(112, 0, ext_call.return_data[32]):
                                            if not 0 / Mask(112, 0, ext_call.return_data[32]):
                                                if 0 / Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 0 / Mask(112, 0, ext_call.return_data[32]):
                                                    return (0 / 0 / Mask(112, 0, ext_call.return_data[32]))
                                            else:
                                                if 10^18 * 0 / Mask(112, 0, ext_call.return_data[32]) / 0 / Mask(112, 0, ext_call.return_data[32]) != 10^18:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[_13033 + _8949 + _4314 + floor32(_26) + (6 * ceil32(return_data.size)) + 357 len 31]
                                                if 0 / Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 0 / Mask(112, 0, ext_call.return_data[32]):
                                                    return (10^18 * 0 / Mask(112, 0, ext_call.return_data[32]) / 0 / Mask(112, 0, ext_call.return_data[32]))
                                            ('iszero', ('div', 0, ('mask_shl', 112, 0, 0, ('ext_call.return_data', 32, 32))))
                                    else:
                                        if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 10^18:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[_13033 + _8949 + _4314 + floor32(_26) + (6 * ceil32(return_data.size)) + 357 len 31]
                                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if Mask(112, 0, ext_call.return_data[32]):
                                            if not 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                                                if 0 / Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 0 / Mask(112, 0, ext_call.return_data[32]):
                                                    return (0 / 0 / Mask(112, 0, ext_call.return_data[32]))
                                            else:
                                                if 10^18 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) / 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) != 10^18:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[_13033 + _8949 + _4314 + floor32(_26) + (6 * ceil32(return_data.size)) + 357 len 31]
                                                if 0 / Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 0 / Mask(112, 0, ext_call.return_data[32]):
                                                    return (10^18 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) / 0 / Mask(112, 0, ext_call.return_data[32]))
                                            ('iszero', ('div', 0, ('mask_shl', 112, 0, 0, ('ext_call.return_data', 32, 32))))
                            else:
                                mem[floor32(_13033) + _8949 + _4314 + floor32(_26) + (6 * ceil32(return_data.size)) + 256] = mem[floor32(_13033) + _8949 + _4314 + floor32(_26) + (6 * ceil32(return_data.size)) + -(_13033 % 32) + 288 len _13033 % 32]
                                if sha3(mem[_4314 + floor32(_26) + (4 * ceil32(return_data.size)) + 224 len mem[_4314 + floor32(_26) + (4 * ceil32(return_data.size)) + 192]]) == sha3(mem[_8949 + _4314 + floor32(_26) + (6 * ceil32(return_data.size)) + 256 len mem[_8949 + _4314 + floor32(_26) + (6 * ceil32(return_data.size)) + 224]]):
                                    if not Mask(112, 0, ext_call.return_data[32]):
                                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if Mask(112, 0, ext_call.return_data[0]):
                                            if not 0 / Mask(112, 0, ext_call.return_data[0]):
                                                if 0 / Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 0 / Mask(112, 0, ext_call.return_data[32]):
                                                    return (0 / 0 / Mask(112, 0, ext_call.return_data[32]))
                                            else:
                                                if 10^18 * 0 / Mask(112, 0, ext_call.return_data[0]) / 0 / Mask(112, 0, ext_call.return_data[0]) != 10^18:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[floor32(_13033) + _8949 + _4314 + floor32(_26) + (6 * ceil32(return_data.size)) + 389 len 31]
                                                if 0 / Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 0 / Mask(112, 0, ext_call.return_data[32]):
                                                    return (10^18 * 0 / Mask(112, 0, ext_call.return_data[0]) / 0 / Mask(112, 0, ext_call.return_data[32]))
                                            ('iszero', ('div', 0, ('mask_shl', 112, 0, 0, ('ext_call.return_data', 32, 32))))
                                    else:
                                        if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 10^18:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[floor32(_13033) + _8949 + _4314 + floor32(_26) + (6 * ceil32(return_data.size)) + 389 len 31]
                                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if Mask(112, 0, ext_call.return_data[0]):
                                            if not 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                                                if 0 / Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 0 / Mask(112, 0, ext_call.return_data[32]):
                                                    return (0 / 0 / Mask(112, 0, ext_call.return_data[32]))
                                            else:
                                                if 10^18 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) != 10^18:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[floor32(_13033) + _8949 + _4314 + floor32(_26) + (6 * ceil32(return_data.size)) + 389 len 31]
                                                if 0 / Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 0 / Mask(112, 0, ext_call.return_data[32]):
                                                    return (10^18 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 0 / Mask(112, 0, ext_call.return_data[32]))
                                            ('iszero', ('div', 0, ('mask_shl', 112, 0, 0, ('ext_call.return_data', 32, 32))))
                                else:
                                    if not Mask(112, 0, ext_call.return_data[0]):
                                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if Mask(112, 0, ext_call.return_data[32]):
                                            if not 0 / Mask(112, 0, ext_call.return_data[32]):
                                                if 0 / Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 0 / Mask(112, 0, ext_call.return_data[32]):
                                                    return (0 / 0 / Mask(112, 0, ext_call.return_data[32]))
                                            else:
                                                if 10^18 * 0 / Mask(112, 0, ext_call.return_data[32]) / 0 / Mask(112, 0, ext_call.return_data[32]) != 10^18:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[floor32(_13033) + _8949 + _4314 + floor32(_26) + (6 * ceil32(return_data.size)) + 389 len 31]
                                                if 0 / Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 0 / Mask(112, 0, ext_call.return_data[32]):
                                                    return (10^18 * 0 / Mask(112, 0, ext_call.return_data[32]) / 0 / Mask(112, 0, ext_call.return_data[32]))
                                            ('iszero', ('div', 0, ('mask_shl', 112, 0, 0, ('ext_call.return_data', 32, 32))))
                                    else:
                                        if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 10^18:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[floor32(_13033) + _8949 + _4314 + floor32(_26) + (6 * ceil32(return_data.size)) + 389 len 31]
                                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if Mask(112, 0, ext_call.return_data[32]):
                                            if not 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                                                if 0 / Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 0 / Mask(112, 0, ext_call.return_data[32]):
                                                    return (0 / 0 / Mask(112, 0, ext_call.return_data[32]))
                                            else:
                                                if 10^18 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) / 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) != 10^18:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[floor32(_13033) + _8949 + _4314 + floor32(_26) + (6 * ceil32(return_data.size)) + 389 len 31]
                                                if 0 / Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 0 / Mask(112, 0, ext_call.return_data[32]):
                                                    return (10^18 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) / 0 / Mask(112, 0, ext_call.return_data[32]))
                                            ('iszero', ('div', 0, ('mask_shl', 112, 0, 0, ('ext_call.return_data', 32, 32))))
                        else:
                            mem[floor32(_8949) + _4314 + floor32(_26) + (4 * ceil32(return_data.size)) + 224] = mem[floor32(_8949) + _4314 + floor32(_26) + (4 * ceil32(return_data.size)) + -(_8949 % 32) + 256 len _8949 % 32]
                            mem[floor32(_8949) + _4314 + floor32(_26) + (4 * ceil32(return_data.size)) + 256] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                            require ext_code.size(wNativeAddress)
                            staticcall wNativeAddress.symbol() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[floor32(_8949) + _4314 + floor32(_26) + (4 * ceil32(return_data.size)) + 256 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = floor32(_8949) + _4314 + floor32(_26) + (6 * ceil32(return_data.size)) + 256
                            require return_data.size >= 32
                            _12985 = mem[floor32(_8949) + _4314 + floor32(_26) + (4 * ceil32(return_data.size)) + 256]
                            require mem[floor32(_8949) + _4314 + floor32(_26) + (4 * ceil32(return_data.size)) + 256] <= 4294967296
                            require mem[floor32(_8949) + _4314 + floor32(_26) + (4 * ceil32(return_data.size)) + 256] + 32 <= return_data.size
                            require return_data.size >= mem[floor32(_8949) + _4314 + floor32(_26) + (4 * ceil32(return_data.size)) + mem[floor32(_8949) + _4314 + floor32(_26) + (4 * ceil32(return_data.size)) + 256] + 256] + mem[floor32(_8949) + _4314 + floor32(_26) + (4 * ceil32(return_data.size)) + 256] + 32 and mem[floor32(_8949) + _4314 + floor32(_26) + (4 * ceil32(return_data.size)) + mem[floor32(_8949) + _4314 + floor32(_26) + (4 * ceil32(return_data.size)) + 256] + 256] <= 4294967296
                            mem[floor32(_8949) + _4314 + floor32(_26) + (6 * ceil32(return_data.size)) + 256] = mem[floor32(_8949) + _4314 + floor32(_26) + (4 * ceil32(return_data.size)) + mem[floor32(_8949) + _4314 + floor32(_26) + (4 * ceil32(return_data.size)) + 256] + 256]
                            _13054 = mem[floor32(_8949) + _4314 + floor32(_26) + (4 * ceil32(return_data.size)) + _12985 + 256]
                            mem[floor32(_8949) + _4314 + floor32(_26) + (6 * ceil32(return_data.size)) + 288 len ceil32(mem[floor32(_8949) + _4314 + floor32(_26) + (4 * ceil32(return_data.size)) + _12985 + 256])] = mem[floor32(_8949) + _4314 + floor32(_26) + (4 * ceil32(return_data.size)) + _12985 + 288 len ceil32(mem[floor32(_8949) + _4314 + floor32(_26) + (4 * ceil32(return_data.size)) + _12985 + 256])]
                            if not _13054 % 32:
                                if sha3(mem[_4314 + floor32(_26) + (4 * ceil32(return_data.size)) + 224 len mem[_4314 + floor32(_26) + (4 * ceil32(return_data.size)) + 192]]) == sha3(mem[floor32(_8949) + _4314 + floor32(_26) + (6 * ceil32(return_data.size)) + 288 len mem[floor32(_8949) + _4314 + floor32(_26) + (6 * ceil32(return_data.size)) + 256]]):
                                    if not Mask(112, 0, ext_call.return_data[32]):
                                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if Mask(112, 0, ext_call.return_data[0]):
                                            if not 0 / Mask(112, 0, ext_call.return_data[0]):
                                                if 0 / Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 0 / Mask(112, 0, ext_call.return_data[32]):
                                                    return (0 / 0 / Mask(112, 0, ext_call.return_data[32]))
                                            else:
                                                if 10^18 * 0 / Mask(112, 0, ext_call.return_data[0]) / 0 / Mask(112, 0, ext_call.return_data[0]) != 10^18:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[_13054 + floor32(_8949) + _4314 + floor32(_26) + (6 * ceil32(return_data.size)) + 389 len 31]
                                                if 0 / Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 0 / Mask(112, 0, ext_call.return_data[32]):
                                                    return (10^18 * 0 / Mask(112, 0, ext_call.return_data[0]) / 0 / Mask(112, 0, ext_call.return_data[32]))
                                            ('iszero', ('div', 0, ('mask_shl', 112, 0, 0, ('ext_call.return_data', 32, 32))))
                                    else:
                                        if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 10^18:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[_13054 + floor32(_8949) + _4314 + floor32(_26) + (6 * ceil32(return_data.size)) + 389 len 31]
                                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if Mask(112, 0, ext_call.return_data[0]):
                                            if not 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                                                if 0 / Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 0 / Mask(112, 0, ext_call.return_data[32]):
                                                    return (0 / 0 / Mask(112, 0, ext_call.return_data[32]))
                                            else:
                                                if 10^18 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) != 10^18:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[_13054 + floor32(_8949) + _4314 + floor32(_26) + (6 * ceil32(return_data.size)) + 389 len 31]
                                                if 0 / Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 0 / Mask(112, 0, ext_call.return_data[32]):
                                                    return (10^18 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 0 / Mask(112, 0, ext_call.return_data[32]))
                                            ('iszero', ('div', 0, ('mask_shl', 112, 0, 0, ('ext_call.return_data', 32, 32))))
                                else:
                                    if not Mask(112, 0, ext_call.return_data[0]):
                                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if Mask(112, 0, ext_call.return_data[32]):
                                            if not 0 / Mask(112, 0, ext_call.return_data[32]):
                                                if 0 / Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 0 / Mask(112, 0, ext_call.return_data[32]):
                                                    return (0 / 0 / Mask(112, 0, ext_call.return_data[32]))
                                            else:
                                                if 10^18 * 0 / Mask(112, 0, ext_call.return_data[32]) / 0 / Mask(112, 0, ext_call.return_data[32]) != 10^18:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[_13054 + floor32(_8949) + _4314 + floor32(_26) + (6 * ceil32(return_data.size)) + 389 len 31]
                                                if 0 / Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 0 / Mask(112, 0, ext_call.return_data[32]):
                                                    return (10^18 * 0 / Mask(112, 0, ext_call.return_data[32]) / 0 / Mask(112, 0, ext_call.return_data[32]))
                                            ('iszero', ('div', 0, ('mask_shl', 112, 0, 0, ('ext_call.return_data', 32, 32))))
                                    else:
                                        if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 10^18:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[_13054 + floor32(_8949) + _4314 + floor32(_26) + (6 * ceil32(return_data.size)) + 389 len 31]
                                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if Mask(112, 0, ext_call.return_data[32]):
                                            if not 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                                                if 0 / Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 0 / Mask(112, 0, ext_call.return_data[32]):
                                                    return (0 / 0 / Mask(112, 0, ext_call.return_data[32]))
                                            else:
                                                if 10^18 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) / 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) != 10^18:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[_13054 + floor32(_8949) + _4314 + floor32(_26) + (6 * ceil32(return_data.size)) + 389 len 31]
                                                if 0 / Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 0 / Mask(112, 0, ext_call.return_data[32]):
                                                    return (10^18 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) / 0 / Mask(112, 0, ext_call.return_data[32]))
                                            ('iszero', ('div', 0, ('mask_shl', 112, 0, 0, ('ext_call.return_data', 32, 32))))
                            else:
                                mem[floor32(_13054) + floor32(_8949) + _4314 + floor32(_26) + (6 * ceil32(return_data.size)) + 288] = mem[floor32(_13054) + floor32(_8949) + _4314 + floor32(_26) + (6 * ceil32(return_data.size)) + -(_13054 % 32) + 320 len _13054 % 32]
                                if sha3(mem[_4314 + floor32(_26) + (4 * ceil32(return_data.size)) + 224 len mem[_4314 + floor32(_26) + (4 * ceil32(return_data.size)) + 192]]) == sha3(mem[floor32(_8949) + _4314 + floor32(_26) + (6 * ceil32(return_data.size)) + 288 len mem[floor32(_8949) + _4314 + floor32(_26) + (6 * ceil32(return_data.size)) + 256]]):
                                    if not Mask(112, 0, ext_call.return_data[32]):
                                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if Mask(112, 0, ext_call.return_data[0]):
                                            if not 0 / Mask(112, 0, ext_call.return_data[0]):
                                                if 0 / Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 0 / Mask(112, 0, ext_call.return_data[32]):
                                                    return (0 / 0 / Mask(112, 0, ext_call.return_data[32]))
                                            else:
                                                if 10^18 * 0 / Mask(112, 0, ext_call.return_data[0]) / 0 / Mask(112, 0, ext_call.return_data[0]) != 10^18:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[floor32(_13054) + floor32(_8949) + _4314 + floor32(_26) + (6 * ceil32(return_data.size)) + 421 len 31]
                                                if 0 / Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 0 / Mask(112, 0, ext_call.return_data[32]):
                                                    return (10^18 * 0 / Mask(112, 0, ext_call.return_data[0]) / 0 / Mask(112, 0, ext_call.return_data[32]))
                                            ('iszero', ('div', 0, ('mask_shl', 112, 0, 0, ('ext_call.return_data', 32, 32))))
                                    else:
                                        if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 10^18:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[floor32(_13054) + floor32(_8949) + _4314 + floor32(_26) + (6 * ceil32(return_data.size)) + 421 len 31]
                                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if Mask(112, 0, ext_call.return_data[0]):
                                            if not 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                                                if 0 / Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 0 / Mask(112, 0, ext_call.return_data[32]):
                                                    return (0 / 0 / Mask(112, 0, ext_call.return_data[32]))
                                            else:
                                                if 10^18 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) != 10^18:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[floor32(_13054) + floor32(_8949) + _4314 + floor32(_26) + (6 * ceil32(return_data.size)) + 421 len 31]
                                                if 0 / Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 0 / Mask(112, 0, ext_call.return_data[32]):
                                                    return (10^18 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 0 / Mask(112, 0, ext_call.return_data[32]))
                                            ('iszero', ('div', 0, ('mask_shl', 112, 0, 0, ('ext_call.return_data', 32, 32))))
                                else:
                                    if not Mask(112, 0, ext_call.return_data[0]):
                                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if Mask(112, 0, ext_call.return_data[32]):
                                            if not 0 / Mask(112, 0, ext_call.return_data[32]):
                                                if 0 / Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 0 / Mask(112, 0, ext_call.return_data[32]):
                                                    return (0 / 0 / Mask(112, 0, ext_call.return_data[32]))
                                            else:
                                                if 10^18 * 0 / Mask(112, 0, ext_call.return_data[32]) / 0 / Mask(112, 0, ext_call.return_data[32]) != 10^18:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[floor32(_13054) + floor32(_8949) + _4314 + floor32(_26) + (6 * ceil32(return_data.size)) + 421 len 31]
                                                if 0 / Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 0 / Mask(112, 0, ext_call.return_data[32]):
                                                    return (10^18 * 0 / Mask(112, 0, ext_call.return_data[32]) / 0 / Mask(112, 0, ext_call.return_data[32]))
                                            ('iszero', ('div', 0, ('mask_shl', 112, 0, 0, ('ext_call.return_data', 32, 32))))
                                    else:
                                        if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 10^18:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[floor32(_13054) + floor32(_8949) + _4314 + floor32(_26) + (6 * ceil32(return_data.size)) + 421 len 31]
                                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if Mask(112, 0, ext_call.return_data[32]):
                                            if not 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                                                if 0 / Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 0 / Mask(112, 0, ext_call.return_data[32]):
                                                    return (0 / 0 / Mask(112, 0, ext_call.return_data[32]))
                                            else:
                                                if 10^18 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) / 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) != 10^18:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[floor32(_13054) + floor32(_8949) + _4314 + floor32(_26) + (6 * ceil32(return_data.size)) + 421 len 31]
                                                if 0 / Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 0 / Mask(112, 0, ext_call.return_data[32]):
                                                    return (10^18 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) / 0 / Mask(112, 0, ext_call.return_data[32]))
                                            ('iszero', ('div', 0, ('mask_shl', 112, 0, 0, ('ext_call.return_data', 32, 32))))
                else:
                    if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 10^18:
                        revert with 0, 
                                    32,
                                    33,
                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[_4314 + floor32(_26) + (2 * ceil32(return_data.size)) + 293 len 31]
                    if Mask(112, 0, ext_call.return_data[32]) <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    if Mask(112, 0, ext_call.return_data[32]):
                        require ext_code.size(sub_d4384dbeAddress)
                        staticcall sub_d4384dbeAddress.getPair(address arg1, address arg2) with:
                                gas gas_remaining wei
                               args wNativeAddress, usdcTokenAddress
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).getReserves() with:
                                gas gas_remaining wei
                        mem[_4314 + floor32(_26) + (2 * ceil32(return_data.size)) + 192 len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[_4314 + floor32(_26) + (2 * ceil32(return_data.size)) + 192] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).symbol() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_4314 + floor32(_26) + (2 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = _4314 + floor32(_26) + (4 * ceil32(return_data.size)) + 192
                        require return_data.size >= 32
                        _8922 = mem[_4314 + floor32(_26) + (2 * ceil32(return_data.size)) + 192]
                        require mem[_4314 + floor32(_26) + (2 * ceil32(return_data.size)) + 192] <= 4294967296
                        require mem[_4314 + floor32(_26) + (2 * ceil32(return_data.size)) + 192] + 32 <= return_data.size
                        require return_data.size >= mem[_4314 + floor32(_26) + (2 * ceil32(return_data.size)) + mem[_4314 + floor32(_26) + (2 * ceil32(return_data.size)) + 192] + 192] + mem[_4314 + floor32(_26) + (2 * ceil32(return_data.size)) + 192] + 32 and mem[_4314 + floor32(_26) + (2 * ceil32(return_data.size)) + mem[_4314 + floor32(_26) + (2 * ceil32(return_data.size)) + 192] + 192] <= 4294967296
                        mem[_4314 + floor32(_26) + (4 * ceil32(return_data.size)) + 192] = mem[_4314 + floor32(_26) + (2 * ceil32(return_data.size)) + mem[_4314 + floor32(_26) + (2 * ceil32(return_data.size)) + 192] + 192]
                        _8959 = mem[_4314 + floor32(_26) + (2 * ceil32(return_data.size)) + _8922 + 192]
                        mem[_4314 + floor32(_26) + (4 * ceil32(return_data.size)) + 224 len ceil32(mem[_4314 + floor32(_26) + (2 * ceil32(return_data.size)) + _8922 + 192])] = mem[_4314 + floor32(_26) + (2 * ceil32(return_data.size)) + _8922 + 224 len ceil32(mem[_4314 + floor32(_26) + (2 * ceil32(return_data.size)) + _8922 + 192])]
                        if not _8959 % 32:
                            mem[_8959 + _4314 + floor32(_26) + (4 * ceil32(return_data.size)) + 224] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                            require ext_code.size(wNativeAddress)
                            staticcall wNativeAddress.symbol() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[_8959 + _4314 + floor32(_26) + (4 * ceil32(return_data.size)) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = _8959 + _4314 + floor32(_26) + (6 * ceil32(return_data.size)) + 224
                            require return_data.size >= 32
                            _12945 = mem[_8959 + _4314 + floor32(_26) + (4 * ceil32(return_data.size)) + 224]
                            require mem[_8959 + _4314 + floor32(_26) + (4 * ceil32(return_data.size)) + 224] <= 4294967296
                            require mem[_8959 + _4314 + floor32(_26) + (4 * ceil32(return_data.size)) + 224] + 32 <= return_data.size
                            require return_data.size >= mem[_8959 + _4314 + floor32(_26) + (4 * ceil32(return_data.size)) + mem[_8959 + _4314 + floor32(_26) + (4 * ceil32(return_data.size)) + 224] + 224] + mem[_8959 + _4314 + floor32(_26) + (4 * ceil32(return_data.size)) + 224] + 32 and mem[_8959 + _4314 + floor32(_26) + (4 * ceil32(return_data.size)) + mem[_8959 + _4314 + floor32(_26) + (4 * ceil32(return_data.size)) + 224] + 224] <= 4294967296
                            mem[_8959 + _4314 + floor32(_26) + (6 * ceil32(return_data.size)) + 224] = mem[_8959 + _4314 + floor32(_26) + (4 * ceil32(return_data.size)) + mem[_8959 + _4314 + floor32(_26) + (4 * ceil32(return_data.size)) + 224] + 224]
                            _13031 = mem[_8959 + _4314 + floor32(_26) + (4 * ceil32(return_data.size)) + _12945 + 224]
                            mem[_8959 + _4314 + floor32(_26) + (6 * ceil32(return_data.size)) + 256 len ceil32(mem[_8959 + _4314 + floor32(_26) + (4 * ceil32(return_data.size)) + _12945 + 224])] = mem[_8959 + _4314 + floor32(_26) + (4 * ceil32(return_data.size)) + _12945 + 256 len ceil32(mem[_8959 + _4314 + floor32(_26) + (4 * ceil32(return_data.size)) + _12945 + 224])]
                            if not _13031 % 32:
                                if sha3(mem[_4314 + floor32(_26) + (4 * ceil32(return_data.size)) + 224 len mem[_4314 + floor32(_26) + (4 * ceil32(return_data.size)) + 192]]) == sha3(mem[_8959 + _4314 + floor32(_26) + (6 * ceil32(return_data.size)) + 256 len mem[_8959 + _4314 + floor32(_26) + (6 * ceil32(return_data.size)) + 224]]):
                                    if not Mask(112, 0, ext_call.return_data[32]):
                                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if Mask(112, 0, ext_call.return_data[0]):
                                            if not 0 / Mask(112, 0, ext_call.return_data[0]):
                                                if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                                                    return (0 / 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]))
                                            else:
                                                if 10^18 * 0 / Mask(112, 0, ext_call.return_data[0]) / 0 / Mask(112, 0, ext_call.return_data[0]) != 10^18:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[_13031 + _8959 + _4314 + floor32(_26) + (6 * ceil32(return_data.size)) + 357 len 31]
                                                if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                                                    return (10^18 * 0 / Mask(112, 0, ext_call.return_data[0]) / 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]))
                                            ('iszero', ('div', ('mul', 1000000000000000000, ('mask_shl', 112, 0, 0, ('ext_call.return_data', 0, 32))), ('mask_shl', 112, 0, 0, ('ext_call.return_data', 32, 32))))
                                    else:
                                        if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 10^18:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[_13031 + _8959 + _4314 + floor32(_26) + (6 * ceil32(return_data.size)) + 357 len 31]
                                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if Mask(112, 0, ext_call.return_data[0]):
                                            if not 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                                                if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                                                    return (0 / 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]))
                                            else:
                                                if 10^18 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) != 10^18:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[_13031 + _8959 + _4314 + floor32(_26) + (6 * ceil32(return_data.size)) + 357 len 31]
                                                if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                                                    return (10^18 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]))
                                            ('iszero', ('div', ('mul', 1000000000000000000, ('mask_shl', 112, 0, 0, ('ext_call.return_data', 0, 32))), ('mask_shl', 112, 0, 0, ('ext_call.return_data', 32, 32))))
                                else:
                                    if not Mask(112, 0, ext_call.return_data[0]):
                                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if Mask(112, 0, ext_call.return_data[32]):
                                            if not 0 / Mask(112, 0, ext_call.return_data[32]):
                                                if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                                                    return (0 / 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]))
                                            else:
                                                if 10^18 * 0 / Mask(112, 0, ext_call.return_data[32]) / 0 / Mask(112, 0, ext_call.return_data[32]) != 10^18:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[_13031 + _8959 + _4314 + floor32(_26) + (6 * ceil32(return_data.size)) + 357 len 31]
                                                if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                                                    return (10^18 * 0 / Mask(112, 0, ext_call.return_data[32]) / 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]))
                                            ('iszero', ('div', ('mul', 1000000000000000000, ('mask_shl', 112, 0, 0, ('ext_call.return_data', 0, 32))), ('mask_shl', 112, 0, 0, ('ext_call.return_data', 32, 32))))
                                    else:
                                        if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 10^18:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[_13031 + _8959 + _4314 + floor32(_26) + (6 * ceil32(return_data.size)) + 357 len 31]
                                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if Mask(112, 0, ext_call.return_data[32]):
                                            if not 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                                                if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                                                    return (0 / 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]))
                                            else:
                                                if 10^18 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) / 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) != 10^18:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[_13031 + _8959 + _4314 + floor32(_26) + (6 * ceil32(return_data.size)) + 357 len 31]
                                                if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                                                    return (10^18 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) / 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]))
                                            ('iszero', ('div', ('mul', 1000000000000000000, ('mask_shl', 112, 0, 0, ('ext_call.return_data', 0, 32))), ('mask_shl', 112, 0, 0, ('ext_call.return_data', 32, 32))))
                            else:
                                mem[floor32(_13031) + _8959 + _4314 + floor32(_26) + (6 * ceil32(return_data.size)) + 256] = mem[floor32(_13031) + _8959 + _4314 + floor32(_26) + (6 * ceil32(return_data.size)) + -(_13031 % 32) + 288 len _13031 % 32]
                                if sha3(mem[_4314 + floor32(_26) + (4 * ceil32(return_data.size)) + 224 len mem[_4314 + floor32(_26) + (4 * ceil32(return_data.size)) + 192]]) == sha3(mem[_8959 + _4314 + floor32(_26) + (6 * ceil32(return_data.size)) + 256 len mem[_8959 + _4314 + floor32(_26) + (6 * ceil32(return_data.size)) + 224]]):
                                    if not Mask(112, 0, ext_call.return_data[32]):
                                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if Mask(112, 0, ext_call.return_data[0]):
                                            if not 0 / Mask(112, 0, ext_call.return_data[0]):
                                                if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                                                    return (0 / 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]))
                                            else:
                                                if 10^18 * 0 / Mask(112, 0, ext_call.return_data[0]) / 0 / Mask(112, 0, ext_call.return_data[0]) != 10^18:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[floor32(_13031) + _8959 + _4314 + floor32(_26) + (6 * ceil32(return_data.size)) + 389 len 31]
                                                if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                                                    return (10^18 * 0 / Mask(112, 0, ext_call.return_data[0]) / 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]))
                                            ('iszero', ('div', ('mul', 1000000000000000000, ('mask_shl', 112, 0, 0, ('ext_call.return_data', 0, 32))), ('mask_shl', 112, 0, 0, ('ext_call.return_data', 32, 32))))
                                    else:
                                        if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 10^18:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[floor32(_13031) + _8959 + _4314 + floor32(_26) + (6 * ceil32(return_data.size)) + 389 len 31]
                                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if Mask(112, 0, ext_call.return_data[0]):
                                            if not 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                                                if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                                                    return (0 / 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]))
                                            else:
                                                if 10^18 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) != 10^18:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[floor32(_13031) + _8959 + _4314 + floor32(_26) + (6 * ceil32(return_data.size)) + 389 len 31]
                                                if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                                                    return (10^18 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]))
                                            ('iszero', ('div', ('mul', 1000000000000000000, ('mask_shl', 112, 0, 0, ('ext_call.return_data', 0, 32))), ('mask_shl', 112, 0, 0, ('ext_call.return_data', 32, 32))))
                                else:
                                    if not Mask(112, 0, ext_call.return_data[0]):
                                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if Mask(112, 0, ext_call.return_data[32]):
                                            if not 0 / Mask(112, 0, ext_call.return_data[32]):
                                                if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                                                    return (0 / 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]))
                                            else:
                                                if 10^18 * 0 / Mask(112, 0, ext_call.return_data[32]) / 0 / Mask(112, 0, ext_call.return_data[32]) != 10^18:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[floor32(_13031) + _8959 + _4314 + floor32(_26) + (6 * ceil32(return_data.size)) + 389 len 31]
                                                if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                                                    return (10^18 * 0 / Mask(112, 0, ext_call.return_data[32]) / 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]))
                                            ('iszero', ('div', ('mul', 1000000000000000000, ('mask_shl', 112, 0, 0, ('ext_call.return_data', 0, 32))), ('mask_shl', 112, 0, 0, ('ext_call.return_data', 32, 32))))
                                    else:
                                        if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 10^18:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[floor32(_13031) + _8959 + _4314 + floor32(_26) + (6 * ceil32(return_data.size)) + 389 len 31]
                                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if Mask(112, 0, ext_call.return_data[32]):
                                            if not 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                                                if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                                                    return (0 / 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]))
                                            else:
                                                if 10^18 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) / 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) != 10^18:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[floor32(_13031) + _8959 + _4314 + floor32(_26) + (6 * ceil32(return_data.size)) + 389 len 31]
                                                if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                                                    return (10^18 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) / 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]))
                                            ('iszero', ('div', ('mul', 1000000000000000000, ('mask_shl', 112, 0, 0, ('ext_call.return_data', 0, 32))), ('mask_shl', 112, 0, 0, ('ext_call.return_data', 32, 32))))
                        else:
                            mem[floor32(_8959) + _4314 + floor32(_26) + (4 * ceil32(return_data.size)) + 224] = mem[floor32(_8959) + _4314 + floor32(_26) + (4 * ceil32(return_data.size)) + -(_8959 % 32) + 256 len _8959 % 32]
                            mem[floor32(_8959) + _4314 + floor32(_26) + (4 * ceil32(return_data.size)) + 256] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                            require ext_code.size(wNativeAddress)
                            staticcall wNativeAddress.symbol() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[floor32(_8959) + _4314 + floor32(_26) + (4 * ceil32(return_data.size)) + 256 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = floor32(_8959) + _4314 + floor32(_26) + (6 * ceil32(return_data.size)) + 256
                            require return_data.size >= 32
                            _12983 = mem[floor32(_8959) + _4314 + floor32(_26) + (4 * ceil32(return_data.size)) + 256]
                            require mem[floor32(_8959) + _4314 + floor32(_26) + (4 * ceil32(return_data.size)) + 256] <= 4294967296
                            require mem[floor32(_8959) + _4314 + floor32(_26) + (4 * ceil32(return_data.size)) + 256] + 32 <= return_data.size
                            require return_data.size >= mem[floor32(_8959) + _4314 + floor32(_26) + (4 * ceil32(return_data.size)) + mem[floor32(_8959) + _4314 + floor32(_26) + (4 * ceil32(return_data.size)) + 256] + 256] + mem[floor32(_8959) + _4314 + floor32(_26) + (4 * ceil32(return_data.size)) + 256] + 32 and mem[floor32(_8959) + _4314 + floor32(_26) + (4 * ceil32(return_data.size)) + mem[floor32(_8959) + _4314 + floor32(_26) + (4 * ceil32(return_data.size)) + 256] + 256] <= 4294967296
                            mem[floor32(_8959) + _4314 + floor32(_26) + (6 * ceil32(return_data.size)) + 256] = mem[floor32(_8959) + _4314 + floor32(_26) + (4 * ceil32(return_data.size)) + mem[floor32(_8959) + _4314 + floor32(_26) + (4 * ceil32(return_data.size)) + 256] + 256]
                            _13053 = mem[floor32(_8959) + _4314 + floor32(_26) + (4 * ceil32(return_data.size)) + _12983 + 256]
                            mem[floor32(_8959) + _4314 + floor32(_26) + (6 * ceil32(return_data.size)) + 288 len ceil32(mem[floor32(_8959) + _4314 + floor32(_26) + (4 * ceil32(return_data.size)) + _12983 + 256])] = mem[floor32(_8959) + _4314 + floor32(_26) + (4 * ceil32(return_data.size)) + _12983 + 288 len ceil32(mem[floor32(_8959) + _4314 + floor32(_26) + (4 * ceil32(return_data.size)) + _12983 + 256])]
                            if not _13053 % 32:
                                if sha3(mem[_4314 + floor32(_26) + (4 * ceil32(return_data.size)) + 224 len mem[_4314 + floor32(_26) + (4 * ceil32(return_data.size)) + 192]]) == sha3(mem[floor32(_8959) + _4314 + floor32(_26) + (6 * ceil32(return_data.size)) + 288 len mem[floor32(_8959) + _4314 + floor32(_26) + (6 * ceil32(return_data.size)) + 256]]):
                                    if not Mask(112, 0, ext_call.return_data[32]):
                                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if Mask(112, 0, ext_call.return_data[0]):
                                            if not 0 / Mask(112, 0, ext_call.return_data[0]):
                                                if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                                                    return (0 / 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]))
                                            else:
                                                if 10^18 * 0 / Mask(112, 0, ext_call.return_data[0]) / 0 / Mask(112, 0, ext_call.return_data[0]) != 10^18:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[_13053 + floor32(_8959) + _4314 + floor32(_26) + (6 * ceil32(return_data.size)) + 389 len 31]
                                                if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                                                    return (10^18 * 0 / Mask(112, 0, ext_call.return_data[0]) / 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]))
                                            ('iszero', ('div', ('mul', 1000000000000000000, ('mask_shl', 112, 0, 0, ('ext_call.return_data', 0, 32))), ('mask_shl', 112, 0, 0, ('ext_call.return_data', 32, 32))))
                                    else:
                                        if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 10^18:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[_13053 + floor32(_8959) + _4314 + floor32(_26) + (6 * ceil32(return_data.size)) + 389 len 31]
                                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if Mask(112, 0, ext_call.return_data[0]):
                                            if not 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                                                if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                                                    return (0 / 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]))
                                            else:
                                                if 10^18 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) != 10^18:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[_13053 + floor32(_8959) + _4314 + floor32(_26) + (6 * ceil32(return_data.size)) + 389 len 31]
                                                if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                                                    return (10^18 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]))
                                            ('iszero', ('div', ('mul', 1000000000000000000, ('mask_shl', 112, 0, 0, ('ext_call.return_data', 0, 32))), ('mask_shl', 112, 0, 0, ('ext_call.return_data', 32, 32))))
                                else:
                                    if not Mask(112, 0, ext_call.return_data[0]):
                                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if Mask(112, 0, ext_call.return_data[32]):
                                            if not 0 / Mask(112, 0, ext_call.return_data[32]):
                                                if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                                                    return (0 / 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]))
                                            else:
                                                if 10^18 * 0 / Mask(112, 0, ext_call.return_data[32]) / 0 / Mask(112, 0, ext_call.return_data[32]) != 10^18:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[_13053 + floor32(_8959) + _4314 + floor32(_26) + (6 * ceil32(return_data.size)) + 389 len 31]
                                                if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                                                    return (10^18 * 0 / Mask(112, 0, ext_call.return_data[32]) / 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]))
                                            ('iszero', ('div', ('mul', 1000000000000000000, ('mask_shl', 112, 0, 0, ('ext_call.return_data', 0, 32))), ('mask_shl', 112, 0, 0, ('ext_call.return_data', 32, 32))))
                                    else:
                                        if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 10^18:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[_13053 + floor32(_8959) + _4314 + floor32(_26) + (6 * ceil32(return_data.size)) + 389 len 31]
                                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if Mask(112, 0, ext_call.return_data[32]):
                                            if not 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                                                if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                                                    return (0 / 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]))
                                            else:
                                                if 10^18 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) / 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) != 10^18:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[_13053 + floor32(_8959) + _4314 + floor32(_26) + (6 * ceil32(return_data.size)) + 389 len 31]
                                                if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                                                    return (10^18 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) / 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]))
                                            ('iszero', ('div', ('mul', 1000000000000000000, ('mask_shl', 112, 0, 0, ('ext_call.return_data', 0, 32))), ('mask_shl', 112, 0, 0, ('ext_call.return_data', 32, 32))))
                            else:
                                mem[floor32(_13053) + floor32(_8959) + _4314 + floor32(_26) + (6 * ceil32(return_data.size)) + 288] = mem[floor32(_13053) + floor32(_8959) + _4314 + floor32(_26) + (6 * ceil32(return_data.size)) + -(_13053 % 32) + 320 len _13053 % 32]
                                if sha3(mem[_4314 + floor32(_26) + (4 * ceil32(return_data.size)) + 224 len mem[_4314 + floor32(_26) + (4 * ceil32(return_data.size)) + 192]]) == sha3(mem[floor32(_8959) + _4314 + floor32(_26) + (6 * ceil32(return_data.size)) + 288 len mem[floor32(_8959) + _4314 + floor32(_26) + (6 * ceil32(return_data.size)) + 256]]):
                                    if not Mask(112, 0, ext_call.return_data[32]):
                                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if Mask(112, 0, ext_call.return_data[0]):
                                            if not 0 / Mask(112, 0, ext_call.return_data[0]):
                                                if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                                                    return (0 / 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]))
                                            else:
                                                if 10^18 * 0 / Mask(112, 0, ext_call.return_data[0]) / 0 / Mask(112, 0, ext_call.return_data[0]) != 10^18:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[floor32(_13053) + floor32(_8959) + _4314 + floor32(_26) + (6 * ceil32(return_data.size)) + 421 len 31]
                                                if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                                                    return (10^18 * 0 / Mask(112, 0, ext_call.return_data[0]) / 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]))
                                            ('iszero', ('div', ('mul', 1000000000000000000, ('mask_shl', 112, 0, 0, ('ext_call.return_data', 0, 32))), ('mask_shl', 112, 0, 0, ('ext_call.return_data', 32, 32))))
                                    else:
                                        if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 10^18:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[floor32(_13053) + floor32(_8959) + _4314 + floor32(_26) + (6 * ceil32(return_data.size)) + 421 len 31]
                                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if Mask(112, 0, ext_call.return_data[0]):
                                            if not 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                                                if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                                                    return (0 / 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]))
                                            else:
                                                if 10^18 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) != 10^18:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[floor32(_13053) + floor32(_8959) + _4314 + floor32(_26) + (6 * ceil32(return_data.size)) + 421 len 31]
                                                if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                                                    return (10^18 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]))
                                            ('iszero', ('div', ('mul', 1000000000000000000, ('mask_shl', 112, 0, 0, ('ext_call.return_data', 0, 32))), ('mask_shl', 112, 0, 0, ('ext_call.return_data', 32, 32))))
                                else:
                                    if not Mask(112, 0, ext_call.return_data[0]):
                                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if Mask(112, 0, ext_call.return_data[32]):
                                            if not 0 / Mask(112, 0, ext_call.return_data[32]):
                                                if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                                                    return (0 / 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]))
                                            else:
                                                if 10^18 * 0 / Mask(112, 0, ext_call.return_data[32]) / 0 / Mask(112, 0, ext_call.return_data[32]) != 10^18:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[floor32(_13053) + floor32(_8959) + _4314 + floor32(_26) + (6 * ceil32(return_data.size)) + 421 len 31]
                                                if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                                                    return (10^18 * 0 / Mask(112, 0, ext_call.return_data[32]) / 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]))
                                            ('iszero', ('div', ('mul', 1000000000000000000, ('mask_shl', 112, 0, 0, ('ext_call.return_data', 0, 32))), ('mask_shl', 112, 0, 0, ('ext_call.return_data', 32, 32))))
                                    else:
                                        if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 10^18:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[floor32(_13053) + floor32(_8959) + _4314 + floor32(_26) + (6 * ceil32(return_data.size)) + 421 len 31]
                                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if Mask(112, 0, ext_call.return_data[32]):
                                            if not 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                                                if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                                                    return (0 / 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]))
                                            else:
                                                if 10^18 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) / 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) != 10^18:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[floor32(_13053) + floor32(_8959) + _4314 + floor32(_26) + (6 * ceil32(return_data.size)) + 421 len 31]
                                                if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                                                    return (10^18 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) / 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]))
                                            ('iszero', ('div', ('mul', 1000000000000000000, ('mask_shl', 112, 0, 0, ('ext_call.return_data', 0, 32))), ('mask_shl', 112, 0, 0, ('ext_call.return_data', 32, 32))))
        else:
            mem[floor32(_4314) + floor32(_26) + (2 * ceil32(return_data.size)) + 192] = mem[floor32(_4314) + floor32(_26) + (2 * ceil32(return_data.size)) + -(_4314 % 32) + 224 len _4314 % 32]
            if sha3(mem[ceil32(return_data.size) + 128 len mem[ceil32(return_data.size) + 96]]) == sha3(mem[floor32(_26) + (2 * ceil32(return_data.size)) + 192 len mem[floor32(_26) + (2 * ceil32(return_data.size)) + 160]]):
                if not Mask(112, 0, ext_call.return_data[32]):
                    if Mask(112, 0, ext_call.return_data[0]) <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    if Mask(112, 0, ext_call.return_data[0]):
                        require ext_code.size(sub_d4384dbeAddress)
                        staticcall sub_d4384dbeAddress.getPair(address arg1, address arg2) with:
                                gas gas_remaining wei
                               args wNativeAddress, usdcTokenAddress
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).getReserves() with:
                                gas gas_remaining wei
                        mem[floor32(_4314) + floor32(_26) + (2 * ceil32(return_data.size)) + 224 len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[floor32(_4314) + floor32(_26) + (2 * ceil32(return_data.size)) + 224] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).symbol() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[floor32(_4314) + floor32(_26) + (2 * ceil32(return_data.size)) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = floor32(_4314) + floor32(_26) + (4 * ceil32(return_data.size)) + 224
                        require return_data.size >= 32
                        _8910 = mem[floor32(_4314) + floor32(_26) + (2 * ceil32(return_data.size)) + 224]
                        require mem[floor32(_4314) + floor32(_26) + (2 * ceil32(return_data.size)) + 224] <= 4294967296
                        require mem[floor32(_4314) + floor32(_26) + (2 * ceil32(return_data.size)) + 224] + 32 <= return_data.size
                        require return_data.size >= mem[floor32(_4314) + floor32(_26) + (2 * ceil32(return_data.size)) + mem[floor32(_4314) + floor32(_26) + (2 * ceil32(return_data.size)) + 224] + 224] + mem[floor32(_4314) + floor32(_26) + (2 * ceil32(return_data.size)) + 224] + 32 and mem[floor32(_4314) + floor32(_26) + (2 * ceil32(return_data.size)) + mem[floor32(_4314) + floor32(_26) + (2 * ceil32(return_data.size)) + 224] + 224] <= 4294967296
                        mem[floor32(_4314) + floor32(_26) + (4 * ceil32(return_data.size)) + 224] = mem[floor32(_4314) + floor32(_26) + (2 * ceil32(return_data.size)) + mem[floor32(_4314) + floor32(_26) + (2 * ceil32(return_data.size)) + 224] + 224]
                        _8951 = mem[floor32(_4314) + floor32(_26) + (2 * ceil32(return_data.size)) + _8910 + 224]
                        mem[floor32(_4314) + floor32(_26) + (4 * ceil32(return_data.size)) + 256 len ceil32(mem[floor32(_4314) + floor32(_26) + (2 * ceil32(return_data.size)) + _8910 + 224])] = mem[floor32(_4314) + floor32(_26) + (2 * ceil32(return_data.size)) + _8910 + 256 len ceil32(mem[floor32(_4314) + floor32(_26) + (2 * ceil32(return_data.size)) + _8910 + 224])]
                        if not _8951 % 32:
                            mem[_8951 + floor32(_4314) + floor32(_26) + (4 * ceil32(return_data.size)) + 256] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                            require ext_code.size(wNativeAddress)
                            staticcall wNativeAddress.symbol() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[_8951 + floor32(_4314) + floor32(_26) + (4 * ceil32(return_data.size)) + 256 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = _8951 + floor32(_4314) + floor32(_26) + (6 * ceil32(return_data.size)) + 256
                            require return_data.size >= 32
                            _12954 = mem[_8951 + floor32(_4314) + floor32(_26) + (4 * ceil32(return_data.size)) + 256]
                            require mem[_8951 + floor32(_4314) + floor32(_26) + (4 * ceil32(return_data.size)) + 256] <= 4294967296
                            require mem[_8951 + floor32(_4314) + floor32(_26) + (4 * ceil32(return_data.size)) + 256] + 32 <= return_data.size
                            require return_data.size >= mem[_8951 + floor32(_4314) + floor32(_26) + (4 * ceil32(return_data.size)) + mem[_8951 + floor32(_4314) + floor32(_26) + (4 * ceil32(return_data.size)) + 256] + 256] + mem[_8951 + floor32(_4314) + floor32(_26) + (4 * ceil32(return_data.size)) + 256] + 32 and mem[_8951 + floor32(_4314) + floor32(_26) + (4 * ceil32(return_data.size)) + mem[_8951 + floor32(_4314) + floor32(_26) + (4 * ceil32(return_data.size)) + 256] + 256] <= 4294967296
                            mem[_8951 + floor32(_4314) + floor32(_26) + (6 * ceil32(return_data.size)) + 256] = mem[_8951 + floor32(_4314) + floor32(_26) + (4 * ceil32(return_data.size)) + mem[_8951 + floor32(_4314) + floor32(_26) + (4 * ceil32(return_data.size)) + 256] + 256]
                            _13037 = mem[_8951 + floor32(_4314) + floor32(_26) + (4 * ceil32(return_data.size)) + _12954 + 256]
                            mem[_8951 + floor32(_4314) + floor32(_26) + (6 * ceil32(return_data.size)) + 288 len ceil32(mem[_8951 + floor32(_4314) + floor32(_26) + (4 * ceil32(return_data.size)) + _12954 + 256])] = mem[_8951 + floor32(_4314) + floor32(_26) + (4 * ceil32(return_data.size)) + _12954 + 288 len ceil32(mem[_8951 + floor32(_4314) + floor32(_26) + (4 * ceil32(return_data.size)) + _12954 + 256])]
                            if not _13037 % 32:
                                if sha3(mem[floor32(_4314) + floor32(_26) + (4 * ceil32(return_data.size)) + 256 len mem[floor32(_4314) + floor32(_26) + (4 * ceil32(return_data.size)) + 224]]) == sha3(mem[_8951 + floor32(_4314) + floor32(_26) + (6 * ceil32(return_data.size)) + 288 len mem[_8951 + floor32(_4314) + floor32(_26) + (6 * ceil32(return_data.size)) + 256]]):
                                    if not Mask(112, 0, ext_call.return_data[32]):
                                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if Mask(112, 0, ext_call.return_data[0]):
                                            if not 0 / Mask(112, 0, ext_call.return_data[0]):
                                                if 0 / Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 0 / Mask(112, 0, ext_call.return_data[0]):
                                                    return (0 / 0 / Mask(112, 0, ext_call.return_data[0]))
                                            else:
                                                if 10^18 * 0 / Mask(112, 0, ext_call.return_data[0]) / 0 / Mask(112, 0, ext_call.return_data[0]) != 10^18:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[_13037 + _8951 + floor32(_4314) + floor32(_26) + (6 * ceil32(return_data.size)) + 389 len 31]
                                                if 0 / Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 0 / Mask(112, 0, ext_call.return_data[0]):
                                                    return (10^18 * 0 / Mask(112, 0, ext_call.return_data[0]) / 0 / Mask(112, 0, ext_call.return_data[0]))
                                            ('iszero', ('div', 0, ('mask_shl', 112, 0, 0, ('ext_call.return_data', 0, 32))))
                                    else:
                                        if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 10^18:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[_13037 + _8951 + floor32(_4314) + floor32(_26) + (6 * ceil32(return_data.size)) + 389 len 31]
                                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if Mask(112, 0, ext_call.return_data[0]):
                                            if not 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                                                if 0 / Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 0 / Mask(112, 0, ext_call.return_data[0]):
                                                    return (0 / 0 / Mask(112, 0, ext_call.return_data[0]))
                                            else:
                                                if 10^18 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) != 10^18:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[_13037 + _8951 + floor32(_4314) + floor32(_26) + (6 * ceil32(return_data.size)) + 389 len 31]
                                                if 0 / Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 0 / Mask(112, 0, ext_call.return_data[0]):
                                                    return (10^18 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 0 / Mask(112, 0, ext_call.return_data[0]))
                                            ('iszero', ('div', 0, ('mask_shl', 112, 0, 0, ('ext_call.return_data', 0, 32))))
                                else:
                                    if not Mask(112, 0, ext_call.return_data[0]):
                                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if Mask(112, 0, ext_call.return_data[32]):
                                            if not 0 / Mask(112, 0, ext_call.return_data[32]):
                                                if 0 / Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 0 / Mask(112, 0, ext_call.return_data[0]):
                                                    return (0 / 0 / Mask(112, 0, ext_call.return_data[0]))
                                            else:
                                                if 10^18 * 0 / Mask(112, 0, ext_call.return_data[32]) / 0 / Mask(112, 0, ext_call.return_data[32]) != 10^18:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[_13037 + _8951 + floor32(_4314) + floor32(_26) + (6 * ceil32(return_data.size)) + 389 len 31]
                                                if 0 / Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 0 / Mask(112, 0, ext_call.return_data[0]):
                                                    return (10^18 * 0 / Mask(112, 0, ext_call.return_data[32]) / 0 / Mask(112, 0, ext_call.return_data[0]))
                                            ('iszero', ('div', 0, ('mask_shl', 112, 0, 0, ('ext_call.return_data', 0, 32))))
                                    else:
                                        if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 10^18:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[_13037 + _8951 + floor32(_4314) + floor32(_26) + (6 * ceil32(return_data.size)) + 389 len 31]
                                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if Mask(112, 0, ext_call.return_data[32]):
                                            if not 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                                                if 0 / Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 0 / Mask(112, 0, ext_call.return_data[0]):
                                                    return (0 / 0 / Mask(112, 0, ext_call.return_data[0]))
                                            else:
                                                if 10^18 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) / 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) != 10^18:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[_13037 + _8951 + floor32(_4314) + floor32(_26) + (6 * ceil32(return_data.size)) + 389 len 31]
                                                if 0 / Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 0 / Mask(112, 0, ext_call.return_data[0]):
                                                    return (10^18 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) / 0 / Mask(112, 0, ext_call.return_data[0]))
                                            ('iszero', ('div', 0, ('mask_shl', 112, 0, 0, ('ext_call.return_data', 0, 32))))
                            else:
                                mem[floor32(_13037) + _8951 + floor32(_4314) + floor32(_26) + (6 * ceil32(return_data.size)) + 288] = mem[floor32(_13037) + _8951 + floor32(_4314) + floor32(_26) + (6 * ceil32(return_data.size)) + -(_13037 % 32) + 320 len _13037 % 32]
                                if sha3(mem[floor32(_4314) + floor32(_26) + (4 * ceil32(return_data.size)) + 256 len mem[floor32(_4314) + floor32(_26) + (4 * ceil32(return_data.size)) + 224]]) == sha3(mem[_8951 + floor32(_4314) + floor32(_26) + (6 * ceil32(return_data.size)) + 288 len mem[_8951 + floor32(_4314) + floor32(_26) + (6 * ceil32(return_data.size)) + 256]]):
                                    if not Mask(112, 0, ext_call.return_data[32]):
                                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if Mask(112, 0, ext_call.return_data[0]):
                                            if not 0 / Mask(112, 0, ext_call.return_data[0]):
                                                if 0 / Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 0 / Mask(112, 0, ext_call.return_data[0]):
                                                    return (0 / 0 / Mask(112, 0, ext_call.return_data[0]))
                                            else:
                                                if 10^18 * 0 / Mask(112, 0, ext_call.return_data[0]) / 0 / Mask(112, 0, ext_call.return_data[0]) != 10^18:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[floor32(_13037) + _8951 + floor32(_4314) + floor32(_26) + (6 * ceil32(return_data.size)) + 421 len 31]
                                                if 0 / Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 0 / Mask(112, 0, ext_call.return_data[0]):
                                                    return (10^18 * 0 / Mask(112, 0, ext_call.return_data[0]) / 0 / Mask(112, 0, ext_call.return_data[0]))
                                            ('iszero', ('div', 0, ('mask_shl', 112, 0, 0, ('ext_call.return_data', 0, 32))))
                                    else:
                                        if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 10^18:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[floor32(_13037) + _8951 + floor32(_4314) + floor32(_26) + (6 * ceil32(return_data.size)) + 421 len 31]
                                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if Mask(112, 0, ext_call.return_data[0]):
                                            if not 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                                                if 0 / Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 0 / Mask(112, 0, ext_call.return_data[0]):
                                                    return (0 / 0 / Mask(112, 0, ext_call.return_data[0]))
                                            else:
                                                if 10^18 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) != 10^18:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[floor32(_13037) + _8951 + floor32(_4314) + floor32(_26) + (6 * ceil32(return_data.size)) + 421 len 31]
                                                if 0 / Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 0 / Mask(112, 0, ext_call.return_data[0]):
                                                    return (10^18 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 0 / Mask(112, 0, ext_call.return_data[0]))
                                            ('iszero', ('div', 0, ('mask_shl', 112, 0, 0, ('ext_call.return_data', 0, 32))))
                                else:
                                    if not Mask(112, 0, ext_call.return_data[0]):
                                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if Mask(112, 0, ext_call.return_data[32]):
                                            if not 0 / Mask(112, 0, ext_call.return_data[32]):
                                                if 0 / Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 0 / Mask(112, 0, ext_call.return_data[0]):
                                                    return (0 / 0 / Mask(112, 0, ext_call.return_data[0]))
                                            else:
                                                if 10^18 * 0 / Mask(112, 0, ext_call.return_data[32]) / 0 / Mask(112, 0, ext_call.return_data[32]) != 10^18:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[floor32(_13037) + _8951 + floor32(_4314) + floor32(_26) + (6 * ceil32(return_data.size)) + 421 len 31]
                                                if 0 / Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 0 / Mask(112, 0, ext_call.return_data[0]):
                                                    return (10^18 * 0 / Mask(112, 0, ext_call.return_data[32]) / 0 / Mask(112, 0, ext_call.return_data[0]))
                                            ('iszero', ('div', 0, ('mask_shl', 112, 0, 0, ('ext_call.return_data', 0, 32))))
                                    else:
                                        if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 10^18:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[floor32(_13037) + _8951 + floor32(_4314) + floor32(_26) + (6 * ceil32(return_data.size)) + 421 len 31]
                                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if Mask(112, 0, ext_call.return_data[32]):
                                            if not 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                                                if 0 / Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 0 / Mask(112, 0, ext_call.return_data[0]):
                                                    return (0 / 0 / Mask(112, 0, ext_call.return_data[0]))
                                            else:
                                                if 10^18 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) / 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) != 10^18:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[floor32(_13037) + _8951 + floor32(_4314) + floor32(_26) + (6 * ceil32(return_data.size)) + 421 len 31]
                                                if 0 / Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 0 / Mask(112, 0, ext_call.return_data[0]):
                                                    return (10^18 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) / 0 / Mask(112, 0, ext_call.return_data[0]))
                                            ('iszero', ('div', 0, ('mask_shl', 112, 0, 0, ('ext_call.return_data', 0, 32))))
                        else:
                            mem[floor32(_8951) + floor32(_4314) + floor32(_26) + (4 * ceil32(return_data.size)) + 256] = mem[floor32(_8951) + floor32(_4314) + floor32(_26) + (4 * ceil32(return_data.size)) + -(_8951 % 32) + 288 len _8951 % 32]
                            mem[floor32(_8951) + floor32(_4314) + floor32(_26) + (4 * ceil32(return_data.size)) + 288] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                            require ext_code.size(wNativeAddress)
                            staticcall wNativeAddress.symbol() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[floor32(_8951) + floor32(_4314) + floor32(_26) + (4 * ceil32(return_data.size)) + 288 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = floor32(_8951) + floor32(_4314) + floor32(_26) + (6 * ceil32(return_data.size)) + 288
                            require return_data.size >= 32
                            _12989 = mem[floor32(_8951) + floor32(_4314) + floor32(_26) + (4 * ceil32(return_data.size)) + 288]
                            require mem[floor32(_8951) + floor32(_4314) + floor32(_26) + (4 * ceil32(return_data.size)) + 288] <= 4294967296
                            require mem[floor32(_8951) + floor32(_4314) + floor32(_26) + (4 * ceil32(return_data.size)) + 288] + 32 <= return_data.size
                            require return_data.size >= mem[floor32(_8951) + floor32(_4314) + floor32(_26) + (4 * ceil32(return_data.size)) + mem[floor32(_8951) + floor32(_4314) + floor32(_26) + (4 * ceil32(return_data.size)) + 288] + 288] + mem[floor32(_8951) + floor32(_4314) + floor32(_26) + (4 * ceil32(return_data.size)) + 288] + 32 and mem[floor32(_8951) + floor32(_4314) + floor32(_26) + (4 * ceil32(return_data.size)) + mem[floor32(_8951) + floor32(_4314) + floor32(_26) + (4 * ceil32(return_data.size)) + 288] + 288] <= 4294967296
                            mem[floor32(_8951) + floor32(_4314) + floor32(_26) + (6 * ceil32(return_data.size)) + 288] = mem[floor32(_8951) + floor32(_4314) + floor32(_26) + (4 * ceil32(return_data.size)) + mem[floor32(_8951) + floor32(_4314) + floor32(_26) + (4 * ceil32(return_data.size)) + 288] + 288]
                            _13056 = mem[floor32(_8951) + floor32(_4314) + floor32(_26) + (4 * ceil32(return_data.size)) + _12989 + 288]
                            mem[floor32(_8951) + floor32(_4314) + floor32(_26) + (6 * ceil32(return_data.size)) + 320 len ceil32(mem[floor32(_8951) + floor32(_4314) + floor32(_26) + (4 * ceil32(return_data.size)) + _12989 + 288])] = mem[floor32(_8951) + floor32(_4314) + floor32(_26) + (4 * ceil32(return_data.size)) + _12989 + 320 len ceil32(mem[floor32(_8951) + floor32(_4314) + floor32(_26) + (4 * ceil32(return_data.size)) + _12989 + 288])]
                            if not _13056 % 32:
                                if sha3(mem[floor32(_4314) + floor32(_26) + (4 * ceil32(return_data.size)) + 256 len mem[floor32(_4314) + floor32(_26) + (4 * ceil32(return_data.size)) + 224]]) == sha3(mem[floor32(_8951) + floor32(_4314) + floor32(_26) + (6 * ceil32(return_data.size)) + 320 len mem[floor32(_8951) + floor32(_4314) + floor32(_26) + (6 * ceil32(return_data.size)) + 288]]):
                                    if not Mask(112, 0, ext_call.return_data[32]):
                                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if Mask(112, 0, ext_call.return_data[0]):
                                            if not 0 / Mask(112, 0, ext_call.return_data[0]):
                                                if 0 / Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 0 / Mask(112, 0, ext_call.return_data[0]):
                                                    return (0 / 0 / Mask(112, 0, ext_call.return_data[0]))
                                            else:
                                                if 10^18 * 0 / Mask(112, 0, ext_call.return_data[0]) / 0 / Mask(112, 0, ext_call.return_data[0]) != 10^18:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[_13056 + floor32(_8951) + floor32(_4314) + floor32(_26) + (6 * ceil32(return_data.size)) + 421 len 31]
                                                if 0 / Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 0 / Mask(112, 0, ext_call.return_data[0]):
                                                    return (10^18 * 0 / Mask(112, 0, ext_call.return_data[0]) / 0 / Mask(112, 0, ext_call.return_data[0]))
                                            ('iszero', ('div', 0, ('mask_shl', 112, 0, 0, ('ext_call.return_data', 0, 32))))
                                    else:
                                        if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 10^18:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[_13056 + floor32(_8951) + floor32(_4314) + floor32(_26) + (6 * ceil32(return_data.size)) + 421 len 31]
                                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if Mask(112, 0, ext_call.return_data[0]):
                                            if not 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                                                if 0 / Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 0 / Mask(112, 0, ext_call.return_data[0]):
                                                    return (0 / 0 / Mask(112, 0, ext_call.return_data[0]))
                                            else:
                                                if 10^18 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) != 10^18:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[_13056 + floor32(_8951) + floor32(_4314) + floor32(_26) + (6 * ceil32(return_data.size)) + 421 len 31]
                                                if 0 / Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 0 / Mask(112, 0, ext_call.return_data[0]):
                                                    return (10^18 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 0 / Mask(112, 0, ext_call.return_data[0]))
                                            ('iszero', ('div', 0, ('mask_shl', 112, 0, 0, ('ext_call.return_data', 0, 32))))
                                else:
                                    if not Mask(112, 0, ext_call.return_data[0]):
                                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if Mask(112, 0, ext_call.return_data[32]):
                                            if not 0 / Mask(112, 0, ext_call.return_data[32]):
                                                if 0 / Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 0 / Mask(112, 0, ext_call.return_data[0]):
                                                    return (0 / 0 / Mask(112, 0, ext_call.return_data[0]))
                                            else:
                                                if 10^18 * 0 / Mask(112, 0, ext_call.return_data[32]) / 0 / Mask(112, 0, ext_call.return_data[32]) != 10^18:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[_13056 + floor32(_8951) + floor32(_4314) + floor32(_26) + (6 * ceil32(return_data.size)) + 421 len 31]
                                                if 0 / Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 0 / Mask(112, 0, ext_call.return_data[0]):
                                                    return (10^18 * 0 / Mask(112, 0, ext_call.return_data[32]) / 0 / Mask(112, 0, ext_call.return_data[0]))
                                            ('iszero', ('div', 0, ('mask_shl', 112, 0, 0, ('ext_call.return_data', 0, 32))))
                                    else:
                                        if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 10^18:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[_13056 + floor32(_8951) + floor32(_4314) + floor32(_26) + (6 * ceil32(return_data.size)) + 421 len 31]
                                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if Mask(112, 0, ext_call.return_data[32]):
                                            if not 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                                                if 0 / Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 0 / Mask(112, 0, ext_call.return_data[0]):
                                                    return (0 / 0 / Mask(112, 0, ext_call.return_data[0]))
                                            else:
                                                if 10^18 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) / 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) != 10^18:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[_13056 + floor32(_8951) + floor32(_4314) + floor32(_26) + (6 * ceil32(return_data.size)) + 421 len 31]
                                                if 0 / Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 0 / Mask(112, 0, ext_call.return_data[0]):
                                                    return (10^18 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) / 0 / Mask(112, 0, ext_call.return_data[0]))
                                            ('iszero', ('div', 0, ('mask_shl', 112, 0, 0, ('ext_call.return_data', 0, 32))))
                            else:
                                mem[floor32(_13056) + floor32(_8951) + floor32(_4314) + floor32(_26) + (6 * ceil32(return_data.size)) + 320] = mem[floor32(_13056) + floor32(_8951) + floor32(_4314) + floor32(_26) + (6 * ceil32(return_data.size)) + -(_13056 % 32) + 352 len _13056 % 32]
                                if sha3(mem[floor32(_4314) + floor32(_26) + (4 * ceil32(return_data.size)) + 256 len mem[floor32(_4314) + floor32(_26) + (4 * ceil32(return_data.size)) + 224]]) == sha3(mem[floor32(_8951) + floor32(_4314) + floor32(_26) + (6 * ceil32(return_data.size)) + 320 len mem[floor32(_8951) + floor32(_4314) + floor32(_26) + (6 * ceil32(return_data.size)) + 288]]):
                                    if not Mask(112, 0, ext_call.return_data[32]):
                                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if Mask(112, 0, ext_call.return_data[0]):
                                            if not 0 / Mask(112, 0, ext_call.return_data[0]):
                                                if 0 / Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 0 / Mask(112, 0, ext_call.return_data[0]):
                                                    return (0 / 0 / Mask(112, 0, ext_call.return_data[0]))
                                            else:
                                                if 10^18 * 0 / Mask(112, 0, ext_call.return_data[0]) / 0 / Mask(112, 0, ext_call.return_data[0]) != 10^18:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[floor32(_13056) + floor32(_8951) + floor32(_4314) + floor32(_26) + (6 * ceil32(return_data.size)) + 453 len 31]
                                                if 0 / Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 0 / Mask(112, 0, ext_call.return_data[0]):
                                                    return (10^18 * 0 / Mask(112, 0, ext_call.return_data[0]) / 0 / Mask(112, 0, ext_call.return_data[0]))
                                            ('iszero', ('div', 0, ('mask_shl', 112, 0, 0, ('ext_call.return_data', 0, 32))))
                                    else:
                                        if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 10^18:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[floor32(_13056) + floor32(_8951) + floor32(_4314) + floor32(_26) + (6 * ceil32(return_data.size)) + 453 len 31]
                                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if Mask(112, 0, ext_call.return_data[0]):
                                            if not 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                                                if 0 / Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 0 / Mask(112, 0, ext_call.return_data[0]):
                                                    return (0 / 0 / Mask(112, 0, ext_call.return_data[0]))
                                            else:
                                                if 10^18 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) != 10^18:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[floor32(_13056) + floor32(_8951) + floor32(_4314) + floor32(_26) + (6 * ceil32(return_data.size)) + 453 len 31]
                                                if 0 / Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 0 / Mask(112, 0, ext_call.return_data[0]):
                                                    return (10^18 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 0 / Mask(112, 0, ext_call.return_data[0]))
                                            ('iszero', ('div', 0, ('mask_shl', 112, 0, 0, ('ext_call.return_data', 0, 32))))
                                else:
                                    if not Mask(112, 0, ext_call.return_data[0]):
                                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if Mask(112, 0, ext_call.return_data[32]):
                                            if not 0 / Mask(112, 0, ext_call.return_data[32]):
                                                if 0 / Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 0 / Mask(112, 0, ext_call.return_data[0]):
                                                    return (0 / 0 / Mask(112, 0, ext_call.return_data[0]))
                                            else:
                                                if 10^18 * 0 / Mask(112, 0, ext_call.return_data[32]) / 0 / Mask(112, 0, ext_call.return_data[32]) != 10^18:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[floor32(_13056) + floor32(_8951) + floor32(_4314) + floor32(_26) + (6 * ceil32(return_data.size)) + 453 len 31]
                                                if 0 / Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 0 / Mask(112, 0, ext_call.return_data[0]):
                                                    return (10^18 * 0 / Mask(112, 0, ext_call.return_data[32]) / 0 / Mask(112, 0, ext_call.return_data[0]))
                                            ('iszero', ('div', 0, ('mask_shl', 112, 0, 0, ('ext_call.return_data', 0, 32))))
                                    else:
                                        if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 10^18:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[floor32(_13056) + floor32(_8951) + floor32(_4314) + floor32(_26) + (6 * ceil32(return_data.size)) + 453 len 31]
                                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if Mask(112, 0, ext_call.return_data[32]):
                                            if not 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                                                if 0 / Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 0 / Mask(112, 0, ext_call.return_data[0]):
                                                    return (0 / 0 / Mask(112, 0, ext_call.return_data[0]))
                                            else:
                                                if 10^18 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) / 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) != 10^18:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[floor32(_13056) + floor32(_8951) + floor32(_4314) + floor32(_26) + (6 * ceil32(return_data.size)) + 453 len 31]
                                                if 0 / Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 0 / Mask(112, 0, ext_call.return_data[0]):
                                                    return (10^18 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) / 0 / Mask(112, 0, ext_call.return_data[0]))
                                            ('iszero', ('div', 0, ('mask_shl', 112, 0, 0, ('ext_call.return_data', 0, 32))))
                else:
                    if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 10^18:
                        revert with 0, 
                                    32,
                                    33,
                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[floor32(_4314) + floor32(_26) + (2 * ceil32(return_data.size)) + 325 len 31]
                    if Mask(112, 0, ext_call.return_data[0]) <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    if Mask(112, 0, ext_call.return_data[0]):
                        require ext_code.size(sub_d4384dbeAddress)
                        staticcall sub_d4384dbeAddress.getPair(address arg1, address arg2) with:
                                gas gas_remaining wei
                               args wNativeAddress, usdcTokenAddress
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).getReserves() with:
                                gas gas_remaining wei
                        mem[floor32(_4314) + floor32(_26) + (2 * ceil32(return_data.size)) + 224 len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[floor32(_4314) + floor32(_26) + (2 * ceil32(return_data.size)) + 224] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).symbol() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[floor32(_4314) + floor32(_26) + (2 * ceil32(return_data.size)) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = floor32(_4314) + floor32(_26) + (4 * ceil32(return_data.size)) + 224
                        require return_data.size >= 32
                        _8924 = mem[floor32(_4314) + floor32(_26) + (2 * ceil32(return_data.size)) + 224]
                        require mem[floor32(_4314) + floor32(_26) + (2 * ceil32(return_data.size)) + 224] <= 4294967296
                        require mem[floor32(_4314) + floor32(_26) + (2 * ceil32(return_data.size)) + 224] + 32 <= return_data.size
                        require return_data.size >= mem[floor32(_4314) + floor32(_26) + (2 * ceil32(return_data.size)) + mem[floor32(_4314) + floor32(_26) + (2 * ceil32(return_data.size)) + 224] + 224] + mem[floor32(_4314) + floor32(_26) + (2 * ceil32(return_data.size)) + 224] + 32 and mem[floor32(_4314) + floor32(_26) + (2 * ceil32(return_data.size)) + mem[floor32(_4314) + floor32(_26) + (2 * ceil32(return_data.size)) + 224] + 224] <= 4294967296
                        mem[floor32(_4314) + floor32(_26) + (4 * ceil32(return_data.size)) + 224] = mem[floor32(_4314) + floor32(_26) + (2 * ceil32(return_data.size)) + mem[floor32(_4314) + floor32(_26) + (2 * ceil32(return_data.size)) + 224] + 224]
                        _8960 = mem[floor32(_4314) + floor32(_26) + (2 * ceil32(return_data.size)) + _8924 + 224]
                        mem[floor32(_4314) + floor32(_26) + (4 * ceil32(return_data.size)) + 256 len ceil32(mem[floor32(_4314) + floor32(_26) + (2 * ceil32(return_data.size)) + _8924 + 224])] = mem[floor32(_4314) + floor32(_26) + (2 * ceil32(return_data.size)) + _8924 + 256 len ceil32(mem[floor32(_4314) + floor32(_26) + (2 * ceil32(return_data.size)) + _8924 + 224])]
                        if not _8960 % 32:
                            mem[_8960 + floor32(_4314) + floor32(_26) + (4 * ceil32(return_data.size)) + 256] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                            require ext_code.size(wNativeAddress)
                            staticcall wNativeAddress.symbol() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[_8960 + floor32(_4314) + floor32(_26) + (4 * ceil32(return_data.size)) + 256 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = _8960 + floor32(_4314) + floor32(_26) + (6 * ceil32(return_data.size)) + 256
                            require return_data.size >= 32
                            _12951 = mem[_8960 + floor32(_4314) + floor32(_26) + (4 * ceil32(return_data.size)) + 256]
                            require mem[_8960 + floor32(_4314) + floor32(_26) + (4 * ceil32(return_data.size)) + 256] <= 4294967296
                            require mem[_8960 + floor32(_4314) + floor32(_26) + (4 * ceil32(return_data.size)) + 256] + 32 <= return_data.size
                            require return_data.size >= mem[_8960 + floor32(_4314) + floor32(_26) + (4 * ceil32(return_data.size)) + mem[_8960 + floor32(_4314) + floor32(_26) + (4 * ceil32(return_data.size)) + 256] + 256] + mem[_8960 + floor32(_4314) + floor32(_26) + (4 * ceil32(return_data.size)) + 256] + 32 and mem[_8960 + floor32(_4314) + floor32(_26) + (4 * ceil32(return_data.size)) + mem[_8960 + floor32(_4314) + floor32(_26) + (4 * ceil32(return_data.size)) + 256] + 256] <= 4294967296
                            mem[_8960 + floor32(_4314) + floor32(_26) + (6 * ceil32(return_data.size)) + 256] = mem[_8960 + floor32(_4314) + floor32(_26) + (4 * ceil32(return_data.size)) + mem[_8960 + floor32(_4314) + floor32(_26) + (4 * ceil32(return_data.size)) + 256] + 256]
                            _13035 = mem[_8960 + floor32(_4314) + floor32(_26) + (4 * ceil32(return_data.size)) + _12951 + 256]
                            mem[_8960 + floor32(_4314) + floor32(_26) + (6 * ceil32(return_data.size)) + 288 len ceil32(mem[_8960 + floor32(_4314) + floor32(_26) + (4 * ceil32(return_data.size)) + _12951 + 256])] = mem[_8960 + floor32(_4314) + floor32(_26) + (4 * ceil32(return_data.size)) + _12951 + 288 len ceil32(mem[_8960 + floor32(_4314) + floor32(_26) + (4 * ceil32(return_data.size)) + _12951 + 256])]
                            if not _13035 % 32:
                                if sha3(mem[floor32(_4314) + floor32(_26) + (4 * ceil32(return_data.size)) + 256 len mem[floor32(_4314) + floor32(_26) + (4 * ceil32(return_data.size)) + 224]]) == sha3(mem[_8960 + floor32(_4314) + floor32(_26) + (6 * ceil32(return_data.size)) + 288 len mem[_8960 + floor32(_4314) + floor32(_26) + (6 * ceil32(return_data.size)) + 256]]):
                                    if not Mask(112, 0, ext_call.return_data[32]):
                                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if Mask(112, 0, ext_call.return_data[0]):
                                            if not 0 / Mask(112, 0, ext_call.return_data[0]):
                                                if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                                                    return (0 / 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]))
                                            else:
                                                if 10^18 * 0 / Mask(112, 0, ext_call.return_data[0]) / 0 / Mask(112, 0, ext_call.return_data[0]) != 10^18:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[_13035 + _8960 + floor32(_4314) + floor32(_26) + (6 * ceil32(return_data.size)) + 389 len 31]
                                                if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                                                    return (10^18 * 0 / Mask(112, 0, ext_call.return_data[0]) / 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]))
                                            ('iszero', ('div', ('mul', 1000000000000000000, ('mask_shl', 112, 0, 0, ('ext_call.return_data', 32, 32))), ('mask_shl', 112, 0, 0, ('ext_call.return_data', 0, 32))))
                                    else:
                                        if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 10^18:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[_13035 + _8960 + floor32(_4314) + floor32(_26) + (6 * ceil32(return_data.size)) + 389 len 31]
                                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if Mask(112, 0, ext_call.return_data[0]):
                                            if not 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                                                if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                                                    return (0 / 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]))
                                            else:
                                                if 10^18 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) != 10^18:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[_13035 + _8960 + floor32(_4314) + floor32(_26) + (6 * ceil32(return_data.size)) + 389 len 31]
                                                if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                                                    return (10^18 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]))
                                            ('iszero', ('div', ('mul', 1000000000000000000, ('mask_shl', 112, 0, 0, ('ext_call.return_data', 32, 32))), ('mask_shl', 112, 0, 0, ('ext_call.return_data', 0, 32))))
                                else:
                                    if not Mask(112, 0, ext_call.return_data[0]):
                                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if Mask(112, 0, ext_call.return_data[32]):
                                            if not 0 / Mask(112, 0, ext_call.return_data[32]):
                                                if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                                                    return (0 / 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]))
                                            else:
                                                if 10^18 * 0 / Mask(112, 0, ext_call.return_data[32]) / 0 / Mask(112, 0, ext_call.return_data[32]) != 10^18:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[_13035 + _8960 + floor32(_4314) + floor32(_26) + (6 * ceil32(return_data.size)) + 389 len 31]
                                                if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                                                    return (10^18 * 0 / Mask(112, 0, ext_call.return_data[32]) / 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]))
                                            ('iszero', ('div', ('mul', 1000000000000000000, ('mask_shl', 112, 0, 0, ('ext_call.return_data', 32, 32))), ('mask_shl', 112, 0, 0, ('ext_call.return_data', 0, 32))))
                                    else:
                                        if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 10^18:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[_13035 + _8960 + floor32(_4314) + floor32(_26) + (6 * ceil32(return_data.size)) + 389 len 31]
                                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if Mask(112, 0, ext_call.return_data[32]):
                                            if not 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                                                if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                                                    return (0 / 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]))
                                            else:
                                                if 10^18 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) / 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) != 10^18:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[_13035 + _8960 + floor32(_4314) + floor32(_26) + (6 * ceil32(return_data.size)) + 389 len 31]
                                                if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                                                    return (10^18 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) / 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]))
                                            ('iszero', ('div', ('mul', 1000000000000000000, ('mask_shl', 112, 0, 0, ('ext_call.return_data', 32, 32))), ('mask_shl', 112, 0, 0, ('ext_call.return_data', 0, 32))))
                            else:
                                mem[floor32(_13035) + _8960 + floor32(_4314) + floor32(_26) + (6 * ceil32(return_data.size)) + 288] = mem[floor32(_13035) + _8960 + floor32(_4314) + floor32(_26) + (6 * ceil32(return_data.size)) + -(_13035 % 32) + 320 len _13035 % 32]
                                if sha3(mem[floor32(_4314) + floor32(_26) + (4 * ceil32(return_data.size)) + 256 len mem[floor32(_4314) + floor32(_26) + (4 * ceil32(return_data.size)) + 224]]) == sha3(mem[_8960 + floor32(_4314) + floor32(_26) + (6 * ceil32(return_data.size)) + 288 len mem[_8960 + floor32(_4314) + floor32(_26) + (6 * ceil32(return_data.size)) + 256]]):
                                    if not Mask(112, 0, ext_call.return_data[32]):
                                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if Mask(112, 0, ext_call.return_data[0]):
                                            if not 0 / Mask(112, 0, ext_call.return_data[0]):
                                                if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                                                    return (0 / 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]))
                                            else:
                                                if 10^18 * 0 / Mask(112, 0, ext_call.return_data[0]) / 0 / Mask(112, 0, ext_call.return_data[0]) != 10^18:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[floor32(_13035) + _8960 + floor32(_4314) + floor32(_26) + (6 * ceil32(return_data.size)) + 421 len 31]
                                                if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                                                    return (10^18 * 0 / Mask(112, 0, ext_call.return_data[0]) / 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]))
                                            ('iszero', ('div', ('mul', 1000000000000000000, ('mask_shl', 112, 0, 0, ('ext_call.return_data', 32, 32))), ('mask_shl', 112, 0, 0, ('ext_call.return_data', 0, 32))))
                                    else:
                                        if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 10^18:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[floor32(_13035) + _8960 + floor32(_4314) + floor32(_26) + (6 * ceil32(return_data.size)) + 421 len 31]
                                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if Mask(112, 0, ext_call.return_data[0]):
                                            if not 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                                                if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                                                    return (0 / 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]))
                                            else:
                                                if 10^18 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) != 10^18:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[floor32(_13035) + _8960 + floor32(_4314) + floor32(_26) + (6 * ceil32(return_data.size)) + 421 len 31]
                                                if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                                                    return (10^18 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]))
                                            ('iszero', ('div', ('mul', 1000000000000000000, ('mask_shl', 112, 0, 0, ('ext_call.return_data', 32, 32))), ('mask_shl', 112, 0, 0, ('ext_call.return_data', 0, 32))))
                                else:
                                    if not Mask(112, 0, ext_call.return_data[0]):
                                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if Mask(112, 0, ext_call.return_data[32]):
                                            if not 0 / Mask(112, 0, ext_call.return_data[32]):
                                                if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                                                    return (0 / 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]))
                                            else:
                                                if 10^18 * 0 / Mask(112, 0, ext_call.return_data[32]) / 0 / Mask(112, 0, ext_call.return_data[32]) != 10^18:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[floor32(_13035) + _8960 + floor32(_4314) + floor32(_26) + (6 * ceil32(return_data.size)) + 421 len 31]
                                                if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                                                    return (10^18 * 0 / Mask(112, 0, ext_call.return_data[32]) / 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]))
                                            ('iszero', ('div', ('mul', 1000000000000000000, ('mask_shl', 112, 0, 0, ('ext_call.return_data', 32, 32))), ('mask_shl', 112, 0, 0, ('ext_call.return_data', 0, 32))))
                                    else:
                                        if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 10^18:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[floor32(_13035) + _8960 + floor32(_4314) + floor32(_26) + (6 * ceil32(return_data.size)) + 421 len 31]
                                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if Mask(112, 0, ext_call.return_data[32]):
                                            if not 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                                                if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                                                    return (0 / 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]))
                                            else:
                                                if 10^18 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) / 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) != 10^18:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[floor32(_13035) + _8960 + floor32(_4314) + floor32(_26) + (6 * ceil32(return_data.size)) + 421 len 31]
                                                if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                                                    return (10^18 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) / 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]))
                                            ('iszero', ('div', ('mul', 1000000000000000000, ('mask_shl', 112, 0, 0, ('ext_call.return_data', 32, 32))), ('mask_shl', 112, 0, 0, ('ext_call.return_data', 0, 32))))
                        else:
                            mem[floor32(_8960) + floor32(_4314) + floor32(_26) + (4 * ceil32(return_data.size)) + 256] = mem[floor32(_8960) + floor32(_4314) + floor32(_26) + (4 * ceil32(return_data.size)) + -(_8960 % 32) + 288 len _8960 % 32]
                            mem[floor32(_8960) + floor32(_4314) + floor32(_26) + (4 * ceil32(return_data.size)) + 288] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                            require ext_code.size(wNativeAddress)
                            staticcall wNativeAddress.symbol() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[floor32(_8960) + floor32(_4314) + floor32(_26) + (4 * ceil32(return_data.size)) + 288 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = floor32(_8960) + floor32(_4314) + floor32(_26) + (6 * ceil32(return_data.size)) + 288
                            require return_data.size >= 32
                            _12987 = mem[floor32(_8960) + floor32(_4314) + floor32(_26) + (4 * ceil32(return_data.size)) + 288]
                            require mem[floor32(_8960) + floor32(_4314) + floor32(_26) + (4 * ceil32(return_data.size)) + 288] <= 4294967296
                            require mem[floor32(_8960) + floor32(_4314) + floor32(_26) + (4 * ceil32(return_data.size)) + 288] + 32 <= return_data.size
                            require return_data.size >= mem[floor32(_8960) + floor32(_4314) + floor32(_26) + (4 * ceil32(return_data.size)) + mem[floor32(_8960) + floor32(_4314) + floor32(_26) + (4 * ceil32(return_data.size)) + 288] + 288] + mem[floor32(_8960) + floor32(_4314) + floor32(_26) + (4 * ceil32(return_data.size)) + 288] + 32 and mem[floor32(_8960) + floor32(_4314) + floor32(_26) + (4 * ceil32(return_data.size)) + mem[floor32(_8960) + floor32(_4314) + floor32(_26) + (4 * ceil32(return_data.size)) + 288] + 288] <= 4294967296
                            mem[floor32(_8960) + floor32(_4314) + floor32(_26) + (6 * ceil32(return_data.size)) + 288] = mem[floor32(_8960) + floor32(_4314) + floor32(_26) + (4 * ceil32(return_data.size)) + mem[floor32(_8960) + floor32(_4314) + floor32(_26) + (4 * ceil32(return_data.size)) + 288] + 288]
                            _13055 = mem[floor32(_8960) + floor32(_4314) + floor32(_26) + (4 * ceil32(return_data.size)) + _12987 + 288]
                            mem[floor32(_8960) + floor32(_4314) + floor32(_26) + (6 * ceil32(return_data.size)) + 320 len ceil32(mem[floor32(_8960) + floor32(_4314) + floor32(_26) + (4 * ceil32(return_data.size)) + _12987 + 288])] = mem[floor32(_8960) + floor32(_4314) + floor32(_26) + (4 * ceil32(return_data.size)) + _12987 + 320 len ceil32(mem[floor32(_8960) + floor32(_4314) + floor32(_26) + (4 * ceil32(return_data.size)) + _12987 + 288])]
                            if not _13055 % 32:
                                if sha3(mem[floor32(_4314) + floor32(_26) + (4 * ceil32(return_data.size)) + 256 len mem[floor32(_4314) + floor32(_26) + (4 * ceil32(return_data.size)) + 224]]) == sha3(mem[floor32(_8960) + floor32(_4314) + floor32(_26) + (6 * ceil32(return_data.size)) + 320 len mem[floor32(_8960) + floor32(_4314) + floor32(_26) + (6 * ceil32(return_data.size)) + 288]]):
                                    if not Mask(112, 0, ext_call.return_data[32]):
                                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if Mask(112, 0, ext_call.return_data[0]):
                                            if not 0 / Mask(112, 0, ext_call.return_data[0]):
                                                if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                                                    return (0 / 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]))
                                            else:
                                                if 10^18 * 0 / Mask(112, 0, ext_call.return_data[0]) / 0 / Mask(112, 0, ext_call.return_data[0]) != 10^18:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[_13055 + floor32(_8960) + floor32(_4314) + floor32(_26) + (6 * ceil32(return_data.size)) + 421 len 31]
                                                if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                                                    return (10^18 * 0 / Mask(112, 0, ext_call.return_data[0]) / 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]))
                                            ('iszero', ('div', ('mul', 1000000000000000000, ('mask_shl', 112, 0, 0, ('ext_call.return_data', 32, 32))), ('mask_shl', 112, 0, 0, ('ext_call.return_data', 0, 32))))
                                    else:
                                        if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 10^18:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[_13055 + floor32(_8960) + floor32(_4314) + floor32(_26) + (6 * ceil32(return_data.size)) + 421 len 31]
                                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if Mask(112, 0, ext_call.return_data[0]):
                                            if not 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                                                if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                                                    return (0 / 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]))
                                            else:
                                                if 10^18 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) != 10^18:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[_13055 + floor32(_8960) + floor32(_4314) + floor32(_26) + (6 * ceil32(return_data.size)) + 421 len 31]
                                                if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                                                    return (10^18 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]))
                                            ('iszero', ('div', ('mul', 1000000000000000000, ('mask_shl', 112, 0, 0, ('ext_call.return_data', 32, 32))), ('mask_shl', 112, 0, 0, ('ext_call.return_data', 0, 32))))
                                else:
                                    if not Mask(112, 0, ext_call.return_data[0]):
                                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if Mask(112, 0, ext_call.return_data[32]):
                                            if not 0 / Mask(112, 0, ext_call.return_data[32]):
                                                if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                                                    return (0 / 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]))
                                            else:
                                                if 10^18 * 0 / Mask(112, 0, ext_call.return_data[32]) / 0 / Mask(112, 0, ext_call.return_data[32]) != 10^18:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[_13055 + floor32(_8960) + floor32(_4314) + floor32(_26) + (6 * ceil32(return_data.size)) + 421 len 31]
                                                if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                                                    return (10^18 * 0 / Mask(112, 0, ext_call.return_data[32]) / 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]))
                                            ('iszero', ('div', ('mul', 1000000000000000000, ('mask_shl', 112, 0, 0, ('ext_call.return_data', 32, 32))), ('mask_shl', 112, 0, 0, ('ext_call.return_data', 0, 32))))
                                    else:
                                        if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 10^18:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[_13055 + floor32(_8960) + floor32(_4314) + floor32(_26) + (6 * ceil32(return_data.size)) + 421 len 31]
                                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if Mask(112, 0, ext_call.return_data[32]):
                                            if not 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                                                if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                                                    return (0 / 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]))
                                            else:
                                                if 10^18 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) / 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) != 10^18:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[_13055 + floor32(_8960) + floor32(_4314) + floor32(_26) + (6 * ceil32(return_data.size)) + 421 len 31]
                                                if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                                                    return (10^18 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) / 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]))
                                            ('iszero', ('div', ('mul', 1000000000000000000, ('mask_shl', 112, 0, 0, ('ext_call.return_data', 32, 32))), ('mask_shl', 112, 0, 0, ('ext_call.return_data', 0, 32))))
                            else:
                                mem[floor32(_13055) + floor32(_8960) + floor32(_4314) + floor32(_26) + (6 * ceil32(return_data.size)) + 320] = mem[floor32(_13055) + floor32(_8960) + floor32(_4314) + floor32(_26) + (6 * ceil32(return_data.size)) + -(_13055 % 32) + 352 len _13055 % 32]
                                if sha3(mem[floor32(_4314) + floor32(_26) + (4 * ceil32(return_data.size)) + 256 len mem[floor32(_4314) + floor32(_26) + (4 * ceil32(return_data.size)) + 224]]) == sha3(mem[floor32(_8960) + floor32(_4314) + floor32(_26) + (6 * ceil32(return_data.size)) + 320 len mem[floor32(_8960) + floor32(_4314) + floor32(_26) + (6 * ceil32(return_data.size)) + 288]]):
                                    if not Mask(112, 0, ext_call.return_data[32]):
                                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if Mask(112, 0, ext_call.return_data[0]):
                                            if not 0 / Mask(112, 0, ext_call.return_data[0]):
                                                if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                                                    return (0 / 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]))
                                            else:
                                                if 10^18 * 0 / Mask(112, 0, ext_call.return_data[0]) / 0 / Mask(112, 0, ext_call.return_data[0]) != 10^18:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[floor32(_13055) + floor32(_8960) + floor32(_4314) + floor32(_26) + (6 * ceil32(return_data.size)) + 453 len 31]
                                                if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                                                    return (10^18 * 0 / Mask(112, 0, ext_call.return_data[0]) / 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]))
                                            ('iszero', ('div', ('mul', 1000000000000000000, ('mask_shl', 112, 0, 0, ('ext_call.return_data', 32, 32))), ('mask_shl', 112, 0, 0, ('ext_call.return_data', 0, 32))))
                                    else:
                                        if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 10^18:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[floor32(_13055) + floor32(_8960) + floor32(_4314) + floor32(_26) + (6 * ceil32(return_data.size)) + 453 len 31]
                                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if Mask(112, 0, ext_call.return_data[0]):
                                            if not 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                                                if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                                                    return (0 / 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]))
                                            else:
                                                if 10^18 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) != 10^18:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[floor32(_13055) + floor32(_8960) + floor32(_4314) + floor32(_26) + (6 * ceil32(return_data.size)) + 453 len 31]
                                                if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                                                    return (10^18 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]))
                                            ('iszero', ('div', ('mul', 1000000000000000000, ('mask_shl', 112, 0, 0, ('ext_call.return_data', 32, 32))), ('mask_shl', 112, 0, 0, ('ext_call.return_data', 0, 32))))
                                else:
                                    if not Mask(112, 0, ext_call.return_data[0]):
                                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if Mask(112, 0, ext_call.return_data[32]):
                                            if not 0 / Mask(112, 0, ext_call.return_data[32]):
                                                if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                                                    return (0 / 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]))
                                            else:
                                                if 10^18 * 0 / Mask(112, 0, ext_call.return_data[32]) / 0 / Mask(112, 0, ext_call.return_data[32]) != 10^18:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[floor32(_13055) + floor32(_8960) + floor32(_4314) + floor32(_26) + (6 * ceil32(return_data.size)) + 453 len 31]
                                                if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                                                    return (10^18 * 0 / Mask(112, 0, ext_call.return_data[32]) / 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]))
                                            ('iszero', ('div', ('mul', 1000000000000000000, ('mask_shl', 112, 0, 0, ('ext_call.return_data', 32, 32))), ('mask_shl', 112, 0, 0, ('ext_call.return_data', 0, 32))))
                                    else:
                                        if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 10^18:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[floor32(_13055) + floor32(_8960) + floor32(_4314) + floor32(_26) + (6 * ceil32(return_data.size)) + 453 len 31]
                                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if Mask(112, 0, ext_call.return_data[32]):
                                            if not 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                                                if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                                                    return (0 / 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]))
                                            else:
                                                if 10^18 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) / 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) != 10^18:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[floor32(_13055) + floor32(_8960) + floor32(_4314) + floor32(_26) + (6 * ceil32(return_data.size)) + 453 len 31]
                                                if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                                                    return (10^18 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) / 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]))
                                            ('iszero', ('div', ('mul', 1000000000000000000, ('mask_shl', 112, 0, 0, ('ext_call.return_data', 32, 32))), ('mask_shl', 112, 0, 0, ('ext_call.return_data', 0, 32))))
            else:
                if not Mask(112, 0, ext_call.return_data[0]):
                    if Mask(112, 0, ext_call.return_data[32]) <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    if Mask(112, 0, ext_call.return_data[32]):
                        require ext_code.size(sub_d4384dbeAddress)
                        staticcall sub_d4384dbeAddress.getPair(address arg1, address arg2) with:
                                gas gas_remaining wei
                               args wNativeAddress, usdcTokenAddress
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).getReserves() with:
                                gas gas_remaining wei
                        mem[floor32(_4314) + floor32(_26) + (2 * ceil32(return_data.size)) + 224 len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[floor32(_4314) + floor32(_26) + (2 * ceil32(return_data.size)) + 224] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).symbol() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[floor32(_4314) + floor32(_26) + (2 * ceil32(return_data.size)) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = floor32(_4314) + floor32(_26) + (4 * ceil32(return_data.size)) + 224
                        require return_data.size >= 32
                        _8927 = mem[floor32(_4314) + floor32(_26) + (2 * ceil32(return_data.size)) + 224]
                        require mem[floor32(_4314) + floor32(_26) + (2 * ceil32(return_data.size)) + 224] <= 4294967296
                        require mem[floor32(_4314) + floor32(_26) + (2 * ceil32(return_data.size)) + 224] + 32 <= return_data.size
                        require return_data.size >= mem[floor32(_4314) + floor32(_26) + (2 * ceil32(return_data.size)) + mem[floor32(_4314) + floor32(_26) + (2 * ceil32(return_data.size)) + 224] + 224] + mem[floor32(_4314) + floor32(_26) + (2 * ceil32(return_data.size)) + 224] + 32 and mem[floor32(_4314) + floor32(_26) + (2 * ceil32(return_data.size)) + mem[floor32(_4314) + floor32(_26) + (2 * ceil32(return_data.size)) + 224] + 224] <= 4294967296
                        mem[floor32(_4314) + floor32(_26) + (4 * ceil32(return_data.size)) + 224] = mem[floor32(_4314) + floor32(_26) + (2 * ceil32(return_data.size)) + mem[floor32(_4314) + floor32(_26) + (2 * ceil32(return_data.size)) + 224] + 224]
                        _8962 = mem[floor32(_4314) + floor32(_26) + (2 * ceil32(return_data.size)) + _8927 + 224]
                        mem[floor32(_4314) + floor32(_26) + (4 * ceil32(return_data.size)) + 256 len ceil32(mem[floor32(_4314) + floor32(_26) + (2 * ceil32(return_data.size)) + _8927 + 224])] = mem[floor32(_4314) + floor32(_26) + (2 * ceil32(return_data.size)) + _8927 + 256 len ceil32(mem[floor32(_4314) + floor32(_26) + (2 * ceil32(return_data.size)) + _8927 + 224])]
                        if not _8962 % 32:
                            mem[_8962 + floor32(_4314) + floor32(_26) + (4 * ceil32(return_data.size)) + 256] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                            require ext_code.size(wNativeAddress)
                            staticcall wNativeAddress.symbol() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[_8962 + floor32(_4314) + floor32(_26) + (4 * ceil32(return_data.size)) + 256 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = _8962 + floor32(_4314) + floor32(_26) + (6 * ceil32(return_data.size)) + 256
                            require return_data.size >= 32
                            _12960 = mem[_8962 + floor32(_4314) + floor32(_26) + (4 * ceil32(return_data.size)) + 256]
                            require mem[_8962 + floor32(_4314) + floor32(_26) + (4 * ceil32(return_data.size)) + 256] <= 4294967296
                            require mem[_8962 + floor32(_4314) + floor32(_26) + (4 * ceil32(return_data.size)) + 256] + 32 <= return_data.size
                            require return_data.size >= mem[_8962 + floor32(_4314) + floor32(_26) + (4 * ceil32(return_data.size)) + mem[_8962 + floor32(_4314) + floor32(_26) + (4 * ceil32(return_data.size)) + 256] + 256] + mem[_8962 + floor32(_4314) + floor32(_26) + (4 * ceil32(return_data.size)) + 256] + 32 and mem[_8962 + floor32(_4314) + floor32(_26) + (4 * ceil32(return_data.size)) + mem[_8962 + floor32(_4314) + floor32(_26) + (4 * ceil32(return_data.size)) + 256] + 256] <= 4294967296
                            mem[_8962 + floor32(_4314) + floor32(_26) + (6 * ceil32(return_data.size)) + 256] = mem[_8962 + floor32(_4314) + floor32(_26) + (4 * ceil32(return_data.size)) + mem[_8962 + floor32(_4314) + floor32(_26) + (4 * ceil32(return_data.size)) + 256] + 256]
                            _13041 = mem[_8962 + floor32(_4314) + floor32(_26) + (4 * ceil32(return_data.size)) + _12960 + 256]
                            mem[_8962 + floor32(_4314) + floor32(_26) + (6 * ceil32(return_data.size)) + 288 len ceil32(mem[_8962 + floor32(_4314) + floor32(_26) + (4 * ceil32(return_data.size)) + _12960 + 256])] = mem[_8962 + floor32(_4314) + floor32(_26) + (4 * ceil32(return_data.size)) + _12960 + 288 len ceil32(mem[_8962 + floor32(_4314) + floor32(_26) + (4 * ceil32(return_data.size)) + _12960 + 256])]
                            if not _13041 % 32:
                                if sha3(mem[floor32(_4314) + floor32(_26) + (4 * ceil32(return_data.size)) + 256 len mem[floor32(_4314) + floor32(_26) + (4 * ceil32(return_data.size)) + 224]]) == sha3(mem[_8962 + floor32(_4314) + floor32(_26) + (6 * ceil32(return_data.size)) + 288 len mem[_8962 + floor32(_4314) + floor32(_26) + (6 * ceil32(return_data.size)) + 256]]):
                                    if not Mask(112, 0, ext_call.return_data[32]):
                                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if Mask(112, 0, ext_call.return_data[0]):
                                            if not 0 / Mask(112, 0, ext_call.return_data[0]):
                                                if 0 / Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 0 / Mask(112, 0, ext_call.return_data[32]):
                                                    return (0 / 0 / Mask(112, 0, ext_call.return_data[32]))
                                            else:
                                                if 10^18 * 0 / Mask(112, 0, ext_call.return_data[0]) / 0 / Mask(112, 0, ext_call.return_data[0]) != 10^18:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[_13041 + _8962 + floor32(_4314) + floor32(_26) + (6 * ceil32(return_data.size)) + 389 len 31]
                                                if 0 / Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 0 / Mask(112, 0, ext_call.return_data[32]):
                                                    return (10^18 * 0 / Mask(112, 0, ext_call.return_data[0]) / 0 / Mask(112, 0, ext_call.return_data[32]))
                                            ('iszero', ('div', 0, ('mask_shl', 112, 0, 0, ('ext_call.return_data', 32, 32))))
                                    else:
                                        if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 10^18:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[_13041 + _8962 + floor32(_4314) + floor32(_26) + (6 * ceil32(return_data.size)) + 389 len 31]
                                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if Mask(112, 0, ext_call.return_data[0]):
                                            if not 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                                                if 0 / Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 0 / Mask(112, 0, ext_call.return_data[32]):
                                                    return (0 / 0 / Mask(112, 0, ext_call.return_data[32]))
                                            else:
                                                if 10^18 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) != 10^18:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[_13041 + _8962 + floor32(_4314) + floor32(_26) + (6 * ceil32(return_data.size)) + 389 len 31]
                                                if 0 / Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 0 / Mask(112, 0, ext_call.return_data[32]):
                                                    return (10^18 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 0 / Mask(112, 0, ext_call.return_data[32]))
                                            ('iszero', ('div', 0, ('mask_shl', 112, 0, 0, ('ext_call.return_data', 32, 32))))
                                else:
                                    if not Mask(112, 0, ext_call.return_data[0]):
                                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if Mask(112, 0, ext_call.return_data[32]):
                                            if not 0 / Mask(112, 0, ext_call.return_data[32]):
                                                if 0 / Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 0 / Mask(112, 0, ext_call.return_data[32]):
                                                    return (0 / 0 / Mask(112, 0, ext_call.return_data[32]))
                                            else:
                                                if 10^18 * 0 / Mask(112, 0, ext_call.return_data[32]) / 0 / Mask(112, 0, ext_call.return_data[32]) != 10^18:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[_13041 + _8962 + floor32(_4314) + floor32(_26) + (6 * ceil32(return_data.size)) + 389 len 31]
                                                if 0 / Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 0 / Mask(112, 0, ext_call.return_data[32]):
                                                    return (10^18 * 0 / Mask(112, 0, ext_call.return_data[32]) / 0 / Mask(112, 0, ext_call.return_data[32]))
                                            ('iszero', ('div', 0, ('mask_shl', 112, 0, 0, ('ext_call.return_data', 32, 32))))
                                    else:
                                        if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 10^18:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[_13041 + _8962 + floor32(_4314) + floor32(_26) + (6 * ceil32(return_data.size)) + 389 len 31]
                                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if Mask(112, 0, ext_call.return_data[32]):
                                            if not 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                                                if 0 / Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 0 / Mask(112, 0, ext_call.return_data[32]):
                                                    return (0 / 0 / Mask(112, 0, ext_call.return_data[32]))
                                            else:
                                                if 10^18 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) / 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) != 10^18:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[_13041 + _8962 + floor32(_4314) + floor32(_26) + (6 * ceil32(return_data.size)) + 389 len 31]
                                                if 0 / Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 0 / Mask(112, 0, ext_call.return_data[32]):
                                                    return (10^18 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) / 0 / Mask(112, 0, ext_call.return_data[32]))
                                            ('iszero', ('div', 0, ('mask_shl', 112, 0, 0, ('ext_call.return_data', 32, 32))))
                            else:
                                mem[floor32(_13041) + _8962 + floor32(_4314) + floor32(_26) + (6 * ceil32(return_data.size)) + 288] = mem[floor32(_13041) + _8962 + floor32(_4314) + floor32(_26) + (6 * ceil32(return_data.size)) + -(_13041 % 32) + 320 len _13041 % 32]
                                if sha3(mem[floor32(_4314) + floor32(_26) + (4 * ceil32(return_data.size)) + 256 len mem[floor32(_4314) + floor32(_26) + (4 * ceil32(return_data.size)) + 224]]) == sha3(mem[_8962 + floor32(_4314) + floor32(_26) + (6 * ceil32(return_data.size)) + 288 len mem[_8962 + floor32(_4314) + floor32(_26) + (6 * ceil32(return_data.size)) + 256]]):
                                    if not Mask(112, 0, ext_call.return_data[32]):
                                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if Mask(112, 0, ext_call.return_data[0]):
                                            if not 0 / Mask(112, 0, ext_call.return_data[0]):
                                                if 0 / Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 0 / Mask(112, 0, ext_call.return_data[32]):
                                                    return (0 / 0 / Mask(112, 0, ext_call.return_data[32]))
                                            else:
                                                if 10^18 * 0 / Mask(112, 0, ext_call.return_data[0]) / 0 / Mask(112, 0, ext_call.return_data[0]) != 10^18:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[floor32(_13041) + _8962 + floor32(_4314) + floor32(_26) + (6 * ceil32(return_data.size)) + 421 len 31]
                                                if 0 / Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 0 / Mask(112, 0, ext_call.return_data[32]):
                                                    return (10^18 * 0 / Mask(112, 0, ext_call.return_data[0]) / 0 / Mask(112, 0, ext_call.return_data[32]))
                                            ('iszero', ('div', 0, ('mask_shl', 112, 0, 0, ('ext_call.return_data', 32, 32))))
                                    else:
                                        if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 10^18:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[floor32(_13041) + _8962 + floor32(_4314) + floor32(_26) + (6 * ceil32(return_data.size)) + 421 len 31]
                                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if Mask(112, 0, ext_call.return_data[0]):
                                            if not 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                                                if 0 / Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 0 / Mask(112, 0, ext_call.return_data[32]):
                                                    return (0 / 0 / Mask(112, 0, ext_call.return_data[32]))
                                            else:
                                                if 10^18 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) != 10^18:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[floor32(_13041) + _8962 + floor32(_4314) + floor32(_26) + (6 * ceil32(return_data.size)) + 421 len 31]
                                                if 0 / Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 0 / Mask(112, 0, ext_call.return_data[32]):
                                                    return (10^18 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 0 / Mask(112, 0, ext_call.return_data[32]))
                                            ('iszero', ('div', 0, ('mask_shl', 112, 0, 0, ('ext_call.return_data', 32, 32))))
                                else:
                                    if not Mask(112, 0, ext_call.return_data[0]):
                                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if Mask(112, 0, ext_call.return_data[32]):
                                            if not 0 / Mask(112, 0, ext_call.return_data[32]):
                                                if 0 / Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 0 / Mask(112, 0, ext_call.return_data[32]):
                                                    return (0 / 0 / Mask(112, 0, ext_call.return_data[32]))
                                            else:
                                                if 10^18 * 0 / Mask(112, 0, ext_call.return_data[32]) / 0 / Mask(112, 0, ext_call.return_data[32]) != 10^18:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[floor32(_13041) + _8962 + floor32(_4314) + floor32(_26) + (6 * ceil32(return_data.size)) + 421 len 31]
                                                if 0 / Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 0 / Mask(112, 0, ext_call.return_data[32]):
                                                    return (10^18 * 0 / Mask(112, 0, ext_call.return_data[32]) / 0 / Mask(112, 0, ext_call.return_data[32]))
                                            ('iszero', ('div', 0, ('mask_shl', 112, 0, 0, ('ext_call.return_data', 32, 32))))
                                    else:
                                        if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 10^18:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[floor32(_13041) + _8962 + floor32(_4314) + floor32(_26) + (6 * ceil32(return_data.size)) + 421 len 31]
                                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if Mask(112, 0, ext_call.return_data[32]):
                                            if not 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                                                if 0 / Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 0 / Mask(112, 0, ext_call.return_data[32]):
                                                    return (0 / 0 / Mask(112, 0, ext_call.return_data[32]))
                                            else:
                                                if 10^18 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) / 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) != 10^18:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[floor32(_13041) + _8962 + floor32(_4314) + floor32(_26) + (6 * ceil32(return_data.size)) + 421 len 31]
                                                if 0 / Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 0 / Mask(112, 0, ext_call.return_data[32]):
                                                    return (10^18 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) / 0 / Mask(112, 0, ext_call.return_data[32]))
                                            ('iszero', ('div', 0, ('mask_shl', 112, 0, 0, ('ext_call.return_data', 32, 32))))
                        else:
                            mem[floor32(_8962) + floor32(_4314) + floor32(_26) + (4 * ceil32(return_data.size)) + 256] = mem[floor32(_8962) + floor32(_4314) + floor32(_26) + (4 * ceil32(return_data.size)) + -(_8962 % 32) + 288 len _8962 % 32]
                            mem[floor32(_8962) + floor32(_4314) + floor32(_26) + (4 * ceil32(return_data.size)) + 288] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                            require ext_code.size(wNativeAddress)
                            staticcall wNativeAddress.symbol() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[floor32(_8962) + floor32(_4314) + floor32(_26) + (4 * ceil32(return_data.size)) + 288 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = floor32(_8962) + floor32(_4314) + floor32(_26) + (6 * ceil32(return_data.size)) + 288
                            require return_data.size >= 32
                            _12993 = mem[floor32(_8962) + floor32(_4314) + floor32(_26) + (4 * ceil32(return_data.size)) + 288]
                            require mem[floor32(_8962) + floor32(_4314) + floor32(_26) + (4 * ceil32(return_data.size)) + 288] <= 4294967296
                            require mem[floor32(_8962) + floor32(_4314) + floor32(_26) + (4 * ceil32(return_data.size)) + 288] + 32 <= return_data.size
                            require return_data.size >= mem[floor32(_8962) + floor32(_4314) + floor32(_26) + (4 * ceil32(return_data.size)) + mem[floor32(_8962) + floor32(_4314) + floor32(_26) + (4 * ceil32(return_data.size)) + 288] + 288] + mem[floor32(_8962) + floor32(_4314) + floor32(_26) + (4 * ceil32(return_data.size)) + 288] + 32 and mem[floor32(_8962) + floor32(_4314) + floor32(_26) + (4 * ceil32(return_data.size)) + mem[floor32(_8962) + floor32(_4314) + floor32(_26) + (4 * ceil32(return_data.size)) + 288] + 288] <= 4294967296
                            mem[floor32(_8962) + floor32(_4314) + floor32(_26) + (6 * ceil32(return_data.size)) + 288] = mem[floor32(_8962) + floor32(_4314) + floor32(_26) + (4 * ceil32(return_data.size)) + mem[floor32(_8962) + floor32(_4314) + floor32(_26) + (4 * ceil32(return_data.size)) + 288] + 288]
                            _13058 = mem[floor32(_8962) + floor32(_4314) + floor32(_26) + (4 * ceil32(return_data.size)) + _12993 + 288]
                            mem[floor32(_8962) + floor32(_4314) + floor32(_26) + (6 * ceil32(return_data.size)) + 320 len ceil32(mem[floor32(_8962) + floor32(_4314) + floor32(_26) + (4 * ceil32(return_data.size)) + _12993 + 288])] = mem[floor32(_8962) + floor32(_4314) + floor32(_26) + (4 * ceil32(return_data.size)) + _12993 + 320 len ceil32(mem[floor32(_8962) + floor32(_4314) + floor32(_26) + (4 * ceil32(return_data.size)) + _12993 + 288])]
                            if not _13058 % 32:
                                if sha3(mem[floor32(_4314) + floor32(_26) + (4 * ceil32(return_data.size)) + 256 len mem[floor32(_4314) + floor32(_26) + (4 * ceil32(return_data.size)) + 224]]) == sha3(mem[floor32(_8962) + floor32(_4314) + floor32(_26) + (6 * ceil32(return_data.size)) + 320 len mem[floor32(_8962) + floor32(_4314) + floor32(_26) + (6 * ceil32(return_data.size)) + 288]]):
                                    if not Mask(112, 0, ext_call.return_data[32]):
                                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if Mask(112, 0, ext_call.return_data[0]):
                                            if not 0 / Mask(112, 0, ext_call.return_data[0]):
                                                if 0 / Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 0 / Mask(112, 0, ext_call.return_data[32]):
                                                    return (0 / 0 / Mask(112, 0, ext_call.return_data[32]))
                                            else:
                                                if 10^18 * 0 / Mask(112, 0, ext_call.return_data[0]) / 0 / Mask(112, 0, ext_call.return_data[0]) != 10^18:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[_13058 + floor32(_8962) + floor32(_4314) + floor32(_26) + (6 * ceil32(return_data.size)) + 421 len 31]
                                                if 0 / Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 0 / Mask(112, 0, ext_call.return_data[32]):
                                                    return (10^18 * 0 / Mask(112, 0, ext_call.return_data[0]) / 0 / Mask(112, 0, ext_call.return_data[32]))
                                            ('iszero', ('div', 0, ('mask_shl', 112, 0, 0, ('ext_call.return_data', 32, 32))))
                                    else:
                                        if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 10^18:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[_13058 + floor32(_8962) + floor32(_4314) + floor32(_26) + (6 * ceil32(return_data.size)) + 421 len 31]
                                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if Mask(112, 0, ext_call.return_data[0]):
                                            if not 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                                                if 0 / Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 0 / Mask(112, 0, ext_call.return_data[32]):
                                                    return (0 / 0 / Mask(112, 0, ext_call.return_data[32]))
                                            else:
                                                if 10^18 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) != 10^18:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[_13058 + floor32(_8962) + floor32(_4314) + floor32(_26) + (6 * ceil32(return_data.size)) + 421 len 31]
                                                if 0 / Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 0 / Mask(112, 0, ext_call.return_data[32]):
                                                    return (10^18 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 0 / Mask(112, 0, ext_call.return_data[32]))
                                            ('iszero', ('div', 0, ('mask_shl', 112, 0, 0, ('ext_call.return_data', 32, 32))))
                                else:
                                    if not Mask(112, 0, ext_call.return_data[0]):
                                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if Mask(112, 0, ext_call.return_data[32]):
                                            if not 0 / Mask(112, 0, ext_call.return_data[32]):
                                                if 0 / Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 0 / Mask(112, 0, ext_call.return_data[32]):
                                                    return (0 / 0 / Mask(112, 0, ext_call.return_data[32]))
                                            else:
                                                if 10^18 * 0 / Mask(112, 0, ext_call.return_data[32]) / 0 / Mask(112, 0, ext_call.return_data[32]) != 10^18:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[_13058 + floor32(_8962) + floor32(_4314) + floor32(_26) + (6 * ceil32(return_data.size)) + 421 len 31]
                                                if 0 / Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 0 / Mask(112, 0, ext_call.return_data[32]):
                                                    return (10^18 * 0 / Mask(112, 0, ext_call.return_data[32]) / 0 / Mask(112, 0, ext_call.return_data[32]))
                                            ('iszero', ('div', 0, ('mask_shl', 112, 0, 0, ('ext_call.return_data', 32, 32))))
                                    else:
                                        if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 10^18:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[_13058 + floor32(_8962) + floor32(_4314) + floor32(_26) + (6 * ceil32(return_data.size)) + 421 len 31]
                                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if Mask(112, 0, ext_call.return_data[32]):
                                            if not 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                                                if 0 / Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 0 / Mask(112, 0, ext_call.return_data[32]):
                                                    return (0 / 0 / Mask(112, 0, ext_call.return_data[32]))
                                            else:
                                                if 10^18 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) / 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) != 10^18:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[_13058 + floor32(_8962) + floor32(_4314) + floor32(_26) + (6 * ceil32(return_data.size)) + 421 len 31]
                                                if 0 / Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 0 / Mask(112, 0, ext_call.return_data[32]):
                                                    return (10^18 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) / 0 / Mask(112, 0, ext_call.return_data[32]))
                                            ('iszero', ('div', 0, ('mask_shl', 112, 0, 0, ('ext_call.return_data', 32, 32))))
                            else:
                                mem[floor32(_13058) + floor32(_8962) + floor32(_4314) + floor32(_26) + (6 * ceil32(return_data.size)) + 320] = mem[floor32(_13058) + floor32(_8962) + floor32(_4314) + floor32(_26) + (6 * ceil32(return_data.size)) + -(_13058 % 32) + 352 len _13058 % 32]
                                if sha3(mem[floor32(_4314) + floor32(_26) + (4 * ceil32(return_data.size)) + 256 len mem[floor32(_4314) + floor32(_26) + (4 * ceil32(return_data.size)) + 224]]) == sha3(mem[floor32(_8962) + floor32(_4314) + floor32(_26) + (6 * ceil32(return_data.size)) + 320 len mem[floor32(_8962) + floor32(_4314) + floor32(_26) + (6 * ceil32(return_data.size)) + 288]]):
                                    if not Mask(112, 0, ext_call.return_data[32]):
                                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if Mask(112, 0, ext_call.return_data[0]):
                                            if not 0 / Mask(112, 0, ext_call.return_data[0]):
                                                if 0 / Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 0 / Mask(112, 0, ext_call.return_data[32]):
                                                    return (0 / 0 / Mask(112, 0, ext_call.return_data[32]))
                                            else:
                                                if 10^18 * 0 / Mask(112, 0, ext_call.return_data[0]) / 0 / Mask(112, 0, ext_call.return_data[0]) != 10^18:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[floor32(_13058) + floor32(_8962) + floor32(_4314) + floor32(_26) + (6 * ceil32(return_data.size)) + 453 len 31]
                                                if 0 / Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 0 / Mask(112, 0, ext_call.return_data[32]):
                                                    return (10^18 * 0 / Mask(112, 0, ext_call.return_data[0]) / 0 / Mask(112, 0, ext_call.return_data[32]))
                                            ('iszero', ('div', 0, ('mask_shl', 112, 0, 0, ('ext_call.return_data', 32, 32))))
                                    else:
                                        if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 10^18:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[floor32(_13058) + floor32(_8962) + floor32(_4314) + floor32(_26) + (6 * ceil32(return_data.size)) + 453 len 31]
                                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if Mask(112, 0, ext_call.return_data[0]):
                                            if not 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                                                if 0 / Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 0 / Mask(112, 0, ext_call.return_data[32]):
                                                    return (0 / 0 / Mask(112, 0, ext_call.return_data[32]))
                                            else:
                                                if 10^18 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) != 10^18:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[floor32(_13058) + floor32(_8962) + floor32(_4314) + floor32(_26) + (6 * ceil32(return_data.size)) + 453 len 31]
                                                if 0 / Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 0 / Mask(112, 0, ext_call.return_data[32]):
                                                    return (10^18 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 0 / Mask(112, 0, ext_call.return_data[32]))
                                            ('iszero', ('div', 0, ('mask_shl', 112, 0, 0, ('ext_call.return_data', 32, 32))))
                                else:
                                    if not Mask(112, 0, ext_call.return_data[0]):
                                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if Mask(112, 0, ext_call.return_data[32]):
                                            if not 0 / Mask(112, 0, ext_call.return_data[32]):
                                                if 0 / Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 0 / Mask(112, 0, ext_call.return_data[32]):
                                                    return (0 / 0 / Mask(112, 0, ext_call.return_data[32]))
                                            else:
                                                if 10^18 * 0 / Mask(112, 0, ext_call.return_data[32]) / 0 / Mask(112, 0, ext_call.return_data[32]) != 10^18:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[floor32(_13058) + floor32(_8962) + floor32(_4314) + floor32(_26) + (6 * ceil32(return_data.size)) + 453 len 31]
                                                if 0 / Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 0 / Mask(112, 0, ext_call.return_data[32]):
                                                    return (10^18 * 0 / Mask(112, 0, ext_call.return_data[32]) / 0 / Mask(112, 0, ext_call.return_data[32]))
                                            ('iszero', ('div', 0, ('mask_shl', 112, 0, 0, ('ext_call.return_data', 32, 32))))
                                    else:
                                        if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 10^18:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[floor32(_13058) + floor32(_8962) + floor32(_4314) + floor32(_26) + (6 * ceil32(return_data.size)) + 453 len 31]
                                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if Mask(112, 0, ext_call.return_data[32]):
                                            if not 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                                                if 0 / Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 0 / Mask(112, 0, ext_call.return_data[32]):
                                                    return (0 / 0 / Mask(112, 0, ext_call.return_data[32]))
                                            else:
                                                if 10^18 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) / 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) != 10^18:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[floor32(_13058) + floor32(_8962) + floor32(_4314) + floor32(_26) + (6 * ceil32(return_data.size)) + 453 len 31]
                                                if 0 / Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 0 / Mask(112, 0, ext_call.return_data[32]):
                                                    return (10^18 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) / 0 / Mask(112, 0, ext_call.return_data[32]))
                                            ('iszero', ('div', 0, ('mask_shl', 112, 0, 0, ('ext_call.return_data', 32, 32))))
                else:
                    if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 10^18:
                        revert with 0, 
                                    32,
                                    33,
                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[floor32(_4314) + floor32(_26) + (2 * ceil32(return_data.size)) + 325 len 31]
                    if Mask(112, 0, ext_call.return_data[32]) <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    if Mask(112, 0, ext_call.return_data[32]):
                        require ext_code.size(sub_d4384dbeAddress)
                        staticcall sub_d4384dbeAddress.getPair(address arg1, address arg2) with:
                                gas gas_remaining wei
                               args wNativeAddress, usdcTokenAddress
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).getReserves() with:
                                gas gas_remaining wei
                        mem[floor32(_4314) + floor32(_26) + (2 * ceil32(return_data.size)) + 224 len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[floor32(_4314) + floor32(_26) + (2 * ceil32(return_data.size)) + 224] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).symbol() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[floor32(_4314) + floor32(_26) + (2 * ceil32(return_data.size)) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = floor32(_4314) + floor32(_26) + (4 * ceil32(return_data.size)) + 224
                        require return_data.size >= 32
                        _8939 = mem[floor32(_4314) + floor32(_26) + (2 * ceil32(return_data.size)) + 224]
                        require mem[floor32(_4314) + floor32(_26) + (2 * ceil32(return_data.size)) + 224] <= 4294967296
                        require mem[floor32(_4314) + floor32(_26) + (2 * ceil32(return_data.size)) + 224] + 32 <= return_data.size
                        require return_data.size >= mem[floor32(_4314) + floor32(_26) + (2 * ceil32(return_data.size)) + mem[floor32(_4314) + floor32(_26) + (2 * ceil32(return_data.size)) + 224] + 224] + mem[floor32(_4314) + floor32(_26) + (2 * ceil32(return_data.size)) + 224] + 32 and mem[floor32(_4314) + floor32(_26) + (2 * ceil32(return_data.size)) + mem[floor32(_4314) + floor32(_26) + (2 * ceil32(return_data.size)) + 224] + 224] <= 4294967296
                        mem[floor32(_4314) + floor32(_26) + (4 * ceil32(return_data.size)) + 224] = mem[floor32(_4314) + floor32(_26) + (2 * ceil32(return_data.size)) + mem[floor32(_4314) + floor32(_26) + (2 * ceil32(return_data.size)) + 224] + 224]
                        _8974 = mem[floor32(_4314) + floor32(_26) + (2 * ceil32(return_data.size)) + _8939 + 224]
                        mem[floor32(_4314) + floor32(_26) + (4 * ceil32(return_data.size)) + 256 len ceil32(mem[floor32(_4314) + floor32(_26) + (2 * ceil32(return_data.size)) + _8939 + 224])] = mem[floor32(_4314) + floor32(_26) + (2 * ceil32(return_data.size)) + _8939 + 256 len ceil32(mem[floor32(_4314) + floor32(_26) + (2 * ceil32(return_data.size)) + _8939 + 224])]
                        if not _8974 % 32:
                            mem[_8974 + floor32(_4314) + floor32(_26) + (4 * ceil32(return_data.size)) + 256] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                            require ext_code.size(wNativeAddress)
                            staticcall wNativeAddress.symbol() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[_8974 + floor32(_4314) + floor32(_26) + (4 * ceil32(return_data.size)) + 256 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = _8974 + floor32(_4314) + floor32(_26) + (6 * ceil32(return_data.size)) + 256
                            require return_data.size >= 32
                            _12957 = mem[_8974 + floor32(_4314) + floor32(_26) + (4 * ceil32(return_data.size)) + 256]
                            require mem[_8974 + floor32(_4314) + floor32(_26) + (4 * ceil32(return_data.size)) + 256] <= 4294967296
                            require mem[_8974 + floor32(_4314) + floor32(_26) + (4 * ceil32(return_data.size)) + 256] + 32 <= return_data.size
                            require return_data.size >= mem[_8974 + floor32(_4314) + floor32(_26) + (4 * ceil32(return_data.size)) + mem[_8974 + floor32(_4314) + floor32(_26) + (4 * ceil32(return_data.size)) + 256] + 256] + mem[_8974 + floor32(_4314) + floor32(_26) + (4 * ceil32(return_data.size)) + 256] + 32 and mem[_8974 + floor32(_4314) + floor32(_26) + (4 * ceil32(return_data.size)) + mem[_8974 + floor32(_4314) + floor32(_26) + (4 * ceil32(return_data.size)) + 256] + 256] <= 4294967296
                            mem[_8974 + floor32(_4314) + floor32(_26) + (6 * ceil32(return_data.size)) + 256] = mem[_8974 + floor32(_4314) + floor32(_26) + (4 * ceil32(return_data.size)) + mem[_8974 + floor32(_4314) + floor32(_26) + (4 * ceil32(return_data.size)) + 256] + 256]
                            _13039 = mem[_8974 + floor32(_4314) + floor32(_26) + (4 * ceil32(return_data.size)) + _12957 + 256]
                            mem[_8974 + floor32(_4314) + floor32(_26) + (6 * ceil32(return_data.size)) + 288 len ceil32(mem[_8974 + floor32(_4314) + floor32(_26) + (4 * ceil32(return_data.size)) + _12957 + 256])] = mem[_8974 + floor32(_4314) + floor32(_26) + (4 * ceil32(return_data.size)) + _12957 + 288 len ceil32(mem[_8974 + floor32(_4314) + floor32(_26) + (4 * ceil32(return_data.size)) + _12957 + 256])]
                            if not _13039 % 32:
                                if sha3(mem[floor32(_4314) + floor32(_26) + (4 * ceil32(return_data.size)) + 256 len mem[floor32(_4314) + floor32(_26) + (4 * ceil32(return_data.size)) + 224]]) == sha3(mem[_8974 + floor32(_4314) + floor32(_26) + (6 * ceil32(return_data.size)) + 288 len mem[_8974 + floor32(_4314) + floor32(_26) + (6 * ceil32(return_data.size)) + 256]]):
                                    if not Mask(112, 0, ext_call.return_data[32]):
                                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if Mask(112, 0, ext_call.return_data[0]):
                                            if not 0 / Mask(112, 0, ext_call.return_data[0]):
                                                if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                                                    return (0 / 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]))
                                            else:
                                                if 10^18 * 0 / Mask(112, 0, ext_call.return_data[0]) / 0 / Mask(112, 0, ext_call.return_data[0]) != 10^18:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[_13039 + _8974 + floor32(_4314) + floor32(_26) + (6 * ceil32(return_data.size)) + 389 len 31]
                                                if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                                                    return (10^18 * 0 / Mask(112, 0, ext_call.return_data[0]) / 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]))
                                            ('iszero', ('div', ('mul', 1000000000000000000, ('mask_shl', 112, 0, 0, ('ext_call.return_data', 0, 32))), ('mask_shl', 112, 0, 0, ('ext_call.return_data', 32, 32))))
                                    else:
                                        if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 10^18:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[_13039 + _8974 + floor32(_4314) + floor32(_26) + (6 * ceil32(return_data.size)) + 389 len 31]
                                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if Mask(112, 0, ext_call.return_data[0]):
                                            if not 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                                                if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                                                    return (0 / 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]))
                                            else:
                                                if 10^18 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) != 10^18:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[_13039 + _8974 + floor32(_4314) + floor32(_26) + (6 * ceil32(return_data.size)) + 389 len 31]
                                                if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                                                    return (10^18 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]))
                                            ('iszero', ('div', ('mul', 1000000000000000000, ('mask_shl', 112, 0, 0, ('ext_call.return_data', 0, 32))), ('mask_shl', 112, 0, 0, ('ext_call.return_data', 32, 32))))
                                else:
                                    if not Mask(112, 0, ext_call.return_data[0]):
                                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if Mask(112, 0, ext_call.return_data[32]):
                                            if not 0 / Mask(112, 0, ext_call.return_data[32]):
                                                if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                                                    return (0 / 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]))
                                            else:
                                                if 10^18 * 0 / Mask(112, 0, ext_call.return_data[32]) / 0 / Mask(112, 0, ext_call.return_data[32]) != 10^18:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[_13039 + _8974 + floor32(_4314) + floor32(_26) + (6 * ceil32(return_data.size)) + 389 len 31]
                                                if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                                                    return (10^18 * 0 / Mask(112, 0, ext_call.return_data[32]) / 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]))
                                            ('iszero', ('div', ('mul', 1000000000000000000, ('mask_shl', 112, 0, 0, ('ext_call.return_data', 0, 32))), ('mask_shl', 112, 0, 0, ('ext_call.return_data', 32, 32))))
                                    else:
                                        if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 10^18:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[_13039 + _8974 + floor32(_4314) + floor32(_26) + (6 * ceil32(return_data.size)) + 389 len 31]
                                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if Mask(112, 0, ext_call.return_data[32]):
                                            if not 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                                                if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                                                    return (0 / 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]))
                                            else:
                                                if 10^18 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) / 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) != 10^18:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[_13039 + _8974 + floor32(_4314) + floor32(_26) + (6 * ceil32(return_data.size)) + 389 len 31]
                                                if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                                                    return (10^18 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) / 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]))
                                            ('iszero', ('div', ('mul', 1000000000000000000, ('mask_shl', 112, 0, 0, ('ext_call.return_data', 0, 32))), ('mask_shl', 112, 0, 0, ('ext_call.return_data', 32, 32))))
                            else:
                                mem[floor32(_13039) + _8974 + floor32(_4314) + floor32(_26) + (6 * ceil32(return_data.size)) + 288] = mem[floor32(_13039) + _8974 + floor32(_4314) + floor32(_26) + (6 * ceil32(return_data.size)) + -(_13039 % 32) + 320 len _13039 % 32]
                                if sha3(mem[floor32(_4314) + floor32(_26) + (4 * ceil32(return_data.size)) + 256 len mem[floor32(_4314) + floor32(_26) + (4 * ceil32(return_data.size)) + 224]]) == sha3(mem[_8974 + floor32(_4314) + floor32(_26) + (6 * ceil32(return_data.size)) + 288 len mem[_8974 + floor32(_4314) + floor32(_26) + (6 * ceil32(return_data.size)) + 256]]):
                                    if not Mask(112, 0, ext_call.return_data[32]):
                                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if Mask(112, 0, ext_call.return_data[0]):
                                            if not 0 / Mask(112, 0, ext_call.return_data[0]):
                                                if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                                                    return (0 / 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]))
                                            else:
                                                if 10^18 * 0 / Mask(112, 0, ext_call.return_data[0]) / 0 / Mask(112, 0, ext_call.return_data[0]) != 10^18:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[floor32(_13039) + _8974 + floor32(_4314) + floor32(_26) + (6 * ceil32(return_data.size)) + 421 len 31]
                                                if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                                                    return (10^18 * 0 / Mask(112, 0, ext_call.return_data[0]) / 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]))
                                            ('iszero', ('div', ('mul', 1000000000000000000, ('mask_shl', 112, 0, 0, ('ext_call.return_data', 0, 32))), ('mask_shl', 112, 0, 0, ('ext_call.return_data', 32, 32))))
                                    else:
                                        if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 10^18:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[floor32(_13039) + _8974 + floor32(_4314) + floor32(_26) + (6 * ceil32(return_data.size)) + 421 len 31]
                                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if Mask(112, 0, ext_call.return_data[0]):
                                            if not 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                                                if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                                                    return (0 / 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]))
                                            else:
                                                if 10^18 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) != 10^18:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[floor32(_13039) + _8974 + floor32(_4314) + floor32(_26) + (6 * ceil32(return_data.size)) + 421 len 31]
                                                if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                                                    return (10^18 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]))
                                            ('iszero', ('div', ('mul', 1000000000000000000, ('mask_shl', 112, 0, 0, ('ext_call.return_data', 0, 32))), ('mask_shl', 112, 0, 0, ('ext_call.return_data', 32, 32))))
                                else:
                                    if not Mask(112, 0, ext_call.return_data[0]):
                                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if Mask(112, 0, ext_call.return_data[32]):
                                            if not 0 / Mask(112, 0, ext_call.return_data[32]):
                                                if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                                                    return (0 / 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]))
                                            else:
                                                if 10^18 * 0 / Mask(112, 0, ext_call.return_data[32]) / 0 / Mask(112, 0, ext_call.return_data[32]) != 10^18:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[floor32(_13039) + _8974 + floor32(_4314) + floor32(_26) + (6 * ceil32(return_data.size)) + 421 len 31]
                                                if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                                                    return (10^18 * 0 / Mask(112, 0, ext_call.return_data[32]) / 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]))
                                            ('iszero', ('div', ('mul', 1000000000000000000, ('mask_shl', 112, 0, 0, ('ext_call.return_data', 0, 32))), ('mask_shl', 112, 0, 0, ('ext_call.return_data', 32, 32))))
                                    else:
                                        if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 10^18:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[floor32(_13039) + _8974 + floor32(_4314) + floor32(_26) + (6 * ceil32(return_data.size)) + 421 len 31]
                                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if Mask(112, 0, ext_call.return_data[32]):
                                            if not 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                                                if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                                                    return (0 / 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]))
                                            else:
                                                if 10^18 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) / 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) != 10^18:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[floor32(_13039) + _8974 + floor32(_4314) + floor32(_26) + (6 * ceil32(return_data.size)) + 421 len 31]
                                                if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                                                    return (10^18 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) / 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]))
                                            ('iszero', ('div', ('mul', 1000000000000000000, ('mask_shl', 112, 0, 0, ('ext_call.return_data', 0, 32))), ('mask_shl', 112, 0, 0, ('ext_call.return_data', 32, 32))))
                        else:
                            mem[floor32(_8974) + floor32(_4314) + floor32(_26) + (4 * ceil32(return_data.size)) + 256] = mem[floor32(_8974) + floor32(_4314) + floor32(_26) + (4 * ceil32(return_data.size)) + -(_8974 % 32) + 288 len _8974 % 32]
                            mem[floor32(_8974) + floor32(_4314) + floor32(_26) + (4 * ceil32(return_data.size)) + 288] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                            require ext_code.size(wNativeAddress)
                            staticcall wNativeAddress.symbol() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[floor32(_8974) + floor32(_4314) + floor32(_26) + (4 * ceil32(return_data.size)) + 288 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = floor32(_8974) + floor32(_4314) + floor32(_26) + (6 * ceil32(return_data.size)) + 288
                            require return_data.size >= 32
                            _12991 = mem[floor32(_8974) + floor32(_4314) + floor32(_26) + (4 * ceil32(return_data.size)) + 288]
                            require mem[floor32(_8974) + floor32(_4314) + floor32(_26) + (4 * ceil32(return_data.size)) + 288] <= 4294967296
                            require mem[floor32(_8974) + floor32(_4314) + floor32(_26) + (4 * ceil32(return_data.size)) + 288] + 32 <= return_data.size
                            require return_data.size >= mem[floor32(_8974) + floor32(_4314) + floor32(_26) + (4 * ceil32(return_data.size)) + mem[floor32(_8974) + floor32(_4314) + floor32(_26) + (4 * ceil32(return_data.size)) + 288] + 288] + mem[floor32(_8974) + floor32(_4314) + floor32(_26) + (4 * ceil32(return_data.size)) + 288] + 32 and mem[floor32(_8974) + floor32(_4314) + floor32(_26) + (4 * ceil32(return_data.size)) + mem[floor32(_8974) + floor32(_4314) + floor32(_26) + (4 * ceil32(return_data.size)) + 288] + 288] <= 4294967296
                            mem[floor32(_8974) + floor32(_4314) + floor32(_26) + (6 * ceil32(return_data.size)) + 288] = mem[floor32(_8974) + floor32(_4314) + floor32(_26) + (4 * ceil32(return_data.size)) + mem[floor32(_8974) + floor32(_4314) + floor32(_26) + (4 * ceil32(return_data.size)) + 288] + 288]
                            _13057 = mem[floor32(_8974) + floor32(_4314) + floor32(_26) + (4 * ceil32(return_data.size)) + _12991 + 288]
                            mem[floor32(_8974) + floor32(_4314) + floor32(_26) + (6 * ceil32(return_data.size)) + 320 len ceil32(mem[floor32(_8974) + floor32(_4314) + floor32(_26) + (4 * ceil32(return_data.size)) + _12991 + 288])] = mem[floor32(_8974) + floor32(_4314) + floor32(_26) + (4 * ceil32(return_data.size)) + _12991 + 320 len ceil32(mem[floor32(_8974) + floor32(_4314) + floor32(_26) + (4 * ceil32(return_data.size)) + _12991 + 288])]
                            if not _13057 % 32:
                                if sha3(mem[floor32(_4314) + floor32(_26) + (4 * ceil32(return_data.size)) + 256 len mem[floor32(_4314) + floor32(_26) + (4 * ceil32(return_data.size)) + 224]]) == sha3(mem[floor32(_8974) + floor32(_4314) + floor32(_26) + (6 * ceil32(return_data.size)) + 320 len mem[floor32(_8974) + floor32(_4314) + floor32(_26) + (6 * ceil32(return_data.size)) + 288]]):
                                    if not Mask(112, 0, ext_call.return_data[32]):
                                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if Mask(112, 0, ext_call.return_data[0]):
                                            if not 0 / Mask(112, 0, ext_call.return_data[0]):
                                                if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                                                    return (0 / 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]))
                                            else:
                                                if 10^18 * 0 / Mask(112, 0, ext_call.return_data[0]) / 0 / Mask(112, 0, ext_call.return_data[0]) != 10^18:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[_13057 + floor32(_8974) + floor32(_4314) + floor32(_26) + (6 * ceil32(return_data.size)) + 421 len 31]
                                                if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                                                    return (10^18 * 0 / Mask(112, 0, ext_call.return_data[0]) / 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]))
                                            ('iszero', ('div', ('mul', 1000000000000000000, ('mask_shl', 112, 0, 0, ('ext_call.return_data', 0, 32))), ('mask_shl', 112, 0, 0, ('ext_call.return_data', 32, 32))))
                                    else:
                                        if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 10^18:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[_13057 + floor32(_8974) + floor32(_4314) + floor32(_26) + (6 * ceil32(return_data.size)) + 421 len 31]
                                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if Mask(112, 0, ext_call.return_data[0]):
                                            if not 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                                                if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                                                    return (0 / 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]))
                                            else:
                                                if 10^18 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) != 10^18:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[_13057 + floor32(_8974) + floor32(_4314) + floor32(_26) + (6 * ceil32(return_data.size)) + 421 len 31]
                                                if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                                                    return (10^18 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]))
                                            ('iszero', ('div', ('mul', 1000000000000000000, ('mask_shl', 112, 0, 0, ('ext_call.return_data', 0, 32))), ('mask_shl', 112, 0, 0, ('ext_call.return_data', 32, 32))))
                                else:
                                    if not Mask(112, 0, ext_call.return_data[0]):
                                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if Mask(112, 0, ext_call.return_data[32]):
                                            if not 0 / Mask(112, 0, ext_call.return_data[32]):
                                                if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                                                    return (0 / 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]))
                                            else:
                                                if 10^18 * 0 / Mask(112, 0, ext_call.return_data[32]) / 0 / Mask(112, 0, ext_call.return_data[32]) != 10^18:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[_13057 + floor32(_8974) + floor32(_4314) + floor32(_26) + (6 * ceil32(return_data.size)) + 421 len 31]
                                                if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                                                    return (10^18 * 0 / Mask(112, 0, ext_call.return_data[32]) / 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]))
                                            ('iszero', ('div', ('mul', 1000000000000000000, ('mask_shl', 112, 0, 0, ('ext_call.return_data', 0, 32))), ('mask_shl', 112, 0, 0, ('ext_call.return_data', 32, 32))))
                                    else:
                                        if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 10^18:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[_13057 + floor32(_8974) + floor32(_4314) + floor32(_26) + (6 * ceil32(return_data.size)) + 421 len 31]
                                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if Mask(112, 0, ext_call.return_data[32]):
                                            if not 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                                                if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                                                    return (0 / 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]))
                                            else:
                                                if 10^18 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) / 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) != 10^18:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[_13057 + floor32(_8974) + floor32(_4314) + floor32(_26) + (6 * ceil32(return_data.size)) + 421 len 31]
                                                if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                                                    return (10^18 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) / 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]))
                                            ('iszero', ('div', ('mul', 1000000000000000000, ('mask_shl', 112, 0, 0, ('ext_call.return_data', 0, 32))), ('mask_shl', 112, 0, 0, ('ext_call.return_data', 32, 32))))
                            else:
                                mem[floor32(_13057) + floor32(_8974) + floor32(_4314) + floor32(_26) + (6 * ceil32(return_data.size)) + 320] = mem[floor32(_13057) + floor32(_8974) + floor32(_4314) + floor32(_26) + (6 * ceil32(return_data.size)) + -(_13057 % 32) + 352 len _13057 % 32]
                                if sha3(mem[floor32(_4314) + floor32(_26) + (4 * ceil32(return_data.size)) + 256 len mem[floor32(_4314) + floor32(_26) + (4 * ceil32(return_data.size)) + 224]]) == sha3(mem[floor32(_8974) + floor32(_4314) + floor32(_26) + (6 * ceil32(return_data.size)) + 320 len mem[floor32(_8974) + floor32(_4314) + floor32(_26) + (6 * ceil32(return_data.size)) + 288]]):
                                    if not Mask(112, 0, ext_call.return_data[32]):
                                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if Mask(112, 0, ext_call.return_data[0]):
                                            if not 0 / Mask(112, 0, ext_call.return_data[0]):
                                                if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                                                    return (0 / 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]))
                                            else:
                                                if 10^18 * 0 / Mask(112, 0, ext_call.return_data[0]) / 0 / Mask(112, 0, ext_call.return_data[0]) != 10^18:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[floor32(_13057) + floor32(_8974) + floor32(_4314) + floor32(_26) + (6 * ceil32(return_data.size)) + 453 len 31]
                                                if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                                                    return (10^18 * 0 / Mask(112, 0, ext_call.return_data[0]) / 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]))
                                            ('iszero', ('div', ('mul', 1000000000000000000, ('mask_shl', 112, 0, 0, ('ext_call.return_data', 0, 32))), ('mask_shl', 112, 0, 0, ('ext_call.return_data', 32, 32))))
                                    else:
                                        if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 10^18:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[floor32(_13057) + floor32(_8974) + floor32(_4314) + floor32(_26) + (6 * ceil32(return_data.size)) + 453 len 31]
                                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if Mask(112, 0, ext_call.return_data[0]):
                                            if not 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                                                if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                                                    return (0 / 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]))
                                            else:
                                                if 10^18 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) != 10^18:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[floor32(_13057) + floor32(_8974) + floor32(_4314) + floor32(_26) + (6 * ceil32(return_data.size)) + 453 len 31]
                                                if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                                                    return (10^18 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]))
                                            ('iszero', ('div', ('mul', 1000000000000000000, ('mask_shl', 112, 0, 0, ('ext_call.return_data', 0, 32))), ('mask_shl', 112, 0, 0, ('ext_call.return_data', 32, 32))))
                                else:
                                    if not Mask(112, 0, ext_call.return_data[0]):
                                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if Mask(112, 0, ext_call.return_data[32]):
                                            if not 0 / Mask(112, 0, ext_call.return_data[32]):
                                                if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                                                    return (0 / 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]))
                                            else:
                                                if 10^18 * 0 / Mask(112, 0, ext_call.return_data[32]) / 0 / Mask(112, 0, ext_call.return_data[32]) != 10^18:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[floor32(_13057) + floor32(_8974) + floor32(_4314) + floor32(_26) + (6 * ceil32(return_data.size)) + 453 len 31]
                                                if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                                                    return (10^18 * 0 / Mask(112, 0, ext_call.return_data[32]) / 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]))
                                            ('iszero', ('div', ('mul', 1000000000000000000, ('mask_shl', 112, 0, 0, ('ext_call.return_data', 0, 32))), ('mask_shl', 112, 0, 0, ('ext_call.return_data', 32, 32))))
                                    else:
                                        if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 10^18:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[floor32(_13057) + floor32(_8974) + floor32(_4314) + floor32(_26) + (6 * ceil32(return_data.size)) + 453 len 31]
                                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if Mask(112, 0, ext_call.return_data[32]):
                                            if not 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                                                if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                                                    return (0 / 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]))
                                            else:
                                                if 10^18 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) / 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) != 10^18:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[floor32(_13057) + floor32(_8974) + floor32(_4314) + floor32(_26) + (6 * ceil32(return_data.size)) + 453 len 31]
                                                if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                                                    return (10^18 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) / 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]))
                                            ('iszero', ('div', ('mul', 1000000000000000000, ('mask_shl', 112, 0, 0, ('ext_call.return_data', 0, 32))), ('mask_shl', 112, 0, 0, ('ext_call.return_data', 32, 32))))
    revert
}



}
