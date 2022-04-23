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
        while idx < 5:
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
                mem[_95 + 132] = 0
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
                       args 0, 64, mem[_95 + 196 len (32 * mem[_95]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_95 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _95 + ceil32(return_data.size) + 128
                require return_data.size >= 32
                _427 = mem[_95 + 128 len 4], 0
                require mem[_95 + 128 len 4], 0 <= 4294967296
                require mem[_95 + 128 len 4], 0 + 32 <= return_data.size
                require mem[_95 + mem[_95 + 128 len 4], 0 + 128] <= 4294967296 and mem[_95 + 128 len 4], 0 + (32 * mem[_95 + mem[_95 + 128 len 4], 0 + 128]) + 32 <= return_data.size
                mem[_95 + ceil32(return_data.size) + 128] = mem[_95 + mem[_95 + 128 len 4], 0 + 128]
                _531 = mem[_95 + _427 + 128]
                t = 0
                while t < 32 * _531:
                    mem[t + _95 + ceil32(return_data.size) + 160] = mem[t + _95 + _427 + 160]
                    t = t + 32
                    continue 
                mem[64] = (32 * _531) + _95 + ceil32(return_data.size) + 160
                require mem[_95 + ceil32(return_data.size) + 128] - 1 < mem[_95 + ceil32(return_data.size) + 128]
                if mem[(32 * mem[_95 + ceil32(return_data.size) + 128] - 1) + _95 + ceil32(return_data.size) + 160] <= s:
                    idx = idx + 1
                    s = s
                    continue 
                idx = idx + 1
                s = mem[(32 * mem[_95 + ceil32(return_data.size) + 128] - 1) + _95 + ceil32(return_data.size) + 160]
                continue 
            if 3 == idx:
                _117 = mem[64]
                mem[mem[64]] = 3
                mem[64] = mem[64] + 128
                require 0 < mem[_117]
                mem[_117 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                require 1 < mem[_117]
                mem[_117 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                require 2 < mem[_117]
                mem[_117 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                mem[_117 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_117 + 132] = 0
                mem[_117 + 164] = 64
                mem[_117 + 196] = mem[_117]
                t = 0
                while t < 32 * mem[_117]:
                    mem[t + _117 + 228] = mem[t + _117 + 32]
                    t = t + 32
                    continue 
                require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c29.getAmountsOut(uint256 rg1, address[] rg2) with:
                        gas gas_remaining wei
                       args 0, 64, mem[_117 + 196 len (32 * mem[_117]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_117 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _117 + ceil32(return_data.size) + 128
                require return_data.size >= 32
                _425 = mem[_117 + 128 len 4], 0
                require mem[_117 + 128 len 4], 0 <= 4294967296
                require mem[_117 + 128 len 4], 0 + 32 <= return_data.size
                require mem[_117 + mem[_117 + 128 len 4], 0 + 128] <= 4294967296 and mem[_117 + 128 len 4], 0 + (32 * mem[_117 + mem[_117 + 128 len 4], 0 + 128]) + 32 <= return_data.size
                mem[_117 + ceil32(return_data.size) + 128] = mem[_117 + mem[_117 + 128 len 4], 0 + 128]
                _530 = mem[_117 + _425 + 128]
                t = 0
                while t < 32 * _530:
                    mem[t + _117 + ceil32(return_data.size) + 160] = mem[t + _117 + _425 + 160]
                    t = t + 32
                    continue 
                mem[64] = (32 * _530) + _117 + ceil32(return_data.size) + 160
                require mem[_117 + ceil32(return_data.size) + 128] - 1 < mem[_117 + ceil32(return_data.size) + 128]
                if mem[(32 * mem[_117 + ceil32(return_data.size) + 128] - 1) + _117 + ceil32(return_data.size) + 160] <= s:
                    idx = idx + 1
                    s = s
                    continue 
                idx = idx + 1
                s = mem[(32 * mem[_117 + ceil32(return_data.size) + 128] - 1) + _117 + ceil32(return_data.size) + 160]
                continue 
            if idx != 4:
                if 0 <= s:
                    idx = idx + 1
                    s = s
                    continue 
                idx = idx + 1
                s = 0
                continue 
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
            mem[_115 + 132] = 0
            mem[_115 + 164] = 64
            mem[_115 + 196] = mem[_115]
            _175 = mem[_115]
            t = 0
            while t < 32 * mem[_115]:
                mem[t + _115 + 228] = mem[t + _115 + 32]
                t = t + 32
                continue 
            require ext_code.size(0x7b17021fcb7bc888641dc3bedfed3734fcaf2c87)
            staticcall 0x7b17021fcb7bc888641dc3bedfed3734fcaf2c87.getAmountsOut(uint256 rg1, address[] rg2) with:
                    gas gas_remaining wei
                   args 0, 64, mem[_115 + 196 len (32 * mem[_115]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[_115 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = _115 + ceil32(return_data.size) + 128
            require return_data.size >= 32
            _423 = mem[_115 + 128 len 4], 0
            require mem[_115 + 128 len 4], 0 <= 4294967296
            require mem[_115 + 128 len 4], 0 + 32 <= return_data.size
            require mem[_115 + mem[_115 + 128 len 4], 0 + 128] <= 4294967296 and mem[_115 + 128 len 4], 0 + (32 * mem[_115 + mem[_115 + 128 len 4], 0 + 128]) + 32 <= return_data.size
            mem[_115 + ceil32(return_data.size) + 128] = mem[_115 + mem[_115 + 128 len 4], 0 + 128]
            _529 = mem[_115 + _423 + 128]
            idx = 0
            while idx < 32 * _529:
                mem[idx + _115 + ceil32(return_data.size) + 160] = mem[idx + _115 + _423 + 160]
                idx = idx + 32
                continue 
            mem[64] = (32 * _529) + _115 + ceil32(return_data.size) + 160
            require mem[_115 + ceil32(return_data.size) + 128] - 1 < mem[_115 + ceil32(return_data.size) + 128]
            if mem[(32 * mem[_115 + ceil32(return_data.size) + 128] - 1) + _115 + ceil32(return_data.size) + 160] <= s:
                t = floor32(_175) + 1
                s = s
                continue 
            t = floor32(_175) + 1
            s = mem[(32 * mem[_115 + ceil32(return_data.size) + 128] - 1) + _115 + ceil32(return_data.size) + 160]
            continue 
        idx = 0
        t = 0
        while idx < 5:
            if not idx:
                mem[mem[64] + 4] = 0
                mem[mem[64] + 36] = 2
                mem[mem[64] + 68] = s
                require ext_code.size(0x92d5ebf3593a92888c25c0abef126583d4b5312e)
                staticcall 0x92d5ebf3593a92888c25c0abef126583d4b5312e.get_dy_underlying(int128 rg1, int128 rg2, uint256 rg3) with:
                        gas gas_remaining wei
                       args 0, 2, s
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
                mem[mem[64] + 4] = 0
                mem[mem[64] + 36] = 2
                mem[mem[64] + 68] = s
                require ext_code.size(0x83e5f18da720119ff363cf63417628eb0e9fd523)
                staticcall 0x83e5f18da720119ff363cf63417628eb0e9fd523.get_dy(int128 rg1, int128 rg2, uint256 rg3) with:
                        gas gas_remaining wei
                       args 0, 2, s
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
                _469 = mem[64]
                mem[mem[64]] = 3
                mem[64] = mem[64] + 128
                require 0 < mem[_469]
                mem[_469 + 32] = 0x49d68029688eabf473097a2fc38ef61633a3c7a
                require 1 < mem[_469]
                mem[_469 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                require 2 < mem[_469]
                mem[_469 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                mem[_469 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_469 + 132] = s
                mem[_469 + 164] = 64
                mem[_469 + 196] = mem[_469]
                u = 0
                while u < 32 * mem[_469]:
                    mem[u + _469 + 228] = mem[u + _469 + 32]
                    u = u + 32
                    continue 
                require ext_code.size(0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52)
                staticcall 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52.getAmountsOut(uint256 rg1, address[] rg2) with:
                        gas gas_remaining wei
                       args s, 64, mem[_469 + 196 len (32 * mem[_469]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_469 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _469 + ceil32(return_data.size) + 128
                require return_data.size >= 32
                _1247 = mem[_469 + 128 len 4], Mask(224, 32, s) >> 32
                require mem[_469 + 128 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                require mem[_469 + 128 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                require mem[_469 + mem[_469 + 128 len 4], Mask(224, 32, s) >> 32 + 128] <= 4294967296 and mem[_469 + 128 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_469 + mem[_469 + 128 len 4], Mask(224, 32, s) >> 32 + 128]) + 32 <= return_data.size
                mem[_469 + ceil32(return_data.size) + 128] = mem[_469 + mem[_469 + 128 len 4], Mask(224, 32, s) >> 32 + 128]
                _1305 = mem[_469 + _1247 + 128]
                s = 0
                while s < 32 * _1305:
                    mem[s + _469 + ceil32(return_data.size) + 160] = mem[s + _469 + _1247 + 160]
                    s = s + 32
                    continue 
                mem[64] = (32 * _1305) + _469 + ceil32(return_data.size) + 160
                require mem[_469 + ceil32(return_data.size) + 128] - 1 < mem[_469 + ceil32(return_data.size) + 128]
                if mem[(32 * mem[_469 + ceil32(return_data.size) + 128] - 1) + _469 + ceil32(return_data.size) + 160] <= t:
                    idx = idx + 1
                    t = t
                    continue 
                idx = idx + 1
                t = mem[(32 * mem[_469 + ceil32(return_data.size) + 128] - 1) + _469 + ceil32(return_data.size) + 160]
                continue 
            if 3 == idx:
                _521 = mem[64]
                mem[mem[64]] = 3
                mem[64] = mem[64] + 128
                require 0 < mem[_521]
                mem[_521 + 32] = 0x49d68029688eabf473097a2fc38ef61633a3c7a
                require 1 < mem[_521]
                mem[_521 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                require 2 < mem[_521]
                mem[_521 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                mem[_521 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_521 + 132] = s
                mem[_521 + 164] = 64
                mem[_521 + 196] = mem[_521]
                u = 0
                while u < 32 * mem[_521]:
                    mem[u + _521 + 228] = mem[u + _521 + 32]
                    u = u + 32
                    continue 
                require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c29.getAmountsOut(uint256 rg1, address[] rg2) with:
                        gas gas_remaining wei
                       args s, 64, mem[_521 + 196 len (32 * mem[_521]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_521 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _521 + ceil32(return_data.size) + 128
                require return_data.size >= 32
                _1245 = mem[_521 + 128 len 4], Mask(224, 32, s) >> 32
                require mem[_521 + 128 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                require mem[_521 + 128 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                require mem[_521 + mem[_521 + 128 len 4], Mask(224, 32, s) >> 32 + 128] <= 4294967296 and mem[_521 + 128 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_521 + mem[_521 + 128 len 4], Mask(224, 32, s) >> 32 + 128]) + 32 <= return_data.size
                mem[_521 + ceil32(return_data.size) + 128] = mem[_521 + mem[_521 + 128 len 4], Mask(224, 32, s) >> 32 + 128]
                _1304 = mem[_521 + _1245 + 128]
                s = 0
                while s < 32 * _1304:
                    mem[s + _521 + ceil32(return_data.size) + 160] = mem[s + _521 + _1245 + 160]
                    s = s + 32
                    continue 
                mem[64] = (32 * _1304) + _521 + ceil32(return_data.size) + 160
                require mem[_521 + ceil32(return_data.size) + 128] - 1 < mem[_521 + ceil32(return_data.size) + 128]
                if mem[(32 * mem[_521 + ceil32(return_data.size) + 128] - 1) + _521 + ceil32(return_data.size) + 160] <= t:
                    idx = idx + 1
                    t = t
                    continue 
                idx = idx + 1
                t = mem[(32 * mem[_521 + ceil32(return_data.size) + 128] - 1) + _521 + ceil32(return_data.size) + 160]
                continue 
            if idx != 4:
                if s <= t:
                    idx = idx + 1
                    t = t
                    continue 
                idx = idx + 1
                t = s
                continue 
            _519 = mem[64]
            mem[mem[64]] = 3
            mem[64] = mem[64] + 128
            require 0 < mem[_519]
            mem[_519 + 32] = 0x49d68029688eabf473097a2fc38ef61633a3c7a
            require 1 < mem[_519]
            mem[_519 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
            require 2 < mem[_519]
            mem[_519 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
            mem[_519 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[_519 + 132] = s
            mem[_519 + 164] = 64
            mem[_519 + 196] = mem[_519]
            _675 = mem[_519]
            u = 0
            while u < 32 * mem[_519]:
                mem[u + _519 + 228] = mem[u + _519 + 32]
                u = u + 32
                continue 
            require ext_code.size(0x7b17021fcb7bc888641dc3bedfed3734fcaf2c87)
            staticcall 0x7b17021fcb7bc888641dc3bedfed3734fcaf2c87.getAmountsOut(uint256 rg1, address[] rg2) with:
                    gas gas_remaining wei
                   args s, 64, mem[_519 + 196 len (32 * mem[_519]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[_519 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = _519 + ceil32(return_data.size) + 128
            require return_data.size >= 32
            _1243 = mem[_519 + 128 len 4], Mask(224, 32, s) >> 32
            require mem[_519 + 128 len 4], Mask(224, 32, s) >> 32 <= 4294967296
            require mem[_519 + 128 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
            require mem[_519 + mem[_519 + 128 len 4], Mask(224, 32, s) >> 32 + 128] <= 4294967296 and mem[_519 + 128 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_519 + mem[_519 + 128 len 4], Mask(224, 32, s) >> 32 + 128]) + 32 <= return_data.size
            mem[_519 + ceil32(return_data.size) + 128] = mem[_519 + mem[_519 + 128 len 4], Mask(224, 32, s) >> 32 + 128]
            _1303 = mem[_519 + _1243 + 128]
            idx = 0
            while idx < 32 * _1303:
                mem[idx + _519 + ceil32(return_data.size) + 160] = mem[idx + _519 + _1243 + 160]
                idx = idx + 32
                continue 
            mem[64] = (32 * _1303) + _519 + ceil32(return_data.size) + 160
            require mem[_519 + ceil32(return_data.size) + 128] - 1 < mem[_519 + ceil32(return_data.size) + 128]
            if mem[(32 * mem[_519 + ceil32(return_data.size) + 128] - 1) + _519 + ceil32(return_data.size) + 160] <= t:
                u = floor32(_675) + 1
                t = t
                continue 
            u = floor32(_675) + 1
            t = mem[(32 * mem[_519 + ceil32(return_data.size) + 128] - 1) + _519 + ceil32(return_data.size) + 160]
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
        while idx < 5:
            if not idx:
                mem[mem[64] + 4] = 2
                mem[mem[64] + 36] = 0
                mem[mem[64] + 68] = 10^6 * sub_7d0b6809
                require ext_code.size(0x92d5ebf3593a92888c25c0abef126583d4b5312e)
                staticcall 0x92d5ebf3593a92888c25c0abef126583d4b5312e.get_dy_underlying(int128 rg1, int128 rg2, uint256 rg3) with:
                        gas gas_remaining wei
                       args 2, 0, 10^6 * sub_7d0b6809
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
                mem[mem[64] + 68] = 10^6 * sub_7d0b6809
                require ext_code.size(0x83e5f18da720119ff363cf63417628eb0e9fd523)
                staticcall 0x83e5f18da720119ff363cf63417628eb0e9fd523.get_dy(int128 rg1, int128 rg2, uint256 rg3) with:
                        gas gas_remaining wei
                       args 2, 0, 10^6 * sub_7d0b6809
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
                mem[mem[64]] = 3
                mem[64] = mem[64] + 128
                require 0 < mem[_87]
                mem[_87 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                require 1 < mem[_87]
                mem[_87 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                require 2 < mem[_87]
                mem[_87 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                mem[_87 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_87 + 132] = 10^6 * sub_7d0b6809
                mem[_87 + 164] = 64
                mem[_87 + 196] = mem[_87]
                t = 0
                while t < 32 * mem[_87]:
                    mem[t + _87 + 228] = mem[t + _87 + 32]
                    t = t + 32
                    continue 
                require ext_code.size(0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52)
                staticcall 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52.getAmountsOut(uint256 rg1, address[] rg2) with:
                        gas gas_remaining wei
                       args 10^6 * sub_7d0b6809, 64, mem[_87 + 196 len (32 * mem[_87]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_87 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _87 + ceil32(return_data.size) + 128
                require return_data.size >= 32
                _415 = mem[_87 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32
                require mem[_87 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 <= 4294967296
                require mem[_87 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 32 <= return_data.size
                require mem[_87 + mem[_87 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 128] <= 4294967296 and mem[_87 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + (32 * mem[_87 + mem[_87 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 128]) + 32 <= return_data.size
                mem[_87 + ceil32(return_data.size) + 128] = mem[_87 + mem[_87 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 128]
                _501 = mem[_87 + _415 + 128]
                t = 0
                while t < 32 * _501:
                    mem[t + _87 + ceil32(return_data.size) + 160] = mem[t + _87 + _415 + 160]
                    t = t + 32
                    continue 
                mem[64] = (32 * _501) + _87 + ceil32(return_data.size) + 160
                require mem[_87 + ceil32(return_data.size) + 128] - 1 < mem[_87 + ceil32(return_data.size) + 128]
                if mem[(32 * mem[_87 + ceil32(return_data.size) + 128] - 1) + _87 + ceil32(return_data.size) + 160] <= s:
                    idx = idx + 1
                    s = s
                    continue 
                idx = idx + 1
                s = mem[(32 * mem[_87 + ceil32(return_data.size) + 128] - 1) + _87 + ceil32(return_data.size) + 160]
                continue 
            if 3 == idx:
                _105 = mem[64]
                mem[mem[64]] = 3
                mem[64] = mem[64] + 128
                require 0 < mem[_105]
                mem[_105 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                require 1 < mem[_105]
                mem[_105 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                require 2 < mem[_105]
                mem[_105 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                mem[_105 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_105 + 132] = 10^6 * sub_7d0b6809
                mem[_105 + 164] = 64
                mem[_105 + 196] = mem[_105]
                t = 0
                while t < 32 * mem[_105]:
                    mem[t + _105 + 228] = mem[t + _105 + 32]
                    t = t + 32
                    continue 
                require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c29.getAmountsOut(uint256 rg1, address[] rg2) with:
                        gas gas_remaining wei
                       args 10^6 * sub_7d0b6809, 64, mem[_105 + 196 len (32 * mem[_105]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_105 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _105 + ceil32(return_data.size) + 128
                require return_data.size >= 32
                _413 = mem[_105 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32
                require mem[_105 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 <= 4294967296
                require mem[_105 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 32 <= return_data.size
                require mem[_105 + mem[_105 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 128] <= 4294967296 and mem[_105 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + (32 * mem[_105 + mem[_105 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 128]) + 32 <= return_data.size
                mem[_105 + ceil32(return_data.size) + 128] = mem[_105 + mem[_105 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 128]
                _500 = mem[_105 + _413 + 128]
                t = 0
                while t < 32 * _500:
                    mem[t + _105 + ceil32(return_data.size) + 160] = mem[t + _105 + _413 + 160]
                    t = t + 32
                    continue 
                mem[64] = (32 * _500) + _105 + ceil32(return_data.size) + 160
                require mem[_105 + ceil32(return_data.size) + 128] - 1 < mem[_105 + ceil32(return_data.size) + 128]
                if mem[(32 * mem[_105 + ceil32(return_data.size) + 128] - 1) + _105 + ceil32(return_data.size) + 160] <= s:
                    idx = idx + 1
                    s = s
                    continue 
                idx = idx + 1
                s = mem[(32 * mem[_105 + ceil32(return_data.size) + 128] - 1) + _105 + ceil32(return_data.size) + 160]
                continue 
            if idx != 4:
                if 10^6 * sub_7d0b6809 <= s:
                    idx = idx + 1
                    s = s
                    continue 
                idx = idx + 1
                s = 10^6 * sub_7d0b6809
                continue 
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
            _165 = mem[_103]
            t = 0
            while t < 32 * mem[_103]:
                mem[t + _103 + 228] = mem[t + _103 + 32]
                t = t + 32
                continue 
            require ext_code.size(0x7b17021fcb7bc888641dc3bedfed3734fcaf2c87)
            staticcall 0x7b17021fcb7bc888641dc3bedfed3734fcaf2c87.getAmountsOut(uint256 rg1, address[] rg2) with:
                    gas gas_remaining wei
                   args 10^6 * sub_7d0b6809, 64, mem[_103 + 196 len (32 * mem[_103]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[_103 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = _103 + ceil32(return_data.size) + 128
            require return_data.size >= 32
            _411 = mem[_103 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32
            require mem[_103 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 <= 4294967296
            require mem[_103 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 32 <= return_data.size
            require mem[_103 + mem[_103 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 128] <= 4294967296 and mem[_103 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + (32 * mem[_103 + mem[_103 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 128]) + 32 <= return_data.size
            mem[_103 + ceil32(return_data.size) + 128] = mem[_103 + mem[_103 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 128]
            _499 = mem[_103 + _411 + 128]
            idx = 0
            while idx < 32 * _499:
                mem[idx + _103 + ceil32(return_data.size) + 160] = mem[idx + _103 + _411 + 160]
                idx = idx + 32
                continue 
            mem[64] = (32 * _499) + _103 + ceil32(return_data.size) + 160
            require mem[_103 + ceil32(return_data.size) + 128] - 1 < mem[_103 + ceil32(return_data.size) + 128]
            if mem[(32 * mem[_103 + ceil32(return_data.size) + 128] - 1) + _103 + ceil32(return_data.size) + 160] <= s:
                t = floor32(_165) + 1
                s = s
                continue 
            t = floor32(_165) + 1
            s = mem[(32 * mem[_103 + ceil32(return_data.size) + 128] - 1) + _103 + ceil32(return_data.size) + 160]
            continue 
        idx = 0
        t = 0
        while idx < 5:
            if not idx:
                mem[mem[64] + 4] = 0
                mem[mem[64] + 36] = 2
                mem[mem[64] + 68] = s
                require ext_code.size(0x92d5ebf3593a92888c25c0abef126583d4b5312e)
                staticcall 0x92d5ebf3593a92888c25c0abef126583d4b5312e.get_dy_underlying(int128 rg1, int128 rg2, uint256 rg3) with:
                        gas gas_remaining wei
                       args 0, 2, s
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
                mem[mem[64] + 4] = 0
                mem[mem[64] + 36] = 2
                mem[mem[64] + 68] = s
                require ext_code.size(0x83e5f18da720119ff363cf63417628eb0e9fd523)
                staticcall 0x83e5f18da720119ff363cf63417628eb0e9fd523.get_dy(int128 rg1, int128 rg2, uint256 rg3) with:
                        gas gas_remaining wei
                       args 0, 2, s
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
                _451 = mem[64]
                mem[mem[64]] = 3
                mem[64] = mem[64] + 128
                require 0 < mem[_451]
                mem[_451 + 32] = 0x49d68029688eabf473097a2fc38ef61633a3c7a
                require 1 < mem[_451]
                mem[_451 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                require 2 < mem[_451]
                mem[_451 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                mem[_451 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_451 + 132] = s
                mem[_451 + 164] = 64
                mem[_451 + 196] = mem[_451]
                u = 0
                while u < 32 * mem[_451]:
                    mem[u + _451 + 228] = mem[u + _451 + 32]
                    u = u + 32
                    continue 
                require ext_code.size(0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52)
                staticcall 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52.getAmountsOut(uint256 rg1, address[] rg2) with:
                        gas gas_remaining wei
                       args s, 64, mem[_451 + 196 len (32 * mem[_451]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_451 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _451 + ceil32(return_data.size) + 128
                require return_data.size >= 32
                _1223 = mem[_451 + 128 len 4], Mask(224, 32, s) >> 32
                require mem[_451 + 128 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                require mem[_451 + 128 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                require mem[_451 + mem[_451 + 128 len 4], Mask(224, 32, s) >> 32 + 128] <= 4294967296 and mem[_451 + 128 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_451 + mem[_451 + 128 len 4], Mask(224, 32, s) >> 32 + 128]) + 32 <= return_data.size
                mem[_451 + ceil32(return_data.size) + 128] = mem[_451 + mem[_451 + 128 len 4], Mask(224, 32, s) >> 32 + 128]
                _1293 = mem[_451 + _1223 + 128]
                s = 0
                while s < 32 * _1293:
                    mem[s + _451 + ceil32(return_data.size) + 160] = mem[s + _451 + _1223 + 160]
                    s = s + 32
                    continue 
                mem[64] = (32 * _1293) + _451 + ceil32(return_data.size) + 160
                require mem[_451 + ceil32(return_data.size) + 128] - 1 < mem[_451 + ceil32(return_data.size) + 128]
                if mem[(32 * mem[_451 + ceil32(return_data.size) + 128] - 1) + _451 + ceil32(return_data.size) + 160] <= t:
                    idx = idx + 1
                    t = t
                    continue 
                idx = idx + 1
                t = mem[(32 * mem[_451 + ceil32(return_data.size) + 128] - 1) + _451 + ceil32(return_data.size) + 160]
                continue 
            if 3 == idx:
                _491 = mem[64]
                mem[mem[64]] = 3
                mem[64] = mem[64] + 128
                require 0 < mem[_491]
                mem[_491 + 32] = 0x49d68029688eabf473097a2fc38ef61633a3c7a
                require 1 < mem[_491]
                mem[_491 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                require 2 < mem[_491]
                mem[_491 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                mem[_491 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_491 + 132] = s
                mem[_491 + 164] = 64
                mem[_491 + 196] = mem[_491]
                u = 0
                while u < 32 * mem[_491]:
                    mem[u + _491 + 228] = mem[u + _491 + 32]
                    u = u + 32
                    continue 
                require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c29.getAmountsOut(uint256 rg1, address[] rg2) with:
                        gas gas_remaining wei
                       args s, 64, mem[_491 + 196 len (32 * mem[_491]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_491 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _491 + ceil32(return_data.size) + 128
                require return_data.size >= 32
                _1221 = mem[_491 + 128 len 4], Mask(224, 32, s) >> 32
                require mem[_491 + 128 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                require mem[_491 + 128 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                require mem[_491 + mem[_491 + 128 len 4], Mask(224, 32, s) >> 32 + 128] <= 4294967296 and mem[_491 + 128 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_491 + mem[_491 + 128 len 4], Mask(224, 32, s) >> 32 + 128]) + 32 <= return_data.size
                mem[_491 + ceil32(return_data.size) + 128] = mem[_491 + mem[_491 + 128 len 4], Mask(224, 32, s) >> 32 + 128]
                _1292 = mem[_491 + _1221 + 128]
                s = 0
                while s < 32 * _1292:
                    mem[s + _491 + ceil32(return_data.size) + 160] = mem[s + _491 + _1221 + 160]
                    s = s + 32
                    continue 
                mem[64] = (32 * _1292) + _491 + ceil32(return_data.size) + 160
                require mem[_491 + ceil32(return_data.size) + 128] - 1 < mem[_491 + ceil32(return_data.size) + 128]
                if mem[(32 * mem[_491 + ceil32(return_data.size) + 128] - 1) + _491 + ceil32(return_data.size) + 160] <= t:
                    idx = idx + 1
                    t = t
                    continue 
                idx = idx + 1
                t = mem[(32 * mem[_491 + ceil32(return_data.size) + 128] - 1) + _491 + ceil32(return_data.size) + 160]
                continue 
            if idx != 4:
                if s <= t:
                    idx = idx + 1
                    t = t
                    continue 
                idx = idx + 1
                t = s
                continue 
            _489 = mem[64]
            mem[mem[64]] = 3
            mem[64] = mem[64] + 128
            require 0 < mem[_489]
            mem[_489 + 32] = 0x49d68029688eabf473097a2fc38ef61633a3c7a
            require 1 < mem[_489]
            mem[_489 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
            require 2 < mem[_489]
            mem[_489 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
            mem[_489 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[_489 + 132] = s
            mem[_489 + 164] = 64
            mem[_489 + 196] = mem[_489]
            _649 = mem[_489]
            u = 0
            while u < 32 * mem[_489]:
                mem[u + _489 + 228] = mem[u + _489 + 32]
                u = u + 32
                continue 
            require ext_code.size(0x7b17021fcb7bc888641dc3bedfed3734fcaf2c87)
            staticcall 0x7b17021fcb7bc888641dc3bedfed3734fcaf2c87.getAmountsOut(uint256 rg1, address[] rg2) with:
                    gas gas_remaining wei
                   args s, 64, mem[_489 + 196 len (32 * mem[_489]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[_489 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = _489 + ceil32(return_data.size) + 128
            require return_data.size >= 32
            _1219 = mem[_489 + 128 len 4], Mask(224, 32, s) >> 32
            require mem[_489 + 128 len 4], Mask(224, 32, s) >> 32 <= 4294967296
            require mem[_489 + 128 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
            require mem[_489 + mem[_489 + 128 len 4], Mask(224, 32, s) >> 32 + 128] <= 4294967296 and mem[_489 + 128 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_489 + mem[_489 + 128 len 4], Mask(224, 32, s) >> 32 + 128]) + 32 <= return_data.size
            mem[_489 + ceil32(return_data.size) + 128] = mem[_489 + mem[_489 + 128 len 4], Mask(224, 32, s) >> 32 + 128]
            _1291 = mem[_489 + _1219 + 128]
            idx = 0
            while idx < 32 * _1291:
                mem[idx + _489 + ceil32(return_data.size) + 160] = mem[idx + _489 + _1219 + 160]
                idx = idx + 32
                continue 
            mem[64] = (32 * _1291) + _489 + ceil32(return_data.size) + 160
            require mem[_489 + ceil32(return_data.size) + 128] - 1 < mem[_489 + ceil32(return_data.size) + 128]
            if mem[(32 * mem[_489 + ceil32(return_data.size) + 128] - 1) + _489 + ceil32(return_data.size) + 160] <= t:
                u = floor32(_649) + 1
                t = t
                continue 
            u = floor32(_649) + 1
            t = mem[(32 * mem[_489 + ceil32(return_data.size) + 128] - 1) + _489 + ceil32(return_data.size) + 160]
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
        while idx < 5:
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
                mem[_100 + 132] = 0
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
                       args 0, 64, mem[_100 + 196 len (32 * mem[_100]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_100 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _100 + ceil32(return_data.size) + 128
                require return_data.size >= 32
                _432 = mem[_100 + 128 len 4], 0
                require mem[_100 + 128 len 4], 0 <= 4294967296
                require mem[_100 + 128 len 4], 0 + 32 <= return_data.size
                require mem[_100 + mem[_100 + 128 len 4], 0 + 128] <= 4294967296 and mem[_100 + 128 len 4], 0 + (32 * mem[_100 + mem[_100 + 128 len 4], 0 + 128]) + 32 <= return_data.size
                mem[_100 + ceil32(return_data.size) + 128] = mem[_100 + mem[_100 + 128 len 4], 0 + 128]
                _524 = mem[_100 + _432 + 128]
                t = 0
                while t < 32 * _524:
                    mem[t + _100 + ceil32(return_data.size) + 160] = mem[t + _100 + _432 + 160]
                    t = t + 32
                    continue 
                mem[64] = (32 * _524) + _100 + ceil32(return_data.size) + 160
                require mem[_100 + ceil32(return_data.size) + 128] - 1 < mem[_100 + ceil32(return_data.size) + 128]
                if mem[(32 * mem[_100 + ceil32(return_data.size) + 128] - 1) + _100 + ceil32(return_data.size) + 160] <= s:
                    idx = idx + 1
                    s = s
                    continue 
                idx = idx + 1
                s = mem[(32 * mem[_100 + ceil32(return_data.size) + 128] - 1) + _100 + ceil32(return_data.size) + 160]
                continue 
            if 3 == idx:
                _122 = mem[64]
                mem[mem[64]] = 3
                mem[64] = mem[64] + 128
                require 0 < mem[_122]
                mem[_122 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                require 1 < mem[_122]
                mem[_122 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                require 2 < mem[_122]
                mem[_122 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                mem[_122 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_122 + 132] = 0
                mem[_122 + 164] = 64
                mem[_122 + 196] = mem[_122]
                t = 0
                while t < 32 * mem[_122]:
                    mem[t + _122 + 228] = mem[t + _122 + 32]
                    t = t + 32
                    continue 
                require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c29.getAmountsOut(uint256 rg1, address[] rg2) with:
                        gas gas_remaining wei
                       args 0, 64, mem[_122 + 196 len (32 * mem[_122]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_122 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _122 + ceil32(return_data.size) + 128
                require return_data.size >= 32
                _430 = mem[_122 + 128 len 4], 0
                require mem[_122 + 128 len 4], 0 <= 4294967296
                require mem[_122 + 128 len 4], 0 + 32 <= return_data.size
                require mem[_122 + mem[_122 + 128 len 4], 0 + 128] <= 4294967296 and mem[_122 + 128 len 4], 0 + (32 * mem[_122 + mem[_122 + 128 len 4], 0 + 128]) + 32 <= return_data.size
                mem[_122 + ceil32(return_data.size) + 128] = mem[_122 + mem[_122 + 128 len 4], 0 + 128]
                _523 = mem[_122 + _430 + 128]
                t = 0
                while t < 32 * _523:
                    mem[t + _122 + ceil32(return_data.size) + 160] = mem[t + _122 + _430 + 160]
                    t = t + 32
                    continue 
                mem[64] = (32 * _523) + _122 + ceil32(return_data.size) + 160
                require mem[_122 + ceil32(return_data.size) + 128] - 1 < mem[_122 + ceil32(return_data.size) + 128]
                if mem[(32 * mem[_122 + ceil32(return_data.size) + 128] - 1) + _122 + ceil32(return_data.size) + 160] <= s:
                    idx = idx + 1
                    s = s
                    continue 
                idx = idx + 1
                s = mem[(32 * mem[_122 + ceil32(return_data.size) + 128] - 1) + _122 + ceil32(return_data.size) + 160]
                continue 
            if idx != 4:
                if 0 <= s:
                    idx = idx + 1
                    s = s
                    continue 
                idx = idx + 1
                s = 0
                continue 
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
            mem[_120 + 132] = 0
            mem[_120 + 164] = 64
            mem[_120 + 196] = mem[_120]
            _180 = mem[_120]
            t = 0
            while t < 32 * mem[_120]:
                mem[t + _120 + 228] = mem[t + _120 + 32]
                t = t + 32
                continue 
            require ext_code.size(0x7b17021fcb7bc888641dc3bedfed3734fcaf2c87)
            staticcall 0x7b17021fcb7bc888641dc3bedfed3734fcaf2c87.getAmountsOut(uint256 rg1, address[] rg2) with:
                    gas gas_remaining wei
                   args 0, 64, mem[_120 + 196 len (32 * mem[_120]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[_120 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = _120 + ceil32(return_data.size) + 128
            require return_data.size >= 32
            _428 = mem[_120 + 128 len 4], 0
            require mem[_120 + 128 len 4], 0 <= 4294967296
            require mem[_120 + 128 len 4], 0 + 32 <= return_data.size
            require mem[_120 + mem[_120 + 128 len 4], 0 + 128] <= 4294967296 and mem[_120 + 128 len 4], 0 + (32 * mem[_120 + mem[_120 + 128 len 4], 0 + 128]) + 32 <= return_data.size
            mem[_120 + ceil32(return_data.size) + 128] = mem[_120 + mem[_120 + 128 len 4], 0 + 128]
            _522 = mem[_120 + _428 + 128]
            idx = 0
            while idx < 32 * _522:
                mem[idx + _120 + ceil32(return_data.size) + 160] = mem[idx + _120 + _428 + 160]
                idx = idx + 32
                continue 
            mem[64] = (32 * _522) + _120 + ceil32(return_data.size) + 160
            require mem[_120 + ceil32(return_data.size) + 128] - 1 < mem[_120 + ceil32(return_data.size) + 128]
            if mem[(32 * mem[_120 + ceil32(return_data.size) + 128] - 1) + _120 + ceil32(return_data.size) + 160] <= s:
                t = floor32(_180) + 1
                s = s
                continue 
            t = floor32(_180) + 1
            s = mem[(32 * mem[_120 + ceil32(return_data.size) + 128] - 1) + _120 + ceil32(return_data.size) + 160]
            continue 
        idx = 0
        t = 0
        while idx < 5:
            if not idx:
                mem[mem[64] + 4] = 0
                mem[mem[64] + 36] = 2
                mem[mem[64] + 68] = s
                require ext_code.size(0x92d5ebf3593a92888c25c0abef126583d4b5312e)
                staticcall 0x92d5ebf3593a92888c25c0abef126583d4b5312e.get_dy_underlying(int128 rg1, int128 rg2, uint256 rg3) with:
                        gas gas_remaining wei
                       args 0, 2, s
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
                mem[mem[64] + 4] = 0
                mem[mem[64] + 36] = 2
                mem[mem[64] + 68] = s
                require ext_code.size(0x83e5f18da720119ff363cf63417628eb0e9fd523)
                staticcall 0x83e5f18da720119ff363cf63417628eb0e9fd523.get_dy(int128 rg1, int128 rg2, uint256 rg3) with:
                        gas gas_remaining wei
                       args 0, 2, s
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
                _474 = mem[64]
                mem[mem[64]] = 3
                mem[64] = mem[64] + 128
                require 0 < mem[_474]
                mem[_474 + 32] = 0x49d68029688eabf473097a2fc38ef61633a3c7a
                require 1 < mem[_474]
                mem[_474 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                require 2 < mem[_474]
                mem[_474 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                mem[_474 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_474 + 132] = s
                mem[_474 + 164] = 64
                mem[_474 + 196] = mem[_474]
                u = 0
                while u < 32 * mem[_474]:
                    mem[u + _474 + 228] = mem[u + _474 + 32]
                    u = u + 32
                    continue 
                require ext_code.size(0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52)
                staticcall 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52.getAmountsOut(uint256 rg1, address[] rg2) with:
                        gas gas_remaining wei
                       args s, 64, mem[_474 + 196 len (32 * mem[_474]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_474 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _474 + ceil32(return_data.size) + 128
                require return_data.size >= 32
                _1156 = mem[_474 + 128 len 4], Mask(224, 32, s) >> 32
                require mem[_474 + 128 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                require mem[_474 + 128 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                require mem[_474 + mem[_474 + 128 len 4], Mask(224, 32, s) >> 32 + 128] <= 4294967296 and mem[_474 + 128 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_474 + mem[_474 + 128 len 4], Mask(224, 32, s) >> 32 + 128]) + 32 <= return_data.size
                mem[_474 + ceil32(return_data.size) + 128] = mem[_474 + mem[_474 + 128 len 4], Mask(224, 32, s) >> 32 + 128]
                _1214 = mem[_474 + _1156 + 128]
                s = 0
                while s < 32 * _1214:
                    mem[s + _474 + ceil32(return_data.size) + 160] = mem[s + _474 + _1156 + 160]
                    s = s + 32
                    continue 
                mem[64] = (32 * _1214) + _474 + ceil32(return_data.size) + 160
                require mem[_474 + ceil32(return_data.size) + 128] - 1 < mem[_474 + ceil32(return_data.size) + 128]
                if mem[(32 * mem[_474 + ceil32(return_data.size) + 128] - 1) + _474 + ceil32(return_data.size) + 160] <= t:
                    idx = idx + 1
                    t = t
                    continue 
                idx = idx + 1
                t = mem[(32 * mem[_474 + ceil32(return_data.size) + 128] - 1) + _474 + ceil32(return_data.size) + 160]
                continue 
            if 3 == idx:
                _516 = mem[64]
                mem[mem[64]] = 3
                mem[64] = mem[64] + 128
                require 0 < mem[_516]
                mem[_516 + 32] = 0x49d68029688eabf473097a2fc38ef61633a3c7a
                require 1 < mem[_516]
                mem[_516 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                require 2 < mem[_516]
                mem[_516 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                mem[_516 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_516 + 132] = s
                mem[_516 + 164] = 64
                mem[_516 + 196] = mem[_516]
                u = 0
                while u < 32 * mem[_516]:
                    mem[u + _516 + 228] = mem[u + _516 + 32]
                    u = u + 32
                    continue 
                require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c29.getAmountsOut(uint256 rg1, address[] rg2) with:
                        gas gas_remaining wei
                       args s, 64, mem[_516 + 196 len (32 * mem[_516]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_516 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _516 + ceil32(return_data.size) + 128
                require return_data.size >= 32
                _1154 = mem[_516 + 128 len 4], Mask(224, 32, s) >> 32
                require mem[_516 + 128 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                require mem[_516 + 128 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                require mem[_516 + mem[_516 + 128 len 4], Mask(224, 32, s) >> 32 + 128] <= 4294967296 and mem[_516 + 128 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_516 + mem[_516 + 128 len 4], Mask(224, 32, s) >> 32 + 128]) + 32 <= return_data.size
                mem[_516 + ceil32(return_data.size) + 128] = mem[_516 + mem[_516 + 128 len 4], Mask(224, 32, s) >> 32 + 128]
                _1213 = mem[_516 + _1154 + 128]
                s = 0
                while s < 32 * _1213:
                    mem[s + _516 + ceil32(return_data.size) + 160] = mem[s + _516 + _1154 + 160]
                    s = s + 32
                    continue 
                mem[64] = (32 * _1213) + _516 + ceil32(return_data.size) + 160
                require mem[_516 + ceil32(return_data.size) + 128] - 1 < mem[_516 + ceil32(return_data.size) + 128]
                if mem[(32 * mem[_516 + ceil32(return_data.size) + 128] - 1) + _516 + ceil32(return_data.size) + 160] <= t:
                    idx = idx + 1
                    t = t
                    continue 
                idx = idx + 1
                t = mem[(32 * mem[_516 + ceil32(return_data.size) + 128] - 1) + _516 + ceil32(return_data.size) + 160]
                continue 
            if idx != 4:
                if s <= t:
                    idx = idx + 1
                    t = t
                    continue 
                idx = idx + 1
                t = s
                continue 
            _514 = mem[64]
            mem[mem[64]] = 3
            mem[64] = mem[64] + 128
            require 0 < mem[_514]
            mem[_514 + 32] = 0x49d68029688eabf473097a2fc38ef61633a3c7a
            require 1 < mem[_514]
            mem[_514 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
            require 2 < mem[_514]
            mem[_514 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
            mem[_514 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[_514 + 132] = s
            mem[_514 + 164] = 64
            mem[_514 + 196] = mem[_514]
            _664 = mem[_514]
            u = 0
            while u < 32 * mem[_514]:
                mem[u + _514 + 228] = mem[u + _514 + 32]
                u = u + 32
                continue 
            require ext_code.size(0x7b17021fcb7bc888641dc3bedfed3734fcaf2c87)
            staticcall 0x7b17021fcb7bc888641dc3bedfed3734fcaf2c87.getAmountsOut(uint256 rg1, address[] rg2) with:
                    gas gas_remaining wei
                   args s, 64, mem[_514 + 196 len (32 * mem[_514]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[_514 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = _514 + ceil32(return_data.size) + 128
            require return_data.size >= 32
            _1152 = mem[_514 + 128 len 4], Mask(224, 32, s) >> 32
            require mem[_514 + 128 len 4], Mask(224, 32, s) >> 32 <= 4294967296
            require mem[_514 + 128 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
            require mem[_514 + mem[_514 + 128 len 4], Mask(224, 32, s) >> 32 + 128] <= 4294967296 and mem[_514 + 128 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_514 + mem[_514 + 128 len 4], Mask(224, 32, s) >> 32 + 128]) + 32 <= return_data.size
            mem[_514 + ceil32(return_data.size) + 128] = mem[_514 + mem[_514 + 128 len 4], Mask(224, 32, s) >> 32 + 128]
            _1212 = mem[_514 + _1152 + 128]
            idx = 0
            while idx < 32 * _1212:
                mem[idx + _514 + ceil32(return_data.size) + 160] = mem[idx + _514 + _1152 + 160]
                idx = idx + 32
                continue 
            mem[64] = (32 * _1212) + _514 + ceil32(return_data.size) + 160
            require mem[_514 + ceil32(return_data.size) + 128] - 1 < mem[_514 + ceil32(return_data.size) + 128]
            if mem[(32 * mem[_514 + ceil32(return_data.size) + 128] - 1) + _514 + ceil32(return_data.size) + 160] <= t:
                u = floor32(_664) + 1
                t = t
                continue 
            u = floor32(_664) + 1
            t = mem[(32 * mem[_514 + ceil32(return_data.size) + 128] - 1) + _514 + ceil32(return_data.size) + 160]
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
        while idx < 5:
            if not idx:
                mem[mem[64] + 4] = 2
                mem[mem[64] + 36] = 0
                mem[mem[64] + 68] = 10^6 * sub_7d0b6809
                require ext_code.size(0x92d5ebf3593a92888c25c0abef126583d4b5312e)
                staticcall 0x92d5ebf3593a92888c25c0abef126583d4b5312e.get_dy_underlying(int128 rg1, int128 rg2, uint256 rg3) with:
                        gas gas_remaining wei
                       args 2, 0, 10^6 * sub_7d0b6809
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
                mem[mem[64] + 68] = 10^6 * sub_7d0b6809
                require ext_code.size(0x83e5f18da720119ff363cf63417628eb0e9fd523)
                staticcall 0x83e5f18da720119ff363cf63417628eb0e9fd523.get_dy(int128 rg1, int128 rg2, uint256 rg3) with:
                        gas gas_remaining wei
                       args 2, 0, 10^6 * sub_7d0b6809
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
                mem[mem[64]] = 3
                mem[64] = mem[64] + 128
                require 0 < mem[_92]
                mem[_92 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                require 1 < mem[_92]
                mem[_92 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                require 2 < mem[_92]
                mem[_92 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                mem[_92 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_92 + 132] = 10^6 * sub_7d0b6809
                mem[_92 + 164] = 64
                mem[_92 + 196] = mem[_92]
                t = 0
                while t < 32 * mem[_92]:
                    mem[t + _92 + 228] = mem[t + _92 + 32]
                    t = t + 32
                    continue 
                require ext_code.size(0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52)
                staticcall 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52.getAmountsOut(uint256 rg1, address[] rg2) with:
                        gas gas_remaining wei
                       args 10^6 * sub_7d0b6809, 64, mem[_92 + 196 len (32 * mem[_92]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_92 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _92 + ceil32(return_data.size) + 128
                require return_data.size >= 32
                _420 = mem[_92 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32
                require mem[_92 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 <= 4294967296
                require mem[_92 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 32 <= return_data.size
                require mem[_92 + mem[_92 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 128] <= 4294967296 and mem[_92 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + (32 * mem[_92 + mem[_92 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 128]) + 32 <= return_data.size
                mem[_92 + ceil32(return_data.size) + 128] = mem[_92 + mem[_92 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 128]
                _502 = mem[_92 + _420 + 128]
                t = 0
                while t < 32 * _502:
                    mem[t + _92 + ceil32(return_data.size) + 160] = mem[t + _92 + _420 + 160]
                    t = t + 32
                    continue 
                mem[64] = (32 * _502) + _92 + ceil32(return_data.size) + 160
                require mem[_92 + ceil32(return_data.size) + 128] - 1 < mem[_92 + ceil32(return_data.size) + 128]
                if mem[(32 * mem[_92 + ceil32(return_data.size) + 128] - 1) + _92 + ceil32(return_data.size) + 160] <= s:
                    idx = idx + 1
                    s = s
                    continue 
                idx = idx + 1
                s = mem[(32 * mem[_92 + ceil32(return_data.size) + 128] - 1) + _92 + ceil32(return_data.size) + 160]
                continue 
            if 3 == idx:
                _110 = mem[64]
                mem[mem[64]] = 3
                mem[64] = mem[64] + 128
                require 0 < mem[_110]
                mem[_110 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                require 1 < mem[_110]
                mem[_110 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                require 2 < mem[_110]
                mem[_110 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                mem[_110 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_110 + 132] = 10^6 * sub_7d0b6809
                mem[_110 + 164] = 64
                mem[_110 + 196] = mem[_110]
                t = 0
                while t < 32 * mem[_110]:
                    mem[t + _110 + 228] = mem[t + _110 + 32]
                    t = t + 32
                    continue 
                require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c29.getAmountsOut(uint256 rg1, address[] rg2) with:
                        gas gas_remaining wei
                       args 10^6 * sub_7d0b6809, 64, mem[_110 + 196 len (32 * mem[_110]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_110 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _110 + ceil32(return_data.size) + 128
                require return_data.size >= 32
                _418 = mem[_110 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32
                require mem[_110 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 <= 4294967296
                require mem[_110 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 32 <= return_data.size
                require mem[_110 + mem[_110 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 128] <= 4294967296 and mem[_110 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + (32 * mem[_110 + mem[_110 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 128]) + 32 <= return_data.size
                mem[_110 + ceil32(return_data.size) + 128] = mem[_110 + mem[_110 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 128]
                _501 = mem[_110 + _418 + 128]
                t = 0
                while t < 32 * _501:
                    mem[t + _110 + ceil32(return_data.size) + 160] = mem[t + _110 + _418 + 160]
                    t = t + 32
                    continue 
                mem[64] = (32 * _501) + _110 + ceil32(return_data.size) + 160
                require mem[_110 + ceil32(return_data.size) + 128] - 1 < mem[_110 + ceil32(return_data.size) + 128]
                if mem[(32 * mem[_110 + ceil32(return_data.size) + 128] - 1) + _110 + ceil32(return_data.size) + 160] <= s:
                    idx = idx + 1
                    s = s
                    continue 
                idx = idx + 1
                s = mem[(32 * mem[_110 + ceil32(return_data.size) + 128] - 1) + _110 + ceil32(return_data.size) + 160]
                continue 
            if idx != 4:
                if 10^6 * sub_7d0b6809 <= s:
                    idx = idx + 1
                    s = s
                    continue 
                idx = idx + 1
                s = 10^6 * sub_7d0b6809
                continue 
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
            _170 = mem[_108]
            t = 0
            while t < 32 * mem[_108]:
                mem[t + _108 + 228] = mem[t + _108 + 32]
                t = t + 32
                continue 
            require ext_code.size(0x7b17021fcb7bc888641dc3bedfed3734fcaf2c87)
            staticcall 0x7b17021fcb7bc888641dc3bedfed3734fcaf2c87.getAmountsOut(uint256 rg1, address[] rg2) with:
                    gas gas_remaining wei
                   args 10^6 * sub_7d0b6809, 64, mem[_108 + 196 len (32 * mem[_108]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[_108 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = _108 + ceil32(return_data.size) + 128
            require return_data.size >= 32
            _416 = mem[_108 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32
            require mem[_108 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 <= 4294967296
            require mem[_108 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 32 <= return_data.size
            require mem[_108 + mem[_108 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 128] <= 4294967296 and mem[_108 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + (32 * mem[_108 + mem[_108 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 128]) + 32 <= return_data.size
            mem[_108 + ceil32(return_data.size) + 128] = mem[_108 + mem[_108 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 128]
            _500 = mem[_108 + _416 + 128]
            idx = 0
            while idx < 32 * _500:
                mem[idx + _108 + ceil32(return_data.size) + 160] = mem[idx + _108 + _416 + 160]
                idx = idx + 32
                continue 
            mem[64] = (32 * _500) + _108 + ceil32(return_data.size) + 160
            require mem[_108 + ceil32(return_data.size) + 128] - 1 < mem[_108 + ceil32(return_data.size) + 128]
            if mem[(32 * mem[_108 + ceil32(return_data.size) + 128] - 1) + _108 + ceil32(return_data.size) + 160] <= s:
                t = floor32(_170) + 1
                s = s
                continue 
            t = floor32(_170) + 1
            s = mem[(32 * mem[_108 + ceil32(return_data.size) + 128] - 1) + _108 + ceil32(return_data.size) + 160]
            continue 
        idx = 0
        t = 0
        while idx < 5:
            if not idx:
                mem[mem[64] + 4] = 0
                mem[mem[64] + 36] = 2
                mem[mem[64] + 68] = s
                require ext_code.size(0x92d5ebf3593a92888c25c0abef126583d4b5312e)
                staticcall 0x92d5ebf3593a92888c25c0abef126583d4b5312e.get_dy_underlying(int128 rg1, int128 rg2, uint256 rg3) with:
                        gas gas_remaining wei
                       args 0, 2, s
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
                mem[mem[64] + 4] = 0
                mem[mem[64] + 36] = 2
                mem[mem[64] + 68] = s
                require ext_code.size(0x83e5f18da720119ff363cf63417628eb0e9fd523)
                staticcall 0x83e5f18da720119ff363cf63417628eb0e9fd523.get_dy(int128 rg1, int128 rg2, uint256 rg3) with:
                        gas gas_remaining wei
                       args 0, 2, s
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
                _456 = mem[64]
                mem[mem[64]] = 3
                mem[64] = mem[64] + 128
                require 0 < mem[_456]
                mem[_456 + 32] = 0x49d68029688eabf473097a2fc38ef61633a3c7a
                require 1 < mem[_456]
                mem[_456 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                require 2 < mem[_456]
                mem[_456 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                mem[_456 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_456 + 132] = s
                mem[_456 + 164] = 64
                mem[_456 + 196] = mem[_456]
                u = 0
                while u < 32 * mem[_456]:
                    mem[u + _456 + 228] = mem[u + _456 + 32]
                    u = u + 32
                    continue 
                require ext_code.size(0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52)
                staticcall 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52.getAmountsOut(uint256 rg1, address[] rg2) with:
                        gas gas_remaining wei
                       args s, 64, mem[_456 + 196 len (32 * mem[_456]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_456 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _456 + ceil32(return_data.size) + 128
                require return_data.size >= 32
                _1132 = mem[_456 + 128 len 4], Mask(224, 32, s) >> 32
                require mem[_456 + 128 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                require mem[_456 + 128 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                require mem[_456 + mem[_456 + 128 len 4], Mask(224, 32, s) >> 32 + 128] <= 4294967296 and mem[_456 + 128 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_456 + mem[_456 + 128 len 4], Mask(224, 32, s) >> 32 + 128]) + 32 <= return_data.size
                mem[_456 + ceil32(return_data.size) + 128] = mem[_456 + mem[_456 + 128 len 4], Mask(224, 32, s) >> 32 + 128]
                _1202 = mem[_456 + _1132 + 128]
                s = 0
                while s < 32 * _1202:
                    mem[s + _456 + ceil32(return_data.size) + 160] = mem[s + _456 + _1132 + 160]
                    s = s + 32
                    continue 
                mem[64] = (32 * _1202) + _456 + ceil32(return_data.size) + 160
                require mem[_456 + ceil32(return_data.size) + 128] - 1 < mem[_456 + ceil32(return_data.size) + 128]
                if mem[(32 * mem[_456 + ceil32(return_data.size) + 128] - 1) + _456 + ceil32(return_data.size) + 160] <= t:
                    idx = idx + 1
                    t = t
                    continue 
                idx = idx + 1
                t = mem[(32 * mem[_456 + ceil32(return_data.size) + 128] - 1) + _456 + ceil32(return_data.size) + 160]
                continue 
            if 3 == idx:
                _494 = mem[64]
                mem[mem[64]] = 3
                mem[64] = mem[64] + 128
                require 0 < mem[_494]
                mem[_494 + 32] = 0x49d68029688eabf473097a2fc38ef61633a3c7a
                require 1 < mem[_494]
                mem[_494 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                require 2 < mem[_494]
                mem[_494 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                mem[_494 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_494 + 132] = s
                mem[_494 + 164] = 64
                mem[_494 + 196] = mem[_494]
                u = 0
                while u < 32 * mem[_494]:
                    mem[u + _494 + 228] = mem[u + _494 + 32]
                    u = u + 32
                    continue 
                require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c29.getAmountsOut(uint256 rg1, address[] rg2) with:
                        gas gas_remaining wei
                       args s, 64, mem[_494 + 196 len (32 * mem[_494]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_494 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _494 + ceil32(return_data.size) + 128
                require return_data.size >= 32
                _1130 = mem[_494 + 128 len 4], Mask(224, 32, s) >> 32
                require mem[_494 + 128 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                require mem[_494 + 128 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                require mem[_494 + mem[_494 + 128 len 4], Mask(224, 32, s) >> 32 + 128] <= 4294967296 and mem[_494 + 128 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_494 + mem[_494 + 128 len 4], Mask(224, 32, s) >> 32 + 128]) + 32 <= return_data.size
                mem[_494 + ceil32(return_data.size) + 128] = mem[_494 + mem[_494 + 128 len 4], Mask(224, 32, s) >> 32 + 128]
                _1201 = mem[_494 + _1130 + 128]
                s = 0
                while s < 32 * _1201:
                    mem[s + _494 + ceil32(return_data.size) + 160] = mem[s + _494 + _1130 + 160]
                    s = s + 32
                    continue 
                mem[64] = (32 * _1201) + _494 + ceil32(return_data.size) + 160
                require mem[_494 + ceil32(return_data.size) + 128] - 1 < mem[_494 + ceil32(return_data.size) + 128]
                if mem[(32 * mem[_494 + ceil32(return_data.size) + 128] - 1) + _494 + ceil32(return_data.size) + 160] <= t:
                    idx = idx + 1
                    t = t
                    continue 
                idx = idx + 1
                t = mem[(32 * mem[_494 + ceil32(return_data.size) + 128] - 1) + _494 + ceil32(return_data.size) + 160]
                continue 
            if idx != 4:
                if s <= t:
                    idx = idx + 1
                    t = t
                    continue 
                idx = idx + 1
                t = s
                continue 
            _492 = mem[64]
            mem[mem[64]] = 3
            mem[64] = mem[64] + 128
            require 0 < mem[_492]
            mem[_492 + 32] = 0x49d68029688eabf473097a2fc38ef61633a3c7a
            require 1 < mem[_492]
            mem[_492 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
            require 2 < mem[_492]
            mem[_492 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
            mem[_492 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[_492 + 132] = s
            mem[_492 + 164] = 64
            mem[_492 + 196] = mem[_492]
            _638 = mem[_492]
            u = 0
            while u < 32 * mem[_492]:
                mem[u + _492 + 228] = mem[u + _492 + 32]
                u = u + 32
                continue 
            require ext_code.size(0x7b17021fcb7bc888641dc3bedfed3734fcaf2c87)
            staticcall 0x7b17021fcb7bc888641dc3bedfed3734fcaf2c87.getAmountsOut(uint256 rg1, address[] rg2) with:
                    gas gas_remaining wei
                   args s, 64, mem[_492 + 196 len (32 * mem[_492]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[_492 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = _492 + ceil32(return_data.size) + 128
            require return_data.size >= 32
            _1128 = mem[_492 + 128 len 4], Mask(224, 32, s) >> 32
            require mem[_492 + 128 len 4], Mask(224, 32, s) >> 32 <= 4294967296
            require mem[_492 + 128 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
            require mem[_492 + mem[_492 + 128 len 4], Mask(224, 32, s) >> 32 + 128] <= 4294967296 and mem[_492 + 128 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_492 + mem[_492 + 128 len 4], Mask(224, 32, s) >> 32 + 128]) + 32 <= return_data.size
            mem[_492 + ceil32(return_data.size) + 128] = mem[_492 + mem[_492 + 128 len 4], Mask(224, 32, s) >> 32 + 128]
            _1200 = mem[_492 + _1128 + 128]
            idx = 0
            while idx < 32 * _1200:
                mem[idx + _492 + ceil32(return_data.size) + 160] = mem[idx + _492 + _1128 + 160]
                idx = idx + 32
                continue 
            mem[64] = (32 * _1200) + _492 + ceil32(return_data.size) + 160
            require mem[_492 + ceil32(return_data.size) + 128] - 1 < mem[_492 + ceil32(return_data.size) + 128]
            if mem[(32 * mem[_492 + ceil32(return_data.size) + 128] - 1) + _492 + ceil32(return_data.size) + 160] <= t:
                u = floor32(_638) + 1
                t = t
                continue 
            u = floor32(_638) + 1
            t = mem[(32 * mem[_492 + ceil32(return_data.size) + 128] - 1) + _492 + ceil32(return_data.size) + 160]
            continue 
}



}
