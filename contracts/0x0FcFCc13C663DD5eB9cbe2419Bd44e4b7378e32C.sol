contract main {




// =====================  Runtime code  =====================


#
#  - executeOperation(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5)
#  - sub_94d7721f(?)
#
address governanceAddress;
address sub_4bf4f423Address;
uint256 maxBatch;
uint256 sub_7d0b6809;
uint256 sub_1a45acc7;

function sub_1a45acc7(?) payable {
    return sub_1a45acc7
}

function sub_4bf4f423(?) payable {
    return sub_4bf4f423Address
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
        revert with 0, 'Ownable: caller is not the owner'
    sub_1a45acc7 = arg1
}

function changeBot(address arg1) payable {
    require calldata.size - 4 >= 32
    if governanceAddress != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_4bf4f423Address = arg1
}

function sub_2937a6f2(?) payable {
    require calldata.size - 4 >= 64
    if governanceAddress != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
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
    if sub_4bf4f423Address != msg.sender:
        revert with 0, 'Call not sent from the bot'
    if block.number > arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    40,
                    0x7554726164652068617320657870697265642064756520746f2070617373656420646561646c696e,
                    mem[204 len 24]
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
                _431 = mem[_99 + 128 len 4], 0
                require mem[_99 + 128 len 4], 0 <= 4294967296
                require mem[_99 + 128 len 4], 0 + 32 <= return_data.size
                require mem[_99 + mem[_99 + 128 len 4], 0 + 128] <= 4294967296 and mem[_99 + 128 len 4], 0 + (32 * mem[_99 + mem[_99 + 128 len 4], 0 + 128]) + 32 <= return_data.size
                mem[_99 + ceil32(return_data.size) + 128] = mem[_99 + mem[_99 + 128 len 4], 0 + 128]
                _523 = mem[_99 + _431 + 128]
                t = 0
                while t < 32 * _523:
                    mem[t + _99 + ceil32(return_data.size) + 160] = mem[t + _99 + _431 + 160]
                    t = t + 32
                    continue 
                mem[64] = (32 * _523) + _99 + ceil32(return_data.size) + 160
                require mem[_99 + ceil32(return_data.size) + 128] - 1 < mem[_99 + ceil32(return_data.size) + 128]
                if mem[(32 * mem[_99 + ceil32(return_data.size) + 128] - 1) + _99 + ceil32(return_data.size) + 160] <= s:
                    idx = idx + 1
                    s = s
                    continue 
                idx = idx + 1
                s = mem[(32 * mem[_99 + ceil32(return_data.size) + 128] - 1) + _99 + ceil32(return_data.size) + 160]
                continue 
            if 3 == idx:
                _121 = mem[64]
                mem[mem[64]] = 3
                mem[64] = mem[64] + 128
                require 0 < mem[_121]
                mem[_121 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                require 1 < mem[_121]
                mem[_121 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                require 2 < mem[_121]
                mem[_121 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                mem[_121 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_121 + 132] = 0
                mem[_121 + 164] = 64
                mem[_121 + 196] = mem[_121]
                t = 0
                while t < 32 * mem[_121]:
                    mem[t + _121 + 228] = mem[t + _121 + 32]
                    t = t + 32
                    continue 
                require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c29.getAmountsOut(uint256 rg1, address[] rg2) with:
                        gas gas_remaining wei
                       args 0, 64, mem[_121 + 196 len (32 * mem[_121]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_121 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _121 + ceil32(return_data.size) + 128
                require return_data.size >= 32
                _429 = mem[_121 + 128 len 4], 0
                require mem[_121 + 128 len 4], 0 <= 4294967296
                require mem[_121 + 128 len 4], 0 + 32 <= return_data.size
                require mem[_121 + mem[_121 + 128 len 4], 0 + 128] <= 4294967296 and mem[_121 + 128 len 4], 0 + (32 * mem[_121 + mem[_121 + 128 len 4], 0 + 128]) + 32 <= return_data.size
                mem[_121 + ceil32(return_data.size) + 128] = mem[_121 + mem[_121 + 128 len 4], 0 + 128]
                _522 = mem[_121 + _429 + 128]
                t = 0
                while t < 32 * _522:
                    mem[t + _121 + ceil32(return_data.size) + 160] = mem[t + _121 + _429 + 160]
                    t = t + 32
                    continue 
                mem[64] = (32 * _522) + _121 + ceil32(return_data.size) + 160
                require mem[_121 + ceil32(return_data.size) + 128] - 1 < mem[_121 + ceil32(return_data.size) + 128]
                if mem[(32 * mem[_121 + ceil32(return_data.size) + 128] - 1) + _121 + ceil32(return_data.size) + 160] <= s:
                    idx = idx + 1
                    s = s
                    continue 
                idx = idx + 1
                s = mem[(32 * mem[_121 + ceil32(return_data.size) + 128] - 1) + _121 + ceil32(return_data.size) + 160]
                continue 
            if idx != 4:
                if 0 <= s:
                    idx = idx + 1
                    s = s
                    continue 
                idx = idx + 1
                s = 0
                continue 
            _119 = mem[64]
            mem[mem[64]] = 3
            mem[64] = mem[64] + 128
            require 0 < mem[_119]
            mem[_119 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
            require 1 < mem[_119]
            mem[_119 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
            require 2 < mem[_119]
            mem[_119 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
            mem[_119 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[_119 + 132] = 0
            mem[_119 + 164] = 64
            mem[_119 + 196] = mem[_119]
            _179 = mem[_119]
            t = 0
            while t < 32 * mem[_119]:
                mem[t + _119 + 228] = mem[t + _119 + 32]
                t = t + 32
                continue 
            require ext_code.size(0x7b17021fcb7bc888641dc3bedfed3734fcaf2c87)
            staticcall 0x7b17021fcb7bc888641dc3bedfed3734fcaf2c87.getAmountsOut(uint256 rg1, address[] rg2) with:
                    gas gas_remaining wei
                   args 0, 64, mem[_119 + 196 len (32 * mem[_119]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[_119 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = _119 + ceil32(return_data.size) + 128
            require return_data.size >= 32
            _427 = mem[_119 + 128 len 4], 0
            require mem[_119 + 128 len 4], 0 <= 4294967296
            require mem[_119 + 128 len 4], 0 + 32 <= return_data.size
            require mem[_119 + mem[_119 + 128 len 4], 0 + 128] <= 4294967296 and mem[_119 + 128 len 4], 0 + (32 * mem[_119 + mem[_119 + 128 len 4], 0 + 128]) + 32 <= return_data.size
            mem[_119 + ceil32(return_data.size) + 128] = mem[_119 + mem[_119 + 128 len 4], 0 + 128]
            _521 = mem[_119 + _427 + 128]
            idx = 0
            while idx < 32 * _521:
                mem[idx + _119 + ceil32(return_data.size) + 160] = mem[idx + _119 + _427 + 160]
                idx = idx + 32
                continue 
            mem[64] = (32 * _521) + _119 + ceil32(return_data.size) + 160
            require mem[_119 + ceil32(return_data.size) + 128] - 1 < mem[_119 + ceil32(return_data.size) + 128]
            if mem[(32 * mem[_119 + ceil32(return_data.size) + 128] - 1) + _119 + ceil32(return_data.size) + 160] <= s:
                t = floor32(_179) + 1
                s = s
                continue 
            t = floor32(_179) + 1
            s = mem[(32 * mem[_119 + ceil32(return_data.size) + 128] - 1) + _119 + ceil32(return_data.size) + 160]
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
                _473 = mem[64]
                mem[mem[64]] = 3
                mem[64] = mem[64] + 128
                require 0 < mem[_473]
                mem[_473 + 32] = 0x49d68029688eabf473097a2fc38ef61633a3c7a
                require 1 < mem[_473]
                mem[_473 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                require 2 < mem[_473]
                mem[_473 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                mem[_473 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_473 + 132] = s
                mem[_473 + 164] = 64
                mem[_473 + 196] = mem[_473]
                u = 0
                while u < 32 * mem[_473]:
                    mem[u + _473 + 228] = mem[u + _473 + 32]
                    u = u + 32
                    continue 
                require ext_code.size(0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52)
                staticcall 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52.getAmountsOut(uint256 rg1, address[] rg2) with:
                        gas gas_remaining wei
                       args s, 64, mem[_473 + 196 len (32 * mem[_473]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_473 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _473 + ceil32(return_data.size) + 128
                require return_data.size >= 32
                _1155 = mem[_473 + 128 len 4], Mask(224, 32, s) >> 32
                require mem[_473 + 128 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                require mem[_473 + 128 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                require mem[_473 + mem[_473 + 128 len 4], Mask(224, 32, s) >> 32 + 128] <= 4294967296 and mem[_473 + 128 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_473 + mem[_473 + 128 len 4], Mask(224, 32, s) >> 32 + 128]) + 32 <= return_data.size
                mem[_473 + ceil32(return_data.size) + 128] = mem[_473 + mem[_473 + 128 len 4], Mask(224, 32, s) >> 32 + 128]
                _1213 = mem[_473 + _1155 + 128]
                s = 0
                while s < 32 * _1213:
                    mem[s + _473 + ceil32(return_data.size) + 160] = mem[s + _473 + _1155 + 160]
                    s = s + 32
                    continue 
                mem[64] = (32 * _1213) + _473 + ceil32(return_data.size) + 160
                require mem[_473 + ceil32(return_data.size) + 128] - 1 < mem[_473 + ceil32(return_data.size) + 128]
                if mem[(32 * mem[_473 + ceil32(return_data.size) + 128] - 1) + _473 + ceil32(return_data.size) + 160] <= t:
                    idx = idx + 1
                    t = t
                    continue 
                idx = idx + 1
                t = mem[(32 * mem[_473 + ceil32(return_data.size) + 128] - 1) + _473 + ceil32(return_data.size) + 160]
                continue 
            if 3 == idx:
                _515 = mem[64]
                mem[mem[64]] = 3
                mem[64] = mem[64] + 128
                require 0 < mem[_515]
                mem[_515 + 32] = 0x49d68029688eabf473097a2fc38ef61633a3c7a
                require 1 < mem[_515]
                mem[_515 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                require 2 < mem[_515]
                mem[_515 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                mem[_515 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_515 + 132] = s
                mem[_515 + 164] = 64
                mem[_515 + 196] = mem[_515]
                u = 0
                while u < 32 * mem[_515]:
                    mem[u + _515 + 228] = mem[u + _515 + 32]
                    u = u + 32
                    continue 
                require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c29.getAmountsOut(uint256 rg1, address[] rg2) with:
                        gas gas_remaining wei
                       args s, 64, mem[_515 + 196 len (32 * mem[_515]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_515 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _515 + ceil32(return_data.size) + 128
                require return_data.size >= 32
                _1153 = mem[_515 + 128 len 4], Mask(224, 32, s) >> 32
                require mem[_515 + 128 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                require mem[_515 + 128 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                require mem[_515 + mem[_515 + 128 len 4], Mask(224, 32, s) >> 32 + 128] <= 4294967296 and mem[_515 + 128 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_515 + mem[_515 + 128 len 4], Mask(224, 32, s) >> 32 + 128]) + 32 <= return_data.size
                mem[_515 + ceil32(return_data.size) + 128] = mem[_515 + mem[_515 + 128 len 4], Mask(224, 32, s) >> 32 + 128]
                _1212 = mem[_515 + _1153 + 128]
                s = 0
                while s < 32 * _1212:
                    mem[s + _515 + ceil32(return_data.size) + 160] = mem[s + _515 + _1153 + 160]
                    s = s + 32
                    continue 
                mem[64] = (32 * _1212) + _515 + ceil32(return_data.size) + 160
                require mem[_515 + ceil32(return_data.size) + 128] - 1 < mem[_515 + ceil32(return_data.size) + 128]
                if mem[(32 * mem[_515 + ceil32(return_data.size) + 128] - 1) + _515 + ceil32(return_data.size) + 160] <= t:
                    idx = idx + 1
                    t = t
                    continue 
                idx = idx + 1
                t = mem[(32 * mem[_515 + ceil32(return_data.size) + 128] - 1) + _515 + ceil32(return_data.size) + 160]
                continue 
            if idx != 4:
                if s <= t:
                    idx = idx + 1
                    t = t
                    continue 
                idx = idx + 1
                t = s
                continue 
            _513 = mem[64]
            mem[mem[64]] = 3
            mem[64] = mem[64] + 128
            require 0 < mem[_513]
            mem[_513 + 32] = 0x49d68029688eabf473097a2fc38ef61633a3c7a
            require 1 < mem[_513]
            mem[_513 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
            require 2 < mem[_513]
            mem[_513 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
            mem[_513 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[_513 + 132] = s
            mem[_513 + 164] = 64
            mem[_513 + 196] = mem[_513]
            _663 = mem[_513]
            u = 0
            while u < 32 * mem[_513]:
                mem[u + _513 + 228] = mem[u + _513 + 32]
                u = u + 32
                continue 
            require ext_code.size(0x7b17021fcb7bc888641dc3bedfed3734fcaf2c87)
            staticcall 0x7b17021fcb7bc888641dc3bedfed3734fcaf2c87.getAmountsOut(uint256 rg1, address[] rg2) with:
                    gas gas_remaining wei
                   args s, 64, mem[_513 + 196 len (32 * mem[_513]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[_513 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = _513 + ceil32(return_data.size) + 128
            require return_data.size >= 32
            _1151 = mem[_513 + 128 len 4], Mask(224, 32, s) >> 32
            require mem[_513 + 128 len 4], Mask(224, 32, s) >> 32 <= 4294967296
            require mem[_513 + 128 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
            require mem[_513 + mem[_513 + 128 len 4], Mask(224, 32, s) >> 32 + 128] <= 4294967296 and mem[_513 + 128 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_513 + mem[_513 + 128 len 4], Mask(224, 32, s) >> 32 + 128]) + 32 <= return_data.size
            mem[_513 + ceil32(return_data.size) + 128] = mem[_513 + mem[_513 + 128 len 4], Mask(224, 32, s) >> 32 + 128]
            _1211 = mem[_513 + _1151 + 128]
            idx = 0
            while idx < 32 * _1211:
                mem[idx + _513 + ceil32(return_data.size) + 160] = mem[idx + _513 + _1151 + 160]
                idx = idx + 32
                continue 
            mem[64] = (32 * _1211) + _513 + ceil32(return_data.size) + 160
            require mem[_513 + ceil32(return_data.size) + 128] - 1 < mem[_513 + ceil32(return_data.size) + 128]
            if mem[(32 * mem[_513 + ceil32(return_data.size) + 128] - 1) + _513 + ceil32(return_data.size) + 160] <= t:
                u = floor32(_663) + 1
                t = t
                continue 
            u = floor32(_663) + 1
            t = mem[(32 * mem[_513 + ceil32(return_data.size) + 128] - 1) + _513 + ceil32(return_data.size) + 160]
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
                _91 = mem[64]
                mem[mem[64]] = 3
                mem[64] = mem[64] + 128
                require 0 < mem[_91]
                mem[_91 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                require 1 < mem[_91]
                mem[_91 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                require 2 < mem[_91]
                mem[_91 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                mem[_91 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_91 + 132] = 10^6 * sub_7d0b6809
                mem[_91 + 164] = 64
                mem[_91 + 196] = mem[_91]
                t = 0
                while t < 32 * mem[_91]:
                    mem[t + _91 + 228] = mem[t + _91 + 32]
                    t = t + 32
                    continue 
                require ext_code.size(0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52)
                staticcall 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52.getAmountsOut(uint256 rg1, address[] rg2) with:
                        gas gas_remaining wei
                       args 10^6 * sub_7d0b6809, 64, mem[_91 + 196 len (32 * mem[_91]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_91 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _91 + ceil32(return_data.size) + 128
                require return_data.size >= 32
                _419 = mem[_91 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32
                require mem[_91 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 <= 4294967296
                require mem[_91 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 32 <= return_data.size
                require mem[_91 + mem[_91 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 128] <= 4294967296 and mem[_91 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + (32 * mem[_91 + mem[_91 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 128]) + 32 <= return_data.size
                mem[_91 + ceil32(return_data.size) + 128] = mem[_91 + mem[_91 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 128]
                _501 = mem[_91 + _419 + 128]
                t = 0
                while t < 32 * _501:
                    mem[t + _91 + ceil32(return_data.size) + 160] = mem[t + _91 + _419 + 160]
                    t = t + 32
                    continue 
                mem[64] = (32 * _501) + _91 + ceil32(return_data.size) + 160
                require mem[_91 + ceil32(return_data.size) + 128] - 1 < mem[_91 + ceil32(return_data.size) + 128]
                if mem[(32 * mem[_91 + ceil32(return_data.size) + 128] - 1) + _91 + ceil32(return_data.size) + 160] <= s:
                    idx = idx + 1
                    s = s
                    continue 
                idx = idx + 1
                s = mem[(32 * mem[_91 + ceil32(return_data.size) + 128] - 1) + _91 + ceil32(return_data.size) + 160]
                continue 
            if 3 == idx:
                _109 = mem[64]
                mem[mem[64]] = 3
                mem[64] = mem[64] + 128
                require 0 < mem[_109]
                mem[_109 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                require 1 < mem[_109]
                mem[_109 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                require 2 < mem[_109]
                mem[_109 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                mem[_109 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_109 + 132] = 10^6 * sub_7d0b6809
                mem[_109 + 164] = 64
                mem[_109 + 196] = mem[_109]
                t = 0
                while t < 32 * mem[_109]:
                    mem[t + _109 + 228] = mem[t + _109 + 32]
                    t = t + 32
                    continue 
                require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c29.getAmountsOut(uint256 rg1, address[] rg2) with:
                        gas gas_remaining wei
                       args 10^6 * sub_7d0b6809, 64, mem[_109 + 196 len (32 * mem[_109]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_109 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _109 + ceil32(return_data.size) + 128
                require return_data.size >= 32
                _417 = mem[_109 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32
                require mem[_109 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 <= 4294967296
                require mem[_109 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 32 <= return_data.size
                require mem[_109 + mem[_109 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 128] <= 4294967296 and mem[_109 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + (32 * mem[_109 + mem[_109 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 128]) + 32 <= return_data.size
                mem[_109 + ceil32(return_data.size) + 128] = mem[_109 + mem[_109 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 128]
                _500 = mem[_109 + _417 + 128]
                t = 0
                while t < 32 * _500:
                    mem[t + _109 + ceil32(return_data.size) + 160] = mem[t + _109 + _417 + 160]
                    t = t + 32
                    continue 
                mem[64] = (32 * _500) + _109 + ceil32(return_data.size) + 160
                require mem[_109 + ceil32(return_data.size) + 128] - 1 < mem[_109 + ceil32(return_data.size) + 128]
                if mem[(32 * mem[_109 + ceil32(return_data.size) + 128] - 1) + _109 + ceil32(return_data.size) + 160] <= s:
                    idx = idx + 1
                    s = s
                    continue 
                idx = idx + 1
                s = mem[(32 * mem[_109 + ceil32(return_data.size) + 128] - 1) + _109 + ceil32(return_data.size) + 160]
                continue 
            if idx != 4:
                if 10^6 * sub_7d0b6809 <= s:
                    idx = idx + 1
                    s = s
                    continue 
                idx = idx + 1
                s = 10^6 * sub_7d0b6809
                continue 
            _107 = mem[64]
            mem[mem[64]] = 3
            mem[64] = mem[64] + 128
            require 0 < mem[_107]
            mem[_107 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
            require 1 < mem[_107]
            mem[_107 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
            require 2 < mem[_107]
            mem[_107 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
            mem[_107 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[_107 + 132] = 10^6 * sub_7d0b6809
            mem[_107 + 164] = 64
            mem[_107 + 196] = mem[_107]
            _169 = mem[_107]
            t = 0
            while t < 32 * mem[_107]:
                mem[t + _107 + 228] = mem[t + _107 + 32]
                t = t + 32
                continue 
            require ext_code.size(0x7b17021fcb7bc888641dc3bedfed3734fcaf2c87)
            staticcall 0x7b17021fcb7bc888641dc3bedfed3734fcaf2c87.getAmountsOut(uint256 rg1, address[] rg2) with:
                    gas gas_remaining wei
                   args 10^6 * sub_7d0b6809, 64, mem[_107 + 196 len (32 * mem[_107]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[_107 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = _107 + ceil32(return_data.size) + 128
            require return_data.size >= 32
            _415 = mem[_107 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32
            require mem[_107 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 <= 4294967296
            require mem[_107 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 32 <= return_data.size
            require mem[_107 + mem[_107 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 128] <= 4294967296 and mem[_107 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + (32 * mem[_107 + mem[_107 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 128]) + 32 <= return_data.size
            mem[_107 + ceil32(return_data.size) + 128] = mem[_107 + mem[_107 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 128]
            _499 = mem[_107 + _415 + 128]
            idx = 0
            while idx < 32 * _499:
                mem[idx + _107 + ceil32(return_data.size) + 160] = mem[idx + _107 + _415 + 160]
                idx = idx + 32
                continue 
            mem[64] = (32 * _499) + _107 + ceil32(return_data.size) + 160
            require mem[_107 + ceil32(return_data.size) + 128] - 1 < mem[_107 + ceil32(return_data.size) + 128]
            if mem[(32 * mem[_107 + ceil32(return_data.size) + 128] - 1) + _107 + ceil32(return_data.size) + 160] <= s:
                t = floor32(_169) + 1
                s = s
                continue 
            t = floor32(_169) + 1
            s = mem[(32 * mem[_107 + ceil32(return_data.size) + 128] - 1) + _107 + ceil32(return_data.size) + 160]
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
                _455 = mem[64]
                mem[mem[64]] = 3
                mem[64] = mem[64] + 128
                require 0 < mem[_455]
                mem[_455 + 32] = 0x49d68029688eabf473097a2fc38ef61633a3c7a
                require 1 < mem[_455]
                mem[_455 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                require 2 < mem[_455]
                mem[_455 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                mem[_455 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_455 + 132] = s
                mem[_455 + 164] = 64
                mem[_455 + 196] = mem[_455]
                u = 0
                while u < 32 * mem[_455]:
                    mem[u + _455 + 228] = mem[u + _455 + 32]
                    u = u + 32
                    continue 
                require ext_code.size(0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52)
                staticcall 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52.getAmountsOut(uint256 rg1, address[] rg2) with:
                        gas gas_remaining wei
                       args s, 64, mem[_455 + 196 len (32 * mem[_455]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_455 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _455 + ceil32(return_data.size) + 128
                require return_data.size >= 32
                _1131 = mem[_455 + 128 len 4], Mask(224, 32, s) >> 32
                require mem[_455 + 128 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                require mem[_455 + 128 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                require mem[_455 + mem[_455 + 128 len 4], Mask(224, 32, s) >> 32 + 128] <= 4294967296 and mem[_455 + 128 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_455 + mem[_455 + 128 len 4], Mask(224, 32, s) >> 32 + 128]) + 32 <= return_data.size
                mem[_455 + ceil32(return_data.size) + 128] = mem[_455 + mem[_455 + 128 len 4], Mask(224, 32, s) >> 32 + 128]
                _1201 = mem[_455 + _1131 + 128]
                s = 0
                while s < 32 * _1201:
                    mem[s + _455 + ceil32(return_data.size) + 160] = mem[s + _455 + _1131 + 160]
                    s = s + 32
                    continue 
                mem[64] = (32 * _1201) + _455 + ceil32(return_data.size) + 160
                require mem[_455 + ceil32(return_data.size) + 128] - 1 < mem[_455 + ceil32(return_data.size) + 128]
                if mem[(32 * mem[_455 + ceil32(return_data.size) + 128] - 1) + _455 + ceil32(return_data.size) + 160] <= t:
                    idx = idx + 1
                    t = t
                    continue 
                idx = idx + 1
                t = mem[(32 * mem[_455 + ceil32(return_data.size) + 128] - 1) + _455 + ceil32(return_data.size) + 160]
                continue 
            if 3 == idx:
                _493 = mem[64]
                mem[mem[64]] = 3
                mem[64] = mem[64] + 128
                require 0 < mem[_493]
                mem[_493 + 32] = 0x49d68029688eabf473097a2fc38ef61633a3c7a
                require 1 < mem[_493]
                mem[_493 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                require 2 < mem[_493]
                mem[_493 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                mem[_493 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_493 + 132] = s
                mem[_493 + 164] = 64
                mem[_493 + 196] = mem[_493]
                u = 0
                while u < 32 * mem[_493]:
                    mem[u + _493 + 228] = mem[u + _493 + 32]
                    u = u + 32
                    continue 
                require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c29.getAmountsOut(uint256 rg1, address[] rg2) with:
                        gas gas_remaining wei
                       args s, 64, mem[_493 + 196 len (32 * mem[_493]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_493 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _493 + ceil32(return_data.size) + 128
                require return_data.size >= 32
                _1129 = mem[_493 + 128 len 4], Mask(224, 32, s) >> 32
                require mem[_493 + 128 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                require mem[_493 + 128 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                require mem[_493 + mem[_493 + 128 len 4], Mask(224, 32, s) >> 32 + 128] <= 4294967296 and mem[_493 + 128 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_493 + mem[_493 + 128 len 4], Mask(224, 32, s) >> 32 + 128]) + 32 <= return_data.size
                mem[_493 + ceil32(return_data.size) + 128] = mem[_493 + mem[_493 + 128 len 4], Mask(224, 32, s) >> 32 + 128]
                _1200 = mem[_493 + _1129 + 128]
                s = 0
                while s < 32 * _1200:
                    mem[s + _493 + ceil32(return_data.size) + 160] = mem[s + _493 + _1129 + 160]
                    s = s + 32
                    continue 
                mem[64] = (32 * _1200) + _493 + ceil32(return_data.size) + 160
                require mem[_493 + ceil32(return_data.size) + 128] - 1 < mem[_493 + ceil32(return_data.size) + 128]
                if mem[(32 * mem[_493 + ceil32(return_data.size) + 128] - 1) + _493 + ceil32(return_data.size) + 160] <= t:
                    idx = idx + 1
                    t = t
                    continue 
                idx = idx + 1
                t = mem[(32 * mem[_493 + ceil32(return_data.size) + 128] - 1) + _493 + ceil32(return_data.size) + 160]
                continue 
            if idx != 4:
                if s <= t:
                    idx = idx + 1
                    t = t
                    continue 
                idx = idx + 1
                t = s
                continue 
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
            _637 = mem[_491]
            u = 0
            while u < 32 * mem[_491]:
                mem[u + _491 + 228] = mem[u + _491 + 32]
                u = u + 32
                continue 
            require ext_code.size(0x7b17021fcb7bc888641dc3bedfed3734fcaf2c87)
            staticcall 0x7b17021fcb7bc888641dc3bedfed3734fcaf2c87.getAmountsOut(uint256 rg1, address[] rg2) with:
                    gas gas_remaining wei
                   args s, 64, mem[_491 + 196 len (32 * mem[_491]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[_491 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = _491 + ceil32(return_data.size) + 128
            require return_data.size >= 32
            _1127 = mem[_491 + 128 len 4], Mask(224, 32, s) >> 32
            require mem[_491 + 128 len 4], Mask(224, 32, s) >> 32 <= 4294967296
            require mem[_491 + 128 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
            require mem[_491 + mem[_491 + 128 len 4], Mask(224, 32, s) >> 32 + 128] <= 4294967296 and mem[_491 + 128 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_491 + mem[_491 + 128 len 4], Mask(224, 32, s) >> 32 + 128]) + 32 <= return_data.size
            mem[_491 + ceil32(return_data.size) + 128] = mem[_491 + mem[_491 + 128 len 4], Mask(224, 32, s) >> 32 + 128]
            _1199 = mem[_491 + _1127 + 128]
            idx = 0
            while idx < 32 * _1199:
                mem[idx + _491 + ceil32(return_data.size) + 160] = mem[idx + _491 + _1127 + 160]
                idx = idx + 32
                continue 
            mem[64] = (32 * _1199) + _491 + ceil32(return_data.size) + 160
            require mem[_491 + ceil32(return_data.size) + 128] - 1 < mem[_491 + ceil32(return_data.size) + 128]
            if mem[(32 * mem[_491 + ceil32(return_data.size) + 128] - 1) + _491 + ceil32(return_data.size) + 160] <= t:
                u = floor32(_637) + 1
                t = t
                continue 
            u = floor32(_637) + 1
            t = mem[(32 * mem[_491 + ceil32(return_data.size) + 128] - 1) + _491 + ceil32(return_data.size) + 160]
            continue 
}



}
