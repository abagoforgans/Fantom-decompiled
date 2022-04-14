contract main {




// =====================  Runtime code  =====================


address BNB_BUSD_POOLAddress;
uint256 startTime;
uint256 sub_5cd4d0b8;

function sub_5cd4d0b8(?) payable {
    return sub_5cd4d0b8
}

function startTime() payable {
    return startTime
}

function BNB_BUSD_POOL() payable {
    return BNB_BUSD_POOLAddress
}

function _fallback() payable {
    revert
}

function hola() payable {
    startTime = block.timestamp
    sub_5cd4d0b8 = block.timestamp
}

function sub_d3a7fa74(?) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(arg2)
    staticcall arg2.getPair(address rg1, address rg2) with:
            gas gas_remaining wei
           args address(arg1), 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    staticcall arg1.decimals() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    staticcall arg1.balanceOf(address rg1) with:
            gas gas_remaining wei
           args address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
    staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.balanceOf(address rg1) with:
            gas gas_remaining wei
           args address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        return (0 / ext_call.return_data[0])
    if 10^uint8(ext_call.return_data[0]) * ext_call.return_data[0] / ext_call.return_data[0] != 10^uint8(ext_call.return_data[0]):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if not ext_call.return_data[0]:
        revert with 0, 'SafeMath: division by zero'
    return (10^uint8(ext_call.return_data[0]) * ext_call.return_data[0] / ext_call.return_data[0])
}

function bnbPriceInUSD() payable {
    require ext_code.size(0x4068da6c83afcfa0e13ba15a6696662335d5b75)
    staticcall 0x4068da6c83afcfa0e13ba15a6696662335d5b75.balanceOf(address rg1) with:
            gas gas_remaining wei
           args BNB_BUSD_POOLAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
        staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.balanceOf(address rg1) with:
                gas gas_remaining wei
               args BNB_BUSD_POOLAddress
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if 10^6 * ext_call.return_data[0] / ext_call.return_data[0] != 10^6:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if not 10^6 * ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        return (0 / 10^6 * ext_call.return_data[0])
    if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
    staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.balanceOf(address rg1) with:
            gas gas_remaining wei
           args BNB_BUSD_POOLAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if 10^18 * ext_call.return_data[0]:
            if 1000000000000000000 * 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] != 10^18:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
        revert with 0, 'SafeMath: division by zero'
    if 10^6 * ext_call.return_data[0] / ext_call.return_data[0] != 10^6:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if not 10^18 * ext_call.return_data[0]:
        if not 10^6 * ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        return (0 / 10^6 * ext_call.return_data[0])
    if 1000000000000000000 * 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] != 10^18:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if not 10^6 * ext_call.return_data[0]:
        revert with 0, 'SafeMath: division by zero'
    return (1000000000000000000 * 10^18 * ext_call.return_data[0] / 10^6 * ext_call.return_data[0])
}

function sub_1087ac05(?) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(arg2)
    staticcall arg2.getPair(address rg1, address rg2) with:
            gas gas_remaining wei
           args address(arg1), 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    staticcall arg1.decimals() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    staticcall arg1.balanceOf(address rg1) with:
            gas gas_remaining wei
           args address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
    staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.balanceOf(address rg1) with:
            gas gas_remaining wei
           args address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        require ext_code.size(0x4068da6c83afcfa0e13ba15a6696662335d5b75)
        staticcall 0x4068da6c83afcfa0e13ba15a6696662335d5b75.balanceOf(address rg1) with:
                gas gas_remaining wei
               args BNB_BUSD_POOLAddress
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
            staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.balanceOf(address rg1) with:
                    gas gas_remaining wei
                   args BNB_BUSD_POOLAddress
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if 10^6 * ext_call.return_data[0] / ext_call.return_data[0] != 10^6:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
            if not 10^6 * ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if not 0 / 10^6 * ext_call.return_data[0]:
                return 0
            if 0 / ext_call.return_data[0] * 0 / 10^6 * ext_call.return_data[0] / 0 / 10^6 * ext_call.return_data[0] != 0 / ext_call.return_data[0]:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            return (0 / ext_call.return_data[0] * 0 / 10^6 * ext_call.return_data[0])
        if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
        staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.balanceOf(address rg1) with:
                gas gas_remaining wei
               args BNB_BUSD_POOLAddress
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            if 10^18 * ext_call.return_data[0]:
                if 1000000000000000000 * 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] != 10^18:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
            revert with 0, 'SafeMath: division by zero'
        if 10^6 * ext_call.return_data[0] / ext_call.return_data[0] != 10^6:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if not 10^18 * ext_call.return_data[0]:
            if not 10^6 * ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if not 0 / 10^6 * ext_call.return_data[0]:
                return 0
            if 0 / ext_call.return_data[0] * 0 / 10^6 * ext_call.return_data[0] / 0 / 10^6 * ext_call.return_data[0] != 0 / ext_call.return_data[0]:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            return (0 / ext_call.return_data[0] * 0 / 10^6 * ext_call.return_data[0])
        if 1000000000000000000 * 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] != 10^18:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if not 10^6 * ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if not 1000000000000000000 * 10^18 * ext_call.return_data[0] / 10^6 * ext_call.return_data[0]:
            return 0
        if 0 / ext_call.return_data[0] * 1000000000000000000 * 10^18 * ext_call.return_data[0] / 10^6 * ext_call.return_data[0] / 1000000000000000000 * 10^18 * ext_call.return_data[0] / 10^6 * ext_call.return_data[0] != 0 / ext_call.return_data[0]:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        return (0 / ext_call.return_data[0] * 1000000000000000000 * 10^18 * ext_call.return_data[0] / 10^6 * ext_call.return_data[0])
    if 10^uint8(ext_call.return_data[0]) * ext_call.return_data[0] / ext_call.return_data[0] != 10^uint8(ext_call.return_data[0]):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if not ext_call.return_data[0]:
        revert with 0, 'SafeMath: division by zero'
    require ext_code.size(0x4068da6c83afcfa0e13ba15a6696662335d5b75)
    staticcall 0x4068da6c83afcfa0e13ba15a6696662335d5b75.balanceOf(address rg1) with:
            gas gas_remaining wei
           args BNB_BUSD_POOLAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
        staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.balanceOf(address rg1) with:
                gas gas_remaining wei
               args BNB_BUSD_POOLAddress
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if 10^6 * ext_call.return_data[0] / ext_call.return_data[0] != 10^6:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if not 10^6 * ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if not 0 / 10^6 * ext_call.return_data[0]:
            return 0
        if 10^uint8(ext_call.return_data[0]) * ext_call.return_data[0] / ext_call.return_data[0] * 0 / 10^6 * ext_call.return_data[0] / 0 / 10^6 * ext_call.return_data[0] != 10^uint8(ext_call.return_data[0]) * ext_call.return_data[0] / ext_call.return_data[0]:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        return (10^uint8(ext_call.return_data[0]) * ext_call.return_data[0] / ext_call.return_data[0] * 0 / 10^6 * ext_call.return_data[0])
    if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
    staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.balanceOf(address rg1) with:
            gas gas_remaining wei
           args BNB_BUSD_POOLAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if 10^18 * ext_call.return_data[0]:
            if 1000000000000000000 * 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] != 10^18:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        revert with 0, 'SafeMath: division by zero'
    if 10^6 * ext_call.return_data[0] / ext_call.return_data[0] != 10^6:
        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    if not 10^18 * ext_call.return_data[0]:
        if not 10^6 * ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if not 0 / 10^6 * ext_call.return_data[0]:
            return 0
        if 10^uint8(ext_call.return_data[0]) * ext_call.return_data[0] / ext_call.return_data[0] * 0 / 10^6 * ext_call.return_data[0] / 0 / 10^6 * ext_call.return_data[0] != 10^uint8(ext_call.return_data[0]) * ext_call.return_data[0] / ext_call.return_data[0]:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        return (10^uint8(ext_call.return_data[0]) * ext_call.return_data[0] / ext_call.return_data[0] * 0 / 10^6 * ext_call.return_data[0])
    if 1000000000000000000 * 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] != 10^18:
        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    if not 10^6 * ext_call.return_data[0]:
        revert with 0, 'SafeMath: division by zero'
    if not 1000000000000000000 * 10^18 * ext_call.return_data[0] / 10^6 * ext_call.return_data[0]:
        return 0
    if 10^uint8(ext_call.return_data[0]) * ext_call.return_data[0] / ext_call.return_data[0] * 1000000000000000000 * 10^18 * ext_call.return_data[0] / 10^6 * ext_call.return_data[0] / 1000000000000000000 * 10^18 * ext_call.return_data[0] / 10^6 * ext_call.return_data[0] != 10^uint8(ext_call.return_data[0]) * ext_call.return_data[0] / ext_call.return_data[0]:
        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
    return (10^uint8(ext_call.return_data[0]) * ext_call.return_data[0] / ext_call.return_data[0] * 1000000000000000000 * 10^18 * ext_call.return_data[0] / 10^6 * ext_call.return_data[0])
}



}
