contract main {




// =====================  Runtime code  =====================


#
#  - sub_0cbc9035(?)
#  - executeOperation(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5)
#
address governanceAddress;
mapping of uint8 stor1;
uint256 maxBatch;
uint256 sub_7d0b6809;
uint256 sub_1a45acc7;

function sub_1a45acc7(?) payable {
    return sub_1a45acc7
}

function sub_38ac4d99(?) payable {
    require calldata.size - 4 >= 32
    return bool(stor1[arg1])
}

function governance() payable {
    return governanceAddress
}

function maxBatch() payable {
    return maxBatch
}

function sub_7d0b6809(?) payable {
    return sub_7d0b6809
}

function _fallback() payable {
    revert
}

function sub_28e5d425(?) payable {
    require calldata.size - 4 >= 32
    if governanceAddress != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    sub_1a45acc7 = arg1
}

function addBot(address arg1) payable {
    require calldata.size - 4 >= 32
    if governanceAddress != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    stor1[address(arg1)] = 1
}

function removeBot(address arg1) payable {
    require calldata.size - 4 >= 32
    if governanceAddress != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    stor1[address(arg1)] = 0
}

function sub_2937a6f2(?) payable {
    require calldata.size - 4 >= 64
    if governanceAddress != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    maxBatch = arg1
    sub_7d0b6809 = arg2
}

function sub_3a16bf35(?) payable {
    require calldata.size - 4 >= 96
    require ext_code.size(0xa0828ee559110b041dedbf10ae0cf42274251de1)
    staticcall 0xa0828ee559110b041dedbf10ae0cf42274251de1.reserve0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0xa0828ee559110b041dedbf10ae0cf42274251de1)
    staticcall 0xa0828ee559110b041dedbf10ae0cf42274251de1.reserve1() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0x83000000000000000000000000ad84341756bf337f5a0164515b1f6f993d194e)
    staticcall 0x83000000000000000000000000ad84341756bf337f5a0164515b1f6f993d194e.decimals() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0x4900000000000000000000000004068da6c83afcfa0e13ba15a6696662335d5b)
    staticcall 0x4900000000000000000000000004068da6c83afcfa0e13ba15a6696662335d5b.decimals() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg1:
        require ext_code.size(0x4068da6c83afcfa0e13ba15a6696662335d5b)
        staticcall 0x4068da6c83afcfa0e13ba15a6696662335d5b.decimals() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(0x83000000000000000000000000ad84341756bf337f5a0164515b1f6f993d194e)
        staticcall 0x83000000000000000000000000ad84341756bf337f5a0164515b1f6f993d194e.decimals() with:
                gas gas_remaining wei
    else:
        require ext_code.size(0xad84341756bf337f5a0164515b1f6f993d194e)
        staticcall 0xad84341756bf337f5a0164515b1f6f993d194e.decimals() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(0x4900000000000000000000000004068da6c83afcfa0e13ba15a6696662335d5b)
        staticcall 0x4900000000000000000000000004068da6c83afcfa0e13ba15a6696662335d5b.decimals() with:
                gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not 3 * arg2:
        mem[64] = 160
        mem[96] = 26
        mem[128] = 'SafeMath: division by zero'
        if not 10^uint8(ext_call.return_data[0]):
            revert with 0, 'SafeMath: division by zero'
        require 10^uint8(ext_call.return_data[0] - 6)
        require 10^uint8(ext_call.return_data[0] - 6)
        idx = 0
        s = 0 / 10^uint8(ext_call.return_data[0])
        while idx < 10000:
            require 10^uint8(ext_call.return_data[0] - 6)
            require 10^uint8(ext_call.return_data[0] - 6)
            if arg1:
                if ((ext_call.return_data[0] - s / 10^uint8(ext_call.return_data[0] - 6))^2 * ext_call.return_data[0] - s / 10^uint8(ext_call.return_data[0] - 6) * ext_call.return_data[0] + arg2 / 10^uint8(ext_call.return_data[0] - 6)) + ((ext_call.return_data[0] + arg2 / 10^uint8(ext_call.return_data[0] - 6))^2 * ext_call.return_data[0] - s / 10^uint8(ext_call.return_data[0] - 6) * ext_call.return_data[0] + arg2 / 10^uint8(ext_call.return_data[0] - 6)) / 2 <= ((ext_call.return_data[0] / 10^uint8(ext_call.return_data[0] - 6))^2 * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0] - 6) * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0] - 6)) + ((ext_call.return_data[0] / 10^uint8(ext_call.return_data[0] - 6))^2 * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0] - 6) * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0] - 6)) / 2:
                    idx = idx + 1
                    s = 99000 * s / 100000
                    continue 
            else:
                if ((ext_call.return_data[0] + arg2 / 10^uint8(ext_call.return_data[0] - 6))^2 * ext_call.return_data[0] + arg2 / 10^uint8(ext_call.return_data[0] - 6) * ext_call.return_data[0] - s / 10^uint8(ext_call.return_data[0] - 6)) + ((ext_call.return_data[0] - s / 10^uint8(ext_call.return_data[0] - 6))^2 * ext_call.return_data[0] + arg2 / 10^uint8(ext_call.return_data[0] - 6) * ext_call.return_data[0] - s / 10^uint8(ext_call.return_data[0] - 6)) / 2 <= ((ext_call.return_data[0] / 10^uint8(ext_call.return_data[0] - 6))^2 * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0] - 6) * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0] - 6)) + ((ext_call.return_data[0] / 10^uint8(ext_call.return_data[0] - 6))^2 * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0] - 6) * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0] - 6)) / 2:
                    idx = idx + 1
                    s = 99000 * s / 100000
                    continue 
            if not s:
                if 0 <= s:
                    return s
            else:
                if 5 * s / s != 5:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                if arg3:
                    if 5 * s / 1000 <= s:
                        return (s - (5 * s / 1000))
                else:
                    if 0 <= s:
                        return s
            mem[288] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[292] = 32
            idx = 32
            while idx < 30:
                mem[idx + 356] = mem[idx + 256]
                idx = idx + 32
                continue 
            revert with 0, 'SafeMath: subtraction overflow'
    else:
        if 3 * 10^ext_call.return_data[31 len 1] * arg2 / 3 * arg2 != 10^ext_call.return_data[31 len 1]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        mem[64] = 160
        mem[96] = 26
        mem[128] = 'SafeMath: division by zero'
        if not 10^uint8(ext_call.return_data[0]):
            revert with 0, 'SafeMath: division by zero'
        require 10^uint8(ext_call.return_data[0] - 6)
        require 10^uint8(ext_call.return_data[0] - 6)
        idx = 0
        s = 3 * 10^uint8(ext_call.return_data[0]) * arg2 / 10^uint8(ext_call.return_data[0])
        while idx < 10000:
            require 10^uint8(ext_call.return_data[0] - 6)
            require 10^uint8(ext_call.return_data[0] - 6)
            if arg1:
                if ((ext_call.return_data[0] - s / 10^uint8(ext_call.return_data[0] - 6))^2 * ext_call.return_data[0] - s / 10^uint8(ext_call.return_data[0] - 6) * ext_call.return_data[0] + arg2 / 10^uint8(ext_call.return_data[0] - 6)) + ((ext_call.return_data[0] + arg2 / 10^uint8(ext_call.return_data[0] - 6))^2 * ext_call.return_data[0] - s / 10^uint8(ext_call.return_data[0] - 6) * ext_call.return_data[0] + arg2 / 10^uint8(ext_call.return_data[0] - 6)) / 2 <= ((ext_call.return_data[0] / 10^uint8(ext_call.return_data[0] - 6))^2 * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0] - 6) * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0] - 6)) + ((ext_call.return_data[0] / 10^uint8(ext_call.return_data[0] - 6))^2 * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0] - 6) * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0] - 6)) / 2:
                    idx = idx + 1
                    s = 99000 * s / 100000
                    continue 
            else:
                if ((ext_call.return_data[0] + arg2 / 10^uint8(ext_call.return_data[0] - 6))^2 * ext_call.return_data[0] + arg2 / 10^uint8(ext_call.return_data[0] - 6) * ext_call.return_data[0] - s / 10^uint8(ext_call.return_data[0] - 6)) + ((ext_call.return_data[0] - s / 10^uint8(ext_call.return_data[0] - 6))^2 * ext_call.return_data[0] + arg2 / 10^uint8(ext_call.return_data[0] - 6) * ext_call.return_data[0] - s / 10^uint8(ext_call.return_data[0] - 6)) / 2 <= ((ext_call.return_data[0] / 10^uint8(ext_call.return_data[0] - 6))^2 * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0] - 6) * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0] - 6)) + ((ext_call.return_data[0] / 10^uint8(ext_call.return_data[0] - 6))^2 * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0] - 6) * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0] - 6)) / 2:
                    idx = idx + 1
                    s = 99000 * s / 100000
                    continue 
            if not s:
                if 0 <= s:
                    return s
            else:
                if 5 * s / s != 5:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                if arg3:
                    if 5 * s / 1000 <= s:
                        return (s - (5 * s / 1000))
                else:
                    if 0 <= s:
                        return s
            mem[288] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[292] = 32
            idx = 32
            while idx < 30:
                mem[idx + 356] = mem[idx + 256]
                idx = idx + 32
                continue 
            revert with 0, 'SafeMath: subtraction overflow'
    if s:
        if 5 * s / s != 5:
            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if arg3:
            if 5 * s / 1000 > s:
                revert with 0, 'SafeMath: subtraction overflow'
            return (s - (5 * s / 1000))
    if 0 > s:
        revert with 0, 'SafeMath: subtraction overflow'
    return s
}

function sub_57c20218(?) payable {
    mem[64] = 96
    if not sub_7d0b6809:
        idx = 0
        s = 0
        while idx < 4:
            if not idx:
                require ext_code.size(0xa0828ee559110b041dedbf10ae0cf42274251de1)
                staticcall 0xa0828ee559110b041dedbf10ae0cf42274251de1.reserve0() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(0xa0828ee559110b041dedbf10ae0cf42274251de1)
                staticcall 0xa0828ee559110b041dedbf10ae0cf42274251de1.reserve1() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(0x83000000000000000000000000ad84341756bf337f5a0164515b1f6f993d194e)
                staticcall 0x83000000000000000000000000ad84341756bf337f5a0164515b1f6f993d194e.decimals() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(0x4900000000000000000000000004068da6c83afcfa0e13ba15a6696662335d5b)
                staticcall 0x4900000000000000000000000004068da6c83afcfa0e13ba15a6696662335d5b.decimals() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(0x4068da6c83afcfa0e13ba15a6696662335d5b)
                staticcall 0x4068da6c83afcfa0e13ba15a6696662335d5b.decimals() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(0x83000000000000000000000000ad84341756bf337f5a0164515b1f6f993d194e)
                staticcall 0x83000000000000000000000000ad84341756bf337f5a0164515b1f6f993d194e.decimals() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                _2116 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2116] = 26
                mem[_2116 + 32] = 'SafeMath: division by zero'
                if not 10^uint8(ext_call.return_data[0]):
                    _2188 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _2188 + 68] = mem[idx + _2116 + 32]
                        idx = idx + 32
                        continue 
                    mem[_2188 + 68] = mem[_2188 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _2188 + -mem[64] + 100
                require 10^uint8(ext_call.return_data[0] - 6)
                require 10^uint8(ext_call.return_data[0] - 6)
                t = 0
                u = 0 / 10^uint8(ext_call.return_data[0])
                while t < 10000:
                    require 10^uint8(ext_call.return_data[0] - 6)
                    require 10^uint8(ext_call.return_data[0] - 6)
                    if ((ext_call.return_data[0] - u / 10^uint8(ext_call.return_data[0] - 6))^2 * ext_call.return_data[0] - u / 10^uint8(ext_call.return_data[0] - 6) * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0] - 6)) + ((ext_call.return_data[0] / 10^uint8(ext_call.return_data[0] - 6))^2 * ext_call.return_data[0] - u / 10^uint8(ext_call.return_data[0] - 6) * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0] - 6)) / 2 <= ((ext_call.return_data[0] / 10^uint8(ext_call.return_data[0] - 6))^2 * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0] - 6) * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0] - 6)) + ((ext_call.return_data[0] / 10^uint8(ext_call.return_data[0] - 6))^2 * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0] - 6) * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0] - 6)) / 2:
                        t = t + 1
                        u = 99000 * u / 100000
                        continue 
                    if not u:
                        _5019 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5019] = 26
                        mem[_5019 + 32] = 'SafeMath: division by zero'
                        _5998 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5998] = 30
                        mem[_5998 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= u:
                            if u <= s:
                                idx = idx + 1
                                s = s
                                continue 
                            idx = idx + 1
                            s = u
                            continue 
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                        idx = 32
                        while idx < 30:
                            mem[idx + mem[64] + 68] = mem[idx + _5998 + 32]
                            idx = idx + 32
                            continue 
                    else:
                        if 5 * u / u != 5:
                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _5265 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5265] = 26
                        mem[_5265 + 32] = 'SafeMath: division by zero'
                        _6240 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_6240] = 30
                        mem[_6240 + 32] = 'SafeMath: subtraction overflow'
                        if 5 * u / 1000 <= u:
                            if u - (5 * u / 1000) <= s:
                                idx = idx + 1
                                s = s
                                continue 
                            idx = idx + 1
                            s = u - (5 * u / 1000)
                            continue 
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                        idx = 32
                        while idx < 30:
                            mem[idx + mem[64] + 68] = mem[idx + _6240 + 32]
                            idx = idx + 32
                            continue 
                    revert with 0, 'SafeMath: subtraction overflow'
                if not u:
                    _4224 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4224] = 26
                    mem[_4224 + 32] = 'SafeMath: division by zero'
                    _5145 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_5145] = 30
                    mem[_5145 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= u:
                        if u <= s:
                            idx = idx + 1
                            s = s
                            continue 
                        idx = idx + 1
                        s = u
                        continue 
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                    idx = 32
                    while idx < 30:
                        mem[idx + mem[64] + 68] = mem[idx + _5145 + 32]
                        idx = idx + 32
                        continue 
                else:
                    if 5 * u / u != 5:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _4467 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4467] = 26
                    mem[_4467 + 32] = 'SafeMath: division by zero'
                    _5378 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_5378] = 30
                    mem[_5378 + 32] = 'SafeMath: subtraction overflow'
                    if 5 * u / 1000 <= u:
                        if u - (5 * u / 1000) <= s:
                            idx = idx + 1
                            s = s
                            continue 
                        idx = idx + 1
                        s = u - (5 * u / 1000)
                        continue 
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                    idx = 32
                    while idx < 30:
                        mem[idx + mem[64] + 68] = mem[idx + _5378 + 32]
                        idx = idx + 32
                        continue 
                revert with 0, 'SafeMath: subtraction overflow'
            if 1 == idx:
                _763 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                require 0 < mem[_763]
                mem[_763 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                require 1 < mem[_763]
                mem[_763 + 64] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                mem[_763 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_763 + 100] = 0
                mem[_763 + 132] = 64
                mem[_763 + 164] = mem[_763]
                t = 0
                while t < 32 * mem[_763]:
                    mem[t + _763 + 196] = mem[t + _763 + 32]
                    t = t + 32
                    continue 
                require ext_code.size(0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52)
                staticcall 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args 0, 64, mem[_763 + 164 len (32 * mem[_763]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_763 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _763 + ceil32(return_data.size) + 96
                require return_data.size >= 32
                _4067 = mem[_763 + 96 len 4], 0
                require mem[_763 + 96 len 4], 0 <= 4294967296
                require mem[_763 + 96 len 4], 0 + 32 <= return_data.size
                require mem[_763 + mem[_763 + 96 len 4], 0 + 96] <= 4294967296 and mem[_763 + 96 len 4], 0 + (32 * mem[_763 + mem[_763 + 96 len 4], 0 + 96]) + 32 <= return_data.size
                mem[_763 + ceil32(return_data.size) + 96] = mem[_763 + mem[_763 + 96 len 4], 0 + 96]
                _4325 = mem[_763 + _4067 + 96]
                t = 0
                while t < 32 * _4325:
                    mem[t + _763 + ceil32(return_data.size) + 128] = mem[t + _763 + _4067 + 128]
                    t = t + 32
                    continue 
                mem[64] = (32 * _4325) + _763 + ceil32(return_data.size) + 128
                require mem[_763 + ceil32(return_data.size) + 96] - 1 < mem[_763 + ceil32(return_data.size) + 96]
                if mem[(32 * mem[_763 + ceil32(return_data.size) + 96] - 1) + _763 + ceil32(return_data.size) + 128] <= s:
                    idx = idx + 1
                    s = s
                    continue 
                idx = idx + 1
                s = mem[(32 * mem[_763 + ceil32(return_data.size) + 96] - 1) + _763 + ceil32(return_data.size) + 128]
                continue 
            if 2 == idx:
                _781 = mem[0]
                _811 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                require 0 < mem[_811]
                mem[_811 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                require 1 < mem[_811]
                mem[_811 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c
                mem[_811 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_811 + 100] = 0
                mem[_811 + 132] = 64
                mem[_811 + 164] = mem[_811]
                t = 0
                while t < 32 * mem[_811]:
                    mem[t + _811 + 196] = mem[t + _811 + 32]
                    t = t + 32
                    continue 
                require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c29.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args 0, 64, mem[_811 + 164 len (32 * mem[_811]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_811 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _811 + ceil32(return_data.size) + 96
                require return_data.size >= 32
                _4063 = mem[_811 + 96 len 4], 0
                require mem[_811 + 96 len 4], 0 <= 4294967296
                require mem[_811 + 96 len 4], 0 + 32 <= return_data.size
                require mem[_811 + mem[_811 + 96 len 4], 0 + 96] <= 4294967296 and mem[_811 + 96 len 4], 0 + (32 * mem[_811 + mem[_811 + 96 len 4], 0 + 96]) + 32 <= return_data.size
                mem[_811 + ceil32(return_data.size) + 96] = mem[_811 + mem[_811 + 96 len 4], 0 + 96]
                _4323 = mem[_811 + _4063 + 96]
                t = 0
                while t < 32 * _4323:
                    mem[t + _811 + ceil32(return_data.size) + 128] = mem[t + _811 + _4063 + 128]
                    t = t + 32
                    continue 
                mem[64] = (32 * _4323) + _811 + ceil32(return_data.size) + 128
                require mem[_811 + ceil32(return_data.size) + 96] - 1 < mem[_811 + ceil32(return_data.size) + 96]
                _8647 = mem[(32 * mem[_811 + ceil32(return_data.size) + 96] - 1) + _811 + ceil32(return_data.size) + 128]
                mem[(32 * _4323) + _811 + ceil32(return_data.size) + 128] = 2
                mem[0] = _781
                mem[(32 * _4323) + _811 + ceil32(return_data.size) + 160] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c
                mem[(32 * _4323) + _811 + ceil32(return_data.size) + 192] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                mem[(32 * _4323) + _811 + ceil32(return_data.size) + 224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[(32 * _4323) + _811 + ceil32(return_data.size) + 228] = _8647
                mem[(32 * _4323) + _811 + ceil32(return_data.size) + 260] = 64
                mem[(32 * _4323) + _811 + ceil32(return_data.size) + 292] = 2
                t = 0
                while t < 64:
                    mem[t + (32 * _4323) + _811 + ceil32(return_data.size) + 324] = mem[t + (32 * _4323) + _811 + ceil32(return_data.size) + 160]
                    t = t + 32
                    continue 
                require ext_code.size(0x67a937ea41cd05ec8c832a044afc0100f30aa4b5)
                staticcall 0x67a937ea41cd05ec8c832a044afc0100f30aa4b5.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args _8647, Array(len=2, data=mem[(32 * _4323) + _811 + ceil32(return_data.size) + 324 len 64])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * _4323) + _811 + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * _4323) + _811 + (2 * ceil32(return_data.size)) + 224
                require return_data.size >= 32
                _12655 = mem[(32 * _4323) + _811 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _8647) >> 32
                require mem[(32 * _4323) + _811 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _8647) >> 32 <= 4294967296
                require mem[(32 * _4323) + _811 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _8647) >> 32 + 32 <= return_data.size
                require mem[(32 * _4323) + _811 + ceil32(return_data.size) + mem[(32 * _4323) + _811 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _8647) >> 32 + 224] <= 4294967296 and mem[(32 * _4323) + _811 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _8647) >> 32 + (32 * mem[(32 * _4323) + _811 + ceil32(return_data.size) + mem[(32 * _4323) + _811 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _8647) >> 32 + 224]) + 32 <= return_data.size
                mem[(32 * _4323) + _811 + (2 * ceil32(return_data.size)) + 224] = mem[(32 * _4323) + _811 + ceil32(return_data.size) + mem[(32 * _4323) + _811 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _8647) >> 32 + 224]
                _12897 = mem[(32 * _4323) + _811 + ceil32(return_data.size) + _12655 + 224]
                t = 0
                while t < 32 * _12897:
                    mem[t + (32 * _4323) + _811 + (2 * ceil32(return_data.size)) + 256] = mem[t + (32 * _4323) + _811 + ceil32(return_data.size) + _12655 + 256]
                    t = t + 32
                    continue 
                mem[64] = (32 * _12897) + (32 * _4323) + _811 + (2 * ceil32(return_data.size)) + 256
                require mem[(32 * _4323) + _811 + (2 * ceil32(return_data.size)) + 224] - 1 < mem[(32 * _4323) + _811 + (2 * ceil32(return_data.size)) + 224]
                if mem[(32 * mem[(32 * _4323) + _811 + (2 * ceil32(return_data.size)) + 224] - 1) + (32 * _4323) + _811 + (2 * ceil32(return_data.size)) + 256] <= s:
                    idx = idx + 1
                    s = s
                    continue 
                idx = idx + 1
                s = mem[(32 * mem[(32 * _4323) + _811 + (2 * ceil32(return_data.size)) + 224] - 1) + (32 * _4323) + _811 + (2 * ceil32(return_data.size)) + 256]
                continue 
            if idx != 3:
                if 0 <= s:
                    idx = idx + 1
                    s = s
                    continue 
                idx = idx + 1
                s = 0
                continue 
            _809 = mem[0]
            _847 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            require 0 < mem[_847]
            mem[_847 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
            require 1 < mem[_847]
            mem[_847 + 64] = 0x5848b832e872d9edd84ac5718d58f21fd9c96
            mem[_847 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[_847 + 100] = 0
            mem[_847 + 132] = 64
            mem[_847 + 164] = mem[_847]
            t = 0
            while t < 32 * mem[_847]:
                mem[t + _847 + 196] = mem[t + _847 + 32]
                t = t + 32
                continue 
            require ext_code.size(0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52)
            staticcall 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52.getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args 0, 64, mem[_847 + 164 len (32 * mem[_847]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[_847 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = _847 + ceil32(return_data.size) + 96
            require return_data.size >= 32
            _4059 = mem[_847 + 96 len 4], 0
            require mem[_847 + 96 len 4], 0 <= 4294967296
            require mem[_847 + 96 len 4], 0 + 32 <= return_data.size
            require mem[_847 + mem[_847 + 96 len 4], 0 + 96] <= 4294967296 and mem[_847 + 96 len 4], 0 + (32 * mem[_847 + mem[_847 + 96 len 4], 0 + 96]) + 32 <= return_data.size
            mem[_847 + ceil32(return_data.size) + 96] = mem[_847 + mem[_847 + 96 len 4], 0 + 96]
            _4321 = mem[_847 + _4059 + 96]
            t = 0
            while t < 32 * _4321:
                mem[t + _847 + ceil32(return_data.size) + 128] = mem[t + _847 + _4059 + 128]
                t = t + 32
                continue 
            mem[64] = (32 * _4321) + _847 + ceil32(return_data.size) + 128
            require mem[_847 + ceil32(return_data.size) + 96] - 1 < mem[_847 + ceil32(return_data.size) + 96]
            _8645 = mem[(32 * mem[_847 + ceil32(return_data.size) + 96] - 1) + _847 + ceil32(return_data.size) + 128]
            mem[(32 * _4321) + _847 + ceil32(return_data.size) + 128] = 3
            mem[(32 * _4321) + _847 + ceil32(return_data.size) + 160] = 0x5848b832e872d9edd84ac5718d58f21fd9c96
            mem[0] = _809
            mem[(32 * _4321) + _847 + ceil32(return_data.size) + 192] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c
            mem[(32 * _4321) + _847 + ceil32(return_data.size) + 224] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
            mem[(32 * _4321) + _847 + ceil32(return_data.size) + 256] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[(32 * _4321) + _847 + ceil32(return_data.size) + 260] = _8645
            mem[(32 * _4321) + _847 + ceil32(return_data.size) + 292] = 64
            mem[(32 * _4321) + _847 + ceil32(return_data.size) + 324] = 3
            t = 0
            while t < 96:
                mem[t + (32 * _4321) + _847 + ceil32(return_data.size) + 356] = mem[t + (32 * _4321) + _847 + ceil32(return_data.size) + 160]
                t = t + 32
                continue 
            require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
            staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c29.getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args _8645, Array(len=3, data=mem[(32 * _4321) + _847 + ceil32(return_data.size) + 356 len 96])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _4321) + _847 + ceil32(return_data.size) + 256 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * _4321) + _847 + (2 * ceil32(return_data.size)) + 256
            require return_data.size >= 32
            _12651 = mem[(32 * _4321) + _847 + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _8645) >> 32
            require mem[(32 * _4321) + _847 + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _8645) >> 32 <= 4294967296
            require mem[(32 * _4321) + _847 + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _8645) >> 32 + 32 <= return_data.size
            require mem[(32 * _4321) + _847 + ceil32(return_data.size) + mem[(32 * _4321) + _847 + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _8645) >> 32 + 256] <= 4294967296 and mem[(32 * _4321) + _847 + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _8645) >> 32 + (32 * mem[(32 * _4321) + _847 + ceil32(return_data.size) + mem[(32 * _4321) + _847 + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _8645) >> 32 + 256]) + 32 <= return_data.size
            mem[(32 * _4321) + _847 + (2 * ceil32(return_data.size)) + 256] = mem[(32 * _4321) + _847 + ceil32(return_data.size) + mem[(32 * _4321) + _847 + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _8645) >> 32 + 256]
            _12895 = mem[(32 * _4321) + _847 + ceil32(return_data.size) + _12651 + 256]
            t = 0
            while t < 32 * _12895:
                mem[t + (32 * _4321) + _847 + (2 * ceil32(return_data.size)) + 288] = mem[t + (32 * _4321) + _847 + ceil32(return_data.size) + _12651 + 288]
                t = t + 32
                continue 
            mem[64] = (32 * _12895) + (32 * _4321) + _847 + (2 * ceil32(return_data.size)) + 288
            require mem[(32 * _4321) + _847 + (2 * ceil32(return_data.size)) + 256] - 1 < mem[(32 * _4321) + _847 + (2 * ceil32(return_data.size)) + 256]
            if mem[(32 * mem[(32 * _4321) + _847 + (2 * ceil32(return_data.size)) + 256] - 1) + (32 * _4321) + _847 + (2 * ceil32(return_data.size)) + 288] <= s:
                idx = idx + 1
                s = s
                continue 
            idx = idx + 1
            s = mem[(32 * mem[(32 * _4321) + _847 + (2 * ceil32(return_data.size)) + 256] - 1) + (32 * _4321) + _847 + (2 * ceil32(return_data.size)) + 288]
            continue 
        idx = 0
        t = 0
        while idx < 4:
            if not idx:
                require ext_code.size(0xa0828ee559110b041dedbf10ae0cf42274251de1)
                staticcall 0xa0828ee559110b041dedbf10ae0cf42274251de1.reserve0() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(0xa0828ee559110b041dedbf10ae0cf42274251de1)
                staticcall 0xa0828ee559110b041dedbf10ae0cf42274251de1.reserve1() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(0x83000000000000000000000000ad84341756bf337f5a0164515b1f6f993d194e)
                staticcall 0x83000000000000000000000000ad84341756bf337f5a0164515b1f6f993d194e.decimals() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(0x4900000000000000000000000004068da6c83afcfa0e13ba15a6696662335d5b)
                staticcall 0x4900000000000000000000000004068da6c83afcfa0e13ba15a6696662335d5b.decimals() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(0x4068da6c83afcfa0e13ba15a6696662335d5b)
                staticcall 0x4068da6c83afcfa0e13ba15a6696662335d5b.decimals() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(0x83000000000000000000000000ad84341756bf337f5a0164515b1f6f993d194e)
                staticcall 0x83000000000000000000000000ad84341756bf337f5a0164515b1f6f993d194e.decimals() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not 3 * s:
                    _6862 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_6862] = 26
                    mem[_6862 + 32] = 'SafeMath: division by zero'
                    if not 10^uint8(ext_call.return_data[0]):
                        _6985 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _6985 + 68] = mem[idx + _6862 + 32]
                            idx = idx + 32
                            continue 
                        mem[_6985 + 68] = mem[_6985 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _6985 + -mem[64] + 100
                    require 10^uint8(ext_call.return_data[0] - 6)
                    require 10^uint8(ext_call.return_data[0] - 6)
                    u = 0
                    v = 0 / 10^uint8(ext_call.return_data[0])
                    while u < 10000:
                        require 10^uint8(ext_call.return_data[0] - 6)
                        require 10^uint8(ext_call.return_data[0] - 6)
                        if ((ext_call.return_data[0] - v / 10^uint8(ext_call.return_data[0] - 6))^2 * ext_call.return_data[0] - v / 10^uint8(ext_call.return_data[0] - 6) * ext_call.return_data[0] + s / 10^uint8(ext_call.return_data[0] - 6)) + ((ext_call.return_data[0] + s / 10^uint8(ext_call.return_data[0] - 6))^2 * ext_call.return_data[0] - v / 10^uint8(ext_call.return_data[0] - 6) * ext_call.return_data[0] + s / 10^uint8(ext_call.return_data[0] - 6)) / 2 <= ((ext_call.return_data[0] / 10^uint8(ext_call.return_data[0] - 6))^2 * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0] - 6) * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0] - 6)) + ((ext_call.return_data[0] / 10^uint8(ext_call.return_data[0] - 6))^2 * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0] - 6) * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0] - 6)) / 2:
                            u = u + 1
                            v = 99000 * v / 100000
                            continue 
                        if not v:
                            _9660 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_9660] = 26
                            mem[_9660 + 32] = 'SafeMath: division by zero'
                            _10796 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_10796] = 30
                            mem[_10796 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= v:
                                if v <= t:
                                    idx = idx + 1
                                    t = t
                                    continue 
                                idx = idx + 1
                                t = v
                                continue 
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                            idx = 32
                            while idx < 30:
                                mem[idx + mem[64] + 68] = mem[idx + _10796 + 32]
                                idx = idx + 32
                                continue 
                        else:
                            if 5 * v / v != 5:
                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            _9882 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_9882] = 26
                            mem[_9882 + 32] = 'SafeMath: division by zero'
                            _11053 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_11053] = 30
                            mem[_11053 + 32] = 'SafeMath: subtraction overflow'
                            if 5 * v / 1000 <= v:
                                if v - (5 * v / 1000) <= t:
                                    idx = idx + 1
                                    t = t
                                    continue 
                                idx = idx + 1
                                t = v - (5 * v / 1000)
                                continue 
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                            idx = 32
                            while idx < 30:
                                mem[idx + mem[64] + 68] = mem[idx + _11053 + 32]
                                idx = idx + 32
                                continue 
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not v:
                        _9085 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_9085] = 26
                        mem[_9085 + 32] = 'SafeMath: division by zero'
                        _9768 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_9768] = 30
                        mem[_9768 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= v:
                            if v <= t:
                                idx = idx + 1
                                t = t
                                continue 
                            idx = idx + 1
                            t = v
                            continue 
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                        idx = 32
                        while idx < 30:
                            mem[idx + mem[64] + 68] = mem[idx + _9768 + 32]
                            idx = idx + 32
                            continue 
                    else:
                        if 5 * v / v != 5:
                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _9230 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_9230] = 26
                        mem[_9230 + 32] = 'SafeMath: division by zero'
                        _10020 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_10020] = 30
                        mem[_10020 + 32] = 'SafeMath: subtraction overflow'
                        if 5 * v / 1000 <= v:
                            if v - (5 * v / 1000) <= t:
                                idx = idx + 1
                                t = t
                                continue 
                            idx = idx + 1
                            t = v - (5 * v / 1000)
                            continue 
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                        idx = 32
                        while idx < 30:
                            mem[idx + mem[64] + 68] = mem[idx + _10020 + 32]
                            idx = idx + 32
                            continue 
                else:
                    if 3 * 10^uint8(ext_call.return_data[0]) * s / 3 * s != 10^uint8(ext_call.return_data[0]):
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _6984 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_6984] = 26
                    mem[_6984 + 32] = 'SafeMath: division by zero'
                    if not 10^uint8(ext_call.return_data[0]):
                        _7094 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _7094 + 68] = mem[idx + _6984 + 32]
                            idx = idx + 32
                            continue 
                        mem[_7094 + 68] = mem[_7094 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _7094 + -mem[64] + 100
                    require 10^uint8(ext_call.return_data[0] - 6)
                    require 10^uint8(ext_call.return_data[0] - 6)
                    u = 0
                    v = 3 * 10^uint8(ext_call.return_data[0]) * s / 10^uint8(ext_call.return_data[0])
                    while u < 10000:
                        require 10^uint8(ext_call.return_data[0] - 6)
                        require 10^uint8(ext_call.return_data[0] - 6)
                        if ((ext_call.return_data[0] - v / 10^uint8(ext_call.return_data[0] - 6))^2 * ext_call.return_data[0] - v / 10^uint8(ext_call.return_data[0] - 6) * ext_call.return_data[0] + s / 10^uint8(ext_call.return_data[0] - 6)) + ((ext_call.return_data[0] + s / 10^uint8(ext_call.return_data[0] - 6))^2 * ext_call.return_data[0] - v / 10^uint8(ext_call.return_data[0] - 6) * ext_call.return_data[0] + s / 10^uint8(ext_call.return_data[0] - 6)) / 2 <= ((ext_call.return_data[0] / 10^uint8(ext_call.return_data[0] - 6))^2 * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0] - 6) * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0] - 6)) + ((ext_call.return_data[0] / 10^uint8(ext_call.return_data[0] - 6))^2 * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0] - 6) * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0] - 6)) / 2:
                            u = u + 1
                            v = 99000 * v / 100000
                            continue 
                        if not v:
                            _9659 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_9659] = 26
                            mem[_9659 + 32] = 'SafeMath: division by zero'
                            _10792 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_10792] = 30
                            mem[_10792 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= v:
                                if v <= t:
                                    idx = idx + 1
                                    t = t
                                    continue 
                                idx = idx + 1
                                t = v
                                continue 
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                            idx = 32
                            while idx < 30:
                                mem[idx + mem[64] + 68] = mem[idx + _10792 + 32]
                                idx = idx + 32
                                continue 
                        else:
                            if 5 * v / v != 5:
                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            _9881 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_9881] = 26
                            mem[_9881 + 32] = 'SafeMath: division by zero'
                            _11048 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_11048] = 30
                            mem[_11048 + 32] = 'SafeMath: subtraction overflow'
                            if 5 * v / 1000 <= v:
                                if v - (5 * v / 1000) <= t:
                                    idx = idx + 1
                                    t = t
                                    continue 
                                idx = idx + 1
                                t = v - (5 * v / 1000)
                                continue 
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                            idx = 32
                            while idx < 30:
                                mem[idx + mem[64] + 68] = mem[idx + _11048 + 32]
                                idx = idx + 32
                                continue 
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not v:
                        _9084 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_9084] = 26
                        mem[_9084 + 32] = 'SafeMath: division by zero'
                        _9767 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_9767] = 30
                        mem[_9767 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= v:
                            if v <= t:
                                idx = idx + 1
                                t = t
                                continue 
                            idx = idx + 1
                            t = v
                            continue 
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                        idx = 32
                        while idx < 30:
                            mem[idx + mem[64] + 68] = mem[idx + _9767 + 32]
                            idx = idx + 32
                            continue 
                    else:
                        if 5 * v / v != 5:
                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _9229 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_9229] = 26
                        mem[_9229 + 32] = 'SafeMath: division by zero'
                        _10016 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_10016] = 30
                        mem[_10016 + 32] = 'SafeMath: subtraction overflow'
                        if 5 * v / 1000 <= v:
                            if v - (5 * v / 1000) <= t:
                                idx = idx + 1
                                t = t
                                continue 
                            idx = idx + 1
                            t = v - (5 * v / 1000)
                            continue 
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                        idx = 32
                        while idx < 30:
                            mem[idx + mem[64] + 68] = mem[idx + _10016 + 32]
                            idx = idx + 32
                            continue 
                revert with 0, 'SafeMath: subtraction overflow'
            if 1 == idx:
                _4055 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                require 0 < mem[_4055]
                mem[_4055 + 32] = 0xad84341756bf337f5a0164515b1f6f993d194e
                require 1 < mem[_4055]
                mem[_4055 + 64] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                mem[_4055 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_4055 + 100] = s
                mem[_4055 + 132] = 64
                mem[_4055 + 164] = mem[_4055]
                u = 0
                while u < 32 * mem[_4055]:
                    mem[u + _4055 + 196] = mem[u + _4055 + 32]
                    u = u + 32
                    continue 
                require ext_code.size(0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52)
                staticcall 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args s, 64, mem[_4055 + 164 len (32 * mem[_4055]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_4055 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _4055 + ceil32(return_data.size) + 96
                require return_data.size >= 32
                _8887 = mem[_4055 + 96 len 4], Mask(224, 32, s) >> 32
                require mem[_4055 + 96 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                require mem[_4055 + 96 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                require mem[_4055 + mem[_4055 + 96 len 4], Mask(224, 32, s) >> 32 + 96] <= 4294967296 and mem[_4055 + 96 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_4055 + mem[_4055 + 96 len 4], Mask(224, 32, s) >> 32 + 96]) + 32 <= return_data.size
                mem[_4055 + ceil32(return_data.size) + 96] = mem[_4055 + mem[_4055 + 96 len 4], Mask(224, 32, s) >> 32 + 96]
                _9171 = mem[_4055 + _8887 + 96]
                s = 0
                while s < 32 * _9171:
                    mem[s + _4055 + ceil32(return_data.size) + 128] = mem[s + _4055 + _8887 + 128]
                    s = s + 32
                    continue 
                mem[64] = (32 * _9171) + _4055 + ceil32(return_data.size) + 128
                require mem[_4055 + ceil32(return_data.size) + 96] - 1 < mem[_4055 + ceil32(return_data.size) + 96]
                if mem[(32 * mem[_4055 + ceil32(return_data.size) + 96] - 1) + _4055 + ceil32(return_data.size) + 128] <= t:
                    idx = idx + 1
                    t = t
                    continue 
                idx = idx + 1
                t = mem[(32 * mem[_4055 + ceil32(return_data.size) + 96] - 1) + _4055 + ceil32(return_data.size) + 128]
                continue 
            if 2 == idx:
                _4203 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                require 0 < mem[_4203]
                mem[_4203 + 32] = 0xad84341756bf337f5a0164515b1f6f993d194e
                require 1 < mem[_4203]
                mem[_4203 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c
                mem[_4203 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_4203 + 100] = s
                mem[_4203 + 132] = 64
                mem[_4203 + 164] = mem[_4203]
                u = 0
                while u < 32 * mem[_4203]:
                    mem[u + _4203 + 196] = mem[u + _4203 + 32]
                    u = u + 32
                    continue 
                require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c29.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args s, 64, mem[_4203 + 164 len (32 * mem[_4203]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_4203 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _4203 + ceil32(return_data.size) + 96
                require return_data.size >= 32
                _8883 = mem[_4203 + 96 len 4], Mask(224, 32, s) >> 32
                require mem[_4203 + 96 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                require mem[_4203 + 96 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                require mem[_4203 + mem[_4203 + 96 len 4], Mask(224, 32, s) >> 32 + 96] <= 4294967296 and mem[_4203 + 96 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_4203 + mem[_4203 + 96 len 4], Mask(224, 32, s) >> 32 + 96]) + 32 <= return_data.size
                mem[_4203 + ceil32(return_data.size) + 96] = mem[_4203 + mem[_4203 + 96 len 4], Mask(224, 32, s) >> 32 + 96]
                _9169 = mem[_4203 + _8883 + 96]
                s = 0
                while s < 32 * _9169:
                    mem[s + _4203 + ceil32(return_data.size) + 128] = mem[s + _4203 + _8883 + 128]
                    s = s + 32
                    continue 
                mem[64] = (32 * _9169) + _4203 + ceil32(return_data.size) + 128
                require mem[_4203 + ceil32(return_data.size) + 96] - 1 < mem[_4203 + ceil32(return_data.size) + 96]
                _12313 = mem[(32 * mem[_4203 + ceil32(return_data.size) + 96] - 1) + _4203 + ceil32(return_data.size) + 128]
                mem[(32 * _9169) + _4203 + ceil32(return_data.size) + 128] = 2
                mem[(32 * _9169) + _4203 + ceil32(return_data.size) + 160] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c
                mem[(32 * _9169) + _4203 + ceil32(return_data.size) + 192] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                mem[(32 * _9169) + _4203 + ceil32(return_data.size) + 224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[(32 * _9169) + _4203 + ceil32(return_data.size) + 228] = _12313
                mem[(32 * _9169) + _4203 + ceil32(return_data.size) + 260] = 64
                mem[(32 * _9169) + _4203 + ceil32(return_data.size) + 292] = 2
                s = 0
                while s < 64:
                    mem[s + (32 * _9169) + _4203 + ceil32(return_data.size) + 324] = mem[s + (32 * _9169) + _4203 + ceil32(return_data.size) + 160]
                    s = s + 32
                    continue 
                require ext_code.size(0x67a937ea41cd05ec8c832a044afc0100f30aa4b5)
                staticcall 0x67a937ea41cd05ec8c832a044afc0100f30aa4b5.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args _12313, Array(len=2, data=mem[(32 * _9169) + _4203 + ceil32(return_data.size) + 324 len 64])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * _9169) + _4203 + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * _9169) + _4203 + (2 * ceil32(return_data.size)) + 224
                require return_data.size >= 32
                _13559 = mem[(32 * _9169) + _4203 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _12313) >> 32
                require mem[(32 * _9169) + _4203 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _12313) >> 32 <= 4294967296
                require mem[(32 * _9169) + _4203 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _12313) >> 32 + 32 <= return_data.size
                require mem[(32 * _9169) + _4203 + ceil32(return_data.size) + mem[(32 * _9169) + _4203 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _12313) >> 32 + 224] <= 4294967296 and mem[(32 * _9169) + _4203 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _12313) >> 32 + (32 * mem[(32 * _9169) + _4203 + ceil32(return_data.size) + mem[(32 * _9169) + _4203 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _12313) >> 32 + 224]) + 32 <= return_data.size
                mem[(32 * _9169) + _4203 + (2 * ceil32(return_data.size)) + 224] = mem[(32 * _9169) + _4203 + ceil32(return_data.size) + mem[(32 * _9169) + _4203 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _12313) >> 32 + 224]
                _13637 = mem[(32 * _9169) + _4203 + ceil32(return_data.size) + _13559 + 224]
                s = 0
                while s < 32 * _13637:
                    mem[s + (32 * _9169) + _4203 + (2 * ceil32(return_data.size)) + 256] = mem[s + (32 * _9169) + _4203 + ceil32(return_data.size) + _13559 + 256]
                    s = s + 32
                    continue 
                mem[64] = (32 * _13637) + (32 * _9169) + _4203 + (2 * ceil32(return_data.size)) + 256
                require mem[(32 * _9169) + _4203 + (2 * ceil32(return_data.size)) + 224] - 1 < mem[(32 * _9169) + _4203 + (2 * ceil32(return_data.size)) + 224]
                if mem[(32 * mem[(32 * _9169) + _4203 + (2 * ceil32(return_data.size)) + 224] - 1) + (32 * _9169) + _4203 + (2 * ceil32(return_data.size)) + 256] <= t:
                    idx = idx + 1
                    t = t
                    continue 
                idx = idx + 1
                t = mem[(32 * mem[(32 * _9169) + _4203 + (2 * ceil32(return_data.size)) + 224] - 1) + (32 * _9169) + _4203 + (2 * ceil32(return_data.size)) + 256]
                continue 
            if idx != 3:
                if s <= t:
                    idx = idx + 1
                    t = t
                    continue 
                idx = idx + 1
                t = s
                continue 
            _4201 = mem[0]
            _4301 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            require 0 < mem[_4301]
            mem[_4301 + 32] = 0xad84341756bf337f5a0164515b1f6f993d194e
            require 1 < mem[_4301]
            mem[_4301 + 64] = 0x5848b832e872d9edd84ac5718d58f21fd9c96
            mem[_4301 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[_4301 + 100] = s
            mem[_4301 + 132] = 64
            mem[_4301 + 164] = mem[_4301]
            u = 0
            while u < 32 * mem[_4301]:
                mem[u + _4301 + 196] = mem[u + _4301 + 32]
                u = u + 32
                continue 
            require ext_code.size(0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52)
            staticcall 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52.getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args s, 64, mem[_4301 + 164 len (32 * mem[_4301]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[_4301 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = _4301 + ceil32(return_data.size) + 96
            require return_data.size >= 32
            _8879 = mem[_4301 + 96 len 4], Mask(224, 32, s) >> 32
            require mem[_4301 + 96 len 4], Mask(224, 32, s) >> 32 <= 4294967296
            require mem[_4301 + 96 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
            require mem[_4301 + mem[_4301 + 96 len 4], Mask(224, 32, s) >> 32 + 96] <= 4294967296 and mem[_4301 + 96 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_4301 + mem[_4301 + 96 len 4], Mask(224, 32, s) >> 32 + 96]) + 32 <= return_data.size
            mem[_4301 + ceil32(return_data.size) + 96] = mem[_4301 + mem[_4301 + 96 len 4], Mask(224, 32, s) >> 32 + 96]
            _9167 = mem[_4301 + _8879 + 96]
            s = 0
            while s < 32 * _9167:
                mem[s + _4301 + ceil32(return_data.size) + 128] = mem[s + _4301 + _8879 + 128]
                s = s + 32
                continue 
            require mem[_4301 + ceil32(return_data.size) + 96] - 1 < mem[_4301 + ceil32(return_data.size) + 96]
            _12311 = mem[(32 * mem[_4301 + ceil32(return_data.size) + 96] - 1) + _4301 + ceil32(return_data.size) + 128]
            mem[(32 * _9167) + _4301 + ceil32(return_data.size) + 128] = 3
            mem[(32 * _9167) + _4301 + ceil32(return_data.size) + 160] = 0x5848b832e872d9edd84ac5718d58f21fd9c96
            mem[0] = _4201
            mem[(32 * _9167) + _4301 + ceil32(return_data.size) + 192] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c
            mem[(32 * _9167) + _4301 + ceil32(return_data.size) + 224] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
            mem[(32 * _9167) + _4301 + ceil32(return_data.size) + 256] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[(32 * _9167) + _4301 + ceil32(return_data.size) + 260] = _12311
            mem[(32 * _9167) + _4301 + ceil32(return_data.size) + 292] = 64
            mem[(32 * _9167) + _4301 + ceil32(return_data.size) + 324] = 3
            s = 0
            while s < 96:
                mem[s + (32 * _9167) + _4301 + ceil32(return_data.size) + 356] = mem[s + (32 * _9167) + _4301 + ceil32(return_data.size) + 160]
                s = s + 32
                continue 
            require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
            staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c29.getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args _12311, Array(len=3, data=mem[(32 * _9167) + _4301 + ceil32(return_data.size) + 356 len 96])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _9167) + _4301 + ceil32(return_data.size) + 256 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * _9167) + _4301 + (2 * ceil32(return_data.size)) + 256
            require return_data.size >= 32
            _13555 = mem[(32 * _9167) + _4301 + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _12311) >> 32
            require mem[(32 * _9167) + _4301 + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _12311) >> 32 <= 4294967296
            require mem[(32 * _9167) + _4301 + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _12311) >> 32 + 32 <= return_data.size
            require mem[(32 * _9167) + _4301 + ceil32(return_data.size) + mem[(32 * _9167) + _4301 + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _12311) >> 32 + 256] <= 4294967296 and mem[(32 * _9167) + _4301 + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _12311) >> 32 + (32 * mem[(32 * _9167) + _4301 + ceil32(return_data.size) + mem[(32 * _9167) + _4301 + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _12311) >> 32 + 256]) + 32 <= return_data.size
            mem[(32 * _9167) + _4301 + (2 * ceil32(return_data.size)) + 256] = mem[(32 * _9167) + _4301 + ceil32(return_data.size) + mem[(32 * _9167) + _4301 + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _12311) >> 32 + 256]
            _13635 = mem[(32 * _9167) + _4301 + ceil32(return_data.size) + _13555 + 256]
            s = 0
            while s < 32 * _13635:
                mem[s + (32 * _9167) + _4301 + (2 * ceil32(return_data.size)) + 288] = mem[s + (32 * _9167) + _4301 + ceil32(return_data.size) + _13555 + 288]
                s = s + 32
                continue 
            mem[64] = (32 * _13635) + (32 * _9167) + _4301 + (2 * ceil32(return_data.size)) + 288
            require mem[(32 * _9167) + _4301 + (2 * ceil32(return_data.size)) + 256] - 1 < mem[(32 * _9167) + _4301 + (2 * ceil32(return_data.size)) + 256]
            if mem[(32 * mem[(32 * _9167) + _4301 + (2 * ceil32(return_data.size)) + 256] - 1) + (32 * _9167) + _4301 + (2 * ceil32(return_data.size)) + 288] <= t:
                idx = idx + 1
                t = t
                continue 
            idx = idx + 1
            t = mem[(32 * mem[(32 * _9167) + _4301 + (2 * ceil32(return_data.size)) + 256] - 1) + (32 * _9167) + _4301 + (2 * ceil32(return_data.size)) + 288]
            continue 
    else:
        if 10^6 * sub_7d0b6809 / sub_7d0b6809 != 10^6:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        idx = 0
        s = 0
        while idx < 4:
            if not idx:
                require ext_code.size(0xa0828ee559110b041dedbf10ae0cf42274251de1)
                staticcall 0xa0828ee559110b041dedbf10ae0cf42274251de1.reserve0() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(0xa0828ee559110b041dedbf10ae0cf42274251de1)
                staticcall 0xa0828ee559110b041dedbf10ae0cf42274251de1.reserve1() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(0x83000000000000000000000000ad84341756bf337f5a0164515b1f6f993d194e)
                staticcall 0x83000000000000000000000000ad84341756bf337f5a0164515b1f6f993d194e.decimals() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(0x4900000000000000000000000004068da6c83afcfa0e13ba15a6696662335d5b)
                staticcall 0x4900000000000000000000000004068da6c83afcfa0e13ba15a6696662335d5b.decimals() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(0x4068da6c83afcfa0e13ba15a6696662335d5b)
                staticcall 0x4068da6c83afcfa0e13ba15a6696662335d5b.decimals() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(0x83000000000000000000000000ad84341756bf337f5a0164515b1f6f993d194e)
                staticcall 0x83000000000000000000000000ad84341756bf337f5a0164515b1f6f993d194e.decimals() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not 3 * 10^6 * sub_7d0b6809:
                    _2100 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2100] = 26
                    mem[_2100 + 32] = 'SafeMath: division by zero'
                    if not 10^uint8(ext_call.return_data[0]):
                        _2167 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _2167 + 68] = mem[idx + _2100 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2167 + 68] = mem[_2167 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _2167 + -mem[64] + 100
                    require 10^uint8(ext_call.return_data[0] - 6)
                    require 10^uint8(ext_call.return_data[0] - 6)
                    t = 0
                    u = 0 / 10^uint8(ext_call.return_data[0])
                    while t < 10000:
                        require 10^uint8(ext_call.return_data[0] - 6)
                        require 10^uint8(ext_call.return_data[0] - 6)
                        if ((ext_call.return_data[0] - u / 10^uint8(ext_call.return_data[0] - 6))^2 * ext_call.return_data[0] - u / 10^uint8(ext_call.return_data[0] - 6) * ext_call.return_data[0] + (10^6 * sub_7d0b6809) / 10^uint8(ext_call.return_data[0] - 6)) + ((ext_call.return_data[0] + (10^6 * sub_7d0b6809) / 10^uint8(ext_call.return_data[0] - 6))^2 * ext_call.return_data[0] - u / 10^uint8(ext_call.return_data[0] - 6) * ext_call.return_data[0] + (10^6 * sub_7d0b6809) / 10^uint8(ext_call.return_data[0] - 6)) / 2 <= ((ext_call.return_data[0] / 10^uint8(ext_call.return_data[0] - 6))^2 * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0] - 6) * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0] - 6)) + ((ext_call.return_data[0] / 10^uint8(ext_call.return_data[0] - 6))^2 * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0] - 6) * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0] - 6)) / 2:
                            t = t + 1
                            u = 99000 * u / 100000
                            continue 
                        if not u:
                            _4964 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_4964] = 26
                            mem[_4964 + 32] = 'SafeMath: division by zero'
                            _5930 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_5930] = 30
                            mem[_5930 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= u:
                                if u <= s:
                                    idx = idx + 1
                                    s = s
                                    continue 
                                idx = idx + 1
                                s = u
                                continue 
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                            idx = 32
                            while idx < 30:
                                mem[idx + mem[64] + 68] = mem[idx + _5930 + 32]
                                idx = idx + 32
                                continue 
                        else:
                            if 5 * u / u != 5:
                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            _5206 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_5206] = 26
                            mem[_5206 + 32] = 'SafeMath: division by zero'
                            _6165 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_6165] = 30
                            mem[_6165 + 32] = 'SafeMath: subtraction overflow'
                            if 5 * u / 1000 <= u:
                                if u - (5 * u / 1000) <= s:
                                    idx = idx + 1
                                    s = s
                                    continue 
                                idx = idx + 1
                                s = u - (5 * u / 1000)
                                continue 
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                            idx = 32
                            while idx < 30:
                                mem[idx + mem[64] + 68] = mem[idx + _6165 + 32]
                                idx = idx + 32
                                continue 
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not u:
                        _4171 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4171] = 26
                        mem[_4171 + 32] = 'SafeMath: division by zero'
                        _5078 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5078] = 30
                        mem[_5078 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= u:
                            if u <= s:
                                idx = idx + 1
                                s = s
                                continue 
                            idx = idx + 1
                            s = u
                            continue 
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                        idx = 32
                        while idx < 30:
                            mem[idx + mem[64] + 68] = mem[idx + _5078 + 32]
                            idx = idx + 32
                            continue 
                    else:
                        if 5 * u / u != 5:
                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _4388 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4388] = 26
                        mem[_4388 + 32] = 'SafeMath: division by zero'
                        _5316 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5316] = 30
                        mem[_5316 + 32] = 'SafeMath: subtraction overflow'
                        if 5 * u / 1000 <= u:
                            if u - (5 * u / 1000) <= s:
                                idx = idx + 1
                                s = s
                                continue 
                            idx = idx + 1
                            s = u - (5 * u / 1000)
                            continue 
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                        idx = 32
                        while idx < 30:
                            mem[idx + mem[64] + 68] = mem[idx + _5316 + 32]
                            idx = idx + 32
                            continue 
                else:
                    if 3 * 10^6 * 10^uint8(ext_call.return_data[0]) * sub_7d0b6809 / 3 * 10^6 * sub_7d0b6809 != 10^uint8(ext_call.return_data[0]):
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _2166 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2166] = 26
                    mem[_2166 + 32] = 'SafeMath: division by zero'
                    if not 10^uint8(ext_call.return_data[0]):
                        _2226 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _2226 + 68] = mem[idx + _2166 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2226 + 68] = mem[_2226 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _2226 + -mem[64] + 100
                    require 10^uint8(ext_call.return_data[0] - 6)
                    require 10^uint8(ext_call.return_data[0] - 6)
                    t = 0
                    u = 3 * 10^6 * 10^uint8(ext_call.return_data[0]) * sub_7d0b6809 / 10^uint8(ext_call.return_data[0])
                    while t < 10000:
                        require 10^uint8(ext_call.return_data[0] - 6)
                        require 10^uint8(ext_call.return_data[0] - 6)
                        if ((ext_call.return_data[0] - u / 10^uint8(ext_call.return_data[0] - 6))^2 * ext_call.return_data[0] - u / 10^uint8(ext_call.return_data[0] - 6) * ext_call.return_data[0] + (10^6 * sub_7d0b6809) / 10^uint8(ext_call.return_data[0] - 6)) + ((ext_call.return_data[0] + (10^6 * sub_7d0b6809) / 10^uint8(ext_call.return_data[0] - 6))^2 * ext_call.return_data[0] - u / 10^uint8(ext_call.return_data[0] - 6) * ext_call.return_data[0] + (10^6 * sub_7d0b6809) / 10^uint8(ext_call.return_data[0] - 6)) / 2 <= ((ext_call.return_data[0] / 10^uint8(ext_call.return_data[0] - 6))^2 * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0] - 6) * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0] - 6)) + ((ext_call.return_data[0] / 10^uint8(ext_call.return_data[0] - 6))^2 * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0] - 6) * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0] - 6)) / 2:
                            t = t + 1
                            u = 99000 * u / 100000
                            continue 
                        if not u:
                            _4963 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_4963] = 26
                            mem[_4963 + 32] = 'SafeMath: division by zero'
                            _5926 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_5926] = 30
                            mem[_5926 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= u:
                                if u <= s:
                                    idx = idx + 1
                                    s = s
                                    continue 
                                idx = idx + 1
                                s = u
                                continue 
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                            idx = 32
                            while idx < 30:
                                mem[idx + mem[64] + 68] = mem[idx + _5926 + 32]
                                idx = idx + 32
                                continue 
                        else:
                            if 5 * u / u != 5:
                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            _5205 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_5205] = 26
                            mem[_5205 + 32] = 'SafeMath: division by zero'
                            _6160 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_6160] = 30
                            mem[_6160 + 32] = 'SafeMath: subtraction overflow'
                            if 5 * u / 1000 <= u:
                                if u - (5 * u / 1000) <= s:
                                    idx = idx + 1
                                    s = s
                                    continue 
                                idx = idx + 1
                                s = u - (5 * u / 1000)
                                continue 
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                            idx = 32
                            while idx < 30:
                                mem[idx + mem[64] + 68] = mem[idx + _6160 + 32]
                                idx = idx + 32
                                continue 
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not u:
                        _4170 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4170] = 26
                        mem[_4170 + 32] = 'SafeMath: division by zero'
                        _5077 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5077] = 30
                        mem[_5077 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= u:
                            if u <= s:
                                idx = idx + 1
                                s = s
                                continue 
                            idx = idx + 1
                            s = u
                            continue 
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                        idx = 32
                        while idx < 30:
                            mem[idx + mem[64] + 68] = mem[idx + _5077 + 32]
                            idx = idx + 32
                            continue 
                    else:
                        if 5 * u / u != 5:
                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _4387 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4387] = 26
                        mem[_4387 + 32] = 'SafeMath: division by zero'
                        _5312 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5312] = 30
                        mem[_5312 + 32] = 'SafeMath: subtraction overflow'
                        if 5 * u / 1000 <= u:
                            if u - (5 * u / 1000) <= s:
                                idx = idx + 1
                                s = s
                                continue 
                            idx = idx + 1
                            s = u - (5 * u / 1000)
                            continue 
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                        idx = 32
                        while idx < 30:
                            mem[idx + mem[64] + 68] = mem[idx + _5312 + 32]
                            idx = idx + 32
                            continue 
                revert with 0, 'SafeMath: subtraction overflow'
            if 1 == idx:
                _751 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                require 0 < mem[_751]
                mem[_751 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                require 1 < mem[_751]
                mem[_751 + 64] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                mem[_751 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_751 + 100] = 10^6 * sub_7d0b6809
                mem[_751 + 132] = 64
                mem[_751 + 164] = mem[_751]
                t = 0
                while t < 32 * mem[_751]:
                    mem[t + _751 + 196] = mem[t + _751 + 32]
                    t = t + 32
                    continue 
                require ext_code.size(0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52)
                staticcall 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args 10^6 * sub_7d0b6809, 64, mem[_751 + 164 len (32 * mem[_751]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_751 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _751 + ceil32(return_data.size) + 96
                require return_data.size >= 32
                _4039 = mem[_751 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32
                require mem[_751 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 <= 4294967296
                require mem[_751 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 32 <= return_data.size
                require mem[_751 + mem[_751 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 96] <= 4294967296 and mem[_751 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + (32 * mem[_751 + mem[_751 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 96]) + 32 <= return_data.size
                mem[_751 + ceil32(return_data.size) + 96] = mem[_751 + mem[_751 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 96]
                _4275 = mem[_751 + _4039 + 96]
                t = 0
                while t < 32 * _4275:
                    mem[t + _751 + ceil32(return_data.size) + 128] = mem[t + _751 + _4039 + 128]
                    t = t + 32
                    continue 
                mem[64] = (32 * _4275) + _751 + ceil32(return_data.size) + 128
                require mem[_751 + ceil32(return_data.size) + 96] - 1 < mem[_751 + ceil32(return_data.size) + 96]
                if mem[(32 * mem[_751 + ceil32(return_data.size) + 96] - 1) + _751 + ceil32(return_data.size) + 128] <= s:
                    idx = idx + 1
                    s = s
                    continue 
                idx = idx + 1
                s = mem[(32 * mem[_751 + ceil32(return_data.size) + 96] - 1) + _751 + ceil32(return_data.size) + 128]
                continue 
            if 2 == idx:
                _771 = mem[0]
                _793 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                require 0 < mem[_793]
                mem[_793 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                require 1 < mem[_793]
                mem[_793 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c
                mem[_793 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_793 + 100] = 10^6 * sub_7d0b6809
                mem[_793 + 132] = 64
                mem[_793 + 164] = mem[_793]
                t = 0
                while t < 32 * mem[_793]:
                    mem[t + _793 + 196] = mem[t + _793 + 32]
                    t = t + 32
                    continue 
                require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c29.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args 10^6 * sub_7d0b6809, 64, mem[_793 + 164 len (32 * mem[_793]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_793 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _793 + ceil32(return_data.size) + 96
                require return_data.size >= 32
                _4035 = mem[_793 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32
                require mem[_793 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 <= 4294967296
                require mem[_793 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 32 <= return_data.size
                require mem[_793 + mem[_793 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 96] <= 4294967296 and mem[_793 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + (32 * mem[_793 + mem[_793 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 96]) + 32 <= return_data.size
                mem[_793 + ceil32(return_data.size) + 96] = mem[_793 + mem[_793 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 96]
                _4273 = mem[_793 + _4035 + 96]
                t = 0
                while t < 32 * _4273:
                    mem[t + _793 + ceil32(return_data.size) + 128] = mem[t + _793 + _4035 + 128]
                    t = t + 32
                    continue 
                require mem[_793 + ceil32(return_data.size) + 96] - 1 < mem[_793 + ceil32(return_data.size) + 96]
                _8541 = mem[(32 * mem[_793 + ceil32(return_data.size) + 96] - 1) + _793 + ceil32(return_data.size) + 128]
                mem[(32 * _4273) + _793 + ceil32(return_data.size) + 128] = 2
                mem[0] = _771
                mem[(32 * _4273) + _793 + ceil32(return_data.size) + 160] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c
                mem[(32 * _4273) + _793 + ceil32(return_data.size) + 192] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                mem[(32 * _4273) + _793 + ceil32(return_data.size) + 224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[(32 * _4273) + _793 + ceil32(return_data.size) + 228] = _8541
                mem[(32 * _4273) + _793 + ceil32(return_data.size) + 260] = 64
                mem[(32 * _4273) + _793 + ceil32(return_data.size) + 292] = 2
                t = 0
                while t < 64:
                    mem[t + (32 * _4273) + _793 + ceil32(return_data.size) + 324] = mem[t + (32 * _4273) + _793 + ceil32(return_data.size) + 160]
                    t = t + 32
                    continue 
                require ext_code.size(0x67a937ea41cd05ec8c832a044afc0100f30aa4b5)
                staticcall 0x67a937ea41cd05ec8c832a044afc0100f30aa4b5.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args _8541, Array(len=2, data=mem[(32 * _4273) + _793 + ceil32(return_data.size) + 324 len 64])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * _4273) + _793 + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * _4273) + _793 + (2 * ceil32(return_data.size)) + 224
                require return_data.size >= 32
                _12639 = mem[(32 * _4273) + _793 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _8541) >> 32
                require mem[(32 * _4273) + _793 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _8541) >> 32 <= 4294967296
                require mem[(32 * _4273) + _793 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _8541) >> 32 + 32 <= return_data.size
                require mem[(32 * _4273) + _793 + ceil32(return_data.size) + mem[(32 * _4273) + _793 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _8541) >> 32 + 224] <= 4294967296 and mem[(32 * _4273) + _793 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _8541) >> 32 + (32 * mem[(32 * _4273) + _793 + ceil32(return_data.size) + mem[(32 * _4273) + _793 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _8541) >> 32 + 224]) + 32 <= return_data.size
                mem[(32 * _4273) + _793 + (2 * ceil32(return_data.size)) + 224] = mem[(32 * _4273) + _793 + ceil32(return_data.size) + mem[(32 * _4273) + _793 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _8541) >> 32 + 224]
                _12849 = mem[(32 * _4273) + _793 + ceil32(return_data.size) + _12639 + 224]
                t = 0
                while t < 32 * _12849:
                    mem[t + (32 * _4273) + _793 + (2 * ceil32(return_data.size)) + 256] = mem[t + (32 * _4273) + _793 + ceil32(return_data.size) + _12639 + 256]
                    t = t + 32
                    continue 
                mem[64] = (32 * _12849) + (32 * _4273) + _793 + (2 * ceil32(return_data.size)) + 256
                require mem[(32 * _4273) + _793 + (2 * ceil32(return_data.size)) + 224] - 1 < mem[(32 * _4273) + _793 + (2 * ceil32(return_data.size)) + 224]
                if mem[(32 * mem[(32 * _4273) + _793 + (2 * ceil32(return_data.size)) + 224] - 1) + (32 * _4273) + _793 + (2 * ceil32(return_data.size)) + 256] <= s:
                    idx = idx + 1
                    s = s
                    continue 
                idx = idx + 1
                s = mem[(32 * mem[(32 * _4273) + _793 + (2 * ceil32(return_data.size)) + 224] - 1) + (32 * _4273) + _793 + (2 * ceil32(return_data.size)) + 256]
                continue 
            if idx != 3:
                if 10^6 * sub_7d0b6809 <= s:
                    idx = idx + 1
                    s = s
                    continue 
                idx = idx + 1
                s = 10^6 * sub_7d0b6809
                continue 
            _791 = mem[0]
            _827 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            require 0 < mem[_827]
            mem[_827 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
            require 1 < mem[_827]
            mem[_827 + 64] = 0x5848b832e872d9edd84ac5718d58f21fd9c96
            mem[_827 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[_827 + 100] = 10^6 * sub_7d0b6809
            mem[_827 + 132] = 64
            mem[_827 + 164] = mem[_827]
            t = 0
            while t < 32 * mem[_827]:
                mem[t + _827 + 196] = mem[t + _827 + 32]
                t = t + 32
                continue 
            require ext_code.size(0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52)
            staticcall 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52.getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args 10^6 * sub_7d0b6809, 64, mem[_827 + 164 len (32 * mem[_827]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[_827 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = _827 + ceil32(return_data.size) + 96
            require return_data.size >= 32
            _4031 = mem[_827 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32
            require mem[_827 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 <= 4294967296
            require mem[_827 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 32 <= return_data.size
            require mem[_827 + mem[_827 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 96] <= 4294967296 and mem[_827 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + (32 * mem[_827 + mem[_827 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 96]) + 32 <= return_data.size
            mem[_827 + ceil32(return_data.size) + 96] = mem[_827 + mem[_827 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 96]
            _4271 = mem[_827 + _4031 + 96]
            t = 0
            while t < 32 * _4271:
                mem[t + _827 + ceil32(return_data.size) + 128] = mem[t + _827 + _4031 + 128]
                t = t + 32
                continue 
            require mem[_827 + ceil32(return_data.size) + 96] - 1 < mem[_827 + ceil32(return_data.size) + 96]
            _8539 = mem[(32 * mem[_827 + ceil32(return_data.size) + 96] - 1) + _827 + ceil32(return_data.size) + 128]
            mem[(32 * _4271) + _827 + ceil32(return_data.size) + 128] = 3
            mem[(32 * _4271) + _827 + ceil32(return_data.size) + 160] = 0x5848b832e872d9edd84ac5718d58f21fd9c96
            mem[0] = _791
            mem[(32 * _4271) + _827 + ceil32(return_data.size) + 192] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c
            mem[(32 * _4271) + _827 + ceil32(return_data.size) + 224] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
            mem[(32 * _4271) + _827 + ceil32(return_data.size) + 256] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[(32 * _4271) + _827 + ceil32(return_data.size) + 260] = _8539
            mem[(32 * _4271) + _827 + ceil32(return_data.size) + 292] = 64
            mem[(32 * _4271) + _827 + ceil32(return_data.size) + 324] = 3
            t = 0
            while t < 96:
                mem[t + (32 * _4271) + _827 + ceil32(return_data.size) + 356] = mem[t + (32 * _4271) + _827 + ceil32(return_data.size) + 160]
                t = t + 32
                continue 
            require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
            staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c29.getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args _8539, Array(len=3, data=mem[(32 * _4271) + _827 + ceil32(return_data.size) + 356 len 96])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _4271) + _827 + ceil32(return_data.size) + 256 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * _4271) + _827 + (2 * ceil32(return_data.size)) + 256
            require return_data.size >= 32
            _12635 = mem[(32 * _4271) + _827 + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _8539) >> 32
            require mem[(32 * _4271) + _827 + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _8539) >> 32 <= 4294967296
            require mem[(32 * _4271) + _827 + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _8539) >> 32 + 32 <= return_data.size
            require mem[(32 * _4271) + _827 + ceil32(return_data.size) + mem[(32 * _4271) + _827 + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _8539) >> 32 + 256] <= 4294967296 and mem[(32 * _4271) + _827 + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _8539) >> 32 + (32 * mem[(32 * _4271) + _827 + ceil32(return_data.size) + mem[(32 * _4271) + _827 + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _8539) >> 32 + 256]) + 32 <= return_data.size
            mem[(32 * _4271) + _827 + (2 * ceil32(return_data.size)) + 256] = mem[(32 * _4271) + _827 + ceil32(return_data.size) + mem[(32 * _4271) + _827 + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _8539) >> 32 + 256]
            _12847 = mem[(32 * _4271) + _827 + ceil32(return_data.size) + _12635 + 256]
            t = 0
            while t < 32 * _12847:
                mem[t + (32 * _4271) + _827 + (2 * ceil32(return_data.size)) + 288] = mem[t + (32 * _4271) + _827 + ceil32(return_data.size) + _12635 + 288]
                t = t + 32
                continue 
            mem[64] = (32 * _12847) + (32 * _4271) + _827 + (2 * ceil32(return_data.size)) + 288
            require mem[(32 * _4271) + _827 + (2 * ceil32(return_data.size)) + 256] - 1 < mem[(32 * _4271) + _827 + (2 * ceil32(return_data.size)) + 256]
            if mem[(32 * mem[(32 * _4271) + _827 + (2 * ceil32(return_data.size)) + 256] - 1) + (32 * _4271) + _827 + (2 * ceil32(return_data.size)) + 288] <= s:
                idx = idx + 1
                s = s
                continue 
            idx = idx + 1
            s = mem[(32 * mem[(32 * _4271) + _827 + (2 * ceil32(return_data.size)) + 256] - 1) + (32 * _4271) + _827 + (2 * ceil32(return_data.size)) + 288]
            continue 
        idx = 0
        t = 0
        while idx < 4:
            if not idx:
                require ext_code.size(0xa0828ee559110b041dedbf10ae0cf42274251de1)
                staticcall 0xa0828ee559110b041dedbf10ae0cf42274251de1.reserve0() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(0xa0828ee559110b041dedbf10ae0cf42274251de1)
                staticcall 0xa0828ee559110b041dedbf10ae0cf42274251de1.reserve1() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(0x83000000000000000000000000ad84341756bf337f5a0164515b1f6f993d194e)
                staticcall 0x83000000000000000000000000ad84341756bf337f5a0164515b1f6f993d194e.decimals() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(0x4900000000000000000000000004068da6c83afcfa0e13ba15a6696662335d5b)
                staticcall 0x4900000000000000000000000004068da6c83afcfa0e13ba15a6696662335d5b.decimals() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(0x4068da6c83afcfa0e13ba15a6696662335d5b)
                staticcall 0x4068da6c83afcfa0e13ba15a6696662335d5b.decimals() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(0x83000000000000000000000000ad84341756bf337f5a0164515b1f6f993d194e)
                staticcall 0x83000000000000000000000000ad84341756bf337f5a0164515b1f6f993d194e.decimals() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not 3 * s:
                    _6822 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_6822] = 26
                    mem[_6822 + 32] = 'SafeMath: division by zero'
                    if not 10^uint8(ext_call.return_data[0]):
                        _6949 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _6949 + 68] = mem[idx + _6822 + 32]
                            idx = idx + 32
                            continue 
                        mem[_6949 + 68] = mem[_6949 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _6949 + -mem[64] + 100
                    require 10^uint8(ext_call.return_data[0] - 6)
                    require 10^uint8(ext_call.return_data[0] - 6)
                    u = 0
                    v = 0 / 10^uint8(ext_call.return_data[0])
                    while u < 10000:
                        require 10^uint8(ext_call.return_data[0] - 6)
                        require 10^uint8(ext_call.return_data[0] - 6)
                        if ((ext_call.return_data[0] - v / 10^uint8(ext_call.return_data[0] - 6))^2 * ext_call.return_data[0] - v / 10^uint8(ext_call.return_data[0] - 6) * ext_call.return_data[0] + s / 10^uint8(ext_call.return_data[0] - 6)) + ((ext_call.return_data[0] + s / 10^uint8(ext_call.return_data[0] - 6))^2 * ext_call.return_data[0] - v / 10^uint8(ext_call.return_data[0] - 6) * ext_call.return_data[0] + s / 10^uint8(ext_call.return_data[0] - 6)) / 2 <= ((ext_call.return_data[0] / 10^uint8(ext_call.return_data[0] - 6))^2 * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0] - 6) * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0] - 6)) + ((ext_call.return_data[0] / 10^uint8(ext_call.return_data[0] - 6))^2 * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0] - 6) * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0] - 6)) / 2:
                            u = u + 1
                            v = 99000 * v / 100000
                            continue 
                        if not v:
                            _9592 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_9592] = 26
                            mem[_9592 + 32] = 'SafeMath: division by zero'
                            _10724 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_10724] = 30
                            mem[_10724 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= v:
                                if v <= t:
                                    idx = idx + 1
                                    t = t
                                    continue 
                                idx = idx + 1
                                t = v
                                continue 
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                            idx = 32
                            while idx < 30:
                                mem[idx + mem[64] + 68] = mem[idx + _10724 + 32]
                                idx = idx + 32
                                continue 
                        else:
                            if 5 * v / v != 5:
                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            _9818 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_9818] = 26
                            mem[_9818 + 32] = 'SafeMath: division by zero'
                            _10957 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_10957] = 30
                            mem[_10957 + 32] = 'SafeMath: subtraction overflow'
                            if 5 * v / 1000 <= v:
                                if v - (5 * v / 1000) <= t:
                                    idx = idx + 1
                                    t = t
                                    continue 
                                idx = idx + 1
                                t = v - (5 * v / 1000)
                                continue 
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                            idx = 32
                            while idx < 30:
                                mem[idx + mem[64] + 68] = mem[idx + _10957 + 32]
                                idx = idx + 32
                                continue 
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not v:
                        _9037 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_9037] = 26
                        mem[_9037 + 32] = 'SafeMath: division by zero'
                        _9722 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_9722] = 30
                        mem[_9722 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= v:
                            if v <= t:
                                idx = idx + 1
                                t = t
                                continue 
                            idx = idx + 1
                            t = v
                            continue 
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                        idx = 32
                        while idx < 30:
                            mem[idx + mem[64] + 68] = mem[idx + _9722 + 32]
                            idx = idx + 32
                            continue 
                    else:
                        if 5 * v / v != 5:
                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _9208 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_9208] = 26
                        mem[_9208 + 32] = 'SafeMath: division by zero'
                        _9942 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_9942] = 30
                        mem[_9942 + 32] = 'SafeMath: subtraction overflow'
                        if 5 * v / 1000 <= v:
                            if v - (5 * v / 1000) <= t:
                                idx = idx + 1
                                t = t
                                continue 
                            idx = idx + 1
                            t = v - (5 * v / 1000)
                            continue 
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                        idx = 32
                        while idx < 30:
                            mem[idx + mem[64] + 68] = mem[idx + _9942 + 32]
                            idx = idx + 32
                            continue 
                else:
                    if 3 * 10^uint8(ext_call.return_data[0]) * s / 3 * s != 10^uint8(ext_call.return_data[0]):
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _6948 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_6948] = 26
                    mem[_6948 + 32] = 'SafeMath: division by zero'
                    if not 10^uint8(ext_call.return_data[0]):
                        _7066 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _7066 + 68] = mem[idx + _6948 + 32]
                            idx = idx + 32
                            continue 
                        mem[_7066 + 68] = mem[_7066 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _7066 + -mem[64] + 100
                    require 10^uint8(ext_call.return_data[0] - 6)
                    require 10^uint8(ext_call.return_data[0] - 6)
                    u = 0
                    v = 3 * 10^uint8(ext_call.return_data[0]) * s / 10^uint8(ext_call.return_data[0])
                    while u < 10000:
                        require 10^uint8(ext_call.return_data[0] - 6)
                        require 10^uint8(ext_call.return_data[0] - 6)
                        if ((ext_call.return_data[0] - v / 10^uint8(ext_call.return_data[0] - 6))^2 * ext_call.return_data[0] - v / 10^uint8(ext_call.return_data[0] - 6) * ext_call.return_data[0] + s / 10^uint8(ext_call.return_data[0] - 6)) + ((ext_call.return_data[0] + s / 10^uint8(ext_call.return_data[0] - 6))^2 * ext_call.return_data[0] - v / 10^uint8(ext_call.return_data[0] - 6) * ext_call.return_data[0] + s / 10^uint8(ext_call.return_data[0] - 6)) / 2 <= ((ext_call.return_data[0] / 10^uint8(ext_call.return_data[0] - 6))^2 * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0] - 6) * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0] - 6)) + ((ext_call.return_data[0] / 10^uint8(ext_call.return_data[0] - 6))^2 * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0] - 6) * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0] - 6)) / 2:
                            u = u + 1
                            v = 99000 * v / 100000
                            continue 
                        if not v:
                            _9591 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_9591] = 26
                            mem[_9591 + 32] = 'SafeMath: division by zero'
                            _10720 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_10720] = 30
                            mem[_10720 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= v:
                                if v <= t:
                                    idx = idx + 1
                                    t = t
                                    continue 
                                idx = idx + 1
                                t = v
                                continue 
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                            idx = 32
                            while idx < 30:
                                mem[idx + mem[64] + 68] = mem[idx + _10720 + 32]
                                idx = idx + 32
                                continue 
                        else:
                            if 5 * v / v != 5:
                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            _9817 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_9817] = 26
                            mem[_9817 + 32] = 'SafeMath: division by zero'
                            _10952 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_10952] = 30
                            mem[_10952 + 32] = 'SafeMath: subtraction overflow'
                            if 5 * v / 1000 <= v:
                                if v - (5 * v / 1000) <= t:
                                    idx = idx + 1
                                    t = t
                                    continue 
                                idx = idx + 1
                                t = v - (5 * v / 1000)
                                continue 
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                            idx = 32
                            while idx < 30:
                                mem[idx + mem[64] + 68] = mem[idx + _10952 + 32]
                                idx = idx + 32
                                continue 
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not v:
                        _9036 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_9036] = 26
                        mem[_9036 + 32] = 'SafeMath: division by zero'
                        _9721 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_9721] = 30
                        mem[_9721 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= v:
                            if v <= t:
                                idx = idx + 1
                                t = t
                                continue 
                            idx = idx + 1
                            t = v
                            continue 
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                        idx = 32
                        while idx < 30:
                            mem[idx + mem[64] + 68] = mem[idx + _9721 + 32]
                            idx = idx + 32
                            continue 
                    else:
                        if 5 * v / v != 5:
                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _9207 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_9207] = 26
                        mem[_9207 + 32] = 'SafeMath: division by zero'
                        _9938 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_9938] = 30
                        mem[_9938 + 32] = 'SafeMath: subtraction overflow'
                        if 5 * v / 1000 <= v:
                            if v - (5 * v / 1000) <= t:
                                idx = idx + 1
                                t = t
                                continue 
                            idx = idx + 1
                            t = v - (5 * v / 1000)
                            continue 
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                        idx = 32
                        while idx < 30:
                            mem[idx + mem[64] + 68] = mem[idx + _9938 + 32]
                            idx = idx + 32
                            continue 
                revert with 0, 'SafeMath: subtraction overflow'
            if 1 == idx:
                _4027 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                require 0 < mem[_4027]
                mem[_4027 + 32] = 0xad84341756bf337f5a0164515b1f6f993d194e
                require 1 < mem[_4027]
                mem[_4027 + 64] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                mem[_4027 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_4027 + 100] = s
                mem[_4027 + 132] = 64
                mem[_4027 + 164] = mem[_4027]
                u = 0
                while u < 32 * mem[_4027]:
                    mem[u + _4027 + 196] = mem[u + _4027 + 32]
                    u = u + 32
                    continue 
                require ext_code.size(0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52)
                staticcall 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args s, 64, mem[_4027 + 164 len (32 * mem[_4027]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_4027 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _4027 + ceil32(return_data.size) + 96
                require return_data.size >= 32
                _8847 = mem[_4027 + 96 len 4], Mask(224, 32, s) >> 32
                require mem[_4027 + 96 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                require mem[_4027 + 96 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                require mem[_4027 + mem[_4027 + 96 len 4], Mask(224, 32, s) >> 32 + 96] <= 4294967296 and mem[_4027 + 96 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_4027 + mem[_4027 + 96 len 4], Mask(224, 32, s) >> 32 + 96]) + 32 <= return_data.size
                mem[_4027 + ceil32(return_data.size) + 96] = mem[_4027 + mem[_4027 + 96 len 4], Mask(224, 32, s) >> 32 + 96]
                _9131 = mem[_4027 + _8847 + 96]
                s = 0
                while s < 32 * _9131:
                    mem[s + _4027 + ceil32(return_data.size) + 128] = mem[s + _4027 + _8847 + 128]
                    s = s + 32
                    continue 
                mem[64] = (32 * _9131) + _4027 + ceil32(return_data.size) + 128
                require mem[_4027 + ceil32(return_data.size) + 96] - 1 < mem[_4027 + ceil32(return_data.size) + 96]
                if mem[(32 * mem[_4027 + ceil32(return_data.size) + 96] - 1) + _4027 + ceil32(return_data.size) + 128] <= t:
                    idx = idx + 1
                    t = t
                    continue 
                idx = idx + 1
                t = mem[(32 * mem[_4027 + ceil32(return_data.size) + 96] - 1) + _4027 + ceil32(return_data.size) + 128]
                continue 
            if 2 == idx:
                _4083 = mem[0]
                _4149 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                require 0 < mem[_4149]
                mem[_4149 + 32] = 0xad84341756bf337f5a0164515b1f6f993d194e
                require 1 < mem[_4149]
                mem[_4149 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c
                mem[_4149 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_4149 + 100] = s
                mem[_4149 + 132] = 64
                mem[_4149 + 164] = mem[_4149]
                u = 0
                while u < 32 * mem[_4149]:
                    mem[u + _4149 + 196] = mem[u + _4149 + 32]
                    u = u + 32
                    continue 
                require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c29.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args s, 64, mem[_4149 + 164 len (32 * mem[_4149]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_4149 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _4149 + ceil32(return_data.size) + 96
                require return_data.size >= 32
                _8843 = mem[_4149 + 96 len 4], Mask(224, 32, s) >> 32
                require mem[_4149 + 96 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                require mem[_4149 + 96 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                require mem[_4149 + mem[_4149 + 96 len 4], Mask(224, 32, s) >> 32 + 96] <= 4294967296 and mem[_4149 + 96 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_4149 + mem[_4149 + 96 len 4], Mask(224, 32, s) >> 32 + 96]) + 32 <= return_data.size
                mem[_4149 + ceil32(return_data.size) + 96] = mem[_4149 + mem[_4149 + 96 len 4], Mask(224, 32, s) >> 32 + 96]
                _9129 = mem[_4149 + _8843 + 96]
                s = 0
                while s < 32 * _9129:
                    mem[s + _4149 + ceil32(return_data.size) + 128] = mem[s + _4149 + _8843 + 128]
                    s = s + 32
                    continue 
                require mem[_4149 + ceil32(return_data.size) + 96] - 1 < mem[_4149 + ceil32(return_data.size) + 96]
                _12165 = mem[(32 * mem[_4149 + ceil32(return_data.size) + 96] - 1) + _4149 + ceil32(return_data.size) + 128]
                mem[(32 * _9129) + _4149 + ceil32(return_data.size) + 128] = 2
                mem[0] = _4083
                mem[(32 * _9129) + _4149 + ceil32(return_data.size) + 160] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c
                mem[(32 * _9129) + _4149 + ceil32(return_data.size) + 192] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                mem[(32 * _9129) + _4149 + ceil32(return_data.size) + 224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[(32 * _9129) + _4149 + ceil32(return_data.size) + 228] = _12165
                mem[(32 * _9129) + _4149 + ceil32(return_data.size) + 260] = 64
                mem[(32 * _9129) + _4149 + ceil32(return_data.size) + 292] = 2
                s = 0
                while s < 64:
                    mem[s + (32 * _9129) + _4149 + ceil32(return_data.size) + 324] = mem[s + (32 * _9129) + _4149 + ceil32(return_data.size) + 160]
                    s = s + 32
                    continue 
                require ext_code.size(0x67a937ea41cd05ec8c832a044afc0100f30aa4b5)
                staticcall 0x67a937ea41cd05ec8c832a044afc0100f30aa4b5.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args _12165, Array(len=2, data=mem[(32 * _9129) + _4149 + ceil32(return_data.size) + 324 len 64])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * _9129) + _4149 + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * _9129) + _4149 + (2 * ceil32(return_data.size)) + 224
                require return_data.size >= 32
                _13527 = mem[(32 * _9129) + _4149 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _12165) >> 32
                require mem[(32 * _9129) + _4149 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _12165) >> 32 <= 4294967296
                require mem[(32 * _9129) + _4149 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _12165) >> 32 + 32 <= return_data.size
                require mem[(32 * _9129) + _4149 + ceil32(return_data.size) + mem[(32 * _9129) + _4149 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _12165) >> 32 + 224] <= 4294967296 and mem[(32 * _9129) + _4149 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _12165) >> 32 + (32 * mem[(32 * _9129) + _4149 + ceil32(return_data.size) + mem[(32 * _9129) + _4149 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _12165) >> 32 + 224]) + 32 <= return_data.size
                mem[(32 * _9129) + _4149 + (2 * ceil32(return_data.size)) + 224] = mem[(32 * _9129) + _4149 + ceil32(return_data.size) + mem[(32 * _9129) + _4149 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _12165) >> 32 + 224]
                _13621 = mem[(32 * _9129) + _4149 + ceil32(return_data.size) + _13527 + 224]
                s = 0
                while s < 32 * _13621:
                    mem[s + (32 * _9129) + _4149 + (2 * ceil32(return_data.size)) + 256] = mem[s + (32 * _9129) + _4149 + ceil32(return_data.size) + _13527 + 256]
                    s = s + 32
                    continue 
                mem[64] = (32 * _13621) + (32 * _9129) + _4149 + (2 * ceil32(return_data.size)) + 256
                require mem[(32 * _9129) + _4149 + (2 * ceil32(return_data.size)) + 224] - 1 < mem[(32 * _9129) + _4149 + (2 * ceil32(return_data.size)) + 224]
                if mem[(32 * mem[(32 * _9129) + _4149 + (2 * ceil32(return_data.size)) + 224] - 1) + (32 * _9129) + _4149 + (2 * ceil32(return_data.size)) + 256] <= t:
                    idx = idx + 1
                    t = t
                    continue 
                idx = idx + 1
                t = mem[(32 * mem[(32 * _9129) + _4149 + (2 * ceil32(return_data.size)) + 224] - 1) + (32 * _9129) + _4149 + (2 * ceil32(return_data.size)) + 256]
                continue 
            if idx != 3:
                if s <= t:
                    idx = idx + 1
                    t = t
                    continue 
                idx = idx + 1
                t = s
                continue 
            _4147 = mem[0]
            _4251 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            require 0 < mem[_4251]
            mem[_4251 + 32] = 0xad84341756bf337f5a0164515b1f6f993d194e
            require 1 < mem[_4251]
            mem[_4251 + 64] = 0x5848b832e872d9edd84ac5718d58f21fd9c96
            mem[_4251 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[_4251 + 100] = s
            mem[_4251 + 132] = 64
            mem[_4251 + 164] = mem[_4251]
            u = 0
            while u < 32 * mem[_4251]:
                mem[u + _4251 + 196] = mem[u + _4251 + 32]
                u = u + 32
                continue 
            require ext_code.size(0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52)
            staticcall 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52.getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args s, 64, mem[_4251 + 164 len (32 * mem[_4251]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[_4251 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = _4251 + ceil32(return_data.size) + 96
            require return_data.size >= 32
            _8839 = mem[_4251 + 96 len 4], Mask(224, 32, s) >> 32
            require mem[_4251 + 96 len 4], Mask(224, 32, s) >> 32 <= 4294967296
            require mem[_4251 + 96 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
            require mem[_4251 + mem[_4251 + 96 len 4], Mask(224, 32, s) >> 32 + 96] <= 4294967296 and mem[_4251 + 96 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_4251 + mem[_4251 + 96 len 4], Mask(224, 32, s) >> 32 + 96]) + 32 <= return_data.size
            mem[_4251 + ceil32(return_data.size) + 96] = mem[_4251 + mem[_4251 + 96 len 4], Mask(224, 32, s) >> 32 + 96]
            _9127 = mem[_4251 + _8839 + 96]
            s = 0
            while s < 32 * _9127:
                mem[s + _4251 + ceil32(return_data.size) + 128] = mem[s + _4251 + _8839 + 128]
                s = s + 32
                continue 
            mem[64] = (32 * _9127) + _4251 + ceil32(return_data.size) + 128
            require mem[_4251 + ceil32(return_data.size) + 96] - 1 < mem[_4251 + ceil32(return_data.size) + 96]
            _12163 = mem[(32 * mem[_4251 + ceil32(return_data.size) + 96] - 1) + _4251 + ceil32(return_data.size) + 128]
            mem[(32 * _9127) + _4251 + ceil32(return_data.size) + 128] = 3
            mem[(32 * _9127) + _4251 + ceil32(return_data.size) + 160] = 0x5848b832e872d9edd84ac5718d58f21fd9c96
            mem[0] = _4147
            mem[(32 * _9127) + _4251 + ceil32(return_data.size) + 192] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c
            mem[(32 * _9127) + _4251 + ceil32(return_data.size) + 224] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
            mem[(32 * _9127) + _4251 + ceil32(return_data.size) + 256] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[(32 * _9127) + _4251 + ceil32(return_data.size) + 260] = _12163
            mem[(32 * _9127) + _4251 + ceil32(return_data.size) + 292] = 64
            mem[(32 * _9127) + _4251 + ceil32(return_data.size) + 324] = 3
            s = 0
            while s < 96:
                mem[s + (32 * _9127) + _4251 + ceil32(return_data.size) + 356] = mem[s + (32 * _9127) + _4251 + ceil32(return_data.size) + 160]
                s = s + 32
                continue 
            require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
            staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c29.getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args _12163, Array(len=3, data=mem[(32 * _9127) + _4251 + ceil32(return_data.size) + 356 len 96])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _9127) + _4251 + ceil32(return_data.size) + 256 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * _9127) + _4251 + (2 * ceil32(return_data.size)) + 256
            require return_data.size >= 32
            _13523 = mem[(32 * _9127) + _4251 + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _12163) >> 32
            require mem[(32 * _9127) + _4251 + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _12163) >> 32 <= 4294967296
            require mem[(32 * _9127) + _4251 + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _12163) >> 32 + 32 <= return_data.size
            require mem[(32 * _9127) + _4251 + ceil32(return_data.size) + mem[(32 * _9127) + _4251 + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _12163) >> 32 + 256] <= 4294967296 and mem[(32 * _9127) + _4251 + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _12163) >> 32 + (32 * mem[(32 * _9127) + _4251 + ceil32(return_data.size) + mem[(32 * _9127) + _4251 + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _12163) >> 32 + 256]) + 32 <= return_data.size
            mem[(32 * _9127) + _4251 + (2 * ceil32(return_data.size)) + 256] = mem[(32 * _9127) + _4251 + ceil32(return_data.size) + mem[(32 * _9127) + _4251 + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _12163) >> 32 + 256]
            _13619 = mem[(32 * _9127) + _4251 + ceil32(return_data.size) + _13523 + 256]
            s = 0
            while s < 32 * _13619:
                mem[s + (32 * _9127) + _4251 + (2 * ceil32(return_data.size)) + 288] = mem[s + (32 * _9127) + _4251 + ceil32(return_data.size) + _13523 + 288]
                s = s + 32
                continue 
            mem[64] = (32 * _13619) + (32 * _9127) + _4251 + (2 * ceil32(return_data.size)) + 288
            require mem[(32 * _9127) + _4251 + (2 * ceil32(return_data.size)) + 256] - 1 < mem[(32 * _9127) + _4251 + (2 * ceil32(return_data.size)) + 256]
            if mem[(32 * mem[(32 * _9127) + _4251 + (2 * ceil32(return_data.size)) + 256] - 1) + (32 * _9127) + _4251 + (2 * ceil32(return_data.size)) + 288] <= t:
                idx = idx + 1
                t = t
                continue 
            idx = idx + 1
            t = mem[(32 * mem[(32 * _9127) + _4251 + (2 * ceil32(return_data.size)) + 256] - 1) + (32 * _9127) + _4251 + (2 * ceil32(return_data.size)) + 288]
            continue 
    return 0
}

function sub_94d7721f(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    if not sub_7d0b6809:
        idx = 0
        s = 0
        while idx < 4:
            if not idx:
                require ext_code.size(0xa0828ee559110b041dedbf10ae0cf42274251de1)
                staticcall 0xa0828ee559110b041dedbf10ae0cf42274251de1.reserve0() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(0xa0828ee559110b041dedbf10ae0cf42274251de1)
                staticcall 0xa0828ee559110b041dedbf10ae0cf42274251de1.reserve1() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(0x83000000000000000000000000ad84341756bf337f5a0164515b1f6f993d194e)
                staticcall 0x83000000000000000000000000ad84341756bf337f5a0164515b1f6f993d194e.decimals() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(0x4900000000000000000000000004068da6c83afcfa0e13ba15a6696662335d5b)
                staticcall 0x4900000000000000000000000004068da6c83afcfa0e13ba15a6696662335d5b.decimals() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(0x4068da6c83afcfa0e13ba15a6696662335d5b)
                staticcall 0x4068da6c83afcfa0e13ba15a6696662335d5b.decimals() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(0x83000000000000000000000000ad84341756bf337f5a0164515b1f6f993d194e)
                staticcall 0x83000000000000000000000000ad84341756bf337f5a0164515b1f6f993d194e.decimals() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                _2116 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2116] = 26
                mem[_2116 + 32] = 'SafeMath: division by zero'
                if not 10^uint8(ext_call.return_data[0]):
                    _2188 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _2188 + 68] = mem[idx + _2116 + 32]
                        idx = idx + 32
                        continue 
                    mem[_2188 + 68] = mem[_2188 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _2188 + -mem[64] + 100
                require 10^uint8(ext_call.return_data[0] - 6)
                require 10^uint8(ext_call.return_data[0] - 6)
                t = 0
                u = 0 / 10^uint8(ext_call.return_data[0])
                while t < 10000:
                    require 10^uint8(ext_call.return_data[0] - 6)
                    require 10^uint8(ext_call.return_data[0] - 6)
                    if ((ext_call.return_data[0] - u / 10^uint8(ext_call.return_data[0] - 6))^2 * ext_call.return_data[0] - u / 10^uint8(ext_call.return_data[0] - 6) * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0] - 6)) + ((ext_call.return_data[0] / 10^uint8(ext_call.return_data[0] - 6))^2 * ext_call.return_data[0] - u / 10^uint8(ext_call.return_data[0] - 6) * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0] - 6)) / 2 <= ((ext_call.return_data[0] / 10^uint8(ext_call.return_data[0] - 6))^2 * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0] - 6) * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0] - 6)) + ((ext_call.return_data[0] / 10^uint8(ext_call.return_data[0] - 6))^2 * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0] - 6) * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0] - 6)) / 2:
                        t = t + 1
                        u = 99000 * u / 100000
                        continue 
                    if not u:
                        _5035 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5035] = 26
                        mem[_5035 + 32] = 'SafeMath: division by zero'
                        _6046 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_6046] = 30
                        mem[_6046 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= u:
                            if u <= s:
                                idx = idx + 1
                                s = s
                                continue 
                            idx = idx + 1
                            s = u
                            continue 
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                        idx = 32
                        while idx < 30:
                            mem[idx + mem[64] + 68] = mem[idx + _6046 + 32]
                            idx = idx + 32
                            continue 
                    else:
                        if 5 * u / u != 5:
                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _5305 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5305] = 26
                        mem[_5305 + 32] = 'SafeMath: division by zero'
                        _6304 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_6304] = 30
                        mem[_6304 + 32] = 'SafeMath: subtraction overflow'
                        if 5 * u / 1000 <= u:
                            if u - (5 * u / 1000) <= s:
                                idx = idx + 1
                                s = s
                                continue 
                            idx = idx + 1
                            s = u - (5 * u / 1000)
                            continue 
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                        idx = 32
                        while idx < 30:
                            mem[idx + mem[64] + 68] = mem[idx + _6304 + 32]
                            idx = idx + 32
                            continue 
                    revert with 0, 'SafeMath: subtraction overflow'
                if not u:
                    _4208 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4208] = 26
                    mem[_4208 + 32] = 'SafeMath: division by zero'
                    _5179 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_5179] = 30
                    mem[_5179 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= u:
                        if u <= s:
                            idx = idx + 1
                            s = s
                            continue 
                        idx = idx + 1
                        s = u
                        continue 
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                    idx = 32
                    while idx < 30:
                        mem[idx + mem[64] + 68] = mem[idx + _5179 + 32]
                        idx = idx + 32
                        continue 
                else:
                    if 5 * u / u != 5:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _4467 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4467] = 26
                    mem[_4467 + 32] = 'SafeMath: division by zero'
                    _5424 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_5424] = 30
                    mem[_5424 + 32] = 'SafeMath: subtraction overflow'
                    if 5 * u / 1000 <= u:
                        if u - (5 * u / 1000) <= s:
                            idx = idx + 1
                            s = s
                            continue 
                        idx = idx + 1
                        s = u - (5 * u / 1000)
                        continue 
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                    idx = 32
                    while idx < 30:
                        mem[idx + mem[64] + 68] = mem[idx + _5424 + 32]
                        idx = idx + 32
                        continue 
                revert with 0, 'SafeMath: subtraction overflow'
            if 1 == idx:
                _763 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                require 0 < mem[_763]
                mem[_763 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                require 1 < mem[_763]
                mem[_763 + 64] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                mem[_763 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_763 + 100] = 0
                mem[_763 + 132] = 64
                mem[_763 + 164] = mem[_763]
                t = 0
                while t < 32 * mem[_763]:
                    mem[t + _763 + 196] = mem[t + _763 + 32]
                    t = t + 32
                    continue 
                require ext_code.size(0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52)
                staticcall 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args 0, 64, mem[_763 + 164 len (32 * mem[_763]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_763 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _763 + ceil32(return_data.size) + 96
                require return_data.size >= 32
                _4051 = mem[_763 + 96 len 4], 0
                require mem[_763 + 96 len 4], 0 <= 4294967296
                require mem[_763 + 96 len 4], 0 + 32 <= return_data.size
                require mem[_763 + mem[_763 + 96 len 4], 0 + 96] <= 4294967296 and mem[_763 + 96 len 4], 0 + (32 * mem[_763 + mem[_763 + 96 len 4], 0 + 96]) + 32 <= return_data.size
                mem[_763 + ceil32(return_data.size) + 96] = mem[_763 + mem[_763 + 96 len 4], 0 + 96]
                _4321 = mem[_763 + _4051 + 96]
                t = 0
                while t < 32 * _4321:
                    mem[t + _763 + ceil32(return_data.size) + 128] = mem[t + _763 + _4051 + 128]
                    t = t + 32
                    continue 
                mem[64] = (32 * _4321) + _763 + ceil32(return_data.size) + 128
                require mem[_763 + ceil32(return_data.size) + 96] - 1 < mem[_763 + ceil32(return_data.size) + 96]
                if mem[(32 * mem[_763 + ceil32(return_data.size) + 96] - 1) + _763 + ceil32(return_data.size) + 128] <= s:
                    idx = idx + 1
                    s = s
                    continue 
                idx = idx + 1
                s = mem[(32 * mem[_763 + ceil32(return_data.size) + 96] - 1) + _763 + ceil32(return_data.size) + 128]
                continue 
            if 2 == idx:
                _781 = mem[0]
                _811 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                require 0 < mem[_811]
                mem[_811 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                require 1 < mem[_811]
                mem[_811 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c
                mem[_811 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_811 + 100] = 0
                mem[_811 + 132] = 64
                mem[_811 + 164] = mem[_811]
                t = 0
                while t < 32 * mem[_811]:
                    mem[t + _811 + 196] = mem[t + _811 + 32]
                    t = t + 32
                    continue 
                require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c29.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args 0, 64, mem[_811 + 164 len (32 * mem[_811]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_811 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _811 + ceil32(return_data.size) + 96
                require return_data.size >= 32
                _4047 = mem[_811 + 96 len 4], 0
                require mem[_811 + 96 len 4], 0 <= 4294967296
                require mem[_811 + 96 len 4], 0 + 32 <= return_data.size
                require mem[_811 + mem[_811 + 96 len 4], 0 + 96] <= 4294967296 and mem[_811 + 96 len 4], 0 + (32 * mem[_811 + mem[_811 + 96 len 4], 0 + 96]) + 32 <= return_data.size
                mem[_811 + ceil32(return_data.size) + 96] = mem[_811 + mem[_811 + 96 len 4], 0 + 96]
                _4319 = mem[_811 + _4047 + 96]
                t = 0
                while t < 32 * _4319:
                    mem[t + _811 + ceil32(return_data.size) + 128] = mem[t + _811 + _4047 + 128]
                    t = t + 32
                    continue 
                mem[64] = (32 * _4319) + _811 + ceil32(return_data.size) + 128
                require mem[_811 + ceil32(return_data.size) + 96] - 1 < mem[_811 + ceil32(return_data.size) + 96]
                _8727 = mem[(32 * mem[_811 + ceil32(return_data.size) + 96] - 1) + _811 + ceil32(return_data.size) + 128]
                mem[(32 * _4319) + _811 + ceil32(return_data.size) + 128] = 2
                mem[0] = _781
                mem[(32 * _4319) + _811 + ceil32(return_data.size) + 160] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c
                mem[(32 * _4319) + _811 + ceil32(return_data.size) + 192] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                mem[(32 * _4319) + _811 + ceil32(return_data.size) + 224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[(32 * _4319) + _811 + ceil32(return_data.size) + 228] = _8727
                mem[(32 * _4319) + _811 + ceil32(return_data.size) + 260] = 64
                mem[(32 * _4319) + _811 + ceil32(return_data.size) + 292] = 2
                t = 0
                while t < 64:
                    mem[t + (32 * _4319) + _811 + ceil32(return_data.size) + 324] = mem[t + (32 * _4319) + _811 + ceil32(return_data.size) + 160]
                    t = t + 32
                    continue 
                require ext_code.size(0x67a937ea41cd05ec8c832a044afc0100f30aa4b5)
                staticcall 0x67a937ea41cd05ec8c832a044afc0100f30aa4b5.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args _8727, Array(len=2, data=mem[(32 * _4319) + _811 + ceil32(return_data.size) + 324 len 64])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * _4319) + _811 + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * _4319) + _811 + (2 * ceil32(return_data.size)) + 224
                require return_data.size >= 32
                _12735 = mem[(32 * _4319) + _811 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _8727) >> 32
                require mem[(32 * _4319) + _811 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _8727) >> 32 <= 4294967296
                require mem[(32 * _4319) + _811 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _8727) >> 32 + 32 <= return_data.size
                require mem[(32 * _4319) + _811 + ceil32(return_data.size) + mem[(32 * _4319) + _811 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _8727) >> 32 + 224] <= 4294967296 and mem[(32 * _4319) + _811 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _8727) >> 32 + (32 * mem[(32 * _4319) + _811 + ceil32(return_data.size) + mem[(32 * _4319) + _811 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _8727) >> 32 + 224]) + 32 <= return_data.size
                mem[(32 * _4319) + _811 + (2 * ceil32(return_data.size)) + 224] = mem[(32 * _4319) + _811 + ceil32(return_data.size) + mem[(32 * _4319) + _811 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _8727) >> 32 + 224]
                _12977 = mem[(32 * _4319) + _811 + ceil32(return_data.size) + _12735 + 224]
                t = 0
                while t < 32 * _12977:
                    mem[t + (32 * _4319) + _811 + (2 * ceil32(return_data.size)) + 256] = mem[t + (32 * _4319) + _811 + ceil32(return_data.size) + _12735 + 256]
                    t = t + 32
                    continue 
                mem[64] = (32 * _12977) + (32 * _4319) + _811 + (2 * ceil32(return_data.size)) + 256
                require mem[(32 * _4319) + _811 + (2 * ceil32(return_data.size)) + 224] - 1 < mem[(32 * _4319) + _811 + (2 * ceil32(return_data.size)) + 224]
                if mem[(32 * mem[(32 * _4319) + _811 + (2 * ceil32(return_data.size)) + 224] - 1) + (32 * _4319) + _811 + (2 * ceil32(return_data.size)) + 256] <= s:
                    idx = idx + 1
                    s = s
                    continue 
                idx = idx + 1
                s = mem[(32 * mem[(32 * _4319) + _811 + (2 * ceil32(return_data.size)) + 224] - 1) + (32 * _4319) + _811 + (2 * ceil32(return_data.size)) + 256]
                continue 
            if idx != 3:
                if 0 <= s:
                    idx = idx + 1
                    s = s
                    continue 
                idx = idx + 1
                s = 0
                continue 
            _809 = mem[0]
            _847 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            require 0 < mem[_847]
            mem[_847 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
            require 1 < mem[_847]
            mem[_847 + 64] = 0x5848b832e872d9edd84ac5718d58f21fd9c96
            mem[_847 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[_847 + 100] = 0
            mem[_847 + 132] = 64
            mem[_847 + 164] = mem[_847]
            t = 0
            while t < 32 * mem[_847]:
                mem[t + _847 + 196] = mem[t + _847 + 32]
                t = t + 32
                continue 
            require ext_code.size(0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52)
            staticcall 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52.getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args 0, 64, mem[_847 + 164 len (32 * mem[_847]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[_847 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = _847 + ceil32(return_data.size) + 96
            require return_data.size >= 32
            _4043 = mem[_847 + 96 len 4], 0
            require mem[_847 + 96 len 4], 0 <= 4294967296
            require mem[_847 + 96 len 4], 0 + 32 <= return_data.size
            require mem[_847 + mem[_847 + 96 len 4], 0 + 96] <= 4294967296 and mem[_847 + 96 len 4], 0 + (32 * mem[_847 + mem[_847 + 96 len 4], 0 + 96]) + 32 <= return_data.size
            mem[_847 + ceil32(return_data.size) + 96] = mem[_847 + mem[_847 + 96 len 4], 0 + 96]
            _4317 = mem[_847 + _4043 + 96]
            t = 0
            while t < 32 * _4317:
                mem[t + _847 + ceil32(return_data.size) + 128] = mem[t + _847 + _4043 + 128]
                t = t + 32
                continue 
            mem[64] = (32 * _4317) + _847 + ceil32(return_data.size) + 128
            require mem[_847 + ceil32(return_data.size) + 96] - 1 < mem[_847 + ceil32(return_data.size) + 96]
            _8725 = mem[(32 * mem[_847 + ceil32(return_data.size) + 96] - 1) + _847 + ceil32(return_data.size) + 128]
            mem[(32 * _4317) + _847 + ceil32(return_data.size) + 128] = 3
            mem[(32 * _4317) + _847 + ceil32(return_data.size) + 160] = 0x5848b832e872d9edd84ac5718d58f21fd9c96
            mem[0] = _809
            mem[(32 * _4317) + _847 + ceil32(return_data.size) + 192] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c
            mem[(32 * _4317) + _847 + ceil32(return_data.size) + 224] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
            mem[(32 * _4317) + _847 + ceil32(return_data.size) + 256] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[(32 * _4317) + _847 + ceil32(return_data.size) + 260] = _8725
            mem[(32 * _4317) + _847 + ceil32(return_data.size) + 292] = 64
            mem[(32 * _4317) + _847 + ceil32(return_data.size) + 324] = 3
            t = 0
            while t < 96:
                mem[t + (32 * _4317) + _847 + ceil32(return_data.size) + 356] = mem[t + (32 * _4317) + _847 + ceil32(return_data.size) + 160]
                t = t + 32
                continue 
            require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
            staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c29.getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args _8725, Array(len=3, data=mem[(32 * _4317) + _847 + ceil32(return_data.size) + 356 len 96])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _4317) + _847 + ceil32(return_data.size) + 256 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * _4317) + _847 + (2 * ceil32(return_data.size)) + 256
            require return_data.size >= 32
            _12731 = mem[(32 * _4317) + _847 + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _8725) >> 32
            require mem[(32 * _4317) + _847 + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _8725) >> 32 <= 4294967296
            require mem[(32 * _4317) + _847 + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _8725) >> 32 + 32 <= return_data.size
            require mem[(32 * _4317) + _847 + ceil32(return_data.size) + mem[(32 * _4317) + _847 + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _8725) >> 32 + 256] <= 4294967296 and mem[(32 * _4317) + _847 + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _8725) >> 32 + (32 * mem[(32 * _4317) + _847 + ceil32(return_data.size) + mem[(32 * _4317) + _847 + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _8725) >> 32 + 256]) + 32 <= return_data.size
            mem[(32 * _4317) + _847 + (2 * ceil32(return_data.size)) + 256] = mem[(32 * _4317) + _847 + ceil32(return_data.size) + mem[(32 * _4317) + _847 + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _8725) >> 32 + 256]
            _12975 = mem[(32 * _4317) + _847 + ceil32(return_data.size) + _12731 + 256]
            t = 0
            while t < 32 * _12975:
                mem[t + (32 * _4317) + _847 + (2 * ceil32(return_data.size)) + 288] = mem[t + (32 * _4317) + _847 + ceil32(return_data.size) + _12731 + 288]
                t = t + 32
                continue 
            mem[64] = (32 * _12975) + (32 * _4317) + _847 + (2 * ceil32(return_data.size)) + 288
            require mem[(32 * _4317) + _847 + (2 * ceil32(return_data.size)) + 256] - 1 < mem[(32 * _4317) + _847 + (2 * ceil32(return_data.size)) + 256]
            if mem[(32 * mem[(32 * _4317) + _847 + (2 * ceil32(return_data.size)) + 256] - 1) + (32 * _4317) + _847 + (2 * ceil32(return_data.size)) + 288] <= s:
                idx = idx + 1
                s = s
                continue 
            idx = idx + 1
            s = mem[(32 * mem[(32 * _4317) + _847 + (2 * ceil32(return_data.size)) + 256] - 1) + (32 * _4317) + _847 + (2 * ceil32(return_data.size)) + 288]
            continue 
        idx = 0
        t = 0
        while idx < 4:
            if not idx:
                require ext_code.size(0xa0828ee559110b041dedbf10ae0cf42274251de1)
                staticcall 0xa0828ee559110b041dedbf10ae0cf42274251de1.reserve0() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(0xa0828ee559110b041dedbf10ae0cf42274251de1)
                staticcall 0xa0828ee559110b041dedbf10ae0cf42274251de1.reserve1() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(0x83000000000000000000000000ad84341756bf337f5a0164515b1f6f993d194e)
                staticcall 0x83000000000000000000000000ad84341756bf337f5a0164515b1f6f993d194e.decimals() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(0x4900000000000000000000000004068da6c83afcfa0e13ba15a6696662335d5b)
                staticcall 0x4900000000000000000000000004068da6c83afcfa0e13ba15a6696662335d5b.decimals() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(0x4068da6c83afcfa0e13ba15a6696662335d5b)
                staticcall 0x4068da6c83afcfa0e13ba15a6696662335d5b.decimals() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(0x83000000000000000000000000ad84341756bf337f5a0164515b1f6f993d194e)
                staticcall 0x83000000000000000000000000ad84341756bf337f5a0164515b1f6f993d194e.decimals() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not 3 * s:
                    _6942 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_6942] = 26
                    mem[_6942 + 32] = 'SafeMath: division by zero'
                    if not 10^uint8(ext_call.return_data[0]):
                        _7065 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _7065 + 68] = mem[idx + _6942 + 32]
                            idx = idx + 32
                            continue 
                        mem[_7065 + 68] = mem[_7065 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _7065 + -mem[64] + 100
                    require 10^uint8(ext_call.return_data[0] - 6)
                    require 10^uint8(ext_call.return_data[0] - 6)
                    u = 0
                    v = 0 / 10^uint8(ext_call.return_data[0])
                    while u < 10000:
                        require 10^uint8(ext_call.return_data[0] - 6)
                        require 10^uint8(ext_call.return_data[0] - 6)
                        if ((ext_call.return_data[0] - v / 10^uint8(ext_call.return_data[0] - 6))^2 * ext_call.return_data[0] - v / 10^uint8(ext_call.return_data[0] - 6) * ext_call.return_data[0] + s / 10^uint8(ext_call.return_data[0] - 6)) + ((ext_call.return_data[0] + s / 10^uint8(ext_call.return_data[0] - 6))^2 * ext_call.return_data[0] - v / 10^uint8(ext_call.return_data[0] - 6) * ext_call.return_data[0] + s / 10^uint8(ext_call.return_data[0] - 6)) / 2 <= ((ext_call.return_data[0] / 10^uint8(ext_call.return_data[0] - 6))^2 * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0] - 6) * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0] - 6)) + ((ext_call.return_data[0] / 10^uint8(ext_call.return_data[0] - 6))^2 * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0] - 6) * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0] - 6)) / 2:
                            u = u + 1
                            v = 99000 * v / 100000
                            continue 
                        if not v:
                            _9740 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_9740] = 26
                            mem[_9740 + 32] = 'SafeMath: division by zero'
                            _10876 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_10876] = 30
                            mem[_10876 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= v:
                                if v <= t:
                                    idx = idx + 1
                                    t = t
                                    continue 
                                idx = idx + 1
                                t = v
                                continue 
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                            idx = 32
                            while idx < 30:
                                mem[idx + mem[64] + 68] = mem[idx + _10876 + 32]
                                idx = idx + 32
                                continue 
                        else:
                            if 5 * v / v != 5:
                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            _9962 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_9962] = 26
                            mem[_9962 + 32] = 'SafeMath: division by zero'
                            _11133 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_11133] = 30
                            mem[_11133 + 32] = 'SafeMath: subtraction overflow'
                            if 5 * v / 1000 <= v:
                                if v - (5 * v / 1000) <= t:
                                    idx = idx + 1
                                    t = t
                                    continue 
                                idx = idx + 1
                                t = v - (5 * v / 1000)
                                continue 
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                            idx = 32
                            while idx < 30:
                                mem[idx + mem[64] + 68] = mem[idx + _11133 + 32]
                                idx = idx + 32
                                continue 
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not v:
                        _9165 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_9165] = 26
                        mem[_9165 + 32] = 'SafeMath: division by zero'
                        _9848 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_9848] = 30
                        mem[_9848 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= v:
                            if v <= t:
                                idx = idx + 1
                                t = t
                                continue 
                            idx = idx + 1
                            t = v
                            continue 
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                        idx = 32
                        while idx < 30:
                            mem[idx + mem[64] + 68] = mem[idx + _9848 + 32]
                            idx = idx + 32
                            continue 
                    else:
                        if 5 * v / v != 5:
                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _9310 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_9310] = 26
                        mem[_9310 + 32] = 'SafeMath: division by zero'
                        _10100 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_10100] = 30
                        mem[_10100 + 32] = 'SafeMath: subtraction overflow'
                        if 5 * v / 1000 <= v:
                            if v - (5 * v / 1000) <= t:
                                idx = idx + 1
                                t = t
                                continue 
                            idx = idx + 1
                            t = v - (5 * v / 1000)
                            continue 
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                        idx = 32
                        while idx < 30:
                            mem[idx + mem[64] + 68] = mem[idx + _10100 + 32]
                            idx = idx + 32
                            continue 
                else:
                    if 3 * 10^uint8(ext_call.return_data[0]) * s / 3 * s != 10^uint8(ext_call.return_data[0]):
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _7064 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_7064] = 26
                    mem[_7064 + 32] = 'SafeMath: division by zero'
                    if not 10^uint8(ext_call.return_data[0]):
                        _7174 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _7174 + 68] = mem[idx + _7064 + 32]
                            idx = idx + 32
                            continue 
                        mem[_7174 + 68] = mem[_7174 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _7174 + -mem[64] + 100
                    require 10^uint8(ext_call.return_data[0] - 6)
                    require 10^uint8(ext_call.return_data[0] - 6)
                    u = 0
                    v = 3 * 10^uint8(ext_call.return_data[0]) * s / 10^uint8(ext_call.return_data[0])
                    while u < 10000:
                        require 10^uint8(ext_call.return_data[0] - 6)
                        require 10^uint8(ext_call.return_data[0] - 6)
                        if ((ext_call.return_data[0] - v / 10^uint8(ext_call.return_data[0] - 6))^2 * ext_call.return_data[0] - v / 10^uint8(ext_call.return_data[0] - 6) * ext_call.return_data[0] + s / 10^uint8(ext_call.return_data[0] - 6)) + ((ext_call.return_data[0] + s / 10^uint8(ext_call.return_data[0] - 6))^2 * ext_call.return_data[0] - v / 10^uint8(ext_call.return_data[0] - 6) * ext_call.return_data[0] + s / 10^uint8(ext_call.return_data[0] - 6)) / 2 <= ((ext_call.return_data[0] / 10^uint8(ext_call.return_data[0] - 6))^2 * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0] - 6) * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0] - 6)) + ((ext_call.return_data[0] / 10^uint8(ext_call.return_data[0] - 6))^2 * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0] - 6) * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0] - 6)) / 2:
                            u = u + 1
                            v = 99000 * v / 100000
                            continue 
                        if not v:
                            _9739 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_9739] = 26
                            mem[_9739 + 32] = 'SafeMath: division by zero'
                            _10872 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_10872] = 30
                            mem[_10872 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= v:
                                if v <= t:
                                    idx = idx + 1
                                    t = t
                                    continue 
                                idx = idx + 1
                                t = v
                                continue 
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                            idx = 32
                            while idx < 30:
                                mem[idx + mem[64] + 68] = mem[idx + _10872 + 32]
                                idx = idx + 32
                                continue 
                        else:
                            if 5 * v / v != 5:
                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            _9961 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_9961] = 26
                            mem[_9961 + 32] = 'SafeMath: division by zero'
                            _11128 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_11128] = 30
                            mem[_11128 + 32] = 'SafeMath: subtraction overflow'
                            if 5 * v / 1000 <= v:
                                if v - (5 * v / 1000) <= t:
                                    idx = idx + 1
                                    t = t
                                    continue 
                                idx = idx + 1
                                t = v - (5 * v / 1000)
                                continue 
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                            idx = 32
                            while idx < 30:
                                mem[idx + mem[64] + 68] = mem[idx + _11128 + 32]
                                idx = idx + 32
                                continue 
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not v:
                        _9164 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_9164] = 26
                        mem[_9164 + 32] = 'SafeMath: division by zero'
                        _9847 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_9847] = 30
                        mem[_9847 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= v:
                            if v <= t:
                                idx = idx + 1
                                t = t
                                continue 
                            idx = idx + 1
                            t = v
                            continue 
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                        idx = 32
                        while idx < 30:
                            mem[idx + mem[64] + 68] = mem[idx + _9847 + 32]
                            idx = idx + 32
                            continue 
                    else:
                        if 5 * v / v != 5:
                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _9309 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_9309] = 26
                        mem[_9309 + 32] = 'SafeMath: division by zero'
                        _10096 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_10096] = 30
                        mem[_10096 + 32] = 'SafeMath: subtraction overflow'
                        if 5 * v / 1000 <= v:
                            if v - (5 * v / 1000) <= t:
                                idx = idx + 1
                                t = t
                                continue 
                            idx = idx + 1
                            t = v - (5 * v / 1000)
                            continue 
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                        idx = 32
                        while idx < 30:
                            mem[idx + mem[64] + 68] = mem[idx + _10096 + 32]
                            idx = idx + 32
                            continue 
                revert with 0, 'SafeMath: subtraction overflow'
            if 1 == idx:
                _4039 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                require 0 < mem[_4039]
                mem[_4039 + 32] = 0xad84341756bf337f5a0164515b1f6f993d194e
                require 1 < mem[_4039]
                mem[_4039 + 64] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                mem[_4039 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_4039 + 100] = s
                mem[_4039 + 132] = 64
                mem[_4039 + 164] = mem[_4039]
                u = 0
                while u < 32 * mem[_4039]:
                    mem[u + _4039 + 196] = mem[u + _4039 + 32]
                    u = u + 32
                    continue 
                require ext_code.size(0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52)
                staticcall 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args s, 64, mem[_4039 + 164 len (32 * mem[_4039]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_4039 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _4039 + ceil32(return_data.size) + 96
                require return_data.size >= 32
                _8967 = mem[_4039 + 96 len 4], Mask(224, 32, s) >> 32
                require mem[_4039 + 96 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                require mem[_4039 + 96 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                require mem[_4039 + mem[_4039 + 96 len 4], Mask(224, 32, s) >> 32 + 96] <= 4294967296 and mem[_4039 + 96 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_4039 + mem[_4039 + 96 len 4], Mask(224, 32, s) >> 32 + 96]) + 32 <= return_data.size
                mem[_4039 + ceil32(return_data.size) + 96] = mem[_4039 + mem[_4039 + 96 len 4], Mask(224, 32, s) >> 32 + 96]
                _9251 = mem[_4039 + _8967 + 96]
                s = 0
                while s < 32 * _9251:
                    mem[s + _4039 + ceil32(return_data.size) + 128] = mem[s + _4039 + _8967 + 128]
                    s = s + 32
                    continue 
                mem[64] = (32 * _9251) + _4039 + ceil32(return_data.size) + 128
                require mem[_4039 + ceil32(return_data.size) + 96] - 1 < mem[_4039 + ceil32(return_data.size) + 96]
                if mem[(32 * mem[_4039 + ceil32(return_data.size) + 96] - 1) + _4039 + ceil32(return_data.size) + 128] <= t:
                    idx = idx + 1
                    t = t
                    continue 
                idx = idx + 1
                t = mem[(32 * mem[_4039 + ceil32(return_data.size) + 96] - 1) + _4039 + ceil32(return_data.size) + 128]
                continue 
            if idx != 2:
                if idx != 3:
                    if s <= t:
                        idx = idx + 1
                        t = t
                        continue 
                    idx = idx + 1
                    t = s
                    continue 
                _4295 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                require 0 < mem[_4295]
                mem[_4295 + 32] = 0xad84341756bf337f5a0164515b1f6f993d194e
                require 1 < mem[_4295]
                mem[_4295 + 64] = 0x5848b832e872d9edd84ac5718d58f21fd9c96
                mem[_4295 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_4295 + 100] = s
                mem[_4295 + 132] = 64
                mem[_4295 + 164] = mem[_4295]
                u = 0
                while u < 32 * mem[_4295]:
                    mem[u + _4295 + 196] = mem[u + _4295 + 32]
                    u = u + 32
                    continue 
                require ext_code.size(0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52)
                staticcall 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args s, 64, mem[_4295 + 164 len (32 * mem[_4295]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_4295 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _4295 + ceil32(return_data.size) + 96
                require return_data.size >= 32
                _8959 = mem[_4295 + 96 len 4], Mask(224, 32, s) >> 32
                require mem[_4295 + 96 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                require mem[_4295 + 96 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                require mem[_4295 + mem[_4295 + 96 len 4], Mask(224, 32, s) >> 32 + 96] <= 4294967296 and mem[_4295 + 96 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_4295 + mem[_4295 + 96 len 4], Mask(224, 32, s) >> 32 + 96]) + 32 <= return_data.size
                mem[_4295 + ceil32(return_data.size) + 96] = mem[_4295 + mem[_4295 + 96 len 4], Mask(224, 32, s) >> 32 + 96]
                _9247 = mem[_4295 + _8959 + 96]
                s = 0
                while s < 32 * _9247:
                    mem[s + _4295 + ceil32(return_data.size) + 128] = mem[s + _4295 + _8959 + 128]
                    s = s + 32
                    continue 
                require mem[_4295 + ceil32(return_data.size) + 96] - 1 < mem[_4295 + ceil32(return_data.size) + 96]
                _12391 = mem[(32 * mem[_4295 + ceil32(return_data.size) + 96] - 1) + _4295 + ceil32(return_data.size) + 128]
                mem[(32 * _9247) + _4295 + ceil32(return_data.size) + 128] = 3
                mem[(32 * _9247) + _4295 + ceil32(return_data.size) + 160] = 0x5848b832e872d9edd84ac5718d58f21fd9c96
                mem[(32 * _9247) + _4295 + ceil32(return_data.size) + 192] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c
                mem[(32 * _9247) + _4295 + ceil32(return_data.size) + 224] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                mem[(32 * _9247) + _4295 + ceil32(return_data.size) + 256] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[(32 * _9247) + _4295 + ceil32(return_data.size) + 260] = _12391
                mem[(32 * _9247) + _4295 + ceil32(return_data.size) + 292] = 64
                mem[(32 * _9247) + _4295 + ceil32(return_data.size) + 324] = 3
                s = 0
                while s < 96:
                    mem[s + (32 * _9247) + _4295 + ceil32(return_data.size) + 356] = mem[s + (32 * _9247) + _4295 + ceil32(return_data.size) + 160]
                    s = s + 32
                    continue 
                require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c29.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args _12391, Array(len=3, data=mem[(32 * _9247) + _4295 + ceil32(return_data.size) + 356 len 96])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * _9247) + _4295 + ceil32(return_data.size) + 256 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * _9247) + _4295 + (2 * ceil32(return_data.size)) + 256
                require return_data.size >= 32
                _13635 = mem[(32 * _9247) + _4295 + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _12391) >> 32
                require mem[(32 * _9247) + _4295 + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _12391) >> 32 <= 4294967296
                require mem[(32 * _9247) + _4295 + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _12391) >> 32 + 32 <= return_data.size
                require mem[(32 * _9247) + _4295 + ceil32(return_data.size) + mem[(32 * _9247) + _4295 + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _12391) >> 32 + 256] <= 4294967296 and mem[(32 * _9247) + _4295 + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _12391) >> 32 + (32 * mem[(32 * _9247) + _4295 + ceil32(return_data.size) + mem[(32 * _9247) + _4295 + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _12391) >> 32 + 256]) + 32 <= return_data.size
                mem[(32 * _9247) + _4295 + (2 * ceil32(return_data.size)) + 256] = mem[(32 * _9247) + _4295 + ceil32(return_data.size) + mem[(32 * _9247) + _4295 + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _12391) >> 32 + 256]
                _13715 = mem[(32 * _9247) + _4295 + ceil32(return_data.size) + _13635 + 256]
                s = 0
                while s < 32 * _13715:
                    mem[s + (32 * _9247) + _4295 + (2 * ceil32(return_data.size)) + 288] = mem[s + (32 * _9247) + _4295 + ceil32(return_data.size) + _13635 + 288]
                    s = s + 32
                    continue 
                mem[64] = (32 * _13715) + (32 * _9247) + _4295 + (2 * ceil32(return_data.size)) + 288
                require mem[(32 * _9247) + _4295 + (2 * ceil32(return_data.size)) + 256] - 1 < mem[(32 * _9247) + _4295 + (2 * ceil32(return_data.size)) + 256]
                if mem[(32 * mem[(32 * _9247) + _4295 + (2 * ceil32(return_data.size)) + 256] - 1) + (32 * _9247) + _4295 + (2 * ceil32(return_data.size)) + 288] <= t:
                    idx = idx + 1
                    t = t
                    continue 
                idx = idx + 1
                t = mem[(32 * mem[(32 * _9247) + _4295 + (2 * ceil32(return_data.size)) + 256] - 1) + (32 * _9247) + _4295 + (2 * ceil32(return_data.size)) + 288]
                continue 
            _4103 = mem[0]
            _4187 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            require 0 < mem[_4187]
            mem[_4187 + 32] = 0xad84341756bf337f5a0164515b1f6f993d194e
            require 1 < mem[_4187]
            mem[_4187 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c
            mem[_4187 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[_4187 + 100] = s
            mem[_4187 + 132] = 64
            mem[_4187 + 164] = mem[_4187]
            u = 0
            while u < 32 * mem[_4187]:
                mem[u + _4187 + 196] = mem[u + _4187 + 32]
                u = u + 32
                continue 
            require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
            staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c29.getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args s, 64, mem[_4187 + 164 len (32 * mem[_4187]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[_4187 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = _4187 + ceil32(return_data.size) + 96
            require return_data.size >= 32
            _8963 = mem[_4187 + 96 len 4], Mask(224, 32, s) >> 32
            require mem[_4187 + 96 len 4], Mask(224, 32, s) >> 32 <= 4294967296
            require mem[_4187 + 96 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
            require mem[_4187 + mem[_4187 + 96 len 4], Mask(224, 32, s) >> 32 + 96] <= 4294967296 and mem[_4187 + 96 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_4187 + mem[_4187 + 96 len 4], Mask(224, 32, s) >> 32 + 96]) + 32 <= return_data.size
            mem[_4187 + ceil32(return_data.size) + 96] = mem[_4187 + mem[_4187 + 96 len 4], Mask(224, 32, s) >> 32 + 96]
            _9249 = mem[_4187 + _8963 + 96]
            s = 0
            while s < 32 * _9249:
                mem[s + _4187 + ceil32(return_data.size) + 128] = mem[s + _4187 + _8963 + 128]
                s = s + 32
                continue 
            mem[64] = (32 * _9249) + _4187 + ceil32(return_data.size) + 128
            require mem[_4187 + ceil32(return_data.size) + 96] - 1 < mem[_4187 + ceil32(return_data.size) + 96]
            _12393 = mem[(32 * mem[_4187 + ceil32(return_data.size) + 96] - 1) + _4187 + ceil32(return_data.size) + 128]
            mem[(32 * _9249) + _4187 + ceil32(return_data.size) + 128] = 2
            mem[0] = _4103
            mem[(32 * _9249) + _4187 + ceil32(return_data.size) + 160] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c
            mem[(32 * _9249) + _4187 + ceil32(return_data.size) + 192] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
            mem[(32 * _9249) + _4187 + ceil32(return_data.size) + 224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[(32 * _9249) + _4187 + ceil32(return_data.size) + 228] = _12393
            mem[(32 * _9249) + _4187 + ceil32(return_data.size) + 260] = 64
            mem[(32 * _9249) + _4187 + ceil32(return_data.size) + 292] = 2
            s = 0
            while s < 64:
                mem[s + (32 * _9249) + _4187 + ceil32(return_data.size) + 324] = mem[s + (32 * _9249) + _4187 + ceil32(return_data.size) + 160]
                s = s + 32
                continue 
            require ext_code.size(0x67a937ea41cd05ec8c832a044afc0100f30aa4b5)
            staticcall 0x67a937ea41cd05ec8c832a044afc0100f30aa4b5.getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args _12393, Array(len=2, data=mem[(32 * _9249) + _4187 + ceil32(return_data.size) + 324 len 64])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _9249) + _4187 + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * _9249) + _4187 + (2 * ceil32(return_data.size)) + 224
            require return_data.size >= 32
            _13639 = mem[(32 * _9249) + _4187 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _12393) >> 32
            require mem[(32 * _9249) + _4187 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _12393) >> 32 <= 4294967296
            require mem[(32 * _9249) + _4187 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _12393) >> 32 + 32 <= return_data.size
            require mem[(32 * _9249) + _4187 + ceil32(return_data.size) + mem[(32 * _9249) + _4187 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _12393) >> 32 + 224] <= 4294967296 and mem[(32 * _9249) + _4187 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _12393) >> 32 + (32 * mem[(32 * _9249) + _4187 + ceil32(return_data.size) + mem[(32 * _9249) + _4187 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _12393) >> 32 + 224]) + 32 <= return_data.size
            mem[(32 * _9249) + _4187 + (2 * ceil32(return_data.size)) + 224] = mem[(32 * _9249) + _4187 + ceil32(return_data.size) + mem[(32 * _9249) + _4187 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _12393) >> 32 + 224]
            _13717 = mem[(32 * _9249) + _4187 + ceil32(return_data.size) + _13639 + 224]
            s = 0
            while s < 32 * _13717:
                mem[s + (32 * _9249) + _4187 + (2 * ceil32(return_data.size)) + 256] = mem[s + (32 * _9249) + _4187 + ceil32(return_data.size) + _13639 + 256]
                s = s + 32
                continue 
            mem[64] = (32 * _13717) + (32 * _9249) + _4187 + (2 * ceil32(return_data.size)) + 256
            require mem[(32 * _9249) + _4187 + (2 * ceil32(return_data.size)) + 224] - 1 < mem[(32 * _9249) + _4187 + (2 * ceil32(return_data.size)) + 224]
            if mem[(32 * mem[(32 * _9249) + _4187 + (2 * ceil32(return_data.size)) + 224] - 1) + (32 * _9249) + _4187 + (2 * ceil32(return_data.size)) + 256] <= t:
                idx = idx + 1
                t = t
                continue 
            idx = idx + 1
            t = mem[(32 * mem[(32 * _9249) + _4187 + (2 * ceil32(return_data.size)) + 224] - 1) + (32 * _9249) + _4187 + (2 * ceil32(return_data.size)) + 256]
            continue 
    else:
        if 10^6 * sub_7d0b6809 / sub_7d0b6809 != 10^6:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        idx = 0
        s = 0
        while idx < 4:
            if not idx:
                require ext_code.size(0xa0828ee559110b041dedbf10ae0cf42274251de1)
                staticcall 0xa0828ee559110b041dedbf10ae0cf42274251de1.reserve0() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(0xa0828ee559110b041dedbf10ae0cf42274251de1)
                staticcall 0xa0828ee559110b041dedbf10ae0cf42274251de1.reserve1() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(0x83000000000000000000000000ad84341756bf337f5a0164515b1f6f993d194e)
                staticcall 0x83000000000000000000000000ad84341756bf337f5a0164515b1f6f993d194e.decimals() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(0x4900000000000000000000000004068da6c83afcfa0e13ba15a6696662335d5b)
                staticcall 0x4900000000000000000000000004068da6c83afcfa0e13ba15a6696662335d5b.decimals() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(0x4068da6c83afcfa0e13ba15a6696662335d5b)
                staticcall 0x4068da6c83afcfa0e13ba15a6696662335d5b.decimals() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(0x83000000000000000000000000ad84341756bf337f5a0164515b1f6f993d194e)
                staticcall 0x83000000000000000000000000ad84341756bf337f5a0164515b1f6f993d194e.decimals() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not 3 * 10^6 * sub_7d0b6809:
                    _2100 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2100] = 26
                    mem[_2100 + 32] = 'SafeMath: division by zero'
                    if not 10^uint8(ext_call.return_data[0]):
                        _2167 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _2167 + 68] = mem[idx + _2100 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2167 + 68] = mem[_2167 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _2167 + -mem[64] + 100
                    require 10^uint8(ext_call.return_data[0] - 6)
                    require 10^uint8(ext_call.return_data[0] - 6)
                    t = 0
                    u = 0 / 10^uint8(ext_call.return_data[0])
                    while t < 10000:
                        require 10^uint8(ext_call.return_data[0] - 6)
                        require 10^uint8(ext_call.return_data[0] - 6)
                        if ((ext_call.return_data[0] - u / 10^uint8(ext_call.return_data[0] - 6))^2 * ext_call.return_data[0] - u / 10^uint8(ext_call.return_data[0] - 6) * ext_call.return_data[0] + (10^6 * sub_7d0b6809) / 10^uint8(ext_call.return_data[0] - 6)) + ((ext_call.return_data[0] + (10^6 * sub_7d0b6809) / 10^uint8(ext_call.return_data[0] - 6))^2 * ext_call.return_data[0] - u / 10^uint8(ext_call.return_data[0] - 6) * ext_call.return_data[0] + (10^6 * sub_7d0b6809) / 10^uint8(ext_call.return_data[0] - 6)) / 2 <= ((ext_call.return_data[0] / 10^uint8(ext_call.return_data[0] - 6))^2 * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0] - 6) * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0] - 6)) + ((ext_call.return_data[0] / 10^uint8(ext_call.return_data[0] - 6))^2 * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0] - 6) * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0] - 6)) / 2:
                            t = t + 1
                            u = 99000 * u / 100000
                            continue 
                        if not u:
                            _4980 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_4980] = 26
                            mem[_4980 + 32] = 'SafeMath: division by zero'
                            _5978 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_5978] = 30
                            mem[_5978 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= u:
                                if u <= s:
                                    idx = idx + 1
                                    s = s
                                    continue 
                                idx = idx + 1
                                s = u
                                continue 
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                            idx = 32
                            while idx < 30:
                                mem[idx + mem[64] + 68] = mem[idx + _5978 + 32]
                                idx = idx + 32
                                continue 
                        else:
                            if 5 * u / u != 5:
                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            _5246 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_5246] = 26
                            mem[_5246 + 32] = 'SafeMath: division by zero'
                            _6229 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_6229] = 30
                            mem[_6229 + 32] = 'SafeMath: subtraction overflow'
                            if 5 * u / 1000 <= u:
                                if u - (5 * u / 1000) <= s:
                                    idx = idx + 1
                                    s = s
                                    continue 
                                idx = idx + 1
                                s = u - (5 * u / 1000)
                                continue 
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                            idx = 32
                            while idx < 30:
                                mem[idx + mem[64] + 68] = mem[idx + _6229 + 32]
                                idx = idx + 32
                                continue 
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not u:
                        _4155 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4155] = 26
                        mem[_4155 + 32] = 'SafeMath: division by zero'
                        _5100 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5100] = 30
                        mem[_5100 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= u:
                            if u <= s:
                                idx = idx + 1
                                s = s
                                continue 
                            idx = idx + 1
                            s = u
                            continue 
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                        idx = 32
                        while idx < 30:
                            mem[idx + mem[64] + 68] = mem[idx + _5100 + 32]
                            idx = idx + 32
                            continue 
                    else:
                        if 5 * u / u != 5:
                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _4388 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4388] = 26
                        mem[_4388 + 32] = 'SafeMath: division by zero'
                        _5358 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5358] = 30
                        mem[_5358 + 32] = 'SafeMath: subtraction overflow'
                        if 5 * u / 1000 <= u:
                            if u - (5 * u / 1000) <= s:
                                idx = idx + 1
                                s = s
                                continue 
                            idx = idx + 1
                            s = u - (5 * u / 1000)
                            continue 
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                        idx = 32
                        while idx < 30:
                            mem[idx + mem[64] + 68] = mem[idx + _5358 + 32]
                            idx = idx + 32
                            continue 
                else:
                    if 3 * 10^6 * 10^uint8(ext_call.return_data[0]) * sub_7d0b6809 / 3 * 10^6 * sub_7d0b6809 != 10^uint8(ext_call.return_data[0]):
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _2166 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2166] = 26
                    mem[_2166 + 32] = 'SafeMath: division by zero'
                    if not 10^uint8(ext_call.return_data[0]):
                        _2226 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _2226 + 68] = mem[idx + _2166 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2226 + 68] = mem[_2226 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _2226 + -mem[64] + 100
                    require 10^uint8(ext_call.return_data[0] - 6)
                    require 10^uint8(ext_call.return_data[0] - 6)
                    t = 0
                    u = 3 * 10^6 * 10^uint8(ext_call.return_data[0]) * sub_7d0b6809 / 10^uint8(ext_call.return_data[0])
                    while t < 10000:
                        require 10^uint8(ext_call.return_data[0] - 6)
                        require 10^uint8(ext_call.return_data[0] - 6)
                        if ((ext_call.return_data[0] - u / 10^uint8(ext_call.return_data[0] - 6))^2 * ext_call.return_data[0] - u / 10^uint8(ext_call.return_data[0] - 6) * ext_call.return_data[0] + (10^6 * sub_7d0b6809) / 10^uint8(ext_call.return_data[0] - 6)) + ((ext_call.return_data[0] + (10^6 * sub_7d0b6809) / 10^uint8(ext_call.return_data[0] - 6))^2 * ext_call.return_data[0] - u / 10^uint8(ext_call.return_data[0] - 6) * ext_call.return_data[0] + (10^6 * sub_7d0b6809) / 10^uint8(ext_call.return_data[0] - 6)) / 2 <= ((ext_call.return_data[0] / 10^uint8(ext_call.return_data[0] - 6))^2 * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0] - 6) * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0] - 6)) + ((ext_call.return_data[0] / 10^uint8(ext_call.return_data[0] - 6))^2 * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0] - 6) * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0] - 6)) / 2:
                            t = t + 1
                            u = 99000 * u / 100000
                            continue 
                        if not u:
                            _4979 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_4979] = 26
                            mem[_4979 + 32] = 'SafeMath: division by zero'
                            _5974 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_5974] = 30
                            mem[_5974 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= u:
                                if u <= s:
                                    idx = idx + 1
                                    s = s
                                    continue 
                                idx = idx + 1
                                s = u
                                continue 
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                            idx = 32
                            while idx < 30:
                                mem[idx + mem[64] + 68] = mem[idx + _5974 + 32]
                                idx = idx + 32
                                continue 
                        else:
                            if 5 * u / u != 5:
                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            _5245 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_5245] = 26
                            mem[_5245 + 32] = 'SafeMath: division by zero'
                            _6224 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_6224] = 30
                            mem[_6224 + 32] = 'SafeMath: subtraction overflow'
                            if 5 * u / 1000 <= u:
                                if u - (5 * u / 1000) <= s:
                                    idx = idx + 1
                                    s = s
                                    continue 
                                idx = idx + 1
                                s = u - (5 * u / 1000)
                                continue 
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                            idx = 32
                            while idx < 30:
                                mem[idx + mem[64] + 68] = mem[idx + _6224 + 32]
                                idx = idx + 32
                                continue 
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not u:
                        _4154 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4154] = 26
                        mem[_4154 + 32] = 'SafeMath: division by zero'
                        _5099 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5099] = 30
                        mem[_5099 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= u:
                            if u <= s:
                                idx = idx + 1
                                s = s
                                continue 
                            idx = idx + 1
                            s = u
                            continue 
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                        idx = 32
                        while idx < 30:
                            mem[idx + mem[64] + 68] = mem[idx + _5099 + 32]
                            idx = idx + 32
                            continue 
                    else:
                        if 5 * u / u != 5:
                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _4387 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4387] = 26
                        mem[_4387 + 32] = 'SafeMath: division by zero'
                        _5354 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5354] = 30
                        mem[_5354 + 32] = 'SafeMath: subtraction overflow'
                        if 5 * u / 1000 <= u:
                            if u - (5 * u / 1000) <= s:
                                idx = idx + 1
                                s = s
                                continue 
                            idx = idx + 1
                            s = u - (5 * u / 1000)
                            continue 
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                        idx = 32
                        while idx < 30:
                            mem[idx + mem[64] + 68] = mem[idx + _5354 + 32]
                            idx = idx + 32
                            continue 
                revert with 0, 'SafeMath: subtraction overflow'
            if 1 == idx:
                _751 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                require 0 < mem[_751]
                mem[_751 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                require 1 < mem[_751]
                mem[_751 + 64] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                mem[_751 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_751 + 100] = 10^6 * sub_7d0b6809
                mem[_751 + 132] = 64
                mem[_751 + 164] = mem[_751]
                t = 0
                while t < 32 * mem[_751]:
                    mem[t + _751 + 196] = mem[t + _751 + 32]
                    t = t + 32
                    continue 
                require ext_code.size(0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52)
                staticcall 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args 10^6 * sub_7d0b6809, 64, mem[_751 + 164 len (32 * mem[_751]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_751 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _751 + ceil32(return_data.size) + 96
                require return_data.size >= 32
                _4023 = mem[_751 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32
                require mem[_751 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 <= 4294967296
                require mem[_751 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 32 <= return_data.size
                require mem[_751 + mem[_751 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 96] <= 4294967296 and mem[_751 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + (32 * mem[_751 + mem[_751 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 96]) + 32 <= return_data.size
                mem[_751 + ceil32(return_data.size) + 96] = mem[_751 + mem[_751 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 96]
                _4263 = mem[_751 + _4023 + 96]
                t = 0
                while t < 32 * _4263:
                    mem[t + _751 + ceil32(return_data.size) + 128] = mem[t + _751 + _4023 + 128]
                    t = t + 32
                    continue 
                mem[64] = (32 * _4263) + _751 + ceil32(return_data.size) + 128
                require mem[_751 + ceil32(return_data.size) + 96] - 1 < mem[_751 + ceil32(return_data.size) + 96]
                if mem[(32 * mem[_751 + ceil32(return_data.size) + 96] - 1) + _751 + ceil32(return_data.size) + 128] <= s:
                    idx = idx + 1
                    s = s
                    continue 
                idx = idx + 1
                s = mem[(32 * mem[_751 + ceil32(return_data.size) + 96] - 1) + _751 + ceil32(return_data.size) + 128]
                continue 
            if 2 == idx:
                _771 = mem[0]
                _793 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                require 0 < mem[_793]
                mem[_793 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                require 1 < mem[_793]
                mem[_793 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c
                mem[_793 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_793 + 100] = 10^6 * sub_7d0b6809
                mem[_793 + 132] = 64
                mem[_793 + 164] = mem[_793]
                t = 0
                while t < 32 * mem[_793]:
                    mem[t + _793 + 196] = mem[t + _793 + 32]
                    t = t + 32
                    continue 
                require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c29.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args 10^6 * sub_7d0b6809, 64, mem[_793 + 164 len (32 * mem[_793]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_793 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _793 + ceil32(return_data.size) + 96
                require return_data.size >= 32
                _4019 = mem[_793 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32
                require mem[_793 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 <= 4294967296
                require mem[_793 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 32 <= return_data.size
                require mem[_793 + mem[_793 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 96] <= 4294967296 and mem[_793 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + (32 * mem[_793 + mem[_793 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 96]) + 32 <= return_data.size
                mem[_793 + ceil32(return_data.size) + 96] = mem[_793 + mem[_793 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 96]
                _4261 = mem[_793 + _4019 + 96]
                t = 0
                while t < 32 * _4261:
                    mem[t + _793 + ceil32(return_data.size) + 128] = mem[t + _793 + _4019 + 128]
                    t = t + 32
                    continue 
                require mem[_793 + ceil32(return_data.size) + 96] - 1 < mem[_793 + ceil32(return_data.size) + 96]
                _8621 = mem[(32 * mem[_793 + ceil32(return_data.size) + 96] - 1) + _793 + ceil32(return_data.size) + 128]
                mem[(32 * _4261) + _793 + ceil32(return_data.size) + 128] = 2
                mem[0] = _771
                mem[(32 * _4261) + _793 + ceil32(return_data.size) + 160] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c
                mem[(32 * _4261) + _793 + ceil32(return_data.size) + 192] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                mem[(32 * _4261) + _793 + ceil32(return_data.size) + 224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[(32 * _4261) + _793 + ceil32(return_data.size) + 228] = _8621
                mem[(32 * _4261) + _793 + ceil32(return_data.size) + 260] = 64
                mem[(32 * _4261) + _793 + ceil32(return_data.size) + 292] = 2
                t = 0
                while t < 64:
                    mem[t + (32 * _4261) + _793 + ceil32(return_data.size) + 324] = mem[t + (32 * _4261) + _793 + ceil32(return_data.size) + 160]
                    t = t + 32
                    continue 
                require ext_code.size(0x67a937ea41cd05ec8c832a044afc0100f30aa4b5)
                staticcall 0x67a937ea41cd05ec8c832a044afc0100f30aa4b5.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args _8621, Array(len=2, data=mem[(32 * _4261) + _793 + ceil32(return_data.size) + 324 len 64])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * _4261) + _793 + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * _4261) + _793 + (2 * ceil32(return_data.size)) + 224
                require return_data.size >= 32
                _12719 = mem[(32 * _4261) + _793 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _8621) >> 32
                require mem[(32 * _4261) + _793 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _8621) >> 32 <= 4294967296
                require mem[(32 * _4261) + _793 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _8621) >> 32 + 32 <= return_data.size
                require mem[(32 * _4261) + _793 + ceil32(return_data.size) + mem[(32 * _4261) + _793 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _8621) >> 32 + 224] <= 4294967296 and mem[(32 * _4261) + _793 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _8621) >> 32 + (32 * mem[(32 * _4261) + _793 + ceil32(return_data.size) + mem[(32 * _4261) + _793 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _8621) >> 32 + 224]) + 32 <= return_data.size
                mem[(32 * _4261) + _793 + (2 * ceil32(return_data.size)) + 224] = mem[(32 * _4261) + _793 + ceil32(return_data.size) + mem[(32 * _4261) + _793 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _8621) >> 32 + 224]
                _12929 = mem[(32 * _4261) + _793 + ceil32(return_data.size) + _12719 + 224]
                t = 0
                while t < 32 * _12929:
                    mem[t + (32 * _4261) + _793 + (2 * ceil32(return_data.size)) + 256] = mem[t + (32 * _4261) + _793 + ceil32(return_data.size) + _12719 + 256]
                    t = t + 32
                    continue 
                mem[64] = (32 * _12929) + (32 * _4261) + _793 + (2 * ceil32(return_data.size)) + 256
                require mem[(32 * _4261) + _793 + (2 * ceil32(return_data.size)) + 224] - 1 < mem[(32 * _4261) + _793 + (2 * ceil32(return_data.size)) + 224]
                if mem[(32 * mem[(32 * _4261) + _793 + (2 * ceil32(return_data.size)) + 224] - 1) + (32 * _4261) + _793 + (2 * ceil32(return_data.size)) + 256] <= s:
                    idx = idx + 1
                    s = s
                    continue 
                idx = idx + 1
                s = mem[(32 * mem[(32 * _4261) + _793 + (2 * ceil32(return_data.size)) + 224] - 1) + (32 * _4261) + _793 + (2 * ceil32(return_data.size)) + 256]
                continue 
            if idx != 3:
                if 10^6 * sub_7d0b6809 <= s:
                    idx = idx + 1
                    s = s
                    continue 
                idx = idx + 1
                s = 10^6 * sub_7d0b6809
                continue 
            _791 = mem[0]
            _827 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            require 0 < mem[_827]
            mem[_827 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
            require 1 < mem[_827]
            mem[_827 + 64] = 0x5848b832e872d9edd84ac5718d58f21fd9c96
            mem[_827 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[_827 + 100] = 10^6 * sub_7d0b6809
            mem[_827 + 132] = 64
            mem[_827 + 164] = mem[_827]
            t = 0
            while t < 32 * mem[_827]:
                mem[t + _827 + 196] = mem[t + _827 + 32]
                t = t + 32
                continue 
            require ext_code.size(0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52)
            staticcall 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52.getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args 10^6 * sub_7d0b6809, 64, mem[_827 + 164 len (32 * mem[_827]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[_827 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = _827 + ceil32(return_data.size) + 96
            require return_data.size >= 32
            _4015 = mem[_827 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32
            require mem[_827 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 <= 4294967296
            require mem[_827 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 32 <= return_data.size
            require mem[_827 + mem[_827 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 96] <= 4294967296 and mem[_827 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + (32 * mem[_827 + mem[_827 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 96]) + 32 <= return_data.size
            mem[_827 + ceil32(return_data.size) + 96] = mem[_827 + mem[_827 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 96]
            _4259 = mem[_827 + _4015 + 96]
            t = 0
            while t < 32 * _4259:
                mem[t + _827 + ceil32(return_data.size) + 128] = mem[t + _827 + _4015 + 128]
                t = t + 32
                continue 
            require mem[_827 + ceil32(return_data.size) + 96] - 1 < mem[_827 + ceil32(return_data.size) + 96]
            _8619 = mem[(32 * mem[_827 + ceil32(return_data.size) + 96] - 1) + _827 + ceil32(return_data.size) + 128]
            mem[(32 * _4259) + _827 + ceil32(return_data.size) + 128] = 3
            mem[(32 * _4259) + _827 + ceil32(return_data.size) + 160] = 0x5848b832e872d9edd84ac5718d58f21fd9c96
            mem[0] = _791
            mem[(32 * _4259) + _827 + ceil32(return_data.size) + 192] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c
            mem[(32 * _4259) + _827 + ceil32(return_data.size) + 224] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
            mem[(32 * _4259) + _827 + ceil32(return_data.size) + 256] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[(32 * _4259) + _827 + ceil32(return_data.size) + 260] = _8619
            mem[(32 * _4259) + _827 + ceil32(return_data.size) + 292] = 64
            mem[(32 * _4259) + _827 + ceil32(return_data.size) + 324] = 3
            t = 0
            while t < 96:
                mem[t + (32 * _4259) + _827 + ceil32(return_data.size) + 356] = mem[t + (32 * _4259) + _827 + ceil32(return_data.size) + 160]
                t = t + 32
                continue 
            require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
            staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c29.getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args _8619, Array(len=3, data=mem[(32 * _4259) + _827 + ceil32(return_data.size) + 356 len 96])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _4259) + _827 + ceil32(return_data.size) + 256 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * _4259) + _827 + (2 * ceil32(return_data.size)) + 256
            require return_data.size >= 32
            _12715 = mem[(32 * _4259) + _827 + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _8619) >> 32
            require mem[(32 * _4259) + _827 + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _8619) >> 32 <= 4294967296
            require mem[(32 * _4259) + _827 + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _8619) >> 32 + 32 <= return_data.size
            require mem[(32 * _4259) + _827 + ceil32(return_data.size) + mem[(32 * _4259) + _827 + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _8619) >> 32 + 256] <= 4294967296 and mem[(32 * _4259) + _827 + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _8619) >> 32 + (32 * mem[(32 * _4259) + _827 + ceil32(return_data.size) + mem[(32 * _4259) + _827 + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _8619) >> 32 + 256]) + 32 <= return_data.size
            mem[(32 * _4259) + _827 + (2 * ceil32(return_data.size)) + 256] = mem[(32 * _4259) + _827 + ceil32(return_data.size) + mem[(32 * _4259) + _827 + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _8619) >> 32 + 256]
            _12927 = mem[(32 * _4259) + _827 + ceil32(return_data.size) + _12715 + 256]
            t = 0
            while t < 32 * _12927:
                mem[t + (32 * _4259) + _827 + (2 * ceil32(return_data.size)) + 288] = mem[t + (32 * _4259) + _827 + ceil32(return_data.size) + _12715 + 288]
                t = t + 32
                continue 
            mem[64] = (32 * _12927) + (32 * _4259) + _827 + (2 * ceil32(return_data.size)) + 288
            require mem[(32 * _4259) + _827 + (2 * ceil32(return_data.size)) + 256] - 1 < mem[(32 * _4259) + _827 + (2 * ceil32(return_data.size)) + 256]
            if mem[(32 * mem[(32 * _4259) + _827 + (2 * ceil32(return_data.size)) + 256] - 1) + (32 * _4259) + _827 + (2 * ceil32(return_data.size)) + 288] <= s:
                idx = idx + 1
                s = s
                continue 
            idx = idx + 1
            s = mem[(32 * mem[(32 * _4259) + _827 + (2 * ceil32(return_data.size)) + 256] - 1) + (32 * _4259) + _827 + (2 * ceil32(return_data.size)) + 288]
            continue 
        idx = 0
        t = 0
        while idx < 4:
            if not idx:
                require ext_code.size(0xa0828ee559110b041dedbf10ae0cf42274251de1)
                staticcall 0xa0828ee559110b041dedbf10ae0cf42274251de1.reserve0() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(0xa0828ee559110b041dedbf10ae0cf42274251de1)
                staticcall 0xa0828ee559110b041dedbf10ae0cf42274251de1.reserve1() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(0x83000000000000000000000000ad84341756bf337f5a0164515b1f6f993d194e)
                staticcall 0x83000000000000000000000000ad84341756bf337f5a0164515b1f6f993d194e.decimals() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(0x4900000000000000000000000004068da6c83afcfa0e13ba15a6696662335d5b)
                staticcall 0x4900000000000000000000000004068da6c83afcfa0e13ba15a6696662335d5b.decimals() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(0x4068da6c83afcfa0e13ba15a6696662335d5b)
                staticcall 0x4068da6c83afcfa0e13ba15a6696662335d5b.decimals() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(0x83000000000000000000000000ad84341756bf337f5a0164515b1f6f993d194e)
                staticcall 0x83000000000000000000000000ad84341756bf337f5a0164515b1f6f993d194e.decimals() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not 3 * s:
                    _6902 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_6902] = 26
                    mem[_6902 + 32] = 'SafeMath: division by zero'
                    if not 10^uint8(ext_call.return_data[0]):
                        _7029 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _7029 + 68] = mem[idx + _6902 + 32]
                            idx = idx + 32
                            continue 
                        mem[_7029 + 68] = mem[_7029 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _7029 + -mem[64] + 100
                    require 10^uint8(ext_call.return_data[0] - 6)
                    require 10^uint8(ext_call.return_data[0] - 6)
                    u = 0
                    v = 0 / 10^uint8(ext_call.return_data[0])
                    while u < 10000:
                        require 10^uint8(ext_call.return_data[0] - 6)
                        require 10^uint8(ext_call.return_data[0] - 6)
                        if ((ext_call.return_data[0] - v / 10^uint8(ext_call.return_data[0] - 6))^2 * ext_call.return_data[0] - v / 10^uint8(ext_call.return_data[0] - 6) * ext_call.return_data[0] + s / 10^uint8(ext_call.return_data[0] - 6)) + ((ext_call.return_data[0] + s / 10^uint8(ext_call.return_data[0] - 6))^2 * ext_call.return_data[0] - v / 10^uint8(ext_call.return_data[0] - 6) * ext_call.return_data[0] + s / 10^uint8(ext_call.return_data[0] - 6)) / 2 <= ((ext_call.return_data[0] / 10^uint8(ext_call.return_data[0] - 6))^2 * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0] - 6) * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0] - 6)) + ((ext_call.return_data[0] / 10^uint8(ext_call.return_data[0] - 6))^2 * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0] - 6) * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0] - 6)) / 2:
                            u = u + 1
                            v = 99000 * v / 100000
                            continue 
                        if not v:
                            _9672 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_9672] = 26
                            mem[_9672 + 32] = 'SafeMath: division by zero'
                            _10804 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_10804] = 30
                            mem[_10804 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= v:
                                if v <= t:
                                    idx = idx + 1
                                    t = t
                                    continue 
                                idx = idx + 1
                                t = v
                                continue 
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                            idx = 32
                            while idx < 30:
                                mem[idx + mem[64] + 68] = mem[idx + _10804 + 32]
                                idx = idx + 32
                                continue 
                        else:
                            if 5 * v / v != 5:
                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            _9898 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_9898] = 26
                            mem[_9898 + 32] = 'SafeMath: division by zero'
                            _11037 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_11037] = 30
                            mem[_11037 + 32] = 'SafeMath: subtraction overflow'
                            if 5 * v / 1000 <= v:
                                if v - (5 * v / 1000) <= t:
                                    idx = idx + 1
                                    t = t
                                    continue 
                                idx = idx + 1
                                t = v - (5 * v / 1000)
                                continue 
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                            idx = 32
                            while idx < 30:
                                mem[idx + mem[64] + 68] = mem[idx + _11037 + 32]
                                idx = idx + 32
                                continue 
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not v:
                        _9117 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_9117] = 26
                        mem[_9117 + 32] = 'SafeMath: division by zero'
                        _9802 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_9802] = 30
                        mem[_9802 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= v:
                            if v <= t:
                                idx = idx + 1
                                t = t
                                continue 
                            idx = idx + 1
                            t = v
                            continue 
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                        idx = 32
                        while idx < 30:
                            mem[idx + mem[64] + 68] = mem[idx + _9802 + 32]
                            idx = idx + 32
                            continue 
                    else:
                        if 5 * v / v != 5:
                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _9288 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_9288] = 26
                        mem[_9288 + 32] = 'SafeMath: division by zero'
                        _10022 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_10022] = 30
                        mem[_10022 + 32] = 'SafeMath: subtraction overflow'
                        if 5 * v / 1000 <= v:
                            if v - (5 * v / 1000) <= t:
                                idx = idx + 1
                                t = t
                                continue 
                            idx = idx + 1
                            t = v - (5 * v / 1000)
                            continue 
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                        idx = 32
                        while idx < 30:
                            mem[idx + mem[64] + 68] = mem[idx + _10022 + 32]
                            idx = idx + 32
                            continue 
                else:
                    if 3 * 10^uint8(ext_call.return_data[0]) * s / 3 * s != 10^uint8(ext_call.return_data[0]):
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _7028 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_7028] = 26
                    mem[_7028 + 32] = 'SafeMath: division by zero'
                    if not 10^uint8(ext_call.return_data[0]):
                        _7146 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _7146 + 68] = mem[idx + _7028 + 32]
                            idx = idx + 32
                            continue 
                        mem[_7146 + 68] = mem[_7146 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _7146 + -mem[64] + 100
                    require 10^uint8(ext_call.return_data[0] - 6)
                    require 10^uint8(ext_call.return_data[0] - 6)
                    u = 0
                    v = 3 * 10^uint8(ext_call.return_data[0]) * s / 10^uint8(ext_call.return_data[0])
                    while u < 10000:
                        require 10^uint8(ext_call.return_data[0] - 6)
                        require 10^uint8(ext_call.return_data[0] - 6)
                        if ((ext_call.return_data[0] - v / 10^uint8(ext_call.return_data[0] - 6))^2 * ext_call.return_data[0] - v / 10^uint8(ext_call.return_data[0] - 6) * ext_call.return_data[0] + s / 10^uint8(ext_call.return_data[0] - 6)) + ((ext_call.return_data[0] + s / 10^uint8(ext_call.return_data[0] - 6))^2 * ext_call.return_data[0] - v / 10^uint8(ext_call.return_data[0] - 6) * ext_call.return_data[0] + s / 10^uint8(ext_call.return_data[0] - 6)) / 2 <= ((ext_call.return_data[0] / 10^uint8(ext_call.return_data[0] - 6))^2 * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0] - 6) * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0] - 6)) + ((ext_call.return_data[0] / 10^uint8(ext_call.return_data[0] - 6))^2 * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0] - 6) * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0] - 6)) / 2:
                            u = u + 1
                            v = 99000 * v / 100000
                            continue 
                        if not v:
                            _9671 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_9671] = 26
                            mem[_9671 + 32] = 'SafeMath: division by zero'
                            _10800 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_10800] = 30
                            mem[_10800 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= v:
                                if v <= t:
                                    idx = idx + 1
                                    t = t
                                    continue 
                                idx = idx + 1
                                t = v
                                continue 
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                            idx = 32
                            while idx < 30:
                                mem[idx + mem[64] + 68] = mem[idx + _10800 + 32]
                                idx = idx + 32
                                continue 
                        else:
                            if 5 * v / v != 5:
                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            _9897 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_9897] = 26
                            mem[_9897 + 32] = 'SafeMath: division by zero'
                            _11032 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_11032] = 30
                            mem[_11032 + 32] = 'SafeMath: subtraction overflow'
                            if 5 * v / 1000 <= v:
                                if v - (5 * v / 1000) <= t:
                                    idx = idx + 1
                                    t = t
                                    continue 
                                idx = idx + 1
                                t = v - (5 * v / 1000)
                                continue 
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                            idx = 32
                            while idx < 30:
                                mem[idx + mem[64] + 68] = mem[idx + _11032 + 32]
                                idx = idx + 32
                                continue 
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not v:
                        _9116 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_9116] = 26
                        mem[_9116 + 32] = 'SafeMath: division by zero'
                        _9801 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_9801] = 30
                        mem[_9801 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= v:
                            if v <= t:
                                idx = idx + 1
                                t = t
                                continue 
                            idx = idx + 1
                            t = v
                            continue 
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                        idx = 32
                        while idx < 30:
                            mem[idx + mem[64] + 68] = mem[idx + _9801 + 32]
                            idx = idx + 32
                            continue 
                    else:
                        if 5 * v / v != 5:
                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _9287 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_9287] = 26
                        mem[_9287 + 32] = 'SafeMath: division by zero'
                        _10018 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_10018] = 30
                        mem[_10018 + 32] = 'SafeMath: subtraction overflow'
                        if 5 * v / 1000 <= v:
                            if v - (5 * v / 1000) <= t:
                                idx = idx + 1
                                t = t
                                continue 
                            idx = idx + 1
                            t = v - (5 * v / 1000)
                            continue 
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                        idx = 32
                        while idx < 30:
                            mem[idx + mem[64] + 68] = mem[idx + _10018 + 32]
                            idx = idx + 32
                            continue 
                revert with 0, 'SafeMath: subtraction overflow'
            if 1 == idx:
                _4011 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                require 0 < mem[_4011]
                mem[_4011 + 32] = 0xad84341756bf337f5a0164515b1f6f993d194e
                require 1 < mem[_4011]
                mem[_4011 + 64] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                mem[_4011 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_4011 + 100] = s
                mem[_4011 + 132] = 64
                mem[_4011 + 164] = mem[_4011]
                u = 0
                while u < 32 * mem[_4011]:
                    mem[u + _4011 + 196] = mem[u + _4011 + 32]
                    u = u + 32
                    continue 
                require ext_code.size(0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52)
                staticcall 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args s, 64, mem[_4011 + 164 len (32 * mem[_4011]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_4011 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _4011 + ceil32(return_data.size) + 96
                require return_data.size >= 32
                _8927 = mem[_4011 + 96 len 4], Mask(224, 32, s) >> 32
                require mem[_4011 + 96 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                require mem[_4011 + 96 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                require mem[_4011 + mem[_4011 + 96 len 4], Mask(224, 32, s) >> 32 + 96] <= 4294967296 and mem[_4011 + 96 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_4011 + mem[_4011 + 96 len 4], Mask(224, 32, s) >> 32 + 96]) + 32 <= return_data.size
                mem[_4011 + ceil32(return_data.size) + 96] = mem[_4011 + mem[_4011 + 96 len 4], Mask(224, 32, s) >> 32 + 96]
                _9211 = mem[_4011 + _8927 + 96]
                s = 0
                while s < 32 * _9211:
                    mem[s + _4011 + ceil32(return_data.size) + 128] = mem[s + _4011 + _8927 + 128]
                    s = s + 32
                    continue 
                mem[64] = (32 * _9211) + _4011 + ceil32(return_data.size) + 128
                require mem[_4011 + ceil32(return_data.size) + 96] - 1 < mem[_4011 + ceil32(return_data.size) + 96]
                if mem[(32 * mem[_4011 + ceil32(return_data.size) + 96] - 1) + _4011 + ceil32(return_data.size) + 128] <= t:
                    idx = idx + 1
                    t = t
                    continue 
                idx = idx + 1
                t = mem[(32 * mem[_4011 + ceil32(return_data.size) + 96] - 1) + _4011 + ceil32(return_data.size) + 128]
                continue 
            if 2 == idx:
                _4067 = mem[0]
                _4133 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                require 0 < mem[_4133]
                mem[_4133 + 32] = 0xad84341756bf337f5a0164515b1f6f993d194e
                require 1 < mem[_4133]
                mem[_4133 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c
                mem[_4133 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_4133 + 100] = s
                mem[_4133 + 132] = 64
                mem[_4133 + 164] = mem[_4133]
                u = 0
                while u < 32 * mem[_4133]:
                    mem[u + _4133 + 196] = mem[u + _4133 + 32]
                    u = u + 32
                    continue 
                require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c29.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args s, 64, mem[_4133 + 164 len (32 * mem[_4133]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_4133 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _4133 + ceil32(return_data.size) + 96
                require return_data.size >= 32
                _8923 = mem[_4133 + 96 len 4], Mask(224, 32, s) >> 32
                require mem[_4133 + 96 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                require mem[_4133 + 96 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                require mem[_4133 + mem[_4133 + 96 len 4], Mask(224, 32, s) >> 32 + 96] <= 4294967296 and mem[_4133 + 96 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_4133 + mem[_4133 + 96 len 4], Mask(224, 32, s) >> 32 + 96]) + 32 <= return_data.size
                mem[_4133 + ceil32(return_data.size) + 96] = mem[_4133 + mem[_4133 + 96 len 4], Mask(224, 32, s) >> 32 + 96]
                _9209 = mem[_4133 + _8923 + 96]
                s = 0
                while s < 32 * _9209:
                    mem[s + _4133 + ceil32(return_data.size) + 128] = mem[s + _4133 + _8923 + 128]
                    s = s + 32
                    continue 
                require mem[_4133 + ceil32(return_data.size) + 96] - 1 < mem[_4133 + ceil32(return_data.size) + 96]
                _12245 = mem[(32 * mem[_4133 + ceil32(return_data.size) + 96] - 1) + _4133 + ceil32(return_data.size) + 128]
                mem[(32 * _9209) + _4133 + ceil32(return_data.size) + 128] = 2
                mem[0] = _4067
                mem[(32 * _9209) + _4133 + ceil32(return_data.size) + 160] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c
                mem[(32 * _9209) + _4133 + ceil32(return_data.size) + 192] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                mem[(32 * _9209) + _4133 + ceil32(return_data.size) + 224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[(32 * _9209) + _4133 + ceil32(return_data.size) + 228] = _12245
                mem[(32 * _9209) + _4133 + ceil32(return_data.size) + 260] = 64
                mem[(32 * _9209) + _4133 + ceil32(return_data.size) + 292] = 2
                s = 0
                while s < 64:
                    mem[s + (32 * _9209) + _4133 + ceil32(return_data.size) + 324] = mem[s + (32 * _9209) + _4133 + ceil32(return_data.size) + 160]
                    s = s + 32
                    continue 
                require ext_code.size(0x67a937ea41cd05ec8c832a044afc0100f30aa4b5)
                staticcall 0x67a937ea41cd05ec8c832a044afc0100f30aa4b5.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args _12245, Array(len=2, data=mem[(32 * _9209) + _4133 + ceil32(return_data.size) + 324 len 64])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * _9209) + _4133 + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * _9209) + _4133 + (2 * ceil32(return_data.size)) + 224
                require return_data.size >= 32
                _13607 = mem[(32 * _9209) + _4133 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _12245) >> 32
                require mem[(32 * _9209) + _4133 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _12245) >> 32 <= 4294967296
                require mem[(32 * _9209) + _4133 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _12245) >> 32 + 32 <= return_data.size
                require mem[(32 * _9209) + _4133 + ceil32(return_data.size) + mem[(32 * _9209) + _4133 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _12245) >> 32 + 224] <= 4294967296 and mem[(32 * _9209) + _4133 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _12245) >> 32 + (32 * mem[(32 * _9209) + _4133 + ceil32(return_data.size) + mem[(32 * _9209) + _4133 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _12245) >> 32 + 224]) + 32 <= return_data.size
                mem[(32 * _9209) + _4133 + (2 * ceil32(return_data.size)) + 224] = mem[(32 * _9209) + _4133 + ceil32(return_data.size) + mem[(32 * _9209) + _4133 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _12245) >> 32 + 224]
                _13701 = mem[(32 * _9209) + _4133 + ceil32(return_data.size) + _13607 + 224]
                s = 0
                while s < 32 * _13701:
                    mem[s + (32 * _9209) + _4133 + (2 * ceil32(return_data.size)) + 256] = mem[s + (32 * _9209) + _4133 + ceil32(return_data.size) + _13607 + 256]
                    s = s + 32
                    continue 
                mem[64] = (32 * _13701) + (32 * _9209) + _4133 + (2 * ceil32(return_data.size)) + 256
                require mem[(32 * _9209) + _4133 + (2 * ceil32(return_data.size)) + 224] - 1 < mem[(32 * _9209) + _4133 + (2 * ceil32(return_data.size)) + 224]
                if mem[(32 * mem[(32 * _9209) + _4133 + (2 * ceil32(return_data.size)) + 224] - 1) + (32 * _9209) + _4133 + (2 * ceil32(return_data.size)) + 256] <= t:
                    idx = idx + 1
                    t = t
                    continue 
                idx = idx + 1
                t = mem[(32 * mem[(32 * _9209) + _4133 + (2 * ceil32(return_data.size)) + 224] - 1) + (32 * _9209) + _4133 + (2 * ceil32(return_data.size)) + 256]
                continue 
            if idx != 3:
                if s <= t:
                    idx = idx + 1
                    t = t
                    continue 
                idx = idx + 1
                t = s
                continue 
            _4237 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            require 0 < mem[_4237]
            mem[_4237 + 32] = 0xad84341756bf337f5a0164515b1f6f993d194e
            require 1 < mem[_4237]
            mem[_4237 + 64] = 0x5848b832e872d9edd84ac5718d58f21fd9c96
            mem[_4237 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[_4237 + 100] = s
            mem[_4237 + 132] = 64
            mem[_4237 + 164] = mem[_4237]
            u = 0
            while u < 32 * mem[_4237]:
                mem[u + _4237 + 196] = mem[u + _4237 + 32]
                u = u + 32
                continue 
            require ext_code.size(0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52)
            staticcall 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52.getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args s, 64, mem[_4237 + 164 len (32 * mem[_4237]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[_4237 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = _4237 + ceil32(return_data.size) + 96
            require return_data.size >= 32
            _8919 = mem[_4237 + 96 len 4], Mask(224, 32, s) >> 32
            require mem[_4237 + 96 len 4], Mask(224, 32, s) >> 32 <= 4294967296
            require mem[_4237 + 96 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
            require mem[_4237 + mem[_4237 + 96 len 4], Mask(224, 32, s) >> 32 + 96] <= 4294967296 and mem[_4237 + 96 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_4237 + mem[_4237 + 96 len 4], Mask(224, 32, s) >> 32 + 96]) + 32 <= return_data.size
            mem[_4237 + ceil32(return_data.size) + 96] = mem[_4237 + mem[_4237 + 96 len 4], Mask(224, 32, s) >> 32 + 96]
            _9207 = mem[_4237 + _8919 + 96]
            s = 0
            while s < 32 * _9207:
                mem[s + _4237 + ceil32(return_data.size) + 128] = mem[s + _4237 + _8919 + 128]
                s = s + 32
                continue 
            mem[64] = (32 * _9207) + _4237 + ceil32(return_data.size) + 128
            require mem[_4237 + ceil32(return_data.size) + 96] - 1 < mem[_4237 + ceil32(return_data.size) + 96]
            _12243 = mem[(32 * mem[_4237 + ceil32(return_data.size) + 96] - 1) + _4237 + ceil32(return_data.size) + 128]
            mem[(32 * _9207) + _4237 + ceil32(return_data.size) + 128] = 3
            mem[(32 * _9207) + _4237 + ceil32(return_data.size) + 160] = 0x5848b832e872d9edd84ac5718d58f21fd9c96
            mem[(32 * _9207) + _4237 + ceil32(return_data.size) + 192] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c
            mem[(32 * _9207) + _4237 + ceil32(return_data.size) + 224] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
            mem[(32 * _9207) + _4237 + ceil32(return_data.size) + 256] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[(32 * _9207) + _4237 + ceil32(return_data.size) + 260] = _12243
            mem[(32 * _9207) + _4237 + ceil32(return_data.size) + 292] = 64
            mem[(32 * _9207) + _4237 + ceil32(return_data.size) + 324] = 3
            s = 0
            while s < 96:
                mem[s + (32 * _9207) + _4237 + ceil32(return_data.size) + 356] = mem[s + (32 * _9207) + _4237 + ceil32(return_data.size) + 160]
                s = s + 32
                continue 
            require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
            staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c29.getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args _12243, Array(len=3, data=mem[(32 * _9207) + _4237 + ceil32(return_data.size) + 356 len 96])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _9207) + _4237 + ceil32(return_data.size) + 256 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * _9207) + _4237 + (2 * ceil32(return_data.size)) + 256
            require return_data.size >= 32
            _13603 = mem[(32 * _9207) + _4237 + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _12243) >> 32
            require mem[(32 * _9207) + _4237 + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _12243) >> 32 <= 4294967296
            require mem[(32 * _9207) + _4237 + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _12243) >> 32 + 32 <= return_data.size
            require mem[(32 * _9207) + _4237 + ceil32(return_data.size) + mem[(32 * _9207) + _4237 + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _12243) >> 32 + 256] <= 4294967296 and mem[(32 * _9207) + _4237 + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _12243) >> 32 + (32 * mem[(32 * _9207) + _4237 + ceil32(return_data.size) + mem[(32 * _9207) + _4237 + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _12243) >> 32 + 256]) + 32 <= return_data.size
            mem[(32 * _9207) + _4237 + (2 * ceil32(return_data.size)) + 256] = mem[(32 * _9207) + _4237 + ceil32(return_data.size) + mem[(32 * _9207) + _4237 + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _12243) >> 32 + 256]
            _13699 = mem[(32 * _9207) + _4237 + ceil32(return_data.size) + _13603 + 256]
            s = 0
            while s < 32 * _13699:
                mem[s + (32 * _9207) + _4237 + (2 * ceil32(return_data.size)) + 288] = mem[s + (32 * _9207) + _4237 + ceil32(return_data.size) + _13603 + 288]
                s = s + 32
                continue 
            mem[64] = (32 * _13699) + (32 * _9207) + _4237 + (2 * ceil32(return_data.size)) + 288
            require mem[(32 * _9207) + _4237 + (2 * ceil32(return_data.size)) + 256] - 1 < mem[(32 * _9207) + _4237 + (2 * ceil32(return_data.size)) + 256]
            if mem[(32 * mem[(32 * _9207) + _4237 + (2 * ceil32(return_data.size)) + 256] - 1) + (32 * _9207) + _4237 + (2 * ceil32(return_data.size)) + 288] <= t:
                idx = idx + 1
                t = t
                continue 
            idx = idx + 1
            t = mem[(32 * mem[(32 * _9207) + _4237 + (2 * ceil32(return_data.size)) + 256] - 1) + (32 * _9207) + _4237 + (2 * ceil32(return_data.size)) + 288]
            continue 
    if maxBatch:
        if 10^6 * maxBatch / maxBatch != 10^6:
            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
    return 0, block.number, 0, 0, 0
}



}
