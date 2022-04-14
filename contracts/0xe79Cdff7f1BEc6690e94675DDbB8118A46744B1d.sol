contract main {




// =====================  Runtime code  =====================


#
#  - executeOperation(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5)
#  - sub_94d7721f(?)
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

function sub_57c20218(?) payable {
    mem[64] = 96
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
                _443 = mem[_95 + 128 len 4], 0
                require mem[_95 + 128 len 4], 0 <= 4294967296
                require mem[_95 + 128 len 4], 0 + 32 <= return_data.size
                require mem[_95 + mem[_95 + 128 len 4], 0 + 128] <= 4294967296 and mem[_95 + 128 len 4], 0 + (32 * mem[_95 + mem[_95 + 128 len 4], 0 + 128]) + 32 <= return_data.size
                mem[_95 + ceil32(return_data.size) + 128] = mem[_95 + mem[_95 + 128 len 4], 0 + 128]
                _535 = mem[_95 + _443 + 128]
                t = 0
                while t < 32 * _535:
                    mem[t + _95 + ceil32(return_data.size) + 160] = mem[t + _95 + _443 + 160]
                    t = t + 32
                    continue 
                mem[64] = (32 * _535) + _95 + ceil32(return_data.size) + 160
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
                _441 = mem[_117 + 128 len 4], 0
                require mem[_117 + 128 len 4], 0 <= 4294967296
                require mem[_117 + 128 len 4], 0 + 32 <= return_data.size
                require mem[_117 + mem[_117 + 128 len 4], 0 + 128] <= 4294967296 and mem[_117 + 128 len 4], 0 + (32 * mem[_117 + mem[_117 + 128 len 4], 0 + 128]) + 32 <= return_data.size
                mem[_117 + ceil32(return_data.size) + 128] = mem[_117 + mem[_117 + 128 len 4], 0 + 128]
                _534 = mem[_117 + _441 + 128]
                t = 0
                while t < 32 * _534:
                    mem[t + _117 + ceil32(return_data.size) + 160] = mem[t + _117 + _441 + 160]
                    t = t + 32
                    continue 
                mem[64] = (32 * _534) + _117 + ceil32(return_data.size) + 160
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
            _439 = mem[_115 + 128 len 4], 0
            require mem[_115 + 128 len 4], 0 <= 4294967296
            require mem[_115 + 128 len 4], 0 + 32 <= return_data.size
            require mem[_115 + mem[_115 + 128 len 4], 0 + 128] <= 4294967296 and mem[_115 + 128 len 4], 0 + (32 * mem[_115 + mem[_115 + 128 len 4], 0 + 128]) + 32 <= return_data.size
            mem[_115 + ceil32(return_data.size) + 128] = mem[_115 + mem[_115 + 128 len 4], 0 + 128]
            _533 = mem[_115 + _439 + 128]
            idx = 0
            while idx < 32 * _533:
                mem[idx + _115 + ceil32(return_data.size) + 160] = mem[idx + _115 + _439 + 160]
                idx = idx + 32
                continue 
            mem[64] = (32 * _533) + _115 + ceil32(return_data.size) + 160
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
                _485 = mem[64]
                mem[mem[64]] = 3
                mem[64] = mem[64] + 128
                require 0 < mem[_485]
                mem[_485 + 32] = 0x49d68029688eabf473097a2fc38ef61633a3c7a
                require 1 < mem[_485]
                mem[_485 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                require 2 < mem[_485]
                mem[_485 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                mem[_485 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_485 + 132] = s
                mem[_485 + 164] = 64
                mem[_485 + 196] = mem[_485]
                u = 0
                while u < 32 * mem[_485]:
                    mem[u + _485 + 228] = mem[u + _485 + 32]
                    u = u + 32
                    continue 
                require ext_code.size(0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52)
                staticcall 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52.getAmountsOut(uint256 rg1, address[] rg2) with:
                        gas gas_remaining wei
                       args s, 64, mem[_485 + 196 len (32 * mem[_485]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_485 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _485 + ceil32(return_data.size) + 128
                require return_data.size >= 32
                _1167 = mem[_485 + 128 len 4], Mask(224, 32, s) >> 32
                require mem[_485 + 128 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                require mem[_485 + 128 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                require mem[_485 + mem[_485 + 128 len 4], Mask(224, 32, s) >> 32 + 128] <= 4294967296 and mem[_485 + 128 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_485 + mem[_485 + 128 len 4], Mask(224, 32, s) >> 32 + 128]) + 32 <= return_data.size
                mem[_485 + ceil32(return_data.size) + 128] = mem[_485 + mem[_485 + 128 len 4], Mask(224, 32, s) >> 32 + 128]
                _1225 = mem[_485 + _1167 + 128]
                s = 0
                while s < 32 * _1225:
                    mem[s + _485 + ceil32(return_data.size) + 160] = mem[s + _485 + _1167 + 160]
                    s = s + 32
                    continue 
                mem[64] = (32 * _1225) + _485 + ceil32(return_data.size) + 160
                require mem[_485 + ceil32(return_data.size) + 128] - 1 < mem[_485 + ceil32(return_data.size) + 128]
                if mem[(32 * mem[_485 + ceil32(return_data.size) + 128] - 1) + _485 + ceil32(return_data.size) + 160] <= t:
                    idx = idx + 1
                    t = t
                    continue 
                idx = idx + 1
                t = mem[(32 * mem[_485 + ceil32(return_data.size) + 128] - 1) + _485 + ceil32(return_data.size) + 160]
                continue 
            if 3 == idx:
                _527 = mem[64]
                mem[mem[64]] = 3
                mem[64] = mem[64] + 128
                require 0 < mem[_527]
                mem[_527 + 32] = 0x49d68029688eabf473097a2fc38ef61633a3c7a
                require 1 < mem[_527]
                mem[_527 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                require 2 < mem[_527]
                mem[_527 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                mem[_527 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_527 + 132] = s
                mem[_527 + 164] = 64
                mem[_527 + 196] = mem[_527]
                u = 0
                while u < 32 * mem[_527]:
                    mem[u + _527 + 228] = mem[u + _527 + 32]
                    u = u + 32
                    continue 
                require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c29.getAmountsOut(uint256 rg1, address[] rg2) with:
                        gas gas_remaining wei
                       args s, 64, mem[_527 + 196 len (32 * mem[_527]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_527 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _527 + ceil32(return_data.size) + 128
                require return_data.size >= 32
                _1165 = mem[_527 + 128 len 4], Mask(224, 32, s) >> 32
                require mem[_527 + 128 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                require mem[_527 + 128 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                require mem[_527 + mem[_527 + 128 len 4], Mask(224, 32, s) >> 32 + 128] <= 4294967296 and mem[_527 + 128 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_527 + mem[_527 + 128 len 4], Mask(224, 32, s) >> 32 + 128]) + 32 <= return_data.size
                mem[_527 + ceil32(return_data.size) + 128] = mem[_527 + mem[_527 + 128 len 4], Mask(224, 32, s) >> 32 + 128]
                _1224 = mem[_527 + _1165 + 128]
                s = 0
                while s < 32 * _1224:
                    mem[s + _527 + ceil32(return_data.size) + 160] = mem[s + _527 + _1165 + 160]
                    s = s + 32
                    continue 
                mem[64] = (32 * _1224) + _527 + ceil32(return_data.size) + 160
                require mem[_527 + ceil32(return_data.size) + 128] - 1 < mem[_527 + ceil32(return_data.size) + 128]
                if mem[(32 * mem[_527 + ceil32(return_data.size) + 128] - 1) + _527 + ceil32(return_data.size) + 160] <= t:
                    idx = idx + 1
                    t = t
                    continue 
                idx = idx + 1
                t = mem[(32 * mem[_527 + ceil32(return_data.size) + 128] - 1) + _527 + ceil32(return_data.size) + 160]
                continue 
            if idx != 4:
                if s <= t:
                    idx = idx + 1
                    t = t
                    continue 
                idx = idx + 1
                t = s
                continue 
            _525 = mem[64]
            mem[mem[64]] = 3
            mem[64] = mem[64] + 128
            require 0 < mem[_525]
            mem[_525 + 32] = 0x49d68029688eabf473097a2fc38ef61633a3c7a
            require 1 < mem[_525]
            mem[_525 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
            require 2 < mem[_525]
            mem[_525 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
            mem[_525 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[_525 + 132] = s
            mem[_525 + 164] = 64
            mem[_525 + 196] = mem[_525]
            _675 = mem[_525]
            u = 0
            while u < 32 * mem[_525]:
                mem[u + _525 + 228] = mem[u + _525 + 32]
                u = u + 32
                continue 
            require ext_code.size(0x7b17021fcb7bc888641dc3bedfed3734fcaf2c87)
            staticcall 0x7b17021fcb7bc888641dc3bedfed3734fcaf2c87.getAmountsOut(uint256 rg1, address[] rg2) with:
                    gas gas_remaining wei
                   args s, 64, mem[_525 + 196 len (32 * mem[_525]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[_525 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = _525 + ceil32(return_data.size) + 128
            require return_data.size >= 32
            _1163 = mem[_525 + 128 len 4], Mask(224, 32, s) >> 32
            require mem[_525 + 128 len 4], Mask(224, 32, s) >> 32 <= 4294967296
            require mem[_525 + 128 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
            require mem[_525 + mem[_525 + 128 len 4], Mask(224, 32, s) >> 32 + 128] <= 4294967296 and mem[_525 + 128 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_525 + mem[_525 + 128 len 4], Mask(224, 32, s) >> 32 + 128]) + 32 <= return_data.size
            mem[_525 + ceil32(return_data.size) + 128] = mem[_525 + mem[_525 + 128 len 4], Mask(224, 32, s) >> 32 + 128]
            _1223 = mem[_525 + _1163 + 128]
            idx = 0
            while idx < 32 * _1223:
                mem[idx + _525 + ceil32(return_data.size) + 160] = mem[idx + _525 + _1163 + 160]
                idx = idx + 32
                continue 
            mem[64] = (32 * _1223) + _525 + ceil32(return_data.size) + 160
            require mem[_525 + ceil32(return_data.size) + 128] - 1 < mem[_525 + ceil32(return_data.size) + 128]
            if mem[(32 * mem[_525 + ceil32(return_data.size) + 128] - 1) + _525 + ceil32(return_data.size) + 160] <= t:
                u = floor32(_675) + 1
                t = t
                continue 
            u = floor32(_675) + 1
            t = mem[(32 * mem[_525 + ceil32(return_data.size) + 128] - 1) + _525 + ceil32(return_data.size) + 160]
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
                _431 = mem[_87 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32
                require mem[_87 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 <= 4294967296
                require mem[_87 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 32 <= return_data.size
                require mem[_87 + mem[_87 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 128] <= 4294967296 and mem[_87 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + (32 * mem[_87 + mem[_87 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 128]) + 32 <= return_data.size
                mem[_87 + ceil32(return_data.size) + 128] = mem[_87 + mem[_87 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 128]
                _513 = mem[_87 + _431 + 128]
                t = 0
                while t < 32 * _513:
                    mem[t + _87 + ceil32(return_data.size) + 160] = mem[t + _87 + _431 + 160]
                    t = t + 32
                    continue 
                mem[64] = (32 * _513) + _87 + ceil32(return_data.size) + 160
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
                _429 = mem[_105 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32
                require mem[_105 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 <= 4294967296
                require mem[_105 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 32 <= return_data.size
                require mem[_105 + mem[_105 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 128] <= 4294967296 and mem[_105 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + (32 * mem[_105 + mem[_105 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 128]) + 32 <= return_data.size
                mem[_105 + ceil32(return_data.size) + 128] = mem[_105 + mem[_105 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 128]
                _512 = mem[_105 + _429 + 128]
                t = 0
                while t < 32 * _512:
                    mem[t + _105 + ceil32(return_data.size) + 160] = mem[t + _105 + _429 + 160]
                    t = t + 32
                    continue 
                mem[64] = (32 * _512) + _105 + ceil32(return_data.size) + 160
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
            _427 = mem[_103 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32
            require mem[_103 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 <= 4294967296
            require mem[_103 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 32 <= return_data.size
            require mem[_103 + mem[_103 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 128] <= 4294967296 and mem[_103 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + (32 * mem[_103 + mem[_103 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 128]) + 32 <= return_data.size
            mem[_103 + ceil32(return_data.size) + 128] = mem[_103 + mem[_103 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 128]
            _511 = mem[_103 + _427 + 128]
            idx = 0
            while idx < 32 * _511:
                mem[idx + _103 + ceil32(return_data.size) + 160] = mem[idx + _103 + _427 + 160]
                idx = idx + 32
                continue 
            mem[64] = (32 * _511) + _103 + ceil32(return_data.size) + 160
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
                _467 = mem[64]
                mem[mem[64]] = 3
                mem[64] = mem[64] + 128
                require 0 < mem[_467]
                mem[_467 + 32] = 0x49d68029688eabf473097a2fc38ef61633a3c7a
                require 1 < mem[_467]
                mem[_467 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                require 2 < mem[_467]
                mem[_467 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                mem[_467 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_467 + 132] = s
                mem[_467 + 164] = 64
                mem[_467 + 196] = mem[_467]
                u = 0
                while u < 32 * mem[_467]:
                    mem[u + _467 + 228] = mem[u + _467 + 32]
                    u = u + 32
                    continue 
                require ext_code.size(0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52)
                staticcall 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52.getAmountsOut(uint256 rg1, address[] rg2) with:
                        gas gas_remaining wei
                       args s, 64, mem[_467 + 196 len (32 * mem[_467]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_467 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _467 + ceil32(return_data.size) + 128
                require return_data.size >= 32
                _1143 = mem[_467 + 128 len 4], Mask(224, 32, s) >> 32
                require mem[_467 + 128 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                require mem[_467 + 128 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                require mem[_467 + mem[_467 + 128 len 4], Mask(224, 32, s) >> 32 + 128] <= 4294967296 and mem[_467 + 128 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_467 + mem[_467 + 128 len 4], Mask(224, 32, s) >> 32 + 128]) + 32 <= return_data.size
                mem[_467 + ceil32(return_data.size) + 128] = mem[_467 + mem[_467 + 128 len 4], Mask(224, 32, s) >> 32 + 128]
                _1213 = mem[_467 + _1143 + 128]
                s = 0
                while s < 32 * _1213:
                    mem[s + _467 + ceil32(return_data.size) + 160] = mem[s + _467 + _1143 + 160]
                    s = s + 32
                    continue 
                mem[64] = (32 * _1213) + _467 + ceil32(return_data.size) + 160
                require mem[_467 + ceil32(return_data.size) + 128] - 1 < mem[_467 + ceil32(return_data.size) + 128]
                if mem[(32 * mem[_467 + ceil32(return_data.size) + 128] - 1) + _467 + ceil32(return_data.size) + 160] <= t:
                    idx = idx + 1
                    t = t
                    continue 
                idx = idx + 1
                t = mem[(32 * mem[_467 + ceil32(return_data.size) + 128] - 1) + _467 + ceil32(return_data.size) + 160]
                continue 
            if 3 == idx:
                _505 = mem[64]
                mem[mem[64]] = 3
                mem[64] = mem[64] + 128
                require 0 < mem[_505]
                mem[_505 + 32] = 0x49d68029688eabf473097a2fc38ef61633a3c7a
                require 1 < mem[_505]
                mem[_505 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                require 2 < mem[_505]
                mem[_505 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                mem[_505 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_505 + 132] = s
                mem[_505 + 164] = 64
                mem[_505 + 196] = mem[_505]
                u = 0
                while u < 32 * mem[_505]:
                    mem[u + _505 + 228] = mem[u + _505 + 32]
                    u = u + 32
                    continue 
                require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c29.getAmountsOut(uint256 rg1, address[] rg2) with:
                        gas gas_remaining wei
                       args s, 64, mem[_505 + 196 len (32 * mem[_505]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_505 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _505 + ceil32(return_data.size) + 128
                require return_data.size >= 32
                _1141 = mem[_505 + 128 len 4], Mask(224, 32, s) >> 32
                require mem[_505 + 128 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                require mem[_505 + 128 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                require mem[_505 + mem[_505 + 128 len 4], Mask(224, 32, s) >> 32 + 128] <= 4294967296 and mem[_505 + 128 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_505 + mem[_505 + 128 len 4], Mask(224, 32, s) >> 32 + 128]) + 32 <= return_data.size
                mem[_505 + ceil32(return_data.size) + 128] = mem[_505 + mem[_505 + 128 len 4], Mask(224, 32, s) >> 32 + 128]
                _1212 = mem[_505 + _1141 + 128]
                s = 0
                while s < 32 * _1212:
                    mem[s + _505 + ceil32(return_data.size) + 160] = mem[s + _505 + _1141 + 160]
                    s = s + 32
                    continue 
                mem[64] = (32 * _1212) + _505 + ceil32(return_data.size) + 160
                require mem[_505 + ceil32(return_data.size) + 128] - 1 < mem[_505 + ceil32(return_data.size) + 128]
                if mem[(32 * mem[_505 + ceil32(return_data.size) + 128] - 1) + _505 + ceil32(return_data.size) + 160] <= t:
                    idx = idx + 1
                    t = t
                    continue 
                idx = idx + 1
                t = mem[(32 * mem[_505 + ceil32(return_data.size) + 128] - 1) + _505 + ceil32(return_data.size) + 160]
                continue 
            if idx != 4:
                if s <= t:
                    idx = idx + 1
                    t = t
                    continue 
                idx = idx + 1
                t = s
                continue 
            _503 = mem[64]
            mem[mem[64]] = 3
            mem[64] = mem[64] + 128
            require 0 < mem[_503]
            mem[_503 + 32] = 0x49d68029688eabf473097a2fc38ef61633a3c7a
            require 1 < mem[_503]
            mem[_503 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
            require 2 < mem[_503]
            mem[_503 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
            mem[_503 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[_503 + 132] = s
            mem[_503 + 164] = 64
            mem[_503 + 196] = mem[_503]
            _649 = mem[_503]
            u = 0
            while u < 32 * mem[_503]:
                mem[u + _503 + 228] = mem[u + _503 + 32]
                u = u + 32
                continue 
            require ext_code.size(0x7b17021fcb7bc888641dc3bedfed3734fcaf2c87)
            staticcall 0x7b17021fcb7bc888641dc3bedfed3734fcaf2c87.getAmountsOut(uint256 rg1, address[] rg2) with:
                    gas gas_remaining wei
                   args s, 64, mem[_503 + 196 len (32 * mem[_503]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[_503 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = _503 + ceil32(return_data.size) + 128
            require return_data.size >= 32
            _1139 = mem[_503 + 128 len 4], Mask(224, 32, s) >> 32
            require mem[_503 + 128 len 4], Mask(224, 32, s) >> 32 <= 4294967296
            require mem[_503 + 128 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
            require mem[_503 + mem[_503 + 128 len 4], Mask(224, 32, s) >> 32 + 128] <= 4294967296 and mem[_503 + 128 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_503 + mem[_503 + 128 len 4], Mask(224, 32, s) >> 32 + 128]) + 32 <= return_data.size
            mem[_503 + ceil32(return_data.size) + 128] = mem[_503 + mem[_503 + 128 len 4], Mask(224, 32, s) >> 32 + 128]
            _1211 = mem[_503 + _1139 + 128]
            idx = 0
            while idx < 32 * _1211:
                mem[idx + _503 + ceil32(return_data.size) + 160] = mem[idx + _503 + _1139 + 160]
                idx = idx + 32
                continue 
            mem[64] = (32 * _1211) + _503 + ceil32(return_data.size) + 160
            require mem[_503 + ceil32(return_data.size) + 128] - 1 < mem[_503 + ceil32(return_data.size) + 128]
            if mem[(32 * mem[_503 + ceil32(return_data.size) + 128] - 1) + _503 + ceil32(return_data.size) + 160] <= t:
                u = floor32(_649) + 1
                t = t
                continue 
            u = floor32(_649) + 1
            t = mem[(32 * mem[_503 + ceil32(return_data.size) + 128] - 1) + _503 + ceil32(return_data.size) + 160]
            continue 
    return 0
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
