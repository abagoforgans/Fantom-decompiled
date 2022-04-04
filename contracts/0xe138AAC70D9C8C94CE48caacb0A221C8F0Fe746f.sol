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
        return address(sha3(0, arg1, sha3(arg2, arg3), 0x9d6a514572482299fe260d57cf42a6dd12afda42484913ea67c57bba3fa77e21))
    if not arg3:
        revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
    return address(sha3(0, arg1, sha3(arg3, arg2), 0x9d6a514572482299fe260d57cf42a6dd12afda42484913ea67c57bba3fa77e21))
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
            require ext_code.size(address(sha3(0, arg1, sha3(arg2, arg3), 0x9d6a514572482299fe260d57cf42a6dd12afda42484913ea67c57bba3fa77e21)))
            staticcall address(sha3(0, arg1, sha3(arg2, arg3), 0x9d6a514572482299fe260d57cf42a6dd12afda42484913ea67c57bba3fa77e21)).getReserves() with:
                    gas gas_remaining wei
        else:
            if not arg3:
                revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
            require ext_code.size(address(sha3(0, arg1, sha3(arg3, arg2), 0x9d6a514572482299fe260d57cf42a6dd12afda42484913ea67c57bba3fa77e21)))
            staticcall address(sha3(0, arg1, sha3(arg3, arg2), 0x9d6a514572482299fe260d57cf42a6dd12afda42484913ea67c57bba3fa77e21)).getReserves() with:
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
            require ext_code.size(address(sha3(0, arg1, sha3(arg2, arg3), 0x9d6a514572482299fe260d57cf42a6dd12afda42484913ea67c57bba3fa77e21)))
            staticcall address(sha3(0, arg1, sha3(arg2, arg3), 0x9d6a514572482299fe260d57cf42a6dd12afda42484913ea67c57bba3fa77e21)).getReserves() with:
                    gas gas_remaining wei
        else:
            if not arg3:
                revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
            require ext_code.size(address(sha3(0, arg1, sha3(arg3, arg2), 0x9d6a514572482299fe260d57cf42a6dd12afda42484913ea67c57bba3fa77e21)))
            staticcall address(sha3(0, arg1, sha3(arg3, arg2), 0x9d6a514572482299fe260d57cf42a6dd12afda42484913ea67c57bba3fa77e21)).getReserves() with:
                    gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        if arg2 == arg3:
            return ext_call.return_data[18 len 14], ext_call.return_data[32] << 144
    return ext_call.return_data[50 len 14], ext_call.return_data[0] << 144
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
            require ext_code.size(address(sha3(0, arg1, sha3(arg2, arg3), 0x9d6a514572482299fe260d57cf42a6dd12afda42484913ea67c57bba3fa77e21)))
            staticcall address(sha3(0, arg1, sha3(arg2, arg3), 0x9d6a514572482299fe260d57cf42a6dd12afda42484913ea67c57bba3fa77e21)).getReserves() with:
                    gas gas_remaining wei
        else:
            if not arg3:
                revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
            require ext_code.size(address(sha3(0, arg1, sha3(arg3, arg2), 0x9d6a514572482299fe260d57cf42a6dd12afda42484913ea67c57bba3fa77e21)))
            staticcall address(sha3(0, arg1, sha3(arg3, arg2), 0x9d6a514572482299fe260d57cf42a6dd12afda42484913ea67c57bba3fa77e21)).getReserves() with:
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
            require ext_code.size(address(sha3(0, arg1, sha3(arg2, arg3), 0x9d6a514572482299fe260d57cf42a6dd12afda42484913ea67c57bba3fa77e21)))
            staticcall address(sha3(0, arg1, sha3(arg2, arg3), 0x9d6a514572482299fe260d57cf42a6dd12afda42484913ea67c57bba3fa77e21)).getReserves() with:
                    gas gas_remaining wei
        else:
            if not arg3:
                revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
            require ext_code.size(address(sha3(0, arg1, sha3(arg3, arg2), 0x9d6a514572482299fe260d57cf42a6dd12afda42484913ea67c57bba3fa77e21)))
            staticcall address(sha3(0, arg1, sha3(arg3, arg2), 0x9d6a514572482299fe260d57cf42a6dd12afda42484913ea67c57bba3fa77e21)).getReserves() with:
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
    staticcall address(ext_call.return_data[0]).0x95d89b41 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _20 = mem[96]
    require mem[96] <= 4294967296
    require mem[96] + 32 <= return_data.size
    require mem[mem[96] + 96] <= 4294967296 and mem[96] + mem[mem[96] + 96] + 32 <= return_data.size
    mem[ceil32(return_data.size) + 96] = mem[mem[96] + 96]
    _23 = mem[_20 + 96]
    mem[ceil32(return_data.size) + 128 len ceil32(mem[_20 + 96])] = mem[_20 + 128 len ceil32(mem[_20 + 96])]
    if not _23 % 32:
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x313ce567 with:
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
        staticcall address(ext_call.return_data[0]).0x95d89b41 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[_23 + ceil32(return_data.size) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = _23 + (2 * ceil32(return_data.size)) + 128
        require return_data.size >= 32
        _167 = mem[_23 + ceil32(return_data.size) + 128]
        require mem[_23 + ceil32(return_data.size) + 128] <= 4294967296
        require mem[_23 + ceil32(return_data.size) + 128] + 32 <= return_data.size
        require mem[mem[_23 + ceil32(return_data.size) + 128] + _23 + ceil32(return_data.size) + 128] <= 4294967296 and mem[_23 + ceil32(return_data.size) + 128] + mem[mem[_23 + ceil32(return_data.size) + 128] + _23 + ceil32(return_data.size) + 128] + 32 <= return_data.size
        mem[_23 + (2 * ceil32(return_data.size)) + 128] = mem[mem[_23 + ceil32(return_data.size) + 128] + _23 + ceil32(return_data.size) + 128]
        _173 = mem[_167 + _23 + ceil32(return_data.size) + 128]
        mem[_23 + (2 * ceil32(return_data.size)) + 160 len ceil32(mem[_167 + _23 + ceil32(return_data.size) + 128])] = mem[_167 + _23 + ceil32(return_data.size) + 160 len ceil32(mem[_167 + _23 + ceil32(return_data.size) + 128])]
        if not _173 % 32:
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0x313ce567 with:
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
                   Array(len=mem[ceil32(return_data.size) + 96], data=mem[_173 + _23 + (2 * ceil32(return_data.size)) + 416 len floor32(mem[_23 + (2 * ceil32(return_data.size)) + 128]) + mem[ceil32(return_data.size) + 96] + 64]),
                   ext_call.return_data[0] << 248,
                   address(ext_call.return_data[0]),
                   mem[ceil32(return_data.size) + 96] + 256,
                   ext_call.return_data[0] << 248
        mem[floor32(_173) + _23 + (2 * ceil32(return_data.size)) + 160] = mem[floor32(_173) + _23 + (2 * ceil32(return_data.size)) + -(_173 % 32) + 192 len _173 % 32]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x313ce567 with:
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
               Array(len=mem[ceil32(return_data.size) + 96], data=mem[floor32(_173) + _23 + (2 * ceil32(return_data.size)) + 448 len floor32(mem[_23 + (2 * ceil32(return_data.size)) + 128]) + mem[ceil32(return_data.size) + 96] + 64]),
               ext_call.return_data[0] << 248,
               address(ext_call.return_data[0]),
               mem[ceil32(return_data.size) + 96] + 256,
               ext_call.return_data[0] << 248
    mem[floor32(_23) + ceil32(return_data.size) + 128] = mem[floor32(_23) + ceil32(return_data.size) + -(_23 % 32) + 160 len _23 % 32]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x313ce567 with:
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
    staticcall address(ext_call.return_data[0]).0x95d89b41 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[floor32(_23) + ceil32(return_data.size) + 160 len return_data.size] = ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    _170 = mem[floor32(_23) + ceil32(return_data.size) + 160]
    require mem[floor32(_23) + ceil32(return_data.size) + 160] <= 4294967296
    require mem[floor32(_23) + ceil32(return_data.size) + 160] + 32 <= return_data.size
    require mem[mem[floor32(_23) + ceil32(return_data.size) + 160] + floor32(_23) + ceil32(return_data.size) + 160] <= 4294967296 and mem[floor32(_23) + ceil32(return_data.size) + 160] + mem[mem[floor32(_23) + ceil32(return_data.size) + 160] + floor32(_23) + ceil32(return_data.size) + 160] + 32 <= return_data.size
    mem[floor32(_23) + (2 * ceil32(return_data.size)) + 160] = mem[mem[floor32(_23) + ceil32(return_data.size) + 160] + floor32(_23) + ceil32(return_data.size) + 160]
    _175 = mem[_170 + floor32(_23) + ceil32(return_data.size) + 160]
    mem[floor32(_23) + (2 * ceil32(return_data.size)) + 192 len ceil32(mem[_170 + floor32(_23) + ceil32(return_data.size) + 160])] = mem[_170 + floor32(_23) + ceil32(return_data.size) + 192 len ceil32(mem[_170 + floor32(_23) + ceil32(return_data.size) + 160])]
    if not _175 % 32:
        mem[64] = _175 + floor32(_23) + (2 * ceil32(return_data.size)) + 192
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x313ce567 with:
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
        _288 = mem[ceil32(return_data.size) + 96]
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
               224,
               ext_call.return_data[0] << 248,
               address(ext_call.return_data[0]),
               mem[_175 + floor32(_23) + (2 * ceil32(return_data.size)) + 352],
               ext_call.return_data[0] << 248,
               mem[_175 + floor32(_23) + (2 * ceil32(return_data.size)) + 416 len floor32(mem[floor32(_23) + (2 * ceil32(return_data.size)) + 160]) + _288 + 96]
    mem[floor32(_175) + floor32(_23) + (2 * ceil32(return_data.size)) + 192] = mem[floor32(_175) + floor32(_23) + (2 * ceil32(return_data.size)) + -(_175 % 32) + 224 len _175 % 32]
    mem[64] = floor32(_175) + floor32(_23) + (2 * ceil32(return_data.size)) + 224
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x313ce567 with:
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
    _295 = mem[ceil32(return_data.size) + 96]
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
           224,
           ext_call.return_data[0] << 248,
           address(ext_call.return_data[0]),
           mem[floor32(_175) + floor32(_23) + (2 * ceil32(return_data.size)) + 384],
           ext_call.return_data[0] << 248,
           mem[floor32(_175) + floor32(_23) + (2 * ceil32(return_data.size)) + 448 len floor32(mem[floor32(_23) + (2 * ceil32(return_data.size)) + 160]) + _295 + 96]
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
            require ext_code.size(address(sha3(0, arg1, sha3(arg2, arg3), 0x9d6a514572482299fe260d57cf42a6dd12afda42484913ea67c57bba3fa77e21)))
            staticcall address(sha3(0, arg1, sha3(arg2, arg3), 0x9d6a514572482299fe260d57cf42a6dd12afda42484913ea67c57bba3fa77e21)).getReserves() with:
                    gas gas_remaining wei
        else:
            if not arg3:
                revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
            require ext_code.size(address(sha3(0, arg1, sha3(arg3, arg2), 0x9d6a514572482299fe260d57cf42a6dd12afda42484913ea67c57bba3fa77e21)))
            staticcall address(sha3(0, arg1, sha3(arg3, arg2), 0x9d6a514572482299fe260d57cf42a6dd12afda42484913ea67c57bba3fa77e21)).getReserves() with:
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
                                    if 0 / 1000 * ext_call.return_data[18 len 14] != 1:
                                        return (0 / 1000 * ext_call.return_data[18 len 14])
                                    if arg4 <= 0:
                                        revert with 0, 32, 44, 0xfe556e697377617056324c6962726172793a20494e53554646494349454e545f4f55545055545f414d4f554e, mem[397 len 20]
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
                if arg4:
                    if 997 * arg4 / arg4 == 997:
                        if not 997 * arg4:
                            if not ext_call.return_data[18 len 14]:
                                if 997 * arg4 >= 0:
                                    if 997 * arg4:
                                        if 0 / 997 * arg4 != 1:
                                            return (0 / 997 * arg4)
                                        if arg4 <= 0:
                                            revert with 0, 32, 44, 0xfe556e697377617056324c6962726172793a20494e53554646494349454e545f4f55545055545f414d4f554e, mem[397 len 20]
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
                                if ext_call.return_data[18 len 14]:
                                    if 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] == 1000:
                                        if (1000 * ext_call.return_data[18 len 14]) + (997 * arg4) >= 1000 * ext_call.return_data[18 len 14]:
                                            if (1000 * ext_call.return_data[18 len 14]) + (997 * arg4):
                                                if 0 / (1000 * ext_call.return_data[18 len 14]) + (997 * arg4) != 1:
                                                    return (0 / (1000 * ext_call.return_data[18 len 14]) + (997 * arg4))
                                                if arg4 <= 0:
                                                    revert with 0, 32, 44, 0xfe556e697377617056324c6962726172793a20494e53554646494349454e545f4f55545055545f414d4f554e, mem[397 len 20]
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
                            if 997 * arg4:
                                if 997 * arg4 * ext_call.return_data[50 len 14] / 997 * arg4 == ext_call.return_data[50 len 14]:
                                    if not ext_call.return_data[18 len 14]:
                                        if 997 * arg4 >= 0:
                                            if 997 * arg4:
                                                if 997 * arg4 * ext_call.return_data[50 len 14] / 997 * arg4 != 1:
                                                    return (997 * arg4 * ext_call.return_data[50 len 14] / 997 * arg4)
                                                if arg4 <= 0:
                                                    revert with 0, 32, 44, 0xfe556e697377617056324c6962726172793a20494e53554646494349454e545f4f55545055545f414d4f554e, mem[397 len 20]
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
                                        if ext_call.return_data[18 len 14]:
                                            if 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] == 1000:
                                                if (1000 * ext_call.return_data[18 len 14]) + (997 * arg4) >= 1000 * ext_call.return_data[18 len 14]:
                                                    if (1000 * ext_call.return_data[18 len 14]) + (997 * arg4):
                                                        if 997 * arg4 * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * arg4) != 1:
                                                            return (997 * arg4 * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * arg4))
                                                        if arg4 <= 0:
                                                            revert with 0, 32, 44, 0xfe556e697377617056324c6962726172793a20494e53554646494349454e545f4f55545055545f414d4f554e, mem[397 len 20]
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
            if not arg4:
                if ext_call.return_data[50 len 14]:
                    if ext_call.return_data[50 len 14]:
                        if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] == 1000:
                            if 1000 * ext_call.return_data[50 len 14] >= 1000 * ext_call.return_data[50 len 14]:
                                if 1000 * ext_call.return_data[50 len 14]:
                                    if 0 / 1000 * ext_call.return_data[50 len 14] != 1:
                                        return (0 / 1000 * ext_call.return_data[50 len 14])
                                    if arg4 <= 0:
                                        revert with 0, 32, 44, 0xfe556e697377617056324c6962726172793a20494e53554646494349454e545f4f55545055545f414d4f554e, mem[397 len 20]
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
                if arg4:
                    if 997 * arg4 / arg4 == 997:
                        if not 997 * arg4:
                            if not ext_call.return_data[50 len 14]:
                                if 997 * arg4 >= 0:
                                    if 997 * arg4:
                                        if 0 / 997 * arg4 != 1:
                                            return (0 / 997 * arg4)
                                        if arg4 <= 0:
                                            revert with 0, 32, 44, 0xfe556e697377617056324c6962726172793a20494e53554646494349454e545f4f55545055545f414d4f554e, mem[397 len 20]
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
                                if ext_call.return_data[50 len 14]:
                                    if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] == 1000:
                                        if (1000 * ext_call.return_data[50 len 14]) + (997 * arg4) >= 1000 * ext_call.return_data[50 len 14]:
                                            if (1000 * ext_call.return_data[50 len 14]) + (997 * arg4):
                                                if 0 / (1000 * ext_call.return_data[50 len 14]) + (997 * arg4) != 1:
                                                    return (0 / (1000 * ext_call.return_data[50 len 14]) + (997 * arg4))
                                                if arg4 <= 0:
                                                    revert with 0, 32, 44, 0xfe556e697377617056324c6962726172793a20494e53554646494349454e545f4f55545055545f414d4f554e, mem[397 len 20]
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
                            if 997 * arg4:
                                if 997 * arg4 * ext_call.return_data[18 len 14] / 997 * arg4 == ext_call.return_data[18 len 14]:
                                    if not ext_call.return_data[50 len 14]:
                                        if 997 * arg4 >= 0:
                                            if 997 * arg4:
                                                if 997 * arg4 * ext_call.return_data[18 len 14] / 997 * arg4 != 1:
                                                    return (997 * arg4 * ext_call.return_data[18 len 14] / 997 * arg4)
                                                if arg4 <= 0:
                                                    revert with 0, 32, 44, 0xfe556e697377617056324c6962726172793a20494e53554646494349454e545f4f55545055545f414d4f554e, mem[397 len 20]
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
                                        if ext_call.return_data[50 len 14]:
                                            if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] == 1000:
                                                if (1000 * ext_call.return_data[50 len 14]) + (997 * arg4) >= 1000 * ext_call.return_data[50 len 14]:
                                                    if (1000 * ext_call.return_data[50 len 14]) + (997 * arg4):
                                                        if 997 * arg4 * ext_call.return_data[18 len 14] / (1000 * ext_call.return_data[50 len 14]) + (997 * arg4) != 1:
                                                            return (997 * arg4 * ext_call.return_data[18 len 14] / (1000 * ext_call.return_data[50 len 14]) + (997 * arg4))
                                                        if arg4 <= 0:
                                                            revert with 0, 32, 44, 0xfe556e697377617056324c6962726172793a20494e53554646494349454e545f4f55545055545f414d4f554e, mem[397 len 20]
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
            require ext_code.size(address(sha3(0, arg1, sha3(arg2, arg3), 0x9d6a514572482299fe260d57cf42a6dd12afda42484913ea67c57bba3fa77e21)))
            staticcall address(sha3(0, arg1, sha3(arg2, arg3), 0x9d6a514572482299fe260d57cf42a6dd12afda42484913ea67c57bba3fa77e21)).getReserves() with:
                    gas gas_remaining wei
        else:
            if not arg3:
                revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
            require ext_code.size(address(sha3(0, arg1, sha3(arg3, arg2), 0x9d6a514572482299fe260d57cf42a6dd12afda42484913ea67c57bba3fa77e21)))
            staticcall address(sha3(0, arg1, sha3(arg3, arg2), 0x9d6a514572482299fe260d57cf42a6dd12afda42484913ea67c57bba3fa77e21)).getReserves() with:
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
                                    if 0 / 1000 * ext_call.return_data[18 len 14] != 1:
                                        return (0 / 1000 * ext_call.return_data[18 len 14])
                                    if arg4 <= 0:
                                        revert with 0, 32, 44, 0xfe556e697377617056324c6962726172793a20494e53554646494349454e545f4f55545055545f414d4f554e, mem[397 len 20]
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
                if arg4:
                    if 997 * arg4 / arg4 == 997:
                        if not 997 * arg4:
                            if not ext_call.return_data[18 len 14]:
                                if 997 * arg4 >= 0:
                                    if 997 * arg4:
                                        if 0 / 997 * arg4 != 1:
                                            return (0 / 997 * arg4)
                                        if arg4 <= 0:
                                            revert with 0, 32, 44, 0xfe556e697377617056324c6962726172793a20494e53554646494349454e545f4f55545055545f414d4f554e, mem[397 len 20]
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
                                if ext_call.return_data[18 len 14]:
                                    if 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] == 1000:
                                        if (1000 * ext_call.return_data[18 len 14]) + (997 * arg4) >= 1000 * ext_call.return_data[18 len 14]:
                                            if (1000 * ext_call.return_data[18 len 14]) + (997 * arg4):
                                                if 0 / (1000 * ext_call.return_data[18 len 14]) + (997 * arg4) != 1:
                                                    return (0 / (1000 * ext_call.return_data[18 len 14]) + (997 * arg4))
                                                if arg4 <= 0:
                                                    revert with 0, 32, 44, 0xfe556e697377617056324c6962726172793a20494e53554646494349454e545f4f55545055545f414d4f554e, mem[397 len 20]
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
                            if 997 * arg4:
                                if 997 * arg4 * ext_call.return_data[50 len 14] / 997 * arg4 == ext_call.return_data[50 len 14]:
                                    if not ext_call.return_data[18 len 14]:
                                        if 997 * arg4 >= 0:
                                            if 997 * arg4:
                                                if 997 * arg4 * ext_call.return_data[50 len 14] / 997 * arg4 != 1:
                                                    return (997 * arg4 * ext_call.return_data[50 len 14] / 997 * arg4)
                                                if arg4 <= 0:
                                                    revert with 0, 32, 44, 0xfe556e697377617056324c6962726172793a20494e53554646494349454e545f4f55545055545f414d4f554e, mem[397 len 20]
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
                                        if ext_call.return_data[18 len 14]:
                                            if 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] == 1000:
                                                if (1000 * ext_call.return_data[18 len 14]) + (997 * arg4) >= 1000 * ext_call.return_data[18 len 14]:
                                                    if (1000 * ext_call.return_data[18 len 14]) + (997 * arg4):
                                                        if 997 * arg4 * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * arg4) != 1:
                                                            return (997 * arg4 * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * arg4))
                                                        if arg4 <= 0:
                                                            revert with 0, 32, 44, 0xfe556e697377617056324c6962726172793a20494e53554646494349454e545f4f55545055545f414d4f554e, mem[397 len 20]
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
            if not arg4:
                if ext_call.return_data[50 len 14]:
                    if ext_call.return_data[50 len 14]:
                        if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] == 1000:
                            if 1000 * ext_call.return_data[50 len 14] >= 1000 * ext_call.return_data[50 len 14]:
                                if 1000 * ext_call.return_data[50 len 14]:
                                    if 0 / 1000 * ext_call.return_data[50 len 14] != 1:
                                        return (0 / 1000 * ext_call.return_data[50 len 14])
                                    if arg4 <= 0:
                                        revert with 0, 32, 44, 0xfe556e697377617056324c6962726172793a20494e53554646494349454e545f4f55545055545f414d4f554e, mem[397 len 20]
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
                if arg4:
                    if 997 * arg4 / arg4 == 997:
                        if not 997 * arg4:
                            if not ext_call.return_data[50 len 14]:
                                if 997 * arg4 >= 0:
                                    if 997 * arg4:
                                        if 0 / 997 * arg4 != 1:
                                            return (0 / 997 * arg4)
                                        if arg4 <= 0:
                                            revert with 0, 32, 44, 0xfe556e697377617056324c6962726172793a20494e53554646494349454e545f4f55545055545f414d4f554e, mem[397 len 20]
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
                                if ext_call.return_data[50 len 14]:
                                    if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] == 1000:
                                        if (1000 * ext_call.return_data[50 len 14]) + (997 * arg4) >= 1000 * ext_call.return_data[50 len 14]:
                                            if (1000 * ext_call.return_data[50 len 14]) + (997 * arg4):
                                                if 0 / (1000 * ext_call.return_data[50 len 14]) + (997 * arg4) != 1:
                                                    return (0 / (1000 * ext_call.return_data[50 len 14]) + (997 * arg4))
                                                if arg4 <= 0:
                                                    revert with 0, 32, 44, 0xfe556e697377617056324c6962726172793a20494e53554646494349454e545f4f55545055545f414d4f554e, mem[397 len 20]
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
                            if 997 * arg4:
                                if 997 * arg4 * ext_call.return_data[18 len 14] / 997 * arg4 == ext_call.return_data[18 len 14]:
                                    if not ext_call.return_data[50 len 14]:
                                        if 997 * arg4 >= 0:
                                            if 997 * arg4:
                                                if 997 * arg4 * ext_call.return_data[18 len 14] / 997 * arg4 != 1:
                                                    return (997 * arg4 * ext_call.return_data[18 len 14] / 997 * arg4)
                                                if arg4 <= 0:
                                                    revert with 0, 32, 44, 0xfe556e697377617056324c6962726172793a20494e53554646494349454e545f4f55545055545f414d4f554e, mem[397 len 20]
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
                                        if ext_call.return_data[50 len 14]:
                                            if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] == 1000:
                                                if (1000 * ext_call.return_data[50 len 14]) + (997 * arg4) >= 1000 * ext_call.return_data[50 len 14]:
                                                    if (1000 * ext_call.return_data[50 len 14]) + (997 * arg4):
                                                        if 997 * arg4 * ext_call.return_data[18 len 14] / (1000 * ext_call.return_data[50 len 14]) + (997 * arg4) != 1:
                                                            return (997 * arg4 * ext_call.return_data[18 len 14] / (1000 * ext_call.return_data[50 len 14]) + (997 * arg4))
                                                        if arg4 <= 0:
                                                            revert with 0, 32, 44, 0xfe556e697377617056324c6962726172793a20494e53554646494349454e545f4f55545055545f414d4f554e, mem[397 len 20]
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
