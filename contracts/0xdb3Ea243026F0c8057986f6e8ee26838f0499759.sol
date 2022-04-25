contract main {




// =====================  Runtime code  =====================


#
#  - sub_dfe0a591(?)
#
function _fallback() payable {
    revert
}

function sub_12077cf5(?) payable {
    require calldata.size - 4 >= 96
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + (32 * arg3.length) + 36 <= calldata.size
    mem[96] = arg3.length
    mem[128 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    if not arg2:
        return 0
    if arg3.length < 2:
        return arg2
    mem[(32 * arg3.length) + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[(32 * arg3.length) + 132] = arg2
    mem[(32 * arg3.length) + 164] = 64
    mem[(32 * arg3.length) + 196] = arg3.length
    mem[(32 * arg3.length) + 228 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
    require ext_code.size(arg1)
    staticcall arg1.getAmountsOut(uint256 rg1, address[] rg2) with:
            gas gas_remaining wei
           args arg2, Array(len=arg3.length, data=call.data[arg3 + 36 len floor32(arg3.length)], mem[(32 * arg3.length) + floor32(arg3.length) + 228 len (32 * arg3.length) - floor32(arg3.length)])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(32 * arg3.length) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (32 * arg3.length) + ceil32(return_data.size) + 128
    require return_data.size >= 32
    _26 = mem[(32 * arg3.length) + 128 len 4], Mask(224, 32, arg2) >> 32
    require mem[(32 * arg3.length) + 128 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
    require mem[(32 * arg3.length) + 128 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
    require mem[(32 * arg3.length) + mem[(32 * arg3.length) + 128 len 4], Mask(224, 32, arg2) >> 32 + 128] <= 4294967296 and mem[(32 * arg3.length) + 128 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[(32 * arg3.length) + mem[(32 * arg3.length) + 128 len 4], Mask(224, 32, arg2) >> 32 + 128]) + 32 <= return_data.size
    mem[(32 * arg3.length) + ceil32(return_data.size) + 128] = mem[(32 * arg3.length) + mem[(32 * arg3.length) + 128 len 4], Mask(224, 32, arg2) >> 32 + 128]
    _29 = mem[(32 * arg3.length) + _26 + 128]
    mem[(32 * arg3.length) + ceil32(return_data.size) + 160 len floor32(mem[(32 * arg3.length) + _26 + 128])] = mem[(32 * arg3.length) + _26 + 160 len floor32(mem[(32 * arg3.length) + _26 + 128])]
    mem[64] = (32 * _29) + (32 * arg3.length) + ceil32(return_data.size) + 160
    require mem[(32 * arg3.length) + ceil32(return_data.size) + 128] - 1 < mem[(32 * arg3.length) + ceil32(return_data.size) + 128]
    mem[(32 * _29) + (32 * arg3.length) + ceil32(return_data.size) + 160] = mem[(32 * mem[(32 * arg3.length) + ceil32(return_data.size) + 128] - 1) + (32 * arg3.length) + ceil32(return_data.size) + 160]
    return memory
      from (32 * _29) + (32 * arg3.length) + ceil32(return_data.size) + 160
       len 32
}

function sub_a9329b31(?) payable {
    require calldata.size - 4 >= 64
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
    if not arg2:
        return address(ext_call.return_data[0]), 0, address(ext_call.return_data[0]), 0
    require ext_code.size(arg1)
    staticcall arg1.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_code.size(arg1)
    staticcall arg1.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not arg2:
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        if ext_call.return_data[0]:
            if not arg2:
                if ext_call.return_data[0] <= 0:
                    revert with 0, 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    return address(ext_call.return_data[0]), 
                           0 / ext_call.return_data[0],
                           address(ext_call.return_data[0]),
                           0 / ext_call.return_data[0]
            else:
                if Mask(112, 0, ext_call.return_data[32]) * arg2 / arg2 != Mask(112, 0, ext_call.return_data[32]):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if ext_call.return_data[0] <= 0:
                    revert with 0, 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    return address(ext_call.return_data[0]), 
                           0 / ext_call.return_data[0],
                           address(ext_call.return_data[0]),
                           Mask(112, 0, ext_call.return_data[32]) * arg2 / ext_call.return_data[0]
            ('iszero', ('ext_call.return_data', 0, 32))
    else:
        if Mask(112, 0, ext_call.return_data[0]) * arg2 / arg2 != Mask(112, 0, ext_call.return_data[0]):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        if ext_call.return_data[0]:
            if not arg2:
                if ext_call.return_data[0] <= 0:
                    revert with 0, 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    return address(ext_call.return_data[0]), 
                           Mask(112, 0, ext_call.return_data[0]) * arg2 / ext_call.return_data[0],
                           address(ext_call.return_data[0]),
                           0 / ext_call.return_data[0]
            else:
                if Mask(112, 0, ext_call.return_data[32]) * arg2 / arg2 != Mask(112, 0, ext_call.return_data[32]):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if ext_call.return_data[0] <= 0:
                    revert with 0, 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    return address(ext_call.return_data[0]), 
                           Mask(112, 0, ext_call.return_data[0]) * arg2 / ext_call.return_data[0],
                           address(ext_call.return_data[0]),
                           Mask(112, 0, ext_call.return_data[32]) * arg2 / ext_call.return_data[0]
            ('iszero', ('ext_call.return_data', 0, 32))
    revert
}



}
