contract main {




// =====================  Runtime code  =====================


address stor0;

function _fallback() payable {
    revert
}

function sub_c86d4fb4(?) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(stor0)
    staticcall stor0.0xa0717ff3 with:
            gas gas_remaining wei
           args arg1, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    return ext_call.return_data[64]
}

function sub_8d571a7e(?) payable {
    require calldata.size - 4 >= 128
    if arg4 <= arg3:
        return 0
    if block.number <= arg3:
        return 0
    if block.number > arg4:
        if arg3 > arg4:
            revert with 0, 'SafeMath: subtraction overflow'
        require ext_code.size(stor0)
        staticcall stor0.0xa0717ff3 with:
                gas gas_remaining wei
               args arg1, arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        if not arg4 - arg3:
            return 0
        if (arg4 * ext_call.return_data[64]) - (arg3 * ext_call.return_data[64]) / arg4 - arg3 != ext_call.return_data[64]:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        return ((arg4 * ext_call.return_data[64]) - (arg3 * ext_call.return_data[64]))
    if arg3 > block.number:
        revert with 0, 'SafeMath: subtraction overflow'
    require ext_code.size(stor0)
    staticcall stor0.0xa0717ff3 with:
            gas gas_remaining wei
           args arg1, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    if not block.number - arg3:
        return 0
    if (block.number * ext_call.return_data[64]) - (arg3 * ext_call.return_data[64]) / block.number - arg3 != ext_call.return_data[64]:
        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    return ((block.number * ext_call.return_data[64]) - (arg3 * ext_call.return_data[64]))
}

function sub_3f4e651c(?) payable {
    require calldata.size - 4 >= 160
    if not arg3:
        return 0
    if not arg4:
        return 0
    if not arg5:
        return 0
    require ext_code.size(stor0)
    staticcall stor0.0xa0717ff3 with:
            gas gas_remaining wei
           args arg1, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    if not ext_call.return_data[32]:
        return 0
    if not arg3:
        if not arg4:
            revert with 0, 'SafeMath: division by zero'
        if not ext_call.return_data[32]:
            revert with 0, 'SafeMath: division by zero'
        return (0 / arg4 / ext_call.return_data[32])
    if ext_call.return_data[64] * arg3 / arg3 != ext_call.return_data[64]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if not ext_call.return_data[64] * arg3:
        if not arg4:
            revert with 0, 'SafeMath: division by zero'
        if not ext_call.return_data[32]:
            revert with 0, 'SafeMath: division by zero'
        return (0 / arg4 / ext_call.return_data[32])
    if arg5 * ext_call.return_data[64] * arg3 / ext_call.return_data[64] * arg3 != arg5:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if not arg5 * ext_call.return_data[64] * arg3:
        if not arg4:
            revert with 0, 'SafeMath: division by zero'
        if not ext_call.return_data[32]:
            revert with 0, 'SafeMath: division by zero'
        return (0 / arg4 / ext_call.return_data[32])
    if 10^18 * arg5 * ext_call.return_data[64] * arg3 / arg5 * ext_call.return_data[64] * arg3 != 10^18:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if not arg4:
        revert with 0, 'SafeMath: division by zero'
    if not ext_call.return_data[32]:
        revert with 0, 'SafeMath: division by zero'
    return (10^18 * arg5 * ext_call.return_data[64] * arg3 / arg4 / ext_call.return_data[32])
}



}
