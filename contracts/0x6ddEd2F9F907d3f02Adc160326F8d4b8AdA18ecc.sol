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
        while idx < 6:
            if not idx:
                mem[mem[64] + 4] = 2
                mem[mem[64] + 36] = 0
                mem[mem[64] + 68] = 0
                require ext_code.size(0x92d5ebf3593a92888c25c0abef126583d4b5312e)
                staticcall 0x92d5ebf3593a92888c25c0abef126583d4b5312e.get_dy_underlying(int128 rg1, int128 rg2, uint256 rg3) with:
                        gas gas_remaining wei
                       args 2, 0, 0
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
                mem[mem[64] + 36] = 0
                mem[mem[64] + 68] = 0
                require ext_code.size(0x83e5f18da720119ff363cf63417628eb0e9fd523)
                staticcall 0x83e5f18da720119ff363cf63417628eb0e9fd523.get_dy(int128 rg1, int128 rg2, uint256 rg3) with:
                        gas gas_remaining wei
                       args 2, 0, 0
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
                _185 = mem[64]
                mem[mem[64]] = 3
                mem[64] = mem[64] + 128
                require 0 < mem[_185]
                mem[_185 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                require 1 < mem[_185]
                mem[_185 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                require 2 < mem[_185]
                mem[_185 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                mem[_185 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_185 + 132] = 0
                mem[_185 + 164] = 64
                mem[_185 + 196] = mem[_185]
                t = 0
                while t < 32 * mem[_185]:
                    mem[t + _185 + 228] = mem[t + _185 + 32]
                    t = t + 32
                    continue 
                require ext_code.size(0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52)
                staticcall 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52.getAmountsOut(uint256 rg1, address[] rg2) with:
                        gas gas_remaining wei
                       args 0, 64, mem[_185 + 196 len (32 * mem[_185]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_185 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _185 + ceil32(return_data.size) + 128
                require return_data.size >= 32
                _1395 = mem[_185 + 128 len 4], 0
                require mem[_185 + 128 len 4], 0 <= 4294967296
                require mem[_185 + 128 len 4], 0 + 32 <= return_data.size
                require mem[_185 + mem[_185 + 128 len 4], 0 + 128] <= 4294967296 and mem[_185 + 128 len 4], 0 + (32 * mem[_185 + mem[_185 + 128 len 4], 0 + 128]) + 32 <= return_data.size
                mem[_185 + ceil32(return_data.size) + 128] = mem[_185 + mem[_185 + 128 len 4], 0 + 128]
                _1599 = mem[_185 + _1395 + 128]
                t = 0
                while t < 32 * _1599:
                    mem[t + _185 + ceil32(return_data.size) + 160] = mem[t + _185 + _1395 + 160]
                    t = t + 32
                    continue 
                mem[64] = (32 * _1599) + _185 + ceil32(return_data.size) + 160
                require mem[_185 + ceil32(return_data.size) + 128] - 1 < mem[_185 + ceil32(return_data.size) + 128]
                if mem[(32 * mem[_185 + ceil32(return_data.size) + 128] - 1) + _185 + ceil32(return_data.size) + 160] <= s:
                    idx = idx + 1
                    s = s
                    continue 
                idx = idx + 1
                s = mem[(32 * mem[_185 + ceil32(return_data.size) + 128] - 1) + _185 + ceil32(return_data.size) + 160]
                continue 
            if 3 == idx:
                if 2 == idx:
                    _218 = mem[64]
                    mem[mem[64]] = 3
                    mem[64] = mem[64] + 128
                    require 0 < mem[_218]
                    mem[_218 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    require 1 < mem[_218]
                    mem[_218 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                    require 2 < mem[_218]
                    mem[_218 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    mem[_218 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_218 + 132] = 0
                    mem[_218 + 164] = 64
                    mem[_218 + 196] = mem[_218]
                    t = 0
                    while t < 32 * mem[_218]:
                        mem[t + _218 + 228] = mem[t + _218 + 32]
                        t = t + 32
                        continue 
                    require ext_code.size(0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52)
                    staticcall 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52.getAmountsOut(uint256 rg1, address[] rg2) with:
                            gas gas_remaining wei
                           args 0, 64, mem[_218 + 196 len (32 * mem[_218]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_218 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _218 + ceil32(return_data.size) + 128
                    require return_data.size >= 32
                    _1403 = mem[_218 + 128 len 4], 0
                    require mem[_218 + 128 len 4], 0 <= 4294967296
                    require mem[_218 + 128 len 4], 0 + 32 <= return_data.size
                    require mem[_218 + mem[_218 + 128 len 4], 0 + 128] <= 4294967296 and mem[_218 + 128 len 4], 0 + (32 * mem[_218 + mem[_218 + 128 len 4], 0 + 128]) + 32 <= return_data.size
                    mem[_218 + ceil32(return_data.size) + 128] = mem[_218 + mem[_218 + 128 len 4], 0 + 128]
                    _1603 = mem[_218 + _1403 + 128]
                    t = 0
                    while t < 32 * _1603:
                        mem[t + _218 + ceil32(return_data.size) + 160] = mem[t + _218 + _1403 + 160]
                        t = t + 32
                        continue 
                    mem[64] = (32 * _1603) + _218 + ceil32(return_data.size) + 160
                    require mem[_218 + ceil32(return_data.size) + 128] - 1 < mem[_218 + ceil32(return_data.size) + 128]
                    if mem[(32 * mem[_218 + ceil32(return_data.size) + 128] - 1) + _218 + ceil32(return_data.size) + 160] <= s:
                        idx = idx + 1
                        s = s
                        continue 
                    idx = idx + 1
                    s = mem[(32 * mem[_218 + ceil32(return_data.size) + 128] - 1) + _218 + ceil32(return_data.size) + 160]
                    continue 
                if 3 == idx:
                    _266 = mem[64]
                    mem[mem[64]] = 3
                    mem[64] = mem[64] + 128
                    require 0 < mem[_266]
                    mem[_266 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    require 1 < mem[_266]
                    mem[_266 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                    require 2 < mem[_266]
                    mem[_266 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    mem[_266 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_266 + 132] = 0
                    mem[_266 + 164] = 64
                    mem[_266 + 196] = mem[_266]
                    t = 0
                    while t < 32 * mem[_266]:
                        mem[t + _266 + 228] = mem[t + _266 + 32]
                        t = t + 32
                        continue 
                    require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                    staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c29.getAmountsOut(uint256 rg1, address[] rg2) with:
                            gas gas_remaining wei
                           args 0, 64, mem[_266 + 196 len (32 * mem[_266]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_266 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _266 + ceil32(return_data.size) + 128
                    require return_data.size >= 32
                    _1401 = mem[_266 + 128 len 4], 0
                    require mem[_266 + 128 len 4], 0 <= 4294967296
                    require mem[_266 + 128 len 4], 0 + 32 <= return_data.size
                    require mem[_266 + mem[_266 + 128 len 4], 0 + 128] <= 4294967296 and mem[_266 + 128 len 4], 0 + (32 * mem[_266 + mem[_266 + 128 len 4], 0 + 128]) + 32 <= return_data.size
                    mem[_266 + ceil32(return_data.size) + 128] = mem[_266 + mem[_266 + 128 len 4], 0 + 128]
                    _1602 = mem[_266 + _1401 + 128]
                    t = 0
                    while t < 32 * _1602:
                        mem[t + _266 + ceil32(return_data.size) + 160] = mem[t + _266 + _1401 + 160]
                        t = t + 32
                        continue 
                    mem[64] = (32 * _1602) + _266 + ceil32(return_data.size) + 160
                    require mem[_266 + ceil32(return_data.size) + 128] - 1 < mem[_266 + ceil32(return_data.size) + 128]
                    if mem[(32 * mem[_266 + ceil32(return_data.size) + 128] - 1) + _266 + ceil32(return_data.size) + 160] <= s:
                        idx = idx + 1
                        s = s
                        continue 
                    idx = idx + 1
                    s = mem[(32 * mem[_266 + ceil32(return_data.size) + 128] - 1) + _266 + ceil32(return_data.size) + 160]
                    continue 
                if idx != 4:
                    _264 = mem[64]
                    mem[mem[64]] = 3
                    mem[64] = mem[64] + 128
                    require 0 < mem[_264]
                    mem[_264 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    require 1 < mem[_264]
                    mem[_264 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                    require 2 < mem[_264]
                    mem[_264 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    mem[_264 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_264 + 132] = 0
                    mem[_264 + 164] = 64
                    mem[_264 + 196] = mem[_264]
                    t = 0
                    while t < 32 * mem[_264]:
                        mem[t + _264 + 228] = mem[t + _264 + 32]
                        t = t + 32
                        continue 
                    require ext_code.size(0)
                    staticcall 0x0.getAmountsOut(uint256 rg1, address[] rg2) with:
                            gas gas_remaining wei
                           args 0, 64, mem[_264 + 196 len (32 * mem[_264]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_264 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _264 + ceil32(return_data.size) + 128
                    require return_data.size >= 32
                    _1397 = mem[_264 + 128 len 4], 0
                    require mem[_264 + 128 len 4], 0 <= 4294967296
                    require mem[_264 + 128 len 4], 0 + 32 <= return_data.size
                    require mem[_264 + mem[_264 + 128 len 4], 0 + 128] <= 4294967296 and mem[_264 + 128 len 4], 0 + (32 * mem[_264 + mem[_264 + 128 len 4], 0 + 128]) + 32 <= return_data.size
                    mem[_264 + ceil32(return_data.size) + 128] = mem[_264 + mem[_264 + 128 len 4], 0 + 128]
                    _1600 = mem[_264 + _1397 + 128]
                    t = 0
                    while t < 32 * _1600:
                        mem[t + _264 + ceil32(return_data.size) + 160] = mem[t + _264 + _1397 + 160]
                        t = t + 32
                        continue 
                    mem[64] = (32 * _1600) + _264 + ceil32(return_data.size) + 160
                    require mem[_264 + ceil32(return_data.size) + 128] - 1 < mem[_264 + ceil32(return_data.size) + 128]
                    if mem[(32 * mem[_264 + ceil32(return_data.size) + 128] - 1) + _264 + ceil32(return_data.size) + 160] <= s:
                        idx = idx + 1
                        s = s
                        continue 
                    idx = idx + 1
                    s = mem[(32 * mem[_264 + ceil32(return_data.size) + 128] - 1) + _264 + ceil32(return_data.size) + 160]
                    continue 
                _329 = mem[64]
                mem[mem[64]] = 3
                mem[64] = mem[64] + 128
                require 0 < mem[_329]
                mem[_329 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                require 1 < mem[_329]
                mem[_329 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                require 2 < mem[_329]
                mem[_329 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                mem[_329 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_329 + 132] = 0
                mem[_329 + 164] = 64
                mem[_329 + 196] = mem[_329]
                t = 0
                while t < 32 * mem[_329]:
                    mem[t + _329 + 228] = mem[t + _329 + 32]
                    t = t + 32
                    continue 
                require ext_code.size(0x7b17021fcb7bc888641dc3bedfed3734fcaf2c87)
                staticcall 0x7b17021fcb7bc888641dc3bedfed3734fcaf2c87.getAmountsOut(uint256 rg1, address[] rg2) with:
                        gas gas_remaining wei
                       args 0, 64, mem[_329 + 196 len (32 * mem[_329]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_329 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _329 + ceil32(return_data.size) + 128
                require return_data.size >= 32
                _1399 = mem[_329 + 128 len 4], 0
                require mem[_329 + 128 len 4], 0 <= 4294967296
                require mem[_329 + 128 len 4], 0 + 32 <= return_data.size
                require mem[_329 + mem[_329 + 128 len 4], 0 + 128] <= 4294967296 and mem[_329 + 128 len 4], 0 + (32 * mem[_329 + mem[_329 + 128 len 4], 0 + 128]) + 32 <= return_data.size
                mem[_329 + ceil32(return_data.size) + 128] = mem[_329 + mem[_329 + 128 len 4], 0 + 128]
                _1601 = mem[_329 + _1399 + 128]
                t = 0
                while t < 32 * _1601:
                    mem[t + _329 + ceil32(return_data.size) + 160] = mem[t + _329 + _1399 + 160]
                    t = t + 32
                    continue 
                mem[64] = (32 * _1601) + _329 + ceil32(return_data.size) + 160
                require mem[_329 + ceil32(return_data.size) + 128] - 1 < mem[_329 + ceil32(return_data.size) + 128]
                if mem[(32 * mem[_329 + ceil32(return_data.size) + 128] - 1) + _329 + ceil32(return_data.size) + 160] <= s:
                    idx = idx + 1
                    s = s
                    continue 
                idx = idx + 1
                s = mem[(32 * mem[_329 + ceil32(return_data.size) + 128] - 1) + _329 + ceil32(return_data.size) + 160]
                continue 
            if 4 == idx:
                if 2 == idx:
                    _271 = mem[64]
                    mem[mem[64]] = 3
                    mem[64] = mem[64] + 128
                    require 0 < mem[_271]
                    mem[_271 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    require 1 < mem[_271]
                    mem[_271 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                    require 2 < mem[_271]
                    mem[_271 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    mem[_271 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_271 + 132] = 0
                    mem[_271 + 164] = 64
                    mem[_271 + 196] = mem[_271]
                    t = 0
                    while t < 32 * mem[_271]:
                        mem[t + _271 + 228] = mem[t + _271 + 32]
                        t = t + 32
                        continue 
                    require ext_code.size(0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52)
                    staticcall 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52.getAmountsOut(uint256 rg1, address[] rg2) with:
                            gas gas_remaining wei
                           args 0, 64, mem[_271 + 196 len (32 * mem[_271]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_271 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _271 + ceil32(return_data.size) + 128
                    require return_data.size >= 32
                    _1415 = mem[_271 + 128 len 4], 0
                    require mem[_271 + 128 len 4], 0 <= 4294967296
                    require mem[_271 + 128 len 4], 0 + 32 <= return_data.size
                    require mem[_271 + mem[_271 + 128 len 4], 0 + 128] <= 4294967296 and mem[_271 + 128 len 4], 0 + (32 * mem[_271 + mem[_271 + 128 len 4], 0 + 128]) + 32 <= return_data.size
                    mem[_271 + ceil32(return_data.size) + 128] = mem[_271 + mem[_271 + 128 len 4], 0 + 128]
                    _1609 = mem[_271 + _1415 + 128]
                    t = 0
                    while t < 32 * _1609:
                        mem[t + _271 + ceil32(return_data.size) + 160] = mem[t + _271 + _1415 + 160]
                        t = t + 32
                        continue 
                    mem[64] = (32 * _1609) + _271 + ceil32(return_data.size) + 160
                    require mem[_271 + ceil32(return_data.size) + 128] - 1 < mem[_271 + ceil32(return_data.size) + 128]
                    if mem[(32 * mem[_271 + ceil32(return_data.size) + 128] - 1) + _271 + ceil32(return_data.size) + 160] <= s:
                        idx = idx + 1
                        s = s
                        continue 
                    idx = idx + 1
                    s = mem[(32 * mem[_271 + ceil32(return_data.size) + 128] - 1) + _271 + ceil32(return_data.size) + 160]
                    continue 
                if 3 == idx:
                    _338 = mem[64]
                    mem[mem[64]] = 3
                    mem[64] = mem[64] + 128
                    require 0 < mem[_338]
                    mem[_338 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    require 1 < mem[_338]
                    mem[_338 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                    require 2 < mem[_338]
                    mem[_338 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    mem[_338 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_338 + 132] = 0
                    mem[_338 + 164] = 64
                    mem[_338 + 196] = mem[_338]
                    t = 0
                    while t < 32 * mem[_338]:
                        mem[t + _338 + 228] = mem[t + _338 + 32]
                        t = t + 32
                        continue 
                    require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                    staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c29.getAmountsOut(uint256 rg1, address[] rg2) with:
                            gas gas_remaining wei
                           args 0, 64, mem[_338 + 196 len (32 * mem[_338]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_338 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _338 + ceil32(return_data.size) + 128
                    require return_data.size >= 32
                    _1413 = mem[_338 + 128 len 4], 0
                    require mem[_338 + 128 len 4], 0 <= 4294967296
                    require mem[_338 + 128 len 4], 0 + 32 <= return_data.size
                    require mem[_338 + mem[_338 + 128 len 4], 0 + 128] <= 4294967296 and mem[_338 + 128 len 4], 0 + (32 * mem[_338 + mem[_338 + 128 len 4], 0 + 128]) + 32 <= return_data.size
                    mem[_338 + ceil32(return_data.size) + 128] = mem[_338 + mem[_338 + 128 len 4], 0 + 128]
                    _1608 = mem[_338 + _1413 + 128]
                    t = 0
                    while t < 32 * _1608:
                        mem[t + _338 + ceil32(return_data.size) + 160] = mem[t + _338 + _1413 + 160]
                        t = t + 32
                        continue 
                    mem[64] = (32 * _1608) + _338 + ceil32(return_data.size) + 160
                    require mem[_338 + ceil32(return_data.size) + 128] - 1 < mem[_338 + ceil32(return_data.size) + 128]
                    if mem[(32 * mem[_338 + ceil32(return_data.size) + 128] - 1) + _338 + ceil32(return_data.size) + 160] <= s:
                        idx = idx + 1
                        s = s
                        continue 
                    idx = idx + 1
                    s = mem[(32 * mem[_338 + ceil32(return_data.size) + 128] - 1) + _338 + ceil32(return_data.size) + 160]
                    continue 
                if idx != 4:
                    _336 = mem[64]
                    mem[mem[64]] = 3
                    mem[64] = mem[64] + 128
                    require 0 < mem[_336]
                    mem[_336 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    require 1 < mem[_336]
                    mem[_336 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                    require 2 < mem[_336]
                    mem[_336 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    mem[_336 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_336 + 132] = 0
                    mem[_336 + 164] = 64
                    mem[_336 + 196] = mem[_336]
                    t = 0
                    while t < 32 * mem[_336]:
                        mem[t + _336 + 228] = mem[t + _336 + 32]
                        t = t + 32
                        continue 
                    require ext_code.size(0)
                    staticcall 0x0.getAmountsOut(uint256 rg1, address[] rg2) with:
                            gas gas_remaining wei
                           args 0, 64, mem[_336 + 196 len (32 * mem[_336]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_336 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _336 + ceil32(return_data.size) + 128
                    require return_data.size >= 32
                    _1409 = mem[_336 + 128 len 4], 0
                    require mem[_336 + 128 len 4], 0 <= 4294967296
                    require mem[_336 + 128 len 4], 0 + 32 <= return_data.size
                    require mem[_336 + mem[_336 + 128 len 4], 0 + 128] <= 4294967296 and mem[_336 + 128 len 4], 0 + (32 * mem[_336 + mem[_336 + 128 len 4], 0 + 128]) + 32 <= return_data.size
                    mem[_336 + ceil32(return_data.size) + 128] = mem[_336 + mem[_336 + 128 len 4], 0 + 128]
                    _1606 = mem[_336 + _1409 + 128]
                    t = 0
                    while t < 32 * _1606:
                        mem[t + _336 + ceil32(return_data.size) + 160] = mem[t + _336 + _1409 + 160]
                        t = t + 32
                        continue 
                    mem[64] = (32 * _1606) + _336 + ceil32(return_data.size) + 160
                    require mem[_336 + ceil32(return_data.size) + 128] - 1 < mem[_336 + ceil32(return_data.size) + 128]
                    if mem[(32 * mem[_336 + ceil32(return_data.size) + 128] - 1) + _336 + ceil32(return_data.size) + 160] <= s:
                        idx = idx + 1
                        s = s
                        continue 
                    idx = idx + 1
                    s = mem[(32 * mem[_336 + ceil32(return_data.size) + 128] - 1) + _336 + ceil32(return_data.size) + 160]
                    continue 
                _412 = mem[64]
                mem[mem[64]] = 3
                mem[64] = mem[64] + 128
                require 0 < mem[_412]
                mem[_412 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                require 1 < mem[_412]
                mem[_412 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                require 2 < mem[_412]
                mem[_412 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                mem[_412 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_412 + 132] = 0
                mem[_412 + 164] = 64
                mem[_412 + 196] = mem[_412]
                t = 0
                while t < 32 * mem[_412]:
                    mem[t + _412 + 228] = mem[t + _412 + 32]
                    t = t + 32
                    continue 
                require ext_code.size(0x7b17021fcb7bc888641dc3bedfed3734fcaf2c87)
                staticcall 0x7b17021fcb7bc888641dc3bedfed3734fcaf2c87.getAmountsOut(uint256 rg1, address[] rg2) with:
                        gas gas_remaining wei
                       args 0, 64, mem[_412 + 196 len (32 * mem[_412]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_412 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _412 + ceil32(return_data.size) + 128
                require return_data.size >= 32
                _1411 = mem[_412 + 128 len 4], 0
                require mem[_412 + 128 len 4], 0 <= 4294967296
                require mem[_412 + 128 len 4], 0 + 32 <= return_data.size
                require mem[_412 + mem[_412 + 128 len 4], 0 + 128] <= 4294967296 and mem[_412 + 128 len 4], 0 + (32 * mem[_412 + mem[_412 + 128 len 4], 0 + 128]) + 32 <= return_data.size
                mem[_412 + ceil32(return_data.size) + 128] = mem[_412 + mem[_412 + 128 len 4], 0 + 128]
                _1607 = mem[_412 + _1411 + 128]
                t = 0
                while t < 32 * _1607:
                    mem[t + _412 + ceil32(return_data.size) + 160] = mem[t + _412 + _1411 + 160]
                    t = t + 32
                    continue 
                mem[64] = (32 * _1607) + _412 + ceil32(return_data.size) + 160
                require mem[_412 + ceil32(return_data.size) + 128] - 1 < mem[_412 + ceil32(return_data.size) + 128]
                if mem[(32 * mem[_412 + ceil32(return_data.size) + 128] - 1) + _412 + ceil32(return_data.size) + 160] <= s:
                    idx = idx + 1
                    s = s
                    continue 
                idx = idx + 1
                s = mem[(32 * mem[_412 + ceil32(return_data.size) + 128] - 1) + _412 + ceil32(return_data.size) + 160]
                continue 
            if idx != 5:
                if 0 <= s:
                    idx = idx + 1
                    s = s
                    continue 
                idx = idx + 1
                s = 0
                continue 
            _269 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            require 0 < mem[_269]
            mem[_269 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
            require 1 < mem[_269]
            mem[_269 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
            mem[_269 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[_269 + 100] = 0
            mem[_269 + 132] = 64
            mem[_269 + 164] = mem[_269]
            t = 0
            while t < 32 * mem[_269]:
                mem[t + _269 + 196] = mem[t + _269 + 32]
                t = t + 32
                continue 
            require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
            staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c29.getAmountsOut(uint256 rg1, address[] rg2) with:
                    gas gas_remaining wei
                   args 0, 64, mem[_269 + 164 len (32 * mem[_269]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[_269 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = _269 + ceil32(return_data.size) + 96
            require return_data.size >= 32
            _1405 = mem[_269 + 96 len 4], 0
            require mem[_269 + 96 len 4], 0 <= 4294967296
            require mem[_269 + 96 len 4], 0 + 32 <= return_data.size
            require mem[_269 + mem[_269 + 96 len 4], 0 + 96] <= 4294967296 and mem[_269 + 96 len 4], 0 + (32 * mem[_269 + mem[_269 + 96 len 4], 0 + 96]) + 32 <= return_data.size
            mem[_269 + ceil32(return_data.size) + 96] = mem[_269 + mem[_269 + 96 len 4], 0 + 96]
            _1604 = mem[_269 + _1405 + 96]
            t = 0
            while t < 32 * _1604:
                mem[t + _269 + ceil32(return_data.size) + 128] = mem[t + _269 + _1405 + 128]
                t = t + 32
                continue 
            require mem[_269 + ceil32(return_data.size) + 96] - 1 < mem[_269 + ceil32(return_data.size) + 96]
            _4246 = mem[(32 * mem[_269 + ceil32(return_data.size) + 96] - 1) + _269 + ceil32(return_data.size) + 128]
            mem[(32 * _1604) + _269 + ceil32(return_data.size) + 128] = 2
            mem[(32 * _1604) + _269 + ceil32(return_data.size) + 160] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
            mem[(32 * _1604) + _269 + ceil32(return_data.size) + 192] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
            mem[(32 * _1604) + _269 + ceil32(return_data.size) + 224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[(32 * _1604) + _269 + ceil32(return_data.size) + 228] = _4246
            mem[(32 * _1604) + _269 + ceil32(return_data.size) + 260] = 64
            mem[(32 * _1604) + _269 + ceil32(return_data.size) + 292] = 2
            t = 0
            while t < 64:
                mem[t + (32 * _1604) + _269 + ceil32(return_data.size) + 324] = mem[t + (32 * _1604) + _269 + ceil32(return_data.size) + 160]
                t = t + 32
                continue 
            require ext_code.size(0x1b02da8cb0d097eb8d57a175b88c7d8b47997506)
            staticcall 0x1b02da8cb0d097eb8d57a175b88c7d8b47997506.getAmountsOut(uint256 rg1, address[] rg2) with:
                    gas gas_remaining wei
                   args _4246, Array(len=2, data=mem[(32 * _1604) + _269 + ceil32(return_data.size) + 324 len 64])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _1604) + _269 + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * _1604) + _269 + (2 * ceil32(return_data.size)) + 224
            require return_data.size >= 32
            _5863 = mem[(32 * _1604) + _269 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _4246) >> 32
            require mem[(32 * _1604) + _269 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _4246) >> 32 <= 4294967296
            require mem[(32 * _1604) + _269 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _4246) >> 32 + 32 <= return_data.size
            require mem[(32 * _1604) + _269 + ceil32(return_data.size) + mem[(32 * _1604) + _269 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _4246) >> 32 + 224] <= 4294967296 and mem[(32 * _1604) + _269 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _4246) >> 32 + (32 * mem[(32 * _1604) + _269 + ceil32(return_data.size) + mem[(32 * _1604) + _269 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _4246) >> 32 + 224]) + 32 <= return_data.size
            mem[(32 * _1604) + _269 + (2 * ceil32(return_data.size)) + 224] = mem[(32 * _1604) + _269 + ceil32(return_data.size) + mem[(32 * _1604) + _269 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _4246) >> 32 + 224]
            _5951 = mem[(32 * _1604) + _269 + ceil32(return_data.size) + _5863 + 224]
            t = 0
            while t < 32 * _5951:
                mem[t + (32 * _1604) + _269 + (2 * ceil32(return_data.size)) + 256] = mem[t + (32 * _1604) + _269 + ceil32(return_data.size) + _5863 + 256]
                t = t + 32
                continue 
            mem[64] = (32 * _5951) + (32 * _1604) + _269 + (2 * ceil32(return_data.size)) + 256
            require mem[(32 * _1604) + _269 + (2 * ceil32(return_data.size)) + 224] - 1 < mem[(32 * _1604) + _269 + (2 * ceil32(return_data.size)) + 224]
            if mem[(32 * mem[(32 * _1604) + _269 + (2 * ceil32(return_data.size)) + 224] - 1) + (32 * _1604) + _269 + (2 * ceil32(return_data.size)) + 256] <= s:
                idx = idx + 1
                s = s
                continue 
            idx = idx + 1
            s = mem[(32 * mem[(32 * _1604) + _269 + (2 * ceil32(return_data.size)) + 224] - 1) + (32 * _1604) + _269 + (2 * ceil32(return_data.size)) + 256]
            continue 
        idx = 0
        t = 0
        while idx < 6:
            if not idx:
                mem[mem[64] + 4] = 2
                mem[mem[64] + 36] = 0
                mem[mem[64] + 68] = s
                require ext_code.size(0x92d5ebf3593a92888c25c0abef126583d4b5312e)
                staticcall 0x92d5ebf3593a92888c25c0abef126583d4b5312e.get_dy_underlying(int128 rg1, int128 rg2, uint256 rg3) with:
                        gas gas_remaining wei
                       args 2, 0, s
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
                mem[mem[64] + 36] = 0
                mem[mem[64] + 68] = s
                require ext_code.size(0x83e5f18da720119ff363cf63417628eb0e9fd523)
                staticcall 0x83e5f18da720119ff363cf63417628eb0e9fd523.get_dy(int128 rg1, int128 rg2, uint256 rg3) with:
                        gas gas_remaining wei
                       args 2, 0, s
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
                _1733 = mem[64]
                mem[mem[64]] = 3
                mem[64] = mem[64] + 128
                require 0 < mem[_1733]
                mem[_1733 + 32] = 0x49d68029688eabf473097a2fc38ef61633a3c
                require 1 < mem[_1733]
                mem[_1733 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                require 2 < mem[_1733]
                mem[_1733 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                mem[_1733 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_1733 + 132] = s
                mem[_1733 + 164] = 64
                mem[_1733 + 196] = mem[_1733]
                u = 0
                while u < 32 * mem[_1733]:
                    mem[u + _1733 + 228] = mem[u + _1733 + 32]
                    u = u + 32
                    continue 
                require ext_code.size(0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52)
                staticcall 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52.getAmountsOut(uint256 rg1, address[] rg2) with:
                        gas gas_remaining wei
                       args s, 64, mem[_1733 + 196 len (32 * mem[_1733]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_1733 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _1733 + ceil32(return_data.size) + 128
                require return_data.size >= 32
                _4447 = mem[_1733 + 128 len 4], Mask(224, 32, s) >> 32
                require mem[_1733 + 128 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                require mem[_1733 + 128 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                require mem[_1733 + mem[_1733 + 128 len 4], Mask(224, 32, s) >> 32 + 128] <= 4294967296 and mem[_1733 + 128 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_1733 + mem[_1733 + 128 len 4], Mask(224, 32, s) >> 32 + 128]) + 32 <= return_data.size
                mem[_1733 + ceil32(return_data.size) + 128] = mem[_1733 + mem[_1733 + 128 len 4], Mask(224, 32, s) >> 32 + 128]
                _4695 = mem[_1733 + _4447 + 128]
                s = 0
                while s < 32 * _4695:
                    mem[s + _1733 + ceil32(return_data.size) + 160] = mem[s + _1733 + _4447 + 160]
                    s = s + 32
                    continue 
                mem[64] = (32 * _4695) + _1733 + ceil32(return_data.size) + 160
                require mem[_1733 + ceil32(return_data.size) + 128] - 1 < mem[_1733 + ceil32(return_data.size) + 128]
                if mem[(32 * mem[_1733 + ceil32(return_data.size) + 128] - 1) + _1733 + ceil32(return_data.size) + 160] <= t:
                    idx = idx + 1
                    t = t
                    continue 
                idx = idx + 1
                t = mem[(32 * mem[_1733 + ceil32(return_data.size) + 128] - 1) + _1733 + ceil32(return_data.size) + 160]
                continue 
            if 3 == idx:
                if 2 == idx:
                    _1854 = mem[64]
                    mem[mem[64]] = 3
                    mem[64] = mem[64] + 128
                    require 0 < mem[_1854]
                    mem[_1854 + 32] = 0x49d68029688eabf473097a2fc38ef61633a3c
                    require 1 < mem[_1854]
                    mem[_1854 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                    require 2 < mem[_1854]
                    mem[_1854 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    mem[_1854 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_1854 + 132] = s
                    mem[_1854 + 164] = 64
                    mem[_1854 + 196] = mem[_1854]
                    u = 0
                    while u < 32 * mem[_1854]:
                        mem[u + _1854 + 228] = mem[u + _1854 + 32]
                        u = u + 32
                        continue 
                    require ext_code.size(0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52)
                    staticcall 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52.getAmountsOut(uint256 rg1, address[] rg2) with:
                            gas gas_remaining wei
                           args s, 64, mem[_1854 + 196 len (32 * mem[_1854]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_1854 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _1854 + ceil32(return_data.size) + 128
                    require return_data.size >= 32
                    _4455 = mem[_1854 + 128 len 4], Mask(224, 32, s) >> 32
                    require mem[_1854 + 128 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                    require mem[_1854 + 128 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                    require mem[_1854 + mem[_1854 + 128 len 4], Mask(224, 32, s) >> 32 + 128] <= 4294967296 and mem[_1854 + 128 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_1854 + mem[_1854 + 128 len 4], Mask(224, 32, s) >> 32 + 128]) + 32 <= return_data.size
                    mem[_1854 + ceil32(return_data.size) + 128] = mem[_1854 + mem[_1854 + 128 len 4], Mask(224, 32, s) >> 32 + 128]
                    _4699 = mem[_1854 + _4455 + 128]
                    s = 0
                    while s < 32 * _4699:
                        mem[s + _1854 + ceil32(return_data.size) + 160] = mem[s + _1854 + _4455 + 160]
                        s = s + 32
                        continue 
                    mem[64] = (32 * _4699) + _1854 + ceil32(return_data.size) + 160
                    require mem[_1854 + ceil32(return_data.size) + 128] - 1 < mem[_1854 + ceil32(return_data.size) + 128]
                    if mem[(32 * mem[_1854 + ceil32(return_data.size) + 128] - 1) + _1854 + ceil32(return_data.size) + 160] <= t:
                        idx = idx + 1
                        t = t
                        continue 
                    idx = idx + 1
                    t = mem[(32 * mem[_1854 + ceil32(return_data.size) + 128] - 1) + _1854 + ceil32(return_data.size) + 160]
                    continue 
                if 3 == idx:
                    _1942 = mem[64]
                    mem[mem[64]] = 3
                    mem[64] = mem[64] + 128
                    require 0 < mem[_1942]
                    mem[_1942 + 32] = 0x49d68029688eabf473097a2fc38ef61633a3c
                    require 1 < mem[_1942]
                    mem[_1942 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                    require 2 < mem[_1942]
                    mem[_1942 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    mem[_1942 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_1942 + 132] = s
                    mem[_1942 + 164] = 64
                    mem[_1942 + 196] = mem[_1942]
                    u = 0
                    while u < 32 * mem[_1942]:
                        mem[u + _1942 + 228] = mem[u + _1942 + 32]
                        u = u + 32
                        continue 
                    require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                    staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c29.getAmountsOut(uint256 rg1, address[] rg2) with:
                            gas gas_remaining wei
                           args s, 64, mem[_1942 + 196 len (32 * mem[_1942]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_1942 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _1942 + ceil32(return_data.size) + 128
                    require return_data.size >= 32
                    _4453 = mem[_1942 + 128 len 4], Mask(224, 32, s) >> 32
                    require mem[_1942 + 128 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                    require mem[_1942 + 128 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                    require mem[_1942 + mem[_1942 + 128 len 4], Mask(224, 32, s) >> 32 + 128] <= 4294967296 and mem[_1942 + 128 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_1942 + mem[_1942 + 128 len 4], Mask(224, 32, s) >> 32 + 128]) + 32 <= return_data.size
                    mem[_1942 + ceil32(return_data.size) + 128] = mem[_1942 + mem[_1942 + 128 len 4], Mask(224, 32, s) >> 32 + 128]
                    _4698 = mem[_1942 + _4453 + 128]
                    s = 0
                    while s < 32 * _4698:
                        mem[s + _1942 + ceil32(return_data.size) + 160] = mem[s + _1942 + _4453 + 160]
                        s = s + 32
                        continue 
                    mem[64] = (32 * _4698) + _1942 + ceil32(return_data.size) + 160
                    require mem[_1942 + ceil32(return_data.size) + 128] - 1 < mem[_1942 + ceil32(return_data.size) + 128]
                    if mem[(32 * mem[_1942 + ceil32(return_data.size) + 128] - 1) + _1942 + ceil32(return_data.size) + 160] <= t:
                        idx = idx + 1
                        t = t
                        continue 
                    idx = idx + 1
                    t = mem[(32 * mem[_1942 + ceil32(return_data.size) + 128] - 1) + _1942 + ceil32(return_data.size) + 160]
                    continue 
                if idx != 4:
                    _1940 = mem[64]
                    mem[mem[64]] = 3
                    mem[64] = mem[64] + 128
                    require 0 < mem[_1940]
                    mem[_1940 + 32] = 0x49d68029688eabf473097a2fc38ef61633a3c
                    require 1 < mem[_1940]
                    mem[_1940 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                    require 2 < mem[_1940]
                    mem[_1940 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    mem[_1940 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_1940 + 132] = s
                    mem[_1940 + 164] = 64
                    mem[_1940 + 196] = mem[_1940]
                    u = 0
                    while u < 32 * mem[_1940]:
                        mem[u + _1940 + 228] = mem[u + _1940 + 32]
                        u = u + 32
                        continue 
                    require ext_code.size(0)
                    staticcall 0x0.getAmountsOut(uint256 rg1, address[] rg2) with:
                            gas gas_remaining wei
                           args s, 64, mem[_1940 + 196 len (32 * mem[_1940]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_1940 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _1940 + ceil32(return_data.size) + 128
                    require return_data.size >= 32
                    _4449 = mem[_1940 + 128 len 4], Mask(224, 32, s) >> 32
                    require mem[_1940 + 128 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                    require mem[_1940 + 128 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                    require mem[_1940 + mem[_1940 + 128 len 4], Mask(224, 32, s) >> 32 + 128] <= 4294967296 and mem[_1940 + 128 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_1940 + mem[_1940 + 128 len 4], Mask(224, 32, s) >> 32 + 128]) + 32 <= return_data.size
                    mem[_1940 + ceil32(return_data.size) + 128] = mem[_1940 + mem[_1940 + 128 len 4], Mask(224, 32, s) >> 32 + 128]
                    _4696 = mem[_1940 + _4449 + 128]
                    s = 0
                    while s < 32 * _4696:
                        mem[s + _1940 + ceil32(return_data.size) + 160] = mem[s + _1940 + _4449 + 160]
                        s = s + 32
                        continue 
                    mem[64] = (32 * _4696) + _1940 + ceil32(return_data.size) + 160
                    require mem[_1940 + ceil32(return_data.size) + 128] - 1 < mem[_1940 + ceil32(return_data.size) + 128]
                    if mem[(32 * mem[_1940 + ceil32(return_data.size) + 128] - 1) + _1940 + ceil32(return_data.size) + 160] <= t:
                        idx = idx + 1
                        t = t
                        continue 
                    idx = idx + 1
                    t = mem[(32 * mem[_1940 + ceil32(return_data.size) + 128] - 1) + _1940 + ceil32(return_data.size) + 160]
                    continue 
                _2061 = mem[64]
                mem[mem[64]] = 3
                mem[64] = mem[64] + 128
                require 0 < mem[_2061]
                mem[_2061 + 32] = 0x49d68029688eabf473097a2fc38ef61633a3c
                require 1 < mem[_2061]
                mem[_2061 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                require 2 < mem[_2061]
                mem[_2061 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                mem[_2061 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_2061 + 132] = s
                mem[_2061 + 164] = 64
                mem[_2061 + 196] = mem[_2061]
                u = 0
                while u < 32 * mem[_2061]:
                    mem[u + _2061 + 228] = mem[u + _2061 + 32]
                    u = u + 32
                    continue 
                require ext_code.size(0x7b17021fcb7bc888641dc3bedfed3734fcaf2c87)
                staticcall 0x7b17021fcb7bc888641dc3bedfed3734fcaf2c87.getAmountsOut(uint256 rg1, address[] rg2) with:
                        gas gas_remaining wei
                       args s, 64, mem[_2061 + 196 len (32 * mem[_2061]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_2061 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _2061 + ceil32(return_data.size) + 128
                require return_data.size >= 32
                _4451 = mem[_2061 + 128 len 4], Mask(224, 32, s) >> 32
                require mem[_2061 + 128 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                require mem[_2061 + 128 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                require mem[_2061 + mem[_2061 + 128 len 4], Mask(224, 32, s) >> 32 + 128] <= 4294967296 and mem[_2061 + 128 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_2061 + mem[_2061 + 128 len 4], Mask(224, 32, s) >> 32 + 128]) + 32 <= return_data.size
                mem[_2061 + ceil32(return_data.size) + 128] = mem[_2061 + mem[_2061 + 128 len 4], Mask(224, 32, s) >> 32 + 128]
                _4697 = mem[_2061 + _4451 + 128]
                s = 0
                while s < 32 * _4697:
                    mem[s + _2061 + ceil32(return_data.size) + 160] = mem[s + _2061 + _4451 + 160]
                    s = s + 32
                    continue 
                mem[64] = (32 * _4697) + _2061 + ceil32(return_data.size) + 160
                require mem[_2061 + ceil32(return_data.size) + 128] - 1 < mem[_2061 + ceil32(return_data.size) + 128]
                if mem[(32 * mem[_2061 + ceil32(return_data.size) + 128] - 1) + _2061 + ceil32(return_data.size) + 160] <= t:
                    idx = idx + 1
                    t = t
                    continue 
                idx = idx + 1
                t = mem[(32 * mem[_2061 + ceil32(return_data.size) + 128] - 1) + _2061 + ceil32(return_data.size) + 160]
                continue 
            if 4 == idx:
                if 2 == idx:
                    _1947 = mem[64]
                    mem[mem[64]] = 3
                    mem[64] = mem[64] + 128
                    require 0 < mem[_1947]
                    mem[_1947 + 32] = 0x49d68029688eabf473097a2fc38ef61633a3c
                    require 1 < mem[_1947]
                    mem[_1947 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                    require 2 < mem[_1947]
                    mem[_1947 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    mem[_1947 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_1947 + 132] = s
                    mem[_1947 + 164] = 64
                    mem[_1947 + 196] = mem[_1947]
                    u = 0
                    while u < 32 * mem[_1947]:
                        mem[u + _1947 + 228] = mem[u + _1947 + 32]
                        u = u + 32
                        continue 
                    require ext_code.size(0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52)
                    staticcall 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52.getAmountsOut(uint256 rg1, address[] rg2) with:
                            gas gas_remaining wei
                           args s, 64, mem[_1947 + 196 len (32 * mem[_1947]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_1947 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _1947 + ceil32(return_data.size) + 128
                    require return_data.size >= 32
                    _4467 = mem[_1947 + 128 len 4], Mask(224, 32, s) >> 32
                    require mem[_1947 + 128 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                    require mem[_1947 + 128 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                    require mem[_1947 + mem[_1947 + 128 len 4], Mask(224, 32, s) >> 32 + 128] <= 4294967296 and mem[_1947 + 128 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_1947 + mem[_1947 + 128 len 4], Mask(224, 32, s) >> 32 + 128]) + 32 <= return_data.size
                    mem[_1947 + ceil32(return_data.size) + 128] = mem[_1947 + mem[_1947 + 128 len 4], Mask(224, 32, s) >> 32 + 128]
                    _4705 = mem[_1947 + _4467 + 128]
                    s = 0
                    while s < 32 * _4705:
                        mem[s + _1947 + ceil32(return_data.size) + 160] = mem[s + _1947 + _4467 + 160]
                        s = s + 32
                        continue 
                    mem[64] = (32 * _4705) + _1947 + ceil32(return_data.size) + 160
                    require mem[_1947 + ceil32(return_data.size) + 128] - 1 < mem[_1947 + ceil32(return_data.size) + 128]
                    if mem[(32 * mem[_1947 + ceil32(return_data.size) + 128] - 1) + _1947 + ceil32(return_data.size) + 160] <= t:
                        idx = idx + 1
                        t = t
                        continue 
                    idx = idx + 1
                    t = mem[(32 * mem[_1947 + ceil32(return_data.size) + 128] - 1) + _1947 + ceil32(return_data.size) + 160]
                    continue 
                if 3 == idx:
                    _2070 = mem[64]
                    mem[mem[64]] = 3
                    mem[64] = mem[64] + 128
                    require 0 < mem[_2070]
                    mem[_2070 + 32] = 0x49d68029688eabf473097a2fc38ef61633a3c
                    require 1 < mem[_2070]
                    mem[_2070 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                    require 2 < mem[_2070]
                    mem[_2070 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    mem[_2070 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_2070 + 132] = s
                    mem[_2070 + 164] = 64
                    mem[_2070 + 196] = mem[_2070]
                    u = 0
                    while u < 32 * mem[_2070]:
                        mem[u + _2070 + 228] = mem[u + _2070 + 32]
                        u = u + 32
                        continue 
                    require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                    staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c29.getAmountsOut(uint256 rg1, address[] rg2) with:
                            gas gas_remaining wei
                           args s, 64, mem[_2070 + 196 len (32 * mem[_2070]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_2070 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _2070 + ceil32(return_data.size) + 128
                    require return_data.size >= 32
                    _4465 = mem[_2070 + 128 len 4], Mask(224, 32, s) >> 32
                    require mem[_2070 + 128 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                    require mem[_2070 + 128 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                    require mem[_2070 + mem[_2070 + 128 len 4], Mask(224, 32, s) >> 32 + 128] <= 4294967296 and mem[_2070 + 128 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_2070 + mem[_2070 + 128 len 4], Mask(224, 32, s) >> 32 + 128]) + 32 <= return_data.size
                    mem[_2070 + ceil32(return_data.size) + 128] = mem[_2070 + mem[_2070 + 128 len 4], Mask(224, 32, s) >> 32 + 128]
                    _4704 = mem[_2070 + _4465 + 128]
                    s = 0
                    while s < 32 * _4704:
                        mem[s + _2070 + ceil32(return_data.size) + 160] = mem[s + _2070 + _4465 + 160]
                        s = s + 32
                        continue 
                    mem[64] = (32 * _4704) + _2070 + ceil32(return_data.size) + 160
                    require mem[_2070 + ceil32(return_data.size) + 128] - 1 < mem[_2070 + ceil32(return_data.size) + 128]
                    if mem[(32 * mem[_2070 + ceil32(return_data.size) + 128] - 1) + _2070 + ceil32(return_data.size) + 160] <= t:
                        idx = idx + 1
                        t = t
                        continue 
                    idx = idx + 1
                    t = mem[(32 * mem[_2070 + ceil32(return_data.size) + 128] - 1) + _2070 + ceil32(return_data.size) + 160]
                    continue 
                if idx != 4:
                    _2068 = mem[64]
                    mem[mem[64]] = 3
                    mem[64] = mem[64] + 128
                    require 0 < mem[_2068]
                    mem[_2068 + 32] = 0x49d68029688eabf473097a2fc38ef61633a3c
                    require 1 < mem[_2068]
                    mem[_2068 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                    require 2 < mem[_2068]
                    mem[_2068 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    mem[_2068 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_2068 + 132] = s
                    mem[_2068 + 164] = 64
                    mem[_2068 + 196] = mem[_2068]
                    u = 0
                    while u < 32 * mem[_2068]:
                        mem[u + _2068 + 228] = mem[u + _2068 + 32]
                        u = u + 32
                        continue 
                    require ext_code.size(0)
                    staticcall 0x0.getAmountsOut(uint256 rg1, address[] rg2) with:
                            gas gas_remaining wei
                           args s, 64, mem[_2068 + 196 len (32 * mem[_2068]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_2068 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _2068 + ceil32(return_data.size) + 128
                    require return_data.size >= 32
                    _4461 = mem[_2068 + 128 len 4], Mask(224, 32, s) >> 32
                    require mem[_2068 + 128 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                    require mem[_2068 + 128 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                    require mem[_2068 + mem[_2068 + 128 len 4], Mask(224, 32, s) >> 32 + 128] <= 4294967296 and mem[_2068 + 128 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_2068 + mem[_2068 + 128 len 4], Mask(224, 32, s) >> 32 + 128]) + 32 <= return_data.size
                    mem[_2068 + ceil32(return_data.size) + 128] = mem[_2068 + mem[_2068 + 128 len 4], Mask(224, 32, s) >> 32 + 128]
                    _4702 = mem[_2068 + _4461 + 128]
                    s = 0
                    while s < 32 * _4702:
                        mem[s + _2068 + ceil32(return_data.size) + 160] = mem[s + _2068 + _4461 + 160]
                        s = s + 32
                        continue 
                    mem[64] = (32 * _4702) + _2068 + ceil32(return_data.size) + 160
                    require mem[_2068 + ceil32(return_data.size) + 128] - 1 < mem[_2068 + ceil32(return_data.size) + 128]
                    if mem[(32 * mem[_2068 + ceil32(return_data.size) + 128] - 1) + _2068 + ceil32(return_data.size) + 160] <= t:
                        idx = idx + 1
                        t = t
                        continue 
                    idx = idx + 1
                    t = mem[(32 * mem[_2068 + ceil32(return_data.size) + 128] - 1) + _2068 + ceil32(return_data.size) + 160]
                    continue 
                _2202 = mem[64]
                mem[mem[64]] = 3
                mem[64] = mem[64] + 128
                require 0 < mem[_2202]
                mem[_2202 + 32] = 0x49d68029688eabf473097a2fc38ef61633a3c
                require 1 < mem[_2202]
                mem[_2202 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                require 2 < mem[_2202]
                mem[_2202 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                mem[_2202 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_2202 + 132] = s
                mem[_2202 + 164] = 64
                mem[_2202 + 196] = mem[_2202]
                u = 0
                while u < 32 * mem[_2202]:
                    mem[u + _2202 + 228] = mem[u + _2202 + 32]
                    u = u + 32
                    continue 
                require ext_code.size(0x7b17021fcb7bc888641dc3bedfed3734fcaf2c87)
                staticcall 0x7b17021fcb7bc888641dc3bedfed3734fcaf2c87.getAmountsOut(uint256 rg1, address[] rg2) with:
                        gas gas_remaining wei
                       args s, 64, mem[_2202 + 196 len (32 * mem[_2202]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_2202 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _2202 + ceil32(return_data.size) + 128
                require return_data.size >= 32
                _4463 = mem[_2202 + 128 len 4], Mask(224, 32, s) >> 32
                require mem[_2202 + 128 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                require mem[_2202 + 128 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                require mem[_2202 + mem[_2202 + 128 len 4], Mask(224, 32, s) >> 32 + 128] <= 4294967296 and mem[_2202 + 128 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_2202 + mem[_2202 + 128 len 4], Mask(224, 32, s) >> 32 + 128]) + 32 <= return_data.size
                mem[_2202 + ceil32(return_data.size) + 128] = mem[_2202 + mem[_2202 + 128 len 4], Mask(224, 32, s) >> 32 + 128]
                _4703 = mem[_2202 + _4463 + 128]
                s = 0
                while s < 32 * _4703:
                    mem[s + _2202 + ceil32(return_data.size) + 160] = mem[s + _2202 + _4463 + 160]
                    s = s + 32
                    continue 
                mem[64] = (32 * _4703) + _2202 + ceil32(return_data.size) + 160
                require mem[_2202 + ceil32(return_data.size) + 128] - 1 < mem[_2202 + ceil32(return_data.size) + 128]
                if mem[(32 * mem[_2202 + ceil32(return_data.size) + 128] - 1) + _2202 + ceil32(return_data.size) + 160] <= t:
                    idx = idx + 1
                    t = t
                    continue 
                idx = idx + 1
                t = mem[(32 * mem[_2202 + ceil32(return_data.size) + 128] - 1) + _2202 + ceil32(return_data.size) + 160]
                continue 
            if idx != 5:
                if s <= t:
                    idx = idx + 1
                    t = t
                    continue 
                idx = idx + 1
                t = s
                continue 
            _1945 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            require 0 < mem[_1945]
            mem[_1945 + 32] = 0x49d68029688eabf473097a2fc38ef61633a3c
            require 1 < mem[_1945]
            mem[_1945 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
            mem[_1945 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[_1945 + 100] = s
            mem[_1945 + 132] = 64
            mem[_1945 + 164] = mem[_1945]
            u = 0
            while u < 32 * mem[_1945]:
                mem[u + _1945 + 196] = mem[u + _1945 + 32]
                u = u + 32
                continue 
            require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
            staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c29.getAmountsOut(uint256 rg1, address[] rg2) with:
                    gas gas_remaining wei
                   args s, 64, mem[_1945 + 164 len (32 * mem[_1945]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[_1945 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = _1945 + ceil32(return_data.size) + 96
            require return_data.size >= 32
            _4457 = mem[_1945 + 96 len 4], Mask(224, 32, s) >> 32
            require mem[_1945 + 96 len 4], Mask(224, 32, s) >> 32 <= 4294967296
            require mem[_1945 + 96 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
            require mem[_1945 + mem[_1945 + 96 len 4], Mask(224, 32, s) >> 32 + 96] <= 4294967296 and mem[_1945 + 96 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_1945 + mem[_1945 + 96 len 4], Mask(224, 32, s) >> 32 + 96]) + 32 <= return_data.size
            mem[_1945 + ceil32(return_data.size) + 96] = mem[_1945 + mem[_1945 + 96 len 4], Mask(224, 32, s) >> 32 + 96]
            _4700 = mem[_1945 + _4457 + 96]
            s = 0
            while s < 32 * _4700:
                mem[s + _1945 + ceil32(return_data.size) + 128] = mem[s + _1945 + _4457 + 128]
                s = s + 32
                continue 
            require mem[_1945 + ceil32(return_data.size) + 96] - 1 < mem[_1945 + ceil32(return_data.size) + 96]
            _5792 = mem[(32 * mem[_1945 + ceil32(return_data.size) + 96] - 1) + _1945 + ceil32(return_data.size) + 128]
            mem[(32 * _4700) + _1945 + ceil32(return_data.size) + 128] = 2
            mem[(32 * _4700) + _1945 + ceil32(return_data.size) + 160] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
            mem[(32 * _4700) + _1945 + ceil32(return_data.size) + 192] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
            mem[(32 * _4700) + _1945 + ceil32(return_data.size) + 224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[(32 * _4700) + _1945 + ceil32(return_data.size) + 228] = _5792
            mem[(32 * _4700) + _1945 + ceil32(return_data.size) + 260] = 64
            mem[(32 * _4700) + _1945 + ceil32(return_data.size) + 292] = 2
            s = 0
            while s < 64:
                mem[s + (32 * _4700) + _1945 + ceil32(return_data.size) + 324] = mem[s + (32 * _4700) + _1945 + ceil32(return_data.size) + 160]
                s = s + 32
                continue 
            require ext_code.size(0x1b02da8cb0d097eb8d57a175b88c7d8b47997506)
            staticcall 0x1b02da8cb0d097eb8d57a175b88c7d8b47997506.getAmountsOut(uint256 rg1, address[] rg2) with:
                    gas gas_remaining wei
                   args _5792, Array(len=2, data=mem[(32 * _4700) + _1945 + ceil32(return_data.size) + 324 len 64])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _4700) + _1945 + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * _4700) + _1945 + (2 * ceil32(return_data.size)) + 224
            require return_data.size >= 32
            _6271 = mem[(32 * _4700) + _1945 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _5792) >> 32
            require mem[(32 * _4700) + _1945 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _5792) >> 32 <= 4294967296
            require mem[(32 * _4700) + _1945 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _5792) >> 32 + 32 <= return_data.size
            require mem[(32 * _4700) + _1945 + ceil32(return_data.size) + mem[(32 * _4700) + _1945 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _5792) >> 32 + 224] <= 4294967296 and mem[(32 * _4700) + _1945 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _5792) >> 32 + (32 * mem[(32 * _4700) + _1945 + ceil32(return_data.size) + mem[(32 * _4700) + _1945 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _5792) >> 32 + 224]) + 32 <= return_data.size
            mem[(32 * _4700) + _1945 + (2 * ceil32(return_data.size)) + 224] = mem[(32 * _4700) + _1945 + ceil32(return_data.size) + mem[(32 * _4700) + _1945 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _5792) >> 32 + 224]
            _6311 = mem[(32 * _4700) + _1945 + ceil32(return_data.size) + _6271 + 224]
            s = 0
            while s < 32 * _6311:
                mem[s + (32 * _4700) + _1945 + (2 * ceil32(return_data.size)) + 256] = mem[s + (32 * _4700) + _1945 + ceil32(return_data.size) + _6271 + 256]
                s = s + 32
                continue 
            mem[64] = (32 * _6311) + (32 * _4700) + _1945 + (2 * ceil32(return_data.size)) + 256
            require mem[(32 * _4700) + _1945 + (2 * ceil32(return_data.size)) + 224] - 1 < mem[(32 * _4700) + _1945 + (2 * ceil32(return_data.size)) + 224]
            if mem[(32 * mem[(32 * _4700) + _1945 + (2 * ceil32(return_data.size)) + 224] - 1) + (32 * _4700) + _1945 + (2 * ceil32(return_data.size)) + 256] <= t:
                idx = idx + 1
                t = t
                continue 
            idx = idx + 1
            t = mem[(32 * mem[(32 * _4700) + _1945 + (2 * ceil32(return_data.size)) + 224] - 1) + (32 * _4700) + _1945 + (2 * ceil32(return_data.size)) + 256]
            continue 
    else:
        if 10 * 10^6 * sub_7d0b6809 / sub_7d0b6809 != 10 * 10^6:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        idx = 0
        s = 0
        while idx < 6:
            if not idx:
                mem[mem[64] + 4] = 2
                mem[mem[64] + 36] = 0
                mem[mem[64] + 68] = 10 * 10^6 * sub_7d0b6809
                require ext_code.size(0x92d5ebf3593a92888c25c0abef126583d4b5312e)
                staticcall 0x92d5ebf3593a92888c25c0abef126583d4b5312e.get_dy_underlying(int128 rg1, int128 rg2, uint256 rg3) with:
                        gas gas_remaining wei
                       args 2, 0, 10 * 10^6 * sub_7d0b6809
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
                mem[mem[64] + 36] = 0
                mem[mem[64] + 68] = 10 * 10^6 * sub_7d0b6809
                require ext_code.size(0x83e5f18da720119ff363cf63417628eb0e9fd523)
                staticcall 0x83e5f18da720119ff363cf63417628eb0e9fd523.get_dy(int128 rg1, int128 rg2, uint256 rg3) with:
                        gas gas_remaining wei
                       args 2, 0, 10 * 10^6 * sub_7d0b6809
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
                _171 = mem[64]
                mem[mem[64]] = 3
                mem[64] = mem[64] + 128
                require 0 < mem[_171]
                mem[_171 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                require 1 < mem[_171]
                mem[_171 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                require 2 < mem[_171]
                mem[_171 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                mem[_171 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_171 + 132] = 10 * 10^6 * sub_7d0b6809
                mem[_171 + 164] = 64
                mem[_171 + 196] = mem[_171]
                t = 0
                while t < 32 * mem[_171]:
                    mem[t + _171 + 228] = mem[t + _171 + 32]
                    t = t + 32
                    continue 
                require ext_code.size(0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52)
                staticcall 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52.getAmountsOut(uint256 rg1, address[] rg2) with:
                        gas gas_remaining wei
                       args 10 * 10^6 * sub_7d0b6809, 64, mem[_171 + 196 len (32 * mem[_171]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_171 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _171 + ceil32(return_data.size) + 128
                require return_data.size >= 32
                _1335 = mem[_171 + 128 len 4], Mask(224, 32, 10 * 10^6 * sub_7d0b6809) >> 32
                require mem[_171 + 128 len 4], Mask(224, 32, 10 * 10^6 * sub_7d0b6809) >> 32 <= 4294967296
                require mem[_171 + 128 len 4], Mask(224, 32, 10 * 10^6 * sub_7d0b6809) >> 32 + 32 <= return_data.size
                require mem[_171 + mem[_171 + 128 len 4], Mask(224, 32, 10 * 10^6 * sub_7d0b6809) >> 32 + 128] <= 4294967296 and mem[_171 + 128 len 4], Mask(224, 32, 10 * 10^6 * sub_7d0b6809) >> 32 + (32 * mem[_171 + mem[_171 + 128 len 4], Mask(224, 32, 10 * 10^6 * sub_7d0b6809) >> 32 + 128]) + 32 <= return_data.size
                mem[_171 + ceil32(return_data.size) + 128] = mem[_171 + mem[_171 + 128 len 4], Mask(224, 32, 10 * 10^6 * sub_7d0b6809) >> 32 + 128]
                _1557 = mem[_171 + _1335 + 128]
                t = 0
                while t < 32 * _1557:
                    mem[t + _171 + ceil32(return_data.size) + 160] = mem[t + _171 + _1335 + 160]
                    t = t + 32
                    continue 
                mem[64] = (32 * _1557) + _171 + ceil32(return_data.size) + 160
                require mem[_171 + ceil32(return_data.size) + 128] - 1 < mem[_171 + ceil32(return_data.size) + 128]
                if mem[(32 * mem[_171 + ceil32(return_data.size) + 128] - 1) + _171 + ceil32(return_data.size) + 160] <= s:
                    idx = idx + 1
                    s = s
                    continue 
                idx = idx + 1
                s = mem[(32 * mem[_171 + ceil32(return_data.size) + 128] - 1) + _171 + ceil32(return_data.size) + 160]
                continue 
            if 3 == idx:
                if 2 == idx:
                    _200 = mem[64]
                    mem[mem[64]] = 3
                    mem[64] = mem[64] + 128
                    require 0 < mem[_200]
                    mem[_200 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    require 1 < mem[_200]
                    mem[_200 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                    require 2 < mem[_200]
                    mem[_200 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    mem[_200 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_200 + 132] = 10 * 10^6 * sub_7d0b6809
                    mem[_200 + 164] = 64
                    mem[_200 + 196] = mem[_200]
                    t = 0
                    while t < 32 * mem[_200]:
                        mem[t + _200 + 228] = mem[t + _200 + 32]
                        t = t + 32
                        continue 
                    require ext_code.size(0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52)
                    staticcall 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52.getAmountsOut(uint256 rg1, address[] rg2) with:
                            gas gas_remaining wei
                           args 10 * 10^6 * sub_7d0b6809, 64, mem[_200 + 196 len (32 * mem[_200]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_200 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _200 + ceil32(return_data.size) + 128
                    require return_data.size >= 32
                    _1343 = mem[_200 + 128 len 4], Mask(224, 32, 10 * 10^6 * sub_7d0b6809) >> 32
                    require mem[_200 + 128 len 4], Mask(224, 32, 10 * 10^6 * sub_7d0b6809) >> 32 <= 4294967296
                    require mem[_200 + 128 len 4], Mask(224, 32, 10 * 10^6 * sub_7d0b6809) >> 32 + 32 <= return_data.size
                    require mem[_200 + mem[_200 + 128 len 4], Mask(224, 32, 10 * 10^6 * sub_7d0b6809) >> 32 + 128] <= 4294967296 and mem[_200 + 128 len 4], Mask(224, 32, 10 * 10^6 * sub_7d0b6809) >> 32 + (32 * mem[_200 + mem[_200 + 128 len 4], Mask(224, 32, 10 * 10^6 * sub_7d0b6809) >> 32 + 128]) + 32 <= return_data.size
                    mem[_200 + ceil32(return_data.size) + 128] = mem[_200 + mem[_200 + 128 len 4], Mask(224, 32, 10 * 10^6 * sub_7d0b6809) >> 32 + 128]
                    _1561 = mem[_200 + _1343 + 128]
                    t = 0
                    while t < 32 * _1561:
                        mem[t + _200 + ceil32(return_data.size) + 160] = mem[t + _200 + _1343 + 160]
                        t = t + 32
                        continue 
                    mem[64] = (32 * _1561) + _200 + ceil32(return_data.size) + 160
                    require mem[_200 + ceil32(return_data.size) + 128] - 1 < mem[_200 + ceil32(return_data.size) + 128]
                    if mem[(32 * mem[_200 + ceil32(return_data.size) + 128] - 1) + _200 + ceil32(return_data.size) + 160] <= s:
                        idx = idx + 1
                        s = s
                        continue 
                    idx = idx + 1
                    s = mem[(32 * mem[_200 + ceil32(return_data.size) + 128] - 1) + _200 + ceil32(return_data.size) + 160]
                    continue 
                if 3 == idx:
                    _238 = mem[64]
                    mem[mem[64]] = 3
                    mem[64] = mem[64] + 128
                    require 0 < mem[_238]
                    mem[_238 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    require 1 < mem[_238]
                    mem[_238 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                    require 2 < mem[_238]
                    mem[_238 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    mem[_238 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_238 + 132] = 10 * 10^6 * sub_7d0b6809
                    mem[_238 + 164] = 64
                    mem[_238 + 196] = mem[_238]
                    t = 0
                    while t < 32 * mem[_238]:
                        mem[t + _238 + 228] = mem[t + _238 + 32]
                        t = t + 32
                        continue 
                    require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                    staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c29.getAmountsOut(uint256 rg1, address[] rg2) with:
                            gas gas_remaining wei
                           args 10 * 10^6 * sub_7d0b6809, 64, mem[_238 + 196 len (32 * mem[_238]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_238 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _238 + ceil32(return_data.size) + 128
                    require return_data.size >= 32
                    _1341 = mem[_238 + 128 len 4], Mask(224, 32, 10 * 10^6 * sub_7d0b6809) >> 32
                    require mem[_238 + 128 len 4], Mask(224, 32, 10 * 10^6 * sub_7d0b6809) >> 32 <= 4294967296
                    require mem[_238 + 128 len 4], Mask(224, 32, 10 * 10^6 * sub_7d0b6809) >> 32 + 32 <= return_data.size
                    require mem[_238 + mem[_238 + 128 len 4], Mask(224, 32, 10 * 10^6 * sub_7d0b6809) >> 32 + 128] <= 4294967296 and mem[_238 + 128 len 4], Mask(224, 32, 10 * 10^6 * sub_7d0b6809) >> 32 + (32 * mem[_238 + mem[_238 + 128 len 4], Mask(224, 32, 10 * 10^6 * sub_7d0b6809) >> 32 + 128]) + 32 <= return_data.size
                    mem[_238 + ceil32(return_data.size) + 128] = mem[_238 + mem[_238 + 128 len 4], Mask(224, 32, 10 * 10^6 * sub_7d0b6809) >> 32 + 128]
                    _1560 = mem[_238 + _1341 + 128]
                    t = 0
                    while t < 32 * _1560:
                        mem[t + _238 + ceil32(return_data.size) + 160] = mem[t + _238 + _1341 + 160]
                        t = t + 32
                        continue 
                    mem[64] = (32 * _1560) + _238 + ceil32(return_data.size) + 160
                    require mem[_238 + ceil32(return_data.size) + 128] - 1 < mem[_238 + ceil32(return_data.size) + 128]
                    if mem[(32 * mem[_238 + ceil32(return_data.size) + 128] - 1) + _238 + ceil32(return_data.size) + 160] <= s:
                        idx = idx + 1
                        s = s
                        continue 
                    idx = idx + 1
                    s = mem[(32 * mem[_238 + ceil32(return_data.size) + 128] - 1) + _238 + ceil32(return_data.size) + 160]
                    continue 
                if idx != 4:
                    _236 = mem[64]
                    mem[mem[64]] = 3
                    mem[64] = mem[64] + 128
                    require 0 < mem[_236]
                    mem[_236 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    require 1 < mem[_236]
                    mem[_236 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                    require 2 < mem[_236]
                    mem[_236 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    mem[_236 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_236 + 132] = 10 * 10^6 * sub_7d0b6809
                    mem[_236 + 164] = 64
                    mem[_236 + 196] = mem[_236]
                    t = 0
                    while t < 32 * mem[_236]:
                        mem[t + _236 + 228] = mem[t + _236 + 32]
                        t = t + 32
                        continue 
                    require ext_code.size(0)
                    staticcall 0x0.getAmountsOut(uint256 rg1, address[] rg2) with:
                            gas gas_remaining wei
                           args 10 * 10^6 * sub_7d0b6809, 64, mem[_236 + 196 len (32 * mem[_236]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_236 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _236 + ceil32(return_data.size) + 128
                    require return_data.size >= 32
                    _1337 = mem[_236 + 128 len 4], Mask(224, 32, 10 * 10^6 * sub_7d0b6809) >> 32
                    require mem[_236 + 128 len 4], Mask(224, 32, 10 * 10^6 * sub_7d0b6809) >> 32 <= 4294967296
                    require mem[_236 + 128 len 4], Mask(224, 32, 10 * 10^6 * sub_7d0b6809) >> 32 + 32 <= return_data.size
                    require mem[_236 + mem[_236 + 128 len 4], Mask(224, 32, 10 * 10^6 * sub_7d0b6809) >> 32 + 128] <= 4294967296 and mem[_236 + 128 len 4], Mask(224, 32, 10 * 10^6 * sub_7d0b6809) >> 32 + (32 * mem[_236 + mem[_236 + 128 len 4], Mask(224, 32, 10 * 10^6 * sub_7d0b6809) >> 32 + 128]) + 32 <= return_data.size
                    mem[_236 + ceil32(return_data.size) + 128] = mem[_236 + mem[_236 + 128 len 4], Mask(224, 32, 10 * 10^6 * sub_7d0b6809) >> 32 + 128]
                    _1558 = mem[_236 + _1337 + 128]
                    t = 0
                    while t < 32 * _1558:
                        mem[t + _236 + ceil32(return_data.size) + 160] = mem[t + _236 + _1337 + 160]
                        t = t + 32
                        continue 
                    mem[64] = (32 * _1558) + _236 + ceil32(return_data.size) + 160
                    require mem[_236 + ceil32(return_data.size) + 128] - 1 < mem[_236 + ceil32(return_data.size) + 128]
                    if mem[(32 * mem[_236 + ceil32(return_data.size) + 128] - 1) + _236 + ceil32(return_data.size) + 160] <= s:
                        idx = idx + 1
                        s = s
                        continue 
                    idx = idx + 1
                    s = mem[(32 * mem[_236 + ceil32(return_data.size) + 128] - 1) + _236 + ceil32(return_data.size) + 160]
                    continue 
                _293 = mem[64]
                mem[mem[64]] = 3
                mem[64] = mem[64] + 128
                require 0 < mem[_293]
                mem[_293 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                require 1 < mem[_293]
                mem[_293 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                require 2 < mem[_293]
                mem[_293 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                mem[_293 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_293 + 132] = 10 * 10^6 * sub_7d0b6809
                mem[_293 + 164] = 64
                mem[_293 + 196] = mem[_293]
                t = 0
                while t < 32 * mem[_293]:
                    mem[t + _293 + 228] = mem[t + _293 + 32]
                    t = t + 32
                    continue 
                require ext_code.size(0x7b17021fcb7bc888641dc3bedfed3734fcaf2c87)
                staticcall 0x7b17021fcb7bc888641dc3bedfed3734fcaf2c87.getAmountsOut(uint256 rg1, address[] rg2) with:
                        gas gas_remaining wei
                       args 10 * 10^6 * sub_7d0b6809, 64, mem[_293 + 196 len (32 * mem[_293]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_293 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _293 + ceil32(return_data.size) + 128
                require return_data.size >= 32
                _1339 = mem[_293 + 128 len 4], Mask(224, 32, 10 * 10^6 * sub_7d0b6809) >> 32
                require mem[_293 + 128 len 4], Mask(224, 32, 10 * 10^6 * sub_7d0b6809) >> 32 <= 4294967296
                require mem[_293 + 128 len 4], Mask(224, 32, 10 * 10^6 * sub_7d0b6809) >> 32 + 32 <= return_data.size
                require mem[_293 + mem[_293 + 128 len 4], Mask(224, 32, 10 * 10^6 * sub_7d0b6809) >> 32 + 128] <= 4294967296 and mem[_293 + 128 len 4], Mask(224, 32, 10 * 10^6 * sub_7d0b6809) >> 32 + (32 * mem[_293 + mem[_293 + 128 len 4], Mask(224, 32, 10 * 10^6 * sub_7d0b6809) >> 32 + 128]) + 32 <= return_data.size
                mem[_293 + ceil32(return_data.size) + 128] = mem[_293 + mem[_293 + 128 len 4], Mask(224, 32, 10 * 10^6 * sub_7d0b6809) >> 32 + 128]
                _1559 = mem[_293 + _1339 + 128]
                t = 0
                while t < 32 * _1559:
                    mem[t + _293 + ceil32(return_data.size) + 160] = mem[t + _293 + _1339 + 160]
                    t = t + 32
                    continue 
                mem[64] = (32 * _1559) + _293 + ceil32(return_data.size) + 160
                require mem[_293 + ceil32(return_data.size) + 128] - 1 < mem[_293 + ceil32(return_data.size) + 128]
                if mem[(32 * mem[_293 + ceil32(return_data.size) + 128] - 1) + _293 + ceil32(return_data.size) + 160] <= s:
                    idx = idx + 1
                    s = s
                    continue 
                idx = idx + 1
                s = mem[(32 * mem[_293 + ceil32(return_data.size) + 128] - 1) + _293 + ceil32(return_data.size) + 160]
                continue 
            if 4 == idx:
                if 2 == idx:
                    _243 = mem[64]
                    mem[mem[64]] = 3
                    mem[64] = mem[64] + 128
                    require 0 < mem[_243]
                    mem[_243 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    require 1 < mem[_243]
                    mem[_243 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                    require 2 < mem[_243]
                    mem[_243 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    mem[_243 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_243 + 132] = 10 * 10^6 * sub_7d0b6809
                    mem[_243 + 164] = 64
                    mem[_243 + 196] = mem[_243]
                    t = 0
                    while t < 32 * mem[_243]:
                        mem[t + _243 + 228] = mem[t + _243 + 32]
                        t = t + 32
                        continue 
                    require ext_code.size(0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52)
                    staticcall 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52.getAmountsOut(uint256 rg1, address[] rg2) with:
                            gas gas_remaining wei
                           args 10 * 10^6 * sub_7d0b6809, 64, mem[_243 + 196 len (32 * mem[_243]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_243 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _243 + ceil32(return_data.size) + 128
                    require return_data.size >= 32
                    _1355 = mem[_243 + 128 len 4], Mask(224, 32, 10 * 10^6 * sub_7d0b6809) >> 32
                    require mem[_243 + 128 len 4], Mask(224, 32, 10 * 10^6 * sub_7d0b6809) >> 32 <= 4294967296
                    require mem[_243 + 128 len 4], Mask(224, 32, 10 * 10^6 * sub_7d0b6809) >> 32 + 32 <= return_data.size
                    require mem[_243 + mem[_243 + 128 len 4], Mask(224, 32, 10 * 10^6 * sub_7d0b6809) >> 32 + 128] <= 4294967296 and mem[_243 + 128 len 4], Mask(224, 32, 10 * 10^6 * sub_7d0b6809) >> 32 + (32 * mem[_243 + mem[_243 + 128 len 4], Mask(224, 32, 10 * 10^6 * sub_7d0b6809) >> 32 + 128]) + 32 <= return_data.size
                    mem[_243 + ceil32(return_data.size) + 128] = mem[_243 + mem[_243 + 128 len 4], Mask(224, 32, 10 * 10^6 * sub_7d0b6809) >> 32 + 128]
                    _1567 = mem[_243 + _1355 + 128]
                    t = 0
                    while t < 32 * _1567:
                        mem[t + _243 + ceil32(return_data.size) + 160] = mem[t + _243 + _1355 + 160]
                        t = t + 32
                        continue 
                    mem[64] = (32 * _1567) + _243 + ceil32(return_data.size) + 160
                    require mem[_243 + ceil32(return_data.size) + 128] - 1 < mem[_243 + ceil32(return_data.size) + 128]
                    if mem[(32 * mem[_243 + ceil32(return_data.size) + 128] - 1) + _243 + ceil32(return_data.size) + 160] <= s:
                        idx = idx + 1
                        s = s
                        continue 
                    idx = idx + 1
                    s = mem[(32 * mem[_243 + ceil32(return_data.size) + 128] - 1) + _243 + ceil32(return_data.size) + 160]
                    continue 
                if 3 == idx:
                    _302 = mem[64]
                    mem[mem[64]] = 3
                    mem[64] = mem[64] + 128
                    require 0 < mem[_302]
                    mem[_302 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    require 1 < mem[_302]
                    mem[_302 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                    require 2 < mem[_302]
                    mem[_302 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    mem[_302 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_302 + 132] = 10 * 10^6 * sub_7d0b6809
                    mem[_302 + 164] = 64
                    mem[_302 + 196] = mem[_302]
                    t = 0
                    while t < 32 * mem[_302]:
                        mem[t + _302 + 228] = mem[t + _302 + 32]
                        t = t + 32
                        continue 
                    require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                    staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c29.getAmountsOut(uint256 rg1, address[] rg2) with:
                            gas gas_remaining wei
                           args 10 * 10^6 * sub_7d0b6809, 64, mem[_302 + 196 len (32 * mem[_302]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_302 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _302 + ceil32(return_data.size) + 128
                    require return_data.size >= 32
                    _1353 = mem[_302 + 128 len 4], Mask(224, 32, 10 * 10^6 * sub_7d0b6809) >> 32
                    require mem[_302 + 128 len 4], Mask(224, 32, 10 * 10^6 * sub_7d0b6809) >> 32 <= 4294967296
                    require mem[_302 + 128 len 4], Mask(224, 32, 10 * 10^6 * sub_7d0b6809) >> 32 + 32 <= return_data.size
                    require mem[_302 + mem[_302 + 128 len 4], Mask(224, 32, 10 * 10^6 * sub_7d0b6809) >> 32 + 128] <= 4294967296 and mem[_302 + 128 len 4], Mask(224, 32, 10 * 10^6 * sub_7d0b6809) >> 32 + (32 * mem[_302 + mem[_302 + 128 len 4], Mask(224, 32, 10 * 10^6 * sub_7d0b6809) >> 32 + 128]) + 32 <= return_data.size
                    mem[_302 + ceil32(return_data.size) + 128] = mem[_302 + mem[_302 + 128 len 4], Mask(224, 32, 10 * 10^6 * sub_7d0b6809) >> 32 + 128]
                    _1566 = mem[_302 + _1353 + 128]
                    t = 0
                    while t < 32 * _1566:
                        mem[t + _302 + ceil32(return_data.size) + 160] = mem[t + _302 + _1353 + 160]
                        t = t + 32
                        continue 
                    mem[64] = (32 * _1566) + _302 + ceil32(return_data.size) + 160
                    require mem[_302 + ceil32(return_data.size) + 128] - 1 < mem[_302 + ceil32(return_data.size) + 128]
                    if mem[(32 * mem[_302 + ceil32(return_data.size) + 128] - 1) + _302 + ceil32(return_data.size) + 160] <= s:
                        idx = idx + 1
                        s = s
                        continue 
                    idx = idx + 1
                    s = mem[(32 * mem[_302 + ceil32(return_data.size) + 128] - 1) + _302 + ceil32(return_data.size) + 160]
                    continue 
                if idx != 4:
                    _300 = mem[64]
                    mem[mem[64]] = 3
                    mem[64] = mem[64] + 128
                    require 0 < mem[_300]
                    mem[_300 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    require 1 < mem[_300]
                    mem[_300 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                    require 2 < mem[_300]
                    mem[_300 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    mem[_300 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_300 + 132] = 10 * 10^6 * sub_7d0b6809
                    mem[_300 + 164] = 64
                    mem[_300 + 196] = mem[_300]
                    t = 0
                    while t < 32 * mem[_300]:
                        mem[t + _300 + 228] = mem[t + _300 + 32]
                        t = t + 32
                        continue 
                    require ext_code.size(0)
                    staticcall 0x0.getAmountsOut(uint256 rg1, address[] rg2) with:
                            gas gas_remaining wei
                           args 10 * 10^6 * sub_7d0b6809, 64, mem[_300 + 196 len (32 * mem[_300]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_300 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _300 + ceil32(return_data.size) + 128
                    require return_data.size >= 32
                    _1349 = mem[_300 + 128 len 4], Mask(224, 32, 10 * 10^6 * sub_7d0b6809) >> 32
                    require mem[_300 + 128 len 4], Mask(224, 32, 10 * 10^6 * sub_7d0b6809) >> 32 <= 4294967296
                    require mem[_300 + 128 len 4], Mask(224, 32, 10 * 10^6 * sub_7d0b6809) >> 32 + 32 <= return_data.size
                    require mem[_300 + mem[_300 + 128 len 4], Mask(224, 32, 10 * 10^6 * sub_7d0b6809) >> 32 + 128] <= 4294967296 and mem[_300 + 128 len 4], Mask(224, 32, 10 * 10^6 * sub_7d0b6809) >> 32 + (32 * mem[_300 + mem[_300 + 128 len 4], Mask(224, 32, 10 * 10^6 * sub_7d0b6809) >> 32 + 128]) + 32 <= return_data.size
                    mem[_300 + ceil32(return_data.size) + 128] = mem[_300 + mem[_300 + 128 len 4], Mask(224, 32, 10 * 10^6 * sub_7d0b6809) >> 32 + 128]
                    _1564 = mem[_300 + _1349 + 128]
                    t = 0
                    while t < 32 * _1564:
                        mem[t + _300 + ceil32(return_data.size) + 160] = mem[t + _300 + _1349 + 160]
                        t = t + 32
                        continue 
                    mem[64] = (32 * _1564) + _300 + ceil32(return_data.size) + 160
                    require mem[_300 + ceil32(return_data.size) + 128] - 1 < mem[_300 + ceil32(return_data.size) + 128]
                    if mem[(32 * mem[_300 + ceil32(return_data.size) + 128] - 1) + _300 + ceil32(return_data.size) + 160] <= s:
                        idx = idx + 1
                        s = s
                        continue 
                    idx = idx + 1
                    s = mem[(32 * mem[_300 + ceil32(return_data.size) + 128] - 1) + _300 + ceil32(return_data.size) + 160]
                    continue 
                _374 = mem[64]
                mem[mem[64]] = 3
                mem[64] = mem[64] + 128
                require 0 < mem[_374]
                mem[_374 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                require 1 < mem[_374]
                mem[_374 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                require 2 < mem[_374]
                mem[_374 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                mem[_374 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_374 + 132] = 10 * 10^6 * sub_7d0b6809
                mem[_374 + 164] = 64
                mem[_374 + 196] = mem[_374]
                t = 0
                while t < 32 * mem[_374]:
                    mem[t + _374 + 228] = mem[t + _374 + 32]
                    t = t + 32
                    continue 
                require ext_code.size(0x7b17021fcb7bc888641dc3bedfed3734fcaf2c87)
                staticcall 0x7b17021fcb7bc888641dc3bedfed3734fcaf2c87.getAmountsOut(uint256 rg1, address[] rg2) with:
                        gas gas_remaining wei
                       args 10 * 10^6 * sub_7d0b6809, 64, mem[_374 + 196 len (32 * mem[_374]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_374 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _374 + ceil32(return_data.size) + 128
                require return_data.size >= 32
                _1351 = mem[_374 + 128 len 4], Mask(224, 32, 10 * 10^6 * sub_7d0b6809) >> 32
                require mem[_374 + 128 len 4], Mask(224, 32, 10 * 10^6 * sub_7d0b6809) >> 32 <= 4294967296
                require mem[_374 + 128 len 4], Mask(224, 32, 10 * 10^6 * sub_7d0b6809) >> 32 + 32 <= return_data.size
                require mem[_374 + mem[_374 + 128 len 4], Mask(224, 32, 10 * 10^6 * sub_7d0b6809) >> 32 + 128] <= 4294967296 and mem[_374 + 128 len 4], Mask(224, 32, 10 * 10^6 * sub_7d0b6809) >> 32 + (32 * mem[_374 + mem[_374 + 128 len 4], Mask(224, 32, 10 * 10^6 * sub_7d0b6809) >> 32 + 128]) + 32 <= return_data.size
                mem[_374 + ceil32(return_data.size) + 128] = mem[_374 + mem[_374 + 128 len 4], Mask(224, 32, 10 * 10^6 * sub_7d0b6809) >> 32 + 128]
                _1565 = mem[_374 + _1351 + 128]
                t = 0
                while t < 32 * _1565:
                    mem[t + _374 + ceil32(return_data.size) + 160] = mem[t + _374 + _1351 + 160]
                    t = t + 32
                    continue 
                mem[64] = (32 * _1565) + _374 + ceil32(return_data.size) + 160
                require mem[_374 + ceil32(return_data.size) + 128] - 1 < mem[_374 + ceil32(return_data.size) + 128]
                if mem[(32 * mem[_374 + ceil32(return_data.size) + 128] - 1) + _374 + ceil32(return_data.size) + 160] <= s:
                    idx = idx + 1
                    s = s
                    continue 
                idx = idx + 1
                s = mem[(32 * mem[_374 + ceil32(return_data.size) + 128] - 1) + _374 + ceil32(return_data.size) + 160]
                continue 
            if idx != 5:
                if 10 * 10^6 * sub_7d0b6809 <= s:
                    idx = idx + 1
                    s = s
                    continue 
                idx = idx + 1
                s = 10 * 10^6 * sub_7d0b6809
                continue 
            _241 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            require 0 < mem[_241]
            mem[_241 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
            require 1 < mem[_241]
            mem[_241 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
            mem[_241 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[_241 + 100] = 10 * 10^6 * sub_7d0b6809
            mem[_241 + 132] = 64
            mem[_241 + 164] = mem[_241]
            t = 0
            while t < 32 * mem[_241]:
                mem[t + _241 + 196] = mem[t + _241 + 32]
                t = t + 32
                continue 
            require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
            staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c29.getAmountsOut(uint256 rg1, address[] rg2) with:
                    gas gas_remaining wei
                   args 10 * 10^6 * sub_7d0b6809, 64, mem[_241 + 164 len (32 * mem[_241]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[_241 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = _241 + ceil32(return_data.size) + 96
            require return_data.size >= 32
            _1345 = mem[_241 + 96 len 4], Mask(224, 32, 10 * 10^6 * sub_7d0b6809) >> 32
            require mem[_241 + 96 len 4], Mask(224, 32, 10 * 10^6 * sub_7d0b6809) >> 32 <= 4294967296
            require mem[_241 + 96 len 4], Mask(224, 32, 10 * 10^6 * sub_7d0b6809) >> 32 + 32 <= return_data.size
            require mem[_241 + mem[_241 + 96 len 4], Mask(224, 32, 10 * 10^6 * sub_7d0b6809) >> 32 + 96] <= 4294967296 and mem[_241 + 96 len 4], Mask(224, 32, 10 * 10^6 * sub_7d0b6809) >> 32 + (32 * mem[_241 + mem[_241 + 96 len 4], Mask(224, 32, 10 * 10^6 * sub_7d0b6809) >> 32 + 96]) + 32 <= return_data.size
            mem[_241 + ceil32(return_data.size) + 96] = mem[_241 + mem[_241 + 96 len 4], Mask(224, 32, 10 * 10^6 * sub_7d0b6809) >> 32 + 96]
            _1562 = mem[_241 + _1345 + 96]
            t = 0
            while t < 32 * _1562:
                mem[t + _241 + ceil32(return_data.size) + 128] = mem[t + _241 + _1345 + 128]
                t = t + 32
                continue 
            require mem[_241 + ceil32(return_data.size) + 96] - 1 < mem[_241 + ceil32(return_data.size) + 96]
            _4224 = mem[(32 * mem[_241 + ceil32(return_data.size) + 96] - 1) + _241 + ceil32(return_data.size) + 128]
            mem[(32 * _1562) + _241 + ceil32(return_data.size) + 128] = 2
            mem[(32 * _1562) + _241 + ceil32(return_data.size) + 160] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
            mem[(32 * _1562) + _241 + ceil32(return_data.size) + 192] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
            mem[(32 * _1562) + _241 + ceil32(return_data.size) + 224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[(32 * _1562) + _241 + ceil32(return_data.size) + 228] = _4224
            mem[(32 * _1562) + _241 + ceil32(return_data.size) + 260] = 64
            mem[(32 * _1562) + _241 + ceil32(return_data.size) + 292] = 2
            t = 0
            while t < 64:
                mem[t + (32 * _1562) + _241 + ceil32(return_data.size) + 324] = mem[t + (32 * _1562) + _241 + ceil32(return_data.size) + 160]
                t = t + 32
                continue 
            require ext_code.size(0x1b02da8cb0d097eb8d57a175b88c7d8b47997506)
            staticcall 0x1b02da8cb0d097eb8d57a175b88c7d8b47997506.getAmountsOut(uint256 rg1, address[] rg2) with:
                    gas gas_remaining wei
                   args _4224, Array(len=2, data=mem[(32 * _1562) + _241 + ceil32(return_data.size) + 324 len 64])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _1562) + _241 + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * _1562) + _241 + (2 * ceil32(return_data.size)) + 224
            require return_data.size >= 32
            _5855 = mem[(32 * _1562) + _241 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _4224) >> 32
            require mem[(32 * _1562) + _241 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _4224) >> 32 <= 4294967296
            require mem[(32 * _1562) + _241 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _4224) >> 32 + 32 <= return_data.size
            require mem[(32 * _1562) + _241 + ceil32(return_data.size) + mem[(32 * _1562) + _241 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _4224) >> 32 + 224] <= 4294967296 and mem[(32 * _1562) + _241 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _4224) >> 32 + (32 * mem[(32 * _1562) + _241 + ceil32(return_data.size) + mem[(32 * _1562) + _241 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _4224) >> 32 + 224]) + 32 <= return_data.size
            mem[(32 * _1562) + _241 + (2 * ceil32(return_data.size)) + 224] = mem[(32 * _1562) + _241 + ceil32(return_data.size) + mem[(32 * _1562) + _241 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _4224) >> 32 + 224]
            _5923 = mem[(32 * _1562) + _241 + ceil32(return_data.size) + _5855 + 224]
            t = 0
            while t < 32 * _5923:
                mem[t + (32 * _1562) + _241 + (2 * ceil32(return_data.size)) + 256] = mem[t + (32 * _1562) + _241 + ceil32(return_data.size) + _5855 + 256]
                t = t + 32
                continue 
            mem[64] = (32 * _5923) + (32 * _1562) + _241 + (2 * ceil32(return_data.size)) + 256
            require mem[(32 * _1562) + _241 + (2 * ceil32(return_data.size)) + 224] - 1 < mem[(32 * _1562) + _241 + (2 * ceil32(return_data.size)) + 224]
            if mem[(32 * mem[(32 * _1562) + _241 + (2 * ceil32(return_data.size)) + 224] - 1) + (32 * _1562) + _241 + (2 * ceil32(return_data.size)) + 256] <= s:
                idx = idx + 1
                s = s
                continue 
            idx = idx + 1
            s = mem[(32 * mem[(32 * _1562) + _241 + (2 * ceil32(return_data.size)) + 224] - 1) + (32 * _1562) + _241 + (2 * ceil32(return_data.size)) + 256]
            continue 
        idx = 0
        t = 0
        while idx < 6:
            if not idx:
                mem[mem[64] + 4] = 2
                mem[mem[64] + 36] = 0
                mem[mem[64] + 68] = s
                require ext_code.size(0x92d5ebf3593a92888c25c0abef126583d4b5312e)
                staticcall 0x92d5ebf3593a92888c25c0abef126583d4b5312e.get_dy_underlying(int128 rg1, int128 rg2, uint256 rg3) with:
                        gas gas_remaining wei
                       args 2, 0, s
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
                mem[mem[64] + 36] = 0
                mem[mem[64] + 68] = s
                require ext_code.size(0x83e5f18da720119ff363cf63417628eb0e9fd523)
                staticcall 0x83e5f18da720119ff363cf63417628eb0e9fd523.get_dy(int128 rg1, int128 rg2, uint256 rg3) with:
                        gas gas_remaining wei
                       args 2, 0, s
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
                _1655 = mem[64]
                mem[mem[64]] = 3
                mem[64] = mem[64] + 128
                require 0 < mem[_1655]
                mem[_1655 + 32] = 0x49d68029688eabf473097a2fc38ef61633a3c
                require 1 < mem[_1655]
                mem[_1655 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                require 2 < mem[_1655]
                mem[_1655 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                mem[_1655 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_1655 + 132] = s
                mem[_1655 + 164] = 64
                mem[_1655 + 196] = mem[_1655]
                u = 0
                while u < 32 * mem[_1655]:
                    mem[u + _1655 + 228] = mem[u + _1655 + 32]
                    u = u + 32
                    continue 
                require ext_code.size(0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52)
                staticcall 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52.getAmountsOut(uint256 rg1, address[] rg2) with:
                        gas gas_remaining wei
                       args s, 64, mem[_1655 + 196 len (32 * mem[_1655]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_1655 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _1655 + ceil32(return_data.size) + 128
                require return_data.size >= 32
                _4359 = mem[_1655 + 128 len 4], Mask(224, 32, s) >> 32
                require mem[_1655 + 128 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                require mem[_1655 + 128 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                require mem[_1655 + mem[_1655 + 128 len 4], Mask(224, 32, s) >> 32 + 128] <= 4294967296 and mem[_1655 + 128 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_1655 + mem[_1655 + 128 len 4], Mask(224, 32, s) >> 32 + 128]) + 32 <= return_data.size
                mem[_1655 + ceil32(return_data.size) + 128] = mem[_1655 + mem[_1655 + 128 len 4], Mask(224, 32, s) >> 32 + 128]
                _4639 = mem[_1655 + _4359 + 128]
                s = 0
                while s < 32 * _4639:
                    mem[s + _1655 + ceil32(return_data.size) + 160] = mem[s + _1655 + _4359 + 160]
                    s = s + 32
                    continue 
                mem[64] = (32 * _4639) + _1655 + ceil32(return_data.size) + 160
                require mem[_1655 + ceil32(return_data.size) + 128] - 1 < mem[_1655 + ceil32(return_data.size) + 128]
                if mem[(32 * mem[_1655 + ceil32(return_data.size) + 128] - 1) + _1655 + ceil32(return_data.size) + 160] <= t:
                    idx = idx + 1
                    t = t
                    continue 
                idx = idx + 1
                t = mem[(32 * mem[_1655 + ceil32(return_data.size) + 128] - 1) + _1655 + ceil32(return_data.size) + 160]
                continue 
            if 3 == idx:
                if 2 == idx:
                    _1812 = mem[64]
                    mem[mem[64]] = 3
                    mem[64] = mem[64] + 128
                    require 0 < mem[_1812]
                    mem[_1812 + 32] = 0x49d68029688eabf473097a2fc38ef61633a3c
                    require 1 < mem[_1812]
                    mem[_1812 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                    require 2 < mem[_1812]
                    mem[_1812 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    mem[_1812 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_1812 + 132] = s
                    mem[_1812 + 164] = 64
                    mem[_1812 + 196] = mem[_1812]
                    u = 0
                    while u < 32 * mem[_1812]:
                        mem[u + _1812 + 228] = mem[u + _1812 + 32]
                        u = u + 32
                        continue 
                    require ext_code.size(0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52)
                    staticcall 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52.getAmountsOut(uint256 rg1, address[] rg2) with:
                            gas gas_remaining wei
                           args s, 64, mem[_1812 + 196 len (32 * mem[_1812]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_1812 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _1812 + ceil32(return_data.size) + 128
                    require return_data.size >= 32
                    _4367 = mem[_1812 + 128 len 4], Mask(224, 32, s) >> 32
                    require mem[_1812 + 128 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                    require mem[_1812 + 128 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                    require mem[_1812 + mem[_1812 + 128 len 4], Mask(224, 32, s) >> 32 + 128] <= 4294967296 and mem[_1812 + 128 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_1812 + mem[_1812 + 128 len 4], Mask(224, 32, s) >> 32 + 128]) + 32 <= return_data.size
                    mem[_1812 + ceil32(return_data.size) + 128] = mem[_1812 + mem[_1812 + 128 len 4], Mask(224, 32, s) >> 32 + 128]
                    _4643 = mem[_1812 + _4367 + 128]
                    s = 0
                    while s < 32 * _4643:
                        mem[s + _1812 + ceil32(return_data.size) + 160] = mem[s + _1812 + _4367 + 160]
                        s = s + 32
                        continue 
                    mem[64] = (32 * _4643) + _1812 + ceil32(return_data.size) + 160
                    require mem[_1812 + ceil32(return_data.size) + 128] - 1 < mem[_1812 + ceil32(return_data.size) + 128]
                    if mem[(32 * mem[_1812 + ceil32(return_data.size) + 128] - 1) + _1812 + ceil32(return_data.size) + 160] <= t:
                        idx = idx + 1
                        t = t
                        continue 
                    idx = idx + 1
                    t = mem[(32 * mem[_1812 + ceil32(return_data.size) + 128] - 1) + _1812 + ceil32(return_data.size) + 160]
                    continue 
                if 3 == idx:
                    _1898 = mem[64]
                    mem[mem[64]] = 3
                    mem[64] = mem[64] + 128
                    require 0 < mem[_1898]
                    mem[_1898 + 32] = 0x49d68029688eabf473097a2fc38ef61633a3c
                    require 1 < mem[_1898]
                    mem[_1898 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                    require 2 < mem[_1898]
                    mem[_1898 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    mem[_1898 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_1898 + 132] = s
                    mem[_1898 + 164] = 64
                    mem[_1898 + 196] = mem[_1898]
                    u = 0
                    while u < 32 * mem[_1898]:
                        mem[u + _1898 + 228] = mem[u + _1898 + 32]
                        u = u + 32
                        continue 
                    require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                    staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c29.getAmountsOut(uint256 rg1, address[] rg2) with:
                            gas gas_remaining wei
                           args s, 64, mem[_1898 + 196 len (32 * mem[_1898]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_1898 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _1898 + ceil32(return_data.size) + 128
                    require return_data.size >= 32
                    _4365 = mem[_1898 + 128 len 4], Mask(224, 32, s) >> 32
                    require mem[_1898 + 128 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                    require mem[_1898 + 128 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                    require mem[_1898 + mem[_1898 + 128 len 4], Mask(224, 32, s) >> 32 + 128] <= 4294967296 and mem[_1898 + 128 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_1898 + mem[_1898 + 128 len 4], Mask(224, 32, s) >> 32 + 128]) + 32 <= return_data.size
                    mem[_1898 + ceil32(return_data.size) + 128] = mem[_1898 + mem[_1898 + 128 len 4], Mask(224, 32, s) >> 32 + 128]
                    _4642 = mem[_1898 + _4365 + 128]
                    s = 0
                    while s < 32 * _4642:
                        mem[s + _1898 + ceil32(return_data.size) + 160] = mem[s + _1898 + _4365 + 160]
                        s = s + 32
                        continue 
                    mem[64] = (32 * _4642) + _1898 + ceil32(return_data.size) + 160
                    require mem[_1898 + ceil32(return_data.size) + 128] - 1 < mem[_1898 + ceil32(return_data.size) + 128]
                    if mem[(32 * mem[_1898 + ceil32(return_data.size) + 128] - 1) + _1898 + ceil32(return_data.size) + 160] <= t:
                        idx = idx + 1
                        t = t
                        continue 
                    idx = idx + 1
                    t = mem[(32 * mem[_1898 + ceil32(return_data.size) + 128] - 1) + _1898 + ceil32(return_data.size) + 160]
                    continue 
                if idx != 4:
                    _1896 = mem[64]
                    mem[mem[64]] = 3
                    mem[64] = mem[64] + 128
                    require 0 < mem[_1896]
                    mem[_1896 + 32] = 0x49d68029688eabf473097a2fc38ef61633a3c
                    require 1 < mem[_1896]
                    mem[_1896 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                    require 2 < mem[_1896]
                    mem[_1896 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    mem[_1896 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_1896 + 132] = s
                    mem[_1896 + 164] = 64
                    mem[_1896 + 196] = mem[_1896]
                    u = 0
                    while u < 32 * mem[_1896]:
                        mem[u + _1896 + 228] = mem[u + _1896 + 32]
                        u = u + 32
                        continue 
                    require ext_code.size(0)
                    staticcall 0x0.getAmountsOut(uint256 rg1, address[] rg2) with:
                            gas gas_remaining wei
                           args s, 64, mem[_1896 + 196 len (32 * mem[_1896]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_1896 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _1896 + ceil32(return_data.size) + 128
                    require return_data.size >= 32
                    _4361 = mem[_1896 + 128 len 4], Mask(224, 32, s) >> 32
                    require mem[_1896 + 128 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                    require mem[_1896 + 128 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                    require mem[_1896 + mem[_1896 + 128 len 4], Mask(224, 32, s) >> 32 + 128] <= 4294967296 and mem[_1896 + 128 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_1896 + mem[_1896 + 128 len 4], Mask(224, 32, s) >> 32 + 128]) + 32 <= return_data.size
                    mem[_1896 + ceil32(return_data.size) + 128] = mem[_1896 + mem[_1896 + 128 len 4], Mask(224, 32, s) >> 32 + 128]
                    _4640 = mem[_1896 + _4361 + 128]
                    s = 0
                    while s < 32 * _4640:
                        mem[s + _1896 + ceil32(return_data.size) + 160] = mem[s + _1896 + _4361 + 160]
                        s = s + 32
                        continue 
                    mem[64] = (32 * _4640) + _1896 + ceil32(return_data.size) + 160
                    require mem[_1896 + ceil32(return_data.size) + 128] - 1 < mem[_1896 + ceil32(return_data.size) + 128]
                    if mem[(32 * mem[_1896 + ceil32(return_data.size) + 128] - 1) + _1896 + ceil32(return_data.size) + 160] <= t:
                        idx = idx + 1
                        t = t
                        continue 
                    idx = idx + 1
                    t = mem[(32 * mem[_1896 + ceil32(return_data.size) + 128] - 1) + _1896 + ceil32(return_data.size) + 160]
                    continue 
                _1989 = mem[64]
                mem[mem[64]] = 3
                mem[64] = mem[64] + 128
                require 0 < mem[_1989]
                mem[_1989 + 32] = 0x49d68029688eabf473097a2fc38ef61633a3c
                require 1 < mem[_1989]
                mem[_1989 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                require 2 < mem[_1989]
                mem[_1989 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                mem[_1989 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_1989 + 132] = s
                mem[_1989 + 164] = 64
                mem[_1989 + 196] = mem[_1989]
                u = 0
                while u < 32 * mem[_1989]:
                    mem[u + _1989 + 228] = mem[u + _1989 + 32]
                    u = u + 32
                    continue 
                require ext_code.size(0x7b17021fcb7bc888641dc3bedfed3734fcaf2c87)
                staticcall 0x7b17021fcb7bc888641dc3bedfed3734fcaf2c87.getAmountsOut(uint256 rg1, address[] rg2) with:
                        gas gas_remaining wei
                       args s, 64, mem[_1989 + 196 len (32 * mem[_1989]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_1989 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _1989 + ceil32(return_data.size) + 128
                require return_data.size >= 32
                _4363 = mem[_1989 + 128 len 4], Mask(224, 32, s) >> 32
                require mem[_1989 + 128 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                require mem[_1989 + 128 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                require mem[_1989 + mem[_1989 + 128 len 4], Mask(224, 32, s) >> 32 + 128] <= 4294967296 and mem[_1989 + 128 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_1989 + mem[_1989 + 128 len 4], Mask(224, 32, s) >> 32 + 128]) + 32 <= return_data.size
                mem[_1989 + ceil32(return_data.size) + 128] = mem[_1989 + mem[_1989 + 128 len 4], Mask(224, 32, s) >> 32 + 128]
                _4641 = mem[_1989 + _4363 + 128]
                s = 0
                while s < 32 * _4641:
                    mem[s + _1989 + ceil32(return_data.size) + 160] = mem[s + _1989 + _4363 + 160]
                    s = s + 32
                    continue 
                mem[64] = (32 * _4641) + _1989 + ceil32(return_data.size) + 160
                require mem[_1989 + ceil32(return_data.size) + 128] - 1 < mem[_1989 + ceil32(return_data.size) + 128]
                if mem[(32 * mem[_1989 + ceil32(return_data.size) + 128] - 1) + _1989 + ceil32(return_data.size) + 160] <= t:
                    idx = idx + 1
                    t = t
                    continue 
                idx = idx + 1
                t = mem[(32 * mem[_1989 + ceil32(return_data.size) + 128] - 1) + _1989 + ceil32(return_data.size) + 160]
                continue 
            if 4 == idx:
                if 2 == idx:
                    _1903 = mem[64]
                    mem[mem[64]] = 3
                    mem[64] = mem[64] + 128
                    require 0 < mem[_1903]
                    mem[_1903 + 32] = 0x49d68029688eabf473097a2fc38ef61633a3c
                    require 1 < mem[_1903]
                    mem[_1903 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                    require 2 < mem[_1903]
                    mem[_1903 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    mem[_1903 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_1903 + 132] = s
                    mem[_1903 + 164] = 64
                    mem[_1903 + 196] = mem[_1903]
                    u = 0
                    while u < 32 * mem[_1903]:
                        mem[u + _1903 + 228] = mem[u + _1903 + 32]
                        u = u + 32
                        continue 
                    require ext_code.size(0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52)
                    staticcall 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52.getAmountsOut(uint256 rg1, address[] rg2) with:
                            gas gas_remaining wei
                           args s, 64, mem[_1903 + 196 len (32 * mem[_1903]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_1903 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _1903 + ceil32(return_data.size) + 128
                    require return_data.size >= 32
                    _4379 = mem[_1903 + 128 len 4], Mask(224, 32, s) >> 32
                    require mem[_1903 + 128 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                    require mem[_1903 + 128 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                    require mem[_1903 + mem[_1903 + 128 len 4], Mask(224, 32, s) >> 32 + 128] <= 4294967296 and mem[_1903 + 128 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_1903 + mem[_1903 + 128 len 4], Mask(224, 32, s) >> 32 + 128]) + 32 <= return_data.size
                    mem[_1903 + ceil32(return_data.size) + 128] = mem[_1903 + mem[_1903 + 128 len 4], Mask(224, 32, s) >> 32 + 128]
                    _4649 = mem[_1903 + _4379 + 128]
                    s = 0
                    while s < 32 * _4649:
                        mem[s + _1903 + ceil32(return_data.size) + 160] = mem[s + _1903 + _4379 + 160]
                        s = s + 32
                        continue 
                    mem[64] = (32 * _4649) + _1903 + ceil32(return_data.size) + 160
                    require mem[_1903 + ceil32(return_data.size) + 128] - 1 < mem[_1903 + ceil32(return_data.size) + 128]
                    if mem[(32 * mem[_1903 + ceil32(return_data.size) + 128] - 1) + _1903 + ceil32(return_data.size) + 160] <= t:
                        idx = idx + 1
                        t = t
                        continue 
                    idx = idx + 1
                    t = mem[(32 * mem[_1903 + ceil32(return_data.size) + 128] - 1) + _1903 + ceil32(return_data.size) + 160]
                    continue 
                if 3 == idx:
                    _1998 = mem[64]
                    mem[mem[64]] = 3
                    mem[64] = mem[64] + 128
                    require 0 < mem[_1998]
                    mem[_1998 + 32] = 0x49d68029688eabf473097a2fc38ef61633a3c
                    require 1 < mem[_1998]
                    mem[_1998 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                    require 2 < mem[_1998]
                    mem[_1998 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    mem[_1998 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_1998 + 132] = s
                    mem[_1998 + 164] = 64
                    mem[_1998 + 196] = mem[_1998]
                    u = 0
                    while u < 32 * mem[_1998]:
                        mem[u + _1998 + 228] = mem[u + _1998 + 32]
                        u = u + 32
                        continue 
                    require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                    staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c29.getAmountsOut(uint256 rg1, address[] rg2) with:
                            gas gas_remaining wei
                           args s, 64, mem[_1998 + 196 len (32 * mem[_1998]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_1998 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _1998 + ceil32(return_data.size) + 128
                    require return_data.size >= 32
                    _4377 = mem[_1998 + 128 len 4], Mask(224, 32, s) >> 32
                    require mem[_1998 + 128 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                    require mem[_1998 + 128 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                    require mem[_1998 + mem[_1998 + 128 len 4], Mask(224, 32, s) >> 32 + 128] <= 4294967296 and mem[_1998 + 128 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_1998 + mem[_1998 + 128 len 4], Mask(224, 32, s) >> 32 + 128]) + 32 <= return_data.size
                    mem[_1998 + ceil32(return_data.size) + 128] = mem[_1998 + mem[_1998 + 128 len 4], Mask(224, 32, s) >> 32 + 128]
                    _4648 = mem[_1998 + _4377 + 128]
                    s = 0
                    while s < 32 * _4648:
                        mem[s + _1998 + ceil32(return_data.size) + 160] = mem[s + _1998 + _4377 + 160]
                        s = s + 32
                        continue 
                    mem[64] = (32 * _4648) + _1998 + ceil32(return_data.size) + 160
                    require mem[_1998 + ceil32(return_data.size) + 128] - 1 < mem[_1998 + ceil32(return_data.size) + 128]
                    if mem[(32 * mem[_1998 + ceil32(return_data.size) + 128] - 1) + _1998 + ceil32(return_data.size) + 160] <= t:
                        idx = idx + 1
                        t = t
                        continue 
                    idx = idx + 1
                    t = mem[(32 * mem[_1998 + ceil32(return_data.size) + 128] - 1) + _1998 + ceil32(return_data.size) + 160]
                    continue 
                if idx != 4:
                    _1996 = mem[64]
                    mem[mem[64]] = 3
                    mem[64] = mem[64] + 128
                    require 0 < mem[_1996]
                    mem[_1996 + 32] = 0x49d68029688eabf473097a2fc38ef61633a3c
                    require 1 < mem[_1996]
                    mem[_1996 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                    require 2 < mem[_1996]
                    mem[_1996 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    mem[_1996 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_1996 + 132] = s
                    mem[_1996 + 164] = 64
                    mem[_1996 + 196] = mem[_1996]
                    u = 0
                    while u < 32 * mem[_1996]:
                        mem[u + _1996 + 228] = mem[u + _1996 + 32]
                        u = u + 32
                        continue 
                    require ext_code.size(0)
                    staticcall 0x0.getAmountsOut(uint256 rg1, address[] rg2) with:
                            gas gas_remaining wei
                           args s, 64, mem[_1996 + 196 len (32 * mem[_1996]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_1996 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _1996 + ceil32(return_data.size) + 128
                    require return_data.size >= 32
                    _4373 = mem[_1996 + 128 len 4], Mask(224, 32, s) >> 32
                    require mem[_1996 + 128 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                    require mem[_1996 + 128 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                    require mem[_1996 + mem[_1996 + 128 len 4], Mask(224, 32, s) >> 32 + 128] <= 4294967296 and mem[_1996 + 128 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_1996 + mem[_1996 + 128 len 4], Mask(224, 32, s) >> 32 + 128]) + 32 <= return_data.size
                    mem[_1996 + ceil32(return_data.size) + 128] = mem[_1996 + mem[_1996 + 128 len 4], Mask(224, 32, s) >> 32 + 128]
                    _4646 = mem[_1996 + _4373 + 128]
                    s = 0
                    while s < 32 * _4646:
                        mem[s + _1996 + ceil32(return_data.size) + 160] = mem[s + _1996 + _4373 + 160]
                        s = s + 32
                        continue 
                    mem[64] = (32 * _4646) + _1996 + ceil32(return_data.size) + 160
                    require mem[_1996 + ceil32(return_data.size) + 128] - 1 < mem[_1996 + ceil32(return_data.size) + 128]
                    if mem[(32 * mem[_1996 + ceil32(return_data.size) + 128] - 1) + _1996 + ceil32(return_data.size) + 160] <= t:
                        idx = idx + 1
                        t = t
                        continue 
                    idx = idx + 1
                    t = mem[(32 * mem[_1996 + ceil32(return_data.size) + 128] - 1) + _1996 + ceil32(return_data.size) + 160]
                    continue 
                _2138 = mem[64]
                mem[mem[64]] = 3
                mem[64] = mem[64] + 128
                require 0 < mem[_2138]
                mem[_2138 + 32] = 0x49d68029688eabf473097a2fc38ef61633a3c
                require 1 < mem[_2138]
                mem[_2138 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                require 2 < mem[_2138]
                mem[_2138 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                mem[_2138 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_2138 + 132] = s
                mem[_2138 + 164] = 64
                mem[_2138 + 196] = mem[_2138]
                u = 0
                while u < 32 * mem[_2138]:
                    mem[u + _2138 + 228] = mem[u + _2138 + 32]
                    u = u + 32
                    continue 
                require ext_code.size(0x7b17021fcb7bc888641dc3bedfed3734fcaf2c87)
                staticcall 0x7b17021fcb7bc888641dc3bedfed3734fcaf2c87.getAmountsOut(uint256 rg1, address[] rg2) with:
                        gas gas_remaining wei
                       args s, 64, mem[_2138 + 196 len (32 * mem[_2138]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_2138 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _2138 + ceil32(return_data.size) + 128
                require return_data.size >= 32
                _4375 = mem[_2138 + 128 len 4], Mask(224, 32, s) >> 32
                require mem[_2138 + 128 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                require mem[_2138 + 128 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                require mem[_2138 + mem[_2138 + 128 len 4], Mask(224, 32, s) >> 32 + 128] <= 4294967296 and mem[_2138 + 128 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_2138 + mem[_2138 + 128 len 4], Mask(224, 32, s) >> 32 + 128]) + 32 <= return_data.size
                mem[_2138 + ceil32(return_data.size) + 128] = mem[_2138 + mem[_2138 + 128 len 4], Mask(224, 32, s) >> 32 + 128]
                _4647 = mem[_2138 + _4375 + 128]
                s = 0
                while s < 32 * _4647:
                    mem[s + _2138 + ceil32(return_data.size) + 160] = mem[s + _2138 + _4375 + 160]
                    s = s + 32
                    continue 
                mem[64] = (32 * _4647) + _2138 + ceil32(return_data.size) + 160
                require mem[_2138 + ceil32(return_data.size) + 128] - 1 < mem[_2138 + ceil32(return_data.size) + 128]
                if mem[(32 * mem[_2138 + ceil32(return_data.size) + 128] - 1) + _2138 + ceil32(return_data.size) + 160] <= t:
                    idx = idx + 1
                    t = t
                    continue 
                idx = idx + 1
                t = mem[(32 * mem[_2138 + ceil32(return_data.size) + 128] - 1) + _2138 + ceil32(return_data.size) + 160]
                continue 
            if idx != 5:
                if s <= t:
                    idx = idx + 1
                    t = t
                    continue 
                idx = idx + 1
                t = s
                continue 
            _1901 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            require 0 < mem[_1901]
            mem[_1901 + 32] = 0x49d68029688eabf473097a2fc38ef61633a3c
            require 1 < mem[_1901]
            mem[_1901 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
            mem[_1901 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[_1901 + 100] = s
            mem[_1901 + 132] = 64
            mem[_1901 + 164] = mem[_1901]
            u = 0
            while u < 32 * mem[_1901]:
                mem[u + _1901 + 196] = mem[u + _1901 + 32]
                u = u + 32
                continue 
            require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
            staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c29.getAmountsOut(uint256 rg1, address[] rg2) with:
                    gas gas_remaining wei
                   args s, 64, mem[_1901 + 164 len (32 * mem[_1901]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[_1901 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = _1901 + ceil32(return_data.size) + 96
            require return_data.size >= 32
            _4369 = mem[_1901 + 96 len 4], Mask(224, 32, s) >> 32
            require mem[_1901 + 96 len 4], Mask(224, 32, s) >> 32 <= 4294967296
            require mem[_1901 + 96 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
            require mem[_1901 + mem[_1901 + 96 len 4], Mask(224, 32, s) >> 32 + 96] <= 4294967296 and mem[_1901 + 96 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_1901 + mem[_1901 + 96 len 4], Mask(224, 32, s) >> 32 + 96]) + 32 <= return_data.size
            mem[_1901 + ceil32(return_data.size) + 96] = mem[_1901 + mem[_1901 + 96 len 4], Mask(224, 32, s) >> 32 + 96]
            _4644 = mem[_1901 + _4369 + 96]
            s = 0
            while s < 32 * _4644:
                mem[s + _1901 + ceil32(return_data.size) + 128] = mem[s + _1901 + _4369 + 128]
                s = s + 32
                continue 
            mem[64] = (32 * _4644) + _1901 + ceil32(return_data.size) + 128
            require mem[_1901 + ceil32(return_data.size) + 96] - 1 < mem[_1901 + ceil32(return_data.size) + 96]
            _5748 = mem[(32 * mem[_1901 + ceil32(return_data.size) + 96] - 1) + _1901 + ceil32(return_data.size) + 128]
            mem[(32 * _4644) + _1901 + ceil32(return_data.size) + 128] = 2
            mem[(32 * _4644) + _1901 + ceil32(return_data.size) + 160] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
            mem[(32 * _4644) + _1901 + ceil32(return_data.size) + 192] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
            mem[(32 * _4644) + _1901 + ceil32(return_data.size) + 224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[(32 * _4644) + _1901 + ceil32(return_data.size) + 228] = _5748
            mem[(32 * _4644) + _1901 + ceil32(return_data.size) + 260] = 64
            mem[(32 * _4644) + _1901 + ceil32(return_data.size) + 292] = 2
            s = 0
            while s < 64:
                mem[s + (32 * _4644) + _1901 + ceil32(return_data.size) + 324] = mem[s + (32 * _4644) + _1901 + ceil32(return_data.size) + 160]
                s = s + 32
                continue 
            require ext_code.size(0x1b02da8cb0d097eb8d57a175b88c7d8b47997506)
            staticcall 0x1b02da8cb0d097eb8d57a175b88c7d8b47997506.getAmountsOut(uint256 rg1, address[] rg2) with:
                    gas gas_remaining wei
                   args _5748, Array(len=2, data=mem[(32 * _4644) + _1901 + ceil32(return_data.size) + 324 len 64])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _4644) + _1901 + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * _4644) + _1901 + (2 * ceil32(return_data.size)) + 224
            require return_data.size >= 32
            _6255 = mem[(32 * _4644) + _1901 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _5748) >> 32
            require mem[(32 * _4644) + _1901 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _5748) >> 32 <= 4294967296
            require mem[(32 * _4644) + _1901 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _5748) >> 32 + 32 <= return_data.size
            require mem[(32 * _4644) + _1901 + ceil32(return_data.size) + mem[(32 * _4644) + _1901 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _5748) >> 32 + 224] <= 4294967296 and mem[(32 * _4644) + _1901 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _5748) >> 32 + (32 * mem[(32 * _4644) + _1901 + ceil32(return_data.size) + mem[(32 * _4644) + _1901 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _5748) >> 32 + 224]) + 32 <= return_data.size
            mem[(32 * _4644) + _1901 + (2 * ceil32(return_data.size)) + 224] = mem[(32 * _4644) + _1901 + ceil32(return_data.size) + mem[(32 * _4644) + _1901 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _5748) >> 32 + 224]
            _6303 = mem[(32 * _4644) + _1901 + ceil32(return_data.size) + _6255 + 224]
            s = 0
            while s < 32 * _6303:
                mem[s + (32 * _4644) + _1901 + (2 * ceil32(return_data.size)) + 256] = mem[s + (32 * _4644) + _1901 + ceil32(return_data.size) + _6255 + 256]
                s = s + 32
                continue 
            mem[64] = (32 * _6303) + (32 * _4644) + _1901 + (2 * ceil32(return_data.size)) + 256
            require mem[(32 * _4644) + _1901 + (2 * ceil32(return_data.size)) + 224] - 1 < mem[(32 * _4644) + _1901 + (2 * ceil32(return_data.size)) + 224]
            if mem[(32 * mem[(32 * _4644) + _1901 + (2 * ceil32(return_data.size)) + 224] - 1) + (32 * _4644) + _1901 + (2 * ceil32(return_data.size)) + 256] <= t:
                idx = idx + 1
                t = t
                continue 
            idx = idx + 1
            t = mem[(32 * mem[(32 * _4644) + _1901 + (2 * ceil32(return_data.size)) + 224] - 1) + (32 * _4644) + _1901 + (2 * ceil32(return_data.size)) + 256]
            continue 
    if maxBatch:
        if 10 * 10^6 * maxBatch / maxBatch != 10 * 10^6:
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
        while idx < 6:
            if not idx:
                mem[mem[64] + 4] = 2
                mem[mem[64] + 36] = 0
                mem[mem[64] + 68] = 0
                require ext_code.size(0x92d5ebf3593a92888c25c0abef126583d4b5312e)
                staticcall 0x92d5ebf3593a92888c25c0abef126583d4b5312e.get_dy_underlying(int128 rg1, int128 rg2, uint256 rg3) with:
                        gas gas_remaining wei
                       args 2, 0, 0
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
                mem[mem[64] + 36] = 0
                mem[mem[64] + 68] = 0
                require ext_code.size(0x83e5f18da720119ff363cf63417628eb0e9fd523)
                staticcall 0x83e5f18da720119ff363cf63417628eb0e9fd523.get_dy(int128 rg1, int128 rg2, uint256 rg3) with:
                        gas gas_remaining wei
                       args 2, 0, 0
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
                _190 = mem[64]
                mem[mem[64]] = 3
                mem[64] = mem[64] + 128
                require 0 < mem[_190]
                mem[_190 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                require 1 < mem[_190]
                mem[_190 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                require 2 < mem[_190]
                mem[_190 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                mem[_190 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_190 + 132] = 0
                mem[_190 + 164] = 64
                mem[_190 + 196] = mem[_190]
                t = 0
                while t < 32 * mem[_190]:
                    mem[t + _190 + 228] = mem[t + _190 + 32]
                    t = t + 32
                    continue 
                require ext_code.size(0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52)
                staticcall 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52.getAmountsOut(uint256 rg1, address[] rg2) with:
                        gas gas_remaining wei
                       args 0, 64, mem[_190 + 196 len (32 * mem[_190]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_190 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _190 + ceil32(return_data.size) + 128
                require return_data.size >= 32
                _1400 = mem[_190 + 128 len 4], 0
                require mem[_190 + 128 len 4], 0 <= 4294967296
                require mem[_190 + 128 len 4], 0 + 32 <= return_data.size
                require mem[_190 + mem[_190 + 128 len 4], 0 + 128] <= 4294967296 and mem[_190 + 128 len 4], 0 + (32 * mem[_190 + mem[_190 + 128 len 4], 0 + 128]) + 32 <= return_data.size
                mem[_190 + ceil32(return_data.size) + 128] = mem[_190 + mem[_190 + 128 len 4], 0 + 128]
                _1592 = mem[_190 + _1400 + 128]
                t = 0
                while t < 32 * _1592:
                    mem[t + _190 + ceil32(return_data.size) + 160] = mem[t + _190 + _1400 + 160]
                    t = t + 32
                    continue 
                mem[64] = (32 * _1592) + _190 + ceil32(return_data.size) + 160
                require mem[_190 + ceil32(return_data.size) + 128] - 1 < mem[_190 + ceil32(return_data.size) + 128]
                if mem[(32 * mem[_190 + ceil32(return_data.size) + 128] - 1) + _190 + ceil32(return_data.size) + 160] <= s:
                    idx = idx + 1
                    s = s
                    continue 
                idx = idx + 1
                s = mem[(32 * mem[_190 + ceil32(return_data.size) + 128] - 1) + _190 + ceil32(return_data.size) + 160]
                continue 
            if 3 == idx:
                if 2 == idx:
                    _223 = mem[64]
                    mem[mem[64]] = 3
                    mem[64] = mem[64] + 128
                    require 0 < mem[_223]
                    mem[_223 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    require 1 < mem[_223]
                    mem[_223 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                    require 2 < mem[_223]
                    mem[_223 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    mem[_223 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_223 + 132] = 0
                    mem[_223 + 164] = 64
                    mem[_223 + 196] = mem[_223]
                    t = 0
                    while t < 32 * mem[_223]:
                        mem[t + _223 + 228] = mem[t + _223 + 32]
                        t = t + 32
                        continue 
                    require ext_code.size(0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52)
                    staticcall 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52.getAmountsOut(uint256 rg1, address[] rg2) with:
                            gas gas_remaining wei
                           args 0, 64, mem[_223 + 196 len (32 * mem[_223]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_223 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _223 + ceil32(return_data.size) + 128
                    require return_data.size >= 32
                    _1408 = mem[_223 + 128 len 4], 0
                    require mem[_223 + 128 len 4], 0 <= 4294967296
                    require mem[_223 + 128 len 4], 0 + 32 <= return_data.size
                    require mem[_223 + mem[_223 + 128 len 4], 0 + 128] <= 4294967296 and mem[_223 + 128 len 4], 0 + (32 * mem[_223 + mem[_223 + 128 len 4], 0 + 128]) + 32 <= return_data.size
                    mem[_223 + ceil32(return_data.size) + 128] = mem[_223 + mem[_223 + 128 len 4], 0 + 128]
                    _1596 = mem[_223 + _1408 + 128]
                    t = 0
                    while t < 32 * _1596:
                        mem[t + _223 + ceil32(return_data.size) + 160] = mem[t + _223 + _1408 + 160]
                        t = t + 32
                        continue 
                    mem[64] = (32 * _1596) + _223 + ceil32(return_data.size) + 160
                    require mem[_223 + ceil32(return_data.size) + 128] - 1 < mem[_223 + ceil32(return_data.size) + 128]
                    if mem[(32 * mem[_223 + ceil32(return_data.size) + 128] - 1) + _223 + ceil32(return_data.size) + 160] <= s:
                        idx = idx + 1
                        s = s
                        continue 
                    idx = idx + 1
                    s = mem[(32 * mem[_223 + ceil32(return_data.size) + 128] - 1) + _223 + ceil32(return_data.size) + 160]
                    continue 
                if 3 == idx:
                    _271 = mem[64]
                    mem[mem[64]] = 3
                    mem[64] = mem[64] + 128
                    require 0 < mem[_271]
                    mem[_271 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    require 1 < mem[_271]
                    mem[_271 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                    require 2 < mem[_271]
                    mem[_271 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    mem[_271 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_271 + 132] = 0
                    mem[_271 + 164] = 64
                    mem[_271 + 196] = mem[_271]
                    t = 0
                    while t < 32 * mem[_271]:
                        mem[t + _271 + 228] = mem[t + _271 + 32]
                        t = t + 32
                        continue 
                    require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                    staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c29.getAmountsOut(uint256 rg1, address[] rg2) with:
                            gas gas_remaining wei
                           args 0, 64, mem[_271 + 196 len (32 * mem[_271]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_271 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _271 + ceil32(return_data.size) + 128
                    require return_data.size >= 32
                    _1406 = mem[_271 + 128 len 4], 0
                    require mem[_271 + 128 len 4], 0 <= 4294967296
                    require mem[_271 + 128 len 4], 0 + 32 <= return_data.size
                    require mem[_271 + mem[_271 + 128 len 4], 0 + 128] <= 4294967296 and mem[_271 + 128 len 4], 0 + (32 * mem[_271 + mem[_271 + 128 len 4], 0 + 128]) + 32 <= return_data.size
                    mem[_271 + ceil32(return_data.size) + 128] = mem[_271 + mem[_271 + 128 len 4], 0 + 128]
                    _1595 = mem[_271 + _1406 + 128]
                    t = 0
                    while t < 32 * _1595:
                        mem[t + _271 + ceil32(return_data.size) + 160] = mem[t + _271 + _1406 + 160]
                        t = t + 32
                        continue 
                    mem[64] = (32 * _1595) + _271 + ceil32(return_data.size) + 160
                    require mem[_271 + ceil32(return_data.size) + 128] - 1 < mem[_271 + ceil32(return_data.size) + 128]
                    if mem[(32 * mem[_271 + ceil32(return_data.size) + 128] - 1) + _271 + ceil32(return_data.size) + 160] <= s:
                        idx = idx + 1
                        s = s
                        continue 
                    idx = idx + 1
                    s = mem[(32 * mem[_271 + ceil32(return_data.size) + 128] - 1) + _271 + ceil32(return_data.size) + 160]
                    continue 
                if idx != 4:
                    _269 = mem[64]
                    mem[mem[64]] = 3
                    mem[64] = mem[64] + 128
                    require 0 < mem[_269]
                    mem[_269 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    require 1 < mem[_269]
                    mem[_269 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                    require 2 < mem[_269]
                    mem[_269 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    mem[_269 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_269 + 132] = 0
                    mem[_269 + 164] = 64
                    mem[_269 + 196] = mem[_269]
                    t = 0
                    while t < 32 * mem[_269]:
                        mem[t + _269 + 228] = mem[t + _269 + 32]
                        t = t + 32
                        continue 
                    require ext_code.size(0)
                    staticcall 0x0.getAmountsOut(uint256 rg1, address[] rg2) with:
                            gas gas_remaining wei
                           args 0, 64, mem[_269 + 196 len (32 * mem[_269]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_269 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _269 + ceil32(return_data.size) + 128
                    require return_data.size >= 32
                    _1402 = mem[_269 + 128 len 4], 0
                    require mem[_269 + 128 len 4], 0 <= 4294967296
                    require mem[_269 + 128 len 4], 0 + 32 <= return_data.size
                    require mem[_269 + mem[_269 + 128 len 4], 0 + 128] <= 4294967296 and mem[_269 + 128 len 4], 0 + (32 * mem[_269 + mem[_269 + 128 len 4], 0 + 128]) + 32 <= return_data.size
                    mem[_269 + ceil32(return_data.size) + 128] = mem[_269 + mem[_269 + 128 len 4], 0 + 128]
                    _1593 = mem[_269 + _1402 + 128]
                    t = 0
                    while t < 32 * _1593:
                        mem[t + _269 + ceil32(return_data.size) + 160] = mem[t + _269 + _1402 + 160]
                        t = t + 32
                        continue 
                    mem[64] = (32 * _1593) + _269 + ceil32(return_data.size) + 160
                    require mem[_269 + ceil32(return_data.size) + 128] - 1 < mem[_269 + ceil32(return_data.size) + 128]
                    if mem[(32 * mem[_269 + ceil32(return_data.size) + 128] - 1) + _269 + ceil32(return_data.size) + 160] <= s:
                        idx = idx + 1
                        s = s
                        continue 
                    idx = idx + 1
                    s = mem[(32 * mem[_269 + ceil32(return_data.size) + 128] - 1) + _269 + ceil32(return_data.size) + 160]
                    continue 
                _334 = mem[64]
                mem[mem[64]] = 3
                mem[64] = mem[64] + 128
                require 0 < mem[_334]
                mem[_334 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                require 1 < mem[_334]
                mem[_334 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                require 2 < mem[_334]
                mem[_334 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                mem[_334 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_334 + 132] = 0
                mem[_334 + 164] = 64
                mem[_334 + 196] = mem[_334]
                t = 0
                while t < 32 * mem[_334]:
                    mem[t + _334 + 228] = mem[t + _334 + 32]
                    t = t + 32
                    continue 
                require ext_code.size(0x7b17021fcb7bc888641dc3bedfed3734fcaf2c87)
                staticcall 0x7b17021fcb7bc888641dc3bedfed3734fcaf2c87.getAmountsOut(uint256 rg1, address[] rg2) with:
                        gas gas_remaining wei
                       args 0, 64, mem[_334 + 196 len (32 * mem[_334]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_334 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _334 + ceil32(return_data.size) + 128
                require return_data.size >= 32
                _1404 = mem[_334 + 128 len 4], 0
                require mem[_334 + 128 len 4], 0 <= 4294967296
                require mem[_334 + 128 len 4], 0 + 32 <= return_data.size
                require mem[_334 + mem[_334 + 128 len 4], 0 + 128] <= 4294967296 and mem[_334 + 128 len 4], 0 + (32 * mem[_334 + mem[_334 + 128 len 4], 0 + 128]) + 32 <= return_data.size
                mem[_334 + ceil32(return_data.size) + 128] = mem[_334 + mem[_334 + 128 len 4], 0 + 128]
                _1594 = mem[_334 + _1404 + 128]
                t = 0
                while t < 32 * _1594:
                    mem[t + _334 + ceil32(return_data.size) + 160] = mem[t + _334 + _1404 + 160]
                    t = t + 32
                    continue 
                mem[64] = (32 * _1594) + _334 + ceil32(return_data.size) + 160
                require mem[_334 + ceil32(return_data.size) + 128] - 1 < mem[_334 + ceil32(return_data.size) + 128]
                if mem[(32 * mem[_334 + ceil32(return_data.size) + 128] - 1) + _334 + ceil32(return_data.size) + 160] <= s:
                    idx = idx + 1
                    s = s
                    continue 
                idx = idx + 1
                s = mem[(32 * mem[_334 + ceil32(return_data.size) + 128] - 1) + _334 + ceil32(return_data.size) + 160]
                continue 
            if 4 == idx:
                if 2 == idx:
                    _276 = mem[64]
                    mem[mem[64]] = 3
                    mem[64] = mem[64] + 128
                    require 0 < mem[_276]
                    mem[_276 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    require 1 < mem[_276]
                    mem[_276 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                    require 2 < mem[_276]
                    mem[_276 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    mem[_276 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_276 + 132] = 0
                    mem[_276 + 164] = 64
                    mem[_276 + 196] = mem[_276]
                    t = 0
                    while t < 32 * mem[_276]:
                        mem[t + _276 + 228] = mem[t + _276 + 32]
                        t = t + 32
                        continue 
                    require ext_code.size(0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52)
                    staticcall 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52.getAmountsOut(uint256 rg1, address[] rg2) with:
                            gas gas_remaining wei
                           args 0, 64, mem[_276 + 196 len (32 * mem[_276]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_276 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _276 + ceil32(return_data.size) + 128
                    require return_data.size >= 32
                    _1420 = mem[_276 + 128 len 4], 0
                    require mem[_276 + 128 len 4], 0 <= 4294967296
                    require mem[_276 + 128 len 4], 0 + 32 <= return_data.size
                    require mem[_276 + mem[_276 + 128 len 4], 0 + 128] <= 4294967296 and mem[_276 + 128 len 4], 0 + (32 * mem[_276 + mem[_276 + 128 len 4], 0 + 128]) + 32 <= return_data.size
                    mem[_276 + ceil32(return_data.size) + 128] = mem[_276 + mem[_276 + 128 len 4], 0 + 128]
                    _1602 = mem[_276 + _1420 + 128]
                    t = 0
                    while t < 32 * _1602:
                        mem[t + _276 + ceil32(return_data.size) + 160] = mem[t + _276 + _1420 + 160]
                        t = t + 32
                        continue 
                    mem[64] = (32 * _1602) + _276 + ceil32(return_data.size) + 160
                    require mem[_276 + ceil32(return_data.size) + 128] - 1 < mem[_276 + ceil32(return_data.size) + 128]
                    if mem[(32 * mem[_276 + ceil32(return_data.size) + 128] - 1) + _276 + ceil32(return_data.size) + 160] <= s:
                        idx = idx + 1
                        s = s
                        continue 
                    idx = idx + 1
                    s = mem[(32 * mem[_276 + ceil32(return_data.size) + 128] - 1) + _276 + ceil32(return_data.size) + 160]
                    continue 
                if 3 == idx:
                    _343 = mem[64]
                    mem[mem[64]] = 3
                    mem[64] = mem[64] + 128
                    require 0 < mem[_343]
                    mem[_343 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    require 1 < mem[_343]
                    mem[_343 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                    require 2 < mem[_343]
                    mem[_343 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    mem[_343 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_343 + 132] = 0
                    mem[_343 + 164] = 64
                    mem[_343 + 196] = mem[_343]
                    t = 0
                    while t < 32 * mem[_343]:
                        mem[t + _343 + 228] = mem[t + _343 + 32]
                        t = t + 32
                        continue 
                    require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                    staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c29.getAmountsOut(uint256 rg1, address[] rg2) with:
                            gas gas_remaining wei
                           args 0, 64, mem[_343 + 196 len (32 * mem[_343]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_343 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _343 + ceil32(return_data.size) + 128
                    require return_data.size >= 32
                    _1418 = mem[_343 + 128 len 4], 0
                    require mem[_343 + 128 len 4], 0 <= 4294967296
                    require mem[_343 + 128 len 4], 0 + 32 <= return_data.size
                    require mem[_343 + mem[_343 + 128 len 4], 0 + 128] <= 4294967296 and mem[_343 + 128 len 4], 0 + (32 * mem[_343 + mem[_343 + 128 len 4], 0 + 128]) + 32 <= return_data.size
                    mem[_343 + ceil32(return_data.size) + 128] = mem[_343 + mem[_343 + 128 len 4], 0 + 128]
                    _1601 = mem[_343 + _1418 + 128]
                    t = 0
                    while t < 32 * _1601:
                        mem[t + _343 + ceil32(return_data.size) + 160] = mem[t + _343 + _1418 + 160]
                        t = t + 32
                        continue 
                    mem[64] = (32 * _1601) + _343 + ceil32(return_data.size) + 160
                    require mem[_343 + ceil32(return_data.size) + 128] - 1 < mem[_343 + ceil32(return_data.size) + 128]
                    if mem[(32 * mem[_343 + ceil32(return_data.size) + 128] - 1) + _343 + ceil32(return_data.size) + 160] <= s:
                        idx = idx + 1
                        s = s
                        continue 
                    idx = idx + 1
                    s = mem[(32 * mem[_343 + ceil32(return_data.size) + 128] - 1) + _343 + ceil32(return_data.size) + 160]
                    continue 
                if idx != 4:
                    _341 = mem[64]
                    mem[mem[64]] = 3
                    mem[64] = mem[64] + 128
                    require 0 < mem[_341]
                    mem[_341 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    require 1 < mem[_341]
                    mem[_341 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                    require 2 < mem[_341]
                    mem[_341 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    mem[_341 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_341 + 132] = 0
                    mem[_341 + 164] = 64
                    mem[_341 + 196] = mem[_341]
                    t = 0
                    while t < 32 * mem[_341]:
                        mem[t + _341 + 228] = mem[t + _341 + 32]
                        t = t + 32
                        continue 
                    require ext_code.size(0)
                    staticcall 0x0.getAmountsOut(uint256 rg1, address[] rg2) with:
                            gas gas_remaining wei
                           args 0, 64, mem[_341 + 196 len (32 * mem[_341]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_341 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _341 + ceil32(return_data.size) + 128
                    require return_data.size >= 32
                    _1414 = mem[_341 + 128 len 4], 0
                    require mem[_341 + 128 len 4], 0 <= 4294967296
                    require mem[_341 + 128 len 4], 0 + 32 <= return_data.size
                    require mem[_341 + mem[_341 + 128 len 4], 0 + 128] <= 4294967296 and mem[_341 + 128 len 4], 0 + (32 * mem[_341 + mem[_341 + 128 len 4], 0 + 128]) + 32 <= return_data.size
                    mem[_341 + ceil32(return_data.size) + 128] = mem[_341 + mem[_341 + 128 len 4], 0 + 128]
                    _1599 = mem[_341 + _1414 + 128]
                    t = 0
                    while t < 32 * _1599:
                        mem[t + _341 + ceil32(return_data.size) + 160] = mem[t + _341 + _1414 + 160]
                        t = t + 32
                        continue 
                    mem[64] = (32 * _1599) + _341 + ceil32(return_data.size) + 160
                    require mem[_341 + ceil32(return_data.size) + 128] - 1 < mem[_341 + ceil32(return_data.size) + 128]
                    if mem[(32 * mem[_341 + ceil32(return_data.size) + 128] - 1) + _341 + ceil32(return_data.size) + 160] <= s:
                        idx = idx + 1
                        s = s
                        continue 
                    idx = idx + 1
                    s = mem[(32 * mem[_341 + ceil32(return_data.size) + 128] - 1) + _341 + ceil32(return_data.size) + 160]
                    continue 
                _417 = mem[64]
                mem[mem[64]] = 3
                mem[64] = mem[64] + 128
                require 0 < mem[_417]
                mem[_417 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                require 1 < mem[_417]
                mem[_417 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                require 2 < mem[_417]
                mem[_417 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                mem[_417 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_417 + 132] = 0
                mem[_417 + 164] = 64
                mem[_417 + 196] = mem[_417]
                t = 0
                while t < 32 * mem[_417]:
                    mem[t + _417 + 228] = mem[t + _417 + 32]
                    t = t + 32
                    continue 
                require ext_code.size(0x7b17021fcb7bc888641dc3bedfed3734fcaf2c87)
                staticcall 0x7b17021fcb7bc888641dc3bedfed3734fcaf2c87.getAmountsOut(uint256 rg1, address[] rg2) with:
                        gas gas_remaining wei
                       args 0, 64, mem[_417 + 196 len (32 * mem[_417]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_417 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _417 + ceil32(return_data.size) + 128
                require return_data.size >= 32
                _1416 = mem[_417 + 128 len 4], 0
                require mem[_417 + 128 len 4], 0 <= 4294967296
                require mem[_417 + 128 len 4], 0 + 32 <= return_data.size
                require mem[_417 + mem[_417 + 128 len 4], 0 + 128] <= 4294967296 and mem[_417 + 128 len 4], 0 + (32 * mem[_417 + mem[_417 + 128 len 4], 0 + 128]) + 32 <= return_data.size
                mem[_417 + ceil32(return_data.size) + 128] = mem[_417 + mem[_417 + 128 len 4], 0 + 128]
                _1600 = mem[_417 + _1416 + 128]
                t = 0
                while t < 32 * _1600:
                    mem[t + _417 + ceil32(return_data.size) + 160] = mem[t + _417 + _1416 + 160]
                    t = t + 32
                    continue 
                mem[64] = (32 * _1600) + _417 + ceil32(return_data.size) + 160
                require mem[_417 + ceil32(return_data.size) + 128] - 1 < mem[_417 + ceil32(return_data.size) + 128]
                if mem[(32 * mem[_417 + ceil32(return_data.size) + 128] - 1) + _417 + ceil32(return_data.size) + 160] <= s:
                    idx = idx + 1
                    s = s
                    continue 
                idx = idx + 1
                s = mem[(32 * mem[_417 + ceil32(return_data.size) + 128] - 1) + _417 + ceil32(return_data.size) + 160]
                continue 
            if idx != 5:
                if 0 <= s:
                    idx = idx + 1
                    s = s
                    continue 
                idx = idx + 1
                s = 0
                continue 
            _274 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            require 0 < mem[_274]
            mem[_274 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
            require 1 < mem[_274]
            mem[_274 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
            mem[_274 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[_274 + 100] = 0
            mem[_274 + 132] = 64
            mem[_274 + 164] = mem[_274]
            t = 0
            while t < 32 * mem[_274]:
                mem[t + _274 + 196] = mem[t + _274 + 32]
                t = t + 32
                continue 
            require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
            staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c29.getAmountsOut(uint256 rg1, address[] rg2) with:
                    gas gas_remaining wei
                   args 0, 64, mem[_274 + 164 len (32 * mem[_274]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[_274 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = _274 + ceil32(return_data.size) + 96
            require return_data.size >= 32
            _1410 = mem[_274 + 96 len 4], 0
            require mem[_274 + 96 len 4], 0 <= 4294967296
            require mem[_274 + 96 len 4], 0 + 32 <= return_data.size
            require mem[_274 + mem[_274 + 96 len 4], 0 + 96] <= 4294967296 and mem[_274 + 96 len 4], 0 + (32 * mem[_274 + mem[_274 + 96 len 4], 0 + 96]) + 32 <= return_data.size
            mem[_274 + ceil32(return_data.size) + 96] = mem[_274 + mem[_274 + 96 len 4], 0 + 96]
            _1597 = mem[_274 + _1410 + 96]
            t = 0
            while t < 32 * _1597:
                mem[t + _274 + ceil32(return_data.size) + 128] = mem[t + _274 + _1410 + 128]
                t = t + 32
                continue 
            mem[64] = (32 * _1597) + _274 + ceil32(return_data.size) + 128
            require mem[_274 + ceil32(return_data.size) + 96] - 1 < mem[_274 + ceil32(return_data.size) + 96]
            _4155 = mem[(32 * mem[_274 + ceil32(return_data.size) + 96] - 1) + _274 + ceil32(return_data.size) + 128]
            mem[(32 * _1597) + _274 + ceil32(return_data.size) + 128] = 2
            mem[(32 * _1597) + _274 + ceil32(return_data.size) + 160] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
            mem[(32 * _1597) + _274 + ceil32(return_data.size) + 192] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
            mem[(32 * _1597) + _274 + ceil32(return_data.size) + 224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[(32 * _1597) + _274 + ceil32(return_data.size) + 228] = _4155
            mem[(32 * _1597) + _274 + ceil32(return_data.size) + 260] = 64
            mem[(32 * _1597) + _274 + ceil32(return_data.size) + 292] = 2
            t = 0
            while t < 64:
                mem[t + (32 * _1597) + _274 + ceil32(return_data.size) + 324] = mem[t + (32 * _1597) + _274 + ceil32(return_data.size) + 160]
                t = t + 32
                continue 
            require ext_code.size(0x1b02da8cb0d097eb8d57a175b88c7d8b47997506)
            staticcall 0x1b02da8cb0d097eb8d57a175b88c7d8b47997506.getAmountsOut(uint256 rg1, address[] rg2) with:
                    gas gas_remaining wei
                   args _4155, Array(len=2, data=mem[(32 * _1597) + _274 + ceil32(return_data.size) + 324 len 64])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _1597) + _274 + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * _1597) + _274 + (2 * ceil32(return_data.size)) + 224
            require return_data.size >= 32
            _5772 = mem[(32 * _1597) + _274 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _4155) >> 32
            require mem[(32 * _1597) + _274 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _4155) >> 32 <= 4294967296
            require mem[(32 * _1597) + _274 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _4155) >> 32 + 32 <= return_data.size
            require mem[(32 * _1597) + _274 + ceil32(return_data.size) + mem[(32 * _1597) + _274 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _4155) >> 32 + 224] <= 4294967296 and mem[(32 * _1597) + _274 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _4155) >> 32 + (32 * mem[(32 * _1597) + _274 + ceil32(return_data.size) + mem[(32 * _1597) + _274 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _4155) >> 32 + 224]) + 32 <= return_data.size
            mem[(32 * _1597) + _274 + (2 * ceil32(return_data.size)) + 224] = mem[(32 * _1597) + _274 + ceil32(return_data.size) + mem[(32 * _1597) + _274 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _4155) >> 32 + 224]
            _5860 = mem[(32 * _1597) + _274 + ceil32(return_data.size) + _5772 + 224]
            t = 0
            while t < 32 * _5860:
                mem[t + (32 * _1597) + _274 + (2 * ceil32(return_data.size)) + 256] = mem[t + (32 * _1597) + _274 + ceil32(return_data.size) + _5772 + 256]
                t = t + 32
                continue 
            mem[64] = (32 * _5860) + (32 * _1597) + _274 + (2 * ceil32(return_data.size)) + 256
            require mem[(32 * _1597) + _274 + (2 * ceil32(return_data.size)) + 224] - 1 < mem[(32 * _1597) + _274 + (2 * ceil32(return_data.size)) + 224]
            if mem[(32 * mem[(32 * _1597) + _274 + (2 * ceil32(return_data.size)) + 224] - 1) + (32 * _1597) + _274 + (2 * ceil32(return_data.size)) + 256] <= s:
                idx = idx + 1
                s = s
                continue 
            idx = idx + 1
            s = mem[(32 * mem[(32 * _1597) + _274 + (2 * ceil32(return_data.size)) + 224] - 1) + (32 * _1597) + _274 + (2 * ceil32(return_data.size)) + 256]
            continue 
        idx = 0
        t = 0
        while idx < 6:
            if not idx:
                mem[mem[64] + 4] = 2
                mem[mem[64] + 36] = 0
                mem[mem[64] + 68] = s
                require ext_code.size(0x92d5ebf3593a92888c25c0abef126583d4b5312e)
                staticcall 0x92d5ebf3593a92888c25c0abef126583d4b5312e.get_dy_underlying(int128 rg1, int128 rg2, uint256 rg3) with:
                        gas gas_remaining wei
                       args 2, 0, s
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
                mem[mem[64] + 36] = 0
                mem[mem[64] + 68] = s
                require ext_code.size(0x83e5f18da720119ff363cf63417628eb0e9fd523)
                staticcall 0x83e5f18da720119ff363cf63417628eb0e9fd523.get_dy(int128 rg1, int128 rg2, uint256 rg3) with:
                        gas gas_remaining wei
                       args 2, 0, s
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
                _1722 = mem[64]
                mem[mem[64]] = 3
                mem[64] = mem[64] + 128
                require 0 < mem[_1722]
                mem[_1722 + 32] = 0x49d68029688eabf473097a2fc38ef61633a3c
                require 1 < mem[_1722]
                mem[_1722 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                require 2 < mem[_1722]
                mem[_1722 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                mem[_1722 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_1722 + 132] = s
                mem[_1722 + 164] = 64
                mem[_1722 + 196] = mem[_1722]
                u = 0
                while u < 32 * mem[_1722]:
                    mem[u + _1722 + 228] = mem[u + _1722 + 32]
                    u = u + 32
                    continue 
                require ext_code.size(0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52)
                staticcall 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52.getAmountsOut(uint256 rg1, address[] rg2) with:
                        gas gas_remaining wei
                       args s, 64, mem[_1722 + 196 len (32 * mem[_1722]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_1722 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _1722 + ceil32(return_data.size) + 128
                require return_data.size >= 32
                _4356 = mem[_1722 + 128 len 4], Mask(224, 32, s) >> 32
                require mem[_1722 + 128 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                require mem[_1722 + 128 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                require mem[_1722 + mem[_1722 + 128 len 4], Mask(224, 32, s) >> 32 + 128] <= 4294967296 and mem[_1722 + 128 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_1722 + mem[_1722 + 128 len 4], Mask(224, 32, s) >> 32 + 128]) + 32 <= return_data.size
                mem[_1722 + ceil32(return_data.size) + 128] = mem[_1722 + mem[_1722 + 128 len 4], Mask(224, 32, s) >> 32 + 128]
                _4604 = mem[_1722 + _4356 + 128]
                s = 0
                while s < 32 * _4604:
                    mem[s + _1722 + ceil32(return_data.size) + 160] = mem[s + _1722 + _4356 + 160]
                    s = s + 32
                    continue 
                mem[64] = (32 * _4604) + _1722 + ceil32(return_data.size) + 160
                require mem[_1722 + ceil32(return_data.size) + 128] - 1 < mem[_1722 + ceil32(return_data.size) + 128]
                if mem[(32 * mem[_1722 + ceil32(return_data.size) + 128] - 1) + _1722 + ceil32(return_data.size) + 160] <= t:
                    idx = idx + 1
                    t = t
                    continue 
                idx = idx + 1
                t = mem[(32 * mem[_1722 + ceil32(return_data.size) + 128] - 1) + _1722 + ceil32(return_data.size) + 160]
                continue 
            if 3 == idx:
                if 2 == idx:
                    _1843 = mem[64]
                    mem[mem[64]] = 3
                    mem[64] = mem[64] + 128
                    require 0 < mem[_1843]
                    mem[_1843 + 32] = 0x49d68029688eabf473097a2fc38ef61633a3c
                    require 1 < mem[_1843]
                    mem[_1843 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                    require 2 < mem[_1843]
                    mem[_1843 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    mem[_1843 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_1843 + 132] = s
                    mem[_1843 + 164] = 64
                    mem[_1843 + 196] = mem[_1843]
                    u = 0
                    while u < 32 * mem[_1843]:
                        mem[u + _1843 + 228] = mem[u + _1843 + 32]
                        u = u + 32
                        continue 
                    require ext_code.size(0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52)
                    staticcall 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52.getAmountsOut(uint256 rg1, address[] rg2) with:
                            gas gas_remaining wei
                           args s, 64, mem[_1843 + 196 len (32 * mem[_1843]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_1843 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _1843 + ceil32(return_data.size) + 128
                    require return_data.size >= 32
                    _4364 = mem[_1843 + 128 len 4], Mask(224, 32, s) >> 32
                    require mem[_1843 + 128 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                    require mem[_1843 + 128 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                    require mem[_1843 + mem[_1843 + 128 len 4], Mask(224, 32, s) >> 32 + 128] <= 4294967296 and mem[_1843 + 128 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_1843 + mem[_1843 + 128 len 4], Mask(224, 32, s) >> 32 + 128]) + 32 <= return_data.size
                    mem[_1843 + ceil32(return_data.size) + 128] = mem[_1843 + mem[_1843 + 128 len 4], Mask(224, 32, s) >> 32 + 128]
                    _4608 = mem[_1843 + _4364 + 128]
                    s = 0
                    while s < 32 * _4608:
                        mem[s + _1843 + ceil32(return_data.size) + 160] = mem[s + _1843 + _4364 + 160]
                        s = s + 32
                        continue 
                    mem[64] = (32 * _4608) + _1843 + ceil32(return_data.size) + 160
                    require mem[_1843 + ceil32(return_data.size) + 128] - 1 < mem[_1843 + ceil32(return_data.size) + 128]
                    if mem[(32 * mem[_1843 + ceil32(return_data.size) + 128] - 1) + _1843 + ceil32(return_data.size) + 160] <= t:
                        idx = idx + 1
                        t = t
                        continue 
                    idx = idx + 1
                    t = mem[(32 * mem[_1843 + ceil32(return_data.size) + 128] - 1) + _1843 + ceil32(return_data.size) + 160]
                    continue 
                if 3 == idx:
                    _1931 = mem[64]
                    mem[mem[64]] = 3
                    mem[64] = mem[64] + 128
                    require 0 < mem[_1931]
                    mem[_1931 + 32] = 0x49d68029688eabf473097a2fc38ef61633a3c
                    require 1 < mem[_1931]
                    mem[_1931 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                    require 2 < mem[_1931]
                    mem[_1931 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    mem[_1931 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_1931 + 132] = s
                    mem[_1931 + 164] = 64
                    mem[_1931 + 196] = mem[_1931]
                    u = 0
                    while u < 32 * mem[_1931]:
                        mem[u + _1931 + 228] = mem[u + _1931 + 32]
                        u = u + 32
                        continue 
                    require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                    staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c29.getAmountsOut(uint256 rg1, address[] rg2) with:
                            gas gas_remaining wei
                           args s, 64, mem[_1931 + 196 len (32 * mem[_1931]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_1931 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _1931 + ceil32(return_data.size) + 128
                    require return_data.size >= 32
                    _4362 = mem[_1931 + 128 len 4], Mask(224, 32, s) >> 32
                    require mem[_1931 + 128 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                    require mem[_1931 + 128 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                    require mem[_1931 + mem[_1931 + 128 len 4], Mask(224, 32, s) >> 32 + 128] <= 4294967296 and mem[_1931 + 128 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_1931 + mem[_1931 + 128 len 4], Mask(224, 32, s) >> 32 + 128]) + 32 <= return_data.size
                    mem[_1931 + ceil32(return_data.size) + 128] = mem[_1931 + mem[_1931 + 128 len 4], Mask(224, 32, s) >> 32 + 128]
                    _4607 = mem[_1931 + _4362 + 128]
                    s = 0
                    while s < 32 * _4607:
                        mem[s + _1931 + ceil32(return_data.size) + 160] = mem[s + _1931 + _4362 + 160]
                        s = s + 32
                        continue 
                    mem[64] = (32 * _4607) + _1931 + ceil32(return_data.size) + 160
                    require mem[_1931 + ceil32(return_data.size) + 128] - 1 < mem[_1931 + ceil32(return_data.size) + 128]
                    if mem[(32 * mem[_1931 + ceil32(return_data.size) + 128] - 1) + _1931 + ceil32(return_data.size) + 160] <= t:
                        idx = idx + 1
                        t = t
                        continue 
                    idx = idx + 1
                    t = mem[(32 * mem[_1931 + ceil32(return_data.size) + 128] - 1) + _1931 + ceil32(return_data.size) + 160]
                    continue 
                if idx != 4:
                    _1929 = mem[64]
                    mem[mem[64]] = 3
                    mem[64] = mem[64] + 128
                    require 0 < mem[_1929]
                    mem[_1929 + 32] = 0x49d68029688eabf473097a2fc38ef61633a3c
                    require 1 < mem[_1929]
                    mem[_1929 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                    require 2 < mem[_1929]
                    mem[_1929 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    mem[_1929 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_1929 + 132] = s
                    mem[_1929 + 164] = 64
                    mem[_1929 + 196] = mem[_1929]
                    u = 0
                    while u < 32 * mem[_1929]:
                        mem[u + _1929 + 228] = mem[u + _1929 + 32]
                        u = u + 32
                        continue 
                    require ext_code.size(0)
                    staticcall 0x0.getAmountsOut(uint256 rg1, address[] rg2) with:
                            gas gas_remaining wei
                           args s, 64, mem[_1929 + 196 len (32 * mem[_1929]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_1929 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _1929 + ceil32(return_data.size) + 128
                    require return_data.size >= 32
                    _4358 = mem[_1929 + 128 len 4], Mask(224, 32, s) >> 32
                    require mem[_1929 + 128 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                    require mem[_1929 + 128 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                    require mem[_1929 + mem[_1929 + 128 len 4], Mask(224, 32, s) >> 32 + 128] <= 4294967296 and mem[_1929 + 128 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_1929 + mem[_1929 + 128 len 4], Mask(224, 32, s) >> 32 + 128]) + 32 <= return_data.size
                    mem[_1929 + ceil32(return_data.size) + 128] = mem[_1929 + mem[_1929 + 128 len 4], Mask(224, 32, s) >> 32 + 128]
                    _4605 = mem[_1929 + _4358 + 128]
                    s = 0
                    while s < 32 * _4605:
                        mem[s + _1929 + ceil32(return_data.size) + 160] = mem[s + _1929 + _4358 + 160]
                        s = s + 32
                        continue 
                    mem[64] = (32 * _4605) + _1929 + ceil32(return_data.size) + 160
                    require mem[_1929 + ceil32(return_data.size) + 128] - 1 < mem[_1929 + ceil32(return_data.size) + 128]
                    if mem[(32 * mem[_1929 + ceil32(return_data.size) + 128] - 1) + _1929 + ceil32(return_data.size) + 160] <= t:
                        idx = idx + 1
                        t = t
                        continue 
                    idx = idx + 1
                    t = mem[(32 * mem[_1929 + ceil32(return_data.size) + 128] - 1) + _1929 + ceil32(return_data.size) + 160]
                    continue 
                _2040 = mem[64]
                mem[mem[64]] = 3
                mem[64] = mem[64] + 128
                require 0 < mem[_2040]
                mem[_2040 + 32] = 0x49d68029688eabf473097a2fc38ef61633a3c
                require 1 < mem[_2040]
                mem[_2040 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                require 2 < mem[_2040]
                mem[_2040 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                mem[_2040 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_2040 + 132] = s
                mem[_2040 + 164] = 64
                mem[_2040 + 196] = mem[_2040]
                u = 0
                while u < 32 * mem[_2040]:
                    mem[u + _2040 + 228] = mem[u + _2040 + 32]
                    u = u + 32
                    continue 
                require ext_code.size(0x7b17021fcb7bc888641dc3bedfed3734fcaf2c87)
                staticcall 0x7b17021fcb7bc888641dc3bedfed3734fcaf2c87.getAmountsOut(uint256 rg1, address[] rg2) with:
                        gas gas_remaining wei
                       args s, 64, mem[_2040 + 196 len (32 * mem[_2040]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_2040 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _2040 + ceil32(return_data.size) + 128
                require return_data.size >= 32
                _4360 = mem[_2040 + 128 len 4], Mask(224, 32, s) >> 32
                require mem[_2040 + 128 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                require mem[_2040 + 128 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                require mem[_2040 + mem[_2040 + 128 len 4], Mask(224, 32, s) >> 32 + 128] <= 4294967296 and mem[_2040 + 128 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_2040 + mem[_2040 + 128 len 4], Mask(224, 32, s) >> 32 + 128]) + 32 <= return_data.size
                mem[_2040 + ceil32(return_data.size) + 128] = mem[_2040 + mem[_2040 + 128 len 4], Mask(224, 32, s) >> 32 + 128]
                _4606 = mem[_2040 + _4360 + 128]
                s = 0
                while s < 32 * _4606:
                    mem[s + _2040 + ceil32(return_data.size) + 160] = mem[s + _2040 + _4360 + 160]
                    s = s + 32
                    continue 
                mem[64] = (32 * _4606) + _2040 + ceil32(return_data.size) + 160
                require mem[_2040 + ceil32(return_data.size) + 128] - 1 < mem[_2040 + ceil32(return_data.size) + 128]
                if mem[(32 * mem[_2040 + ceil32(return_data.size) + 128] - 1) + _2040 + ceil32(return_data.size) + 160] <= t:
                    idx = idx + 1
                    t = t
                    continue 
                idx = idx + 1
                t = mem[(32 * mem[_2040 + ceil32(return_data.size) + 128] - 1) + _2040 + ceil32(return_data.size) + 160]
                continue 
            if 4 == idx:
                if 2 == idx:
                    _1936 = mem[64]
                    mem[mem[64]] = 3
                    mem[64] = mem[64] + 128
                    require 0 < mem[_1936]
                    mem[_1936 + 32] = 0x49d68029688eabf473097a2fc38ef61633a3c
                    require 1 < mem[_1936]
                    mem[_1936 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                    require 2 < mem[_1936]
                    mem[_1936 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    mem[_1936 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_1936 + 132] = s
                    mem[_1936 + 164] = 64
                    mem[_1936 + 196] = mem[_1936]
                    u = 0
                    while u < 32 * mem[_1936]:
                        mem[u + _1936 + 228] = mem[u + _1936 + 32]
                        u = u + 32
                        continue 
                    require ext_code.size(0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52)
                    staticcall 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52.getAmountsOut(uint256 rg1, address[] rg2) with:
                            gas gas_remaining wei
                           args s, 64, mem[_1936 + 196 len (32 * mem[_1936]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_1936 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _1936 + ceil32(return_data.size) + 128
                    require return_data.size >= 32
                    _4376 = mem[_1936 + 128 len 4], Mask(224, 32, s) >> 32
                    require mem[_1936 + 128 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                    require mem[_1936 + 128 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                    require mem[_1936 + mem[_1936 + 128 len 4], Mask(224, 32, s) >> 32 + 128] <= 4294967296 and mem[_1936 + 128 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_1936 + mem[_1936 + 128 len 4], Mask(224, 32, s) >> 32 + 128]) + 32 <= return_data.size
                    mem[_1936 + ceil32(return_data.size) + 128] = mem[_1936 + mem[_1936 + 128 len 4], Mask(224, 32, s) >> 32 + 128]
                    _4614 = mem[_1936 + _4376 + 128]
                    s = 0
                    while s < 32 * _4614:
                        mem[s + _1936 + ceil32(return_data.size) + 160] = mem[s + _1936 + _4376 + 160]
                        s = s + 32
                        continue 
                    mem[64] = (32 * _4614) + _1936 + ceil32(return_data.size) + 160
                    require mem[_1936 + ceil32(return_data.size) + 128] - 1 < mem[_1936 + ceil32(return_data.size) + 128]
                    if mem[(32 * mem[_1936 + ceil32(return_data.size) + 128] - 1) + _1936 + ceil32(return_data.size) + 160] <= t:
                        idx = idx + 1
                        t = t
                        continue 
                    idx = idx + 1
                    t = mem[(32 * mem[_1936 + ceil32(return_data.size) + 128] - 1) + _1936 + ceil32(return_data.size) + 160]
                    continue 
                if 3 == idx:
                    _2049 = mem[64]
                    mem[mem[64]] = 3
                    mem[64] = mem[64] + 128
                    require 0 < mem[_2049]
                    mem[_2049 + 32] = 0x49d68029688eabf473097a2fc38ef61633a3c
                    require 1 < mem[_2049]
                    mem[_2049 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                    require 2 < mem[_2049]
                    mem[_2049 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    mem[_2049 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_2049 + 132] = s
                    mem[_2049 + 164] = 64
                    mem[_2049 + 196] = mem[_2049]
                    u = 0
                    while u < 32 * mem[_2049]:
                        mem[u + _2049 + 228] = mem[u + _2049 + 32]
                        u = u + 32
                        continue 
                    require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                    staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c29.getAmountsOut(uint256 rg1, address[] rg2) with:
                            gas gas_remaining wei
                           args s, 64, mem[_2049 + 196 len (32 * mem[_2049]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_2049 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _2049 + ceil32(return_data.size) + 128
                    require return_data.size >= 32
                    _4374 = mem[_2049 + 128 len 4], Mask(224, 32, s) >> 32
                    require mem[_2049 + 128 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                    require mem[_2049 + 128 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                    require mem[_2049 + mem[_2049 + 128 len 4], Mask(224, 32, s) >> 32 + 128] <= 4294967296 and mem[_2049 + 128 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_2049 + mem[_2049 + 128 len 4], Mask(224, 32, s) >> 32 + 128]) + 32 <= return_data.size
                    mem[_2049 + ceil32(return_data.size) + 128] = mem[_2049 + mem[_2049 + 128 len 4], Mask(224, 32, s) >> 32 + 128]
                    _4613 = mem[_2049 + _4374 + 128]
                    s = 0
                    while s < 32 * _4613:
                        mem[s + _2049 + ceil32(return_data.size) + 160] = mem[s + _2049 + _4374 + 160]
                        s = s + 32
                        continue 
                    mem[64] = (32 * _4613) + _2049 + ceil32(return_data.size) + 160
                    require mem[_2049 + ceil32(return_data.size) + 128] - 1 < mem[_2049 + ceil32(return_data.size) + 128]
                    if mem[(32 * mem[_2049 + ceil32(return_data.size) + 128] - 1) + _2049 + ceil32(return_data.size) + 160] <= t:
                        idx = idx + 1
                        t = t
                        continue 
                    idx = idx + 1
                    t = mem[(32 * mem[_2049 + ceil32(return_data.size) + 128] - 1) + _2049 + ceil32(return_data.size) + 160]
                    continue 
                if idx != 4:
                    _2047 = mem[64]
                    mem[mem[64]] = 3
                    mem[64] = mem[64] + 128
                    require 0 < mem[_2047]
                    mem[_2047 + 32] = 0x49d68029688eabf473097a2fc38ef61633a3c
                    require 1 < mem[_2047]
                    mem[_2047 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                    require 2 < mem[_2047]
                    mem[_2047 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    mem[_2047 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_2047 + 132] = s
                    mem[_2047 + 164] = 64
                    mem[_2047 + 196] = mem[_2047]
                    u = 0
                    while u < 32 * mem[_2047]:
                        mem[u + _2047 + 228] = mem[u + _2047 + 32]
                        u = u + 32
                        continue 
                    require ext_code.size(0)
                    staticcall 0x0.getAmountsOut(uint256 rg1, address[] rg2) with:
                            gas gas_remaining wei
                           args s, 64, mem[_2047 + 196 len (32 * mem[_2047]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_2047 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _2047 + ceil32(return_data.size) + 128
                    require return_data.size >= 32
                    _4370 = mem[_2047 + 128 len 4], Mask(224, 32, s) >> 32
                    require mem[_2047 + 128 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                    require mem[_2047 + 128 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                    require mem[_2047 + mem[_2047 + 128 len 4], Mask(224, 32, s) >> 32 + 128] <= 4294967296 and mem[_2047 + 128 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_2047 + mem[_2047 + 128 len 4], Mask(224, 32, s) >> 32 + 128]) + 32 <= return_data.size
                    mem[_2047 + ceil32(return_data.size) + 128] = mem[_2047 + mem[_2047 + 128 len 4], Mask(224, 32, s) >> 32 + 128]
                    _4611 = mem[_2047 + _4370 + 128]
                    s = 0
                    while s < 32 * _4611:
                        mem[s + _2047 + ceil32(return_data.size) + 160] = mem[s + _2047 + _4370 + 160]
                        s = s + 32
                        continue 
                    mem[64] = (32 * _4611) + _2047 + ceil32(return_data.size) + 160
                    require mem[_2047 + ceil32(return_data.size) + 128] - 1 < mem[_2047 + ceil32(return_data.size) + 128]
                    if mem[(32 * mem[_2047 + ceil32(return_data.size) + 128] - 1) + _2047 + ceil32(return_data.size) + 160] <= t:
                        idx = idx + 1
                        t = t
                        continue 
                    idx = idx + 1
                    t = mem[(32 * mem[_2047 + ceil32(return_data.size) + 128] - 1) + _2047 + ceil32(return_data.size) + 160]
                    continue 
                _2175 = mem[64]
                mem[mem[64]] = 3
                mem[64] = mem[64] + 128
                require 0 < mem[_2175]
                mem[_2175 + 32] = 0x49d68029688eabf473097a2fc38ef61633a3c
                require 1 < mem[_2175]
                mem[_2175 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                require 2 < mem[_2175]
                mem[_2175 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                mem[_2175 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_2175 + 132] = s
                mem[_2175 + 164] = 64
                mem[_2175 + 196] = mem[_2175]
                u = 0
                while u < 32 * mem[_2175]:
                    mem[u + _2175 + 228] = mem[u + _2175 + 32]
                    u = u + 32
                    continue 
                require ext_code.size(0x7b17021fcb7bc888641dc3bedfed3734fcaf2c87)
                staticcall 0x7b17021fcb7bc888641dc3bedfed3734fcaf2c87.getAmountsOut(uint256 rg1, address[] rg2) with:
                        gas gas_remaining wei
                       args s, 64, mem[_2175 + 196 len (32 * mem[_2175]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_2175 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _2175 + ceil32(return_data.size) + 128
                require return_data.size >= 32
                _4372 = mem[_2175 + 128 len 4], Mask(224, 32, s) >> 32
                require mem[_2175 + 128 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                require mem[_2175 + 128 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                require mem[_2175 + mem[_2175 + 128 len 4], Mask(224, 32, s) >> 32 + 128] <= 4294967296 and mem[_2175 + 128 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_2175 + mem[_2175 + 128 len 4], Mask(224, 32, s) >> 32 + 128]) + 32 <= return_data.size
                mem[_2175 + ceil32(return_data.size) + 128] = mem[_2175 + mem[_2175 + 128 len 4], Mask(224, 32, s) >> 32 + 128]
                _4612 = mem[_2175 + _4372 + 128]
                s = 0
                while s < 32 * _4612:
                    mem[s + _2175 + ceil32(return_data.size) + 160] = mem[s + _2175 + _4372 + 160]
                    s = s + 32
                    continue 
                mem[64] = (32 * _4612) + _2175 + ceil32(return_data.size) + 160
                require mem[_2175 + ceil32(return_data.size) + 128] - 1 < mem[_2175 + ceil32(return_data.size) + 128]
                if mem[(32 * mem[_2175 + ceil32(return_data.size) + 128] - 1) + _2175 + ceil32(return_data.size) + 160] <= t:
                    idx = idx + 1
                    t = t
                    continue 
                idx = idx + 1
                t = mem[(32 * mem[_2175 + ceil32(return_data.size) + 128] - 1) + _2175 + ceil32(return_data.size) + 160]
                continue 
            if idx != 5:
                if s <= t:
                    idx = idx + 1
                    t = t
                    continue 
                idx = idx + 1
                t = s
                continue 
            _1934 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            require 0 < mem[_1934]
            mem[_1934 + 32] = 0x49d68029688eabf473097a2fc38ef61633a3c
            require 1 < mem[_1934]
            mem[_1934 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
            mem[_1934 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[_1934 + 100] = s
            mem[_1934 + 132] = 64
            mem[_1934 + 164] = mem[_1934]
            u = 0
            while u < 32 * mem[_1934]:
                mem[u + _1934 + 196] = mem[u + _1934 + 32]
                u = u + 32
                continue 
            require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
            staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c29.getAmountsOut(uint256 rg1, address[] rg2) with:
                    gas gas_remaining wei
                   args s, 64, mem[_1934 + 164 len (32 * mem[_1934]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[_1934 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = _1934 + ceil32(return_data.size) + 96
            require return_data.size >= 32
            _4366 = mem[_1934 + 96 len 4], Mask(224, 32, s) >> 32
            require mem[_1934 + 96 len 4], Mask(224, 32, s) >> 32 <= 4294967296
            require mem[_1934 + 96 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
            require mem[_1934 + mem[_1934 + 96 len 4], Mask(224, 32, s) >> 32 + 96] <= 4294967296 and mem[_1934 + 96 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_1934 + mem[_1934 + 96 len 4], Mask(224, 32, s) >> 32 + 96]) + 32 <= return_data.size
            mem[_1934 + ceil32(return_data.size) + 96] = mem[_1934 + mem[_1934 + 96 len 4], Mask(224, 32, s) >> 32 + 96]
            _4609 = mem[_1934 + _4366 + 96]
            s = 0
            while s < 32 * _4609:
                mem[s + _1934 + ceil32(return_data.size) + 128] = mem[s + _1934 + _4366 + 128]
                s = s + 32
                continue 
            mem[64] = (32 * _4609) + _1934 + ceil32(return_data.size) + 128
            require mem[_1934 + ceil32(return_data.size) + 96] - 1 < mem[_1934 + ceil32(return_data.size) + 96]
            _5701 = mem[(32 * mem[_1934 + ceil32(return_data.size) + 96] - 1) + _1934 + ceil32(return_data.size) + 128]
            mem[(32 * _4609) + _1934 + ceil32(return_data.size) + 128] = 2
            mem[(32 * _4609) + _1934 + ceil32(return_data.size) + 160] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
            mem[(32 * _4609) + _1934 + ceil32(return_data.size) + 192] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
            mem[(32 * _4609) + _1934 + ceil32(return_data.size) + 224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[(32 * _4609) + _1934 + ceil32(return_data.size) + 228] = _5701
            mem[(32 * _4609) + _1934 + ceil32(return_data.size) + 260] = 64
            mem[(32 * _4609) + _1934 + ceil32(return_data.size) + 292] = 2
            s = 0
            while s < 64:
                mem[s + (32 * _4609) + _1934 + ceil32(return_data.size) + 324] = mem[s + (32 * _4609) + _1934 + ceil32(return_data.size) + 160]
                s = s + 32
                continue 
            require ext_code.size(0x1b02da8cb0d097eb8d57a175b88c7d8b47997506)
            staticcall 0x1b02da8cb0d097eb8d57a175b88c7d8b47997506.getAmountsOut(uint256 rg1, address[] rg2) with:
                    gas gas_remaining wei
                   args _5701, Array(len=2, data=mem[(32 * _4609) + _1934 + ceil32(return_data.size) + 324 len 64])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _4609) + _1934 + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * _4609) + _1934 + (2 * ceil32(return_data.size)) + 224
            require return_data.size >= 32
            _6180 = mem[(32 * _4609) + _1934 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _5701) >> 32
            require mem[(32 * _4609) + _1934 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _5701) >> 32 <= 4294967296
            require mem[(32 * _4609) + _1934 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _5701) >> 32 + 32 <= return_data.size
            require mem[(32 * _4609) + _1934 + ceil32(return_data.size) + mem[(32 * _4609) + _1934 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _5701) >> 32 + 224] <= 4294967296 and mem[(32 * _4609) + _1934 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _5701) >> 32 + (32 * mem[(32 * _4609) + _1934 + ceil32(return_data.size) + mem[(32 * _4609) + _1934 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _5701) >> 32 + 224]) + 32 <= return_data.size
            mem[(32 * _4609) + _1934 + (2 * ceil32(return_data.size)) + 224] = mem[(32 * _4609) + _1934 + ceil32(return_data.size) + mem[(32 * _4609) + _1934 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _5701) >> 32 + 224]
            _6220 = mem[(32 * _4609) + _1934 + ceil32(return_data.size) + _6180 + 224]
            s = 0
            while s < 32 * _6220:
                mem[s + (32 * _4609) + _1934 + (2 * ceil32(return_data.size)) + 256] = mem[s + (32 * _4609) + _1934 + ceil32(return_data.size) + _6180 + 256]
                s = s + 32
                continue 
            mem[64] = (32 * _6220) + (32 * _4609) + _1934 + (2 * ceil32(return_data.size)) + 256
            require mem[(32 * _4609) + _1934 + (2 * ceil32(return_data.size)) + 224] - 1 < mem[(32 * _4609) + _1934 + (2 * ceil32(return_data.size)) + 224]
            if mem[(32 * mem[(32 * _4609) + _1934 + (2 * ceil32(return_data.size)) + 224] - 1) + (32 * _4609) + _1934 + (2 * ceil32(return_data.size)) + 256] <= t:
                idx = idx + 1
                t = t
                continue 
            idx = idx + 1
            t = mem[(32 * mem[(32 * _4609) + _1934 + (2 * ceil32(return_data.size)) + 224] - 1) + (32 * _4609) + _1934 + (2 * ceil32(return_data.size)) + 256]
            continue 
    else:
        if 10 * 10^6 * sub_7d0b6809 / sub_7d0b6809 != 10 * 10^6:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        mem[0] = msg.sender
        idx = 0
        s = 0
        while idx < 6:
            if not idx:
                mem[mem[64] + 4] = 2
                mem[mem[64] + 36] = 0
                mem[mem[64] + 68] = 10 * 10^6 * sub_7d0b6809
                require ext_code.size(0x92d5ebf3593a92888c25c0abef126583d4b5312e)
                staticcall 0x92d5ebf3593a92888c25c0abef126583d4b5312e.get_dy_underlying(int128 rg1, int128 rg2, uint256 rg3) with:
                        gas gas_remaining wei
                       args 2, 0, 10 * 10^6 * sub_7d0b6809
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
                mem[mem[64] + 36] = 0
                mem[mem[64] + 68] = 10 * 10^6 * sub_7d0b6809
                require ext_code.size(0x83e5f18da720119ff363cf63417628eb0e9fd523)
                staticcall 0x83e5f18da720119ff363cf63417628eb0e9fd523.get_dy(int128 rg1, int128 rg2, uint256 rg3) with:
                        gas gas_remaining wei
                       args 2, 0, 10 * 10^6 * sub_7d0b6809
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
                _176 = mem[64]
                mem[mem[64]] = 3
                mem[64] = mem[64] + 128
                require 0 < mem[_176]
                mem[_176 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                require 1 < mem[_176]
                mem[_176 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                require 2 < mem[_176]
                mem[_176 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                mem[_176 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_176 + 132] = 10 * 10^6 * sub_7d0b6809
                mem[_176 + 164] = 64
                mem[_176 + 196] = mem[_176]
                t = 0
                while t < 32 * mem[_176]:
                    mem[t + _176 + 228] = mem[t + _176 + 32]
                    t = t + 32
                    continue 
                require ext_code.size(0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52)
                staticcall 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52.getAmountsOut(uint256 rg1, address[] rg2) with:
                        gas gas_remaining wei
                       args 10 * 10^6 * sub_7d0b6809, 64, mem[_176 + 196 len (32 * mem[_176]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_176 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _176 + ceil32(return_data.size) + 128
                require return_data.size >= 32
                _1340 = mem[_176 + 128 len 4], Mask(224, 32, 10 * 10^6 * sub_7d0b6809) >> 32
                require mem[_176 + 128 len 4], Mask(224, 32, 10 * 10^6 * sub_7d0b6809) >> 32 <= 4294967296
                require mem[_176 + 128 len 4], Mask(224, 32, 10 * 10^6 * sub_7d0b6809) >> 32 + 32 <= return_data.size
                require mem[_176 + mem[_176 + 128 len 4], Mask(224, 32, 10 * 10^6 * sub_7d0b6809) >> 32 + 128] <= 4294967296 and mem[_176 + 128 len 4], Mask(224, 32, 10 * 10^6 * sub_7d0b6809) >> 32 + (32 * mem[_176 + mem[_176 + 128 len 4], Mask(224, 32, 10 * 10^6 * sub_7d0b6809) >> 32 + 128]) + 32 <= return_data.size
                mem[_176 + ceil32(return_data.size) + 128] = mem[_176 + mem[_176 + 128 len 4], Mask(224, 32, 10 * 10^6 * sub_7d0b6809) >> 32 + 128]
                _1558 = mem[_176 + _1340 + 128]
                t = 0
                while t < 32 * _1558:
                    mem[t + _176 + ceil32(return_data.size) + 160] = mem[t + _176 + _1340 + 160]
                    t = t + 32
                    continue 
                mem[64] = (32 * _1558) + _176 + ceil32(return_data.size) + 160
                require mem[_176 + ceil32(return_data.size) + 128] - 1 < mem[_176 + ceil32(return_data.size) + 128]
                if mem[(32 * mem[_176 + ceil32(return_data.size) + 128] - 1) + _176 + ceil32(return_data.size) + 160] <= s:
                    idx = idx + 1
                    s = s
                    continue 
                idx = idx + 1
                s = mem[(32 * mem[_176 + ceil32(return_data.size) + 128] - 1) + _176 + ceil32(return_data.size) + 160]
                continue 
            if 3 == idx:
                if 2 == idx:
                    _205 = mem[64]
                    mem[mem[64]] = 3
                    mem[64] = mem[64] + 128
                    require 0 < mem[_205]
                    mem[_205 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    require 1 < mem[_205]
                    mem[_205 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                    require 2 < mem[_205]
                    mem[_205 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    mem[_205 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_205 + 132] = 10 * 10^6 * sub_7d0b6809
                    mem[_205 + 164] = 64
                    mem[_205 + 196] = mem[_205]
                    t = 0
                    while t < 32 * mem[_205]:
                        mem[t + _205 + 228] = mem[t + _205 + 32]
                        t = t + 32
                        continue 
                    require ext_code.size(0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52)
                    staticcall 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52.getAmountsOut(uint256 rg1, address[] rg2) with:
                            gas gas_remaining wei
                           args 10 * 10^6 * sub_7d0b6809, 64, mem[_205 + 196 len (32 * mem[_205]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_205 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _205 + ceil32(return_data.size) + 128
                    require return_data.size >= 32
                    _1348 = mem[_205 + 128 len 4], Mask(224, 32, 10 * 10^6 * sub_7d0b6809) >> 32
                    require mem[_205 + 128 len 4], Mask(224, 32, 10 * 10^6 * sub_7d0b6809) >> 32 <= 4294967296
                    require mem[_205 + 128 len 4], Mask(224, 32, 10 * 10^6 * sub_7d0b6809) >> 32 + 32 <= return_data.size
                    require mem[_205 + mem[_205 + 128 len 4], Mask(224, 32, 10 * 10^6 * sub_7d0b6809) >> 32 + 128] <= 4294967296 and mem[_205 + 128 len 4], Mask(224, 32, 10 * 10^6 * sub_7d0b6809) >> 32 + (32 * mem[_205 + mem[_205 + 128 len 4], Mask(224, 32, 10 * 10^6 * sub_7d0b6809) >> 32 + 128]) + 32 <= return_data.size
                    mem[_205 + ceil32(return_data.size) + 128] = mem[_205 + mem[_205 + 128 len 4], Mask(224, 32, 10 * 10^6 * sub_7d0b6809) >> 32 + 128]
                    _1562 = mem[_205 + _1348 + 128]
                    t = 0
                    while t < 32 * _1562:
                        mem[t + _205 + ceil32(return_data.size) + 160] = mem[t + _205 + _1348 + 160]
                        t = t + 32
                        continue 
                    mem[64] = (32 * _1562) + _205 + ceil32(return_data.size) + 160
                    require mem[_205 + ceil32(return_data.size) + 128] - 1 < mem[_205 + ceil32(return_data.size) + 128]
                    if mem[(32 * mem[_205 + ceil32(return_data.size) + 128] - 1) + _205 + ceil32(return_data.size) + 160] <= s:
                        idx = idx + 1
                        s = s
                        continue 
                    idx = idx + 1
                    s = mem[(32 * mem[_205 + ceil32(return_data.size) + 128] - 1) + _205 + ceil32(return_data.size) + 160]
                    continue 
                if 3 == idx:
                    _243 = mem[64]
                    mem[mem[64]] = 3
                    mem[64] = mem[64] + 128
                    require 0 < mem[_243]
                    mem[_243 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    require 1 < mem[_243]
                    mem[_243 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                    require 2 < mem[_243]
                    mem[_243 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    mem[_243 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_243 + 132] = 10 * 10^6 * sub_7d0b6809
                    mem[_243 + 164] = 64
                    mem[_243 + 196] = mem[_243]
                    t = 0
                    while t < 32 * mem[_243]:
                        mem[t + _243 + 228] = mem[t + _243 + 32]
                        t = t + 32
                        continue 
                    require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                    staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c29.getAmountsOut(uint256 rg1, address[] rg2) with:
                            gas gas_remaining wei
                           args 10 * 10^6 * sub_7d0b6809, 64, mem[_243 + 196 len (32 * mem[_243]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_243 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _243 + ceil32(return_data.size) + 128
                    require return_data.size >= 32
                    _1346 = mem[_243 + 128 len 4], Mask(224, 32, 10 * 10^6 * sub_7d0b6809) >> 32
                    require mem[_243 + 128 len 4], Mask(224, 32, 10 * 10^6 * sub_7d0b6809) >> 32 <= 4294967296
                    require mem[_243 + 128 len 4], Mask(224, 32, 10 * 10^6 * sub_7d0b6809) >> 32 + 32 <= return_data.size
                    require mem[_243 + mem[_243 + 128 len 4], Mask(224, 32, 10 * 10^6 * sub_7d0b6809) >> 32 + 128] <= 4294967296 and mem[_243 + 128 len 4], Mask(224, 32, 10 * 10^6 * sub_7d0b6809) >> 32 + (32 * mem[_243 + mem[_243 + 128 len 4], Mask(224, 32, 10 * 10^6 * sub_7d0b6809) >> 32 + 128]) + 32 <= return_data.size
                    mem[_243 + ceil32(return_data.size) + 128] = mem[_243 + mem[_243 + 128 len 4], Mask(224, 32, 10 * 10^6 * sub_7d0b6809) >> 32 + 128]
                    _1561 = mem[_243 + _1346 + 128]
                    t = 0
                    while t < 32 * _1561:
                        mem[t + _243 + ceil32(return_data.size) + 160] = mem[t + _243 + _1346 + 160]
                        t = t + 32
                        continue 
                    mem[64] = (32 * _1561) + _243 + ceil32(return_data.size) + 160
                    require mem[_243 + ceil32(return_data.size) + 128] - 1 < mem[_243 + ceil32(return_data.size) + 128]
                    if mem[(32 * mem[_243 + ceil32(return_data.size) + 128] - 1) + _243 + ceil32(return_data.size) + 160] <= s:
                        idx = idx + 1
                        s = s
                        continue 
                    idx = idx + 1
                    s = mem[(32 * mem[_243 + ceil32(return_data.size) + 128] - 1) + _243 + ceil32(return_data.size) + 160]
                    continue 
                if idx != 4:
                    _241 = mem[64]
                    mem[mem[64]] = 3
                    mem[64] = mem[64] + 128
                    require 0 < mem[_241]
                    mem[_241 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    require 1 < mem[_241]
                    mem[_241 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                    require 2 < mem[_241]
                    mem[_241 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    mem[_241 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_241 + 132] = 10 * 10^6 * sub_7d0b6809
                    mem[_241 + 164] = 64
                    mem[_241 + 196] = mem[_241]
                    t = 0
                    while t < 32 * mem[_241]:
                        mem[t + _241 + 228] = mem[t + _241 + 32]
                        t = t + 32
                        continue 
                    require ext_code.size(0)
                    staticcall 0x0.getAmountsOut(uint256 rg1, address[] rg2) with:
                            gas gas_remaining wei
                           args 10 * 10^6 * sub_7d0b6809, 64, mem[_241 + 196 len (32 * mem[_241]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_241 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _241 + ceil32(return_data.size) + 128
                    require return_data.size >= 32
                    _1342 = mem[_241 + 128 len 4], Mask(224, 32, 10 * 10^6 * sub_7d0b6809) >> 32
                    require mem[_241 + 128 len 4], Mask(224, 32, 10 * 10^6 * sub_7d0b6809) >> 32 <= 4294967296
                    require mem[_241 + 128 len 4], Mask(224, 32, 10 * 10^6 * sub_7d0b6809) >> 32 + 32 <= return_data.size
                    require mem[_241 + mem[_241 + 128 len 4], Mask(224, 32, 10 * 10^6 * sub_7d0b6809) >> 32 + 128] <= 4294967296 and mem[_241 + 128 len 4], Mask(224, 32, 10 * 10^6 * sub_7d0b6809) >> 32 + (32 * mem[_241 + mem[_241 + 128 len 4], Mask(224, 32, 10 * 10^6 * sub_7d0b6809) >> 32 + 128]) + 32 <= return_data.size
                    mem[_241 + ceil32(return_data.size) + 128] = mem[_241 + mem[_241 + 128 len 4], Mask(224, 32, 10 * 10^6 * sub_7d0b6809) >> 32 + 128]
                    _1559 = mem[_241 + _1342 + 128]
                    t = 0
                    while t < 32 * _1559:
                        mem[t + _241 + ceil32(return_data.size) + 160] = mem[t + _241 + _1342 + 160]
                        t = t + 32
                        continue 
                    mem[64] = (32 * _1559) + _241 + ceil32(return_data.size) + 160
                    require mem[_241 + ceil32(return_data.size) + 128] - 1 < mem[_241 + ceil32(return_data.size) + 128]
                    if mem[(32 * mem[_241 + ceil32(return_data.size) + 128] - 1) + _241 + ceil32(return_data.size) + 160] <= s:
                        idx = idx + 1
                        s = s
                        continue 
                    idx = idx + 1
                    s = mem[(32 * mem[_241 + ceil32(return_data.size) + 128] - 1) + _241 + ceil32(return_data.size) + 160]
                    continue 
                _298 = mem[64]
                mem[mem[64]] = 3
                mem[64] = mem[64] + 128
                require 0 < mem[_298]
                mem[_298 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                require 1 < mem[_298]
                mem[_298 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                require 2 < mem[_298]
                mem[_298 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                mem[_298 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_298 + 132] = 10 * 10^6 * sub_7d0b6809
                mem[_298 + 164] = 64
                mem[_298 + 196] = mem[_298]
                t = 0
                while t < 32 * mem[_298]:
                    mem[t + _298 + 228] = mem[t + _298 + 32]
                    t = t + 32
                    continue 
                require ext_code.size(0x7b17021fcb7bc888641dc3bedfed3734fcaf2c87)
                staticcall 0x7b17021fcb7bc888641dc3bedfed3734fcaf2c87.getAmountsOut(uint256 rg1, address[] rg2) with:
                        gas gas_remaining wei
                       args 10 * 10^6 * sub_7d0b6809, 64, mem[_298 + 196 len (32 * mem[_298]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_298 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _298 + ceil32(return_data.size) + 128
                require return_data.size >= 32
                _1344 = mem[_298 + 128 len 4], Mask(224, 32, 10 * 10^6 * sub_7d0b6809) >> 32
                require mem[_298 + 128 len 4], Mask(224, 32, 10 * 10^6 * sub_7d0b6809) >> 32 <= 4294967296
                require mem[_298 + 128 len 4], Mask(224, 32, 10 * 10^6 * sub_7d0b6809) >> 32 + 32 <= return_data.size
                require mem[_298 + mem[_298 + 128 len 4], Mask(224, 32, 10 * 10^6 * sub_7d0b6809) >> 32 + 128] <= 4294967296 and mem[_298 + 128 len 4], Mask(224, 32, 10 * 10^6 * sub_7d0b6809) >> 32 + (32 * mem[_298 + mem[_298 + 128 len 4], Mask(224, 32, 10 * 10^6 * sub_7d0b6809) >> 32 + 128]) + 32 <= return_data.size
                mem[_298 + ceil32(return_data.size) + 128] = mem[_298 + mem[_298 + 128 len 4], Mask(224, 32, 10 * 10^6 * sub_7d0b6809) >> 32 + 128]
                _1560 = mem[_298 + _1344 + 128]
                t = 0
                while t < 32 * _1560:
                    mem[t + _298 + ceil32(return_data.size) + 160] = mem[t + _298 + _1344 + 160]
                    t = t + 32
                    continue 
                mem[64] = (32 * _1560) + _298 + ceil32(return_data.size) + 160
                require mem[_298 + ceil32(return_data.size) + 128] - 1 < mem[_298 + ceil32(return_data.size) + 128]
                if mem[(32 * mem[_298 + ceil32(return_data.size) + 128] - 1) + _298 + ceil32(return_data.size) + 160] <= s:
                    idx = idx + 1
                    s = s
                    continue 
                idx = idx + 1
                s = mem[(32 * mem[_298 + ceil32(return_data.size) + 128] - 1) + _298 + ceil32(return_data.size) + 160]
                continue 
            if 4 == idx:
                if 2 == idx:
                    _248 = mem[64]
                    mem[mem[64]] = 3
                    mem[64] = mem[64] + 128
                    require 0 < mem[_248]
                    mem[_248 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    require 1 < mem[_248]
                    mem[_248 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                    require 2 < mem[_248]
                    mem[_248 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    mem[_248 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_248 + 132] = 10 * 10^6 * sub_7d0b6809
                    mem[_248 + 164] = 64
                    mem[_248 + 196] = mem[_248]
                    t = 0
                    while t < 32 * mem[_248]:
                        mem[t + _248 + 228] = mem[t + _248 + 32]
                        t = t + 32
                        continue 
                    require ext_code.size(0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52)
                    staticcall 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52.getAmountsOut(uint256 rg1, address[] rg2) with:
                            gas gas_remaining wei
                           args 10 * 10^6 * sub_7d0b6809, 64, mem[_248 + 196 len (32 * mem[_248]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_248 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _248 + ceil32(return_data.size) + 128
                    require return_data.size >= 32
                    _1360 = mem[_248 + 128 len 4], Mask(224, 32, 10 * 10^6 * sub_7d0b6809) >> 32
                    require mem[_248 + 128 len 4], Mask(224, 32, 10 * 10^6 * sub_7d0b6809) >> 32 <= 4294967296
                    require mem[_248 + 128 len 4], Mask(224, 32, 10 * 10^6 * sub_7d0b6809) >> 32 + 32 <= return_data.size
                    require mem[_248 + mem[_248 + 128 len 4], Mask(224, 32, 10 * 10^6 * sub_7d0b6809) >> 32 + 128] <= 4294967296 and mem[_248 + 128 len 4], Mask(224, 32, 10 * 10^6 * sub_7d0b6809) >> 32 + (32 * mem[_248 + mem[_248 + 128 len 4], Mask(224, 32, 10 * 10^6 * sub_7d0b6809) >> 32 + 128]) + 32 <= return_data.size
                    mem[_248 + ceil32(return_data.size) + 128] = mem[_248 + mem[_248 + 128 len 4], Mask(224, 32, 10 * 10^6 * sub_7d0b6809) >> 32 + 128]
                    _1568 = mem[_248 + _1360 + 128]
                    t = 0
                    while t < 32 * _1568:
                        mem[t + _248 + ceil32(return_data.size) + 160] = mem[t + _248 + _1360 + 160]
                        t = t + 32
                        continue 
                    mem[64] = (32 * _1568) + _248 + ceil32(return_data.size) + 160
                    require mem[_248 + ceil32(return_data.size) + 128] - 1 < mem[_248 + ceil32(return_data.size) + 128]
                    if mem[(32 * mem[_248 + ceil32(return_data.size) + 128] - 1) + _248 + ceil32(return_data.size) + 160] <= s:
                        idx = idx + 1
                        s = s
                        continue 
                    idx = idx + 1
                    s = mem[(32 * mem[_248 + ceil32(return_data.size) + 128] - 1) + _248 + ceil32(return_data.size) + 160]
                    continue 
                if 3 == idx:
                    _307 = mem[64]
                    mem[mem[64]] = 3
                    mem[64] = mem[64] + 128
                    require 0 < mem[_307]
                    mem[_307 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    require 1 < mem[_307]
                    mem[_307 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                    require 2 < mem[_307]
                    mem[_307 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    mem[_307 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_307 + 132] = 10 * 10^6 * sub_7d0b6809
                    mem[_307 + 164] = 64
                    mem[_307 + 196] = mem[_307]
                    t = 0
                    while t < 32 * mem[_307]:
                        mem[t + _307 + 228] = mem[t + _307 + 32]
                        t = t + 32
                        continue 
                    require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                    staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c29.getAmountsOut(uint256 rg1, address[] rg2) with:
                            gas gas_remaining wei
                           args 10 * 10^6 * sub_7d0b6809, 64, mem[_307 + 196 len (32 * mem[_307]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_307 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _307 + ceil32(return_data.size) + 128
                    require return_data.size >= 32
                    _1358 = mem[_307 + 128 len 4], Mask(224, 32, 10 * 10^6 * sub_7d0b6809) >> 32
                    require mem[_307 + 128 len 4], Mask(224, 32, 10 * 10^6 * sub_7d0b6809) >> 32 <= 4294967296
                    require mem[_307 + 128 len 4], Mask(224, 32, 10 * 10^6 * sub_7d0b6809) >> 32 + 32 <= return_data.size
                    require mem[_307 + mem[_307 + 128 len 4], Mask(224, 32, 10 * 10^6 * sub_7d0b6809) >> 32 + 128] <= 4294967296 and mem[_307 + 128 len 4], Mask(224, 32, 10 * 10^6 * sub_7d0b6809) >> 32 + (32 * mem[_307 + mem[_307 + 128 len 4], Mask(224, 32, 10 * 10^6 * sub_7d0b6809) >> 32 + 128]) + 32 <= return_data.size
                    mem[_307 + ceil32(return_data.size) + 128] = mem[_307 + mem[_307 + 128 len 4], Mask(224, 32, 10 * 10^6 * sub_7d0b6809) >> 32 + 128]
                    _1567 = mem[_307 + _1358 + 128]
                    t = 0
                    while t < 32 * _1567:
                        mem[t + _307 + ceil32(return_data.size) + 160] = mem[t + _307 + _1358 + 160]
                        t = t + 32
                        continue 
                    mem[64] = (32 * _1567) + _307 + ceil32(return_data.size) + 160
                    require mem[_307 + ceil32(return_data.size) + 128] - 1 < mem[_307 + ceil32(return_data.size) + 128]
                    if mem[(32 * mem[_307 + ceil32(return_data.size) + 128] - 1) + _307 + ceil32(return_data.size) + 160] <= s:
                        idx = idx + 1
                        s = s
                        continue 
                    idx = idx + 1
                    s = mem[(32 * mem[_307 + ceil32(return_data.size) + 128] - 1) + _307 + ceil32(return_data.size) + 160]
                    continue 
                if idx != 4:
                    _305 = mem[64]
                    mem[mem[64]] = 3
                    mem[64] = mem[64] + 128
                    require 0 < mem[_305]
                    mem[_305 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    require 1 < mem[_305]
                    mem[_305 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                    require 2 < mem[_305]
                    mem[_305 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    mem[_305 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_305 + 132] = 10 * 10^6 * sub_7d0b6809
                    mem[_305 + 164] = 64
                    mem[_305 + 196] = mem[_305]
                    t = 0
                    while t < 32 * mem[_305]:
                        mem[t + _305 + 228] = mem[t + _305 + 32]
                        t = t + 32
                        continue 
                    require ext_code.size(0)
                    staticcall 0x0.getAmountsOut(uint256 rg1, address[] rg2) with:
                            gas gas_remaining wei
                           args 10 * 10^6 * sub_7d0b6809, 64, mem[_305 + 196 len (32 * mem[_305]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_305 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _305 + ceil32(return_data.size) + 128
                    require return_data.size >= 32
                    _1354 = mem[_305 + 128 len 4], Mask(224, 32, 10 * 10^6 * sub_7d0b6809) >> 32
                    require mem[_305 + 128 len 4], Mask(224, 32, 10 * 10^6 * sub_7d0b6809) >> 32 <= 4294967296
                    require mem[_305 + 128 len 4], Mask(224, 32, 10 * 10^6 * sub_7d0b6809) >> 32 + 32 <= return_data.size
                    require mem[_305 + mem[_305 + 128 len 4], Mask(224, 32, 10 * 10^6 * sub_7d0b6809) >> 32 + 128] <= 4294967296 and mem[_305 + 128 len 4], Mask(224, 32, 10 * 10^6 * sub_7d0b6809) >> 32 + (32 * mem[_305 + mem[_305 + 128 len 4], Mask(224, 32, 10 * 10^6 * sub_7d0b6809) >> 32 + 128]) + 32 <= return_data.size
                    mem[_305 + ceil32(return_data.size) + 128] = mem[_305 + mem[_305 + 128 len 4], Mask(224, 32, 10 * 10^6 * sub_7d0b6809) >> 32 + 128]
                    _1565 = mem[_305 + _1354 + 128]
                    t = 0
                    while t < 32 * _1565:
                        mem[t + _305 + ceil32(return_data.size) + 160] = mem[t + _305 + _1354 + 160]
                        t = t + 32
                        continue 
                    mem[64] = (32 * _1565) + _305 + ceil32(return_data.size) + 160
                    require mem[_305 + ceil32(return_data.size) + 128] - 1 < mem[_305 + ceil32(return_data.size) + 128]
                    if mem[(32 * mem[_305 + ceil32(return_data.size) + 128] - 1) + _305 + ceil32(return_data.size) + 160] <= s:
                        idx = idx + 1
                        s = s
                        continue 
                    idx = idx + 1
                    s = mem[(32 * mem[_305 + ceil32(return_data.size) + 128] - 1) + _305 + ceil32(return_data.size) + 160]
                    continue 
                _379 = mem[64]
                mem[mem[64]] = 3
                mem[64] = mem[64] + 128
                require 0 < mem[_379]
                mem[_379 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                require 1 < mem[_379]
                mem[_379 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                require 2 < mem[_379]
                mem[_379 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                mem[_379 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_379 + 132] = 10 * 10^6 * sub_7d0b6809
                mem[_379 + 164] = 64
                mem[_379 + 196] = mem[_379]
                t = 0
                while t < 32 * mem[_379]:
                    mem[t + _379 + 228] = mem[t + _379 + 32]
                    t = t + 32
                    continue 
                require ext_code.size(0x7b17021fcb7bc888641dc3bedfed3734fcaf2c87)
                staticcall 0x7b17021fcb7bc888641dc3bedfed3734fcaf2c87.getAmountsOut(uint256 rg1, address[] rg2) with:
                        gas gas_remaining wei
                       args 10 * 10^6 * sub_7d0b6809, 64, mem[_379 + 196 len (32 * mem[_379]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_379 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _379 + ceil32(return_data.size) + 128
                require return_data.size >= 32
                _1356 = mem[_379 + 128 len 4], Mask(224, 32, 10 * 10^6 * sub_7d0b6809) >> 32
                require mem[_379 + 128 len 4], Mask(224, 32, 10 * 10^6 * sub_7d0b6809) >> 32 <= 4294967296
                require mem[_379 + 128 len 4], Mask(224, 32, 10 * 10^6 * sub_7d0b6809) >> 32 + 32 <= return_data.size
                require mem[_379 + mem[_379 + 128 len 4], Mask(224, 32, 10 * 10^6 * sub_7d0b6809) >> 32 + 128] <= 4294967296 and mem[_379 + 128 len 4], Mask(224, 32, 10 * 10^6 * sub_7d0b6809) >> 32 + (32 * mem[_379 + mem[_379 + 128 len 4], Mask(224, 32, 10 * 10^6 * sub_7d0b6809) >> 32 + 128]) + 32 <= return_data.size
                mem[_379 + ceil32(return_data.size) + 128] = mem[_379 + mem[_379 + 128 len 4], Mask(224, 32, 10 * 10^6 * sub_7d0b6809) >> 32 + 128]
                _1566 = mem[_379 + _1356 + 128]
                t = 0
                while t < 32 * _1566:
                    mem[t + _379 + ceil32(return_data.size) + 160] = mem[t + _379 + _1356 + 160]
                    t = t + 32
                    continue 
                mem[64] = (32 * _1566) + _379 + ceil32(return_data.size) + 160
                require mem[_379 + ceil32(return_data.size) + 128] - 1 < mem[_379 + ceil32(return_data.size) + 128]
                if mem[(32 * mem[_379 + ceil32(return_data.size) + 128] - 1) + _379 + ceil32(return_data.size) + 160] <= s:
                    idx = idx + 1
                    s = s
                    continue 
                idx = idx + 1
                s = mem[(32 * mem[_379 + ceil32(return_data.size) + 128] - 1) + _379 + ceil32(return_data.size) + 160]
                continue 
            if idx != 5:
                if 10 * 10^6 * sub_7d0b6809 <= s:
                    idx = idx + 1
                    s = s
                    continue 
                idx = idx + 1
                s = 10 * 10^6 * sub_7d0b6809
                continue 
            _246 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            require 0 < mem[_246]
            mem[_246 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
            require 1 < mem[_246]
            mem[_246 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
            mem[_246 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[_246 + 100] = 10 * 10^6 * sub_7d0b6809
            mem[_246 + 132] = 64
            mem[_246 + 164] = mem[_246]
            t = 0
            while t < 32 * mem[_246]:
                mem[t + _246 + 196] = mem[t + _246 + 32]
                t = t + 32
                continue 
            require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
            staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c29.getAmountsOut(uint256 rg1, address[] rg2) with:
                    gas gas_remaining wei
                   args 10 * 10^6 * sub_7d0b6809, 64, mem[_246 + 164 len (32 * mem[_246]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[_246 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = _246 + ceil32(return_data.size) + 96
            require return_data.size >= 32
            _1350 = mem[_246 + 96 len 4], Mask(224, 32, 10 * 10^6 * sub_7d0b6809) >> 32
            require mem[_246 + 96 len 4], Mask(224, 32, 10 * 10^6 * sub_7d0b6809) >> 32 <= 4294967296
            require mem[_246 + 96 len 4], Mask(224, 32, 10 * 10^6 * sub_7d0b6809) >> 32 + 32 <= return_data.size
            require mem[_246 + mem[_246 + 96 len 4], Mask(224, 32, 10 * 10^6 * sub_7d0b6809) >> 32 + 96] <= 4294967296 and mem[_246 + 96 len 4], Mask(224, 32, 10 * 10^6 * sub_7d0b6809) >> 32 + (32 * mem[_246 + mem[_246 + 96 len 4], Mask(224, 32, 10 * 10^6 * sub_7d0b6809) >> 32 + 96]) + 32 <= return_data.size
            mem[_246 + ceil32(return_data.size) + 96] = mem[_246 + mem[_246 + 96 len 4], Mask(224, 32, 10 * 10^6 * sub_7d0b6809) >> 32 + 96]
            _1563 = mem[_246 + _1350 + 96]
            t = 0
            while t < 32 * _1563:
                mem[t + _246 + ceil32(return_data.size) + 128] = mem[t + _246 + _1350 + 128]
                t = t + 32
                continue 
            require mem[_246 + ceil32(return_data.size) + 96] - 1 < mem[_246 + ceil32(return_data.size) + 96]
            _4133 = mem[(32 * mem[_246 + ceil32(return_data.size) + 96] - 1) + _246 + ceil32(return_data.size) + 128]
            mem[(32 * _1563) + _246 + ceil32(return_data.size) + 128] = 2
            mem[(32 * _1563) + _246 + ceil32(return_data.size) + 160] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
            mem[(32 * _1563) + _246 + ceil32(return_data.size) + 192] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
            mem[(32 * _1563) + _246 + ceil32(return_data.size) + 224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[(32 * _1563) + _246 + ceil32(return_data.size) + 228] = _4133
            mem[(32 * _1563) + _246 + ceil32(return_data.size) + 260] = 64
            mem[(32 * _1563) + _246 + ceil32(return_data.size) + 292] = 2
            t = 0
            while t < 64:
                mem[t + (32 * _1563) + _246 + ceil32(return_data.size) + 324] = mem[t + (32 * _1563) + _246 + ceil32(return_data.size) + 160]
                t = t + 32
                continue 
            require ext_code.size(0x1b02da8cb0d097eb8d57a175b88c7d8b47997506)
            staticcall 0x1b02da8cb0d097eb8d57a175b88c7d8b47997506.getAmountsOut(uint256 rg1, address[] rg2) with:
                    gas gas_remaining wei
                   args _4133, Array(len=2, data=mem[(32 * _1563) + _246 + ceil32(return_data.size) + 324 len 64])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _1563) + _246 + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * _1563) + _246 + (2 * ceil32(return_data.size)) + 224
            require return_data.size >= 32
            _5764 = mem[(32 * _1563) + _246 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _4133) >> 32
            require mem[(32 * _1563) + _246 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _4133) >> 32 <= 4294967296
            require mem[(32 * _1563) + _246 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _4133) >> 32 + 32 <= return_data.size
            require mem[(32 * _1563) + _246 + ceil32(return_data.size) + mem[(32 * _1563) + _246 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _4133) >> 32 + 224] <= 4294967296 and mem[(32 * _1563) + _246 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _4133) >> 32 + (32 * mem[(32 * _1563) + _246 + ceil32(return_data.size) + mem[(32 * _1563) + _246 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _4133) >> 32 + 224]) + 32 <= return_data.size
            mem[(32 * _1563) + _246 + (2 * ceil32(return_data.size)) + 224] = mem[(32 * _1563) + _246 + ceil32(return_data.size) + mem[(32 * _1563) + _246 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _4133) >> 32 + 224]
            _5832 = mem[(32 * _1563) + _246 + ceil32(return_data.size) + _5764 + 224]
            t = 0
            while t < 32 * _5832:
                mem[t + (32 * _1563) + _246 + (2 * ceil32(return_data.size)) + 256] = mem[t + (32 * _1563) + _246 + ceil32(return_data.size) + _5764 + 256]
                t = t + 32
                continue 
            mem[64] = (32 * _5832) + (32 * _1563) + _246 + (2 * ceil32(return_data.size)) + 256
            require mem[(32 * _1563) + _246 + (2 * ceil32(return_data.size)) + 224] - 1 < mem[(32 * _1563) + _246 + (2 * ceil32(return_data.size)) + 224]
            if mem[(32 * mem[(32 * _1563) + _246 + (2 * ceil32(return_data.size)) + 224] - 1) + (32 * _1563) + _246 + (2 * ceil32(return_data.size)) + 256] <= s:
                idx = idx + 1
                s = s
                continue 
            idx = idx + 1
            s = mem[(32 * mem[(32 * _1563) + _246 + (2 * ceil32(return_data.size)) + 224] - 1) + (32 * _1563) + _246 + (2 * ceil32(return_data.size)) + 256]
            continue 
        idx = 0
        t = 0
        while idx < 6:
            if not idx:
                mem[mem[64] + 4] = 2
                mem[mem[64] + 36] = 0
                mem[mem[64] + 68] = s
                require ext_code.size(0x92d5ebf3593a92888c25c0abef126583d4b5312e)
                staticcall 0x92d5ebf3593a92888c25c0abef126583d4b5312e.get_dy_underlying(int128 rg1, int128 rg2, uint256 rg3) with:
                        gas gas_remaining wei
                       args 2, 0, s
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
                mem[mem[64] + 36] = 0
                mem[mem[64] + 68] = s
                require ext_code.size(0x83e5f18da720119ff363cf63417628eb0e9fd523)
                staticcall 0x83e5f18da720119ff363cf63417628eb0e9fd523.get_dy(int128 rg1, int128 rg2, uint256 rg3) with:
                        gas gas_remaining wei
                       args 2, 0, s
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
                _1644 = mem[64]
                mem[mem[64]] = 3
                mem[64] = mem[64] + 128
                require 0 < mem[_1644]
                mem[_1644 + 32] = 0x49d68029688eabf473097a2fc38ef61633a3c
                require 1 < mem[_1644]
                mem[_1644 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                require 2 < mem[_1644]
                mem[_1644 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                mem[_1644 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_1644 + 132] = s
                mem[_1644 + 164] = 64
                mem[_1644 + 196] = mem[_1644]
                u = 0
                while u < 32 * mem[_1644]:
                    mem[u + _1644 + 228] = mem[u + _1644 + 32]
                    u = u + 32
                    continue 
                require ext_code.size(0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52)
                staticcall 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52.getAmountsOut(uint256 rg1, address[] rg2) with:
                        gas gas_remaining wei
                       args s, 64, mem[_1644 + 196 len (32 * mem[_1644]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_1644 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _1644 + ceil32(return_data.size) + 128
                require return_data.size >= 32
                _4268 = mem[_1644 + 128 len 4], Mask(224, 32, s) >> 32
                require mem[_1644 + 128 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                require mem[_1644 + 128 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                require mem[_1644 + mem[_1644 + 128 len 4], Mask(224, 32, s) >> 32 + 128] <= 4294967296 and mem[_1644 + 128 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_1644 + mem[_1644 + 128 len 4], Mask(224, 32, s) >> 32 + 128]) + 32 <= return_data.size
                mem[_1644 + ceil32(return_data.size) + 128] = mem[_1644 + mem[_1644 + 128 len 4], Mask(224, 32, s) >> 32 + 128]
                _4548 = mem[_1644 + _4268 + 128]
                s = 0
                while s < 32 * _4548:
                    mem[s + _1644 + ceil32(return_data.size) + 160] = mem[s + _1644 + _4268 + 160]
                    s = s + 32
                    continue 
                mem[64] = (32 * _4548) + _1644 + ceil32(return_data.size) + 160
                require mem[_1644 + ceil32(return_data.size) + 128] - 1 < mem[_1644 + ceil32(return_data.size) + 128]
                if mem[(32 * mem[_1644 + ceil32(return_data.size) + 128] - 1) + _1644 + ceil32(return_data.size) + 160] <= t:
                    idx = idx + 1
                    t = t
                    continue 
                idx = idx + 1
                t = mem[(32 * mem[_1644 + ceil32(return_data.size) + 128] - 1) + _1644 + ceil32(return_data.size) + 160]
                continue 
            if 3 == idx:
                if 2 == idx:
                    _1801 = mem[64]
                    mem[mem[64]] = 3
                    mem[64] = mem[64] + 128
                    require 0 < mem[_1801]
                    mem[_1801 + 32] = 0x49d68029688eabf473097a2fc38ef61633a3c
                    require 1 < mem[_1801]
                    mem[_1801 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                    require 2 < mem[_1801]
                    mem[_1801 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    mem[_1801 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_1801 + 132] = s
                    mem[_1801 + 164] = 64
                    mem[_1801 + 196] = mem[_1801]
                    u = 0
                    while u < 32 * mem[_1801]:
                        mem[u + _1801 + 228] = mem[u + _1801 + 32]
                        u = u + 32
                        continue 
                    require ext_code.size(0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52)
                    staticcall 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52.getAmountsOut(uint256 rg1, address[] rg2) with:
                            gas gas_remaining wei
                           args s, 64, mem[_1801 + 196 len (32 * mem[_1801]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_1801 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _1801 + ceil32(return_data.size) + 128
                    require return_data.size >= 32
                    _4276 = mem[_1801 + 128 len 4], Mask(224, 32, s) >> 32
                    require mem[_1801 + 128 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                    require mem[_1801 + 128 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                    require mem[_1801 + mem[_1801 + 128 len 4], Mask(224, 32, s) >> 32 + 128] <= 4294967296 and mem[_1801 + 128 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_1801 + mem[_1801 + 128 len 4], Mask(224, 32, s) >> 32 + 128]) + 32 <= return_data.size
                    mem[_1801 + ceil32(return_data.size) + 128] = mem[_1801 + mem[_1801 + 128 len 4], Mask(224, 32, s) >> 32 + 128]
                    _4552 = mem[_1801 + _4276 + 128]
                    s = 0
                    while s < 32 * _4552:
                        mem[s + _1801 + ceil32(return_data.size) + 160] = mem[s + _1801 + _4276 + 160]
                        s = s + 32
                        continue 
                    mem[64] = (32 * _4552) + _1801 + ceil32(return_data.size) + 160
                    require mem[_1801 + ceil32(return_data.size) + 128] - 1 < mem[_1801 + ceil32(return_data.size) + 128]
                    if mem[(32 * mem[_1801 + ceil32(return_data.size) + 128] - 1) + _1801 + ceil32(return_data.size) + 160] <= t:
                        idx = idx + 1
                        t = t
                        continue 
                    idx = idx + 1
                    t = mem[(32 * mem[_1801 + ceil32(return_data.size) + 128] - 1) + _1801 + ceil32(return_data.size) + 160]
                    continue 
                if 3 == idx:
                    _1887 = mem[64]
                    mem[mem[64]] = 3
                    mem[64] = mem[64] + 128
                    require 0 < mem[_1887]
                    mem[_1887 + 32] = 0x49d68029688eabf473097a2fc38ef61633a3c
                    require 1 < mem[_1887]
                    mem[_1887 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                    require 2 < mem[_1887]
                    mem[_1887 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    mem[_1887 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_1887 + 132] = s
                    mem[_1887 + 164] = 64
                    mem[_1887 + 196] = mem[_1887]
                    u = 0
                    while u < 32 * mem[_1887]:
                        mem[u + _1887 + 228] = mem[u + _1887 + 32]
                        u = u + 32
                        continue 
                    require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                    staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c29.getAmountsOut(uint256 rg1, address[] rg2) with:
                            gas gas_remaining wei
                           args s, 64, mem[_1887 + 196 len (32 * mem[_1887]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_1887 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _1887 + ceil32(return_data.size) + 128
                    require return_data.size >= 32
                    _4274 = mem[_1887 + 128 len 4], Mask(224, 32, s) >> 32
                    require mem[_1887 + 128 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                    require mem[_1887 + 128 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                    require mem[_1887 + mem[_1887 + 128 len 4], Mask(224, 32, s) >> 32 + 128] <= 4294967296 and mem[_1887 + 128 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_1887 + mem[_1887 + 128 len 4], Mask(224, 32, s) >> 32 + 128]) + 32 <= return_data.size
                    mem[_1887 + ceil32(return_data.size) + 128] = mem[_1887 + mem[_1887 + 128 len 4], Mask(224, 32, s) >> 32 + 128]
                    _4551 = mem[_1887 + _4274 + 128]
                    s = 0
                    while s < 32 * _4551:
                        mem[s + _1887 + ceil32(return_data.size) + 160] = mem[s + _1887 + _4274 + 160]
                        s = s + 32
                        continue 
                    mem[64] = (32 * _4551) + _1887 + ceil32(return_data.size) + 160
                    require mem[_1887 + ceil32(return_data.size) + 128] - 1 < mem[_1887 + ceil32(return_data.size) + 128]
                    if mem[(32 * mem[_1887 + ceil32(return_data.size) + 128] - 1) + _1887 + ceil32(return_data.size) + 160] <= t:
                        idx = idx + 1
                        t = t
                        continue 
                    idx = idx + 1
                    t = mem[(32 * mem[_1887 + ceil32(return_data.size) + 128] - 1) + _1887 + ceil32(return_data.size) + 160]
                    continue 
                if idx != 4:
                    _1885 = mem[64]
                    mem[mem[64]] = 3
                    mem[64] = mem[64] + 128
                    require 0 < mem[_1885]
                    mem[_1885 + 32] = 0x49d68029688eabf473097a2fc38ef61633a3c
                    require 1 < mem[_1885]
                    mem[_1885 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                    require 2 < mem[_1885]
                    mem[_1885 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    mem[_1885 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_1885 + 132] = s
                    mem[_1885 + 164] = 64
                    mem[_1885 + 196] = mem[_1885]
                    u = 0
                    while u < 32 * mem[_1885]:
                        mem[u + _1885 + 228] = mem[u + _1885 + 32]
                        u = u + 32
                        continue 
                    require ext_code.size(0)
                    staticcall 0x0.getAmountsOut(uint256 rg1, address[] rg2) with:
                            gas gas_remaining wei
                           args s, 64, mem[_1885 + 196 len (32 * mem[_1885]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_1885 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _1885 + ceil32(return_data.size) + 128
                    require return_data.size >= 32
                    _4270 = mem[_1885 + 128 len 4], Mask(224, 32, s) >> 32
                    require mem[_1885 + 128 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                    require mem[_1885 + 128 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                    require mem[_1885 + mem[_1885 + 128 len 4], Mask(224, 32, s) >> 32 + 128] <= 4294967296 and mem[_1885 + 128 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_1885 + mem[_1885 + 128 len 4], Mask(224, 32, s) >> 32 + 128]) + 32 <= return_data.size
                    mem[_1885 + ceil32(return_data.size) + 128] = mem[_1885 + mem[_1885 + 128 len 4], Mask(224, 32, s) >> 32 + 128]
                    _4549 = mem[_1885 + _4270 + 128]
                    s = 0
                    while s < 32 * _4549:
                        mem[s + _1885 + ceil32(return_data.size) + 160] = mem[s + _1885 + _4270 + 160]
                        s = s + 32
                        continue 
                    mem[64] = (32 * _4549) + _1885 + ceil32(return_data.size) + 160
                    require mem[_1885 + ceil32(return_data.size) + 128] - 1 < mem[_1885 + ceil32(return_data.size) + 128]
                    if mem[(32 * mem[_1885 + ceil32(return_data.size) + 128] - 1) + _1885 + ceil32(return_data.size) + 160] <= t:
                        idx = idx + 1
                        t = t
                        continue 
                    idx = idx + 1
                    t = mem[(32 * mem[_1885 + ceil32(return_data.size) + 128] - 1) + _1885 + ceil32(return_data.size) + 160]
                    continue 
                _1976 = mem[64]
                mem[mem[64]] = 3
                mem[64] = mem[64] + 128
                require 0 < mem[_1976]
                mem[_1976 + 32] = 0x49d68029688eabf473097a2fc38ef61633a3c
                require 1 < mem[_1976]
                mem[_1976 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                require 2 < mem[_1976]
                mem[_1976 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                mem[_1976 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_1976 + 132] = s
                mem[_1976 + 164] = 64
                mem[_1976 + 196] = mem[_1976]
                u = 0
                while u < 32 * mem[_1976]:
                    mem[u + _1976 + 228] = mem[u + _1976 + 32]
                    u = u + 32
                    continue 
                require ext_code.size(0x7b17021fcb7bc888641dc3bedfed3734fcaf2c87)
                staticcall 0x7b17021fcb7bc888641dc3bedfed3734fcaf2c87.getAmountsOut(uint256 rg1, address[] rg2) with:
                        gas gas_remaining wei
                       args s, 64, mem[_1976 + 196 len (32 * mem[_1976]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_1976 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _1976 + ceil32(return_data.size) + 128
                require return_data.size >= 32
                _4272 = mem[_1976 + 128 len 4], Mask(224, 32, s) >> 32
                require mem[_1976 + 128 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                require mem[_1976 + 128 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                require mem[_1976 + mem[_1976 + 128 len 4], Mask(224, 32, s) >> 32 + 128] <= 4294967296 and mem[_1976 + 128 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_1976 + mem[_1976 + 128 len 4], Mask(224, 32, s) >> 32 + 128]) + 32 <= return_data.size
                mem[_1976 + ceil32(return_data.size) + 128] = mem[_1976 + mem[_1976 + 128 len 4], Mask(224, 32, s) >> 32 + 128]
                _4550 = mem[_1976 + _4272 + 128]
                s = 0
                while s < 32 * _4550:
                    mem[s + _1976 + ceil32(return_data.size) + 160] = mem[s + _1976 + _4272 + 160]
                    s = s + 32
                    continue 
                mem[64] = (32 * _4550) + _1976 + ceil32(return_data.size) + 160
                require mem[_1976 + ceil32(return_data.size) + 128] - 1 < mem[_1976 + ceil32(return_data.size) + 128]
                if mem[(32 * mem[_1976 + ceil32(return_data.size) + 128] - 1) + _1976 + ceil32(return_data.size) + 160] <= t:
                    idx = idx + 1
                    t = t
                    continue 
                idx = idx + 1
                t = mem[(32 * mem[_1976 + ceil32(return_data.size) + 128] - 1) + _1976 + ceil32(return_data.size) + 160]
                continue 
            if 4 == idx:
                if 2 == idx:
                    _1892 = mem[64]
                    mem[mem[64]] = 3
                    mem[64] = mem[64] + 128
                    require 0 < mem[_1892]
                    mem[_1892 + 32] = 0x49d68029688eabf473097a2fc38ef61633a3c
                    require 1 < mem[_1892]
                    mem[_1892 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                    require 2 < mem[_1892]
                    mem[_1892 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    mem[_1892 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_1892 + 132] = s
                    mem[_1892 + 164] = 64
                    mem[_1892 + 196] = mem[_1892]
                    u = 0
                    while u < 32 * mem[_1892]:
                        mem[u + _1892 + 228] = mem[u + _1892 + 32]
                        u = u + 32
                        continue 
                    require ext_code.size(0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52)
                    staticcall 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52.getAmountsOut(uint256 rg1, address[] rg2) with:
                            gas gas_remaining wei
                           args s, 64, mem[_1892 + 196 len (32 * mem[_1892]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_1892 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _1892 + ceil32(return_data.size) + 128
                    require return_data.size >= 32
                    _4288 = mem[_1892 + 128 len 4], Mask(224, 32, s) >> 32
                    require mem[_1892 + 128 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                    require mem[_1892 + 128 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                    require mem[_1892 + mem[_1892 + 128 len 4], Mask(224, 32, s) >> 32 + 128] <= 4294967296 and mem[_1892 + 128 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_1892 + mem[_1892 + 128 len 4], Mask(224, 32, s) >> 32 + 128]) + 32 <= return_data.size
                    mem[_1892 + ceil32(return_data.size) + 128] = mem[_1892 + mem[_1892 + 128 len 4], Mask(224, 32, s) >> 32 + 128]
                    _4558 = mem[_1892 + _4288 + 128]
                    s = 0
                    while s < 32 * _4558:
                        mem[s + _1892 + ceil32(return_data.size) + 160] = mem[s + _1892 + _4288 + 160]
                        s = s + 32
                        continue 
                    mem[64] = (32 * _4558) + _1892 + ceil32(return_data.size) + 160
                    require mem[_1892 + ceil32(return_data.size) + 128] - 1 < mem[_1892 + ceil32(return_data.size) + 128]
                    if mem[(32 * mem[_1892 + ceil32(return_data.size) + 128] - 1) + _1892 + ceil32(return_data.size) + 160] <= t:
                        idx = idx + 1
                        t = t
                        continue 
                    idx = idx + 1
                    t = mem[(32 * mem[_1892 + ceil32(return_data.size) + 128] - 1) + _1892 + ceil32(return_data.size) + 160]
                    continue 
                if 3 == idx:
                    _1985 = mem[64]
                    mem[mem[64]] = 3
                    mem[64] = mem[64] + 128
                    require 0 < mem[_1985]
                    mem[_1985 + 32] = 0x49d68029688eabf473097a2fc38ef61633a3c
                    require 1 < mem[_1985]
                    mem[_1985 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                    require 2 < mem[_1985]
                    mem[_1985 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    mem[_1985 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_1985 + 132] = s
                    mem[_1985 + 164] = 64
                    mem[_1985 + 196] = mem[_1985]
                    u = 0
                    while u < 32 * mem[_1985]:
                        mem[u + _1985 + 228] = mem[u + _1985 + 32]
                        u = u + 32
                        continue 
                    require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                    staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c29.getAmountsOut(uint256 rg1, address[] rg2) with:
                            gas gas_remaining wei
                           args s, 64, mem[_1985 + 196 len (32 * mem[_1985]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_1985 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _1985 + ceil32(return_data.size) + 128
                    require return_data.size >= 32
                    _4286 = mem[_1985 + 128 len 4], Mask(224, 32, s) >> 32
                    require mem[_1985 + 128 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                    require mem[_1985 + 128 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                    require mem[_1985 + mem[_1985 + 128 len 4], Mask(224, 32, s) >> 32 + 128] <= 4294967296 and mem[_1985 + 128 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_1985 + mem[_1985 + 128 len 4], Mask(224, 32, s) >> 32 + 128]) + 32 <= return_data.size
                    mem[_1985 + ceil32(return_data.size) + 128] = mem[_1985 + mem[_1985 + 128 len 4], Mask(224, 32, s) >> 32 + 128]
                    _4557 = mem[_1985 + _4286 + 128]
                    s = 0
                    while s < 32 * _4557:
                        mem[s + _1985 + ceil32(return_data.size) + 160] = mem[s + _1985 + _4286 + 160]
                        s = s + 32
                        continue 
                    mem[64] = (32 * _4557) + _1985 + ceil32(return_data.size) + 160
                    require mem[_1985 + ceil32(return_data.size) + 128] - 1 < mem[_1985 + ceil32(return_data.size) + 128]
                    if mem[(32 * mem[_1985 + ceil32(return_data.size) + 128] - 1) + _1985 + ceil32(return_data.size) + 160] <= t:
                        idx = idx + 1
                        t = t
                        continue 
                    idx = idx + 1
                    t = mem[(32 * mem[_1985 + ceil32(return_data.size) + 128] - 1) + _1985 + ceil32(return_data.size) + 160]
                    continue 
                if idx != 4:
                    _1983 = mem[64]
                    mem[mem[64]] = 3
                    mem[64] = mem[64] + 128
                    require 0 < mem[_1983]
                    mem[_1983 + 32] = 0x49d68029688eabf473097a2fc38ef61633a3c
                    require 1 < mem[_1983]
                    mem[_1983 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                    require 2 < mem[_1983]
                    mem[_1983 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    mem[_1983 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_1983 + 132] = s
                    mem[_1983 + 164] = 64
                    mem[_1983 + 196] = mem[_1983]
                    u = 0
                    while u < 32 * mem[_1983]:
                        mem[u + _1983 + 228] = mem[u + _1983 + 32]
                        u = u + 32
                        continue 
                    require ext_code.size(0)
                    staticcall 0x0.getAmountsOut(uint256 rg1, address[] rg2) with:
                            gas gas_remaining wei
                           args s, 64, mem[_1983 + 196 len (32 * mem[_1983]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_1983 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _1983 + ceil32(return_data.size) + 128
                    require return_data.size >= 32
                    _4282 = mem[_1983 + 128 len 4], Mask(224, 32, s) >> 32
                    require mem[_1983 + 128 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                    require mem[_1983 + 128 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                    require mem[_1983 + mem[_1983 + 128 len 4], Mask(224, 32, s) >> 32 + 128] <= 4294967296 and mem[_1983 + 128 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_1983 + mem[_1983 + 128 len 4], Mask(224, 32, s) >> 32 + 128]) + 32 <= return_data.size
                    mem[_1983 + ceil32(return_data.size) + 128] = mem[_1983 + mem[_1983 + 128 len 4], Mask(224, 32, s) >> 32 + 128]
                    _4555 = mem[_1983 + _4282 + 128]
                    s = 0
                    while s < 32 * _4555:
                        mem[s + _1983 + ceil32(return_data.size) + 160] = mem[s + _1983 + _4282 + 160]
                        s = s + 32
                        continue 
                    mem[64] = (32 * _4555) + _1983 + ceil32(return_data.size) + 160
                    require mem[_1983 + ceil32(return_data.size) + 128] - 1 < mem[_1983 + ceil32(return_data.size) + 128]
                    if mem[(32 * mem[_1983 + ceil32(return_data.size) + 128] - 1) + _1983 + ceil32(return_data.size) + 160] <= t:
                        idx = idx + 1
                        t = t
                        continue 
                    idx = idx + 1
                    t = mem[(32 * mem[_1983 + ceil32(return_data.size) + 128] - 1) + _1983 + ceil32(return_data.size) + 160]
                    continue 
                _2111 = mem[64]
                mem[mem[64]] = 3
                mem[64] = mem[64] + 128
                require 0 < mem[_2111]
                mem[_2111 + 32] = 0x49d68029688eabf473097a2fc38ef61633a3c
                require 1 < mem[_2111]
                mem[_2111 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                require 2 < mem[_2111]
                mem[_2111 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                mem[_2111 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_2111 + 132] = s
                mem[_2111 + 164] = 64
                mem[_2111 + 196] = mem[_2111]
                u = 0
                while u < 32 * mem[_2111]:
                    mem[u + _2111 + 228] = mem[u + _2111 + 32]
                    u = u + 32
                    continue 
                require ext_code.size(0x7b17021fcb7bc888641dc3bedfed3734fcaf2c87)
                staticcall 0x7b17021fcb7bc888641dc3bedfed3734fcaf2c87.getAmountsOut(uint256 rg1, address[] rg2) with:
                        gas gas_remaining wei
                       args s, 64, mem[_2111 + 196 len (32 * mem[_2111]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_2111 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _2111 + ceil32(return_data.size) + 128
                require return_data.size >= 32
                _4284 = mem[_2111 + 128 len 4], Mask(224, 32, s) >> 32
                require mem[_2111 + 128 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                require mem[_2111 + 128 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                require mem[_2111 + mem[_2111 + 128 len 4], Mask(224, 32, s) >> 32 + 128] <= 4294967296 and mem[_2111 + 128 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_2111 + mem[_2111 + 128 len 4], Mask(224, 32, s) >> 32 + 128]) + 32 <= return_data.size
                mem[_2111 + ceil32(return_data.size) + 128] = mem[_2111 + mem[_2111 + 128 len 4], Mask(224, 32, s) >> 32 + 128]
                _4556 = mem[_2111 + _4284 + 128]
                s = 0
                while s < 32 * _4556:
                    mem[s + _2111 + ceil32(return_data.size) + 160] = mem[s + _2111 + _4284 + 160]
                    s = s + 32
                    continue 
                mem[64] = (32 * _4556) + _2111 + ceil32(return_data.size) + 160
                require mem[_2111 + ceil32(return_data.size) + 128] - 1 < mem[_2111 + ceil32(return_data.size) + 128]
                if mem[(32 * mem[_2111 + ceil32(return_data.size) + 128] - 1) + _2111 + ceil32(return_data.size) + 160] <= t:
                    idx = idx + 1
                    t = t
                    continue 
                idx = idx + 1
                t = mem[(32 * mem[_2111 + ceil32(return_data.size) + 128] - 1) + _2111 + ceil32(return_data.size) + 160]
                continue 
            if idx != 5:
                if s <= t:
                    idx = idx + 1
                    t = t
                    continue 
                idx = idx + 1
                t = s
                continue 
            _1890 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            require 0 < mem[_1890]
            mem[_1890 + 32] = 0x49d68029688eabf473097a2fc38ef61633a3c
            require 1 < mem[_1890]
            mem[_1890 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
            mem[_1890 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[_1890 + 100] = s
            mem[_1890 + 132] = 64
            mem[_1890 + 164] = mem[_1890]
            u = 0
            while u < 32 * mem[_1890]:
                mem[u + _1890 + 196] = mem[u + _1890 + 32]
                u = u + 32
                continue 
            require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
            staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c29.getAmountsOut(uint256 rg1, address[] rg2) with:
                    gas gas_remaining wei
                   args s, 64, mem[_1890 + 164 len (32 * mem[_1890]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[_1890 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = _1890 + ceil32(return_data.size) + 96
            require return_data.size >= 32
            _4278 = mem[_1890 + 96 len 4], Mask(224, 32, s) >> 32
            require mem[_1890 + 96 len 4], Mask(224, 32, s) >> 32 <= 4294967296
            require mem[_1890 + 96 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
            require mem[_1890 + mem[_1890 + 96 len 4], Mask(224, 32, s) >> 32 + 96] <= 4294967296 and mem[_1890 + 96 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_1890 + mem[_1890 + 96 len 4], Mask(224, 32, s) >> 32 + 96]) + 32 <= return_data.size
            mem[_1890 + ceil32(return_data.size) + 96] = mem[_1890 + mem[_1890 + 96 len 4], Mask(224, 32, s) >> 32 + 96]
            _4553 = mem[_1890 + _4278 + 96]
            s = 0
            while s < 32 * _4553:
                mem[s + _1890 + ceil32(return_data.size) + 128] = mem[s + _1890 + _4278 + 128]
                s = s + 32
                continue 
            require mem[_1890 + ceil32(return_data.size) + 96] - 1 < mem[_1890 + ceil32(return_data.size) + 96]
            _5657 = mem[(32 * mem[_1890 + ceil32(return_data.size) + 96] - 1) + _1890 + ceil32(return_data.size) + 128]
            mem[(32 * _4553) + _1890 + ceil32(return_data.size) + 128] = 2
            mem[(32 * _4553) + _1890 + ceil32(return_data.size) + 160] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
            mem[(32 * _4553) + _1890 + ceil32(return_data.size) + 192] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
            mem[(32 * _4553) + _1890 + ceil32(return_data.size) + 224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[(32 * _4553) + _1890 + ceil32(return_data.size) + 228] = _5657
            mem[(32 * _4553) + _1890 + ceil32(return_data.size) + 260] = 64
            mem[(32 * _4553) + _1890 + ceil32(return_data.size) + 292] = 2
            s = 0
            while s < 64:
                mem[s + (32 * _4553) + _1890 + ceil32(return_data.size) + 324] = mem[s + (32 * _4553) + _1890 + ceil32(return_data.size) + 160]
                s = s + 32
                continue 
            require ext_code.size(0x1b02da8cb0d097eb8d57a175b88c7d8b47997506)
            staticcall 0x1b02da8cb0d097eb8d57a175b88c7d8b47997506.getAmountsOut(uint256 rg1, address[] rg2) with:
                    gas gas_remaining wei
                   args _5657, Array(len=2, data=mem[(32 * _4553) + _1890 + ceil32(return_data.size) + 324 len 64])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _4553) + _1890 + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * _4553) + _1890 + (2 * ceil32(return_data.size)) + 224
            require return_data.size >= 32
            _6164 = mem[(32 * _4553) + _1890 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _5657) >> 32
            require mem[(32 * _4553) + _1890 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _5657) >> 32 <= 4294967296
            require mem[(32 * _4553) + _1890 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _5657) >> 32 + 32 <= return_data.size
            require mem[(32 * _4553) + _1890 + ceil32(return_data.size) + mem[(32 * _4553) + _1890 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _5657) >> 32 + 224] <= 4294967296 and mem[(32 * _4553) + _1890 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _5657) >> 32 + (32 * mem[(32 * _4553) + _1890 + ceil32(return_data.size) + mem[(32 * _4553) + _1890 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _5657) >> 32 + 224]) + 32 <= return_data.size
            mem[(32 * _4553) + _1890 + (2 * ceil32(return_data.size)) + 224] = mem[(32 * _4553) + _1890 + ceil32(return_data.size) + mem[(32 * _4553) + _1890 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _5657) >> 32 + 224]
            _6212 = mem[(32 * _4553) + _1890 + ceil32(return_data.size) + _6164 + 224]
            s = 0
            while s < 32 * _6212:
                mem[s + (32 * _4553) + _1890 + (2 * ceil32(return_data.size)) + 256] = mem[s + (32 * _4553) + _1890 + ceil32(return_data.size) + _6164 + 256]
                s = s + 32
                continue 
            mem[64] = (32 * _6212) + (32 * _4553) + _1890 + (2 * ceil32(return_data.size)) + 256
            require mem[(32 * _4553) + _1890 + (2 * ceil32(return_data.size)) + 224] - 1 < mem[(32 * _4553) + _1890 + (2 * ceil32(return_data.size)) + 224]
            if mem[(32 * mem[(32 * _4553) + _1890 + (2 * ceil32(return_data.size)) + 224] - 1) + (32 * _4553) + _1890 + (2 * ceil32(return_data.size)) + 256] <= t:
                idx = idx + 1
                t = t
                continue 
            idx = idx + 1
            t = mem[(32 * mem[(32 * _4553) + _1890 + (2 * ceil32(return_data.size)) + 224] - 1) + (32 * _4553) + _1890 + (2 * ceil32(return_data.size)) + 256]
            continue 
}



}
