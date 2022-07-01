contract main {




// =====================  Runtime code  =====================


#
#  - sub_0cbc9035(?)
#  - onFlashLoan(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5)
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
    staticcall 0x83000000000000000000000000ad84341756bf337f5a0164515b1f6f993d194e.0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0x4900000000000000000000000004068da6c83afcfa0e13ba15a6696662335d5b)
    staticcall 0x4900000000000000000000000004068da6c83afcfa0e13ba15a6696662335d5b.0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg1:
        require ext_code.size(0x4068da6c83afcfa0e13ba15a6696662335d5b)
        staticcall 0x4068da6c83afcfa0e13ba15a6696662335d5b.0x313ce567 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(0x83000000000000000000000000ad84341756bf337f5a0164515b1f6f993d194e)
        staticcall 0x83000000000000000000000000ad84341756bf337f5a0164515b1f6f993d194e.0x313ce567 with:
                gas gas_remaining wei
    else:
        require ext_code.size(0xad84341756bf337f5a0164515b1f6f993d194e)
        staticcall 0xad84341756bf337f5a0164515b1f6f993d194e.0x313ce567 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(0x4900000000000000000000000004068da6c83afcfa0e13ba15a6696662335d5b)
        staticcall 0x4900000000000000000000000004068da6c83afcfa0e13ba15a6696662335d5b.0x313ce567 with:
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
        if 0 / 10^uint8(ext_call.return_data[0]) <= ext_call.return_data[0]:
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
                        revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
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
            idx = 0
            s = ext_call.return_data[0]
            while idx < 10000:
                require 10^uint8(ext_call.return_data[0] - 6)
                require 10^uint8(ext_call.return_data[0] - 6)
                if arg1:
                    if ((ext_call.return_data[0] - s / 10^uint8(ext_call.return_data[0] - 6))^2 * ext_call.return_data[0] - s / 10^uint8(ext_call.return_data[0] - 6) * ext_call.return_data[0] + arg2 / 10^uint8(ext_call.return_data[0] - 6)) + ((ext_call.return_data[0] + arg2 / 10^uint8(ext_call.return_data[0] - 6))^2 * ext_call.return_data[0] - s / 10^uint8(ext_call.return_data[0] - 6) * ext_call.return_data[0] + arg2 / 10^uint8(ext_call.return_data[0] - 6)) / 2 <= ((ext_call.return_data[0] / 10^uint8(ext_call.return_data[0] - 6))^2 * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0] - 6) * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0] - 6)) + ((ext_call.return_data[0] / 10^uint8(ext_call.return_data[0] - 6))^2 * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0] - 6) * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0] - 6)) / 2:
                        idx = idx + 1
                        s = 99900 * s / 100000
                        continue 
                else:
                    if ((ext_call.return_data[0] + arg2 / 10^uint8(ext_call.return_data[0] - 6))^2 * ext_call.return_data[0] + arg2 / 10^uint8(ext_call.return_data[0] - 6) * ext_call.return_data[0] - s / 10^uint8(ext_call.return_data[0] - 6)) + ((ext_call.return_data[0] - s / 10^uint8(ext_call.return_data[0] - 6))^2 * ext_call.return_data[0] + arg2 / 10^uint8(ext_call.return_data[0] - 6) * ext_call.return_data[0] - s / 10^uint8(ext_call.return_data[0] - 6)) / 2 <= ((ext_call.return_data[0] / 10^uint8(ext_call.return_data[0] - 6))^2 * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0] - 6) * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0] - 6)) + ((ext_call.return_data[0] / 10^uint8(ext_call.return_data[0] - 6))^2 * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0] - 6) * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0] - 6)) / 2:
                        idx = idx + 1
                        s = 99900 * s / 100000
                        continue 
                if not s:
                    if 0 <= s:
                        return s
                else:
                    if 5 * s / s != 5:
                        revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
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
                        0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        mem[64] = 160
        mem[96] = 26
        mem[128] = 'SafeMath: division by zero'
        if not 10^uint8(ext_call.return_data[0]):
            revert with 0, 'SafeMath: division by zero'
        require 10^uint8(ext_call.return_data[0] - 6)
        require 10^uint8(ext_call.return_data[0] - 6)
        if 3 * 10^uint8(ext_call.return_data[0]) * arg2 / 10^uint8(ext_call.return_data[0]) <= ext_call.return_data[0]:
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
                        revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
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
            idx = 0
            s = ext_call.return_data[0]
            while idx < 10000:
                require 10^uint8(ext_call.return_data[0] - 6)
                require 10^uint8(ext_call.return_data[0] - 6)
                if arg1:
                    if ((ext_call.return_data[0] - s / 10^uint8(ext_call.return_data[0] - 6))^2 * ext_call.return_data[0] - s / 10^uint8(ext_call.return_data[0] - 6) * ext_call.return_data[0] + arg2 / 10^uint8(ext_call.return_data[0] - 6)) + ((ext_call.return_data[0] + arg2 / 10^uint8(ext_call.return_data[0] - 6))^2 * ext_call.return_data[0] - s / 10^uint8(ext_call.return_data[0] - 6) * ext_call.return_data[0] + arg2 / 10^uint8(ext_call.return_data[0] - 6)) / 2 <= ((ext_call.return_data[0] / 10^uint8(ext_call.return_data[0] - 6))^2 * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0] - 6) * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0] - 6)) + ((ext_call.return_data[0] / 10^uint8(ext_call.return_data[0] - 6))^2 * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0] - 6) * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0] - 6)) / 2:
                        idx = idx + 1
                        s = 99900 * s / 100000
                        continue 
                else:
                    if ((ext_call.return_data[0] + arg2 / 10^uint8(ext_call.return_data[0] - 6))^2 * ext_call.return_data[0] + arg2 / 10^uint8(ext_call.return_data[0] - 6) * ext_call.return_data[0] - s / 10^uint8(ext_call.return_data[0] - 6)) + ((ext_call.return_data[0] - s / 10^uint8(ext_call.return_data[0] - 6))^2 * ext_call.return_data[0] + arg2 / 10^uint8(ext_call.return_data[0] - 6) * ext_call.return_data[0] - s / 10^uint8(ext_call.return_data[0] - 6)) / 2 <= ((ext_call.return_data[0] / 10^uint8(ext_call.return_data[0] - 6))^2 * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0] - 6) * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0] - 6)) + ((ext_call.return_data[0] / 10^uint8(ext_call.return_data[0] - 6))^2 * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0] - 6) * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0] - 6)) / 2:
                        idx = idx + 1
                        s = 99900 * s / 100000
                        continue 
                if not s:
                    if 0 <= s:
                        return s
                else:
                    if 5 * s / s != 5:
                        revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
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
            revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
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
                staticcall 0x83000000000000000000000000ad84341756bf337f5a0164515b1f6f993d194e.0x313ce567 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(0x4900000000000000000000000004068da6c83afcfa0e13ba15a6696662335d5b)
                staticcall 0x4900000000000000000000000004068da6c83afcfa0e13ba15a6696662335d5b.0x313ce567 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(0x4068da6c83afcfa0e13ba15a6696662335d5b)
                staticcall 0x4068da6c83afcfa0e13ba15a6696662335d5b.0x313ce567 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(0x83000000000000000000000000ad84341756bf337f5a0164515b1f6f993d194e)
                staticcall 0x83000000000000000000000000ad84341756bf337f5a0164515b1f6f993d194e.0x313ce567 with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                _2452 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2452] = 26
                mem[_2452 + 32] = 'SafeMath: division by zero'
                if not 10^uint8(ext_call.return_data[0]):
                    _2524 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _2524 + 68] = mem[idx + _2452 + 32]
                        idx = idx + 32
                        continue 
                    mem[_2524 + 68] = mem[_2524 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _2524 + -mem[64] + 100
                require 10^uint8(ext_call.return_data[0] - 6)
                require 10^uint8(ext_call.return_data[0] - 6)
                if 0 / 10^uint8(ext_call.return_data[0]) <= ext_call.return_data[0]:
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
                            _6667 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_6667] = 26
                            mem[_6667 + 32] = 'SafeMath: division by zero'
                            _7910 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_7910] = 30
                            mem[_7910 + 32] = 'SafeMath: subtraction overflow'
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
                                mem[idx + mem[64] + 68] = mem[idx + _7910 + 32]
                                idx = idx + 32
                                continue 
                        else:
                            if 5 * u / u != 5:
                                revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            _6937 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_6937] = 26
                            mem[_6937 + 32] = 'SafeMath: division by zero'
                            _8232 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_8232] = 30
                            mem[_8232 + 32] = 'SafeMath: subtraction overflow'
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
                                mem[idx + mem[64] + 68] = mem[idx + _8232 + 32]
                                idx = idx + 32
                                continue 
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not u:
                        _5824 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5824] = 26
                        mem[_5824 + 32] = 'SafeMath: division by zero'
                        _6805 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_6805] = 30
                        mem[_6805 + 32] = 'SafeMath: subtraction overflow'
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
                            mem[idx + mem[64] + 68] = mem[idx + _6805 + 32]
                            idx = idx + 32
                            continue 
                    else:
                        if 5 * u / u != 5:
                            revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _6079 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_6079] = 26
                        mem[_6079 + 32] = 'SafeMath: division by zero'
                        _7086 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_7086] = 30
                        mem[_7086 + 32] = 'SafeMath: subtraction overflow'
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
                            mem[idx + mem[64] + 68] = mem[idx + _7086 + 32]
                            idx = idx + 32
                            continue 
                else:
                    t = 0
                    u = ext_call.return_data[0]
                    while t < 10000:
                        require 10^uint8(ext_call.return_data[0] - 6)
                        require 10^uint8(ext_call.return_data[0] - 6)
                        if ((ext_call.return_data[0] - u / 10^uint8(ext_call.return_data[0] - 6))^2 * ext_call.return_data[0] - u / 10^uint8(ext_call.return_data[0] - 6) * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0] - 6)) + ((ext_call.return_data[0] / 10^uint8(ext_call.return_data[0] - 6))^2 * ext_call.return_data[0] - u / 10^uint8(ext_call.return_data[0] - 6) * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0] - 6)) / 2 <= ((ext_call.return_data[0] / 10^uint8(ext_call.return_data[0] - 6))^2 * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0] - 6) * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0] - 6)) + ((ext_call.return_data[0] / 10^uint8(ext_call.return_data[0] - 6))^2 * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0] - 6) * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0] - 6)) / 2:
                            t = t + 1
                            u = 99900 * u / 100000
                            continue 
                        if not u:
                            _6668 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_6668] = 26
                            mem[_6668 + 32] = 'SafeMath: division by zero'
                            _7914 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_7914] = 30
                            mem[_7914 + 32] = 'SafeMath: subtraction overflow'
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
                                mem[idx + mem[64] + 68] = mem[idx + _7914 + 32]
                                idx = idx + 32
                                continue 
                        else:
                            if 5 * u / u != 5:
                                revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            _6938 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_6938] = 26
                            mem[_6938 + 32] = 'SafeMath: division by zero'
                            _8237 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_8237] = 30
                            mem[_8237 + 32] = 'SafeMath: subtraction overflow'
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
                                mem[idx + mem[64] + 68] = mem[idx + _8237 + 32]
                                idx = idx + 32
                                continue 
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not u:
                        _5825 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5825] = 26
                        mem[_5825 + 32] = 'SafeMath: division by zero'
                        _6806 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_6806] = 30
                        mem[_6806 + 32] = 'SafeMath: subtraction overflow'
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
                            mem[idx + mem[64] + 68] = mem[idx + _6806 + 32]
                            idx = idx + 32
                            continue 
                    else:
                        if 5 * u / u != 5:
                            revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _6080 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_6080] = 26
                        mem[_6080 + 32] = 'SafeMath: division by zero'
                        _7090 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_7090] = 30
                        mem[_7090 + 32] = 'SafeMath: subtraction overflow'
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
                            mem[idx + mem[64] + 68] = mem[idx + _7090 + 32]
                            idx = idx + 32
                            continue 
                revert with 0, 'SafeMath: subtraction overflow'
            if 1 == idx:
                _1099 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                require 0 < mem[_1099]
                mem[_1099 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                require 1 < mem[_1099]
                mem[_1099 + 64] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                mem[_1099 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_1099 + 100] = 0
                mem[_1099 + 132] = 64
                mem[_1099 + 164] = mem[_1099]
                t = 0
                while t < 32 * mem[_1099]:
                    mem[t + _1099 + 196] = mem[t + _1099 + 32]
                    t = t + 32
                    continue 
                require ext_code.size(0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52)
                staticcall 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args 0, 64, mem[_1099 + 164 len (32 * mem[_1099]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_1099 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _1099 + ceil32(return_data.size) + 96
                require return_data.size >= 32
                _5635 = mem[_1099 + 96 len 4], 0
                require mem[_1099 + 96 len 4], 0 <= 4294967296
                require mem[_1099 + 96 len 4], 0 + 32 <= return_data.size
                require mem[_1099 + mem[_1099 + 96 len 4], 0 + 96] <= 4294967296 and mem[_1099 + 96 len 4], 0 + (32 * mem[_1099 + mem[_1099 + 96 len 4], 0 + 96]) + 32 <= return_data.size
                mem[_1099 + ceil32(return_data.size) + 96] = mem[_1099 + mem[_1099 + 96 len 4], 0 + 96]
                _5929 = mem[_1099 + _5635 + 96]
                t = 0
                while t < 32 * _5929:
                    mem[t + _1099 + ceil32(return_data.size) + 128] = mem[t + _1099 + _5635 + 128]
                    t = t + 32
                    continue 
                mem[64] = (32 * _5929) + _1099 + ceil32(return_data.size) + 128
                require mem[_1099 + ceil32(return_data.size) + 96] - 1 < mem[_1099 + ceil32(return_data.size) + 96]
                if mem[(32 * mem[_1099 + ceil32(return_data.size) + 96] - 1) + _1099 + ceil32(return_data.size) + 128] <= s:
                    idx = idx + 1
                    s = s
                    continue 
                idx = idx + 1
                s = mem[(32 * mem[_1099 + ceil32(return_data.size) + 96] - 1) + _1099 + ceil32(return_data.size) + 128]
                continue 
            if 2 == idx:
                _1117 = mem[0]
                _1147 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                require 0 < mem[_1147]
                mem[_1147 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                require 1 < mem[_1147]
                mem[_1147 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c
                mem[_1147 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_1147 + 100] = 0
                mem[_1147 + 132] = 64
                mem[_1147 + 164] = mem[_1147]
                t = 0
                while t < 32 * mem[_1147]:
                    mem[t + _1147 + 196] = mem[t + _1147 + 32]
                    t = t + 32
                    continue 
                require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c29.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args 0, 64, mem[_1147 + 164 len (32 * mem[_1147]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_1147 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _1147 + ceil32(return_data.size) + 96
                require return_data.size >= 32
                _5631 = mem[_1147 + 96 len 4], 0
                require mem[_1147 + 96 len 4], 0 <= 4294967296
                require mem[_1147 + 96 len 4], 0 + 32 <= return_data.size
                require mem[_1147 + mem[_1147 + 96 len 4], 0 + 96] <= 4294967296 and mem[_1147 + 96 len 4], 0 + (32 * mem[_1147 + mem[_1147 + 96 len 4], 0 + 96]) + 32 <= return_data.size
                mem[_1147 + ceil32(return_data.size) + 96] = mem[_1147 + mem[_1147 + 96 len 4], 0 + 96]
                _5927 = mem[_1147 + _5631 + 96]
                t = 0
                while t < 32 * _5927:
                    mem[t + _1147 + ceil32(return_data.size) + 128] = mem[t + _1147 + _5631 + 128]
                    t = t + 32
                    continue 
                require mem[_1147 + ceil32(return_data.size) + 96] - 1 < mem[_1147 + ceil32(return_data.size) + 96]
                _11895 = mem[(32 * mem[_1147 + ceil32(return_data.size) + 96] - 1) + _1147 + ceil32(return_data.size) + 128]
                mem[(32 * _5927) + _1147 + ceil32(return_data.size) + 128] = 2
                mem[0] = _1117
                mem[(32 * _5927) + _1147 + ceil32(return_data.size) + 160] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c
                mem[(32 * _5927) + _1147 + ceil32(return_data.size) + 192] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                mem[(32 * _5927) + _1147 + ceil32(return_data.size) + 224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[(32 * _5927) + _1147 + ceil32(return_data.size) + 228] = _11895
                mem[(32 * _5927) + _1147 + ceil32(return_data.size) + 260] = 64
                mem[(32 * _5927) + _1147 + ceil32(return_data.size) + 292] = 2
                t = 0
                while t < 64:
                    mem[t + (32 * _5927) + _1147 + ceil32(return_data.size) + 324] = mem[t + (32 * _5927) + _1147 + ceil32(return_data.size) + 160]
                    t = t + 32
                    continue 
                require ext_code.size(0x67a937ea41cd05ec8c832a044afc0100f30aa4b5)
                staticcall 0x67a937ea41cd05ec8c832a044afc0100f30aa4b5.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args _11895, Array(len=2, data=mem[(32 * _5927) + _1147 + ceil32(return_data.size) + 324 len 64])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * _5927) + _1147 + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * _5927) + _1147 + (2 * ceil32(return_data.size)) + 224
                require return_data.size >= 32
                _18287 = mem[(32 * _5927) + _1147 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _11895) >> 32
                require mem[(32 * _5927) + _1147 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _11895) >> 32 <= 4294967296
                require mem[(32 * _5927) + _1147 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _11895) >> 32 + 32 <= return_data.size
                require mem[(32 * _5927) + _1147 + ceil32(return_data.size) + mem[(32 * _5927) + _1147 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _11895) >> 32 + 224] <= 4294967296 and mem[(32 * _5927) + _1147 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _11895) >> 32 + (32 * mem[(32 * _5927) + _1147 + ceil32(return_data.size) + mem[(32 * _5927) + _1147 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _11895) >> 32 + 224]) + 32 <= return_data.size
                mem[(32 * _5927) + _1147 + (2 * ceil32(return_data.size)) + 224] = mem[(32 * _5927) + _1147 + ceil32(return_data.size) + mem[(32 * _5927) + _1147 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _11895) >> 32 + 224]
                _18529 = mem[(32 * _5927) + _1147 + ceil32(return_data.size) + _18287 + 224]
                t = 0
                while t < 32 * _18529:
                    mem[t + (32 * _5927) + _1147 + (2 * ceil32(return_data.size)) + 256] = mem[t + (32 * _5927) + _1147 + ceil32(return_data.size) + _18287 + 256]
                    t = t + 32
                    continue 
                mem[64] = (32 * _18529) + (32 * _5927) + _1147 + (2 * ceil32(return_data.size)) + 256
                require mem[(32 * _5927) + _1147 + (2 * ceil32(return_data.size)) + 224] - 1 < mem[(32 * _5927) + _1147 + (2 * ceil32(return_data.size)) + 224]
                if mem[(32 * mem[(32 * _5927) + _1147 + (2 * ceil32(return_data.size)) + 224] - 1) + (32 * _5927) + _1147 + (2 * ceil32(return_data.size)) + 256] <= s:
                    idx = idx + 1
                    s = s
                    continue 
                idx = idx + 1
                s = mem[(32 * mem[(32 * _5927) + _1147 + (2 * ceil32(return_data.size)) + 224] - 1) + (32 * _5927) + _1147 + (2 * ceil32(return_data.size)) + 256]
                continue 
            if idx != 3:
                if 0 <= s:
                    idx = idx + 1
                    s = s
                    continue 
                idx = idx + 1
                s = 0
                continue 
            _1145 = mem[0]
            _1183 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            require 0 < mem[_1183]
            mem[_1183 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
            require 1 < mem[_1183]
            mem[_1183 + 64] = 0x5848b832e872d9edd84ac5718d58f21fd9c96
            mem[_1183 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[_1183 + 100] = 0
            mem[_1183 + 132] = 64
            mem[_1183 + 164] = mem[_1183]
            t = 0
            while t < 32 * mem[_1183]:
                mem[t + _1183 + 196] = mem[t + _1183 + 32]
                t = t + 32
                continue 
            require ext_code.size(0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52)
            staticcall 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52.getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args 0, 64, mem[_1183 + 164 len (32 * mem[_1183]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[_1183 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = _1183 + ceil32(return_data.size) + 96
            require return_data.size >= 32
            _5627 = mem[_1183 + 96 len 4], 0
            require mem[_1183 + 96 len 4], 0 <= 4294967296
            require mem[_1183 + 96 len 4], 0 + 32 <= return_data.size
            require mem[_1183 + mem[_1183 + 96 len 4], 0 + 96] <= 4294967296 and mem[_1183 + 96 len 4], 0 + (32 * mem[_1183 + mem[_1183 + 96 len 4], 0 + 96]) + 32 <= return_data.size
            mem[_1183 + ceil32(return_data.size) + 96] = mem[_1183 + mem[_1183 + 96 len 4], 0 + 96]
            _5925 = mem[_1183 + _5627 + 96]
            t = 0
            while t < 32 * _5925:
                mem[t + _1183 + ceil32(return_data.size) + 128] = mem[t + _1183 + _5627 + 128]
                t = t + 32
                continue 
            mem[64] = (32 * _5925) + _1183 + ceil32(return_data.size) + 128
            require mem[_1183 + ceil32(return_data.size) + 96] - 1 < mem[_1183 + ceil32(return_data.size) + 96]
            _11893 = mem[(32 * mem[_1183 + ceil32(return_data.size) + 96] - 1) + _1183 + ceil32(return_data.size) + 128]
            mem[(32 * _5925) + _1183 + ceil32(return_data.size) + 128] = 3
            mem[(32 * _5925) + _1183 + ceil32(return_data.size) + 160] = 0x5848b832e872d9edd84ac5718d58f21fd9c96
            mem[0] = _1145
            mem[(32 * _5925) + _1183 + ceil32(return_data.size) + 192] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c
            mem[(32 * _5925) + _1183 + ceil32(return_data.size) + 224] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
            mem[(32 * _5925) + _1183 + ceil32(return_data.size) + 256] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[(32 * _5925) + _1183 + ceil32(return_data.size) + 260] = _11893
            mem[(32 * _5925) + _1183 + ceil32(return_data.size) + 292] = 64
            mem[(32 * _5925) + _1183 + ceil32(return_data.size) + 324] = 3
            t = 0
            while t < 96:
                mem[t + (32 * _5925) + _1183 + ceil32(return_data.size) + 356] = mem[t + (32 * _5925) + _1183 + ceil32(return_data.size) + 160]
                t = t + 32
                continue 
            require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
            staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c29.getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args _11893, Array(len=3, data=mem[(32 * _5925) + _1183 + ceil32(return_data.size) + 356 len 96])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _5925) + _1183 + ceil32(return_data.size) + 256 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * _5925) + _1183 + (2 * ceil32(return_data.size)) + 256
            require return_data.size >= 32
            _18283 = mem[(32 * _5925) + _1183 + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _11893) >> 32
            require mem[(32 * _5925) + _1183 + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _11893) >> 32 <= 4294967296
            require mem[(32 * _5925) + _1183 + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _11893) >> 32 + 32 <= return_data.size
            require mem[(32 * _5925) + _1183 + ceil32(return_data.size) + mem[(32 * _5925) + _1183 + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _11893) >> 32 + 256] <= 4294967296 and mem[(32 * _5925) + _1183 + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _11893) >> 32 + (32 * mem[(32 * _5925) + _1183 + ceil32(return_data.size) + mem[(32 * _5925) + _1183 + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _11893) >> 32 + 256]) + 32 <= return_data.size
            mem[(32 * _5925) + _1183 + (2 * ceil32(return_data.size)) + 256] = mem[(32 * _5925) + _1183 + ceil32(return_data.size) + mem[(32 * _5925) + _1183 + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _11893) >> 32 + 256]
            _18527 = mem[(32 * _5925) + _1183 + ceil32(return_data.size) + _18283 + 256]
            t = 0
            while t < 32 * _18527:
                mem[t + (32 * _5925) + _1183 + (2 * ceil32(return_data.size)) + 288] = mem[t + (32 * _5925) + _1183 + ceil32(return_data.size) + _18283 + 288]
                t = t + 32
                continue 
            mem[64] = (32 * _18527) + (32 * _5925) + _1183 + (2 * ceil32(return_data.size)) + 288
            require mem[(32 * _5925) + _1183 + (2 * ceil32(return_data.size)) + 256] - 1 < mem[(32 * _5925) + _1183 + (2 * ceil32(return_data.size)) + 256]
            if mem[(32 * mem[(32 * _5925) + _1183 + (2 * ceil32(return_data.size)) + 256] - 1) + (32 * _5925) + _1183 + (2 * ceil32(return_data.size)) + 288] <= s:
                idx = idx + 1
                s = s
                continue 
            idx = idx + 1
            s = mem[(32 * mem[(32 * _5925) + _1183 + (2 * ceil32(return_data.size)) + 256] - 1) + (32 * _5925) + _1183 + (2 * ceil32(return_data.size)) + 288]
            continue 
        t = 0
        u = 0
        while t < 4:
            if not t:
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
                staticcall 0x83000000000000000000000000ad84341756bf337f5a0164515b1f6f993d194e.0x313ce567 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(0x4900000000000000000000000004068da6c83afcfa0e13ba15a6696662335d5b)
                staticcall 0x4900000000000000000000000004068da6c83afcfa0e13ba15a6696662335d5b.0x313ce567 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(0x4068da6c83afcfa0e13ba15a6696662335d5b)
                staticcall 0x4068da6c83afcfa0e13ba15a6696662335d5b.0x313ce567 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(0x83000000000000000000000000ad84341756bf337f5a0164515b1f6f993d194e)
                staticcall 0x83000000000000000000000000ad84341756bf337f5a0164515b1f6f993d194e.0x313ce567 with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not 3 * s:
                    _9082 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_9082] = 26
                    mem[_9082 + 32] = 'SafeMath: division by zero'
                    if not 10^uint8(ext_call.return_data[0]):
                        _9225 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _9225 + 68] = mem[idx + _9082 + 32]
                            idx = idx + 32
                            continue 
                        mem[_9225 + 68] = mem[_9225 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _9225 + -mem[64] + 100
                    require 10^uint8(ext_call.return_data[0] - 6)
                    require 10^uint8(ext_call.return_data[0] - 6)
                    if 0 / 10^uint8(ext_call.return_data[0]) <= ext_call.return_data[0]:
                        v = 0
                        w = 0 / 10^uint8(ext_call.return_data[0])
                        while v < 10000:
                            require 10^uint8(ext_call.return_data[0] - 6)
                            require 10^uint8(ext_call.return_data[0] - 6)
                            if ((ext_call.return_data[0] - w / 10^uint8(ext_call.return_data[0] - 6))^2 * ext_call.return_data[0] - w / 10^uint8(ext_call.return_data[0] - 6) * ext_call.return_data[0] + s / 10^uint8(ext_call.return_data[0] - 6)) + ((ext_call.return_data[0] + s / 10^uint8(ext_call.return_data[0] - 6))^2 * ext_call.return_data[0] - w / 10^uint8(ext_call.return_data[0] - 6) * ext_call.return_data[0] + s / 10^uint8(ext_call.return_data[0] - 6)) / 2 <= ((ext_call.return_data[0] / 10^uint8(ext_call.return_data[0] - 6))^2 * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0] - 6) * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0] - 6)) + ((ext_call.return_data[0] / 10^uint8(ext_call.return_data[0] - 6))^2 * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0] - 6) * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0] - 6)) / 2:
                                v = v + 1
                                w = 99000 * w / 100000
                                continue 
                            if not w:
                                _13197 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_13197] = 26
                                mem[_13197 + 32] = 'SafeMath: division by zero'
                                _15024 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_15024] = 30
                                mem[_15024 + 32] = 'SafeMath: subtraction overflow'
                                if 0 <= w:
                                    if w <= u:
                                        t = t + 1
                                        u = u
                                        continue 
                                    t = t + 1
                                    u = w
                                    continue 
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                                s = 32
                                while s < 30:
                                    mem[s + mem[64] + 68] = mem[s + _15024 + 32]
                                    s = s + 32
                                    continue 
                            else:
                                if 5 * w / w != 5:
                                    revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                _13483 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_13483] = 26
                                mem[_13483 + 32] = 'SafeMath: division by zero'
                                _15490 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_15490] = 30
                                mem[_15490 + 32] = 'SafeMath: subtraction overflow'
                                if 5 * w / 1000 <= w:
                                    if w - (5 * w / 1000) <= u:
                                        t = t + 1
                                        u = u
                                        continue 
                                    t = t + 1
                                    u = w - (5 * w / 1000)
                                    continue 
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                                idx = 32
                                while idx < 30:
                                    mem[idx + mem[64] + 68] = mem[idx + _15490 + 32]
                                    idx = idx + 32
                                    continue 
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not w:
                            _12494 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_12494] = 26
                            mem[_12494 + 32] = 'SafeMath: division by zero'
                            _13337 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_13337] = 30
                            mem[_13337 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= w:
                                if w <= u:
                                    t = t + 1
                                    u = u
                                    continue 
                                t = t + 1
                                u = w
                                continue 
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                            idx = 32
                            while idx < 30:
                                mem[idx + mem[64] + 68] = mem[idx + _13337 + 32]
                                idx = idx + 32
                                continue 
                        else:
                            if 5 * w / w != 5:
                                revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            _12671 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_12671] = 26
                            mem[_12671 + 32] = 'SafeMath: division by zero'
                            _13704 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_13704] = 30
                            mem[_13704 + 32] = 'SafeMath: subtraction overflow'
                            if 5 * w / 1000 <= w:
                                if w - (5 * w / 1000) <= u:
                                    t = t + 1
                                    u = u
                                    continue 
                                t = t + 1
                                u = w - (5 * w / 1000)
                                continue 
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                            idx = 32
                            while idx < 30:
                                mem[idx + mem[64] + 68] = mem[idx + _13704 + 32]
                                idx = idx + 32
                                continue 
                    else:
                        idx = 0
                        v = ext_call.return_data[0]
                        while idx < 10000:
                            require 10^uint8(ext_call.return_data[0] - 6)
                            require 10^uint8(ext_call.return_data[0] - 6)
                            if ((ext_call.return_data[0] - v / 10^uint8(ext_call.return_data[0] - 6))^2 * ext_call.return_data[0] - v / 10^uint8(ext_call.return_data[0] - 6) * ext_call.return_data[0] + s / 10^uint8(ext_call.return_data[0] - 6)) + ((ext_call.return_data[0] + s / 10^uint8(ext_call.return_data[0] - 6))^2 * ext_call.return_data[0] - v / 10^uint8(ext_call.return_data[0] - 6) * ext_call.return_data[0] + s / 10^uint8(ext_call.return_data[0] - 6)) / 2 <= ((ext_call.return_data[0] / 10^uint8(ext_call.return_data[0] - 6))^2 * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0] - 6) * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0] - 6)) + ((ext_call.return_data[0] / 10^uint8(ext_call.return_data[0] - 6))^2 * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0] - 6) * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0] - 6)) / 2:
                                idx = idx + 1
                                v = 99900 * v / 100000
                                continue 
                            if not v:
                                _13198 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_13198] = 26
                                mem[_13198 + 32] = 'SafeMath: division by zero'
                                _15028 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_15028] = 30
                                mem[_15028 + 32] = 'SafeMath: subtraction overflow'
                                if 0 <= v:
                                    if v <= u:
                                        t = t + 1
                                        u = u
                                        continue 
                                    t = t + 1
                                    u = v
                                    continue 
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                                idx = 32
                                while idx < 30:
                                    mem[idx + mem[64] + 68] = mem[idx + _15028 + 32]
                                    idx = idx + 32
                                    continue 
                            else:
                                if 5 * v / v != 5:
                                    revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                _13484 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_13484] = 26
                                mem[_13484 + 32] = 'SafeMath: division by zero'
                                _15495 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_15495] = 30
                                mem[_15495 + 32] = 'SafeMath: subtraction overflow'
                                if 5 * v / 1000 <= v:
                                    if v - (5 * v / 1000) <= u:
                                        t = t + 1
                                        u = u
                                        continue 
                                    t = t + 1
                                    u = v - (5 * v / 1000)
                                    continue 
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                                idx = 32
                                while idx < 30:
                                    mem[idx + mem[64] + 68] = mem[idx + _15495 + 32]
                                    idx = idx + 32
                                    continue 
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not v:
                            _12495 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_12495] = 26
                            mem[_12495 + 32] = 'SafeMath: division by zero'
                            _13338 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_13338] = 30
                            mem[_13338 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= v:
                                if v <= u:
                                    t = t + 1
                                    u = u
                                    continue 
                                t = t + 1
                                u = v
                                continue 
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                            idx = 32
                            while idx < 30:
                                mem[idx + mem[64] + 68] = mem[idx + _13338 + 32]
                                idx = idx + 32
                                continue 
                        else:
                            if 5 * v / v != 5:
                                revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            _12672 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_12672] = 26
                            mem[_12672 + 32] = 'SafeMath: division by zero'
                            _13708 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_13708] = 30
                            mem[_13708 + 32] = 'SafeMath: subtraction overflow'
                            if 5 * v / 1000 <= v:
                                if v - (5 * v / 1000) <= u:
                                    t = t + 1
                                    u = u
                                    continue 
                                t = t + 1
                                u = v - (5 * v / 1000)
                                continue 
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                            idx = 32
                            while idx < 30:
                                mem[idx + mem[64] + 68] = mem[idx + _13708 + 32]
                                idx = idx + 32
                                continue 
                else:
                    if 3 * 10^uint8(ext_call.return_data[0]) * s / 3 * s != 10^uint8(ext_call.return_data[0]):
                        revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _9224 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_9224] = 26
                    mem[_9224 + 32] = 'SafeMath: division by zero'
                    if not 10^uint8(ext_call.return_data[0]):
                        _9334 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _9334 + 68] = mem[idx + _9224 + 32]
                            idx = idx + 32
                            continue 
                        mem[_9334 + 68] = mem[_9334 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _9334 + -mem[64] + 100
                    require 10^uint8(ext_call.return_data[0] - 6)
                    require 10^uint8(ext_call.return_data[0] - 6)
                    if 3 * 10^uint8(ext_call.return_data[0]) * s / 10^uint8(ext_call.return_data[0]) <= ext_call.return_data[0]:
                        idx = 0
                        v = 3 * 10^uint8(ext_call.return_data[0]) * s / 10^uint8(ext_call.return_data[0])
                        while idx < 10000:
                            require 10^uint8(ext_call.return_data[0] - 6)
                            require 10^uint8(ext_call.return_data[0] - 6)
                            if ((ext_call.return_data[0] - v / 10^uint8(ext_call.return_data[0] - 6))^2 * ext_call.return_data[0] - v / 10^uint8(ext_call.return_data[0] - 6) * ext_call.return_data[0] + s / 10^uint8(ext_call.return_data[0] - 6)) + ((ext_call.return_data[0] + s / 10^uint8(ext_call.return_data[0] - 6))^2 * ext_call.return_data[0] - v / 10^uint8(ext_call.return_data[0] - 6) * ext_call.return_data[0] + s / 10^uint8(ext_call.return_data[0] - 6)) / 2 <= ((ext_call.return_data[0] / 10^uint8(ext_call.return_data[0] - 6))^2 * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0] - 6) * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0] - 6)) + ((ext_call.return_data[0] / 10^uint8(ext_call.return_data[0] - 6))^2 * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0] - 6) * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0] - 6)) / 2:
                                idx = idx + 1
                                v = 99000 * v / 100000
                                continue 
                            if not v:
                                _13195 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_13195] = 26
                                mem[_13195 + 32] = 'SafeMath: division by zero'
                                _15016 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_15016] = 30
                                mem[_15016 + 32] = 'SafeMath: subtraction overflow'
                                if 0 <= v:
                                    if v <= u:
                                        t = t + 1
                                        u = u
                                        continue 
                                    t = t + 1
                                    u = v
                                    continue 
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                                idx = 32
                                while idx < 30:
                                    mem[idx + mem[64] + 68] = mem[idx + _15016 + 32]
                                    idx = idx + 32
                                    continue 
                            else:
                                if 5 * v / v != 5:
                                    revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                _13481 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_13481] = 26
                                mem[_13481 + 32] = 'SafeMath: division by zero'
                                _15480 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_15480] = 30
                                mem[_15480 + 32] = 'SafeMath: subtraction overflow'
                                if 5 * v / 1000 <= v:
                                    if v - (5 * v / 1000) <= u:
                                        t = t + 1
                                        u = u
                                        continue 
                                    t = t + 1
                                    u = v - (5 * v / 1000)
                                    continue 
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                                idx = 32
                                while idx < 30:
                                    mem[idx + mem[64] + 68] = mem[idx + _15480 + 32]
                                    idx = idx + 32
                                    continue 
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not v:
                            _12492 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_12492] = 26
                            mem[_12492 + 32] = 'SafeMath: division by zero'
                            _13335 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_13335] = 30
                            mem[_13335 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= v:
                                if v <= u:
                                    t = t + 1
                                    u = u
                                    continue 
                                t = t + 1
                                u = v
                                continue 
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                            idx = 32
                            while idx < 30:
                                mem[idx + mem[64] + 68] = mem[idx + _13335 + 32]
                                idx = idx + 32
                                continue 
                        else:
                            if 5 * v / v != 5:
                                revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            _12669 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_12669] = 26
                            mem[_12669 + 32] = 'SafeMath: division by zero'
                            _13696 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_13696] = 30
                            mem[_13696 + 32] = 'SafeMath: subtraction overflow'
                            if 5 * v / 1000 <= v:
                                if v - (5 * v / 1000) <= u:
                                    t = t + 1
                                    u = u
                                    continue 
                                t = t + 1
                                u = v - (5 * v / 1000)
                                continue 
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                            idx = 32
                            while idx < 30:
                                mem[idx + mem[64] + 68] = mem[idx + _13696 + 32]
                                idx = idx + 32
                                continue 
                    else:
                        idx = 0
                        v = ext_call.return_data[0]
                        while idx < 10000:
                            require 10^uint8(ext_call.return_data[0] - 6)
                            require 10^uint8(ext_call.return_data[0] - 6)
                            if ((ext_call.return_data[0] - v / 10^uint8(ext_call.return_data[0] - 6))^2 * ext_call.return_data[0] - v / 10^uint8(ext_call.return_data[0] - 6) * ext_call.return_data[0] + s / 10^uint8(ext_call.return_data[0] - 6)) + ((ext_call.return_data[0] + s / 10^uint8(ext_call.return_data[0] - 6))^2 * ext_call.return_data[0] - v / 10^uint8(ext_call.return_data[0] - 6) * ext_call.return_data[0] + s / 10^uint8(ext_call.return_data[0] - 6)) / 2 <= ((ext_call.return_data[0] / 10^uint8(ext_call.return_data[0] - 6))^2 * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0] - 6) * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0] - 6)) + ((ext_call.return_data[0] / 10^uint8(ext_call.return_data[0] - 6))^2 * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0] - 6) * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0] - 6)) / 2:
                                idx = idx + 1
                                v = 99900 * v / 100000
                                continue 
                            if not v:
                                _13196 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_13196] = 26
                                mem[_13196 + 32] = 'SafeMath: division by zero'
                                _15020 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_15020] = 30
                                mem[_15020 + 32] = 'SafeMath: subtraction overflow'
                                if 0 <= v:
                                    if v <= u:
                                        t = t + 1
                                        u = u
                                        continue 
                                    t = t + 1
                                    u = v
                                    continue 
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                                idx = 32
                                while idx < 30:
                                    mem[idx + mem[64] + 68] = mem[idx + _15020 + 32]
                                    idx = idx + 32
                                    continue 
                            else:
                                if 5 * v / v != 5:
                                    revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                _13482 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_13482] = 26
                                mem[_13482 + 32] = 'SafeMath: division by zero'
                                _15485 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_15485] = 30
                                mem[_15485 + 32] = 'SafeMath: subtraction overflow'
                                if 5 * v / 1000 <= v:
                                    if v - (5 * v / 1000) <= u:
                                        t = t + 1
                                        u = u
                                        continue 
                                    t = t + 1
                                    u = v - (5 * v / 1000)
                                    continue 
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                                idx = 32
                                while idx < 30:
                                    mem[idx + mem[64] + 68] = mem[idx + _15485 + 32]
                                    idx = idx + 32
                                    continue 
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not v:
                            _12493 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_12493] = 26
                            mem[_12493 + 32] = 'SafeMath: division by zero'
                            _13336 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_13336] = 30
                            mem[_13336 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= v:
                                if v <= u:
                                    t = t + 1
                                    u = u
                                    continue 
                                t = t + 1
                                u = v
                                continue 
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                            idx = 32
                            while idx < 30:
                                mem[idx + mem[64] + 68] = mem[idx + _13336 + 32]
                                idx = idx + 32
                                continue 
                        else:
                            if 5 * v / v != 5:
                                revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            _12670 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_12670] = 26
                            mem[_12670 + 32] = 'SafeMath: division by zero'
                            _13700 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_13700] = 30
                            mem[_13700 + 32] = 'SafeMath: subtraction overflow'
                            if 5 * v / 1000 <= v:
                                if v - (5 * v / 1000) <= u:
                                    t = t + 1
                                    u = u
                                    continue 
                                t = t + 1
                                u = v - (5 * v / 1000)
                                continue 
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                            idx = 32
                            while idx < 30:
                                mem[idx + mem[64] + 68] = mem[idx + _13700 + 32]
                                idx = idx + 32
                                continue 
                revert with 0, 'SafeMath: subtraction overflow'
            if 1 == t:
                _5623 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                require 0 < mem[_5623]
                mem[_5623 + 32] = 0xad84341756bf337f5a0164515b1f6f993d194e
                require 1 < mem[_5623]
                mem[_5623 + 64] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                mem[_5623 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_5623 + 100] = s
                mem[_5623 + 132] = 64
                mem[_5623 + 164] = mem[_5623]
                idx = 0
                while idx < 32 * mem[_5623]:
                    mem[idx + _5623 + 196] = mem[idx + _5623 + 32]
                    idx = idx + 32
                    continue 
                require ext_code.size(0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52)
                staticcall 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args s, 64, mem[_5623 + 164 len (32 * mem[_5623]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_5623 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _5623 + ceil32(return_data.size) + 96
                require return_data.size >= 32
                _12215 = mem[_5623 + 96 len 4], Mask(224, 32, s) >> 32
                require mem[_5623 + 96 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                require mem[_5623 + 96 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                require mem[_5623 + mem[_5623 + 96 len 4], Mask(224, 32, s) >> 32 + 96] <= 4294967296 and mem[_5623 + 96 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_5623 + mem[_5623 + 96 len 4], Mask(224, 32, s) >> 32 + 96]) + 32 <= return_data.size
                mem[_5623 + ceil32(return_data.size) + 96] = mem[_5623 + mem[_5623 + 96 len 4], Mask(224, 32, s) >> 32 + 96]
                _12595 = mem[_5623 + _12215 + 96]
                idx = 0
                while idx < 32 * _12595:
                    mem[idx + _5623 + ceil32(return_data.size) + 128] = mem[idx + _5623 + _12215 + 128]
                    idx = idx + 32
                    continue 
                mem[64] = (32 * _12595) + _5623 + ceil32(return_data.size) + 128
                require mem[_5623 + ceil32(return_data.size) + 96] - 1 < mem[_5623 + ceil32(return_data.size) + 96]
                if mem[(32 * mem[_5623 + ceil32(return_data.size) + 96] - 1) + _5623 + ceil32(return_data.size) + 128] <= u:
                    t = t + 1
                    u = u
                    continue 
                t = t + 1
                u = mem[(32 * mem[_5623 + ceil32(return_data.size) + 96] - 1) + _5623 + ceil32(return_data.size) + 128]
                continue 
            if 2 == t:
                _5803 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                require 0 < mem[_5803]
                mem[_5803 + 32] = 0xad84341756bf337f5a0164515b1f6f993d194e
                require 1 < mem[_5803]
                mem[_5803 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c
                mem[_5803 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_5803 + 100] = s
                mem[_5803 + 132] = 64
                mem[_5803 + 164] = mem[_5803]
                idx = 0
                while idx < 32 * mem[_5803]:
                    mem[idx + _5803 + 196] = mem[idx + _5803 + 32]
                    idx = idx + 32
                    continue 
                require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c29.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args s, 64, mem[_5803 + 164 len (32 * mem[_5803]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_5803 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _5803 + ceil32(return_data.size) + 96
                require return_data.size >= 32
                _12211 = mem[_5803 + 96 len 4], Mask(224, 32, s) >> 32
                require mem[_5803 + 96 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                require mem[_5803 + 96 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                require mem[_5803 + mem[_5803 + 96 len 4], Mask(224, 32, s) >> 32 + 96] <= 4294967296 and mem[_5803 + 96 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_5803 + mem[_5803 + 96 len 4], Mask(224, 32, s) >> 32 + 96]) + 32 <= return_data.size
                mem[_5803 + ceil32(return_data.size) + 96] = mem[_5803 + mem[_5803 + 96 len 4], Mask(224, 32, s) >> 32 + 96]
                _12593 = mem[_5803 + _12211 + 96]
                idx = 0
                while idx < 32 * _12593:
                    mem[idx + _5803 + ceil32(return_data.size) + 128] = mem[idx + _5803 + _12211 + 128]
                    idx = idx + 32
                    continue 
                mem[64] = (32 * _12593) + _5803 + ceil32(return_data.size) + 128
                require mem[_5803 + ceil32(return_data.size) + 96] - 1 < mem[_5803 + ceil32(return_data.size) + 96]
                _17689 = mem[(32 * mem[_5803 + ceil32(return_data.size) + 96] - 1) + _5803 + ceil32(return_data.size) + 128]
                mem[(32 * _12593) + _5803 + ceil32(return_data.size) + 128] = 2
                mem[(32 * _12593) + _5803 + ceil32(return_data.size) + 160] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c
                mem[(32 * _12593) + _5803 + ceil32(return_data.size) + 192] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                mem[(32 * _12593) + _5803 + ceil32(return_data.size) + 224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[(32 * _12593) + _5803 + ceil32(return_data.size) + 228] = _17689
                mem[(32 * _12593) + _5803 + ceil32(return_data.size) + 260] = 64
                mem[(32 * _12593) + _5803 + ceil32(return_data.size) + 292] = 2
                idx = 0
                while idx < 64:
                    mem[idx + (32 * _12593) + _5803 + ceil32(return_data.size) + 324] = mem[idx + (32 * _12593) + _5803 + ceil32(return_data.size) + 160]
                    idx = idx + 32
                    continue 
                require ext_code.size(0x67a937ea41cd05ec8c832a044afc0100f30aa4b5)
                staticcall 0x67a937ea41cd05ec8c832a044afc0100f30aa4b5.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args _17689, Array(len=2, data=mem[(32 * _12593) + _5803 + ceil32(return_data.size) + 324 len 64])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * _12593) + _5803 + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * _12593) + _5803 + (2 * ceil32(return_data.size)) + 224
                require return_data.size >= 32
                _19191 = mem[(32 * _12593) + _5803 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _17689) >> 32
                require mem[(32 * _12593) + _5803 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _17689) >> 32 <= 4294967296
                require mem[(32 * _12593) + _5803 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _17689) >> 32 + 32 <= return_data.size
                require mem[(32 * _12593) + _5803 + ceil32(return_data.size) + mem[(32 * _12593) + _5803 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _17689) >> 32 + 224] <= 4294967296 and mem[(32 * _12593) + _5803 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _17689) >> 32 + (32 * mem[(32 * _12593) + _5803 + ceil32(return_data.size) + mem[(32 * _12593) + _5803 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _17689) >> 32 + 224]) + 32 <= return_data.size
                mem[(32 * _12593) + _5803 + (2 * ceil32(return_data.size)) + 224] = mem[(32 * _12593) + _5803 + ceil32(return_data.size) + mem[(32 * _12593) + _5803 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _17689) >> 32 + 224]
                _19269 = mem[(32 * _12593) + _5803 + ceil32(return_data.size) + _19191 + 224]
                idx = 0
                while idx < 32 * _19269:
                    mem[idx + (32 * _12593) + _5803 + (2 * ceil32(return_data.size)) + 256] = mem[idx + (32 * _12593) + _5803 + ceil32(return_data.size) + _19191 + 256]
                    idx = idx + 32
                    continue 
                mem[64] = (32 * _19269) + (32 * _12593) + _5803 + (2 * ceil32(return_data.size)) + 256
                require mem[(32 * _12593) + _5803 + (2 * ceil32(return_data.size)) + 224] - 1 < mem[(32 * _12593) + _5803 + (2 * ceil32(return_data.size)) + 224]
                if mem[(32 * mem[(32 * _12593) + _5803 + (2 * ceil32(return_data.size)) + 224] - 1) + (32 * _12593) + _5803 + (2 * ceil32(return_data.size)) + 256] <= u:
                    t = t + 1
                    u = u
                    continue 
                t = t + 1
                u = mem[(32 * mem[(32 * _12593) + _5803 + (2 * ceil32(return_data.size)) + 224] - 1) + (32 * _12593) + _5803 + (2 * ceil32(return_data.size)) + 256]
                continue 
            if t != 3:
                if s <= u:
                    t = t + 1
                    u = u
                    continue 
                t = t + 1
                u = s
                continue 
            _5905 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            require 0 < mem[_5905]
            mem[_5905 + 32] = 0xad84341756bf337f5a0164515b1f6f993d194e
            require 1 < mem[_5905]
            mem[_5905 + 64] = 0x5848b832e872d9edd84ac5718d58f21fd9c96
            mem[_5905 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[_5905 + 100] = s
            mem[_5905 + 132] = 64
            mem[_5905 + 164] = mem[_5905]
            idx = 0
            while idx < 32 * mem[_5905]:
                mem[idx + _5905 + 196] = mem[idx + _5905 + 32]
                idx = idx + 32
                continue 
            require ext_code.size(0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52)
            staticcall 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52.getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args s, 64, mem[_5905 + 164 len (32 * mem[_5905]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[_5905 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = _5905 + ceil32(return_data.size) + 96
            require return_data.size >= 32
            _12207 = mem[_5905 + 96 len 4], Mask(224, 32, s) >> 32
            require mem[_5905 + 96 len 4], Mask(224, 32, s) >> 32 <= 4294967296
            require mem[_5905 + 96 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
            require mem[_5905 + mem[_5905 + 96 len 4], Mask(224, 32, s) >> 32 + 96] <= 4294967296 and mem[_5905 + 96 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_5905 + mem[_5905 + 96 len 4], Mask(224, 32, s) >> 32 + 96]) + 32 <= return_data.size
            mem[_5905 + ceil32(return_data.size) + 96] = mem[_5905 + mem[_5905 + 96 len 4], Mask(224, 32, s) >> 32 + 96]
            _12591 = mem[_5905 + _12207 + 96]
            idx = 0
            while idx < 32 * _12591:
                mem[idx + _5905 + ceil32(return_data.size) + 128] = mem[idx + _5905 + _12207 + 128]
                idx = idx + 32
                continue 
            require mem[_5905 + ceil32(return_data.size) + 96] - 1 < mem[_5905 + ceil32(return_data.size) + 96]
            _17687 = mem[(32 * mem[_5905 + ceil32(return_data.size) + 96] - 1) + _5905 + ceil32(return_data.size) + 128]
            mem[(32 * _12591) + _5905 + ceil32(return_data.size) + 128] = 3
            mem[(32 * _12591) + _5905 + ceil32(return_data.size) + 160] = 0x5848b832e872d9edd84ac5718d58f21fd9c96
            mem[(32 * _12591) + _5905 + ceil32(return_data.size) + 192] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c
            mem[(32 * _12591) + _5905 + ceil32(return_data.size) + 224] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
            mem[(32 * _12591) + _5905 + ceil32(return_data.size) + 256] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[(32 * _12591) + _5905 + ceil32(return_data.size) + 260] = _17687
            mem[(32 * _12591) + _5905 + ceil32(return_data.size) + 292] = 64
            mem[(32 * _12591) + _5905 + ceil32(return_data.size) + 324] = 3
            idx = 0
            while idx < 96:
                mem[idx + (32 * _12591) + _5905 + ceil32(return_data.size) + 356] = mem[idx + (32 * _12591) + _5905 + ceil32(return_data.size) + 160]
                idx = idx + 32
                continue 
            require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
            staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c29.getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args _17687, Array(len=3, data=mem[(32 * _12591) + _5905 + ceil32(return_data.size) + 356 len 96])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _12591) + _5905 + ceil32(return_data.size) + 256 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * _12591) + _5905 + (2 * ceil32(return_data.size)) + 256
            require return_data.size >= 32
            _19187 = mem[(32 * _12591) + _5905 + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _17687) >> 32
            require mem[(32 * _12591) + _5905 + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _17687) >> 32 <= 4294967296
            require mem[(32 * _12591) + _5905 + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _17687) >> 32 + 32 <= return_data.size
            require mem[(32 * _12591) + _5905 + ceil32(return_data.size) + mem[(32 * _12591) + _5905 + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _17687) >> 32 + 256] <= 4294967296 and mem[(32 * _12591) + _5905 + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _17687) >> 32 + (32 * mem[(32 * _12591) + _5905 + ceil32(return_data.size) + mem[(32 * _12591) + _5905 + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _17687) >> 32 + 256]) + 32 <= return_data.size
            mem[(32 * _12591) + _5905 + (2 * ceil32(return_data.size)) + 256] = mem[(32 * _12591) + _5905 + ceil32(return_data.size) + mem[(32 * _12591) + _5905 + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _17687) >> 32 + 256]
            _19267 = mem[(32 * _12591) + _5905 + ceil32(return_data.size) + _19187 + 256]
            idx = 0
            while idx < 32 * _19267:
                mem[idx + (32 * _12591) + _5905 + (2 * ceil32(return_data.size)) + 288] = mem[idx + (32 * _12591) + _5905 + ceil32(return_data.size) + _19187 + 288]
                idx = idx + 32
                continue 
            mem[64] = (32 * _19267) + (32 * _12591) + _5905 + (2 * ceil32(return_data.size)) + 288
            require mem[(32 * _12591) + _5905 + (2 * ceil32(return_data.size)) + 256] - 1 < mem[(32 * _12591) + _5905 + (2 * ceil32(return_data.size)) + 256]
            if mem[(32 * mem[(32 * _12591) + _5905 + (2 * ceil32(return_data.size)) + 256] - 1) + (32 * _12591) + _5905 + (2 * ceil32(return_data.size)) + 288] <= u:
                t = t + 1
                u = u
                continue 
            t = t + 1
            u = mem[(32 * mem[(32 * _12591) + _5905 + (2 * ceil32(return_data.size)) + 256] - 1) + (32 * _12591) + _5905 + (2 * ceil32(return_data.size)) + 288]
            continue 
    else:
        if 10^6 * sub_7d0b6809 / sub_7d0b6809 != 10^6:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
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
                staticcall 0x83000000000000000000000000ad84341756bf337f5a0164515b1f6f993d194e.0x313ce567 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(0x4900000000000000000000000004068da6c83afcfa0e13ba15a6696662335d5b)
                staticcall 0x4900000000000000000000000004068da6c83afcfa0e13ba15a6696662335d5b.0x313ce567 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(0x4068da6c83afcfa0e13ba15a6696662335d5b)
                staticcall 0x4068da6c83afcfa0e13ba15a6696662335d5b.0x313ce567 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(0x83000000000000000000000000ad84341756bf337f5a0164515b1f6f993d194e)
                staticcall 0x83000000000000000000000000ad84341756bf337f5a0164515b1f6f993d194e.0x313ce567 with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not 3 * 10^6 * sub_7d0b6809:
                    _2436 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2436] = 26
                    mem[_2436 + 32] = 'SafeMath: division by zero'
                    if not 10^uint8(ext_call.return_data[0]):
                        _2503 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _2503 + 68] = mem[idx + _2436 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2503 + 68] = mem[_2503 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _2503 + -mem[64] + 100
                    require 10^uint8(ext_call.return_data[0] - 6)
                    require 10^uint8(ext_call.return_data[0] - 6)
                    if 0 / 10^uint8(ext_call.return_data[0]) <= ext_call.return_data[0]:
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
                                _6605 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_6605] = 26
                                mem[_6605 + 32] = 'SafeMath: division by zero'
                                _7814 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_7814] = 30
                                mem[_7814 + 32] = 'SafeMath: subtraction overflow'
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
                                    mem[idx + mem[64] + 68] = mem[idx + _7814 + 32]
                                    idx = idx + 32
                                    continue 
                            else:
                                if 5 * u / u != 5:
                                    revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                _6871 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_6871] = 26
                                mem[_6871 + 32] = 'SafeMath: division by zero'
                                _8122 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_8122] = 30
                                mem[_8122 + 32] = 'SafeMath: subtraction overflow'
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
                                    mem[idx + mem[64] + 68] = mem[idx + _8122 + 32]
                                    idx = idx + 32
                                    continue 
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not u:
                            _5764 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_5764] = 26
                            mem[_5764 + 32] = 'SafeMath: division by zero'
                            _6731 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_6731] = 30
                            mem[_6731 + 32] = 'SafeMath: subtraction overflow'
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
                                mem[idx + mem[64] + 68] = mem[idx + _6731 + 32]
                                idx = idx + 32
                                continue 
                        else:
                            if 5 * u / u != 5:
                                revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            _5993 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_5993] = 26
                            mem[_5993 + 32] = 'SafeMath: division by zero'
                            _6996 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_6996] = 30
                            mem[_6996 + 32] = 'SafeMath: subtraction overflow'
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
                                mem[idx + mem[64] + 68] = mem[idx + _6996 + 32]
                                idx = idx + 32
                                continue 
                    else:
                        t = 0
                        u = ext_call.return_data[0]
                        while t < 10000:
                            require 10^uint8(ext_call.return_data[0] - 6)
                            require 10^uint8(ext_call.return_data[0] - 6)
                            if ((ext_call.return_data[0] - u / 10^uint8(ext_call.return_data[0] - 6))^2 * ext_call.return_data[0] - u / 10^uint8(ext_call.return_data[0] - 6) * ext_call.return_data[0] + (10^6 * sub_7d0b6809) / 10^uint8(ext_call.return_data[0] - 6)) + ((ext_call.return_data[0] + (10^6 * sub_7d0b6809) / 10^uint8(ext_call.return_data[0] - 6))^2 * ext_call.return_data[0] - u / 10^uint8(ext_call.return_data[0] - 6) * ext_call.return_data[0] + (10^6 * sub_7d0b6809) / 10^uint8(ext_call.return_data[0] - 6)) / 2 <= ((ext_call.return_data[0] / 10^uint8(ext_call.return_data[0] - 6))^2 * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0] - 6) * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0] - 6)) + ((ext_call.return_data[0] / 10^uint8(ext_call.return_data[0] - 6))^2 * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0] - 6) * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0] - 6)) / 2:
                                t = t + 1
                                u = 99900 * u / 100000
                                continue 
                            if not u:
                                _6606 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_6606] = 26
                                mem[_6606 + 32] = 'SafeMath: division by zero'
                                _7818 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_7818] = 30
                                mem[_7818 + 32] = 'SafeMath: subtraction overflow'
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
                                    mem[idx + mem[64] + 68] = mem[idx + _7818 + 32]
                                    idx = idx + 32
                                    continue 
                            else:
                                if 5 * u / u != 5:
                                    revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                _6872 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_6872] = 26
                                mem[_6872 + 32] = 'SafeMath: division by zero'
                                _8127 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_8127] = 30
                                mem[_8127 + 32] = 'SafeMath: subtraction overflow'
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
                                    mem[idx + mem[64] + 68] = mem[idx + _8127 + 32]
                                    idx = idx + 32
                                    continue 
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not u:
                            _5765 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_5765] = 26
                            mem[_5765 + 32] = 'SafeMath: division by zero'
                            _6732 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_6732] = 30
                            mem[_6732 + 32] = 'SafeMath: subtraction overflow'
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
                                mem[idx + mem[64] + 68] = mem[idx + _6732 + 32]
                                idx = idx + 32
                                continue 
                        else:
                            if 5 * u / u != 5:
                                revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            _5994 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_5994] = 26
                            mem[_5994 + 32] = 'SafeMath: division by zero'
                            _7000 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_7000] = 30
                            mem[_7000 + 32] = 'SafeMath: subtraction overflow'
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
                                mem[idx + mem[64] + 68] = mem[idx + _7000 + 32]
                                idx = idx + 32
                                continue 
                else:
                    if 3 * 10^6 * 10^uint8(ext_call.return_data[0]) * sub_7d0b6809 / 3 * 10^6 * sub_7d0b6809 != 10^uint8(ext_call.return_data[0]):
                        revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _2502 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2502] = 26
                    mem[_2502 + 32] = 'SafeMath: division by zero'
                    if not 10^uint8(ext_call.return_data[0]):
                        _2562 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _2562 + 68] = mem[idx + _2502 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2562 + 68] = mem[_2562 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _2562 + -mem[64] + 100
                    require 10^uint8(ext_call.return_data[0] - 6)
                    require 10^uint8(ext_call.return_data[0] - 6)
                    if 3 * 10^6 * 10^uint8(ext_call.return_data[0]) * sub_7d0b6809 / 10^uint8(ext_call.return_data[0]) <= ext_call.return_data[0]:
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
                                _6603 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_6603] = 26
                                mem[_6603 + 32] = 'SafeMath: division by zero'
                                _7806 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_7806] = 30
                                mem[_7806 + 32] = 'SafeMath: subtraction overflow'
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
                                    mem[idx + mem[64] + 68] = mem[idx + _7806 + 32]
                                    idx = idx + 32
                                    continue 
                            else:
                                if 5 * u / u != 5:
                                    revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                _6869 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_6869] = 26
                                mem[_6869 + 32] = 'SafeMath: division by zero'
                                _8112 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_8112] = 30
                                mem[_8112 + 32] = 'SafeMath: subtraction overflow'
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
                                    mem[idx + mem[64] + 68] = mem[idx + _8112 + 32]
                                    idx = idx + 32
                                    continue 
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not u:
                            _5762 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_5762] = 26
                            mem[_5762 + 32] = 'SafeMath: division by zero'
                            _6729 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_6729] = 30
                            mem[_6729 + 32] = 'SafeMath: subtraction overflow'
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
                                mem[idx + mem[64] + 68] = mem[idx + _6729 + 32]
                                idx = idx + 32
                                continue 
                        else:
                            if 5 * u / u != 5:
                                revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            _5991 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_5991] = 26
                            mem[_5991 + 32] = 'SafeMath: division by zero'
                            _6988 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_6988] = 30
                            mem[_6988 + 32] = 'SafeMath: subtraction overflow'
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
                                mem[idx + mem[64] + 68] = mem[idx + _6988 + 32]
                                idx = idx + 32
                                continue 
                    else:
                        t = 0
                        u = ext_call.return_data[0]
                        while t < 10000:
                            require 10^uint8(ext_call.return_data[0] - 6)
                            require 10^uint8(ext_call.return_data[0] - 6)
                            if ((ext_call.return_data[0] - u / 10^uint8(ext_call.return_data[0] - 6))^2 * ext_call.return_data[0] - u / 10^uint8(ext_call.return_data[0] - 6) * ext_call.return_data[0] + (10^6 * sub_7d0b6809) / 10^uint8(ext_call.return_data[0] - 6)) + ((ext_call.return_data[0] + (10^6 * sub_7d0b6809) / 10^uint8(ext_call.return_data[0] - 6))^2 * ext_call.return_data[0] - u / 10^uint8(ext_call.return_data[0] - 6) * ext_call.return_data[0] + (10^6 * sub_7d0b6809) / 10^uint8(ext_call.return_data[0] - 6)) / 2 <= ((ext_call.return_data[0] / 10^uint8(ext_call.return_data[0] - 6))^2 * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0] - 6) * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0] - 6)) + ((ext_call.return_data[0] / 10^uint8(ext_call.return_data[0] - 6))^2 * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0] - 6) * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0] - 6)) / 2:
                                t = t + 1
                                u = 99900 * u / 100000
                                continue 
                            if not u:
                                _6604 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_6604] = 26
                                mem[_6604 + 32] = 'SafeMath: division by zero'
                                _7810 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_7810] = 30
                                mem[_7810 + 32] = 'SafeMath: subtraction overflow'
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
                                    mem[idx + mem[64] + 68] = mem[idx + _7810 + 32]
                                    idx = idx + 32
                                    continue 
                            else:
                                if 5 * u / u != 5:
                                    revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                _6870 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_6870] = 26
                                mem[_6870 + 32] = 'SafeMath: division by zero'
                                _8117 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_8117] = 30
                                mem[_8117 + 32] = 'SafeMath: subtraction overflow'
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
                                    mem[idx + mem[64] + 68] = mem[idx + _8117 + 32]
                                    idx = idx + 32
                                    continue 
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not u:
                            _5763 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_5763] = 26
                            mem[_5763 + 32] = 'SafeMath: division by zero'
                            _6730 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_6730] = 30
                            mem[_6730 + 32] = 'SafeMath: subtraction overflow'
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
                                mem[idx + mem[64] + 68] = mem[idx + _6730 + 32]
                                idx = idx + 32
                                continue 
                        else:
                            if 5 * u / u != 5:
                                revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            _5992 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_5992] = 26
                            mem[_5992 + 32] = 'SafeMath: division by zero'
                            _6992 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_6992] = 30
                            mem[_6992 + 32] = 'SafeMath: subtraction overflow'
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
                                mem[idx + mem[64] + 68] = mem[idx + _6992 + 32]
                                idx = idx + 32
                                continue 
                revert with 0, 'SafeMath: subtraction overflow'
            if 1 == idx:
                _1087 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                require 0 < mem[_1087]
                mem[_1087 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                require 1 < mem[_1087]
                mem[_1087 + 64] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                mem[_1087 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_1087 + 100] = 10^6 * sub_7d0b6809
                mem[_1087 + 132] = 64
                mem[_1087 + 164] = mem[_1087]
                t = 0
                while t < 32 * mem[_1087]:
                    mem[t + _1087 + 196] = mem[t + _1087 + 32]
                    t = t + 32
                    continue 
                require ext_code.size(0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52)
                staticcall 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args 10^6 * sub_7d0b6809, 64, mem[_1087 + 164 len (32 * mem[_1087]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_1087 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _1087 + ceil32(return_data.size) + 96
                require return_data.size >= 32
                _5607 = mem[_1087 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32
                require mem[_1087 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 <= 4294967296
                require mem[_1087 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 32 <= return_data.size
                require mem[_1087 + mem[_1087 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 96] <= 4294967296 and mem[_1087 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + (32 * mem[_1087 + mem[_1087 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 96]) + 32 <= return_data.size
                mem[_1087 + ceil32(return_data.size) + 96] = mem[_1087 + mem[_1087 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 96]
                _5879 = mem[_1087 + _5607 + 96]
                t = 0
                while t < 32 * _5879:
                    mem[t + _1087 + ceil32(return_data.size) + 128] = mem[t + _1087 + _5607 + 128]
                    t = t + 32
                    continue 
                mem[64] = (32 * _5879) + _1087 + ceil32(return_data.size) + 128
                require mem[_1087 + ceil32(return_data.size) + 96] - 1 < mem[_1087 + ceil32(return_data.size) + 96]
                if mem[(32 * mem[_1087 + ceil32(return_data.size) + 96] - 1) + _1087 + ceil32(return_data.size) + 128] <= s:
                    idx = idx + 1
                    s = s
                    continue 
                idx = idx + 1
                s = mem[(32 * mem[_1087 + ceil32(return_data.size) + 96] - 1) + _1087 + ceil32(return_data.size) + 128]
                continue 
            if idx != 2:
                if idx != 3:
                    if 10^6 * sub_7d0b6809 <= s:
                        idx = idx + 1
                        s = s
                        continue 
                    idx = idx + 1
                    s = 10^6 * sub_7d0b6809
                    continue 
                _1163 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                require 0 < mem[_1163]
                mem[_1163 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                require 1 < mem[_1163]
                mem[_1163 + 64] = 0x5848b832e872d9edd84ac5718d58f21fd9c96
                mem[_1163 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_1163 + 100] = 10^6 * sub_7d0b6809
                mem[_1163 + 132] = 64
                mem[_1163 + 164] = mem[_1163]
                t = 0
                while t < 32 * mem[_1163]:
                    mem[t + _1163 + 196] = mem[t + _1163 + 32]
                    t = t + 32
                    continue 
                require ext_code.size(0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52)
                staticcall 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args 10^6 * sub_7d0b6809, 64, mem[_1163 + 164 len (32 * mem[_1163]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_1163 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _1163 + ceil32(return_data.size) + 96
                require return_data.size >= 32
                _5599 = mem[_1163 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32
                require mem[_1163 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 <= 4294967296
                require mem[_1163 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 32 <= return_data.size
                require mem[_1163 + mem[_1163 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 96] <= 4294967296 and mem[_1163 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + (32 * mem[_1163 + mem[_1163 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 96]) + 32 <= return_data.size
                mem[_1163 + ceil32(return_data.size) + 96] = mem[_1163 + mem[_1163 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 96]
                _5875 = mem[_1163 + _5599 + 96]
                t = 0
                while t < 32 * _5875:
                    mem[t + _1163 + ceil32(return_data.size) + 128] = mem[t + _1163 + _5599 + 128]
                    t = t + 32
                    continue 
                require mem[_1163 + ceil32(return_data.size) + 96] - 1 < mem[_1163 + ceil32(return_data.size) + 96]
                _11723 = mem[(32 * mem[_1163 + ceil32(return_data.size) + 96] - 1) + _1163 + ceil32(return_data.size) + 128]
                mem[(32 * _5875) + _1163 + ceil32(return_data.size) + 128] = 3
                mem[(32 * _5875) + _1163 + ceil32(return_data.size) + 160] = 0x5848b832e872d9edd84ac5718d58f21fd9c96
                mem[(32 * _5875) + _1163 + ceil32(return_data.size) + 192] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c
                mem[(32 * _5875) + _1163 + ceil32(return_data.size) + 224] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                mem[(32 * _5875) + _1163 + ceil32(return_data.size) + 256] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[(32 * _5875) + _1163 + ceil32(return_data.size) + 260] = _11723
                mem[(32 * _5875) + _1163 + ceil32(return_data.size) + 292] = 64
                mem[(32 * _5875) + _1163 + ceil32(return_data.size) + 324] = 3
                t = 0
                while t < 96:
                    mem[t + (32 * _5875) + _1163 + ceil32(return_data.size) + 356] = mem[t + (32 * _5875) + _1163 + ceil32(return_data.size) + 160]
                    t = t + 32
                    continue 
                require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c29.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args _11723, Array(len=3, data=mem[(32 * _5875) + _1163 + ceil32(return_data.size) + 356 len 96])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * _5875) + _1163 + ceil32(return_data.size) + 256 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * _5875) + _1163 + (2 * ceil32(return_data.size)) + 256
                require return_data.size >= 32
                _18267 = mem[(32 * _5875) + _1163 + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _11723) >> 32
                require mem[(32 * _5875) + _1163 + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _11723) >> 32 <= 4294967296
                require mem[(32 * _5875) + _1163 + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _11723) >> 32 + 32 <= return_data.size
                require mem[(32 * _5875) + _1163 + ceil32(return_data.size) + mem[(32 * _5875) + _1163 + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _11723) >> 32 + 256] <= 4294967296 and mem[(32 * _5875) + _1163 + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _11723) >> 32 + (32 * mem[(32 * _5875) + _1163 + ceil32(return_data.size) + mem[(32 * _5875) + _1163 + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _11723) >> 32 + 256]) + 32 <= return_data.size
                mem[(32 * _5875) + _1163 + (2 * ceil32(return_data.size)) + 256] = mem[(32 * _5875) + _1163 + ceil32(return_data.size) + mem[(32 * _5875) + _1163 + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _11723) >> 32 + 256]
                _18479 = mem[(32 * _5875) + _1163 + ceil32(return_data.size) + _18267 + 256]
                t = 0
                while t < 32 * _18479:
                    mem[t + (32 * _5875) + _1163 + (2 * ceil32(return_data.size)) + 288] = mem[t + (32 * _5875) + _1163 + ceil32(return_data.size) + _18267 + 288]
                    t = t + 32
                    continue 
                mem[64] = (32 * _18479) + (32 * _5875) + _1163 + (2 * ceil32(return_data.size)) + 288
                require mem[(32 * _5875) + _1163 + (2 * ceil32(return_data.size)) + 256] - 1 < mem[(32 * _5875) + _1163 + (2 * ceil32(return_data.size)) + 256]
                if mem[(32 * mem[(32 * _5875) + _1163 + (2 * ceil32(return_data.size)) + 256] - 1) + (32 * _5875) + _1163 + (2 * ceil32(return_data.size)) + 288] <= s:
                    idx = idx + 1
                    s = s
                    continue 
                idx = idx + 1
                s = mem[(32 * mem[(32 * _5875) + _1163 + (2 * ceil32(return_data.size)) + 256] - 1) + (32 * _5875) + _1163 + (2 * ceil32(return_data.size)) + 288]
                continue 
            _1107 = mem[0]
            _1129 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            require 0 < mem[_1129]
            mem[_1129 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
            require 1 < mem[_1129]
            mem[_1129 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c
            mem[_1129 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[_1129 + 100] = 10^6 * sub_7d0b6809
            mem[_1129 + 132] = 64
            mem[_1129 + 164] = mem[_1129]
            t = 0
            while t < 32 * mem[_1129]:
                mem[t + _1129 + 196] = mem[t + _1129 + 32]
                t = t + 32
                continue 
            require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
            staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c29.getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args 10^6 * sub_7d0b6809, 64, mem[_1129 + 164 len (32 * mem[_1129]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[_1129 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = _1129 + ceil32(return_data.size) + 96
            require return_data.size >= 32
            _5603 = mem[_1129 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32
            require mem[_1129 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 <= 4294967296
            require mem[_1129 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 32 <= return_data.size
            require mem[_1129 + mem[_1129 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 96] <= 4294967296 and mem[_1129 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + (32 * mem[_1129 + mem[_1129 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 96]) + 32 <= return_data.size
            mem[_1129 + ceil32(return_data.size) + 96] = mem[_1129 + mem[_1129 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 96]
            _5877 = mem[_1129 + _5603 + 96]
            t = 0
            while t < 32 * _5877:
                mem[t + _1129 + ceil32(return_data.size) + 128] = mem[t + _1129 + _5603 + 128]
                t = t + 32
                continue 
            require mem[_1129 + ceil32(return_data.size) + 96] - 1 < mem[_1129 + ceil32(return_data.size) + 96]
            _11725 = mem[(32 * mem[_1129 + ceil32(return_data.size) + 96] - 1) + _1129 + ceil32(return_data.size) + 128]
            mem[(32 * _5877) + _1129 + ceil32(return_data.size) + 128] = 2
            mem[0] = _1107
            mem[(32 * _5877) + _1129 + ceil32(return_data.size) + 160] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c
            mem[(32 * _5877) + _1129 + ceil32(return_data.size) + 192] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
            mem[(32 * _5877) + _1129 + ceil32(return_data.size) + 224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[(32 * _5877) + _1129 + ceil32(return_data.size) + 228] = _11725
            mem[(32 * _5877) + _1129 + ceil32(return_data.size) + 260] = 64
            mem[(32 * _5877) + _1129 + ceil32(return_data.size) + 292] = 2
            t = 0
            while t < 64:
                mem[t + (32 * _5877) + _1129 + ceil32(return_data.size) + 324] = mem[t + (32 * _5877) + _1129 + ceil32(return_data.size) + 160]
                t = t + 32
                continue 
            require ext_code.size(0x67a937ea41cd05ec8c832a044afc0100f30aa4b5)
            staticcall 0x67a937ea41cd05ec8c832a044afc0100f30aa4b5.getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args _11725, Array(len=2, data=mem[(32 * _5877) + _1129 + ceil32(return_data.size) + 324 len 64])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _5877) + _1129 + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * _5877) + _1129 + (2 * ceil32(return_data.size)) + 224
            require return_data.size >= 32
            _18271 = mem[(32 * _5877) + _1129 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _11725) >> 32
            require mem[(32 * _5877) + _1129 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _11725) >> 32 <= 4294967296
            require mem[(32 * _5877) + _1129 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _11725) >> 32 + 32 <= return_data.size
            require mem[(32 * _5877) + _1129 + ceil32(return_data.size) + mem[(32 * _5877) + _1129 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _11725) >> 32 + 224] <= 4294967296 and mem[(32 * _5877) + _1129 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _11725) >> 32 + (32 * mem[(32 * _5877) + _1129 + ceil32(return_data.size) + mem[(32 * _5877) + _1129 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _11725) >> 32 + 224]) + 32 <= return_data.size
            mem[(32 * _5877) + _1129 + (2 * ceil32(return_data.size)) + 224] = mem[(32 * _5877) + _1129 + ceil32(return_data.size) + mem[(32 * _5877) + _1129 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _11725) >> 32 + 224]
            _18481 = mem[(32 * _5877) + _1129 + ceil32(return_data.size) + _18271 + 224]
            t = 0
            while t < 32 * _18481:
                mem[t + (32 * _5877) + _1129 + (2 * ceil32(return_data.size)) + 256] = mem[t + (32 * _5877) + _1129 + ceil32(return_data.size) + _18271 + 256]
                t = t + 32
                continue 
            mem[64] = (32 * _18481) + (32 * _5877) + _1129 + (2 * ceil32(return_data.size)) + 256
            require mem[(32 * _5877) + _1129 + (2 * ceil32(return_data.size)) + 224] - 1 < mem[(32 * _5877) + _1129 + (2 * ceil32(return_data.size)) + 224]
            if mem[(32 * mem[(32 * _5877) + _1129 + (2 * ceil32(return_data.size)) + 224] - 1) + (32 * _5877) + _1129 + (2 * ceil32(return_data.size)) + 256] <= s:
                idx = idx + 1
                s = s
                continue 
            idx = idx + 1
            s = mem[(32 * mem[(32 * _5877) + _1129 + (2 * ceil32(return_data.size)) + 224] - 1) + (32 * _5877) + _1129 + (2 * ceil32(return_data.size)) + 256]
            continue 
        t = 0
        u = 0
        while t < 4:
            if not t:
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
                staticcall 0x83000000000000000000000000ad84341756bf337f5a0164515b1f6f993d194e.0x313ce567 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(0x4900000000000000000000000004068da6c83afcfa0e13ba15a6696662335d5b)
                staticcall 0x4900000000000000000000000004068da6c83afcfa0e13ba15a6696662335d5b.0x313ce567 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(0x4068da6c83afcfa0e13ba15a6696662335d5b)
                staticcall 0x4068da6c83afcfa0e13ba15a6696662335d5b.0x313ce567 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(0x83000000000000000000000000ad84341756bf337f5a0164515b1f6f993d194e)
                staticcall 0x83000000000000000000000000ad84341756bf337f5a0164515b1f6f993d194e.0x313ce567 with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not 3 * s:
                    _9026 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_9026] = 26
                    mem[_9026 + 32] = 'SafeMath: division by zero'
                    if not 10^uint8(ext_call.return_data[0]):
                        _9189 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _9189 + 68] = mem[idx + _9026 + 32]
                            idx = idx + 32
                            continue 
                        mem[_9189 + 68] = mem[_9189 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _9189 + -mem[64] + 100
                    require 10^uint8(ext_call.return_data[0] - 6)
                    require 10^uint8(ext_call.return_data[0] - 6)
                    if 0 / 10^uint8(ext_call.return_data[0]) <= ext_call.return_data[0]:
                        v = 0
                        w = 0 / 10^uint8(ext_call.return_data[0])
                        while v < 10000:
                            require 10^uint8(ext_call.return_data[0] - 6)
                            require 10^uint8(ext_call.return_data[0] - 6)
                            if ((ext_call.return_data[0] - w / 10^uint8(ext_call.return_data[0] - 6))^2 * ext_call.return_data[0] - w / 10^uint8(ext_call.return_data[0] - 6) * ext_call.return_data[0] + s / 10^uint8(ext_call.return_data[0] - 6)) + ((ext_call.return_data[0] + s / 10^uint8(ext_call.return_data[0] - 6))^2 * ext_call.return_data[0] - w / 10^uint8(ext_call.return_data[0] - 6) * ext_call.return_data[0] + s / 10^uint8(ext_call.return_data[0] - 6)) / 2 <= ((ext_call.return_data[0] / 10^uint8(ext_call.return_data[0] - 6))^2 * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0] - 6) * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0] - 6)) + ((ext_call.return_data[0] / 10^uint8(ext_call.return_data[0] - 6))^2 * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0] - 6) * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0] - 6)) / 2:
                                v = v + 1
                                w = 99000 * w / 100000
                                continue 
                            if not w:
                                _13113 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_13113] = 26
                                mem[_13113 + 32] = 'SafeMath: division by zero'
                                _14888 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_14888] = 30
                                mem[_14888 + 32] = 'SafeMath: subtraction overflow'
                                if 0 <= w:
                                    if w <= u:
                                        t = t + 1
                                        u = u
                                        continue 
                                    t = t + 1
                                    u = w
                                    continue 
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                                s = 32
                                while s < 30:
                                    mem[s + mem[64] + 68] = mem[s + _14888 + 32]
                                    s = s + 32
                                    continue 
                            else:
                                if 5 * w / w != 5:
                                    revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                _13403 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_13403] = 26
                                mem[_13403 + 32] = 'SafeMath: division by zero'
                                _15314 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_15314] = 30
                                mem[_15314 + 32] = 'SafeMath: subtraction overflow'
                                if 5 * w / 1000 <= w:
                                    if w - (5 * w / 1000) <= u:
                                        t = t + 1
                                        u = u
                                        continue 
                                    t = t + 1
                                    u = w - (5 * w / 1000)
                                    continue 
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                                idx = 32
                                while idx < 30:
                                    mem[idx + mem[64] + 68] = mem[idx + _15314 + 32]
                                    idx = idx + 32
                                    continue 
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not w:
                            _12430 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_12430] = 26
                            mem[_12430 + 32] = 'SafeMath: division by zero'
                            _13275 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_13275] = 30
                            mem[_13275 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= w:
                                if w <= u:
                                    t = t + 1
                                    u = u
                                    continue 
                                t = t + 1
                                u = w
                                continue 
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                            idx = 32
                            while idx < 30:
                                mem[idx + mem[64] + 68] = mem[idx + _13275 + 32]
                                idx = idx + 32
                                continue 
                        else:
                            if 5 * w / w != 5:
                                revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            _12633 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_12633] = 26
                            mem[_12633 + 32] = 'SafeMath: division by zero'
                            _13562 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_13562] = 30
                            mem[_13562 + 32] = 'SafeMath: subtraction overflow'
                            if 5 * w / 1000 <= w:
                                if w - (5 * w / 1000) <= u:
                                    t = t + 1
                                    u = u
                                    continue 
                                t = t + 1
                                u = w - (5 * w / 1000)
                                continue 
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                            idx = 32
                            while idx < 30:
                                mem[idx + mem[64] + 68] = mem[idx + _13562 + 32]
                                idx = idx + 32
                                continue 
                    else:
                        idx = 0
                        v = ext_call.return_data[0]
                        while idx < 10000:
                            require 10^uint8(ext_call.return_data[0] - 6)
                            require 10^uint8(ext_call.return_data[0] - 6)
                            if ((ext_call.return_data[0] - v / 10^uint8(ext_call.return_data[0] - 6))^2 * ext_call.return_data[0] - v / 10^uint8(ext_call.return_data[0] - 6) * ext_call.return_data[0] + s / 10^uint8(ext_call.return_data[0] - 6)) + ((ext_call.return_data[0] + s / 10^uint8(ext_call.return_data[0] - 6))^2 * ext_call.return_data[0] - v / 10^uint8(ext_call.return_data[0] - 6) * ext_call.return_data[0] + s / 10^uint8(ext_call.return_data[0] - 6)) / 2 <= ((ext_call.return_data[0] / 10^uint8(ext_call.return_data[0] - 6))^2 * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0] - 6) * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0] - 6)) + ((ext_call.return_data[0] / 10^uint8(ext_call.return_data[0] - 6))^2 * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0] - 6) * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0] - 6)) / 2:
                                idx = idx + 1
                                v = 99900 * v / 100000
                                continue 
                            if not v:
                                _13114 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_13114] = 26
                                mem[_13114 + 32] = 'SafeMath: division by zero'
                                _14892 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_14892] = 30
                                mem[_14892 + 32] = 'SafeMath: subtraction overflow'
                                if 0 <= v:
                                    if v <= u:
                                        t = t + 1
                                        u = u
                                        continue 
                                    t = t + 1
                                    u = v
                                    continue 
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                                idx = 32
                                while idx < 30:
                                    mem[idx + mem[64] + 68] = mem[idx + _14892 + 32]
                                    idx = idx + 32
                                    continue 
                            else:
                                if 5 * v / v != 5:
                                    revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                _13404 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_13404] = 26
                                mem[_13404 + 32] = 'SafeMath: division by zero'
                                _15319 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_15319] = 30
                                mem[_15319 + 32] = 'SafeMath: subtraction overflow'
                                if 5 * v / 1000 <= v:
                                    if v - (5 * v / 1000) <= u:
                                        t = t + 1
                                        u = u
                                        continue 
                                    t = t + 1
                                    u = v - (5 * v / 1000)
                                    continue 
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                                idx = 32
                                while idx < 30:
                                    mem[idx + mem[64] + 68] = mem[idx + _15319 + 32]
                                    idx = idx + 32
                                    continue 
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not v:
                            _12431 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_12431] = 26
                            mem[_12431 + 32] = 'SafeMath: division by zero'
                            _13276 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_13276] = 30
                            mem[_13276 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= v:
                                if v <= u:
                                    t = t + 1
                                    u = u
                                    continue 
                                t = t + 1
                                u = v
                                continue 
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                            idx = 32
                            while idx < 30:
                                mem[idx + mem[64] + 68] = mem[idx + _13276 + 32]
                                idx = idx + 32
                                continue 
                        else:
                            if 5 * v / v != 5:
                                revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            _12634 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_12634] = 26
                            mem[_12634 + 32] = 'SafeMath: division by zero'
                            _13566 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_13566] = 30
                            mem[_13566 + 32] = 'SafeMath: subtraction overflow'
                            if 5 * v / 1000 <= v:
                                if v - (5 * v / 1000) <= u:
                                    t = t + 1
                                    u = u
                                    continue 
                                t = t + 1
                                u = v - (5 * v / 1000)
                                continue 
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                            idx = 32
                            while idx < 30:
                                mem[idx + mem[64] + 68] = mem[idx + _13566 + 32]
                                idx = idx + 32
                                continue 
                else:
                    if 3 * 10^uint8(ext_call.return_data[0]) * s / 3 * s != 10^uint8(ext_call.return_data[0]):
                        revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _9188 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_9188] = 26
                    mem[_9188 + 32] = 'SafeMath: division by zero'
                    if not 10^uint8(ext_call.return_data[0]):
                        _9306 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _9306 + 68] = mem[idx + _9188 + 32]
                            idx = idx + 32
                            continue 
                        mem[_9306 + 68] = mem[_9306 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _9306 + -mem[64] + 100
                    require 10^uint8(ext_call.return_data[0] - 6)
                    require 10^uint8(ext_call.return_data[0] - 6)
                    if 3 * 10^uint8(ext_call.return_data[0]) * s / 10^uint8(ext_call.return_data[0]) <= ext_call.return_data[0]:
                        idx = 0
                        v = 3 * 10^uint8(ext_call.return_data[0]) * s / 10^uint8(ext_call.return_data[0])
                        while idx < 10000:
                            require 10^uint8(ext_call.return_data[0] - 6)
                            require 10^uint8(ext_call.return_data[0] - 6)
                            if ((ext_call.return_data[0] - v / 10^uint8(ext_call.return_data[0] - 6))^2 * ext_call.return_data[0] - v / 10^uint8(ext_call.return_data[0] - 6) * ext_call.return_data[0] + s / 10^uint8(ext_call.return_data[0] - 6)) + ((ext_call.return_data[0] + s / 10^uint8(ext_call.return_data[0] - 6))^2 * ext_call.return_data[0] - v / 10^uint8(ext_call.return_data[0] - 6) * ext_call.return_data[0] + s / 10^uint8(ext_call.return_data[0] - 6)) / 2 <= ((ext_call.return_data[0] / 10^uint8(ext_call.return_data[0] - 6))^2 * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0] - 6) * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0] - 6)) + ((ext_call.return_data[0] / 10^uint8(ext_call.return_data[0] - 6))^2 * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0] - 6) * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0] - 6)) / 2:
                                idx = idx + 1
                                v = 99000 * v / 100000
                                continue 
                            if not v:
                                _13111 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_13111] = 26
                                mem[_13111 + 32] = 'SafeMath: division by zero'
                                _14880 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_14880] = 30
                                mem[_14880 + 32] = 'SafeMath: subtraction overflow'
                                if 0 <= v:
                                    if v <= u:
                                        t = t + 1
                                        u = u
                                        continue 
                                    t = t + 1
                                    u = v
                                    continue 
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                                idx = 32
                                while idx < 30:
                                    mem[idx + mem[64] + 68] = mem[idx + _14880 + 32]
                                    idx = idx + 32
                                    continue 
                            else:
                                if 5 * v / v != 5:
                                    revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                _13401 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_13401] = 26
                                mem[_13401 + 32] = 'SafeMath: division by zero'
                                _15304 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_15304] = 30
                                mem[_15304 + 32] = 'SafeMath: subtraction overflow'
                                if 5 * v / 1000 <= v:
                                    if v - (5 * v / 1000) <= u:
                                        t = t + 1
                                        u = u
                                        continue 
                                    t = t + 1
                                    u = v - (5 * v / 1000)
                                    continue 
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                                idx = 32
                                while idx < 30:
                                    mem[idx + mem[64] + 68] = mem[idx + _15304 + 32]
                                    idx = idx + 32
                                    continue 
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not v:
                            _12428 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_12428] = 26
                            mem[_12428 + 32] = 'SafeMath: division by zero'
                            _13273 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_13273] = 30
                            mem[_13273 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= v:
                                if v <= u:
                                    t = t + 1
                                    u = u
                                    continue 
                                t = t + 1
                                u = v
                                continue 
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                            idx = 32
                            while idx < 30:
                                mem[idx + mem[64] + 68] = mem[idx + _13273 + 32]
                                idx = idx + 32
                                continue 
                        else:
                            if 5 * v / v != 5:
                                revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            _12631 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_12631] = 26
                            mem[_12631 + 32] = 'SafeMath: division by zero'
                            _13554 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_13554] = 30
                            mem[_13554 + 32] = 'SafeMath: subtraction overflow'
                            if 5 * v / 1000 <= v:
                                if v - (5 * v / 1000) <= u:
                                    t = t + 1
                                    u = u
                                    continue 
                                t = t + 1
                                u = v - (5 * v / 1000)
                                continue 
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                            idx = 32
                            while idx < 30:
                                mem[idx + mem[64] + 68] = mem[idx + _13554 + 32]
                                idx = idx + 32
                                continue 
                    else:
                        idx = 0
                        v = ext_call.return_data[0]
                        while idx < 10000:
                            require 10^uint8(ext_call.return_data[0] - 6)
                            require 10^uint8(ext_call.return_data[0] - 6)
                            if ((ext_call.return_data[0] - v / 10^uint8(ext_call.return_data[0] - 6))^2 * ext_call.return_data[0] - v / 10^uint8(ext_call.return_data[0] - 6) * ext_call.return_data[0] + s / 10^uint8(ext_call.return_data[0] - 6)) + ((ext_call.return_data[0] + s / 10^uint8(ext_call.return_data[0] - 6))^2 * ext_call.return_data[0] - v / 10^uint8(ext_call.return_data[0] - 6) * ext_call.return_data[0] + s / 10^uint8(ext_call.return_data[0] - 6)) / 2 <= ((ext_call.return_data[0] / 10^uint8(ext_call.return_data[0] - 6))^2 * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0] - 6) * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0] - 6)) + ((ext_call.return_data[0] / 10^uint8(ext_call.return_data[0] - 6))^2 * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0] - 6) * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0] - 6)) / 2:
                                idx = idx + 1
                                v = 99900 * v / 100000
                                continue 
                            if not v:
                                _13112 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_13112] = 26
                                mem[_13112 + 32] = 'SafeMath: division by zero'
                                _14884 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_14884] = 30
                                mem[_14884 + 32] = 'SafeMath: subtraction overflow'
                                if 0 <= v:
                                    if v <= u:
                                        t = t + 1
                                        u = u
                                        continue 
                                    t = t + 1
                                    u = v
                                    continue 
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                                idx = 32
                                while idx < 30:
                                    mem[idx + mem[64] + 68] = mem[idx + _14884 + 32]
                                    idx = idx + 32
                                    continue 
                            else:
                                if 5 * v / v != 5:
                                    revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                _13402 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_13402] = 26
                                mem[_13402 + 32] = 'SafeMath: division by zero'
                                _15309 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_15309] = 30
                                mem[_15309 + 32] = 'SafeMath: subtraction overflow'
                                if 5 * v / 1000 <= v:
                                    if v - (5 * v / 1000) <= u:
                                        t = t + 1
                                        u = u
                                        continue 
                                    t = t + 1
                                    u = v - (5 * v / 1000)
                                    continue 
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                                idx = 32
                                while idx < 30:
                                    mem[idx + mem[64] + 68] = mem[idx + _15309 + 32]
                                    idx = idx + 32
                                    continue 
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not v:
                            _12429 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_12429] = 26
                            mem[_12429 + 32] = 'SafeMath: division by zero'
                            _13274 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_13274] = 30
                            mem[_13274 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= v:
                                if v <= u:
                                    t = t + 1
                                    u = u
                                    continue 
                                t = t + 1
                                u = v
                                continue 
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                            idx = 32
                            while idx < 30:
                                mem[idx + mem[64] + 68] = mem[idx + _13274 + 32]
                                idx = idx + 32
                                continue 
                        else:
                            if 5 * v / v != 5:
                                revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            _12632 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_12632] = 26
                            mem[_12632 + 32] = 'SafeMath: division by zero'
                            _13558 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_13558] = 30
                            mem[_13558 + 32] = 'SafeMath: subtraction overflow'
                            if 5 * v / 1000 <= v:
                                if v - (5 * v / 1000) <= u:
                                    t = t + 1
                                    u = u
                                    continue 
                                t = t + 1
                                u = v - (5 * v / 1000)
                                continue 
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                            idx = 32
                            while idx < 30:
                                mem[idx + mem[64] + 68] = mem[idx + _13558 + 32]
                                idx = idx + 32
                                continue 
                revert with 0, 'SafeMath: subtraction overflow'
            if 1 == t:
                _5595 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                require 0 < mem[_5595]
                mem[_5595 + 32] = 0xad84341756bf337f5a0164515b1f6f993d194e
                require 1 < mem[_5595]
                mem[_5595 + 64] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                mem[_5595 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_5595 + 100] = s
                mem[_5595 + 132] = 64
                mem[_5595 + 164] = mem[_5595]
                idx = 0
                while idx < 32 * mem[_5595]:
                    mem[idx + _5595 + 196] = mem[idx + _5595 + 32]
                    idx = idx + 32
                    continue 
                require ext_code.size(0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52)
                staticcall 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args s, 64, mem[_5595 + 164 len (32 * mem[_5595]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_5595 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _5595 + ceil32(return_data.size) + 96
                require return_data.size >= 32
                _12175 = mem[_5595 + 96 len 4], Mask(224, 32, s) >> 32
                require mem[_5595 + 96 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                require mem[_5595 + 96 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                require mem[_5595 + mem[_5595 + 96 len 4], Mask(224, 32, s) >> 32 + 96] <= 4294967296 and mem[_5595 + 96 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_5595 + mem[_5595 + 96 len 4], Mask(224, 32, s) >> 32 + 96]) + 32 <= return_data.size
                mem[_5595 + ceil32(return_data.size) + 96] = mem[_5595 + mem[_5595 + 96 len 4], Mask(224, 32, s) >> 32 + 96]
                _12555 = mem[_5595 + _12175 + 96]
                idx = 0
                while idx < 32 * _12555:
                    mem[idx + _5595 + ceil32(return_data.size) + 128] = mem[idx + _5595 + _12175 + 128]
                    idx = idx + 32
                    continue 
                mem[64] = (32 * _12555) + _5595 + ceil32(return_data.size) + 128
                require mem[_5595 + ceil32(return_data.size) + 96] - 1 < mem[_5595 + ceil32(return_data.size) + 96]
                if mem[(32 * mem[_5595 + ceil32(return_data.size) + 96] - 1) + _5595 + ceil32(return_data.size) + 128] <= u:
                    t = t + 1
                    u = u
                    continue 
                t = t + 1
                u = mem[(32 * mem[_5595 + ceil32(return_data.size) + 96] - 1) + _5595 + ceil32(return_data.size) + 128]
                continue 
            if t != 2:
                if t != 3:
                    if s <= u:
                        t = t + 1
                        u = u
                        continue 
                    t = t + 1
                    u = s
                    continue 
                _5855 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                require 0 < mem[_5855]
                mem[_5855 + 32] = 0xad84341756bf337f5a0164515b1f6f993d194e
                require 1 < mem[_5855]
                mem[_5855 + 64] = 0x5848b832e872d9edd84ac5718d58f21fd9c96
                mem[_5855 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_5855 + 100] = s
                mem[_5855 + 132] = 64
                mem[_5855 + 164] = mem[_5855]
                idx = 0
                while idx < 32 * mem[_5855]:
                    mem[idx + _5855 + 196] = mem[idx + _5855 + 32]
                    idx = idx + 32
                    continue 
                require ext_code.size(0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52)
                staticcall 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args s, 64, mem[_5855 + 164 len (32 * mem[_5855]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_5855 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _5855 + ceil32(return_data.size) + 96
                require return_data.size >= 32
                _12167 = mem[_5855 + 96 len 4], Mask(224, 32, s) >> 32
                require mem[_5855 + 96 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                require mem[_5855 + 96 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                require mem[_5855 + mem[_5855 + 96 len 4], Mask(224, 32, s) >> 32 + 96] <= 4294967296 and mem[_5855 + 96 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_5855 + mem[_5855 + 96 len 4], Mask(224, 32, s) >> 32 + 96]) + 32 <= return_data.size
                mem[_5855 + ceil32(return_data.size) + 96] = mem[_5855 + mem[_5855 + 96 len 4], Mask(224, 32, s) >> 32 + 96]
                _12551 = mem[_5855 + _12167 + 96]
                idx = 0
                while idx < 32 * _12551:
                    mem[idx + _5855 + ceil32(return_data.size) + 128] = mem[idx + _5855 + _12167 + 128]
                    idx = idx + 32
                    continue 
                require mem[_5855 + ceil32(return_data.size) + 96] - 1 < mem[_5855 + ceil32(return_data.size) + 96]
                _17411 = mem[(32 * mem[_5855 + ceil32(return_data.size) + 96] - 1) + _5855 + ceil32(return_data.size) + 128]
                mem[(32 * _12551) + _5855 + ceil32(return_data.size) + 128] = 3
                mem[(32 * _12551) + _5855 + ceil32(return_data.size) + 160] = 0x5848b832e872d9edd84ac5718d58f21fd9c96
                mem[(32 * _12551) + _5855 + ceil32(return_data.size) + 192] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c
                mem[(32 * _12551) + _5855 + ceil32(return_data.size) + 224] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                mem[(32 * _12551) + _5855 + ceil32(return_data.size) + 256] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[(32 * _12551) + _5855 + ceil32(return_data.size) + 260] = _17411
                mem[(32 * _12551) + _5855 + ceil32(return_data.size) + 292] = 64
                mem[(32 * _12551) + _5855 + ceil32(return_data.size) + 324] = 3
                idx = 0
                while idx < 96:
                    mem[idx + (32 * _12551) + _5855 + ceil32(return_data.size) + 356] = mem[idx + (32 * _12551) + _5855 + ceil32(return_data.size) + 160]
                    idx = idx + 32
                    continue 
                require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c29.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args _17411, Array(len=3, data=mem[(32 * _12551) + _5855 + ceil32(return_data.size) + 356 len 96])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * _12551) + _5855 + ceil32(return_data.size) + 256 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * _12551) + _5855 + (2 * ceil32(return_data.size)) + 256
                require return_data.size >= 32
                _19155 = mem[(32 * _12551) + _5855 + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _17411) >> 32
                require mem[(32 * _12551) + _5855 + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _17411) >> 32 <= 4294967296
                require mem[(32 * _12551) + _5855 + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _17411) >> 32 + 32 <= return_data.size
                require mem[(32 * _12551) + _5855 + ceil32(return_data.size) + mem[(32 * _12551) + _5855 + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _17411) >> 32 + 256] <= 4294967296 and mem[(32 * _12551) + _5855 + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _17411) >> 32 + (32 * mem[(32 * _12551) + _5855 + ceil32(return_data.size) + mem[(32 * _12551) + _5855 + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _17411) >> 32 + 256]) + 32 <= return_data.size
                mem[(32 * _12551) + _5855 + (2 * ceil32(return_data.size)) + 256] = mem[(32 * _12551) + _5855 + ceil32(return_data.size) + mem[(32 * _12551) + _5855 + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _17411) >> 32 + 256]
                _19251 = mem[(32 * _12551) + _5855 + ceil32(return_data.size) + _19155 + 256]
                idx = 0
                while idx < 32 * _19251:
                    mem[idx + (32 * _12551) + _5855 + (2 * ceil32(return_data.size)) + 288] = mem[idx + (32 * _12551) + _5855 + ceil32(return_data.size) + _19155 + 288]
                    idx = idx + 32
                    continue 
                mem[64] = (32 * _19251) + (32 * _12551) + _5855 + (2 * ceil32(return_data.size)) + 288
                require mem[(32 * _12551) + _5855 + (2 * ceil32(return_data.size)) + 256] - 1 < mem[(32 * _12551) + _5855 + (2 * ceil32(return_data.size)) + 256]
                if mem[(32 * mem[(32 * _12551) + _5855 + (2 * ceil32(return_data.size)) + 256] - 1) + (32 * _12551) + _5855 + (2 * ceil32(return_data.size)) + 288] <= u:
                    t = t + 1
                    u = u
                    continue 
                t = t + 1
                u = mem[(32 * mem[(32 * _12551) + _5855 + (2 * ceil32(return_data.size)) + 256] - 1) + (32 * _12551) + _5855 + (2 * ceil32(return_data.size)) + 288]
                continue 
            _5651 = mem[0]
            _5741 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            require 0 < mem[_5741]
            mem[_5741 + 32] = 0xad84341756bf337f5a0164515b1f6f993d194e
            require 1 < mem[_5741]
            mem[_5741 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c
            mem[_5741 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[_5741 + 100] = s
            mem[_5741 + 132] = 64
            mem[_5741 + 164] = mem[_5741]
            idx = 0
            while idx < 32 * mem[_5741]:
                mem[idx + _5741 + 196] = mem[idx + _5741 + 32]
                idx = idx + 32
                continue 
            require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
            staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c29.getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args s, 64, mem[_5741 + 164 len (32 * mem[_5741]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[_5741 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = _5741 + ceil32(return_data.size) + 96
            require return_data.size >= 32
            _12171 = mem[_5741 + 96 len 4], Mask(224, 32, s) >> 32
            require mem[_5741 + 96 len 4], Mask(224, 32, s) >> 32 <= 4294967296
            require mem[_5741 + 96 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
            require mem[_5741 + mem[_5741 + 96 len 4], Mask(224, 32, s) >> 32 + 96] <= 4294967296 and mem[_5741 + 96 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_5741 + mem[_5741 + 96 len 4], Mask(224, 32, s) >> 32 + 96]) + 32 <= return_data.size
            mem[_5741 + ceil32(return_data.size) + 96] = mem[_5741 + mem[_5741 + 96 len 4], Mask(224, 32, s) >> 32 + 96]
            _12553 = mem[_5741 + _12171 + 96]
            idx = 0
            while idx < 32 * _12553:
                mem[idx + _5741 + ceil32(return_data.size) + 128] = mem[idx + _5741 + _12171 + 128]
                idx = idx + 32
                continue 
            require mem[_5741 + ceil32(return_data.size) + 96] - 1 < mem[_5741 + ceil32(return_data.size) + 96]
            _17413 = mem[(32 * mem[_5741 + ceil32(return_data.size) + 96] - 1) + _5741 + ceil32(return_data.size) + 128]
            mem[(32 * _12553) + _5741 + ceil32(return_data.size) + 128] = 2
            mem[0] = _5651
            mem[(32 * _12553) + _5741 + ceil32(return_data.size) + 160] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c
            mem[(32 * _12553) + _5741 + ceil32(return_data.size) + 192] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
            mem[(32 * _12553) + _5741 + ceil32(return_data.size) + 224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[(32 * _12553) + _5741 + ceil32(return_data.size) + 228] = _17413
            mem[(32 * _12553) + _5741 + ceil32(return_data.size) + 260] = 64
            mem[(32 * _12553) + _5741 + ceil32(return_data.size) + 292] = 2
            idx = 0
            while idx < 64:
                mem[idx + (32 * _12553) + _5741 + ceil32(return_data.size) + 324] = mem[idx + (32 * _12553) + _5741 + ceil32(return_data.size) + 160]
                idx = idx + 32
                continue 
            require ext_code.size(0x67a937ea41cd05ec8c832a044afc0100f30aa4b5)
            staticcall 0x67a937ea41cd05ec8c832a044afc0100f30aa4b5.getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args _17413, Array(len=2, data=mem[(32 * _12553) + _5741 + ceil32(return_data.size) + 324 len 64])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _12553) + _5741 + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * _12553) + _5741 + (2 * ceil32(return_data.size)) + 224
            require return_data.size >= 32
            _19159 = mem[(32 * _12553) + _5741 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _17413) >> 32
            require mem[(32 * _12553) + _5741 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _17413) >> 32 <= 4294967296
            require mem[(32 * _12553) + _5741 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _17413) >> 32 + 32 <= return_data.size
            require mem[(32 * _12553) + _5741 + ceil32(return_data.size) + mem[(32 * _12553) + _5741 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _17413) >> 32 + 224] <= 4294967296 and mem[(32 * _12553) + _5741 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _17413) >> 32 + (32 * mem[(32 * _12553) + _5741 + ceil32(return_data.size) + mem[(32 * _12553) + _5741 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _17413) >> 32 + 224]) + 32 <= return_data.size
            mem[(32 * _12553) + _5741 + (2 * ceil32(return_data.size)) + 224] = mem[(32 * _12553) + _5741 + ceil32(return_data.size) + mem[(32 * _12553) + _5741 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _17413) >> 32 + 224]
            _19253 = mem[(32 * _12553) + _5741 + ceil32(return_data.size) + _19159 + 224]
            idx = 0
            while idx < 32 * _19253:
                mem[idx + (32 * _12553) + _5741 + (2 * ceil32(return_data.size)) + 256] = mem[idx + (32 * _12553) + _5741 + ceil32(return_data.size) + _19159 + 256]
                idx = idx + 32
                continue 
            mem[64] = (32 * _19253) + (32 * _12553) + _5741 + (2 * ceil32(return_data.size)) + 256
            require mem[(32 * _12553) + _5741 + (2 * ceil32(return_data.size)) + 224] - 1 < mem[(32 * _12553) + _5741 + (2 * ceil32(return_data.size)) + 224]
            if mem[(32 * mem[(32 * _12553) + _5741 + (2 * ceil32(return_data.size)) + 224] - 1) + (32 * _12553) + _5741 + (2 * ceil32(return_data.size)) + 256] <= u:
                t = t + 1
                u = u
                continue 
            t = t + 1
            u = mem[(32 * mem[(32 * _12553) + _5741 + (2 * ceil32(return_data.size)) + 224] - 1) + (32 * _12553) + _5741 + (2 * ceil32(return_data.size)) + 256]
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
                staticcall 0x83000000000000000000000000ad84341756bf337f5a0164515b1f6f993d194e.0x313ce567 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(0x4900000000000000000000000004068da6c83afcfa0e13ba15a6696662335d5b)
                staticcall 0x4900000000000000000000000004068da6c83afcfa0e13ba15a6696662335d5b.0x313ce567 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(0x4068da6c83afcfa0e13ba15a6696662335d5b)
                staticcall 0x4068da6c83afcfa0e13ba15a6696662335d5b.0x313ce567 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(0x83000000000000000000000000ad84341756bf337f5a0164515b1f6f993d194e)
                staticcall 0x83000000000000000000000000ad84341756bf337f5a0164515b1f6f993d194e.0x313ce567 with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                _2452 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2452] = 26
                mem[_2452 + 32] = 'SafeMath: division by zero'
                if not 10^uint8(ext_call.return_data[0]):
                    _2524 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _2524 + 68] = mem[idx + _2452 + 32]
                        idx = idx + 32
                        continue 
                    mem[_2524 + 68] = mem[_2524 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _2524 + -mem[64] + 100
                require 10^uint8(ext_call.return_data[0] - 6)
                require 10^uint8(ext_call.return_data[0] - 6)
                if 0 / 10^uint8(ext_call.return_data[0]) <= ext_call.return_data[0]:
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
                            _6683 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_6683] = 26
                            mem[_6683 + 32] = 'SafeMath: division by zero'
                            _7958 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_7958] = 30
                            mem[_7958 + 32] = 'SafeMath: subtraction overflow'
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
                                mem[idx + mem[64] + 68] = mem[idx + _7958 + 32]
                                idx = idx + 32
                                continue 
                        else:
                            if 5 * u / u != 5:
                                revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            _6977 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_6977] = 26
                            mem[_6977 + 32] = 'SafeMath: division by zero'
                            _8296 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_8296] = 30
                            mem[_8296 + 32] = 'SafeMath: subtraction overflow'
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
                                mem[idx + mem[64] + 68] = mem[idx + _8296 + 32]
                                idx = idx + 32
                                continue 
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not u:
                        _5808 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5808] = 26
                        mem[_5808 + 32] = 'SafeMath: division by zero'
                        _6839 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_6839] = 30
                        mem[_6839 + 32] = 'SafeMath: subtraction overflow'
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
                            mem[idx + mem[64] + 68] = mem[idx + _6839 + 32]
                            idx = idx + 32
                            continue 
                    else:
                        if 5 * u / u != 5:
                            revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _6079 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_6079] = 26
                        mem[_6079 + 32] = 'SafeMath: division by zero'
                        _7132 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_7132] = 30
                        mem[_7132 + 32] = 'SafeMath: subtraction overflow'
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
                            mem[idx + mem[64] + 68] = mem[idx + _7132 + 32]
                            idx = idx + 32
                            continue 
                else:
                    t = 0
                    u = ext_call.return_data[0]
                    while t < 10000:
                        require 10^uint8(ext_call.return_data[0] - 6)
                        require 10^uint8(ext_call.return_data[0] - 6)
                        if ((ext_call.return_data[0] - u / 10^uint8(ext_call.return_data[0] - 6))^2 * ext_call.return_data[0] - u / 10^uint8(ext_call.return_data[0] - 6) * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0] - 6)) + ((ext_call.return_data[0] / 10^uint8(ext_call.return_data[0] - 6))^2 * ext_call.return_data[0] - u / 10^uint8(ext_call.return_data[0] - 6) * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0] - 6)) / 2 <= ((ext_call.return_data[0] / 10^uint8(ext_call.return_data[0] - 6))^2 * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0] - 6) * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0] - 6)) + ((ext_call.return_data[0] / 10^uint8(ext_call.return_data[0] - 6))^2 * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0] - 6) * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0] - 6)) / 2:
                            t = t + 1
                            u = 99900 * u / 100000
                            continue 
                        if not u:
                            _6684 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_6684] = 26
                            mem[_6684 + 32] = 'SafeMath: division by zero'
                            _7962 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_7962] = 30
                            mem[_7962 + 32] = 'SafeMath: subtraction overflow'
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
                                mem[idx + mem[64] + 68] = mem[idx + _7962 + 32]
                                idx = idx + 32
                                continue 
                        else:
                            if 5 * u / u != 5:
                                revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            _6978 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_6978] = 26
                            mem[_6978 + 32] = 'SafeMath: division by zero'
                            _8301 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_8301] = 30
                            mem[_8301 + 32] = 'SafeMath: subtraction overflow'
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
                                mem[idx + mem[64] + 68] = mem[idx + _8301 + 32]
                                idx = idx + 32
                                continue 
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not u:
                        _5809 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5809] = 26
                        mem[_5809 + 32] = 'SafeMath: division by zero'
                        _6840 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_6840] = 30
                        mem[_6840 + 32] = 'SafeMath: subtraction overflow'
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
                            mem[idx + mem[64] + 68] = mem[idx + _6840 + 32]
                            idx = idx + 32
                            continue 
                    else:
                        if 5 * u / u != 5:
                            revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _6080 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_6080] = 26
                        mem[_6080 + 32] = 'SafeMath: division by zero'
                        _7136 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_7136] = 30
                        mem[_7136 + 32] = 'SafeMath: subtraction overflow'
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
                            mem[idx + mem[64] + 68] = mem[idx + _7136 + 32]
                            idx = idx + 32
                            continue 
                revert with 0, 'SafeMath: subtraction overflow'
            if 1 == idx:
                _1099 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                require 0 < mem[_1099]
                mem[_1099 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                require 1 < mem[_1099]
                mem[_1099 + 64] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                mem[_1099 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_1099 + 100] = 0
                mem[_1099 + 132] = 64
                mem[_1099 + 164] = mem[_1099]
                t = 0
                while t < 32 * mem[_1099]:
                    mem[t + _1099 + 196] = mem[t + _1099 + 32]
                    t = t + 32
                    continue 
                require ext_code.size(0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52)
                staticcall 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args 0, 64, mem[_1099 + 164 len (32 * mem[_1099]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_1099 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _1099 + ceil32(return_data.size) + 96
                require return_data.size >= 32
                _5619 = mem[_1099 + 96 len 4], 0
                require mem[_1099 + 96 len 4], 0 <= 4294967296
                require mem[_1099 + 96 len 4], 0 + 32 <= return_data.size
                require mem[_1099 + mem[_1099 + 96 len 4], 0 + 96] <= 4294967296 and mem[_1099 + 96 len 4], 0 + (32 * mem[_1099 + mem[_1099 + 96 len 4], 0 + 96]) + 32 <= return_data.size
                mem[_1099 + ceil32(return_data.size) + 96] = mem[_1099 + mem[_1099 + 96 len 4], 0 + 96]
                _5925 = mem[_1099 + _5619 + 96]
                t = 0
                while t < 32 * _5925:
                    mem[t + _1099 + ceil32(return_data.size) + 128] = mem[t + _1099 + _5619 + 128]
                    t = t + 32
                    continue 
                mem[64] = (32 * _5925) + _1099 + ceil32(return_data.size) + 128
                require mem[_1099 + ceil32(return_data.size) + 96] - 1 < mem[_1099 + ceil32(return_data.size) + 96]
                if mem[(32 * mem[_1099 + ceil32(return_data.size) + 96] - 1) + _1099 + ceil32(return_data.size) + 128] <= s:
                    idx = idx + 1
                    s = s
                    continue 
                idx = idx + 1
                s = mem[(32 * mem[_1099 + ceil32(return_data.size) + 96] - 1) + _1099 + ceil32(return_data.size) + 128]
                continue 
            if 2 == idx:
                _1117 = mem[0]
                _1147 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                require 0 < mem[_1147]
                mem[_1147 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                require 1 < mem[_1147]
                mem[_1147 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c
                mem[_1147 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_1147 + 100] = 0
                mem[_1147 + 132] = 64
                mem[_1147 + 164] = mem[_1147]
                t = 0
                while t < 32 * mem[_1147]:
                    mem[t + _1147 + 196] = mem[t + _1147 + 32]
                    t = t + 32
                    continue 
                require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c29.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args 0, 64, mem[_1147 + 164 len (32 * mem[_1147]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_1147 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _1147 + ceil32(return_data.size) + 96
                require return_data.size >= 32
                _5615 = mem[_1147 + 96 len 4], 0
                require mem[_1147 + 96 len 4], 0 <= 4294967296
                require mem[_1147 + 96 len 4], 0 + 32 <= return_data.size
                require mem[_1147 + mem[_1147 + 96 len 4], 0 + 96] <= 4294967296 and mem[_1147 + 96 len 4], 0 + (32 * mem[_1147 + mem[_1147 + 96 len 4], 0 + 96]) + 32 <= return_data.size
                mem[_1147 + ceil32(return_data.size) + 96] = mem[_1147 + mem[_1147 + 96 len 4], 0 + 96]
                _5923 = mem[_1147 + _5615 + 96]
                t = 0
                while t < 32 * _5923:
                    mem[t + _1147 + ceil32(return_data.size) + 128] = mem[t + _1147 + _5615 + 128]
                    t = t + 32
                    continue 
                require mem[_1147 + ceil32(return_data.size) + 96] - 1 < mem[_1147 + ceil32(return_data.size) + 96]
                _11975 = mem[(32 * mem[_1147 + ceil32(return_data.size) + 96] - 1) + _1147 + ceil32(return_data.size) + 128]
                mem[(32 * _5923) + _1147 + ceil32(return_data.size) + 128] = 2
                mem[0] = _1117
                mem[(32 * _5923) + _1147 + ceil32(return_data.size) + 160] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c
                mem[(32 * _5923) + _1147 + ceil32(return_data.size) + 192] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                mem[(32 * _5923) + _1147 + ceil32(return_data.size) + 224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[(32 * _5923) + _1147 + ceil32(return_data.size) + 228] = _11975
                mem[(32 * _5923) + _1147 + ceil32(return_data.size) + 260] = 64
                mem[(32 * _5923) + _1147 + ceil32(return_data.size) + 292] = 2
                t = 0
                while t < 64:
                    mem[t + (32 * _5923) + _1147 + ceil32(return_data.size) + 324] = mem[t + (32 * _5923) + _1147 + ceil32(return_data.size) + 160]
                    t = t + 32
                    continue 
                require ext_code.size(0x67a937ea41cd05ec8c832a044afc0100f30aa4b5)
                staticcall 0x67a937ea41cd05ec8c832a044afc0100f30aa4b5.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args _11975, Array(len=2, data=mem[(32 * _5923) + _1147 + ceil32(return_data.size) + 324 len 64])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * _5923) + _1147 + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * _5923) + _1147 + (2 * ceil32(return_data.size)) + 224
                require return_data.size >= 32
                _18367 = mem[(32 * _5923) + _1147 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _11975) >> 32
                require mem[(32 * _5923) + _1147 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _11975) >> 32 <= 4294967296
                require mem[(32 * _5923) + _1147 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _11975) >> 32 + 32 <= return_data.size
                require mem[(32 * _5923) + _1147 + ceil32(return_data.size) + mem[(32 * _5923) + _1147 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _11975) >> 32 + 224] <= 4294967296 and mem[(32 * _5923) + _1147 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _11975) >> 32 + (32 * mem[(32 * _5923) + _1147 + ceil32(return_data.size) + mem[(32 * _5923) + _1147 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _11975) >> 32 + 224]) + 32 <= return_data.size
                mem[(32 * _5923) + _1147 + (2 * ceil32(return_data.size)) + 224] = mem[(32 * _5923) + _1147 + ceil32(return_data.size) + mem[(32 * _5923) + _1147 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _11975) >> 32 + 224]
                _18609 = mem[(32 * _5923) + _1147 + ceil32(return_data.size) + _18367 + 224]
                t = 0
                while t < 32 * _18609:
                    mem[t + (32 * _5923) + _1147 + (2 * ceil32(return_data.size)) + 256] = mem[t + (32 * _5923) + _1147 + ceil32(return_data.size) + _18367 + 256]
                    t = t + 32
                    continue 
                mem[64] = (32 * _18609) + (32 * _5923) + _1147 + (2 * ceil32(return_data.size)) + 256
                require mem[(32 * _5923) + _1147 + (2 * ceil32(return_data.size)) + 224] - 1 < mem[(32 * _5923) + _1147 + (2 * ceil32(return_data.size)) + 224]
                if mem[(32 * mem[(32 * _5923) + _1147 + (2 * ceil32(return_data.size)) + 224] - 1) + (32 * _5923) + _1147 + (2 * ceil32(return_data.size)) + 256] <= s:
                    idx = idx + 1
                    s = s
                    continue 
                idx = idx + 1
                s = mem[(32 * mem[(32 * _5923) + _1147 + (2 * ceil32(return_data.size)) + 224] - 1) + (32 * _5923) + _1147 + (2 * ceil32(return_data.size)) + 256]
                continue 
            if idx != 3:
                if 0 <= s:
                    idx = idx + 1
                    s = s
                    continue 
                idx = idx + 1
                s = 0
                continue 
            _1145 = mem[0]
            _1183 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            require 0 < mem[_1183]
            mem[_1183 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
            require 1 < mem[_1183]
            mem[_1183 + 64] = 0x5848b832e872d9edd84ac5718d58f21fd9c96
            mem[_1183 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[_1183 + 100] = 0
            mem[_1183 + 132] = 64
            mem[_1183 + 164] = mem[_1183]
            t = 0
            while t < 32 * mem[_1183]:
                mem[t + _1183 + 196] = mem[t + _1183 + 32]
                t = t + 32
                continue 
            require ext_code.size(0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52)
            staticcall 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52.getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args 0, 64, mem[_1183 + 164 len (32 * mem[_1183]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[_1183 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = _1183 + ceil32(return_data.size) + 96
            require return_data.size >= 32
            _5611 = mem[_1183 + 96 len 4], 0
            require mem[_1183 + 96 len 4], 0 <= 4294967296
            require mem[_1183 + 96 len 4], 0 + 32 <= return_data.size
            require mem[_1183 + mem[_1183 + 96 len 4], 0 + 96] <= 4294967296 and mem[_1183 + 96 len 4], 0 + (32 * mem[_1183 + mem[_1183 + 96 len 4], 0 + 96]) + 32 <= return_data.size
            mem[_1183 + ceil32(return_data.size) + 96] = mem[_1183 + mem[_1183 + 96 len 4], 0 + 96]
            _5921 = mem[_1183 + _5611 + 96]
            t = 0
            while t < 32 * _5921:
                mem[t + _1183 + ceil32(return_data.size) + 128] = mem[t + _1183 + _5611 + 128]
                t = t + 32
                continue 
            mem[64] = (32 * _5921) + _1183 + ceil32(return_data.size) + 128
            require mem[_1183 + ceil32(return_data.size) + 96] - 1 < mem[_1183 + ceil32(return_data.size) + 96]
            _11973 = mem[(32 * mem[_1183 + ceil32(return_data.size) + 96] - 1) + _1183 + ceil32(return_data.size) + 128]
            mem[(32 * _5921) + _1183 + ceil32(return_data.size) + 128] = 3
            mem[(32 * _5921) + _1183 + ceil32(return_data.size) + 160] = 0x5848b832e872d9edd84ac5718d58f21fd9c96
            mem[0] = _1145
            mem[(32 * _5921) + _1183 + ceil32(return_data.size) + 192] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c
            mem[(32 * _5921) + _1183 + ceil32(return_data.size) + 224] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
            mem[(32 * _5921) + _1183 + ceil32(return_data.size) + 256] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[(32 * _5921) + _1183 + ceil32(return_data.size) + 260] = _11973
            mem[(32 * _5921) + _1183 + ceil32(return_data.size) + 292] = 64
            mem[(32 * _5921) + _1183 + ceil32(return_data.size) + 324] = 3
            t = 0
            while t < 96:
                mem[t + (32 * _5921) + _1183 + ceil32(return_data.size) + 356] = mem[t + (32 * _5921) + _1183 + ceil32(return_data.size) + 160]
                t = t + 32
                continue 
            require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
            staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c29.getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args _11973, Array(len=3, data=mem[(32 * _5921) + _1183 + ceil32(return_data.size) + 356 len 96])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _5921) + _1183 + ceil32(return_data.size) + 256 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * _5921) + _1183 + (2 * ceil32(return_data.size)) + 256
            require return_data.size >= 32
            _18363 = mem[(32 * _5921) + _1183 + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _11973) >> 32
            require mem[(32 * _5921) + _1183 + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _11973) >> 32 <= 4294967296
            require mem[(32 * _5921) + _1183 + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _11973) >> 32 + 32 <= return_data.size
            require mem[(32 * _5921) + _1183 + ceil32(return_data.size) + mem[(32 * _5921) + _1183 + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _11973) >> 32 + 256] <= 4294967296 and mem[(32 * _5921) + _1183 + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _11973) >> 32 + (32 * mem[(32 * _5921) + _1183 + ceil32(return_data.size) + mem[(32 * _5921) + _1183 + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _11973) >> 32 + 256]) + 32 <= return_data.size
            mem[(32 * _5921) + _1183 + (2 * ceil32(return_data.size)) + 256] = mem[(32 * _5921) + _1183 + ceil32(return_data.size) + mem[(32 * _5921) + _1183 + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _11973) >> 32 + 256]
            _18607 = mem[(32 * _5921) + _1183 + ceil32(return_data.size) + _18363 + 256]
            t = 0
            while t < 32 * _18607:
                mem[t + (32 * _5921) + _1183 + (2 * ceil32(return_data.size)) + 288] = mem[t + (32 * _5921) + _1183 + ceil32(return_data.size) + _18363 + 288]
                t = t + 32
                continue 
            mem[64] = (32 * _18607) + (32 * _5921) + _1183 + (2 * ceil32(return_data.size)) + 288
            require mem[(32 * _5921) + _1183 + (2 * ceil32(return_data.size)) + 256] - 1 < mem[(32 * _5921) + _1183 + (2 * ceil32(return_data.size)) + 256]
            if mem[(32 * mem[(32 * _5921) + _1183 + (2 * ceil32(return_data.size)) + 256] - 1) + (32 * _5921) + _1183 + (2 * ceil32(return_data.size)) + 288] <= s:
                idx = idx + 1
                s = s
                continue 
            idx = idx + 1
            s = mem[(32 * mem[(32 * _5921) + _1183 + (2 * ceil32(return_data.size)) + 256] - 1) + (32 * _5921) + _1183 + (2 * ceil32(return_data.size)) + 288]
            continue 
        t = 0
        u = 0
        while t < 4:
            if not t:
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
                staticcall 0x83000000000000000000000000ad84341756bf337f5a0164515b1f6f993d194e.0x313ce567 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(0x4900000000000000000000000004068da6c83afcfa0e13ba15a6696662335d5b)
                staticcall 0x4900000000000000000000000004068da6c83afcfa0e13ba15a6696662335d5b.0x313ce567 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(0x4068da6c83afcfa0e13ba15a6696662335d5b)
                staticcall 0x4068da6c83afcfa0e13ba15a6696662335d5b.0x313ce567 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(0x83000000000000000000000000ad84341756bf337f5a0164515b1f6f993d194e)
                staticcall 0x83000000000000000000000000ad84341756bf337f5a0164515b1f6f993d194e.0x313ce567 with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not 3 * s:
                    _9162 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_9162] = 26
                    mem[_9162 + 32] = 'SafeMath: division by zero'
                    if not 10^uint8(ext_call.return_data[0]):
                        _9305 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _9305 + 68] = mem[idx + _9162 + 32]
                            idx = idx + 32
                            continue 
                        mem[_9305 + 68] = mem[_9305 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _9305 + -mem[64] + 100
                    require 10^uint8(ext_call.return_data[0] - 6)
                    require 10^uint8(ext_call.return_data[0] - 6)
                    if 0 / 10^uint8(ext_call.return_data[0]) <= ext_call.return_data[0]:
                        v = 0
                        w = 0 / 10^uint8(ext_call.return_data[0])
                        while v < 10000:
                            require 10^uint8(ext_call.return_data[0] - 6)
                            require 10^uint8(ext_call.return_data[0] - 6)
                            if ((ext_call.return_data[0] - w / 10^uint8(ext_call.return_data[0] - 6))^2 * ext_call.return_data[0] - w / 10^uint8(ext_call.return_data[0] - 6) * ext_call.return_data[0] + s / 10^uint8(ext_call.return_data[0] - 6)) + ((ext_call.return_data[0] + s / 10^uint8(ext_call.return_data[0] - 6))^2 * ext_call.return_data[0] - w / 10^uint8(ext_call.return_data[0] - 6) * ext_call.return_data[0] + s / 10^uint8(ext_call.return_data[0] - 6)) / 2 <= ((ext_call.return_data[0] / 10^uint8(ext_call.return_data[0] - 6))^2 * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0] - 6) * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0] - 6)) + ((ext_call.return_data[0] / 10^uint8(ext_call.return_data[0] - 6))^2 * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0] - 6) * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0] - 6)) / 2:
                                v = v + 1
                                w = 99000 * w / 100000
                                continue 
                            if not w:
                                _13277 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_13277] = 26
                                mem[_13277 + 32] = 'SafeMath: division by zero'
                                _15104 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_15104] = 30
                                mem[_15104 + 32] = 'SafeMath: subtraction overflow'
                                if 0 <= w:
                                    if w <= u:
                                        t = t + 1
                                        u = u
                                        continue 
                                    t = t + 1
                                    u = w
                                    continue 
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                                s = 32
                                while s < 30:
                                    mem[s + mem[64] + 68] = mem[s + _15104 + 32]
                                    s = s + 32
                                    continue 
                            else:
                                if 5 * w / w != 5:
                                    revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                _13563 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_13563] = 26
                                mem[_13563 + 32] = 'SafeMath: division by zero'
                                _15570 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_15570] = 30
                                mem[_15570 + 32] = 'SafeMath: subtraction overflow'
                                if 5 * w / 1000 <= w:
                                    if w - (5 * w / 1000) <= u:
                                        t = t + 1
                                        u = u
                                        continue 
                                    t = t + 1
                                    u = w - (5 * w / 1000)
                                    continue 
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                                idx = 32
                                while idx < 30:
                                    mem[idx + mem[64] + 68] = mem[idx + _15570 + 32]
                                    idx = idx + 32
                                    continue 
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not w:
                            _12574 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_12574] = 26
                            mem[_12574 + 32] = 'SafeMath: division by zero'
                            _13417 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_13417] = 30
                            mem[_13417 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= w:
                                if w <= u:
                                    t = t + 1
                                    u = u
                                    continue 
                                t = t + 1
                                u = w
                                continue 
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                            idx = 32
                            while idx < 30:
                                mem[idx + mem[64] + 68] = mem[idx + _13417 + 32]
                                idx = idx + 32
                                continue 
                        else:
                            if 5 * w / w != 5:
                                revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            _12751 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_12751] = 26
                            mem[_12751 + 32] = 'SafeMath: division by zero'
                            _13784 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_13784] = 30
                            mem[_13784 + 32] = 'SafeMath: subtraction overflow'
                            if 5 * w / 1000 <= w:
                                if w - (5 * w / 1000) <= u:
                                    t = t + 1
                                    u = u
                                    continue 
                                t = t + 1
                                u = w - (5 * w / 1000)
                                continue 
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                            idx = 32
                            while idx < 30:
                                mem[idx + mem[64] + 68] = mem[idx + _13784 + 32]
                                idx = idx + 32
                                continue 
                    else:
                        idx = 0
                        v = ext_call.return_data[0]
                        while idx < 10000:
                            require 10^uint8(ext_call.return_data[0] - 6)
                            require 10^uint8(ext_call.return_data[0] - 6)
                            if ((ext_call.return_data[0] - v / 10^uint8(ext_call.return_data[0] - 6))^2 * ext_call.return_data[0] - v / 10^uint8(ext_call.return_data[0] - 6) * ext_call.return_data[0] + s / 10^uint8(ext_call.return_data[0] - 6)) + ((ext_call.return_data[0] + s / 10^uint8(ext_call.return_data[0] - 6))^2 * ext_call.return_data[0] - v / 10^uint8(ext_call.return_data[0] - 6) * ext_call.return_data[0] + s / 10^uint8(ext_call.return_data[0] - 6)) / 2 <= ((ext_call.return_data[0] / 10^uint8(ext_call.return_data[0] - 6))^2 * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0] - 6) * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0] - 6)) + ((ext_call.return_data[0] / 10^uint8(ext_call.return_data[0] - 6))^2 * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0] - 6) * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0] - 6)) / 2:
                                idx = idx + 1
                                v = 99900 * v / 100000
                                continue 
                            if not v:
                                _13278 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_13278] = 26
                                mem[_13278 + 32] = 'SafeMath: division by zero'
                                _15108 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_15108] = 30
                                mem[_15108 + 32] = 'SafeMath: subtraction overflow'
                                if 0 <= v:
                                    if v <= u:
                                        t = t + 1
                                        u = u
                                        continue 
                                    t = t + 1
                                    u = v
                                    continue 
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                                idx = 32
                                while idx < 30:
                                    mem[idx + mem[64] + 68] = mem[idx + _15108 + 32]
                                    idx = idx + 32
                                    continue 
                            else:
                                if 5 * v / v != 5:
                                    revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                _13564 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_13564] = 26
                                mem[_13564 + 32] = 'SafeMath: division by zero'
                                _15575 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_15575] = 30
                                mem[_15575 + 32] = 'SafeMath: subtraction overflow'
                                if 5 * v / 1000 <= v:
                                    if v - (5 * v / 1000) <= u:
                                        t = t + 1
                                        u = u
                                        continue 
                                    t = t + 1
                                    u = v - (5 * v / 1000)
                                    continue 
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                                idx = 32
                                while idx < 30:
                                    mem[idx + mem[64] + 68] = mem[idx + _15575 + 32]
                                    idx = idx + 32
                                    continue 
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not v:
                            _12575 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_12575] = 26
                            mem[_12575 + 32] = 'SafeMath: division by zero'
                            _13418 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_13418] = 30
                            mem[_13418 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= v:
                                if v <= u:
                                    t = t + 1
                                    u = u
                                    continue 
                                t = t + 1
                                u = v
                                continue 
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                            idx = 32
                            while idx < 30:
                                mem[idx + mem[64] + 68] = mem[idx + _13418 + 32]
                                idx = idx + 32
                                continue 
                        else:
                            if 5 * v / v != 5:
                                revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            _12752 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_12752] = 26
                            mem[_12752 + 32] = 'SafeMath: division by zero'
                            _13788 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_13788] = 30
                            mem[_13788 + 32] = 'SafeMath: subtraction overflow'
                            if 5 * v / 1000 <= v:
                                if v - (5 * v / 1000) <= u:
                                    t = t + 1
                                    u = u
                                    continue 
                                t = t + 1
                                u = v - (5 * v / 1000)
                                continue 
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                            idx = 32
                            while idx < 30:
                                mem[idx + mem[64] + 68] = mem[idx + _13788 + 32]
                                idx = idx + 32
                                continue 
                else:
                    if 3 * 10^uint8(ext_call.return_data[0]) * s / 3 * s != 10^uint8(ext_call.return_data[0]):
                        revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _9304 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_9304] = 26
                    mem[_9304 + 32] = 'SafeMath: division by zero'
                    if not 10^uint8(ext_call.return_data[0]):
                        _9414 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _9414 + 68] = mem[idx + _9304 + 32]
                            idx = idx + 32
                            continue 
                        mem[_9414 + 68] = mem[_9414 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _9414 + -mem[64] + 100
                    require 10^uint8(ext_call.return_data[0] - 6)
                    require 10^uint8(ext_call.return_data[0] - 6)
                    if 3 * 10^uint8(ext_call.return_data[0]) * s / 10^uint8(ext_call.return_data[0]) <= ext_call.return_data[0]:
                        idx = 0
                        v = 3 * 10^uint8(ext_call.return_data[0]) * s / 10^uint8(ext_call.return_data[0])
                        while idx < 10000:
                            require 10^uint8(ext_call.return_data[0] - 6)
                            require 10^uint8(ext_call.return_data[0] - 6)
                            if ((ext_call.return_data[0] - v / 10^uint8(ext_call.return_data[0] - 6))^2 * ext_call.return_data[0] - v / 10^uint8(ext_call.return_data[0] - 6) * ext_call.return_data[0] + s / 10^uint8(ext_call.return_data[0] - 6)) + ((ext_call.return_data[0] + s / 10^uint8(ext_call.return_data[0] - 6))^2 * ext_call.return_data[0] - v / 10^uint8(ext_call.return_data[0] - 6) * ext_call.return_data[0] + s / 10^uint8(ext_call.return_data[0] - 6)) / 2 <= ((ext_call.return_data[0] / 10^uint8(ext_call.return_data[0] - 6))^2 * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0] - 6) * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0] - 6)) + ((ext_call.return_data[0] / 10^uint8(ext_call.return_data[0] - 6))^2 * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0] - 6) * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0] - 6)) / 2:
                                idx = idx + 1
                                v = 99000 * v / 100000
                                continue 
                            if not v:
                                _13275 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_13275] = 26
                                mem[_13275 + 32] = 'SafeMath: division by zero'
                                _15096 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_15096] = 30
                                mem[_15096 + 32] = 'SafeMath: subtraction overflow'
                                if 0 <= v:
                                    if v <= u:
                                        t = t + 1
                                        u = u
                                        continue 
                                    t = t + 1
                                    u = v
                                    continue 
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                                idx = 32
                                while idx < 30:
                                    mem[idx + mem[64] + 68] = mem[idx + _15096 + 32]
                                    idx = idx + 32
                                    continue 
                            else:
                                if 5 * v / v != 5:
                                    revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                _13561 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_13561] = 26
                                mem[_13561 + 32] = 'SafeMath: division by zero'
                                _15560 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_15560] = 30
                                mem[_15560 + 32] = 'SafeMath: subtraction overflow'
                                if 5 * v / 1000 <= v:
                                    if v - (5 * v / 1000) <= u:
                                        t = t + 1
                                        u = u
                                        continue 
                                    t = t + 1
                                    u = v - (5 * v / 1000)
                                    continue 
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                                idx = 32
                                while idx < 30:
                                    mem[idx + mem[64] + 68] = mem[idx + _15560 + 32]
                                    idx = idx + 32
                                    continue 
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not v:
                            _12572 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_12572] = 26
                            mem[_12572 + 32] = 'SafeMath: division by zero'
                            _13415 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_13415] = 30
                            mem[_13415 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= v:
                                if v <= u:
                                    t = t + 1
                                    u = u
                                    continue 
                                t = t + 1
                                u = v
                                continue 
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                            idx = 32
                            while idx < 30:
                                mem[idx + mem[64] + 68] = mem[idx + _13415 + 32]
                                idx = idx + 32
                                continue 
                        else:
                            if 5 * v / v != 5:
                                revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            _12749 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_12749] = 26
                            mem[_12749 + 32] = 'SafeMath: division by zero'
                            _13776 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_13776] = 30
                            mem[_13776 + 32] = 'SafeMath: subtraction overflow'
                            if 5 * v / 1000 <= v:
                                if v - (5 * v / 1000) <= u:
                                    t = t + 1
                                    u = u
                                    continue 
                                t = t + 1
                                u = v - (5 * v / 1000)
                                continue 
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                            idx = 32
                            while idx < 30:
                                mem[idx + mem[64] + 68] = mem[idx + _13776 + 32]
                                idx = idx + 32
                                continue 
                    else:
                        idx = 0
                        v = ext_call.return_data[0]
                        while idx < 10000:
                            require 10^uint8(ext_call.return_data[0] - 6)
                            require 10^uint8(ext_call.return_data[0] - 6)
                            if ((ext_call.return_data[0] - v / 10^uint8(ext_call.return_data[0] - 6))^2 * ext_call.return_data[0] - v / 10^uint8(ext_call.return_data[0] - 6) * ext_call.return_data[0] + s / 10^uint8(ext_call.return_data[0] - 6)) + ((ext_call.return_data[0] + s / 10^uint8(ext_call.return_data[0] - 6))^2 * ext_call.return_data[0] - v / 10^uint8(ext_call.return_data[0] - 6) * ext_call.return_data[0] + s / 10^uint8(ext_call.return_data[0] - 6)) / 2 <= ((ext_call.return_data[0] / 10^uint8(ext_call.return_data[0] - 6))^2 * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0] - 6) * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0] - 6)) + ((ext_call.return_data[0] / 10^uint8(ext_call.return_data[0] - 6))^2 * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0] - 6) * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0] - 6)) / 2:
                                idx = idx + 1
                                v = 99900 * v / 100000
                                continue 
                            if not v:
                                _13276 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_13276] = 26
                                mem[_13276 + 32] = 'SafeMath: division by zero'
                                _15100 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_15100] = 30
                                mem[_15100 + 32] = 'SafeMath: subtraction overflow'
                                if 0 <= v:
                                    if v <= u:
                                        t = t + 1
                                        u = u
                                        continue 
                                    t = t + 1
                                    u = v
                                    continue 
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                                idx = 32
                                while idx < 30:
                                    mem[idx + mem[64] + 68] = mem[idx + _15100 + 32]
                                    idx = idx + 32
                                    continue 
                            else:
                                if 5 * v / v != 5:
                                    revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                _13562 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_13562] = 26
                                mem[_13562 + 32] = 'SafeMath: division by zero'
                                _15565 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_15565] = 30
                                mem[_15565 + 32] = 'SafeMath: subtraction overflow'
                                if 5 * v / 1000 <= v:
                                    if v - (5 * v / 1000) <= u:
                                        t = t + 1
                                        u = u
                                        continue 
                                    t = t + 1
                                    u = v - (5 * v / 1000)
                                    continue 
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                                idx = 32
                                while idx < 30:
                                    mem[idx + mem[64] + 68] = mem[idx + _15565 + 32]
                                    idx = idx + 32
                                    continue 
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not v:
                            _12573 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_12573] = 26
                            mem[_12573 + 32] = 'SafeMath: division by zero'
                            _13416 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_13416] = 30
                            mem[_13416 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= v:
                                if v <= u:
                                    t = t + 1
                                    u = u
                                    continue 
                                t = t + 1
                                u = v
                                continue 
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                            idx = 32
                            while idx < 30:
                                mem[idx + mem[64] + 68] = mem[idx + _13416 + 32]
                                idx = idx + 32
                                continue 
                        else:
                            if 5 * v / v != 5:
                                revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            _12750 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_12750] = 26
                            mem[_12750 + 32] = 'SafeMath: division by zero'
                            _13780 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_13780] = 30
                            mem[_13780 + 32] = 'SafeMath: subtraction overflow'
                            if 5 * v / 1000 <= v:
                                if v - (5 * v / 1000) <= u:
                                    t = t + 1
                                    u = u
                                    continue 
                                t = t + 1
                                u = v - (5 * v / 1000)
                                continue 
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                            idx = 32
                            while idx < 30:
                                mem[idx + mem[64] + 68] = mem[idx + _13780 + 32]
                                idx = idx + 32
                                continue 
                revert with 0, 'SafeMath: subtraction overflow'
            if 1 == t:
                _5607 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                require 0 < mem[_5607]
                mem[_5607 + 32] = 0xad84341756bf337f5a0164515b1f6f993d194e
                require 1 < mem[_5607]
                mem[_5607 + 64] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                mem[_5607 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_5607 + 100] = s
                mem[_5607 + 132] = 64
                mem[_5607 + 164] = mem[_5607]
                idx = 0
                while idx < 32 * mem[_5607]:
                    mem[idx + _5607 + 196] = mem[idx + _5607 + 32]
                    idx = idx + 32
                    continue 
                require ext_code.size(0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52)
                staticcall 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args s, 64, mem[_5607 + 164 len (32 * mem[_5607]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_5607 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _5607 + ceil32(return_data.size) + 96
                require return_data.size >= 32
                _12295 = mem[_5607 + 96 len 4], Mask(224, 32, s) >> 32
                require mem[_5607 + 96 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                require mem[_5607 + 96 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                require mem[_5607 + mem[_5607 + 96 len 4], Mask(224, 32, s) >> 32 + 96] <= 4294967296 and mem[_5607 + 96 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_5607 + mem[_5607 + 96 len 4], Mask(224, 32, s) >> 32 + 96]) + 32 <= return_data.size
                mem[_5607 + ceil32(return_data.size) + 96] = mem[_5607 + mem[_5607 + 96 len 4], Mask(224, 32, s) >> 32 + 96]
                _12675 = mem[_5607 + _12295 + 96]
                idx = 0
                while idx < 32 * _12675:
                    mem[idx + _5607 + ceil32(return_data.size) + 128] = mem[idx + _5607 + _12295 + 128]
                    idx = idx + 32
                    continue 
                mem[64] = (32 * _12675) + _5607 + ceil32(return_data.size) + 128
                require mem[_5607 + ceil32(return_data.size) + 96] - 1 < mem[_5607 + ceil32(return_data.size) + 96]
                if mem[(32 * mem[_5607 + ceil32(return_data.size) + 96] - 1) + _5607 + ceil32(return_data.size) + 128] <= u:
                    t = t + 1
                    u = u
                    continue 
                t = t + 1
                u = mem[(32 * mem[_5607 + ceil32(return_data.size) + 96] - 1) + _5607 + ceil32(return_data.size) + 128]
                continue 
            if 2 == t:
                _5787 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                require 0 < mem[_5787]
                mem[_5787 + 32] = 0xad84341756bf337f5a0164515b1f6f993d194e
                require 1 < mem[_5787]
                mem[_5787 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c
                mem[_5787 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_5787 + 100] = s
                mem[_5787 + 132] = 64
                mem[_5787 + 164] = mem[_5787]
                idx = 0
                while idx < 32 * mem[_5787]:
                    mem[idx + _5787 + 196] = mem[idx + _5787 + 32]
                    idx = idx + 32
                    continue 
                require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c29.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args s, 64, mem[_5787 + 164 len (32 * mem[_5787]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_5787 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _5787 + ceil32(return_data.size) + 96
                require return_data.size >= 32
                _12291 = mem[_5787 + 96 len 4], Mask(224, 32, s) >> 32
                require mem[_5787 + 96 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                require mem[_5787 + 96 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                require mem[_5787 + mem[_5787 + 96 len 4], Mask(224, 32, s) >> 32 + 96] <= 4294967296 and mem[_5787 + 96 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_5787 + mem[_5787 + 96 len 4], Mask(224, 32, s) >> 32 + 96]) + 32 <= return_data.size
                mem[_5787 + ceil32(return_data.size) + 96] = mem[_5787 + mem[_5787 + 96 len 4], Mask(224, 32, s) >> 32 + 96]
                _12673 = mem[_5787 + _12291 + 96]
                idx = 0
                while idx < 32 * _12673:
                    mem[idx + _5787 + ceil32(return_data.size) + 128] = mem[idx + _5787 + _12291 + 128]
                    idx = idx + 32
                    continue 
                require mem[_5787 + ceil32(return_data.size) + 96] - 1 < mem[_5787 + ceil32(return_data.size) + 96]
                _17769 = mem[(32 * mem[_5787 + ceil32(return_data.size) + 96] - 1) + _5787 + ceil32(return_data.size) + 128]
                mem[(32 * _12673) + _5787 + ceil32(return_data.size) + 128] = 2
                mem[(32 * _12673) + _5787 + ceil32(return_data.size) + 160] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c
                mem[(32 * _12673) + _5787 + ceil32(return_data.size) + 192] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                mem[(32 * _12673) + _5787 + ceil32(return_data.size) + 224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[(32 * _12673) + _5787 + ceil32(return_data.size) + 228] = _17769
                mem[(32 * _12673) + _5787 + ceil32(return_data.size) + 260] = 64
                mem[(32 * _12673) + _5787 + ceil32(return_data.size) + 292] = 2
                idx = 0
                while idx < 64:
                    mem[idx + (32 * _12673) + _5787 + ceil32(return_data.size) + 324] = mem[idx + (32 * _12673) + _5787 + ceil32(return_data.size) + 160]
                    idx = idx + 32
                    continue 
                require ext_code.size(0x67a937ea41cd05ec8c832a044afc0100f30aa4b5)
                staticcall 0x67a937ea41cd05ec8c832a044afc0100f30aa4b5.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args _17769, Array(len=2, data=mem[(32 * _12673) + _5787 + ceil32(return_data.size) + 324 len 64])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * _12673) + _5787 + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * _12673) + _5787 + (2 * ceil32(return_data.size)) + 224
                require return_data.size >= 32
                _19271 = mem[(32 * _12673) + _5787 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _17769) >> 32
                require mem[(32 * _12673) + _5787 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _17769) >> 32 <= 4294967296
                require mem[(32 * _12673) + _5787 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _17769) >> 32 + 32 <= return_data.size
                require mem[(32 * _12673) + _5787 + ceil32(return_data.size) + mem[(32 * _12673) + _5787 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _17769) >> 32 + 224] <= 4294967296 and mem[(32 * _12673) + _5787 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _17769) >> 32 + (32 * mem[(32 * _12673) + _5787 + ceil32(return_data.size) + mem[(32 * _12673) + _5787 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _17769) >> 32 + 224]) + 32 <= return_data.size
                mem[(32 * _12673) + _5787 + (2 * ceil32(return_data.size)) + 224] = mem[(32 * _12673) + _5787 + ceil32(return_data.size) + mem[(32 * _12673) + _5787 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _17769) >> 32 + 224]
                _19349 = mem[(32 * _12673) + _5787 + ceil32(return_data.size) + _19271 + 224]
                idx = 0
                while idx < 32 * _19349:
                    mem[idx + (32 * _12673) + _5787 + (2 * ceil32(return_data.size)) + 256] = mem[idx + (32 * _12673) + _5787 + ceil32(return_data.size) + _19271 + 256]
                    idx = idx + 32
                    continue 
                mem[64] = (32 * _19349) + (32 * _12673) + _5787 + (2 * ceil32(return_data.size)) + 256
                require mem[(32 * _12673) + _5787 + (2 * ceil32(return_data.size)) + 224] - 1 < mem[(32 * _12673) + _5787 + (2 * ceil32(return_data.size)) + 224]
                if mem[(32 * mem[(32 * _12673) + _5787 + (2 * ceil32(return_data.size)) + 224] - 1) + (32 * _12673) + _5787 + (2 * ceil32(return_data.size)) + 256] <= u:
                    t = t + 1
                    u = u
                    continue 
                t = t + 1
                u = mem[(32 * mem[(32 * _12673) + _5787 + (2 * ceil32(return_data.size)) + 224] - 1) + (32 * _12673) + _5787 + (2 * ceil32(return_data.size)) + 256]
                continue 
            if t != 3:
                if s <= u:
                    t = t + 1
                    u = u
                    continue 
                t = t + 1
                u = s
                continue 
            _5785 = mem[0]
            _5899 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            require 0 < mem[_5899]
            mem[_5899 + 32] = 0xad84341756bf337f5a0164515b1f6f993d194e
            require 1 < mem[_5899]
            mem[_5899 + 64] = 0x5848b832e872d9edd84ac5718d58f21fd9c96
            mem[_5899 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[_5899 + 100] = s
            mem[_5899 + 132] = 64
            mem[_5899 + 164] = mem[_5899]
            idx = 0
            while idx < 32 * mem[_5899]:
                mem[idx + _5899 + 196] = mem[idx + _5899 + 32]
                idx = idx + 32
                continue 
            require ext_code.size(0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52)
            staticcall 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52.getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args s, 64, mem[_5899 + 164 len (32 * mem[_5899]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[_5899 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = _5899 + ceil32(return_data.size) + 96
            require return_data.size >= 32
            _12287 = mem[_5899 + 96 len 4], Mask(224, 32, s) >> 32
            require mem[_5899 + 96 len 4], Mask(224, 32, s) >> 32 <= 4294967296
            require mem[_5899 + 96 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
            require mem[_5899 + mem[_5899 + 96 len 4], Mask(224, 32, s) >> 32 + 96] <= 4294967296 and mem[_5899 + 96 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_5899 + mem[_5899 + 96 len 4], Mask(224, 32, s) >> 32 + 96]) + 32 <= return_data.size
            mem[_5899 + ceil32(return_data.size) + 96] = mem[_5899 + mem[_5899 + 96 len 4], Mask(224, 32, s) >> 32 + 96]
            _12671 = mem[_5899 + _12287 + 96]
            idx = 0
            while idx < 32 * _12671:
                mem[idx + _5899 + ceil32(return_data.size) + 128] = mem[idx + _5899 + _12287 + 128]
                idx = idx + 32
                continue 
            require mem[_5899 + ceil32(return_data.size) + 96] - 1 < mem[_5899 + ceil32(return_data.size) + 96]
            _17767 = mem[(32 * mem[_5899 + ceil32(return_data.size) + 96] - 1) + _5899 + ceil32(return_data.size) + 128]
            mem[(32 * _12671) + _5899 + ceil32(return_data.size) + 128] = 3
            mem[(32 * _12671) + _5899 + ceil32(return_data.size) + 160] = 0x5848b832e872d9edd84ac5718d58f21fd9c96
            mem[0] = _5785
            mem[(32 * _12671) + _5899 + ceil32(return_data.size) + 192] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c
            mem[(32 * _12671) + _5899 + ceil32(return_data.size) + 224] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
            mem[(32 * _12671) + _5899 + ceil32(return_data.size) + 256] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[(32 * _12671) + _5899 + ceil32(return_data.size) + 260] = _17767
            mem[(32 * _12671) + _5899 + ceil32(return_data.size) + 292] = 64
            mem[(32 * _12671) + _5899 + ceil32(return_data.size) + 324] = 3
            idx = 0
            while idx < 96:
                mem[idx + (32 * _12671) + _5899 + ceil32(return_data.size) + 356] = mem[idx + (32 * _12671) + _5899 + ceil32(return_data.size) + 160]
                idx = idx + 32
                continue 
            require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
            staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c29.getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args _17767, Array(len=3, data=mem[(32 * _12671) + _5899 + ceil32(return_data.size) + 356 len 96])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _12671) + _5899 + ceil32(return_data.size) + 256 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * _12671) + _5899 + (2 * ceil32(return_data.size)) + 256
            require return_data.size >= 32
            _19267 = mem[(32 * _12671) + _5899 + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _17767) >> 32
            require mem[(32 * _12671) + _5899 + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _17767) >> 32 <= 4294967296
            require mem[(32 * _12671) + _5899 + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _17767) >> 32 + 32 <= return_data.size
            require mem[(32 * _12671) + _5899 + ceil32(return_data.size) + mem[(32 * _12671) + _5899 + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _17767) >> 32 + 256] <= 4294967296 and mem[(32 * _12671) + _5899 + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _17767) >> 32 + (32 * mem[(32 * _12671) + _5899 + ceil32(return_data.size) + mem[(32 * _12671) + _5899 + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _17767) >> 32 + 256]) + 32 <= return_data.size
            mem[(32 * _12671) + _5899 + (2 * ceil32(return_data.size)) + 256] = mem[(32 * _12671) + _5899 + ceil32(return_data.size) + mem[(32 * _12671) + _5899 + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _17767) >> 32 + 256]
            _19347 = mem[(32 * _12671) + _5899 + ceil32(return_data.size) + _19267 + 256]
            idx = 0
            while idx < 32 * _19347:
                mem[idx + (32 * _12671) + _5899 + (2 * ceil32(return_data.size)) + 288] = mem[idx + (32 * _12671) + _5899 + ceil32(return_data.size) + _19267 + 288]
                idx = idx + 32
                continue 
            mem[64] = (32 * _19347) + (32 * _12671) + _5899 + (2 * ceil32(return_data.size)) + 288
            require mem[(32 * _12671) + _5899 + (2 * ceil32(return_data.size)) + 256] - 1 < mem[(32 * _12671) + _5899 + (2 * ceil32(return_data.size)) + 256]
            if mem[(32 * mem[(32 * _12671) + _5899 + (2 * ceil32(return_data.size)) + 256] - 1) + (32 * _12671) + _5899 + (2 * ceil32(return_data.size)) + 288] <= u:
                t = t + 1
                u = u
                continue 
            t = t + 1
            u = mem[(32 * mem[(32 * _12671) + _5899 + (2 * ceil32(return_data.size)) + 256] - 1) + (32 * _12671) + _5899 + (2 * ceil32(return_data.size)) + 288]
            continue 
    else:
        if 10^6 * sub_7d0b6809 / sub_7d0b6809 != 10^6:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
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
                staticcall 0x83000000000000000000000000ad84341756bf337f5a0164515b1f6f993d194e.0x313ce567 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(0x4900000000000000000000000004068da6c83afcfa0e13ba15a6696662335d5b)
                staticcall 0x4900000000000000000000000004068da6c83afcfa0e13ba15a6696662335d5b.0x313ce567 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(0x4068da6c83afcfa0e13ba15a6696662335d5b)
                staticcall 0x4068da6c83afcfa0e13ba15a6696662335d5b.0x313ce567 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(0x83000000000000000000000000ad84341756bf337f5a0164515b1f6f993d194e)
                staticcall 0x83000000000000000000000000ad84341756bf337f5a0164515b1f6f993d194e.0x313ce567 with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not 3 * 10^6 * sub_7d0b6809:
                    _2436 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2436] = 26
                    mem[_2436 + 32] = 'SafeMath: division by zero'
                    if not 10^uint8(ext_call.return_data[0]):
                        _2503 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _2503 + 68] = mem[idx + _2436 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2503 + 68] = mem[_2503 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _2503 + -mem[64] + 100
                    require 10^uint8(ext_call.return_data[0] - 6)
                    require 10^uint8(ext_call.return_data[0] - 6)
                    if 0 / 10^uint8(ext_call.return_data[0]) <= ext_call.return_data[0]:
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
                                _6621 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_6621] = 26
                                mem[_6621 + 32] = 'SafeMath: division by zero'
                                _7862 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_7862] = 30
                                mem[_7862 + 32] = 'SafeMath: subtraction overflow'
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
                                    mem[idx + mem[64] + 68] = mem[idx + _7862 + 32]
                                    idx = idx + 32
                                    continue 
                            else:
                                if 5 * u / u != 5:
                                    revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                _6911 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_6911] = 26
                                mem[_6911 + 32] = 'SafeMath: division by zero'
                                _8186 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_8186] = 30
                                mem[_8186 + 32] = 'SafeMath: subtraction overflow'
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
                                    mem[idx + mem[64] + 68] = mem[idx + _8186 + 32]
                                    idx = idx + 32
                                    continue 
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not u:
                            _5748 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_5748] = 26
                            mem[_5748 + 32] = 'SafeMath: division by zero'
                            _6753 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_6753] = 30
                            mem[_6753 + 32] = 'SafeMath: subtraction overflow'
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
                                mem[idx + mem[64] + 68] = mem[idx + _6753 + 32]
                                idx = idx + 32
                                continue 
                        else:
                            if 5 * u / u != 5:
                                revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            _5993 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_5993] = 26
                            mem[_5993 + 32] = 'SafeMath: division by zero'
                            _7038 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_7038] = 30
                            mem[_7038 + 32] = 'SafeMath: subtraction overflow'
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
                                mem[idx + mem[64] + 68] = mem[idx + _7038 + 32]
                                idx = idx + 32
                                continue 
                    else:
                        t = 0
                        u = ext_call.return_data[0]
                        while t < 10000:
                            require 10^uint8(ext_call.return_data[0] - 6)
                            require 10^uint8(ext_call.return_data[0] - 6)
                            if ((ext_call.return_data[0] - u / 10^uint8(ext_call.return_data[0] - 6))^2 * ext_call.return_data[0] - u / 10^uint8(ext_call.return_data[0] - 6) * ext_call.return_data[0] + (10^6 * sub_7d0b6809) / 10^uint8(ext_call.return_data[0] - 6)) + ((ext_call.return_data[0] + (10^6 * sub_7d0b6809) / 10^uint8(ext_call.return_data[0] - 6))^2 * ext_call.return_data[0] - u / 10^uint8(ext_call.return_data[0] - 6) * ext_call.return_data[0] + (10^6 * sub_7d0b6809) / 10^uint8(ext_call.return_data[0] - 6)) / 2 <= ((ext_call.return_data[0] / 10^uint8(ext_call.return_data[0] - 6))^2 * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0] - 6) * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0] - 6)) + ((ext_call.return_data[0] / 10^uint8(ext_call.return_data[0] - 6))^2 * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0] - 6) * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0] - 6)) / 2:
                                t = t + 1
                                u = 99900 * u / 100000
                                continue 
                            if not u:
                                _6622 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_6622] = 26
                                mem[_6622 + 32] = 'SafeMath: division by zero'
                                _7866 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_7866] = 30
                                mem[_7866 + 32] = 'SafeMath: subtraction overflow'
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
                                    mem[idx + mem[64] + 68] = mem[idx + _7866 + 32]
                                    idx = idx + 32
                                    continue 
                            else:
                                if 5 * u / u != 5:
                                    revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                _6912 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_6912] = 26
                                mem[_6912 + 32] = 'SafeMath: division by zero'
                                _8191 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_8191] = 30
                                mem[_8191 + 32] = 'SafeMath: subtraction overflow'
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
                                    mem[idx + mem[64] + 68] = mem[idx + _8191 + 32]
                                    idx = idx + 32
                                    continue 
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not u:
                            _5749 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_5749] = 26
                            mem[_5749 + 32] = 'SafeMath: division by zero'
                            _6754 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_6754] = 30
                            mem[_6754 + 32] = 'SafeMath: subtraction overflow'
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
                                mem[idx + mem[64] + 68] = mem[idx + _6754 + 32]
                                idx = idx + 32
                                continue 
                        else:
                            if 5 * u / u != 5:
                                revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            _5994 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_5994] = 26
                            mem[_5994 + 32] = 'SafeMath: division by zero'
                            _7042 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_7042] = 30
                            mem[_7042 + 32] = 'SafeMath: subtraction overflow'
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
                                mem[idx + mem[64] + 68] = mem[idx + _7042 + 32]
                                idx = idx + 32
                                continue 
                else:
                    if 3 * 10^6 * 10^uint8(ext_call.return_data[0]) * sub_7d0b6809 / 3 * 10^6 * sub_7d0b6809 != 10^uint8(ext_call.return_data[0]):
                        revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _2502 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2502] = 26
                    mem[_2502 + 32] = 'SafeMath: division by zero'
                    if not 10^uint8(ext_call.return_data[0]):
                        _2562 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _2562 + 68] = mem[idx + _2502 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2562 + 68] = mem[_2562 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _2562 + -mem[64] + 100
                    require 10^uint8(ext_call.return_data[0] - 6)
                    require 10^uint8(ext_call.return_data[0] - 6)
                    if 3 * 10^6 * 10^uint8(ext_call.return_data[0]) * sub_7d0b6809 / 10^uint8(ext_call.return_data[0]) <= ext_call.return_data[0]:
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
                                _6619 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_6619] = 26
                                mem[_6619 + 32] = 'SafeMath: division by zero'
                                _7854 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_7854] = 30
                                mem[_7854 + 32] = 'SafeMath: subtraction overflow'
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
                                    mem[idx + mem[64] + 68] = mem[idx + _7854 + 32]
                                    idx = idx + 32
                                    continue 
                            else:
                                if 5 * u / u != 5:
                                    revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                _6909 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_6909] = 26
                                mem[_6909 + 32] = 'SafeMath: division by zero'
                                _8176 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_8176] = 30
                                mem[_8176 + 32] = 'SafeMath: subtraction overflow'
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
                                    mem[idx + mem[64] + 68] = mem[idx + _8176 + 32]
                                    idx = idx + 32
                                    continue 
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not u:
                            _5746 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_5746] = 26
                            mem[_5746 + 32] = 'SafeMath: division by zero'
                            _6751 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_6751] = 30
                            mem[_6751 + 32] = 'SafeMath: subtraction overflow'
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
                                mem[idx + mem[64] + 68] = mem[idx + _6751 + 32]
                                idx = idx + 32
                                continue 
                        else:
                            if 5 * u / u != 5:
                                revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            _5991 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_5991] = 26
                            mem[_5991 + 32] = 'SafeMath: division by zero'
                            _7030 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_7030] = 30
                            mem[_7030 + 32] = 'SafeMath: subtraction overflow'
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
                                mem[idx + mem[64] + 68] = mem[idx + _7030 + 32]
                                idx = idx + 32
                                continue 
                    else:
                        t = 0
                        u = ext_call.return_data[0]
                        while t < 10000:
                            require 10^uint8(ext_call.return_data[0] - 6)
                            require 10^uint8(ext_call.return_data[0] - 6)
                            if ((ext_call.return_data[0] - u / 10^uint8(ext_call.return_data[0] - 6))^2 * ext_call.return_data[0] - u / 10^uint8(ext_call.return_data[0] - 6) * ext_call.return_data[0] + (10^6 * sub_7d0b6809) / 10^uint8(ext_call.return_data[0] - 6)) + ((ext_call.return_data[0] + (10^6 * sub_7d0b6809) / 10^uint8(ext_call.return_data[0] - 6))^2 * ext_call.return_data[0] - u / 10^uint8(ext_call.return_data[0] - 6) * ext_call.return_data[0] + (10^6 * sub_7d0b6809) / 10^uint8(ext_call.return_data[0] - 6)) / 2 <= ((ext_call.return_data[0] / 10^uint8(ext_call.return_data[0] - 6))^2 * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0] - 6) * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0] - 6)) + ((ext_call.return_data[0] / 10^uint8(ext_call.return_data[0] - 6))^2 * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0] - 6) * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0] - 6)) / 2:
                                t = t + 1
                                u = 99900 * u / 100000
                                continue 
                            if not u:
                                _6620 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_6620] = 26
                                mem[_6620 + 32] = 'SafeMath: division by zero'
                                _7858 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_7858] = 30
                                mem[_7858 + 32] = 'SafeMath: subtraction overflow'
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
                                    mem[idx + mem[64] + 68] = mem[idx + _7858 + 32]
                                    idx = idx + 32
                                    continue 
                            else:
                                if 5 * u / u != 5:
                                    revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                _6910 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_6910] = 26
                                mem[_6910 + 32] = 'SafeMath: division by zero'
                                _8181 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_8181] = 30
                                mem[_8181 + 32] = 'SafeMath: subtraction overflow'
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
                                    mem[idx + mem[64] + 68] = mem[idx + _8181 + 32]
                                    idx = idx + 32
                                    continue 
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not u:
                            _5747 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_5747] = 26
                            mem[_5747 + 32] = 'SafeMath: division by zero'
                            _6752 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_6752] = 30
                            mem[_6752 + 32] = 'SafeMath: subtraction overflow'
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
                                mem[idx + mem[64] + 68] = mem[idx + _6752 + 32]
                                idx = idx + 32
                                continue 
                        else:
                            if 5 * u / u != 5:
                                revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            _5992 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_5992] = 26
                            mem[_5992 + 32] = 'SafeMath: division by zero'
                            _7034 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_7034] = 30
                            mem[_7034 + 32] = 'SafeMath: subtraction overflow'
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
                                mem[idx + mem[64] + 68] = mem[idx + _7034 + 32]
                                idx = idx + 32
                                continue 
                revert with 0, 'SafeMath: subtraction overflow'
            if 1 == idx:
                _1087 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                require 0 < mem[_1087]
                mem[_1087 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                require 1 < mem[_1087]
                mem[_1087 + 64] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                mem[_1087 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_1087 + 100] = 10^6 * sub_7d0b6809
                mem[_1087 + 132] = 64
                mem[_1087 + 164] = mem[_1087]
                t = 0
                while t < 32 * mem[_1087]:
                    mem[t + _1087 + 196] = mem[t + _1087 + 32]
                    t = t + 32
                    continue 
                require ext_code.size(0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52)
                staticcall 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args 10^6 * sub_7d0b6809, 64, mem[_1087 + 164 len (32 * mem[_1087]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_1087 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _1087 + ceil32(return_data.size) + 96
                require return_data.size >= 32
                _5591 = mem[_1087 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32
                require mem[_1087 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 <= 4294967296
                require mem[_1087 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 32 <= return_data.size
                require mem[_1087 + mem[_1087 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 96] <= 4294967296 and mem[_1087 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + (32 * mem[_1087 + mem[_1087 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 96]) + 32 <= return_data.size
                mem[_1087 + ceil32(return_data.size) + 96] = mem[_1087 + mem[_1087 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 96]
                _5867 = mem[_1087 + _5591 + 96]
                t = 0
                while t < 32 * _5867:
                    mem[t + _1087 + ceil32(return_data.size) + 128] = mem[t + _1087 + _5591 + 128]
                    t = t + 32
                    continue 
                mem[64] = (32 * _5867) + _1087 + ceil32(return_data.size) + 128
                require mem[_1087 + ceil32(return_data.size) + 96] - 1 < mem[_1087 + ceil32(return_data.size) + 96]
                if mem[(32 * mem[_1087 + ceil32(return_data.size) + 96] - 1) + _1087 + ceil32(return_data.size) + 128] <= s:
                    idx = idx + 1
                    s = s
                    continue 
                idx = idx + 1
                s = mem[(32 * mem[_1087 + ceil32(return_data.size) + 96] - 1) + _1087 + ceil32(return_data.size) + 128]
                continue 
            if idx != 2:
                if idx != 3:
                    if 10^6 * sub_7d0b6809 <= s:
                        idx = idx + 1
                        s = s
                        continue 
                    idx = idx + 1
                    s = 10^6 * sub_7d0b6809
                    continue 
                _1163 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                require 0 < mem[_1163]
                mem[_1163 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                require 1 < mem[_1163]
                mem[_1163 + 64] = 0x5848b832e872d9edd84ac5718d58f21fd9c96
                mem[_1163 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_1163 + 100] = 10^6 * sub_7d0b6809
                mem[_1163 + 132] = 64
                mem[_1163 + 164] = mem[_1163]
                t = 0
                while t < 32 * mem[_1163]:
                    mem[t + _1163 + 196] = mem[t + _1163 + 32]
                    t = t + 32
                    continue 
                require ext_code.size(0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52)
                staticcall 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args 10^6 * sub_7d0b6809, 64, mem[_1163 + 164 len (32 * mem[_1163]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_1163 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _1163 + ceil32(return_data.size) + 96
                require return_data.size >= 32
                _5583 = mem[_1163 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32
                require mem[_1163 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 <= 4294967296
                require mem[_1163 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 32 <= return_data.size
                require mem[_1163 + mem[_1163 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 96] <= 4294967296 and mem[_1163 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + (32 * mem[_1163 + mem[_1163 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 96]) + 32 <= return_data.size
                mem[_1163 + ceil32(return_data.size) + 96] = mem[_1163 + mem[_1163 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 96]
                _5863 = mem[_1163 + _5583 + 96]
                t = 0
                while t < 32 * _5863:
                    mem[t + _1163 + ceil32(return_data.size) + 128] = mem[t + _1163 + _5583 + 128]
                    t = t + 32
                    continue 
                require mem[_1163 + ceil32(return_data.size) + 96] - 1 < mem[_1163 + ceil32(return_data.size) + 96]
                _11803 = mem[(32 * mem[_1163 + ceil32(return_data.size) + 96] - 1) + _1163 + ceil32(return_data.size) + 128]
                mem[(32 * _5863) + _1163 + ceil32(return_data.size) + 128] = 3
                mem[(32 * _5863) + _1163 + ceil32(return_data.size) + 160] = 0x5848b832e872d9edd84ac5718d58f21fd9c96
                mem[(32 * _5863) + _1163 + ceil32(return_data.size) + 192] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c
                mem[(32 * _5863) + _1163 + ceil32(return_data.size) + 224] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                mem[(32 * _5863) + _1163 + ceil32(return_data.size) + 256] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[(32 * _5863) + _1163 + ceil32(return_data.size) + 260] = _11803
                mem[(32 * _5863) + _1163 + ceil32(return_data.size) + 292] = 64
                mem[(32 * _5863) + _1163 + ceil32(return_data.size) + 324] = 3
                t = 0
                while t < 96:
                    mem[t + (32 * _5863) + _1163 + ceil32(return_data.size) + 356] = mem[t + (32 * _5863) + _1163 + ceil32(return_data.size) + 160]
                    t = t + 32
                    continue 
                require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c29.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args _11803, Array(len=3, data=mem[(32 * _5863) + _1163 + ceil32(return_data.size) + 356 len 96])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * _5863) + _1163 + ceil32(return_data.size) + 256 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * _5863) + _1163 + (2 * ceil32(return_data.size)) + 256
                require return_data.size >= 32
                _18347 = mem[(32 * _5863) + _1163 + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _11803) >> 32
                require mem[(32 * _5863) + _1163 + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _11803) >> 32 <= 4294967296
                require mem[(32 * _5863) + _1163 + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _11803) >> 32 + 32 <= return_data.size
                require mem[(32 * _5863) + _1163 + ceil32(return_data.size) + mem[(32 * _5863) + _1163 + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _11803) >> 32 + 256] <= 4294967296 and mem[(32 * _5863) + _1163 + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _11803) >> 32 + (32 * mem[(32 * _5863) + _1163 + ceil32(return_data.size) + mem[(32 * _5863) + _1163 + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _11803) >> 32 + 256]) + 32 <= return_data.size
                mem[(32 * _5863) + _1163 + (2 * ceil32(return_data.size)) + 256] = mem[(32 * _5863) + _1163 + ceil32(return_data.size) + mem[(32 * _5863) + _1163 + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _11803) >> 32 + 256]
                _18559 = mem[(32 * _5863) + _1163 + ceil32(return_data.size) + _18347 + 256]
                t = 0
                while t < 32 * _18559:
                    mem[t + (32 * _5863) + _1163 + (2 * ceil32(return_data.size)) + 288] = mem[t + (32 * _5863) + _1163 + ceil32(return_data.size) + _18347 + 288]
                    t = t + 32
                    continue 
                mem[64] = (32 * _18559) + (32 * _5863) + _1163 + (2 * ceil32(return_data.size)) + 288
                require mem[(32 * _5863) + _1163 + (2 * ceil32(return_data.size)) + 256] - 1 < mem[(32 * _5863) + _1163 + (2 * ceil32(return_data.size)) + 256]
                if mem[(32 * mem[(32 * _5863) + _1163 + (2 * ceil32(return_data.size)) + 256] - 1) + (32 * _5863) + _1163 + (2 * ceil32(return_data.size)) + 288] <= s:
                    idx = idx + 1
                    s = s
                    continue 
                idx = idx + 1
                s = mem[(32 * mem[(32 * _5863) + _1163 + (2 * ceil32(return_data.size)) + 256] - 1) + (32 * _5863) + _1163 + (2 * ceil32(return_data.size)) + 288]
                continue 
            _1107 = mem[0]
            _1129 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            require 0 < mem[_1129]
            mem[_1129 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
            require 1 < mem[_1129]
            mem[_1129 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c
            mem[_1129 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[_1129 + 100] = 10^6 * sub_7d0b6809
            mem[_1129 + 132] = 64
            mem[_1129 + 164] = mem[_1129]
            t = 0
            while t < 32 * mem[_1129]:
                mem[t + _1129 + 196] = mem[t + _1129 + 32]
                t = t + 32
                continue 
            require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
            staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c29.getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args 10^6 * sub_7d0b6809, 64, mem[_1129 + 164 len (32 * mem[_1129]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[_1129 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = _1129 + ceil32(return_data.size) + 96
            require return_data.size >= 32
            _5587 = mem[_1129 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32
            require mem[_1129 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 <= 4294967296
            require mem[_1129 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 32 <= return_data.size
            require mem[_1129 + mem[_1129 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 96] <= 4294967296 and mem[_1129 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + (32 * mem[_1129 + mem[_1129 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 96]) + 32 <= return_data.size
            mem[_1129 + ceil32(return_data.size) + 96] = mem[_1129 + mem[_1129 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 96]
            _5865 = mem[_1129 + _5587 + 96]
            t = 0
            while t < 32 * _5865:
                mem[t + _1129 + ceil32(return_data.size) + 128] = mem[t + _1129 + _5587 + 128]
                t = t + 32
                continue 
            require mem[_1129 + ceil32(return_data.size) + 96] - 1 < mem[_1129 + ceil32(return_data.size) + 96]
            _11805 = mem[(32 * mem[_1129 + ceil32(return_data.size) + 96] - 1) + _1129 + ceil32(return_data.size) + 128]
            mem[(32 * _5865) + _1129 + ceil32(return_data.size) + 128] = 2
            mem[0] = _1107
            mem[(32 * _5865) + _1129 + ceil32(return_data.size) + 160] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c
            mem[(32 * _5865) + _1129 + ceil32(return_data.size) + 192] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
            mem[(32 * _5865) + _1129 + ceil32(return_data.size) + 224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[(32 * _5865) + _1129 + ceil32(return_data.size) + 228] = _11805
            mem[(32 * _5865) + _1129 + ceil32(return_data.size) + 260] = 64
            mem[(32 * _5865) + _1129 + ceil32(return_data.size) + 292] = 2
            t = 0
            while t < 64:
                mem[t + (32 * _5865) + _1129 + ceil32(return_data.size) + 324] = mem[t + (32 * _5865) + _1129 + ceil32(return_data.size) + 160]
                t = t + 32
                continue 
            require ext_code.size(0x67a937ea41cd05ec8c832a044afc0100f30aa4b5)
            staticcall 0x67a937ea41cd05ec8c832a044afc0100f30aa4b5.getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args _11805, Array(len=2, data=mem[(32 * _5865) + _1129 + ceil32(return_data.size) + 324 len 64])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _5865) + _1129 + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * _5865) + _1129 + (2 * ceil32(return_data.size)) + 224
            require return_data.size >= 32
            _18351 = mem[(32 * _5865) + _1129 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _11805) >> 32
            require mem[(32 * _5865) + _1129 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _11805) >> 32 <= 4294967296
            require mem[(32 * _5865) + _1129 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _11805) >> 32 + 32 <= return_data.size
            require mem[(32 * _5865) + _1129 + ceil32(return_data.size) + mem[(32 * _5865) + _1129 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _11805) >> 32 + 224] <= 4294967296 and mem[(32 * _5865) + _1129 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _11805) >> 32 + (32 * mem[(32 * _5865) + _1129 + ceil32(return_data.size) + mem[(32 * _5865) + _1129 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _11805) >> 32 + 224]) + 32 <= return_data.size
            mem[(32 * _5865) + _1129 + (2 * ceil32(return_data.size)) + 224] = mem[(32 * _5865) + _1129 + ceil32(return_data.size) + mem[(32 * _5865) + _1129 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _11805) >> 32 + 224]
            _18561 = mem[(32 * _5865) + _1129 + ceil32(return_data.size) + _18351 + 224]
            t = 0
            while t < 32 * _18561:
                mem[t + (32 * _5865) + _1129 + (2 * ceil32(return_data.size)) + 256] = mem[t + (32 * _5865) + _1129 + ceil32(return_data.size) + _18351 + 256]
                t = t + 32
                continue 
            mem[64] = (32 * _18561) + (32 * _5865) + _1129 + (2 * ceil32(return_data.size)) + 256
            require mem[(32 * _5865) + _1129 + (2 * ceil32(return_data.size)) + 224] - 1 < mem[(32 * _5865) + _1129 + (2 * ceil32(return_data.size)) + 224]
            if mem[(32 * mem[(32 * _5865) + _1129 + (2 * ceil32(return_data.size)) + 224] - 1) + (32 * _5865) + _1129 + (2 * ceil32(return_data.size)) + 256] <= s:
                idx = idx + 1
                s = s
                continue 
            idx = idx + 1
            s = mem[(32 * mem[(32 * _5865) + _1129 + (2 * ceil32(return_data.size)) + 224] - 1) + (32 * _5865) + _1129 + (2 * ceil32(return_data.size)) + 256]
            continue 
        t = 0
        u = 0
        while t < 4:
            if not t:
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
                staticcall 0x83000000000000000000000000ad84341756bf337f5a0164515b1f6f993d194e.0x313ce567 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(0x4900000000000000000000000004068da6c83afcfa0e13ba15a6696662335d5b)
                staticcall 0x4900000000000000000000000004068da6c83afcfa0e13ba15a6696662335d5b.0x313ce567 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(0x4068da6c83afcfa0e13ba15a6696662335d5b)
                staticcall 0x4068da6c83afcfa0e13ba15a6696662335d5b.0x313ce567 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(0x83000000000000000000000000ad84341756bf337f5a0164515b1f6f993d194e)
                staticcall 0x83000000000000000000000000ad84341756bf337f5a0164515b1f6f993d194e.0x313ce567 with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not 3 * s:
                    _9106 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_9106] = 26
                    mem[_9106 + 32] = 'SafeMath: division by zero'
                    if not 10^uint8(ext_call.return_data[0]):
                        _9269 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _9269 + 68] = mem[idx + _9106 + 32]
                            idx = idx + 32
                            continue 
                        mem[_9269 + 68] = mem[_9269 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _9269 + -mem[64] + 100
                    require 10^uint8(ext_call.return_data[0] - 6)
                    require 10^uint8(ext_call.return_data[0] - 6)
                    if 0 / 10^uint8(ext_call.return_data[0]) <= ext_call.return_data[0]:
                        v = 0
                        w = 0 / 10^uint8(ext_call.return_data[0])
                        while v < 10000:
                            require 10^uint8(ext_call.return_data[0] - 6)
                            require 10^uint8(ext_call.return_data[0] - 6)
                            if ((ext_call.return_data[0] - w / 10^uint8(ext_call.return_data[0] - 6))^2 * ext_call.return_data[0] - w / 10^uint8(ext_call.return_data[0] - 6) * ext_call.return_data[0] + s / 10^uint8(ext_call.return_data[0] - 6)) + ((ext_call.return_data[0] + s / 10^uint8(ext_call.return_data[0] - 6))^2 * ext_call.return_data[0] - w / 10^uint8(ext_call.return_data[0] - 6) * ext_call.return_data[0] + s / 10^uint8(ext_call.return_data[0] - 6)) / 2 <= ((ext_call.return_data[0] / 10^uint8(ext_call.return_data[0] - 6))^2 * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0] - 6) * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0] - 6)) + ((ext_call.return_data[0] / 10^uint8(ext_call.return_data[0] - 6))^2 * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0] - 6) * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0] - 6)) / 2:
                                v = v + 1
                                w = 99000 * w / 100000
                                continue 
                            if not w:
                                _13193 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_13193] = 26
                                mem[_13193 + 32] = 'SafeMath: division by zero'
                                _14968 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_14968] = 30
                                mem[_14968 + 32] = 'SafeMath: subtraction overflow'
                                if 0 <= w:
                                    if w <= u:
                                        t = t + 1
                                        u = u
                                        continue 
                                    t = t + 1
                                    u = w
                                    continue 
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                                s = 32
                                while s < 30:
                                    mem[s + mem[64] + 68] = mem[s + _14968 + 32]
                                    s = s + 32
                                    continue 
                            else:
                                if 5 * w / w != 5:
                                    revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                _13483 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_13483] = 26
                                mem[_13483 + 32] = 'SafeMath: division by zero'
                                _15394 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_15394] = 30
                                mem[_15394 + 32] = 'SafeMath: subtraction overflow'
                                if 5 * w / 1000 <= w:
                                    if w - (5 * w / 1000) <= u:
                                        t = t + 1
                                        u = u
                                        continue 
                                    t = t + 1
                                    u = w - (5 * w / 1000)
                                    continue 
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                                idx = 32
                                while idx < 30:
                                    mem[idx + mem[64] + 68] = mem[idx + _15394 + 32]
                                    idx = idx + 32
                                    continue 
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not w:
                            _12510 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_12510] = 26
                            mem[_12510 + 32] = 'SafeMath: division by zero'
                            _13355 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_13355] = 30
                            mem[_13355 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= w:
                                if w <= u:
                                    t = t + 1
                                    u = u
                                    continue 
                                t = t + 1
                                u = w
                                continue 
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                            idx = 32
                            while idx < 30:
                                mem[idx + mem[64] + 68] = mem[idx + _13355 + 32]
                                idx = idx + 32
                                continue 
                        else:
                            if 5 * w / w != 5:
                                revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            _12713 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_12713] = 26
                            mem[_12713 + 32] = 'SafeMath: division by zero'
                            _13642 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_13642] = 30
                            mem[_13642 + 32] = 'SafeMath: subtraction overflow'
                            if 5 * w / 1000 <= w:
                                if w - (5 * w / 1000) <= u:
                                    t = t + 1
                                    u = u
                                    continue 
                                t = t + 1
                                u = w - (5 * w / 1000)
                                continue 
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                            idx = 32
                            while idx < 30:
                                mem[idx + mem[64] + 68] = mem[idx + _13642 + 32]
                                idx = idx + 32
                                continue 
                    else:
                        idx = 0
                        v = ext_call.return_data[0]
                        while idx < 10000:
                            require 10^uint8(ext_call.return_data[0] - 6)
                            require 10^uint8(ext_call.return_data[0] - 6)
                            if ((ext_call.return_data[0] - v / 10^uint8(ext_call.return_data[0] - 6))^2 * ext_call.return_data[0] - v / 10^uint8(ext_call.return_data[0] - 6) * ext_call.return_data[0] + s / 10^uint8(ext_call.return_data[0] - 6)) + ((ext_call.return_data[0] + s / 10^uint8(ext_call.return_data[0] - 6))^2 * ext_call.return_data[0] - v / 10^uint8(ext_call.return_data[0] - 6) * ext_call.return_data[0] + s / 10^uint8(ext_call.return_data[0] - 6)) / 2 <= ((ext_call.return_data[0] / 10^uint8(ext_call.return_data[0] - 6))^2 * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0] - 6) * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0] - 6)) + ((ext_call.return_data[0] / 10^uint8(ext_call.return_data[0] - 6))^2 * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0] - 6) * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0] - 6)) / 2:
                                idx = idx + 1
                                v = 99900 * v / 100000
                                continue 
                            if not v:
                                _13194 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_13194] = 26
                                mem[_13194 + 32] = 'SafeMath: division by zero'
                                _14972 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_14972] = 30
                                mem[_14972 + 32] = 'SafeMath: subtraction overflow'
                                if 0 <= v:
                                    if v <= u:
                                        t = t + 1
                                        u = u
                                        continue 
                                    t = t + 1
                                    u = v
                                    continue 
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                                idx = 32
                                while idx < 30:
                                    mem[idx + mem[64] + 68] = mem[idx + _14972 + 32]
                                    idx = idx + 32
                                    continue 
                            else:
                                if 5 * v / v != 5:
                                    revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                _13484 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_13484] = 26
                                mem[_13484 + 32] = 'SafeMath: division by zero'
                                _15399 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_15399] = 30
                                mem[_15399 + 32] = 'SafeMath: subtraction overflow'
                                if 5 * v / 1000 <= v:
                                    if v - (5 * v / 1000) <= u:
                                        t = t + 1
                                        u = u
                                        continue 
                                    t = t + 1
                                    u = v - (5 * v / 1000)
                                    continue 
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                                idx = 32
                                while idx < 30:
                                    mem[idx + mem[64] + 68] = mem[idx + _15399 + 32]
                                    idx = idx + 32
                                    continue 
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not v:
                            _12511 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_12511] = 26
                            mem[_12511 + 32] = 'SafeMath: division by zero'
                            _13356 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_13356] = 30
                            mem[_13356 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= v:
                                if v <= u:
                                    t = t + 1
                                    u = u
                                    continue 
                                t = t + 1
                                u = v
                                continue 
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                            idx = 32
                            while idx < 30:
                                mem[idx + mem[64] + 68] = mem[idx + _13356 + 32]
                                idx = idx + 32
                                continue 
                        else:
                            if 5 * v / v != 5:
                                revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            _12714 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_12714] = 26
                            mem[_12714 + 32] = 'SafeMath: division by zero'
                            _13646 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_13646] = 30
                            mem[_13646 + 32] = 'SafeMath: subtraction overflow'
                            if 5 * v / 1000 <= v:
                                if v - (5 * v / 1000) <= u:
                                    t = t + 1
                                    u = u
                                    continue 
                                t = t + 1
                                u = v - (5 * v / 1000)
                                continue 
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                            idx = 32
                            while idx < 30:
                                mem[idx + mem[64] + 68] = mem[idx + _13646 + 32]
                                idx = idx + 32
                                continue 
                else:
                    if 3 * 10^uint8(ext_call.return_data[0]) * s / 3 * s != 10^uint8(ext_call.return_data[0]):
                        revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _9268 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_9268] = 26
                    mem[_9268 + 32] = 'SafeMath: division by zero'
                    if not 10^uint8(ext_call.return_data[0]):
                        _9386 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _9386 + 68] = mem[idx + _9268 + 32]
                            idx = idx + 32
                            continue 
                        mem[_9386 + 68] = mem[_9386 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _9386 + -mem[64] + 100
                    require 10^uint8(ext_call.return_data[0] - 6)
                    require 10^uint8(ext_call.return_data[0] - 6)
                    if 3 * 10^uint8(ext_call.return_data[0]) * s / 10^uint8(ext_call.return_data[0]) <= ext_call.return_data[0]:
                        idx = 0
                        v = 3 * 10^uint8(ext_call.return_data[0]) * s / 10^uint8(ext_call.return_data[0])
                        while idx < 10000:
                            require 10^uint8(ext_call.return_data[0] - 6)
                            require 10^uint8(ext_call.return_data[0] - 6)
                            if ((ext_call.return_data[0] - v / 10^uint8(ext_call.return_data[0] - 6))^2 * ext_call.return_data[0] - v / 10^uint8(ext_call.return_data[0] - 6) * ext_call.return_data[0] + s / 10^uint8(ext_call.return_data[0] - 6)) + ((ext_call.return_data[0] + s / 10^uint8(ext_call.return_data[0] - 6))^2 * ext_call.return_data[0] - v / 10^uint8(ext_call.return_data[0] - 6) * ext_call.return_data[0] + s / 10^uint8(ext_call.return_data[0] - 6)) / 2 <= ((ext_call.return_data[0] / 10^uint8(ext_call.return_data[0] - 6))^2 * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0] - 6) * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0] - 6)) + ((ext_call.return_data[0] / 10^uint8(ext_call.return_data[0] - 6))^2 * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0] - 6) * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0] - 6)) / 2:
                                idx = idx + 1
                                v = 99000 * v / 100000
                                continue 
                            if not v:
                                _13191 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_13191] = 26
                                mem[_13191 + 32] = 'SafeMath: division by zero'
                                _14960 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_14960] = 30
                                mem[_14960 + 32] = 'SafeMath: subtraction overflow'
                                if 0 <= v:
                                    if v <= u:
                                        t = t + 1
                                        u = u
                                        continue 
                                    t = t + 1
                                    u = v
                                    continue 
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                                idx = 32
                                while idx < 30:
                                    mem[idx + mem[64] + 68] = mem[idx + _14960 + 32]
                                    idx = idx + 32
                                    continue 
                            else:
                                if 5 * v / v != 5:
                                    revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                _13481 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_13481] = 26
                                mem[_13481 + 32] = 'SafeMath: division by zero'
                                _15384 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_15384] = 30
                                mem[_15384 + 32] = 'SafeMath: subtraction overflow'
                                if 5 * v / 1000 <= v:
                                    if v - (5 * v / 1000) <= u:
                                        t = t + 1
                                        u = u
                                        continue 
                                    t = t + 1
                                    u = v - (5 * v / 1000)
                                    continue 
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                                idx = 32
                                while idx < 30:
                                    mem[idx + mem[64] + 68] = mem[idx + _15384 + 32]
                                    idx = idx + 32
                                    continue 
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not v:
                            _12508 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_12508] = 26
                            mem[_12508 + 32] = 'SafeMath: division by zero'
                            _13353 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_13353] = 30
                            mem[_13353 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= v:
                                if v <= u:
                                    t = t + 1
                                    u = u
                                    continue 
                                t = t + 1
                                u = v
                                continue 
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                            idx = 32
                            while idx < 30:
                                mem[idx + mem[64] + 68] = mem[idx + _13353 + 32]
                                idx = idx + 32
                                continue 
                        else:
                            if 5 * v / v != 5:
                                revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            _12711 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_12711] = 26
                            mem[_12711 + 32] = 'SafeMath: division by zero'
                            _13634 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_13634] = 30
                            mem[_13634 + 32] = 'SafeMath: subtraction overflow'
                            if 5 * v / 1000 <= v:
                                if v - (5 * v / 1000) <= u:
                                    t = t + 1
                                    u = u
                                    continue 
                                t = t + 1
                                u = v - (5 * v / 1000)
                                continue 
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                            idx = 32
                            while idx < 30:
                                mem[idx + mem[64] + 68] = mem[idx + _13634 + 32]
                                idx = idx + 32
                                continue 
                    else:
                        idx = 0
                        v = ext_call.return_data[0]
                        while idx < 10000:
                            require 10^uint8(ext_call.return_data[0] - 6)
                            require 10^uint8(ext_call.return_data[0] - 6)
                            if ((ext_call.return_data[0] - v / 10^uint8(ext_call.return_data[0] - 6))^2 * ext_call.return_data[0] - v / 10^uint8(ext_call.return_data[0] - 6) * ext_call.return_data[0] + s / 10^uint8(ext_call.return_data[0] - 6)) + ((ext_call.return_data[0] + s / 10^uint8(ext_call.return_data[0] - 6))^2 * ext_call.return_data[0] - v / 10^uint8(ext_call.return_data[0] - 6) * ext_call.return_data[0] + s / 10^uint8(ext_call.return_data[0] - 6)) / 2 <= ((ext_call.return_data[0] / 10^uint8(ext_call.return_data[0] - 6))^2 * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0] - 6) * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0] - 6)) + ((ext_call.return_data[0] / 10^uint8(ext_call.return_data[0] - 6))^2 * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0] - 6) * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0] - 6)) / 2:
                                idx = idx + 1
                                v = 99900 * v / 100000
                                continue 
                            if not v:
                                _13192 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_13192] = 26
                                mem[_13192 + 32] = 'SafeMath: division by zero'
                                _14964 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_14964] = 30
                                mem[_14964 + 32] = 'SafeMath: subtraction overflow'
                                if 0 <= v:
                                    if v <= u:
                                        t = t + 1
                                        u = u
                                        continue 
                                    t = t + 1
                                    u = v
                                    continue 
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                                idx = 32
                                while idx < 30:
                                    mem[idx + mem[64] + 68] = mem[idx + _14964 + 32]
                                    idx = idx + 32
                                    continue 
                            else:
                                if 5 * v / v != 5:
                                    revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                _13482 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_13482] = 26
                                mem[_13482 + 32] = 'SafeMath: division by zero'
                                _15389 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_15389] = 30
                                mem[_15389 + 32] = 'SafeMath: subtraction overflow'
                                if 5 * v / 1000 <= v:
                                    if v - (5 * v / 1000) <= u:
                                        t = t + 1
                                        u = u
                                        continue 
                                    t = t + 1
                                    u = v - (5 * v / 1000)
                                    continue 
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                                idx = 32
                                while idx < 30:
                                    mem[idx + mem[64] + 68] = mem[idx + _15389 + 32]
                                    idx = idx + 32
                                    continue 
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not v:
                            _12509 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_12509] = 26
                            mem[_12509 + 32] = 'SafeMath: division by zero'
                            _13354 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_13354] = 30
                            mem[_13354 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= v:
                                if v <= u:
                                    t = t + 1
                                    u = u
                                    continue 
                                t = t + 1
                                u = v
                                continue 
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                            idx = 32
                            while idx < 30:
                                mem[idx + mem[64] + 68] = mem[idx + _13354 + 32]
                                idx = idx + 32
                                continue 
                        else:
                            if 5 * v / v != 5:
                                revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            _12712 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_12712] = 26
                            mem[_12712 + 32] = 'SafeMath: division by zero'
                            _13638 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_13638] = 30
                            mem[_13638 + 32] = 'SafeMath: subtraction overflow'
                            if 5 * v / 1000 <= v:
                                if v - (5 * v / 1000) <= u:
                                    t = t + 1
                                    u = u
                                    continue 
                                t = t + 1
                                u = v - (5 * v / 1000)
                                continue 
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                            idx = 32
                            while idx < 30:
                                mem[idx + mem[64] + 68] = mem[idx + _13638 + 32]
                                idx = idx + 32
                                continue 
                revert with 0, 'SafeMath: subtraction overflow'
            if 1 == t:
                _5579 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                require 0 < mem[_5579]
                mem[_5579 + 32] = 0xad84341756bf337f5a0164515b1f6f993d194e
                require 1 < mem[_5579]
                mem[_5579 + 64] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                mem[_5579 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_5579 + 100] = s
                mem[_5579 + 132] = 64
                mem[_5579 + 164] = mem[_5579]
                idx = 0
                while idx < 32 * mem[_5579]:
                    mem[idx + _5579 + 196] = mem[idx + _5579 + 32]
                    idx = idx + 32
                    continue 
                require ext_code.size(0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52)
                staticcall 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args s, 64, mem[_5579 + 164 len (32 * mem[_5579]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_5579 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _5579 + ceil32(return_data.size) + 96
                require return_data.size >= 32
                _12255 = mem[_5579 + 96 len 4], Mask(224, 32, s) >> 32
                require mem[_5579 + 96 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                require mem[_5579 + 96 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                require mem[_5579 + mem[_5579 + 96 len 4], Mask(224, 32, s) >> 32 + 96] <= 4294967296 and mem[_5579 + 96 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_5579 + mem[_5579 + 96 len 4], Mask(224, 32, s) >> 32 + 96]) + 32 <= return_data.size
                mem[_5579 + ceil32(return_data.size) + 96] = mem[_5579 + mem[_5579 + 96 len 4], Mask(224, 32, s) >> 32 + 96]
                _12635 = mem[_5579 + _12255 + 96]
                idx = 0
                while idx < 32 * _12635:
                    mem[idx + _5579 + ceil32(return_data.size) + 128] = mem[idx + _5579 + _12255 + 128]
                    idx = idx + 32
                    continue 
                mem[64] = (32 * _12635) + _5579 + ceil32(return_data.size) + 128
                require mem[_5579 + ceil32(return_data.size) + 96] - 1 < mem[_5579 + ceil32(return_data.size) + 96]
                if mem[(32 * mem[_5579 + ceil32(return_data.size) + 96] - 1) + _5579 + ceil32(return_data.size) + 128] <= u:
                    t = t + 1
                    u = u
                    continue 
                t = t + 1
                u = mem[(32 * mem[_5579 + ceil32(return_data.size) + 96] - 1) + _5579 + ceil32(return_data.size) + 128]
                continue 
            if 2 == t:
                _5635 = mem[0]
                _5725 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                require 0 < mem[_5725]
                mem[_5725 + 32] = 0xad84341756bf337f5a0164515b1f6f993d194e
                require 1 < mem[_5725]
                mem[_5725 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c
                mem[_5725 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_5725 + 100] = s
                mem[_5725 + 132] = 64
                mem[_5725 + 164] = mem[_5725]
                idx = 0
                while idx < 32 * mem[_5725]:
                    mem[idx + _5725 + 196] = mem[idx + _5725 + 32]
                    idx = idx + 32
                    continue 
                require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c29.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args s, 64, mem[_5725 + 164 len (32 * mem[_5725]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_5725 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _5725 + ceil32(return_data.size) + 96
                require return_data.size >= 32
                _12251 = mem[_5725 + 96 len 4], Mask(224, 32, s) >> 32
                require mem[_5725 + 96 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                require mem[_5725 + 96 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                require mem[_5725 + mem[_5725 + 96 len 4], Mask(224, 32, s) >> 32 + 96] <= 4294967296 and mem[_5725 + 96 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_5725 + mem[_5725 + 96 len 4], Mask(224, 32, s) >> 32 + 96]) + 32 <= return_data.size
                mem[_5725 + ceil32(return_data.size) + 96] = mem[_5725 + mem[_5725 + 96 len 4], Mask(224, 32, s) >> 32 + 96]
                _12633 = mem[_5725 + _12251 + 96]
                idx = 0
                while idx < 32 * _12633:
                    mem[idx + _5725 + ceil32(return_data.size) + 128] = mem[idx + _5725 + _12251 + 128]
                    idx = idx + 32
                    continue 
                mem[64] = (32 * _12633) + _5725 + ceil32(return_data.size) + 128
                require mem[_5725 + ceil32(return_data.size) + 96] - 1 < mem[_5725 + ceil32(return_data.size) + 96]
                _17493 = mem[(32 * mem[_5725 + ceil32(return_data.size) + 96] - 1) + _5725 + ceil32(return_data.size) + 128]
                mem[(32 * _12633) + _5725 + ceil32(return_data.size) + 128] = 2
                mem[0] = _5635
                mem[(32 * _12633) + _5725 + ceil32(return_data.size) + 160] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c
                mem[(32 * _12633) + _5725 + ceil32(return_data.size) + 192] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                mem[(32 * _12633) + _5725 + ceil32(return_data.size) + 224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[(32 * _12633) + _5725 + ceil32(return_data.size) + 228] = _17493
                mem[(32 * _12633) + _5725 + ceil32(return_data.size) + 260] = 64
                mem[(32 * _12633) + _5725 + ceil32(return_data.size) + 292] = 2
                idx = 0
                while idx < 64:
                    mem[idx + (32 * _12633) + _5725 + ceil32(return_data.size) + 324] = mem[idx + (32 * _12633) + _5725 + ceil32(return_data.size) + 160]
                    idx = idx + 32
                    continue 
                require ext_code.size(0x67a937ea41cd05ec8c832a044afc0100f30aa4b5)
                staticcall 0x67a937ea41cd05ec8c832a044afc0100f30aa4b5.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args _17493, Array(len=2, data=mem[(32 * _12633) + _5725 + ceil32(return_data.size) + 324 len 64])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * _12633) + _5725 + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * _12633) + _5725 + (2 * ceil32(return_data.size)) + 224
                require return_data.size >= 32
                _19239 = mem[(32 * _12633) + _5725 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _17493) >> 32
                require mem[(32 * _12633) + _5725 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _17493) >> 32 <= 4294967296
                require mem[(32 * _12633) + _5725 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _17493) >> 32 + 32 <= return_data.size
                require mem[(32 * _12633) + _5725 + ceil32(return_data.size) + mem[(32 * _12633) + _5725 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _17493) >> 32 + 224] <= 4294967296 and mem[(32 * _12633) + _5725 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _17493) >> 32 + (32 * mem[(32 * _12633) + _5725 + ceil32(return_data.size) + mem[(32 * _12633) + _5725 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _17493) >> 32 + 224]) + 32 <= return_data.size
                mem[(32 * _12633) + _5725 + (2 * ceil32(return_data.size)) + 224] = mem[(32 * _12633) + _5725 + ceil32(return_data.size) + mem[(32 * _12633) + _5725 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _17493) >> 32 + 224]
                _19333 = mem[(32 * _12633) + _5725 + ceil32(return_data.size) + _19239 + 224]
                idx = 0
                while idx < 32 * _19333:
                    mem[idx + (32 * _12633) + _5725 + (2 * ceil32(return_data.size)) + 256] = mem[idx + (32 * _12633) + _5725 + ceil32(return_data.size) + _19239 + 256]
                    idx = idx + 32
                    continue 
                mem[64] = (32 * _19333) + (32 * _12633) + _5725 + (2 * ceil32(return_data.size)) + 256
                require mem[(32 * _12633) + _5725 + (2 * ceil32(return_data.size)) + 224] - 1 < mem[(32 * _12633) + _5725 + (2 * ceil32(return_data.size)) + 224]
                if mem[(32 * mem[(32 * _12633) + _5725 + (2 * ceil32(return_data.size)) + 224] - 1) + (32 * _12633) + _5725 + (2 * ceil32(return_data.size)) + 256] <= u:
                    t = t + 1
                    u = u
                    continue 
                t = t + 1
                u = mem[(32 * mem[(32 * _12633) + _5725 + (2 * ceil32(return_data.size)) + 224] - 1) + (32 * _12633) + _5725 + (2 * ceil32(return_data.size)) + 256]
                continue 
            if t != 3:
                if s <= u:
                    t = t + 1
                    u = u
                    continue 
                t = t + 1
                u = s
                continue 
            _5723 = mem[0]
            _5841 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            require 0 < mem[_5841]
            mem[_5841 + 32] = 0xad84341756bf337f5a0164515b1f6f993d194e
            require 1 < mem[_5841]
            mem[_5841 + 64] = 0x5848b832e872d9edd84ac5718d58f21fd9c96
            mem[_5841 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[_5841 + 100] = s
            mem[_5841 + 132] = 64
            mem[_5841 + 164] = mem[_5841]
            idx = 0
            while idx < 32 * mem[_5841]:
                mem[idx + _5841 + 196] = mem[idx + _5841 + 32]
                idx = idx + 32
                continue 
            require ext_code.size(0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52)
            staticcall 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52.getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args s, 64, mem[_5841 + 164 len (32 * mem[_5841]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[_5841 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = _5841 + ceil32(return_data.size) + 96
            require return_data.size >= 32
            _12247 = mem[_5841 + 96 len 4], Mask(224, 32, s) >> 32
            require mem[_5841 + 96 len 4], Mask(224, 32, s) >> 32 <= 4294967296
            require mem[_5841 + 96 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
            require mem[_5841 + mem[_5841 + 96 len 4], Mask(224, 32, s) >> 32 + 96] <= 4294967296 and mem[_5841 + 96 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_5841 + mem[_5841 + 96 len 4], Mask(224, 32, s) >> 32 + 96]) + 32 <= return_data.size
            mem[_5841 + ceil32(return_data.size) + 96] = mem[_5841 + mem[_5841 + 96 len 4], Mask(224, 32, s) >> 32 + 96]
            _12631 = mem[_5841 + _12247 + 96]
            idx = 0
            while idx < 32 * _12631:
                mem[idx + _5841 + ceil32(return_data.size) + 128] = mem[idx + _5841 + _12247 + 128]
                idx = idx + 32
                continue 
            mem[64] = (32 * _12631) + _5841 + ceil32(return_data.size) + 128
            require mem[_5841 + ceil32(return_data.size) + 96] - 1 < mem[_5841 + ceil32(return_data.size) + 96]
            _17491 = mem[(32 * mem[_5841 + ceil32(return_data.size) + 96] - 1) + _5841 + ceil32(return_data.size) + 128]
            mem[(32 * _12631) + _5841 + ceil32(return_data.size) + 128] = 3
            mem[(32 * _12631) + _5841 + ceil32(return_data.size) + 160] = 0x5848b832e872d9edd84ac5718d58f21fd9c96
            mem[0] = _5723
            mem[(32 * _12631) + _5841 + ceil32(return_data.size) + 192] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c
            mem[(32 * _12631) + _5841 + ceil32(return_data.size) + 224] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
            mem[(32 * _12631) + _5841 + ceil32(return_data.size) + 256] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[(32 * _12631) + _5841 + ceil32(return_data.size) + 260] = _17491
            mem[(32 * _12631) + _5841 + ceil32(return_data.size) + 292] = 64
            mem[(32 * _12631) + _5841 + ceil32(return_data.size) + 324] = 3
            idx = 0
            while idx < 96:
                mem[idx + (32 * _12631) + _5841 + ceil32(return_data.size) + 356] = mem[idx + (32 * _12631) + _5841 + ceil32(return_data.size) + 160]
                idx = idx + 32
                continue 
            require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
            staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c29.getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args _17491, Array(len=3, data=mem[(32 * _12631) + _5841 + ceil32(return_data.size) + 356 len 96])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _12631) + _5841 + ceil32(return_data.size) + 256 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * _12631) + _5841 + (2 * ceil32(return_data.size)) + 256
            require return_data.size >= 32
            _19235 = mem[(32 * _12631) + _5841 + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _17491) >> 32
            require mem[(32 * _12631) + _5841 + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _17491) >> 32 <= 4294967296
            require mem[(32 * _12631) + _5841 + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _17491) >> 32 + 32 <= return_data.size
            require mem[(32 * _12631) + _5841 + ceil32(return_data.size) + mem[(32 * _12631) + _5841 + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _17491) >> 32 + 256] <= 4294967296 and mem[(32 * _12631) + _5841 + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _17491) >> 32 + (32 * mem[(32 * _12631) + _5841 + ceil32(return_data.size) + mem[(32 * _12631) + _5841 + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _17491) >> 32 + 256]) + 32 <= return_data.size
            mem[(32 * _12631) + _5841 + (2 * ceil32(return_data.size)) + 256] = mem[(32 * _12631) + _5841 + ceil32(return_data.size) + mem[(32 * _12631) + _5841 + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _17491) >> 32 + 256]
            _19331 = mem[(32 * _12631) + _5841 + ceil32(return_data.size) + _19235 + 256]
            idx = 0
            while idx < 32 * _19331:
                mem[idx + (32 * _12631) + _5841 + (2 * ceil32(return_data.size)) + 288] = mem[idx + (32 * _12631) + _5841 + ceil32(return_data.size) + _19235 + 288]
                idx = idx + 32
                continue 
            mem[64] = (32 * _19331) + (32 * _12631) + _5841 + (2 * ceil32(return_data.size)) + 288
            require mem[(32 * _12631) + _5841 + (2 * ceil32(return_data.size)) + 256] - 1 < mem[(32 * _12631) + _5841 + (2 * ceil32(return_data.size)) + 256]
            if mem[(32 * mem[(32 * _12631) + _5841 + (2 * ceil32(return_data.size)) + 256] - 1) + (32 * _12631) + _5841 + (2 * ceil32(return_data.size)) + 288] <= u:
                t = t + 1
                u = u
                continue 
            t = t + 1
            u = mem[(32 * mem[(32 * _12631) + _5841 + (2 * ceil32(return_data.size)) + 256] - 1) + (32 * _12631) + _5841 + (2 * ceil32(return_data.size)) + 288]
            continue 
    if maxBatch:
        if 10^6 * maxBatch / maxBatch != 10^6:
            revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
    return 0, block.number, 0, 0, 0
}



}
