contract main {




// =====================  Runtime code  =====================


#
#  - sub_0cbc9035(?)
#  - sub_57c20218(?)
#  - sub_f3a78104(?)
#
address governanceAddress;
mapping of uint8 stor1;
uint256 maxBatch;
uint256 sub_7d0b6809;
uint256 sub_1a45acc7;
uint8 stor8; offset 160
address stor8;

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

function sub_517db6c8(?) payable {
    if address(stor8.field_0) != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    uint8(stor8.field_160) = 1
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
    require ext_code.size(0xfe00000000000000000000000004068da6c83afcfa0e13ba15a6696662335d5b)
    staticcall 0xfe00000000000000000000000004068da6c83afcfa0e13ba15a6696662335d5b.0x313ce567 with:
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
        require ext_code.size(0xfe00000000000000000000000004068da6c83afcfa0e13ba15a6696662335d5b)
        staticcall 0xfe00000000000000000000000004068da6c83afcfa0e13ba15a6696662335d5b.0x313ce567 with:
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
                        revert with 0, 32, 33, 0x75536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
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
                        revert with 0, 32, 33, 0x75536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
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
                        0x75536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
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
                        revert with 0, 32, 33, 0x75536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
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
                        revert with 0, 32, 33, 0x75536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
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
            revert with 0, 32, 33, 0x75536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if arg3:
            if 5 * s / 1000 > s:
                revert with 0, 'SafeMath: subtraction overflow'
            return (s - (5 * s / 1000))
    if 0 > s:
        revert with 0, 'SafeMath: subtraction overflow'
    return s
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
                require ext_code.size(0xfe00000000000000000000000004068da6c83afcfa0e13ba15a6696662335d5b)
                staticcall 0xfe00000000000000000000000004068da6c83afcfa0e13ba15a6696662335d5b.0x313ce567 with:
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
                _2346 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2346] = 26
                mem[_2346 + 32] = 'SafeMath: division by zero'
                if not 10^uint8(ext_call.return_data[0]):
                    _2403 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _2403 + 68] = mem[idx + _2346 + 32]
                        idx = idx + 32
                        continue 
                    mem[_2403 + 68] = mem[_2403 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _2403 + -mem[64] + 100
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
                            _6447 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_6447] = 26
                            mem[_6447 + 32] = 'SafeMath: division by zero'
                            _7626 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_7626] = 30
                            mem[_7626 + 32] = 'SafeMath: subtraction overflow'
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
                                mem[idx + mem[64] + 68] = mem[idx + _7626 + 32]
                                idx = idx + 32
                                continue 
                        else:
                            if 5 * u / u != 5:
                                revert with 0, 32, 33, 0x75536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            _6699 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_6699] = 26
                            mem[_6699 + 32] = 'SafeMath: division by zero'
                            _7930 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_7930] = 30
                            mem[_7930 + 32] = 'SafeMath: subtraction overflow'
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
                                mem[idx + mem[64] + 68] = mem[idx + _7930 + 32]
                                idx = idx + 32
                                continue 
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not u:
                        _5640 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5640] = 26
                        mem[_5640 + 32] = 'SafeMath: division by zero'
                        _6575 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_6575] = 30
                        mem[_6575 + 32] = 'SafeMath: subtraction overflow'
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
                            mem[idx + mem[64] + 68] = mem[idx + _6575 + 32]
                            idx = idx + 32
                            continue 
                    else:
                        if 5 * u / u != 5:
                            revert with 0, 32, 33, 0x75536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _5869 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5869] = 26
                        mem[_5869 + 32] = 'SafeMath: division by zero'
                        _6855 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_6855] = 30
                        mem[_6855 + 32] = 'SafeMath: subtraction overflow'
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
                            mem[idx + mem[64] + 68] = mem[idx + _6855 + 32]
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
                            _6448 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_6448] = 26
                            mem[_6448 + 32] = 'SafeMath: division by zero'
                            _7630 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_7630] = 30
                            mem[_7630 + 32] = 'SafeMath: subtraction overflow'
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
                                mem[idx + mem[64] + 68] = mem[idx + _7630 + 32]
                                idx = idx + 32
                                continue 
                        else:
                            if 5 * u / u != 5:
                                revert with 0, 32, 33, 0x75536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            _6700 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_6700] = 26
                            mem[_6700 + 32] = 'SafeMath: division by zero'
                            _7935 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_7935] = 30
                            mem[_7935 + 32] = 'SafeMath: subtraction overflow'
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
                                mem[idx + mem[64] + 68] = mem[idx + _7935 + 32]
                                idx = idx + 32
                                continue 
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not u:
                        _5641 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5641] = 26
                        mem[_5641 + 32] = 'SafeMath: division by zero'
                        _6576 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_6576] = 30
                        mem[_6576 + 32] = 'SafeMath: subtraction overflow'
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
                            mem[idx + mem[64] + 68] = mem[idx + _6576 + 32]
                            idx = idx + 32
                            continue 
                    else:
                        if 5 * u / u != 5:
                            revert with 0, 32, 33, 0x75536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _5870 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5870] = 26
                        mem[_5870 + 32] = 'SafeMath: division by zero'
                        _6859 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_6859] = 30
                        mem[_6859 + 32] = 'SafeMath: subtraction overflow'
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
                            mem[idx + mem[64] + 68] = mem[idx + _6859 + 32]
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
                require ext_code.size(0x6b3d631b87fe27af29efec61d2ab8ce4d621ccbf)
                staticcall 0x6b3d631b87fe27af29efec61d2ab8ce4d621ccbf.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args 0, 64, mem[_1099 + 164 len (32 * mem[_1099]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_1099 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _1099 + ceil32(return_data.size) + 96
                require return_data.size >= 32
                _5451 = mem[_1099 + 96 len 4], 0
                require mem[_1099 + 96 len 4], 0 <= 4294967296
                require mem[_1099 + 96 len 4], 0 + 32 <= return_data.size
                require mem[_1099 + mem[_1099 + 96 len 4], 0 + 96] <= 4294967296 and mem[_1099 + 96 len 4], 0 + (32 * mem[_1099 + mem[_1099 + 96 len 4], 0 + 96]) + 32 <= return_data.size
                mem[_1099 + ceil32(return_data.size) + 96] = mem[_1099 + mem[_1099 + 96 len 4], 0 + 96]
                _5739 = mem[_1099 + _5451 + 96]
                t = 0
                while t < 32 * _5739:
                    mem[t + _1099 + ceil32(return_data.size) + 128] = mem[t + _1099 + _5451 + 128]
                    t = t + 32
                    continue 
                mem[64] = (32 * _5739) + _1099 + ceil32(return_data.size) + 128
                require mem[_1099 + ceil32(return_data.size) + 96] - 1 < mem[_1099 + ceil32(return_data.size) + 96]
                if mem[(32 * mem[_1099 + ceil32(return_data.size) + 96] - 1) + _1099 + ceil32(return_data.size) + 128] <= s:
                    idx = idx + 1
                    s = s
                    continue 
                idx = idx + 1
                s = mem[(32 * mem[_1099 + ceil32(return_data.size) + 96] - 1) + _1099 + ceil32(return_data.size) + 128]
                continue 
            if 2 == idx:
                _1117 = mem[64]
                mem[mem[64]] = 4
                mem[64] = mem[64] + 160
                require 0 < mem[_1117]
                mem[_1117 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                require 1 < mem[_1117]
                mem[_1117 + 64] = 0xe2fb177009ff39f52c0134e8007fa0e4baacbd07
                require 2 < mem[_1117]
                mem[_1117 + 96] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c
                require 3 < mem[_1117]
                mem[_1117 + 128] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                mem[_1117 + 160] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_1117 + 164] = 0
                mem[_1117 + 196] = 64
                mem[_1117 + 228] = mem[_1117]
                t = 0
                while t < 32 * mem[_1117]:
                    mem[t + _1117 + 260] = mem[t + _1117 + 32]
                    t = t + 32
                    continue 
                require ext_code.size(0x6b3d631b87fe27af29efec61d2ab8ce4d621ccbf)
                staticcall 0x6b3d631b87fe27af29efec61d2ab8ce4d621ccbf.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args 0, 64, mem[_1117 + 228 len (32 * mem[_1117]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_1117 + 160 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _1117 + ceil32(return_data.size) + 160
                require return_data.size >= 32
                _5447 = mem[_1117 + 160 len 4], 0
                require mem[_1117 + 160 len 4], 0 <= 4294967296
                require mem[_1117 + 160 len 4], 0 + 32 <= return_data.size
                require mem[_1117 + mem[_1117 + 160 len 4], 0 + 160] <= 4294967296 and mem[_1117 + 160 len 4], 0 + (32 * mem[_1117 + mem[_1117 + 160 len 4], 0 + 160]) + 32 <= return_data.size
                mem[_1117 + ceil32(return_data.size) + 160] = mem[_1117 + mem[_1117 + 160 len 4], 0 + 160]
                _5737 = mem[_1117 + _5447 + 160]
                t = 0
                while t < 32 * _5737:
                    mem[t + _1117 + ceil32(return_data.size) + 192] = mem[t + _1117 + _5447 + 192]
                    t = t + 32
                    continue 
                mem[64] = (32 * _5737) + _1117 + ceil32(return_data.size) + 192
                require mem[_1117 + ceil32(return_data.size) + 160] - 1 < mem[_1117 + ceil32(return_data.size) + 160]
                if mem[(32 * mem[_1117 + ceil32(return_data.size) + 160] - 1) + _1117 + ceil32(return_data.size) + 192] <= s:
                    idx = idx + 1
                    s = s
                    continue 
                idx = idx + 1
                s = mem[(32 * mem[_1117 + ceil32(return_data.size) + 160] - 1) + _1117 + ceil32(return_data.size) + 192]
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
            _1177 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            require 0 < mem[_1177]
            mem[_1177 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
            require 1 < mem[_1177]
            mem[_1177 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c
            mem[_1177 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[_1177 + 100] = 0
            mem[_1177 + 132] = 64
            mem[_1177 + 164] = mem[_1177]
            t = 0
            while t < 32 * mem[_1177]:
                mem[t + _1177 + 196] = mem[t + _1177 + 32]
                t = t + 32
                continue 
            require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
            staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c29.getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args 0, 64, mem[_1177 + 164 len (32 * mem[_1177]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[_1177 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = _1177 + ceil32(return_data.size) + 96
            require return_data.size >= 32
            _5443 = mem[_1177 + 96 len 4], 0
            require mem[_1177 + 96 len 4], 0 <= 4294967296
            require mem[_1177 + 96 len 4], 0 + 32 <= return_data.size
            require mem[_1177 + mem[_1177 + 96 len 4], 0 + 96] <= 4294967296 and mem[_1177 + 96 len 4], 0 + (32 * mem[_1177 + mem[_1177 + 96 len 4], 0 + 96]) + 32 <= return_data.size
            mem[_1177 + ceil32(return_data.size) + 96] = mem[_1177 + mem[_1177 + 96 len 4], 0 + 96]
            _5735 = mem[_1177 + _5443 + 96]
            t = 0
            while t < 32 * _5735:
                mem[t + _1177 + ceil32(return_data.size) + 128] = mem[t + _1177 + _5443 + 128]
                t = t + 32
                continue 
            mem[64] = (32 * _5735) + _1177 + ceil32(return_data.size) + 128
            require mem[_1177 + ceil32(return_data.size) + 96] - 1 < mem[_1177 + ceil32(return_data.size) + 96]
            _11305 = mem[(32 * mem[_1177 + ceil32(return_data.size) + 96] - 1) + _1177 + ceil32(return_data.size) + 128]
            mem[(32 * _5735) + _1177 + ceil32(return_data.size) + 128] = 2
            mem[0] = _1145
            mem[(32 * _5735) + _1177 + ceil32(return_data.size) + 160] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c
            mem[(32 * _5735) + _1177 + ceil32(return_data.size) + 192] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
            mem[(32 * _5735) + _1177 + ceil32(return_data.size) + 224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[(32 * _5735) + _1177 + ceil32(return_data.size) + 228] = _11305
            mem[(32 * _5735) + _1177 + ceil32(return_data.size) + 260] = 64
            mem[(32 * _5735) + _1177 + ceil32(return_data.size) + 292] = 2
            t = 0
            while t < 64:
                mem[t + (32 * _5735) + _1177 + ceil32(return_data.size) + 324] = mem[t + (32 * _5735) + _1177 + ceil32(return_data.size) + 160]
                t = t + 32
                continue 
            require ext_code.size(0x67a937ea41cd05ec8c832a044afc0100f30aa4b5)
            staticcall 0x67a937ea41cd05ec8c832a044afc0100f30aa4b5.getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args _11305, Array(len=2, data=mem[(32 * _5735) + _1177 + ceil32(return_data.size) + 324 len 64])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _5735) + _1177 + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * _5735) + _1177 + (2 * ceil32(return_data.size)) + 224
            require return_data.size >= 32
            _17155 = mem[(32 * _5735) + _1177 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _11305) >> 32
            require mem[(32 * _5735) + _1177 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _11305) >> 32 <= 4294967296
            require mem[(32 * _5735) + _1177 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _11305) >> 32 + 32 <= return_data.size
            require mem[(32 * _5735) + _1177 + ceil32(return_data.size) + mem[(32 * _5735) + _1177 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _11305) >> 32 + 224] <= 4294967296 and mem[(32 * _5735) + _1177 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _11305) >> 32 + (32 * mem[(32 * _5735) + _1177 + ceil32(return_data.size) + mem[(32 * _5735) + _1177 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _11305) >> 32 + 224]) + 32 <= return_data.size
            mem[(32 * _5735) + _1177 + (2 * ceil32(return_data.size)) + 224] = mem[(32 * _5735) + _1177 + ceil32(return_data.size) + mem[(32 * _5735) + _1177 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _11305) >> 32 + 224]
            _17275 = mem[(32 * _5735) + _1177 + ceil32(return_data.size) + _17155 + 224]
            t = 0
            while t < 32 * _17275:
                mem[t + (32 * _5735) + _1177 + (2 * ceil32(return_data.size)) + 256] = mem[t + (32 * _5735) + _1177 + ceil32(return_data.size) + _17155 + 256]
                t = t + 32
                continue 
            mem[64] = (32 * _17275) + (32 * _5735) + _1177 + (2 * ceil32(return_data.size)) + 256
            require mem[(32 * _5735) + _1177 + (2 * ceil32(return_data.size)) + 224] - 1 < mem[(32 * _5735) + _1177 + (2 * ceil32(return_data.size)) + 224]
            if mem[(32 * mem[(32 * _5735) + _1177 + (2 * ceil32(return_data.size)) + 224] - 1) + (32 * _5735) + _1177 + (2 * ceil32(return_data.size)) + 256] <= s:
                idx = idx + 1
                s = s
                continue 
            idx = idx + 1
            s = mem[(32 * mem[(32 * _5735) + _1177 + (2 * ceil32(return_data.size)) + 224] - 1) + (32 * _5735) + _1177 + (2 * ceil32(return_data.size)) + 256]
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
                require ext_code.size(0xfe00000000000000000000000004068da6c83afcfa0e13ba15a6696662335d5b)
                staticcall 0xfe00000000000000000000000004068da6c83afcfa0e13ba15a6696662335d5b.0x313ce567 with:
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
                    _8620 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_8620] = 26
                    mem[_8620 + 32] = 'SafeMath: division by zero'
                    if not 10^uint8(ext_call.return_data[0]):
                        _8734 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _8734 + 68] = mem[idx + _8620 + 32]
                            idx = idx + 32
                            continue 
                        mem[_8734 + 68] = mem[_8734 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _8734 + -mem[64] + 100
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
                                _12451 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_12451] = 26
                                mem[_12451 + 32] = 'SafeMath: division by zero'
                                _14046 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_14046] = 30
                                mem[_14046 + 32] = 'SafeMath: subtraction overflow'
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
                                    mem[s + mem[64] + 68] = mem[s + _14046 + 32]
                                    s = s + 32
                                    continue 
                            else:
                                if 5 * w / w != 5:
                                    revert with 0, 32, 33, 0x75536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                _12655 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_12655] = 26
                                mem[_12655 + 32] = 'SafeMath: division by zero'
                                _14488 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_14488] = 30
                                mem[_14488 + 32] = 'SafeMath: subtraction overflow'
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
                                    mem[idx + mem[64] + 68] = mem[idx + _14488 + 32]
                                    idx = idx + 32
                                    continue 
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not w:
                            _11866 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_11866] = 26
                            mem[_11866 + 32] = 'SafeMath: division by zero'
                            _12547 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_12547] = 30
                            mem[_12547 + 32] = 'SafeMath: subtraction overflow'
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
                                mem[idx + mem[64] + 68] = mem[idx + _12547 + 32]
                                idx = idx + 32
                                continue 
                        else:
                            if 5 * w / w != 5:
                                revert with 0, 32, 33, 0x75536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            _12013 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_12013] = 26
                            mem[_12013 + 32] = 'SafeMath: division by zero'
                            _12843 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_12843] = 30
                            mem[_12843 + 32] = 'SafeMath: subtraction overflow'
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
                                mem[idx + mem[64] + 68] = mem[idx + _12843 + 32]
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
                                _12452 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_12452] = 26
                                mem[_12452 + 32] = 'SafeMath: division by zero'
                                _14050 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_14050] = 30
                                mem[_14050 + 32] = 'SafeMath: subtraction overflow'
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
                                    mem[idx + mem[64] + 68] = mem[idx + _14050 + 32]
                                    idx = idx + 32
                                    continue 
                            else:
                                if 5 * v / v != 5:
                                    revert with 0, 32, 33, 0x75536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                _12656 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_12656] = 26
                                mem[_12656 + 32] = 'SafeMath: division by zero'
                                _14493 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_14493] = 30
                                mem[_14493 + 32] = 'SafeMath: subtraction overflow'
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
                                    mem[idx + mem[64] + 68] = mem[idx + _14493 + 32]
                                    idx = idx + 32
                                    continue 
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not v:
                            _11867 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_11867] = 26
                            mem[_11867 + 32] = 'SafeMath: division by zero'
                            _12548 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_12548] = 30
                            mem[_12548 + 32] = 'SafeMath: subtraction overflow'
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
                                mem[idx + mem[64] + 68] = mem[idx + _12548 + 32]
                                idx = idx + 32
                                continue 
                        else:
                            if 5 * v / v != 5:
                                revert with 0, 32, 33, 0x75536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            _12014 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_12014] = 26
                            mem[_12014 + 32] = 'SafeMath: division by zero'
                            _12847 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_12847] = 30
                            mem[_12847 + 32] = 'SafeMath: subtraction overflow'
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
                                mem[idx + mem[64] + 68] = mem[idx + _12847 + 32]
                                idx = idx + 32
                                continue 
                else:
                    if 3 * 10^uint8(ext_call.return_data[0]) * s / 3 * s != 10^uint8(ext_call.return_data[0]):
                        revert with 0, 32, 33, 0x75536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _8733 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_8733] = 26
                    mem[_8733 + 32] = 'SafeMath: division by zero'
                    if not 10^uint8(ext_call.return_data[0]):
                        _8821 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _8821 + 68] = mem[idx + _8733 + 32]
                            idx = idx + 32
                            continue 
                        mem[_8821 + 68] = mem[_8821 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _8821 + -mem[64] + 100
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
                                _12449 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_12449] = 26
                                mem[_12449 + 32] = 'SafeMath: division by zero'
                                _14038 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_14038] = 30
                                mem[_14038 + 32] = 'SafeMath: subtraction overflow'
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
                                    mem[idx + mem[64] + 68] = mem[idx + _14038 + 32]
                                    idx = idx + 32
                                    continue 
                            else:
                                if 5 * v / v != 5:
                                    revert with 0, 32, 33, 0x75536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                _12653 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_12653] = 26
                                mem[_12653 + 32] = 'SafeMath: division by zero'
                                _14478 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_14478] = 30
                                mem[_14478 + 32] = 'SafeMath: subtraction overflow'
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
                                    mem[idx + mem[64] + 68] = mem[idx + _14478 + 32]
                                    idx = idx + 32
                                    continue 
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not v:
                            _11864 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_11864] = 26
                            mem[_11864 + 32] = 'SafeMath: division by zero'
                            _12545 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_12545] = 30
                            mem[_12545 + 32] = 'SafeMath: subtraction overflow'
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
                                mem[idx + mem[64] + 68] = mem[idx + _12545 + 32]
                                idx = idx + 32
                                continue 
                        else:
                            if 5 * v / v != 5:
                                revert with 0, 32, 33, 0x75536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            _12011 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_12011] = 26
                            mem[_12011 + 32] = 'SafeMath: division by zero'
                            _12835 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_12835] = 30
                            mem[_12835 + 32] = 'SafeMath: subtraction overflow'
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
                                mem[idx + mem[64] + 68] = mem[idx + _12835 + 32]
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
                                _12450 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_12450] = 26
                                mem[_12450 + 32] = 'SafeMath: division by zero'
                                _14042 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_14042] = 30
                                mem[_14042 + 32] = 'SafeMath: subtraction overflow'
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
                                    mem[idx + mem[64] + 68] = mem[idx + _14042 + 32]
                                    idx = idx + 32
                                    continue 
                            else:
                                if 5 * v / v != 5:
                                    revert with 0, 32, 33, 0x75536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                _12654 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_12654] = 26
                                mem[_12654 + 32] = 'SafeMath: division by zero'
                                _14483 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_14483] = 30
                                mem[_14483 + 32] = 'SafeMath: subtraction overflow'
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
                                    mem[idx + mem[64] + 68] = mem[idx + _14483 + 32]
                                    idx = idx + 32
                                    continue 
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not v:
                            _11865 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_11865] = 26
                            mem[_11865 + 32] = 'SafeMath: division by zero'
                            _12546 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_12546] = 30
                            mem[_12546 + 32] = 'SafeMath: subtraction overflow'
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
                                mem[idx + mem[64] + 68] = mem[idx + _12546 + 32]
                                idx = idx + 32
                                continue 
                        else:
                            if 5 * v / v != 5:
                                revert with 0, 32, 33, 0x75536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            _12012 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_12012] = 26
                            mem[_12012 + 32] = 'SafeMath: division by zero'
                            _12839 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_12839] = 30
                            mem[_12839 + 32] = 'SafeMath: subtraction overflow'
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
                                mem[idx + mem[64] + 68] = mem[idx + _12839 + 32]
                                idx = idx + 32
                                continue 
                revert with 0, 'SafeMath: subtraction overflow'
            if 1 == t:
                _5439 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                require 0 < mem[_5439]
                mem[_5439 + 32] = 0xad84341756bf337f5a0164515b1f6f993d194e
                require 1 < mem[_5439]
                mem[_5439 + 64] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                mem[_5439 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_5439 + 100] = s
                mem[_5439 + 132] = 64
                mem[_5439 + 164] = mem[_5439]
                idx = 0
                while idx < 32 * mem[_5439]:
                    mem[idx + _5439 + 196] = mem[idx + _5439 + 32]
                    idx = idx + 32
                    continue 
                require ext_code.size(0x6b3d631b87fe27af29efec61d2ab8ce4d621ccbf)
                staticcall 0x6b3d631b87fe27af29efec61d2ab8ce4d621ccbf.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args s, 64, mem[_5439 + 164 len (32 * mem[_5439]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_5439 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _5439 + ceil32(return_data.size) + 96
                require return_data.size >= 32
                _11619 = mem[_5439 + 96 len 4], Mask(224, 32, s) >> 32
                require mem[_5439 + 96 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                require mem[_5439 + 96 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                require mem[_5439 + mem[_5439 + 96 len 4], Mask(224, 32, s) >> 32 + 96] <= 4294967296 and mem[_5439 + 96 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_5439 + mem[_5439 + 96 len 4], Mask(224, 32, s) >> 32 + 96]) + 32 <= return_data.size
                mem[_5439 + ceil32(return_data.size) + 96] = mem[_5439 + mem[_5439 + 96 len 4], Mask(224, 32, s) >> 32 + 96]
                _11951 = mem[_5439 + _11619 + 96]
                idx = 0
                while idx < 32 * _11951:
                    mem[idx + _5439 + ceil32(return_data.size) + 128] = mem[idx + _5439 + _11619 + 128]
                    idx = idx + 32
                    continue 
                mem[64] = (32 * _11951) + _5439 + ceil32(return_data.size) + 128
                require mem[_5439 + ceil32(return_data.size) + 96] - 1 < mem[_5439 + ceil32(return_data.size) + 96]
                if mem[(32 * mem[_5439 + ceil32(return_data.size) + 96] - 1) + _5439 + ceil32(return_data.size) + 128] <= u:
                    t = t + 1
                    u = u
                    continue 
                t = t + 1
                u = mem[(32 * mem[_5439 + ceil32(return_data.size) + 96] - 1) + _5439 + ceil32(return_data.size) + 128]
                continue 
            if 2 == t:
                _5519 = mem[64]
                mem[mem[64]] = 4
                mem[64] = mem[64] + 160
                require 0 < mem[_5519]
                mem[_5519 + 32] = 0xad84341756bf337f5a0164515b1f6f993d194e
                require 1 < mem[_5519]
                mem[_5519 + 64] = 0xe2fb177009ff39f52c0134e8007fa0e4baacbd07
                require 2 < mem[_5519]
                mem[_5519 + 96] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c
                require 3 < mem[_5519]
                mem[_5519 + 128] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                mem[_5519 + 160] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_5519 + 164] = s
                mem[_5519 + 196] = 64
                mem[_5519 + 228] = mem[_5519]
                idx = 0
                while idx < 32 * mem[_5519]:
                    mem[idx + _5519 + 260] = mem[idx + _5519 + 32]
                    idx = idx + 32
                    continue 
                require ext_code.size(0x6b3d631b87fe27af29efec61d2ab8ce4d621ccbf)
                staticcall 0x6b3d631b87fe27af29efec61d2ab8ce4d621ccbf.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args s, 64, mem[_5519 + 228 len (32 * mem[_5519]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_5519 + 160 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _5519 + ceil32(return_data.size) + 160
                require return_data.size >= 32
                _11615 = mem[_5519 + 160 len 4], Mask(224, 32, s) >> 32
                require mem[_5519 + 160 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                require mem[_5519 + 160 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                require mem[_5519 + mem[_5519 + 160 len 4], Mask(224, 32, s) >> 32 + 160] <= 4294967296 and mem[_5519 + 160 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_5519 + mem[_5519 + 160 len 4], Mask(224, 32, s) >> 32 + 160]) + 32 <= return_data.size
                mem[_5519 + ceil32(return_data.size) + 160] = mem[_5519 + mem[_5519 + 160 len 4], Mask(224, 32, s) >> 32 + 160]
                _11949 = mem[_5519 + _11615 + 160]
                idx = 0
                while idx < 32 * _11949:
                    mem[idx + _5519 + ceil32(return_data.size) + 192] = mem[idx + _5519 + _11615 + 192]
                    idx = idx + 32
                    continue 
                mem[64] = (32 * _11949) + _5519 + ceil32(return_data.size) + 192
                require mem[_5519 + ceil32(return_data.size) + 160] - 1 < mem[_5519 + ceil32(return_data.size) + 160]
                if mem[(32 * mem[_5519 + ceil32(return_data.size) + 160] - 1) + _5519 + ceil32(return_data.size) + 192] <= u:
                    t = t + 1
                    u = u
                    continue 
                t = t + 1
                u = mem[(32 * mem[_5519 + ceil32(return_data.size) + 160] - 1) + _5519 + ceil32(return_data.size) + 192]
                continue 
            if t != 3:
                if s <= u:
                    t = t + 1
                    u = u
                    continue 
                t = t + 1
                u = s
                continue 
            _5719 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            require 0 < mem[_5719]
            mem[_5719 + 32] = 0xad84341756bf337f5a0164515b1f6f993d194e
            require 1 < mem[_5719]
            mem[_5719 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c
            mem[_5719 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[_5719 + 100] = s
            mem[_5719 + 132] = 64
            mem[_5719 + 164] = mem[_5719]
            idx = 0
            while idx < 32 * mem[_5719]:
                mem[idx + _5719 + 196] = mem[idx + _5719 + 32]
                idx = idx + 32
                continue 
            require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
            staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c29.getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args s, 64, mem[_5719 + 164 len (32 * mem[_5719]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[_5719 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = _5719 + ceil32(return_data.size) + 96
            require return_data.size >= 32
            _11611 = mem[_5719 + 96 len 4], Mask(224, 32, s) >> 32
            require mem[_5719 + 96 len 4], Mask(224, 32, s) >> 32 <= 4294967296
            require mem[_5719 + 96 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
            require mem[_5719 + mem[_5719 + 96 len 4], Mask(224, 32, s) >> 32 + 96] <= 4294967296 and mem[_5719 + 96 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_5719 + mem[_5719 + 96 len 4], Mask(224, 32, s) >> 32 + 96]) + 32 <= return_data.size
            mem[_5719 + ceil32(return_data.size) + 96] = mem[_5719 + mem[_5719 + 96 len 4], Mask(224, 32, s) >> 32 + 96]
            _11947 = mem[_5719 + _11611 + 96]
            idx = 0
            while idx < 32 * _11947:
                mem[idx + _5719 + ceil32(return_data.size) + 128] = mem[idx + _5719 + _11611 + 128]
                idx = idx + 32
                continue 
            mem[64] = (32 * _11947) + _5719 + ceil32(return_data.size) + 128
            require mem[_5719 + ceil32(return_data.size) + 96] - 1 < mem[_5719 + ceil32(return_data.size) + 96]
            _16591 = mem[(32 * mem[_5719 + ceil32(return_data.size) + 96] - 1) + _5719 + ceil32(return_data.size) + 128]
            mem[(32 * _11947) + _5719 + ceil32(return_data.size) + 128] = 2
            mem[(32 * _11947) + _5719 + ceil32(return_data.size) + 160] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c
            mem[(32 * _11947) + _5719 + ceil32(return_data.size) + 192] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
            mem[(32 * _11947) + _5719 + ceil32(return_data.size) + 224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[(32 * _11947) + _5719 + ceil32(return_data.size) + 228] = _16591
            mem[(32 * _11947) + _5719 + ceil32(return_data.size) + 260] = 64
            mem[(32 * _11947) + _5719 + ceil32(return_data.size) + 292] = 2
            idx = 0
            while idx < 64:
                mem[idx + (32 * _11947) + _5719 + ceil32(return_data.size) + 324] = mem[idx + (32 * _11947) + _5719 + ceil32(return_data.size) + 160]
                idx = idx + 32
                continue 
            require ext_code.size(0x67a937ea41cd05ec8c832a044afc0100f30aa4b5)
            staticcall 0x67a937ea41cd05ec8c832a044afc0100f30aa4b5.getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args _16591, Array(len=2, data=mem[(32 * _11947) + _5719 + ceil32(return_data.size) + 324 len 64])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _11947) + _5719 + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * _11947) + _5719 + (2 * ceil32(return_data.size)) + 224
            require return_data.size >= 32
            _17595 = mem[(32 * _11947) + _5719 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _16591) >> 32
            require mem[(32 * _11947) + _5719 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _16591) >> 32 <= 4294967296
            require mem[(32 * _11947) + _5719 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _16591) >> 32 + 32 <= return_data.size
            require mem[(32 * _11947) + _5719 + ceil32(return_data.size) + mem[(32 * _11947) + _5719 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _16591) >> 32 + 224] <= 4294967296 and mem[(32 * _11947) + _5719 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _16591) >> 32 + (32 * mem[(32 * _11947) + _5719 + ceil32(return_data.size) + mem[(32 * _11947) + _5719 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _16591) >> 32 + 224]) + 32 <= return_data.size
            mem[(32 * _11947) + _5719 + (2 * ceil32(return_data.size)) + 224] = mem[(32 * _11947) + _5719 + ceil32(return_data.size) + mem[(32 * _11947) + _5719 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _16591) >> 32 + 224]
            _17635 = mem[(32 * _11947) + _5719 + ceil32(return_data.size) + _17595 + 224]
            idx = 0
            while idx < 32 * _17635:
                mem[idx + (32 * _11947) + _5719 + (2 * ceil32(return_data.size)) + 256] = mem[idx + (32 * _11947) + _5719 + ceil32(return_data.size) + _17595 + 256]
                idx = idx + 32
                continue 
            mem[64] = (32 * _17635) + (32 * _11947) + _5719 + (2 * ceil32(return_data.size)) + 256
            require mem[(32 * _11947) + _5719 + (2 * ceil32(return_data.size)) + 224] - 1 < mem[(32 * _11947) + _5719 + (2 * ceil32(return_data.size)) + 224]
            if mem[(32 * mem[(32 * _11947) + _5719 + (2 * ceil32(return_data.size)) + 224] - 1) + (32 * _11947) + _5719 + (2 * ceil32(return_data.size)) + 256] <= u:
                t = t + 1
                u = u
                continue 
            t = t + 1
            u = mem[(32 * mem[(32 * _11947) + _5719 + (2 * ceil32(return_data.size)) + 224] - 1) + (32 * _11947) + _5719 + (2 * ceil32(return_data.size)) + 256]
            continue 
    else:
        if 10^6 * sub_7d0b6809 / sub_7d0b6809 != 10^6:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x75536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
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
                require ext_code.size(0xfe00000000000000000000000004068da6c83afcfa0e13ba15a6696662335d5b)
                staticcall 0xfe00000000000000000000000004068da6c83afcfa0e13ba15a6696662335d5b.0x313ce567 with:
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
                    _2334 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2334] = 26
                    mem[_2334 + 32] = 'SafeMath: division by zero'
                    if not 10^uint8(ext_call.return_data[0]):
                        _2388 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _2388 + 68] = mem[idx + _2334 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2388 + 68] = mem[_2388 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _2388 + -mem[64] + 100
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
                                _6393 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_6393] = 26
                                mem[_6393 + 32] = 'SafeMath: division by zero'
                                _7514 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_7514] = 30
                                mem[_7514 + 32] = 'SafeMath: subtraction overflow'
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
                                    mem[idx + mem[64] + 68] = mem[idx + _7514 + 32]
                                    idx = idx + 32
                                    continue 
                            else:
                                if 5 * u / u != 5:
                                    revert with 0, 32, 33, 0x75536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                _6637 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_6637] = 26
                                mem[_6637 + 32] = 'SafeMath: division by zero'
                                _7840 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_7840] = 30
                                mem[_7840 + 32] = 'SafeMath: subtraction overflow'
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
                                    mem[idx + mem[64] + 68] = mem[idx + _7840 + 32]
                                    idx = idx + 32
                                    continue 
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not u:
                            _5580 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_5580] = 26
                            mem[_5580 + 32] = 'SafeMath: division by zero'
                            _6505 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_6505] = 30
                            mem[_6505 + 32] = 'SafeMath: subtraction overflow'
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
                                mem[idx + mem[64] + 68] = mem[idx + _6505 + 32]
                                idx = idx + 32
                                continue 
                        else:
                            if 5 * u / u != 5:
                                revert with 0, 32, 33, 0x75536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            _5795 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_5795] = 26
                            mem[_5795 + 32] = 'SafeMath: division by zero'
                            _6759 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_6759] = 30
                            mem[_6759 + 32] = 'SafeMath: subtraction overflow'
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
                                mem[idx + mem[64] + 68] = mem[idx + _6759 + 32]
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
                                _6394 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_6394] = 26
                                mem[_6394 + 32] = 'SafeMath: division by zero'
                                _7518 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_7518] = 30
                                mem[_7518 + 32] = 'SafeMath: subtraction overflow'
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
                                    mem[idx + mem[64] + 68] = mem[idx + _7518 + 32]
                                    idx = idx + 32
                                    continue 
                            else:
                                if 5 * u / u != 5:
                                    revert with 0, 32, 33, 0x75536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                _6638 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_6638] = 26
                                mem[_6638 + 32] = 'SafeMath: division by zero'
                                _7845 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_7845] = 30
                                mem[_7845 + 32] = 'SafeMath: subtraction overflow'
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
                                    mem[idx + mem[64] + 68] = mem[idx + _7845 + 32]
                                    idx = idx + 32
                                    continue 
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not u:
                            _5581 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_5581] = 26
                            mem[_5581 + 32] = 'SafeMath: division by zero'
                            _6506 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_6506] = 30
                            mem[_6506 + 32] = 'SafeMath: subtraction overflow'
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
                                mem[idx + mem[64] + 68] = mem[idx + _6506 + 32]
                                idx = idx + 32
                                continue 
                        else:
                            if 5 * u / u != 5:
                                revert with 0, 32, 33, 0x75536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            _5796 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_5796] = 26
                            mem[_5796 + 32] = 'SafeMath: division by zero'
                            _6763 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_6763] = 30
                            mem[_6763 + 32] = 'SafeMath: subtraction overflow'
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
                                mem[idx + mem[64] + 68] = mem[idx + _6763 + 32]
                                idx = idx + 32
                                continue 
                else:
                    if 3 * 10^6 * 10^uint8(ext_call.return_data[0]) * sub_7d0b6809 / 3 * 10^6 * sub_7d0b6809 != 10^uint8(ext_call.return_data[0]):
                        revert with 0, 32, 33, 0x75536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _2387 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2387] = 26
                    mem[_2387 + 32] = 'SafeMath: division by zero'
                    if not 10^uint8(ext_call.return_data[0]):
                        _2433 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _2433 + 68] = mem[idx + _2387 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2433 + 68] = mem[_2433 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _2433 + -mem[64] + 100
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
                                _6391 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_6391] = 26
                                mem[_6391 + 32] = 'SafeMath: division by zero'
                                _7506 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_7506] = 30
                                mem[_7506 + 32] = 'SafeMath: subtraction overflow'
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
                                    mem[idx + mem[64] + 68] = mem[idx + _7506 + 32]
                                    idx = idx + 32
                                    continue 
                            else:
                                if 5 * u / u != 5:
                                    revert with 0, 32, 33, 0x75536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                _6635 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_6635] = 26
                                mem[_6635 + 32] = 'SafeMath: division by zero'
                                _7830 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_7830] = 30
                                mem[_7830 + 32] = 'SafeMath: subtraction overflow'
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
                                    mem[idx + mem[64] + 68] = mem[idx + _7830 + 32]
                                    idx = idx + 32
                                    continue 
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not u:
                            _5578 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_5578] = 26
                            mem[_5578 + 32] = 'SafeMath: division by zero'
                            _6503 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_6503] = 30
                            mem[_6503 + 32] = 'SafeMath: subtraction overflow'
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
                                mem[idx + mem[64] + 68] = mem[idx + _6503 + 32]
                                idx = idx + 32
                                continue 
                        else:
                            if 5 * u / u != 5:
                                revert with 0, 32, 33, 0x75536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            _5793 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_5793] = 26
                            mem[_5793 + 32] = 'SafeMath: division by zero'
                            _6751 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_6751] = 30
                            mem[_6751 + 32] = 'SafeMath: subtraction overflow'
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
                                mem[idx + mem[64] + 68] = mem[idx + _6751 + 32]
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
                                _6392 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_6392] = 26
                                mem[_6392 + 32] = 'SafeMath: division by zero'
                                _7510 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_7510] = 30
                                mem[_7510 + 32] = 'SafeMath: subtraction overflow'
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
                                    mem[idx + mem[64] + 68] = mem[idx + _7510 + 32]
                                    idx = idx + 32
                                    continue 
                            else:
                                if 5 * u / u != 5:
                                    revert with 0, 32, 33, 0x75536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                _6636 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_6636] = 26
                                mem[_6636 + 32] = 'SafeMath: division by zero'
                                _7835 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_7835] = 30
                                mem[_7835 + 32] = 'SafeMath: subtraction overflow'
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
                                    mem[idx + mem[64] + 68] = mem[idx + _7835 + 32]
                                    idx = idx + 32
                                    continue 
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not u:
                            _5579 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_5579] = 26
                            mem[_5579 + 32] = 'SafeMath: division by zero'
                            _6504 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_6504] = 30
                            mem[_6504 + 32] = 'SafeMath: subtraction overflow'
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
                                mem[idx + mem[64] + 68] = mem[idx + _6504 + 32]
                                idx = idx + 32
                                continue 
                        else:
                            if 5 * u / u != 5:
                                revert with 0, 32, 33, 0x75536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            _5794 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_5794] = 26
                            mem[_5794 + 32] = 'SafeMath: division by zero'
                            _6755 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_6755] = 30
                            mem[_6755 + 32] = 'SafeMath: subtraction overflow'
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
                                mem[idx + mem[64] + 68] = mem[idx + _6755 + 32]
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
                require ext_code.size(0x6b3d631b87fe27af29efec61d2ab8ce4d621ccbf)
                staticcall 0x6b3d631b87fe27af29efec61d2ab8ce4d621ccbf.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args 10^6 * sub_7d0b6809, 64, mem[_1087 + 164 len (32 * mem[_1087]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_1087 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _1087 + ceil32(return_data.size) + 96
                require return_data.size >= 32
                _5423 = mem[_1087 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32
                require mem[_1087 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 <= 4294967296
                require mem[_1087 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 32 <= return_data.size
                require mem[_1087 + mem[_1087 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 96] <= 4294967296 and mem[_1087 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + (32 * mem[_1087 + mem[_1087 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 96]) + 32 <= return_data.size
                mem[_1087 + ceil32(return_data.size) + 96] = mem[_1087 + mem[_1087 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 96]
                _5693 = mem[_1087 + _5423 + 96]
                t = 0
                while t < 32 * _5693:
                    mem[t + _1087 + ceil32(return_data.size) + 128] = mem[t + _1087 + _5423 + 128]
                    t = t + 32
                    continue 
                mem[64] = (32 * _5693) + _1087 + ceil32(return_data.size) + 128
                require mem[_1087 + ceil32(return_data.size) + 96] - 1 < mem[_1087 + ceil32(return_data.size) + 96]
                if mem[(32 * mem[_1087 + ceil32(return_data.size) + 96] - 1) + _1087 + ceil32(return_data.size) + 128] <= s:
                    idx = idx + 1
                    s = s
                    continue 
                idx = idx + 1
                s = mem[(32 * mem[_1087 + ceil32(return_data.size) + 96] - 1) + _1087 + ceil32(return_data.size) + 128]
                continue 
            if 2 == idx:
                _1107 = mem[64]
                mem[mem[64]] = 4
                mem[64] = mem[64] + 160
                require 0 < mem[_1107]
                mem[_1107 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                require 1 < mem[_1107]
                mem[_1107 + 64] = 0xe2fb177009ff39f52c0134e8007fa0e4baacbd07
                require 2 < mem[_1107]
                mem[_1107 + 96] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c
                require 3 < mem[_1107]
                mem[_1107 + 128] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                mem[_1107 + 160] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_1107 + 164] = 10^6 * sub_7d0b6809
                mem[_1107 + 196] = 64
                mem[_1107 + 228] = mem[_1107]
                t = 0
                while t < 32 * mem[_1107]:
                    mem[t + _1107 + 260] = mem[t + _1107 + 32]
                    t = t + 32
                    continue 
                require ext_code.size(0x6b3d631b87fe27af29efec61d2ab8ce4d621ccbf)
                staticcall 0x6b3d631b87fe27af29efec61d2ab8ce4d621ccbf.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args 10^6 * sub_7d0b6809, 64, mem[_1107 + 228 len (32 * mem[_1107]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_1107 + 160 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _1107 + ceil32(return_data.size) + 160
                require return_data.size >= 32
                _5419 = mem[_1107 + 160 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32
                require mem[_1107 + 160 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 <= 4294967296
                require mem[_1107 + 160 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 32 <= return_data.size
                require mem[_1107 + mem[_1107 + 160 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 160] <= 4294967296 and mem[_1107 + 160 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + (32 * mem[_1107 + mem[_1107 + 160 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 160]) + 32 <= return_data.size
                mem[_1107 + ceil32(return_data.size) + 160] = mem[_1107 + mem[_1107 + 160 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 160]
                _5691 = mem[_1107 + _5419 + 160]
                t = 0
                while t < 32 * _5691:
                    mem[t + _1107 + ceil32(return_data.size) + 192] = mem[t + _1107 + _5419 + 192]
                    t = t + 32
                    continue 
                mem[64] = (32 * _5691) + _1107 + ceil32(return_data.size) + 192
                require mem[_1107 + ceil32(return_data.size) + 160] - 1 < mem[_1107 + ceil32(return_data.size) + 160]
                if mem[(32 * mem[_1107 + ceil32(return_data.size) + 160] - 1) + _1107 + ceil32(return_data.size) + 192] <= s:
                    idx = idx + 1
                    s = s
                    continue 
                idx = idx + 1
                s = mem[(32 * mem[_1107 + ceil32(return_data.size) + 160] - 1) + _1107 + ceil32(return_data.size) + 192]
                continue 
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
            mem[_1163 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c
            mem[_1163 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[_1163 + 100] = 10^6 * sub_7d0b6809
            mem[_1163 + 132] = 64
            mem[_1163 + 164] = mem[_1163]
            t = 0
            while t < 32 * mem[_1163]:
                mem[t + _1163 + 196] = mem[t + _1163 + 32]
                t = t + 32
                continue 
            require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
            staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c29.getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args 10^6 * sub_7d0b6809, 64, mem[_1163 + 164 len (32 * mem[_1163]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[_1163 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = _1163 + ceil32(return_data.size) + 96
            require return_data.size >= 32
            _5415 = mem[_1163 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32
            require mem[_1163 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 <= 4294967296
            require mem[_1163 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 32 <= return_data.size
            require mem[_1163 + mem[_1163 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 96] <= 4294967296 and mem[_1163 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + (32 * mem[_1163 + mem[_1163 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 96]) + 32 <= return_data.size
            mem[_1163 + ceil32(return_data.size) + 96] = mem[_1163 + mem[_1163 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 96]
            _5689 = mem[_1163 + _5415 + 96]
            t = 0
            while t < 32 * _5689:
                mem[t + _1163 + ceil32(return_data.size) + 128] = mem[t + _1163 + _5415 + 128]
                t = t + 32
                continue 
            mem[64] = (32 * _5689) + _1163 + ceil32(return_data.size) + 128
            require mem[_1163 + ceil32(return_data.size) + 96] - 1 < mem[_1163 + ceil32(return_data.size) + 96]
            _11135 = mem[(32 * mem[_1163 + ceil32(return_data.size) + 96] - 1) + _1163 + ceil32(return_data.size) + 128]
            mem[(32 * _5689) + _1163 + ceil32(return_data.size) + 128] = 2
            mem[(32 * _5689) + _1163 + ceil32(return_data.size) + 160] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c
            mem[(32 * _5689) + _1163 + ceil32(return_data.size) + 192] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
            mem[(32 * _5689) + _1163 + ceil32(return_data.size) + 224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[(32 * _5689) + _1163 + ceil32(return_data.size) + 228] = _11135
            mem[(32 * _5689) + _1163 + ceil32(return_data.size) + 260] = 64
            mem[(32 * _5689) + _1163 + ceil32(return_data.size) + 292] = 2
            t = 0
            while t < 64:
                mem[t + (32 * _5689) + _1163 + ceil32(return_data.size) + 324] = mem[t + (32 * _5689) + _1163 + ceil32(return_data.size) + 160]
                t = t + 32
                continue 
            require ext_code.size(0x67a937ea41cd05ec8c832a044afc0100f30aa4b5)
            staticcall 0x67a937ea41cd05ec8c832a044afc0100f30aa4b5.getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args _11135, Array(len=2, data=mem[(32 * _5689) + _1163 + ceil32(return_data.size) + 324 len 64])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _5689) + _1163 + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * _5689) + _1163 + (2 * ceil32(return_data.size)) + 224
            require return_data.size >= 32
            _17147 = mem[(32 * _5689) + _1163 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _11135) >> 32
            require mem[(32 * _5689) + _1163 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _11135) >> 32 <= 4294967296
            require mem[(32 * _5689) + _1163 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _11135) >> 32 + 32 <= return_data.size
            require mem[(32 * _5689) + _1163 + ceil32(return_data.size) + mem[(32 * _5689) + _1163 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _11135) >> 32 + 224] <= 4294967296 and mem[(32 * _5689) + _1163 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _11135) >> 32 + (32 * mem[(32 * _5689) + _1163 + ceil32(return_data.size) + mem[(32 * _5689) + _1163 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _11135) >> 32 + 224]) + 32 <= return_data.size
            mem[(32 * _5689) + _1163 + (2 * ceil32(return_data.size)) + 224] = mem[(32 * _5689) + _1163 + ceil32(return_data.size) + mem[(32 * _5689) + _1163 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _11135) >> 32 + 224]
            _17247 = mem[(32 * _5689) + _1163 + ceil32(return_data.size) + _17147 + 224]
            t = 0
            while t < 32 * _17247:
                mem[t + (32 * _5689) + _1163 + (2 * ceil32(return_data.size)) + 256] = mem[t + (32 * _5689) + _1163 + ceil32(return_data.size) + _17147 + 256]
                t = t + 32
                continue 
            mem[64] = (32 * _17247) + (32 * _5689) + _1163 + (2 * ceil32(return_data.size)) + 256
            require mem[(32 * _5689) + _1163 + (2 * ceil32(return_data.size)) + 224] - 1 < mem[(32 * _5689) + _1163 + (2 * ceil32(return_data.size)) + 224]
            if mem[(32 * mem[(32 * _5689) + _1163 + (2 * ceil32(return_data.size)) + 224] - 1) + (32 * _5689) + _1163 + (2 * ceil32(return_data.size)) + 256] <= s:
                idx = idx + 1
                s = s
                continue 
            idx = idx + 1
            s = mem[(32 * mem[(32 * _5689) + _1163 + (2 * ceil32(return_data.size)) + 224] - 1) + (32 * _5689) + _1163 + (2 * ceil32(return_data.size)) + 256]
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
                require ext_code.size(0xfe00000000000000000000000004068da6c83afcfa0e13ba15a6696662335d5b)
                staticcall 0xfe00000000000000000000000004068da6c83afcfa0e13ba15a6696662335d5b.0x313ce567 with:
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
                    _8572 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_8572] = 26
                    mem[_8572 + 32] = 'SafeMath: division by zero'
                    if not 10^uint8(ext_call.return_data[0]):
                        _8710 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _8710 + 68] = mem[idx + _8572 + 32]
                            idx = idx + 32
                            continue 
                        mem[_8710 + 68] = mem[_8710 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _8710 + -mem[64] + 100
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
                                _12395 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_12395] = 26
                                mem[_12395 + 32] = 'SafeMath: division by zero'
                                _13918 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_13918] = 30
                                mem[_13918 + 32] = 'SafeMath: subtraction overflow'
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
                                    mem[s + mem[64] + 68] = mem[s + _13918 + 32]
                                    s = s + 32
                                    continue 
                            else:
                                if 5 * w / w != 5:
                                    revert with 0, 32, 33, 0x75536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                _12595 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_12595] = 26
                                mem[_12595 + 32] = 'SafeMath: division by zero'
                                _14320 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_14320] = 30
                                mem[_14320 + 32] = 'SafeMath: subtraction overflow'
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
                                    mem[idx + mem[64] + 68] = mem[idx + _14320 + 32]
                                    idx = idx + 32
                                    continue 
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not w:
                            _11810 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_11810] = 26
                            mem[_11810 + 32] = 'SafeMath: division by zero'
                            _12503 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_12503] = 30
                            mem[_12503 + 32] = 'SafeMath: subtraction overflow'
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
                                mem[idx + mem[64] + 68] = mem[idx + _12503 + 32]
                                idx = idx + 32
                                continue 
                        else:
                            if 5 * w / w != 5:
                                revert with 0, 32, 33, 0x75536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            _11981 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_11981] = 26
                            mem[_11981 + 32] = 'SafeMath: division by zero'
                            _12715 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_12715] = 30
                            mem[_12715 + 32] = 'SafeMath: subtraction overflow'
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
                                mem[idx + mem[64] + 68] = mem[idx + _12715 + 32]
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
                                _12396 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_12396] = 26
                                mem[_12396 + 32] = 'SafeMath: division by zero'
                                _13922 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_13922] = 30
                                mem[_13922 + 32] = 'SafeMath: subtraction overflow'
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
                                    mem[idx + mem[64] + 68] = mem[idx + _13922 + 32]
                                    idx = idx + 32
                                    continue 
                            else:
                                if 5 * v / v != 5:
                                    revert with 0, 32, 33, 0x75536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                _12596 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_12596] = 26
                                mem[_12596 + 32] = 'SafeMath: division by zero'
                                _14325 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_14325] = 30
                                mem[_14325 + 32] = 'SafeMath: subtraction overflow'
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
                                    mem[idx + mem[64] + 68] = mem[idx + _14325 + 32]
                                    idx = idx + 32
                                    continue 
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not v:
                            _11811 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_11811] = 26
                            mem[_11811 + 32] = 'SafeMath: division by zero'
                            _12504 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_12504] = 30
                            mem[_12504 + 32] = 'SafeMath: subtraction overflow'
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
                                mem[idx + mem[64] + 68] = mem[idx + _12504 + 32]
                                idx = idx + 32
                                continue 
                        else:
                            if 5 * v / v != 5:
                                revert with 0, 32, 33, 0x75536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            _11982 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_11982] = 26
                            mem[_11982 + 32] = 'SafeMath: division by zero'
                            _12719 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_12719] = 30
                            mem[_12719 + 32] = 'SafeMath: subtraction overflow'
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
                                mem[idx + mem[64] + 68] = mem[idx + _12719 + 32]
                                idx = idx + 32
                                continue 
                else:
                    if 3 * 10^uint8(ext_call.return_data[0]) * s / 3 * s != 10^uint8(ext_call.return_data[0]):
                        revert with 0, 32, 33, 0x75536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _8709 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_8709] = 26
                    mem[_8709 + 32] = 'SafeMath: division by zero'
                    if not 10^uint8(ext_call.return_data[0]):
                        _8797 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _8797 + 68] = mem[idx + _8709 + 32]
                            idx = idx + 32
                            continue 
                        mem[_8797 + 68] = mem[_8797 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _8797 + -mem[64] + 100
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
                                _12393 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_12393] = 26
                                mem[_12393 + 32] = 'SafeMath: division by zero'
                                _13910 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_13910] = 30
                                mem[_13910 + 32] = 'SafeMath: subtraction overflow'
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
                                    mem[idx + mem[64] + 68] = mem[idx + _13910 + 32]
                                    idx = idx + 32
                                    continue 
                            else:
                                if 5 * v / v != 5:
                                    revert with 0, 32, 33, 0x75536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                _12593 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_12593] = 26
                                mem[_12593 + 32] = 'SafeMath: division by zero'
                                _14310 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_14310] = 30
                                mem[_14310 + 32] = 'SafeMath: subtraction overflow'
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
                                    mem[idx + mem[64] + 68] = mem[idx + _14310 + 32]
                                    idx = idx + 32
                                    continue 
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not v:
                            _11808 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_11808] = 26
                            mem[_11808 + 32] = 'SafeMath: division by zero'
                            _12501 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_12501] = 30
                            mem[_12501 + 32] = 'SafeMath: subtraction overflow'
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
                                mem[idx + mem[64] + 68] = mem[idx + _12501 + 32]
                                idx = idx + 32
                                continue 
                        else:
                            if 5 * v / v != 5:
                                revert with 0, 32, 33, 0x75536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            _11979 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_11979] = 26
                            mem[_11979 + 32] = 'SafeMath: division by zero'
                            _12707 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_12707] = 30
                            mem[_12707 + 32] = 'SafeMath: subtraction overflow'
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
                                mem[idx + mem[64] + 68] = mem[idx + _12707 + 32]
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
                                _12394 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_12394] = 26
                                mem[_12394 + 32] = 'SafeMath: division by zero'
                                _13914 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_13914] = 30
                                mem[_13914 + 32] = 'SafeMath: subtraction overflow'
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
                                    mem[idx + mem[64] + 68] = mem[idx + _13914 + 32]
                                    idx = idx + 32
                                    continue 
                            else:
                                if 5 * v / v != 5:
                                    revert with 0, 32, 33, 0x75536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                _12594 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_12594] = 26
                                mem[_12594 + 32] = 'SafeMath: division by zero'
                                _14315 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_14315] = 30
                                mem[_14315 + 32] = 'SafeMath: subtraction overflow'
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
                                    mem[idx + mem[64] + 68] = mem[idx + _14315 + 32]
                                    idx = idx + 32
                                    continue 
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not v:
                            _11809 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_11809] = 26
                            mem[_11809 + 32] = 'SafeMath: division by zero'
                            _12502 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_12502] = 30
                            mem[_12502 + 32] = 'SafeMath: subtraction overflow'
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
                                mem[idx + mem[64] + 68] = mem[idx + _12502 + 32]
                                idx = idx + 32
                                continue 
                        else:
                            if 5 * v / v != 5:
                                revert with 0, 32, 33, 0x75536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            _11980 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_11980] = 26
                            mem[_11980 + 32] = 'SafeMath: division by zero'
                            _12711 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_12711] = 30
                            mem[_12711 + 32] = 'SafeMath: subtraction overflow'
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
                                mem[idx + mem[64] + 68] = mem[idx + _12711 + 32]
                                idx = idx + 32
                                continue 
                revert with 0, 'SafeMath: subtraction overflow'
            if 1 == t:
                _5411 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                require 0 < mem[_5411]
                mem[_5411 + 32] = 0xad84341756bf337f5a0164515b1f6f993d194e
                require 1 < mem[_5411]
                mem[_5411 + 64] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                mem[_5411 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_5411 + 100] = s
                mem[_5411 + 132] = 64
                mem[_5411 + 164] = mem[_5411]
                idx = 0
                while idx < 32 * mem[_5411]:
                    mem[idx + _5411 + 196] = mem[idx + _5411 + 32]
                    idx = idx + 32
                    continue 
                require ext_code.size(0x6b3d631b87fe27af29efec61d2ab8ce4d621ccbf)
                staticcall 0x6b3d631b87fe27af29efec61d2ab8ce4d621ccbf.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args s, 64, mem[_5411 + 164 len (32 * mem[_5411]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_5411 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _5411 + ceil32(return_data.size) + 96
                require return_data.size >= 32
                _11579 = mem[_5411 + 96 len 4], Mask(224, 32, s) >> 32
                require mem[_5411 + 96 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                require mem[_5411 + 96 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                require mem[_5411 + mem[_5411 + 96 len 4], Mask(224, 32, s) >> 32 + 96] <= 4294967296 and mem[_5411 + 96 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_5411 + mem[_5411 + 96 len 4], Mask(224, 32, s) >> 32 + 96]) + 32 <= return_data.size
                mem[_5411 + ceil32(return_data.size) + 96] = mem[_5411 + mem[_5411 + 96 len 4], Mask(224, 32, s) >> 32 + 96]
                _11919 = mem[_5411 + _11579 + 96]
                idx = 0
                while idx < 32 * _11919:
                    mem[idx + _5411 + ceil32(return_data.size) + 128] = mem[idx + _5411 + _11579 + 128]
                    idx = idx + 32
                    continue 
                mem[64] = (32 * _11919) + _5411 + ceil32(return_data.size) + 128
                require mem[_5411 + ceil32(return_data.size) + 96] - 1 < mem[_5411 + ceil32(return_data.size) + 96]
                if mem[(32 * mem[_5411 + ceil32(return_data.size) + 96] - 1) + _5411 + ceil32(return_data.size) + 128] <= u:
                    t = t + 1
                    u = u
                    continue 
                t = t + 1
                u = mem[(32 * mem[_5411 + ceil32(return_data.size) + 96] - 1) + _5411 + ceil32(return_data.size) + 128]
                continue 
            if 2 == t:
                _5467 = mem[64]
                mem[mem[64]] = 4
                mem[64] = mem[64] + 160
                require 0 < mem[_5467]
                mem[_5467 + 32] = 0xad84341756bf337f5a0164515b1f6f993d194e
                require 1 < mem[_5467]
                mem[_5467 + 64] = 0xe2fb177009ff39f52c0134e8007fa0e4baacbd07
                require 2 < mem[_5467]
                mem[_5467 + 96] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c
                require 3 < mem[_5467]
                mem[_5467 + 128] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                mem[_5467 + 160] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_5467 + 164] = s
                mem[_5467 + 196] = 64
                mem[_5467 + 228] = mem[_5467]
                idx = 0
                while idx < 32 * mem[_5467]:
                    mem[idx + _5467 + 260] = mem[idx + _5467 + 32]
                    idx = idx + 32
                    continue 
                require ext_code.size(0x6b3d631b87fe27af29efec61d2ab8ce4d621ccbf)
                staticcall 0x6b3d631b87fe27af29efec61d2ab8ce4d621ccbf.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args s, 64, mem[_5467 + 228 len (32 * mem[_5467]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_5467 + 160 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _5467 + ceil32(return_data.size) + 160
                require return_data.size >= 32
                _11575 = mem[_5467 + 160 len 4], Mask(224, 32, s) >> 32
                require mem[_5467 + 160 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                require mem[_5467 + 160 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                require mem[_5467 + mem[_5467 + 160 len 4], Mask(224, 32, s) >> 32 + 160] <= 4294967296 and mem[_5467 + 160 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_5467 + mem[_5467 + 160 len 4], Mask(224, 32, s) >> 32 + 160]) + 32 <= return_data.size
                mem[_5467 + ceil32(return_data.size) + 160] = mem[_5467 + mem[_5467 + 160 len 4], Mask(224, 32, s) >> 32 + 160]
                _11917 = mem[_5467 + _11575 + 160]
                idx = 0
                while idx < 32 * _11917:
                    mem[idx + _5467 + ceil32(return_data.size) + 192] = mem[idx + _5467 + _11575 + 192]
                    idx = idx + 32
                    continue 
                mem[64] = (32 * _11917) + _5467 + ceil32(return_data.size) + 192
                require mem[_5467 + ceil32(return_data.size) + 160] - 1 < mem[_5467 + ceil32(return_data.size) + 160]
                if mem[(32 * mem[_5467 + ceil32(return_data.size) + 160] - 1) + _5467 + ceil32(return_data.size) + 192] <= u:
                    t = t + 1
                    u = u
                    continue 
                t = t + 1
                u = mem[(32 * mem[_5467 + ceil32(return_data.size) + 160] - 1) + _5467 + ceil32(return_data.size) + 192]
                continue 
            if t != 3:
                if s <= u:
                    t = t + 1
                    u = u
                    continue 
                t = t + 1
                u = s
                continue 
            _5673 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            require 0 < mem[_5673]
            mem[_5673 + 32] = 0xad84341756bf337f5a0164515b1f6f993d194e
            require 1 < mem[_5673]
            mem[_5673 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c
            mem[_5673 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[_5673 + 100] = s
            mem[_5673 + 132] = 64
            mem[_5673 + 164] = mem[_5673]
            idx = 0
            while idx < 32 * mem[_5673]:
                mem[idx + _5673 + 196] = mem[idx + _5673 + 32]
                idx = idx + 32
                continue 
            require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
            staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c29.getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args s, 64, mem[_5673 + 164 len (32 * mem[_5673]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[_5673 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = _5673 + ceil32(return_data.size) + 96
            require return_data.size >= 32
            _11571 = mem[_5673 + 96 len 4], Mask(224, 32, s) >> 32
            require mem[_5673 + 96 len 4], Mask(224, 32, s) >> 32 <= 4294967296
            require mem[_5673 + 96 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
            require mem[_5673 + mem[_5673 + 96 len 4], Mask(224, 32, s) >> 32 + 96] <= 4294967296 and mem[_5673 + 96 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_5673 + mem[_5673 + 96 len 4], Mask(224, 32, s) >> 32 + 96]) + 32 <= return_data.size
            mem[_5673 + ceil32(return_data.size) + 96] = mem[_5673 + mem[_5673 + 96 len 4], Mask(224, 32, s) >> 32 + 96]
            _11915 = mem[_5673 + _11571 + 96]
            idx = 0
            while idx < 32 * _11915:
                mem[idx + _5673 + ceil32(return_data.size) + 128] = mem[idx + _5673 + _11571 + 128]
                idx = idx + 32
                continue 
            mem[64] = (32 * _11915) + _5673 + ceil32(return_data.size) + 128
            require mem[_5673 + ceil32(return_data.size) + 96] - 1 < mem[_5673 + ceil32(return_data.size) + 96]
            _16315 = mem[(32 * mem[_5673 + ceil32(return_data.size) + 96] - 1) + _5673 + ceil32(return_data.size) + 128]
            mem[(32 * _11915) + _5673 + ceil32(return_data.size) + 128] = 2
            mem[(32 * _11915) + _5673 + ceil32(return_data.size) + 160] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c
            mem[(32 * _11915) + _5673 + ceil32(return_data.size) + 192] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
            mem[(32 * _11915) + _5673 + ceil32(return_data.size) + 224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[(32 * _11915) + _5673 + ceil32(return_data.size) + 228] = _16315
            mem[(32 * _11915) + _5673 + ceil32(return_data.size) + 260] = 64
            mem[(32 * _11915) + _5673 + ceil32(return_data.size) + 292] = 2
            idx = 0
            while idx < 64:
                mem[idx + (32 * _11915) + _5673 + ceil32(return_data.size) + 324] = mem[idx + (32 * _11915) + _5673 + ceil32(return_data.size) + 160]
                idx = idx + 32
                continue 
            require ext_code.size(0x67a937ea41cd05ec8c832a044afc0100f30aa4b5)
            staticcall 0x67a937ea41cd05ec8c832a044afc0100f30aa4b5.getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args _16315, Array(len=2, data=mem[(32 * _11915) + _5673 + ceil32(return_data.size) + 324 len 64])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _11915) + _5673 + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * _11915) + _5673 + (2 * ceil32(return_data.size)) + 224
            require return_data.size >= 32
            _17579 = mem[(32 * _11915) + _5673 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _16315) >> 32
            require mem[(32 * _11915) + _5673 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _16315) >> 32 <= 4294967296
            require mem[(32 * _11915) + _5673 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _16315) >> 32 + 32 <= return_data.size
            require mem[(32 * _11915) + _5673 + ceil32(return_data.size) + mem[(32 * _11915) + _5673 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _16315) >> 32 + 224] <= 4294967296 and mem[(32 * _11915) + _5673 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _16315) >> 32 + (32 * mem[(32 * _11915) + _5673 + ceil32(return_data.size) + mem[(32 * _11915) + _5673 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _16315) >> 32 + 224]) + 32 <= return_data.size
            mem[(32 * _11915) + _5673 + (2 * ceil32(return_data.size)) + 224] = mem[(32 * _11915) + _5673 + ceil32(return_data.size) + mem[(32 * _11915) + _5673 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _16315) >> 32 + 224]
            _17627 = mem[(32 * _11915) + _5673 + ceil32(return_data.size) + _17579 + 224]
            idx = 0
            while idx < 32 * _17627:
                mem[idx + (32 * _11915) + _5673 + (2 * ceil32(return_data.size)) + 256] = mem[idx + (32 * _11915) + _5673 + ceil32(return_data.size) + _17579 + 256]
                idx = idx + 32
                continue 
            mem[64] = (32 * _17627) + (32 * _11915) + _5673 + (2 * ceil32(return_data.size)) + 256
            require mem[(32 * _11915) + _5673 + (2 * ceil32(return_data.size)) + 224] - 1 < mem[(32 * _11915) + _5673 + (2 * ceil32(return_data.size)) + 224]
            if mem[(32 * mem[(32 * _11915) + _5673 + (2 * ceil32(return_data.size)) + 224] - 1) + (32 * _11915) + _5673 + (2 * ceil32(return_data.size)) + 256] <= u:
                t = t + 1
                u = u
                continue 
            t = t + 1
            u = mem[(32 * mem[(32 * _11915) + _5673 + (2 * ceil32(return_data.size)) + 224] - 1) + (32 * _11915) + _5673 + (2 * ceil32(return_data.size)) + 256]
            continue 
    if maxBatch:
        if 10^6 * maxBatch / maxBatch != 10^6:
            revert with 0, 32, 33, 0x75536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
    return 0, block.number, 0, 0, 0
}



}
