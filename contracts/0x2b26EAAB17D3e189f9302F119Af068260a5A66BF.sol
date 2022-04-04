contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function pairFor(address arg1, address arg2, address arg3) payable {
    require calldata.size - 4 >= 96
    if arg2 == arg3:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    39,
                    0xfe53757368697377617056324c6962726172793a204944454e544943414c5f4144445245535345,
                    mem[203 len 25]
    if arg2 < arg3:
        if not arg2:
            revert with 0, 'SushiswapV2Library: ZERO_ADDRESS'
        return address(sha3(0, arg1, sha3(arg2, arg3), 0xe18a34eb0e04b04f7a0ac29a6e80748dca96319b42c54d679cb821dca90c6303))
    if not arg3:
        revert with 0, 'SushiswapV2Library: ZERO_ADDRESS'
    return address(sha3(0, arg1, sha3(arg3, arg2), 0xe18a34eb0e04b04f7a0ac29a6e80748dca96319b42c54d679cb821dca90c6303))
}



}
