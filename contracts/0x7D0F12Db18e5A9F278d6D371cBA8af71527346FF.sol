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
        while idx < 8:
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
                _131 = mem[64]
                mem[mem[64]] = 4
                mem[64] = mem[64] + 160
                require 0 < mem[_131]
                mem[_131 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                require 1 < mem[_131]
                mem[_131 + 64] = 0x5cc61a78f164885776aa610fb0fe1257df78e59b
                require 2 < mem[_131]
                mem[_131 + 96] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c
                require 3 < mem[_131]
                mem[_131 + 128] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                mem[_131 + 160] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_131 + 164] = 0
                mem[_131 + 196] = 64
                mem[_131 + 228] = mem[_131]
                t = 0
                while t < 32 * mem[_131]:
                    mem[t + _131 + 260] = mem[t + _131 + 32]
                    t = t + 32
                    continue 
                require ext_code.size(0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52)
                staticcall 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52.getAmountsOut(uint256 rg1, address[] rg2) with:
                        gas gas_remaining wei
                       args 0, 64, mem[_131 + 228 len (32 * mem[_131]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_131 + 160 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _131 + ceil32(return_data.size) + 160
                require return_data.size >= 32
                _1807 = mem[_131 + 160 len 4], 0
                require mem[_131 + 160 len 4], 0 <= 4294967296
                require mem[_131 + 160 len 4], 0 + 32 <= return_data.size
                require mem[_131 + mem[_131 + 160 len 4], 0 + 160] <= 4294967296 and mem[_131 + 160 len 4], 0 + (32 * mem[_131 + mem[_131 + 160 len 4], 0 + 160]) + 32 <= return_data.size
                mem[_131 + ceil32(return_data.size) + 160] = mem[_131 + mem[_131 + 160 len 4], 0 + 160]
                _2091 = mem[_131 + _1807 + 160]
                t = 0
                while t < 32 * _2091:
                    mem[t + _131 + ceil32(return_data.size) + 192] = mem[t + _131 + _1807 + 192]
                    t = t + 32
                    continue 
                mem[64] = (32 * _2091) + _131 + ceil32(return_data.size) + 192
                require mem[_131 + ceil32(return_data.size) + 160] - 1 < mem[_131 + ceil32(return_data.size) + 160]
                if mem[(32 * mem[_131 + ceil32(return_data.size) + 160] - 1) + _131 + ceil32(return_data.size) + 192] <= s:
                    idx = idx + 1
                    s = s
                    continue 
                idx = idx + 1
                s = mem[(32 * mem[_131 + ceil32(return_data.size) + 160] - 1) + _131 + ceil32(return_data.size) + 192]
                continue 
            if 3 == idx:
                _255 = mem[64]
                mem[mem[64]] = 3
                mem[64] = mem[64] + 128
                require 0 < mem[_255]
                mem[_255 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                require 1 < mem[_255]
                mem[_255 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c
                require 2 < mem[_255]
                mem[_255 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                mem[_255 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_255 + 132] = 0
                mem[_255 + 164] = 64
                mem[_255 + 196] = mem[_255]
                t = 0
                while t < 32 * mem[_255]:
                    mem[t + _255 + 228] = mem[t + _255 + 32]
                    t = t + 32
                    continue 
                require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c29.getAmountsOut(uint256 rg1, address[] rg2) with:
                        gas gas_remaining wei
                       args 0, 64, mem[_255 + 196 len (32 * mem[_255]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_255 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _255 + ceil32(return_data.size) + 128
                require return_data.size >= 32
                _1783 = mem[_255 + 128 len 4], 0
                require mem[_255 + 128 len 4], 0 <= 4294967296
                require mem[_255 + 128 len 4], 0 + 32 <= return_data.size
                require mem[_255 + mem[_255 + 128 len 4], 0 + 128] <= 4294967296 and mem[_255 + 128 len 4], 0 + (32 * mem[_255 + mem[_255 + 128 len 4], 0 + 128]) + 32 <= return_data.size
                mem[_255 + ceil32(return_data.size) + 128] = mem[_255 + mem[_255 + 128 len 4], 0 + 128]
                _2079 = mem[_255 + _1783 + 128]
                t = 0
                while t < 32 * _2079:
                    mem[t + _255 + ceil32(return_data.size) + 160] = mem[t + _255 + _1783 + 160]
                    t = t + 32
                    continue 
                mem[64] = (32 * _2079) + _255 + ceil32(return_data.size) + 160
                require mem[_255 + ceil32(return_data.size) + 128] - 1 < mem[_255 + ceil32(return_data.size) + 128]
                if mem[(32 * mem[_255 + ceil32(return_data.size) + 128] - 1) + _255 + ceil32(return_data.size) + 160] <= s:
                    idx = idx + 1
                    s = s
                    continue 
                idx = idx + 1
                s = mem[(32 * mem[_255 + ceil32(return_data.size) + 128] - 1) + _255 + ceil32(return_data.size) + 160]
                continue 
            if 4 == idx:
                if 3 == idx:
                    _308 = mem[64]
                    mem[mem[64]] = 3
                    mem[64] = mem[64] + 128
                    require 0 < mem[_308]
                    mem[_308 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    require 1 < mem[_308]
                    mem[_308 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c
                    require 2 < mem[_308]
                    mem[_308 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    mem[_308 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_308 + 132] = 0
                    mem[_308 + 164] = 64
                    mem[_308 + 196] = mem[_308]
                    t = 0
                    while t < 32 * mem[_308]:
                        mem[t + _308 + 228] = mem[t + _308 + 32]
                        t = t + 32
                        continue 
                    require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                    staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c29.getAmountsOut(uint256 rg1, address[] rg2) with:
                            gas gas_remaining wei
                           args 0, 64, mem[_308 + 196 len (32 * mem[_308]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_308 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _308 + ceil32(return_data.size) + 128
                    require return_data.size >= 32
                    _1791 = mem[_308 + 128 len 4], 0
                    require mem[_308 + 128 len 4], 0 <= 4294967296
                    require mem[_308 + 128 len 4], 0 + 32 <= return_data.size
                    require mem[_308 + mem[_308 + 128 len 4], 0 + 128] <= 4294967296 and mem[_308 + 128 len 4], 0 + (32 * mem[_308 + mem[_308 + 128 len 4], 0 + 128]) + 32 <= return_data.size
                    mem[_308 + ceil32(return_data.size) + 128] = mem[_308 + mem[_308 + 128 len 4], 0 + 128]
                    _2083 = mem[_308 + _1791 + 128]
                    t = 0
                    while t < 32 * _2083:
                        mem[t + _308 + ceil32(return_data.size) + 160] = mem[t + _308 + _1791 + 160]
                        t = t + 32
                        continue 
                    mem[64] = (32 * _2083) + _308 + ceil32(return_data.size) + 160
                    require mem[_308 + ceil32(return_data.size) + 128] - 1 < mem[_308 + ceil32(return_data.size) + 128]
                    if mem[(32 * mem[_308 + ceil32(return_data.size) + 128] - 1) + _308 + ceil32(return_data.size) + 160] <= s:
                        idx = idx + 1
                        s = s
                        continue 
                    idx = idx + 1
                    s = mem[(32 * mem[_308 + ceil32(return_data.size) + 128] - 1) + _308 + ceil32(return_data.size) + 160]
                    continue 
                if 4 == idx:
                    _370 = mem[64]
                    mem[mem[64]] = 3
                    mem[64] = mem[64] + 128
                    require 0 < mem[_370]
                    mem[_370 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    require 1 < mem[_370]
                    mem[_370 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c
                    require 2 < mem[_370]
                    mem[_370 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    mem[_370 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_370 + 132] = 0
                    mem[_370 + 164] = 64
                    mem[_370 + 196] = mem[_370]
                    t = 0
                    while t < 32 * mem[_370]:
                        mem[t + _370 + 228] = mem[t + _370 + 32]
                        t = t + 32
                        continue 
                    require ext_code.size(0x7b17021fcb7bc888641dc3bedfed3734fcaf2c87)
                    staticcall 0x7b17021fcb7bc888641dc3bedfed3734fcaf2c87.getAmountsOut(uint256 rg1, address[] rg2) with:
                            gas gas_remaining wei
                           args 0, 64, mem[_370 + 196 len (32 * mem[_370]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_370 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _370 + ceil32(return_data.size) + 128
                    require return_data.size >= 32
                    _1789 = mem[_370 + 128 len 4], 0
                    require mem[_370 + 128 len 4], 0 <= 4294967296
                    require mem[_370 + 128 len 4], 0 + 32 <= return_data.size
                    require mem[_370 + mem[_370 + 128 len 4], 0 + 128] <= 4294967296 and mem[_370 + 128 len 4], 0 + (32 * mem[_370 + mem[_370 + 128 len 4], 0 + 128]) + 32 <= return_data.size
                    mem[_370 + ceil32(return_data.size) + 128] = mem[_370 + mem[_370 + 128 len 4], 0 + 128]
                    _2082 = mem[_370 + _1789 + 128]
                    t = 0
                    while t < 32 * _2082:
                        mem[t + _370 + ceil32(return_data.size) + 160] = mem[t + _370 + _1789 + 160]
                        t = t + 32
                        continue 
                    mem[64] = (32 * _2082) + _370 + ceil32(return_data.size) + 160
                    require mem[_370 + ceil32(return_data.size) + 128] - 1 < mem[_370 + ceil32(return_data.size) + 128]
                    if mem[(32 * mem[_370 + ceil32(return_data.size) + 128] - 1) + _370 + ceil32(return_data.size) + 160] <= s:
                        idx = idx + 1
                        s = s
                        continue 
                    idx = idx + 1
                    s = mem[(32 * mem[_370 + ceil32(return_data.size) + 128] - 1) + _370 + ceil32(return_data.size) + 160]
                    continue 
                if idx != 5:
                    _368 = mem[64]
                    mem[mem[64]] = 3
                    mem[64] = mem[64] + 128
                    require 0 < mem[_368]
                    mem[_368 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    require 1 < mem[_368]
                    mem[_368 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c
                    require 2 < mem[_368]
                    mem[_368 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    mem[_368 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_368 + 132] = 0
                    mem[_368 + 164] = 64
                    mem[_368 + 196] = mem[_368]
                    t = 0
                    while t < 32 * mem[_368]:
                        mem[t + _368 + 228] = mem[t + _368 + 32]
                        t = t + 32
                        continue 
                    require ext_code.size(0)
                    staticcall 0x0.getAmountsOut(uint256 rg1, address[] rg2) with:
                            gas gas_remaining wei
                           args 0, 64, mem[_368 + 196 len (32 * mem[_368]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_368 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _368 + ceil32(return_data.size) + 128
                    require return_data.size >= 32
                    _1785 = mem[_368 + 128 len 4], 0
                    require mem[_368 + 128 len 4], 0 <= 4294967296
                    require mem[_368 + 128 len 4], 0 + 32 <= return_data.size
                    require mem[_368 + mem[_368 + 128 len 4], 0 + 128] <= 4294967296 and mem[_368 + 128 len 4], 0 + (32 * mem[_368 + mem[_368 + 128 len 4], 0 + 128]) + 32 <= return_data.size
                    mem[_368 + ceil32(return_data.size) + 128] = mem[_368 + mem[_368 + 128 len 4], 0 + 128]
                    _2080 = mem[_368 + _1785 + 128]
                    t = 0
                    while t < 32 * _2080:
                        mem[t + _368 + ceil32(return_data.size) + 160] = mem[t + _368 + _1785 + 160]
                        t = t + 32
                        continue 
                    mem[64] = (32 * _2080) + _368 + ceil32(return_data.size) + 160
                    require mem[_368 + ceil32(return_data.size) + 128] - 1 < mem[_368 + ceil32(return_data.size) + 128]
                    if mem[(32 * mem[_368 + ceil32(return_data.size) + 128] - 1) + _368 + ceil32(return_data.size) + 160] <= s:
                        idx = idx + 1
                        s = s
                        continue 
                    idx = idx + 1
                    s = mem[(32 * mem[_368 + ceil32(return_data.size) + 128] - 1) + _368 + ceil32(return_data.size) + 160]
                    continue 
                _469 = mem[64]
                mem[mem[64]] = 3
                mem[64] = mem[64] + 128
                require 0 < mem[_469]
                mem[_469 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                require 1 < mem[_469]
                mem[_469 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c
                require 2 < mem[_469]
                mem[_469 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                mem[_469 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_469 + 132] = 0
                mem[_469 + 164] = 64
                mem[_469 + 196] = mem[_469]
                t = 0
                while t < 32 * mem[_469]:
                    mem[t + _469 + 228] = mem[t + _469 + 32]
                    t = t + 32
                    continue 
                require ext_code.size(0x53c153a0df7e050bbefbb70ee9632061f12795fb)
                staticcall 0x53c153a0df7e050bbefbb70ee9632061f12795fb.getAmountsOut(uint256 rg1, address[] rg2) with:
                        gas gas_remaining wei
                       args 0, 64, mem[_469 + 196 len (32 * mem[_469]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_469 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _469 + ceil32(return_data.size) + 128
                require return_data.size >= 32
                _1787 = mem[_469 + 128 len 4], 0
                require mem[_469 + 128 len 4], 0 <= 4294967296
                require mem[_469 + 128 len 4], 0 + 32 <= return_data.size
                require mem[_469 + mem[_469 + 128 len 4], 0 + 128] <= 4294967296 and mem[_469 + 128 len 4], 0 + (32 * mem[_469 + mem[_469 + 128 len 4], 0 + 128]) + 32 <= return_data.size
                mem[_469 + ceil32(return_data.size) + 128] = mem[_469 + mem[_469 + 128 len 4], 0 + 128]
                _2081 = mem[_469 + _1787 + 128]
                t = 0
                while t < 32 * _2081:
                    mem[t + _469 + ceil32(return_data.size) + 160] = mem[t + _469 + _1787 + 160]
                    t = t + 32
                    continue 
                mem[64] = (32 * _2081) + _469 + ceil32(return_data.size) + 160
                require mem[_469 + ceil32(return_data.size) + 128] - 1 < mem[_469 + ceil32(return_data.size) + 128]
                if mem[(32 * mem[_469 + ceil32(return_data.size) + 128] - 1) + _469 + ceil32(return_data.size) + 160] <= s:
                    idx = idx + 1
                    s = s
                    continue 
                idx = idx + 1
                s = mem[(32 * mem[_469 + ceil32(return_data.size) + 128] - 1) + _469 + ceil32(return_data.size) + 160]
                continue 
            if 5 == idx:
                if 3 == idx:
                    _378 = mem[64]
                    mem[mem[64]] = 3
                    mem[64] = mem[64] + 128
                    require 0 < mem[_378]
                    mem[_378 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    require 1 < mem[_378]
                    mem[_378 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c
                    require 2 < mem[_378]
                    mem[_378 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    mem[_378 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_378 + 132] = 0
                    mem[_378 + 164] = 64
                    mem[_378 + 196] = mem[_378]
                    t = 0
                    while t < 32 * mem[_378]:
                        mem[t + _378 + 228] = mem[t + _378 + 32]
                        t = t + 32
                        continue 
                    require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                    staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c29.getAmountsOut(uint256 rg1, address[] rg2) with:
                            gas gas_remaining wei
                           args 0, 64, mem[_378 + 196 len (32 * mem[_378]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_378 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _378 + ceil32(return_data.size) + 128
                    require return_data.size >= 32
                    _1805 = mem[_378 + 128 len 4], 0
                    require mem[_378 + 128 len 4], 0 <= 4294967296
                    require mem[_378 + 128 len 4], 0 + 32 <= return_data.size
                    require mem[_378 + mem[_378 + 128 len 4], 0 + 128] <= 4294967296 and mem[_378 + 128 len 4], 0 + (32 * mem[_378 + mem[_378 + 128 len 4], 0 + 128]) + 32 <= return_data.size
                    mem[_378 + ceil32(return_data.size) + 128] = mem[_378 + mem[_378 + 128 len 4], 0 + 128]
                    _2090 = mem[_378 + _1805 + 128]
                    t = 0
                    while t < 32 * _2090:
                        mem[t + _378 + ceil32(return_data.size) + 160] = mem[t + _378 + _1805 + 160]
                        t = t + 32
                        continue 
                    mem[64] = (32 * _2090) + _378 + ceil32(return_data.size) + 160
                    require mem[_378 + ceil32(return_data.size) + 128] - 1 < mem[_378 + ceil32(return_data.size) + 128]
                    if mem[(32 * mem[_378 + ceil32(return_data.size) + 128] - 1) + _378 + ceil32(return_data.size) + 160] <= s:
                        idx = idx + 1
                        s = s
                        continue 
                    idx = idx + 1
                    s = mem[(32 * mem[_378 + ceil32(return_data.size) + 128] - 1) + _378 + ceil32(return_data.size) + 160]
                    continue 
                if 4 == idx:
                    _482 = mem[64]
                    mem[mem[64]] = 3
                    mem[64] = mem[64] + 128
                    require 0 < mem[_482]
                    mem[_482 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    require 1 < mem[_482]
                    mem[_482 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c
                    require 2 < mem[_482]
                    mem[_482 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    mem[_482 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_482 + 132] = 0
                    mem[_482 + 164] = 64
                    mem[_482 + 196] = mem[_482]
                    t = 0
                    while t < 32 * mem[_482]:
                        mem[t + _482 + 228] = mem[t + _482 + 32]
                        t = t + 32
                        continue 
                    require ext_code.size(0x7b17021fcb7bc888641dc3bedfed3734fcaf2c87)
                    staticcall 0x7b17021fcb7bc888641dc3bedfed3734fcaf2c87.getAmountsOut(uint256 rg1, address[] rg2) with:
                            gas gas_remaining wei
                           args 0, 64, mem[_482 + 196 len (32 * mem[_482]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_482 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _482 + ceil32(return_data.size) + 128
                    require return_data.size >= 32
                    _1803 = mem[_482 + 128 len 4], 0
                    require mem[_482 + 128 len 4], 0 <= 4294967296
                    require mem[_482 + 128 len 4], 0 + 32 <= return_data.size
                    require mem[_482 + mem[_482 + 128 len 4], 0 + 128] <= 4294967296 and mem[_482 + 128 len 4], 0 + (32 * mem[_482 + mem[_482 + 128 len 4], 0 + 128]) + 32 <= return_data.size
                    mem[_482 + ceil32(return_data.size) + 128] = mem[_482 + mem[_482 + 128 len 4], 0 + 128]
                    _2089 = mem[_482 + _1803 + 128]
                    t = 0
                    while t < 32 * _2089:
                        mem[t + _482 + ceil32(return_data.size) + 160] = mem[t + _482 + _1803 + 160]
                        t = t + 32
                        continue 
                    mem[64] = (32 * _2089) + _482 + ceil32(return_data.size) + 160
                    require mem[_482 + ceil32(return_data.size) + 128] - 1 < mem[_482 + ceil32(return_data.size) + 128]
                    if mem[(32 * mem[_482 + ceil32(return_data.size) + 128] - 1) + _482 + ceil32(return_data.size) + 160] <= s:
                        idx = idx + 1
                        s = s
                        continue 
                    idx = idx + 1
                    s = mem[(32 * mem[_482 + ceil32(return_data.size) + 128] - 1) + _482 + ceil32(return_data.size) + 160]
                    continue 
                if idx != 5:
                    _480 = mem[64]
                    mem[mem[64]] = 3
                    mem[64] = mem[64] + 128
                    require 0 < mem[_480]
                    mem[_480 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    require 1 < mem[_480]
                    mem[_480 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c
                    require 2 < mem[_480]
                    mem[_480 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    mem[_480 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_480 + 132] = 0
                    mem[_480 + 164] = 64
                    mem[_480 + 196] = mem[_480]
                    t = 0
                    while t < 32 * mem[_480]:
                        mem[t + _480 + 228] = mem[t + _480 + 32]
                        t = t + 32
                        continue 
                    require ext_code.size(0)
                    staticcall 0x0.getAmountsOut(uint256 rg1, address[] rg2) with:
                            gas gas_remaining wei
                           args 0, 64, mem[_480 + 196 len (32 * mem[_480]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_480 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _480 + ceil32(return_data.size) + 128
                    require return_data.size >= 32
                    _1799 = mem[_480 + 128 len 4], 0
                    require mem[_480 + 128 len 4], 0 <= 4294967296
                    require mem[_480 + 128 len 4], 0 + 32 <= return_data.size
                    require mem[_480 + mem[_480 + 128 len 4], 0 + 128] <= 4294967296 and mem[_480 + 128 len 4], 0 + (32 * mem[_480 + mem[_480 + 128 len 4], 0 + 128]) + 32 <= return_data.size
                    mem[_480 + ceil32(return_data.size) + 128] = mem[_480 + mem[_480 + 128 len 4], 0 + 128]
                    _2087 = mem[_480 + _1799 + 128]
                    t = 0
                    while t < 32 * _2087:
                        mem[t + _480 + ceil32(return_data.size) + 160] = mem[t + _480 + _1799 + 160]
                        t = t + 32
                        continue 
                    mem[64] = (32 * _2087) + _480 + ceil32(return_data.size) + 160
                    require mem[_480 + ceil32(return_data.size) + 128] - 1 < mem[_480 + ceil32(return_data.size) + 128]
                    if mem[(32 * mem[_480 + ceil32(return_data.size) + 128] - 1) + _480 + ceil32(return_data.size) + 160] <= s:
                        idx = idx + 1
                        s = s
                        continue 
                    idx = idx + 1
                    s = mem[(32 * mem[_480 + ceil32(return_data.size) + 128] - 1) + _480 + ceil32(return_data.size) + 160]
                    continue 
                _589 = mem[64]
                mem[mem[64]] = 3
                mem[64] = mem[64] + 128
                require 0 < mem[_589]
                mem[_589 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                require 1 < mem[_589]
                mem[_589 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c
                require 2 < mem[_589]
                mem[_589 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                mem[_589 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_589 + 132] = 0
                mem[_589 + 164] = 64
                mem[_589 + 196] = mem[_589]
                t = 0
                while t < 32 * mem[_589]:
                    mem[t + _589 + 228] = mem[t + _589 + 32]
                    t = t + 32
                    continue 
                require ext_code.size(0x53c153a0df7e050bbefbb70ee9632061f12795fb)
                staticcall 0x53c153a0df7e050bbefbb70ee9632061f12795fb.getAmountsOut(uint256 rg1, address[] rg2) with:
                        gas gas_remaining wei
                       args 0, 64, mem[_589 + 196 len (32 * mem[_589]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_589 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _589 + ceil32(return_data.size) + 128
                require return_data.size >= 32
                _1801 = mem[_589 + 128 len 4], 0
                require mem[_589 + 128 len 4], 0 <= 4294967296
                require mem[_589 + 128 len 4], 0 + 32 <= return_data.size
                require mem[_589 + mem[_589 + 128 len 4], 0 + 128] <= 4294967296 and mem[_589 + 128 len 4], 0 + (32 * mem[_589 + mem[_589 + 128 len 4], 0 + 128]) + 32 <= return_data.size
                mem[_589 + ceil32(return_data.size) + 128] = mem[_589 + mem[_589 + 128 len 4], 0 + 128]
                _2088 = mem[_589 + _1801 + 128]
                t = 0
                while t < 32 * _2088:
                    mem[t + _589 + ceil32(return_data.size) + 160] = mem[t + _589 + _1801 + 160]
                    t = t + 32
                    continue 
                mem[64] = (32 * _2088) + _589 + ceil32(return_data.size) + 160
                require mem[_589 + ceil32(return_data.size) + 128] - 1 < mem[_589 + ceil32(return_data.size) + 128]
                if mem[(32 * mem[_589 + ceil32(return_data.size) + 128] - 1) + _589 + ceil32(return_data.size) + 160] <= s:
                    idx = idx + 1
                    s = s
                    continue 
                idx = idx + 1
                s = mem[(32 * mem[_589 + ceil32(return_data.size) + 128] - 1) + _589 + ceil32(return_data.size) + 160]
                continue 
            if 6 == idx:
                _310 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                require 0 < mem[_310]
                mem[_310 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                require 1 < mem[_310]
                mem[_310 + 64] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                mem[_310 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_310 + 100] = 0
                mem[_310 + 132] = 64
                mem[_310 + 164] = mem[_310]
                t = 0
                while t < 32 * mem[_310]:
                    mem[t + _310 + 196] = mem[t + _310 + 32]
                    t = t + 32
                    continue 
                require ext_code.size(0x53c153a0df7e050bbefbb70ee9632061f12795fb)
                staticcall 0x53c153a0df7e050bbefbb70ee9632061f12795fb.getAmountsOut(uint256 rg1, address[] rg2) with:
                        gas gas_remaining wei
                       args 0, 64, mem[_310 + 164 len (32 * mem[_310]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_310 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _310 + ceil32(return_data.size) + 96
                require return_data.size >= 32
                _1797 = mem[_310 + 96 len 4], 0
                require mem[_310 + 96 len 4], 0 <= 4294967296
                require mem[_310 + 96 len 4], 0 + 32 <= return_data.size
                require mem[_310 + mem[_310 + 96 len 4], 0 + 96] <= 4294967296 and mem[_310 + 96 len 4], 0 + (32 * mem[_310 + mem[_310 + 96 len 4], 0 + 96]) + 32 <= return_data.size
                mem[_310 + ceil32(return_data.size) + 96] = mem[_310 + mem[_310 + 96 len 4], 0 + 96]
                _2086 = mem[_310 + _1797 + 96]
                t = 0
                while t < 32 * _2086:
                    mem[t + _310 + ceil32(return_data.size) + 128] = mem[t + _310 + _1797 + 128]
                    t = t + 32
                    continue 
                mem[64] = (32 * _2086) + _310 + ceil32(return_data.size) + 128
                require mem[_310 + ceil32(return_data.size) + 96] - 1 < mem[_310 + ceil32(return_data.size) + 96]
                if mem[(32 * mem[_310 + ceil32(return_data.size) + 96] - 1) + _310 + ceil32(return_data.size) + 128] <= s:
                    idx = idx + 1
                    s = s
                    continue 
                idx = idx + 1
                s = mem[(32 * mem[_310 + ceil32(return_data.size) + 96] - 1) + _310 + ceil32(return_data.size) + 128]
                continue 
            if idx != 7:
                if 0 <= s:
                    idx = idx + 1
                    s = s
                    continue 
                idx = idx + 1
                s = 0
                continue 
            _475 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            require 0 < mem[_475]
            mem[_475 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
            require 1 < mem[_475]
            mem[_475 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c
            mem[_475 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[_475 + 100] = 0
            mem[_475 + 132] = 64
            mem[_475 + 164] = mem[_475]
            t = 0
            while t < 32 * mem[_475]:
                mem[t + _475 + 196] = mem[t + _475 + 32]
                t = t + 32
                continue 
            require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
            staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c29.getAmountsOut(uint256 rg1, address[] rg2) with:
                    gas gas_remaining wei
                   args 0, 64, mem[_475 + 164 len (32 * mem[_475]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[_475 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = _475 + ceil32(return_data.size) + 96
            require return_data.size >= 32
            _1793 = mem[_475 + 96 len 4], 0
            require mem[_475 + 96 len 4], 0 <= 4294967296
            require mem[_475 + 96 len 4], 0 + 32 <= return_data.size
            require mem[_475 + mem[_475 + 96 len 4], 0 + 96] <= 4294967296 and mem[_475 + 96 len 4], 0 + (32 * mem[_475 + mem[_475 + 96 len 4], 0 + 96]) + 32 <= return_data.size
            mem[_475 + ceil32(return_data.size) + 96] = mem[_475 + mem[_475 + 96 len 4], 0 + 96]
            _2084 = mem[_475 + _1793 + 96]
            t = 0
            while t < 32 * _2084:
                mem[t + _475 + ceil32(return_data.size) + 128] = mem[t + _475 + _1793 + 128]
                t = t + 32
                continue 
            require mem[_475 + ceil32(return_data.size) + 96] - 1 < mem[_475 + ceil32(return_data.size) + 96]
            _5504 = mem[(32 * mem[_475 + ceil32(return_data.size) + 96] - 1) + _475 + ceil32(return_data.size) + 128]
            mem[(32 * _2084) + _475 + ceil32(return_data.size) + 128] = 2
            mem[(32 * _2084) + _475 + ceil32(return_data.size) + 160] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c
            mem[(32 * _2084) + _475 + ceil32(return_data.size) + 192] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
            mem[(32 * _2084) + _475 + ceil32(return_data.size) + 224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[(32 * _2084) + _475 + ceil32(return_data.size) + 228] = _5504
            mem[(32 * _2084) + _475 + ceil32(return_data.size) + 260] = 64
            mem[(32 * _2084) + _475 + ceil32(return_data.size) + 292] = 2
            t = 0
            while t < 64:
                mem[t + (32 * _2084) + _475 + ceil32(return_data.size) + 324] = mem[t + (32 * _2084) + _475 + ceil32(return_data.size) + 160]
                t = t + 32
                continue 
            require ext_code.size(0x1b02da8cb0d097eb8d57a175b88c7d8b47997506)
            staticcall 0x1b02da8cb0d097eb8d57a175b88c7d8b47997506.getAmountsOut(uint256 rg1, address[] rg2) with:
                    gas gas_remaining wei
                   args _5504, Array(len=2, data=mem[(32 * _2084) + _475 + ceil32(return_data.size) + 324 len 64])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _2084) + _475 + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * _2084) + _475 + (2 * ceil32(return_data.size)) + 224
            require return_data.size >= 32
            _7487 = mem[(32 * _2084) + _475 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _5504) >> 32
            require mem[(32 * _2084) + _475 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _5504) >> 32 <= 4294967296
            require mem[(32 * _2084) + _475 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _5504) >> 32 + 32 <= return_data.size
            require mem[(32 * _2084) + _475 + ceil32(return_data.size) + mem[(32 * _2084) + _475 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _5504) >> 32 + 224] <= 4294967296 and mem[(32 * _2084) + _475 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _5504) >> 32 + (32 * mem[(32 * _2084) + _475 + ceil32(return_data.size) + mem[(32 * _2084) + _475 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _5504) >> 32 + 224]) + 32 <= return_data.size
            mem[(32 * _2084) + _475 + (2 * ceil32(return_data.size)) + 224] = mem[(32 * _2084) + _475 + ceil32(return_data.size) + mem[(32 * _2084) + _475 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _5504) >> 32 + 224]
            _7607 = mem[(32 * _2084) + _475 + ceil32(return_data.size) + _7487 + 224]
            t = 0
            while t < 32 * _7607:
                mem[t + (32 * _2084) + _475 + (2 * ceil32(return_data.size)) + 256] = mem[t + (32 * _2084) + _475 + ceil32(return_data.size) + _7487 + 256]
                t = t + 32
                continue 
            mem[64] = (32 * _7607) + (32 * _2084) + _475 + (2 * ceil32(return_data.size)) + 256
            require mem[(32 * _2084) + _475 + (2 * ceil32(return_data.size)) + 224] - 1 < mem[(32 * _2084) + _475 + (2 * ceil32(return_data.size)) + 224]
            if mem[(32 * mem[(32 * _2084) + _475 + (2 * ceil32(return_data.size)) + 224] - 1) + (32 * _2084) + _475 + (2 * ceil32(return_data.size)) + 256] <= s:
                idx = idx + 1
                s = s
                continue 
            idx = idx + 1
            s = mem[(32 * mem[(32 * _2084) + _475 + (2 * ceil32(return_data.size)) + 224] - 1) + (32 * _2084) + _475 + (2 * ceil32(return_data.size)) + 256]
            continue 
        idx = 0
        t = 0
        while idx < 8:
            if not idx:
                mem[mem[64] + 4] = 1
                mem[mem[64] + 36] = 0
                mem[mem[64] + 68] = s
                require ext_code.size(0x27e611fd27b276acbd5ffd632e5eaebec9761e40)
                staticcall 0x27e611fd27b276acbd5ffd632e5eaebec9761e40.get_dy(int128 rg1, int128 rg2, uint256 rg3) with:
                        gas gas_remaining wei
                       args 1, 0, s
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
                mem[mem[64] + 4] = 2
                mem[mem[64] + 36] = 1
                mem[mem[64] + 68] = s
                require ext_code.size(0x83e5f18da720119ff363cf63417628eb0e9fd523)
                staticcall 0x83e5f18da720119ff363cf63417628eb0e9fd523.get_dy(int128 rg1, int128 rg2, uint256 rg3) with:
                        gas gas_remaining wei
                       args 2, 1, s
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
                _1879 = mem[64]
                mem[mem[64]] = 4
                mem[64] = mem[64] + 160
                require 0 < mem[_1879]
                mem[_1879 + 32] = 0x8d11ec38a3eb5e956b052f67da8bdc9bef8abf
                require 1 < mem[_1879]
                mem[_1879 + 64] = 0x5cc61a78f164885776aa610fb0fe1257df78e59b
                require 2 < mem[_1879]
                mem[_1879 + 96] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c
                require 3 < mem[_1879]
                mem[_1879 + 128] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                mem[_1879 + 160] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_1879 + 164] = s
                mem[_1879 + 196] = 64
                mem[_1879 + 228] = mem[_1879]
                u = 0
                while u < 32 * mem[_1879]:
                    mem[u + _1879 + 260] = mem[u + _1879 + 32]
                    u = u + 32
                    continue 
                require ext_code.size(0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52)
                staticcall 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52.getAmountsOut(uint256 rg1, address[] rg2) with:
                        gas gas_remaining wei
                       args s, 64, mem[_1879 + 228 len (32 * mem[_1879]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_1879 + 160 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _1879 + ceil32(return_data.size) + 160
                require return_data.size >= 32
                _5783 = mem[_1879 + 160 len 4], Mask(224, 32, s) >> 32
                require mem[_1879 + 160 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                require mem[_1879 + 160 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                require mem[_1879 + mem[_1879 + 160 len 4], Mask(224, 32, s) >> 32 + 160] <= 4294967296 and mem[_1879 + 160 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_1879 + mem[_1879 + 160 len 4], Mask(224, 32, s) >> 32 + 160]) + 32 <= return_data.size
                mem[_1879 + ceil32(return_data.size) + 160] = mem[_1879 + mem[_1879 + 160 len 4], Mask(224, 32, s) >> 32 + 160]
                _6095 = mem[_1879 + _5783 + 160]
                s = 0
                while s < 32 * _6095:
                    mem[s + _1879 + ceil32(return_data.size) + 192] = mem[s + _1879 + _5783 + 192]
                    s = s + 32
                    continue 
                mem[64] = (32 * _6095) + _1879 + ceil32(return_data.size) + 192
                require mem[_1879 + ceil32(return_data.size) + 160] - 1 < mem[_1879 + ceil32(return_data.size) + 160]
                if mem[(32 * mem[_1879 + ceil32(return_data.size) + 160] - 1) + _1879 + ceil32(return_data.size) + 192] <= t:
                    idx = idx + 1
                    t = t
                    continue 
                idx = idx + 1
                t = mem[(32 * mem[_1879 + ceil32(return_data.size) + 160] - 1) + _1879 + ceil32(return_data.size) + 192]
                continue 
            if 3 == idx:
                _2395 = mem[64]
                mem[mem[64]] = 3
                mem[64] = mem[64] + 128
                require 0 < mem[_2395]
                mem[_2395 + 32] = 0x8d11ec38a3eb5e956b052f67da8bdc9bef8abf
                require 1 < mem[_2395]
                mem[_2395 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c
                require 2 < mem[_2395]
                mem[_2395 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                mem[_2395 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_2395 + 132] = s
                mem[_2395 + 164] = 64
                mem[_2395 + 196] = mem[_2395]
                u = 0
                while u < 32 * mem[_2395]:
                    mem[u + _2395 + 228] = mem[u + _2395 + 32]
                    u = u + 32
                    continue 
                require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c29.getAmountsOut(uint256 rg1, address[] rg2) with:
                        gas gas_remaining wei
                       args s, 64, mem[_2395 + 196 len (32 * mem[_2395]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_2395 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _2395 + ceil32(return_data.size) + 128
                require return_data.size >= 32
                _5759 = mem[_2395 + 128 len 4], Mask(224, 32, s) >> 32
                require mem[_2395 + 128 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                require mem[_2395 + 128 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                require mem[_2395 + mem[_2395 + 128 len 4], Mask(224, 32, s) >> 32 + 128] <= 4294967296 and mem[_2395 + 128 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_2395 + mem[_2395 + 128 len 4], Mask(224, 32, s) >> 32 + 128]) + 32 <= return_data.size
                mem[_2395 + ceil32(return_data.size) + 128] = mem[_2395 + mem[_2395 + 128 len 4], Mask(224, 32, s) >> 32 + 128]
                _6083 = mem[_2395 + _5759 + 128]
                s = 0
                while s < 32 * _6083:
                    mem[s + _2395 + ceil32(return_data.size) + 160] = mem[s + _2395 + _5759 + 160]
                    s = s + 32
                    continue 
                mem[64] = (32 * _6083) + _2395 + ceil32(return_data.size) + 160
                require mem[_2395 + ceil32(return_data.size) + 128] - 1 < mem[_2395 + ceil32(return_data.size) + 128]
                if mem[(32 * mem[_2395 + ceil32(return_data.size) + 128] - 1) + _2395 + ceil32(return_data.size) + 160] <= t:
                    idx = idx + 1
                    t = t
                    continue 
                idx = idx + 1
                t = mem[(32 * mem[_2395 + ceil32(return_data.size) + 128] - 1) + _2395 + ceil32(return_data.size) + 160]
                continue 
            if 4 == idx:
                if 3 == idx:
                    _2498 = mem[64]
                    mem[mem[64]] = 3
                    mem[64] = mem[64] + 128
                    require 0 < mem[_2498]
                    mem[_2498 + 32] = 0x8d11ec38a3eb5e956b052f67da8bdc9bef8abf
                    require 1 < mem[_2498]
                    mem[_2498 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c
                    require 2 < mem[_2498]
                    mem[_2498 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    mem[_2498 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_2498 + 132] = s
                    mem[_2498 + 164] = 64
                    mem[_2498 + 196] = mem[_2498]
                    u = 0
                    while u < 32 * mem[_2498]:
                        mem[u + _2498 + 228] = mem[u + _2498 + 32]
                        u = u + 32
                        continue 
                    require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                    staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c29.getAmountsOut(uint256 rg1, address[] rg2) with:
                            gas gas_remaining wei
                           args s, 64, mem[_2498 + 196 len (32 * mem[_2498]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_2498 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _2498 + ceil32(return_data.size) + 128
                    require return_data.size >= 32
                    _5767 = mem[_2498 + 128 len 4], Mask(224, 32, s) >> 32
                    require mem[_2498 + 128 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                    require mem[_2498 + 128 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                    require mem[_2498 + mem[_2498 + 128 len 4], Mask(224, 32, s) >> 32 + 128] <= 4294967296 and mem[_2498 + 128 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_2498 + mem[_2498 + 128 len 4], Mask(224, 32, s) >> 32 + 128]) + 32 <= return_data.size
                    mem[_2498 + ceil32(return_data.size) + 128] = mem[_2498 + mem[_2498 + 128 len 4], Mask(224, 32, s) >> 32 + 128]
                    _6087 = mem[_2498 + _5767 + 128]
                    s = 0
                    while s < 32 * _6087:
                        mem[s + _2498 + ceil32(return_data.size) + 160] = mem[s + _2498 + _5767 + 160]
                        s = s + 32
                        continue 
                    mem[64] = (32 * _6087) + _2498 + ceil32(return_data.size) + 160
                    require mem[_2498 + ceil32(return_data.size) + 128] - 1 < mem[_2498 + ceil32(return_data.size) + 128]
                    if mem[(32 * mem[_2498 + ceil32(return_data.size) + 128] - 1) + _2498 + ceil32(return_data.size) + 160] <= t:
                        idx = idx + 1
                        t = t
                        continue 
                    idx = idx + 1
                    t = mem[(32 * mem[_2498 + ceil32(return_data.size) + 128] - 1) + _2498 + ceil32(return_data.size) + 160]
                    continue 
                if 4 == idx:
                    _2616 = mem[64]
                    mem[mem[64]] = 3
                    mem[64] = mem[64] + 128
                    require 0 < mem[_2616]
                    mem[_2616 + 32] = 0x8d11ec38a3eb5e956b052f67da8bdc9bef8abf
                    require 1 < mem[_2616]
                    mem[_2616 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c
                    require 2 < mem[_2616]
                    mem[_2616 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    mem[_2616 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_2616 + 132] = s
                    mem[_2616 + 164] = 64
                    mem[_2616 + 196] = mem[_2616]
                    u = 0
                    while u < 32 * mem[_2616]:
                        mem[u + _2616 + 228] = mem[u + _2616 + 32]
                        u = u + 32
                        continue 
                    require ext_code.size(0x7b17021fcb7bc888641dc3bedfed3734fcaf2c87)
                    staticcall 0x7b17021fcb7bc888641dc3bedfed3734fcaf2c87.getAmountsOut(uint256 rg1, address[] rg2) with:
                            gas gas_remaining wei
                           args s, 64, mem[_2616 + 196 len (32 * mem[_2616]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_2616 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _2616 + ceil32(return_data.size) + 128
                    require return_data.size >= 32
                    _5765 = mem[_2616 + 128 len 4], Mask(224, 32, s) >> 32
                    require mem[_2616 + 128 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                    require mem[_2616 + 128 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                    require mem[_2616 + mem[_2616 + 128 len 4], Mask(224, 32, s) >> 32 + 128] <= 4294967296 and mem[_2616 + 128 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_2616 + mem[_2616 + 128 len 4], Mask(224, 32, s) >> 32 + 128]) + 32 <= return_data.size
                    mem[_2616 + ceil32(return_data.size) + 128] = mem[_2616 + mem[_2616 + 128 len 4], Mask(224, 32, s) >> 32 + 128]
                    _6086 = mem[_2616 + _5765 + 128]
                    s = 0
                    while s < 32 * _6086:
                        mem[s + _2616 + ceil32(return_data.size) + 160] = mem[s + _2616 + _5765 + 160]
                        s = s + 32
                        continue 
                    mem[64] = (32 * _6086) + _2616 + ceil32(return_data.size) + 160
                    require mem[_2616 + ceil32(return_data.size) + 128] - 1 < mem[_2616 + ceil32(return_data.size) + 128]
                    if mem[(32 * mem[_2616 + ceil32(return_data.size) + 128] - 1) + _2616 + ceil32(return_data.size) + 160] <= t:
                        idx = idx + 1
                        t = t
                        continue 
                    idx = idx + 1
                    t = mem[(32 * mem[_2616 + ceil32(return_data.size) + 128] - 1) + _2616 + ceil32(return_data.size) + 160]
                    continue 
                if idx != 5:
                    _2614 = mem[64]
                    mem[mem[64]] = 3
                    mem[64] = mem[64] + 128
                    require 0 < mem[_2614]
                    mem[_2614 + 32] = 0x8d11ec38a3eb5e956b052f67da8bdc9bef8abf
                    require 1 < mem[_2614]
                    mem[_2614 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c
                    require 2 < mem[_2614]
                    mem[_2614 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    mem[_2614 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_2614 + 132] = s
                    mem[_2614 + 164] = 64
                    mem[_2614 + 196] = mem[_2614]
                    u = 0
                    while u < 32 * mem[_2614]:
                        mem[u + _2614 + 228] = mem[u + _2614 + 32]
                        u = u + 32
                        continue 
                    require ext_code.size(0)
                    staticcall 0x0.getAmountsOut(uint256 rg1, address[] rg2) with:
                            gas gas_remaining wei
                           args s, 64, mem[_2614 + 196 len (32 * mem[_2614]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_2614 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _2614 + ceil32(return_data.size) + 128
                    require return_data.size >= 32
                    _5761 = mem[_2614 + 128 len 4], Mask(224, 32, s) >> 32
                    require mem[_2614 + 128 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                    require mem[_2614 + 128 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                    require mem[_2614 + mem[_2614 + 128 len 4], Mask(224, 32, s) >> 32 + 128] <= 4294967296 and mem[_2614 + 128 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_2614 + mem[_2614 + 128 len 4], Mask(224, 32, s) >> 32 + 128]) + 32 <= return_data.size
                    mem[_2614 + ceil32(return_data.size) + 128] = mem[_2614 + mem[_2614 + 128 len 4], Mask(224, 32, s) >> 32 + 128]
                    _6084 = mem[_2614 + _5761 + 128]
                    s = 0
                    while s < 32 * _6084:
                        mem[s + _2614 + ceil32(return_data.size) + 160] = mem[s + _2614 + _5761 + 160]
                        s = s + 32
                        continue 
                    mem[64] = (32 * _6084) + _2614 + ceil32(return_data.size) + 160
                    require mem[_2614 + ceil32(return_data.size) + 128] - 1 < mem[_2614 + ceil32(return_data.size) + 128]
                    if mem[(32 * mem[_2614 + ceil32(return_data.size) + 128] - 1) + _2614 + ceil32(return_data.size) + 160] <= t:
                        idx = idx + 1
                        t = t
                        continue 
                    idx = idx + 1
                    t = mem[(32 * mem[_2614 + ceil32(return_data.size) + 128] - 1) + _2614 + ceil32(return_data.size) + 160]
                    continue 
                _2801 = mem[64]
                mem[mem[64]] = 3
                mem[64] = mem[64] + 128
                require 0 < mem[_2801]
                mem[_2801 + 32] = 0x8d11ec38a3eb5e956b052f67da8bdc9bef8abf
                require 1 < mem[_2801]
                mem[_2801 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c
                require 2 < mem[_2801]
                mem[_2801 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                mem[_2801 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_2801 + 132] = s
                mem[_2801 + 164] = 64
                mem[_2801 + 196] = mem[_2801]
                u = 0
                while u < 32 * mem[_2801]:
                    mem[u + _2801 + 228] = mem[u + _2801 + 32]
                    u = u + 32
                    continue 
                require ext_code.size(0x53c153a0df7e050bbefbb70ee9632061f12795fb)
                staticcall 0x53c153a0df7e050bbefbb70ee9632061f12795fb.getAmountsOut(uint256 rg1, address[] rg2) with:
                        gas gas_remaining wei
                       args s, 64, mem[_2801 + 196 len (32 * mem[_2801]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_2801 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _2801 + ceil32(return_data.size) + 128
                require return_data.size >= 32
                _5763 = mem[_2801 + 128 len 4], Mask(224, 32, s) >> 32
                require mem[_2801 + 128 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                require mem[_2801 + 128 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                require mem[_2801 + mem[_2801 + 128 len 4], Mask(224, 32, s) >> 32 + 128] <= 4294967296 and mem[_2801 + 128 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_2801 + mem[_2801 + 128 len 4], Mask(224, 32, s) >> 32 + 128]) + 32 <= return_data.size
                mem[_2801 + ceil32(return_data.size) + 128] = mem[_2801 + mem[_2801 + 128 len 4], Mask(224, 32, s) >> 32 + 128]
                _6085 = mem[_2801 + _5763 + 128]
                s = 0
                while s < 32 * _6085:
                    mem[s + _2801 + ceil32(return_data.size) + 160] = mem[s + _2801 + _5763 + 160]
                    s = s + 32
                    continue 
                mem[64] = (32 * _6085) + _2801 + ceil32(return_data.size) + 160
                require mem[_2801 + ceil32(return_data.size) + 128] - 1 < mem[_2801 + ceil32(return_data.size) + 128]
                if mem[(32 * mem[_2801 + ceil32(return_data.size) + 128] - 1) + _2801 + ceil32(return_data.size) + 160] <= t:
                    idx = idx + 1
                    t = t
                    continue 
                idx = idx + 1
                t = mem[(32 * mem[_2801 + ceil32(return_data.size) + 128] - 1) + _2801 + ceil32(return_data.size) + 160]
                continue 
            if 5 == idx:
                if 3 == idx:
                    _2624 = mem[64]
                    mem[mem[64]] = 3
                    mem[64] = mem[64] + 128
                    require 0 < mem[_2624]
                    mem[_2624 + 32] = 0x8d11ec38a3eb5e956b052f67da8bdc9bef8abf
                    require 1 < mem[_2624]
                    mem[_2624 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c
                    require 2 < mem[_2624]
                    mem[_2624 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    mem[_2624 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_2624 + 132] = s
                    mem[_2624 + 164] = 64
                    mem[_2624 + 196] = mem[_2624]
                    u = 0
                    while u < 32 * mem[_2624]:
                        mem[u + _2624 + 228] = mem[u + _2624 + 32]
                        u = u + 32
                        continue 
                    require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                    staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c29.getAmountsOut(uint256 rg1, address[] rg2) with:
                            gas gas_remaining wei
                           args s, 64, mem[_2624 + 196 len (32 * mem[_2624]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_2624 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _2624 + ceil32(return_data.size) + 128
                    require return_data.size >= 32
                    _5781 = mem[_2624 + 128 len 4], Mask(224, 32, s) >> 32
                    require mem[_2624 + 128 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                    require mem[_2624 + 128 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                    require mem[_2624 + mem[_2624 + 128 len 4], Mask(224, 32, s) >> 32 + 128] <= 4294967296 and mem[_2624 + 128 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_2624 + mem[_2624 + 128 len 4], Mask(224, 32, s) >> 32 + 128]) + 32 <= return_data.size
                    mem[_2624 + ceil32(return_data.size) + 128] = mem[_2624 + mem[_2624 + 128 len 4], Mask(224, 32, s) >> 32 + 128]
                    _6094 = mem[_2624 + _5781 + 128]
                    s = 0
                    while s < 32 * _6094:
                        mem[s + _2624 + ceil32(return_data.size) + 160] = mem[s + _2624 + _5781 + 160]
                        s = s + 32
                        continue 
                    mem[64] = (32 * _6094) + _2624 + ceil32(return_data.size) + 160
                    require mem[_2624 + ceil32(return_data.size) + 128] - 1 < mem[_2624 + ceil32(return_data.size) + 128]
                    if mem[(32 * mem[_2624 + ceil32(return_data.size) + 128] - 1) + _2624 + ceil32(return_data.size) + 160] <= t:
                        idx = idx + 1
                        t = t
                        continue 
                    idx = idx + 1
                    t = mem[(32 * mem[_2624 + ceil32(return_data.size) + 128] - 1) + _2624 + ceil32(return_data.size) + 160]
                    continue 
                if 4 == idx:
                    _2814 = mem[64]
                    mem[mem[64]] = 3
                    mem[64] = mem[64] + 128
                    require 0 < mem[_2814]
                    mem[_2814 + 32] = 0x8d11ec38a3eb5e956b052f67da8bdc9bef8abf
                    require 1 < mem[_2814]
                    mem[_2814 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c
                    require 2 < mem[_2814]
                    mem[_2814 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    mem[_2814 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_2814 + 132] = s
                    mem[_2814 + 164] = 64
                    mem[_2814 + 196] = mem[_2814]
                    u = 0
                    while u < 32 * mem[_2814]:
                        mem[u + _2814 + 228] = mem[u + _2814 + 32]
                        u = u + 32
                        continue 
                    require ext_code.size(0x7b17021fcb7bc888641dc3bedfed3734fcaf2c87)
                    staticcall 0x7b17021fcb7bc888641dc3bedfed3734fcaf2c87.getAmountsOut(uint256 rg1, address[] rg2) with:
                            gas gas_remaining wei
                           args s, 64, mem[_2814 + 196 len (32 * mem[_2814]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_2814 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _2814 + ceil32(return_data.size) + 128
                    require return_data.size >= 32
                    _5779 = mem[_2814 + 128 len 4], Mask(224, 32, s) >> 32
                    require mem[_2814 + 128 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                    require mem[_2814 + 128 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                    require mem[_2814 + mem[_2814 + 128 len 4], Mask(224, 32, s) >> 32 + 128] <= 4294967296 and mem[_2814 + 128 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_2814 + mem[_2814 + 128 len 4], Mask(224, 32, s) >> 32 + 128]) + 32 <= return_data.size
                    mem[_2814 + ceil32(return_data.size) + 128] = mem[_2814 + mem[_2814 + 128 len 4], Mask(224, 32, s) >> 32 + 128]
                    _6093 = mem[_2814 + _5779 + 128]
                    s = 0
                    while s < 32 * _6093:
                        mem[s + _2814 + ceil32(return_data.size) + 160] = mem[s + _2814 + _5779 + 160]
                        s = s + 32
                        continue 
                    mem[64] = (32 * _6093) + _2814 + ceil32(return_data.size) + 160
                    require mem[_2814 + ceil32(return_data.size) + 128] - 1 < mem[_2814 + ceil32(return_data.size) + 128]
                    if mem[(32 * mem[_2814 + ceil32(return_data.size) + 128] - 1) + _2814 + ceil32(return_data.size) + 160] <= t:
                        idx = idx + 1
                        t = t
                        continue 
                    idx = idx + 1
                    t = mem[(32 * mem[_2814 + ceil32(return_data.size) + 128] - 1) + _2814 + ceil32(return_data.size) + 160]
                    continue 
                if idx != 5:
                    _2812 = mem[64]
                    mem[mem[64]] = 3
                    mem[64] = mem[64] + 128
                    require 0 < mem[_2812]
                    mem[_2812 + 32] = 0x8d11ec38a3eb5e956b052f67da8bdc9bef8abf
                    require 1 < mem[_2812]
                    mem[_2812 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c
                    require 2 < mem[_2812]
                    mem[_2812 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    mem[_2812 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_2812 + 132] = s
                    mem[_2812 + 164] = 64
                    mem[_2812 + 196] = mem[_2812]
                    u = 0
                    while u < 32 * mem[_2812]:
                        mem[u + _2812 + 228] = mem[u + _2812 + 32]
                        u = u + 32
                        continue 
                    require ext_code.size(0)
                    staticcall 0x0.getAmountsOut(uint256 rg1, address[] rg2) with:
                            gas gas_remaining wei
                           args s, 64, mem[_2812 + 196 len (32 * mem[_2812]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_2812 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _2812 + ceil32(return_data.size) + 128
                    require return_data.size >= 32
                    _5775 = mem[_2812 + 128 len 4], Mask(224, 32, s) >> 32
                    require mem[_2812 + 128 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                    require mem[_2812 + 128 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                    require mem[_2812 + mem[_2812 + 128 len 4], Mask(224, 32, s) >> 32 + 128] <= 4294967296 and mem[_2812 + 128 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_2812 + mem[_2812 + 128 len 4], Mask(224, 32, s) >> 32 + 128]) + 32 <= return_data.size
                    mem[_2812 + ceil32(return_data.size) + 128] = mem[_2812 + mem[_2812 + 128 len 4], Mask(224, 32, s) >> 32 + 128]
                    _6091 = mem[_2812 + _5775 + 128]
                    s = 0
                    while s < 32 * _6091:
                        mem[s + _2812 + ceil32(return_data.size) + 160] = mem[s + _2812 + _5775 + 160]
                        s = s + 32
                        continue 
                    mem[64] = (32 * _6091) + _2812 + ceil32(return_data.size) + 160
                    require mem[_2812 + ceil32(return_data.size) + 128] - 1 < mem[_2812 + ceil32(return_data.size) + 128]
                    if mem[(32 * mem[_2812 + ceil32(return_data.size) + 128] - 1) + _2812 + ceil32(return_data.size) + 160] <= t:
                        idx = idx + 1
                        t = t
                        continue 
                    idx = idx + 1
                    t = mem[(32 * mem[_2812 + ceil32(return_data.size) + 128] - 1) + _2812 + ceil32(return_data.size) + 160]
                    continue 
                _3042 = mem[64]
                mem[mem[64]] = 3
                mem[64] = mem[64] + 128
                require 0 < mem[_3042]
                mem[_3042 + 32] = 0x8d11ec38a3eb5e956b052f67da8bdc9bef8abf
                require 1 < mem[_3042]
                mem[_3042 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c
                require 2 < mem[_3042]
                mem[_3042 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                mem[_3042 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_3042 + 132] = s
                mem[_3042 + 164] = 64
                mem[_3042 + 196] = mem[_3042]
                u = 0
                while u < 32 * mem[_3042]:
                    mem[u + _3042 + 228] = mem[u + _3042 + 32]
                    u = u + 32
                    continue 
                require ext_code.size(0x53c153a0df7e050bbefbb70ee9632061f12795fb)
                staticcall 0x53c153a0df7e050bbefbb70ee9632061f12795fb.getAmountsOut(uint256 rg1, address[] rg2) with:
                        gas gas_remaining wei
                       args s, 64, mem[_3042 + 196 len (32 * mem[_3042]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_3042 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _3042 + ceil32(return_data.size) + 128
                require return_data.size >= 32
                _5777 = mem[_3042 + 128 len 4], Mask(224, 32, s) >> 32
                require mem[_3042 + 128 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                require mem[_3042 + 128 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                require mem[_3042 + mem[_3042 + 128 len 4], Mask(224, 32, s) >> 32 + 128] <= 4294967296 and mem[_3042 + 128 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_3042 + mem[_3042 + 128 len 4], Mask(224, 32, s) >> 32 + 128]) + 32 <= return_data.size
                mem[_3042 + ceil32(return_data.size) + 128] = mem[_3042 + mem[_3042 + 128 len 4], Mask(224, 32, s) >> 32 + 128]
                _6092 = mem[_3042 + _5777 + 128]
                s = 0
                while s < 32 * _6092:
                    mem[s + _3042 + ceil32(return_data.size) + 160] = mem[s + _3042 + _5777 + 160]
                    s = s + 32
                    continue 
                mem[64] = (32 * _6092) + _3042 + ceil32(return_data.size) + 160
                require mem[_3042 + ceil32(return_data.size) + 128] - 1 < mem[_3042 + ceil32(return_data.size) + 128]
                if mem[(32 * mem[_3042 + ceil32(return_data.size) + 128] - 1) + _3042 + ceil32(return_data.size) + 160] <= t:
                    idx = idx + 1
                    t = t
                    continue 
                idx = idx + 1
                t = mem[(32 * mem[_3042 + ceil32(return_data.size) + 128] - 1) + _3042 + ceil32(return_data.size) + 160]
                continue 
            if 6 == idx:
                _2500 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                require 0 < mem[_2500]
                mem[_2500 + 32] = 0x8d11ec38a3eb5e956b052f67da8bdc9bef8abf
                require 1 < mem[_2500]
                mem[_2500 + 64] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                mem[_2500 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_2500 + 100] = s
                mem[_2500 + 132] = 64
                mem[_2500 + 164] = mem[_2500]
                u = 0
                while u < 32 * mem[_2500]:
                    mem[u + _2500 + 196] = mem[u + _2500 + 32]
                    u = u + 32
                    continue 
                require ext_code.size(0x53c153a0df7e050bbefbb70ee9632061f12795fb)
                staticcall 0x53c153a0df7e050bbefbb70ee9632061f12795fb.getAmountsOut(uint256 rg1, address[] rg2) with:
                        gas gas_remaining wei
                       args s, 64, mem[_2500 + 164 len (32 * mem[_2500]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_2500 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _2500 + ceil32(return_data.size) + 96
                require return_data.size >= 32
                _5773 = mem[_2500 + 96 len 4], Mask(224, 32, s) >> 32
                require mem[_2500 + 96 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                require mem[_2500 + 96 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                require mem[_2500 + mem[_2500 + 96 len 4], Mask(224, 32, s) >> 32 + 96] <= 4294967296 and mem[_2500 + 96 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_2500 + mem[_2500 + 96 len 4], Mask(224, 32, s) >> 32 + 96]) + 32 <= return_data.size
                mem[_2500 + ceil32(return_data.size) + 96] = mem[_2500 + mem[_2500 + 96 len 4], Mask(224, 32, s) >> 32 + 96]
                _6090 = mem[_2500 + _5773 + 96]
                s = 0
                while s < 32 * _6090:
                    mem[s + _2500 + ceil32(return_data.size) + 128] = mem[s + _2500 + _5773 + 128]
                    s = s + 32
                    continue 
                mem[64] = (32 * _6090) + _2500 + ceil32(return_data.size) + 128
                require mem[_2500 + ceil32(return_data.size) + 96] - 1 < mem[_2500 + ceil32(return_data.size) + 96]
                if mem[(32 * mem[_2500 + ceil32(return_data.size) + 96] - 1) + _2500 + ceil32(return_data.size) + 128] <= t:
                    idx = idx + 1
                    t = t
                    continue 
                idx = idx + 1
                t = mem[(32 * mem[_2500 + ceil32(return_data.size) + 96] - 1) + _2500 + ceil32(return_data.size) + 128]
                continue 
            if idx != 7:
                if s <= t:
                    idx = idx + 1
                    t = t
                    continue 
                idx = idx + 1
                t = s
                continue 
            _2807 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            require 0 < mem[_2807]
            mem[_2807 + 32] = 0x8d11ec38a3eb5e956b052f67da8bdc9bef8abf
            require 1 < mem[_2807]
            mem[_2807 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c
            mem[_2807 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[_2807 + 100] = s
            mem[_2807 + 132] = 64
            mem[_2807 + 164] = mem[_2807]
            u = 0
            while u < 32 * mem[_2807]:
                mem[u + _2807 + 196] = mem[u + _2807 + 32]
                u = u + 32
                continue 
            require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
            staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c29.getAmountsOut(uint256 rg1, address[] rg2) with:
                    gas gas_remaining wei
                   args s, 64, mem[_2807 + 164 len (32 * mem[_2807]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[_2807 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = _2807 + ceil32(return_data.size) + 96
            require return_data.size >= 32
            _5769 = mem[_2807 + 96 len 4], Mask(224, 32, s) >> 32
            require mem[_2807 + 96 len 4], Mask(224, 32, s) >> 32 <= 4294967296
            require mem[_2807 + 96 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
            require mem[_2807 + mem[_2807 + 96 len 4], Mask(224, 32, s) >> 32 + 96] <= 4294967296 and mem[_2807 + 96 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_2807 + mem[_2807 + 96 len 4], Mask(224, 32, s) >> 32 + 96]) + 32 <= return_data.size
            mem[_2807 + ceil32(return_data.size) + 96] = mem[_2807 + mem[_2807 + 96 len 4], Mask(224, 32, s) >> 32 + 96]
            _6088 = mem[_2807 + _5769 + 96]
            s = 0
            while s < 32 * _6088:
                mem[s + _2807 + ceil32(return_data.size) + 128] = mem[s + _2807 + _5769 + 128]
                s = s + 32
                continue 
            mem[64] = (32 * _6088) + _2807 + ceil32(return_data.size) + 128
            require mem[_2807 + ceil32(return_data.size) + 96] - 1 < mem[_2807 + ceil32(return_data.size) + 96]
            _7404 = mem[(32 * mem[_2807 + ceil32(return_data.size) + 96] - 1) + _2807 + ceil32(return_data.size) + 128]
            mem[(32 * _6088) + _2807 + ceil32(return_data.size) + 128] = 2
            mem[(32 * _6088) + _2807 + ceil32(return_data.size) + 160] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c
            mem[(32 * _6088) + _2807 + ceil32(return_data.size) + 192] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
            mem[(32 * _6088) + _2807 + ceil32(return_data.size) + 224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[(32 * _6088) + _2807 + ceil32(return_data.size) + 228] = _7404
            mem[(32 * _6088) + _2807 + ceil32(return_data.size) + 260] = 64
            mem[(32 * _6088) + _2807 + ceil32(return_data.size) + 292] = 2
            s = 0
            while s < 64:
                mem[s + (32 * _6088) + _2807 + ceil32(return_data.size) + 324] = mem[s + (32 * _6088) + _2807 + ceil32(return_data.size) + 160]
                s = s + 32
                continue 
            require ext_code.size(0x1b02da8cb0d097eb8d57a175b88c7d8b47997506)
            staticcall 0x1b02da8cb0d097eb8d57a175b88c7d8b47997506.getAmountsOut(uint256 rg1, address[] rg2) with:
                    gas gas_remaining wei
                   args _7404, Array(len=2, data=mem[(32 * _6088) + _2807 + ceil32(return_data.size) + 324 len 64])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _6088) + _2807 + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * _6088) + _2807 + (2 * ceil32(return_data.size)) + 224
            require return_data.size >= 32
            _7927 = mem[(32 * _6088) + _2807 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _7404) >> 32
            require mem[(32 * _6088) + _2807 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _7404) >> 32 <= 4294967296
            require mem[(32 * _6088) + _2807 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _7404) >> 32 + 32 <= return_data.size
            require mem[(32 * _6088) + _2807 + ceil32(return_data.size) + mem[(32 * _6088) + _2807 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _7404) >> 32 + 224] <= 4294967296 and mem[(32 * _6088) + _2807 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _7404) >> 32 + (32 * mem[(32 * _6088) + _2807 + ceil32(return_data.size) + mem[(32 * _6088) + _2807 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _7404) >> 32 + 224]) + 32 <= return_data.size
            mem[(32 * _6088) + _2807 + (2 * ceil32(return_data.size)) + 224] = mem[(32 * _6088) + _2807 + ceil32(return_data.size) + mem[(32 * _6088) + _2807 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _7404) >> 32 + 224]
            _7967 = mem[(32 * _6088) + _2807 + ceil32(return_data.size) + _7927 + 224]
            s = 0
            while s < 32 * _7967:
                mem[s + (32 * _6088) + _2807 + (2 * ceil32(return_data.size)) + 256] = mem[s + (32 * _6088) + _2807 + ceil32(return_data.size) + _7927 + 256]
                s = s + 32
                continue 
            mem[64] = (32 * _7967) + (32 * _6088) + _2807 + (2 * ceil32(return_data.size)) + 256
            require mem[(32 * _6088) + _2807 + (2 * ceil32(return_data.size)) + 224] - 1 < mem[(32 * _6088) + _2807 + (2 * ceil32(return_data.size)) + 224]
            if mem[(32 * mem[(32 * _6088) + _2807 + (2 * ceil32(return_data.size)) + 224] - 1) + (32 * _6088) + _2807 + (2 * ceil32(return_data.size)) + 256] <= t:
                idx = idx + 1
                t = t
                continue 
            idx = idx + 1
            t = mem[(32 * mem[(32 * _6088) + _2807 + (2 * ceil32(return_data.size)) + 224] - 1) + (32 * _6088) + _2807 + (2 * ceil32(return_data.size)) + 256]
            continue 
    else:
        if 10^6 * sub_7d0b6809 / sub_7d0b6809 != 10^6:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x3e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        idx = 0
        s = 0
        while idx < 8:
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
                _115 = mem[64]
                mem[mem[64]] = 4
                mem[64] = mem[64] + 160
                require 0 < mem[_115]
                mem[_115 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                require 1 < mem[_115]
                mem[_115 + 64] = 0x5cc61a78f164885776aa610fb0fe1257df78e59b
                require 2 < mem[_115]
                mem[_115 + 96] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c
                require 3 < mem[_115]
                mem[_115 + 128] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                mem[_115 + 160] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_115 + 164] = 10^6 * sub_7d0b6809
                mem[_115 + 196] = 64
                mem[_115 + 228] = mem[_115]
                t = 0
                while t < 32 * mem[_115]:
                    mem[t + _115 + 260] = mem[t + _115 + 32]
                    t = t + 32
                    continue 
                require ext_code.size(0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52)
                staticcall 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52.getAmountsOut(uint256 rg1, address[] rg2) with:
                        gas gas_remaining wei
                       args 10^6 * sub_7d0b6809, 64, mem[_115 + 228 len (32 * mem[_115]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_115 + 160 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _115 + ceil32(return_data.size) + 160
                require return_data.size >= 32
                _1735 = mem[_115 + 160 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32
                require mem[_115 + 160 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 <= 4294967296
                require mem[_115 + 160 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 32 <= return_data.size
                require mem[_115 + mem[_115 + 160 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 160] <= 4294967296 and mem[_115 + 160 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + (32 * mem[_115 + mem[_115 + 160 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 160]) + 32 <= return_data.size
                mem[_115 + ceil32(return_data.size) + 160] = mem[_115 + mem[_115 + 160 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 160]
                _2023 = mem[_115 + _1735 + 160]
                t = 0
                while t < 32 * _2023:
                    mem[t + _115 + ceil32(return_data.size) + 192] = mem[t + _115 + _1735 + 192]
                    t = t + 32
                    continue 
                mem[64] = (32 * _2023) + _115 + ceil32(return_data.size) + 192
                require mem[_115 + ceil32(return_data.size) + 160] - 1 < mem[_115 + ceil32(return_data.size) + 160]
                if mem[(32 * mem[_115 + ceil32(return_data.size) + 160] - 1) + _115 + ceil32(return_data.size) + 192] <= s:
                    idx = idx + 1
                    s = s
                    continue 
                idx = idx + 1
                s = mem[(32 * mem[_115 + ceil32(return_data.size) + 160] - 1) + _115 + ceil32(return_data.size) + 192]
                continue 
            if 3 == idx:
                _239 = mem[64]
                mem[mem[64]] = 3
                mem[64] = mem[64] + 128
                require 0 < mem[_239]
                mem[_239 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                require 1 < mem[_239]
                mem[_239 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c
                require 2 < mem[_239]
                mem[_239 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                mem[_239 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_239 + 132] = 10^6 * sub_7d0b6809
                mem[_239 + 164] = 64
                mem[_239 + 196] = mem[_239]
                t = 0
                while t < 32 * mem[_239]:
                    mem[t + _239 + 228] = mem[t + _239 + 32]
                    t = t + 32
                    continue 
                require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c29.getAmountsOut(uint256 rg1, address[] rg2) with:
                        gas gas_remaining wei
                       args 10^6 * sub_7d0b6809, 64, mem[_239 + 196 len (32 * mem[_239]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_239 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _239 + ceil32(return_data.size) + 128
                require return_data.size >= 32
                _1711 = mem[_239 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32
                require mem[_239 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 <= 4294967296
                require mem[_239 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 32 <= return_data.size
                require mem[_239 + mem[_239 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 128] <= 4294967296 and mem[_239 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + (32 * mem[_239 + mem[_239 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 128]) + 32 <= return_data.size
                mem[_239 + ceil32(return_data.size) + 128] = mem[_239 + mem[_239 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 128]
                _2011 = mem[_239 + _1711 + 128]
                t = 0
                while t < 32 * _2011:
                    mem[t + _239 + ceil32(return_data.size) + 160] = mem[t + _239 + _1711 + 160]
                    t = t + 32
                    continue 
                mem[64] = (32 * _2011) + _239 + ceil32(return_data.size) + 160
                require mem[_239 + ceil32(return_data.size) + 128] - 1 < mem[_239 + ceil32(return_data.size) + 128]
                if mem[(32 * mem[_239 + ceil32(return_data.size) + 128] - 1) + _239 + ceil32(return_data.size) + 160] <= s:
                    idx = idx + 1
                    s = s
                    continue 
                idx = idx + 1
                s = mem[(32 * mem[_239 + ceil32(return_data.size) + 128] - 1) + _239 + ceil32(return_data.size) + 160]
                continue 
            if 4 == idx:
                if 3 == idx:
                    _274 = mem[64]
                    mem[mem[64]] = 3
                    mem[64] = mem[64] + 128
                    require 0 < mem[_274]
                    mem[_274 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    require 1 < mem[_274]
                    mem[_274 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c
                    require 2 < mem[_274]
                    mem[_274 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    mem[_274 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_274 + 132] = 10^6 * sub_7d0b6809
                    mem[_274 + 164] = 64
                    mem[_274 + 196] = mem[_274]
                    t = 0
                    while t < 32 * mem[_274]:
                        mem[t + _274 + 228] = mem[t + _274 + 32]
                        t = t + 32
                        continue 
                    require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                    staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c29.getAmountsOut(uint256 rg1, address[] rg2) with:
                            gas gas_remaining wei
                           args 10^6 * sub_7d0b6809, 64, mem[_274 + 196 len (32 * mem[_274]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_274 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _274 + ceil32(return_data.size) + 128
                    require return_data.size >= 32
                    _1719 = mem[_274 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32
                    require mem[_274 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 <= 4294967296
                    require mem[_274 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 32 <= return_data.size
                    require mem[_274 + mem[_274 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 128] <= 4294967296 and mem[_274 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + (32 * mem[_274 + mem[_274 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 128]) + 32 <= return_data.size
                    mem[_274 + ceil32(return_data.size) + 128] = mem[_274 + mem[_274 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 128]
                    _2015 = mem[_274 + _1719 + 128]
                    t = 0
                    while t < 32 * _2015:
                        mem[t + _274 + ceil32(return_data.size) + 160] = mem[t + _274 + _1719 + 160]
                        t = t + 32
                        continue 
                    mem[64] = (32 * _2015) + _274 + ceil32(return_data.size) + 160
                    require mem[_274 + ceil32(return_data.size) + 128] - 1 < mem[_274 + ceil32(return_data.size) + 128]
                    if mem[(32 * mem[_274 + ceil32(return_data.size) + 128] - 1) + _274 + ceil32(return_data.size) + 160] <= s:
                        idx = idx + 1
                        s = s
                        continue 
                    idx = idx + 1
                    s = mem[(32 * mem[_274 + ceil32(return_data.size) + 128] - 1) + _274 + ceil32(return_data.size) + 160]
                    continue 
                if 4 == idx:
                    _340 = mem[64]
                    mem[mem[64]] = 3
                    mem[64] = mem[64] + 128
                    require 0 < mem[_340]
                    mem[_340 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    require 1 < mem[_340]
                    mem[_340 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c
                    require 2 < mem[_340]
                    mem[_340 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    mem[_340 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_340 + 132] = 10^6 * sub_7d0b6809
                    mem[_340 + 164] = 64
                    mem[_340 + 196] = mem[_340]
                    t = 0
                    while t < 32 * mem[_340]:
                        mem[t + _340 + 228] = mem[t + _340 + 32]
                        t = t + 32
                        continue 
                    require ext_code.size(0x7b17021fcb7bc888641dc3bedfed3734fcaf2c87)
                    staticcall 0x7b17021fcb7bc888641dc3bedfed3734fcaf2c87.getAmountsOut(uint256 rg1, address[] rg2) with:
                            gas gas_remaining wei
                           args 10^6 * sub_7d0b6809, 64, mem[_340 + 196 len (32 * mem[_340]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_340 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _340 + ceil32(return_data.size) + 128
                    require return_data.size >= 32
                    _1717 = mem[_340 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32
                    require mem[_340 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 <= 4294967296
                    require mem[_340 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 32 <= return_data.size
                    require mem[_340 + mem[_340 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 128] <= 4294967296 and mem[_340 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + (32 * mem[_340 + mem[_340 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 128]) + 32 <= return_data.size
                    mem[_340 + ceil32(return_data.size) + 128] = mem[_340 + mem[_340 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 128]
                    _2014 = mem[_340 + _1717 + 128]
                    t = 0
                    while t < 32 * _2014:
                        mem[t + _340 + ceil32(return_data.size) + 160] = mem[t + _340 + _1717 + 160]
                        t = t + 32
                        continue 
                    mem[64] = (32 * _2014) + _340 + ceil32(return_data.size) + 160
                    require mem[_340 + ceil32(return_data.size) + 128] - 1 < mem[_340 + ceil32(return_data.size) + 128]
                    if mem[(32 * mem[_340 + ceil32(return_data.size) + 128] - 1) + _340 + ceil32(return_data.size) + 160] <= s:
                        idx = idx + 1
                        s = s
                        continue 
                    idx = idx + 1
                    s = mem[(32 * mem[_340 + ceil32(return_data.size) + 128] - 1) + _340 + ceil32(return_data.size) + 160]
                    continue 
                if idx != 5:
                    _338 = mem[64]
                    mem[mem[64]] = 3
                    mem[64] = mem[64] + 128
                    require 0 < mem[_338]
                    mem[_338 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    require 1 < mem[_338]
                    mem[_338 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c
                    require 2 < mem[_338]
                    mem[_338 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    mem[_338 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_338 + 132] = 10^6 * sub_7d0b6809
                    mem[_338 + 164] = 64
                    mem[_338 + 196] = mem[_338]
                    t = 0
                    while t < 32 * mem[_338]:
                        mem[t + _338 + 228] = mem[t + _338 + 32]
                        t = t + 32
                        continue 
                    require ext_code.size(0)
                    staticcall 0x0.getAmountsOut(uint256 rg1, address[] rg2) with:
                            gas gas_remaining wei
                           args 10^6 * sub_7d0b6809, 64, mem[_338 + 196 len (32 * mem[_338]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_338 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _338 + ceil32(return_data.size) + 128
                    require return_data.size >= 32
                    _1713 = mem[_338 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32
                    require mem[_338 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 <= 4294967296
                    require mem[_338 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 32 <= return_data.size
                    require mem[_338 + mem[_338 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 128] <= 4294967296 and mem[_338 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + (32 * mem[_338 + mem[_338 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 128]) + 32 <= return_data.size
                    mem[_338 + ceil32(return_data.size) + 128] = mem[_338 + mem[_338 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 128]
                    _2012 = mem[_338 + _1713 + 128]
                    t = 0
                    while t < 32 * _2012:
                        mem[t + _338 + ceil32(return_data.size) + 160] = mem[t + _338 + _1713 + 160]
                        t = t + 32
                        continue 
                    mem[64] = (32 * _2012) + _338 + ceil32(return_data.size) + 160
                    require mem[_338 + ceil32(return_data.size) + 128] - 1 < mem[_338 + ceil32(return_data.size) + 128]
                    if mem[(32 * mem[_338 + ceil32(return_data.size) + 128] - 1) + _338 + ceil32(return_data.size) + 160] <= s:
                        idx = idx + 1
                        s = s
                        continue 
                    idx = idx + 1
                    s = mem[(32 * mem[_338 + ceil32(return_data.size) + 128] - 1) + _338 + ceil32(return_data.size) + 160]
                    continue 
                _405 = mem[64]
                mem[mem[64]] = 3
                mem[64] = mem[64] + 128
                require 0 < mem[_405]
                mem[_405 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                require 1 < mem[_405]
                mem[_405 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c
                require 2 < mem[_405]
                mem[_405 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                mem[_405 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_405 + 132] = 10^6 * sub_7d0b6809
                mem[_405 + 164] = 64
                mem[_405 + 196] = mem[_405]
                t = 0
                while t < 32 * mem[_405]:
                    mem[t + _405 + 228] = mem[t + _405 + 32]
                    t = t + 32
                    continue 
                require ext_code.size(0x53c153a0df7e050bbefbb70ee9632061f12795fb)
                staticcall 0x53c153a0df7e050bbefbb70ee9632061f12795fb.getAmountsOut(uint256 rg1, address[] rg2) with:
                        gas gas_remaining wei
                       args 10^6 * sub_7d0b6809, 64, mem[_405 + 196 len (32 * mem[_405]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_405 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _405 + ceil32(return_data.size) + 128
                require return_data.size >= 32
                _1715 = mem[_405 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32
                require mem[_405 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 <= 4294967296
                require mem[_405 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 32 <= return_data.size
                require mem[_405 + mem[_405 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 128] <= 4294967296 and mem[_405 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + (32 * mem[_405 + mem[_405 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 128]) + 32 <= return_data.size
                mem[_405 + ceil32(return_data.size) + 128] = mem[_405 + mem[_405 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 128]
                _2013 = mem[_405 + _1715 + 128]
                t = 0
                while t < 32 * _2013:
                    mem[t + _405 + ceil32(return_data.size) + 160] = mem[t + _405 + _1715 + 160]
                    t = t + 32
                    continue 
                mem[64] = (32 * _2013) + _405 + ceil32(return_data.size) + 160
                require mem[_405 + ceil32(return_data.size) + 128] - 1 < mem[_405 + ceil32(return_data.size) + 128]
                if mem[(32 * mem[_405 + ceil32(return_data.size) + 128] - 1) + _405 + ceil32(return_data.size) + 160] <= s:
                    idx = idx + 1
                    s = s
                    continue 
                idx = idx + 1
                s = mem[(32 * mem[_405 + ceil32(return_data.size) + 128] - 1) + _405 + ceil32(return_data.size) + 160]
                continue 
            if 5 == idx:
                if 3 == idx:
                    _348 = mem[64]
                    mem[mem[64]] = 3
                    mem[64] = mem[64] + 128
                    require 0 < mem[_348]
                    mem[_348 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    require 1 < mem[_348]
                    mem[_348 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c
                    require 2 < mem[_348]
                    mem[_348 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    mem[_348 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_348 + 132] = 10^6 * sub_7d0b6809
                    mem[_348 + 164] = 64
                    mem[_348 + 196] = mem[_348]
                    t = 0
                    while t < 32 * mem[_348]:
                        mem[t + _348 + 228] = mem[t + _348 + 32]
                        t = t + 32
                        continue 
                    require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                    staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c29.getAmountsOut(uint256 rg1, address[] rg2) with:
                            gas gas_remaining wei
                           args 10^6 * sub_7d0b6809, 64, mem[_348 + 196 len (32 * mem[_348]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_348 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _348 + ceil32(return_data.size) + 128
                    require return_data.size >= 32
                    _1733 = mem[_348 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32
                    require mem[_348 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 <= 4294967296
                    require mem[_348 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 32 <= return_data.size
                    require mem[_348 + mem[_348 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 128] <= 4294967296 and mem[_348 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + (32 * mem[_348 + mem[_348 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 128]) + 32 <= return_data.size
                    mem[_348 + ceil32(return_data.size) + 128] = mem[_348 + mem[_348 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 128]
                    _2022 = mem[_348 + _1733 + 128]
                    t = 0
                    while t < 32 * _2022:
                        mem[t + _348 + ceil32(return_data.size) + 160] = mem[t + _348 + _1733 + 160]
                        t = t + 32
                        continue 
                    mem[64] = (32 * _2022) + _348 + ceil32(return_data.size) + 160
                    require mem[_348 + ceil32(return_data.size) + 128] - 1 < mem[_348 + ceil32(return_data.size) + 128]
                    if mem[(32 * mem[_348 + ceil32(return_data.size) + 128] - 1) + _348 + ceil32(return_data.size) + 160] <= s:
                        idx = idx + 1
                        s = s
                        continue 
                    idx = idx + 1
                    s = mem[(32 * mem[_348 + ceil32(return_data.size) + 128] - 1) + _348 + ceil32(return_data.size) + 160]
                    continue 
                if 4 == idx:
                    _418 = mem[64]
                    mem[mem[64]] = 3
                    mem[64] = mem[64] + 128
                    require 0 < mem[_418]
                    mem[_418 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    require 1 < mem[_418]
                    mem[_418 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c
                    require 2 < mem[_418]
                    mem[_418 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    mem[_418 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_418 + 132] = 10^6 * sub_7d0b6809
                    mem[_418 + 164] = 64
                    mem[_418 + 196] = mem[_418]
                    t = 0
                    while t < 32 * mem[_418]:
                        mem[t + _418 + 228] = mem[t + _418 + 32]
                        t = t + 32
                        continue 
                    require ext_code.size(0x7b17021fcb7bc888641dc3bedfed3734fcaf2c87)
                    staticcall 0x7b17021fcb7bc888641dc3bedfed3734fcaf2c87.getAmountsOut(uint256 rg1, address[] rg2) with:
                            gas gas_remaining wei
                           args 10^6 * sub_7d0b6809, 64, mem[_418 + 196 len (32 * mem[_418]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_418 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _418 + ceil32(return_data.size) + 128
                    require return_data.size >= 32
                    _1731 = mem[_418 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32
                    require mem[_418 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 <= 4294967296
                    require mem[_418 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 32 <= return_data.size
                    require mem[_418 + mem[_418 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 128] <= 4294967296 and mem[_418 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + (32 * mem[_418 + mem[_418 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 128]) + 32 <= return_data.size
                    mem[_418 + ceil32(return_data.size) + 128] = mem[_418 + mem[_418 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 128]
                    _2021 = mem[_418 + _1731 + 128]
                    t = 0
                    while t < 32 * _2021:
                        mem[t + _418 + ceil32(return_data.size) + 160] = mem[t + _418 + _1731 + 160]
                        t = t + 32
                        continue 
                    mem[64] = (32 * _2021) + _418 + ceil32(return_data.size) + 160
                    require mem[_418 + ceil32(return_data.size) + 128] - 1 < mem[_418 + ceil32(return_data.size) + 128]
                    if mem[(32 * mem[_418 + ceil32(return_data.size) + 128] - 1) + _418 + ceil32(return_data.size) + 160] <= s:
                        idx = idx + 1
                        s = s
                        continue 
                    idx = idx + 1
                    s = mem[(32 * mem[_418 + ceil32(return_data.size) + 128] - 1) + _418 + ceil32(return_data.size) + 160]
                    continue 
                if idx != 5:
                    _416 = mem[64]
                    mem[mem[64]] = 3
                    mem[64] = mem[64] + 128
                    require 0 < mem[_416]
                    mem[_416 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    require 1 < mem[_416]
                    mem[_416 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c
                    require 2 < mem[_416]
                    mem[_416 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    mem[_416 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_416 + 132] = 10^6 * sub_7d0b6809
                    mem[_416 + 164] = 64
                    mem[_416 + 196] = mem[_416]
                    t = 0
                    while t < 32 * mem[_416]:
                        mem[t + _416 + 228] = mem[t + _416 + 32]
                        t = t + 32
                        continue 
                    require ext_code.size(0)
                    staticcall 0x0.getAmountsOut(uint256 rg1, address[] rg2) with:
                            gas gas_remaining wei
                           args 10^6 * sub_7d0b6809, 64, mem[_416 + 196 len (32 * mem[_416]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_416 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _416 + ceil32(return_data.size) + 128
                    require return_data.size >= 32
                    _1727 = mem[_416 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32
                    require mem[_416 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 <= 4294967296
                    require mem[_416 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 32 <= return_data.size
                    require mem[_416 + mem[_416 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 128] <= 4294967296 and mem[_416 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + (32 * mem[_416 + mem[_416 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 128]) + 32 <= return_data.size
                    mem[_416 + ceil32(return_data.size) + 128] = mem[_416 + mem[_416 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 128]
                    _2019 = mem[_416 + _1727 + 128]
                    t = 0
                    while t < 32 * _2019:
                        mem[t + _416 + ceil32(return_data.size) + 160] = mem[t + _416 + _1727 + 160]
                        t = t + 32
                        continue 
                    mem[64] = (32 * _2019) + _416 + ceil32(return_data.size) + 160
                    require mem[_416 + ceil32(return_data.size) + 128] - 1 < mem[_416 + ceil32(return_data.size) + 128]
                    if mem[(32 * mem[_416 + ceil32(return_data.size) + 128] - 1) + _416 + ceil32(return_data.size) + 160] <= s:
                        idx = idx + 1
                        s = s
                        continue 
                    idx = idx + 1
                    s = mem[(32 * mem[_416 + ceil32(return_data.size) + 128] - 1) + _416 + ceil32(return_data.size) + 160]
                    continue 
                _541 = mem[64]
                mem[mem[64]] = 3
                mem[64] = mem[64] + 128
                require 0 < mem[_541]
                mem[_541 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                require 1 < mem[_541]
                mem[_541 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c
                require 2 < mem[_541]
                mem[_541 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                mem[_541 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_541 + 132] = 10^6 * sub_7d0b6809
                mem[_541 + 164] = 64
                mem[_541 + 196] = mem[_541]
                t = 0
                while t < 32 * mem[_541]:
                    mem[t + _541 + 228] = mem[t + _541 + 32]
                    t = t + 32
                    continue 
                require ext_code.size(0x53c153a0df7e050bbefbb70ee9632061f12795fb)
                staticcall 0x53c153a0df7e050bbefbb70ee9632061f12795fb.getAmountsOut(uint256 rg1, address[] rg2) with:
                        gas gas_remaining wei
                       args 10^6 * sub_7d0b6809, 64, mem[_541 + 196 len (32 * mem[_541]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_541 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _541 + ceil32(return_data.size) + 128
                require return_data.size >= 32
                _1729 = mem[_541 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32
                require mem[_541 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 <= 4294967296
                require mem[_541 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 32 <= return_data.size
                require mem[_541 + mem[_541 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 128] <= 4294967296 and mem[_541 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + (32 * mem[_541 + mem[_541 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 128]) + 32 <= return_data.size
                mem[_541 + ceil32(return_data.size) + 128] = mem[_541 + mem[_541 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 128]
                _2020 = mem[_541 + _1729 + 128]
                t = 0
                while t < 32 * _2020:
                    mem[t + _541 + ceil32(return_data.size) + 160] = mem[t + _541 + _1729 + 160]
                    t = t + 32
                    continue 
                mem[64] = (32 * _2020) + _541 + ceil32(return_data.size) + 160
                require mem[_541 + ceil32(return_data.size) + 128] - 1 < mem[_541 + ceil32(return_data.size) + 128]
                if mem[(32 * mem[_541 + ceil32(return_data.size) + 128] - 1) + _541 + ceil32(return_data.size) + 160] <= s:
                    idx = idx + 1
                    s = s
                    continue 
                idx = idx + 1
                s = mem[(32 * mem[_541 + ceil32(return_data.size) + 128] - 1) + _541 + ceil32(return_data.size) + 160]
                continue 
            if 6 == idx:
                _276 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                require 0 < mem[_276]
                mem[_276 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                require 1 < mem[_276]
                mem[_276 + 64] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                mem[_276 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_276 + 100] = 10^6 * sub_7d0b6809
                mem[_276 + 132] = 64
                mem[_276 + 164] = mem[_276]
                t = 0
                while t < 32 * mem[_276]:
                    mem[t + _276 + 196] = mem[t + _276 + 32]
                    t = t + 32
                    continue 
                require ext_code.size(0x53c153a0df7e050bbefbb70ee9632061f12795fb)
                staticcall 0x53c153a0df7e050bbefbb70ee9632061f12795fb.getAmountsOut(uint256 rg1, address[] rg2) with:
                        gas gas_remaining wei
                       args 10^6 * sub_7d0b6809, 64, mem[_276 + 164 len (32 * mem[_276]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_276 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _276 + ceil32(return_data.size) + 96
                require return_data.size >= 32
                _1725 = mem[_276 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32
                require mem[_276 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 <= 4294967296
                require mem[_276 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 32 <= return_data.size
                require mem[_276 + mem[_276 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 96] <= 4294967296 and mem[_276 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + (32 * mem[_276 + mem[_276 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 96]) + 32 <= return_data.size
                mem[_276 + ceil32(return_data.size) + 96] = mem[_276 + mem[_276 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 96]
                _2018 = mem[_276 + _1725 + 96]
                t = 0
                while t < 32 * _2018:
                    mem[t + _276 + ceil32(return_data.size) + 128] = mem[t + _276 + _1725 + 128]
                    t = t + 32
                    continue 
                mem[64] = (32 * _2018) + _276 + ceil32(return_data.size) + 128
                require mem[_276 + ceil32(return_data.size) + 96] - 1 < mem[_276 + ceil32(return_data.size) + 96]
                if mem[(32 * mem[_276 + ceil32(return_data.size) + 96] - 1) + _276 + ceil32(return_data.size) + 128] <= s:
                    idx = idx + 1
                    s = s
                    continue 
                idx = idx + 1
                s = mem[(32 * mem[_276 + ceil32(return_data.size) + 96] - 1) + _276 + ceil32(return_data.size) + 128]
                continue 
            if idx != 7:
                if 10^6 * sub_7d0b6809 <= s:
                    idx = idx + 1
                    s = s
                    continue 
                idx = idx + 1
                s = 10^6 * sub_7d0b6809
                continue 
            _411 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            require 0 < mem[_411]
            mem[_411 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
            require 1 < mem[_411]
            mem[_411 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c
            mem[_411 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[_411 + 100] = 10^6 * sub_7d0b6809
            mem[_411 + 132] = 64
            mem[_411 + 164] = mem[_411]
            t = 0
            while t < 32 * mem[_411]:
                mem[t + _411 + 196] = mem[t + _411 + 32]
                t = t + 32
                continue 
            require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
            staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c29.getAmountsOut(uint256 rg1, address[] rg2) with:
                    gas gas_remaining wei
                   args 10^6 * sub_7d0b6809, 64, mem[_411 + 164 len (32 * mem[_411]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[_411 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = _411 + ceil32(return_data.size) + 96
            require return_data.size >= 32
            _1721 = mem[_411 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32
            require mem[_411 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 <= 4294967296
            require mem[_411 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 32 <= return_data.size
            require mem[_411 + mem[_411 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 96] <= 4294967296 and mem[_411 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + (32 * mem[_411 + mem[_411 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 96]) + 32 <= return_data.size
            mem[_411 + ceil32(return_data.size) + 96] = mem[_411 + mem[_411 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 96]
            _2016 = mem[_411 + _1721 + 96]
            t = 0
            while t < 32 * _2016:
                mem[t + _411 + ceil32(return_data.size) + 128] = mem[t + _411 + _1721 + 128]
                t = t + 32
                continue 
            mem[64] = (32 * _2016) + _411 + ceil32(return_data.size) + 128
            require mem[_411 + ceil32(return_data.size) + 96] - 1 < mem[_411 + ceil32(return_data.size) + 96]
            _5476 = mem[(32 * mem[_411 + ceil32(return_data.size) + 96] - 1) + _411 + ceil32(return_data.size) + 128]
            mem[(32 * _2016) + _411 + ceil32(return_data.size) + 128] = 2
            mem[(32 * _2016) + _411 + ceil32(return_data.size) + 160] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c
            mem[(32 * _2016) + _411 + ceil32(return_data.size) + 192] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
            mem[(32 * _2016) + _411 + ceil32(return_data.size) + 224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[(32 * _2016) + _411 + ceil32(return_data.size) + 228] = _5476
            mem[(32 * _2016) + _411 + ceil32(return_data.size) + 260] = 64
            mem[(32 * _2016) + _411 + ceil32(return_data.size) + 292] = 2
            t = 0
            while t < 64:
                mem[t + (32 * _2016) + _411 + ceil32(return_data.size) + 324] = mem[t + (32 * _2016) + _411 + ceil32(return_data.size) + 160]
                t = t + 32
                continue 
            require ext_code.size(0x1b02da8cb0d097eb8d57a175b88c7d8b47997506)
            staticcall 0x1b02da8cb0d097eb8d57a175b88c7d8b47997506.getAmountsOut(uint256 rg1, address[] rg2) with:
                    gas gas_remaining wei
                   args _5476, Array(len=2, data=mem[(32 * _2016) + _411 + ceil32(return_data.size) + 324 len 64])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _2016) + _411 + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * _2016) + _411 + (2 * ceil32(return_data.size)) + 224
            require return_data.size >= 32
            _7479 = mem[(32 * _2016) + _411 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _5476) >> 32
            require mem[(32 * _2016) + _411 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _5476) >> 32 <= 4294967296
            require mem[(32 * _2016) + _411 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _5476) >> 32 + 32 <= return_data.size
            require mem[(32 * _2016) + _411 + ceil32(return_data.size) + mem[(32 * _2016) + _411 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _5476) >> 32 + 224] <= 4294967296 and mem[(32 * _2016) + _411 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _5476) >> 32 + (32 * mem[(32 * _2016) + _411 + ceil32(return_data.size) + mem[(32 * _2016) + _411 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _5476) >> 32 + 224]) + 32 <= return_data.size
            mem[(32 * _2016) + _411 + (2 * ceil32(return_data.size)) + 224] = mem[(32 * _2016) + _411 + ceil32(return_data.size) + mem[(32 * _2016) + _411 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _5476) >> 32 + 224]
            _7579 = mem[(32 * _2016) + _411 + ceil32(return_data.size) + _7479 + 224]
            t = 0
            while t < 32 * _7579:
                mem[t + (32 * _2016) + _411 + (2 * ceil32(return_data.size)) + 256] = mem[t + (32 * _2016) + _411 + ceil32(return_data.size) + _7479 + 256]
                t = t + 32
                continue 
            mem[64] = (32 * _7579) + (32 * _2016) + _411 + (2 * ceil32(return_data.size)) + 256
            require mem[(32 * _2016) + _411 + (2 * ceil32(return_data.size)) + 224] - 1 < mem[(32 * _2016) + _411 + (2 * ceil32(return_data.size)) + 224]
            if mem[(32 * mem[(32 * _2016) + _411 + (2 * ceil32(return_data.size)) + 224] - 1) + (32 * _2016) + _411 + (2 * ceil32(return_data.size)) + 256] <= s:
                idx = idx + 1
                s = s
                continue 
            idx = idx + 1
            s = mem[(32 * mem[(32 * _2016) + _411 + (2 * ceil32(return_data.size)) + 224] - 1) + (32 * _2016) + _411 + (2 * ceil32(return_data.size)) + 256]
            continue 
        idx = 0
        t = 0
        while idx < 8:
            if not idx:
                mem[mem[64] + 4] = 1
                mem[mem[64] + 36] = 0
                mem[mem[64] + 68] = s
                require ext_code.size(0x27e611fd27b276acbd5ffd632e5eaebec9761e40)
                staticcall 0x27e611fd27b276acbd5ffd632e5eaebec9761e40.get_dy(int128 rg1, int128 rg2, uint256 rg3) with:
                        gas gas_remaining wei
                       args 1, 0, s
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
                mem[mem[64] + 4] = 2
                mem[mem[64] + 36] = 1
                mem[mem[64] + 68] = s
                require ext_code.size(0x83e5f18da720119ff363cf63417628eb0e9fd523)
                staticcall 0x83e5f18da720119ff363cf63417628eb0e9fd523.get_dy(int128 rg1, int128 rg2, uint256 rg3) with:
                        gas gas_remaining wei
                       args 2, 1, s
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
                _1847 = mem[64]
                mem[mem[64]] = 4
                mem[64] = mem[64] + 160
                require 0 < mem[_1847]
                mem[_1847 + 32] = 0x8d11ec38a3eb5e956b052f67da8bdc9bef8abf
                require 1 < mem[_1847]
                mem[_1847 + 64] = 0x5cc61a78f164885776aa610fb0fe1257df78e59b
                require 2 < mem[_1847]
                mem[_1847 + 96] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c
                require 3 < mem[_1847]
                mem[_1847 + 128] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                mem[_1847 + 160] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_1847 + 164] = s
                mem[_1847 + 196] = 64
                mem[_1847 + 228] = mem[_1847]
                u = 0
                while u < 32 * mem[_1847]:
                    mem[u + _1847 + 260] = mem[u + _1847 + 32]
                    u = u + 32
                    continue 
                require ext_code.size(0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52)
                staticcall 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52.getAmountsOut(uint256 rg1, address[] rg2) with:
                        gas gas_remaining wei
                       args s, 64, mem[_1847 + 228 len (32 * mem[_1847]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_1847 + 160 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _1847 + ceil32(return_data.size) + 160
                require return_data.size >= 32
                _5671 = mem[_1847 + 160 len 4], Mask(224, 32, s) >> 32
                require mem[_1847 + 160 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                require mem[_1847 + 160 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                require mem[_1847 + mem[_1847 + 160 len 4], Mask(224, 32, s) >> 32 + 160] <= 4294967296 and mem[_1847 + 160 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_1847 + mem[_1847 + 160 len 4], Mask(224, 32, s) >> 32 + 160]) + 32 <= return_data.size
                mem[_1847 + ceil32(return_data.size) + 160] = mem[_1847 + mem[_1847 + 160 len 4], Mask(224, 32, s) >> 32 + 160]
                _6027 = mem[_1847 + _5671 + 160]
                s = 0
                while s < 32 * _6027:
                    mem[s + _1847 + ceil32(return_data.size) + 192] = mem[s + _1847 + _5671 + 192]
                    s = s + 32
                    continue 
                mem[64] = (32 * _6027) + _1847 + ceil32(return_data.size) + 192
                require mem[_1847 + ceil32(return_data.size) + 160] - 1 < mem[_1847 + ceil32(return_data.size) + 160]
                if mem[(32 * mem[_1847 + ceil32(return_data.size) + 160] - 1) + _1847 + ceil32(return_data.size) + 192] <= t:
                    idx = idx + 1
                    t = t
                    continue 
                idx = idx + 1
                t = mem[(32 * mem[_1847 + ceil32(return_data.size) + 160] - 1) + _1847 + ceil32(return_data.size) + 192]
                continue 
            if 3 == idx:
                _2351 = mem[64]
                mem[mem[64]] = 3
                mem[64] = mem[64] + 128
                require 0 < mem[_2351]
                mem[_2351 + 32] = 0x8d11ec38a3eb5e956b052f67da8bdc9bef8abf
                require 1 < mem[_2351]
                mem[_2351 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c
                require 2 < mem[_2351]
                mem[_2351 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                mem[_2351 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_2351 + 132] = s
                mem[_2351 + 164] = 64
                mem[_2351 + 196] = mem[_2351]
                u = 0
                while u < 32 * mem[_2351]:
                    mem[u + _2351 + 228] = mem[u + _2351 + 32]
                    u = u + 32
                    continue 
                require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c29.getAmountsOut(uint256 rg1, address[] rg2) with:
                        gas gas_remaining wei
                       args s, 64, mem[_2351 + 196 len (32 * mem[_2351]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_2351 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _2351 + ceil32(return_data.size) + 128
                require return_data.size >= 32
                _5647 = mem[_2351 + 128 len 4], Mask(224, 32, s) >> 32
                require mem[_2351 + 128 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                require mem[_2351 + 128 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                require mem[_2351 + mem[_2351 + 128 len 4], Mask(224, 32, s) >> 32 + 128] <= 4294967296 and mem[_2351 + 128 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_2351 + mem[_2351 + 128 len 4], Mask(224, 32, s) >> 32 + 128]) + 32 <= return_data.size
                mem[_2351 + ceil32(return_data.size) + 128] = mem[_2351 + mem[_2351 + 128 len 4], Mask(224, 32, s) >> 32 + 128]
                _6015 = mem[_2351 + _5647 + 128]
                s = 0
                while s < 32 * _6015:
                    mem[s + _2351 + ceil32(return_data.size) + 160] = mem[s + _2351 + _5647 + 160]
                    s = s + 32
                    continue 
                mem[64] = (32 * _6015) + _2351 + ceil32(return_data.size) + 160
                require mem[_2351 + ceil32(return_data.size) + 128] - 1 < mem[_2351 + ceil32(return_data.size) + 128]
                if mem[(32 * mem[_2351 + ceil32(return_data.size) + 128] - 1) + _2351 + ceil32(return_data.size) + 160] <= t:
                    idx = idx + 1
                    t = t
                    continue 
                idx = idx + 1
                t = mem[(32 * mem[_2351 + ceil32(return_data.size) + 128] - 1) + _2351 + ceil32(return_data.size) + 160]
                continue 
            if 4 == idx:
                if 3 == idx:
                    _2442 = mem[64]
                    mem[mem[64]] = 3
                    mem[64] = mem[64] + 128
                    require 0 < mem[_2442]
                    mem[_2442 + 32] = 0x8d11ec38a3eb5e956b052f67da8bdc9bef8abf
                    require 1 < mem[_2442]
                    mem[_2442 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c
                    require 2 < mem[_2442]
                    mem[_2442 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    mem[_2442 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_2442 + 132] = s
                    mem[_2442 + 164] = 64
                    mem[_2442 + 196] = mem[_2442]
                    u = 0
                    while u < 32 * mem[_2442]:
                        mem[u + _2442 + 228] = mem[u + _2442 + 32]
                        u = u + 32
                        continue 
                    require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                    staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c29.getAmountsOut(uint256 rg1, address[] rg2) with:
                            gas gas_remaining wei
                           args s, 64, mem[_2442 + 196 len (32 * mem[_2442]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_2442 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _2442 + ceil32(return_data.size) + 128
                    require return_data.size >= 32
                    _5655 = mem[_2442 + 128 len 4], Mask(224, 32, s) >> 32
                    require mem[_2442 + 128 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                    require mem[_2442 + 128 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                    require mem[_2442 + mem[_2442 + 128 len 4], Mask(224, 32, s) >> 32 + 128] <= 4294967296 and mem[_2442 + 128 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_2442 + mem[_2442 + 128 len 4], Mask(224, 32, s) >> 32 + 128]) + 32 <= return_data.size
                    mem[_2442 + ceil32(return_data.size) + 128] = mem[_2442 + mem[_2442 + 128 len 4], Mask(224, 32, s) >> 32 + 128]
                    _6019 = mem[_2442 + _5655 + 128]
                    s = 0
                    while s < 32 * _6019:
                        mem[s + _2442 + ceil32(return_data.size) + 160] = mem[s + _2442 + _5655 + 160]
                        s = s + 32
                        continue 
                    mem[64] = (32 * _6019) + _2442 + ceil32(return_data.size) + 160
                    require mem[_2442 + ceil32(return_data.size) + 128] - 1 < mem[_2442 + ceil32(return_data.size) + 128]
                    if mem[(32 * mem[_2442 + ceil32(return_data.size) + 128] - 1) + _2442 + ceil32(return_data.size) + 160] <= t:
                        idx = idx + 1
                        t = t
                        continue 
                    idx = idx + 1
                    t = mem[(32 * mem[_2442 + ceil32(return_data.size) + 128] - 1) + _2442 + ceil32(return_data.size) + 160]
                    continue 
                if 4 == idx:
                    _2556 = mem[64]
                    mem[mem[64]] = 3
                    mem[64] = mem[64] + 128
                    require 0 < mem[_2556]
                    mem[_2556 + 32] = 0x8d11ec38a3eb5e956b052f67da8bdc9bef8abf
                    require 1 < mem[_2556]
                    mem[_2556 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c
                    require 2 < mem[_2556]
                    mem[_2556 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    mem[_2556 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_2556 + 132] = s
                    mem[_2556 + 164] = 64
                    mem[_2556 + 196] = mem[_2556]
                    u = 0
                    while u < 32 * mem[_2556]:
                        mem[u + _2556 + 228] = mem[u + _2556 + 32]
                        u = u + 32
                        continue 
                    require ext_code.size(0x7b17021fcb7bc888641dc3bedfed3734fcaf2c87)
                    staticcall 0x7b17021fcb7bc888641dc3bedfed3734fcaf2c87.getAmountsOut(uint256 rg1, address[] rg2) with:
                            gas gas_remaining wei
                           args s, 64, mem[_2556 + 196 len (32 * mem[_2556]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_2556 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _2556 + ceil32(return_data.size) + 128
                    require return_data.size >= 32
                    _5653 = mem[_2556 + 128 len 4], Mask(224, 32, s) >> 32
                    require mem[_2556 + 128 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                    require mem[_2556 + 128 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                    require mem[_2556 + mem[_2556 + 128 len 4], Mask(224, 32, s) >> 32 + 128] <= 4294967296 and mem[_2556 + 128 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_2556 + mem[_2556 + 128 len 4], Mask(224, 32, s) >> 32 + 128]) + 32 <= return_data.size
                    mem[_2556 + ceil32(return_data.size) + 128] = mem[_2556 + mem[_2556 + 128 len 4], Mask(224, 32, s) >> 32 + 128]
                    _6018 = mem[_2556 + _5653 + 128]
                    s = 0
                    while s < 32 * _6018:
                        mem[s + _2556 + ceil32(return_data.size) + 160] = mem[s + _2556 + _5653 + 160]
                        s = s + 32
                        continue 
                    mem[64] = (32 * _6018) + _2556 + ceil32(return_data.size) + 160
                    require mem[_2556 + ceil32(return_data.size) + 128] - 1 < mem[_2556 + ceil32(return_data.size) + 128]
                    if mem[(32 * mem[_2556 + ceil32(return_data.size) + 128] - 1) + _2556 + ceil32(return_data.size) + 160] <= t:
                        idx = idx + 1
                        t = t
                        continue 
                    idx = idx + 1
                    t = mem[(32 * mem[_2556 + ceil32(return_data.size) + 128] - 1) + _2556 + ceil32(return_data.size) + 160]
                    continue 
                if idx != 5:
                    _2554 = mem[64]
                    mem[mem[64]] = 3
                    mem[64] = mem[64] + 128
                    require 0 < mem[_2554]
                    mem[_2554 + 32] = 0x8d11ec38a3eb5e956b052f67da8bdc9bef8abf
                    require 1 < mem[_2554]
                    mem[_2554 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c
                    require 2 < mem[_2554]
                    mem[_2554 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    mem[_2554 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_2554 + 132] = s
                    mem[_2554 + 164] = 64
                    mem[_2554 + 196] = mem[_2554]
                    u = 0
                    while u < 32 * mem[_2554]:
                        mem[u + _2554 + 228] = mem[u + _2554 + 32]
                        u = u + 32
                        continue 
                    require ext_code.size(0)
                    staticcall 0x0.getAmountsOut(uint256 rg1, address[] rg2) with:
                            gas gas_remaining wei
                           args s, 64, mem[_2554 + 196 len (32 * mem[_2554]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_2554 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _2554 + ceil32(return_data.size) + 128
                    require return_data.size >= 32
                    _5649 = mem[_2554 + 128 len 4], Mask(224, 32, s) >> 32
                    require mem[_2554 + 128 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                    require mem[_2554 + 128 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                    require mem[_2554 + mem[_2554 + 128 len 4], Mask(224, 32, s) >> 32 + 128] <= 4294967296 and mem[_2554 + 128 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_2554 + mem[_2554 + 128 len 4], Mask(224, 32, s) >> 32 + 128]) + 32 <= return_data.size
                    mem[_2554 + ceil32(return_data.size) + 128] = mem[_2554 + mem[_2554 + 128 len 4], Mask(224, 32, s) >> 32 + 128]
                    _6016 = mem[_2554 + _5649 + 128]
                    s = 0
                    while s < 32 * _6016:
                        mem[s + _2554 + ceil32(return_data.size) + 160] = mem[s + _2554 + _5649 + 160]
                        s = s + 32
                        continue 
                    mem[64] = (32 * _6016) + _2554 + ceil32(return_data.size) + 160
                    require mem[_2554 + ceil32(return_data.size) + 128] - 1 < mem[_2554 + ceil32(return_data.size) + 128]
                    if mem[(32 * mem[_2554 + ceil32(return_data.size) + 128] - 1) + _2554 + ceil32(return_data.size) + 160] <= t:
                        idx = idx + 1
                        t = t
                        continue 
                    idx = idx + 1
                    t = mem[(32 * mem[_2554 + ceil32(return_data.size) + 128] - 1) + _2554 + ceil32(return_data.size) + 160]
                    continue 
                _2677 = mem[64]
                mem[mem[64]] = 3
                mem[64] = mem[64] + 128
                require 0 < mem[_2677]
                mem[_2677 + 32] = 0x8d11ec38a3eb5e956b052f67da8bdc9bef8abf
                require 1 < mem[_2677]
                mem[_2677 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c
                require 2 < mem[_2677]
                mem[_2677 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                mem[_2677 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_2677 + 132] = s
                mem[_2677 + 164] = 64
                mem[_2677 + 196] = mem[_2677]
                u = 0
                while u < 32 * mem[_2677]:
                    mem[u + _2677 + 228] = mem[u + _2677 + 32]
                    u = u + 32
                    continue 
                require ext_code.size(0x53c153a0df7e050bbefbb70ee9632061f12795fb)
                staticcall 0x53c153a0df7e050bbefbb70ee9632061f12795fb.getAmountsOut(uint256 rg1, address[] rg2) with:
                        gas gas_remaining wei
                       args s, 64, mem[_2677 + 196 len (32 * mem[_2677]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_2677 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _2677 + ceil32(return_data.size) + 128
                require return_data.size >= 32
                _5651 = mem[_2677 + 128 len 4], Mask(224, 32, s) >> 32
                require mem[_2677 + 128 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                require mem[_2677 + 128 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                require mem[_2677 + mem[_2677 + 128 len 4], Mask(224, 32, s) >> 32 + 128] <= 4294967296 and mem[_2677 + 128 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_2677 + mem[_2677 + 128 len 4], Mask(224, 32, s) >> 32 + 128]) + 32 <= return_data.size
                mem[_2677 + ceil32(return_data.size) + 128] = mem[_2677 + mem[_2677 + 128 len 4], Mask(224, 32, s) >> 32 + 128]
                _6017 = mem[_2677 + _5651 + 128]
                s = 0
                while s < 32 * _6017:
                    mem[s + _2677 + ceil32(return_data.size) + 160] = mem[s + _2677 + _5651 + 160]
                    s = s + 32
                    continue 
                mem[64] = (32 * _6017) + _2677 + ceil32(return_data.size) + 160
                require mem[_2677 + ceil32(return_data.size) + 128] - 1 < mem[_2677 + ceil32(return_data.size) + 128]
                if mem[(32 * mem[_2677 + ceil32(return_data.size) + 128] - 1) + _2677 + ceil32(return_data.size) + 160] <= t:
                    idx = idx + 1
                    t = t
                    continue 
                idx = idx + 1
                t = mem[(32 * mem[_2677 + ceil32(return_data.size) + 128] - 1) + _2677 + ceil32(return_data.size) + 160]
                continue 
            if 5 == idx:
                if 3 == idx:
                    _2564 = mem[64]
                    mem[mem[64]] = 3
                    mem[64] = mem[64] + 128
                    require 0 < mem[_2564]
                    mem[_2564 + 32] = 0x8d11ec38a3eb5e956b052f67da8bdc9bef8abf
                    require 1 < mem[_2564]
                    mem[_2564 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c
                    require 2 < mem[_2564]
                    mem[_2564 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    mem[_2564 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_2564 + 132] = s
                    mem[_2564 + 164] = 64
                    mem[_2564 + 196] = mem[_2564]
                    u = 0
                    while u < 32 * mem[_2564]:
                        mem[u + _2564 + 228] = mem[u + _2564 + 32]
                        u = u + 32
                        continue 
                    require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                    staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c29.getAmountsOut(uint256 rg1, address[] rg2) with:
                            gas gas_remaining wei
                           args s, 64, mem[_2564 + 196 len (32 * mem[_2564]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_2564 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _2564 + ceil32(return_data.size) + 128
                    require return_data.size >= 32
                    _5669 = mem[_2564 + 128 len 4], Mask(224, 32, s) >> 32
                    require mem[_2564 + 128 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                    require mem[_2564 + 128 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                    require mem[_2564 + mem[_2564 + 128 len 4], Mask(224, 32, s) >> 32 + 128] <= 4294967296 and mem[_2564 + 128 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_2564 + mem[_2564 + 128 len 4], Mask(224, 32, s) >> 32 + 128]) + 32 <= return_data.size
                    mem[_2564 + ceil32(return_data.size) + 128] = mem[_2564 + mem[_2564 + 128 len 4], Mask(224, 32, s) >> 32 + 128]
                    _6026 = mem[_2564 + _5669 + 128]
                    s = 0
                    while s < 32 * _6026:
                        mem[s + _2564 + ceil32(return_data.size) + 160] = mem[s + _2564 + _5669 + 160]
                        s = s + 32
                        continue 
                    mem[64] = (32 * _6026) + _2564 + ceil32(return_data.size) + 160
                    require mem[_2564 + ceil32(return_data.size) + 128] - 1 < mem[_2564 + ceil32(return_data.size) + 128]
                    if mem[(32 * mem[_2564 + ceil32(return_data.size) + 128] - 1) + _2564 + ceil32(return_data.size) + 160] <= t:
                        idx = idx + 1
                        t = t
                        continue 
                    idx = idx + 1
                    t = mem[(32 * mem[_2564 + ceil32(return_data.size) + 128] - 1) + _2564 + ceil32(return_data.size) + 160]
                    continue 
                if 4 == idx:
                    _2690 = mem[64]
                    mem[mem[64]] = 3
                    mem[64] = mem[64] + 128
                    require 0 < mem[_2690]
                    mem[_2690 + 32] = 0x8d11ec38a3eb5e956b052f67da8bdc9bef8abf
                    require 1 < mem[_2690]
                    mem[_2690 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c
                    require 2 < mem[_2690]
                    mem[_2690 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    mem[_2690 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_2690 + 132] = s
                    mem[_2690 + 164] = 64
                    mem[_2690 + 196] = mem[_2690]
                    u = 0
                    while u < 32 * mem[_2690]:
                        mem[u + _2690 + 228] = mem[u + _2690 + 32]
                        u = u + 32
                        continue 
                    require ext_code.size(0x7b17021fcb7bc888641dc3bedfed3734fcaf2c87)
                    staticcall 0x7b17021fcb7bc888641dc3bedfed3734fcaf2c87.getAmountsOut(uint256 rg1, address[] rg2) with:
                            gas gas_remaining wei
                           args s, 64, mem[_2690 + 196 len (32 * mem[_2690]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_2690 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _2690 + ceil32(return_data.size) + 128
                    require return_data.size >= 32
                    _5667 = mem[_2690 + 128 len 4], Mask(224, 32, s) >> 32
                    require mem[_2690 + 128 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                    require mem[_2690 + 128 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                    require mem[_2690 + mem[_2690 + 128 len 4], Mask(224, 32, s) >> 32 + 128] <= 4294967296 and mem[_2690 + 128 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_2690 + mem[_2690 + 128 len 4], Mask(224, 32, s) >> 32 + 128]) + 32 <= return_data.size
                    mem[_2690 + ceil32(return_data.size) + 128] = mem[_2690 + mem[_2690 + 128 len 4], Mask(224, 32, s) >> 32 + 128]
                    _6025 = mem[_2690 + _5667 + 128]
                    s = 0
                    while s < 32 * _6025:
                        mem[s + _2690 + ceil32(return_data.size) + 160] = mem[s + _2690 + _5667 + 160]
                        s = s + 32
                        continue 
                    mem[64] = (32 * _6025) + _2690 + ceil32(return_data.size) + 160
                    require mem[_2690 + ceil32(return_data.size) + 128] - 1 < mem[_2690 + ceil32(return_data.size) + 128]
                    if mem[(32 * mem[_2690 + ceil32(return_data.size) + 128] - 1) + _2690 + ceil32(return_data.size) + 160] <= t:
                        idx = idx + 1
                        t = t
                        continue 
                    idx = idx + 1
                    t = mem[(32 * mem[_2690 + ceil32(return_data.size) + 128] - 1) + _2690 + ceil32(return_data.size) + 160]
                    continue 
                if idx != 5:
                    _2688 = mem[64]
                    mem[mem[64]] = 3
                    mem[64] = mem[64] + 128
                    require 0 < mem[_2688]
                    mem[_2688 + 32] = 0x8d11ec38a3eb5e956b052f67da8bdc9bef8abf
                    require 1 < mem[_2688]
                    mem[_2688 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c
                    require 2 < mem[_2688]
                    mem[_2688 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    mem[_2688 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_2688 + 132] = s
                    mem[_2688 + 164] = 64
                    mem[_2688 + 196] = mem[_2688]
                    u = 0
                    while u < 32 * mem[_2688]:
                        mem[u + _2688 + 228] = mem[u + _2688 + 32]
                        u = u + 32
                        continue 
                    require ext_code.size(0)
                    staticcall 0x0.getAmountsOut(uint256 rg1, address[] rg2) with:
                            gas gas_remaining wei
                           args s, 64, mem[_2688 + 196 len (32 * mem[_2688]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_2688 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _2688 + ceil32(return_data.size) + 128
                    require return_data.size >= 32
                    _5663 = mem[_2688 + 128 len 4], Mask(224, 32, s) >> 32
                    require mem[_2688 + 128 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                    require mem[_2688 + 128 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                    require mem[_2688 + mem[_2688 + 128 len 4], Mask(224, 32, s) >> 32 + 128] <= 4294967296 and mem[_2688 + 128 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_2688 + mem[_2688 + 128 len 4], Mask(224, 32, s) >> 32 + 128]) + 32 <= return_data.size
                    mem[_2688 + ceil32(return_data.size) + 128] = mem[_2688 + mem[_2688 + 128 len 4], Mask(224, 32, s) >> 32 + 128]
                    _6023 = mem[_2688 + _5663 + 128]
                    s = 0
                    while s < 32 * _6023:
                        mem[s + _2688 + ceil32(return_data.size) + 160] = mem[s + _2688 + _5663 + 160]
                        s = s + 32
                        continue 
                    mem[64] = (32 * _6023) + _2688 + ceil32(return_data.size) + 160
                    require mem[_2688 + ceil32(return_data.size) + 128] - 1 < mem[_2688 + ceil32(return_data.size) + 128]
                    if mem[(32 * mem[_2688 + ceil32(return_data.size) + 128] - 1) + _2688 + ceil32(return_data.size) + 160] <= t:
                        idx = idx + 1
                        t = t
                        continue 
                    idx = idx + 1
                    t = mem[(32 * mem[_2688 + ceil32(return_data.size) + 128] - 1) + _2688 + ceil32(return_data.size) + 160]
                    continue 
                _2938 = mem[64]
                mem[mem[64]] = 3
                mem[64] = mem[64] + 128
                require 0 < mem[_2938]
                mem[_2938 + 32] = 0x8d11ec38a3eb5e956b052f67da8bdc9bef8abf
                require 1 < mem[_2938]
                mem[_2938 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c
                require 2 < mem[_2938]
                mem[_2938 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                mem[_2938 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_2938 + 132] = s
                mem[_2938 + 164] = 64
                mem[_2938 + 196] = mem[_2938]
                u = 0
                while u < 32 * mem[_2938]:
                    mem[u + _2938 + 228] = mem[u + _2938 + 32]
                    u = u + 32
                    continue 
                require ext_code.size(0x53c153a0df7e050bbefbb70ee9632061f12795fb)
                staticcall 0x53c153a0df7e050bbefbb70ee9632061f12795fb.getAmountsOut(uint256 rg1, address[] rg2) with:
                        gas gas_remaining wei
                       args s, 64, mem[_2938 + 196 len (32 * mem[_2938]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_2938 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _2938 + ceil32(return_data.size) + 128
                require return_data.size >= 32
                _5665 = mem[_2938 + 128 len 4], Mask(224, 32, s) >> 32
                require mem[_2938 + 128 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                require mem[_2938 + 128 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                require mem[_2938 + mem[_2938 + 128 len 4], Mask(224, 32, s) >> 32 + 128] <= 4294967296 and mem[_2938 + 128 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_2938 + mem[_2938 + 128 len 4], Mask(224, 32, s) >> 32 + 128]) + 32 <= return_data.size
                mem[_2938 + ceil32(return_data.size) + 128] = mem[_2938 + mem[_2938 + 128 len 4], Mask(224, 32, s) >> 32 + 128]
                _6024 = mem[_2938 + _5665 + 128]
                s = 0
                while s < 32 * _6024:
                    mem[s + _2938 + ceil32(return_data.size) + 160] = mem[s + _2938 + _5665 + 160]
                    s = s + 32
                    continue 
                mem[64] = (32 * _6024) + _2938 + ceil32(return_data.size) + 160
                require mem[_2938 + ceil32(return_data.size) + 128] - 1 < mem[_2938 + ceil32(return_data.size) + 128]
                if mem[(32 * mem[_2938 + ceil32(return_data.size) + 128] - 1) + _2938 + ceil32(return_data.size) + 160] <= t:
                    idx = idx + 1
                    t = t
                    continue 
                idx = idx + 1
                t = mem[(32 * mem[_2938 + ceil32(return_data.size) + 128] - 1) + _2938 + ceil32(return_data.size) + 160]
                continue 
            if 6 == idx:
                _2444 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                require 0 < mem[_2444]
                mem[_2444 + 32] = 0x8d11ec38a3eb5e956b052f67da8bdc9bef8abf
                require 1 < mem[_2444]
                mem[_2444 + 64] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                mem[_2444 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_2444 + 100] = s
                mem[_2444 + 132] = 64
                mem[_2444 + 164] = mem[_2444]
                u = 0
                while u < 32 * mem[_2444]:
                    mem[u + _2444 + 196] = mem[u + _2444 + 32]
                    u = u + 32
                    continue 
                require ext_code.size(0x53c153a0df7e050bbefbb70ee9632061f12795fb)
                staticcall 0x53c153a0df7e050bbefbb70ee9632061f12795fb.getAmountsOut(uint256 rg1, address[] rg2) with:
                        gas gas_remaining wei
                       args s, 64, mem[_2444 + 164 len (32 * mem[_2444]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_2444 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _2444 + ceil32(return_data.size) + 96
                require return_data.size >= 32
                _5661 = mem[_2444 + 96 len 4], Mask(224, 32, s) >> 32
                require mem[_2444 + 96 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                require mem[_2444 + 96 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                require mem[_2444 + mem[_2444 + 96 len 4], Mask(224, 32, s) >> 32 + 96] <= 4294967296 and mem[_2444 + 96 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_2444 + mem[_2444 + 96 len 4], Mask(224, 32, s) >> 32 + 96]) + 32 <= return_data.size
                mem[_2444 + ceil32(return_data.size) + 96] = mem[_2444 + mem[_2444 + 96 len 4], Mask(224, 32, s) >> 32 + 96]
                _6022 = mem[_2444 + _5661 + 96]
                s = 0
                while s < 32 * _6022:
                    mem[s + _2444 + ceil32(return_data.size) + 128] = mem[s + _2444 + _5661 + 128]
                    s = s + 32
                    continue 
                mem[64] = (32 * _6022) + _2444 + ceil32(return_data.size) + 128
                require mem[_2444 + ceil32(return_data.size) + 96] - 1 < mem[_2444 + ceil32(return_data.size) + 96]
                if mem[(32 * mem[_2444 + ceil32(return_data.size) + 96] - 1) + _2444 + ceil32(return_data.size) + 128] <= t:
                    idx = idx + 1
                    t = t
                    continue 
                idx = idx + 1
                t = mem[(32 * mem[_2444 + ceil32(return_data.size) + 96] - 1) + _2444 + ceil32(return_data.size) + 128]
                continue 
            if idx != 7:
                if s <= t:
                    idx = idx + 1
                    t = t
                    continue 
                idx = idx + 1
                t = s
                continue 
            _2561 = mem[0]
            _2683 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            require 0 < mem[_2683]
            mem[_2683 + 32] = 0x8d11ec38a3eb5e956b052f67da8bdc9bef8abf
            require 1 < mem[_2683]
            mem[_2683 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c
            mem[_2683 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[_2683 + 100] = s
            mem[_2683 + 132] = 64
            mem[_2683 + 164] = mem[_2683]
            u = 0
            while u < 32 * mem[_2683]:
                mem[u + _2683 + 196] = mem[u + _2683 + 32]
                u = u + 32
                continue 
            require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
            staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c29.getAmountsOut(uint256 rg1, address[] rg2) with:
                    gas gas_remaining wei
                   args s, 64, mem[_2683 + 164 len (32 * mem[_2683]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[_2683 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = _2683 + ceil32(return_data.size) + 96
            require return_data.size >= 32
            _5657 = mem[_2683 + 96 len 4], Mask(224, 32, s) >> 32
            require mem[_2683 + 96 len 4], Mask(224, 32, s) >> 32 <= 4294967296
            require mem[_2683 + 96 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
            require mem[_2683 + mem[_2683 + 96 len 4], Mask(224, 32, s) >> 32 + 96] <= 4294967296 and mem[_2683 + 96 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_2683 + mem[_2683 + 96 len 4], Mask(224, 32, s) >> 32 + 96]) + 32 <= return_data.size
            mem[_2683 + ceil32(return_data.size) + 96] = mem[_2683 + mem[_2683 + 96 len 4], Mask(224, 32, s) >> 32 + 96]
            _6020 = mem[_2683 + _5657 + 96]
            s = 0
            while s < 32 * _6020:
                mem[s + _2683 + ceil32(return_data.size) + 128] = mem[s + _2683 + _5657 + 128]
                s = s + 32
                continue 
            mem[64] = (32 * _6020) + _2683 + ceil32(return_data.size) + 128
            require mem[_2683 + ceil32(return_data.size) + 96] - 1 < mem[_2683 + ceil32(return_data.size) + 96]
            _7348 = mem[(32 * mem[_2683 + ceil32(return_data.size) + 96] - 1) + _2683 + ceil32(return_data.size) + 128]
            mem[(32 * _6020) + _2683 + ceil32(return_data.size) + 128] = 2
            mem[0] = _2561
            mem[(32 * _6020) + _2683 + ceil32(return_data.size) + 160] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c
            mem[(32 * _6020) + _2683 + ceil32(return_data.size) + 192] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
            mem[(32 * _6020) + _2683 + ceil32(return_data.size) + 224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[(32 * _6020) + _2683 + ceil32(return_data.size) + 228] = _7348
            mem[(32 * _6020) + _2683 + ceil32(return_data.size) + 260] = 64
            mem[(32 * _6020) + _2683 + ceil32(return_data.size) + 292] = 2
            s = 0
            while s < 64:
                mem[s + (32 * _6020) + _2683 + ceil32(return_data.size) + 324] = mem[s + (32 * _6020) + _2683 + ceil32(return_data.size) + 160]
                s = s + 32
                continue 
            require ext_code.size(0x1b02da8cb0d097eb8d57a175b88c7d8b47997506)
            staticcall 0x1b02da8cb0d097eb8d57a175b88c7d8b47997506.getAmountsOut(uint256 rg1, address[] rg2) with:
                    gas gas_remaining wei
                   args _7348, Array(len=2, data=mem[(32 * _6020) + _2683 + ceil32(return_data.size) + 324 len 64])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _6020) + _2683 + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * _6020) + _2683 + (2 * ceil32(return_data.size)) + 224
            require return_data.size >= 32
            _7911 = mem[(32 * _6020) + _2683 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _7348) >> 32
            require mem[(32 * _6020) + _2683 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _7348) >> 32 <= 4294967296
            require mem[(32 * _6020) + _2683 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _7348) >> 32 + 32 <= return_data.size
            require mem[(32 * _6020) + _2683 + ceil32(return_data.size) + mem[(32 * _6020) + _2683 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _7348) >> 32 + 224] <= 4294967296 and mem[(32 * _6020) + _2683 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _7348) >> 32 + (32 * mem[(32 * _6020) + _2683 + ceil32(return_data.size) + mem[(32 * _6020) + _2683 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _7348) >> 32 + 224]) + 32 <= return_data.size
            mem[(32 * _6020) + _2683 + (2 * ceil32(return_data.size)) + 224] = mem[(32 * _6020) + _2683 + ceil32(return_data.size) + mem[(32 * _6020) + _2683 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _7348) >> 32 + 224]
            _7959 = mem[(32 * _6020) + _2683 + ceil32(return_data.size) + _7911 + 224]
            s = 0
            while s < 32 * _7959:
                mem[s + (32 * _6020) + _2683 + (2 * ceil32(return_data.size)) + 256] = mem[s + (32 * _6020) + _2683 + ceil32(return_data.size) + _7911 + 256]
                s = s + 32
                continue 
            mem[64] = (32 * _7959) + (32 * _6020) + _2683 + (2 * ceil32(return_data.size)) + 256
            require mem[(32 * _6020) + _2683 + (2 * ceil32(return_data.size)) + 224] - 1 < mem[(32 * _6020) + _2683 + (2 * ceil32(return_data.size)) + 224]
            if mem[(32 * mem[(32 * _6020) + _2683 + (2 * ceil32(return_data.size)) + 224] - 1) + (32 * _6020) + _2683 + (2 * ceil32(return_data.size)) + 256] <= t:
                idx = idx + 1
                t = t
                continue 
            idx = idx + 1
            t = mem[(32 * mem[(32 * _6020) + _2683 + (2 * ceil32(return_data.size)) + 224] - 1) + (32 * _6020) + _2683 + (2 * ceil32(return_data.size)) + 256]
            continue 
    if maxBatch:
        if 10^6 * maxBatch / maxBatch != 10^6:
            revert with 0, 32, 33, 0x3e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
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
        while idx < 8:
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
                _136 = mem[64]
                mem[mem[64]] = 4
                mem[64] = mem[64] + 160
                require 0 < mem[_136]
                mem[_136 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                require 1 < mem[_136]
                mem[_136 + 64] = 0x5cc61a78f164885776aa610fb0fe1257df78e59b
                require 2 < mem[_136]
                mem[_136 + 96] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c
                require 3 < mem[_136]
                mem[_136 + 128] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                mem[_136 + 160] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_136 + 164] = 0
                mem[_136 + 196] = 64
                mem[_136 + 228] = mem[_136]
                t = 0
                while t < 32 * mem[_136]:
                    mem[t + _136 + 260] = mem[t + _136 + 32]
                    t = t + 32
                    continue 
                require ext_code.size(0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52)
                staticcall 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52.getAmountsOut(uint256 rg1, address[] rg2) with:
                        gas gas_remaining wei
                       args 0, 64, mem[_136 + 228 len (32 * mem[_136]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_136 + 160 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _136 + ceil32(return_data.size) + 160
                require return_data.size >= 32
                _1812 = mem[_136 + 160 len 4], 0
                require mem[_136 + 160 len 4], 0 <= 4294967296
                require mem[_136 + 160 len 4], 0 + 32 <= return_data.size
                require mem[_136 + mem[_136 + 160 len 4], 0 + 160] <= 4294967296 and mem[_136 + 160 len 4], 0 + (32 * mem[_136 + mem[_136 + 160 len 4], 0 + 160]) + 32 <= return_data.size
                mem[_136 + ceil32(return_data.size) + 160] = mem[_136 + mem[_136 + 160 len 4], 0 + 160]
                _2084 = mem[_136 + _1812 + 160]
                t = 0
                while t < 32 * _2084:
                    mem[t + _136 + ceil32(return_data.size) + 192] = mem[t + _136 + _1812 + 192]
                    t = t + 32
                    continue 
                mem[64] = (32 * _2084) + _136 + ceil32(return_data.size) + 192
                require mem[_136 + ceil32(return_data.size) + 160] - 1 < mem[_136 + ceil32(return_data.size) + 160]
                if mem[(32 * mem[_136 + ceil32(return_data.size) + 160] - 1) + _136 + ceil32(return_data.size) + 192] <= s:
                    idx = idx + 1
                    s = s
                    continue 
                idx = idx + 1
                s = mem[(32 * mem[_136 + ceil32(return_data.size) + 160] - 1) + _136 + ceil32(return_data.size) + 192]
                continue 
            if 3 == idx:
                _260 = mem[64]
                mem[mem[64]] = 3
                mem[64] = mem[64] + 128
                require 0 < mem[_260]
                mem[_260 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                require 1 < mem[_260]
                mem[_260 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c
                require 2 < mem[_260]
                mem[_260 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                mem[_260 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_260 + 132] = 0
                mem[_260 + 164] = 64
                mem[_260 + 196] = mem[_260]
                t = 0
                while t < 32 * mem[_260]:
                    mem[t + _260 + 228] = mem[t + _260 + 32]
                    t = t + 32
                    continue 
                require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c29.getAmountsOut(uint256 rg1, address[] rg2) with:
                        gas gas_remaining wei
                       args 0, 64, mem[_260 + 196 len (32 * mem[_260]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_260 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _260 + ceil32(return_data.size) + 128
                require return_data.size >= 32
                _1788 = mem[_260 + 128 len 4], 0
                require mem[_260 + 128 len 4], 0 <= 4294967296
                require mem[_260 + 128 len 4], 0 + 32 <= return_data.size
                require mem[_260 + mem[_260 + 128 len 4], 0 + 128] <= 4294967296 and mem[_260 + 128 len 4], 0 + (32 * mem[_260 + mem[_260 + 128 len 4], 0 + 128]) + 32 <= return_data.size
                mem[_260 + ceil32(return_data.size) + 128] = mem[_260 + mem[_260 + 128 len 4], 0 + 128]
                _2072 = mem[_260 + _1788 + 128]
                t = 0
                while t < 32 * _2072:
                    mem[t + _260 + ceil32(return_data.size) + 160] = mem[t + _260 + _1788 + 160]
                    t = t + 32
                    continue 
                mem[64] = (32 * _2072) + _260 + ceil32(return_data.size) + 160
                require mem[_260 + ceil32(return_data.size) + 128] - 1 < mem[_260 + ceil32(return_data.size) + 128]
                if mem[(32 * mem[_260 + ceil32(return_data.size) + 128] - 1) + _260 + ceil32(return_data.size) + 160] <= s:
                    idx = idx + 1
                    s = s
                    continue 
                idx = idx + 1
                s = mem[(32 * mem[_260 + ceil32(return_data.size) + 128] - 1) + _260 + ceil32(return_data.size) + 160]
                continue 
            if 4 == idx:
                if 3 == idx:
                    _313 = mem[64]
                    mem[mem[64]] = 3
                    mem[64] = mem[64] + 128
                    require 0 < mem[_313]
                    mem[_313 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    require 1 < mem[_313]
                    mem[_313 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c
                    require 2 < mem[_313]
                    mem[_313 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    mem[_313 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_313 + 132] = 0
                    mem[_313 + 164] = 64
                    mem[_313 + 196] = mem[_313]
                    t = 0
                    while t < 32 * mem[_313]:
                        mem[t + _313 + 228] = mem[t + _313 + 32]
                        t = t + 32
                        continue 
                    require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                    staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c29.getAmountsOut(uint256 rg1, address[] rg2) with:
                            gas gas_remaining wei
                           args 0, 64, mem[_313 + 196 len (32 * mem[_313]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_313 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _313 + ceil32(return_data.size) + 128
                    require return_data.size >= 32
                    _1796 = mem[_313 + 128 len 4], 0
                    require mem[_313 + 128 len 4], 0 <= 4294967296
                    require mem[_313 + 128 len 4], 0 + 32 <= return_data.size
                    require mem[_313 + mem[_313 + 128 len 4], 0 + 128] <= 4294967296 and mem[_313 + 128 len 4], 0 + (32 * mem[_313 + mem[_313 + 128 len 4], 0 + 128]) + 32 <= return_data.size
                    mem[_313 + ceil32(return_data.size) + 128] = mem[_313 + mem[_313 + 128 len 4], 0 + 128]
                    _2076 = mem[_313 + _1796 + 128]
                    t = 0
                    while t < 32 * _2076:
                        mem[t + _313 + ceil32(return_data.size) + 160] = mem[t + _313 + _1796 + 160]
                        t = t + 32
                        continue 
                    mem[64] = (32 * _2076) + _313 + ceil32(return_data.size) + 160
                    require mem[_313 + ceil32(return_data.size) + 128] - 1 < mem[_313 + ceil32(return_data.size) + 128]
                    if mem[(32 * mem[_313 + ceil32(return_data.size) + 128] - 1) + _313 + ceil32(return_data.size) + 160] <= s:
                        idx = idx + 1
                        s = s
                        continue 
                    idx = idx + 1
                    s = mem[(32 * mem[_313 + ceil32(return_data.size) + 128] - 1) + _313 + ceil32(return_data.size) + 160]
                    continue 
                if 4 == idx:
                    _375 = mem[64]
                    mem[mem[64]] = 3
                    mem[64] = mem[64] + 128
                    require 0 < mem[_375]
                    mem[_375 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    require 1 < mem[_375]
                    mem[_375 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c
                    require 2 < mem[_375]
                    mem[_375 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    mem[_375 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_375 + 132] = 0
                    mem[_375 + 164] = 64
                    mem[_375 + 196] = mem[_375]
                    t = 0
                    while t < 32 * mem[_375]:
                        mem[t + _375 + 228] = mem[t + _375 + 32]
                        t = t + 32
                        continue 
                    require ext_code.size(0x7b17021fcb7bc888641dc3bedfed3734fcaf2c87)
                    staticcall 0x7b17021fcb7bc888641dc3bedfed3734fcaf2c87.getAmountsOut(uint256 rg1, address[] rg2) with:
                            gas gas_remaining wei
                           args 0, 64, mem[_375 + 196 len (32 * mem[_375]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_375 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _375 + ceil32(return_data.size) + 128
                    require return_data.size >= 32
                    _1794 = mem[_375 + 128 len 4], 0
                    require mem[_375 + 128 len 4], 0 <= 4294967296
                    require mem[_375 + 128 len 4], 0 + 32 <= return_data.size
                    require mem[_375 + mem[_375 + 128 len 4], 0 + 128] <= 4294967296 and mem[_375 + 128 len 4], 0 + (32 * mem[_375 + mem[_375 + 128 len 4], 0 + 128]) + 32 <= return_data.size
                    mem[_375 + ceil32(return_data.size) + 128] = mem[_375 + mem[_375 + 128 len 4], 0 + 128]
                    _2075 = mem[_375 + _1794 + 128]
                    t = 0
                    while t < 32 * _2075:
                        mem[t + _375 + ceil32(return_data.size) + 160] = mem[t + _375 + _1794 + 160]
                        t = t + 32
                        continue 
                    mem[64] = (32 * _2075) + _375 + ceil32(return_data.size) + 160
                    require mem[_375 + ceil32(return_data.size) + 128] - 1 < mem[_375 + ceil32(return_data.size) + 128]
                    if mem[(32 * mem[_375 + ceil32(return_data.size) + 128] - 1) + _375 + ceil32(return_data.size) + 160] <= s:
                        idx = idx + 1
                        s = s
                        continue 
                    idx = idx + 1
                    s = mem[(32 * mem[_375 + ceil32(return_data.size) + 128] - 1) + _375 + ceil32(return_data.size) + 160]
                    continue 
                if idx != 5:
                    _373 = mem[64]
                    mem[mem[64]] = 3
                    mem[64] = mem[64] + 128
                    require 0 < mem[_373]
                    mem[_373 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    require 1 < mem[_373]
                    mem[_373 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c
                    require 2 < mem[_373]
                    mem[_373 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    mem[_373 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_373 + 132] = 0
                    mem[_373 + 164] = 64
                    mem[_373 + 196] = mem[_373]
                    t = 0
                    while t < 32 * mem[_373]:
                        mem[t + _373 + 228] = mem[t + _373 + 32]
                        t = t + 32
                        continue 
                    require ext_code.size(0)
                    staticcall 0x0.getAmountsOut(uint256 rg1, address[] rg2) with:
                            gas gas_remaining wei
                           args 0, 64, mem[_373 + 196 len (32 * mem[_373]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_373 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _373 + ceil32(return_data.size) + 128
                    require return_data.size >= 32
                    _1790 = mem[_373 + 128 len 4], 0
                    require mem[_373 + 128 len 4], 0 <= 4294967296
                    require mem[_373 + 128 len 4], 0 + 32 <= return_data.size
                    require mem[_373 + mem[_373 + 128 len 4], 0 + 128] <= 4294967296 and mem[_373 + 128 len 4], 0 + (32 * mem[_373 + mem[_373 + 128 len 4], 0 + 128]) + 32 <= return_data.size
                    mem[_373 + ceil32(return_data.size) + 128] = mem[_373 + mem[_373 + 128 len 4], 0 + 128]
                    _2073 = mem[_373 + _1790 + 128]
                    t = 0
                    while t < 32 * _2073:
                        mem[t + _373 + ceil32(return_data.size) + 160] = mem[t + _373 + _1790 + 160]
                        t = t + 32
                        continue 
                    mem[64] = (32 * _2073) + _373 + ceil32(return_data.size) + 160
                    require mem[_373 + ceil32(return_data.size) + 128] - 1 < mem[_373 + ceil32(return_data.size) + 128]
                    if mem[(32 * mem[_373 + ceil32(return_data.size) + 128] - 1) + _373 + ceil32(return_data.size) + 160] <= s:
                        idx = idx + 1
                        s = s
                        continue 
                    idx = idx + 1
                    s = mem[(32 * mem[_373 + ceil32(return_data.size) + 128] - 1) + _373 + ceil32(return_data.size) + 160]
                    continue 
                _474 = mem[64]
                mem[mem[64]] = 3
                mem[64] = mem[64] + 128
                require 0 < mem[_474]
                mem[_474 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                require 1 < mem[_474]
                mem[_474 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c
                require 2 < mem[_474]
                mem[_474 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                mem[_474 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_474 + 132] = 0
                mem[_474 + 164] = 64
                mem[_474 + 196] = mem[_474]
                t = 0
                while t < 32 * mem[_474]:
                    mem[t + _474 + 228] = mem[t + _474 + 32]
                    t = t + 32
                    continue 
                require ext_code.size(0x53c153a0df7e050bbefbb70ee9632061f12795fb)
                staticcall 0x53c153a0df7e050bbefbb70ee9632061f12795fb.getAmountsOut(uint256 rg1, address[] rg2) with:
                        gas gas_remaining wei
                       args 0, 64, mem[_474 + 196 len (32 * mem[_474]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_474 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _474 + ceil32(return_data.size) + 128
                require return_data.size >= 32
                _1792 = mem[_474 + 128 len 4], 0
                require mem[_474 + 128 len 4], 0 <= 4294967296
                require mem[_474 + 128 len 4], 0 + 32 <= return_data.size
                require mem[_474 + mem[_474 + 128 len 4], 0 + 128] <= 4294967296 and mem[_474 + 128 len 4], 0 + (32 * mem[_474 + mem[_474 + 128 len 4], 0 + 128]) + 32 <= return_data.size
                mem[_474 + ceil32(return_data.size) + 128] = mem[_474 + mem[_474 + 128 len 4], 0 + 128]
                _2074 = mem[_474 + _1792 + 128]
                t = 0
                while t < 32 * _2074:
                    mem[t + _474 + ceil32(return_data.size) + 160] = mem[t + _474 + _1792 + 160]
                    t = t + 32
                    continue 
                mem[64] = (32 * _2074) + _474 + ceil32(return_data.size) + 160
                require mem[_474 + ceil32(return_data.size) + 128] - 1 < mem[_474 + ceil32(return_data.size) + 128]
                if mem[(32 * mem[_474 + ceil32(return_data.size) + 128] - 1) + _474 + ceil32(return_data.size) + 160] <= s:
                    idx = idx + 1
                    s = s
                    continue 
                idx = idx + 1
                s = mem[(32 * mem[_474 + ceil32(return_data.size) + 128] - 1) + _474 + ceil32(return_data.size) + 160]
                continue 
            if 5 == idx:
                if 3 == idx:
                    _383 = mem[64]
                    mem[mem[64]] = 3
                    mem[64] = mem[64] + 128
                    require 0 < mem[_383]
                    mem[_383 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    require 1 < mem[_383]
                    mem[_383 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c
                    require 2 < mem[_383]
                    mem[_383 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    mem[_383 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_383 + 132] = 0
                    mem[_383 + 164] = 64
                    mem[_383 + 196] = mem[_383]
                    t = 0
                    while t < 32 * mem[_383]:
                        mem[t + _383 + 228] = mem[t + _383 + 32]
                        t = t + 32
                        continue 
                    require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                    staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c29.getAmountsOut(uint256 rg1, address[] rg2) with:
                            gas gas_remaining wei
                           args 0, 64, mem[_383 + 196 len (32 * mem[_383]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_383 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _383 + ceil32(return_data.size) + 128
                    require return_data.size >= 32
                    _1810 = mem[_383 + 128 len 4], 0
                    require mem[_383 + 128 len 4], 0 <= 4294967296
                    require mem[_383 + 128 len 4], 0 + 32 <= return_data.size
                    require mem[_383 + mem[_383 + 128 len 4], 0 + 128] <= 4294967296 and mem[_383 + 128 len 4], 0 + (32 * mem[_383 + mem[_383 + 128 len 4], 0 + 128]) + 32 <= return_data.size
                    mem[_383 + ceil32(return_data.size) + 128] = mem[_383 + mem[_383 + 128 len 4], 0 + 128]
                    _2083 = mem[_383 + _1810 + 128]
                    t = 0
                    while t < 32 * _2083:
                        mem[t + _383 + ceil32(return_data.size) + 160] = mem[t + _383 + _1810 + 160]
                        t = t + 32
                        continue 
                    mem[64] = (32 * _2083) + _383 + ceil32(return_data.size) + 160
                    require mem[_383 + ceil32(return_data.size) + 128] - 1 < mem[_383 + ceil32(return_data.size) + 128]
                    if mem[(32 * mem[_383 + ceil32(return_data.size) + 128] - 1) + _383 + ceil32(return_data.size) + 160] <= s:
                        idx = idx + 1
                        s = s
                        continue 
                    idx = idx + 1
                    s = mem[(32 * mem[_383 + ceil32(return_data.size) + 128] - 1) + _383 + ceil32(return_data.size) + 160]
                    continue 
                if 4 == idx:
                    _487 = mem[64]
                    mem[mem[64]] = 3
                    mem[64] = mem[64] + 128
                    require 0 < mem[_487]
                    mem[_487 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    require 1 < mem[_487]
                    mem[_487 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c
                    require 2 < mem[_487]
                    mem[_487 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    mem[_487 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_487 + 132] = 0
                    mem[_487 + 164] = 64
                    mem[_487 + 196] = mem[_487]
                    t = 0
                    while t < 32 * mem[_487]:
                        mem[t + _487 + 228] = mem[t + _487 + 32]
                        t = t + 32
                        continue 
                    require ext_code.size(0x7b17021fcb7bc888641dc3bedfed3734fcaf2c87)
                    staticcall 0x7b17021fcb7bc888641dc3bedfed3734fcaf2c87.getAmountsOut(uint256 rg1, address[] rg2) with:
                            gas gas_remaining wei
                           args 0, 64, mem[_487 + 196 len (32 * mem[_487]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_487 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _487 + ceil32(return_data.size) + 128
                    require return_data.size >= 32
                    _1808 = mem[_487 + 128 len 4], 0
                    require mem[_487 + 128 len 4], 0 <= 4294967296
                    require mem[_487 + 128 len 4], 0 + 32 <= return_data.size
                    require mem[_487 + mem[_487 + 128 len 4], 0 + 128] <= 4294967296 and mem[_487 + 128 len 4], 0 + (32 * mem[_487 + mem[_487 + 128 len 4], 0 + 128]) + 32 <= return_data.size
                    mem[_487 + ceil32(return_data.size) + 128] = mem[_487 + mem[_487 + 128 len 4], 0 + 128]
                    _2082 = mem[_487 + _1808 + 128]
                    t = 0
                    while t < 32 * _2082:
                        mem[t + _487 + ceil32(return_data.size) + 160] = mem[t + _487 + _1808 + 160]
                        t = t + 32
                        continue 
                    mem[64] = (32 * _2082) + _487 + ceil32(return_data.size) + 160
                    require mem[_487 + ceil32(return_data.size) + 128] - 1 < mem[_487 + ceil32(return_data.size) + 128]
                    if mem[(32 * mem[_487 + ceil32(return_data.size) + 128] - 1) + _487 + ceil32(return_data.size) + 160] <= s:
                        idx = idx + 1
                        s = s
                        continue 
                    idx = idx + 1
                    s = mem[(32 * mem[_487 + ceil32(return_data.size) + 128] - 1) + _487 + ceil32(return_data.size) + 160]
                    continue 
                if idx != 5:
                    _485 = mem[64]
                    mem[mem[64]] = 3
                    mem[64] = mem[64] + 128
                    require 0 < mem[_485]
                    mem[_485 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    require 1 < mem[_485]
                    mem[_485 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c
                    require 2 < mem[_485]
                    mem[_485 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    mem[_485 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_485 + 132] = 0
                    mem[_485 + 164] = 64
                    mem[_485 + 196] = mem[_485]
                    t = 0
                    while t < 32 * mem[_485]:
                        mem[t + _485 + 228] = mem[t + _485 + 32]
                        t = t + 32
                        continue 
                    require ext_code.size(0)
                    staticcall 0x0.getAmountsOut(uint256 rg1, address[] rg2) with:
                            gas gas_remaining wei
                           args 0, 64, mem[_485 + 196 len (32 * mem[_485]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_485 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _485 + ceil32(return_data.size) + 128
                    require return_data.size >= 32
                    _1804 = mem[_485 + 128 len 4], 0
                    require mem[_485 + 128 len 4], 0 <= 4294967296
                    require mem[_485 + 128 len 4], 0 + 32 <= return_data.size
                    require mem[_485 + mem[_485 + 128 len 4], 0 + 128] <= 4294967296 and mem[_485 + 128 len 4], 0 + (32 * mem[_485 + mem[_485 + 128 len 4], 0 + 128]) + 32 <= return_data.size
                    mem[_485 + ceil32(return_data.size) + 128] = mem[_485 + mem[_485 + 128 len 4], 0 + 128]
                    _2080 = mem[_485 + _1804 + 128]
                    t = 0
                    while t < 32 * _2080:
                        mem[t + _485 + ceil32(return_data.size) + 160] = mem[t + _485 + _1804 + 160]
                        t = t + 32
                        continue 
                    mem[64] = (32 * _2080) + _485 + ceil32(return_data.size) + 160
                    require mem[_485 + ceil32(return_data.size) + 128] - 1 < mem[_485 + ceil32(return_data.size) + 128]
                    if mem[(32 * mem[_485 + ceil32(return_data.size) + 128] - 1) + _485 + ceil32(return_data.size) + 160] <= s:
                        idx = idx + 1
                        s = s
                        continue 
                    idx = idx + 1
                    s = mem[(32 * mem[_485 + ceil32(return_data.size) + 128] - 1) + _485 + ceil32(return_data.size) + 160]
                    continue 
                _594 = mem[64]
                mem[mem[64]] = 3
                mem[64] = mem[64] + 128
                require 0 < mem[_594]
                mem[_594 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                require 1 < mem[_594]
                mem[_594 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c
                require 2 < mem[_594]
                mem[_594 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                mem[_594 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_594 + 132] = 0
                mem[_594 + 164] = 64
                mem[_594 + 196] = mem[_594]
                t = 0
                while t < 32 * mem[_594]:
                    mem[t + _594 + 228] = mem[t + _594 + 32]
                    t = t + 32
                    continue 
                require ext_code.size(0x53c153a0df7e050bbefbb70ee9632061f12795fb)
                staticcall 0x53c153a0df7e050bbefbb70ee9632061f12795fb.getAmountsOut(uint256 rg1, address[] rg2) with:
                        gas gas_remaining wei
                       args 0, 64, mem[_594 + 196 len (32 * mem[_594]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_594 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _594 + ceil32(return_data.size) + 128
                require return_data.size >= 32
                _1806 = mem[_594 + 128 len 4], 0
                require mem[_594 + 128 len 4], 0 <= 4294967296
                require mem[_594 + 128 len 4], 0 + 32 <= return_data.size
                require mem[_594 + mem[_594 + 128 len 4], 0 + 128] <= 4294967296 and mem[_594 + 128 len 4], 0 + (32 * mem[_594 + mem[_594 + 128 len 4], 0 + 128]) + 32 <= return_data.size
                mem[_594 + ceil32(return_data.size) + 128] = mem[_594 + mem[_594 + 128 len 4], 0 + 128]
                _2081 = mem[_594 + _1806 + 128]
                t = 0
                while t < 32 * _2081:
                    mem[t + _594 + ceil32(return_data.size) + 160] = mem[t + _594 + _1806 + 160]
                    t = t + 32
                    continue 
                mem[64] = (32 * _2081) + _594 + ceil32(return_data.size) + 160
                require mem[_594 + ceil32(return_data.size) + 128] - 1 < mem[_594 + ceil32(return_data.size) + 128]
                if mem[(32 * mem[_594 + ceil32(return_data.size) + 128] - 1) + _594 + ceil32(return_data.size) + 160] <= s:
                    idx = idx + 1
                    s = s
                    continue 
                idx = idx + 1
                s = mem[(32 * mem[_594 + ceil32(return_data.size) + 128] - 1) + _594 + ceil32(return_data.size) + 160]
                continue 
            if 6 == idx:
                _315 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                require 0 < mem[_315]
                mem[_315 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                require 1 < mem[_315]
                mem[_315 + 64] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                mem[_315 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_315 + 100] = 0
                mem[_315 + 132] = 64
                mem[_315 + 164] = mem[_315]
                t = 0
                while t < 32 * mem[_315]:
                    mem[t + _315 + 196] = mem[t + _315 + 32]
                    t = t + 32
                    continue 
                require ext_code.size(0x53c153a0df7e050bbefbb70ee9632061f12795fb)
                staticcall 0x53c153a0df7e050bbefbb70ee9632061f12795fb.getAmountsOut(uint256 rg1, address[] rg2) with:
                        gas gas_remaining wei
                       args 0, 64, mem[_315 + 164 len (32 * mem[_315]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_315 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _315 + ceil32(return_data.size) + 96
                require return_data.size >= 32
                _1802 = mem[_315 + 96 len 4], 0
                require mem[_315 + 96 len 4], 0 <= 4294967296
                require mem[_315 + 96 len 4], 0 + 32 <= return_data.size
                require mem[_315 + mem[_315 + 96 len 4], 0 + 96] <= 4294967296 and mem[_315 + 96 len 4], 0 + (32 * mem[_315 + mem[_315 + 96 len 4], 0 + 96]) + 32 <= return_data.size
                mem[_315 + ceil32(return_data.size) + 96] = mem[_315 + mem[_315 + 96 len 4], 0 + 96]
                _2079 = mem[_315 + _1802 + 96]
                t = 0
                while t < 32 * _2079:
                    mem[t + _315 + ceil32(return_data.size) + 128] = mem[t + _315 + _1802 + 128]
                    t = t + 32
                    continue 
                mem[64] = (32 * _2079) + _315 + ceil32(return_data.size) + 128
                require mem[_315 + ceil32(return_data.size) + 96] - 1 < mem[_315 + ceil32(return_data.size) + 96]
                if mem[(32 * mem[_315 + ceil32(return_data.size) + 96] - 1) + _315 + ceil32(return_data.size) + 128] <= s:
                    idx = idx + 1
                    s = s
                    continue 
                idx = idx + 1
                s = mem[(32 * mem[_315 + ceil32(return_data.size) + 96] - 1) + _315 + ceil32(return_data.size) + 128]
                continue 
            if idx != 7:
                if 0 <= s:
                    idx = idx + 1
                    s = s
                    continue 
                idx = idx + 1
                s = 0
                continue 
            _480 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            require 0 < mem[_480]
            mem[_480 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
            require 1 < mem[_480]
            mem[_480 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c
            mem[_480 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[_480 + 100] = 0
            mem[_480 + 132] = 64
            mem[_480 + 164] = mem[_480]
            t = 0
            while t < 32 * mem[_480]:
                mem[t + _480 + 196] = mem[t + _480 + 32]
                t = t + 32
                continue 
            require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
            staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c29.getAmountsOut(uint256 rg1, address[] rg2) with:
                    gas gas_remaining wei
                   args 0, 64, mem[_480 + 164 len (32 * mem[_480]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[_480 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = _480 + ceil32(return_data.size) + 96
            require return_data.size >= 32
            _1798 = mem[_480 + 96 len 4], 0
            require mem[_480 + 96 len 4], 0 <= 4294967296
            require mem[_480 + 96 len 4], 0 + 32 <= return_data.size
            require mem[_480 + mem[_480 + 96 len 4], 0 + 96] <= 4294967296 and mem[_480 + 96 len 4], 0 + (32 * mem[_480 + mem[_480 + 96 len 4], 0 + 96]) + 32 <= return_data.size
            mem[_480 + ceil32(return_data.size) + 96] = mem[_480 + mem[_480 + 96 len 4], 0 + 96]
            _2077 = mem[_480 + _1798 + 96]
            t = 0
            while t < 32 * _2077:
                mem[t + _480 + ceil32(return_data.size) + 128] = mem[t + _480 + _1798 + 128]
                t = t + 32
                continue 
            require mem[_480 + ceil32(return_data.size) + 96] - 1 < mem[_480 + ceil32(return_data.size) + 96]
            _5413 = mem[(32 * mem[_480 + ceil32(return_data.size) + 96] - 1) + _480 + ceil32(return_data.size) + 128]
            mem[(32 * _2077) + _480 + ceil32(return_data.size) + 128] = 2
            mem[(32 * _2077) + _480 + ceil32(return_data.size) + 160] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c
            mem[(32 * _2077) + _480 + ceil32(return_data.size) + 192] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
            mem[(32 * _2077) + _480 + ceil32(return_data.size) + 224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[(32 * _2077) + _480 + ceil32(return_data.size) + 228] = _5413
            mem[(32 * _2077) + _480 + ceil32(return_data.size) + 260] = 64
            mem[(32 * _2077) + _480 + ceil32(return_data.size) + 292] = 2
            t = 0
            while t < 64:
                mem[t + (32 * _2077) + _480 + ceil32(return_data.size) + 324] = mem[t + (32 * _2077) + _480 + ceil32(return_data.size) + 160]
                t = t + 32
                continue 
            require ext_code.size(0x1b02da8cb0d097eb8d57a175b88c7d8b47997506)
            staticcall 0x1b02da8cb0d097eb8d57a175b88c7d8b47997506.getAmountsOut(uint256 rg1, address[] rg2) with:
                    gas gas_remaining wei
                   args _5413, Array(len=2, data=mem[(32 * _2077) + _480 + ceil32(return_data.size) + 324 len 64])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _2077) + _480 + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * _2077) + _480 + (2 * ceil32(return_data.size)) + 224
            require return_data.size >= 32
            _7396 = mem[(32 * _2077) + _480 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _5413) >> 32
            require mem[(32 * _2077) + _480 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _5413) >> 32 <= 4294967296
            require mem[(32 * _2077) + _480 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _5413) >> 32 + 32 <= return_data.size
            require mem[(32 * _2077) + _480 + ceil32(return_data.size) + mem[(32 * _2077) + _480 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _5413) >> 32 + 224] <= 4294967296 and mem[(32 * _2077) + _480 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _5413) >> 32 + (32 * mem[(32 * _2077) + _480 + ceil32(return_data.size) + mem[(32 * _2077) + _480 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _5413) >> 32 + 224]) + 32 <= return_data.size
            mem[(32 * _2077) + _480 + (2 * ceil32(return_data.size)) + 224] = mem[(32 * _2077) + _480 + ceil32(return_data.size) + mem[(32 * _2077) + _480 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _5413) >> 32 + 224]
            _7516 = mem[(32 * _2077) + _480 + ceil32(return_data.size) + _7396 + 224]
            t = 0
            while t < 32 * _7516:
                mem[t + (32 * _2077) + _480 + (2 * ceil32(return_data.size)) + 256] = mem[t + (32 * _2077) + _480 + ceil32(return_data.size) + _7396 + 256]
                t = t + 32
                continue 
            mem[64] = (32 * _7516) + (32 * _2077) + _480 + (2 * ceil32(return_data.size)) + 256
            require mem[(32 * _2077) + _480 + (2 * ceil32(return_data.size)) + 224] - 1 < mem[(32 * _2077) + _480 + (2 * ceil32(return_data.size)) + 224]
            if mem[(32 * mem[(32 * _2077) + _480 + (2 * ceil32(return_data.size)) + 224] - 1) + (32 * _2077) + _480 + (2 * ceil32(return_data.size)) + 256] <= s:
                idx = idx + 1
                s = s
                continue 
            idx = idx + 1
            s = mem[(32 * mem[(32 * _2077) + _480 + (2 * ceil32(return_data.size)) + 224] - 1) + (32 * _2077) + _480 + (2 * ceil32(return_data.size)) + 256]
            continue 
        idx = 0
        t = 0
        while idx < 8:
            if not idx:
                mem[mem[64] + 4] = 1
                mem[mem[64] + 36] = 0
                mem[mem[64] + 68] = s
                require ext_code.size(0x27e611fd27b276acbd5ffd632e5eaebec9761e40)
                staticcall 0x27e611fd27b276acbd5ffd632e5eaebec9761e40.get_dy(int128 rg1, int128 rg2, uint256 rg3) with:
                        gas gas_remaining wei
                       args 1, 0, s
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
                mem[mem[64] + 4] = 2
                mem[mem[64] + 36] = 1
                mem[mem[64] + 68] = s
                require ext_code.size(0x83e5f18da720119ff363cf63417628eb0e9fd523)
                staticcall 0x83e5f18da720119ff363cf63417628eb0e9fd523.get_dy(int128 rg1, int128 rg2, uint256 rg3) with:
                        gas gas_remaining wei
                       args 2, 1, s
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
                _1884 = mem[64]
                mem[mem[64]] = 4
                mem[64] = mem[64] + 160
                require 0 < mem[_1884]
                mem[_1884 + 32] = 0x8d11ec38a3eb5e956b052f67da8bdc9bef8abf
                require 1 < mem[_1884]
                mem[_1884 + 64] = 0x5cc61a78f164885776aa610fb0fe1257df78e59b
                require 2 < mem[_1884]
                mem[_1884 + 96] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c
                require 3 < mem[_1884]
                mem[_1884 + 128] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                mem[_1884 + 160] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_1884 + 164] = s
                mem[_1884 + 196] = 64
                mem[_1884 + 228] = mem[_1884]
                u = 0
                while u < 32 * mem[_1884]:
                    mem[u + _1884 + 260] = mem[u + _1884 + 32]
                    u = u + 32
                    continue 
                require ext_code.size(0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52)
                staticcall 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52.getAmountsOut(uint256 rg1, address[] rg2) with:
                        gas gas_remaining wei
                       args s, 64, mem[_1884 + 228 len (32 * mem[_1884]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_1884 + 160 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _1884 + ceil32(return_data.size) + 160
                require return_data.size >= 32
                _5692 = mem[_1884 + 160 len 4], Mask(224, 32, s) >> 32
                require mem[_1884 + 160 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                require mem[_1884 + 160 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                require mem[_1884 + mem[_1884 + 160 len 4], Mask(224, 32, s) >> 32 + 160] <= 4294967296 and mem[_1884 + 160 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_1884 + mem[_1884 + 160 len 4], Mask(224, 32, s) >> 32 + 160]) + 32 <= return_data.size
                mem[_1884 + ceil32(return_data.size) + 160] = mem[_1884 + mem[_1884 + 160 len 4], Mask(224, 32, s) >> 32 + 160]
                _6004 = mem[_1884 + _5692 + 160]
                s = 0
                while s < 32 * _6004:
                    mem[s + _1884 + ceil32(return_data.size) + 192] = mem[s + _1884 + _5692 + 192]
                    s = s + 32
                    continue 
                mem[64] = (32 * _6004) + _1884 + ceil32(return_data.size) + 192
                require mem[_1884 + ceil32(return_data.size) + 160] - 1 < mem[_1884 + ceil32(return_data.size) + 160]
                if mem[(32 * mem[_1884 + ceil32(return_data.size) + 160] - 1) + _1884 + ceil32(return_data.size) + 192] <= t:
                    idx = idx + 1
                    t = t
                    continue 
                idx = idx + 1
                t = mem[(32 * mem[_1884 + ceil32(return_data.size) + 160] - 1) + _1884 + ceil32(return_data.size) + 192]
                continue 
            if 3 == idx:
                _2384 = mem[64]
                mem[mem[64]] = 3
                mem[64] = mem[64] + 128
                require 0 < mem[_2384]
                mem[_2384 + 32] = 0x8d11ec38a3eb5e956b052f67da8bdc9bef8abf
                require 1 < mem[_2384]
                mem[_2384 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c
                require 2 < mem[_2384]
                mem[_2384 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                mem[_2384 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_2384 + 132] = s
                mem[_2384 + 164] = 64
                mem[_2384 + 196] = mem[_2384]
                u = 0
                while u < 32 * mem[_2384]:
                    mem[u + _2384 + 228] = mem[u + _2384 + 32]
                    u = u + 32
                    continue 
                require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c29.getAmountsOut(uint256 rg1, address[] rg2) with:
                        gas gas_remaining wei
                       args s, 64, mem[_2384 + 196 len (32 * mem[_2384]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_2384 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _2384 + ceil32(return_data.size) + 128
                require return_data.size >= 32
                _5668 = mem[_2384 + 128 len 4], Mask(224, 32, s) >> 32
                require mem[_2384 + 128 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                require mem[_2384 + 128 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                require mem[_2384 + mem[_2384 + 128 len 4], Mask(224, 32, s) >> 32 + 128] <= 4294967296 and mem[_2384 + 128 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_2384 + mem[_2384 + 128 len 4], Mask(224, 32, s) >> 32 + 128]) + 32 <= return_data.size
                mem[_2384 + ceil32(return_data.size) + 128] = mem[_2384 + mem[_2384 + 128 len 4], Mask(224, 32, s) >> 32 + 128]
                _5992 = mem[_2384 + _5668 + 128]
                s = 0
                while s < 32 * _5992:
                    mem[s + _2384 + ceil32(return_data.size) + 160] = mem[s + _2384 + _5668 + 160]
                    s = s + 32
                    continue 
                mem[64] = (32 * _5992) + _2384 + ceil32(return_data.size) + 160
                require mem[_2384 + ceil32(return_data.size) + 128] - 1 < mem[_2384 + ceil32(return_data.size) + 128]
                if mem[(32 * mem[_2384 + ceil32(return_data.size) + 128] - 1) + _2384 + ceil32(return_data.size) + 160] <= t:
                    idx = idx + 1
                    t = t
                    continue 
                idx = idx + 1
                t = mem[(32 * mem[_2384 + ceil32(return_data.size) + 128] - 1) + _2384 + ceil32(return_data.size) + 160]
                continue 
            if 4 == idx:
                if 3 == idx:
                    _2487 = mem[64]
                    mem[mem[64]] = 3
                    mem[64] = mem[64] + 128
                    require 0 < mem[_2487]
                    mem[_2487 + 32] = 0x8d11ec38a3eb5e956b052f67da8bdc9bef8abf
                    require 1 < mem[_2487]
                    mem[_2487 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c
                    require 2 < mem[_2487]
                    mem[_2487 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    mem[_2487 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_2487 + 132] = s
                    mem[_2487 + 164] = 64
                    mem[_2487 + 196] = mem[_2487]
                    u = 0
                    while u < 32 * mem[_2487]:
                        mem[u + _2487 + 228] = mem[u + _2487 + 32]
                        u = u + 32
                        continue 
                    require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                    staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c29.getAmountsOut(uint256 rg1, address[] rg2) with:
                            gas gas_remaining wei
                           args s, 64, mem[_2487 + 196 len (32 * mem[_2487]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_2487 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _2487 + ceil32(return_data.size) + 128
                    require return_data.size >= 32
                    _5676 = mem[_2487 + 128 len 4], Mask(224, 32, s) >> 32
                    require mem[_2487 + 128 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                    require mem[_2487 + 128 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                    require mem[_2487 + mem[_2487 + 128 len 4], Mask(224, 32, s) >> 32 + 128] <= 4294967296 and mem[_2487 + 128 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_2487 + mem[_2487 + 128 len 4], Mask(224, 32, s) >> 32 + 128]) + 32 <= return_data.size
                    mem[_2487 + ceil32(return_data.size) + 128] = mem[_2487 + mem[_2487 + 128 len 4], Mask(224, 32, s) >> 32 + 128]
                    _5996 = mem[_2487 + _5676 + 128]
                    s = 0
                    while s < 32 * _5996:
                        mem[s + _2487 + ceil32(return_data.size) + 160] = mem[s + _2487 + _5676 + 160]
                        s = s + 32
                        continue 
                    mem[64] = (32 * _5996) + _2487 + ceil32(return_data.size) + 160
                    require mem[_2487 + ceil32(return_data.size) + 128] - 1 < mem[_2487 + ceil32(return_data.size) + 128]
                    if mem[(32 * mem[_2487 + ceil32(return_data.size) + 128] - 1) + _2487 + ceil32(return_data.size) + 160] <= t:
                        idx = idx + 1
                        t = t
                        continue 
                    idx = idx + 1
                    t = mem[(32 * mem[_2487 + ceil32(return_data.size) + 128] - 1) + _2487 + ceil32(return_data.size) + 160]
                    continue 
                if 4 == idx:
                    _2595 = mem[64]
                    mem[mem[64]] = 3
                    mem[64] = mem[64] + 128
                    require 0 < mem[_2595]
                    mem[_2595 + 32] = 0x8d11ec38a3eb5e956b052f67da8bdc9bef8abf
                    require 1 < mem[_2595]
                    mem[_2595 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c
                    require 2 < mem[_2595]
                    mem[_2595 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    mem[_2595 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_2595 + 132] = s
                    mem[_2595 + 164] = 64
                    mem[_2595 + 196] = mem[_2595]
                    u = 0
                    while u < 32 * mem[_2595]:
                        mem[u + _2595 + 228] = mem[u + _2595 + 32]
                        u = u + 32
                        continue 
                    require ext_code.size(0x7b17021fcb7bc888641dc3bedfed3734fcaf2c87)
                    staticcall 0x7b17021fcb7bc888641dc3bedfed3734fcaf2c87.getAmountsOut(uint256 rg1, address[] rg2) with:
                            gas gas_remaining wei
                           args s, 64, mem[_2595 + 196 len (32 * mem[_2595]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_2595 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _2595 + ceil32(return_data.size) + 128
                    require return_data.size >= 32
                    _5674 = mem[_2595 + 128 len 4], Mask(224, 32, s) >> 32
                    require mem[_2595 + 128 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                    require mem[_2595 + 128 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                    require mem[_2595 + mem[_2595 + 128 len 4], Mask(224, 32, s) >> 32 + 128] <= 4294967296 and mem[_2595 + 128 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_2595 + mem[_2595 + 128 len 4], Mask(224, 32, s) >> 32 + 128]) + 32 <= return_data.size
                    mem[_2595 + ceil32(return_data.size) + 128] = mem[_2595 + mem[_2595 + 128 len 4], Mask(224, 32, s) >> 32 + 128]
                    _5995 = mem[_2595 + _5674 + 128]
                    s = 0
                    while s < 32 * _5995:
                        mem[s + _2595 + ceil32(return_data.size) + 160] = mem[s + _2595 + _5674 + 160]
                        s = s + 32
                        continue 
                    mem[64] = (32 * _5995) + _2595 + ceil32(return_data.size) + 160
                    require mem[_2595 + ceil32(return_data.size) + 128] - 1 < mem[_2595 + ceil32(return_data.size) + 128]
                    if mem[(32 * mem[_2595 + ceil32(return_data.size) + 128] - 1) + _2595 + ceil32(return_data.size) + 160] <= t:
                        idx = idx + 1
                        t = t
                        continue 
                    idx = idx + 1
                    t = mem[(32 * mem[_2595 + ceil32(return_data.size) + 128] - 1) + _2595 + ceil32(return_data.size) + 160]
                    continue 
                if idx != 5:
                    _2593 = mem[64]
                    mem[mem[64]] = 3
                    mem[64] = mem[64] + 128
                    require 0 < mem[_2593]
                    mem[_2593 + 32] = 0x8d11ec38a3eb5e956b052f67da8bdc9bef8abf
                    require 1 < mem[_2593]
                    mem[_2593 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c
                    require 2 < mem[_2593]
                    mem[_2593 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    mem[_2593 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_2593 + 132] = s
                    mem[_2593 + 164] = 64
                    mem[_2593 + 196] = mem[_2593]
                    u = 0
                    while u < 32 * mem[_2593]:
                        mem[u + _2593 + 228] = mem[u + _2593 + 32]
                        u = u + 32
                        continue 
                    require ext_code.size(0)
                    staticcall 0x0.getAmountsOut(uint256 rg1, address[] rg2) with:
                            gas gas_remaining wei
                           args s, 64, mem[_2593 + 196 len (32 * mem[_2593]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_2593 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _2593 + ceil32(return_data.size) + 128
                    require return_data.size >= 32
                    _5670 = mem[_2593 + 128 len 4], Mask(224, 32, s) >> 32
                    require mem[_2593 + 128 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                    require mem[_2593 + 128 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                    require mem[_2593 + mem[_2593 + 128 len 4], Mask(224, 32, s) >> 32 + 128] <= 4294967296 and mem[_2593 + 128 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_2593 + mem[_2593 + 128 len 4], Mask(224, 32, s) >> 32 + 128]) + 32 <= return_data.size
                    mem[_2593 + ceil32(return_data.size) + 128] = mem[_2593 + mem[_2593 + 128 len 4], Mask(224, 32, s) >> 32 + 128]
                    _5993 = mem[_2593 + _5670 + 128]
                    s = 0
                    while s < 32 * _5993:
                        mem[s + _2593 + ceil32(return_data.size) + 160] = mem[s + _2593 + _5670 + 160]
                        s = s + 32
                        continue 
                    mem[64] = (32 * _5993) + _2593 + ceil32(return_data.size) + 160
                    require mem[_2593 + ceil32(return_data.size) + 128] - 1 < mem[_2593 + ceil32(return_data.size) + 128]
                    if mem[(32 * mem[_2593 + ceil32(return_data.size) + 128] - 1) + _2593 + ceil32(return_data.size) + 160] <= t:
                        idx = idx + 1
                        t = t
                        continue 
                    idx = idx + 1
                    t = mem[(32 * mem[_2593 + ceil32(return_data.size) + 128] - 1) + _2593 + ceil32(return_data.size) + 160]
                    continue 
                _2774 = mem[64]
                mem[mem[64]] = 3
                mem[64] = mem[64] + 128
                require 0 < mem[_2774]
                mem[_2774 + 32] = 0x8d11ec38a3eb5e956b052f67da8bdc9bef8abf
                require 1 < mem[_2774]
                mem[_2774 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c
                require 2 < mem[_2774]
                mem[_2774 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                mem[_2774 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_2774 + 132] = s
                mem[_2774 + 164] = 64
                mem[_2774 + 196] = mem[_2774]
                u = 0
                while u < 32 * mem[_2774]:
                    mem[u + _2774 + 228] = mem[u + _2774 + 32]
                    u = u + 32
                    continue 
                require ext_code.size(0x53c153a0df7e050bbefbb70ee9632061f12795fb)
                staticcall 0x53c153a0df7e050bbefbb70ee9632061f12795fb.getAmountsOut(uint256 rg1, address[] rg2) with:
                        gas gas_remaining wei
                       args s, 64, mem[_2774 + 196 len (32 * mem[_2774]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_2774 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _2774 + ceil32(return_data.size) + 128
                require return_data.size >= 32
                _5672 = mem[_2774 + 128 len 4], Mask(224, 32, s) >> 32
                require mem[_2774 + 128 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                require mem[_2774 + 128 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                require mem[_2774 + mem[_2774 + 128 len 4], Mask(224, 32, s) >> 32 + 128] <= 4294967296 and mem[_2774 + 128 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_2774 + mem[_2774 + 128 len 4], Mask(224, 32, s) >> 32 + 128]) + 32 <= return_data.size
                mem[_2774 + ceil32(return_data.size) + 128] = mem[_2774 + mem[_2774 + 128 len 4], Mask(224, 32, s) >> 32 + 128]
                _5994 = mem[_2774 + _5672 + 128]
                s = 0
                while s < 32 * _5994:
                    mem[s + _2774 + ceil32(return_data.size) + 160] = mem[s + _2774 + _5672 + 160]
                    s = s + 32
                    continue 
                mem[64] = (32 * _5994) + _2774 + ceil32(return_data.size) + 160
                require mem[_2774 + ceil32(return_data.size) + 128] - 1 < mem[_2774 + ceil32(return_data.size) + 128]
                if mem[(32 * mem[_2774 + ceil32(return_data.size) + 128] - 1) + _2774 + ceil32(return_data.size) + 160] <= t:
                    idx = idx + 1
                    t = t
                    continue 
                idx = idx + 1
                t = mem[(32 * mem[_2774 + ceil32(return_data.size) + 128] - 1) + _2774 + ceil32(return_data.size) + 160]
                continue 
            if 5 == idx:
                if 3 == idx:
                    _2603 = mem[64]
                    mem[mem[64]] = 3
                    mem[64] = mem[64] + 128
                    require 0 < mem[_2603]
                    mem[_2603 + 32] = 0x8d11ec38a3eb5e956b052f67da8bdc9bef8abf
                    require 1 < mem[_2603]
                    mem[_2603 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c
                    require 2 < mem[_2603]
                    mem[_2603 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    mem[_2603 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_2603 + 132] = s
                    mem[_2603 + 164] = 64
                    mem[_2603 + 196] = mem[_2603]
                    u = 0
                    while u < 32 * mem[_2603]:
                        mem[u + _2603 + 228] = mem[u + _2603 + 32]
                        u = u + 32
                        continue 
                    require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                    staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c29.getAmountsOut(uint256 rg1, address[] rg2) with:
                            gas gas_remaining wei
                           args s, 64, mem[_2603 + 196 len (32 * mem[_2603]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_2603 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _2603 + ceil32(return_data.size) + 128
                    require return_data.size >= 32
                    _5690 = mem[_2603 + 128 len 4], Mask(224, 32, s) >> 32
                    require mem[_2603 + 128 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                    require mem[_2603 + 128 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                    require mem[_2603 + mem[_2603 + 128 len 4], Mask(224, 32, s) >> 32 + 128] <= 4294967296 and mem[_2603 + 128 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_2603 + mem[_2603 + 128 len 4], Mask(224, 32, s) >> 32 + 128]) + 32 <= return_data.size
                    mem[_2603 + ceil32(return_data.size) + 128] = mem[_2603 + mem[_2603 + 128 len 4], Mask(224, 32, s) >> 32 + 128]
                    _6003 = mem[_2603 + _5690 + 128]
                    s = 0
                    while s < 32 * _6003:
                        mem[s + _2603 + ceil32(return_data.size) + 160] = mem[s + _2603 + _5690 + 160]
                        s = s + 32
                        continue 
                    mem[64] = (32 * _6003) + _2603 + ceil32(return_data.size) + 160
                    require mem[_2603 + ceil32(return_data.size) + 128] - 1 < mem[_2603 + ceil32(return_data.size) + 128]
                    if mem[(32 * mem[_2603 + ceil32(return_data.size) + 128] - 1) + _2603 + ceil32(return_data.size) + 160] <= t:
                        idx = idx + 1
                        t = t
                        continue 
                    idx = idx + 1
                    t = mem[(32 * mem[_2603 + ceil32(return_data.size) + 128] - 1) + _2603 + ceil32(return_data.size) + 160]
                    continue 
                if 4 == idx:
                    _2787 = mem[64]
                    mem[mem[64]] = 3
                    mem[64] = mem[64] + 128
                    require 0 < mem[_2787]
                    mem[_2787 + 32] = 0x8d11ec38a3eb5e956b052f67da8bdc9bef8abf
                    require 1 < mem[_2787]
                    mem[_2787 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c
                    require 2 < mem[_2787]
                    mem[_2787 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    mem[_2787 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_2787 + 132] = s
                    mem[_2787 + 164] = 64
                    mem[_2787 + 196] = mem[_2787]
                    u = 0
                    while u < 32 * mem[_2787]:
                        mem[u + _2787 + 228] = mem[u + _2787 + 32]
                        u = u + 32
                        continue 
                    require ext_code.size(0x7b17021fcb7bc888641dc3bedfed3734fcaf2c87)
                    staticcall 0x7b17021fcb7bc888641dc3bedfed3734fcaf2c87.getAmountsOut(uint256 rg1, address[] rg2) with:
                            gas gas_remaining wei
                           args s, 64, mem[_2787 + 196 len (32 * mem[_2787]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_2787 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _2787 + ceil32(return_data.size) + 128
                    require return_data.size >= 32
                    _5688 = mem[_2787 + 128 len 4], Mask(224, 32, s) >> 32
                    require mem[_2787 + 128 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                    require mem[_2787 + 128 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                    require mem[_2787 + mem[_2787 + 128 len 4], Mask(224, 32, s) >> 32 + 128] <= 4294967296 and mem[_2787 + 128 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_2787 + mem[_2787 + 128 len 4], Mask(224, 32, s) >> 32 + 128]) + 32 <= return_data.size
                    mem[_2787 + ceil32(return_data.size) + 128] = mem[_2787 + mem[_2787 + 128 len 4], Mask(224, 32, s) >> 32 + 128]
                    _6002 = mem[_2787 + _5688 + 128]
                    s = 0
                    while s < 32 * _6002:
                        mem[s + _2787 + ceil32(return_data.size) + 160] = mem[s + _2787 + _5688 + 160]
                        s = s + 32
                        continue 
                    mem[64] = (32 * _6002) + _2787 + ceil32(return_data.size) + 160
                    require mem[_2787 + ceil32(return_data.size) + 128] - 1 < mem[_2787 + ceil32(return_data.size) + 128]
                    if mem[(32 * mem[_2787 + ceil32(return_data.size) + 128] - 1) + _2787 + ceil32(return_data.size) + 160] <= t:
                        idx = idx + 1
                        t = t
                        continue 
                    idx = idx + 1
                    t = mem[(32 * mem[_2787 + ceil32(return_data.size) + 128] - 1) + _2787 + ceil32(return_data.size) + 160]
                    continue 
                if idx != 5:
                    _2785 = mem[64]
                    mem[mem[64]] = 3
                    mem[64] = mem[64] + 128
                    require 0 < mem[_2785]
                    mem[_2785 + 32] = 0x8d11ec38a3eb5e956b052f67da8bdc9bef8abf
                    require 1 < mem[_2785]
                    mem[_2785 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c
                    require 2 < mem[_2785]
                    mem[_2785 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    mem[_2785 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_2785 + 132] = s
                    mem[_2785 + 164] = 64
                    mem[_2785 + 196] = mem[_2785]
                    u = 0
                    while u < 32 * mem[_2785]:
                        mem[u + _2785 + 228] = mem[u + _2785 + 32]
                        u = u + 32
                        continue 
                    require ext_code.size(0)
                    staticcall 0x0.getAmountsOut(uint256 rg1, address[] rg2) with:
                            gas gas_remaining wei
                           args s, 64, mem[_2785 + 196 len (32 * mem[_2785]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_2785 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _2785 + ceil32(return_data.size) + 128
                    require return_data.size >= 32
                    _5684 = mem[_2785 + 128 len 4], Mask(224, 32, s) >> 32
                    require mem[_2785 + 128 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                    require mem[_2785 + 128 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                    require mem[_2785 + mem[_2785 + 128 len 4], Mask(224, 32, s) >> 32 + 128] <= 4294967296 and mem[_2785 + 128 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_2785 + mem[_2785 + 128 len 4], Mask(224, 32, s) >> 32 + 128]) + 32 <= return_data.size
                    mem[_2785 + ceil32(return_data.size) + 128] = mem[_2785 + mem[_2785 + 128 len 4], Mask(224, 32, s) >> 32 + 128]
                    _6000 = mem[_2785 + _5684 + 128]
                    s = 0
                    while s < 32 * _6000:
                        mem[s + _2785 + ceil32(return_data.size) + 160] = mem[s + _2785 + _5684 + 160]
                        s = s + 32
                        continue 
                    mem[64] = (32 * _6000) + _2785 + ceil32(return_data.size) + 160
                    require mem[_2785 + ceil32(return_data.size) + 128] - 1 < mem[_2785 + ceil32(return_data.size) + 128]
                    if mem[(32 * mem[_2785 + ceil32(return_data.size) + 128] - 1) + _2785 + ceil32(return_data.size) + 160] <= t:
                        idx = idx + 1
                        t = t
                        continue 
                    idx = idx + 1
                    t = mem[(32 * mem[_2785 + ceil32(return_data.size) + 128] - 1) + _2785 + ceil32(return_data.size) + 160]
                    continue 
                _3000 = mem[64]
                mem[mem[64]] = 3
                mem[64] = mem[64] + 128
                require 0 < mem[_3000]
                mem[_3000 + 32] = 0x8d11ec38a3eb5e956b052f67da8bdc9bef8abf
                require 1 < mem[_3000]
                mem[_3000 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c
                require 2 < mem[_3000]
                mem[_3000 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                mem[_3000 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_3000 + 132] = s
                mem[_3000 + 164] = 64
                mem[_3000 + 196] = mem[_3000]
                u = 0
                while u < 32 * mem[_3000]:
                    mem[u + _3000 + 228] = mem[u + _3000 + 32]
                    u = u + 32
                    continue 
                require ext_code.size(0x53c153a0df7e050bbefbb70ee9632061f12795fb)
                staticcall 0x53c153a0df7e050bbefbb70ee9632061f12795fb.getAmountsOut(uint256 rg1, address[] rg2) with:
                        gas gas_remaining wei
                       args s, 64, mem[_3000 + 196 len (32 * mem[_3000]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_3000 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _3000 + ceil32(return_data.size) + 128
                require return_data.size >= 32
                _5686 = mem[_3000 + 128 len 4], Mask(224, 32, s) >> 32
                require mem[_3000 + 128 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                require mem[_3000 + 128 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                require mem[_3000 + mem[_3000 + 128 len 4], Mask(224, 32, s) >> 32 + 128] <= 4294967296 and mem[_3000 + 128 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_3000 + mem[_3000 + 128 len 4], Mask(224, 32, s) >> 32 + 128]) + 32 <= return_data.size
                mem[_3000 + ceil32(return_data.size) + 128] = mem[_3000 + mem[_3000 + 128 len 4], Mask(224, 32, s) >> 32 + 128]
                _6001 = mem[_3000 + _5686 + 128]
                s = 0
                while s < 32 * _6001:
                    mem[s + _3000 + ceil32(return_data.size) + 160] = mem[s + _3000 + _5686 + 160]
                    s = s + 32
                    continue 
                mem[64] = (32 * _6001) + _3000 + ceil32(return_data.size) + 160
                require mem[_3000 + ceil32(return_data.size) + 128] - 1 < mem[_3000 + ceil32(return_data.size) + 128]
                if mem[(32 * mem[_3000 + ceil32(return_data.size) + 128] - 1) + _3000 + ceil32(return_data.size) + 160] <= t:
                    idx = idx + 1
                    t = t
                    continue 
                idx = idx + 1
                t = mem[(32 * mem[_3000 + ceil32(return_data.size) + 128] - 1) + _3000 + ceil32(return_data.size) + 160]
                continue 
            if 6 == idx:
                _2489 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                require 0 < mem[_2489]
                mem[_2489 + 32] = 0x8d11ec38a3eb5e956b052f67da8bdc9bef8abf
                require 1 < mem[_2489]
                mem[_2489 + 64] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                mem[_2489 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_2489 + 100] = s
                mem[_2489 + 132] = 64
                mem[_2489 + 164] = mem[_2489]
                u = 0
                while u < 32 * mem[_2489]:
                    mem[u + _2489 + 196] = mem[u + _2489 + 32]
                    u = u + 32
                    continue 
                require ext_code.size(0x53c153a0df7e050bbefbb70ee9632061f12795fb)
                staticcall 0x53c153a0df7e050bbefbb70ee9632061f12795fb.getAmountsOut(uint256 rg1, address[] rg2) with:
                        gas gas_remaining wei
                       args s, 64, mem[_2489 + 164 len (32 * mem[_2489]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_2489 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _2489 + ceil32(return_data.size) + 96
                require return_data.size >= 32
                _5682 = mem[_2489 + 96 len 4], Mask(224, 32, s) >> 32
                require mem[_2489 + 96 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                require mem[_2489 + 96 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                require mem[_2489 + mem[_2489 + 96 len 4], Mask(224, 32, s) >> 32 + 96] <= 4294967296 and mem[_2489 + 96 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_2489 + mem[_2489 + 96 len 4], Mask(224, 32, s) >> 32 + 96]) + 32 <= return_data.size
                mem[_2489 + ceil32(return_data.size) + 96] = mem[_2489 + mem[_2489 + 96 len 4], Mask(224, 32, s) >> 32 + 96]
                _5999 = mem[_2489 + _5682 + 96]
                s = 0
                while s < 32 * _5999:
                    mem[s + _2489 + ceil32(return_data.size) + 128] = mem[s + _2489 + _5682 + 128]
                    s = s + 32
                    continue 
                mem[64] = (32 * _5999) + _2489 + ceil32(return_data.size) + 128
                require mem[_2489 + ceil32(return_data.size) + 96] - 1 < mem[_2489 + ceil32(return_data.size) + 96]
                if mem[(32 * mem[_2489 + ceil32(return_data.size) + 96] - 1) + _2489 + ceil32(return_data.size) + 128] <= t:
                    idx = idx + 1
                    t = t
                    continue 
                idx = idx + 1
                t = mem[(32 * mem[_2489 + ceil32(return_data.size) + 96] - 1) + _2489 + ceil32(return_data.size) + 128]
                continue 
            if idx != 7:
                if s <= t:
                    idx = idx + 1
                    t = t
                    continue 
                idx = idx + 1
                t = s
                continue 
            _2780 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            require 0 < mem[_2780]
            mem[_2780 + 32] = 0x8d11ec38a3eb5e956b052f67da8bdc9bef8abf
            require 1 < mem[_2780]
            mem[_2780 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c
            mem[_2780 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[_2780 + 100] = s
            mem[_2780 + 132] = 64
            mem[_2780 + 164] = mem[_2780]
            u = 0
            while u < 32 * mem[_2780]:
                mem[u + _2780 + 196] = mem[u + _2780 + 32]
                u = u + 32
                continue 
            require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
            staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c29.getAmountsOut(uint256 rg1, address[] rg2) with:
                    gas gas_remaining wei
                   args s, 64, mem[_2780 + 164 len (32 * mem[_2780]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[_2780 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = _2780 + ceil32(return_data.size) + 96
            require return_data.size >= 32
            _5678 = mem[_2780 + 96 len 4], Mask(224, 32, s) >> 32
            require mem[_2780 + 96 len 4], Mask(224, 32, s) >> 32 <= 4294967296
            require mem[_2780 + 96 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
            require mem[_2780 + mem[_2780 + 96 len 4], Mask(224, 32, s) >> 32 + 96] <= 4294967296 and mem[_2780 + 96 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_2780 + mem[_2780 + 96 len 4], Mask(224, 32, s) >> 32 + 96]) + 32 <= return_data.size
            mem[_2780 + ceil32(return_data.size) + 96] = mem[_2780 + mem[_2780 + 96 len 4], Mask(224, 32, s) >> 32 + 96]
            _5997 = mem[_2780 + _5678 + 96]
            s = 0
            while s < 32 * _5997:
                mem[s + _2780 + ceil32(return_data.size) + 128] = mem[s + _2780 + _5678 + 128]
                s = s + 32
                continue 
            mem[64] = (32 * _5997) + _2780 + ceil32(return_data.size) + 128
            require mem[_2780 + ceil32(return_data.size) + 96] - 1 < mem[_2780 + ceil32(return_data.size) + 96]
            _7313 = mem[(32 * mem[_2780 + ceil32(return_data.size) + 96] - 1) + _2780 + ceil32(return_data.size) + 128]
            mem[(32 * _5997) + _2780 + ceil32(return_data.size) + 128] = 2
            mem[(32 * _5997) + _2780 + ceil32(return_data.size) + 160] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c
            mem[(32 * _5997) + _2780 + ceil32(return_data.size) + 192] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
            mem[(32 * _5997) + _2780 + ceil32(return_data.size) + 224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[(32 * _5997) + _2780 + ceil32(return_data.size) + 228] = _7313
            mem[(32 * _5997) + _2780 + ceil32(return_data.size) + 260] = 64
            mem[(32 * _5997) + _2780 + ceil32(return_data.size) + 292] = 2
            s = 0
            while s < 64:
                mem[s + (32 * _5997) + _2780 + ceil32(return_data.size) + 324] = mem[s + (32 * _5997) + _2780 + ceil32(return_data.size) + 160]
                s = s + 32
                continue 
            require ext_code.size(0x1b02da8cb0d097eb8d57a175b88c7d8b47997506)
            staticcall 0x1b02da8cb0d097eb8d57a175b88c7d8b47997506.getAmountsOut(uint256 rg1, address[] rg2) with:
                    gas gas_remaining wei
                   args _7313, Array(len=2, data=mem[(32 * _5997) + _2780 + ceil32(return_data.size) + 324 len 64])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _5997) + _2780 + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * _5997) + _2780 + (2 * ceil32(return_data.size)) + 224
            require return_data.size >= 32
            _7836 = mem[(32 * _5997) + _2780 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _7313) >> 32
            require mem[(32 * _5997) + _2780 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _7313) >> 32 <= 4294967296
            require mem[(32 * _5997) + _2780 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _7313) >> 32 + 32 <= return_data.size
            require mem[(32 * _5997) + _2780 + ceil32(return_data.size) + mem[(32 * _5997) + _2780 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _7313) >> 32 + 224] <= 4294967296 and mem[(32 * _5997) + _2780 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _7313) >> 32 + (32 * mem[(32 * _5997) + _2780 + ceil32(return_data.size) + mem[(32 * _5997) + _2780 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _7313) >> 32 + 224]) + 32 <= return_data.size
            mem[(32 * _5997) + _2780 + (2 * ceil32(return_data.size)) + 224] = mem[(32 * _5997) + _2780 + ceil32(return_data.size) + mem[(32 * _5997) + _2780 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _7313) >> 32 + 224]
            _7876 = mem[(32 * _5997) + _2780 + ceil32(return_data.size) + _7836 + 224]
            s = 0
            while s < 32 * _7876:
                mem[s + (32 * _5997) + _2780 + (2 * ceil32(return_data.size)) + 256] = mem[s + (32 * _5997) + _2780 + ceil32(return_data.size) + _7836 + 256]
                s = s + 32
                continue 
            mem[64] = (32 * _7876) + (32 * _5997) + _2780 + (2 * ceil32(return_data.size)) + 256
            require mem[(32 * _5997) + _2780 + (2 * ceil32(return_data.size)) + 224] - 1 < mem[(32 * _5997) + _2780 + (2 * ceil32(return_data.size)) + 224]
            if mem[(32 * mem[(32 * _5997) + _2780 + (2 * ceil32(return_data.size)) + 224] - 1) + (32 * _5997) + _2780 + (2 * ceil32(return_data.size)) + 256] <= t:
                idx = idx + 1
                t = t
                continue 
            idx = idx + 1
            t = mem[(32 * mem[(32 * _5997) + _2780 + (2 * ceil32(return_data.size)) + 224] - 1) + (32 * _5997) + _2780 + (2 * ceil32(return_data.size)) + 256]
            continue 
    else:
        if 10^6 * sub_7d0b6809 / sub_7d0b6809 != 10^6:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x3e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        mem[0] = msg.sender
        idx = 0
        s = 0
        while idx < 8:
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
                _120 = mem[64]
                mem[mem[64]] = 4
                mem[64] = mem[64] + 160
                require 0 < mem[_120]
                mem[_120 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                require 1 < mem[_120]
                mem[_120 + 64] = 0x5cc61a78f164885776aa610fb0fe1257df78e59b
                require 2 < mem[_120]
                mem[_120 + 96] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c
                require 3 < mem[_120]
                mem[_120 + 128] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                mem[_120 + 160] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_120 + 164] = 10^6 * sub_7d0b6809
                mem[_120 + 196] = 64
                mem[_120 + 228] = mem[_120]
                t = 0
                while t < 32 * mem[_120]:
                    mem[t + _120 + 260] = mem[t + _120 + 32]
                    t = t + 32
                    continue 
                require ext_code.size(0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52)
                staticcall 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52.getAmountsOut(uint256 rg1, address[] rg2) with:
                        gas gas_remaining wei
                       args 10^6 * sub_7d0b6809, 64, mem[_120 + 228 len (32 * mem[_120]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_120 + 160 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _120 + ceil32(return_data.size) + 160
                require return_data.size >= 32
                _1740 = mem[_120 + 160 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32
                require mem[_120 + 160 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 <= 4294967296
                require mem[_120 + 160 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 32 <= return_data.size
                require mem[_120 + mem[_120 + 160 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 160] <= 4294967296 and mem[_120 + 160 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + (32 * mem[_120 + mem[_120 + 160 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 160]) + 32 <= return_data.size
                mem[_120 + ceil32(return_data.size) + 160] = mem[_120 + mem[_120 + 160 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 160]
                _2024 = mem[_120 + _1740 + 160]
                t = 0
                while t < 32 * _2024:
                    mem[t + _120 + ceil32(return_data.size) + 192] = mem[t + _120 + _1740 + 192]
                    t = t + 32
                    continue 
                mem[64] = (32 * _2024) + _120 + ceil32(return_data.size) + 192
                require mem[_120 + ceil32(return_data.size) + 160] - 1 < mem[_120 + ceil32(return_data.size) + 160]
                if mem[(32 * mem[_120 + ceil32(return_data.size) + 160] - 1) + _120 + ceil32(return_data.size) + 192] <= s:
                    idx = idx + 1
                    s = s
                    continue 
                idx = idx + 1
                s = mem[(32 * mem[_120 + ceil32(return_data.size) + 160] - 1) + _120 + ceil32(return_data.size) + 192]
                continue 
            if 3 == idx:
                _244 = mem[64]
                mem[mem[64]] = 3
                mem[64] = mem[64] + 128
                require 0 < mem[_244]
                mem[_244 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                require 1 < mem[_244]
                mem[_244 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c
                require 2 < mem[_244]
                mem[_244 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                mem[_244 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_244 + 132] = 10^6 * sub_7d0b6809
                mem[_244 + 164] = 64
                mem[_244 + 196] = mem[_244]
                t = 0
                while t < 32 * mem[_244]:
                    mem[t + _244 + 228] = mem[t + _244 + 32]
                    t = t + 32
                    continue 
                require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c29.getAmountsOut(uint256 rg1, address[] rg2) with:
                        gas gas_remaining wei
                       args 10^6 * sub_7d0b6809, 64, mem[_244 + 196 len (32 * mem[_244]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_244 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _244 + ceil32(return_data.size) + 128
                require return_data.size >= 32
                _1716 = mem[_244 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32
                require mem[_244 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 <= 4294967296
                require mem[_244 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 32 <= return_data.size
                require mem[_244 + mem[_244 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 128] <= 4294967296 and mem[_244 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + (32 * mem[_244 + mem[_244 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 128]) + 32 <= return_data.size
                mem[_244 + ceil32(return_data.size) + 128] = mem[_244 + mem[_244 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 128]
                _2012 = mem[_244 + _1716 + 128]
                t = 0
                while t < 32 * _2012:
                    mem[t + _244 + ceil32(return_data.size) + 160] = mem[t + _244 + _1716 + 160]
                    t = t + 32
                    continue 
                mem[64] = (32 * _2012) + _244 + ceil32(return_data.size) + 160
                require mem[_244 + ceil32(return_data.size) + 128] - 1 < mem[_244 + ceil32(return_data.size) + 128]
                if mem[(32 * mem[_244 + ceil32(return_data.size) + 128] - 1) + _244 + ceil32(return_data.size) + 160] <= s:
                    idx = idx + 1
                    s = s
                    continue 
                idx = idx + 1
                s = mem[(32 * mem[_244 + ceil32(return_data.size) + 128] - 1) + _244 + ceil32(return_data.size) + 160]
                continue 
            if 4 == idx:
                if 3 == idx:
                    _279 = mem[64]
                    mem[mem[64]] = 3
                    mem[64] = mem[64] + 128
                    require 0 < mem[_279]
                    mem[_279 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    require 1 < mem[_279]
                    mem[_279 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c
                    require 2 < mem[_279]
                    mem[_279 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    mem[_279 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_279 + 132] = 10^6 * sub_7d0b6809
                    mem[_279 + 164] = 64
                    mem[_279 + 196] = mem[_279]
                    t = 0
                    while t < 32 * mem[_279]:
                        mem[t + _279 + 228] = mem[t + _279 + 32]
                        t = t + 32
                        continue 
                    require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                    staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c29.getAmountsOut(uint256 rg1, address[] rg2) with:
                            gas gas_remaining wei
                           args 10^6 * sub_7d0b6809, 64, mem[_279 + 196 len (32 * mem[_279]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_279 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _279 + ceil32(return_data.size) + 128
                    require return_data.size >= 32
                    _1724 = mem[_279 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32
                    require mem[_279 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 <= 4294967296
                    require mem[_279 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 32 <= return_data.size
                    require mem[_279 + mem[_279 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 128] <= 4294967296 and mem[_279 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + (32 * mem[_279 + mem[_279 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 128]) + 32 <= return_data.size
                    mem[_279 + ceil32(return_data.size) + 128] = mem[_279 + mem[_279 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 128]
                    _2016 = mem[_279 + _1724 + 128]
                    t = 0
                    while t < 32 * _2016:
                        mem[t + _279 + ceil32(return_data.size) + 160] = mem[t + _279 + _1724 + 160]
                        t = t + 32
                        continue 
                    mem[64] = (32 * _2016) + _279 + ceil32(return_data.size) + 160
                    require mem[_279 + ceil32(return_data.size) + 128] - 1 < mem[_279 + ceil32(return_data.size) + 128]
                    if mem[(32 * mem[_279 + ceil32(return_data.size) + 128] - 1) + _279 + ceil32(return_data.size) + 160] <= s:
                        idx = idx + 1
                        s = s
                        continue 
                    idx = idx + 1
                    s = mem[(32 * mem[_279 + ceil32(return_data.size) + 128] - 1) + _279 + ceil32(return_data.size) + 160]
                    continue 
                if 4 == idx:
                    _345 = mem[64]
                    mem[mem[64]] = 3
                    mem[64] = mem[64] + 128
                    require 0 < mem[_345]
                    mem[_345 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    require 1 < mem[_345]
                    mem[_345 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c
                    require 2 < mem[_345]
                    mem[_345 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    mem[_345 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_345 + 132] = 10^6 * sub_7d0b6809
                    mem[_345 + 164] = 64
                    mem[_345 + 196] = mem[_345]
                    t = 0
                    while t < 32 * mem[_345]:
                        mem[t + _345 + 228] = mem[t + _345 + 32]
                        t = t + 32
                        continue 
                    require ext_code.size(0x7b17021fcb7bc888641dc3bedfed3734fcaf2c87)
                    staticcall 0x7b17021fcb7bc888641dc3bedfed3734fcaf2c87.getAmountsOut(uint256 rg1, address[] rg2) with:
                            gas gas_remaining wei
                           args 10^6 * sub_7d0b6809, 64, mem[_345 + 196 len (32 * mem[_345]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_345 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _345 + ceil32(return_data.size) + 128
                    require return_data.size >= 32
                    _1722 = mem[_345 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32
                    require mem[_345 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 <= 4294967296
                    require mem[_345 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 32 <= return_data.size
                    require mem[_345 + mem[_345 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 128] <= 4294967296 and mem[_345 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + (32 * mem[_345 + mem[_345 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 128]) + 32 <= return_data.size
                    mem[_345 + ceil32(return_data.size) + 128] = mem[_345 + mem[_345 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 128]
                    _2015 = mem[_345 + _1722 + 128]
                    t = 0
                    while t < 32 * _2015:
                        mem[t + _345 + ceil32(return_data.size) + 160] = mem[t + _345 + _1722 + 160]
                        t = t + 32
                        continue 
                    mem[64] = (32 * _2015) + _345 + ceil32(return_data.size) + 160
                    require mem[_345 + ceil32(return_data.size) + 128] - 1 < mem[_345 + ceil32(return_data.size) + 128]
                    if mem[(32 * mem[_345 + ceil32(return_data.size) + 128] - 1) + _345 + ceil32(return_data.size) + 160] <= s:
                        idx = idx + 1
                        s = s
                        continue 
                    idx = idx + 1
                    s = mem[(32 * mem[_345 + ceil32(return_data.size) + 128] - 1) + _345 + ceil32(return_data.size) + 160]
                    continue 
                if idx != 5:
                    _343 = mem[64]
                    mem[mem[64]] = 3
                    mem[64] = mem[64] + 128
                    require 0 < mem[_343]
                    mem[_343 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    require 1 < mem[_343]
                    mem[_343 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c
                    require 2 < mem[_343]
                    mem[_343 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    mem[_343 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_343 + 132] = 10^6 * sub_7d0b6809
                    mem[_343 + 164] = 64
                    mem[_343 + 196] = mem[_343]
                    t = 0
                    while t < 32 * mem[_343]:
                        mem[t + _343 + 228] = mem[t + _343 + 32]
                        t = t + 32
                        continue 
                    require ext_code.size(0)
                    staticcall 0x0.getAmountsOut(uint256 rg1, address[] rg2) with:
                            gas gas_remaining wei
                           args 10^6 * sub_7d0b6809, 64, mem[_343 + 196 len (32 * mem[_343]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_343 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _343 + ceil32(return_data.size) + 128
                    require return_data.size >= 32
                    _1718 = mem[_343 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32
                    require mem[_343 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 <= 4294967296
                    require mem[_343 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 32 <= return_data.size
                    require mem[_343 + mem[_343 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 128] <= 4294967296 and mem[_343 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + (32 * mem[_343 + mem[_343 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 128]) + 32 <= return_data.size
                    mem[_343 + ceil32(return_data.size) + 128] = mem[_343 + mem[_343 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 128]
                    _2013 = mem[_343 + _1718 + 128]
                    t = 0
                    while t < 32 * _2013:
                        mem[t + _343 + ceil32(return_data.size) + 160] = mem[t + _343 + _1718 + 160]
                        t = t + 32
                        continue 
                    mem[64] = (32 * _2013) + _343 + ceil32(return_data.size) + 160
                    require mem[_343 + ceil32(return_data.size) + 128] - 1 < mem[_343 + ceil32(return_data.size) + 128]
                    if mem[(32 * mem[_343 + ceil32(return_data.size) + 128] - 1) + _343 + ceil32(return_data.size) + 160] <= s:
                        idx = idx + 1
                        s = s
                        continue 
                    idx = idx + 1
                    s = mem[(32 * mem[_343 + ceil32(return_data.size) + 128] - 1) + _343 + ceil32(return_data.size) + 160]
                    continue 
                _410 = mem[64]
                mem[mem[64]] = 3
                mem[64] = mem[64] + 128
                require 0 < mem[_410]
                mem[_410 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                require 1 < mem[_410]
                mem[_410 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c
                require 2 < mem[_410]
                mem[_410 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                mem[_410 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_410 + 132] = 10^6 * sub_7d0b6809
                mem[_410 + 164] = 64
                mem[_410 + 196] = mem[_410]
                t = 0
                while t < 32 * mem[_410]:
                    mem[t + _410 + 228] = mem[t + _410 + 32]
                    t = t + 32
                    continue 
                require ext_code.size(0x53c153a0df7e050bbefbb70ee9632061f12795fb)
                staticcall 0x53c153a0df7e050bbefbb70ee9632061f12795fb.getAmountsOut(uint256 rg1, address[] rg2) with:
                        gas gas_remaining wei
                       args 10^6 * sub_7d0b6809, 64, mem[_410 + 196 len (32 * mem[_410]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_410 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _410 + ceil32(return_data.size) + 128
                require return_data.size >= 32
                _1720 = mem[_410 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32
                require mem[_410 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 <= 4294967296
                require mem[_410 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 32 <= return_data.size
                require mem[_410 + mem[_410 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 128] <= 4294967296 and mem[_410 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + (32 * mem[_410 + mem[_410 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 128]) + 32 <= return_data.size
                mem[_410 + ceil32(return_data.size) + 128] = mem[_410 + mem[_410 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 128]
                _2014 = mem[_410 + _1720 + 128]
                t = 0
                while t < 32 * _2014:
                    mem[t + _410 + ceil32(return_data.size) + 160] = mem[t + _410 + _1720 + 160]
                    t = t + 32
                    continue 
                mem[64] = (32 * _2014) + _410 + ceil32(return_data.size) + 160
                require mem[_410 + ceil32(return_data.size) + 128] - 1 < mem[_410 + ceil32(return_data.size) + 128]
                if mem[(32 * mem[_410 + ceil32(return_data.size) + 128] - 1) + _410 + ceil32(return_data.size) + 160] <= s:
                    idx = idx + 1
                    s = s
                    continue 
                idx = idx + 1
                s = mem[(32 * mem[_410 + ceil32(return_data.size) + 128] - 1) + _410 + ceil32(return_data.size) + 160]
                continue 
            if 5 == idx:
                if 3 == idx:
                    _353 = mem[64]
                    mem[mem[64]] = 3
                    mem[64] = mem[64] + 128
                    require 0 < mem[_353]
                    mem[_353 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    require 1 < mem[_353]
                    mem[_353 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c
                    require 2 < mem[_353]
                    mem[_353 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    mem[_353 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_353 + 132] = 10^6 * sub_7d0b6809
                    mem[_353 + 164] = 64
                    mem[_353 + 196] = mem[_353]
                    t = 0
                    while t < 32 * mem[_353]:
                        mem[t + _353 + 228] = mem[t + _353 + 32]
                        t = t + 32
                        continue 
                    require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                    staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c29.getAmountsOut(uint256 rg1, address[] rg2) with:
                            gas gas_remaining wei
                           args 10^6 * sub_7d0b6809, 64, mem[_353 + 196 len (32 * mem[_353]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_353 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _353 + ceil32(return_data.size) + 128
                    require return_data.size >= 32
                    _1738 = mem[_353 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32
                    require mem[_353 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 <= 4294967296
                    require mem[_353 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 32 <= return_data.size
                    require mem[_353 + mem[_353 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 128] <= 4294967296 and mem[_353 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + (32 * mem[_353 + mem[_353 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 128]) + 32 <= return_data.size
                    mem[_353 + ceil32(return_data.size) + 128] = mem[_353 + mem[_353 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 128]
                    _2023 = mem[_353 + _1738 + 128]
                    t = 0
                    while t < 32 * _2023:
                        mem[t + _353 + ceil32(return_data.size) + 160] = mem[t + _353 + _1738 + 160]
                        t = t + 32
                        continue 
                    mem[64] = (32 * _2023) + _353 + ceil32(return_data.size) + 160
                    require mem[_353 + ceil32(return_data.size) + 128] - 1 < mem[_353 + ceil32(return_data.size) + 128]
                    if mem[(32 * mem[_353 + ceil32(return_data.size) + 128] - 1) + _353 + ceil32(return_data.size) + 160] <= s:
                        idx = idx + 1
                        s = s
                        continue 
                    idx = idx + 1
                    s = mem[(32 * mem[_353 + ceil32(return_data.size) + 128] - 1) + _353 + ceil32(return_data.size) + 160]
                    continue 
                if 4 == idx:
                    _423 = mem[64]
                    mem[mem[64]] = 3
                    mem[64] = mem[64] + 128
                    require 0 < mem[_423]
                    mem[_423 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    require 1 < mem[_423]
                    mem[_423 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c
                    require 2 < mem[_423]
                    mem[_423 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    mem[_423 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_423 + 132] = 10^6 * sub_7d0b6809
                    mem[_423 + 164] = 64
                    mem[_423 + 196] = mem[_423]
                    t = 0
                    while t < 32 * mem[_423]:
                        mem[t + _423 + 228] = mem[t + _423 + 32]
                        t = t + 32
                        continue 
                    require ext_code.size(0x7b17021fcb7bc888641dc3bedfed3734fcaf2c87)
                    staticcall 0x7b17021fcb7bc888641dc3bedfed3734fcaf2c87.getAmountsOut(uint256 rg1, address[] rg2) with:
                            gas gas_remaining wei
                           args 10^6 * sub_7d0b6809, 64, mem[_423 + 196 len (32 * mem[_423]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_423 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _423 + ceil32(return_data.size) + 128
                    require return_data.size >= 32
                    _1736 = mem[_423 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32
                    require mem[_423 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 <= 4294967296
                    require mem[_423 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 32 <= return_data.size
                    require mem[_423 + mem[_423 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 128] <= 4294967296 and mem[_423 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + (32 * mem[_423 + mem[_423 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 128]) + 32 <= return_data.size
                    mem[_423 + ceil32(return_data.size) + 128] = mem[_423 + mem[_423 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 128]
                    _2022 = mem[_423 + _1736 + 128]
                    t = 0
                    while t < 32 * _2022:
                        mem[t + _423 + ceil32(return_data.size) + 160] = mem[t + _423 + _1736 + 160]
                        t = t + 32
                        continue 
                    mem[64] = (32 * _2022) + _423 + ceil32(return_data.size) + 160
                    require mem[_423 + ceil32(return_data.size) + 128] - 1 < mem[_423 + ceil32(return_data.size) + 128]
                    if mem[(32 * mem[_423 + ceil32(return_data.size) + 128] - 1) + _423 + ceil32(return_data.size) + 160] <= s:
                        idx = idx + 1
                        s = s
                        continue 
                    idx = idx + 1
                    s = mem[(32 * mem[_423 + ceil32(return_data.size) + 128] - 1) + _423 + ceil32(return_data.size) + 160]
                    continue 
                if idx != 5:
                    _421 = mem[64]
                    mem[mem[64]] = 3
                    mem[64] = mem[64] + 128
                    require 0 < mem[_421]
                    mem[_421 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    require 1 < mem[_421]
                    mem[_421 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c
                    require 2 < mem[_421]
                    mem[_421 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    mem[_421 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_421 + 132] = 10^6 * sub_7d0b6809
                    mem[_421 + 164] = 64
                    mem[_421 + 196] = mem[_421]
                    t = 0
                    while t < 32 * mem[_421]:
                        mem[t + _421 + 228] = mem[t + _421 + 32]
                        t = t + 32
                        continue 
                    require ext_code.size(0)
                    staticcall 0x0.getAmountsOut(uint256 rg1, address[] rg2) with:
                            gas gas_remaining wei
                           args 10^6 * sub_7d0b6809, 64, mem[_421 + 196 len (32 * mem[_421]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_421 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _421 + ceil32(return_data.size) + 128
                    require return_data.size >= 32
                    _1732 = mem[_421 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32
                    require mem[_421 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 <= 4294967296
                    require mem[_421 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 32 <= return_data.size
                    require mem[_421 + mem[_421 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 128] <= 4294967296 and mem[_421 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + (32 * mem[_421 + mem[_421 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 128]) + 32 <= return_data.size
                    mem[_421 + ceil32(return_data.size) + 128] = mem[_421 + mem[_421 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 128]
                    _2020 = mem[_421 + _1732 + 128]
                    t = 0
                    while t < 32 * _2020:
                        mem[t + _421 + ceil32(return_data.size) + 160] = mem[t + _421 + _1732 + 160]
                        t = t + 32
                        continue 
                    mem[64] = (32 * _2020) + _421 + ceil32(return_data.size) + 160
                    require mem[_421 + ceil32(return_data.size) + 128] - 1 < mem[_421 + ceil32(return_data.size) + 128]
                    if mem[(32 * mem[_421 + ceil32(return_data.size) + 128] - 1) + _421 + ceil32(return_data.size) + 160] <= s:
                        idx = idx + 1
                        s = s
                        continue 
                    idx = idx + 1
                    s = mem[(32 * mem[_421 + ceil32(return_data.size) + 128] - 1) + _421 + ceil32(return_data.size) + 160]
                    continue 
                _546 = mem[64]
                mem[mem[64]] = 3
                mem[64] = mem[64] + 128
                require 0 < mem[_546]
                mem[_546 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                require 1 < mem[_546]
                mem[_546 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c
                require 2 < mem[_546]
                mem[_546 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                mem[_546 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_546 + 132] = 10^6 * sub_7d0b6809
                mem[_546 + 164] = 64
                mem[_546 + 196] = mem[_546]
                t = 0
                while t < 32 * mem[_546]:
                    mem[t + _546 + 228] = mem[t + _546 + 32]
                    t = t + 32
                    continue 
                require ext_code.size(0x53c153a0df7e050bbefbb70ee9632061f12795fb)
                staticcall 0x53c153a0df7e050bbefbb70ee9632061f12795fb.getAmountsOut(uint256 rg1, address[] rg2) with:
                        gas gas_remaining wei
                       args 10^6 * sub_7d0b6809, 64, mem[_546 + 196 len (32 * mem[_546]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_546 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _546 + ceil32(return_data.size) + 128
                require return_data.size >= 32
                _1734 = mem[_546 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32
                require mem[_546 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 <= 4294967296
                require mem[_546 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 32 <= return_data.size
                require mem[_546 + mem[_546 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 128] <= 4294967296 and mem[_546 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + (32 * mem[_546 + mem[_546 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 128]) + 32 <= return_data.size
                mem[_546 + ceil32(return_data.size) + 128] = mem[_546 + mem[_546 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 128]
                _2021 = mem[_546 + _1734 + 128]
                t = 0
                while t < 32 * _2021:
                    mem[t + _546 + ceil32(return_data.size) + 160] = mem[t + _546 + _1734 + 160]
                    t = t + 32
                    continue 
                mem[64] = (32 * _2021) + _546 + ceil32(return_data.size) + 160
                require mem[_546 + ceil32(return_data.size) + 128] - 1 < mem[_546 + ceil32(return_data.size) + 128]
                if mem[(32 * mem[_546 + ceil32(return_data.size) + 128] - 1) + _546 + ceil32(return_data.size) + 160] <= s:
                    idx = idx + 1
                    s = s
                    continue 
                idx = idx + 1
                s = mem[(32 * mem[_546 + ceil32(return_data.size) + 128] - 1) + _546 + ceil32(return_data.size) + 160]
                continue 
            if 6 == idx:
                _281 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                require 0 < mem[_281]
                mem[_281 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                require 1 < mem[_281]
                mem[_281 + 64] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                mem[_281 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_281 + 100] = 10^6 * sub_7d0b6809
                mem[_281 + 132] = 64
                mem[_281 + 164] = mem[_281]
                t = 0
                while t < 32 * mem[_281]:
                    mem[t + _281 + 196] = mem[t + _281 + 32]
                    t = t + 32
                    continue 
                require ext_code.size(0x53c153a0df7e050bbefbb70ee9632061f12795fb)
                staticcall 0x53c153a0df7e050bbefbb70ee9632061f12795fb.getAmountsOut(uint256 rg1, address[] rg2) with:
                        gas gas_remaining wei
                       args 10^6 * sub_7d0b6809, 64, mem[_281 + 164 len (32 * mem[_281]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_281 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _281 + ceil32(return_data.size) + 96
                require return_data.size >= 32
                _1730 = mem[_281 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32
                require mem[_281 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 <= 4294967296
                require mem[_281 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 32 <= return_data.size
                require mem[_281 + mem[_281 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 96] <= 4294967296 and mem[_281 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + (32 * mem[_281 + mem[_281 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 96]) + 32 <= return_data.size
                mem[_281 + ceil32(return_data.size) + 96] = mem[_281 + mem[_281 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 96]
                _2019 = mem[_281 + _1730 + 96]
                t = 0
                while t < 32 * _2019:
                    mem[t + _281 + ceil32(return_data.size) + 128] = mem[t + _281 + _1730 + 128]
                    t = t + 32
                    continue 
                mem[64] = (32 * _2019) + _281 + ceil32(return_data.size) + 128
                require mem[_281 + ceil32(return_data.size) + 96] - 1 < mem[_281 + ceil32(return_data.size) + 96]
                if mem[(32 * mem[_281 + ceil32(return_data.size) + 96] - 1) + _281 + ceil32(return_data.size) + 128] <= s:
                    idx = idx + 1
                    s = s
                    continue 
                idx = idx + 1
                s = mem[(32 * mem[_281 + ceil32(return_data.size) + 96] - 1) + _281 + ceil32(return_data.size) + 128]
                continue 
            if idx != 7:
                if 10^6 * sub_7d0b6809 <= s:
                    idx = idx + 1
                    s = s
                    continue 
                idx = idx + 1
                s = 10^6 * sub_7d0b6809
                continue 
            _350 = mem[0]
            _416 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            require 0 < mem[_416]
            mem[_416 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
            require 1 < mem[_416]
            mem[_416 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c
            mem[_416 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[_416 + 100] = 10^6 * sub_7d0b6809
            mem[_416 + 132] = 64
            mem[_416 + 164] = mem[_416]
            t = 0
            while t < 32 * mem[_416]:
                mem[t + _416 + 196] = mem[t + _416 + 32]
                t = t + 32
                continue 
            require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
            staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c29.getAmountsOut(uint256 rg1, address[] rg2) with:
                    gas gas_remaining wei
                   args 10^6 * sub_7d0b6809, 64, mem[_416 + 164 len (32 * mem[_416]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[_416 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = _416 + ceil32(return_data.size) + 96
            require return_data.size >= 32
            _1726 = mem[_416 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32
            require mem[_416 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 <= 4294967296
            require mem[_416 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 32 <= return_data.size
            require mem[_416 + mem[_416 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 96] <= 4294967296 and mem[_416 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + (32 * mem[_416 + mem[_416 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 96]) + 32 <= return_data.size
            mem[_416 + ceil32(return_data.size) + 96] = mem[_416 + mem[_416 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 96]
            _2017 = mem[_416 + _1726 + 96]
            t = 0
            while t < 32 * _2017:
                mem[t + _416 + ceil32(return_data.size) + 128] = mem[t + _416 + _1726 + 128]
                t = t + 32
                continue 
            require mem[_416 + ceil32(return_data.size) + 96] - 1 < mem[_416 + ceil32(return_data.size) + 96]
            _5385 = mem[(32 * mem[_416 + ceil32(return_data.size) + 96] - 1) + _416 + ceil32(return_data.size) + 128]
            mem[(32 * _2017) + _416 + ceil32(return_data.size) + 128] = 2
            mem[0] = _350
            mem[(32 * _2017) + _416 + ceil32(return_data.size) + 160] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c
            mem[(32 * _2017) + _416 + ceil32(return_data.size) + 192] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
            mem[(32 * _2017) + _416 + ceil32(return_data.size) + 224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[(32 * _2017) + _416 + ceil32(return_data.size) + 228] = _5385
            mem[(32 * _2017) + _416 + ceil32(return_data.size) + 260] = 64
            mem[(32 * _2017) + _416 + ceil32(return_data.size) + 292] = 2
            t = 0
            while t < 64:
                mem[t + (32 * _2017) + _416 + ceil32(return_data.size) + 324] = mem[t + (32 * _2017) + _416 + ceil32(return_data.size) + 160]
                t = t + 32
                continue 
            require ext_code.size(0x1b02da8cb0d097eb8d57a175b88c7d8b47997506)
            staticcall 0x1b02da8cb0d097eb8d57a175b88c7d8b47997506.getAmountsOut(uint256 rg1, address[] rg2) with:
                    gas gas_remaining wei
                   args _5385, Array(len=2, data=mem[(32 * _2017) + _416 + ceil32(return_data.size) + 324 len 64])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _2017) + _416 + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * _2017) + _416 + (2 * ceil32(return_data.size)) + 224
            require return_data.size >= 32
            _7388 = mem[(32 * _2017) + _416 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _5385) >> 32
            require mem[(32 * _2017) + _416 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _5385) >> 32 <= 4294967296
            require mem[(32 * _2017) + _416 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _5385) >> 32 + 32 <= return_data.size
            require mem[(32 * _2017) + _416 + ceil32(return_data.size) + mem[(32 * _2017) + _416 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _5385) >> 32 + 224] <= 4294967296 and mem[(32 * _2017) + _416 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _5385) >> 32 + (32 * mem[(32 * _2017) + _416 + ceil32(return_data.size) + mem[(32 * _2017) + _416 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _5385) >> 32 + 224]) + 32 <= return_data.size
            mem[(32 * _2017) + _416 + (2 * ceil32(return_data.size)) + 224] = mem[(32 * _2017) + _416 + ceil32(return_data.size) + mem[(32 * _2017) + _416 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _5385) >> 32 + 224]
            _7488 = mem[(32 * _2017) + _416 + ceil32(return_data.size) + _7388 + 224]
            t = 0
            while t < 32 * _7488:
                mem[t + (32 * _2017) + _416 + (2 * ceil32(return_data.size)) + 256] = mem[t + (32 * _2017) + _416 + ceil32(return_data.size) + _7388 + 256]
                t = t + 32
                continue 
            mem[64] = (32 * _7488) + (32 * _2017) + _416 + (2 * ceil32(return_data.size)) + 256
            require mem[(32 * _2017) + _416 + (2 * ceil32(return_data.size)) + 224] - 1 < mem[(32 * _2017) + _416 + (2 * ceil32(return_data.size)) + 224]
            if mem[(32 * mem[(32 * _2017) + _416 + (2 * ceil32(return_data.size)) + 224] - 1) + (32 * _2017) + _416 + (2 * ceil32(return_data.size)) + 256] <= s:
                idx = idx + 1
                s = s
                continue 
            idx = idx + 1
            s = mem[(32 * mem[(32 * _2017) + _416 + (2 * ceil32(return_data.size)) + 224] - 1) + (32 * _2017) + _416 + (2 * ceil32(return_data.size)) + 256]
            continue 
        idx = 0
        t = 0
        while idx < 8:
            if not idx:
                mem[mem[64] + 4] = 1
                mem[mem[64] + 36] = 0
                mem[mem[64] + 68] = s
                require ext_code.size(0x27e611fd27b276acbd5ffd632e5eaebec9761e40)
                staticcall 0x27e611fd27b276acbd5ffd632e5eaebec9761e40.get_dy(int128 rg1, int128 rg2, uint256 rg3) with:
                        gas gas_remaining wei
                       args 1, 0, s
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
                mem[mem[64] + 4] = 2
                mem[mem[64] + 36] = 1
                mem[mem[64] + 68] = s
                require ext_code.size(0x83e5f18da720119ff363cf63417628eb0e9fd523)
                staticcall 0x83e5f18da720119ff363cf63417628eb0e9fd523.get_dy(int128 rg1, int128 rg2, uint256 rg3) with:
                        gas gas_remaining wei
                       args 2, 1, s
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
                _1852 = mem[64]
                mem[mem[64]] = 4
                mem[64] = mem[64] + 160
                require 0 < mem[_1852]
                mem[_1852 + 32] = 0x8d11ec38a3eb5e956b052f67da8bdc9bef8abf
                require 1 < mem[_1852]
                mem[_1852 + 64] = 0x5cc61a78f164885776aa610fb0fe1257df78e59b
                require 2 < mem[_1852]
                mem[_1852 + 96] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c
                require 3 < mem[_1852]
                mem[_1852 + 128] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                mem[_1852 + 160] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_1852 + 164] = s
                mem[_1852 + 196] = 64
                mem[_1852 + 228] = mem[_1852]
                u = 0
                while u < 32 * mem[_1852]:
                    mem[u + _1852 + 260] = mem[u + _1852 + 32]
                    u = u + 32
                    continue 
                require ext_code.size(0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52)
                staticcall 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52.getAmountsOut(uint256 rg1, address[] rg2) with:
                        gas gas_remaining wei
                       args s, 64, mem[_1852 + 228 len (32 * mem[_1852]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_1852 + 160 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _1852 + ceil32(return_data.size) + 160
                require return_data.size >= 32
                _5580 = mem[_1852 + 160 len 4], Mask(224, 32, s) >> 32
                require mem[_1852 + 160 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                require mem[_1852 + 160 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                require mem[_1852 + mem[_1852 + 160 len 4], Mask(224, 32, s) >> 32 + 160] <= 4294967296 and mem[_1852 + 160 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_1852 + mem[_1852 + 160 len 4], Mask(224, 32, s) >> 32 + 160]) + 32 <= return_data.size
                mem[_1852 + ceil32(return_data.size) + 160] = mem[_1852 + mem[_1852 + 160 len 4], Mask(224, 32, s) >> 32 + 160]
                _5936 = mem[_1852 + _5580 + 160]
                s = 0
                while s < 32 * _5936:
                    mem[s + _1852 + ceil32(return_data.size) + 192] = mem[s + _1852 + _5580 + 192]
                    s = s + 32
                    continue 
                mem[64] = (32 * _5936) + _1852 + ceil32(return_data.size) + 192
                require mem[_1852 + ceil32(return_data.size) + 160] - 1 < mem[_1852 + ceil32(return_data.size) + 160]
                if mem[(32 * mem[_1852 + ceil32(return_data.size) + 160] - 1) + _1852 + ceil32(return_data.size) + 192] <= t:
                    idx = idx + 1
                    t = t
                    continue 
                idx = idx + 1
                t = mem[(32 * mem[_1852 + ceil32(return_data.size) + 160] - 1) + _1852 + ceil32(return_data.size) + 192]
                continue 
            if 3 == idx:
                _2340 = mem[64]
                mem[mem[64]] = 3
                mem[64] = mem[64] + 128
                require 0 < mem[_2340]
                mem[_2340 + 32] = 0x8d11ec38a3eb5e956b052f67da8bdc9bef8abf
                require 1 < mem[_2340]
                mem[_2340 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c
                require 2 < mem[_2340]
                mem[_2340 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                mem[_2340 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_2340 + 132] = s
                mem[_2340 + 164] = 64
                mem[_2340 + 196] = mem[_2340]
                u = 0
                while u < 32 * mem[_2340]:
                    mem[u + _2340 + 228] = mem[u + _2340 + 32]
                    u = u + 32
                    continue 
                require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c29.getAmountsOut(uint256 rg1, address[] rg2) with:
                        gas gas_remaining wei
                       args s, 64, mem[_2340 + 196 len (32 * mem[_2340]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_2340 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _2340 + ceil32(return_data.size) + 128
                require return_data.size >= 32
                _5556 = mem[_2340 + 128 len 4], Mask(224, 32, s) >> 32
                require mem[_2340 + 128 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                require mem[_2340 + 128 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                require mem[_2340 + mem[_2340 + 128 len 4], Mask(224, 32, s) >> 32 + 128] <= 4294967296 and mem[_2340 + 128 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_2340 + mem[_2340 + 128 len 4], Mask(224, 32, s) >> 32 + 128]) + 32 <= return_data.size
                mem[_2340 + ceil32(return_data.size) + 128] = mem[_2340 + mem[_2340 + 128 len 4], Mask(224, 32, s) >> 32 + 128]
                _5924 = mem[_2340 + _5556 + 128]
                s = 0
                while s < 32 * _5924:
                    mem[s + _2340 + ceil32(return_data.size) + 160] = mem[s + _2340 + _5556 + 160]
                    s = s + 32
                    continue 
                mem[64] = (32 * _5924) + _2340 + ceil32(return_data.size) + 160
                require mem[_2340 + ceil32(return_data.size) + 128] - 1 < mem[_2340 + ceil32(return_data.size) + 128]
                if mem[(32 * mem[_2340 + ceil32(return_data.size) + 128] - 1) + _2340 + ceil32(return_data.size) + 160] <= t:
                    idx = idx + 1
                    t = t
                    continue 
                idx = idx + 1
                t = mem[(32 * mem[_2340 + ceil32(return_data.size) + 128] - 1) + _2340 + ceil32(return_data.size) + 160]
                continue 
            if 4 == idx:
                if 3 == idx:
                    _2431 = mem[64]
                    mem[mem[64]] = 3
                    mem[64] = mem[64] + 128
                    require 0 < mem[_2431]
                    mem[_2431 + 32] = 0x8d11ec38a3eb5e956b052f67da8bdc9bef8abf
                    require 1 < mem[_2431]
                    mem[_2431 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c
                    require 2 < mem[_2431]
                    mem[_2431 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    mem[_2431 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_2431 + 132] = s
                    mem[_2431 + 164] = 64
                    mem[_2431 + 196] = mem[_2431]
                    u = 0
                    while u < 32 * mem[_2431]:
                        mem[u + _2431 + 228] = mem[u + _2431 + 32]
                        u = u + 32
                        continue 
                    require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                    staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c29.getAmountsOut(uint256 rg1, address[] rg2) with:
                            gas gas_remaining wei
                           args s, 64, mem[_2431 + 196 len (32 * mem[_2431]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_2431 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _2431 + ceil32(return_data.size) + 128
                    require return_data.size >= 32
                    _5564 = mem[_2431 + 128 len 4], Mask(224, 32, s) >> 32
                    require mem[_2431 + 128 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                    require mem[_2431 + 128 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                    require mem[_2431 + mem[_2431 + 128 len 4], Mask(224, 32, s) >> 32 + 128] <= 4294967296 and mem[_2431 + 128 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_2431 + mem[_2431 + 128 len 4], Mask(224, 32, s) >> 32 + 128]) + 32 <= return_data.size
                    mem[_2431 + ceil32(return_data.size) + 128] = mem[_2431 + mem[_2431 + 128 len 4], Mask(224, 32, s) >> 32 + 128]
                    _5928 = mem[_2431 + _5564 + 128]
                    s = 0
                    while s < 32 * _5928:
                        mem[s + _2431 + ceil32(return_data.size) + 160] = mem[s + _2431 + _5564 + 160]
                        s = s + 32
                        continue 
                    mem[64] = (32 * _5928) + _2431 + ceil32(return_data.size) + 160
                    require mem[_2431 + ceil32(return_data.size) + 128] - 1 < mem[_2431 + ceil32(return_data.size) + 128]
                    if mem[(32 * mem[_2431 + ceil32(return_data.size) + 128] - 1) + _2431 + ceil32(return_data.size) + 160] <= t:
                        idx = idx + 1
                        t = t
                        continue 
                    idx = idx + 1
                    t = mem[(32 * mem[_2431 + ceil32(return_data.size) + 128] - 1) + _2431 + ceil32(return_data.size) + 160]
                    continue 
                if 4 == idx:
                    _2543 = mem[64]
                    mem[mem[64]] = 3
                    mem[64] = mem[64] + 128
                    require 0 < mem[_2543]
                    mem[_2543 + 32] = 0x8d11ec38a3eb5e956b052f67da8bdc9bef8abf
                    require 1 < mem[_2543]
                    mem[_2543 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c
                    require 2 < mem[_2543]
                    mem[_2543 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    mem[_2543 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_2543 + 132] = s
                    mem[_2543 + 164] = 64
                    mem[_2543 + 196] = mem[_2543]
                    u = 0
                    while u < 32 * mem[_2543]:
                        mem[u + _2543 + 228] = mem[u + _2543 + 32]
                        u = u + 32
                        continue 
                    require ext_code.size(0x7b17021fcb7bc888641dc3bedfed3734fcaf2c87)
                    staticcall 0x7b17021fcb7bc888641dc3bedfed3734fcaf2c87.getAmountsOut(uint256 rg1, address[] rg2) with:
                            gas gas_remaining wei
                           args s, 64, mem[_2543 + 196 len (32 * mem[_2543]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_2543 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _2543 + ceil32(return_data.size) + 128
                    require return_data.size >= 32
                    _5562 = mem[_2543 + 128 len 4], Mask(224, 32, s) >> 32
                    require mem[_2543 + 128 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                    require mem[_2543 + 128 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                    require mem[_2543 + mem[_2543 + 128 len 4], Mask(224, 32, s) >> 32 + 128] <= 4294967296 and mem[_2543 + 128 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_2543 + mem[_2543 + 128 len 4], Mask(224, 32, s) >> 32 + 128]) + 32 <= return_data.size
                    mem[_2543 + ceil32(return_data.size) + 128] = mem[_2543 + mem[_2543 + 128 len 4], Mask(224, 32, s) >> 32 + 128]
                    _5927 = mem[_2543 + _5562 + 128]
                    s = 0
                    while s < 32 * _5927:
                        mem[s + _2543 + ceil32(return_data.size) + 160] = mem[s + _2543 + _5562 + 160]
                        s = s + 32
                        continue 
                    mem[64] = (32 * _5927) + _2543 + ceil32(return_data.size) + 160
                    require mem[_2543 + ceil32(return_data.size) + 128] - 1 < mem[_2543 + ceil32(return_data.size) + 128]
                    if mem[(32 * mem[_2543 + ceil32(return_data.size) + 128] - 1) + _2543 + ceil32(return_data.size) + 160] <= t:
                        idx = idx + 1
                        t = t
                        continue 
                    idx = idx + 1
                    t = mem[(32 * mem[_2543 + ceil32(return_data.size) + 128] - 1) + _2543 + ceil32(return_data.size) + 160]
                    continue 
                if idx != 5:
                    _2541 = mem[64]
                    mem[mem[64]] = 3
                    mem[64] = mem[64] + 128
                    require 0 < mem[_2541]
                    mem[_2541 + 32] = 0x8d11ec38a3eb5e956b052f67da8bdc9bef8abf
                    require 1 < mem[_2541]
                    mem[_2541 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c
                    require 2 < mem[_2541]
                    mem[_2541 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    mem[_2541 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_2541 + 132] = s
                    mem[_2541 + 164] = 64
                    mem[_2541 + 196] = mem[_2541]
                    u = 0
                    while u < 32 * mem[_2541]:
                        mem[u + _2541 + 228] = mem[u + _2541 + 32]
                        u = u + 32
                        continue 
                    require ext_code.size(0)
                    staticcall 0x0.getAmountsOut(uint256 rg1, address[] rg2) with:
                            gas gas_remaining wei
                           args s, 64, mem[_2541 + 196 len (32 * mem[_2541]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_2541 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _2541 + ceil32(return_data.size) + 128
                    require return_data.size >= 32
                    _5558 = mem[_2541 + 128 len 4], Mask(224, 32, s) >> 32
                    require mem[_2541 + 128 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                    require mem[_2541 + 128 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                    require mem[_2541 + mem[_2541 + 128 len 4], Mask(224, 32, s) >> 32 + 128] <= 4294967296 and mem[_2541 + 128 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_2541 + mem[_2541 + 128 len 4], Mask(224, 32, s) >> 32 + 128]) + 32 <= return_data.size
                    mem[_2541 + ceil32(return_data.size) + 128] = mem[_2541 + mem[_2541 + 128 len 4], Mask(224, 32, s) >> 32 + 128]
                    _5925 = mem[_2541 + _5558 + 128]
                    s = 0
                    while s < 32 * _5925:
                        mem[s + _2541 + ceil32(return_data.size) + 160] = mem[s + _2541 + _5558 + 160]
                        s = s + 32
                        continue 
                    mem[64] = (32 * _5925) + _2541 + ceil32(return_data.size) + 160
                    require mem[_2541 + ceil32(return_data.size) + 128] - 1 < mem[_2541 + ceil32(return_data.size) + 128]
                    if mem[(32 * mem[_2541 + ceil32(return_data.size) + 128] - 1) + _2541 + ceil32(return_data.size) + 160] <= t:
                        idx = idx + 1
                        t = t
                        continue 
                    idx = idx + 1
                    t = mem[(32 * mem[_2541 + ceil32(return_data.size) + 128] - 1) + _2541 + ceil32(return_data.size) + 160]
                    continue 
                _2650 = mem[64]
                mem[mem[64]] = 3
                mem[64] = mem[64] + 128
                require 0 < mem[_2650]
                mem[_2650 + 32] = 0x8d11ec38a3eb5e956b052f67da8bdc9bef8abf
                require 1 < mem[_2650]
                mem[_2650 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c
                require 2 < mem[_2650]
                mem[_2650 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                mem[_2650 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_2650 + 132] = s
                mem[_2650 + 164] = 64
                mem[_2650 + 196] = mem[_2650]
                u = 0
                while u < 32 * mem[_2650]:
                    mem[u + _2650 + 228] = mem[u + _2650 + 32]
                    u = u + 32
                    continue 
                require ext_code.size(0x53c153a0df7e050bbefbb70ee9632061f12795fb)
                staticcall 0x53c153a0df7e050bbefbb70ee9632061f12795fb.getAmountsOut(uint256 rg1, address[] rg2) with:
                        gas gas_remaining wei
                       args s, 64, mem[_2650 + 196 len (32 * mem[_2650]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_2650 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _2650 + ceil32(return_data.size) + 128
                require return_data.size >= 32
                _5560 = mem[_2650 + 128 len 4], Mask(224, 32, s) >> 32
                require mem[_2650 + 128 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                require mem[_2650 + 128 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                require mem[_2650 + mem[_2650 + 128 len 4], Mask(224, 32, s) >> 32 + 128] <= 4294967296 and mem[_2650 + 128 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_2650 + mem[_2650 + 128 len 4], Mask(224, 32, s) >> 32 + 128]) + 32 <= return_data.size
                mem[_2650 + ceil32(return_data.size) + 128] = mem[_2650 + mem[_2650 + 128 len 4], Mask(224, 32, s) >> 32 + 128]
                _5926 = mem[_2650 + _5560 + 128]
                s = 0
                while s < 32 * _5926:
                    mem[s + _2650 + ceil32(return_data.size) + 160] = mem[s + _2650 + _5560 + 160]
                    s = s + 32
                    continue 
                mem[64] = (32 * _5926) + _2650 + ceil32(return_data.size) + 160
                require mem[_2650 + ceil32(return_data.size) + 128] - 1 < mem[_2650 + ceil32(return_data.size) + 128]
                if mem[(32 * mem[_2650 + ceil32(return_data.size) + 128] - 1) + _2650 + ceil32(return_data.size) + 160] <= t:
                    idx = idx + 1
                    t = t
                    continue 
                idx = idx + 1
                t = mem[(32 * mem[_2650 + ceil32(return_data.size) + 128] - 1) + _2650 + ceil32(return_data.size) + 160]
                continue 
            if 5 == idx:
                if 3 == idx:
                    _2551 = mem[64]
                    mem[mem[64]] = 3
                    mem[64] = mem[64] + 128
                    require 0 < mem[_2551]
                    mem[_2551 + 32] = 0x8d11ec38a3eb5e956b052f67da8bdc9bef8abf
                    require 1 < mem[_2551]
                    mem[_2551 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c
                    require 2 < mem[_2551]
                    mem[_2551 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    mem[_2551 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_2551 + 132] = s
                    mem[_2551 + 164] = 64
                    mem[_2551 + 196] = mem[_2551]
                    u = 0
                    while u < 32 * mem[_2551]:
                        mem[u + _2551 + 228] = mem[u + _2551 + 32]
                        u = u + 32
                        continue 
                    require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                    staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c29.getAmountsOut(uint256 rg1, address[] rg2) with:
                            gas gas_remaining wei
                           args s, 64, mem[_2551 + 196 len (32 * mem[_2551]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_2551 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _2551 + ceil32(return_data.size) + 128
                    require return_data.size >= 32
                    _5578 = mem[_2551 + 128 len 4], Mask(224, 32, s) >> 32
                    require mem[_2551 + 128 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                    require mem[_2551 + 128 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                    require mem[_2551 + mem[_2551 + 128 len 4], Mask(224, 32, s) >> 32 + 128] <= 4294967296 and mem[_2551 + 128 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_2551 + mem[_2551 + 128 len 4], Mask(224, 32, s) >> 32 + 128]) + 32 <= return_data.size
                    mem[_2551 + ceil32(return_data.size) + 128] = mem[_2551 + mem[_2551 + 128 len 4], Mask(224, 32, s) >> 32 + 128]
                    _5935 = mem[_2551 + _5578 + 128]
                    s = 0
                    while s < 32 * _5935:
                        mem[s + _2551 + ceil32(return_data.size) + 160] = mem[s + _2551 + _5578 + 160]
                        s = s + 32
                        continue 
                    mem[64] = (32 * _5935) + _2551 + ceil32(return_data.size) + 160
                    require mem[_2551 + ceil32(return_data.size) + 128] - 1 < mem[_2551 + ceil32(return_data.size) + 128]
                    if mem[(32 * mem[_2551 + ceil32(return_data.size) + 128] - 1) + _2551 + ceil32(return_data.size) + 160] <= t:
                        idx = idx + 1
                        t = t
                        continue 
                    idx = idx + 1
                    t = mem[(32 * mem[_2551 + ceil32(return_data.size) + 128] - 1) + _2551 + ceil32(return_data.size) + 160]
                    continue 
                if 4 == idx:
                    _2663 = mem[64]
                    mem[mem[64]] = 3
                    mem[64] = mem[64] + 128
                    require 0 < mem[_2663]
                    mem[_2663 + 32] = 0x8d11ec38a3eb5e956b052f67da8bdc9bef8abf
                    require 1 < mem[_2663]
                    mem[_2663 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c
                    require 2 < mem[_2663]
                    mem[_2663 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    mem[_2663 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_2663 + 132] = s
                    mem[_2663 + 164] = 64
                    mem[_2663 + 196] = mem[_2663]
                    u = 0
                    while u < 32 * mem[_2663]:
                        mem[u + _2663 + 228] = mem[u + _2663 + 32]
                        u = u + 32
                        continue 
                    require ext_code.size(0x7b17021fcb7bc888641dc3bedfed3734fcaf2c87)
                    staticcall 0x7b17021fcb7bc888641dc3bedfed3734fcaf2c87.getAmountsOut(uint256 rg1, address[] rg2) with:
                            gas gas_remaining wei
                           args s, 64, mem[_2663 + 196 len (32 * mem[_2663]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_2663 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _2663 + ceil32(return_data.size) + 128
                    require return_data.size >= 32
                    _5576 = mem[_2663 + 128 len 4], Mask(224, 32, s) >> 32
                    require mem[_2663 + 128 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                    require mem[_2663 + 128 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                    require mem[_2663 + mem[_2663 + 128 len 4], Mask(224, 32, s) >> 32 + 128] <= 4294967296 and mem[_2663 + 128 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_2663 + mem[_2663 + 128 len 4], Mask(224, 32, s) >> 32 + 128]) + 32 <= return_data.size
                    mem[_2663 + ceil32(return_data.size) + 128] = mem[_2663 + mem[_2663 + 128 len 4], Mask(224, 32, s) >> 32 + 128]
                    _5934 = mem[_2663 + _5576 + 128]
                    s = 0
                    while s < 32 * _5934:
                        mem[s + _2663 + ceil32(return_data.size) + 160] = mem[s + _2663 + _5576 + 160]
                        s = s + 32
                        continue 
                    mem[64] = (32 * _5934) + _2663 + ceil32(return_data.size) + 160
                    require mem[_2663 + ceil32(return_data.size) + 128] - 1 < mem[_2663 + ceil32(return_data.size) + 128]
                    if mem[(32 * mem[_2663 + ceil32(return_data.size) + 128] - 1) + _2663 + ceil32(return_data.size) + 160] <= t:
                        idx = idx + 1
                        t = t
                        continue 
                    idx = idx + 1
                    t = mem[(32 * mem[_2663 + ceil32(return_data.size) + 128] - 1) + _2663 + ceil32(return_data.size) + 160]
                    continue 
                if idx != 5:
                    _2661 = mem[64]
                    mem[mem[64]] = 3
                    mem[64] = mem[64] + 128
                    require 0 < mem[_2661]
                    mem[_2661 + 32] = 0x8d11ec38a3eb5e956b052f67da8bdc9bef8abf
                    require 1 < mem[_2661]
                    mem[_2661 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c
                    require 2 < mem[_2661]
                    mem[_2661 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    mem[_2661 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_2661 + 132] = s
                    mem[_2661 + 164] = 64
                    mem[_2661 + 196] = mem[_2661]
                    u = 0
                    while u < 32 * mem[_2661]:
                        mem[u + _2661 + 228] = mem[u + _2661 + 32]
                        u = u + 32
                        continue 
                    require ext_code.size(0)
                    staticcall 0x0.getAmountsOut(uint256 rg1, address[] rg2) with:
                            gas gas_remaining wei
                           args s, 64, mem[_2661 + 196 len (32 * mem[_2661]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_2661 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _2661 + ceil32(return_data.size) + 128
                    require return_data.size >= 32
                    _5572 = mem[_2661 + 128 len 4], Mask(224, 32, s) >> 32
                    require mem[_2661 + 128 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                    require mem[_2661 + 128 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                    require mem[_2661 + mem[_2661 + 128 len 4], Mask(224, 32, s) >> 32 + 128] <= 4294967296 and mem[_2661 + 128 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_2661 + mem[_2661 + 128 len 4], Mask(224, 32, s) >> 32 + 128]) + 32 <= return_data.size
                    mem[_2661 + ceil32(return_data.size) + 128] = mem[_2661 + mem[_2661 + 128 len 4], Mask(224, 32, s) >> 32 + 128]
                    _5932 = mem[_2661 + _5572 + 128]
                    s = 0
                    while s < 32 * _5932:
                        mem[s + _2661 + ceil32(return_data.size) + 160] = mem[s + _2661 + _5572 + 160]
                        s = s + 32
                        continue 
                    mem[64] = (32 * _5932) + _2661 + ceil32(return_data.size) + 160
                    require mem[_2661 + ceil32(return_data.size) + 128] - 1 < mem[_2661 + ceil32(return_data.size) + 128]
                    if mem[(32 * mem[_2661 + ceil32(return_data.size) + 128] - 1) + _2661 + ceil32(return_data.size) + 160] <= t:
                        idx = idx + 1
                        t = t
                        continue 
                    idx = idx + 1
                    t = mem[(32 * mem[_2661 + ceil32(return_data.size) + 128] - 1) + _2661 + ceil32(return_data.size) + 160]
                    continue 
                _2908 = mem[64]
                mem[mem[64]] = 3
                mem[64] = mem[64] + 128
                require 0 < mem[_2908]
                mem[_2908 + 32] = 0x8d11ec38a3eb5e956b052f67da8bdc9bef8abf
                require 1 < mem[_2908]
                mem[_2908 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c
                require 2 < mem[_2908]
                mem[_2908 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                mem[_2908 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_2908 + 132] = s
                mem[_2908 + 164] = 64
                mem[_2908 + 196] = mem[_2908]
                u = 0
                while u < 32 * mem[_2908]:
                    mem[u + _2908 + 228] = mem[u + _2908 + 32]
                    u = u + 32
                    continue 
                require ext_code.size(0x53c153a0df7e050bbefbb70ee9632061f12795fb)
                staticcall 0x53c153a0df7e050bbefbb70ee9632061f12795fb.getAmountsOut(uint256 rg1, address[] rg2) with:
                        gas gas_remaining wei
                       args s, 64, mem[_2908 + 196 len (32 * mem[_2908]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_2908 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _2908 + ceil32(return_data.size) + 128
                require return_data.size >= 32
                _5574 = mem[_2908 + 128 len 4], Mask(224, 32, s) >> 32
                require mem[_2908 + 128 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                require mem[_2908 + 128 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                require mem[_2908 + mem[_2908 + 128 len 4], Mask(224, 32, s) >> 32 + 128] <= 4294967296 and mem[_2908 + 128 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_2908 + mem[_2908 + 128 len 4], Mask(224, 32, s) >> 32 + 128]) + 32 <= return_data.size
                mem[_2908 + ceil32(return_data.size) + 128] = mem[_2908 + mem[_2908 + 128 len 4], Mask(224, 32, s) >> 32 + 128]
                _5933 = mem[_2908 + _5574 + 128]
                s = 0
                while s < 32 * _5933:
                    mem[s + _2908 + ceil32(return_data.size) + 160] = mem[s + _2908 + _5574 + 160]
                    s = s + 32
                    continue 
                mem[64] = (32 * _5933) + _2908 + ceil32(return_data.size) + 160
                require mem[_2908 + ceil32(return_data.size) + 128] - 1 < mem[_2908 + ceil32(return_data.size) + 128]
                if mem[(32 * mem[_2908 + ceil32(return_data.size) + 128] - 1) + _2908 + ceil32(return_data.size) + 160] <= t:
                    idx = idx + 1
                    t = t
                    continue 
                idx = idx + 1
                t = mem[(32 * mem[_2908 + ceil32(return_data.size) + 128] - 1) + _2908 + ceil32(return_data.size) + 160]
                continue 
            if 6 == idx:
                _2433 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                require 0 < mem[_2433]
                mem[_2433 + 32] = 0x8d11ec38a3eb5e956b052f67da8bdc9bef8abf
                require 1 < mem[_2433]
                mem[_2433 + 64] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                mem[_2433 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_2433 + 100] = s
                mem[_2433 + 132] = 64
                mem[_2433 + 164] = mem[_2433]
                u = 0
                while u < 32 * mem[_2433]:
                    mem[u + _2433 + 196] = mem[u + _2433 + 32]
                    u = u + 32
                    continue 
                require ext_code.size(0x53c153a0df7e050bbefbb70ee9632061f12795fb)
                staticcall 0x53c153a0df7e050bbefbb70ee9632061f12795fb.getAmountsOut(uint256 rg1, address[] rg2) with:
                        gas gas_remaining wei
                       args s, 64, mem[_2433 + 164 len (32 * mem[_2433]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_2433 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _2433 + ceil32(return_data.size) + 96
                require return_data.size >= 32
                _5570 = mem[_2433 + 96 len 4], Mask(224, 32, s) >> 32
                require mem[_2433 + 96 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                require mem[_2433 + 96 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                require mem[_2433 + mem[_2433 + 96 len 4], Mask(224, 32, s) >> 32 + 96] <= 4294967296 and mem[_2433 + 96 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_2433 + mem[_2433 + 96 len 4], Mask(224, 32, s) >> 32 + 96]) + 32 <= return_data.size
                mem[_2433 + ceil32(return_data.size) + 96] = mem[_2433 + mem[_2433 + 96 len 4], Mask(224, 32, s) >> 32 + 96]
                _5931 = mem[_2433 + _5570 + 96]
                s = 0
                while s < 32 * _5931:
                    mem[s + _2433 + ceil32(return_data.size) + 128] = mem[s + _2433 + _5570 + 128]
                    s = s + 32
                    continue 
                mem[64] = (32 * _5931) + _2433 + ceil32(return_data.size) + 128
                require mem[_2433 + ceil32(return_data.size) + 96] - 1 < mem[_2433 + ceil32(return_data.size) + 96]
                if mem[(32 * mem[_2433 + ceil32(return_data.size) + 96] - 1) + _2433 + ceil32(return_data.size) + 128] <= t:
                    idx = idx + 1
                    t = t
                    continue 
                idx = idx + 1
                t = mem[(32 * mem[_2433 + ceil32(return_data.size) + 96] - 1) + _2433 + ceil32(return_data.size) + 128]
                continue 
            if idx != 7:
                if s <= t:
                    idx = idx + 1
                    t = t
                    continue 
                idx = idx + 1
                t = s
                continue 
            _2548 = mem[0]
            _2656 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            require 0 < mem[_2656]
            mem[_2656 + 32] = 0x8d11ec38a3eb5e956b052f67da8bdc9bef8abf
            require 1 < mem[_2656]
            mem[_2656 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c
            mem[_2656 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[_2656 + 100] = s
            mem[_2656 + 132] = 64
            mem[_2656 + 164] = mem[_2656]
            u = 0
            while u < 32 * mem[_2656]:
                mem[u + _2656 + 196] = mem[u + _2656 + 32]
                u = u + 32
                continue 
            require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
            staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c29.getAmountsOut(uint256 rg1, address[] rg2) with:
                    gas gas_remaining wei
                   args s, 64, mem[_2656 + 164 len (32 * mem[_2656]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[_2656 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = _2656 + ceil32(return_data.size) + 96
            require return_data.size >= 32
            _5566 = mem[_2656 + 96 len 4], Mask(224, 32, s) >> 32
            require mem[_2656 + 96 len 4], Mask(224, 32, s) >> 32 <= 4294967296
            require mem[_2656 + 96 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
            require mem[_2656 + mem[_2656 + 96 len 4], Mask(224, 32, s) >> 32 + 96] <= 4294967296 and mem[_2656 + 96 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_2656 + mem[_2656 + 96 len 4], Mask(224, 32, s) >> 32 + 96]) + 32 <= return_data.size
            mem[_2656 + ceil32(return_data.size) + 96] = mem[_2656 + mem[_2656 + 96 len 4], Mask(224, 32, s) >> 32 + 96]
            _5929 = mem[_2656 + _5566 + 96]
            s = 0
            while s < 32 * _5929:
                mem[s + _2656 + ceil32(return_data.size) + 128] = mem[s + _2656 + _5566 + 128]
                s = s + 32
                continue 
            require mem[_2656 + ceil32(return_data.size) + 96] - 1 < mem[_2656 + ceil32(return_data.size) + 96]
            _7257 = mem[(32 * mem[_2656 + ceil32(return_data.size) + 96] - 1) + _2656 + ceil32(return_data.size) + 128]
            mem[(32 * _5929) + _2656 + ceil32(return_data.size) + 128] = 2
            mem[0] = _2548
            mem[(32 * _5929) + _2656 + ceil32(return_data.size) + 160] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c
            mem[(32 * _5929) + _2656 + ceil32(return_data.size) + 192] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
            mem[(32 * _5929) + _2656 + ceil32(return_data.size) + 224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[(32 * _5929) + _2656 + ceil32(return_data.size) + 228] = _7257
            mem[(32 * _5929) + _2656 + ceil32(return_data.size) + 260] = 64
            mem[(32 * _5929) + _2656 + ceil32(return_data.size) + 292] = 2
            s = 0
            while s < 64:
                mem[s + (32 * _5929) + _2656 + ceil32(return_data.size) + 324] = mem[s + (32 * _5929) + _2656 + ceil32(return_data.size) + 160]
                s = s + 32
                continue 
            require ext_code.size(0x1b02da8cb0d097eb8d57a175b88c7d8b47997506)
            staticcall 0x1b02da8cb0d097eb8d57a175b88c7d8b47997506.getAmountsOut(uint256 rg1, address[] rg2) with:
                    gas gas_remaining wei
                   args _7257, Array(len=2, data=mem[(32 * _5929) + _2656 + ceil32(return_data.size) + 324 len 64])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _5929) + _2656 + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * _5929) + _2656 + (2 * ceil32(return_data.size)) + 224
            require return_data.size >= 32
            _7820 = mem[(32 * _5929) + _2656 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _7257) >> 32
            require mem[(32 * _5929) + _2656 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _7257) >> 32 <= 4294967296
            require mem[(32 * _5929) + _2656 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _7257) >> 32 + 32 <= return_data.size
            require mem[(32 * _5929) + _2656 + ceil32(return_data.size) + mem[(32 * _5929) + _2656 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _7257) >> 32 + 224] <= 4294967296 and mem[(32 * _5929) + _2656 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _7257) >> 32 + (32 * mem[(32 * _5929) + _2656 + ceil32(return_data.size) + mem[(32 * _5929) + _2656 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _7257) >> 32 + 224]) + 32 <= return_data.size
            mem[(32 * _5929) + _2656 + (2 * ceil32(return_data.size)) + 224] = mem[(32 * _5929) + _2656 + ceil32(return_data.size) + mem[(32 * _5929) + _2656 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _7257) >> 32 + 224]
            _7868 = mem[(32 * _5929) + _2656 + ceil32(return_data.size) + _7820 + 224]
            s = 0
            while s < 32 * _7868:
                mem[s + (32 * _5929) + _2656 + (2 * ceil32(return_data.size)) + 256] = mem[s + (32 * _5929) + _2656 + ceil32(return_data.size) + _7820 + 256]
                s = s + 32
                continue 
            mem[64] = (32 * _7868) + (32 * _5929) + _2656 + (2 * ceil32(return_data.size)) + 256
            require mem[(32 * _5929) + _2656 + (2 * ceil32(return_data.size)) + 224] - 1 < mem[(32 * _5929) + _2656 + (2 * ceil32(return_data.size)) + 224]
            if mem[(32 * mem[(32 * _5929) + _2656 + (2 * ceil32(return_data.size)) + 224] - 1) + (32 * _5929) + _2656 + (2 * ceil32(return_data.size)) + 256] <= t:
                idx = idx + 1
                t = t
                continue 
            idx = idx + 1
            t = mem[(32 * mem[(32 * _5929) + _2656 + (2 * ceil32(return_data.size)) + 224] - 1) + (32 * _5929) + _2656 + (2 * ceil32(return_data.size)) + 256]
            continue 
}



}
