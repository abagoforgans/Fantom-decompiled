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
        return address(sha3(0, arg1, sha3(arg2, arg3), 0xc8a8a7c2be8c7707980ffe0ad138290adb87b59720c062c427ee0f43dab6233))
    if not arg3:
        revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
    return address(sha3(0, arg1, sha3(arg3, arg2), 0xc8a8a7c2be8c7707980ffe0ad138290adb87b59720c062c427ee0f43dab6233))
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
            require ext_code.size(address(sha3(0, arg1, sha3(arg2, arg3), 0xc8a8a7c2be8c7707980ffe0ad138290adb87b59720c062c427ee0f43dab6233)))
            staticcall address(sha3(0, arg1, sha3(arg2, arg3), 0xc8a8a7c2be8c7707980ffe0ad138290adb87b59720c062c427ee0f43dab6233)).getReserves() with:
                    gas gas_remaining wei
        else:
            if not arg3:
                revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
            require ext_code.size(address(sha3(0, arg1, sha3(arg3, arg2), 0xc8a8a7c2be8c7707980ffe0ad138290adb87b59720c062c427ee0f43dab6233)))
            staticcall address(sha3(0, arg1, sha3(arg3, arg2), 0xc8a8a7c2be8c7707980ffe0ad138290adb87b59720c062c427ee0f43dab6233)).getReserves() with:
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
            require ext_code.size(address(sha3(0, arg1, sha3(arg2, arg3), 0xc8a8a7c2be8c7707980ffe0ad138290adb87b59720c062c427ee0f43dab6233)))
            staticcall address(sha3(0, arg1, sha3(arg2, arg3), 0xc8a8a7c2be8c7707980ffe0ad138290adb87b59720c062c427ee0f43dab6233)).getReserves() with:
                    gas gas_remaining wei
        else:
            if not arg3:
                revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
            require ext_code.size(address(sha3(0, arg1, sha3(arg3, arg2), 0xc8a8a7c2be8c7707980ffe0ad138290adb87b59720c062c427ee0f43dab6233)))
            staticcall address(sha3(0, arg1, sha3(arg3, arg2), 0xc8a8a7c2be8c7707980ffe0ad138290adb87b59720c062c427ee0f43dab6233)).getReserves() with:
                    gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        if arg3 == arg2:
            return ext_call.return_data[18 len 14], ext_call.return_data[32] << 144
    return ext_call.return_data[50 len 14], ext_call.return_data[0] << 144
}

function sub_d62f7f1a(?) payable {
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
            require ext_code.size(address(sha3(0, arg1, sha3(arg2, arg3), 0xc8a8a7c2be8c7707980ffe0ad138290adb87b59720c062c427ee0f43dab6233)))
            staticcall address(sha3(0, arg1, sha3(arg2, arg3), 0xc8a8a7c2be8c7707980ffe0ad138290adb87b59720c062c427ee0f43dab6233)).getReserves() with:
                    gas gas_remaining wei
        else:
            if not arg3:
                revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
            require ext_code.size(address(sha3(0, arg1, sha3(arg3, arg2), 0xc8a8a7c2be8c7707980ffe0ad138290adb87b59720c062c427ee0f43dab6233)))
            staticcall address(sha3(0, arg1, sha3(arg3, arg2), 0xc8a8a7c2be8c7707980ffe0ad138290adb87b59720c062c427ee0f43dab6233)).getReserves() with:
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
                    if 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] == 1000:
                        if 1000 * ext_call.return_data[18 len 14] >= 1000 * ext_call.return_data[18 len 14]:
                            if 1000 * ext_call.return_data[18 len 14]:
                                return (0 / 1000 * ext_call.return_data[18 len 14])
            else:
                if 997 * arg4 / arg4 == 997:
                    if not 997 * arg4:
                        if not ext_call.return_data[18 len 14]:
                            if 997 * arg4 >= 0:
                                if 997 * arg4:
                                    return (0 / 997 * arg4)
                        else:
                            if 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] == 1000:
                                if (997 * arg4) + (1000 * ext_call.return_data[18 len 14]) >= 1000 * ext_call.return_data[18 len 14]:
                                    if (997 * arg4) + (1000 * ext_call.return_data[18 len 14]):
                                        return (0 / (997 * arg4) + (1000 * ext_call.return_data[18 len 14]))
                    else:
                        if 997 * ext_call.return_data[50 len 14] * arg4 / 997 * arg4 == ext_call.return_data[50 len 14]:
                            if not ext_call.return_data[18 len 14]:
                                if 997 * arg4 >= 0:
                                    if 997 * arg4:
                                        return (997 * ext_call.return_data[50 len 14] * arg4 / 997 * arg4)
                            else:
                                if 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] == 1000:
                                    if (997 * arg4) + (1000 * ext_call.return_data[18 len 14]) >= 1000 * ext_call.return_data[18 len 14]:
                                        if (997 * arg4) + (1000 * ext_call.return_data[18 len 14]):
                                            return (997 * ext_call.return_data[50 len 14] * arg4 / (997 * arg4) + (1000 * ext_call.return_data[18 len 14]))
        else:
            if ext_call.return_data[50 len 14] <= 0:
                revert with 0, 32, 40, 0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[393 len 24]
            if ext_call.return_data[18 len 14] <= 0:
                revert with 0, 32, 40, 0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[393 len 24]
            if not arg4:
                if ext_call.return_data[50 len 14]:
                    if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] == 1000:
                        if 1000 * ext_call.return_data[50 len 14] >= 1000 * ext_call.return_data[50 len 14]:
                            if 1000 * ext_call.return_data[50 len 14]:
                                return (0 / 1000 * ext_call.return_data[50 len 14])
            else:
                if 997 * arg4 / arg4 == 997:
                    if not 997 * arg4:
                        if not ext_call.return_data[50 len 14]:
                            if 997 * arg4 >= 0:
                                if 997 * arg4:
                                    return (0 / 997 * arg4)
                        else:
                            if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] == 1000:
                                if (997 * arg4) + (1000 * ext_call.return_data[50 len 14]) >= 1000 * ext_call.return_data[50 len 14]:
                                    if (997 * arg4) + (1000 * ext_call.return_data[50 len 14]):
                                        return (0 / (997 * arg4) + (1000 * ext_call.return_data[50 len 14]))
                    else:
                        if 997 * ext_call.return_data[18 len 14] * arg4 / 997 * arg4 == ext_call.return_data[18 len 14]:
                            if not ext_call.return_data[50 len 14]:
                                if 997 * arg4 >= 0:
                                    if 997 * arg4:
                                        return (997 * ext_call.return_data[18 len 14] * arg4 / 997 * arg4)
                            else:
                                if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] == 1000:
                                    if (997 * arg4) + (1000 * ext_call.return_data[50 len 14]) >= 1000 * ext_call.return_data[50 len 14]:
                                        if (997 * arg4) + (1000 * ext_call.return_data[50 len 14]):
                                            return (997 * ext_call.return_data[18 len 14] * arg4 / (997 * arg4) + (1000 * ext_call.return_data[50 len 14]))
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
            require ext_code.size(address(sha3(0, arg1, sha3(arg2, arg3), 0xc8a8a7c2be8c7707980ffe0ad138290adb87b59720c062c427ee0f43dab6233)))
            staticcall address(sha3(0, arg1, sha3(arg2, arg3), 0xc8a8a7c2be8c7707980ffe0ad138290adb87b59720c062c427ee0f43dab6233)).getReserves() with:
                    gas gas_remaining wei
        else:
            if not arg3:
                revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
            require ext_code.size(address(sha3(0, arg1, sha3(arg3, arg2), 0xc8a8a7c2be8c7707980ffe0ad138290adb87b59720c062c427ee0f43dab6233)))
            staticcall address(sha3(0, arg1, sha3(arg3, arg2), 0xc8a8a7c2be8c7707980ffe0ad138290adb87b59720c062c427ee0f43dab6233)).getReserves() with:
                    gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        if arg4 <= 0:
            revert with 0, 32, 43, 0x59556e697377617056324c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e, mem[396 len 21]
        if arg3 == arg2:
            if ext_call.return_data[18 len 14] <= 0:
                revert with 0, 32, 40, 0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[393 len 24]
            if ext_call.return_data[50 len 14] <= 0:
                revert with 0, 32, 40, 0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[393 len 24]
            if not arg4:
                if ext_call.return_data[18 len 14]:
                    if 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] == 1000:
                        if 1000 * ext_call.return_data[18 len 14] >= 1000 * ext_call.return_data[18 len 14]:
                            if 1000 * ext_call.return_data[18 len 14]:
                                return (0 / 1000 * ext_call.return_data[18 len 14])
            else:
                if 997 * arg4 / arg4 == 997:
                    if not 997 * arg4:
                        if not ext_call.return_data[18 len 14]:
                            if 997 * arg4 >= 0:
                                if 997 * arg4:
                                    return (0 / 997 * arg4)
                        else:
                            if 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] == 1000:
                                if (997 * arg4) + (1000 * ext_call.return_data[18 len 14]) >= 1000 * ext_call.return_data[18 len 14]:
                                    if (997 * arg4) + (1000 * ext_call.return_data[18 len 14]):
                                        return (0 / (997 * arg4) + (1000 * ext_call.return_data[18 len 14]))
                    else:
                        if 997 * ext_call.return_data[50 len 14] * arg4 / 997 * arg4 == ext_call.return_data[50 len 14]:
                            if not ext_call.return_data[18 len 14]:
                                if 997 * arg4 >= 0:
                                    if 997 * arg4:
                                        return (997 * ext_call.return_data[50 len 14] * arg4 / 997 * arg4)
                            else:
                                if 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] == 1000:
                                    if (997 * arg4) + (1000 * ext_call.return_data[18 len 14]) >= 1000 * ext_call.return_data[18 len 14]:
                                        if (997 * arg4) + (1000 * ext_call.return_data[18 len 14]):
                                            return (997 * ext_call.return_data[50 len 14] * arg4 / (997 * arg4) + (1000 * ext_call.return_data[18 len 14]))
        else:
            if ext_call.return_data[50 len 14] <= 0:
                revert with 0, 32, 40, 0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[393 len 24]
            if ext_call.return_data[18 len 14] <= 0:
                revert with 0, 32, 40, 0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[393 len 24]
            if not arg4:
                if ext_call.return_data[50 len 14]:
                    if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] == 1000:
                        if 1000 * ext_call.return_data[50 len 14] >= 1000 * ext_call.return_data[50 len 14]:
                            if 1000 * ext_call.return_data[50 len 14]:
                                return (0 / 1000 * ext_call.return_data[50 len 14])
            else:
                if 997 * arg4 / arg4 == 997:
                    if not 997 * arg4:
                        if not ext_call.return_data[50 len 14]:
                            if 997 * arg4 >= 0:
                                if 997 * arg4:
                                    return (0 / 997 * arg4)
                        else:
                            if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] == 1000:
                                if (997 * arg4) + (1000 * ext_call.return_data[50 len 14]) >= 1000 * ext_call.return_data[50 len 14]:
                                    if (997 * arg4) + (1000 * ext_call.return_data[50 len 14]):
                                        return (0 / (997 * arg4) + (1000 * ext_call.return_data[50 len 14]))
                    else:
                        if 997 * ext_call.return_data[18 len 14] * arg4 / 997 * arg4 == ext_call.return_data[18 len 14]:
                            if not ext_call.return_data[50 len 14]:
                                if 997 * arg4 >= 0:
                                    if 997 * arg4:
                                        return (997 * ext_call.return_data[18 len 14] * arg4 / 997 * arg4)
                            else:
                                if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] == 1000:
                                    if (997 * arg4) + (1000 * ext_call.return_data[50 len 14]) >= 1000 * ext_call.return_data[50 len 14]:
                                        if (997 * arg4) + (1000 * ext_call.return_data[50 len 14]):
                                            return (997 * ext_call.return_data[18 len 14] * arg4 / (997 * arg4) + (1000 * ext_call.return_data[50 len 14]))
    revert
}

function sub_587242ed(?) payable {
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
            require ext_code.size(address(sha3(0, arg1, sha3(arg2, arg3), 0xc8a8a7c2be8c7707980ffe0ad138290adb87b59720c062c427ee0f43dab6233)))
            staticcall address(sha3(0, arg1, sha3(arg2, arg3), 0xc8a8a7c2be8c7707980ffe0ad138290adb87b59720c062c427ee0f43dab6233)).getReserves() with:
                    gas gas_remaining wei
        else:
            if not arg3:
                revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
            require ext_code.size(address(sha3(0, arg1, sha3(arg3, arg2), 0xc8a8a7c2be8c7707980ffe0ad138290adb87b59720c062c427ee0f43dab6233)))
            staticcall address(sha3(0, arg1, sha3(arg3, arg2), 0xc8a8a7c2be8c7707980ffe0ad138290adb87b59720c062c427ee0f43dab6233)).getReserves() with:
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
                        if (997 * ext_call.return_data[50 len 14]) - (997 * arg4) / ext_call.return_data[50 len 14] - arg4 == 997:
                            if (997 * ext_call.return_data[50 len 14]) - (997 * arg4):
                                if (0 / (997 * ext_call.return_data[50 len 14]) - (997 * arg4)) + 1 >= 0 / (997 * ext_call.return_data[50 len 14]) - (997 * arg4):
                                    return ((0 / (997 * ext_call.return_data[50 len 14]) - (997 * arg4)) + 1)
            else:
                if arg4 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] == arg4:
                    if not arg4 * ext_call.return_data[18 len 14]:
                        if arg4 <= ext_call.return_data[50 len 14]:
                            if ext_call.return_data[50 len 14] - arg4:
                                if (997 * ext_call.return_data[50 len 14]) - (997 * arg4) / ext_call.return_data[50 len 14] - arg4 == 997:
                                    if (997 * ext_call.return_data[50 len 14]) - (997 * arg4):
                                        if (0 / (997 * ext_call.return_data[50 len 14]) - (997 * arg4)) + 1 >= 0 / (997 * ext_call.return_data[50 len 14]) - (997 * arg4):
                                            return ((0 / (997 * ext_call.return_data[50 len 14]) - (997 * arg4)) + 1)
                    else:
                        if 1000 * arg4 * ext_call.return_data[18 len 14] / arg4 * ext_call.return_data[18 len 14] == 1000:
                            if arg4 <= ext_call.return_data[50 len 14]:
                                if ext_call.return_data[50 len 14] - arg4:
                                    if (997 * ext_call.return_data[50 len 14]) - (997 * arg4) / ext_call.return_data[50 len 14] - arg4 == 997:
                                        if (997 * ext_call.return_data[50 len 14]) - (997 * arg4):
                                            if (1000 * arg4 * ext_call.return_data[18 len 14] / (997 * ext_call.return_data[50 len 14]) - (997 * arg4)) + 1 >= 1000 * arg4 * ext_call.return_data[18 len 14] / (997 * ext_call.return_data[50 len 14]) - (997 * arg4):
                                                return ((1000 * arg4 * ext_call.return_data[18 len 14] / (997 * ext_call.return_data[50 len 14]) - (997 * arg4)) + 1)
        else:
            if ext_call.return_data[50 len 14] <= 0:
                revert with 0, 32, 40, 0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[393 len 24]
            if ext_call.return_data[18 len 14] <= 0:
                revert with 0, 32, 40, 0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[393 len 24]
            if not ext_call.return_data[50 len 14]:
                if arg4 <= ext_call.return_data[18 len 14]:
                    if ext_call.return_data[18 len 14] - arg4:
                        if (997 * ext_call.return_data[18 len 14]) - (997 * arg4) / ext_call.return_data[18 len 14] - arg4 == 997:
                            if (997 * ext_call.return_data[18 len 14]) - (997 * arg4):
                                if (0 / (997 * ext_call.return_data[18 len 14]) - (997 * arg4)) + 1 >= 0 / (997 * ext_call.return_data[18 len 14]) - (997 * arg4):
                                    return ((0 / (997 * ext_call.return_data[18 len 14]) - (997 * arg4)) + 1)
            else:
                if arg4 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] == arg4:
                    if not arg4 * ext_call.return_data[50 len 14]:
                        if arg4 <= ext_call.return_data[18 len 14]:
                            if ext_call.return_data[18 len 14] - arg4:
                                if (997 * ext_call.return_data[18 len 14]) - (997 * arg4) / ext_call.return_data[18 len 14] - arg4 == 997:
                                    if (997 * ext_call.return_data[18 len 14]) - (997 * arg4):
                                        if (0 / (997 * ext_call.return_data[18 len 14]) - (997 * arg4)) + 1 >= 0 / (997 * ext_call.return_data[18 len 14]) - (997 * arg4):
                                            return ((0 / (997 * ext_call.return_data[18 len 14]) - (997 * arg4)) + 1)
                    else:
                        if 1000 * arg4 * ext_call.return_data[50 len 14] / arg4 * ext_call.return_data[50 len 14] == 1000:
                            if arg4 <= ext_call.return_data[18 len 14]:
                                if ext_call.return_data[18 len 14] - arg4:
                                    if (997 * ext_call.return_data[18 len 14]) - (997 * arg4) / ext_call.return_data[18 len 14] - arg4 == 997:
                                        if (997 * ext_call.return_data[18 len 14]) - (997 * arg4):
                                            if (1000 * arg4 * ext_call.return_data[50 len 14] / (997 * ext_call.return_data[18 len 14]) - (997 * arg4)) + 1 >= 1000 * arg4 * ext_call.return_data[50 len 14] / (997 * ext_call.return_data[18 len 14]) - (997 * arg4):
                                                return ((1000 * arg4 * ext_call.return_data[50 len 14] / (997 * ext_call.return_data[18 len 14]) - (997 * arg4)) + 1)
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
            require ext_code.size(address(sha3(0, arg1, sha3(arg2, arg3), 0xc8a8a7c2be8c7707980ffe0ad138290adb87b59720c062c427ee0f43dab6233)))
            staticcall address(sha3(0, arg1, sha3(arg2, arg3), 0xc8a8a7c2be8c7707980ffe0ad138290adb87b59720c062c427ee0f43dab6233)).getReserves() with:
                    gas gas_remaining wei
        else:
            if not arg3:
                revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
            require ext_code.size(address(sha3(0, arg1, sha3(arg3, arg2), 0xc8a8a7c2be8c7707980ffe0ad138290adb87b59720c062c427ee0f43dab6233)))
            staticcall address(sha3(0, arg1, sha3(arg3, arg2), 0xc8a8a7c2be8c7707980ffe0ad138290adb87b59720c062c427ee0f43dab6233)).getReserves() with:
                    gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        if arg4 <= 0:
            revert with 0, 32, 44, 0xfe556e697377617056324c6962726172793a20494e53554646494349454e545f4f55545055545f414d4f554e, mem[397 len 20]
        if arg3 == arg2:
            if ext_call.return_data[18 len 14] <= 0:
                revert with 0, 32, 40, 0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[393 len 24]
            if ext_call.return_data[50 len 14] <= 0:
                revert with 0, 32, 40, 0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[393 len 24]
            if not ext_call.return_data[18 len 14]:
                if arg4 <= ext_call.return_data[50 len 14]:
                    if ext_call.return_data[50 len 14] - arg4:
                        if (997 * ext_call.return_data[50 len 14]) - (997 * arg4) / ext_call.return_data[50 len 14] - arg4 == 997:
                            if (997 * ext_call.return_data[50 len 14]) - (997 * arg4):
                                if (0 / (997 * ext_call.return_data[50 len 14]) - (997 * arg4)) + 1 >= 0 / (997 * ext_call.return_data[50 len 14]) - (997 * arg4):
                                    return ((0 / (997 * ext_call.return_data[50 len 14]) - (997 * arg4)) + 1)
            else:
                if arg4 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] == arg4:
                    if not arg4 * ext_call.return_data[18 len 14]:
                        if arg4 <= ext_call.return_data[50 len 14]:
                            if ext_call.return_data[50 len 14] - arg4:
                                if (997 * ext_call.return_data[50 len 14]) - (997 * arg4) / ext_call.return_data[50 len 14] - arg4 == 997:
                                    if (997 * ext_call.return_data[50 len 14]) - (997 * arg4):
                                        if (0 / (997 * ext_call.return_data[50 len 14]) - (997 * arg4)) + 1 >= 0 / (997 * ext_call.return_data[50 len 14]) - (997 * arg4):
                                            return ((0 / (997 * ext_call.return_data[50 len 14]) - (997 * arg4)) + 1)
                    else:
                        if 1000 * arg4 * ext_call.return_data[18 len 14] / arg4 * ext_call.return_data[18 len 14] == 1000:
                            if arg4 <= ext_call.return_data[50 len 14]:
                                if ext_call.return_data[50 len 14] - arg4:
                                    if (997 * ext_call.return_data[50 len 14]) - (997 * arg4) / ext_call.return_data[50 len 14] - arg4 == 997:
                                        if (997 * ext_call.return_data[50 len 14]) - (997 * arg4):
                                            if (1000 * arg4 * ext_call.return_data[18 len 14] / (997 * ext_call.return_data[50 len 14]) - (997 * arg4)) + 1 >= 1000 * arg4 * ext_call.return_data[18 len 14] / (997 * ext_call.return_data[50 len 14]) - (997 * arg4):
                                                return ((1000 * arg4 * ext_call.return_data[18 len 14] / (997 * ext_call.return_data[50 len 14]) - (997 * arg4)) + 1)
        else:
            if ext_call.return_data[50 len 14] <= 0:
                revert with 0, 32, 40, 0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[393 len 24]
            if ext_call.return_data[18 len 14] <= 0:
                revert with 0, 32, 40, 0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[393 len 24]
            if not ext_call.return_data[50 len 14]:
                if arg4 <= ext_call.return_data[18 len 14]:
                    if ext_call.return_data[18 len 14] - arg4:
                        if (997 * ext_call.return_data[18 len 14]) - (997 * arg4) / ext_call.return_data[18 len 14] - arg4 == 997:
                            if (997 * ext_call.return_data[18 len 14]) - (997 * arg4):
                                if (0 / (997 * ext_call.return_data[18 len 14]) - (997 * arg4)) + 1 >= 0 / (997 * ext_call.return_data[18 len 14]) - (997 * arg4):
                                    return ((0 / (997 * ext_call.return_data[18 len 14]) - (997 * arg4)) + 1)
            else:
                if arg4 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] == arg4:
                    if not arg4 * ext_call.return_data[50 len 14]:
                        if arg4 <= ext_call.return_data[18 len 14]:
                            if ext_call.return_data[18 len 14] - arg4:
                                if (997 * ext_call.return_data[18 len 14]) - (997 * arg4) / ext_call.return_data[18 len 14] - arg4 == 997:
                                    if (997 * ext_call.return_data[18 len 14]) - (997 * arg4):
                                        if (0 / (997 * ext_call.return_data[18 len 14]) - (997 * arg4)) + 1 >= 0 / (997 * ext_call.return_data[18 len 14]) - (997 * arg4):
                                            return ((0 / (997 * ext_call.return_data[18 len 14]) - (997 * arg4)) + 1)
                    else:
                        if 1000 * arg4 * ext_call.return_data[50 len 14] / arg4 * ext_call.return_data[50 len 14] == 1000:
                            if arg4 <= ext_call.return_data[18 len 14]:
                                if ext_call.return_data[18 len 14] - arg4:
                                    if (997 * ext_call.return_data[18 len 14]) - (997 * arg4) / ext_call.return_data[18 len 14] - arg4 == 997:
                                        if (997 * ext_call.return_data[18 len 14]) - (997 * arg4):
                                            if (1000 * arg4 * ext_call.return_data[50 len 14] / (997 * ext_call.return_data[18 len 14]) - (997 * arg4)) + 1 >= 1000 * arg4 * ext_call.return_data[50 len 14] / (997 * ext_call.return_data[18 len 14]) - (997 * arg4):
                                                return ((1000 * arg4 * ext_call.return_data[50 len 14] / (997 * ext_call.return_data[18 len 14]) - (997 * arg4)) + 1)
    revert
}

function sub_dfd143c7(?) payable {
    require calldata.size - 4 >= 64
    mem[100] = arg2
    require ext_code.size(arg1)
    staticcall arg1.allPairs(uint256 rg1) with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).token1() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
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
    _20 = mem[96]
    require mem[96] <= 4294967296
    require mem[96] + 32 <= return_data.size
    require return_data.size >= mem[mem[96] + 96] + mem[96] + 32 and mem[mem[96] + 96] <= 4294967296
    mem[ceil32(return_data.size) + 96] = mem[mem[96] + 96]
    _23 = mem[_20 + 96]
    mem[ceil32(return_data.size) + 128 len ceil32(mem[_20 + 96])] = mem[_20 + 128 len ceil32(mem[_20 + 96])]
    if not _23 % 32:
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).decimals() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).token1() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[_23 + ceil32(return_data.size) + 128] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).symbol() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[_23 + ceil32(return_data.size) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = _23 + (2 * ceil32(return_data.size)) + 128
        require return_data.size >= 32
        _167 = mem[_23 + ceil32(return_data.size) + 128]
        require mem[_23 + ceil32(return_data.size) + 128] <= 4294967296
        require mem[_23 + ceil32(return_data.size) + 128] + 32 <= return_data.size
        require return_data.size >= mem[_23 + ceil32(return_data.size) + mem[_23 + ceil32(return_data.size) + 128] + 128] + mem[_23 + ceil32(return_data.size) + 128] + 32 and mem[_23 + ceil32(return_data.size) + mem[_23 + ceil32(return_data.size) + 128] + 128] <= 4294967296
        mem[_23 + (2 * ceil32(return_data.size)) + 128] = mem[_23 + ceil32(return_data.size) + mem[_23 + ceil32(return_data.size) + 128] + 128]
        _173 = mem[_23 + ceil32(return_data.size) + _167 + 128]
        mem[_23 + (2 * ceil32(return_data.size)) + 160 len ceil32(mem[_23 + ceil32(return_data.size) + _167 + 128])] = mem[_23 + ceil32(return_data.size) + _167 + 160 len ceil32(mem[_23 + ceil32(return_data.size) + _167 + 128])]
        if not _173 % 32:
            mem[64] = _173 + _23 + (2 * ceil32(return_data.size)) + 160
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).decimals() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[_173 + _23 + (2 * ceil32(return_data.size)) + 160] = address(ext_call.return_data[0])
            mem[_173 + _23 + (2 * ceil32(return_data.size)) + 192] = address(ext_call.return_data[0])
            mem[_173 + _23 + (2 * ceil32(return_data.size)) + 256] = uint8(ext_call.return_data[0])
            mem[_173 + _23 + (2 * ceil32(return_data.size)) + 288] = address(ext_call.return_data[0])
            mem[_173 + _23 + (2 * ceil32(return_data.size)) + 352] = uint8(ext_call.return_data[0])
            mem[_173 + _23 + (2 * ceil32(return_data.size)) + 224] = 224
            mem[_173 + _23 + (2 * ceil32(return_data.size)) + 384] = mem[ceil32(return_data.size) + 96]
            mem[_173 + _23 + (2 * ceil32(return_data.size)) + 416 len ceil32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len ceil32(mem[ceil32(return_data.size) + 96])]
            mem[_173 + _23 + (2 * ceil32(return_data.size)) + 320] = mem[ceil32(return_data.size) + 96] + 256
            mem[mem[ceil32(return_data.size) + 96] + _173 + _23 + (2 * ceil32(return_data.size)) + 416] = mem[_23 + (2 * ceil32(return_data.size)) + 128]
            mem[mem[ceil32(return_data.size) + 96] + _173 + _23 + (2 * ceil32(return_data.size)) + 448 len ceil32(mem[_23 + (2 * ceil32(return_data.size)) + 128])] = mem[_23 + (2 * ceil32(return_data.size)) + 160 len ceil32(mem[_23 + (2 * ceil32(return_data.size)) + 128])]
            if not mem[_23 + (2 * ceil32(return_data.size)) + 128] % 32:
                return address(ext_call.return_data[0]), 
                       address(ext_call.return_data[0]),
                       Array(len=mem[ceil32(return_data.size) + 96], data=mem[_173 + _23 + (2 * ceil32(return_data.size)) + 416 len mem[_23 + (2 * ceil32(return_data.size)) + 128] + mem[ceil32(return_data.size) + 96] + 32]),
                       ext_call.return_data[0] << 248,
                       address(ext_call.return_data[0]),
                       mem[ceil32(return_data.size) + 96] + 256,
                       ext_call.return_data[0] << 248
            mem[floor32(mem[_23 + (2 * ceil32(return_data.size)) + 128]) + mem[ceil32(return_data.size) + 96] + _173 + _23 + (2 * ceil32(return_data.size)) + 448] = mem[floor32(mem[_23 + (2 * ceil32(return_data.size)) + 128]) + mem[ceil32(return_data.size) + 96] + _173 + _23 + (2 * ceil32(return_data.size)) + -(mem[_23 + (2 * ceil32(return_data.size)) + 128] % 32) + 480 len mem[_23 + (2 * ceil32(return_data.size)) + 128] % 32]
            return address(ext_call.return_data[0]), 
                   address(ext_call.return_data[0]),
                   Array(len=mem[_173 + _23 + (2 * ceil32(return_data.size)) + 384 len mem[ceil32(return_data.size) + 96] + 32], data=mem[_23 + (2 * ceil32(return_data.size)) + 128], mem[_173 + _23 + (2 * ceil32(return_data.size)) + mem[ceil32(return_data.size) + 96] + 448 len floor32(mem[_23 + (2 * ceil32(return_data.size)) + 128]) + 32]),
                   ext_call.return_data[0] << 248,
                   address(ext_call.return_data[0]),
                   mem[_173 + _23 + (2 * ceil32(return_data.size)) + 320],
                   ext_call.return_data[0] << 248
        mem[floor32(_173) + _23 + (2 * ceil32(return_data.size)) + 160] = mem[floor32(_173) + _23 + (2 * ceil32(return_data.size)) + -(_173 % 32) + 192 len _173 % 32]
        mem[64] = floor32(_173) + _23 + (2 * ceil32(return_data.size)) + 192
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).decimals() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[floor32(_173) + _23 + (2 * ceil32(return_data.size)) + 192] = address(ext_call.return_data[0])
        mem[floor32(_173) + _23 + (2 * ceil32(return_data.size)) + 224] = address(ext_call.return_data[0])
        mem[floor32(_173) + _23 + (2 * ceil32(return_data.size)) + 288] = uint8(ext_call.return_data[0])
        mem[floor32(_173) + _23 + (2 * ceil32(return_data.size)) + 320] = address(ext_call.return_data[0])
        mem[floor32(_173) + _23 + (2 * ceil32(return_data.size)) + 384] = uint8(ext_call.return_data[0])
        mem[floor32(_173) + _23 + (2 * ceil32(return_data.size)) + 256] = 224
        mem[floor32(_173) + _23 + (2 * ceil32(return_data.size)) + 416] = mem[ceil32(return_data.size) + 96]
        mem[floor32(_173) + _23 + (2 * ceil32(return_data.size)) + 448 len ceil32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len ceil32(mem[ceil32(return_data.size) + 96])]
        mem[floor32(_173) + _23 + (2 * ceil32(return_data.size)) + 352] = mem[ceil32(return_data.size) + 96] + 256
        mem[mem[ceil32(return_data.size) + 96] + floor32(_173) + _23 + (2 * ceil32(return_data.size)) + 448] = mem[_23 + (2 * ceil32(return_data.size)) + 128]
        mem[mem[ceil32(return_data.size) + 96] + floor32(_173) + _23 + (2 * ceil32(return_data.size)) + 480 len ceil32(mem[_23 + (2 * ceil32(return_data.size)) + 128])] = mem[_23 + (2 * ceil32(return_data.size)) + 160 len ceil32(mem[_23 + (2 * ceil32(return_data.size)) + 128])]
        if not mem[_23 + (2 * ceil32(return_data.size)) + 128] % 32:
            return address(ext_call.return_data[0]), 
                   address(ext_call.return_data[0]),
                   Array(len=mem[ceil32(return_data.size) + 96], data=mem[floor32(_173) + _23 + (2 * ceil32(return_data.size)) + 448 len mem[_23 + (2 * ceil32(return_data.size)) + 128] + mem[ceil32(return_data.size) + 96] + 32]),
                   ext_call.return_data[0] << 248,
                   address(ext_call.return_data[0]),
                   mem[ceil32(return_data.size) + 96] + 256,
                   ext_call.return_data[0] << 248
        mem[floor32(mem[_23 + (2 * ceil32(return_data.size)) + 128]) + mem[ceil32(return_data.size) + 96] + floor32(_173) + _23 + (2 * ceil32(return_data.size)) + 480] = mem[floor32(mem[_23 + (2 * ceil32(return_data.size)) + 128]) + mem[ceil32(return_data.size) + 96] + floor32(_173) + _23 + (2 * ceil32(return_data.size)) + -(mem[_23 + (2 * ceil32(return_data.size)) + 128] % 32) + 512 len mem[_23 + (2 * ceil32(return_data.size)) + 128] % 32]
        return address(ext_call.return_data[0]), 
               address(ext_call.return_data[0]),
               Array(len=mem[floor32(_173) + _23 + (2 * ceil32(return_data.size)) + 416 len mem[ceil32(return_data.size) + 96] + 32], data=mem[_23 + (2 * ceil32(return_data.size)) + 128], mem[floor32(_173) + _23 + (2 * ceil32(return_data.size)) + mem[ceil32(return_data.size) + 96] + 480 len floor32(mem[_23 + (2 * ceil32(return_data.size)) + 128]) + 32]),
               ext_call.return_data[0] << 248,
               address(ext_call.return_data[0]),
               mem[floor32(_173) + _23 + (2 * ceil32(return_data.size)) + 352],
               ext_call.return_data[0] << 248
    mem[floor32(_23) + ceil32(return_data.size) + 128] = mem[floor32(_23) + ceil32(return_data.size) + -(_23 % 32) + 160 len _23 % 32]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).decimals() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).token1() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[floor32(_23) + ceil32(return_data.size) + 160] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).symbol() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[floor32(_23) + ceil32(return_data.size) + 160 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = floor32(_23) + (2 * ceil32(return_data.size)) + 160
    require return_data.size >= 32
    _170 = mem[floor32(_23) + ceil32(return_data.size) + 160]
    require mem[floor32(_23) + ceil32(return_data.size) + 160] <= 4294967296
    require mem[floor32(_23) + ceil32(return_data.size) + 160] + 32 <= return_data.size
    require return_data.size >= mem[floor32(_23) + ceil32(return_data.size) + mem[floor32(_23) + ceil32(return_data.size) + 160] + 160] + mem[floor32(_23) + ceil32(return_data.size) + 160] + 32 and mem[floor32(_23) + ceil32(return_data.size) + mem[floor32(_23) + ceil32(return_data.size) + 160] + 160] <= 4294967296
    mem[floor32(_23) + (2 * ceil32(return_data.size)) + 160] = mem[floor32(_23) + ceil32(return_data.size) + mem[floor32(_23) + ceil32(return_data.size) + 160] + 160]
    _175 = mem[floor32(_23) + ceil32(return_data.size) + _170 + 160]
    mem[floor32(_23) + (2 * ceil32(return_data.size)) + 192 len ceil32(mem[floor32(_23) + ceil32(return_data.size) + _170 + 160])] = mem[floor32(_23) + ceil32(return_data.size) + _170 + 192 len ceil32(mem[floor32(_23) + ceil32(return_data.size) + _170 + 160])]
    if not _175 % 32:
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).decimals() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[_175 + floor32(_23) + (2 * ceil32(return_data.size)) + 192] = address(ext_call.return_data[0])
        mem[_175 + floor32(_23) + (2 * ceil32(return_data.size)) + 224] = address(ext_call.return_data[0])
        mem[_175 + floor32(_23) + (2 * ceil32(return_data.size)) + 288] = uint8(ext_call.return_data[0])
        mem[_175 + floor32(_23) + (2 * ceil32(return_data.size)) + 320] = address(ext_call.return_data[0])
        mem[_175 + floor32(_23) + (2 * ceil32(return_data.size)) + 384] = uint8(ext_call.return_data[0])
        mem[_175 + floor32(_23) + (2 * ceil32(return_data.size)) + 256] = 224
        mem[_175 + floor32(_23) + (2 * ceil32(return_data.size)) + 416] = mem[ceil32(return_data.size) + 96]
        mem[_175 + floor32(_23) + (2 * ceil32(return_data.size)) + 448 len ceil32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len ceil32(mem[ceil32(return_data.size) + 96])]
        mem[_175 + floor32(_23) + (2 * ceil32(return_data.size)) + 352] = mem[ceil32(return_data.size) + 96] + 256
        mem[mem[ceil32(return_data.size) + 96] + _175 + floor32(_23) + (2 * ceil32(return_data.size)) + 448] = mem[floor32(_23) + (2 * ceil32(return_data.size)) + 160]
        mem[mem[ceil32(return_data.size) + 96] + _175 + floor32(_23) + (2 * ceil32(return_data.size)) + 480 len ceil32(mem[floor32(_23) + (2 * ceil32(return_data.size)) + 160])] = mem[floor32(_23) + (2 * ceil32(return_data.size)) + 192 len ceil32(mem[floor32(_23) + (2 * ceil32(return_data.size)) + 160])]
        if not mem[floor32(_23) + (2 * ceil32(return_data.size)) + 160] % 32:
            return address(ext_call.return_data[0]), 
                   address(ext_call.return_data[0]),
                   Array(len=mem[ceil32(return_data.size) + 96], data=mem[_175 + floor32(_23) + (2 * ceil32(return_data.size)) + 448 len mem[floor32(_23) + (2 * ceil32(return_data.size)) + 160] + mem[ceil32(return_data.size) + 96] + 32]),
                   ext_call.return_data[0] << 248,
                   address(ext_call.return_data[0]),
                   mem[ceil32(return_data.size) + 96] + 256,
                   ext_call.return_data[0] << 248
        mem[floor32(mem[floor32(_23) + (2 * ceil32(return_data.size)) + 160]) + mem[ceil32(return_data.size) + 96] + _175 + floor32(_23) + (2 * ceil32(return_data.size)) + 480] = mem[floor32(mem[floor32(_23) + (2 * ceil32(return_data.size)) + 160]) + mem[ceil32(return_data.size) + 96] + _175 + floor32(_23) + (2 * ceil32(return_data.size)) + -(mem[floor32(_23) + (2 * ceil32(return_data.size)) + 160] % 32) + 512 len mem[floor32(_23) + (2 * ceil32(return_data.size)) + 160] % 32]
        return address(ext_call.return_data[0]), 
               address(ext_call.return_data[0]),
               Array(len=mem[ceil32(return_data.size) + 96], data=mem[_175 + floor32(_23) + (2 * ceil32(return_data.size)) + 448 len floor32(mem[floor32(_23) + (2 * ceil32(return_data.size)) + 160]) + mem[ceil32(return_data.size) + 96] + 64]),
               ext_call.return_data[0] << 248,
               address(ext_call.return_data[0]),
               mem[ceil32(return_data.size) + 96] + 256,
               ext_call.return_data[0] << 248
    mem[floor32(_175) + floor32(_23) + (2 * ceil32(return_data.size)) + 192] = mem[floor32(_175) + floor32(_23) + (2 * ceil32(return_data.size)) + -(_175 % 32) + 224 len _175 % 32]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).decimals() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[floor32(_175) + floor32(_23) + (2 * ceil32(return_data.size)) + 224] = address(ext_call.return_data[0])
    mem[floor32(_175) + floor32(_23) + (2 * ceil32(return_data.size)) + 256] = address(ext_call.return_data[0])
    mem[floor32(_175) + floor32(_23) + (2 * ceil32(return_data.size)) + 320] = uint8(ext_call.return_data[0])
    mem[floor32(_175) + floor32(_23) + (2 * ceil32(return_data.size)) + 352] = address(ext_call.return_data[0])
    mem[floor32(_175) + floor32(_23) + (2 * ceil32(return_data.size)) + 416] = uint8(ext_call.return_data[0])
    mem[floor32(_175) + floor32(_23) + (2 * ceil32(return_data.size)) + 288] = 224
    mem[floor32(_175) + floor32(_23) + (2 * ceil32(return_data.size)) + 448] = mem[ceil32(return_data.size) + 96]
    mem[floor32(_175) + floor32(_23) + (2 * ceil32(return_data.size)) + 480 len ceil32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len ceil32(mem[ceil32(return_data.size) + 96])]
    mem[floor32(_175) + floor32(_23) + (2 * ceil32(return_data.size)) + 384] = mem[ceil32(return_data.size) + 96] + 256
    mem[mem[ceil32(return_data.size) + 96] + floor32(_175) + floor32(_23) + (2 * ceil32(return_data.size)) + 480] = mem[floor32(_23) + (2 * ceil32(return_data.size)) + 160]
    mem[mem[ceil32(return_data.size) + 96] + floor32(_175) + floor32(_23) + (2 * ceil32(return_data.size)) + 512 len ceil32(mem[floor32(_23) + (2 * ceil32(return_data.size)) + 160])] = mem[floor32(_23) + (2 * ceil32(return_data.size)) + 192 len ceil32(mem[floor32(_23) + (2 * ceil32(return_data.size)) + 160])]
    if not mem[floor32(_23) + (2 * ceil32(return_data.size)) + 160] % 32:
        return address(ext_call.return_data[0]), 
               address(ext_call.return_data[0]),
               Array(len=mem[ceil32(return_data.size) + 96], data=mem[floor32(_175) + floor32(_23) + (2 * ceil32(return_data.size)) + 480 len mem[floor32(_23) + (2 * ceil32(return_data.size)) + 160] + mem[ceil32(return_data.size) + 96] + 32]),
               ext_call.return_data[0] << 248,
               address(ext_call.return_data[0]),
               mem[ceil32(return_data.size) + 96] + 256,
               ext_call.return_data[0] << 248
    mem[floor32(mem[floor32(_23) + (2 * ceil32(return_data.size)) + 160]) + mem[ceil32(return_data.size) + 96] + floor32(_175) + floor32(_23) + (2 * ceil32(return_data.size)) + 512] = mem[floor32(mem[floor32(_23) + (2 * ceil32(return_data.size)) + 160]) + mem[ceil32(return_data.size) + 96] + floor32(_175) + floor32(_23) + (2 * ceil32(return_data.size)) + -(mem[floor32(_23) + (2 * ceil32(return_data.size)) + 160] % 32) + 544 len mem[floor32(_23) + (2 * ceil32(return_data.size)) + 160] % 32]
    return address(ext_call.return_data[0]), 
           address(ext_call.return_data[0]),
           Array(len=mem[ceil32(return_data.size) + 96], data=mem[floor32(_175) + floor32(_23) + (2 * ceil32(return_data.size)) + 480 len floor32(mem[floor32(_23) + (2 * ceil32(return_data.size)) + 160]) + mem[ceil32(return_data.size) + 96] + 64]),
           ext_call.return_data[0] << 248,
           address(ext_call.return_data[0]),
           mem[ceil32(return_data.size) + 96] + 256,
           ext_call.return_data[0] << 248
}

function sortTokens(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if arg1 == arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x54556e697377617056324c6962726172793a204944454e544943414c5f4144445245535345,
                    mem[201 len 27]
    if arg1 < arg2:
        if not arg1:
            revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
        mem[96] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
        require ext_code.size(arg1)
        staticcall arg1.symbol() with:
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
        _19 = mem[_13 + 96]
        mem[ceil32(return_data.size) + 128 len ceil32(mem[_13 + 96])] = mem[_13 + 128 len ceil32(mem[_13 + 96])]
        if not _19 % 32:
            require ext_code.size(arg1)
            staticcall arg1.decimals() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[_19 + ceil32(return_data.size) + 128] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
            require ext_code.size(arg2)
            staticcall arg2.symbol() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[_19 + ceil32(return_data.size) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = _19 + (2 * ceil32(return_data.size)) + 128
            require return_data.size >= 32
            _275 = mem[_19 + ceil32(return_data.size) + 128]
            require mem[_19 + ceil32(return_data.size) + 128] <= 4294967296
            require mem[_19 + ceil32(return_data.size) + 128] + 32 <= return_data.size
            require return_data.size >= mem[_19 + ceil32(return_data.size) + mem[_19 + ceil32(return_data.size) + 128] + 128] + mem[_19 + ceil32(return_data.size) + 128] + 32 and mem[_19 + ceil32(return_data.size) + mem[_19 + ceil32(return_data.size) + 128] + 128] <= 4294967296
            mem[_19 + (2 * ceil32(return_data.size)) + 128] = mem[_19 + ceil32(return_data.size) + mem[_19 + ceil32(return_data.size) + 128] + 128]
            _287 = mem[_19 + ceil32(return_data.size) + _275 + 128]
            mem[_19 + (2 * ceil32(return_data.size)) + 160 len ceil32(mem[_19 + ceil32(return_data.size) + _275 + 128])] = mem[_19 + ceil32(return_data.size) + _275 + 160 len ceil32(mem[_19 + ceil32(return_data.size) + _275 + 128])]
            if not _287 % 32:
                mem[64] = _287 + _19 + (2 * ceil32(return_data.size)) + 160
                require ext_code.size(arg2)
                staticcall arg2.decimals() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[_287 + _19 + (2 * ceil32(return_data.size)) + 160] = arg1
                mem[_287 + _19 + (2 * ceil32(return_data.size)) + 224] = uint8(ext_call.return_data[0])
                mem[_287 + _19 + (2 * ceil32(return_data.size)) + 256] = arg2
                mem[_287 + _19 + (2 * ceil32(return_data.size)) + 320] = uint8(ext_call.return_data[0])
                mem[_287 + _19 + (2 * ceil32(return_data.size)) + 192] = 192
                mem[_287 + _19 + (2 * ceil32(return_data.size)) + 352] = mem[ceil32(return_data.size) + 96]
                mem[_287 + _19 + (2 * ceil32(return_data.size)) + 384 len ceil32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len ceil32(mem[ceil32(return_data.size) + 96])]
                mem[_287 + _19 + (2 * ceil32(return_data.size)) + 288] = mem[ceil32(return_data.size) + 96] + 224
                mem[mem[ceil32(return_data.size) + 96] + _287 + _19 + (2 * ceil32(return_data.size)) + 384] = mem[_19 + (2 * ceil32(return_data.size)) + 128]
                mem[mem[ceil32(return_data.size) + 96] + _287 + _19 + (2 * ceil32(return_data.size)) + 416 len ceil32(mem[_19 + (2 * ceil32(return_data.size)) + 128])] = mem[_19 + (2 * ceil32(return_data.size)) + 160 len ceil32(mem[_19 + (2 * ceil32(return_data.size)) + 128])]
                if not mem[_19 + (2 * ceil32(return_data.size)) + 128] % 32:
                    return address(arg1), 
                           Array(len=mem[ceil32(return_data.size) + 96], data=mem[_287 + _19 + (2 * ceil32(return_data.size)) + 384 len mem[_19 + (2 * ceil32(return_data.size)) + 128] + mem[ceil32(return_data.size) + 96] + 32]),
                           ext_call.return_data[0] << 248,
                           address(arg2),
                           mem[ceil32(return_data.size) + 96] + 224,
                           ext_call.return_data[0] << 248
                mem[floor32(mem[_19 + (2 * ceil32(return_data.size)) + 128]) + mem[ceil32(return_data.size) + 96] + _287 + _19 + (2 * ceil32(return_data.size)) + 416] = mem[floor32(mem[_19 + (2 * ceil32(return_data.size)) + 128]) + mem[ceil32(return_data.size) + 96] + _287 + _19 + (2 * ceil32(return_data.size)) + -(mem[_19 + (2 * ceil32(return_data.size)) + 128] % 32) + 448 len mem[_19 + (2 * ceil32(return_data.size)) + 128] % 32]
                return address(arg1), 
                       Array(len=mem[_287 + _19 + (2 * ceil32(return_data.size)) + 352 len mem[ceil32(return_data.size) + 96] + 32], data=mem[_19 + (2 * ceil32(return_data.size)) + 128], mem[_287 + _19 + (2 * ceil32(return_data.size)) + mem[ceil32(return_data.size) + 96] + 416 len floor32(mem[_19 + (2 * ceil32(return_data.size)) + 128]) + 32]),
                       ext_call.return_data[0] << 248,
                       address(arg2),
                       mem[_287 + _19 + (2 * ceil32(return_data.size)) + 288],
                       ext_call.return_data[0] << 248
            mem[floor32(_287) + _19 + (2 * ceil32(return_data.size)) + 160] = mem[floor32(_287) + _19 + (2 * ceil32(return_data.size)) + -(_287 % 32) + 192 len _287 % 32]
            mem[64] = floor32(_287) + _19 + (2 * ceil32(return_data.size)) + 192
            require ext_code.size(arg2)
            staticcall arg2.decimals() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[floor32(_287) + _19 + (2 * ceil32(return_data.size)) + 192] = arg1
            mem[floor32(_287) + _19 + (2 * ceil32(return_data.size)) + 256] = uint8(ext_call.return_data[0])
            mem[floor32(_287) + _19 + (2 * ceil32(return_data.size)) + 288] = arg2
            mem[floor32(_287) + _19 + (2 * ceil32(return_data.size)) + 352] = uint8(ext_call.return_data[0])
            mem[floor32(_287) + _19 + (2 * ceil32(return_data.size)) + 224] = 192
            mem[floor32(_287) + _19 + (2 * ceil32(return_data.size)) + 384] = mem[ceil32(return_data.size) + 96]
            _523 = mem[ceil32(return_data.size) + 96]
            mem[floor32(_287) + _19 + (2 * ceil32(return_data.size)) + 416 len ceil32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len ceil32(mem[ceil32(return_data.size) + 96])]
            mem[floor32(_287) + _19 + (2 * ceil32(return_data.size)) + 320] = mem[ceil32(return_data.size) + 96] + 224
            mem[mem[ceil32(return_data.size) + 96] + floor32(_287) + _19 + (2 * ceil32(return_data.size)) + 416] = mem[_19 + (2 * ceil32(return_data.size)) + 128]
            mem[mem[ceil32(return_data.size) + 96] + floor32(_287) + _19 + (2 * ceil32(return_data.size)) + 448 len ceil32(mem[_19 + (2 * ceil32(return_data.size)) + 128])] = mem[_19 + (2 * ceil32(return_data.size)) + 160 len ceil32(mem[_19 + (2 * ceil32(return_data.size)) + 128])]
            if not mem[_19 + (2 * ceil32(return_data.size)) + 128] % 32:
                return address(arg1), 
                       Array(len=mem[ceil32(return_data.size) + 96], data=mem[floor32(_287) + _19 + (2 * ceil32(return_data.size)) + 416 len mem[_19 + (2 * ceil32(return_data.size)) + 128] + mem[ceil32(return_data.size) + 96] + 32]),
                       ext_call.return_data[0] << 248,
                       address(arg2),
                       mem[ceil32(return_data.size) + 96] + 224,
                       ext_call.return_data[0] << 248
            mem[floor32(mem[_19 + (2 * ceil32(return_data.size)) + 128]) + mem[ceil32(return_data.size) + 96] + floor32(_287) + _19 + (2 * ceil32(return_data.size)) + 448] = mem[floor32(mem[_19 + (2 * ceil32(return_data.size)) + 128]) + mem[ceil32(return_data.size) + 96] + floor32(_287) + _19 + (2 * ceil32(return_data.size)) + -(mem[_19 + (2 * ceil32(return_data.size)) + 128] % 32) + 480 len mem[_19 + (2 * ceil32(return_data.size)) + 128] % 32]
            return address(arg1), 
                   192,
                   ext_call.return_data[0] << 248,
                   address(arg2),
                   mem[floor32(_287) + _19 + (2 * ceil32(return_data.size)) + 320],
                   ext_call.return_data[0] << 248,
                   mem[floor32(_287) + _19 + (2 * ceil32(return_data.size)) + 384 len floor32(mem[_19 + (2 * ceil32(return_data.size)) + 128]) + _523 + 96]
        mem[floor32(_19) + ceil32(return_data.size) + 128] = mem[floor32(_19) + ceil32(return_data.size) + -(_19 % 32) + 160 len _19 % 32]
        require ext_code.size(arg1)
        staticcall arg1.decimals() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[floor32(_19) + ceil32(return_data.size) + 160] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
        require ext_code.size(arg2)
        staticcall arg2.symbol() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[floor32(_19) + ceil32(return_data.size) + 160 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = floor32(_19) + (2 * ceil32(return_data.size)) + 160
        require return_data.size >= 32
        _281 = mem[floor32(_19) + ceil32(return_data.size) + 160]
        require mem[floor32(_19) + ceil32(return_data.size) + 160] <= 4294967296
        require mem[floor32(_19) + ceil32(return_data.size) + 160] + 32 <= return_data.size
        require return_data.size >= mem[floor32(_19) + ceil32(return_data.size) + mem[floor32(_19) + ceil32(return_data.size) + 160] + 160] + mem[floor32(_19) + ceil32(return_data.size) + 160] + 32 and mem[floor32(_19) + ceil32(return_data.size) + mem[floor32(_19) + ceil32(return_data.size) + 160] + 160] <= 4294967296
        mem[floor32(_19) + (2 * ceil32(return_data.size)) + 160] = mem[floor32(_19) + ceil32(return_data.size) + mem[floor32(_19) + ceil32(return_data.size) + 160] + 160]
        _291 = mem[floor32(_19) + ceil32(return_data.size) + _281 + 160]
        mem[floor32(_19) + (2 * ceil32(return_data.size)) + 192 len ceil32(mem[floor32(_19) + ceil32(return_data.size) + _281 + 160])] = mem[floor32(_19) + ceil32(return_data.size) + _281 + 192 len ceil32(mem[floor32(_19) + ceil32(return_data.size) + _281 + 160])]
        if not _291 % 32:
            mem[64] = _291 + floor32(_19) + (2 * ceil32(return_data.size)) + 192
            require ext_code.size(arg2)
            staticcall arg2.decimals() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[_291 + floor32(_19) + (2 * ceil32(return_data.size)) + 192] = arg1
            mem[_291 + floor32(_19) + (2 * ceil32(return_data.size)) + 256] = uint8(ext_call.return_data[0])
            mem[_291 + floor32(_19) + (2 * ceil32(return_data.size)) + 288] = arg2
            mem[_291 + floor32(_19) + (2 * ceil32(return_data.size)) + 352] = uint8(ext_call.return_data[0])
            mem[_291 + floor32(_19) + (2 * ceil32(return_data.size)) + 224] = 192
            mem[_291 + floor32(_19) + (2 * ceil32(return_data.size)) + 384] = mem[ceil32(return_data.size) + 96]
            mem[_291 + floor32(_19) + (2 * ceil32(return_data.size)) + 416 len ceil32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len ceil32(mem[ceil32(return_data.size) + 96])]
            mem[_291 + floor32(_19) + (2 * ceil32(return_data.size)) + 320] = mem[ceil32(return_data.size) + 96] + 224
            mem[mem[ceil32(return_data.size) + 96] + _291 + floor32(_19) + (2 * ceil32(return_data.size)) + 416] = mem[floor32(_19) + (2 * ceil32(return_data.size)) + 160]
            mem[mem[ceil32(return_data.size) + 96] + _291 + floor32(_19) + (2 * ceil32(return_data.size)) + 448 len ceil32(mem[floor32(_19) + (2 * ceil32(return_data.size)) + 160])] = mem[floor32(_19) + (2 * ceil32(return_data.size)) + 192 len ceil32(mem[floor32(_19) + (2 * ceil32(return_data.size)) + 160])]
            if not mem[floor32(_19) + (2 * ceil32(return_data.size)) + 160] % 32:
                return address(arg1), 
                       Array(len=mem[ceil32(return_data.size) + 96], data=mem[_291 + floor32(_19) + (2 * ceil32(return_data.size)) + 416 len mem[floor32(_19) + (2 * ceil32(return_data.size)) + 160] + mem[ceil32(return_data.size) + 96] + 32]),
                       ext_call.return_data[0] << 248,
                       address(arg2),
                       mem[ceil32(return_data.size) + 96] + 224,
                       ext_call.return_data[0] << 248
            mem[floor32(mem[floor32(_19) + (2 * ceil32(return_data.size)) + 160]) + mem[ceil32(return_data.size) + 96] + _291 + floor32(_19) + (2 * ceil32(return_data.size)) + 448] = mem[floor32(mem[floor32(_19) + (2 * ceil32(return_data.size)) + 160]) + mem[ceil32(return_data.size) + 96] + _291 + floor32(_19) + (2 * ceil32(return_data.size)) + -(mem[floor32(_19) + (2 * ceil32(return_data.size)) + 160] % 32) + 480 len mem[floor32(_19) + (2 * ceil32(return_data.size)) + 160] % 32]
            return address(arg1), 
                   Array(len=mem[_291 + floor32(_19) + (2 * ceil32(return_data.size)) + 384 len mem[ceil32(return_data.size) + 96] + 32], data=mem[floor32(_19) + (2 * ceil32(return_data.size)) + 160], mem[_291 + floor32(_19) + (2 * ceil32(return_data.size)) + mem[ceil32(return_data.size) + 96] + 448 len floor32(mem[floor32(_19) + (2 * ceil32(return_data.size)) + 160]) + 32]),
                   ext_call.return_data[0] << 248,
                   address(arg2),
                   mem[_291 + floor32(_19) + (2 * ceil32(return_data.size)) + 320],
                   ext_call.return_data[0] << 248
        mem[floor32(_291) + floor32(_19) + (2 * ceil32(return_data.size)) + 192] = mem[floor32(_291) + floor32(_19) + (2 * ceil32(return_data.size)) + -(_291 % 32) + 224 len _291 % 32]
        mem[64] = floor32(_291) + floor32(_19) + (2 * ceil32(return_data.size)) + 224
        require ext_code.size(arg2)
        staticcall arg2.decimals() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[floor32(_291) + floor32(_19) + (2 * ceil32(return_data.size)) + 224] = arg1
        mem[floor32(_291) + floor32(_19) + (2 * ceil32(return_data.size)) + 288] = uint8(ext_call.return_data[0])
        mem[floor32(_291) + floor32(_19) + (2 * ceil32(return_data.size)) + 320] = arg2
        mem[floor32(_291) + floor32(_19) + (2 * ceil32(return_data.size)) + 384] = uint8(ext_call.return_data[0])
        mem[floor32(_291) + floor32(_19) + (2 * ceil32(return_data.size)) + 256] = 192
        mem[floor32(_291) + floor32(_19) + (2 * ceil32(return_data.size)) + 416] = mem[ceil32(return_data.size) + 96]
        mem[floor32(_291) + floor32(_19) + (2 * ceil32(return_data.size)) + 448 len ceil32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len ceil32(mem[ceil32(return_data.size) + 96])]
        mem[floor32(_291) + floor32(_19) + (2 * ceil32(return_data.size)) + 352] = mem[ceil32(return_data.size) + 96] + 224
        mem[mem[ceil32(return_data.size) + 96] + floor32(_291) + floor32(_19) + (2 * ceil32(return_data.size)) + 448] = mem[floor32(_19) + (2 * ceil32(return_data.size)) + 160]
        mem[mem[ceil32(return_data.size) + 96] + floor32(_291) + floor32(_19) + (2 * ceil32(return_data.size)) + 480 len ceil32(mem[floor32(_19) + (2 * ceil32(return_data.size)) + 160])] = mem[floor32(_19) + (2 * ceil32(return_data.size)) + 192 len ceil32(mem[floor32(_19) + (2 * ceil32(return_data.size)) + 160])]
        if not mem[floor32(_19) + (2 * ceil32(return_data.size)) + 160] % 32:
            return address(arg1), 
                   Array(len=mem[ceil32(return_data.size) + 96], data=mem[floor32(_291) + floor32(_19) + (2 * ceil32(return_data.size)) + 448 len mem[floor32(_19) + (2 * ceil32(return_data.size)) + 160] + mem[ceil32(return_data.size) + 96] + 32]),
                   ext_call.return_data[0] << 248,
                   address(arg2),
                   mem[ceil32(return_data.size) + 96] + 224,
                   ext_call.return_data[0] << 248
        mem[floor32(mem[floor32(_19) + (2 * ceil32(return_data.size)) + 160]) + mem[ceil32(return_data.size) + 96] + floor32(_291) + floor32(_19) + (2 * ceil32(return_data.size)) + 480] = mem[floor32(mem[floor32(_19) + (2 * ceil32(return_data.size)) + 160]) + mem[ceil32(return_data.size) + 96] + floor32(_291) + floor32(_19) + (2 * ceil32(return_data.size)) + -(mem[floor32(_19) + (2 * ceil32(return_data.size)) + 160] % 32) + 512 len mem[floor32(_19) + (2 * ceil32(return_data.size)) + 160] % 32]
        return address(arg1), 
               Array(len=mem[floor32(_291) + floor32(_19) + (2 * ceil32(return_data.size)) + 416 len mem[ceil32(return_data.size) + 96] + 32], data=mem[floor32(_19) + (2 * ceil32(return_data.size)) + 160], mem[floor32(_291) + floor32(_19) + (2 * ceil32(return_data.size)) + mem[ceil32(return_data.size) + 96] + 480 len floor32(mem[floor32(_19) + (2 * ceil32(return_data.size)) + 160]) + 32]),
               ext_call.return_data[0] << 248,
               address(arg2),
               mem[floor32(_291) + floor32(_19) + (2 * ceil32(return_data.size)) + 352],
               ext_call.return_data[0] << 248
    if not arg2:
        revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
    mem[96] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
    require ext_code.size(arg2)
    staticcall arg2.symbol() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _15 = mem[96]
    require mem[96] <= 4294967296
    require mem[96] + 32 <= return_data.size
    require return_data.size >= mem[mem[96] + 96] + mem[96] + 32 and mem[mem[96] + 96] <= 4294967296
    mem[ceil32(return_data.size) + 96] = mem[mem[96] + 96]
    _20 = mem[_15 + 96]
    mem[ceil32(return_data.size) + 128 len ceil32(mem[_15 + 96])] = mem[_15 + 128 len ceil32(mem[_15 + 96])]
    if _20 % 32:
        mem[floor32(_20) + ceil32(return_data.size) + 128] = mem[floor32(_20) + ceil32(return_data.size) + -(_20 % 32) + 160 len _20 % 32]
        require ext_code.size(arg2)
        staticcall arg2.decimals() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[floor32(_20) + ceil32(return_data.size) + 160] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
        require ext_code.size(arg1)
        staticcall arg1.symbol() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[floor32(_20) + ceil32(return_data.size) + 160 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = floor32(_20) + (2 * ceil32(return_data.size)) + 160
        require return_data.size >= 32
        _283 = mem[floor32(_20) + ceil32(return_data.size) + 160]
        require mem[floor32(_20) + ceil32(return_data.size) + 160] <= 4294967296
        require mem[floor32(_20) + ceil32(return_data.size) + 160] + 32 <= return_data.size
        require return_data.size >= mem[floor32(_20) + ceil32(return_data.size) + mem[floor32(_20) + ceil32(return_data.size) + 160] + 160] + mem[floor32(_20) + ceil32(return_data.size) + 160] + 32 and mem[floor32(_20) + ceil32(return_data.size) + mem[floor32(_20) + ceil32(return_data.size) + 160] + 160] <= 4294967296
        mem[floor32(_20) + (2 * ceil32(return_data.size)) + 160] = mem[floor32(_20) + ceil32(return_data.size) + mem[floor32(_20) + ceil32(return_data.size) + 160] + 160]
        _292 = mem[floor32(_20) + ceil32(return_data.size) + _283 + 160]
        mem[floor32(_20) + (2 * ceil32(return_data.size)) + 192 len ceil32(mem[floor32(_20) + ceil32(return_data.size) + _283 + 160])] = mem[floor32(_20) + ceil32(return_data.size) + _283 + 192 len ceil32(mem[floor32(_20) + ceil32(return_data.size) + _283 + 160])]
        if not _292 % 32:
            mem[64] = _292 + floor32(_20) + (2 * ceil32(return_data.size)) + 192
            require ext_code.size(arg1)
            staticcall arg1.decimals() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[_292 + floor32(_20) + (2 * ceil32(return_data.size)) + 192] = arg2
            mem[_292 + floor32(_20) + (2 * ceil32(return_data.size)) + 256] = uint8(ext_call.return_data[0])
            mem[_292 + floor32(_20) + (2 * ceil32(return_data.size)) + 288] = arg1
            mem[_292 + floor32(_20) + (2 * ceil32(return_data.size)) + 352] = uint8(ext_call.return_data[0])
            mem[_292 + floor32(_20) + (2 * ceil32(return_data.size)) + 224] = 192
            mem[_292 + floor32(_20) + (2 * ceil32(return_data.size)) + 384] = mem[ceil32(return_data.size) + 96]
            mem[_292 + floor32(_20) + (2 * ceil32(return_data.size)) + 416 len ceil32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len ceil32(mem[ceil32(return_data.size) + 96])]
            mem[_292 + floor32(_20) + (2 * ceil32(return_data.size)) + 320] = mem[ceil32(return_data.size) + 96] + 224
            mem[mem[ceil32(return_data.size) + 96] + _292 + floor32(_20) + (2 * ceil32(return_data.size)) + 416] = mem[floor32(_20) + (2 * ceil32(return_data.size)) + 160]
            mem[mem[ceil32(return_data.size) + 96] + _292 + floor32(_20) + (2 * ceil32(return_data.size)) + 448 len ceil32(mem[floor32(_20) + (2 * ceil32(return_data.size)) + 160])] = mem[floor32(_20) + (2 * ceil32(return_data.size)) + 192 len ceil32(mem[floor32(_20) + (2 * ceil32(return_data.size)) + 160])]
            if not mem[floor32(_20) + (2 * ceil32(return_data.size)) + 160] % 32:
                return address(arg2), 
                       Array(len=mem[ceil32(return_data.size) + 96], data=mem[_292 + floor32(_20) + (2 * ceil32(return_data.size)) + 416 len mem[floor32(_20) + (2 * ceil32(return_data.size)) + 160] + mem[ceil32(return_data.size) + 96] + 32]),
                       ext_call.return_data[0] << 248,
                       address(arg1),
                       mem[ceil32(return_data.size) + 96] + 224,
                       ext_call.return_data[0] << 248
            mem[floor32(mem[floor32(_20) + (2 * ceil32(return_data.size)) + 160]) + mem[ceil32(return_data.size) + 96] + _292 + floor32(_20) + (2 * ceil32(return_data.size)) + 448] = mem[floor32(mem[floor32(_20) + (2 * ceil32(return_data.size)) + 160]) + mem[ceil32(return_data.size) + 96] + _292 + floor32(_20) + (2 * ceil32(return_data.size)) + -(mem[floor32(_20) + (2 * ceil32(return_data.size)) + 160] % 32) + 480 len mem[floor32(_20) + (2 * ceil32(return_data.size)) + 160] % 32]
            return address(arg2), 
                   Array(len=mem[_292 + floor32(_20) + (2 * ceil32(return_data.size)) + 384 len mem[ceil32(return_data.size) + 96] + 32], data=mem[floor32(_20) + (2 * ceil32(return_data.size)) + 160], mem[_292 + floor32(_20) + (2 * ceil32(return_data.size)) + mem[ceil32(return_data.size) + 96] + 448 len floor32(mem[floor32(_20) + (2 * ceil32(return_data.size)) + 160]) + 32]),
                   ext_call.return_data[0] << 248,
                   address(arg1),
                   mem[_292 + floor32(_20) + (2 * ceil32(return_data.size)) + 320],
                   ext_call.return_data[0] << 248
        mem[floor32(_292) + floor32(_20) + (2 * ceil32(return_data.size)) + 192] = mem[floor32(_292) + floor32(_20) + (2 * ceil32(return_data.size)) + -(_292 % 32) + 224 len _292 % 32]
        mem[64] = floor32(_292) + floor32(_20) + (2 * ceil32(return_data.size)) + 224
        require ext_code.size(arg1)
        staticcall arg1.decimals() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[floor32(_292) + floor32(_20) + (2 * ceil32(return_data.size)) + 224] = arg2
        mem[floor32(_292) + floor32(_20) + (2 * ceil32(return_data.size)) + 288] = uint8(ext_call.return_data[0])
        mem[floor32(_292) + floor32(_20) + (2 * ceil32(return_data.size)) + 320] = arg1
        mem[floor32(_292) + floor32(_20) + (2 * ceil32(return_data.size)) + 384] = uint8(ext_call.return_data[0])
        mem[floor32(_292) + floor32(_20) + (2 * ceil32(return_data.size)) + 256] = 192
        mem[floor32(_292) + floor32(_20) + (2 * ceil32(return_data.size)) + 416] = mem[ceil32(return_data.size) + 96]
        mem[floor32(_292) + floor32(_20) + (2 * ceil32(return_data.size)) + 448 len ceil32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len ceil32(mem[ceil32(return_data.size) + 96])]
        mem[floor32(_292) + floor32(_20) + (2 * ceil32(return_data.size)) + 352] = mem[ceil32(return_data.size) + 96] + 224
        mem[mem[ceil32(return_data.size) + 96] + floor32(_292) + floor32(_20) + (2 * ceil32(return_data.size)) + 448] = mem[floor32(_20) + (2 * ceil32(return_data.size)) + 160]
        mem[mem[ceil32(return_data.size) + 96] + floor32(_292) + floor32(_20) + (2 * ceil32(return_data.size)) + 480 len ceil32(mem[floor32(_20) + (2 * ceil32(return_data.size)) + 160])] = mem[floor32(_20) + (2 * ceil32(return_data.size)) + 192 len ceil32(mem[floor32(_20) + (2 * ceil32(return_data.size)) + 160])]
        if not mem[floor32(_20) + (2 * ceil32(return_data.size)) + 160] % 32:
            return address(arg2), 
                   Array(len=mem[ceil32(return_data.size) + 96], data=mem[floor32(_292) + floor32(_20) + (2 * ceil32(return_data.size)) + 448 len mem[floor32(_20) + (2 * ceil32(return_data.size)) + 160] + mem[ceil32(return_data.size) + 96] + 32]),
                   ext_call.return_data[0] << 248,
                   address(arg1),
                   mem[ceil32(return_data.size) + 96] + 224,
                   ext_call.return_data[0] << 248
        mem[floor32(mem[floor32(_20) + (2 * ceil32(return_data.size)) + 160]) + mem[ceil32(return_data.size) + 96] + floor32(_292) + floor32(_20) + (2 * ceil32(return_data.size)) + 480] = mem[floor32(mem[floor32(_20) + (2 * ceil32(return_data.size)) + 160]) + mem[ceil32(return_data.size) + 96] + floor32(_292) + floor32(_20) + (2 * ceil32(return_data.size)) + -(mem[floor32(_20) + (2 * ceil32(return_data.size)) + 160] % 32) + 512 len mem[floor32(_20) + (2 * ceil32(return_data.size)) + 160] % 32]
        return address(arg2), 
               Array(len=mem[floor32(_292) + floor32(_20) + (2 * ceil32(return_data.size)) + 416 len mem[ceil32(return_data.size) + 96] + 32], data=mem[floor32(_20) + (2 * ceil32(return_data.size)) + 160], mem[floor32(_292) + floor32(_20) + (2 * ceil32(return_data.size)) + mem[ceil32(return_data.size) + 96] + 480 len floor32(mem[floor32(_20) + (2 * ceil32(return_data.size)) + 160]) + 32]),
               ext_call.return_data[0] << 248,
               address(arg1),
               mem[floor32(_292) + floor32(_20) + (2 * ceil32(return_data.size)) + 352],
               ext_call.return_data[0] << 248
    require ext_code.size(arg2)
    staticcall arg2.decimals() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[_20 + ceil32(return_data.size) + 128] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
    require ext_code.size(arg1)
    staticcall arg1.symbol() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[_20 + ceil32(return_data.size) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = _20 + (2 * ceil32(return_data.size)) + 128
    require return_data.size >= 32
    _278 = mem[_20 + ceil32(return_data.size) + 128]
    require mem[_20 + ceil32(return_data.size) + 128] <= 4294967296
    require mem[_20 + ceil32(return_data.size) + 128] + 32 <= return_data.size
    require return_data.size >= mem[_20 + ceil32(return_data.size) + mem[_20 + ceil32(return_data.size) + 128] + 128] + mem[_20 + ceil32(return_data.size) + 128] + 32 and mem[_20 + ceil32(return_data.size) + mem[_20 + ceil32(return_data.size) + 128] + 128] <= 4294967296
    mem[_20 + (2 * ceil32(return_data.size)) + 128] = mem[_20 + ceil32(return_data.size) + mem[_20 + ceil32(return_data.size) + 128] + 128]
    _289 = mem[_20 + ceil32(return_data.size) + _278 + 128]
    mem[_20 + (2 * ceil32(return_data.size)) + 160 len ceil32(mem[_20 + ceil32(return_data.size) + _278 + 128])] = mem[_20 + ceil32(return_data.size) + _278 + 160 len ceil32(mem[_20 + ceil32(return_data.size) + _278 + 128])]
    if not _289 % 32:
        mem[64] = _289 + _20 + (2 * ceil32(return_data.size)) + 160
        require ext_code.size(arg1)
        staticcall arg1.decimals() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[_289 + _20 + (2 * ceil32(return_data.size)) + 160] = arg2
        mem[_289 + _20 + (2 * ceil32(return_data.size)) + 224] = uint8(ext_call.return_data[0])
        mem[_289 + _20 + (2 * ceil32(return_data.size)) + 256] = arg1
        mem[_289 + _20 + (2 * ceil32(return_data.size)) + 320] = uint8(ext_call.return_data[0])
        mem[_289 + _20 + (2 * ceil32(return_data.size)) + 192] = 192
        mem[_289 + _20 + (2 * ceil32(return_data.size)) + 352] = mem[ceil32(return_data.size) + 96]
        _515 = mem[ceil32(return_data.size) + 96]
        mem[_289 + _20 + (2 * ceil32(return_data.size)) + 384 len ceil32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len ceil32(mem[ceil32(return_data.size) + 96])]
        if not mem[ceil32(return_data.size) + 96] % 32:
            mem[_289 + _20 + (2 * ceil32(return_data.size)) + 288] = mem[ceil32(return_data.size) + 96] + 224
            mem[mem[ceil32(return_data.size) + 96] + _289 + _20 + (2 * ceil32(return_data.size)) + 384] = mem[_20 + (2 * ceil32(return_data.size)) + 128]
            mem[mem[ceil32(return_data.size) + 96] + _289 + _20 + (2 * ceil32(return_data.size)) + 416 len ceil32(mem[_20 + (2 * ceil32(return_data.size)) + 128])] = mem[_20 + (2 * ceil32(return_data.size)) + 160 len ceil32(mem[_20 + (2 * ceil32(return_data.size)) + 128])]
            if not mem[_20 + (2 * ceil32(return_data.size)) + 128] % 32:
                return address(arg2), 
                       192,
                       ext_call.return_data[0] << 248,
                       address(arg1),
                       mem[_289 + _20 + (2 * ceil32(return_data.size)) + 288],
                       ext_call.return_data[0] << 248,
                       mem[_289 + _20 + (2 * ceil32(return_data.size)) + 352 len mem[_20 + (2 * ceil32(return_data.size)) + 128] + mem[ceil32(return_data.size) + 96] + 64]
            mem[floor32(mem[_20 + (2 * ceil32(return_data.size)) + 128]) + mem[ceil32(return_data.size) + 96] + _289 + _20 + (2 * ceil32(return_data.size)) + 416] = mem[floor32(mem[_20 + (2 * ceil32(return_data.size)) + 128]) + mem[ceil32(return_data.size) + 96] + _289 + _20 + (2 * ceil32(return_data.size)) + -(mem[_20 + (2 * ceil32(return_data.size)) + 128] % 32) + 448 len mem[_20 + (2 * ceil32(return_data.size)) + 128] % 32]
            return address(arg2), 
                   192,
                   ext_call.return_data[0] << 248,
                   address(arg1),
                   mem[_289 + _20 + (2 * ceil32(return_data.size)) + 288],
                   ext_call.return_data[0] << 248,
                   mem[_289 + _20 + (2 * ceil32(return_data.size)) + 352 len floor32(mem[_20 + (2 * ceil32(return_data.size)) + 128]) + _515 + 96]
        mem[floor32(mem[ceil32(return_data.size) + 96]) + _289 + _20 + (2 * ceil32(return_data.size)) + 384] = mem[floor32(mem[ceil32(return_data.size) + 96]) + _289 + _20 + (2 * ceil32(return_data.size)) + -(mem[ceil32(return_data.size) + 96] % 32) + 416 len mem[ceil32(return_data.size) + 96] % 32]
        mem[_289 + _20 + (2 * ceil32(return_data.size)) + 288] = floor32(mem[ceil32(return_data.size) + 96]) + 256
        mem[floor32(mem[ceil32(return_data.size) + 96]) + _289 + _20 + (2 * ceil32(return_data.size)) + 416] = mem[_20 + (2 * ceil32(return_data.size)) + 128]
        mem[floor32(mem[ceil32(return_data.size) + 96]) + _289 + _20 + (2 * ceil32(return_data.size)) + 448 len ceil32(mem[_20 + (2 * ceil32(return_data.size)) + 128])] = mem[_20 + (2 * ceil32(return_data.size)) + 160 len ceil32(mem[_20 + (2 * ceil32(return_data.size)) + 128])]
        if not mem[_20 + (2 * ceil32(return_data.size)) + 128] % 32:
            return address(arg2), 
                   192,
                   ext_call.return_data[0] << 248,
                   address(arg1),
                   mem[_289 + _20 + (2 * ceil32(return_data.size)) + 288],
                   ext_call.return_data[0] << 248,
                   mem[_289 + _20 + (2 * ceil32(return_data.size)) + 352 len mem[_20 + (2 * ceil32(return_data.size)) + 128] + floor32(mem[ceil32(return_data.size) + 96]) + 96]
        mem[floor32(mem[_20 + (2 * ceil32(return_data.size)) + 128]) + floor32(mem[ceil32(return_data.size) + 96]) + _289 + _20 + (2 * ceil32(return_data.size)) + 448] = mem[floor32(mem[_20 + (2 * ceil32(return_data.size)) + 128]) + floor32(mem[ceil32(return_data.size) + 96]) + _289 + _20 + (2 * ceil32(return_data.size)) + -(mem[_20 + (2 * ceil32(return_data.size)) + 128] % 32) + 480 len mem[_20 + (2 * ceil32(return_data.size)) + 128] % 32]
        return address(arg2), 
               192,
               ext_call.return_data[0] << 248,
               address(arg1),
               mem[_289 + _20 + (2 * ceil32(return_data.size)) + 288],
               ext_call.return_data[0] << 248,
               mem[_289 + _20 + (2 * ceil32(return_data.size)) + 352 len floor32(mem[_20 + (2 * ceil32(return_data.size)) + 128]) + floor32(_515) + 128]
    mem[floor32(_289) + _20 + (2 * ceil32(return_data.size)) + 160] = mem[floor32(_289) + _20 + (2 * ceil32(return_data.size)) + -(_289 % 32) + 192 len _289 % 32]
    mem[64] = floor32(_289) + _20 + (2 * ceil32(return_data.size)) + 192
    require ext_code.size(arg1)
    staticcall arg1.decimals() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[floor32(_289) + _20 + (2 * ceil32(return_data.size)) + 192] = arg2
    mem[floor32(_289) + _20 + (2 * ceil32(return_data.size)) + 256] = uint8(ext_call.return_data[0])
    mem[floor32(_289) + _20 + (2 * ceil32(return_data.size)) + 288] = arg1
    mem[floor32(_289) + _20 + (2 * ceil32(return_data.size)) + 352] = uint8(ext_call.return_data[0])
    mem[floor32(_289) + _20 + (2 * ceil32(return_data.size)) + 224] = 192
    mem[floor32(_289) + _20 + (2 * ceil32(return_data.size)) + 384] = mem[ceil32(return_data.size) + 96]
    _529 = mem[ceil32(return_data.size) + 96]
    mem[floor32(_289) + _20 + (2 * ceil32(return_data.size)) + 416 len ceil32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len ceil32(mem[ceil32(return_data.size) + 96])]
    if not mem[ceil32(return_data.size) + 96] % 32:
        mem[floor32(_289) + _20 + (2 * ceil32(return_data.size)) + 320] = mem[ceil32(return_data.size) + 96] + 224
        mem[mem[ceil32(return_data.size) + 96] + floor32(_289) + _20 + (2 * ceil32(return_data.size)) + 416] = mem[_20 + (2 * ceil32(return_data.size)) + 128]
        mem[mem[ceil32(return_data.size) + 96] + floor32(_289) + _20 + (2 * ceil32(return_data.size)) + 448 len ceil32(mem[_20 + (2 * ceil32(return_data.size)) + 128])] = mem[_20 + (2 * ceil32(return_data.size)) + 160 len ceil32(mem[_20 + (2 * ceil32(return_data.size)) + 128])]
        if not mem[_20 + (2 * ceil32(return_data.size)) + 128] % 32:
            return address(arg2), 
                   192,
                   ext_call.return_data[0] << 248,
                   address(arg1),
                   mem[floor32(_289) + _20 + (2 * ceil32(return_data.size)) + 320],
                   ext_call.return_data[0] << 248,
                   mem[floor32(_289) + _20 + (2 * ceil32(return_data.size)) + 384 len mem[_20 + (2 * ceil32(return_data.size)) + 128] + mem[ceil32(return_data.size) + 96] + 64]
        mem[floor32(mem[_20 + (2 * ceil32(return_data.size)) + 128]) + mem[ceil32(return_data.size) + 96] + floor32(_289) + _20 + (2 * ceil32(return_data.size)) + 448] = mem[floor32(mem[_20 + (2 * ceil32(return_data.size)) + 128]) + mem[ceil32(return_data.size) + 96] + floor32(_289) + _20 + (2 * ceil32(return_data.size)) + -(mem[_20 + (2 * ceil32(return_data.size)) + 128] % 32) + 480 len mem[_20 + (2 * ceil32(return_data.size)) + 128] % 32]
        return address(arg2), 
               192,
               ext_call.return_data[0] << 248,
               address(arg1),
               mem[floor32(_289) + _20 + (2 * ceil32(return_data.size)) + 320],
               ext_call.return_data[0] << 248,
               mem[floor32(_289) + _20 + (2 * ceil32(return_data.size)) + 384 len floor32(mem[_20 + (2 * ceil32(return_data.size)) + 128]) + _529 + 96]
    mem[floor32(mem[ceil32(return_data.size) + 96]) + floor32(_289) + _20 + (2 * ceil32(return_data.size)) + 416] = mem[floor32(mem[ceil32(return_data.size) + 96]) + floor32(_289) + _20 + (2 * ceil32(return_data.size)) + -(mem[ceil32(return_data.size) + 96] % 32) + 448 len mem[ceil32(return_data.size) + 96] % 32]
    mem[floor32(_289) + _20 + (2 * ceil32(return_data.size)) + 320] = floor32(mem[ceil32(return_data.size) + 96]) + 256
    mem[floor32(mem[ceil32(return_data.size) + 96]) + floor32(_289) + _20 + (2 * ceil32(return_data.size)) + 448] = mem[_20 + (2 * ceil32(return_data.size)) + 128]
    mem[floor32(mem[ceil32(return_data.size) + 96]) + floor32(_289) + _20 + (2 * ceil32(return_data.size)) + 480 len ceil32(mem[_20 + (2 * ceil32(return_data.size)) + 128])] = mem[_20 + (2 * ceil32(return_data.size)) + 160 len ceil32(mem[_20 + (2 * ceil32(return_data.size)) + 128])]
    if not mem[_20 + (2 * ceil32(return_data.size)) + 128] % 32:
        return address(arg2), 
               192,
               ext_call.return_data[0] << 248,
               address(arg1),
               mem[floor32(_289) + _20 + (2 * ceil32(return_data.size)) + 320],
               ext_call.return_data[0] << 248,
               mem[floor32(_289) + _20 + (2 * ceil32(return_data.size)) + 384 len mem[_20 + (2 * ceil32(return_data.size)) + 128] + floor32(mem[ceil32(return_data.size) + 96]) + 96]
    mem[floor32(mem[_20 + (2 * ceil32(return_data.size)) + 128]) + floor32(mem[ceil32(return_data.size) + 96]) + floor32(_289) + _20 + (2 * ceil32(return_data.size)) + 480] = mem[floor32(mem[_20 + (2 * ceil32(return_data.size)) + 128]) + floor32(mem[ceil32(return_data.size) + 96]) + floor32(_289) + _20 + (2 * ceil32(return_data.size)) + -(mem[_20 + (2 * ceil32(return_data.size)) + 128] % 32) + 512 len mem[_20 + (2 * ceil32(return_data.size)) + 128] % 32]
    return address(arg2), 
           192,
           ext_call.return_data[0] << 248,
           address(arg1),
           mem[floor32(_289) + _20 + (2 * ceil32(return_data.size)) + 320],
           ext_call.return_data[0] << 248,
           mem[floor32(_289) + _20 + (2 * ceil32(return_data.size)) + 384 len floor32(mem[_20 + (2 * ceil32(return_data.size)) + 128]) + floor32(_529) + 128]
}

function sub_6ea4a236(?) payable {
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
            require ext_code.size(address(sha3(0, arg1, sha3(arg2, arg3), 0xc8a8a7c2be8c7707980ffe0ad138290adb87b59720c062c427ee0f43dab6233)))
            staticcall address(sha3(0, arg1, sha3(arg2, arg3), 0xc8a8a7c2be8c7707980ffe0ad138290adb87b59720c062c427ee0f43dab6233)).getReserves() with:
                    gas gas_remaining wei
        else:
            if not arg3:
                revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
            require ext_code.size(address(sha3(0, arg1, sha3(arg3, arg2), 0xc8a8a7c2be8c7707980ffe0ad138290adb87b59720c062c427ee0f43dab6233)))
            staticcall address(sha3(0, arg1, sha3(arg3, arg2), 0xc8a8a7c2be8c7707980ffe0ad138290adb87b59720c062c427ee0f43dab6233)).getReserves() with:
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
                        if (997 * ext_call.return_data[50 len 14]) - (997 * arg4) / ext_call.return_data[50 len 14] - arg4 == 997:
                            if (997 * ext_call.return_data[50 len 14]) - (997 * arg4):
                                if (0 / (997 * ext_call.return_data[50 len 14]) - (997 * arg4)) + 1 >= 0 / (997 * ext_call.return_data[50 len 14]) - (997 * arg4):
                                    require ext_code.size(arg2)
                                    staticcall arg2.decimals() with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(arg3)
                                    staticcall arg3.decimals() with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if (0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * arg4)) + 1 != 1:
                                        if (0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * arg4)) + 1:
                                            return (0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * arg4)) + 1, 
                                                   1,
                                                   ext_call.return_data[0] << 248,
                                                   uint8(ext_call.return_data[0])
                                    if arg4 <= 0:
                                        revert with 0, 32, 43, 0x59556e697377617056324c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e, mem[396 len 21]
                                    if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                        revert with 0, 32, 40, 0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[393 len 24]
                                    if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                        revert with 0, 32, 40, 0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[393 len 24]
                                    if not arg4:
                                        if Mask(112, 0, ext_call.return_data[0]):
                                            if 1000 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) == 1000:
                                                if 1000 * Mask(112, 0, ext_call.return_data[0]) >= 1000 * Mask(112, 0, ext_call.return_data[0]):
                                                    if 1000 * Mask(112, 0, ext_call.return_data[0]):
                                                        return 0 / 1000 * Mask(112, 0, ext_call.return_data[0]), 0, ext_call.return_data[0] << 248, uint8(ext_call.return_data[0])
                                    else:
                                        if 997 * arg4 / arg4 == 997:
                                            if not 997 * arg4:
                                                if not Mask(112, 0, ext_call.return_data[0]):
                                                    if 997 * arg4 >= 0:
                                                        if 997 * arg4:
                                                            return 0 / 997 * arg4, 0, ext_call.return_data[0] << 248, uint8(ext_call.return_data[0])
                                                else:
                                                    if 1000 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) == 1000:
                                                        if (997 * arg4) + (1000 * Mask(112, 0, ext_call.return_data[0])) >= 1000 * Mask(112, 0, ext_call.return_data[0]):
                                                            if (997 * arg4) + (1000 * Mask(112, 0, ext_call.return_data[0])):
                                                                return 0 / (997 * arg4) + (1000 * Mask(112, 0, ext_call.return_data[0])), 
                                                                       0,
                                                                       ext_call.return_data[0] << 248,
                                                                       uint8(ext_call.return_data[0])
                                            else:
                                                if 997 * Mask(112, 0, ext_call.return_data[32]) * arg4 / 997 * arg4 == Mask(112, 0, ext_call.return_data[32]):
                                                    if not Mask(112, 0, ext_call.return_data[0]):
                                                        if 997 * arg4 >= 0:
                                                            if 997 * arg4:
                                                                return 997 * Mask(112, 0, ext_call.return_data[32]) * arg4 / 997 * arg4, 
                                                                       0,
                                                                       ext_call.return_data[0] << 248,
                                                                       uint8(ext_call.return_data[0])
                                                    else:
                                                        if 1000 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) == 1000:
                                                            if (997 * arg4) + (1000 * Mask(112, 0, ext_call.return_data[0])) >= 1000 * Mask(112, 0, ext_call.return_data[0]):
                                                                if (997 * arg4) + (1000 * Mask(112, 0, ext_call.return_data[0])):
                                                                    return 997 * Mask(112, 0, ext_call.return_data[32]) * arg4 / (997 * arg4) + (1000 * Mask(112, 0, ext_call.return_data[0])), 
                                                                           0,
                                                                           ext_call.return_data[0] << 248,
                                                                           uint8(ext_call.return_data[0])
            else:
                if arg4 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] == arg4:
                    if not arg4 * ext_call.return_data[18 len 14]:
                        if arg4 <= ext_call.return_data[50 len 14]:
                            if ext_call.return_data[50 len 14] - arg4:
                                if (997 * ext_call.return_data[50 len 14]) - (997 * arg4) / ext_call.return_data[50 len 14] - arg4 == 997:
                                    if (997 * ext_call.return_data[50 len 14]) - (997 * arg4):
                                        if (0 / (997 * ext_call.return_data[50 len 14]) - (997 * arg4)) + 1 >= 0 / (997 * ext_call.return_data[50 len 14]) - (997 * arg4):
                                            require ext_code.size(arg2)
                                            staticcall arg2.decimals() with:
                                                    gas gas_remaining wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(arg3)
                                            staticcall arg3.decimals() with:
                                                    gas gas_remaining wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if (0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * arg4)) + 1 != 1:
                                                if (0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * arg4)) + 1:
                                                    return (0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * arg4)) + 1, 
                                                           1,
                                                           ext_call.return_data[0] << 248,
                                                           uint8(ext_call.return_data[0])
                                            if arg4 <= 0:
                                                revert with 0, 32, 43, 0x59556e697377617056324c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e, mem[396 len 21]
                                            if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                revert with 0, 32, 40, 0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[393 len 24]
                                            if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                revert with 0, 32, 40, 0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[393 len 24]
                                            if not arg4:
                                                if Mask(112, 0, ext_call.return_data[0]):
                                                    if 1000 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) == 1000:
                                                        if 1000 * Mask(112, 0, ext_call.return_data[0]) >= 1000 * Mask(112, 0, ext_call.return_data[0]):
                                                            if 1000 * Mask(112, 0, ext_call.return_data[0]):
                                                                return 0 / 1000 * Mask(112, 0, ext_call.return_data[0]), 0, ext_call.return_data[0] << 248, uint8(ext_call.return_data[0])
                                            else:
                                                if 997 * arg4 / arg4 == 997:
                                                    if not 997 * arg4:
                                                        if not Mask(112, 0, ext_call.return_data[0]):
                                                            if 997 * arg4 >= 0:
                                                                if 997 * arg4:
                                                                    return 0 / 997 * arg4, 0, ext_call.return_data[0] << 248, uint8(ext_call.return_data[0])
                                                        else:
                                                            if 1000 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) == 1000:
                                                                if (997 * arg4) + (1000 * Mask(112, 0, ext_call.return_data[0])) >= 1000 * Mask(112, 0, ext_call.return_data[0]):
                                                                    if (997 * arg4) + (1000 * Mask(112, 0, ext_call.return_data[0])):
                                                                        return 0 / (997 * arg4) + (1000 * Mask(112, 0, ext_call.return_data[0])), 
                                                                               0,
                                                                               ext_call.return_data[0] << 248,
                                                                               uint8(ext_call.return_data[0])
                                                    else:
                                                        if 997 * Mask(112, 0, ext_call.return_data[32]) * arg4 / 997 * arg4 == Mask(112, 0, ext_call.return_data[32]):
                                                            if not Mask(112, 0, ext_call.return_data[0]):
                                                                if 997 * arg4 >= 0:
                                                                    if 997 * arg4:
                                                                        return 997 * Mask(112, 0, ext_call.return_data[32]) * arg4 / 997 * arg4, 
                                                                               0,
                                                                               ext_call.return_data[0] << 248,
                                                                               uint8(ext_call.return_data[0])
                                                            else:
                                                                if 1000 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) == 1000:
                                                                    if (997 * arg4) + (1000 * Mask(112, 0, ext_call.return_data[0])) >= 1000 * Mask(112, 0, ext_call.return_data[0]):
                                                                        if (997 * arg4) + (1000 * Mask(112, 0, ext_call.return_data[0])):
                                                                            return 997 * Mask(112, 0, ext_call.return_data[32]) * arg4 / (997 * arg4) + (1000 * Mask(112, 0, ext_call.return_data[0])), 
                                                                                   0,
                                                                                   ext_call.return_data[0] << 248,
                                                                                   uint8(ext_call.return_data[0])
                    else:
                        if 1000 * arg4 * ext_call.return_data[18 len 14] / arg4 * ext_call.return_data[18 len 14] == 1000:
                            if arg4 <= ext_call.return_data[50 len 14]:
                                if ext_call.return_data[50 len 14] - arg4:
                                    if (997 * ext_call.return_data[50 len 14]) - (997 * arg4) / ext_call.return_data[50 len 14] - arg4 == 997:
                                        if (997 * ext_call.return_data[50 len 14]) - (997 * arg4):
                                            if (1000 * arg4 * ext_call.return_data[18 len 14] / (997 * ext_call.return_data[50 len 14]) - (997 * arg4)) + 1 >= 1000 * arg4 * ext_call.return_data[18 len 14] / (997 * ext_call.return_data[50 len 14]) - (997 * arg4):
                                                require ext_code.size(arg2)
                                                staticcall arg2.decimals() with:
                                                        gas gas_remaining wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(arg3)
                                                staticcall arg3.decimals() with:
                                                        gas gas_remaining wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if (1000 * arg4 * Mask(112, 0, ext_call.return_data[0]) / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * arg4)) + 1 != 1:
                                                    if (1000 * arg4 * Mask(112, 0, ext_call.return_data[0]) / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * arg4)) + 1:
                                                        return (1000 * arg4 * Mask(112, 0, ext_call.return_data[0]) / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * arg4)) + 1, 
                                                               1,
                                                               ext_call.return_data[0] << 248,
                                                               uint8(ext_call.return_data[0])
                                                if arg4 <= 0:
                                                    revert with 0, 32, 43, 0x59556e697377617056324c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e, mem[396 len 21]
                                                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                    revert with 0, 32, 40, 0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[393 len 24]
                                                if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                    revert with 0, 32, 40, 0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[393 len 24]
                                                if not arg4:
                                                    if Mask(112, 0, ext_call.return_data[0]):
                                                        if 1000 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) == 1000:
                                                            if 1000 * Mask(112, 0, ext_call.return_data[0]) >= 1000 * Mask(112, 0, ext_call.return_data[0]):
                                                                if 1000 * Mask(112, 0, ext_call.return_data[0]):
                                                                    return 0 / 1000 * Mask(112, 0, ext_call.return_data[0]), 0, ext_call.return_data[0] << 248, uint8(ext_call.return_data[0])
                                                else:
                                                    if 997 * arg4 / arg4 == 997:
                                                        if not 997 * arg4:
                                                            if not Mask(112, 0, ext_call.return_data[0]):
                                                                if 997 * arg4 >= 0:
                                                                    if 997 * arg4:
                                                                        return 0 / 997 * arg4, 0, ext_call.return_data[0] << 248, uint8(ext_call.return_data[0])
                                                            else:
                                                                if 1000 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) == 1000:
                                                                    if (997 * arg4) + (1000 * Mask(112, 0, ext_call.return_data[0])) >= 1000 * Mask(112, 0, ext_call.return_data[0]):
                                                                        if (997 * arg4) + (1000 * Mask(112, 0, ext_call.return_data[0])):
                                                                            return 0 / (997 * arg4) + (1000 * Mask(112, 0, ext_call.return_data[0])), 
                                                                                   0,
                                                                                   ext_call.return_data[0] << 248,
                                                                                   uint8(ext_call.return_data[0])
                                                        else:
                                                            if 997 * Mask(112, 0, ext_call.return_data[32]) * arg4 / 997 * arg4 == Mask(112, 0, ext_call.return_data[32]):
                                                                if not Mask(112, 0, ext_call.return_data[0]):
                                                                    if 997 * arg4 >= 0:
                                                                        if 997 * arg4:
                                                                            return 997 * Mask(112, 0, ext_call.return_data[32]) * arg4 / 997 * arg4, 
                                                                                   0,
                                                                                   ext_call.return_data[0] << 248,
                                                                                   uint8(ext_call.return_data[0])
                                                                else:
                                                                    if 1000 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) == 1000:
                                                                        if (997 * arg4) + (1000 * Mask(112, 0, ext_call.return_data[0])) >= 1000 * Mask(112, 0, ext_call.return_data[0]):
                                                                            if (997 * arg4) + (1000 * Mask(112, 0, ext_call.return_data[0])):
                                                                                return 997 * Mask(112, 0, ext_call.return_data[32]) * arg4 / (997 * arg4) + (1000 * Mask(112, 0, ext_call.return_data[0])), 
                                                                                       0,
                                                                                       ext_call.return_data[0] << 248,
                                                                                       uint8(ext_call.return_data[0])
        else:
            if ext_call.return_data[50 len 14] <= 0:
                revert with 0, 32, 40, 0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[393 len 24]
            if ext_call.return_data[18 len 14] <= 0:
                revert with 0, 32, 40, 0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[393 len 24]
            if not ext_call.return_data[50 len 14]:
                if arg4 <= ext_call.return_data[18 len 14]:
                    if ext_call.return_data[18 len 14] - arg4:
                        if (997 * ext_call.return_data[18 len 14]) - (997 * arg4) / ext_call.return_data[18 len 14] - arg4 == 997:
                            if (997 * ext_call.return_data[18 len 14]) - (997 * arg4):
                                if (0 / (997 * ext_call.return_data[18 len 14]) - (997 * arg4)) + 1 >= 0 / (997 * ext_call.return_data[18 len 14]) - (997 * arg4):
                                    require ext_code.size(arg2)
                                    staticcall arg2.decimals() with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(arg3)
                                    staticcall arg3.decimals() with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if (0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * arg4)) + 1 != 1:
                                        if (0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * arg4)) + 1:
                                            return (0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * arg4)) + 1, 
                                                   1,
                                                   ext_call.return_data[0] << 248,
                                                   uint8(ext_call.return_data[0])
                                    if arg4 <= 0:
                                        revert with 0, 32, 43, 0x59556e697377617056324c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e, mem[396 len 21]
                                    if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                        revert with 0, 32, 40, 0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[393 len 24]
                                    if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                        revert with 0, 32, 40, 0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[393 len 24]
                                    if not arg4:
                                        if Mask(112, 0, ext_call.return_data[32]):
                                            if 1000 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) == 1000:
                                                if 1000 * Mask(112, 0, ext_call.return_data[32]) >= 1000 * Mask(112, 0, ext_call.return_data[32]):
                                                    if 1000 * Mask(112, 0, ext_call.return_data[32]):
                                                        return 0 / 1000 * Mask(112, 0, ext_call.return_data[32]), 0, ext_call.return_data[0] << 248, uint8(ext_call.return_data[0])
                                    else:
                                        if 997 * arg4 / arg4 == 997:
                                            if not 997 * arg4:
                                                if not Mask(112, 0, ext_call.return_data[32]):
                                                    if 997 * arg4 >= 0:
                                                        if 997 * arg4:
                                                            return 0 / 997 * arg4, 0, ext_call.return_data[0] << 248, uint8(ext_call.return_data[0])
                                                else:
                                                    if 1000 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) == 1000:
                                                        if (997 * arg4) + (1000 * Mask(112, 0, ext_call.return_data[32])) >= 1000 * Mask(112, 0, ext_call.return_data[32]):
                                                            if (997 * arg4) + (1000 * Mask(112, 0, ext_call.return_data[32])):
                                                                return 0 / (997 * arg4) + (1000 * Mask(112, 0, ext_call.return_data[32])), 
                                                                       0,
                                                                       ext_call.return_data[0] << 248,
                                                                       uint8(ext_call.return_data[0])
                                            else:
                                                if 997 * Mask(112, 0, ext_call.return_data[0]) * arg4 / 997 * arg4 == Mask(112, 0, ext_call.return_data[0]):
                                                    if not Mask(112, 0, ext_call.return_data[32]):
                                                        if 997 * arg4 >= 0:
                                                            if 997 * arg4:
                                                                return 997 * Mask(112, 0, ext_call.return_data[0]) * arg4 / 997 * arg4, 
                                                                       0,
                                                                       ext_call.return_data[0] << 248,
                                                                       uint8(ext_call.return_data[0])
                                                    else:
                                                        if 1000 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) == 1000:
                                                            if (997 * arg4) + (1000 * Mask(112, 0, ext_call.return_data[32])) >= 1000 * Mask(112, 0, ext_call.return_data[32]):
                                                                if (997 * arg4) + (1000 * Mask(112, 0, ext_call.return_data[32])):
                                                                    return 997 * Mask(112, 0, ext_call.return_data[0]) * arg4 / (997 * arg4) + (1000 * Mask(112, 0, ext_call.return_data[32])), 
                                                                           0,
                                                                           ext_call.return_data[0] << 248,
                                                                           uint8(ext_call.return_data[0])
            else:
                if arg4 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] == arg4:
                    if not arg4 * ext_call.return_data[50 len 14]:
                        if arg4 <= ext_call.return_data[18 len 14]:
                            if ext_call.return_data[18 len 14] - arg4:
                                if (997 * ext_call.return_data[18 len 14]) - (997 * arg4) / ext_call.return_data[18 len 14] - arg4 == 997:
                                    if (997 * ext_call.return_data[18 len 14]) - (997 * arg4):
                                        if (0 / (997 * ext_call.return_data[18 len 14]) - (997 * arg4)) + 1 >= 0 / (997 * ext_call.return_data[18 len 14]) - (997 * arg4):
                                            require ext_code.size(arg2)
                                            staticcall arg2.decimals() with:
                                                    gas gas_remaining wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(arg3)
                                            staticcall arg3.decimals() with:
                                                    gas gas_remaining wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if (0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * arg4)) + 1 != 1:
                                                if (0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * arg4)) + 1:
                                                    return (0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * arg4)) + 1, 
                                                           1,
                                                           ext_call.return_data[0] << 248,
                                                           uint8(ext_call.return_data[0])
                                            if arg4 <= 0:
                                                revert with 0, 32, 43, 0x59556e697377617056324c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e, mem[396 len 21]
                                            if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                revert with 0, 32, 40, 0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[393 len 24]
                                            if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                revert with 0, 32, 40, 0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[393 len 24]
                                            if not arg4:
                                                if Mask(112, 0, ext_call.return_data[32]):
                                                    if 1000 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) == 1000:
                                                        if 1000 * Mask(112, 0, ext_call.return_data[32]) >= 1000 * Mask(112, 0, ext_call.return_data[32]):
                                                            if 1000 * Mask(112, 0, ext_call.return_data[32]):
                                                                return 0 / 1000 * Mask(112, 0, ext_call.return_data[32]), 0, ext_call.return_data[0] << 248, uint8(ext_call.return_data[0])
                                            else:
                                                if 997 * arg4 / arg4 == 997:
                                                    if not 997 * arg4:
                                                        if not Mask(112, 0, ext_call.return_data[32]):
                                                            if 997 * arg4 >= 0:
                                                                if 997 * arg4:
                                                                    return 0 / 997 * arg4, 0, ext_call.return_data[0] << 248, uint8(ext_call.return_data[0])
                                                        else:
                                                            if 1000 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) == 1000:
                                                                if (997 * arg4) + (1000 * Mask(112, 0, ext_call.return_data[32])) >= 1000 * Mask(112, 0, ext_call.return_data[32]):
                                                                    if (997 * arg4) + (1000 * Mask(112, 0, ext_call.return_data[32])):
                                                                        return 0 / (997 * arg4) + (1000 * Mask(112, 0, ext_call.return_data[32])), 
                                                                               0,
                                                                               ext_call.return_data[0] << 248,
                                                                               uint8(ext_call.return_data[0])
                                                    else:
                                                        if 997 * Mask(112, 0, ext_call.return_data[0]) * arg4 / 997 * arg4 == Mask(112, 0, ext_call.return_data[0]):
                                                            if not Mask(112, 0, ext_call.return_data[32]):
                                                                if 997 * arg4 >= 0:
                                                                    if 997 * arg4:
                                                                        return 997 * Mask(112, 0, ext_call.return_data[0]) * arg4 / 997 * arg4, 
                                                                               0,
                                                                               ext_call.return_data[0] << 248,
                                                                               uint8(ext_call.return_data[0])
                                                            else:
                                                                if 1000 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) == 1000:
                                                                    if (997 * arg4) + (1000 * Mask(112, 0, ext_call.return_data[32])) >= 1000 * Mask(112, 0, ext_call.return_data[32]):
                                                                        if (997 * arg4) + (1000 * Mask(112, 0, ext_call.return_data[32])):
                                                                            return 997 * Mask(112, 0, ext_call.return_data[0]) * arg4 / (997 * arg4) + (1000 * Mask(112, 0, ext_call.return_data[32])), 
                                                                                   0,
                                                                                   ext_call.return_data[0] << 248,
                                                                                   uint8(ext_call.return_data[0])
                    else:
                        if 1000 * arg4 * ext_call.return_data[50 len 14] / arg4 * ext_call.return_data[50 len 14] == 1000:
                            if arg4 <= ext_call.return_data[18 len 14]:
                                if ext_call.return_data[18 len 14] - arg4:
                                    if (997 * ext_call.return_data[18 len 14]) - (997 * arg4) / ext_call.return_data[18 len 14] - arg4 == 997:
                                        if (997 * ext_call.return_data[18 len 14]) - (997 * arg4):
                                            if (1000 * arg4 * ext_call.return_data[50 len 14] / (997 * ext_call.return_data[18 len 14]) - (997 * arg4)) + 1 >= 1000 * arg4 * ext_call.return_data[50 len 14] / (997 * ext_call.return_data[18 len 14]) - (997 * arg4):
                                                require ext_code.size(arg2)
                                                staticcall arg2.decimals() with:
                                                        gas gas_remaining wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(arg3)
                                                staticcall arg3.decimals() with:
                                                        gas gas_remaining wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if (1000 * arg4 * Mask(112, 0, ext_call.return_data[32]) / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * arg4)) + 1 != 1:
                                                    if (1000 * arg4 * Mask(112, 0, ext_call.return_data[32]) / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * arg4)) + 1:
                                                        return (1000 * arg4 * Mask(112, 0, ext_call.return_data[32]) / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * arg4)) + 1, 
                                                               1,
                                                               ext_call.return_data[0] << 248,
                                                               uint8(ext_call.return_data[0])
                                                if arg4 <= 0:
                                                    revert with 0, 32, 43, 0x59556e697377617056324c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e, mem[396 len 21]
                                                if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                    revert with 0, 32, 40, 0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[393 len 24]
                                                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                    revert with 0, 32, 40, 0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[393 len 24]
                                                if not arg4:
                                                    if Mask(112, 0, ext_call.return_data[32]):
                                                        if 1000 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) == 1000:
                                                            if 1000 * Mask(112, 0, ext_call.return_data[32]) >= 1000 * Mask(112, 0, ext_call.return_data[32]):
                                                                if 1000 * Mask(112, 0, ext_call.return_data[32]):
                                                                    return 0 / 1000 * Mask(112, 0, ext_call.return_data[32]), 0, ext_call.return_data[0] << 248, uint8(ext_call.return_data[0])
                                                else:
                                                    if 997 * arg4 / arg4 == 997:
                                                        if not 997 * arg4:
                                                            if not Mask(112, 0, ext_call.return_data[32]):
                                                                if 997 * arg4 >= 0:
                                                                    if 997 * arg4:
                                                                        return 0 / 997 * arg4, 0, ext_call.return_data[0] << 248, uint8(ext_call.return_data[0])
                                                            else:
                                                                if 1000 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) == 1000:
                                                                    if (997 * arg4) + (1000 * Mask(112, 0, ext_call.return_data[32])) >= 1000 * Mask(112, 0, ext_call.return_data[32]):
                                                                        if (997 * arg4) + (1000 * Mask(112, 0, ext_call.return_data[32])):
                                                                            return 0 / (997 * arg4) + (1000 * Mask(112, 0, ext_call.return_data[32])), 
                                                                                   0,
                                                                                   ext_call.return_data[0] << 248,
                                                                                   uint8(ext_call.return_data[0])
                                                        else:
                                                            if 997 * Mask(112, 0, ext_call.return_data[0]) * arg4 / 997 * arg4 == Mask(112, 0, ext_call.return_data[0]):
                                                                if not Mask(112, 0, ext_call.return_data[32]):
                                                                    if 997 * arg4 >= 0:
                                                                        if 997 * arg4:
                                                                            return 997 * Mask(112, 0, ext_call.return_data[0]) * arg4 / 997 * arg4, 
                                                                                   0,
                                                                                   ext_call.return_data[0] << 248,
                                                                                   uint8(ext_call.return_data[0])
                                                                else:
                                                                    if 1000 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) == 1000:
                                                                        if (997 * arg4) + (1000 * Mask(112, 0, ext_call.return_data[32])) >= 1000 * Mask(112, 0, ext_call.return_data[32]):
                                                                            if (997 * arg4) + (1000 * Mask(112, 0, ext_call.return_data[32])):
                                                                                return 997 * Mask(112, 0, ext_call.return_data[0]) * arg4 / (997 * arg4) + (1000 * Mask(112, 0, ext_call.return_data[32])), 
                                                                                       0,
                                                                                       ext_call.return_data[0] << 248,
                                                                                       uint8(ext_call.return_data[0])
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
            require ext_code.size(address(sha3(0, arg1, sha3(arg2, arg3), 0xc8a8a7c2be8c7707980ffe0ad138290adb87b59720c062c427ee0f43dab6233)))
            staticcall address(sha3(0, arg1, sha3(arg2, arg3), 0xc8a8a7c2be8c7707980ffe0ad138290adb87b59720c062c427ee0f43dab6233)).getReserves() with:
                    gas gas_remaining wei
        else:
            if not arg3:
                revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
            require ext_code.size(address(sha3(0, arg1, sha3(arg3, arg2), 0xc8a8a7c2be8c7707980ffe0ad138290adb87b59720c062c427ee0f43dab6233)))
            staticcall address(sha3(0, arg1, sha3(arg3, arg2), 0xc8a8a7c2be8c7707980ffe0ad138290adb87b59720c062c427ee0f43dab6233)).getReserves() with:
                    gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        if arg4 <= 0:
            revert with 0, 32, 44, 0xfe556e697377617056324c6962726172793a20494e53554646494349454e545f4f55545055545f414d4f554e, mem[397 len 20]
        if arg3 == arg2:
            if ext_call.return_data[18 len 14] <= 0:
                revert with 0, 32, 40, 0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[393 len 24]
            if ext_call.return_data[50 len 14] <= 0:
                revert with 0, 32, 40, 0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[393 len 24]
            if not ext_call.return_data[18 len 14]:
                if arg4 <= ext_call.return_data[50 len 14]:
                    if ext_call.return_data[50 len 14] - arg4:
                        if (997 * ext_call.return_data[50 len 14]) - (997 * arg4) / ext_call.return_data[50 len 14] - arg4 == 997:
                            if (997 * ext_call.return_data[50 len 14]) - (997 * arg4):
                                if (0 / (997 * ext_call.return_data[50 len 14]) - (997 * arg4)) + 1 >= 0 / (997 * ext_call.return_data[50 len 14]) - (997 * arg4):
                                    require ext_code.size(arg2)
                                    staticcall arg2.decimals() with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(arg3)
                                    staticcall arg3.decimals() with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if (0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * arg4)) + 1 != 1:
                                        if (0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * arg4)) + 1:
                                            return (0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * arg4)) + 1, 
                                                   1,
                                                   ext_call.return_data[0] << 248,
                                                   uint8(ext_call.return_data[0])
                                    if arg4 <= 0:
                                        revert with 0, 32, 43, 0x59556e697377617056324c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e, mem[396 len 21]
                                    if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                        revert with 0, 32, 40, 0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[393 len 24]
                                    if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                        revert with 0, 32, 40, 0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[393 len 24]
                                    if not arg4:
                                        if Mask(112, 0, ext_call.return_data[0]):
                                            if 1000 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) == 1000:
                                                if 1000 * Mask(112, 0, ext_call.return_data[0]) >= 1000 * Mask(112, 0, ext_call.return_data[0]):
                                                    if 1000 * Mask(112, 0, ext_call.return_data[0]):
                                                        return 0 / 1000 * Mask(112, 0, ext_call.return_data[0]), 0, ext_call.return_data[0] << 248, uint8(ext_call.return_data[0])
                                    else:
                                        if 997 * arg4 / arg4 == 997:
                                            if not 997 * arg4:
                                                if not Mask(112, 0, ext_call.return_data[0]):
                                                    if 997 * arg4 >= 0:
                                                        if 997 * arg4:
                                                            return 0 / 997 * arg4, 0, ext_call.return_data[0] << 248, uint8(ext_call.return_data[0])
                                                else:
                                                    if 1000 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) == 1000:
                                                        if (997 * arg4) + (1000 * Mask(112, 0, ext_call.return_data[0])) >= 1000 * Mask(112, 0, ext_call.return_data[0]):
                                                            if (997 * arg4) + (1000 * Mask(112, 0, ext_call.return_data[0])):
                                                                return 0 / (997 * arg4) + (1000 * Mask(112, 0, ext_call.return_data[0])), 
                                                                       0,
                                                                       ext_call.return_data[0] << 248,
                                                                       uint8(ext_call.return_data[0])
                                            else:
                                                if 997 * Mask(112, 0, ext_call.return_data[32]) * arg4 / 997 * arg4 == Mask(112, 0, ext_call.return_data[32]):
                                                    if not Mask(112, 0, ext_call.return_data[0]):
                                                        if 997 * arg4 >= 0:
                                                            if 997 * arg4:
                                                                return 997 * Mask(112, 0, ext_call.return_data[32]) * arg4 / 997 * arg4, 
                                                                       0,
                                                                       ext_call.return_data[0] << 248,
                                                                       uint8(ext_call.return_data[0])
                                                    else:
                                                        if 1000 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) == 1000:
                                                            if (997 * arg4) + (1000 * Mask(112, 0, ext_call.return_data[0])) >= 1000 * Mask(112, 0, ext_call.return_data[0]):
                                                                if (997 * arg4) + (1000 * Mask(112, 0, ext_call.return_data[0])):
                                                                    return 997 * Mask(112, 0, ext_call.return_data[32]) * arg4 / (997 * arg4) + (1000 * Mask(112, 0, ext_call.return_data[0])), 
                                                                           0,
                                                                           ext_call.return_data[0] << 248,
                                                                           uint8(ext_call.return_data[0])
            else:
                if arg4 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] == arg4:
                    if not arg4 * ext_call.return_data[18 len 14]:
                        if arg4 <= ext_call.return_data[50 len 14]:
                            if ext_call.return_data[50 len 14] - arg4:
                                if (997 * ext_call.return_data[50 len 14]) - (997 * arg4) / ext_call.return_data[50 len 14] - arg4 == 997:
                                    if (997 * ext_call.return_data[50 len 14]) - (997 * arg4):
                                        if (0 / (997 * ext_call.return_data[50 len 14]) - (997 * arg4)) + 1 >= 0 / (997 * ext_call.return_data[50 len 14]) - (997 * arg4):
                                            require ext_code.size(arg2)
                                            staticcall arg2.decimals() with:
                                                    gas gas_remaining wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(arg3)
                                            staticcall arg3.decimals() with:
                                                    gas gas_remaining wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if (0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * arg4)) + 1 != 1:
                                                if (0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * arg4)) + 1:
                                                    return (0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * arg4)) + 1, 
                                                           1,
                                                           ext_call.return_data[0] << 248,
                                                           uint8(ext_call.return_data[0])
                                            if arg4 <= 0:
                                                revert with 0, 32, 43, 0x59556e697377617056324c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e, mem[396 len 21]
                                            if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                revert with 0, 32, 40, 0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[393 len 24]
                                            if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                revert with 0, 32, 40, 0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[393 len 24]
                                            if not arg4:
                                                if Mask(112, 0, ext_call.return_data[0]):
                                                    if 1000 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) == 1000:
                                                        if 1000 * Mask(112, 0, ext_call.return_data[0]) >= 1000 * Mask(112, 0, ext_call.return_data[0]):
                                                            if 1000 * Mask(112, 0, ext_call.return_data[0]):
                                                                return 0 / 1000 * Mask(112, 0, ext_call.return_data[0]), 0, ext_call.return_data[0] << 248, uint8(ext_call.return_data[0])
                                            else:
                                                if 997 * arg4 / arg4 == 997:
                                                    if not 997 * arg4:
                                                        if not Mask(112, 0, ext_call.return_data[0]):
                                                            if 997 * arg4 >= 0:
                                                                if 997 * arg4:
                                                                    return 0 / 997 * arg4, 0, ext_call.return_data[0] << 248, uint8(ext_call.return_data[0])
                                                        else:
                                                            if 1000 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) == 1000:
                                                                if (997 * arg4) + (1000 * Mask(112, 0, ext_call.return_data[0])) >= 1000 * Mask(112, 0, ext_call.return_data[0]):
                                                                    if (997 * arg4) + (1000 * Mask(112, 0, ext_call.return_data[0])):
                                                                        return 0 / (997 * arg4) + (1000 * Mask(112, 0, ext_call.return_data[0])), 
                                                                               0,
                                                                               ext_call.return_data[0] << 248,
                                                                               uint8(ext_call.return_data[0])
                                                    else:
                                                        if 997 * Mask(112, 0, ext_call.return_data[32]) * arg4 / 997 * arg4 == Mask(112, 0, ext_call.return_data[32]):
                                                            if not Mask(112, 0, ext_call.return_data[0]):
                                                                if 997 * arg4 >= 0:
                                                                    if 997 * arg4:
                                                                        return 997 * Mask(112, 0, ext_call.return_data[32]) * arg4 / 997 * arg4, 
                                                                               0,
                                                                               ext_call.return_data[0] << 248,
                                                                               uint8(ext_call.return_data[0])
                                                            else:
                                                                if 1000 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) == 1000:
                                                                    if (997 * arg4) + (1000 * Mask(112, 0, ext_call.return_data[0])) >= 1000 * Mask(112, 0, ext_call.return_data[0]):
                                                                        if (997 * arg4) + (1000 * Mask(112, 0, ext_call.return_data[0])):
                                                                            return 997 * Mask(112, 0, ext_call.return_data[32]) * arg4 / (997 * arg4) + (1000 * Mask(112, 0, ext_call.return_data[0])), 
                                                                                   0,
                                                                                   ext_call.return_data[0] << 248,
                                                                                   uint8(ext_call.return_data[0])
                    else:
                        if 1000 * arg4 * ext_call.return_data[18 len 14] / arg4 * ext_call.return_data[18 len 14] == 1000:
                            if arg4 <= ext_call.return_data[50 len 14]:
                                if ext_call.return_data[50 len 14] - arg4:
                                    if (997 * ext_call.return_data[50 len 14]) - (997 * arg4) / ext_call.return_data[50 len 14] - arg4 == 997:
                                        if (997 * ext_call.return_data[50 len 14]) - (997 * arg4):
                                            if (1000 * arg4 * ext_call.return_data[18 len 14] / (997 * ext_call.return_data[50 len 14]) - (997 * arg4)) + 1 >= 1000 * arg4 * ext_call.return_data[18 len 14] / (997 * ext_call.return_data[50 len 14]) - (997 * arg4):
                                                require ext_code.size(arg2)
                                                staticcall arg2.decimals() with:
                                                        gas gas_remaining wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(arg3)
                                                staticcall arg3.decimals() with:
                                                        gas gas_remaining wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if (1000 * arg4 * Mask(112, 0, ext_call.return_data[0]) / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * arg4)) + 1 != 1:
                                                    if (1000 * arg4 * Mask(112, 0, ext_call.return_data[0]) / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * arg4)) + 1:
                                                        return (1000 * arg4 * Mask(112, 0, ext_call.return_data[0]) / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * arg4)) + 1, 
                                                               1,
                                                               ext_call.return_data[0] << 248,
                                                               uint8(ext_call.return_data[0])
                                                if arg4 <= 0:
                                                    revert with 0, 32, 43, 0x59556e697377617056324c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e, mem[396 len 21]
                                                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                    revert with 0, 32, 40, 0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[393 len 24]
                                                if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                    revert with 0, 32, 40, 0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[393 len 24]
                                                if not arg4:
                                                    if Mask(112, 0, ext_call.return_data[0]):
                                                        if 1000 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) == 1000:
                                                            if 1000 * Mask(112, 0, ext_call.return_data[0]) >= 1000 * Mask(112, 0, ext_call.return_data[0]):
                                                                if 1000 * Mask(112, 0, ext_call.return_data[0]):
                                                                    return 0 / 1000 * Mask(112, 0, ext_call.return_data[0]), 0, ext_call.return_data[0] << 248, uint8(ext_call.return_data[0])
                                                else:
                                                    if 997 * arg4 / arg4 == 997:
                                                        if not 997 * arg4:
                                                            if not Mask(112, 0, ext_call.return_data[0]):
                                                                if 997 * arg4 >= 0:
                                                                    if 997 * arg4:
                                                                        return 0 / 997 * arg4, 0, ext_call.return_data[0] << 248, uint8(ext_call.return_data[0])
                                                            else:
                                                                if 1000 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) == 1000:
                                                                    if (997 * arg4) + (1000 * Mask(112, 0, ext_call.return_data[0])) >= 1000 * Mask(112, 0, ext_call.return_data[0]):
                                                                        if (997 * arg4) + (1000 * Mask(112, 0, ext_call.return_data[0])):
                                                                            return 0 / (997 * arg4) + (1000 * Mask(112, 0, ext_call.return_data[0])), 
                                                                                   0,
                                                                                   ext_call.return_data[0] << 248,
                                                                                   uint8(ext_call.return_data[0])
                                                        else:
                                                            if 997 * Mask(112, 0, ext_call.return_data[32]) * arg4 / 997 * arg4 == Mask(112, 0, ext_call.return_data[32]):
                                                                if not Mask(112, 0, ext_call.return_data[0]):
                                                                    if 997 * arg4 >= 0:
                                                                        if 997 * arg4:
                                                                            return 997 * Mask(112, 0, ext_call.return_data[32]) * arg4 / 997 * arg4, 
                                                                                   0,
                                                                                   ext_call.return_data[0] << 248,
                                                                                   uint8(ext_call.return_data[0])
                                                                else:
                                                                    if 1000 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) == 1000:
                                                                        if (997 * arg4) + (1000 * Mask(112, 0, ext_call.return_data[0])) >= 1000 * Mask(112, 0, ext_call.return_data[0]):
                                                                            if (997 * arg4) + (1000 * Mask(112, 0, ext_call.return_data[0])):
                                                                                return 997 * Mask(112, 0, ext_call.return_data[32]) * arg4 / (997 * arg4) + (1000 * Mask(112, 0, ext_call.return_data[0])), 
                                                                                       0,
                                                                                       ext_call.return_data[0] << 248,
                                                                                       uint8(ext_call.return_data[0])
        else:
            if ext_call.return_data[50 len 14] <= 0:
                revert with 0, 32, 40, 0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[393 len 24]
            if ext_call.return_data[18 len 14] <= 0:
                revert with 0, 32, 40, 0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[393 len 24]
            if not ext_call.return_data[50 len 14]:
                if arg4 <= ext_call.return_data[18 len 14]:
                    if ext_call.return_data[18 len 14] - arg4:
                        if (997 * ext_call.return_data[18 len 14]) - (997 * arg4) / ext_call.return_data[18 len 14] - arg4 == 997:
                            if (997 * ext_call.return_data[18 len 14]) - (997 * arg4):
                                if (0 / (997 * ext_call.return_data[18 len 14]) - (997 * arg4)) + 1 >= 0 / (997 * ext_call.return_data[18 len 14]) - (997 * arg4):
                                    require ext_code.size(arg2)
                                    staticcall arg2.decimals() with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(arg3)
                                    staticcall arg3.decimals() with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if (0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * arg4)) + 1 != 1:
                                        if (0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * arg4)) + 1:
                                            return (0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * arg4)) + 1, 
                                                   1,
                                                   ext_call.return_data[0] << 248,
                                                   uint8(ext_call.return_data[0])
                                    if arg4 <= 0:
                                        revert with 0, 32, 43, 0x59556e697377617056324c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e, mem[396 len 21]
                                    if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                        revert with 0, 32, 40, 0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[393 len 24]
                                    if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                        revert with 0, 32, 40, 0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[393 len 24]
                                    if not arg4:
                                        if Mask(112, 0, ext_call.return_data[32]):
                                            if 1000 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) == 1000:
                                                if 1000 * Mask(112, 0, ext_call.return_data[32]) >= 1000 * Mask(112, 0, ext_call.return_data[32]):
                                                    if 1000 * Mask(112, 0, ext_call.return_data[32]):
                                                        return 0 / 1000 * Mask(112, 0, ext_call.return_data[32]), 0, ext_call.return_data[0] << 248, uint8(ext_call.return_data[0])
                                    else:
                                        if 997 * arg4 / arg4 == 997:
                                            if not 997 * arg4:
                                                if not Mask(112, 0, ext_call.return_data[32]):
                                                    if 997 * arg4 >= 0:
                                                        if 997 * arg4:
                                                            return 0 / 997 * arg4, 0, ext_call.return_data[0] << 248, uint8(ext_call.return_data[0])
                                                else:
                                                    if 1000 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) == 1000:
                                                        if (997 * arg4) + (1000 * Mask(112, 0, ext_call.return_data[32])) >= 1000 * Mask(112, 0, ext_call.return_data[32]):
                                                            if (997 * arg4) + (1000 * Mask(112, 0, ext_call.return_data[32])):
                                                                return 0 / (997 * arg4) + (1000 * Mask(112, 0, ext_call.return_data[32])), 
                                                                       0,
                                                                       ext_call.return_data[0] << 248,
                                                                       uint8(ext_call.return_data[0])
                                            else:
                                                if 997 * Mask(112, 0, ext_call.return_data[0]) * arg4 / 997 * arg4 == Mask(112, 0, ext_call.return_data[0]):
                                                    if not Mask(112, 0, ext_call.return_data[32]):
                                                        if 997 * arg4 >= 0:
                                                            if 997 * arg4:
                                                                return 997 * Mask(112, 0, ext_call.return_data[0]) * arg4 / 997 * arg4, 
                                                                       0,
                                                                       ext_call.return_data[0] << 248,
                                                                       uint8(ext_call.return_data[0])
                                                    else:
                                                        if 1000 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) == 1000:
                                                            if (997 * arg4) + (1000 * Mask(112, 0, ext_call.return_data[32])) >= 1000 * Mask(112, 0, ext_call.return_data[32]):
                                                                if (997 * arg4) + (1000 * Mask(112, 0, ext_call.return_data[32])):
                                                                    return 997 * Mask(112, 0, ext_call.return_data[0]) * arg4 / (997 * arg4) + (1000 * Mask(112, 0, ext_call.return_data[32])), 
                                                                           0,
                                                                           ext_call.return_data[0] << 248,
                                                                           uint8(ext_call.return_data[0])
            else:
                if arg4 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] == arg4:
                    if not arg4 * ext_call.return_data[50 len 14]:
                        if arg4 <= ext_call.return_data[18 len 14]:
                            if ext_call.return_data[18 len 14] - arg4:
                                if (997 * ext_call.return_data[18 len 14]) - (997 * arg4) / ext_call.return_data[18 len 14] - arg4 == 997:
                                    if (997 * ext_call.return_data[18 len 14]) - (997 * arg4):
                                        if (0 / (997 * ext_call.return_data[18 len 14]) - (997 * arg4)) + 1 >= 0 / (997 * ext_call.return_data[18 len 14]) - (997 * arg4):
                                            require ext_code.size(arg2)
                                            staticcall arg2.decimals() with:
                                                    gas gas_remaining wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(arg3)
                                            staticcall arg3.decimals() with:
                                                    gas gas_remaining wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if (0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * arg4)) + 1 != 1:
                                                if (0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * arg4)) + 1:
                                                    return (0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * arg4)) + 1, 
                                                           1,
                                                           ext_call.return_data[0] << 248,
                                                           uint8(ext_call.return_data[0])
                                            if arg4 <= 0:
                                                revert with 0, 32, 43, 0x59556e697377617056324c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e, mem[396 len 21]
                                            if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                revert with 0, 32, 40, 0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[393 len 24]
                                            if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                revert with 0, 32, 40, 0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[393 len 24]
                                            if not arg4:
                                                if Mask(112, 0, ext_call.return_data[32]):
                                                    if 1000 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) == 1000:
                                                        if 1000 * Mask(112, 0, ext_call.return_data[32]) >= 1000 * Mask(112, 0, ext_call.return_data[32]):
                                                            if 1000 * Mask(112, 0, ext_call.return_data[32]):
                                                                return 0 / 1000 * Mask(112, 0, ext_call.return_data[32]), 0, ext_call.return_data[0] << 248, uint8(ext_call.return_data[0])
                                            else:
                                                if 997 * arg4 / arg4 == 997:
                                                    if not 997 * arg4:
                                                        if not Mask(112, 0, ext_call.return_data[32]):
                                                            if 997 * arg4 >= 0:
                                                                if 997 * arg4:
                                                                    return 0 / 997 * arg4, 0, ext_call.return_data[0] << 248, uint8(ext_call.return_data[0])
                                                        else:
                                                            if 1000 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) == 1000:
                                                                if (997 * arg4) + (1000 * Mask(112, 0, ext_call.return_data[32])) >= 1000 * Mask(112, 0, ext_call.return_data[32]):
                                                                    if (997 * arg4) + (1000 * Mask(112, 0, ext_call.return_data[32])):
                                                                        return 0 / (997 * arg4) + (1000 * Mask(112, 0, ext_call.return_data[32])), 
                                                                               0,
                                                                               ext_call.return_data[0] << 248,
                                                                               uint8(ext_call.return_data[0])
                                                    else:
                                                        if 997 * Mask(112, 0, ext_call.return_data[0]) * arg4 / 997 * arg4 == Mask(112, 0, ext_call.return_data[0]):
                                                            if not Mask(112, 0, ext_call.return_data[32]):
                                                                if 997 * arg4 >= 0:
                                                                    if 997 * arg4:
                                                                        return 997 * Mask(112, 0, ext_call.return_data[0]) * arg4 / 997 * arg4, 
                                                                               0,
                                                                               ext_call.return_data[0] << 248,
                                                                               uint8(ext_call.return_data[0])
                                                            else:
                                                                if 1000 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) == 1000:
                                                                    if (997 * arg4) + (1000 * Mask(112, 0, ext_call.return_data[32])) >= 1000 * Mask(112, 0, ext_call.return_data[32]):
                                                                        if (997 * arg4) + (1000 * Mask(112, 0, ext_call.return_data[32])):
                                                                            return 997 * Mask(112, 0, ext_call.return_data[0]) * arg4 / (997 * arg4) + (1000 * Mask(112, 0, ext_call.return_data[32])), 
                                                                                   0,
                                                                                   ext_call.return_data[0] << 248,
                                                                                   uint8(ext_call.return_data[0])
                    else:
                        if 1000 * arg4 * ext_call.return_data[50 len 14] / arg4 * ext_call.return_data[50 len 14] == 1000:
                            if arg4 <= ext_call.return_data[18 len 14]:
                                if ext_call.return_data[18 len 14] - arg4:
                                    if (997 * ext_call.return_data[18 len 14]) - (997 * arg4) / ext_call.return_data[18 len 14] - arg4 == 997:
                                        if (997 * ext_call.return_data[18 len 14]) - (997 * arg4):
                                            if (1000 * arg4 * ext_call.return_data[50 len 14] / (997 * ext_call.return_data[18 len 14]) - (997 * arg4)) + 1 >= 1000 * arg4 * ext_call.return_data[50 len 14] / (997 * ext_call.return_data[18 len 14]) - (997 * arg4):
                                                require ext_code.size(arg2)
                                                staticcall arg2.decimals() with:
                                                        gas gas_remaining wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(arg3)
                                                staticcall arg3.decimals() with:
                                                        gas gas_remaining wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if (1000 * arg4 * Mask(112, 0, ext_call.return_data[32]) / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * arg4)) + 1 != 1:
                                                    if (1000 * arg4 * Mask(112, 0, ext_call.return_data[32]) / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * arg4)) + 1:
                                                        return (1000 * arg4 * Mask(112, 0, ext_call.return_data[32]) / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * arg4)) + 1, 
                                                               1,
                                                               ext_call.return_data[0] << 248,
                                                               uint8(ext_call.return_data[0])
                                                if arg4 <= 0:
                                                    revert with 0, 32, 43, 0x59556e697377617056324c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e, mem[396 len 21]
                                                if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                    revert with 0, 32, 40, 0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[393 len 24]
                                                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                    revert with 0, 32, 40, 0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[393 len 24]
                                                if not arg4:
                                                    if Mask(112, 0, ext_call.return_data[32]):
                                                        if 1000 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) == 1000:
                                                            if 1000 * Mask(112, 0, ext_call.return_data[32]) >= 1000 * Mask(112, 0, ext_call.return_data[32]):
                                                                if 1000 * Mask(112, 0, ext_call.return_data[32]):
                                                                    return 0 / 1000 * Mask(112, 0, ext_call.return_data[32]), 0, ext_call.return_data[0] << 248, uint8(ext_call.return_data[0])
                                                else:
                                                    if 997 * arg4 / arg4 == 997:
                                                        if not 997 * arg4:
                                                            if not Mask(112, 0, ext_call.return_data[32]):
                                                                if 997 * arg4 >= 0:
                                                                    if 997 * arg4:
                                                                        return 0 / 997 * arg4, 0, ext_call.return_data[0] << 248, uint8(ext_call.return_data[0])
                                                            else:
                                                                if 1000 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) == 1000:
                                                                    if (997 * arg4) + (1000 * Mask(112, 0, ext_call.return_data[32])) >= 1000 * Mask(112, 0, ext_call.return_data[32]):
                                                                        if (997 * arg4) + (1000 * Mask(112, 0, ext_call.return_data[32])):
                                                                            return 0 / (997 * arg4) + (1000 * Mask(112, 0, ext_call.return_data[32])), 
                                                                                   0,
                                                                                   ext_call.return_data[0] << 248,
                                                                                   uint8(ext_call.return_data[0])
                                                        else:
                                                            if 997 * Mask(112, 0, ext_call.return_data[0]) * arg4 / 997 * arg4 == Mask(112, 0, ext_call.return_data[0]):
                                                                if not Mask(112, 0, ext_call.return_data[32]):
                                                                    if 997 * arg4 >= 0:
                                                                        if 997 * arg4:
                                                                            return 997 * Mask(112, 0, ext_call.return_data[0]) * arg4 / 997 * arg4, 
                                                                                   0,
                                                                                   ext_call.return_data[0] << 248,
                                                                                   uint8(ext_call.return_data[0])
                                                                else:
                                                                    if 1000 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) == 1000:
                                                                        if (997 * arg4) + (1000 * Mask(112, 0, ext_call.return_data[32])) >= 1000 * Mask(112, 0, ext_call.return_data[32]):
                                                                            if (997 * arg4) + (1000 * Mask(112, 0, ext_call.return_data[32])):
                                                                                return 997 * Mask(112, 0, ext_call.return_data[0]) * arg4 / (997 * arg4) + (1000 * Mask(112, 0, ext_call.return_data[32])), 
                                                                                       0,
                                                                                       ext_call.return_data[0] << 248,
                                                                                       uint8(ext_call.return_data[0])
    revert
}



}
