contract main {




// =====================  Runtime code  =====================


#
#  - executeOperation(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5)
#  - sub_57c20218(?)
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

function sub_94d7721f(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    if not sub_7d0b6809:
        idx = 0
        s = 0
        while idx < 7:
            if not idx:
                mem[mem[64] + 4] = 1
                mem[mem[64] + 36] = 0
                mem[mem[64] + 68] = 0
                require ext_code.size(0x27e611fd27b276acbd5ffd632e5eaebec9761e40)
                staticcall 0x27e611fd27b276acbd5ffd632e5eaebec9761e40.get_dy(int128 rg1, int128 rg2, uint256 rg3) with:
                        gas gas_remaining wei
                       args 1, 0, 0
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] <= s:
                    idx = idx + 1
                    s = s
                    continue 
                idx = idx + 1
                s = ext_call.return_data[0]
                continue 
            if 1 == idx:
                mem[mem[64] + 4] = 2
                mem[mem[64] + 36] = 1
                mem[mem[64] + 68] = 0
                require ext_code.size(0x83e5f18da720119ff363cf63417628eb0e9fd523)
                staticcall 0x83e5f18da720119ff363cf63417628eb0e9fd523.get_dy(int128 rg1, int128 rg2, uint256 rg3) with:
                        gas gas_remaining wei
                       args 2, 1, 0
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] <= s:
                    idx = idx + 1
                    s = s
                    continue 
                idx = idx + 1
                s = ext_call.return_data[0]
                continue 
            if 2 == idx:
                _99 = mem[64]
                mem[mem[64]] = 3
                mem[64] = mem[64] + 128
                require 0 < mem[_99]
                mem[_99 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                require 1 < mem[_99]
                mem[_99 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                require 2 < mem[_99]
                mem[_99 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                mem[_99 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_99 + 132] = 0
                mem[_99 + 164] = 64
                mem[_99 + 196] = mem[_99]
                t = 0
                while t < 32 * mem[_99]:
                    mem[t + _99 + 228] = mem[t + _99 + 32]
                    t = t + 32
                    continue 
                require ext_code.size(0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52)
                staticcall 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52.getAmountsOut(uint256 rg1, address[] rg2) with:
                        gas gas_remaining wei
                       args 0, 64, mem[_99 + 196 len (32 * mem[_99]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_99 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _99 + ceil32(return_data.size) + 128
                require return_data.size >= 32
                _603 = mem[_99 + 128 len 4], 0
                require mem[_99 + 128 len 4], 0 <= 4294967296
                require mem[_99 + 128 len 4], 0 + 32 <= return_data.size
                require mem[_99 + mem[_99 + 128 len 4], 0 + 128] <= 4294967296 and mem[_99 + 128 len 4], 0 + (32 * mem[_99 + mem[_99 + 128 len 4], 0 + 128]) + 32 <= return_data.size
                mem[_99 + ceil32(return_data.size) + 128] = mem[_99 + mem[_99 + 128 len 4], 0 + 128]
                _719 = mem[_99 + _603 + 128]
                t = 0
                while t < 32 * _719:
                    mem[t + _99 + ceil32(return_data.size) + 160] = mem[t + _99 + _603 + 160]
                    t = t + 32
                    continue 
                mem[64] = (32 * _719) + _99 + ceil32(return_data.size) + 160
                require mem[_99 + ceil32(return_data.size) + 128] - 1 < mem[_99 + ceil32(return_data.size) + 128]
                if mem[(32 * mem[_99 + ceil32(return_data.size) + 128] - 1) + _99 + ceil32(return_data.size) + 160] <= s:
                    idx = idx + 1
                    s = s
                    continue 
                idx = idx + 1
                s = mem[(32 * mem[_99 + ceil32(return_data.size) + 128] - 1) + _99 + ceil32(return_data.size) + 160]
                continue 
            if 3 == idx:
                _113 = mem[64]
                mem[mem[64]] = 3
                mem[64] = mem[64] + 128
                require 0 < mem[_113]
                mem[_113 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                require 1 < mem[_113]
                mem[_113 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                require 2 < mem[_113]
                mem[_113 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                mem[_113 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_113 + 132] = 0
                mem[_113 + 164] = 64
                mem[_113 + 196] = mem[_113]
                t = 0
                while t < 32 * mem[_113]:
                    mem[t + _113 + 228] = mem[t + _113 + 32]
                    t = t + 32
                    continue 
                require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c29.getAmountsOut(uint256 rg1, address[] rg2) with:
                        gas gas_remaining wei
                       args 0, 64, mem[_113 + 196 len (32 * mem[_113]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_113 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _113 + ceil32(return_data.size) + 128
                require return_data.size >= 32
                _601 = mem[_113 + 128 len 4], 0
                require mem[_113 + 128 len 4], 0 <= 4294967296
                require mem[_113 + 128 len 4], 0 + 32 <= return_data.size
                require mem[_113 + mem[_113 + 128 len 4], 0 + 128] <= 4294967296 and mem[_113 + 128 len 4], 0 + (32 * mem[_113 + mem[_113 + 128 len 4], 0 + 128]) + 32 <= return_data.size
                mem[_113 + ceil32(return_data.size) + 128] = mem[_113 + mem[_113 + 128 len 4], 0 + 128]
                _718 = mem[_113 + _601 + 128]
                t = 0
                while t < 32 * _718:
                    mem[t + _113 + ceil32(return_data.size) + 160] = mem[t + _113 + _601 + 160]
                    t = t + 32
                    continue 
                mem[64] = (32 * _718) + _113 + ceil32(return_data.size) + 160
                require mem[_113 + ceil32(return_data.size) + 128] - 1 < mem[_113 + ceil32(return_data.size) + 128]
                if mem[(32 * mem[_113 + ceil32(return_data.size) + 128] - 1) + _113 + ceil32(return_data.size) + 160] <= s:
                    idx = idx + 1
                    s = s
                    continue 
                idx = idx + 1
                s = mem[(32 * mem[_113 + ceil32(return_data.size) + 128] - 1) + _113 + ceil32(return_data.size) + 160]
                continue 
            if 4 == idx:
                _133 = mem[64]
                mem[mem[64]] = 3
                mem[64] = mem[64] + 128
                require 0 < mem[_133]
                mem[_133 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                require 1 < mem[_133]
                mem[_133 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                require 2 < mem[_133]
                mem[_133 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                mem[_133 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_133 + 132] = 0
                mem[_133 + 164] = 64
                mem[_133 + 196] = mem[_133]
                t = 0
                while t < 32 * mem[_133]:
                    mem[t + _133 + 228] = mem[t + _133 + 32]
                    t = t + 32
                    continue 
                require ext_code.size(0x7b17021fcb7bc888641dc3bedfed3734fcaf2c87)
                staticcall 0x7b17021fcb7bc888641dc3bedfed3734fcaf2c87.getAmountsOut(uint256 rg1, address[] rg2) with:
                        gas gas_remaining wei
                       args 0, 64, mem[_133 + 196 len (32 * mem[_133]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_133 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _133 + ceil32(return_data.size) + 128
                require return_data.size >= 32
                _599 = mem[_133 + 128 len 4], 0
                require mem[_133 + 128 len 4], 0 <= 4294967296
                require mem[_133 + 128 len 4], 0 + 32 <= return_data.size
                require mem[_133 + mem[_133 + 128 len 4], 0 + 128] <= 4294967296 and mem[_133 + 128 len 4], 0 + (32 * mem[_133 + mem[_133 + 128 len 4], 0 + 128]) + 32 <= return_data.size
                mem[_133 + ceil32(return_data.size) + 128] = mem[_133 + mem[_133 + 128 len 4], 0 + 128]
                _717 = mem[_133 + _599 + 128]
                t = 0
                while t < 32 * _717:
                    mem[t + _133 + ceil32(return_data.size) + 160] = mem[t + _133 + _599 + 160]
                    t = t + 32
                    continue 
                mem[64] = (32 * _717) + _133 + ceil32(return_data.size) + 160
                require mem[_133 + ceil32(return_data.size) + 128] - 1 < mem[_133 + ceil32(return_data.size) + 128]
                if mem[(32 * mem[_133 + ceil32(return_data.size) + 128] - 1) + _133 + ceil32(return_data.size) + 160] <= s:
                    idx = idx + 1
                    s = s
                    continue 
                idx = idx + 1
                s = mem[(32 * mem[_133 + ceil32(return_data.size) + 128] - 1) + _133 + ceil32(return_data.size) + 160]
                continue 
            if idx != 5:
                if idx != 6:
                    if 0 <= s:
                        idx = idx + 1
                        s = s
                        continue 
                    idx = idx + 1
                    s = 0
                    continue 
                _153 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                require 0 < mem[_153]
                mem[_153 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                require 1 < mem[_153]
                mem[_153 + 64] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                mem[_153 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_153 + 100] = 0
                mem[_153 + 132] = 64
                mem[_153 + 164] = mem[_153]
                t = 0
                while t < 32 * mem[_153]:
                    mem[t + _153 + 196] = mem[t + _153 + 32]
                    t = t + 32
                    continue 
                require ext_code.size(0x53c153a0df7e050bbefbb70ee9632061f12795fb)
                staticcall 0x53c153a0df7e050bbefbb70ee9632061f12795fb.getAmountsOut(uint256 rg1, address[] rg2) with:
                        gas gas_remaining wei
                       args 0, 64, mem[_153 + 164 len (32 * mem[_153]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_153 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _153 + ceil32(return_data.size) + 96
                require return_data.size >= 32
                _595 = mem[_153 + 96 len 4], 0
                require mem[_153 + 96 len 4], 0 <= 4294967296
                require mem[_153 + 96 len 4], 0 + 32 <= return_data.size
                require mem[_153 + mem[_153 + 96 len 4], 0 + 96] <= 4294967296 and mem[_153 + 96 len 4], 0 + (32 * mem[_153 + mem[_153 + 96 len 4], 0 + 96]) + 32 <= return_data.size
                mem[_153 + ceil32(return_data.size) + 96] = mem[_153 + mem[_153 + 96 len 4], 0 + 96]
                _715 = mem[_153 + _595 + 96]
                t = 0
                while t < 32 * _715:
                    mem[t + _153 + ceil32(return_data.size) + 128] = mem[t + _153 + _595 + 128]
                    t = t + 32
                    continue 
                mem[64] = (32 * _715) + _153 + ceil32(return_data.size) + 128
                require mem[_153 + ceil32(return_data.size) + 96] - 1 < mem[_153 + ceil32(return_data.size) + 96]
                if mem[(32 * mem[_153 + ceil32(return_data.size) + 96] - 1) + _153 + ceil32(return_data.size) + 128] <= s:
                    idx = idx + 1
                    s = s
                    continue 
                idx = idx + 1
                s = mem[(32 * mem[_153 + ceil32(return_data.size) + 96] - 1) + _153 + ceil32(return_data.size) + 128]
                continue 
            _155 = mem[64]
            mem[mem[64]] = 3
            mem[64] = mem[64] + 128
            require 0 < mem[_155]
            mem[_155 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
            require 1 < mem[_155]
            mem[_155 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
            require 2 < mem[_155]
            mem[_155 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
            mem[_155 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[_155 + 132] = 0
            mem[_155 + 164] = 64
            mem[_155 + 196] = mem[_155]
            t = 0
            while t < 32 * mem[_155]:
                mem[t + _155 + 228] = mem[t + _155 + 32]
                t = t + 32
                continue 
            require ext_code.size(0x53c153a0df7e050bbefbb70ee9632061f12795fb)
            staticcall 0x53c153a0df7e050bbefbb70ee9632061f12795fb.getAmountsOut(uint256 rg1, address[] rg2) with:
                    gas gas_remaining wei
                   args 0, 64, mem[_155 + 196 len (32 * mem[_155]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[_155 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = _155 + ceil32(return_data.size) + 128
            require return_data.size >= 32
            _597 = mem[_155 + 128 len 4], 0
            require mem[_155 + 128 len 4], 0 <= 4294967296
            require mem[_155 + 128 len 4], 0 + 32 <= return_data.size
            require mem[_155 + mem[_155 + 128 len 4], 0 + 128] <= 4294967296 and mem[_155 + 128 len 4], 0 + (32 * mem[_155 + mem[_155 + 128 len 4], 0 + 128]) + 32 <= return_data.size
            mem[_155 + ceil32(return_data.size) + 128] = mem[_155 + mem[_155 + 128 len 4], 0 + 128]
            _716 = mem[_155 + _597 + 128]
            t = 0
            while t < 32 * _716:
                mem[t + _155 + ceil32(return_data.size) + 160] = mem[t + _155 + _597 + 160]
                t = t + 32
                continue 
            mem[64] = (32 * _716) + _155 + ceil32(return_data.size) + 160
            require mem[_155 + ceil32(return_data.size) + 128] - 1 < mem[_155 + ceil32(return_data.size) + 128]
            if mem[(32 * mem[_155 + ceil32(return_data.size) + 128] - 1) + _155 + ceil32(return_data.size) + 160] <= s:
                idx = idx + 1
                s = s
                continue 
            idx = idx + 1
            s = mem[(32 * mem[_155 + ceil32(return_data.size) + 128] - 1) + _155 + ceil32(return_data.size) + 160]
            continue 
        idx = 0
        t = 0
        while idx < 7:
            if not idx:
                mem[mem[64] + 4] = 0
                mem[mem[64] + 36] = 1
                mem[mem[64] + 68] = s
                require ext_code.size(0x27e611fd27b276acbd5ffd632e5eaebec9761e40)
                staticcall 0x27e611fd27b276acbd5ffd632e5eaebec9761e40.get_dy(int128 rg1, int128 rg2, uint256 rg3) with:
                        gas gas_remaining wei
                       args 0, 1, s
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] <= t:
                    idx = idx + 1
                    t = t
                    continue 
                idx = idx + 1
                t = ext_call.return_data[0]
                continue 
            if 1 == idx:
                mem[mem[64] + 4] = 1
                mem[mem[64] + 36] = 2
                mem[mem[64] + 68] = s
                require ext_code.size(0x83e5f18da720119ff363cf63417628eb0e9fd523)
                staticcall 0x83e5f18da720119ff363cf63417628eb0e9fd523.get_dy(int128 rg1, int128 rg2, uint256 rg3) with:
                        gas gas_remaining wei
                       args 1, 2, s
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] <= t:
                    idx = idx + 1
                    t = t
                    continue 
                idx = idx + 1
                t = ext_call.return_data[0]
                continue 
            if 2 == idx:
                _661 = mem[64]
                mem[mem[64]] = 3
                mem[64] = mem[64] + 128
                require 0 < mem[_661]
                mem[_661 + 32] = 0x8d11ec38a3eb5e956b052f67da8bdc9bef8abf3e
                require 1 < mem[_661]
                mem[_661 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                require 2 < mem[_661]
                mem[_661 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                mem[_661 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_661 + 132] = s
                mem[_661 + 164] = 64
                mem[_661 + 196] = mem[_661]
                u = 0
                while u < 32 * mem[_661]:
                    mem[u + _661 + 228] = mem[u + _661 + 32]
                    u = u + 32
                    continue 
                require ext_code.size(0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52)
                staticcall 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52.getAmountsOut(uint256 rg1, address[] rg2) with:
                        gas gas_remaining wei
                       args s, 64, mem[_661 + 196 len (32 * mem[_661]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_661 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _661 + ceil32(return_data.size) + 128
                require return_data.size >= 32
                _1855 = mem[_661 + 128 len 4], Mask(224, 32, s) >> 32
                require mem[_661 + 128 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                require mem[_661 + 128 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                require mem[_661 + mem[_661 + 128 len 4], Mask(224, 32, s) >> 32 + 128] <= 4294967296 and mem[_661 + 128 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_661 + mem[_661 + 128 len 4], Mask(224, 32, s) >> 32 + 128]) + 32 <= return_data.size
                mem[_661 + ceil32(return_data.size) + 128] = mem[_661 + mem[_661 + 128 len 4], Mask(224, 32, s) >> 32 + 128]
                _1951 = mem[_661 + _1855 + 128]
                s = 0
                while s < 32 * _1951:
                    mem[s + _661 + ceil32(return_data.size) + 160] = mem[s + _661 + _1855 + 160]
                    s = s + 32
                    continue 
                mem[64] = (32 * _1951) + _661 + ceil32(return_data.size) + 160
                require mem[_661 + ceil32(return_data.size) + 128] - 1 < mem[_661 + ceil32(return_data.size) + 128]
                if mem[(32 * mem[_661 + ceil32(return_data.size) + 128] - 1) + _661 + ceil32(return_data.size) + 160] <= t:
                    idx = idx + 1
                    t = t
                    continue 
                idx = idx + 1
                t = mem[(32 * mem[_661 + ceil32(return_data.size) + 128] - 1) + _661 + ceil32(return_data.size) + 160]
                continue 
            if 3 == idx:
                _707 = mem[64]
                mem[mem[64]] = 3
                mem[64] = mem[64] + 128
                require 0 < mem[_707]
                mem[_707 + 32] = 0x8d11ec38a3eb5e956b052f67da8bdc9bef8abf3e
                require 1 < mem[_707]
                mem[_707 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                require 2 < mem[_707]
                mem[_707 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                mem[_707 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_707 + 132] = s
                mem[_707 + 164] = 64
                mem[_707 + 196] = mem[_707]
                u = 0
                while u < 32 * mem[_707]:
                    mem[u + _707 + 228] = mem[u + _707 + 32]
                    u = u + 32
                    continue 
                require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c29.getAmountsOut(uint256 rg1, address[] rg2) with:
                        gas gas_remaining wei
                       args s, 64, mem[_707 + 196 len (32 * mem[_707]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_707 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _707 + ceil32(return_data.size) + 128
                require return_data.size >= 32
                _1853 = mem[_707 + 128 len 4], Mask(224, 32, s) >> 32
                require mem[_707 + 128 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                require mem[_707 + 128 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                require mem[_707 + mem[_707 + 128 len 4], Mask(224, 32, s) >> 32 + 128] <= 4294967296 and mem[_707 + 128 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_707 + mem[_707 + 128 len 4], Mask(224, 32, s) >> 32 + 128]) + 32 <= return_data.size
                mem[_707 + ceil32(return_data.size) + 128] = mem[_707 + mem[_707 + 128 len 4], Mask(224, 32, s) >> 32 + 128]
                _1950 = mem[_707 + _1853 + 128]
                s = 0
                while s < 32 * _1950:
                    mem[s + _707 + ceil32(return_data.size) + 160] = mem[s + _707 + _1853 + 160]
                    s = s + 32
                    continue 
                mem[64] = (32 * _1950) + _707 + ceil32(return_data.size) + 160
                require mem[_707 + ceil32(return_data.size) + 128] - 1 < mem[_707 + ceil32(return_data.size) + 128]
                if mem[(32 * mem[_707 + ceil32(return_data.size) + 128] - 1) + _707 + ceil32(return_data.size) + 160] <= t:
                    idx = idx + 1
                    t = t
                    continue 
                idx = idx + 1
                t = mem[(32 * mem[_707 + ceil32(return_data.size) + 128] - 1) + _707 + ceil32(return_data.size) + 160]
                continue 
            if 4 == idx:
                _751 = mem[64]
                mem[mem[64]] = 3
                mem[64] = mem[64] + 128
                require 0 < mem[_751]
                mem[_751 + 32] = 0x8d11ec38a3eb5e956b052f67da8bdc9bef8abf3e
                require 1 < mem[_751]
                mem[_751 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                require 2 < mem[_751]
                mem[_751 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                mem[_751 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_751 + 132] = s
                mem[_751 + 164] = 64
                mem[_751 + 196] = mem[_751]
                u = 0
                while u < 32 * mem[_751]:
                    mem[u + _751 + 228] = mem[u + _751 + 32]
                    u = u + 32
                    continue 
                require ext_code.size(0x7b17021fcb7bc888641dc3bedfed3734fcaf2c87)
                staticcall 0x7b17021fcb7bc888641dc3bedfed3734fcaf2c87.getAmountsOut(uint256 rg1, address[] rg2) with:
                        gas gas_remaining wei
                       args s, 64, mem[_751 + 196 len (32 * mem[_751]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_751 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _751 + ceil32(return_data.size) + 128
                require return_data.size >= 32
                _1851 = mem[_751 + 128 len 4], Mask(224, 32, s) >> 32
                require mem[_751 + 128 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                require mem[_751 + 128 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                require mem[_751 + mem[_751 + 128 len 4], Mask(224, 32, s) >> 32 + 128] <= 4294967296 and mem[_751 + 128 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_751 + mem[_751 + 128 len 4], Mask(224, 32, s) >> 32 + 128]) + 32 <= return_data.size
                mem[_751 + ceil32(return_data.size) + 128] = mem[_751 + mem[_751 + 128 len 4], Mask(224, 32, s) >> 32 + 128]
                _1949 = mem[_751 + _1851 + 128]
                s = 0
                while s < 32 * _1949:
                    mem[s + _751 + ceil32(return_data.size) + 160] = mem[s + _751 + _1851 + 160]
                    s = s + 32
                    continue 
                mem[64] = (32 * _1949) + _751 + ceil32(return_data.size) + 160
                require mem[_751 + ceil32(return_data.size) + 128] - 1 < mem[_751 + ceil32(return_data.size) + 128]
                if mem[(32 * mem[_751 + ceil32(return_data.size) + 128] - 1) + _751 + ceil32(return_data.size) + 160] <= t:
                    idx = idx + 1
                    t = t
                    continue 
                idx = idx + 1
                t = mem[(32 * mem[_751 + ceil32(return_data.size) + 128] - 1) + _751 + ceil32(return_data.size) + 160]
                continue 
            if idx != 5:
                if idx != 6:
                    if s <= t:
                        idx = idx + 1
                        t = t
                        continue 
                    idx = idx + 1
                    t = s
                    continue 
                _817 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                require 0 < mem[_817]
                mem[_817 + 32] = 0x8d11ec38a3eb5e956b052f67da8bdc9bef8abf3e
                require 1 < mem[_817]
                mem[_817 + 64] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                mem[_817 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_817 + 100] = s
                mem[_817 + 132] = 64
                mem[_817 + 164] = mem[_817]
                u = 0
                while u < 32 * mem[_817]:
                    mem[u + _817 + 196] = mem[u + _817 + 32]
                    u = u + 32
                    continue 
                require ext_code.size(0x53c153a0df7e050bbefbb70ee9632061f12795fb)
                staticcall 0x53c153a0df7e050bbefbb70ee9632061f12795fb.getAmountsOut(uint256 rg1, address[] rg2) with:
                        gas gas_remaining wei
                       args s, 64, mem[_817 + 164 len (32 * mem[_817]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_817 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _817 + ceil32(return_data.size) + 96
                require return_data.size >= 32
                _1847 = mem[_817 + 96 len 4], Mask(224, 32, s) >> 32
                require mem[_817 + 96 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                require mem[_817 + 96 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                require mem[_817 + mem[_817 + 96 len 4], Mask(224, 32, s) >> 32 + 96] <= 4294967296 and mem[_817 + 96 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_817 + mem[_817 + 96 len 4], Mask(224, 32, s) >> 32 + 96]) + 32 <= return_data.size
                mem[_817 + ceil32(return_data.size) + 96] = mem[_817 + mem[_817 + 96 len 4], Mask(224, 32, s) >> 32 + 96]
                _1947 = mem[_817 + _1847 + 96]
                s = 0
                while s < 32 * _1947:
                    mem[s + _817 + ceil32(return_data.size) + 128] = mem[s + _817 + _1847 + 128]
                    s = s + 32
                    continue 
                mem[64] = (32 * _1947) + _817 + ceil32(return_data.size) + 128
                require mem[_817 + ceil32(return_data.size) + 96] - 1 < mem[_817 + ceil32(return_data.size) + 96]
                if mem[(32 * mem[_817 + ceil32(return_data.size) + 96] - 1) + _817 + ceil32(return_data.size) + 128] <= t:
                    idx = idx + 1
                    t = t
                    continue 
                idx = idx + 1
                t = mem[(32 * mem[_817 + ceil32(return_data.size) + 96] - 1) + _817 + ceil32(return_data.size) + 128]
                continue 
            _819 = mem[64]
            mem[mem[64]] = 3
            mem[64] = mem[64] + 128
            require 0 < mem[_819]
            mem[_819 + 32] = 0x8d11ec38a3eb5e956b052f67da8bdc9bef8abf3e
            require 1 < mem[_819]
            mem[_819 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
            require 2 < mem[_819]
            mem[_819 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
            mem[_819 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[_819 + 132] = s
            mem[_819 + 164] = 64
            mem[_819 + 196] = mem[_819]
            u = 0
            while u < 32 * mem[_819]:
                mem[u + _819 + 228] = mem[u + _819 + 32]
                u = u + 32
                continue 
            require ext_code.size(0x53c153a0df7e050bbefbb70ee9632061f12795fb)
            staticcall 0x53c153a0df7e050bbefbb70ee9632061f12795fb.getAmountsOut(uint256 rg1, address[] rg2) with:
                    gas gas_remaining wei
                   args s, 64, mem[_819 + 196 len (32 * mem[_819]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[_819 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = _819 + ceil32(return_data.size) + 128
            require return_data.size >= 32
            _1849 = mem[_819 + 128 len 4], Mask(224, 32, s) >> 32
            require mem[_819 + 128 len 4], Mask(224, 32, s) >> 32 <= 4294967296
            require mem[_819 + 128 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
            require mem[_819 + mem[_819 + 128 len 4], Mask(224, 32, s) >> 32 + 128] <= 4294967296 and mem[_819 + 128 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_819 + mem[_819 + 128 len 4], Mask(224, 32, s) >> 32 + 128]) + 32 <= return_data.size
            mem[_819 + ceil32(return_data.size) + 128] = mem[_819 + mem[_819 + 128 len 4], Mask(224, 32, s) >> 32 + 128]
            _1948 = mem[_819 + _1849 + 128]
            s = 0
            while s < 32 * _1948:
                mem[s + _819 + ceil32(return_data.size) + 160] = mem[s + _819 + _1849 + 160]
                s = s + 32
                continue 
            mem[64] = (32 * _1948) + _819 + ceil32(return_data.size) + 160
            require mem[_819 + ceil32(return_data.size) + 128] - 1 < mem[_819 + ceil32(return_data.size) + 128]
            if mem[(32 * mem[_819 + ceil32(return_data.size) + 128] - 1) + _819 + ceil32(return_data.size) + 160] <= t:
                idx = idx + 1
                t = t
                continue 
            idx = idx + 1
            t = mem[(32 * mem[_819 + ceil32(return_data.size) + 128] - 1) + _819 + ceil32(return_data.size) + 160]
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
        while idx < 7:
            if not idx:
                mem[mem[64] + 4] = 1
                mem[mem[64] + 36] = 0
                mem[mem[64] + 68] = 10^6 * sub_7d0b6809
                require ext_code.size(0x27e611fd27b276acbd5ffd632e5eaebec9761e40)
                staticcall 0x27e611fd27b276acbd5ffd632e5eaebec9761e40.get_dy(int128 rg1, int128 rg2, uint256 rg3) with:
                        gas gas_remaining wei
                       args 1, 0, 10^6 * sub_7d0b6809
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] <= s:
                    idx = idx + 1
                    s = s
                    continue 
                idx = idx + 1
                s = ext_call.return_data[0]
                continue 
            if 1 == idx:
                mem[mem[64] + 4] = 2
                mem[mem[64] + 36] = 1
                mem[mem[64] + 68] = 10^6 * sub_7d0b6809
                require ext_code.size(0x83e5f18da720119ff363cf63417628eb0e9fd523)
                staticcall 0x83e5f18da720119ff363cf63417628eb0e9fd523.get_dy(int128 rg1, int128 rg2, uint256 rg3) with:
                        gas gas_remaining wei
                       args 2, 1, 10^6 * sub_7d0b6809
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] <= s:
                    idx = idx + 1
                    s = s
                    continue 
                idx = idx + 1
                s = ext_call.return_data[0]
                continue 
            if 2 == idx:
                _95 = mem[64]
                mem[mem[64]] = 3
                mem[64] = mem[64] + 128
                require 0 < mem[_95]
                mem[_95 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                require 1 < mem[_95]
                mem[_95 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                require 2 < mem[_95]
                mem[_95 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                mem[_95 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_95 + 132] = 10^6 * sub_7d0b6809
                mem[_95 + 164] = 64
                mem[_95 + 196] = mem[_95]
                t = 0
                while t < 32 * mem[_95]:
                    mem[t + _95 + 228] = mem[t + _95 + 32]
                    t = t + 32
                    continue 
                require ext_code.size(0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52)
                staticcall 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52.getAmountsOut(uint256 rg1, address[] rg2) with:
                        gas gas_remaining wei
                       args 10^6 * sub_7d0b6809, 64, mem[_95 + 196 len (32 * mem[_95]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_95 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _95 + ceil32(return_data.size) + 128
                require return_data.size >= 32
                _583 = mem[_95 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32
                require mem[_95 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 <= 4294967296
                require mem[_95 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 32 <= return_data.size
                require mem[_95 + mem[_95 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 128] <= 4294967296 and mem[_95 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + (32 * mem[_95 + mem[_95 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 128]) + 32 <= return_data.size
                mem[_95 + ceil32(return_data.size) + 128] = mem[_95 + mem[_95 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 128]
                _689 = mem[_95 + _583 + 128]
                t = 0
                while t < 32 * _689:
                    mem[t + _95 + ceil32(return_data.size) + 160] = mem[t + _95 + _583 + 160]
                    t = t + 32
                    continue 
                mem[64] = (32 * _689) + _95 + ceil32(return_data.size) + 160
                require mem[_95 + ceil32(return_data.size) + 128] - 1 < mem[_95 + ceil32(return_data.size) + 128]
                if mem[(32 * mem[_95 + ceil32(return_data.size) + 128] - 1) + _95 + ceil32(return_data.size) + 160] <= s:
                    idx = idx + 1
                    s = s
                    continue 
                idx = idx + 1
                s = mem[(32 * mem[_95 + ceil32(return_data.size) + 128] - 1) + _95 + ceil32(return_data.size) + 160]
                continue 
            if 3 == idx:
                _103 = mem[64]
                mem[mem[64]] = 3
                mem[64] = mem[64] + 128
                require 0 < mem[_103]
                mem[_103 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                require 1 < mem[_103]
                mem[_103 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                require 2 < mem[_103]
                mem[_103 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                mem[_103 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_103 + 132] = 10^6 * sub_7d0b6809
                mem[_103 + 164] = 64
                mem[_103 + 196] = mem[_103]
                t = 0
                while t < 32 * mem[_103]:
                    mem[t + _103 + 228] = mem[t + _103 + 32]
                    t = t + 32
                    continue 
                require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c29.getAmountsOut(uint256 rg1, address[] rg2) with:
                        gas gas_remaining wei
                       args 10^6 * sub_7d0b6809, 64, mem[_103 + 196 len (32 * mem[_103]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_103 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _103 + ceil32(return_data.size) + 128
                require return_data.size >= 32
                _581 = mem[_103 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32
                require mem[_103 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 <= 4294967296
                require mem[_103 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 32 <= return_data.size
                require mem[_103 + mem[_103 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 128] <= 4294967296 and mem[_103 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + (32 * mem[_103 + mem[_103 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 128]) + 32 <= return_data.size
                mem[_103 + ceil32(return_data.size) + 128] = mem[_103 + mem[_103 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 128]
                _688 = mem[_103 + _581 + 128]
                t = 0
                while t < 32 * _688:
                    mem[t + _103 + ceil32(return_data.size) + 160] = mem[t + _103 + _581 + 160]
                    t = t + 32
                    continue 
                mem[64] = (32 * _688) + _103 + ceil32(return_data.size) + 160
                require mem[_103 + ceil32(return_data.size) + 128] - 1 < mem[_103 + ceil32(return_data.size) + 128]
                if mem[(32 * mem[_103 + ceil32(return_data.size) + 128] - 1) + _103 + ceil32(return_data.size) + 160] <= s:
                    idx = idx + 1
                    s = s
                    continue 
                idx = idx + 1
                s = mem[(32 * mem[_103 + ceil32(return_data.size) + 128] - 1) + _103 + ceil32(return_data.size) + 160]
                continue 
            if 4 == idx:
                _123 = mem[64]
                mem[mem[64]] = 3
                mem[64] = mem[64] + 128
                require 0 < mem[_123]
                mem[_123 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                require 1 < mem[_123]
                mem[_123 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                require 2 < mem[_123]
                mem[_123 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                mem[_123 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_123 + 132] = 10^6 * sub_7d0b6809
                mem[_123 + 164] = 64
                mem[_123 + 196] = mem[_123]
                t = 0
                while t < 32 * mem[_123]:
                    mem[t + _123 + 228] = mem[t + _123 + 32]
                    t = t + 32
                    continue 
                require ext_code.size(0x7b17021fcb7bc888641dc3bedfed3734fcaf2c87)
                staticcall 0x7b17021fcb7bc888641dc3bedfed3734fcaf2c87.getAmountsOut(uint256 rg1, address[] rg2) with:
                        gas gas_remaining wei
                       args 10^6 * sub_7d0b6809, 64, mem[_123 + 196 len (32 * mem[_123]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_123 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _123 + ceil32(return_data.size) + 128
                require return_data.size >= 32
                _579 = mem[_123 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32
                require mem[_123 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 <= 4294967296
                require mem[_123 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 32 <= return_data.size
                require mem[_123 + mem[_123 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 128] <= 4294967296 and mem[_123 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + (32 * mem[_123 + mem[_123 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 128]) + 32 <= return_data.size
                mem[_123 + ceil32(return_data.size) + 128] = mem[_123 + mem[_123 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 128]
                _687 = mem[_123 + _579 + 128]
                t = 0
                while t < 32 * _687:
                    mem[t + _123 + ceil32(return_data.size) + 160] = mem[t + _123 + _579 + 160]
                    t = t + 32
                    continue 
                mem[64] = (32 * _687) + _123 + ceil32(return_data.size) + 160
                require mem[_123 + ceil32(return_data.size) + 128] - 1 < mem[_123 + ceil32(return_data.size) + 128]
                if mem[(32 * mem[_123 + ceil32(return_data.size) + 128] - 1) + _123 + ceil32(return_data.size) + 160] <= s:
                    idx = idx + 1
                    s = s
                    continue 
                idx = idx + 1
                s = mem[(32 * mem[_123 + ceil32(return_data.size) + 128] - 1) + _123 + ceil32(return_data.size) + 160]
                continue 
            if idx != 5:
                if idx != 6:
                    if 10^6 * sub_7d0b6809 <= s:
                        idx = idx + 1
                        s = s
                        continue 
                    idx = idx + 1
                    s = 10^6 * sub_7d0b6809
                    continue 
                _143 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                require 0 < mem[_143]
                mem[_143 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                require 1 < mem[_143]
                mem[_143 + 64] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                mem[_143 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_143 + 100] = 10^6 * sub_7d0b6809
                mem[_143 + 132] = 64
                mem[_143 + 164] = mem[_143]
                t = 0
                while t < 32 * mem[_143]:
                    mem[t + _143 + 196] = mem[t + _143 + 32]
                    t = t + 32
                    continue 
                require ext_code.size(0x53c153a0df7e050bbefbb70ee9632061f12795fb)
                staticcall 0x53c153a0df7e050bbefbb70ee9632061f12795fb.getAmountsOut(uint256 rg1, address[] rg2) with:
                        gas gas_remaining wei
                       args 10^6 * sub_7d0b6809, 64, mem[_143 + 164 len (32 * mem[_143]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_143 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _143 + ceil32(return_data.size) + 96
                require return_data.size >= 32
                _575 = mem[_143 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32
                require mem[_143 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 <= 4294967296
                require mem[_143 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 32 <= return_data.size
                require mem[_143 + mem[_143 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 96] <= 4294967296 and mem[_143 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + (32 * mem[_143 + mem[_143 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 96]) + 32 <= return_data.size
                mem[_143 + ceil32(return_data.size) + 96] = mem[_143 + mem[_143 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 96]
                _685 = mem[_143 + _575 + 96]
                t = 0
                while t < 32 * _685:
                    mem[t + _143 + ceil32(return_data.size) + 128] = mem[t + _143 + _575 + 128]
                    t = t + 32
                    continue 
                mem[64] = (32 * _685) + _143 + ceil32(return_data.size) + 128
                require mem[_143 + ceil32(return_data.size) + 96] - 1 < mem[_143 + ceil32(return_data.size) + 96]
                if mem[(32 * mem[_143 + ceil32(return_data.size) + 96] - 1) + _143 + ceil32(return_data.size) + 128] <= s:
                    idx = idx + 1
                    s = s
                    continue 
                idx = idx + 1
                s = mem[(32 * mem[_143 + ceil32(return_data.size) + 96] - 1) + _143 + ceil32(return_data.size) + 128]
                continue 
            _145 = mem[64]
            mem[mem[64]] = 3
            mem[64] = mem[64] + 128
            require 0 < mem[_145]
            mem[_145 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
            require 1 < mem[_145]
            mem[_145 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
            require 2 < mem[_145]
            mem[_145 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
            mem[_145 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[_145 + 132] = 10^6 * sub_7d0b6809
            mem[_145 + 164] = 64
            mem[_145 + 196] = mem[_145]
            t = 0
            while t < 32 * mem[_145]:
                mem[t + _145 + 228] = mem[t + _145 + 32]
                t = t + 32
                continue 
            require ext_code.size(0x53c153a0df7e050bbefbb70ee9632061f12795fb)
            staticcall 0x53c153a0df7e050bbefbb70ee9632061f12795fb.getAmountsOut(uint256 rg1, address[] rg2) with:
                    gas gas_remaining wei
                   args 10^6 * sub_7d0b6809, 64, mem[_145 + 196 len (32 * mem[_145]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[_145 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = _145 + ceil32(return_data.size) + 128
            require return_data.size >= 32
            _577 = mem[_145 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32
            require mem[_145 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 <= 4294967296
            require mem[_145 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 32 <= return_data.size
            require mem[_145 + mem[_145 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 128] <= 4294967296 and mem[_145 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + (32 * mem[_145 + mem[_145 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 128]) + 32 <= return_data.size
            mem[_145 + ceil32(return_data.size) + 128] = mem[_145 + mem[_145 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 128]
            _686 = mem[_145 + _577 + 128]
            t = 0
            while t < 32 * _686:
                mem[t + _145 + ceil32(return_data.size) + 160] = mem[t + _145 + _577 + 160]
                t = t + 32
                continue 
            mem[64] = (32 * _686) + _145 + ceil32(return_data.size) + 160
            require mem[_145 + ceil32(return_data.size) + 128] - 1 < mem[_145 + ceil32(return_data.size) + 128]
            if mem[(32 * mem[_145 + ceil32(return_data.size) + 128] - 1) + _145 + ceil32(return_data.size) + 160] <= s:
                idx = idx + 1
                s = s
                continue 
            idx = idx + 1
            s = mem[(32 * mem[_145 + ceil32(return_data.size) + 128] - 1) + _145 + ceil32(return_data.size) + 160]
            continue 
        idx = 0
        t = 0
        while idx < 7:
            if not idx:
                mem[mem[64] + 4] = 0
                mem[mem[64] + 36] = 1
                mem[mem[64] + 68] = s
                require ext_code.size(0x27e611fd27b276acbd5ffd632e5eaebec9761e40)
                staticcall 0x27e611fd27b276acbd5ffd632e5eaebec9761e40.get_dy(int128 rg1, int128 rg2, uint256 rg3) with:
                        gas gas_remaining wei
                       args 0, 1, s
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] <= t:
                    idx = idx + 1
                    t = t
                    continue 
                idx = idx + 1
                t = ext_call.return_data[0]
                continue 
            if 1 == idx:
                mem[mem[64] + 4] = 1
                mem[mem[64] + 36] = 2
                mem[mem[64] + 68] = s
                require ext_code.size(0x83e5f18da720119ff363cf63417628eb0e9fd523)
                staticcall 0x83e5f18da720119ff363cf63417628eb0e9fd523.get_dy(int128 rg1, int128 rg2, uint256 rg3) with:
                        gas gas_remaining wei
                       args 1, 2, s
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] <= t:
                    idx = idx + 1
                    t = t
                    continue 
                idx = idx + 1
                t = ext_call.return_data[0]
                continue 
            if 2 == idx:
                _647 = mem[64]
                mem[mem[64]] = 3
                mem[64] = mem[64] + 128
                require 0 < mem[_647]
                mem[_647 + 32] = 0x8d11ec38a3eb5e956b052f67da8bdc9bef8abf3e
                require 1 < mem[_647]
                mem[_647 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                require 2 < mem[_647]
                mem[_647 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                mem[_647 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_647 + 132] = s
                mem[_647 + 164] = 64
                mem[_647 + 196] = mem[_647]
                u = 0
                while u < 32 * mem[_647]:
                    mem[u + _647 + 228] = mem[u + _647 + 32]
                    u = u + 32
                    continue 
                require ext_code.size(0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52)
                staticcall 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52.getAmountsOut(uint256 rg1, address[] rg2) with:
                        gas gas_remaining wei
                       args s, 64, mem[_647 + 196 len (32 * mem[_647]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_647 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _647 + ceil32(return_data.size) + 128
                require return_data.size >= 32
                _1815 = mem[_647 + 128 len 4], Mask(224, 32, s) >> 32
                require mem[_647 + 128 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                require mem[_647 + 128 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                require mem[_647 + mem[_647 + 128 len 4], Mask(224, 32, s) >> 32 + 128] <= 4294967296 and mem[_647 + 128 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_647 + mem[_647 + 128 len 4], Mask(224, 32, s) >> 32 + 128]) + 32 <= return_data.size
                mem[_647 + ceil32(return_data.size) + 128] = mem[_647 + mem[_647 + 128 len 4], Mask(224, 32, s) >> 32 + 128]
                _1931 = mem[_647 + _1815 + 128]
                s = 0
                while s < 32 * _1931:
                    mem[s + _647 + ceil32(return_data.size) + 160] = mem[s + _647 + _1815 + 160]
                    s = s + 32
                    continue 
                mem[64] = (32 * _1931) + _647 + ceil32(return_data.size) + 160
                require mem[_647 + ceil32(return_data.size) + 128] - 1 < mem[_647 + ceil32(return_data.size) + 128]
                if mem[(32 * mem[_647 + ceil32(return_data.size) + 128] - 1) + _647 + ceil32(return_data.size) + 160] <= t:
                    idx = idx + 1
                    t = t
                    continue 
                idx = idx + 1
                t = mem[(32 * mem[_647 + ceil32(return_data.size) + 128] - 1) + _647 + ceil32(return_data.size) + 160]
                continue 
            if 3 == idx:
                _677 = mem[64]
                mem[mem[64]] = 3
                mem[64] = mem[64] + 128
                require 0 < mem[_677]
                mem[_677 + 32] = 0x8d11ec38a3eb5e956b052f67da8bdc9bef8abf3e
                require 1 < mem[_677]
                mem[_677 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                require 2 < mem[_677]
                mem[_677 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                mem[_677 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_677 + 132] = s
                mem[_677 + 164] = 64
                mem[_677 + 196] = mem[_677]
                u = 0
                while u < 32 * mem[_677]:
                    mem[u + _677 + 228] = mem[u + _677 + 32]
                    u = u + 32
                    continue 
                require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c29.getAmountsOut(uint256 rg1, address[] rg2) with:
                        gas gas_remaining wei
                       args s, 64, mem[_677 + 196 len (32 * mem[_677]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_677 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _677 + ceil32(return_data.size) + 128
                require return_data.size >= 32
                _1813 = mem[_677 + 128 len 4], Mask(224, 32, s) >> 32
                require mem[_677 + 128 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                require mem[_677 + 128 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                require mem[_677 + mem[_677 + 128 len 4], Mask(224, 32, s) >> 32 + 128] <= 4294967296 and mem[_677 + 128 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_677 + mem[_677 + 128 len 4], Mask(224, 32, s) >> 32 + 128]) + 32 <= return_data.size
                mem[_677 + ceil32(return_data.size) + 128] = mem[_677 + mem[_677 + 128 len 4], Mask(224, 32, s) >> 32 + 128]
                _1930 = mem[_677 + _1813 + 128]
                s = 0
                while s < 32 * _1930:
                    mem[s + _677 + ceil32(return_data.size) + 160] = mem[s + _677 + _1813 + 160]
                    s = s + 32
                    continue 
                mem[64] = (32 * _1930) + _677 + ceil32(return_data.size) + 160
                require mem[_677 + ceil32(return_data.size) + 128] - 1 < mem[_677 + ceil32(return_data.size) + 128]
                if mem[(32 * mem[_677 + ceil32(return_data.size) + 128] - 1) + _677 + ceil32(return_data.size) + 160] <= t:
                    idx = idx + 1
                    t = t
                    continue 
                idx = idx + 1
                t = mem[(32 * mem[_677 + ceil32(return_data.size) + 128] - 1) + _677 + ceil32(return_data.size) + 160]
                continue 
            if 4 == idx:
                _735 = mem[64]
                mem[mem[64]] = 3
                mem[64] = mem[64] + 128
                require 0 < mem[_735]
                mem[_735 + 32] = 0x8d11ec38a3eb5e956b052f67da8bdc9bef8abf3e
                require 1 < mem[_735]
                mem[_735 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                require 2 < mem[_735]
                mem[_735 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                mem[_735 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_735 + 132] = s
                mem[_735 + 164] = 64
                mem[_735 + 196] = mem[_735]
                u = 0
                while u < 32 * mem[_735]:
                    mem[u + _735 + 228] = mem[u + _735 + 32]
                    u = u + 32
                    continue 
                require ext_code.size(0x7b17021fcb7bc888641dc3bedfed3734fcaf2c87)
                staticcall 0x7b17021fcb7bc888641dc3bedfed3734fcaf2c87.getAmountsOut(uint256 rg1, address[] rg2) with:
                        gas gas_remaining wei
                       args s, 64, mem[_735 + 196 len (32 * mem[_735]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_735 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _735 + ceil32(return_data.size) + 128
                require return_data.size >= 32
                _1811 = mem[_735 + 128 len 4], Mask(224, 32, s) >> 32
                require mem[_735 + 128 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                require mem[_735 + 128 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                require mem[_735 + mem[_735 + 128 len 4], Mask(224, 32, s) >> 32 + 128] <= 4294967296 and mem[_735 + 128 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_735 + mem[_735 + 128 len 4], Mask(224, 32, s) >> 32 + 128]) + 32 <= return_data.size
                mem[_735 + ceil32(return_data.size) + 128] = mem[_735 + mem[_735 + 128 len 4], Mask(224, 32, s) >> 32 + 128]
                _1929 = mem[_735 + _1811 + 128]
                s = 0
                while s < 32 * _1929:
                    mem[s + _735 + ceil32(return_data.size) + 160] = mem[s + _735 + _1811 + 160]
                    s = s + 32
                    continue 
                mem[64] = (32 * _1929) + _735 + ceil32(return_data.size) + 160
                require mem[_735 + ceil32(return_data.size) + 128] - 1 < mem[_735 + ceil32(return_data.size) + 128]
                if mem[(32 * mem[_735 + ceil32(return_data.size) + 128] - 1) + _735 + ceil32(return_data.size) + 160] <= t:
                    idx = idx + 1
                    t = t
                    continue 
                idx = idx + 1
                t = mem[(32 * mem[_735 + ceil32(return_data.size) + 128] - 1) + _735 + ceil32(return_data.size) + 160]
                continue 
            if idx != 5:
                if idx != 6:
                    if s <= t:
                        idx = idx + 1
                        t = t
                        continue 
                    idx = idx + 1
                    t = s
                    continue 
                _767 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                require 0 < mem[_767]
                mem[_767 + 32] = 0x8d11ec38a3eb5e956b052f67da8bdc9bef8abf3e
                require 1 < mem[_767]
                mem[_767 + 64] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                mem[_767 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_767 + 100] = s
                mem[_767 + 132] = 64
                mem[_767 + 164] = mem[_767]
                u = 0
                while u < 32 * mem[_767]:
                    mem[u + _767 + 196] = mem[u + _767 + 32]
                    u = u + 32
                    continue 
                require ext_code.size(0x53c153a0df7e050bbefbb70ee9632061f12795fb)
                staticcall 0x53c153a0df7e050bbefbb70ee9632061f12795fb.getAmountsOut(uint256 rg1, address[] rg2) with:
                        gas gas_remaining wei
                       args s, 64, mem[_767 + 164 len (32 * mem[_767]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_767 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _767 + ceil32(return_data.size) + 96
                require return_data.size >= 32
                _1807 = mem[_767 + 96 len 4], Mask(224, 32, s) >> 32
                require mem[_767 + 96 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                require mem[_767 + 96 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                require mem[_767 + mem[_767 + 96 len 4], Mask(224, 32, s) >> 32 + 96] <= 4294967296 and mem[_767 + 96 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_767 + mem[_767 + 96 len 4], Mask(224, 32, s) >> 32 + 96]) + 32 <= return_data.size
                mem[_767 + ceil32(return_data.size) + 96] = mem[_767 + mem[_767 + 96 len 4], Mask(224, 32, s) >> 32 + 96]
                _1927 = mem[_767 + _1807 + 96]
                s = 0
                while s < 32 * _1927:
                    mem[s + _767 + ceil32(return_data.size) + 128] = mem[s + _767 + _1807 + 128]
                    s = s + 32
                    continue 
                mem[64] = (32 * _1927) + _767 + ceil32(return_data.size) + 128
                require mem[_767 + ceil32(return_data.size) + 96] - 1 < mem[_767 + ceil32(return_data.size) + 96]
                if mem[(32 * mem[_767 + ceil32(return_data.size) + 96] - 1) + _767 + ceil32(return_data.size) + 128] <= t:
                    idx = idx + 1
                    t = t
                    continue 
                idx = idx + 1
                t = mem[(32 * mem[_767 + ceil32(return_data.size) + 96] - 1) + _767 + ceil32(return_data.size) + 128]
                continue 
            _769 = mem[64]
            mem[mem[64]] = 3
            mem[64] = mem[64] + 128
            require 0 < mem[_769]
            mem[_769 + 32] = 0x8d11ec38a3eb5e956b052f67da8bdc9bef8abf3e
            require 1 < mem[_769]
            mem[_769 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
            require 2 < mem[_769]
            mem[_769 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
            mem[_769 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[_769 + 132] = s
            mem[_769 + 164] = 64
            mem[_769 + 196] = mem[_769]
            u = 0
            while u < 32 * mem[_769]:
                mem[u + _769 + 228] = mem[u + _769 + 32]
                u = u + 32
                continue 
            require ext_code.size(0x53c153a0df7e050bbefbb70ee9632061f12795fb)
            staticcall 0x53c153a0df7e050bbefbb70ee9632061f12795fb.getAmountsOut(uint256 rg1, address[] rg2) with:
                    gas gas_remaining wei
                   args s, 64, mem[_769 + 196 len (32 * mem[_769]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[_769 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = _769 + ceil32(return_data.size) + 128
            require return_data.size >= 32
            _1809 = mem[_769 + 128 len 4], Mask(224, 32, s) >> 32
            require mem[_769 + 128 len 4], Mask(224, 32, s) >> 32 <= 4294967296
            require mem[_769 + 128 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
            require mem[_769 + mem[_769 + 128 len 4], Mask(224, 32, s) >> 32 + 128] <= 4294967296 and mem[_769 + 128 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_769 + mem[_769 + 128 len 4], Mask(224, 32, s) >> 32 + 128]) + 32 <= return_data.size
            mem[_769 + ceil32(return_data.size) + 128] = mem[_769 + mem[_769 + 128 len 4], Mask(224, 32, s) >> 32 + 128]
            _1928 = mem[_769 + _1809 + 128]
            s = 0
            while s < 32 * _1928:
                mem[s + _769 + ceil32(return_data.size) + 160] = mem[s + _769 + _1809 + 160]
                s = s + 32
                continue 
            mem[64] = (32 * _1928) + _769 + ceil32(return_data.size) + 160
            require mem[_769 + ceil32(return_data.size) + 128] - 1 < mem[_769 + ceil32(return_data.size) + 128]
            if mem[(32 * mem[_769 + ceil32(return_data.size) + 128] - 1) + _769 + ceil32(return_data.size) + 160] <= t:
                idx = idx + 1
                t = t
                continue 
            idx = idx + 1
            t = mem[(32 * mem[_769 + ceil32(return_data.size) + 128] - 1) + _769 + ceil32(return_data.size) + 160]
            continue 
    if maxBatch:
        if 10^6 * maxBatch / maxBatch != 10^6:
            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
    return 0, block.number
}

function sub_6835f3b8(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    mem[32] = 1
    if bool(stor1[address(msg.sender)]) != 1:
        revert with 0, 'Call not sent from the bot'
    if block.number > arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    40,
                    0x7554726164652068617320657870697265642064756520746f2070617373656420646561646c696e,
                    mem[204 len 24]
    if not sub_7d0b6809:
        mem[0] = msg.sender
        idx = 0
        s = 0
        while idx < 7:
            if not idx:
                mem[mem[64] + 4] = 1
                mem[mem[64] + 36] = 0
                mem[mem[64] + 68] = 0
                require ext_code.size(0x27e611fd27b276acbd5ffd632e5eaebec9761e40)
                staticcall 0x27e611fd27b276acbd5ffd632e5eaebec9761e40.get_dy(int128 rg1, int128 rg2, uint256 rg3) with:
                        gas gas_remaining wei
                       args 1, 0, 0
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] <= s:
                    idx = idx + 1
                    s = s
                    continue 
                idx = idx + 1
                s = ext_call.return_data[0]
                continue 
            if 1 == idx:
                mem[mem[64] + 4] = 2
                mem[mem[64] + 36] = 1
                mem[mem[64] + 68] = 0
                require ext_code.size(0x83e5f18da720119ff363cf63417628eb0e9fd523)
                staticcall 0x83e5f18da720119ff363cf63417628eb0e9fd523.get_dy(int128 rg1, int128 rg2, uint256 rg3) with:
                        gas gas_remaining wei
                       args 2, 1, 0
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] <= s:
                    idx = idx + 1
                    s = s
                    continue 
                idx = idx + 1
                s = ext_call.return_data[0]
                continue 
            if 2 == idx:
                _104 = mem[64]
                mem[mem[64]] = 3
                mem[64] = mem[64] + 128
                require 0 < mem[_104]
                mem[_104 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                require 1 < mem[_104]
                mem[_104 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                require 2 < mem[_104]
                mem[_104 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                mem[_104 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_104 + 132] = 0
                mem[_104 + 164] = 64
                mem[_104 + 196] = mem[_104]
                t = 0
                while t < 32 * mem[_104]:
                    mem[t + _104 + 228] = mem[t + _104 + 32]
                    t = t + 32
                    continue 
                require ext_code.size(0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52)
                staticcall 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52.getAmountsOut(uint256 rg1, address[] rg2) with:
                        gas gas_remaining wei
                       args 0, 64, mem[_104 + 196 len (32 * mem[_104]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_104 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _104 + ceil32(return_data.size) + 128
                require return_data.size >= 32
                _608 = mem[_104 + 128 len 4], 0
                require mem[_104 + 128 len 4], 0 <= 4294967296
                require mem[_104 + 128 len 4], 0 + 32 <= return_data.size
                require mem[_104 + mem[_104 + 128 len 4], 0 + 128] <= 4294967296 and mem[_104 + 128 len 4], 0 + (32 * mem[_104 + mem[_104 + 128 len 4], 0 + 128]) + 32 <= return_data.size
                mem[_104 + ceil32(return_data.size) + 128] = mem[_104 + mem[_104 + 128 len 4], 0 + 128]
                _712 = mem[_104 + _608 + 128]
                t = 0
                while t < 32 * _712:
                    mem[t + _104 + ceil32(return_data.size) + 160] = mem[t + _104 + _608 + 160]
                    t = t + 32
                    continue 
                mem[64] = (32 * _712) + _104 + ceil32(return_data.size) + 160
                require mem[_104 + ceil32(return_data.size) + 128] - 1 < mem[_104 + ceil32(return_data.size) + 128]
                if mem[(32 * mem[_104 + ceil32(return_data.size) + 128] - 1) + _104 + ceil32(return_data.size) + 160] <= s:
                    idx = idx + 1
                    s = s
                    continue 
                idx = idx + 1
                s = mem[(32 * mem[_104 + ceil32(return_data.size) + 128] - 1) + _104 + ceil32(return_data.size) + 160]
                continue 
            if 3 == idx:
                _118 = mem[64]
                mem[mem[64]] = 3
                mem[64] = mem[64] + 128
                require 0 < mem[_118]
                mem[_118 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                require 1 < mem[_118]
                mem[_118 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                require 2 < mem[_118]
                mem[_118 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                mem[_118 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_118 + 132] = 0
                mem[_118 + 164] = 64
                mem[_118 + 196] = mem[_118]
                t = 0
                while t < 32 * mem[_118]:
                    mem[t + _118 + 228] = mem[t + _118 + 32]
                    t = t + 32
                    continue 
                require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c29.getAmountsOut(uint256 rg1, address[] rg2) with:
                        gas gas_remaining wei
                       args 0, 64, mem[_118 + 196 len (32 * mem[_118]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_118 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _118 + ceil32(return_data.size) + 128
                require return_data.size >= 32
                _606 = mem[_118 + 128 len 4], 0
                require mem[_118 + 128 len 4], 0 <= 4294967296
                require mem[_118 + 128 len 4], 0 + 32 <= return_data.size
                require mem[_118 + mem[_118 + 128 len 4], 0 + 128] <= 4294967296 and mem[_118 + 128 len 4], 0 + (32 * mem[_118 + mem[_118 + 128 len 4], 0 + 128]) + 32 <= return_data.size
                mem[_118 + ceil32(return_data.size) + 128] = mem[_118 + mem[_118 + 128 len 4], 0 + 128]
                _711 = mem[_118 + _606 + 128]
                t = 0
                while t < 32 * _711:
                    mem[t + _118 + ceil32(return_data.size) + 160] = mem[t + _118 + _606 + 160]
                    t = t + 32
                    continue 
                mem[64] = (32 * _711) + _118 + ceil32(return_data.size) + 160
                require mem[_118 + ceil32(return_data.size) + 128] - 1 < mem[_118 + ceil32(return_data.size) + 128]
                if mem[(32 * mem[_118 + ceil32(return_data.size) + 128] - 1) + _118 + ceil32(return_data.size) + 160] <= s:
                    idx = idx + 1
                    s = s
                    continue 
                idx = idx + 1
                s = mem[(32 * mem[_118 + ceil32(return_data.size) + 128] - 1) + _118 + ceil32(return_data.size) + 160]
                continue 
            if 4 == idx:
                _138 = mem[64]
                mem[mem[64]] = 3
                mem[64] = mem[64] + 128
                require 0 < mem[_138]
                mem[_138 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                require 1 < mem[_138]
                mem[_138 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                require 2 < mem[_138]
                mem[_138 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                mem[_138 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_138 + 132] = 0
                mem[_138 + 164] = 64
                mem[_138 + 196] = mem[_138]
                t = 0
                while t < 32 * mem[_138]:
                    mem[t + _138 + 228] = mem[t + _138 + 32]
                    t = t + 32
                    continue 
                require ext_code.size(0x7b17021fcb7bc888641dc3bedfed3734fcaf2c87)
                staticcall 0x7b17021fcb7bc888641dc3bedfed3734fcaf2c87.getAmountsOut(uint256 rg1, address[] rg2) with:
                        gas gas_remaining wei
                       args 0, 64, mem[_138 + 196 len (32 * mem[_138]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_138 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _138 + ceil32(return_data.size) + 128
                require return_data.size >= 32
                _604 = mem[_138 + 128 len 4], 0
                require mem[_138 + 128 len 4], 0 <= 4294967296
                require mem[_138 + 128 len 4], 0 + 32 <= return_data.size
                require mem[_138 + mem[_138 + 128 len 4], 0 + 128] <= 4294967296 and mem[_138 + 128 len 4], 0 + (32 * mem[_138 + mem[_138 + 128 len 4], 0 + 128]) + 32 <= return_data.size
                mem[_138 + ceil32(return_data.size) + 128] = mem[_138 + mem[_138 + 128 len 4], 0 + 128]
                _710 = mem[_138 + _604 + 128]
                t = 0
                while t < 32 * _710:
                    mem[t + _138 + ceil32(return_data.size) + 160] = mem[t + _138 + _604 + 160]
                    t = t + 32
                    continue 
                mem[64] = (32 * _710) + _138 + ceil32(return_data.size) + 160
                require mem[_138 + ceil32(return_data.size) + 128] - 1 < mem[_138 + ceil32(return_data.size) + 128]
                if mem[(32 * mem[_138 + ceil32(return_data.size) + 128] - 1) + _138 + ceil32(return_data.size) + 160] <= s:
                    idx = idx + 1
                    s = s
                    continue 
                idx = idx + 1
                s = mem[(32 * mem[_138 + ceil32(return_data.size) + 128] - 1) + _138 + ceil32(return_data.size) + 160]
                continue 
            if idx != 5:
                if idx != 6:
                    if 0 <= s:
                        idx = idx + 1
                        s = s
                        continue 
                    idx = idx + 1
                    s = 0
                    continue 
                _158 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                require 0 < mem[_158]
                mem[_158 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                require 1 < mem[_158]
                mem[_158 + 64] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                mem[_158 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_158 + 100] = 0
                mem[_158 + 132] = 64
                mem[_158 + 164] = mem[_158]
                t = 0
                while t < 32 * mem[_158]:
                    mem[t + _158 + 196] = mem[t + _158 + 32]
                    t = t + 32
                    continue 
                require ext_code.size(0x53c153a0df7e050bbefbb70ee9632061f12795fb)
                staticcall 0x53c153a0df7e050bbefbb70ee9632061f12795fb.getAmountsOut(uint256 rg1, address[] rg2) with:
                        gas gas_remaining wei
                       args 0, 64, mem[_158 + 164 len (32 * mem[_158]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_158 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _158 + ceil32(return_data.size) + 96
                require return_data.size >= 32
                _600 = mem[_158 + 96 len 4], 0
                require mem[_158 + 96 len 4], 0 <= 4294967296
                require mem[_158 + 96 len 4], 0 + 32 <= return_data.size
                require mem[_158 + mem[_158 + 96 len 4], 0 + 96] <= 4294967296 and mem[_158 + 96 len 4], 0 + (32 * mem[_158 + mem[_158 + 96 len 4], 0 + 96]) + 32 <= return_data.size
                mem[_158 + ceil32(return_data.size) + 96] = mem[_158 + mem[_158 + 96 len 4], 0 + 96]
                _708 = mem[_158 + _600 + 96]
                t = 0
                while t < 32 * _708:
                    mem[t + _158 + ceil32(return_data.size) + 128] = mem[t + _158 + _600 + 128]
                    t = t + 32
                    continue 
                mem[64] = (32 * _708) + _158 + ceil32(return_data.size) + 128
                require mem[_158 + ceil32(return_data.size) + 96] - 1 < mem[_158 + ceil32(return_data.size) + 96]
                if mem[(32 * mem[_158 + ceil32(return_data.size) + 96] - 1) + _158 + ceil32(return_data.size) + 128] <= s:
                    idx = idx + 1
                    s = s
                    continue 
                idx = idx + 1
                s = mem[(32 * mem[_158 + ceil32(return_data.size) + 96] - 1) + _158 + ceil32(return_data.size) + 128]
                continue 
            _160 = mem[64]
            mem[mem[64]] = 3
            mem[64] = mem[64] + 128
            require 0 < mem[_160]
            mem[_160 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
            require 1 < mem[_160]
            mem[_160 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
            require 2 < mem[_160]
            mem[_160 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
            mem[_160 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[_160 + 132] = 0
            mem[_160 + 164] = 64
            mem[_160 + 196] = mem[_160]
            t = 0
            while t < 32 * mem[_160]:
                mem[t + _160 + 228] = mem[t + _160 + 32]
                t = t + 32
                continue 
            require ext_code.size(0x53c153a0df7e050bbefbb70ee9632061f12795fb)
            staticcall 0x53c153a0df7e050bbefbb70ee9632061f12795fb.getAmountsOut(uint256 rg1, address[] rg2) with:
                    gas gas_remaining wei
                   args 0, 64, mem[_160 + 196 len (32 * mem[_160]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[_160 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = _160 + ceil32(return_data.size) + 128
            require return_data.size >= 32
            _602 = mem[_160 + 128 len 4], 0
            require mem[_160 + 128 len 4], 0 <= 4294967296
            require mem[_160 + 128 len 4], 0 + 32 <= return_data.size
            require mem[_160 + mem[_160 + 128 len 4], 0 + 128] <= 4294967296 and mem[_160 + 128 len 4], 0 + (32 * mem[_160 + mem[_160 + 128 len 4], 0 + 128]) + 32 <= return_data.size
            mem[_160 + ceil32(return_data.size) + 128] = mem[_160 + mem[_160 + 128 len 4], 0 + 128]
            _709 = mem[_160 + _602 + 128]
            t = 0
            while t < 32 * _709:
                mem[t + _160 + ceil32(return_data.size) + 160] = mem[t + _160 + _602 + 160]
                t = t + 32
                continue 
            mem[64] = (32 * _709) + _160 + ceil32(return_data.size) + 160
            require mem[_160 + ceil32(return_data.size) + 128] - 1 < mem[_160 + ceil32(return_data.size) + 128]
            if mem[(32 * mem[_160 + ceil32(return_data.size) + 128] - 1) + _160 + ceil32(return_data.size) + 160] <= s:
                idx = idx + 1
                s = s
                continue 
            idx = idx + 1
            s = mem[(32 * mem[_160 + ceil32(return_data.size) + 128] - 1) + _160 + ceil32(return_data.size) + 160]
            continue 
        idx = 0
        t = 0
        while idx < 7:
            if not idx:
                mem[mem[64] + 4] = 0
                mem[mem[64] + 36] = 1
                mem[mem[64] + 68] = s
                require ext_code.size(0x27e611fd27b276acbd5ffd632e5eaebec9761e40)
                staticcall 0x27e611fd27b276acbd5ffd632e5eaebec9761e40.get_dy(int128 rg1, int128 rg2, uint256 rg3) with:
                        gas gas_remaining wei
                       args 0, 1, s
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] <= t:
                    idx = idx + 1
                    t = t
                    continue 
                idx = idx + 1
                t = ext_call.return_data[0]
                continue 
            if 1 == idx:
                mem[mem[64] + 4] = 1
                mem[mem[64] + 36] = 2
                mem[mem[64] + 68] = s
                require ext_code.size(0x83e5f18da720119ff363cf63417628eb0e9fd523)
                staticcall 0x83e5f18da720119ff363cf63417628eb0e9fd523.get_dy(int128 rg1, int128 rg2, uint256 rg3) with:
                        gas gas_remaining wei
                       args 1, 2, s
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] <= t:
                    idx = idx + 1
                    t = t
                    continue 
                idx = idx + 1
                t = ext_call.return_data[0]
                continue 
            if 2 == idx:
                _666 = mem[64]
                mem[mem[64]] = 3
                mem[64] = mem[64] + 128
                require 0 < mem[_666]
                mem[_666 + 32] = 0x8d11ec38a3eb5e956b052f67da8bdc9bef8abf3e
                require 1 < mem[_666]
                mem[_666 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                require 2 < mem[_666]
                mem[_666 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                mem[_666 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_666 + 132] = s
                mem[_666 + 164] = 64
                mem[_666 + 196] = mem[_666]
                u = 0
                while u < 32 * mem[_666]:
                    mem[u + _666 + 228] = mem[u + _666 + 32]
                    u = u + 32
                    continue 
                require ext_code.size(0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52)
                staticcall 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52.getAmountsOut(uint256 rg1, address[] rg2) with:
                        gas gas_remaining wei
                       args s, 64, mem[_666 + 196 len (32 * mem[_666]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_666 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _666 + ceil32(return_data.size) + 128
                require return_data.size >= 32
                _1764 = mem[_666 + 128 len 4], Mask(224, 32, s) >> 32
                require mem[_666 + 128 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                require mem[_666 + 128 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                require mem[_666 + mem[_666 + 128 len 4], Mask(224, 32, s) >> 32 + 128] <= 4294967296 and mem[_666 + 128 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_666 + mem[_666 + 128 len 4], Mask(224, 32, s) >> 32 + 128]) + 32 <= return_data.size
                mem[_666 + ceil32(return_data.size) + 128] = mem[_666 + mem[_666 + 128 len 4], Mask(224, 32, s) >> 32 + 128]
                _1860 = mem[_666 + _1764 + 128]
                s = 0
                while s < 32 * _1860:
                    mem[s + _666 + ceil32(return_data.size) + 160] = mem[s + _666 + _1764 + 160]
                    s = s + 32
                    continue 
                mem[64] = (32 * _1860) + _666 + ceil32(return_data.size) + 160
                require mem[_666 + ceil32(return_data.size) + 128] - 1 < mem[_666 + ceil32(return_data.size) + 128]
                if mem[(32 * mem[_666 + ceil32(return_data.size) + 128] - 1) + _666 + ceil32(return_data.size) + 160] <= t:
                    idx = idx + 1
                    t = t
                    continue 
                idx = idx + 1
                t = mem[(32 * mem[_666 + ceil32(return_data.size) + 128] - 1) + _666 + ceil32(return_data.size) + 160]
                continue 
            if 3 == idx:
                _702 = mem[64]
                mem[mem[64]] = 3
                mem[64] = mem[64] + 128
                require 0 < mem[_702]
                mem[_702 + 32] = 0x8d11ec38a3eb5e956b052f67da8bdc9bef8abf3e
                require 1 < mem[_702]
                mem[_702 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                require 2 < mem[_702]
                mem[_702 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                mem[_702 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_702 + 132] = s
                mem[_702 + 164] = 64
                mem[_702 + 196] = mem[_702]
                u = 0
                while u < 32 * mem[_702]:
                    mem[u + _702 + 228] = mem[u + _702 + 32]
                    u = u + 32
                    continue 
                require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c29.getAmountsOut(uint256 rg1, address[] rg2) with:
                        gas gas_remaining wei
                       args s, 64, mem[_702 + 196 len (32 * mem[_702]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_702 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _702 + ceil32(return_data.size) + 128
                require return_data.size >= 32
                _1762 = mem[_702 + 128 len 4], Mask(224, 32, s) >> 32
                require mem[_702 + 128 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                require mem[_702 + 128 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                require mem[_702 + mem[_702 + 128 len 4], Mask(224, 32, s) >> 32 + 128] <= 4294967296 and mem[_702 + 128 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_702 + mem[_702 + 128 len 4], Mask(224, 32, s) >> 32 + 128]) + 32 <= return_data.size
                mem[_702 + ceil32(return_data.size) + 128] = mem[_702 + mem[_702 + 128 len 4], Mask(224, 32, s) >> 32 + 128]
                _1859 = mem[_702 + _1762 + 128]
                s = 0
                while s < 32 * _1859:
                    mem[s + _702 + ceil32(return_data.size) + 160] = mem[s + _702 + _1762 + 160]
                    s = s + 32
                    continue 
                mem[64] = (32 * _1859) + _702 + ceil32(return_data.size) + 160
                require mem[_702 + ceil32(return_data.size) + 128] - 1 < mem[_702 + ceil32(return_data.size) + 128]
                if mem[(32 * mem[_702 + ceil32(return_data.size) + 128] - 1) + _702 + ceil32(return_data.size) + 160] <= t:
                    idx = idx + 1
                    t = t
                    continue 
                idx = idx + 1
                t = mem[(32 * mem[_702 + ceil32(return_data.size) + 128] - 1) + _702 + ceil32(return_data.size) + 160]
                continue 
            if 4 == idx:
                _740 = mem[64]
                mem[mem[64]] = 3
                mem[64] = mem[64] + 128
                require 0 < mem[_740]
                mem[_740 + 32] = 0x8d11ec38a3eb5e956b052f67da8bdc9bef8abf3e
                require 1 < mem[_740]
                mem[_740 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                require 2 < mem[_740]
                mem[_740 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                mem[_740 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_740 + 132] = s
                mem[_740 + 164] = 64
                mem[_740 + 196] = mem[_740]
                u = 0
                while u < 32 * mem[_740]:
                    mem[u + _740 + 228] = mem[u + _740 + 32]
                    u = u + 32
                    continue 
                require ext_code.size(0x7b17021fcb7bc888641dc3bedfed3734fcaf2c87)
                staticcall 0x7b17021fcb7bc888641dc3bedfed3734fcaf2c87.getAmountsOut(uint256 rg1, address[] rg2) with:
                        gas gas_remaining wei
                       args s, 64, mem[_740 + 196 len (32 * mem[_740]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_740 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _740 + ceil32(return_data.size) + 128
                require return_data.size >= 32
                _1760 = mem[_740 + 128 len 4], Mask(224, 32, s) >> 32
                require mem[_740 + 128 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                require mem[_740 + 128 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                require mem[_740 + mem[_740 + 128 len 4], Mask(224, 32, s) >> 32 + 128] <= 4294967296 and mem[_740 + 128 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_740 + mem[_740 + 128 len 4], Mask(224, 32, s) >> 32 + 128]) + 32 <= return_data.size
                mem[_740 + ceil32(return_data.size) + 128] = mem[_740 + mem[_740 + 128 len 4], Mask(224, 32, s) >> 32 + 128]
                _1858 = mem[_740 + _1760 + 128]
                s = 0
                while s < 32 * _1858:
                    mem[s + _740 + ceil32(return_data.size) + 160] = mem[s + _740 + _1760 + 160]
                    s = s + 32
                    continue 
                mem[64] = (32 * _1858) + _740 + ceil32(return_data.size) + 160
                require mem[_740 + ceil32(return_data.size) + 128] - 1 < mem[_740 + ceil32(return_data.size) + 128]
                if mem[(32 * mem[_740 + ceil32(return_data.size) + 128] - 1) + _740 + ceil32(return_data.size) + 160] <= t:
                    idx = idx + 1
                    t = t
                    continue 
                idx = idx + 1
                t = mem[(32 * mem[_740 + ceil32(return_data.size) + 128] - 1) + _740 + ceil32(return_data.size) + 160]
                continue 
            if idx != 5:
                if idx != 6:
                    if s <= t:
                        idx = idx + 1
                        t = t
                        continue 
                    idx = idx + 1
                    t = s
                    continue 
                _806 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                require 0 < mem[_806]
                mem[_806 + 32] = 0x8d11ec38a3eb5e956b052f67da8bdc9bef8abf3e
                require 1 < mem[_806]
                mem[_806 + 64] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                mem[_806 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_806 + 100] = s
                mem[_806 + 132] = 64
                mem[_806 + 164] = mem[_806]
                u = 0
                while u < 32 * mem[_806]:
                    mem[u + _806 + 196] = mem[u + _806 + 32]
                    u = u + 32
                    continue 
                require ext_code.size(0x53c153a0df7e050bbefbb70ee9632061f12795fb)
                staticcall 0x53c153a0df7e050bbefbb70ee9632061f12795fb.getAmountsOut(uint256 rg1, address[] rg2) with:
                        gas gas_remaining wei
                       args s, 64, mem[_806 + 164 len (32 * mem[_806]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_806 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _806 + ceil32(return_data.size) + 96
                require return_data.size >= 32
                _1756 = mem[_806 + 96 len 4], Mask(224, 32, s) >> 32
                require mem[_806 + 96 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                require mem[_806 + 96 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                require mem[_806 + mem[_806 + 96 len 4], Mask(224, 32, s) >> 32 + 96] <= 4294967296 and mem[_806 + 96 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_806 + mem[_806 + 96 len 4], Mask(224, 32, s) >> 32 + 96]) + 32 <= return_data.size
                mem[_806 + ceil32(return_data.size) + 96] = mem[_806 + mem[_806 + 96 len 4], Mask(224, 32, s) >> 32 + 96]
                _1856 = mem[_806 + _1756 + 96]
                s = 0
                while s < 32 * _1856:
                    mem[s + _806 + ceil32(return_data.size) + 128] = mem[s + _806 + _1756 + 128]
                    s = s + 32
                    continue 
                mem[64] = (32 * _1856) + _806 + ceil32(return_data.size) + 128
                require mem[_806 + ceil32(return_data.size) + 96] - 1 < mem[_806 + ceil32(return_data.size) + 96]
                if mem[(32 * mem[_806 + ceil32(return_data.size) + 96] - 1) + _806 + ceil32(return_data.size) + 128] <= t:
                    idx = idx + 1
                    t = t
                    continue 
                idx = idx + 1
                t = mem[(32 * mem[_806 + ceil32(return_data.size) + 96] - 1) + _806 + ceil32(return_data.size) + 128]
                continue 
            _808 = mem[64]
            mem[mem[64]] = 3
            mem[64] = mem[64] + 128
            require 0 < mem[_808]
            mem[_808 + 32] = 0x8d11ec38a3eb5e956b052f67da8bdc9bef8abf3e
            require 1 < mem[_808]
            mem[_808 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
            require 2 < mem[_808]
            mem[_808 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
            mem[_808 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[_808 + 132] = s
            mem[_808 + 164] = 64
            mem[_808 + 196] = mem[_808]
            u = 0
            while u < 32 * mem[_808]:
                mem[u + _808 + 228] = mem[u + _808 + 32]
                u = u + 32
                continue 
            require ext_code.size(0x53c153a0df7e050bbefbb70ee9632061f12795fb)
            staticcall 0x53c153a0df7e050bbefbb70ee9632061f12795fb.getAmountsOut(uint256 rg1, address[] rg2) with:
                    gas gas_remaining wei
                   args s, 64, mem[_808 + 196 len (32 * mem[_808]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[_808 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = _808 + ceil32(return_data.size) + 128
            require return_data.size >= 32
            _1758 = mem[_808 + 128 len 4], Mask(224, 32, s) >> 32
            require mem[_808 + 128 len 4], Mask(224, 32, s) >> 32 <= 4294967296
            require mem[_808 + 128 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
            require mem[_808 + mem[_808 + 128 len 4], Mask(224, 32, s) >> 32 + 128] <= 4294967296 and mem[_808 + 128 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_808 + mem[_808 + 128 len 4], Mask(224, 32, s) >> 32 + 128]) + 32 <= return_data.size
            mem[_808 + ceil32(return_data.size) + 128] = mem[_808 + mem[_808 + 128 len 4], Mask(224, 32, s) >> 32 + 128]
            _1857 = mem[_808 + _1758 + 128]
            s = 0
            while s < 32 * _1857:
                mem[s + _808 + ceil32(return_data.size) + 160] = mem[s + _808 + _1758 + 160]
                s = s + 32
                continue 
            mem[64] = (32 * _1857) + _808 + ceil32(return_data.size) + 160
            require mem[_808 + ceil32(return_data.size) + 128] - 1 < mem[_808 + ceil32(return_data.size) + 128]
            if mem[(32 * mem[_808 + ceil32(return_data.size) + 128] - 1) + _808 + ceil32(return_data.size) + 160] <= t:
                idx = idx + 1
                t = t
                continue 
            idx = idx + 1
            t = mem[(32 * mem[_808 + ceil32(return_data.size) + 128] - 1) + _808 + ceil32(return_data.size) + 160]
            continue 
    else:
        if 10^6 * sub_7d0b6809 / sub_7d0b6809 != 10^6:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        mem[0] = msg.sender
        idx = 0
        s = 0
        while idx < 7:
            if not idx:
                mem[mem[64] + 4] = 1
                mem[mem[64] + 36] = 0
                mem[mem[64] + 68] = 10^6 * sub_7d0b6809
                require ext_code.size(0x27e611fd27b276acbd5ffd632e5eaebec9761e40)
                staticcall 0x27e611fd27b276acbd5ffd632e5eaebec9761e40.get_dy(int128 rg1, int128 rg2, uint256 rg3) with:
                        gas gas_remaining wei
                       args 1, 0, 10^6 * sub_7d0b6809
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] <= s:
                    idx = idx + 1
                    s = s
                    continue 
                idx = idx + 1
                s = ext_call.return_data[0]
                continue 
            if 1 == idx:
                mem[mem[64] + 4] = 2
                mem[mem[64] + 36] = 1
                mem[mem[64] + 68] = 10^6 * sub_7d0b6809
                require ext_code.size(0x83e5f18da720119ff363cf63417628eb0e9fd523)
                staticcall 0x83e5f18da720119ff363cf63417628eb0e9fd523.get_dy(int128 rg1, int128 rg2, uint256 rg3) with:
                        gas gas_remaining wei
                       args 2, 1, 10^6 * sub_7d0b6809
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] <= s:
                    idx = idx + 1
                    s = s
                    continue 
                idx = idx + 1
                s = ext_call.return_data[0]
                continue 
            if 2 == idx:
                _100 = mem[64]
                mem[mem[64]] = 3
                mem[64] = mem[64] + 128
                require 0 < mem[_100]
                mem[_100 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                require 1 < mem[_100]
                mem[_100 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                require 2 < mem[_100]
                mem[_100 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                mem[_100 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_100 + 132] = 10^6 * sub_7d0b6809
                mem[_100 + 164] = 64
                mem[_100 + 196] = mem[_100]
                t = 0
                while t < 32 * mem[_100]:
                    mem[t + _100 + 228] = mem[t + _100 + 32]
                    t = t + 32
                    continue 
                require ext_code.size(0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52)
                staticcall 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52.getAmountsOut(uint256 rg1, address[] rg2) with:
                        gas gas_remaining wei
                       args 10^6 * sub_7d0b6809, 64, mem[_100 + 196 len (32 * mem[_100]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_100 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _100 + ceil32(return_data.size) + 128
                require return_data.size >= 32
                _588 = mem[_100 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32
                require mem[_100 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 <= 4294967296
                require mem[_100 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 32 <= return_data.size
                require mem[_100 + mem[_100 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 128] <= 4294967296 and mem[_100 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + (32 * mem[_100 + mem[_100 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 128]) + 32 <= return_data.size
                mem[_100 + ceil32(return_data.size) + 128] = mem[_100 + mem[_100 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 128]
                _690 = mem[_100 + _588 + 128]
                t = 0
                while t < 32 * _690:
                    mem[t + _100 + ceil32(return_data.size) + 160] = mem[t + _100 + _588 + 160]
                    t = t + 32
                    continue 
                mem[64] = (32 * _690) + _100 + ceil32(return_data.size) + 160
                require mem[_100 + ceil32(return_data.size) + 128] - 1 < mem[_100 + ceil32(return_data.size) + 128]
                if mem[(32 * mem[_100 + ceil32(return_data.size) + 128] - 1) + _100 + ceil32(return_data.size) + 160] <= s:
                    idx = idx + 1
                    s = s
                    continue 
                idx = idx + 1
                s = mem[(32 * mem[_100 + ceil32(return_data.size) + 128] - 1) + _100 + ceil32(return_data.size) + 160]
                continue 
            if 3 == idx:
                _108 = mem[64]
                mem[mem[64]] = 3
                mem[64] = mem[64] + 128
                require 0 < mem[_108]
                mem[_108 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                require 1 < mem[_108]
                mem[_108 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                require 2 < mem[_108]
                mem[_108 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                mem[_108 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_108 + 132] = 10^6 * sub_7d0b6809
                mem[_108 + 164] = 64
                mem[_108 + 196] = mem[_108]
                t = 0
                while t < 32 * mem[_108]:
                    mem[t + _108 + 228] = mem[t + _108 + 32]
                    t = t + 32
                    continue 
                require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c29.getAmountsOut(uint256 rg1, address[] rg2) with:
                        gas gas_remaining wei
                       args 10^6 * sub_7d0b6809, 64, mem[_108 + 196 len (32 * mem[_108]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_108 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _108 + ceil32(return_data.size) + 128
                require return_data.size >= 32
                _586 = mem[_108 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32
                require mem[_108 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 <= 4294967296
                require mem[_108 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 32 <= return_data.size
                require mem[_108 + mem[_108 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 128] <= 4294967296 and mem[_108 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + (32 * mem[_108 + mem[_108 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 128]) + 32 <= return_data.size
                mem[_108 + ceil32(return_data.size) + 128] = mem[_108 + mem[_108 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 128]
                _689 = mem[_108 + _586 + 128]
                t = 0
                while t < 32 * _689:
                    mem[t + _108 + ceil32(return_data.size) + 160] = mem[t + _108 + _586 + 160]
                    t = t + 32
                    continue 
                mem[64] = (32 * _689) + _108 + ceil32(return_data.size) + 160
                require mem[_108 + ceil32(return_data.size) + 128] - 1 < mem[_108 + ceil32(return_data.size) + 128]
                if mem[(32 * mem[_108 + ceil32(return_data.size) + 128] - 1) + _108 + ceil32(return_data.size) + 160] <= s:
                    idx = idx + 1
                    s = s
                    continue 
                idx = idx + 1
                s = mem[(32 * mem[_108 + ceil32(return_data.size) + 128] - 1) + _108 + ceil32(return_data.size) + 160]
                continue 
            if 4 == idx:
                _128 = mem[64]
                mem[mem[64]] = 3
                mem[64] = mem[64] + 128
                require 0 < mem[_128]
                mem[_128 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                require 1 < mem[_128]
                mem[_128 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                require 2 < mem[_128]
                mem[_128 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                mem[_128 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_128 + 132] = 10^6 * sub_7d0b6809
                mem[_128 + 164] = 64
                mem[_128 + 196] = mem[_128]
                t = 0
                while t < 32 * mem[_128]:
                    mem[t + _128 + 228] = mem[t + _128 + 32]
                    t = t + 32
                    continue 
                require ext_code.size(0x7b17021fcb7bc888641dc3bedfed3734fcaf2c87)
                staticcall 0x7b17021fcb7bc888641dc3bedfed3734fcaf2c87.getAmountsOut(uint256 rg1, address[] rg2) with:
                        gas gas_remaining wei
                       args 10^6 * sub_7d0b6809, 64, mem[_128 + 196 len (32 * mem[_128]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_128 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _128 + ceil32(return_data.size) + 128
                require return_data.size >= 32
                _584 = mem[_128 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32
                require mem[_128 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 <= 4294967296
                require mem[_128 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 32 <= return_data.size
                require mem[_128 + mem[_128 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 128] <= 4294967296 and mem[_128 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + (32 * mem[_128 + mem[_128 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 128]) + 32 <= return_data.size
                mem[_128 + ceil32(return_data.size) + 128] = mem[_128 + mem[_128 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 128]
                _688 = mem[_128 + _584 + 128]
                t = 0
                while t < 32 * _688:
                    mem[t + _128 + ceil32(return_data.size) + 160] = mem[t + _128 + _584 + 160]
                    t = t + 32
                    continue 
                mem[64] = (32 * _688) + _128 + ceil32(return_data.size) + 160
                require mem[_128 + ceil32(return_data.size) + 128] - 1 < mem[_128 + ceil32(return_data.size) + 128]
                if mem[(32 * mem[_128 + ceil32(return_data.size) + 128] - 1) + _128 + ceil32(return_data.size) + 160] <= s:
                    idx = idx + 1
                    s = s
                    continue 
                idx = idx + 1
                s = mem[(32 * mem[_128 + ceil32(return_data.size) + 128] - 1) + _128 + ceil32(return_data.size) + 160]
                continue 
            if idx != 5:
                if idx != 6:
                    if 10^6 * sub_7d0b6809 <= s:
                        idx = idx + 1
                        s = s
                        continue 
                    idx = idx + 1
                    s = 10^6 * sub_7d0b6809
                    continue 
                _148 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                require 0 < mem[_148]
                mem[_148 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                require 1 < mem[_148]
                mem[_148 + 64] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                mem[_148 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_148 + 100] = 10^6 * sub_7d0b6809
                mem[_148 + 132] = 64
                mem[_148 + 164] = mem[_148]
                t = 0
                while t < 32 * mem[_148]:
                    mem[t + _148 + 196] = mem[t + _148 + 32]
                    t = t + 32
                    continue 
                require ext_code.size(0x53c153a0df7e050bbefbb70ee9632061f12795fb)
                staticcall 0x53c153a0df7e050bbefbb70ee9632061f12795fb.getAmountsOut(uint256 rg1, address[] rg2) with:
                        gas gas_remaining wei
                       args 10^6 * sub_7d0b6809, 64, mem[_148 + 164 len (32 * mem[_148]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_148 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _148 + ceil32(return_data.size) + 96
                require return_data.size >= 32
                _580 = mem[_148 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32
                require mem[_148 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 <= 4294967296
                require mem[_148 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 32 <= return_data.size
                require mem[_148 + mem[_148 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 96] <= 4294967296 and mem[_148 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + (32 * mem[_148 + mem[_148 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 96]) + 32 <= return_data.size
                mem[_148 + ceil32(return_data.size) + 96] = mem[_148 + mem[_148 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 96]
                _686 = mem[_148 + _580 + 96]
                t = 0
                while t < 32 * _686:
                    mem[t + _148 + ceil32(return_data.size) + 128] = mem[t + _148 + _580 + 128]
                    t = t + 32
                    continue 
                mem[64] = (32 * _686) + _148 + ceil32(return_data.size) + 128
                require mem[_148 + ceil32(return_data.size) + 96] - 1 < mem[_148 + ceil32(return_data.size) + 96]
                if mem[(32 * mem[_148 + ceil32(return_data.size) + 96] - 1) + _148 + ceil32(return_data.size) + 128] <= s:
                    idx = idx + 1
                    s = s
                    continue 
                idx = idx + 1
                s = mem[(32 * mem[_148 + ceil32(return_data.size) + 96] - 1) + _148 + ceil32(return_data.size) + 128]
                continue 
            _150 = mem[64]
            mem[mem[64]] = 3
            mem[64] = mem[64] + 128
            require 0 < mem[_150]
            mem[_150 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
            require 1 < mem[_150]
            mem[_150 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
            require 2 < mem[_150]
            mem[_150 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
            mem[_150 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[_150 + 132] = 10^6 * sub_7d0b6809
            mem[_150 + 164] = 64
            mem[_150 + 196] = mem[_150]
            t = 0
            while t < 32 * mem[_150]:
                mem[t + _150 + 228] = mem[t + _150 + 32]
                t = t + 32
                continue 
            require ext_code.size(0x53c153a0df7e050bbefbb70ee9632061f12795fb)
            staticcall 0x53c153a0df7e050bbefbb70ee9632061f12795fb.getAmountsOut(uint256 rg1, address[] rg2) with:
                    gas gas_remaining wei
                   args 10^6 * sub_7d0b6809, 64, mem[_150 + 196 len (32 * mem[_150]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[_150 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = _150 + ceil32(return_data.size) + 128
            require return_data.size >= 32
            _582 = mem[_150 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32
            require mem[_150 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 <= 4294967296
            require mem[_150 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 32 <= return_data.size
            require mem[_150 + mem[_150 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 128] <= 4294967296 and mem[_150 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + (32 * mem[_150 + mem[_150 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 128]) + 32 <= return_data.size
            mem[_150 + ceil32(return_data.size) + 128] = mem[_150 + mem[_150 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 128]
            _687 = mem[_150 + _582 + 128]
            t = 0
            while t < 32 * _687:
                mem[t + _150 + ceil32(return_data.size) + 160] = mem[t + _150 + _582 + 160]
                t = t + 32
                continue 
            mem[64] = (32 * _687) + _150 + ceil32(return_data.size) + 160
            require mem[_150 + ceil32(return_data.size) + 128] - 1 < mem[_150 + ceil32(return_data.size) + 128]
            if mem[(32 * mem[_150 + ceil32(return_data.size) + 128] - 1) + _150 + ceil32(return_data.size) + 160] <= s:
                idx = idx + 1
                s = s
                continue 
            idx = idx + 1
            s = mem[(32 * mem[_150 + ceil32(return_data.size) + 128] - 1) + _150 + ceil32(return_data.size) + 160]
            continue 
        idx = 0
        t = 0
        while idx < 7:
            if not idx:
                mem[mem[64] + 4] = 0
                mem[mem[64] + 36] = 1
                mem[mem[64] + 68] = s
                require ext_code.size(0x27e611fd27b276acbd5ffd632e5eaebec9761e40)
                staticcall 0x27e611fd27b276acbd5ffd632e5eaebec9761e40.get_dy(int128 rg1, int128 rg2, uint256 rg3) with:
                        gas gas_remaining wei
                       args 0, 1, s
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] <= t:
                    idx = idx + 1
                    t = t
                    continue 
                idx = idx + 1
                t = ext_call.return_data[0]
                continue 
            if 1 == idx:
                mem[mem[64] + 4] = 1
                mem[mem[64] + 36] = 2
                mem[mem[64] + 68] = s
                require ext_code.size(0x83e5f18da720119ff363cf63417628eb0e9fd523)
                staticcall 0x83e5f18da720119ff363cf63417628eb0e9fd523.get_dy(int128 rg1, int128 rg2, uint256 rg3) with:
                        gas gas_remaining wei
                       args 1, 2, s
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] <= t:
                    idx = idx + 1
                    t = t
                    continue 
                idx = idx + 1
                t = ext_call.return_data[0]
                continue 
            if 2 == idx:
                _652 = mem[64]
                mem[mem[64]] = 3
                mem[64] = mem[64] + 128
                require 0 < mem[_652]
                mem[_652 + 32] = 0x8d11ec38a3eb5e956b052f67da8bdc9bef8abf3e
                require 1 < mem[_652]
                mem[_652 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                require 2 < mem[_652]
                mem[_652 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                mem[_652 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_652 + 132] = s
                mem[_652 + 164] = 64
                mem[_652 + 196] = mem[_652]
                u = 0
                while u < 32 * mem[_652]:
                    mem[u + _652 + 228] = mem[u + _652 + 32]
                    u = u + 32
                    continue 
                require ext_code.size(0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52)
                staticcall 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52.getAmountsOut(uint256 rg1, address[] rg2) with:
                        gas gas_remaining wei
                       args s, 64, mem[_652 + 196 len (32 * mem[_652]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_652 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _652 + ceil32(return_data.size) + 128
                require return_data.size >= 32
                _1724 = mem[_652 + 128 len 4], Mask(224, 32, s) >> 32
                require mem[_652 + 128 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                require mem[_652 + 128 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                require mem[_652 + mem[_652 + 128 len 4], Mask(224, 32, s) >> 32 + 128] <= 4294967296 and mem[_652 + 128 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_652 + mem[_652 + 128 len 4], Mask(224, 32, s) >> 32 + 128]) + 32 <= return_data.size
                mem[_652 + ceil32(return_data.size) + 128] = mem[_652 + mem[_652 + 128 len 4], Mask(224, 32, s) >> 32 + 128]
                _1840 = mem[_652 + _1724 + 128]
                s = 0
                while s < 32 * _1840:
                    mem[s + _652 + ceil32(return_data.size) + 160] = mem[s + _652 + _1724 + 160]
                    s = s + 32
                    continue 
                mem[64] = (32 * _1840) + _652 + ceil32(return_data.size) + 160
                require mem[_652 + ceil32(return_data.size) + 128] - 1 < mem[_652 + ceil32(return_data.size) + 128]
                if mem[(32 * mem[_652 + ceil32(return_data.size) + 128] - 1) + _652 + ceil32(return_data.size) + 160] <= t:
                    idx = idx + 1
                    t = t
                    continue 
                idx = idx + 1
                t = mem[(32 * mem[_652 + ceil32(return_data.size) + 128] - 1) + _652 + ceil32(return_data.size) + 160]
                continue 
            if 3 == idx:
                _680 = mem[64]
                mem[mem[64]] = 3
                mem[64] = mem[64] + 128
                require 0 < mem[_680]
                mem[_680 + 32] = 0x8d11ec38a3eb5e956b052f67da8bdc9bef8abf3e
                require 1 < mem[_680]
                mem[_680 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                require 2 < mem[_680]
                mem[_680 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                mem[_680 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_680 + 132] = s
                mem[_680 + 164] = 64
                mem[_680 + 196] = mem[_680]
                u = 0
                while u < 32 * mem[_680]:
                    mem[u + _680 + 228] = mem[u + _680 + 32]
                    u = u + 32
                    continue 
                require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c29.getAmountsOut(uint256 rg1, address[] rg2) with:
                        gas gas_remaining wei
                       args s, 64, mem[_680 + 196 len (32 * mem[_680]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_680 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _680 + ceil32(return_data.size) + 128
                require return_data.size >= 32
                _1722 = mem[_680 + 128 len 4], Mask(224, 32, s) >> 32
                require mem[_680 + 128 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                require mem[_680 + 128 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                require mem[_680 + mem[_680 + 128 len 4], Mask(224, 32, s) >> 32 + 128] <= 4294967296 and mem[_680 + 128 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_680 + mem[_680 + 128 len 4], Mask(224, 32, s) >> 32 + 128]) + 32 <= return_data.size
                mem[_680 + ceil32(return_data.size) + 128] = mem[_680 + mem[_680 + 128 len 4], Mask(224, 32, s) >> 32 + 128]
                _1839 = mem[_680 + _1722 + 128]
                s = 0
                while s < 32 * _1839:
                    mem[s + _680 + ceil32(return_data.size) + 160] = mem[s + _680 + _1722 + 160]
                    s = s + 32
                    continue 
                mem[64] = (32 * _1839) + _680 + ceil32(return_data.size) + 160
                require mem[_680 + ceil32(return_data.size) + 128] - 1 < mem[_680 + ceil32(return_data.size) + 128]
                if mem[(32 * mem[_680 + ceil32(return_data.size) + 128] - 1) + _680 + ceil32(return_data.size) + 160] <= t:
                    idx = idx + 1
                    t = t
                    continue 
                idx = idx + 1
                t = mem[(32 * mem[_680 + ceil32(return_data.size) + 128] - 1) + _680 + ceil32(return_data.size) + 160]
                continue 
            if 4 == idx:
                _724 = mem[64]
                mem[mem[64]] = 3
                mem[64] = mem[64] + 128
                require 0 < mem[_724]
                mem[_724 + 32] = 0x8d11ec38a3eb5e956b052f67da8bdc9bef8abf3e
                require 1 < mem[_724]
                mem[_724 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                require 2 < mem[_724]
                mem[_724 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                mem[_724 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_724 + 132] = s
                mem[_724 + 164] = 64
                mem[_724 + 196] = mem[_724]
                u = 0
                while u < 32 * mem[_724]:
                    mem[u + _724 + 228] = mem[u + _724 + 32]
                    u = u + 32
                    continue 
                require ext_code.size(0x7b17021fcb7bc888641dc3bedfed3734fcaf2c87)
                staticcall 0x7b17021fcb7bc888641dc3bedfed3734fcaf2c87.getAmountsOut(uint256 rg1, address[] rg2) with:
                        gas gas_remaining wei
                       args s, 64, mem[_724 + 196 len (32 * mem[_724]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_724 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _724 + ceil32(return_data.size) + 128
                require return_data.size >= 32
                _1720 = mem[_724 + 128 len 4], Mask(224, 32, s) >> 32
                require mem[_724 + 128 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                require mem[_724 + 128 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                require mem[_724 + mem[_724 + 128 len 4], Mask(224, 32, s) >> 32 + 128] <= 4294967296 and mem[_724 + 128 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_724 + mem[_724 + 128 len 4], Mask(224, 32, s) >> 32 + 128]) + 32 <= return_data.size
                mem[_724 + ceil32(return_data.size) + 128] = mem[_724 + mem[_724 + 128 len 4], Mask(224, 32, s) >> 32 + 128]
                _1838 = mem[_724 + _1720 + 128]
                s = 0
                while s < 32 * _1838:
                    mem[s + _724 + ceil32(return_data.size) + 160] = mem[s + _724 + _1720 + 160]
                    s = s + 32
                    continue 
                mem[64] = (32 * _1838) + _724 + ceil32(return_data.size) + 160
                require mem[_724 + ceil32(return_data.size) + 128] - 1 < mem[_724 + ceil32(return_data.size) + 128]
                if mem[(32 * mem[_724 + ceil32(return_data.size) + 128] - 1) + _724 + ceil32(return_data.size) + 160] <= t:
                    idx = idx + 1
                    t = t
                    continue 
                idx = idx + 1
                t = mem[(32 * mem[_724 + ceil32(return_data.size) + 128] - 1) + _724 + ceil32(return_data.size) + 160]
                continue 
            if idx != 5:
                if idx != 6:
                    if s <= t:
                        idx = idx + 1
                        t = t
                        continue 
                    idx = idx + 1
                    t = s
                    continue 
                _756 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                require 0 < mem[_756]
                mem[_756 + 32] = 0x8d11ec38a3eb5e956b052f67da8bdc9bef8abf3e
                require 1 < mem[_756]
                mem[_756 + 64] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                mem[_756 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_756 + 100] = s
                mem[_756 + 132] = 64
                mem[_756 + 164] = mem[_756]
                u = 0
                while u < 32 * mem[_756]:
                    mem[u + _756 + 196] = mem[u + _756 + 32]
                    u = u + 32
                    continue 
                require ext_code.size(0x53c153a0df7e050bbefbb70ee9632061f12795fb)
                staticcall 0x53c153a0df7e050bbefbb70ee9632061f12795fb.getAmountsOut(uint256 rg1, address[] rg2) with:
                        gas gas_remaining wei
                       args s, 64, mem[_756 + 164 len (32 * mem[_756]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_756 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _756 + ceil32(return_data.size) + 96
                require return_data.size >= 32
                _1716 = mem[_756 + 96 len 4], Mask(224, 32, s) >> 32
                require mem[_756 + 96 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                require mem[_756 + 96 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                require mem[_756 + mem[_756 + 96 len 4], Mask(224, 32, s) >> 32 + 96] <= 4294967296 and mem[_756 + 96 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_756 + mem[_756 + 96 len 4], Mask(224, 32, s) >> 32 + 96]) + 32 <= return_data.size
                mem[_756 + ceil32(return_data.size) + 96] = mem[_756 + mem[_756 + 96 len 4], Mask(224, 32, s) >> 32 + 96]
                _1836 = mem[_756 + _1716 + 96]
                s = 0
                while s < 32 * _1836:
                    mem[s + _756 + ceil32(return_data.size) + 128] = mem[s + _756 + _1716 + 128]
                    s = s + 32
                    continue 
                mem[64] = (32 * _1836) + _756 + ceil32(return_data.size) + 128
                require mem[_756 + ceil32(return_data.size) + 96] - 1 < mem[_756 + ceil32(return_data.size) + 96]
                if mem[(32 * mem[_756 + ceil32(return_data.size) + 96] - 1) + _756 + ceil32(return_data.size) + 128] <= t:
                    idx = idx + 1
                    t = t
                    continue 
                idx = idx + 1
                t = mem[(32 * mem[_756 + ceil32(return_data.size) + 96] - 1) + _756 + ceil32(return_data.size) + 128]
                continue 
            _758 = mem[64]
            mem[mem[64]] = 3
            mem[64] = mem[64] + 128
            require 0 < mem[_758]
            mem[_758 + 32] = 0x8d11ec38a3eb5e956b052f67da8bdc9bef8abf3e
            require 1 < mem[_758]
            mem[_758 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
            require 2 < mem[_758]
            mem[_758 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
            mem[_758 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[_758 + 132] = s
            mem[_758 + 164] = 64
            mem[_758 + 196] = mem[_758]
            u = 0
            while u < 32 * mem[_758]:
                mem[u + _758 + 228] = mem[u + _758 + 32]
                u = u + 32
                continue 
            require ext_code.size(0x53c153a0df7e050bbefbb70ee9632061f12795fb)
            staticcall 0x53c153a0df7e050bbefbb70ee9632061f12795fb.getAmountsOut(uint256 rg1, address[] rg2) with:
                    gas gas_remaining wei
                   args s, 64, mem[_758 + 196 len (32 * mem[_758]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[_758 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = _758 + ceil32(return_data.size) + 128
            require return_data.size >= 32
            _1718 = mem[_758 + 128 len 4], Mask(224, 32, s) >> 32
            require mem[_758 + 128 len 4], Mask(224, 32, s) >> 32 <= 4294967296
            require mem[_758 + 128 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
            require mem[_758 + mem[_758 + 128 len 4], Mask(224, 32, s) >> 32 + 128] <= 4294967296 and mem[_758 + 128 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_758 + mem[_758 + 128 len 4], Mask(224, 32, s) >> 32 + 128]) + 32 <= return_data.size
            mem[_758 + ceil32(return_data.size) + 128] = mem[_758 + mem[_758 + 128 len 4], Mask(224, 32, s) >> 32 + 128]
            _1837 = mem[_758 + _1718 + 128]
            s = 0
            while s < 32 * _1837:
                mem[s + _758 + ceil32(return_data.size) + 160] = mem[s + _758 + _1718 + 160]
                s = s + 32
                continue 
            mem[64] = (32 * _1837) + _758 + ceil32(return_data.size) + 160
            require mem[_758 + ceil32(return_data.size) + 128] - 1 < mem[_758 + ceil32(return_data.size) + 128]
            if mem[(32 * mem[_758 + ceil32(return_data.size) + 128] - 1) + _758 + ceil32(return_data.size) + 160] <= t:
                idx = idx + 1
                t = t
                continue 
            idx = idx + 1
            t = mem[(32 * mem[_758 + ceil32(return_data.size) + 128] - 1) + _758 + ceil32(return_data.size) + 160]
            continue 
}



}
