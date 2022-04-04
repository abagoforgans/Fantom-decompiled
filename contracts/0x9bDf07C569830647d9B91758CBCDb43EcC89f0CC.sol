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
    return address(ext_call.return_data[0]), address(ext_call.return_data[0])
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
