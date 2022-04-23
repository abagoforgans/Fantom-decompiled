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
                _87 = mem[64]
                mem[mem[64]] = 4
                mem[64] = mem[64] + 160
                require 0 < mem[_87]
                mem[_87 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                require 1 < mem[_87]
                mem[_87 + 64] = 0x5cc61a78f164885776aa610fb0fe1257df78e59b
                require 2 < mem[_87]
                mem[_87 + 96] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                require 3 < mem[_87]
                mem[_87 + 128] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                mem[_87 + 160] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_87 + 164] = 0
                mem[_87 + 196] = 64
                mem[_87 + 228] = mem[_87]
                t = 0
                while t < 32 * mem[_87]:
                    mem[t + _87 + 260] = mem[t + _87 + 32]
                    t = t + 32
                    continue 
                require ext_code.size(0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52)
                staticcall 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52.getAmountsOut(uint256 rg1, address[] rg2) with:
                        gas gas_remaining wei
                       args 0, 64, mem[_87 + 228 len (32 * mem[_87]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_87 + 160 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _87 + ceil32(return_data.size) + 160
                require return_data.size >= 32
                _699 = mem[_87 + 160 len 4], 0
                require mem[_87 + 160 len 4], 0 <= 4294967296
                require mem[_87 + 160 len 4], 0 + 32 <= return_data.size
                require mem[_87 + mem[_87 + 160 len 4], 0 + 160] <= 4294967296 and mem[_87 + 160 len 4], 0 + (32 * mem[_87 + mem[_87 + 160 len 4], 0 + 160]) + 32 <= return_data.size
                mem[_87 + ceil32(return_data.size) + 160] = mem[_87 + mem[_87 + 160 len 4], 0 + 160]
                _861 = mem[_87 + _699 + 160]
                t = 0
                while t < 32 * _861:
                    mem[t + _87 + ceil32(return_data.size) + 192] = mem[t + _87 + _699 + 192]
                    t = t + 32
                    continue 
                mem[64] = (32 * _861) + _87 + ceil32(return_data.size) + 192
                require mem[_87 + ceil32(return_data.size) + 160] - 1 < mem[_87 + ceil32(return_data.size) + 160]
                if mem[(32 * mem[_87 + ceil32(return_data.size) + 160] - 1) + _87 + ceil32(return_data.size) + 192] <= s:
                    idx = idx + 1
                    s = s
                    continue 
                idx = idx + 1
                s = mem[(32 * mem[_87 + ceil32(return_data.size) + 160] - 1) + _87 + ceil32(return_data.size) + 192]
                continue 
            if 3 == idx:
                _129 = mem[64]
                mem[mem[64]] = 3
                mem[64] = mem[64] + 128
                require 0 < mem[_129]
                mem[_129 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                require 1 < mem[_129]
                mem[_129 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                require 2 < mem[_129]
                mem[_129 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                mem[_129 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_129 + 132] = 0
                mem[_129 + 164] = 64
                mem[_129 + 196] = mem[_129]
                t = 0
                while t < 32 * mem[_129]:
                    mem[t + _129 + 228] = mem[t + _129 + 32]
                    t = t + 32
                    continue 
                require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c29.getAmountsOut(uint256 rg1, address[] rg2) with:
                        gas gas_remaining wei
                       args 0, 64, mem[_129 + 196 len (32 * mem[_129]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_129 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _129 + ceil32(return_data.size) + 128
                require return_data.size >= 32
                _697 = mem[_129 + 128 len 4], 0
                require mem[_129 + 128 len 4], 0 <= 4294967296
                require mem[_129 + 128 len 4], 0 + 32 <= return_data.size
                require mem[_129 + mem[_129 + 128 len 4], 0 + 128] <= 4294967296 and mem[_129 + 128 len 4], 0 + (32 * mem[_129 + mem[_129 + 128 len 4], 0 + 128]) + 32 <= return_data.size
                mem[_129 + ceil32(return_data.size) + 128] = mem[_129 + mem[_129 + 128 len 4], 0 + 128]
                _860 = mem[_129 + _697 + 128]
                t = 0
                while t < 32 * _860:
                    mem[t + _129 + ceil32(return_data.size) + 160] = mem[t + _129 + _697 + 160]
                    t = t + 32
                    continue 
                mem[64] = (32 * _860) + _129 + ceil32(return_data.size) + 160
                require mem[_129 + ceil32(return_data.size) + 128] - 1 < mem[_129 + ceil32(return_data.size) + 128]
                if mem[(32 * mem[_129 + ceil32(return_data.size) + 128] - 1) + _129 + ceil32(return_data.size) + 160] <= s:
                    idx = idx + 1
                    s = s
                    continue 
                idx = idx + 1
                s = mem[(32 * mem[_129 + ceil32(return_data.size) + 128] - 1) + _129 + ceil32(return_data.size) + 160]
                continue 
            if 4 == idx:
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
                require ext_code.size(0x7b17021fcb7bc888641dc3bedfed3734fcaf2c87)
                staticcall 0x7b17021fcb7bc888641dc3bedfed3734fcaf2c87.getAmountsOut(uint256 rg1, address[] rg2) with:
                        gas gas_remaining wei
                       args 0, 64, mem[_155 + 196 len (32 * mem[_155]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_155 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _155 + ceil32(return_data.size) + 128
                require return_data.size >= 32
                _695 = mem[_155 + 128 len 4], 0
                require mem[_155 + 128 len 4], 0 <= 4294967296
                require mem[_155 + 128 len 4], 0 + 32 <= return_data.size
                require mem[_155 + mem[_155 + 128 len 4], 0 + 128] <= 4294967296 and mem[_155 + 128 len 4], 0 + (32 * mem[_155 + mem[_155 + 128 len 4], 0 + 128]) + 32 <= return_data.size
                mem[_155 + ceil32(return_data.size) + 128] = mem[_155 + mem[_155 + 128 len 4], 0 + 128]
                _859 = mem[_155 + _695 + 128]
                t = 0
                while t < 32 * _859:
                    mem[t + _155 + ceil32(return_data.size) + 160] = mem[t + _155 + _695 + 160]
                    t = t + 32
                    continue 
                mem[64] = (32 * _859) + _155 + ceil32(return_data.size) + 160
                require mem[_155 + ceil32(return_data.size) + 128] - 1 < mem[_155 + ceil32(return_data.size) + 128]
                if mem[(32 * mem[_155 + ceil32(return_data.size) + 128] - 1) + _155 + ceil32(return_data.size) + 160] <= s:
                    idx = idx + 1
                    s = s
                    continue 
                idx = idx + 1
                s = mem[(32 * mem[_155 + ceil32(return_data.size) + 128] - 1) + _155 + ceil32(return_data.size) + 160]
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
                _175 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                require 0 < mem[_175]
                mem[_175 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                require 1 < mem[_175]
                mem[_175 + 64] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                mem[_175 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_175 + 100] = 0
                mem[_175 + 132] = 64
                mem[_175 + 164] = mem[_175]
                t = 0
                while t < 32 * mem[_175]:
                    mem[t + _175 + 196] = mem[t + _175 + 32]
                    t = t + 32
                    continue 
                require ext_code.size(0x53c153a0df7e050bbefbb70ee9632061f12795fb)
                staticcall 0x53c153a0df7e050bbefbb70ee9632061f12795fb.getAmountsOut(uint256 rg1, address[] rg2) with:
                        gas gas_remaining wei
                       args 0, 64, mem[_175 + 164 len (32 * mem[_175]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_175 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _175 + ceil32(return_data.size) + 96
                require return_data.size >= 32
                _691 = mem[_175 + 96 len 4], 0
                require mem[_175 + 96 len 4], 0 <= 4294967296
                require mem[_175 + 96 len 4], 0 + 32 <= return_data.size
                require mem[_175 + mem[_175 + 96 len 4], 0 + 96] <= 4294967296 and mem[_175 + 96 len 4], 0 + (32 * mem[_175 + mem[_175 + 96 len 4], 0 + 96]) + 32 <= return_data.size
                mem[_175 + ceil32(return_data.size) + 96] = mem[_175 + mem[_175 + 96 len 4], 0 + 96]
                _857 = mem[_175 + _691 + 96]
                t = 0
                while t < 32 * _857:
                    mem[t + _175 + ceil32(return_data.size) + 128] = mem[t + _175 + _691 + 128]
                    t = t + 32
                    continue 
                mem[64] = (32 * _857) + _175 + ceil32(return_data.size) + 128
                require mem[_175 + ceil32(return_data.size) + 96] - 1 < mem[_175 + ceil32(return_data.size) + 96]
                if mem[(32 * mem[_175 + ceil32(return_data.size) + 96] - 1) + _175 + ceil32(return_data.size) + 128] <= s:
                    idx = idx + 1
                    s = s
                    continue 
                idx = idx + 1
                s = mem[(32 * mem[_175 + ceil32(return_data.size) + 96] - 1) + _175 + ceil32(return_data.size) + 128]
                continue 
            _177 = mem[64]
            mem[mem[64]] = 3
            mem[64] = mem[64] + 128
            require 0 < mem[_177]
            mem[_177 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
            require 1 < mem[_177]
            mem[_177 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
            require 2 < mem[_177]
            mem[_177 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
            mem[_177 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[_177 + 132] = 0
            mem[_177 + 164] = 64
            mem[_177 + 196] = mem[_177]
            t = 0
            while t < 32 * mem[_177]:
                mem[t + _177 + 228] = mem[t + _177 + 32]
                t = t + 32
                continue 
            require ext_code.size(0x53c153a0df7e050bbefbb70ee9632061f12795fb)
            staticcall 0x53c153a0df7e050bbefbb70ee9632061f12795fb.getAmountsOut(uint256 rg1, address[] rg2) with:
                    gas gas_remaining wei
                   args 0, 64, mem[_177 + 196 len (32 * mem[_177]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[_177 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = _177 + ceil32(return_data.size) + 128
            require return_data.size >= 32
            _693 = mem[_177 + 128 len 4], 0
            require mem[_177 + 128 len 4], 0 <= 4294967296
            require mem[_177 + 128 len 4], 0 + 32 <= return_data.size
            require mem[_177 + mem[_177 + 128 len 4], 0 + 128] <= 4294967296 and mem[_177 + 128 len 4], 0 + (32 * mem[_177 + mem[_177 + 128 len 4], 0 + 128]) + 32 <= return_data.size
            mem[_177 + ceil32(return_data.size) + 128] = mem[_177 + mem[_177 + 128 len 4], 0 + 128]
            _858 = mem[_177 + _693 + 128]
            t = 0
            while t < 32 * _858:
                mem[t + _177 + ceil32(return_data.size) + 160] = mem[t + _177 + _693 + 160]
                t = t + 32
                continue 
            mem[64] = (32 * _858) + _177 + ceil32(return_data.size) + 160
            require mem[_177 + ceil32(return_data.size) + 128] - 1 < mem[_177 + ceil32(return_data.size) + 128]
            if mem[(32 * mem[_177 + ceil32(return_data.size) + 128] - 1) + _177 + ceil32(return_data.size) + 160] <= s:
                idx = idx + 1
                s = s
                continue 
            idx = idx + 1
            s = mem[(32 * mem[_177 + ceil32(return_data.size) + 128] - 1) + _177 + ceil32(return_data.size) + 160]
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
                _739 = mem[64]
                mem[mem[64]] = 4
                mem[64] = mem[64] + 160
                require 0 < mem[_739]
                mem[_739 + 32] = 0x8d11ec38a3eb5e956b052f67da8bdc9bef8abf3e
                require 1 < mem[_739]
                mem[_739 + 64] = 0x5cc61a78f164885776aa610fb0fe1257df78e59b
                require 2 < mem[_739]
                mem[_739 + 96] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                require 3 < mem[_739]
                mem[_739 + 128] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                mem[_739 + 160] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_739 + 164] = s
                mem[_739 + 196] = 64
                mem[_739 + 228] = mem[_739]
                u = 0
                while u < 32 * mem[_739]:
                    mem[u + _739 + 260] = mem[u + _739 + 32]
                    u = u + 32
                    continue 
                require ext_code.size(0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52)
                staticcall 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52.getAmountsOut(uint256 rg1, address[] rg2) with:
                        gas gas_remaining wei
                       args s, 64, mem[_739 + 228 len (32 * mem[_739]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_739 + 160 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _739 + ceil32(return_data.size) + 160
                require return_data.size >= 32
                _2187 = mem[_739 + 160 len 4], Mask(224, 32, s) >> 32
                require mem[_739 + 160 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                require mem[_739 + 160 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                require mem[_739 + mem[_739 + 160 len 4], Mask(224, 32, s) >> 32 + 160] <= 4294967296 and mem[_739 + 160 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_739 + mem[_739 + 160 len 4], Mask(224, 32, s) >> 32 + 160]) + 32 <= return_data.size
                mem[_739 + ceil32(return_data.size) + 160] = mem[_739 + mem[_739 + 160 len 4], Mask(224, 32, s) >> 32 + 160]
                _2303 = mem[_739 + _2187 + 160]
                s = 0
                while s < 32 * _2303:
                    mem[s + _739 + ceil32(return_data.size) + 192] = mem[s + _739 + _2187 + 192]
                    s = s + 32
                    continue 
                mem[64] = (32 * _2303) + _739 + ceil32(return_data.size) + 192
                require mem[_739 + ceil32(return_data.size) + 160] - 1 < mem[_739 + ceil32(return_data.size) + 160]
                if mem[(32 * mem[_739 + ceil32(return_data.size) + 160] - 1) + _739 + ceil32(return_data.size) + 192] <= t:
                    idx = idx + 1
                    t = t
                    continue 
                idx = idx + 1
                t = mem[(32 * mem[_739 + ceil32(return_data.size) + 160] - 1) + _739 + ceil32(return_data.size) + 192]
                continue 
            if 3 == idx:
                _845 = mem[64]
                mem[mem[64]] = 3
                mem[64] = mem[64] + 128
                require 0 < mem[_845]
                mem[_845 + 32] = 0x8d11ec38a3eb5e956b052f67da8bdc9bef8abf3e
                require 1 < mem[_845]
                mem[_845 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                require 2 < mem[_845]
                mem[_845 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                mem[_845 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_845 + 132] = s
                mem[_845 + 164] = 64
                mem[_845 + 196] = mem[_845]
                u = 0
                while u < 32 * mem[_845]:
                    mem[u + _845 + 228] = mem[u + _845 + 32]
                    u = u + 32
                    continue 
                require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c29.getAmountsOut(uint256 rg1, address[] rg2) with:
                        gas gas_remaining wei
                       args s, 64, mem[_845 + 196 len (32 * mem[_845]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_845 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _845 + ceil32(return_data.size) + 128
                require return_data.size >= 32
                _2185 = mem[_845 + 128 len 4], Mask(224, 32, s) >> 32
                require mem[_845 + 128 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                require mem[_845 + 128 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                require mem[_845 + mem[_845 + 128 len 4], Mask(224, 32, s) >> 32 + 128] <= 4294967296 and mem[_845 + 128 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_845 + mem[_845 + 128 len 4], Mask(224, 32, s) >> 32 + 128]) + 32 <= return_data.size
                mem[_845 + ceil32(return_data.size) + 128] = mem[_845 + mem[_845 + 128 len 4], Mask(224, 32, s) >> 32 + 128]
                _2302 = mem[_845 + _2185 + 128]
                s = 0
                while s < 32 * _2302:
                    mem[s + _845 + ceil32(return_data.size) + 160] = mem[s + _845 + _2185 + 160]
                    s = s + 32
                    continue 
                mem[64] = (32 * _2302) + _845 + ceil32(return_data.size) + 160
                require mem[_845 + ceil32(return_data.size) + 128] - 1 < mem[_845 + ceil32(return_data.size) + 128]
                if mem[(32 * mem[_845 + ceil32(return_data.size) + 128] - 1) + _845 + ceil32(return_data.size) + 160] <= t:
                    idx = idx + 1
                    t = t
                    continue 
                idx = idx + 1
                t = mem[(32 * mem[_845 + ceil32(return_data.size) + 128] - 1) + _845 + ceil32(return_data.size) + 160]
                continue 
            if 4 == idx:
                _903 = mem[64]
                mem[mem[64]] = 3
                mem[64] = mem[64] + 128
                require 0 < mem[_903]
                mem[_903 + 32] = 0x8d11ec38a3eb5e956b052f67da8bdc9bef8abf3e
                require 1 < mem[_903]
                mem[_903 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                require 2 < mem[_903]
                mem[_903 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                mem[_903 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_903 + 132] = s
                mem[_903 + 164] = 64
                mem[_903 + 196] = mem[_903]
                u = 0
                while u < 32 * mem[_903]:
                    mem[u + _903 + 228] = mem[u + _903 + 32]
                    u = u + 32
                    continue 
                require ext_code.size(0x7b17021fcb7bc888641dc3bedfed3734fcaf2c87)
                staticcall 0x7b17021fcb7bc888641dc3bedfed3734fcaf2c87.getAmountsOut(uint256 rg1, address[] rg2) with:
                        gas gas_remaining wei
                       args s, 64, mem[_903 + 196 len (32 * mem[_903]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_903 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _903 + ceil32(return_data.size) + 128
                require return_data.size >= 32
                _2183 = mem[_903 + 128 len 4], Mask(224, 32, s) >> 32
                require mem[_903 + 128 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                require mem[_903 + 128 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                require mem[_903 + mem[_903 + 128 len 4], Mask(224, 32, s) >> 32 + 128] <= 4294967296 and mem[_903 + 128 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_903 + mem[_903 + 128 len 4], Mask(224, 32, s) >> 32 + 128]) + 32 <= return_data.size
                mem[_903 + ceil32(return_data.size) + 128] = mem[_903 + mem[_903 + 128 len 4], Mask(224, 32, s) >> 32 + 128]
                _2301 = mem[_903 + _2183 + 128]
                s = 0
                while s < 32 * _2301:
                    mem[s + _903 + ceil32(return_data.size) + 160] = mem[s + _903 + _2183 + 160]
                    s = s + 32
                    continue 
                mem[64] = (32 * _2301) + _903 + ceil32(return_data.size) + 160
                require mem[_903 + ceil32(return_data.size) + 128] - 1 < mem[_903 + ceil32(return_data.size) + 128]
                if mem[(32 * mem[_903 + ceil32(return_data.size) + 128] - 1) + _903 + ceil32(return_data.size) + 160] <= t:
                    idx = idx + 1
                    t = t
                    continue 
                idx = idx + 1
                t = mem[(32 * mem[_903 + ceil32(return_data.size) + 128] - 1) + _903 + ceil32(return_data.size) + 160]
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
                _975 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                require 0 < mem[_975]
                mem[_975 + 32] = 0x8d11ec38a3eb5e956b052f67da8bdc9bef8abf3e
                require 1 < mem[_975]
                mem[_975 + 64] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                mem[_975 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_975 + 100] = s
                mem[_975 + 132] = 64
                mem[_975 + 164] = mem[_975]
                u = 0
                while u < 32 * mem[_975]:
                    mem[u + _975 + 196] = mem[u + _975 + 32]
                    u = u + 32
                    continue 
                require ext_code.size(0x53c153a0df7e050bbefbb70ee9632061f12795fb)
                staticcall 0x53c153a0df7e050bbefbb70ee9632061f12795fb.getAmountsOut(uint256 rg1, address[] rg2) with:
                        gas gas_remaining wei
                       args s, 64, mem[_975 + 164 len (32 * mem[_975]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_975 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _975 + ceil32(return_data.size) + 96
                require return_data.size >= 32
                _2179 = mem[_975 + 96 len 4], Mask(224, 32, s) >> 32
                require mem[_975 + 96 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                require mem[_975 + 96 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                require mem[_975 + mem[_975 + 96 len 4], Mask(224, 32, s) >> 32 + 96] <= 4294967296 and mem[_975 + 96 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_975 + mem[_975 + 96 len 4], Mask(224, 32, s) >> 32 + 96]) + 32 <= return_data.size
                mem[_975 + ceil32(return_data.size) + 96] = mem[_975 + mem[_975 + 96 len 4], Mask(224, 32, s) >> 32 + 96]
                _2299 = mem[_975 + _2179 + 96]
                s = 0
                while s < 32 * _2299:
                    mem[s + _975 + ceil32(return_data.size) + 128] = mem[s + _975 + _2179 + 128]
                    s = s + 32
                    continue 
                mem[64] = (32 * _2299) + _975 + ceil32(return_data.size) + 128
                require mem[_975 + ceil32(return_data.size) + 96] - 1 < mem[_975 + ceil32(return_data.size) + 96]
                if mem[(32 * mem[_975 + ceil32(return_data.size) + 96] - 1) + _975 + ceil32(return_data.size) + 128] <= t:
                    idx = idx + 1
                    t = t
                    continue 
                idx = idx + 1
                t = mem[(32 * mem[_975 + ceil32(return_data.size) + 96] - 1) + _975 + ceil32(return_data.size) + 128]
                continue 
            _977 = mem[64]
            mem[mem[64]] = 3
            mem[64] = mem[64] + 128
            require 0 < mem[_977]
            mem[_977 + 32] = 0x8d11ec38a3eb5e956b052f67da8bdc9bef8abf3e
            require 1 < mem[_977]
            mem[_977 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
            require 2 < mem[_977]
            mem[_977 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
            mem[_977 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[_977 + 132] = s
            mem[_977 + 164] = 64
            mem[_977 + 196] = mem[_977]
            u = 0
            while u < 32 * mem[_977]:
                mem[u + _977 + 228] = mem[u + _977 + 32]
                u = u + 32
                continue 
            require ext_code.size(0x53c153a0df7e050bbefbb70ee9632061f12795fb)
            staticcall 0x53c153a0df7e050bbefbb70ee9632061f12795fb.getAmountsOut(uint256 rg1, address[] rg2) with:
                    gas gas_remaining wei
                   args s, 64, mem[_977 + 196 len (32 * mem[_977]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[_977 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = _977 + ceil32(return_data.size) + 128
            require return_data.size >= 32
            _2181 = mem[_977 + 128 len 4], Mask(224, 32, s) >> 32
            require mem[_977 + 128 len 4], Mask(224, 32, s) >> 32 <= 4294967296
            require mem[_977 + 128 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
            require mem[_977 + mem[_977 + 128 len 4], Mask(224, 32, s) >> 32 + 128] <= 4294967296 and mem[_977 + 128 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_977 + mem[_977 + 128 len 4], Mask(224, 32, s) >> 32 + 128]) + 32 <= return_data.size
            mem[_977 + ceil32(return_data.size) + 128] = mem[_977 + mem[_977 + 128 len 4], Mask(224, 32, s) >> 32 + 128]
            _2300 = mem[_977 + _2181 + 128]
            s = 0
            while s < 32 * _2300:
                mem[s + _977 + ceil32(return_data.size) + 160] = mem[s + _977 + _2181 + 160]
                s = s + 32
                continue 
            mem[64] = (32 * _2300) + _977 + ceil32(return_data.size) + 160
            require mem[_977 + ceil32(return_data.size) + 128] - 1 < mem[_977 + ceil32(return_data.size) + 128]
            if mem[(32 * mem[_977 + ceil32(return_data.size) + 128] - 1) + _977 + ceil32(return_data.size) + 160] <= t:
                idx = idx + 1
                t = t
                continue 
            idx = idx + 1
            t = mem[(32 * mem[_977 + ceil32(return_data.size) + 128] - 1) + _977 + ceil32(return_data.size) + 160]
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
                _71 = mem[64]
                mem[mem[64]] = 4
                mem[64] = mem[64] + 160
                require 0 < mem[_71]
                mem[_71 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                require 1 < mem[_71]
                mem[_71 + 64] = 0x5cc61a78f164885776aa610fb0fe1257df78e59b
                require 2 < mem[_71]
                mem[_71 + 96] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                require 3 < mem[_71]
                mem[_71 + 128] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                mem[_71 + 160] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_71 + 164] = 10^6 * sub_7d0b6809
                mem[_71 + 196] = 64
                mem[_71 + 228] = mem[_71]
                t = 0
                while t < 32 * mem[_71]:
                    mem[t + _71 + 260] = mem[t + _71 + 32]
                    t = t + 32
                    continue 
                require ext_code.size(0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52)
                staticcall 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52.getAmountsOut(uint256 rg1, address[] rg2) with:
                        gas gas_remaining wei
                       args 10^6 * sub_7d0b6809, 64, mem[_71 + 228 len (32 * mem[_71]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_71 + 160 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _71 + ceil32(return_data.size) + 160
                require return_data.size >= 32
                _675 = mem[_71 + 160 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32
                require mem[_71 + 160 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 <= 4294967296
                require mem[_71 + 160 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 32 <= return_data.size
                require mem[_71 + mem[_71 + 160 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 160] <= 4294967296 and mem[_71 + 160 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + (32 * mem[_71 + mem[_71 + 160 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 160]) + 32 <= return_data.size
                mem[_71 + ceil32(return_data.size) + 160] = mem[_71 + mem[_71 + 160 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 160]
                _821 = mem[_71 + _675 + 160]
                t = 0
                while t < 32 * _821:
                    mem[t + _71 + ceil32(return_data.size) + 192] = mem[t + _71 + _675 + 192]
                    t = t + 32
                    continue 
                mem[64] = (32 * _821) + _71 + ceil32(return_data.size) + 192
                require mem[_71 + ceil32(return_data.size) + 160] - 1 < mem[_71 + ceil32(return_data.size) + 160]
                if mem[(32 * mem[_71 + ceil32(return_data.size) + 160] - 1) + _71 + ceil32(return_data.size) + 192] <= s:
                    idx = idx + 1
                    s = s
                    continue 
                idx = idx + 1
                s = mem[(32 * mem[_71 + ceil32(return_data.size) + 160] - 1) + _71 + ceil32(return_data.size) + 192]
                continue 
            if 3 == idx:
                _115 = mem[64]
                mem[mem[64]] = 3
                mem[64] = mem[64] + 128
                require 0 < mem[_115]
                mem[_115 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                require 1 < mem[_115]
                mem[_115 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                require 2 < mem[_115]
                mem[_115 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                mem[_115 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_115 + 132] = 10^6 * sub_7d0b6809
                mem[_115 + 164] = 64
                mem[_115 + 196] = mem[_115]
                t = 0
                while t < 32 * mem[_115]:
                    mem[t + _115 + 228] = mem[t + _115 + 32]
                    t = t + 32
                    continue 
                require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c29.getAmountsOut(uint256 rg1, address[] rg2) with:
                        gas gas_remaining wei
                       args 10^6 * sub_7d0b6809, 64, mem[_115 + 196 len (32 * mem[_115]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_115 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _115 + ceil32(return_data.size) + 128
                require return_data.size >= 32
                _673 = mem[_115 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32
                require mem[_115 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 <= 4294967296
                require mem[_115 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 32 <= return_data.size
                require mem[_115 + mem[_115 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 128] <= 4294967296 and mem[_115 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + (32 * mem[_115 + mem[_115 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 128]) + 32 <= return_data.size
                mem[_115 + ceil32(return_data.size) + 128] = mem[_115 + mem[_115 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 128]
                _820 = mem[_115 + _673 + 128]
                t = 0
                while t < 32 * _820:
                    mem[t + _115 + ceil32(return_data.size) + 160] = mem[t + _115 + _673 + 160]
                    t = t + 32
                    continue 
                mem[64] = (32 * _820) + _115 + ceil32(return_data.size) + 160
                require mem[_115 + ceil32(return_data.size) + 128] - 1 < mem[_115 + ceil32(return_data.size) + 128]
                if mem[(32 * mem[_115 + ceil32(return_data.size) + 128] - 1) + _115 + ceil32(return_data.size) + 160] <= s:
                    idx = idx + 1
                    s = s
                    continue 
                idx = idx + 1
                s = mem[(32 * mem[_115 + ceil32(return_data.size) + 128] - 1) + _115 + ceil32(return_data.size) + 160]
                continue 
            if 4 == idx:
                _143 = mem[64]
                mem[mem[64]] = 3
                mem[64] = mem[64] + 128
                require 0 < mem[_143]
                mem[_143 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                require 1 < mem[_143]
                mem[_143 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                require 2 < mem[_143]
                mem[_143 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                mem[_143 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_143 + 132] = 10^6 * sub_7d0b6809
                mem[_143 + 164] = 64
                mem[_143 + 196] = mem[_143]
                t = 0
                while t < 32 * mem[_143]:
                    mem[t + _143 + 228] = mem[t + _143 + 32]
                    t = t + 32
                    continue 
                require ext_code.size(0x7b17021fcb7bc888641dc3bedfed3734fcaf2c87)
                staticcall 0x7b17021fcb7bc888641dc3bedfed3734fcaf2c87.getAmountsOut(uint256 rg1, address[] rg2) with:
                        gas gas_remaining wei
                       args 10^6 * sub_7d0b6809, 64, mem[_143 + 196 len (32 * mem[_143]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_143 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _143 + ceil32(return_data.size) + 128
                require return_data.size >= 32
                _671 = mem[_143 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32
                require mem[_143 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 <= 4294967296
                require mem[_143 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 32 <= return_data.size
                require mem[_143 + mem[_143 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 128] <= 4294967296 and mem[_143 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + (32 * mem[_143 + mem[_143 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 128]) + 32 <= return_data.size
                mem[_143 + ceil32(return_data.size) + 128] = mem[_143 + mem[_143 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 128]
                _819 = mem[_143 + _671 + 128]
                t = 0
                while t < 32 * _819:
                    mem[t + _143 + ceil32(return_data.size) + 160] = mem[t + _143 + _671 + 160]
                    t = t + 32
                    continue 
                mem[64] = (32 * _819) + _143 + ceil32(return_data.size) + 160
                require mem[_143 + ceil32(return_data.size) + 128] - 1 < mem[_143 + ceil32(return_data.size) + 128]
                if mem[(32 * mem[_143 + ceil32(return_data.size) + 128] - 1) + _143 + ceil32(return_data.size) + 160] <= s:
                    idx = idx + 1
                    s = s
                    continue 
                idx = idx + 1
                s = mem[(32 * mem[_143 + ceil32(return_data.size) + 128] - 1) + _143 + ceil32(return_data.size) + 160]
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
                _167 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                require 0 < mem[_167]
                mem[_167 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                require 1 < mem[_167]
                mem[_167 + 64] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                mem[_167 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_167 + 100] = 10^6 * sub_7d0b6809
                mem[_167 + 132] = 64
                mem[_167 + 164] = mem[_167]
                t = 0
                while t < 32 * mem[_167]:
                    mem[t + _167 + 196] = mem[t + _167 + 32]
                    t = t + 32
                    continue 
                require ext_code.size(0x53c153a0df7e050bbefbb70ee9632061f12795fb)
                staticcall 0x53c153a0df7e050bbefbb70ee9632061f12795fb.getAmountsOut(uint256 rg1, address[] rg2) with:
                        gas gas_remaining wei
                       args 10^6 * sub_7d0b6809, 64, mem[_167 + 164 len (32 * mem[_167]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_167 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _167 + ceil32(return_data.size) + 96
                require return_data.size >= 32
                _667 = mem[_167 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32
                require mem[_167 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 <= 4294967296
                require mem[_167 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 32 <= return_data.size
                require mem[_167 + mem[_167 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 96] <= 4294967296 and mem[_167 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + (32 * mem[_167 + mem[_167 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 96]) + 32 <= return_data.size
                mem[_167 + ceil32(return_data.size) + 96] = mem[_167 + mem[_167 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 96]
                _817 = mem[_167 + _667 + 96]
                t = 0
                while t < 32 * _817:
                    mem[t + _167 + ceil32(return_data.size) + 128] = mem[t + _167 + _667 + 128]
                    t = t + 32
                    continue 
                mem[64] = (32 * _817) + _167 + ceil32(return_data.size) + 128
                require mem[_167 + ceil32(return_data.size) + 96] - 1 < mem[_167 + ceil32(return_data.size) + 96]
                if mem[(32 * mem[_167 + ceil32(return_data.size) + 96] - 1) + _167 + ceil32(return_data.size) + 128] <= s:
                    idx = idx + 1
                    s = s
                    continue 
                idx = idx + 1
                s = mem[(32 * mem[_167 + ceil32(return_data.size) + 96] - 1) + _167 + ceil32(return_data.size) + 128]
                continue 
            _169 = mem[64]
            mem[mem[64]] = 3
            mem[64] = mem[64] + 128
            require 0 < mem[_169]
            mem[_169 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
            require 1 < mem[_169]
            mem[_169 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
            require 2 < mem[_169]
            mem[_169 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
            mem[_169 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[_169 + 132] = 10^6 * sub_7d0b6809
            mem[_169 + 164] = 64
            mem[_169 + 196] = mem[_169]
            t = 0
            while t < 32 * mem[_169]:
                mem[t + _169 + 228] = mem[t + _169 + 32]
                t = t + 32
                continue 
            require ext_code.size(0x53c153a0df7e050bbefbb70ee9632061f12795fb)
            staticcall 0x53c153a0df7e050bbefbb70ee9632061f12795fb.getAmountsOut(uint256 rg1, address[] rg2) with:
                    gas gas_remaining wei
                   args 10^6 * sub_7d0b6809, 64, mem[_169 + 196 len (32 * mem[_169]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[_169 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = _169 + ceil32(return_data.size) + 128
            require return_data.size >= 32
            _669 = mem[_169 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32
            require mem[_169 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 <= 4294967296
            require mem[_169 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 32 <= return_data.size
            require mem[_169 + mem[_169 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 128] <= 4294967296 and mem[_169 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + (32 * mem[_169 + mem[_169 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 128]) + 32 <= return_data.size
            mem[_169 + ceil32(return_data.size) + 128] = mem[_169 + mem[_169 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 128]
            _818 = mem[_169 + _669 + 128]
            t = 0
            while t < 32 * _818:
                mem[t + _169 + ceil32(return_data.size) + 160] = mem[t + _169 + _669 + 160]
                t = t + 32
                continue 
            mem[64] = (32 * _818) + _169 + ceil32(return_data.size) + 160
            require mem[_169 + ceil32(return_data.size) + 128] - 1 < mem[_169 + ceil32(return_data.size) + 128]
            if mem[(32 * mem[_169 + ceil32(return_data.size) + 128] - 1) + _169 + ceil32(return_data.size) + 160] <= s:
                idx = idx + 1
                s = s
                continue 
            idx = idx + 1
            s = mem[(32 * mem[_169 + ceil32(return_data.size) + 128] - 1) + _169 + ceil32(return_data.size) + 160]
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
                _715 = mem[64]
                mem[mem[64]] = 4
                mem[64] = mem[64] + 160
                require 0 < mem[_715]
                mem[_715 + 32] = 0x8d11ec38a3eb5e956b052f67da8bdc9bef8abf3e
                require 1 < mem[_715]
                mem[_715 + 64] = 0x5cc61a78f164885776aa610fb0fe1257df78e59b
                require 2 < mem[_715]
                mem[_715 + 96] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                require 3 < mem[_715]
                mem[_715 + 128] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                mem[_715 + 160] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_715 + 164] = s
                mem[_715 + 196] = 64
                mem[_715 + 228] = mem[_715]
                u = 0
                while u < 32 * mem[_715]:
                    mem[u + _715 + 260] = mem[u + _715 + 32]
                    u = u + 32
                    continue 
                require ext_code.size(0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52)
                staticcall 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52.getAmountsOut(uint256 rg1, address[] rg2) with:
                        gas gas_remaining wei
                       args s, 64, mem[_715 + 228 len (32 * mem[_715]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_715 + 160 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _715 + ceil32(return_data.size) + 160
                require return_data.size >= 32
                _2139 = mem[_715 + 160 len 4], Mask(224, 32, s) >> 32
                require mem[_715 + 160 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                require mem[_715 + 160 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                require mem[_715 + mem[_715 + 160 len 4], Mask(224, 32, s) >> 32 + 160] <= 4294967296 and mem[_715 + 160 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_715 + mem[_715 + 160 len 4], Mask(224, 32, s) >> 32 + 160]) + 32 <= return_data.size
                mem[_715 + ceil32(return_data.size) + 160] = mem[_715 + mem[_715 + 160 len 4], Mask(224, 32, s) >> 32 + 160]
                _2279 = mem[_715 + _2139 + 160]
                s = 0
                while s < 32 * _2279:
                    mem[s + _715 + ceil32(return_data.size) + 192] = mem[s + _715 + _2139 + 192]
                    s = s + 32
                    continue 
                mem[64] = (32 * _2279) + _715 + ceil32(return_data.size) + 192
                require mem[_715 + ceil32(return_data.size) + 160] - 1 < mem[_715 + ceil32(return_data.size) + 160]
                if mem[(32 * mem[_715 + ceil32(return_data.size) + 160] - 1) + _715 + ceil32(return_data.size) + 192] <= t:
                    idx = idx + 1
                    t = t
                    continue 
                idx = idx + 1
                t = mem[(32 * mem[_715 + ceil32(return_data.size) + 160] - 1) + _715 + ceil32(return_data.size) + 192]
                continue 
            if 3 == idx:
                _805 = mem[64]
                mem[mem[64]] = 3
                mem[64] = mem[64] + 128
                require 0 < mem[_805]
                mem[_805 + 32] = 0x8d11ec38a3eb5e956b052f67da8bdc9bef8abf3e
                require 1 < mem[_805]
                mem[_805 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                require 2 < mem[_805]
                mem[_805 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                mem[_805 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_805 + 132] = s
                mem[_805 + 164] = 64
                mem[_805 + 196] = mem[_805]
                u = 0
                while u < 32 * mem[_805]:
                    mem[u + _805 + 228] = mem[u + _805 + 32]
                    u = u + 32
                    continue 
                require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c29.getAmountsOut(uint256 rg1, address[] rg2) with:
                        gas gas_remaining wei
                       args s, 64, mem[_805 + 196 len (32 * mem[_805]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_805 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _805 + ceil32(return_data.size) + 128
                require return_data.size >= 32
                _2137 = mem[_805 + 128 len 4], Mask(224, 32, s) >> 32
                require mem[_805 + 128 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                require mem[_805 + 128 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                require mem[_805 + mem[_805 + 128 len 4], Mask(224, 32, s) >> 32 + 128] <= 4294967296 and mem[_805 + 128 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_805 + mem[_805 + 128 len 4], Mask(224, 32, s) >> 32 + 128]) + 32 <= return_data.size
                mem[_805 + ceil32(return_data.size) + 128] = mem[_805 + mem[_805 + 128 len 4], Mask(224, 32, s) >> 32 + 128]
                _2278 = mem[_805 + _2137 + 128]
                s = 0
                while s < 32 * _2278:
                    mem[s + _805 + ceil32(return_data.size) + 160] = mem[s + _805 + _2137 + 160]
                    s = s + 32
                    continue 
                mem[64] = (32 * _2278) + _805 + ceil32(return_data.size) + 160
                require mem[_805 + ceil32(return_data.size) + 128] - 1 < mem[_805 + ceil32(return_data.size) + 128]
                if mem[(32 * mem[_805 + ceil32(return_data.size) + 128] - 1) + _805 + ceil32(return_data.size) + 160] <= t:
                    idx = idx + 1
                    t = t
                    continue 
                idx = idx + 1
                t = mem[(32 * mem[_805 + ceil32(return_data.size) + 128] - 1) + _805 + ceil32(return_data.size) + 160]
                continue 
            if 4 == idx:
                _883 = mem[64]
                mem[mem[64]] = 3
                mem[64] = mem[64] + 128
                require 0 < mem[_883]
                mem[_883 + 32] = 0x8d11ec38a3eb5e956b052f67da8bdc9bef8abf3e
                require 1 < mem[_883]
                mem[_883 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                require 2 < mem[_883]
                mem[_883 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                mem[_883 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_883 + 132] = s
                mem[_883 + 164] = 64
                mem[_883 + 196] = mem[_883]
                u = 0
                while u < 32 * mem[_883]:
                    mem[u + _883 + 228] = mem[u + _883 + 32]
                    u = u + 32
                    continue 
                require ext_code.size(0x7b17021fcb7bc888641dc3bedfed3734fcaf2c87)
                staticcall 0x7b17021fcb7bc888641dc3bedfed3734fcaf2c87.getAmountsOut(uint256 rg1, address[] rg2) with:
                        gas gas_remaining wei
                       args s, 64, mem[_883 + 196 len (32 * mem[_883]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_883 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _883 + ceil32(return_data.size) + 128
                require return_data.size >= 32
                _2135 = mem[_883 + 128 len 4], Mask(224, 32, s) >> 32
                require mem[_883 + 128 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                require mem[_883 + 128 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                require mem[_883 + mem[_883 + 128 len 4], Mask(224, 32, s) >> 32 + 128] <= 4294967296 and mem[_883 + 128 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_883 + mem[_883 + 128 len 4], Mask(224, 32, s) >> 32 + 128]) + 32 <= return_data.size
                mem[_883 + ceil32(return_data.size) + 128] = mem[_883 + mem[_883 + 128 len 4], Mask(224, 32, s) >> 32 + 128]
                _2277 = mem[_883 + _2135 + 128]
                s = 0
                while s < 32 * _2277:
                    mem[s + _883 + ceil32(return_data.size) + 160] = mem[s + _883 + _2135 + 160]
                    s = s + 32
                    continue 
                mem[64] = (32 * _2277) + _883 + ceil32(return_data.size) + 160
                require mem[_883 + ceil32(return_data.size) + 128] - 1 < mem[_883 + ceil32(return_data.size) + 128]
                if mem[(32 * mem[_883 + ceil32(return_data.size) + 128] - 1) + _883 + ceil32(return_data.size) + 160] <= t:
                    idx = idx + 1
                    t = t
                    continue 
                idx = idx + 1
                t = mem[(32 * mem[_883 + ceil32(return_data.size) + 128] - 1) + _883 + ceil32(return_data.size) + 160]
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
                _923 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                require 0 < mem[_923]
                mem[_923 + 32] = 0x8d11ec38a3eb5e956b052f67da8bdc9bef8abf3e
                require 1 < mem[_923]
                mem[_923 + 64] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                mem[_923 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_923 + 100] = s
                mem[_923 + 132] = 64
                mem[_923 + 164] = mem[_923]
                u = 0
                while u < 32 * mem[_923]:
                    mem[u + _923 + 196] = mem[u + _923 + 32]
                    u = u + 32
                    continue 
                require ext_code.size(0x53c153a0df7e050bbefbb70ee9632061f12795fb)
                staticcall 0x53c153a0df7e050bbefbb70ee9632061f12795fb.getAmountsOut(uint256 rg1, address[] rg2) with:
                        gas gas_remaining wei
                       args s, 64, mem[_923 + 164 len (32 * mem[_923]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_923 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _923 + ceil32(return_data.size) + 96
                require return_data.size >= 32
                _2131 = mem[_923 + 96 len 4], Mask(224, 32, s) >> 32
                require mem[_923 + 96 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                require mem[_923 + 96 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                require mem[_923 + mem[_923 + 96 len 4], Mask(224, 32, s) >> 32 + 96] <= 4294967296 and mem[_923 + 96 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_923 + mem[_923 + 96 len 4], Mask(224, 32, s) >> 32 + 96]) + 32 <= return_data.size
                mem[_923 + ceil32(return_data.size) + 96] = mem[_923 + mem[_923 + 96 len 4], Mask(224, 32, s) >> 32 + 96]
                _2275 = mem[_923 + _2131 + 96]
                s = 0
                while s < 32 * _2275:
                    mem[s + _923 + ceil32(return_data.size) + 128] = mem[s + _923 + _2131 + 128]
                    s = s + 32
                    continue 
                mem[64] = (32 * _2275) + _923 + ceil32(return_data.size) + 128
                require mem[_923 + ceil32(return_data.size) + 96] - 1 < mem[_923 + ceil32(return_data.size) + 96]
                if mem[(32 * mem[_923 + ceil32(return_data.size) + 96] - 1) + _923 + ceil32(return_data.size) + 128] <= t:
                    idx = idx + 1
                    t = t
                    continue 
                idx = idx + 1
                t = mem[(32 * mem[_923 + ceil32(return_data.size) + 96] - 1) + _923 + ceil32(return_data.size) + 128]
                continue 
            _925 = mem[64]
            mem[mem[64]] = 3
            mem[64] = mem[64] + 128
            require 0 < mem[_925]
            mem[_925 + 32] = 0x8d11ec38a3eb5e956b052f67da8bdc9bef8abf3e
            require 1 < mem[_925]
            mem[_925 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
            require 2 < mem[_925]
            mem[_925 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
            mem[_925 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[_925 + 132] = s
            mem[_925 + 164] = 64
            mem[_925 + 196] = mem[_925]
            u = 0
            while u < 32 * mem[_925]:
                mem[u + _925 + 228] = mem[u + _925 + 32]
                u = u + 32
                continue 
            require ext_code.size(0x53c153a0df7e050bbefbb70ee9632061f12795fb)
            staticcall 0x53c153a0df7e050bbefbb70ee9632061f12795fb.getAmountsOut(uint256 rg1, address[] rg2) with:
                    gas gas_remaining wei
                   args s, 64, mem[_925 + 196 len (32 * mem[_925]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[_925 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = _925 + ceil32(return_data.size) + 128
            require return_data.size >= 32
            _2133 = mem[_925 + 128 len 4], Mask(224, 32, s) >> 32
            require mem[_925 + 128 len 4], Mask(224, 32, s) >> 32 <= 4294967296
            require mem[_925 + 128 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
            require mem[_925 + mem[_925 + 128 len 4], Mask(224, 32, s) >> 32 + 128] <= 4294967296 and mem[_925 + 128 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_925 + mem[_925 + 128 len 4], Mask(224, 32, s) >> 32 + 128]) + 32 <= return_data.size
            mem[_925 + ceil32(return_data.size) + 128] = mem[_925 + mem[_925 + 128 len 4], Mask(224, 32, s) >> 32 + 128]
            _2276 = mem[_925 + _2133 + 128]
            s = 0
            while s < 32 * _2276:
                mem[s + _925 + ceil32(return_data.size) + 160] = mem[s + _925 + _2133 + 160]
                s = s + 32
                continue 
            mem[64] = (32 * _2276) + _925 + ceil32(return_data.size) + 160
            require mem[_925 + ceil32(return_data.size) + 128] - 1 < mem[_925 + ceil32(return_data.size) + 128]
            if mem[(32 * mem[_925 + ceil32(return_data.size) + 128] - 1) + _925 + ceil32(return_data.size) + 160] <= t:
                idx = idx + 1
                t = t
                continue 
            idx = idx + 1
            t = mem[(32 * mem[_925 + ceil32(return_data.size) + 128] - 1) + _925 + ceil32(return_data.size) + 160]
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
                _92 = mem[64]
                mem[mem[64]] = 4
                mem[64] = mem[64] + 160
                require 0 < mem[_92]
                mem[_92 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                require 1 < mem[_92]
                mem[_92 + 64] = 0x5cc61a78f164885776aa610fb0fe1257df78e59b
                require 2 < mem[_92]
                mem[_92 + 96] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                require 3 < mem[_92]
                mem[_92 + 128] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                mem[_92 + 160] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_92 + 164] = 0
                mem[_92 + 196] = 64
                mem[_92 + 228] = mem[_92]
                t = 0
                while t < 32 * mem[_92]:
                    mem[t + _92 + 260] = mem[t + _92 + 32]
                    t = t + 32
                    continue 
                require ext_code.size(0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52)
                staticcall 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52.getAmountsOut(uint256 rg1, address[] rg2) with:
                        gas gas_remaining wei
                       args 0, 64, mem[_92 + 228 len (32 * mem[_92]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_92 + 160 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _92 + ceil32(return_data.size) + 160
                require return_data.size >= 32
                _704 = mem[_92 + 160 len 4], 0
                require mem[_92 + 160 len 4], 0 <= 4294967296
                require mem[_92 + 160 len 4], 0 + 32 <= return_data.size
                require mem[_92 + mem[_92 + 160 len 4], 0 + 160] <= 4294967296 and mem[_92 + 160 len 4], 0 + (32 * mem[_92 + mem[_92 + 160 len 4], 0 + 160]) + 32 <= return_data.size
                mem[_92 + ceil32(return_data.size) + 160] = mem[_92 + mem[_92 + 160 len 4], 0 + 160]
                _854 = mem[_92 + _704 + 160]
                t = 0
                while t < 32 * _854:
                    mem[t + _92 + ceil32(return_data.size) + 192] = mem[t + _92 + _704 + 192]
                    t = t + 32
                    continue 
                mem[64] = (32 * _854) + _92 + ceil32(return_data.size) + 192
                require mem[_92 + ceil32(return_data.size) + 160] - 1 < mem[_92 + ceil32(return_data.size) + 160]
                if mem[(32 * mem[_92 + ceil32(return_data.size) + 160] - 1) + _92 + ceil32(return_data.size) + 192] <= s:
                    idx = idx + 1
                    s = s
                    continue 
                idx = idx + 1
                s = mem[(32 * mem[_92 + ceil32(return_data.size) + 160] - 1) + _92 + ceil32(return_data.size) + 192]
                continue 
            if 3 == idx:
                _134 = mem[64]
                mem[mem[64]] = 3
                mem[64] = mem[64] + 128
                require 0 < mem[_134]
                mem[_134 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                require 1 < mem[_134]
                mem[_134 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                require 2 < mem[_134]
                mem[_134 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                mem[_134 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_134 + 132] = 0
                mem[_134 + 164] = 64
                mem[_134 + 196] = mem[_134]
                t = 0
                while t < 32 * mem[_134]:
                    mem[t + _134 + 228] = mem[t + _134 + 32]
                    t = t + 32
                    continue 
                require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c29.getAmountsOut(uint256 rg1, address[] rg2) with:
                        gas gas_remaining wei
                       args 0, 64, mem[_134 + 196 len (32 * mem[_134]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_134 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _134 + ceil32(return_data.size) + 128
                require return_data.size >= 32
                _702 = mem[_134 + 128 len 4], 0
                require mem[_134 + 128 len 4], 0 <= 4294967296
                require mem[_134 + 128 len 4], 0 + 32 <= return_data.size
                require mem[_134 + mem[_134 + 128 len 4], 0 + 128] <= 4294967296 and mem[_134 + 128 len 4], 0 + (32 * mem[_134 + mem[_134 + 128 len 4], 0 + 128]) + 32 <= return_data.size
                mem[_134 + ceil32(return_data.size) + 128] = mem[_134 + mem[_134 + 128 len 4], 0 + 128]
                _853 = mem[_134 + _702 + 128]
                t = 0
                while t < 32 * _853:
                    mem[t + _134 + ceil32(return_data.size) + 160] = mem[t + _134 + _702 + 160]
                    t = t + 32
                    continue 
                mem[64] = (32 * _853) + _134 + ceil32(return_data.size) + 160
                require mem[_134 + ceil32(return_data.size) + 128] - 1 < mem[_134 + ceil32(return_data.size) + 128]
                if mem[(32 * mem[_134 + ceil32(return_data.size) + 128] - 1) + _134 + ceil32(return_data.size) + 160] <= s:
                    idx = idx + 1
                    s = s
                    continue 
                idx = idx + 1
                s = mem[(32 * mem[_134 + ceil32(return_data.size) + 128] - 1) + _134 + ceil32(return_data.size) + 160]
                continue 
            if 4 == idx:
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
                require ext_code.size(0x7b17021fcb7bc888641dc3bedfed3734fcaf2c87)
                staticcall 0x7b17021fcb7bc888641dc3bedfed3734fcaf2c87.getAmountsOut(uint256 rg1, address[] rg2) with:
                        gas gas_remaining wei
                       args 0, 64, mem[_160 + 196 len (32 * mem[_160]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_160 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _160 + ceil32(return_data.size) + 128
                require return_data.size >= 32
                _700 = mem[_160 + 128 len 4], 0
                require mem[_160 + 128 len 4], 0 <= 4294967296
                require mem[_160 + 128 len 4], 0 + 32 <= return_data.size
                require mem[_160 + mem[_160 + 128 len 4], 0 + 128] <= 4294967296 and mem[_160 + 128 len 4], 0 + (32 * mem[_160 + mem[_160 + 128 len 4], 0 + 128]) + 32 <= return_data.size
                mem[_160 + ceil32(return_data.size) + 128] = mem[_160 + mem[_160 + 128 len 4], 0 + 128]
                _852 = mem[_160 + _700 + 128]
                t = 0
                while t < 32 * _852:
                    mem[t + _160 + ceil32(return_data.size) + 160] = mem[t + _160 + _700 + 160]
                    t = t + 32
                    continue 
                mem[64] = (32 * _852) + _160 + ceil32(return_data.size) + 160
                require mem[_160 + ceil32(return_data.size) + 128] - 1 < mem[_160 + ceil32(return_data.size) + 128]
                if mem[(32 * mem[_160 + ceil32(return_data.size) + 128] - 1) + _160 + ceil32(return_data.size) + 160] <= s:
                    idx = idx + 1
                    s = s
                    continue 
                idx = idx + 1
                s = mem[(32 * mem[_160 + ceil32(return_data.size) + 128] - 1) + _160 + ceil32(return_data.size) + 160]
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
                _180 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                require 0 < mem[_180]
                mem[_180 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                require 1 < mem[_180]
                mem[_180 + 64] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                mem[_180 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_180 + 100] = 0
                mem[_180 + 132] = 64
                mem[_180 + 164] = mem[_180]
                t = 0
                while t < 32 * mem[_180]:
                    mem[t + _180 + 196] = mem[t + _180 + 32]
                    t = t + 32
                    continue 
                require ext_code.size(0x53c153a0df7e050bbefbb70ee9632061f12795fb)
                staticcall 0x53c153a0df7e050bbefbb70ee9632061f12795fb.getAmountsOut(uint256 rg1, address[] rg2) with:
                        gas gas_remaining wei
                       args 0, 64, mem[_180 + 164 len (32 * mem[_180]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_180 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _180 + ceil32(return_data.size) + 96
                require return_data.size >= 32
                _696 = mem[_180 + 96 len 4], 0
                require mem[_180 + 96 len 4], 0 <= 4294967296
                require mem[_180 + 96 len 4], 0 + 32 <= return_data.size
                require mem[_180 + mem[_180 + 96 len 4], 0 + 96] <= 4294967296 and mem[_180 + 96 len 4], 0 + (32 * mem[_180 + mem[_180 + 96 len 4], 0 + 96]) + 32 <= return_data.size
                mem[_180 + ceil32(return_data.size) + 96] = mem[_180 + mem[_180 + 96 len 4], 0 + 96]
                _850 = mem[_180 + _696 + 96]
                t = 0
                while t < 32 * _850:
                    mem[t + _180 + ceil32(return_data.size) + 128] = mem[t + _180 + _696 + 128]
                    t = t + 32
                    continue 
                mem[64] = (32 * _850) + _180 + ceil32(return_data.size) + 128
                require mem[_180 + ceil32(return_data.size) + 96] - 1 < mem[_180 + ceil32(return_data.size) + 96]
                if mem[(32 * mem[_180 + ceil32(return_data.size) + 96] - 1) + _180 + ceil32(return_data.size) + 128] <= s:
                    idx = idx + 1
                    s = s
                    continue 
                idx = idx + 1
                s = mem[(32 * mem[_180 + ceil32(return_data.size) + 96] - 1) + _180 + ceil32(return_data.size) + 128]
                continue 
            _182 = mem[64]
            mem[mem[64]] = 3
            mem[64] = mem[64] + 128
            require 0 < mem[_182]
            mem[_182 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
            require 1 < mem[_182]
            mem[_182 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
            require 2 < mem[_182]
            mem[_182 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
            mem[_182 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[_182 + 132] = 0
            mem[_182 + 164] = 64
            mem[_182 + 196] = mem[_182]
            t = 0
            while t < 32 * mem[_182]:
                mem[t + _182 + 228] = mem[t + _182 + 32]
                t = t + 32
                continue 
            require ext_code.size(0x53c153a0df7e050bbefbb70ee9632061f12795fb)
            staticcall 0x53c153a0df7e050bbefbb70ee9632061f12795fb.getAmountsOut(uint256 rg1, address[] rg2) with:
                    gas gas_remaining wei
                   args 0, 64, mem[_182 + 196 len (32 * mem[_182]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[_182 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = _182 + ceil32(return_data.size) + 128
            require return_data.size >= 32
            _698 = mem[_182 + 128 len 4], 0
            require mem[_182 + 128 len 4], 0 <= 4294967296
            require mem[_182 + 128 len 4], 0 + 32 <= return_data.size
            require mem[_182 + mem[_182 + 128 len 4], 0 + 128] <= 4294967296 and mem[_182 + 128 len 4], 0 + (32 * mem[_182 + mem[_182 + 128 len 4], 0 + 128]) + 32 <= return_data.size
            mem[_182 + ceil32(return_data.size) + 128] = mem[_182 + mem[_182 + 128 len 4], 0 + 128]
            _851 = mem[_182 + _698 + 128]
            t = 0
            while t < 32 * _851:
                mem[t + _182 + ceil32(return_data.size) + 160] = mem[t + _182 + _698 + 160]
                t = t + 32
                continue 
            mem[64] = (32 * _851) + _182 + ceil32(return_data.size) + 160
            require mem[_182 + ceil32(return_data.size) + 128] - 1 < mem[_182 + ceil32(return_data.size) + 128]
            if mem[(32 * mem[_182 + ceil32(return_data.size) + 128] - 1) + _182 + ceil32(return_data.size) + 160] <= s:
                idx = idx + 1
                s = s
                continue 
            idx = idx + 1
            s = mem[(32 * mem[_182 + ceil32(return_data.size) + 128] - 1) + _182 + ceil32(return_data.size) + 160]
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
                _744 = mem[64]
                mem[mem[64]] = 4
                mem[64] = mem[64] + 160
                require 0 < mem[_744]
                mem[_744 + 32] = 0x8d11ec38a3eb5e956b052f67da8bdc9bef8abf3e
                require 1 < mem[_744]
                mem[_744 + 64] = 0x5cc61a78f164885776aa610fb0fe1257df78e59b
                require 2 < mem[_744]
                mem[_744 + 96] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                require 3 < mem[_744]
                mem[_744 + 128] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                mem[_744 + 160] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_744 + 164] = s
                mem[_744 + 196] = 64
                mem[_744 + 228] = mem[_744]
                u = 0
                while u < 32 * mem[_744]:
                    mem[u + _744 + 260] = mem[u + _744 + 32]
                    u = u + 32
                    continue 
                require ext_code.size(0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52)
                staticcall 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52.getAmountsOut(uint256 rg1, address[] rg2) with:
                        gas gas_remaining wei
                       args s, 64, mem[_744 + 228 len (32 * mem[_744]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_744 + 160 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _744 + ceil32(return_data.size) + 160
                require return_data.size >= 32
                _2096 = mem[_744 + 160 len 4], Mask(224, 32, s) >> 32
                require mem[_744 + 160 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                require mem[_744 + 160 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                require mem[_744 + mem[_744 + 160 len 4], Mask(224, 32, s) >> 32 + 160] <= 4294967296 and mem[_744 + 160 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_744 + mem[_744 + 160 len 4], Mask(224, 32, s) >> 32 + 160]) + 32 <= return_data.size
                mem[_744 + ceil32(return_data.size) + 160] = mem[_744 + mem[_744 + 160 len 4], Mask(224, 32, s) >> 32 + 160]
                _2212 = mem[_744 + _2096 + 160]
                s = 0
                while s < 32 * _2212:
                    mem[s + _744 + ceil32(return_data.size) + 192] = mem[s + _744 + _2096 + 192]
                    s = s + 32
                    continue 
                mem[64] = (32 * _2212) + _744 + ceil32(return_data.size) + 192
                require mem[_744 + ceil32(return_data.size) + 160] - 1 < mem[_744 + ceil32(return_data.size) + 160]
                if mem[(32 * mem[_744 + ceil32(return_data.size) + 160] - 1) + _744 + ceil32(return_data.size) + 192] <= t:
                    idx = idx + 1
                    t = t
                    continue 
                idx = idx + 1
                t = mem[(32 * mem[_744 + ceil32(return_data.size) + 160] - 1) + _744 + ceil32(return_data.size) + 192]
                continue 
            if 3 == idx:
                _840 = mem[64]
                mem[mem[64]] = 3
                mem[64] = mem[64] + 128
                require 0 < mem[_840]
                mem[_840 + 32] = 0x8d11ec38a3eb5e956b052f67da8bdc9bef8abf3e
                require 1 < mem[_840]
                mem[_840 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                require 2 < mem[_840]
                mem[_840 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                mem[_840 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_840 + 132] = s
                mem[_840 + 164] = 64
                mem[_840 + 196] = mem[_840]
                u = 0
                while u < 32 * mem[_840]:
                    mem[u + _840 + 228] = mem[u + _840 + 32]
                    u = u + 32
                    continue 
                require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c29.getAmountsOut(uint256 rg1, address[] rg2) with:
                        gas gas_remaining wei
                       args s, 64, mem[_840 + 196 len (32 * mem[_840]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_840 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _840 + ceil32(return_data.size) + 128
                require return_data.size >= 32
                _2094 = mem[_840 + 128 len 4], Mask(224, 32, s) >> 32
                require mem[_840 + 128 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                require mem[_840 + 128 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                require mem[_840 + mem[_840 + 128 len 4], Mask(224, 32, s) >> 32 + 128] <= 4294967296 and mem[_840 + 128 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_840 + mem[_840 + 128 len 4], Mask(224, 32, s) >> 32 + 128]) + 32 <= return_data.size
                mem[_840 + ceil32(return_data.size) + 128] = mem[_840 + mem[_840 + 128 len 4], Mask(224, 32, s) >> 32 + 128]
                _2211 = mem[_840 + _2094 + 128]
                s = 0
                while s < 32 * _2211:
                    mem[s + _840 + ceil32(return_data.size) + 160] = mem[s + _840 + _2094 + 160]
                    s = s + 32
                    continue 
                mem[64] = (32 * _2211) + _840 + ceil32(return_data.size) + 160
                require mem[_840 + ceil32(return_data.size) + 128] - 1 < mem[_840 + ceil32(return_data.size) + 128]
                if mem[(32 * mem[_840 + ceil32(return_data.size) + 128] - 1) + _840 + ceil32(return_data.size) + 160] <= t:
                    idx = idx + 1
                    t = t
                    continue 
                idx = idx + 1
                t = mem[(32 * mem[_840 + ceil32(return_data.size) + 128] - 1) + _840 + ceil32(return_data.size) + 160]
                continue 
            if 4 == idx:
                _892 = mem[64]
                mem[mem[64]] = 3
                mem[64] = mem[64] + 128
                require 0 < mem[_892]
                mem[_892 + 32] = 0x8d11ec38a3eb5e956b052f67da8bdc9bef8abf3e
                require 1 < mem[_892]
                mem[_892 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                require 2 < mem[_892]
                mem[_892 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                mem[_892 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_892 + 132] = s
                mem[_892 + 164] = 64
                mem[_892 + 196] = mem[_892]
                u = 0
                while u < 32 * mem[_892]:
                    mem[u + _892 + 228] = mem[u + _892 + 32]
                    u = u + 32
                    continue 
                require ext_code.size(0x7b17021fcb7bc888641dc3bedfed3734fcaf2c87)
                staticcall 0x7b17021fcb7bc888641dc3bedfed3734fcaf2c87.getAmountsOut(uint256 rg1, address[] rg2) with:
                        gas gas_remaining wei
                       args s, 64, mem[_892 + 196 len (32 * mem[_892]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_892 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _892 + ceil32(return_data.size) + 128
                require return_data.size >= 32
                _2092 = mem[_892 + 128 len 4], Mask(224, 32, s) >> 32
                require mem[_892 + 128 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                require mem[_892 + 128 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                require mem[_892 + mem[_892 + 128 len 4], Mask(224, 32, s) >> 32 + 128] <= 4294967296 and mem[_892 + 128 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_892 + mem[_892 + 128 len 4], Mask(224, 32, s) >> 32 + 128]) + 32 <= return_data.size
                mem[_892 + ceil32(return_data.size) + 128] = mem[_892 + mem[_892 + 128 len 4], Mask(224, 32, s) >> 32 + 128]
                _2210 = mem[_892 + _2092 + 128]
                s = 0
                while s < 32 * _2210:
                    mem[s + _892 + ceil32(return_data.size) + 160] = mem[s + _892 + _2092 + 160]
                    s = s + 32
                    continue 
                mem[64] = (32 * _2210) + _892 + ceil32(return_data.size) + 160
                require mem[_892 + ceil32(return_data.size) + 128] - 1 < mem[_892 + ceil32(return_data.size) + 128]
                if mem[(32 * mem[_892 + ceil32(return_data.size) + 128] - 1) + _892 + ceil32(return_data.size) + 160] <= t:
                    idx = idx + 1
                    t = t
                    continue 
                idx = idx + 1
                t = mem[(32 * mem[_892 + ceil32(return_data.size) + 128] - 1) + _892 + ceil32(return_data.size) + 160]
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
                _964 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                require 0 < mem[_964]
                mem[_964 + 32] = 0x8d11ec38a3eb5e956b052f67da8bdc9bef8abf3e
                require 1 < mem[_964]
                mem[_964 + 64] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                mem[_964 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_964 + 100] = s
                mem[_964 + 132] = 64
                mem[_964 + 164] = mem[_964]
                u = 0
                while u < 32 * mem[_964]:
                    mem[u + _964 + 196] = mem[u + _964 + 32]
                    u = u + 32
                    continue 
                require ext_code.size(0x53c153a0df7e050bbefbb70ee9632061f12795fb)
                staticcall 0x53c153a0df7e050bbefbb70ee9632061f12795fb.getAmountsOut(uint256 rg1, address[] rg2) with:
                        gas gas_remaining wei
                       args s, 64, mem[_964 + 164 len (32 * mem[_964]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_964 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _964 + ceil32(return_data.size) + 96
                require return_data.size >= 32
                _2088 = mem[_964 + 96 len 4], Mask(224, 32, s) >> 32
                require mem[_964 + 96 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                require mem[_964 + 96 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                require mem[_964 + mem[_964 + 96 len 4], Mask(224, 32, s) >> 32 + 96] <= 4294967296 and mem[_964 + 96 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_964 + mem[_964 + 96 len 4], Mask(224, 32, s) >> 32 + 96]) + 32 <= return_data.size
                mem[_964 + ceil32(return_data.size) + 96] = mem[_964 + mem[_964 + 96 len 4], Mask(224, 32, s) >> 32 + 96]
                _2208 = mem[_964 + _2088 + 96]
                s = 0
                while s < 32 * _2208:
                    mem[s + _964 + ceil32(return_data.size) + 128] = mem[s + _964 + _2088 + 128]
                    s = s + 32
                    continue 
                mem[64] = (32 * _2208) + _964 + ceil32(return_data.size) + 128
                require mem[_964 + ceil32(return_data.size) + 96] - 1 < mem[_964 + ceil32(return_data.size) + 96]
                if mem[(32 * mem[_964 + ceil32(return_data.size) + 96] - 1) + _964 + ceil32(return_data.size) + 128] <= t:
                    idx = idx + 1
                    t = t
                    continue 
                idx = idx + 1
                t = mem[(32 * mem[_964 + ceil32(return_data.size) + 96] - 1) + _964 + ceil32(return_data.size) + 128]
                continue 
            _966 = mem[64]
            mem[mem[64]] = 3
            mem[64] = mem[64] + 128
            require 0 < mem[_966]
            mem[_966 + 32] = 0x8d11ec38a3eb5e956b052f67da8bdc9bef8abf3e
            require 1 < mem[_966]
            mem[_966 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
            require 2 < mem[_966]
            mem[_966 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
            mem[_966 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[_966 + 132] = s
            mem[_966 + 164] = 64
            mem[_966 + 196] = mem[_966]
            u = 0
            while u < 32 * mem[_966]:
                mem[u + _966 + 228] = mem[u + _966 + 32]
                u = u + 32
                continue 
            require ext_code.size(0x53c153a0df7e050bbefbb70ee9632061f12795fb)
            staticcall 0x53c153a0df7e050bbefbb70ee9632061f12795fb.getAmountsOut(uint256 rg1, address[] rg2) with:
                    gas gas_remaining wei
                   args s, 64, mem[_966 + 196 len (32 * mem[_966]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[_966 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = _966 + ceil32(return_data.size) + 128
            require return_data.size >= 32
            _2090 = mem[_966 + 128 len 4], Mask(224, 32, s) >> 32
            require mem[_966 + 128 len 4], Mask(224, 32, s) >> 32 <= 4294967296
            require mem[_966 + 128 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
            require mem[_966 + mem[_966 + 128 len 4], Mask(224, 32, s) >> 32 + 128] <= 4294967296 and mem[_966 + 128 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_966 + mem[_966 + 128 len 4], Mask(224, 32, s) >> 32 + 128]) + 32 <= return_data.size
            mem[_966 + ceil32(return_data.size) + 128] = mem[_966 + mem[_966 + 128 len 4], Mask(224, 32, s) >> 32 + 128]
            _2209 = mem[_966 + _2090 + 128]
            s = 0
            while s < 32 * _2209:
                mem[s + _966 + ceil32(return_data.size) + 160] = mem[s + _966 + _2090 + 160]
                s = s + 32
                continue 
            mem[64] = (32 * _2209) + _966 + ceil32(return_data.size) + 160
            require mem[_966 + ceil32(return_data.size) + 128] - 1 < mem[_966 + ceil32(return_data.size) + 128]
            if mem[(32 * mem[_966 + ceil32(return_data.size) + 128] - 1) + _966 + ceil32(return_data.size) + 160] <= t:
                idx = idx + 1
                t = t
                continue 
            idx = idx + 1
            t = mem[(32 * mem[_966 + ceil32(return_data.size) + 128] - 1) + _966 + ceil32(return_data.size) + 160]
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
                _76 = mem[64]
                mem[mem[64]] = 4
                mem[64] = mem[64] + 160
                require 0 < mem[_76]
                mem[_76 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                require 1 < mem[_76]
                mem[_76 + 64] = 0x5cc61a78f164885776aa610fb0fe1257df78e59b
                require 2 < mem[_76]
                mem[_76 + 96] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                require 3 < mem[_76]
                mem[_76 + 128] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                mem[_76 + 160] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_76 + 164] = 10^6 * sub_7d0b6809
                mem[_76 + 196] = 64
                mem[_76 + 228] = mem[_76]
                t = 0
                while t < 32 * mem[_76]:
                    mem[t + _76 + 260] = mem[t + _76 + 32]
                    t = t + 32
                    continue 
                require ext_code.size(0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52)
                staticcall 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52.getAmountsOut(uint256 rg1, address[] rg2) with:
                        gas gas_remaining wei
                       args 10^6 * sub_7d0b6809, 64, mem[_76 + 228 len (32 * mem[_76]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_76 + 160 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _76 + ceil32(return_data.size) + 160
                require return_data.size >= 32
                _680 = mem[_76 + 160 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32
                require mem[_76 + 160 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 <= 4294967296
                require mem[_76 + 160 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 32 <= return_data.size
                require mem[_76 + mem[_76 + 160 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 160] <= 4294967296 and mem[_76 + 160 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + (32 * mem[_76 + mem[_76 + 160 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 160]) + 32 <= return_data.size
                mem[_76 + ceil32(return_data.size) + 160] = mem[_76 + mem[_76 + 160 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 160]
                _822 = mem[_76 + _680 + 160]
                t = 0
                while t < 32 * _822:
                    mem[t + _76 + ceil32(return_data.size) + 192] = mem[t + _76 + _680 + 192]
                    t = t + 32
                    continue 
                mem[64] = (32 * _822) + _76 + ceil32(return_data.size) + 192
                require mem[_76 + ceil32(return_data.size) + 160] - 1 < mem[_76 + ceil32(return_data.size) + 160]
                if mem[(32 * mem[_76 + ceil32(return_data.size) + 160] - 1) + _76 + ceil32(return_data.size) + 192] <= s:
                    idx = idx + 1
                    s = s
                    continue 
                idx = idx + 1
                s = mem[(32 * mem[_76 + ceil32(return_data.size) + 160] - 1) + _76 + ceil32(return_data.size) + 192]
                continue 
            if 3 == idx:
                _120 = mem[64]
                mem[mem[64]] = 3
                mem[64] = mem[64] + 128
                require 0 < mem[_120]
                mem[_120 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                require 1 < mem[_120]
                mem[_120 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                require 2 < mem[_120]
                mem[_120 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                mem[_120 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_120 + 132] = 10^6 * sub_7d0b6809
                mem[_120 + 164] = 64
                mem[_120 + 196] = mem[_120]
                t = 0
                while t < 32 * mem[_120]:
                    mem[t + _120 + 228] = mem[t + _120 + 32]
                    t = t + 32
                    continue 
                require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c29.getAmountsOut(uint256 rg1, address[] rg2) with:
                        gas gas_remaining wei
                       args 10^6 * sub_7d0b6809, 64, mem[_120 + 196 len (32 * mem[_120]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_120 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _120 + ceil32(return_data.size) + 128
                require return_data.size >= 32
                _678 = mem[_120 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32
                require mem[_120 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 <= 4294967296
                require mem[_120 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 32 <= return_data.size
                require mem[_120 + mem[_120 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 128] <= 4294967296 and mem[_120 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + (32 * mem[_120 + mem[_120 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 128]) + 32 <= return_data.size
                mem[_120 + ceil32(return_data.size) + 128] = mem[_120 + mem[_120 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 128]
                _821 = mem[_120 + _678 + 128]
                t = 0
                while t < 32 * _821:
                    mem[t + _120 + ceil32(return_data.size) + 160] = mem[t + _120 + _678 + 160]
                    t = t + 32
                    continue 
                mem[64] = (32 * _821) + _120 + ceil32(return_data.size) + 160
                require mem[_120 + ceil32(return_data.size) + 128] - 1 < mem[_120 + ceil32(return_data.size) + 128]
                if mem[(32 * mem[_120 + ceil32(return_data.size) + 128] - 1) + _120 + ceil32(return_data.size) + 160] <= s:
                    idx = idx + 1
                    s = s
                    continue 
                idx = idx + 1
                s = mem[(32 * mem[_120 + ceil32(return_data.size) + 128] - 1) + _120 + ceil32(return_data.size) + 160]
                continue 
            if 4 == idx:
                _148 = mem[64]
                mem[mem[64]] = 3
                mem[64] = mem[64] + 128
                require 0 < mem[_148]
                mem[_148 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                require 1 < mem[_148]
                mem[_148 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                require 2 < mem[_148]
                mem[_148 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                mem[_148 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_148 + 132] = 10^6 * sub_7d0b6809
                mem[_148 + 164] = 64
                mem[_148 + 196] = mem[_148]
                t = 0
                while t < 32 * mem[_148]:
                    mem[t + _148 + 228] = mem[t + _148 + 32]
                    t = t + 32
                    continue 
                require ext_code.size(0x7b17021fcb7bc888641dc3bedfed3734fcaf2c87)
                staticcall 0x7b17021fcb7bc888641dc3bedfed3734fcaf2c87.getAmountsOut(uint256 rg1, address[] rg2) with:
                        gas gas_remaining wei
                       args 10^6 * sub_7d0b6809, 64, mem[_148 + 196 len (32 * mem[_148]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_148 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _148 + ceil32(return_data.size) + 128
                require return_data.size >= 32
                _676 = mem[_148 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32
                require mem[_148 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 <= 4294967296
                require mem[_148 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 32 <= return_data.size
                require mem[_148 + mem[_148 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 128] <= 4294967296 and mem[_148 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + (32 * mem[_148 + mem[_148 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 128]) + 32 <= return_data.size
                mem[_148 + ceil32(return_data.size) + 128] = mem[_148 + mem[_148 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 128]
                _820 = mem[_148 + _676 + 128]
                t = 0
                while t < 32 * _820:
                    mem[t + _148 + ceil32(return_data.size) + 160] = mem[t + _148 + _676 + 160]
                    t = t + 32
                    continue 
                mem[64] = (32 * _820) + _148 + ceil32(return_data.size) + 160
                require mem[_148 + ceil32(return_data.size) + 128] - 1 < mem[_148 + ceil32(return_data.size) + 128]
                if mem[(32 * mem[_148 + ceil32(return_data.size) + 128] - 1) + _148 + ceil32(return_data.size) + 160] <= s:
                    idx = idx + 1
                    s = s
                    continue 
                idx = idx + 1
                s = mem[(32 * mem[_148 + ceil32(return_data.size) + 128] - 1) + _148 + ceil32(return_data.size) + 160]
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
                _172 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                require 0 < mem[_172]
                mem[_172 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                require 1 < mem[_172]
                mem[_172 + 64] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                mem[_172 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_172 + 100] = 10^6 * sub_7d0b6809
                mem[_172 + 132] = 64
                mem[_172 + 164] = mem[_172]
                t = 0
                while t < 32 * mem[_172]:
                    mem[t + _172 + 196] = mem[t + _172 + 32]
                    t = t + 32
                    continue 
                require ext_code.size(0x53c153a0df7e050bbefbb70ee9632061f12795fb)
                staticcall 0x53c153a0df7e050bbefbb70ee9632061f12795fb.getAmountsOut(uint256 rg1, address[] rg2) with:
                        gas gas_remaining wei
                       args 10^6 * sub_7d0b6809, 64, mem[_172 + 164 len (32 * mem[_172]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_172 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _172 + ceil32(return_data.size) + 96
                require return_data.size >= 32
                _672 = mem[_172 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32
                require mem[_172 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 <= 4294967296
                require mem[_172 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 32 <= return_data.size
                require mem[_172 + mem[_172 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 96] <= 4294967296 and mem[_172 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + (32 * mem[_172 + mem[_172 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 96]) + 32 <= return_data.size
                mem[_172 + ceil32(return_data.size) + 96] = mem[_172 + mem[_172 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 96]
                _818 = mem[_172 + _672 + 96]
                t = 0
                while t < 32 * _818:
                    mem[t + _172 + ceil32(return_data.size) + 128] = mem[t + _172 + _672 + 128]
                    t = t + 32
                    continue 
                mem[64] = (32 * _818) + _172 + ceil32(return_data.size) + 128
                require mem[_172 + ceil32(return_data.size) + 96] - 1 < mem[_172 + ceil32(return_data.size) + 96]
                if mem[(32 * mem[_172 + ceil32(return_data.size) + 96] - 1) + _172 + ceil32(return_data.size) + 128] <= s:
                    idx = idx + 1
                    s = s
                    continue 
                idx = idx + 1
                s = mem[(32 * mem[_172 + ceil32(return_data.size) + 96] - 1) + _172 + ceil32(return_data.size) + 128]
                continue 
            _174 = mem[64]
            mem[mem[64]] = 3
            mem[64] = mem[64] + 128
            require 0 < mem[_174]
            mem[_174 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
            require 1 < mem[_174]
            mem[_174 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
            require 2 < mem[_174]
            mem[_174 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
            mem[_174 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[_174 + 132] = 10^6 * sub_7d0b6809
            mem[_174 + 164] = 64
            mem[_174 + 196] = mem[_174]
            t = 0
            while t < 32 * mem[_174]:
                mem[t + _174 + 228] = mem[t + _174 + 32]
                t = t + 32
                continue 
            require ext_code.size(0x53c153a0df7e050bbefbb70ee9632061f12795fb)
            staticcall 0x53c153a0df7e050bbefbb70ee9632061f12795fb.getAmountsOut(uint256 rg1, address[] rg2) with:
                    gas gas_remaining wei
                   args 10^6 * sub_7d0b6809, 64, mem[_174 + 196 len (32 * mem[_174]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[_174 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = _174 + ceil32(return_data.size) + 128
            require return_data.size >= 32
            _674 = mem[_174 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32
            require mem[_174 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 <= 4294967296
            require mem[_174 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 32 <= return_data.size
            require mem[_174 + mem[_174 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 128] <= 4294967296 and mem[_174 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + (32 * mem[_174 + mem[_174 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 128]) + 32 <= return_data.size
            mem[_174 + ceil32(return_data.size) + 128] = mem[_174 + mem[_174 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 128]
            _819 = mem[_174 + _674 + 128]
            t = 0
            while t < 32 * _819:
                mem[t + _174 + ceil32(return_data.size) + 160] = mem[t + _174 + _674 + 160]
                t = t + 32
                continue 
            mem[64] = (32 * _819) + _174 + ceil32(return_data.size) + 160
            require mem[_174 + ceil32(return_data.size) + 128] - 1 < mem[_174 + ceil32(return_data.size) + 128]
            if mem[(32 * mem[_174 + ceil32(return_data.size) + 128] - 1) + _174 + ceil32(return_data.size) + 160] <= s:
                idx = idx + 1
                s = s
                continue 
            idx = idx + 1
            s = mem[(32 * mem[_174 + ceil32(return_data.size) + 128] - 1) + _174 + ceil32(return_data.size) + 160]
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
                _720 = mem[64]
                mem[mem[64]] = 4
                mem[64] = mem[64] + 160
                require 0 < mem[_720]
                mem[_720 + 32] = 0x8d11ec38a3eb5e956b052f67da8bdc9bef8abf3e
                require 1 < mem[_720]
                mem[_720 + 64] = 0x5cc61a78f164885776aa610fb0fe1257df78e59b
                require 2 < mem[_720]
                mem[_720 + 96] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                require 3 < mem[_720]
                mem[_720 + 128] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                mem[_720 + 160] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_720 + 164] = s
                mem[_720 + 196] = 64
                mem[_720 + 228] = mem[_720]
                u = 0
                while u < 32 * mem[_720]:
                    mem[u + _720 + 260] = mem[u + _720 + 32]
                    u = u + 32
                    continue 
                require ext_code.size(0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52)
                staticcall 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52.getAmountsOut(uint256 rg1, address[] rg2) with:
                        gas gas_remaining wei
                       args s, 64, mem[_720 + 228 len (32 * mem[_720]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_720 + 160 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _720 + ceil32(return_data.size) + 160
                require return_data.size >= 32
                _2048 = mem[_720 + 160 len 4], Mask(224, 32, s) >> 32
                require mem[_720 + 160 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                require mem[_720 + 160 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                require mem[_720 + mem[_720 + 160 len 4], Mask(224, 32, s) >> 32 + 160] <= 4294967296 and mem[_720 + 160 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_720 + mem[_720 + 160 len 4], Mask(224, 32, s) >> 32 + 160]) + 32 <= return_data.size
                mem[_720 + ceil32(return_data.size) + 160] = mem[_720 + mem[_720 + 160 len 4], Mask(224, 32, s) >> 32 + 160]
                _2188 = mem[_720 + _2048 + 160]
                s = 0
                while s < 32 * _2188:
                    mem[s + _720 + ceil32(return_data.size) + 192] = mem[s + _720 + _2048 + 192]
                    s = s + 32
                    continue 
                mem[64] = (32 * _2188) + _720 + ceil32(return_data.size) + 192
                require mem[_720 + ceil32(return_data.size) + 160] - 1 < mem[_720 + ceil32(return_data.size) + 160]
                if mem[(32 * mem[_720 + ceil32(return_data.size) + 160] - 1) + _720 + ceil32(return_data.size) + 192] <= t:
                    idx = idx + 1
                    t = t
                    continue 
                idx = idx + 1
                t = mem[(32 * mem[_720 + ceil32(return_data.size) + 160] - 1) + _720 + ceil32(return_data.size) + 192]
                continue 
            if 3 == idx:
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
                require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c29.getAmountsOut(uint256 rg1, address[] rg2) with:
                        gas gas_remaining wei
                       args s, 64, mem[_808 + 196 len (32 * mem[_808]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_808 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _808 + ceil32(return_data.size) + 128
                require return_data.size >= 32
                _2046 = mem[_808 + 128 len 4], Mask(224, 32, s) >> 32
                require mem[_808 + 128 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                require mem[_808 + 128 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                require mem[_808 + mem[_808 + 128 len 4], Mask(224, 32, s) >> 32 + 128] <= 4294967296 and mem[_808 + 128 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_808 + mem[_808 + 128 len 4], Mask(224, 32, s) >> 32 + 128]) + 32 <= return_data.size
                mem[_808 + ceil32(return_data.size) + 128] = mem[_808 + mem[_808 + 128 len 4], Mask(224, 32, s) >> 32 + 128]
                _2187 = mem[_808 + _2046 + 128]
                s = 0
                while s < 32 * _2187:
                    mem[s + _808 + ceil32(return_data.size) + 160] = mem[s + _808 + _2046 + 160]
                    s = s + 32
                    continue 
                mem[64] = (32 * _2187) + _808 + ceil32(return_data.size) + 160
                require mem[_808 + ceil32(return_data.size) + 128] - 1 < mem[_808 + ceil32(return_data.size) + 128]
                if mem[(32 * mem[_808 + ceil32(return_data.size) + 128] - 1) + _808 + ceil32(return_data.size) + 160] <= t:
                    idx = idx + 1
                    t = t
                    continue 
                idx = idx + 1
                t = mem[(32 * mem[_808 + ceil32(return_data.size) + 128] - 1) + _808 + ceil32(return_data.size) + 160]
                continue 
            if 4 == idx:
                _872 = mem[64]
                mem[mem[64]] = 3
                mem[64] = mem[64] + 128
                require 0 < mem[_872]
                mem[_872 + 32] = 0x8d11ec38a3eb5e956b052f67da8bdc9bef8abf3e
                require 1 < mem[_872]
                mem[_872 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                require 2 < mem[_872]
                mem[_872 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                mem[_872 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_872 + 132] = s
                mem[_872 + 164] = 64
                mem[_872 + 196] = mem[_872]
                u = 0
                while u < 32 * mem[_872]:
                    mem[u + _872 + 228] = mem[u + _872 + 32]
                    u = u + 32
                    continue 
                require ext_code.size(0x7b17021fcb7bc888641dc3bedfed3734fcaf2c87)
                staticcall 0x7b17021fcb7bc888641dc3bedfed3734fcaf2c87.getAmountsOut(uint256 rg1, address[] rg2) with:
                        gas gas_remaining wei
                       args s, 64, mem[_872 + 196 len (32 * mem[_872]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_872 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _872 + ceil32(return_data.size) + 128
                require return_data.size >= 32
                _2044 = mem[_872 + 128 len 4], Mask(224, 32, s) >> 32
                require mem[_872 + 128 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                require mem[_872 + 128 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                require mem[_872 + mem[_872 + 128 len 4], Mask(224, 32, s) >> 32 + 128] <= 4294967296 and mem[_872 + 128 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_872 + mem[_872 + 128 len 4], Mask(224, 32, s) >> 32 + 128]) + 32 <= return_data.size
                mem[_872 + ceil32(return_data.size) + 128] = mem[_872 + mem[_872 + 128 len 4], Mask(224, 32, s) >> 32 + 128]
                _2186 = mem[_872 + _2044 + 128]
                s = 0
                while s < 32 * _2186:
                    mem[s + _872 + ceil32(return_data.size) + 160] = mem[s + _872 + _2044 + 160]
                    s = s + 32
                    continue 
                mem[64] = (32 * _2186) + _872 + ceil32(return_data.size) + 160
                require mem[_872 + ceil32(return_data.size) + 128] - 1 < mem[_872 + ceil32(return_data.size) + 128]
                if mem[(32 * mem[_872 + ceil32(return_data.size) + 128] - 1) + _872 + ceil32(return_data.size) + 160] <= t:
                    idx = idx + 1
                    t = t
                    continue 
                idx = idx + 1
                t = mem[(32 * mem[_872 + ceil32(return_data.size) + 128] - 1) + _872 + ceil32(return_data.size) + 160]
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
                _912 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                require 0 < mem[_912]
                mem[_912 + 32] = 0x8d11ec38a3eb5e956b052f67da8bdc9bef8abf3e
                require 1 < mem[_912]
                mem[_912 + 64] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                mem[_912 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_912 + 100] = s
                mem[_912 + 132] = 64
                mem[_912 + 164] = mem[_912]
                u = 0
                while u < 32 * mem[_912]:
                    mem[u + _912 + 196] = mem[u + _912 + 32]
                    u = u + 32
                    continue 
                require ext_code.size(0x53c153a0df7e050bbefbb70ee9632061f12795fb)
                staticcall 0x53c153a0df7e050bbefbb70ee9632061f12795fb.getAmountsOut(uint256 rg1, address[] rg2) with:
                        gas gas_remaining wei
                       args s, 64, mem[_912 + 164 len (32 * mem[_912]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_912 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _912 + ceil32(return_data.size) + 96
                require return_data.size >= 32
                _2040 = mem[_912 + 96 len 4], Mask(224, 32, s) >> 32
                require mem[_912 + 96 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                require mem[_912 + 96 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                require mem[_912 + mem[_912 + 96 len 4], Mask(224, 32, s) >> 32 + 96] <= 4294967296 and mem[_912 + 96 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_912 + mem[_912 + 96 len 4], Mask(224, 32, s) >> 32 + 96]) + 32 <= return_data.size
                mem[_912 + ceil32(return_data.size) + 96] = mem[_912 + mem[_912 + 96 len 4], Mask(224, 32, s) >> 32 + 96]
                _2184 = mem[_912 + _2040 + 96]
                s = 0
                while s < 32 * _2184:
                    mem[s + _912 + ceil32(return_data.size) + 128] = mem[s + _912 + _2040 + 128]
                    s = s + 32
                    continue 
                mem[64] = (32 * _2184) + _912 + ceil32(return_data.size) + 128
                require mem[_912 + ceil32(return_data.size) + 96] - 1 < mem[_912 + ceil32(return_data.size) + 96]
                if mem[(32 * mem[_912 + ceil32(return_data.size) + 96] - 1) + _912 + ceil32(return_data.size) + 128] <= t:
                    idx = idx + 1
                    t = t
                    continue 
                idx = idx + 1
                t = mem[(32 * mem[_912 + ceil32(return_data.size) + 96] - 1) + _912 + ceil32(return_data.size) + 128]
                continue 
            _914 = mem[64]
            mem[mem[64]] = 3
            mem[64] = mem[64] + 128
            require 0 < mem[_914]
            mem[_914 + 32] = 0x8d11ec38a3eb5e956b052f67da8bdc9bef8abf3e
            require 1 < mem[_914]
            mem[_914 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
            require 2 < mem[_914]
            mem[_914 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
            mem[_914 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[_914 + 132] = s
            mem[_914 + 164] = 64
            mem[_914 + 196] = mem[_914]
            u = 0
            while u < 32 * mem[_914]:
                mem[u + _914 + 228] = mem[u + _914 + 32]
                u = u + 32
                continue 
            require ext_code.size(0x53c153a0df7e050bbefbb70ee9632061f12795fb)
            staticcall 0x53c153a0df7e050bbefbb70ee9632061f12795fb.getAmountsOut(uint256 rg1, address[] rg2) with:
                    gas gas_remaining wei
                   args s, 64, mem[_914 + 196 len (32 * mem[_914]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[_914 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = _914 + ceil32(return_data.size) + 128
            require return_data.size >= 32
            _2042 = mem[_914 + 128 len 4], Mask(224, 32, s) >> 32
            require mem[_914 + 128 len 4], Mask(224, 32, s) >> 32 <= 4294967296
            require mem[_914 + 128 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
            require mem[_914 + mem[_914 + 128 len 4], Mask(224, 32, s) >> 32 + 128] <= 4294967296 and mem[_914 + 128 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_914 + mem[_914 + 128 len 4], Mask(224, 32, s) >> 32 + 128]) + 32 <= return_data.size
            mem[_914 + ceil32(return_data.size) + 128] = mem[_914 + mem[_914 + 128 len 4], Mask(224, 32, s) >> 32 + 128]
            _2185 = mem[_914 + _2042 + 128]
            s = 0
            while s < 32 * _2185:
                mem[s + _914 + ceil32(return_data.size) + 160] = mem[s + _914 + _2042 + 160]
                s = s + 32
                continue 
            mem[64] = (32 * _2185) + _914 + ceil32(return_data.size) + 160
            require mem[_914 + ceil32(return_data.size) + 128] - 1 < mem[_914 + ceil32(return_data.size) + 128]
            if mem[(32 * mem[_914 + ceil32(return_data.size) + 128] - 1) + _914 + ceil32(return_data.size) + 160] <= t:
                idx = idx + 1
                t = t
                continue 
            idx = idx + 1
            t = mem[(32 * mem[_914 + ceil32(return_data.size) + 128] - 1) + _914 + ceil32(return_data.size) + 160]
            continue 
}



}
