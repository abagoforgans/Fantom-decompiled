contract main {




// =====================  Runtime code  =====================


address sub_0f0d6569Address;
address oracleAAddress;
address oracleBAddress;
address lpTokenAddress;
uint256 sub_d21f7414;
uint256 sub_c9088e1c;

function sub_0f0d6569(?) payable {
    return sub_0f0d6569Address
}

function oracleA() payable {
    return oracleAAddress
}

function lpToken() payable {
    return lpTokenAddress
}

function oracleB() payable {
    return oracleBAddress
}

function sub_c9088e1c(?) payable {
    return sub_c9088e1c
}

function sub_d21f7414(?) payable {
    return sub_d21f7414
}

function _fallback() payable {
    revert
}

function sub_7ef69d12(?) payable {
    require calldata.size - 4 >= 128
    require arg1
    return ((arg3 * 10^arg4) + (arg2 * 10^arg4) / arg1)
}

function sub_db2402ac(?) payable {
    require ext_code.size(oracleAAddress)
    staticcall oracleAAddress.0xfeaf968c with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    require ext_code.size(oracleBAddress)
    staticcall oracleBAddress.0xfeaf968c with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    if ext_call.return_data[32] > 0:
        sub_d21f7414 = ext_call.return_data[32]
        emit 0xf98a88c7: oracleAAddress, ext_call.return_data[32]
    if ext_call.return_data[32] > 0:
        sub_c9088e1c = ext_call.return_data[32]
        emit 0xf98a88c7: oracleBAddress, ext_call.return_data[32]
}

function latestRoundData() payable {
    require ext_code.size(lpTokenAddress)
    staticcall lpTokenAddress.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(lpTokenAddress)
    staticcall lpTokenAddress.token1() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x70a08231 with:
            gas gas_remaining wei
           args lpTokenAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x70a08231 with:
            gas gas_remaining wei
           args lpTokenAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(oracleAAddress)
    staticcall oracleAAddress.0xfeaf968c with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    require ext_code.size(oracleBAddress)
    staticcall oracleBAddress.0xfeaf968c with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[32] <= 0:
        if ext_call.return_data[32] <= 0:
            if not ext_call.return_data[0]:
                if not 10^uint8(ext_call.return_data[0]):
                    revert with 0, 'SafeMath: division by zero'
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x313ce567 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    if not 10^uint8(ext_call.return_data[0]):
                        revert with 0, 'SafeMath: division by zero'
                    require ext_code.size(lpTokenAddress)
                    staticcall lpTokenAddress.0x18160ddd with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(lpTokenAddress)
                    staticcall lpTokenAddress.0x313ce567 with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0]:
                        return ((0 / 10^uint8(ext_call.return_data[0]) * 10^ext_call.return_data[31 len 1]) + (0 / 10^uint8(ext_call.return_data[0]) * 10^ext_call.return_data[31 len 1]) / ext_call.return_data[0])
                else:
                    if sub_c9088e1c * ext_call.return_data[0] / ext_call.return_data[0] != sub_c9088e1c:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                    if not 10^uint8(ext_call.return_data[0]):
                        revert with 0, 'SafeMath: division by zero'
                    require ext_code.size(lpTokenAddress)
                    staticcall lpTokenAddress.0x18160ddd with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(lpTokenAddress)
                    staticcall lpTokenAddress.0x313ce567 with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0]:
                        return ((sub_c9088e1c * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]) * 10^ext_call.return_data[31 len 1]) + (0 / 10^uint8(ext_call.return_data[0]) * 10^ext_call.return_data[31 len 1]) / ext_call.return_data[0])
            else:
                if sub_d21f7414 * ext_call.return_data[0] / ext_call.return_data[0] != sub_d21f7414:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                ext_call.return_data[101 len 31]
                if not 10^uint8(ext_call.return_data[0]):
                    revert with 0, 'SafeMath: division by zero'
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x313ce567 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    if not 10^uint8(ext_call.return_data[0]):
                        revert with 0, 'SafeMath: division by zero'
                    require ext_code.size(lpTokenAddress)
                    staticcall lpTokenAddress.0x18160ddd with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(lpTokenAddress)
                    staticcall lpTokenAddress.0x313ce567 with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0]:
                        return ((0 / 10^uint8(ext_call.return_data[0]) * 10^ext_call.return_data[31 len 1]) + (sub_d21f7414 * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]) * 10^ext_call.return_data[31 len 1]) / ext_call.return_data[0])
                else:
                    if sub_c9088e1c * ext_call.return_data[0] / ext_call.return_data[0] != sub_c9088e1c:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                    if not 10^uint8(ext_call.return_data[0]):
                        revert with 0, 'SafeMath: division by zero'
                    require ext_code.size(lpTokenAddress)
                    staticcall lpTokenAddress.0x18160ddd with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(lpTokenAddress)
                    staticcall lpTokenAddress.0x313ce567 with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0]:
                        return ((sub_c9088e1c * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]) * 10^ext_call.return_data[31 len 1]) + (sub_d21f7414 * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]) * 10^ext_call.return_data[31 len 1]) / ext_call.return_data[0])
        else:
            if not ext_call.return_data[0]:
                if not 10^uint8(ext_call.return_data[0]):
                    revert with 0, 'SafeMath: division by zero'
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x313ce567 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    if not 10^uint8(ext_call.return_data[0]):
                        revert with 0, 'SafeMath: division by zero'
                    require ext_code.size(lpTokenAddress)
                    staticcall lpTokenAddress.0x18160ddd with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(lpTokenAddress)
                    staticcall lpTokenAddress.0x313ce567 with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0]:
                        return ((0 / 10^uint8(ext_call.return_data[0]) * 10^ext_call.return_data[31 len 1]) + (0 / 10^uint8(ext_call.return_data[0]) * 10^ext_call.return_data[31 len 1]) / ext_call.return_data[0])
                else:
                    if ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[32]:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                    if not 10^uint8(ext_call.return_data[0]):
                        revert with 0, 'SafeMath: division by zero'
                    require ext_code.size(lpTokenAddress)
                    staticcall lpTokenAddress.0x18160ddd with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(lpTokenAddress)
                    staticcall lpTokenAddress.0x313ce567 with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0]:
                        return ((ext_call.return_data[32] * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]) * 10^ext_call.return_data[31 len 1]) + (0 / 10^uint8(ext_call.return_data[0]) * 10^ext_call.return_data[31 len 1]) / ext_call.return_data[0])
            else:
                if sub_d21f7414 * ext_call.return_data[0] / ext_call.return_data[0] != sub_d21f7414:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                ext_call.return_data[101 len 31]
                if not 10^uint8(ext_call.return_data[0]):
                    revert with 0, 'SafeMath: division by zero'
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x313ce567 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    if not 10^uint8(ext_call.return_data[0]):
                        revert with 0, 'SafeMath: division by zero'
                    require ext_code.size(lpTokenAddress)
                    staticcall lpTokenAddress.0x18160ddd with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(lpTokenAddress)
                    staticcall lpTokenAddress.0x313ce567 with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0]:
                        return ((0 / 10^uint8(ext_call.return_data[0]) * 10^ext_call.return_data[31 len 1]) + (sub_d21f7414 * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]) * 10^ext_call.return_data[31 len 1]) / ext_call.return_data[0])
                else:
                    if ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[32]:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                    if not 10^uint8(ext_call.return_data[0]):
                        revert with 0, 'SafeMath: division by zero'
                    require ext_code.size(lpTokenAddress)
                    staticcall lpTokenAddress.0x18160ddd with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(lpTokenAddress)
                    staticcall lpTokenAddress.0x313ce567 with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0]:
                        return ((ext_call.return_data[32] * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]) * 10^ext_call.return_data[31 len 1]) + (sub_d21f7414 * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]) * 10^ext_call.return_data[31 len 1]) / ext_call.return_data[0])
    else:
        if ext_call.return_data[32] <= 0:
            if not ext_call.return_data[0]:
                if not 10^uint8(ext_call.return_data[0]):
                    revert with 0, 'SafeMath: division by zero'
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x313ce567 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    if not 10^uint8(ext_call.return_data[0]):
                        revert with 0, 'SafeMath: division by zero'
                    require ext_code.size(lpTokenAddress)
                    staticcall lpTokenAddress.0x18160ddd with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(lpTokenAddress)
                    staticcall lpTokenAddress.0x313ce567 with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0]:
                        return ((0 / 10^uint8(ext_call.return_data[0]) * 10^ext_call.return_data[31 len 1]) + (0 / 10^uint8(ext_call.return_data[0]) * 10^ext_call.return_data[31 len 1]) / ext_call.return_data[0])
                else:
                    if sub_c9088e1c * ext_call.return_data[0] / ext_call.return_data[0] != sub_c9088e1c:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                    if not 10^uint8(ext_call.return_data[0]):
                        revert with 0, 'SafeMath: division by zero'
                    require ext_code.size(lpTokenAddress)
                    staticcall lpTokenAddress.0x18160ddd with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(lpTokenAddress)
                    staticcall lpTokenAddress.0x313ce567 with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0]:
                        return ((sub_c9088e1c * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]) * 10^ext_call.return_data[31 len 1]) + (0 / 10^uint8(ext_call.return_data[0]) * 10^ext_call.return_data[31 len 1]) / ext_call.return_data[0])
            else:
                if ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[32]:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                ext_call.return_data[101 len 31]
                if not 10^uint8(ext_call.return_data[0]):
                    revert with 0, 'SafeMath: division by zero'
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x313ce567 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    if not 10^uint8(ext_call.return_data[0]):
                        revert with 0, 'SafeMath: division by zero'
                    require ext_code.size(lpTokenAddress)
                    staticcall lpTokenAddress.0x18160ddd with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(lpTokenAddress)
                    staticcall lpTokenAddress.0x313ce567 with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0]:
                        return ((0 / 10^uint8(ext_call.return_data[0]) * 10^ext_call.return_data[31 len 1]) + (ext_call.return_data[32] * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]) * 10^ext_call.return_data[31 len 1]) / ext_call.return_data[0])
                else:
                    if sub_c9088e1c * ext_call.return_data[0] / ext_call.return_data[0] != sub_c9088e1c:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                    if not 10^uint8(ext_call.return_data[0]):
                        revert with 0, 'SafeMath: division by zero'
                    require ext_code.size(lpTokenAddress)
                    staticcall lpTokenAddress.0x18160ddd with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(lpTokenAddress)
                    staticcall lpTokenAddress.0x313ce567 with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0]:
                        return ((sub_c9088e1c * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]) * 10^ext_call.return_data[31 len 1]) + (ext_call.return_data[32] * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]) * 10^ext_call.return_data[31 len 1]) / ext_call.return_data[0])
        else:
            if not ext_call.return_data[0]:
                if not 10^uint8(ext_call.return_data[0]):
                    revert with 0, 'SafeMath: division by zero'
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x313ce567 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    if not 10^uint8(ext_call.return_data[0]):
                        revert with 0, 'SafeMath: division by zero'
                    require ext_code.size(lpTokenAddress)
                    staticcall lpTokenAddress.0x18160ddd with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(lpTokenAddress)
                    staticcall lpTokenAddress.0x313ce567 with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0]:
                        return ((0 / 10^uint8(ext_call.return_data[0]) * 10^ext_call.return_data[31 len 1]) + (0 / 10^uint8(ext_call.return_data[0]) * 10^ext_call.return_data[31 len 1]) / ext_call.return_data[0])
                else:
                    if ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[32]:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                    if not 10^uint8(ext_call.return_data[0]):
                        revert with 0, 'SafeMath: division by zero'
                    require ext_code.size(lpTokenAddress)
                    staticcall lpTokenAddress.0x18160ddd with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(lpTokenAddress)
                    staticcall lpTokenAddress.0x313ce567 with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0]:
                        return ((ext_call.return_data[32] * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]) * 10^ext_call.return_data[31 len 1]) + (0 / 10^uint8(ext_call.return_data[0]) * 10^ext_call.return_data[31 len 1]) / ext_call.return_data[0])
            else:
                if ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[32]:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                ext_call.return_data[101 len 31]
                if not 10^uint8(ext_call.return_data[0]):
                    revert with 0, 'SafeMath: division by zero'
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x313ce567 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    if not 10^uint8(ext_call.return_data[0]):
                        revert with 0, 'SafeMath: division by zero'
                    require ext_code.size(lpTokenAddress)
                    staticcall lpTokenAddress.0x18160ddd with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(lpTokenAddress)
                    staticcall lpTokenAddress.0x313ce567 with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0]:
                        return ((0 / 10^uint8(ext_call.return_data[0]) * 10^ext_call.return_data[31 len 1]) + (ext_call.return_data[32] * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]) * 10^ext_call.return_data[31 len 1]) / ext_call.return_data[0])
                else:
                    if ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[32]:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                    if not 10^uint8(ext_call.return_data[0]):
                        revert with 0, 'SafeMath: division by zero'
                    require ext_code.size(lpTokenAddress)
                    staticcall lpTokenAddress.0x18160ddd with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(lpTokenAddress)
                    staticcall lpTokenAddress.0x313ce567 with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0]:
                        return ((ext_call.return_data[32] * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]) * 10^ext_call.return_data[31 len 1]) + (ext_call.return_data[32] * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]) * 10^ext_call.return_data[31 len 1]) / ext_call.return_data[0])
    ('iszero', ('ext_call.return_data', 0, 32))
    revert
}



}
