contract main {




// =====================  Runtime code  =====================


address factoryAddress;
address sub_7edc9126Address;

function sub_7edc9126(?) payable {
    return sub_7edc9126Address
}

function factory() payable {
    return factoryAddress
}

function _fallback() payable {
    revert
}

function getPairFor(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg1 == arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'UniswapV2Library: IDENTICAL_ADDRESSES'
    if arg1 < arg2:
        if not arg1:
            revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
        return address(sha3(0, factoryAddress, sha3(arg1, arg2), 0xe18a34eb0e04b04f7a0ac29a6e80748dca96319b42c54d679cb821dca90c6303))
    if not arg2:
        revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
    return address(sha3(0, factoryAddress, sha3(arg2, arg1), 0xe18a34eb0e04b04f7a0ac29a6e80748dca96319b42c54d679cb821dca90c6303))
}

function getAllPairs() payable {
    require ext_code.size(sub_7edc9126Address)
    staticcall sub_7edc9126Address.allPairsLength() with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    mem[ceil32(return_data.size) + 100] = 1
    require ext_code.size(sub_7edc9126Address)
    staticcall sub_7edc9126Address.allPairs(uint256 rg1) with:
            gas gas_remaining wei
           args 1
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = (2 * ceil32(return_data.size)) + 96
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require 0 < ext_call.return_data[0]
    mem[mem[128]] = ext_call.return_data[12 len 20]
    mem[(2 * ceil32(return_data.size)) + 96] = 32
    mem[(2 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
    idx = 0
    s = 128
    t = (2 * ceil32(return_data.size)) + 160
    while idx < ext_call.return_data[0]:
        mem[t] = mem[mem[s] + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return Array(len=ext_call.return_data[0], data=mem[(2 * ceil32(return_data.size)) + 160 len 32 * ext_call.return_data[0]])
}

function sub_d12a2e31(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    if address(arg1) == address(arg2):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'UniswapV2Library: IDENTICAL_ADDRESSES'
    if address(arg1) < address(arg2):
        if not address(arg1):
            revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
        if address(arg1) == address(arg2):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'UniswapV2Library: IDENTICAL_ADDRESSES'
        if address(arg1) < address(arg2):
            if not address(arg1):
                revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
            require ext_code.size(address(sha3(0, factoryAddress, sha3(address(arg1), address(arg2)), 0xe18a34eb0e04b04f7a0ac29a6e80748dca96319b42c54d679cb821dca90c6303)))
            staticcall address(sha3(0, factoryAddress, sha3(address(arg1), address(arg2)), 0xe18a34eb0e04b04f7a0ac29a6e80748dca96319b42c54d679cb821dca90c6303)).getReserves() with:
                    gas gas_remaining wei
        else:
            if not address(arg2):
                revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
            require ext_code.size(address(sha3(0, factoryAddress, sha3(address(arg2), address(arg1)), 0xe18a34eb0e04b04f7a0ac29a6e80748dca96319b42c54d679cb821dca90c6303)))
            staticcall address(sha3(0, factoryAddress, sha3(address(arg2), address(arg1)), 0xe18a34eb0e04b04f7a0ac29a6e80748dca96319b42c54d679cb821dca90c6303)).getReserves() with:
                    gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
        if address(arg1) == address(arg1):
            return ext_call.return_data[18 len 14], ext_call.return_data[32] << 144
    else:
        if not address(arg2):
            revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
        if address(arg1) == address(arg2):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'UniswapV2Library: IDENTICAL_ADDRESSES'
        if address(arg1) < address(arg2):
            if not address(arg1):
                revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
            require ext_code.size(address(sha3(0, factoryAddress, sha3(address(arg1), address(arg2)), 0xe18a34eb0e04b04f7a0ac29a6e80748dca96319b42c54d679cb821dca90c6303)))
            staticcall address(sha3(0, factoryAddress, sha3(address(arg1), address(arg2)), 0xe18a34eb0e04b04f7a0ac29a6e80748dca96319b42c54d679cb821dca90c6303)).getReserves() with:
                    gas gas_remaining wei
        else:
            if not address(arg2):
                revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
            require ext_code.size(address(sha3(0, factoryAddress, sha3(address(arg2), address(arg1)), 0xe18a34eb0e04b04f7a0ac29a6e80748dca96319b42c54d679cb821dca90c6303)))
            staticcall address(sha3(0, factoryAddress, sha3(address(arg2), address(arg1)), 0xe18a34eb0e04b04f7a0ac29a6e80748dca96319b42c54d679cb821dca90c6303)).getReserves() with:
                    gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
        if address(arg1) == address(arg2):
            return ext_call.return_data[18 len 14], ext_call.return_data[32] << 144
    return ext_call.return_data[50 len 14], ext_call.return_data[0] << 144
}

function sub_70e48e96(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == arg3
    if address(arg1) == address(arg2):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'UniswapV2Library: IDENTICAL_ADDRESSES'
    if address(arg1) < address(arg2):
        if not address(arg1):
            revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
        if address(arg1) == address(arg2):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'UniswapV2Library: IDENTICAL_ADDRESSES'
        if address(arg1) < address(arg2):
            if not address(arg1):
                revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
            require ext_code.size(address(sha3(0, factoryAddress, sha3(address(arg1), address(arg2)), 0xe18a34eb0e04b04f7a0ac29a6e80748dca96319b42c54d679cb821dca90c6303)))
            staticcall address(sha3(0, factoryAddress, sha3(address(arg1), address(arg2)), 0xe18a34eb0e04b04f7a0ac29a6e80748dca96319b42c54d679cb821dca90c6303)).getReserves() with:
                    gas gas_remaining wei
        else:
            if not address(arg2):
                revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
            require ext_code.size(address(sha3(0, factoryAddress, sha3(address(arg2), address(arg1)), 0xe18a34eb0e04b04f7a0ac29a6e80748dca96319b42c54d679cb821dca90c6303)))
            staticcall address(sha3(0, factoryAddress, sha3(address(arg2), address(arg1)), 0xe18a34eb0e04b04f7a0ac29a6e80748dca96319b42c54d679cb821dca90c6303)).getReserves() with:
                    gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
        if arg3 <= 0:
            revert with 0, 'UniswapV2Library: INSUFFICIENT_INPUT_AMOUNT'
        if address(arg1) == address(arg1):
            if ext_call.return_data[18 len 14] <= 0:
                revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
            if ext_call.return_data[50 len 14] <= 0:
                revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
            if not arg3:
                if ext_call.return_data[18 len 14]:
                    if ext_call.return_data[18 len 14]:
                        if 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] == 1000:
                            if 1000 * ext_call.return_data[18 len 14] >= 1000 * ext_call.return_data[18 len 14]:
                                if 1000 * ext_call.return_data[18 len 14]:
                                    return (0 / 1000 * ext_call.return_data[18 len 14])
            else:
                if arg3:
                    if 997 * arg3 / arg3 == 997:
                        if not 997 * arg3:
                            if not ext_call.return_data[18 len 14]:
                                if 997 * arg3 >= 0:
                                    if 997 * arg3:
                                        return (0 / 997 * arg3)
                            else:
                                if ext_call.return_data[18 len 14]:
                                    if 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] == 1000:
                                        if (1000 * ext_call.return_data[18 len 14]) + (997 * arg3) >= 1000 * ext_call.return_data[18 len 14]:
                                            if (1000 * ext_call.return_data[18 len 14]) + (997 * arg3):
                                                return (0 / (1000 * ext_call.return_data[18 len 14]) + (997 * arg3))
                        else:
                            if 997 * arg3:
                                if 997 * arg3 * ext_call.return_data[50 len 14] / 997 * arg3 == ext_call.return_data[50 len 14]:
                                    if not ext_call.return_data[18 len 14]:
                                        if 997 * arg3 >= 0:
                                            if 997 * arg3:
                                                return (997 * arg3 * ext_call.return_data[50 len 14] / 997 * arg3)
                                    else:
                                        if ext_call.return_data[18 len 14]:
                                            if 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] == 1000:
                                                if (1000 * ext_call.return_data[18 len 14]) + (997 * arg3) >= 1000 * ext_call.return_data[18 len 14]:
                                                    if (1000 * ext_call.return_data[18 len 14]) + (997 * arg3):
                                                        return (997 * arg3 * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * arg3))
        else:
            if ext_call.return_data[50 len 14] <= 0:
                revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
            if ext_call.return_data[18 len 14] <= 0:
                revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
            if not arg3:
                if ext_call.return_data[50 len 14]:
                    if ext_call.return_data[50 len 14]:
                        if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] == 1000:
                            if 1000 * ext_call.return_data[50 len 14] >= 1000 * ext_call.return_data[50 len 14]:
                                if 1000 * ext_call.return_data[50 len 14]:
                                    return (0 / 1000 * ext_call.return_data[50 len 14])
            else:
                if arg3:
                    if 997 * arg3 / arg3 == 997:
                        if not 997 * arg3:
                            if not ext_call.return_data[50 len 14]:
                                if 997 * arg3 >= 0:
                                    if 997 * arg3:
                                        return (0 / 997 * arg3)
                            else:
                                if ext_call.return_data[50 len 14]:
                                    if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] == 1000:
                                        if (1000 * ext_call.return_data[50 len 14]) + (997 * arg3) >= 1000 * ext_call.return_data[50 len 14]:
                                            if (1000 * ext_call.return_data[50 len 14]) + (997 * arg3):
                                                return (0 / (1000 * ext_call.return_data[50 len 14]) + (997 * arg3))
                        else:
                            if 997 * arg3:
                                if 997 * arg3 * ext_call.return_data[18 len 14] / 997 * arg3 == ext_call.return_data[18 len 14]:
                                    if not ext_call.return_data[50 len 14]:
                                        if 997 * arg3 >= 0:
                                            if 997 * arg3:
                                                return (997 * arg3 * ext_call.return_data[18 len 14] / 997 * arg3)
                                    else:
                                        if ext_call.return_data[50 len 14]:
                                            if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] == 1000:
                                                if (1000 * ext_call.return_data[50 len 14]) + (997 * arg3) >= 1000 * ext_call.return_data[50 len 14]:
                                                    if (1000 * ext_call.return_data[50 len 14]) + (997 * arg3):
                                                        return (997 * arg3 * ext_call.return_data[18 len 14] / (1000 * ext_call.return_data[50 len 14]) + (997 * arg3))
    else:
        if not address(arg2):
            revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
        if address(arg1) == address(arg2):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'UniswapV2Library: IDENTICAL_ADDRESSES'
        if address(arg1) < address(arg2):
            if not address(arg1):
                revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
            require ext_code.size(address(sha3(0, factoryAddress, sha3(address(arg1), address(arg2)), 0xe18a34eb0e04b04f7a0ac29a6e80748dca96319b42c54d679cb821dca90c6303)))
            staticcall address(sha3(0, factoryAddress, sha3(address(arg1), address(arg2)), 0xe18a34eb0e04b04f7a0ac29a6e80748dca96319b42c54d679cb821dca90c6303)).getReserves() with:
                    gas gas_remaining wei
        else:
            if not address(arg2):
                revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
            require ext_code.size(address(sha3(0, factoryAddress, sha3(address(arg2), address(arg1)), 0xe18a34eb0e04b04f7a0ac29a6e80748dca96319b42c54d679cb821dca90c6303)))
            staticcall address(sha3(0, factoryAddress, sha3(address(arg2), address(arg1)), 0xe18a34eb0e04b04f7a0ac29a6e80748dca96319b42c54d679cb821dca90c6303)).getReserves() with:
                    gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
        if arg3 <= 0:
            revert with 0, 'UniswapV2Library: INSUFFICIENT_INPUT_AMOUNT'
        if address(arg1) == address(arg2):
            if ext_call.return_data[18 len 14] <= 0:
                revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
            if ext_call.return_data[50 len 14] <= 0:
                revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
            if not arg3:
                if ext_call.return_data[18 len 14]:
                    if ext_call.return_data[18 len 14]:
                        if 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] == 1000:
                            if 1000 * ext_call.return_data[18 len 14] >= 1000 * ext_call.return_data[18 len 14]:
                                if 1000 * ext_call.return_data[18 len 14]:
                                    return (0 / 1000 * ext_call.return_data[18 len 14])
            else:
                if arg3:
                    if 997 * arg3 / arg3 == 997:
                        if not 997 * arg3:
                            if not ext_call.return_data[18 len 14]:
                                if 997 * arg3 >= 0:
                                    if 997 * arg3:
                                        return (0 / 997 * arg3)
                            else:
                                if ext_call.return_data[18 len 14]:
                                    if 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] == 1000:
                                        if (1000 * ext_call.return_data[18 len 14]) + (997 * arg3) >= 1000 * ext_call.return_data[18 len 14]:
                                            if (1000 * ext_call.return_data[18 len 14]) + (997 * arg3):
                                                return (0 / (1000 * ext_call.return_data[18 len 14]) + (997 * arg3))
                        else:
                            if 997 * arg3:
                                if 997 * arg3 * ext_call.return_data[50 len 14] / 997 * arg3 == ext_call.return_data[50 len 14]:
                                    if not ext_call.return_data[18 len 14]:
                                        if 997 * arg3 >= 0:
                                            if 997 * arg3:
                                                return (997 * arg3 * ext_call.return_data[50 len 14] / 997 * arg3)
                                    else:
                                        if ext_call.return_data[18 len 14]:
                                            if 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] == 1000:
                                                if (1000 * ext_call.return_data[18 len 14]) + (997 * arg3) >= 1000 * ext_call.return_data[18 len 14]:
                                                    if (1000 * ext_call.return_data[18 len 14]) + (997 * arg3):
                                                        return (997 * arg3 * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * arg3))
        else:
            if ext_call.return_data[50 len 14] <= 0:
                revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
            if ext_call.return_data[18 len 14] <= 0:
                revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
            if not arg3:
                if ext_call.return_data[50 len 14]:
                    if ext_call.return_data[50 len 14]:
                        if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] == 1000:
                            if 1000 * ext_call.return_data[50 len 14] >= 1000 * ext_call.return_data[50 len 14]:
                                if 1000 * ext_call.return_data[50 len 14]:
                                    return (0 / 1000 * ext_call.return_data[50 len 14])
            else:
                if arg3:
                    if 997 * arg3 / arg3 == 997:
                        if not 997 * arg3:
                            if not ext_call.return_data[50 len 14]:
                                if 997 * arg3 >= 0:
                                    if 997 * arg3:
                                        return (0 / 997 * arg3)
                            else:
                                if ext_call.return_data[50 len 14]:
                                    if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] == 1000:
                                        if (1000 * ext_call.return_data[50 len 14]) + (997 * arg3) >= 1000 * ext_call.return_data[50 len 14]:
                                            if (1000 * ext_call.return_data[50 len 14]) + (997 * arg3):
                                                return (0 / (1000 * ext_call.return_data[50 len 14]) + (997 * arg3))
                        else:
                            if 997 * arg3:
                                if 997 * arg3 * ext_call.return_data[18 len 14] / 997 * arg3 == ext_call.return_data[18 len 14]:
                                    if not ext_call.return_data[50 len 14]:
                                        if 997 * arg3 >= 0:
                                            if 997 * arg3:
                                                return (997 * arg3 * ext_call.return_data[18 len 14] / 997 * arg3)
                                    else:
                                        if ext_call.return_data[50 len 14]:
                                            if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] == 1000:
                                                if (1000 * ext_call.return_data[50 len 14]) + (997 * arg3) >= 1000 * ext_call.return_data[50 len 14]:
                                                    if (1000 * ext_call.return_data[50 len 14]) + (997 * arg3):
                                                        return (997 * arg3 * ext_call.return_data[18 len 14] / (1000 * ext_call.return_data[50 len 14]) + (997 * arg3))
    revert
}

function sub_d48c3202(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == arg3
    if address(arg1) == address(arg2):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'UniswapV2Library: IDENTICAL_ADDRESSES'
    if address(arg1) < address(arg2):
        if not address(arg1):
            revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
        if address(arg1) == address(arg2):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'UniswapV2Library: IDENTICAL_ADDRESSES'
        if address(arg1) < address(arg2):
            if not address(arg1):
                revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
            require ext_code.size(address(sha3(0, factoryAddress, sha3(address(arg1), address(arg2)), 0xe18a34eb0e04b04f7a0ac29a6e80748dca96319b42c54d679cb821dca90c6303)))
            staticcall address(sha3(0, factoryAddress, sha3(address(arg1), address(arg2)), 0xe18a34eb0e04b04f7a0ac29a6e80748dca96319b42c54d679cb821dca90c6303)).getReserves() with:
                    gas gas_remaining wei
        else:
            if not address(arg2):
                revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
            require ext_code.size(address(sha3(0, factoryAddress, sha3(address(arg2), address(arg1)), 0xe18a34eb0e04b04f7a0ac29a6e80748dca96319b42c54d679cb821dca90c6303)))
            staticcall address(sha3(0, factoryAddress, sha3(address(arg2), address(arg1)), 0xe18a34eb0e04b04f7a0ac29a6e80748dca96319b42c54d679cb821dca90c6303)).getReserves() with:
                    gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
        if arg3 <= 0:
            revert with 0, 'UniswapV2Library: INSUFFICIENT_OUTPUT_AMOUNT'
        if address(arg1) == address(arg1):
            if ext_call.return_data[18 len 14] <= 0:
                revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
            if ext_call.return_data[50 len 14] <= 0:
                revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
            if not ext_call.return_data[18 len 14]:
                if arg3 <= ext_call.return_data[50 len 14]:
                    if ext_call.return_data[50 len 14] - arg3:
                        if ext_call.return_data[50 len 14] - arg3:
                            if (997 * ext_call.return_data[50 len 14]) - (997 * arg3) / ext_call.return_data[50 len 14] - arg3 == 997:
                                if (997 * ext_call.return_data[50 len 14]) - (997 * arg3):
                                    if (0 / (997 * ext_call.return_data[50 len 14]) - (997 * arg3)) + 1 >= 0 / (997 * ext_call.return_data[50 len 14]) - (997 * arg3):
                                        return ((0 / (997 * ext_call.return_data[50 len 14]) - (997 * arg3)) + 1)
            else:
                if ext_call.return_data[18 len 14]:
                    if ext_call.return_data[18 len 14] * arg3 / ext_call.return_data[18 len 14] == arg3:
                        if not ext_call.return_data[18 len 14] * arg3:
                            if arg3 <= ext_call.return_data[50 len 14]:
                                if ext_call.return_data[50 len 14] - arg3:
                                    if ext_call.return_data[50 len 14] - arg3:
                                        if (997 * ext_call.return_data[50 len 14]) - (997 * arg3) / ext_call.return_data[50 len 14] - arg3 == 997:
                                            if (997 * ext_call.return_data[50 len 14]) - (997 * arg3):
                                                if (0 / (997 * ext_call.return_data[50 len 14]) - (997 * arg3)) + 1 >= 0 / (997 * ext_call.return_data[50 len 14]) - (997 * arg3):
                                                    return ((0 / (997 * ext_call.return_data[50 len 14]) - (997 * arg3)) + 1)
                        else:
                            if ext_call.return_data[18 len 14] * arg3:
                                if 1000 * ext_call.return_data[18 len 14] * arg3 / ext_call.return_data[18 len 14] * arg3 == 1000:
                                    if arg3 <= ext_call.return_data[50 len 14]:
                                        if ext_call.return_data[50 len 14] - arg3:
                                            if ext_call.return_data[50 len 14] - arg3:
                                                if (997 * ext_call.return_data[50 len 14]) - (997 * arg3) / ext_call.return_data[50 len 14] - arg3 == 997:
                                                    if (997 * ext_call.return_data[50 len 14]) - (997 * arg3):
                                                        if (1000 * ext_call.return_data[18 len 14] * arg3 / (997 * ext_call.return_data[50 len 14]) - (997 * arg3)) + 1 >= 1000 * ext_call.return_data[18 len 14] * arg3 / (997 * ext_call.return_data[50 len 14]) - (997 * arg3):
                                                            return ((1000 * ext_call.return_data[18 len 14] * arg3 / (997 * ext_call.return_data[50 len 14]) - (997 * arg3)) + 1)
        else:
            if ext_call.return_data[50 len 14] <= 0:
                revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
            if ext_call.return_data[18 len 14] <= 0:
                revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
            if not ext_call.return_data[50 len 14]:
                if arg3 <= ext_call.return_data[18 len 14]:
                    if ext_call.return_data[18 len 14] - arg3:
                        if ext_call.return_data[18 len 14] - arg3:
                            if (997 * ext_call.return_data[18 len 14]) - (997 * arg3) / ext_call.return_data[18 len 14] - arg3 == 997:
                                if (997 * ext_call.return_data[18 len 14]) - (997 * arg3):
                                    if (0 / (997 * ext_call.return_data[18 len 14]) - (997 * arg3)) + 1 >= 0 / (997 * ext_call.return_data[18 len 14]) - (997 * arg3):
                                        return ((0 / (997 * ext_call.return_data[18 len 14]) - (997 * arg3)) + 1)
            else:
                if ext_call.return_data[50 len 14]:
                    if ext_call.return_data[50 len 14] * arg3 / ext_call.return_data[50 len 14] == arg3:
                        if not ext_call.return_data[50 len 14] * arg3:
                            if arg3 <= ext_call.return_data[18 len 14]:
                                if ext_call.return_data[18 len 14] - arg3:
                                    if ext_call.return_data[18 len 14] - arg3:
                                        if (997 * ext_call.return_data[18 len 14]) - (997 * arg3) / ext_call.return_data[18 len 14] - arg3 == 997:
                                            if (997 * ext_call.return_data[18 len 14]) - (997 * arg3):
                                                if (0 / (997 * ext_call.return_data[18 len 14]) - (997 * arg3)) + 1 >= 0 / (997 * ext_call.return_data[18 len 14]) - (997 * arg3):
                                                    return ((0 / (997 * ext_call.return_data[18 len 14]) - (997 * arg3)) + 1)
                        else:
                            if ext_call.return_data[50 len 14] * arg3:
                                if 1000 * ext_call.return_data[50 len 14] * arg3 / ext_call.return_data[50 len 14] * arg3 == 1000:
                                    if arg3 <= ext_call.return_data[18 len 14]:
                                        if ext_call.return_data[18 len 14] - arg3:
                                            if ext_call.return_data[18 len 14] - arg3:
                                                if (997 * ext_call.return_data[18 len 14]) - (997 * arg3) / ext_call.return_data[18 len 14] - arg3 == 997:
                                                    if (997 * ext_call.return_data[18 len 14]) - (997 * arg3):
                                                        if (1000 * ext_call.return_data[50 len 14] * arg3 / (997 * ext_call.return_data[18 len 14]) - (997 * arg3)) + 1 >= 1000 * ext_call.return_data[50 len 14] * arg3 / (997 * ext_call.return_data[18 len 14]) - (997 * arg3):
                                                            return ((1000 * ext_call.return_data[50 len 14] * arg3 / (997 * ext_call.return_data[18 len 14]) - (997 * arg3)) + 1)
    else:
        if not address(arg2):
            revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
        if address(arg1) == address(arg2):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'UniswapV2Library: IDENTICAL_ADDRESSES'
        if address(arg1) < address(arg2):
            if not address(arg1):
                revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
            require ext_code.size(address(sha3(0, factoryAddress, sha3(address(arg1), address(arg2)), 0xe18a34eb0e04b04f7a0ac29a6e80748dca96319b42c54d679cb821dca90c6303)))
            staticcall address(sha3(0, factoryAddress, sha3(address(arg1), address(arg2)), 0xe18a34eb0e04b04f7a0ac29a6e80748dca96319b42c54d679cb821dca90c6303)).getReserves() with:
                    gas gas_remaining wei
        else:
            if not address(arg2):
                revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
            require ext_code.size(address(sha3(0, factoryAddress, sha3(address(arg2), address(arg1)), 0xe18a34eb0e04b04f7a0ac29a6e80748dca96319b42c54d679cb821dca90c6303)))
            staticcall address(sha3(0, factoryAddress, sha3(address(arg2), address(arg1)), 0xe18a34eb0e04b04f7a0ac29a6e80748dca96319b42c54d679cb821dca90c6303)).getReserves() with:
                    gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
        if arg3 <= 0:
            revert with 0, 'UniswapV2Library: INSUFFICIENT_OUTPUT_AMOUNT'
        if address(arg1) == address(arg2):
            if ext_call.return_data[18 len 14] <= 0:
                revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
            if ext_call.return_data[50 len 14] <= 0:
                revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
            if not ext_call.return_data[18 len 14]:
                if arg3 <= ext_call.return_data[50 len 14]:
                    if ext_call.return_data[50 len 14] - arg3:
                        if ext_call.return_data[50 len 14] - arg3:
                            if (997 * ext_call.return_data[50 len 14]) - (997 * arg3) / ext_call.return_data[50 len 14] - arg3 == 997:
                                if (997 * ext_call.return_data[50 len 14]) - (997 * arg3):
                                    if (0 / (997 * ext_call.return_data[50 len 14]) - (997 * arg3)) + 1 >= 0 / (997 * ext_call.return_data[50 len 14]) - (997 * arg3):
                                        return ((0 / (997 * ext_call.return_data[50 len 14]) - (997 * arg3)) + 1)
            else:
                if ext_call.return_data[18 len 14]:
                    if ext_call.return_data[18 len 14] * arg3 / ext_call.return_data[18 len 14] == arg3:
                        if not ext_call.return_data[18 len 14] * arg3:
                            if arg3 <= ext_call.return_data[50 len 14]:
                                if ext_call.return_data[50 len 14] - arg3:
                                    if ext_call.return_data[50 len 14] - arg3:
                                        if (997 * ext_call.return_data[50 len 14]) - (997 * arg3) / ext_call.return_data[50 len 14] - arg3 == 997:
                                            if (997 * ext_call.return_data[50 len 14]) - (997 * arg3):
                                                if (0 / (997 * ext_call.return_data[50 len 14]) - (997 * arg3)) + 1 >= 0 / (997 * ext_call.return_data[50 len 14]) - (997 * arg3):
                                                    return ((0 / (997 * ext_call.return_data[50 len 14]) - (997 * arg3)) + 1)
                        else:
                            if ext_call.return_data[18 len 14] * arg3:
                                if 1000 * ext_call.return_data[18 len 14] * arg3 / ext_call.return_data[18 len 14] * arg3 == 1000:
                                    if arg3 <= ext_call.return_data[50 len 14]:
                                        if ext_call.return_data[50 len 14] - arg3:
                                            if ext_call.return_data[50 len 14] - arg3:
                                                if (997 * ext_call.return_data[50 len 14]) - (997 * arg3) / ext_call.return_data[50 len 14] - arg3 == 997:
                                                    if (997 * ext_call.return_data[50 len 14]) - (997 * arg3):
                                                        if (1000 * ext_call.return_data[18 len 14] * arg3 / (997 * ext_call.return_data[50 len 14]) - (997 * arg3)) + 1 >= 1000 * ext_call.return_data[18 len 14] * arg3 / (997 * ext_call.return_data[50 len 14]) - (997 * arg3):
                                                            return ((1000 * ext_call.return_data[18 len 14] * arg3 / (997 * ext_call.return_data[50 len 14]) - (997 * arg3)) + 1)
        else:
            if ext_call.return_data[50 len 14] <= 0:
                revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
            if ext_call.return_data[18 len 14] <= 0:
                revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
            if not ext_call.return_data[50 len 14]:
                if arg3 <= ext_call.return_data[18 len 14]:
                    if ext_call.return_data[18 len 14] - arg3:
                        if ext_call.return_data[18 len 14] - arg3:
                            if (997 * ext_call.return_data[18 len 14]) - (997 * arg3) / ext_call.return_data[18 len 14] - arg3 == 997:
                                if (997 * ext_call.return_data[18 len 14]) - (997 * arg3):
                                    if (0 / (997 * ext_call.return_data[18 len 14]) - (997 * arg3)) + 1 >= 0 / (997 * ext_call.return_data[18 len 14]) - (997 * arg3):
                                        return ((0 / (997 * ext_call.return_data[18 len 14]) - (997 * arg3)) + 1)
            else:
                if ext_call.return_data[50 len 14]:
                    if ext_call.return_data[50 len 14] * arg3 / ext_call.return_data[50 len 14] == arg3:
                        if not ext_call.return_data[50 len 14] * arg3:
                            if arg3 <= ext_call.return_data[18 len 14]:
                                if ext_call.return_data[18 len 14] - arg3:
                                    if ext_call.return_data[18 len 14] - arg3:
                                        if (997 * ext_call.return_data[18 len 14]) - (997 * arg3) / ext_call.return_data[18 len 14] - arg3 == 997:
                                            if (997 * ext_call.return_data[18 len 14]) - (997 * arg3):
                                                if (0 / (997 * ext_call.return_data[18 len 14]) - (997 * arg3)) + 1 >= 0 / (997 * ext_call.return_data[18 len 14]) - (997 * arg3):
                                                    return ((0 / (997 * ext_call.return_data[18 len 14]) - (997 * arg3)) + 1)
                        else:
                            if ext_call.return_data[50 len 14] * arg3:
                                if 1000 * ext_call.return_data[50 len 14] * arg3 / ext_call.return_data[50 len 14] * arg3 == 1000:
                                    if arg3 <= ext_call.return_data[18 len 14]:
                                        if ext_call.return_data[18 len 14] - arg3:
                                            if ext_call.return_data[18 len 14] - arg3:
                                                if (997 * ext_call.return_data[18 len 14]) - (997 * arg3) / ext_call.return_data[18 len 14] - arg3 == 997:
                                                    if (997 * ext_call.return_data[18 len 14]) - (997 * arg3):
                                                        if (1000 * ext_call.return_data[50 len 14] * arg3 / (997 * ext_call.return_data[18 len 14]) - (997 * arg3)) + 1 >= 1000 * ext_call.return_data[50 len 14] * arg3 / (997 * ext_call.return_data[18 len 14]) - (997 * arg3):
                                                            return ((1000 * ext_call.return_data[50 len 14] * arg3 / (997 * ext_call.return_data[18 len 14]) - (997 * arg3)) + 1)
    revert
}



}
