contract main {




// =====================  Runtime code  =====================


#
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

function sub_94d7721f(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    if not sub_7d0b6809:
        idx = 0
        s = 0
        while idx < 13:
            if not idx:
                mem[mem[64] + 4] = 2
                mem[mem[64] + 36] = 0
                mem[mem[64] + 68] = 0
                require ext_code.size(0x92d5ebf3593a92888c25c0abef126583d4b5312e)
                staticcall 0x92d5ebf3593a92888c25c0abef126583d4b5312e.get_dy_underlying(int128 arg1, int128 arg2, uint256 arg3) with:
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
                staticcall 0x83e5f18da720119ff363cf63417628eb0e9fd523.get_dy(int128 arg1, int128 arg2, uint256 arg3) with:
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
                _169 = mem[64]
                mem[mem[64]] = 3
                mem[64] = mem[64] + 128
                require 0 < mem[_169]
                mem[_169 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                require 1 < mem[_169]
                mem[_169 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c
                require 2 < mem[_169]
                mem[_169 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                mem[_169 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_169 + 132] = 0
                mem[_169 + 164] = 64
                mem[_169 + 196] = mem[_169]
                t = 0
                while t < 32 * mem[_169]:
                    mem[t + _169 + 228] = mem[t + _169 + 32]
                    t = t + 32
                    continue 
                require ext_code.size(0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52)
                staticcall 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args 0, 64, mem[_169 + 196 len (32 * mem[_169]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_169 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _169 + ceil32(return_data.size) + 128
                require return_data.size >= 32
                _2779 = mem[_169 + 128 len 4], 0
                require mem[_169 + 128 len 4], 0 <= 4294967296
                require mem[_169 + 128 len 4], 0 + 32 <= return_data.size
                require mem[_169 + mem[_169 + 128 len 4], 0 + 128] <= 4294967296 and mem[_169 + 128 len 4], 0 + (32 * mem[_169 + mem[_169 + 128 len 4], 0 + 128]) + 32 <= return_data.size
                mem[_169 + ceil32(return_data.size) + 128] = mem[_169 + mem[_169 + 128 len 4], 0 + 128]
                _3113 = mem[_169 + _2779 + 128]
                t = 0
                while t < 32 * _3113:
                    mem[t + _169 + ceil32(return_data.size) + 160] = mem[t + _169 + _2779 + 160]
                    t = t + 32
                    continue 
                mem[64] = (32 * _3113) + _169 + ceil32(return_data.size) + 160
                require mem[_169 + ceil32(return_data.size) + 128] - 1 < mem[_169 + ceil32(return_data.size) + 128]
                if mem[(32 * mem[_169 + ceil32(return_data.size) + 128] - 1) + _169 + ceil32(return_data.size) + 160] <= s:
                    idx = idx + 1
                    s = s
                    continue 
                idx = idx + 1
                s = mem[(32 * mem[_169 + ceil32(return_data.size) + 128] - 1) + _169 + ceil32(return_data.size) + 160]
                continue 
            if 3 == idx:
                if 2 == idx:
                    _252 = mem[64]
                    mem[mem[64]] = 3
                    mem[64] = mem[64] + 128
                    require 0 < mem[_252]
                    mem[_252 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    require 1 < mem[_252]
                    mem[_252 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c
                    require 2 < mem[_252]
                    mem[_252 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    mem[_252 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_252 + 132] = 0
                    mem[_252 + 164] = 64
                    mem[_252 + 196] = mem[_252]
                    t = 0
                    while t < 32 * mem[_252]:
                        mem[t + _252 + 228] = mem[t + _252 + 32]
                        t = t + 32
                        continue 
                    require ext_code.size(0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52)
                    staticcall 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args 0, 64, mem[_252 + 196 len (32 * mem[_252]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_252 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _252 + ceil32(return_data.size) + 128
                    require return_data.size >= 32
                    _2825 = mem[_252 + 128 len 4], 0
                    require mem[_252 + 128 len 4], 0 <= 4294967296
                    require mem[_252 + 128 len 4], 0 + 32 <= return_data.size
                    require mem[_252 + mem[_252 + 128 len 4], 0 + 128] <= 4294967296 and mem[_252 + 128 len 4], 0 + (32 * mem[_252 + mem[_252 + 128 len 4], 0 + 128]) + 32 <= return_data.size
                    mem[_252 + ceil32(return_data.size) + 128] = mem[_252 + mem[_252 + 128 len 4], 0 + 128]
                    _3136 = mem[_252 + _2825 + 128]
                    t = 0
                    while t < 32 * _3136:
                        mem[t + _252 + ceil32(return_data.size) + 160] = mem[t + _252 + _2825 + 160]
                        t = t + 32
                        continue 
                    mem[64] = (32 * _3136) + _252 + ceil32(return_data.size) + 160
                    require mem[_252 + ceil32(return_data.size) + 128] - 1 < mem[_252 + ceil32(return_data.size) + 128]
                    if mem[(32 * mem[_252 + ceil32(return_data.size) + 128] - 1) + _252 + ceil32(return_data.size) + 160] <= s:
                        idx = idx + 1
                        s = s
                        continue 
                    idx = idx + 1
                    s = mem[(32 * mem[_252 + ceil32(return_data.size) + 128] - 1) + _252 + ceil32(return_data.size) + 160]
                    continue 
                if idx != 3:
                    _248 = mem[64]
                    mem[mem[64]] = 3
                    mem[64] = mem[64] + 128
                    require 0 < mem[_248]
                    mem[_248 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    require 1 < mem[_248]
                    mem[_248 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c
                    require 2 < mem[_248]
                    mem[_248 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    mem[_248 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_248 + 132] = 0
                    mem[_248 + 164] = 64
                    mem[_248 + 196] = mem[_248]
                    t = 0
                    while t < 32 * mem[_248]:
                        mem[t + _248 + 228] = mem[t + _248 + 32]
                        t = t + 32
                        continue 
                    require ext_code.size(0)
                    staticcall 0x0.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args 0, 64, mem[_248 + 196 len (32 * mem[_248]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_248 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _248 + ceil32(return_data.size) + 128
                    require return_data.size >= 32
                    _2821 = mem[_248 + 128 len 4], 0
                    require mem[_248 + 128 len 4], 0 <= 4294967296
                    require mem[_248 + 128 len 4], 0 + 32 <= return_data.size
                    require mem[_248 + mem[_248 + 128 len 4], 0 + 128] <= 4294967296 and mem[_248 + 128 len 4], 0 + (32 * mem[_248 + mem[_248 + 128 len 4], 0 + 128]) + 32 <= return_data.size
                    mem[_248 + ceil32(return_data.size) + 128] = mem[_248 + mem[_248 + 128 len 4], 0 + 128]
                    _3134 = mem[_248 + _2821 + 128]
                    t = 0
                    while t < 32 * _3134:
                        mem[t + _248 + ceil32(return_data.size) + 160] = mem[t + _248 + _2821 + 160]
                        t = t + 32
                        continue 
                    mem[64] = (32 * _3134) + _248 + ceil32(return_data.size) + 160
                    require mem[_248 + ceil32(return_data.size) + 128] - 1 < mem[_248 + ceil32(return_data.size) + 128]
                    if mem[(32 * mem[_248 + ceil32(return_data.size) + 128] - 1) + _248 + ceil32(return_data.size) + 160] <= s:
                        idx = idx + 1
                        s = s
                        continue 
                    idx = idx + 1
                    s = mem[(32 * mem[_248 + ceil32(return_data.size) + 128] - 1) + _248 + ceil32(return_data.size) + 160]
                    continue 
                _334 = mem[64]
                mem[mem[64]] = 3
                mem[64] = mem[64] + 128
                require 0 < mem[_334]
                mem[_334 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                require 1 < mem[_334]
                mem[_334 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c
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
                require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c)
                staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args 0, 64, mem[_334 + 196 len (32 * mem[_334]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_334 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _334 + ceil32(return_data.size) + 128
                require return_data.size >= 32
                _2823 = mem[_334 + 128 len 4], 0
                require mem[_334 + 128 len 4], 0 <= 4294967296
                require mem[_334 + 128 len 4], 0 + 32 <= return_data.size
                require mem[_334 + mem[_334 + 128 len 4], 0 + 128] <= 4294967296 and mem[_334 + 128 len 4], 0 + (32 * mem[_334 + mem[_334 + 128 len 4], 0 + 128]) + 32 <= return_data.size
                mem[_334 + ceil32(return_data.size) + 128] = mem[_334 + mem[_334 + 128 len 4], 0 + 128]
                _3135 = mem[_334 + _2823 + 128]
                t = 0
                while t < 32 * _3135:
                    mem[t + _334 + ceil32(return_data.size) + 160] = mem[t + _334 + _2823 + 160]
                    t = t + 32
                    continue 
                mem[64] = (32 * _3135) + _334 + ceil32(return_data.size) + 160
                require mem[_334 + ceil32(return_data.size) + 128] - 1 < mem[_334 + ceil32(return_data.size) + 128]
                if mem[(32 * mem[_334 + ceil32(return_data.size) + 128] - 1) + _334 + ceil32(return_data.size) + 160] <= s:
                    idx = idx + 1
                    s = s
                    continue 
                idx = idx + 1
                s = mem[(32 * mem[_334 + ceil32(return_data.size) + 128] - 1) + _334 + ceil32(return_data.size) + 160]
                continue 
            if 4 == idx:
                mem[mem[64] + 4] = 0
                mem[mem[64] + 36] = 2
                mem[mem[64] + 68] = 0
                require ext_code.size(0x3a1659ddcf2339be3aea159ca010979fb49155ff)
                staticcall 0x3a1659ddcf2339be3aea159ca010979fb49155ff.get_dy(uint256 arg1, uint256 arg2, uint256 arg3) with:
                        gas gas_remaining wei
                       args 0, 2, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                _490 = mem[64]
                mem[mem[64]] = 3
                mem[64] = mem[64] + 128
                require 0 < mem[_490]
                mem[_490 + 32] = 0x74b23882a30290451a17c44f4f05243b6b58c76d
                require 1 < mem[_490]
                mem[_490 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c
                require 2 < mem[_490]
                mem[_490 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                mem[_490 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_490 + 132] = ext_call.return_data[0]
                mem[_490 + 164] = 64
                mem[_490 + 196] = mem[_490]
                t = 0
                while t < 32 * mem[_490]:
                    mem[t + _490 + 228] = mem[t + _490 + 32]
                    t = t + 32
                    continue 
                require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c)
                staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args ext_call.return_data[0], 64, mem[_490 + 196 len (32 * mem[_490]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_490 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _490 + ceil32(return_data.size) + 128
                require return_data.size >= 32
                _2817 = mem[_490 + 128 len 4], ext_call.return_data[0 len 28]
                require mem[_490 + 128 len 4], ext_call.return_data[0 len 28] <= 4294967296
                require mem[_490 + 128 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                require mem[_490 + mem[_490 + 128 len 4], ext_call.return_data[0 len 28] + 128] <= 4294967296 and mem[_490 + 128 len 4], ext_call.return_data[0 len 28] + (32 * mem[_490 + mem[_490 + 128 len 4], ext_call.return_data[0 len 28] + 128]) + 32 <= return_data.size
                mem[_490 + ceil32(return_data.size) + 128] = mem[_490 + mem[_490 + 128 len 4], ext_call.return_data[0 len 28] + 128]
                _3132 = mem[_490 + _2817 + 128]
                t = 0
                while t < 32 * _3132:
                    mem[t + _490 + ceil32(return_data.size) + 160] = mem[t + _490 + _2817 + 160]
                    t = t + 32
                    continue 
                mem[64] = (32 * _3132) + _490 + ceil32(return_data.size) + 160
                require mem[_490 + ceil32(return_data.size) + 128] - 1 < mem[_490 + ceil32(return_data.size) + 128]
                if mem[(32 * mem[_490 + ceil32(return_data.size) + 128] - 1) + _490 + ceil32(return_data.size) + 160] <= s:
                    idx = idx + 1
                    s = s
                    continue 
                idx = idx + 1
                s = mem[(32 * mem[_490 + ceil32(return_data.size) + 128] - 1) + _490 + ceil32(return_data.size) + 160]
                continue 
            if idx != 5:
                if 6 == idx:
                    _652 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    require 0 < mem[_652]
                    mem[_652 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    require 1 < mem[_652]
                    mem[_652 + 64] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    mem[_652 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_652 + 100] = 0
                    mem[_652 + 132] = 64
                    mem[_652 + 164] = mem[_652]
                    t = 0
                    while t < 32 * mem[_652]:
                        mem[t + _652 + 196] = mem[t + _652 + 32]
                        t = t + 32
                        continue 
                    require ext_code.size(0x845e76a8691423fbc4ecb8dd77556cb61c09ee25)
                    staticcall 0x845e76a8691423fbc4ecb8dd77556cb61c09ee25.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args 0, 64, mem[_652 + 164 len (32 * mem[_652]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_652 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _652 + ceil32(return_data.size) + 96
                    require return_data.size >= 32
                    _2781 = mem[_652 + 96 len 4], 0
                    require mem[_652 + 96 len 4], 0 <= 4294967296
                    require mem[_652 + 96 len 4], 0 + 32 <= return_data.size
                    require mem[_652 + mem[_652 + 96 len 4], 0 + 96] <= 4294967296 and mem[_652 + 96 len 4], 0 + (32 * mem[_652 + mem[_652 + 96 len 4], 0 + 96]) + 32 <= return_data.size
                    mem[_652 + ceil32(return_data.size) + 96] = mem[_652 + mem[_652 + 96 len 4], 0 + 96]
                    _3114 = mem[_652 + _2781 + 96]
                    t = 0
                    while t < 32 * _3114:
                        mem[t + _652 + ceil32(return_data.size) + 128] = mem[t + _652 + _2781 + 128]
                        t = t + 32
                        continue 
                    mem[64] = (32 * _3114) + _652 + ceil32(return_data.size) + 128
                    require mem[_652 + ceil32(return_data.size) + 96] - 1 < mem[_652 + ceil32(return_data.size) + 96]
                    if mem[(32 * mem[_652 + ceil32(return_data.size) + 96] - 1) + _652 + ceil32(return_data.size) + 128] <= s:
                        idx = idx + 1
                        s = s
                        continue 
                    idx = idx + 1
                    s = mem[(32 * mem[_652 + ceil32(return_data.size) + 96] - 1) + _652 + ceil32(return_data.size) + 128]
                    continue 
                if 7 == idx:
                    if 6 == idx:
                        _698 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        require 0 < mem[_698]
                        mem[_698 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                        require 1 < mem[_698]
                        mem[_698 + 64] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                        mem[_698 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[_698 + 100] = 0
                        mem[_698 + 132] = 64
                        mem[_698 + 164] = mem[_698]
                        t = 0
                        while t < 32 * mem[_698]:
                            mem[t + _698 + 196] = mem[t + _698 + 32]
                            t = t + 32
                            continue 
                        require ext_code.size(0x845e76a8691423fbc4ecb8dd77556cb61c09ee25)
                        staticcall 0x845e76a8691423fbc4ecb8dd77556cb61c09ee25.getAmountsOut(uint256 arg1, address[] arg2) with:
                                gas gas_remaining wei
                               args 0, 64, mem[_698 + 164 len (32 * mem[_698]) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_698 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = _698 + ceil32(return_data.size) + 96
                        require return_data.size >= 32
                        _2791 = mem[_698 + 96 len 4], 0
                        require mem[_698 + 96 len 4], 0 <= 4294967296
                        require mem[_698 + 96 len 4], 0 + 32 <= return_data.size
                        require mem[_698 + mem[_698 + 96 len 4], 0 + 96] <= 4294967296 and mem[_698 + 96 len 4], 0 + (32 * mem[_698 + mem[_698 + 96 len 4], 0 + 96]) + 32 <= return_data.size
                        mem[_698 + ceil32(return_data.size) + 96] = mem[_698 + mem[_698 + 96 len 4], 0 + 96]
                        _3119 = mem[_698 + _2791 + 96]
                        t = 0
                        while t < 32 * _3119:
                            mem[t + _698 + ceil32(return_data.size) + 128] = mem[t + _698 + _2791 + 128]
                            t = t + 32
                            continue 
                        mem[64] = (32 * _3119) + _698 + ceil32(return_data.size) + 128
                        require mem[_698 + ceil32(return_data.size) + 96] - 1 < mem[_698 + ceil32(return_data.size) + 96]
                        if mem[(32 * mem[_698 + ceil32(return_data.size) + 96] - 1) + _698 + ceil32(return_data.size) + 128] <= s:
                            idx = idx + 1
                            s = s
                            continue 
                        idx = idx + 1
                        s = mem[(32 * mem[_698 + ceil32(return_data.size) + 96] - 1) + _698 + ceil32(return_data.size) + 128]
                        continue 
                    if 7 == idx:
                        _766 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        require 0 < mem[_766]
                        mem[_766 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                        require 1 < mem[_766]
                        mem[_766 + 64] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                        mem[_766 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[_766 + 100] = 0
                        mem[_766 + 132] = 64
                        mem[_766 + 164] = mem[_766]
                        t = 0
                        while t < 32 * mem[_766]:
                            mem[t + _766 + 196] = mem[t + _766 + 32]
                            t = t + 32
                            continue 
                        require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c)
                        staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c.getAmountsOut(uint256 arg1, address[] arg2) with:
                                gas gas_remaining wei
                               args 0, 64, mem[_766 + 164 len (32 * mem[_766]) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_766 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = _766 + ceil32(return_data.size) + 96
                        require return_data.size >= 32
                        _2789 = mem[_766 + 96 len 4], 0
                        require mem[_766 + 96 len 4], 0 <= 4294967296
                        require mem[_766 + 96 len 4], 0 + 32 <= return_data.size
                        require mem[_766 + mem[_766 + 96 len 4], 0 + 96] <= 4294967296 and mem[_766 + 96 len 4], 0 + (32 * mem[_766 + mem[_766 + 96 len 4], 0 + 96]) + 32 <= return_data.size
                        mem[_766 + ceil32(return_data.size) + 96] = mem[_766 + mem[_766 + 96 len 4], 0 + 96]
                        _3118 = mem[_766 + _2789 + 96]
                        t = 0
                        while t < 32 * _3118:
                            mem[t + _766 + ceil32(return_data.size) + 128] = mem[t + _766 + _2789 + 128]
                            t = t + 32
                            continue 
                        mem[64] = (32 * _3118) + _766 + ceil32(return_data.size) + 128
                        require mem[_766 + ceil32(return_data.size) + 96] - 1 < mem[_766 + ceil32(return_data.size) + 96]
                        if mem[(32 * mem[_766 + ceil32(return_data.size) + 96] - 1) + _766 + ceil32(return_data.size) + 128] <= s:
                            idx = idx + 1
                            s = s
                            continue 
                        idx = idx + 1
                        s = mem[(32 * mem[_766 + ceil32(return_data.size) + 96] - 1) + _766 + ceil32(return_data.size) + 128]
                        continue 
                    if 8 == idx:
                        _862 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        require 0 < mem[_862]
                        mem[_862 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                        require 1 < mem[_862]
                        mem[_862 + 64] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                        mem[_862 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[_862 + 100] = 0
                        mem[_862 + 132] = 64
                        mem[_862 + 164] = mem[_862]
                        t = 0
                        while t < 32 * mem[_862]:
                            mem[t + _862 + 196] = mem[t + _862 + 32]
                            t = t + 32
                            continue 
                        require ext_code.size(0x6b3d631b87fe27af29efec61d2ab8ce4d621ccbf)
                        staticcall 0x6b3d631b87fe27af29efec61d2ab8ce4d621ccbf.getAmountsOut(uint256 arg1, address[] arg2) with:
                                gas gas_remaining wei
                               args 0, 64, mem[_862 + 164 len (32 * mem[_862]) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_862 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = _862 + ceil32(return_data.size) + 96
                        require return_data.size >= 32
                        _2787 = mem[_862 + 96 len 4], 0
                        require mem[_862 + 96 len 4], 0 <= 4294967296
                        require mem[_862 + 96 len 4], 0 + 32 <= return_data.size
                        require mem[_862 + mem[_862 + 96 len 4], 0 + 96] <= 4294967296 and mem[_862 + 96 len 4], 0 + (32 * mem[_862 + mem[_862 + 96 len 4], 0 + 96]) + 32 <= return_data.size
                        mem[_862 + ceil32(return_data.size) + 96] = mem[_862 + mem[_862 + 96 len 4], 0 + 96]
                        _3117 = mem[_862 + _2787 + 96]
                        t = 0
                        while t < 32 * _3117:
                            mem[t + _862 + ceil32(return_data.size) + 128] = mem[t + _862 + _2787 + 128]
                            t = t + 32
                            continue 
                        mem[64] = (32 * _3117) + _862 + ceil32(return_data.size) + 128
                        require mem[_862 + ceil32(return_data.size) + 96] - 1 < mem[_862 + ceil32(return_data.size) + 96]
                        if mem[(32 * mem[_862 + ceil32(return_data.size) + 96] - 1) + _862 + ceil32(return_data.size) + 128] <= s:
                            idx = idx + 1
                            s = s
                            continue 
                        idx = idx + 1
                        s = mem[(32 * mem[_862 + ceil32(return_data.size) + 96] - 1) + _862 + ceil32(return_data.size) + 128]
                        continue 
                    if idx != 9:
                        _860 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        require 0 < mem[_860]
                        mem[_860 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                        require 1 < mem[_860]
                        mem[_860 + 64] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                        mem[_860 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[_860 + 100] = 0
                        mem[_860 + 132] = 64
                        mem[_860 + 164] = mem[_860]
                        t = 0
                        while t < 32 * mem[_860]:
                            mem[t + _860 + 196] = mem[t + _860 + 32]
                            t = t + 32
                            continue 
                        require ext_code.size(0)
                        staticcall 0x0.getAmountsOut(uint256 arg1, address[] arg2) with:
                                gas gas_remaining wei
                               args 0, 64, mem[_860 + 164 len (32 * mem[_860]) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_860 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = _860 + ceil32(return_data.size) + 96
                        require return_data.size >= 32
                        _2783 = mem[_860 + 96 len 4], 0
                        require mem[_860 + 96 len 4], 0 <= 4294967296
                        require mem[_860 + 96 len 4], 0 + 32 <= return_data.size
                        require mem[_860 + mem[_860 + 96 len 4], 0 + 96] <= 4294967296 and mem[_860 + 96 len 4], 0 + (32 * mem[_860 + mem[_860 + 96 len 4], 0 + 96]) + 32 <= return_data.size
                        mem[_860 + ceil32(return_data.size) + 96] = mem[_860 + mem[_860 + 96 len 4], 0 + 96]
                        _3115 = mem[_860 + _2783 + 96]
                        t = 0
                        while t < 32 * _3115:
                            mem[t + _860 + ceil32(return_data.size) + 128] = mem[t + _860 + _2783 + 128]
                            t = t + 32
                            continue 
                        mem[64] = (32 * _3115) + _860 + ceil32(return_data.size) + 128
                        require mem[_860 + ceil32(return_data.size) + 96] - 1 < mem[_860 + ceil32(return_data.size) + 96]
                        if mem[(32 * mem[_860 + ceil32(return_data.size) + 96] - 1) + _860 + ceil32(return_data.size) + 128] <= s:
                            idx = idx + 1
                            s = s
                            continue 
                        idx = idx + 1
                        s = mem[(32 * mem[_860 + ceil32(return_data.size) + 96] - 1) + _860 + ceil32(return_data.size) + 128]
                        continue 
                    _979 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    require 0 < mem[_979]
                    mem[_979 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    require 1 < mem[_979]
                    mem[_979 + 64] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    mem[_979 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_979 + 100] = 0
                    mem[_979 + 132] = 64
                    mem[_979 + 164] = mem[_979]
                    t = 0
                    while t < 32 * mem[_979]:
                        mem[t + _979 + 196] = mem[t + _979 + 32]
                        t = t + 32
                        continue 
                    require ext_code.size(0x2724b9497b2cf3325c6be3ea430b3cec34b5ef2d)
                    staticcall 0x2724b9497b2cf3325c6be3ea430b3cec34b5ef2d.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args 0, 64, mem[_979 + 164 len (32 * mem[_979]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_979 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _979 + ceil32(return_data.size) + 96
                    require return_data.size >= 32
                    _2785 = mem[_979 + 96 len 4], 0
                    require mem[_979 + 96 len 4], 0 <= 4294967296
                    require mem[_979 + 96 len 4], 0 + 32 <= return_data.size
                    require mem[_979 + mem[_979 + 96 len 4], 0 + 96] <= 4294967296 and mem[_979 + 96 len 4], 0 + (32 * mem[_979 + mem[_979 + 96 len 4], 0 + 96]) + 32 <= return_data.size
                    mem[_979 + ceil32(return_data.size) + 96] = mem[_979 + mem[_979 + 96 len 4], 0 + 96]
                    _3116 = mem[_979 + _2785 + 96]
                    t = 0
                    while t < 32 * _3116:
                        mem[t + _979 + ceil32(return_data.size) + 128] = mem[t + _979 + _2785 + 128]
                        t = t + 32
                        continue 
                    mem[64] = (32 * _3116) + _979 + ceil32(return_data.size) + 128
                    require mem[_979 + ceil32(return_data.size) + 96] - 1 < mem[_979 + ceil32(return_data.size) + 96]
                    if mem[(32 * mem[_979 + ceil32(return_data.size) + 96] - 1) + _979 + ceil32(return_data.size) + 128] <= s:
                        idx = idx + 1
                        s = s
                        continue 
                    idx = idx + 1
                    s = mem[(32 * mem[_979 + ceil32(return_data.size) + 96] - 1) + _979 + ceil32(return_data.size) + 128]
                    continue 
                if 8 == idx:
                    if 6 == idx:
                        _771 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        require 0 < mem[_771]
                        mem[_771 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                        require 1 < mem[_771]
                        mem[_771 + 64] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                        mem[_771 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[_771 + 100] = 0
                        mem[_771 + 132] = 64
                        mem[_771 + 164] = mem[_771]
                        t = 0
                        while t < 32 * mem[_771]:
                            mem[t + _771 + 196] = mem[t + _771 + 32]
                            t = t + 32
                            continue 
                        require ext_code.size(0x845e76a8691423fbc4ecb8dd77556cb61c09ee25)
                        staticcall 0x845e76a8691423fbc4ecb8dd77556cb61c09ee25.getAmountsOut(uint256 arg1, address[] arg2) with:
                                gas gas_remaining wei
                               args 0, 64, mem[_771 + 164 len (32 * mem[_771]) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_771 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = _771 + ceil32(return_data.size) + 96
                        require return_data.size >= 32
                        _2801 = mem[_771 + 96 len 4], 0
                        require mem[_771 + 96 len 4], 0 <= 4294967296
                        require mem[_771 + 96 len 4], 0 + 32 <= return_data.size
                        require mem[_771 + mem[_771 + 96 len 4], 0 + 96] <= 4294967296 and mem[_771 + 96 len 4], 0 + (32 * mem[_771 + mem[_771 + 96 len 4], 0 + 96]) + 32 <= return_data.size
                        mem[_771 + ceil32(return_data.size) + 96] = mem[_771 + mem[_771 + 96 len 4], 0 + 96]
                        _3124 = mem[_771 + _2801 + 96]
                        t = 0
                        while t < 32 * _3124:
                            mem[t + _771 + ceil32(return_data.size) + 128] = mem[t + _771 + _2801 + 128]
                            t = t + 32
                            continue 
                        mem[64] = (32 * _3124) + _771 + ceil32(return_data.size) + 128
                        require mem[_771 + ceil32(return_data.size) + 96] - 1 < mem[_771 + ceil32(return_data.size) + 96]
                        if mem[(32 * mem[_771 + ceil32(return_data.size) + 96] - 1) + _771 + ceil32(return_data.size) + 128] <= s:
                            idx = idx + 1
                            s = s
                            continue 
                        idx = idx + 1
                        s = mem[(32 * mem[_771 + ceil32(return_data.size) + 96] - 1) + _771 + ceil32(return_data.size) + 128]
                        continue 
                    if 7 == idx:
                        _868 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        require 0 < mem[_868]
                        mem[_868 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                        require 1 < mem[_868]
                        mem[_868 + 64] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                        mem[_868 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[_868 + 100] = 0
                        mem[_868 + 132] = 64
                        mem[_868 + 164] = mem[_868]
                        t = 0
                        while t < 32 * mem[_868]:
                            mem[t + _868 + 196] = mem[t + _868 + 32]
                            t = t + 32
                            continue 
                        require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c)
                        staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c.getAmountsOut(uint256 arg1, address[] arg2) with:
                                gas gas_remaining wei
                               args 0, 64, mem[_868 + 164 len (32 * mem[_868]) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_868 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = _868 + ceil32(return_data.size) + 96
                        require return_data.size >= 32
                        _2799 = mem[_868 + 96 len 4], 0
                        require mem[_868 + 96 len 4], 0 <= 4294967296
                        require mem[_868 + 96 len 4], 0 + 32 <= return_data.size
                        require mem[_868 + mem[_868 + 96 len 4], 0 + 96] <= 4294967296 and mem[_868 + 96 len 4], 0 + (32 * mem[_868 + mem[_868 + 96 len 4], 0 + 96]) + 32 <= return_data.size
                        mem[_868 + ceil32(return_data.size) + 96] = mem[_868 + mem[_868 + 96 len 4], 0 + 96]
                        _3123 = mem[_868 + _2799 + 96]
                        t = 0
                        while t < 32 * _3123:
                            mem[t + _868 + ceil32(return_data.size) + 128] = mem[t + _868 + _2799 + 128]
                            t = t + 32
                            continue 
                        mem[64] = (32 * _3123) + _868 + ceil32(return_data.size) + 128
                        require mem[_868 + ceil32(return_data.size) + 96] - 1 < mem[_868 + ceil32(return_data.size) + 96]
                        if mem[(32 * mem[_868 + ceil32(return_data.size) + 96] - 1) + _868 + ceil32(return_data.size) + 128] <= s:
                            idx = idx + 1
                            s = s
                            continue 
                        idx = idx + 1
                        s = mem[(32 * mem[_868 + ceil32(return_data.size) + 96] - 1) + _868 + ceil32(return_data.size) + 128]
                        continue 
                    if 8 == idx:
                        _987 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        require 0 < mem[_987]
                        mem[_987 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                        require 1 < mem[_987]
                        mem[_987 + 64] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                        mem[_987 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[_987 + 100] = 0
                        mem[_987 + 132] = 64
                        mem[_987 + 164] = mem[_987]
                        t = 0
                        while t < 32 * mem[_987]:
                            mem[t + _987 + 196] = mem[t + _987 + 32]
                            t = t + 32
                            continue 
                        require ext_code.size(0x6b3d631b87fe27af29efec61d2ab8ce4d621ccbf)
                        staticcall 0x6b3d631b87fe27af29efec61d2ab8ce4d621ccbf.getAmountsOut(uint256 arg1, address[] arg2) with:
                                gas gas_remaining wei
                               args 0, 64, mem[_987 + 164 len (32 * mem[_987]) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_987 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = _987 + ceil32(return_data.size) + 96
                        require return_data.size >= 32
                        _2797 = mem[_987 + 96 len 4], 0
                        require mem[_987 + 96 len 4], 0 <= 4294967296
                        require mem[_987 + 96 len 4], 0 + 32 <= return_data.size
                        require mem[_987 + mem[_987 + 96 len 4], 0 + 96] <= 4294967296 and mem[_987 + 96 len 4], 0 + (32 * mem[_987 + mem[_987 + 96 len 4], 0 + 96]) + 32 <= return_data.size
                        mem[_987 + ceil32(return_data.size) + 96] = mem[_987 + mem[_987 + 96 len 4], 0 + 96]
                        _3122 = mem[_987 + _2797 + 96]
                        t = 0
                        while t < 32 * _3122:
                            mem[t + _987 + ceil32(return_data.size) + 128] = mem[t + _987 + _2797 + 128]
                            t = t + 32
                            continue 
                        mem[64] = (32 * _3122) + _987 + ceil32(return_data.size) + 128
                        require mem[_987 + ceil32(return_data.size) + 96] - 1 < mem[_987 + ceil32(return_data.size) + 96]
                        if mem[(32 * mem[_987 + ceil32(return_data.size) + 96] - 1) + _987 + ceil32(return_data.size) + 128] <= s:
                            idx = idx + 1
                            s = s
                            continue 
                        idx = idx + 1
                        s = mem[(32 * mem[_987 + ceil32(return_data.size) + 96] - 1) + _987 + ceil32(return_data.size) + 128]
                        continue 
                    if idx != 9:
                        _985 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        require 0 < mem[_985]
                        mem[_985 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                        require 1 < mem[_985]
                        mem[_985 + 64] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                        mem[_985 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[_985 + 100] = 0
                        mem[_985 + 132] = 64
                        mem[_985 + 164] = mem[_985]
                        t = 0
                        while t < 32 * mem[_985]:
                            mem[t + _985 + 196] = mem[t + _985 + 32]
                            t = t + 32
                            continue 
                        require ext_code.size(0)
                        staticcall 0x0.getAmountsOut(uint256 arg1, address[] arg2) with:
                                gas gas_remaining wei
                               args 0, 64, mem[_985 + 164 len (32 * mem[_985]) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_985 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = _985 + ceil32(return_data.size) + 96
                        require return_data.size >= 32
                        _2793 = mem[_985 + 96 len 4], 0
                        require mem[_985 + 96 len 4], 0 <= 4294967296
                        require mem[_985 + 96 len 4], 0 + 32 <= return_data.size
                        require mem[_985 + mem[_985 + 96 len 4], 0 + 96] <= 4294967296 and mem[_985 + 96 len 4], 0 + (32 * mem[_985 + mem[_985 + 96 len 4], 0 + 96]) + 32 <= return_data.size
                        mem[_985 + ceil32(return_data.size) + 96] = mem[_985 + mem[_985 + 96 len 4], 0 + 96]
                        _3120 = mem[_985 + _2793 + 96]
                        t = 0
                        while t < 32 * _3120:
                            mem[t + _985 + ceil32(return_data.size) + 128] = mem[t + _985 + _2793 + 128]
                            t = t + 32
                            continue 
                        mem[64] = (32 * _3120) + _985 + ceil32(return_data.size) + 128
                        require mem[_985 + ceil32(return_data.size) + 96] - 1 < mem[_985 + ceil32(return_data.size) + 96]
                        if mem[(32 * mem[_985 + ceil32(return_data.size) + 96] - 1) + _985 + ceil32(return_data.size) + 128] <= s:
                            idx = idx + 1
                            s = s
                            continue 
                        idx = idx + 1
                        s = mem[(32 * mem[_985 + ceil32(return_data.size) + 96] - 1) + _985 + ceil32(return_data.size) + 128]
                        continue 
                    _1123 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    require 0 < mem[_1123]
                    mem[_1123 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    require 1 < mem[_1123]
                    mem[_1123 + 64] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    mem[_1123 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_1123 + 100] = 0
                    mem[_1123 + 132] = 64
                    mem[_1123 + 164] = mem[_1123]
                    t = 0
                    while t < 32 * mem[_1123]:
                        mem[t + _1123 + 196] = mem[t + _1123 + 32]
                        t = t + 32
                        continue 
                    require ext_code.size(0x2724b9497b2cf3325c6be3ea430b3cec34b5ef2d)
                    staticcall 0x2724b9497b2cf3325c6be3ea430b3cec34b5ef2d.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args 0, 64, mem[_1123 + 164 len (32 * mem[_1123]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_1123 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _1123 + ceil32(return_data.size) + 96
                    require return_data.size >= 32
                    _2795 = mem[_1123 + 96 len 4], 0
                    require mem[_1123 + 96 len 4], 0 <= 4294967296
                    require mem[_1123 + 96 len 4], 0 + 32 <= return_data.size
                    require mem[_1123 + mem[_1123 + 96 len 4], 0 + 96] <= 4294967296 and mem[_1123 + 96 len 4], 0 + (32 * mem[_1123 + mem[_1123 + 96 len 4], 0 + 96]) + 32 <= return_data.size
                    mem[_1123 + ceil32(return_data.size) + 96] = mem[_1123 + mem[_1123 + 96 len 4], 0 + 96]
                    _3121 = mem[_1123 + _2795 + 96]
                    t = 0
                    while t < 32 * _3121:
                        mem[t + _1123 + ceil32(return_data.size) + 128] = mem[t + _1123 + _2795 + 128]
                        t = t + 32
                        continue 
                    mem[64] = (32 * _3121) + _1123 + ceil32(return_data.size) + 128
                    require mem[_1123 + ceil32(return_data.size) + 96] - 1 < mem[_1123 + ceil32(return_data.size) + 96]
                    if mem[(32 * mem[_1123 + ceil32(return_data.size) + 96] - 1) + _1123 + ceil32(return_data.size) + 128] <= s:
                        idx = idx + 1
                        s = s
                        continue 
                    idx = idx + 1
                    s = mem[(32 * mem[_1123 + ceil32(return_data.size) + 96] - 1) + _1123 + ceil32(return_data.size) + 128]
                    continue 
                if idx != 9:
                    if 10 == idx:
                        mem[mem[64] + 4] = 0
                        mem[mem[64] + 36] = 1
                        mem[mem[64] + 68] = 0
                        require ext_code.size(0x952bda8a83c3d5f398a686bb4e8c6dd90072d523)
                        staticcall 0x952bda8a83c3d5f398a686bb4e8c6dd90072d523.calculateSwap(uint8 arg1, uint8 arg2, uint256 arg3) with:
                                gas gas_remaining wei
                               args 0, 1, 0
                    else:
                        if 11 == idx:
                            mem[mem[64] + 4] = 1
                            mem[mem[64] + 36] = 2
                            mem[mem[64] + 68] = 0
                            require ext_code.size(0x80f6aed32fc474dd5717105dba5ea57268f46eb)
                            staticcall 0x80f6aed32fc474dd5717105dba5ea57268f46eb.calculateSwap(uint8 arg1, uint8 arg2, uint256 arg3) with:
                                    gas gas_remaining wei
                                   args 1, 2, 0
                        else:
                            if idx != 12:
                                if 0 <= s:
                                    idx = idx + 1
                                    s = s
                                    continue 
                                idx = idx + 1
                                s = 0
                                continue 
                            mem[mem[64] + 4] = 2
                            mem[mem[64] + 36] = 1
                            mem[mem[64] + 68] = 0
                            require ext_code.size(0x2dd7c9371965472e5a5fd28fbe165007c61439e1)
                            staticcall 0x2dd7c9371965472e5a5fd28fbe165007c61439e1.get_dy(int128 arg1, int128 arg2, uint256 arg3) with:
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
                if 6 == idx:
                    _877 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    require 0 < mem[_877]
                    mem[_877 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    require 1 < mem[_877]
                    mem[_877 + 64] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    mem[_877 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_877 + 100] = 0
                    mem[_877 + 132] = 64
                    mem[_877 + 164] = mem[_877]
                    t = 0
                    while t < 32 * mem[_877]:
                        mem[t + _877 + 196] = mem[t + _877 + 32]
                        t = t + 32
                        continue 
                    require ext_code.size(0x845e76a8691423fbc4ecb8dd77556cb61c09ee25)
                    staticcall 0x845e76a8691423fbc4ecb8dd77556cb61c09ee25.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args 0, 64, mem[_877 + 164 len (32 * mem[_877]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_877 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _877 + ceil32(return_data.size) + 96
                    require return_data.size >= 32
                    _2811 = mem[_877 + 96 len 4], 0
                    require mem[_877 + 96 len 4], 0 <= 4294967296
                    require mem[_877 + 96 len 4], 0 + 32 <= return_data.size
                    require mem[_877 + mem[_877 + 96 len 4], 0 + 96] <= 4294967296 and mem[_877 + 96 len 4], 0 + (32 * mem[_877 + mem[_877 + 96 len 4], 0 + 96]) + 32 <= return_data.size
                    mem[_877 + ceil32(return_data.size) + 96] = mem[_877 + mem[_877 + 96 len 4], 0 + 96]
                    _3129 = mem[_877 + _2811 + 96]
                    t = 0
                    while t < 32 * _3129:
                        mem[t + _877 + ceil32(return_data.size) + 128] = mem[t + _877 + _2811 + 128]
                        t = t + 32
                        continue 
                    mem[64] = (32 * _3129) + _877 + ceil32(return_data.size) + 128
                    require mem[_877 + ceil32(return_data.size) + 96] - 1 < mem[_877 + ceil32(return_data.size) + 96]
                    if mem[(32 * mem[_877 + ceil32(return_data.size) + 96] - 1) + _877 + ceil32(return_data.size) + 128] <= s:
                        idx = idx + 1
                        s = s
                        continue 
                    idx = idx + 1
                    s = mem[(32 * mem[_877 + ceil32(return_data.size) + 96] - 1) + _877 + ceil32(return_data.size) + 128]
                    continue 
                if 7 == idx:
                    _1001 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    require 0 < mem[_1001]
                    mem[_1001 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    require 1 < mem[_1001]
                    mem[_1001 + 64] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    mem[_1001 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_1001 + 100] = 0
                    mem[_1001 + 132] = 64
                    mem[_1001 + 164] = mem[_1001]
                    t = 0
                    while t < 32 * mem[_1001]:
                        mem[t + _1001 + 196] = mem[t + _1001 + 32]
                        t = t + 32
                        continue 
                    require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c)
                    staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args 0, 64, mem[_1001 + 164 len (32 * mem[_1001]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_1001 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _1001 + ceil32(return_data.size) + 96
                    require return_data.size >= 32
                    _2809 = mem[_1001 + 96 len 4], 0
                    require mem[_1001 + 96 len 4], 0 <= 4294967296
                    require mem[_1001 + 96 len 4], 0 + 32 <= return_data.size
                    require mem[_1001 + mem[_1001 + 96 len 4], 0 + 96] <= 4294967296 and mem[_1001 + 96 len 4], 0 + (32 * mem[_1001 + mem[_1001 + 96 len 4], 0 + 96]) + 32 <= return_data.size
                    mem[_1001 + ceil32(return_data.size) + 96] = mem[_1001 + mem[_1001 + 96 len 4], 0 + 96]
                    _3128 = mem[_1001 + _2809 + 96]
                    t = 0
                    while t < 32 * _3128:
                        mem[t + _1001 + ceil32(return_data.size) + 128] = mem[t + _1001 + _2809 + 128]
                        t = t + 32
                        continue 
                    mem[64] = (32 * _3128) + _1001 + ceil32(return_data.size) + 128
                    require mem[_1001 + ceil32(return_data.size) + 96] - 1 < mem[_1001 + ceil32(return_data.size) + 96]
                    if mem[(32 * mem[_1001 + ceil32(return_data.size) + 96] - 1) + _1001 + ceil32(return_data.size) + 128] <= s:
                        idx = idx + 1
                        s = s
                        continue 
                    idx = idx + 1
                    s = mem[(32 * mem[_1001 + ceil32(return_data.size) + 96] - 1) + _1001 + ceil32(return_data.size) + 128]
                    continue 
                if 8 == idx:
                    _1134 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    require 0 < mem[_1134]
                    mem[_1134 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    require 1 < mem[_1134]
                    mem[_1134 + 64] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    mem[_1134 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_1134 + 100] = 0
                    mem[_1134 + 132] = 64
                    mem[_1134 + 164] = mem[_1134]
                    t = 0
                    while t < 32 * mem[_1134]:
                        mem[t + _1134 + 196] = mem[t + _1134 + 32]
                        t = t + 32
                        continue 
                    require ext_code.size(0x6b3d631b87fe27af29efec61d2ab8ce4d621ccbf)
                    staticcall 0x6b3d631b87fe27af29efec61d2ab8ce4d621ccbf.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args 0, 64, mem[_1134 + 164 len (32 * mem[_1134]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_1134 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _1134 + ceil32(return_data.size) + 96
                    require return_data.size >= 32
                    _2807 = mem[_1134 + 96 len 4], 0
                    require mem[_1134 + 96 len 4], 0 <= 4294967296
                    require mem[_1134 + 96 len 4], 0 + 32 <= return_data.size
                    require mem[_1134 + mem[_1134 + 96 len 4], 0 + 96] <= 4294967296 and mem[_1134 + 96 len 4], 0 + (32 * mem[_1134 + mem[_1134 + 96 len 4], 0 + 96]) + 32 <= return_data.size
                    mem[_1134 + ceil32(return_data.size) + 96] = mem[_1134 + mem[_1134 + 96 len 4], 0 + 96]
                    _3127 = mem[_1134 + _2807 + 96]
                    t = 0
                    while t < 32 * _3127:
                        mem[t + _1134 + ceil32(return_data.size) + 128] = mem[t + _1134 + _2807 + 128]
                        t = t + 32
                        continue 
                    mem[64] = (32 * _3127) + _1134 + ceil32(return_data.size) + 128
                    require mem[_1134 + ceil32(return_data.size) + 96] - 1 < mem[_1134 + ceil32(return_data.size) + 96]
                    if mem[(32 * mem[_1134 + ceil32(return_data.size) + 96] - 1) + _1134 + ceil32(return_data.size) + 128] <= s:
                        idx = idx + 1
                        s = s
                        continue 
                    idx = idx + 1
                    s = mem[(32 * mem[_1134 + ceil32(return_data.size) + 96] - 1) + _1134 + ceil32(return_data.size) + 128]
                    continue 
                if idx != 9:
                    _1132 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    require 0 < mem[_1132]
                    mem[_1132 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    require 1 < mem[_1132]
                    mem[_1132 + 64] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    mem[_1132 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_1132 + 100] = 0
                    mem[_1132 + 132] = 64
                    mem[_1132 + 164] = mem[_1132]
                    t = 0
                    while t < 32 * mem[_1132]:
                        mem[t + _1132 + 196] = mem[t + _1132 + 32]
                        t = t + 32
                        continue 
                    require ext_code.size(0)
                    staticcall 0x0.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args 0, 64, mem[_1132 + 164 len (32 * mem[_1132]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_1132 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _1132 + ceil32(return_data.size) + 96
                    require return_data.size >= 32
                    _2803 = mem[_1132 + 96 len 4], 0
                    require mem[_1132 + 96 len 4], 0 <= 4294967296
                    require mem[_1132 + 96 len 4], 0 + 32 <= return_data.size
                    require mem[_1132 + mem[_1132 + 96 len 4], 0 + 96] <= 4294967296 and mem[_1132 + 96 len 4], 0 + (32 * mem[_1132 + mem[_1132 + 96 len 4], 0 + 96]) + 32 <= return_data.size
                    mem[_1132 + ceil32(return_data.size) + 96] = mem[_1132 + mem[_1132 + 96 len 4], 0 + 96]
                    _3125 = mem[_1132 + _2803 + 96]
                    t = 0
                    while t < 32 * _3125:
                        mem[t + _1132 + ceil32(return_data.size) + 128] = mem[t + _1132 + _2803 + 128]
                        t = t + 32
                        continue 
                    mem[64] = (32 * _3125) + _1132 + ceil32(return_data.size) + 128
                    require mem[_1132 + ceil32(return_data.size) + 96] - 1 < mem[_1132 + ceil32(return_data.size) + 96]
                    if mem[(32 * mem[_1132 + ceil32(return_data.size) + 96] - 1) + _1132 + ceil32(return_data.size) + 128] <= s:
                        idx = idx + 1
                        s = s
                        continue 
                    idx = idx + 1
                    s = mem[(32 * mem[_1132 + ceil32(return_data.size) + 96] - 1) + _1132 + ceil32(return_data.size) + 128]
                    continue 
                _1274 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                require 0 < mem[_1274]
                mem[_1274 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                require 1 < mem[_1274]
                mem[_1274 + 64] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                mem[_1274 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_1274 + 100] = 0
                mem[_1274 + 132] = 64
                mem[_1274 + 164] = mem[_1274]
                t = 0
                while t < 32 * mem[_1274]:
                    mem[t + _1274 + 196] = mem[t + _1274 + 32]
                    t = t + 32
                    continue 
                require ext_code.size(0x2724b9497b2cf3325c6be3ea430b3cec34b5ef2d)
                staticcall 0x2724b9497b2cf3325c6be3ea430b3cec34b5ef2d.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args 0, 64, mem[_1274 + 164 len (32 * mem[_1274]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_1274 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _1274 + ceil32(return_data.size) + 96
                require return_data.size >= 32
                _2805 = mem[_1274 + 96 len 4], 0
                require mem[_1274 + 96 len 4], 0 <= 4294967296
                require mem[_1274 + 96 len 4], 0 + 32 <= return_data.size
                require mem[_1274 + mem[_1274 + 96 len 4], 0 + 96] <= 4294967296 and mem[_1274 + 96 len 4], 0 + (32 * mem[_1274 + mem[_1274 + 96 len 4], 0 + 96]) + 32 <= return_data.size
                mem[_1274 + ceil32(return_data.size) + 96] = mem[_1274 + mem[_1274 + 96 len 4], 0 + 96]
                _3126 = mem[_1274 + _2805 + 96]
                t = 0
                while t < 32 * _3126:
                    mem[t + _1274 + ceil32(return_data.size) + 128] = mem[t + _1274 + _2805 + 128]
                    t = t + 32
                    continue 
                mem[64] = (32 * _3126) + _1274 + ceil32(return_data.size) + 128
                require mem[_1274 + ceil32(return_data.size) + 96] - 1 < mem[_1274 + ceil32(return_data.size) + 96]
                if mem[(32 * mem[_1274 + ceil32(return_data.size) + 96] - 1) + _1274 + ceil32(return_data.size) + 128] <= s:
                    idx = idx + 1
                    s = s
                    continue 
                idx = idx + 1
                s = mem[(32 * mem[_1274 + ceil32(return_data.size) + 96] - 1) + _1274 + ceil32(return_data.size) + 128]
                continue 
            _324 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            require 0 < mem[_324]
            mem[_324 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
            require 1 < mem[_324]
            mem[_324 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c
            mem[_324 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[_324 + 100] = 0
            mem[_324 + 132] = 64
            mem[_324 + 164] = mem[_324]
            t = 0
            while t < 32 * mem[_324]:
                mem[t + _324 + 196] = mem[t + _324 + 32]
                t = t + 32
                continue 
            require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c)
            staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c.getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args 0, 64, mem[_324 + 164 len (32 * mem[_324]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[_324 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = _324 + ceil32(return_data.size) + 96
            require return_data.size >= 32
            _2813 = mem[_324 + 96 len 4], 0
            require mem[_324 + 96 len 4], 0 <= 4294967296
            require mem[_324 + 96 len 4], 0 + 32 <= return_data.size
            require mem[_324 + mem[_324 + 96 len 4], 0 + 96] <= 4294967296 and mem[_324 + 96 len 4], 0 + (32 * mem[_324 + mem[_324 + 96 len 4], 0 + 96]) + 32 <= return_data.size
            mem[_324 + ceil32(return_data.size) + 96] = mem[_324 + mem[_324 + 96 len 4], 0 + 96]
            _3130 = mem[_324 + _2813 + 96]
            t = 0
            while t < 32 * _3130:
                mem[t + _324 + ceil32(return_data.size) + 128] = mem[t + _324 + _2813 + 128]
                t = t + 32
                continue 
            mem[64] = (32 * _3130) + _324 + ceil32(return_data.size) + 128
            require mem[_324 + ceil32(return_data.size) + 96] - 1 < mem[_324 + ceil32(return_data.size) + 96]
            _8784 = mem[(32 * mem[_324 + ceil32(return_data.size) + 96] - 1) + _324 + ceil32(return_data.size) + 128]
            mem[(32 * _3130) + _324 + ceil32(return_data.size) + 128] = 2
            mem[(32 * _3130) + _324 + ceil32(return_data.size) + 160] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c
            mem[(32 * _3130) + _324 + ceil32(return_data.size) + 192] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
            mem[(32 * _3130) + _324 + ceil32(return_data.size) + 224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[(32 * _3130) + _324 + ceil32(return_data.size) + 228] = _8784
            mem[(32 * _3130) + _324 + ceil32(return_data.size) + 260] = 64
            mem[(32 * _3130) + _324 + ceil32(return_data.size) + 292] = 2
            t = 0
            while t < 64:
                mem[t + (32 * _3130) + _324 + ceil32(return_data.size) + 324] = mem[t + (32 * _3130) + _324 + ceil32(return_data.size) + 160]
                t = t + 32
                continue 
            require ext_code.size(0xe4a4642b19c4d0cba965673cd51422b1eda0a78d)
            staticcall 0xe4a4642b19c4d0cba965673cd51422b1eda0a78d.getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args _8784, Array(len=2, data=mem[(32 * _3130) + _324 + ceil32(return_data.size) + 324 len 64])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _3130) + _324 + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * _3130) + _324 + (2 * ceil32(return_data.size)) + 224
            require return_data.size >= 32
            _11881 = mem[(32 * _3130) + _324 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _8784) >> 32
            require mem[(32 * _3130) + _324 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _8784) >> 32 <= 4294967296
            require mem[(32 * _3130) + _324 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _8784) >> 32 + 32 <= return_data.size
            require mem[(32 * _3130) + _324 + ceil32(return_data.size) + mem[(32 * _3130) + _324 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _8784) >> 32 + 224] <= 4294967296 and mem[(32 * _3130) + _324 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _8784) >> 32 + (32 * mem[(32 * _3130) + _324 + ceil32(return_data.size) + mem[(32 * _3130) + _324 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _8784) >> 32 + 224]) + 32 <= return_data.size
            mem[(32 * _3130) + _324 + (2 * ceil32(return_data.size)) + 224] = mem[(32 * _3130) + _324 + ceil32(return_data.size) + mem[(32 * _3130) + _324 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _8784) >> 32 + 224]
            _12011 = mem[(32 * _3130) + _324 + ceil32(return_data.size) + _11881 + 224]
            t = 0
            while t < 32 * _12011:
                mem[t + (32 * _3130) + _324 + (2 * ceil32(return_data.size)) + 256] = mem[t + (32 * _3130) + _324 + ceil32(return_data.size) + _11881 + 256]
                t = t + 32
                continue 
            mem[64] = (32 * _12011) + (32 * _3130) + _324 + (2 * ceil32(return_data.size)) + 256
            require mem[(32 * _3130) + _324 + (2 * ceil32(return_data.size)) + 224] - 1 < mem[(32 * _3130) + _324 + (2 * ceil32(return_data.size)) + 224]
            if mem[(32 * mem[(32 * _3130) + _324 + (2 * ceil32(return_data.size)) + 224] - 1) + (32 * _3130) + _324 + (2 * ceil32(return_data.size)) + 256] <= s:
                idx = idx + 1
                s = s
                continue 
            idx = idx + 1
            s = mem[(32 * mem[(32 * _3130) + _324 + (2 * ceil32(return_data.size)) + 224] - 1) + (32 * _3130) + _324 + (2 * ceil32(return_data.size)) + 256]
            continue 
        idx = 0
        t = 0
        while idx < 13:
            if not idx:
                mem[mem[64] + 4] = 2
                mem[mem[64] + 36] = 0
                mem[mem[64] + 68] = s
                require ext_code.size(0x92d5ebf3593a92888c25c0abef126583d4b5312e)
                staticcall 0x92d5ebf3593a92888c25c0abef126583d4b5312e.get_dy_underlying(int128 arg1, int128 arg2, uint256 arg3) with:
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
                staticcall 0x83e5f18da720119ff363cf63417628eb0e9fd523.get_dy(int128 arg1, int128 arg2, uint256 arg3) with:
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
                _3199 = mem[64]
                mem[mem[64]] = 3
                mem[64] = mem[64] + 128
                require 0 < mem[_3199]
                mem[_3199 + 32] = 0x49d68029688eabf473097a2fc38ef61633a3c
                require 1 < mem[_3199]
                mem[_3199 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c
                require 2 < mem[_3199]
                mem[_3199 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                mem[_3199 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_3199 + 132] = s
                mem[_3199 + 164] = 64
                mem[_3199 + 196] = mem[_3199]
                u = 0
                while u < 32 * mem[_3199]:
                    mem[u + _3199 + 228] = mem[u + _3199 + 32]
                    u = u + 32
                    continue 
                require ext_code.size(0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52)
                staticcall 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args s, 64, mem[_3199 + 196 len (32 * mem[_3199]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_3199 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _3199 + ceil32(return_data.size) + 128
                require return_data.size >= 32
                _9213 = mem[_3199 + 128 len 4], Mask(224, 32, s) >> 32
                require mem[_3199 + 128 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                require mem[_3199 + 128 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                require mem[_3199 + mem[_3199 + 128 len 4], Mask(224, 32, s) >> 32 + 128] <= 4294967296 and mem[_3199 + 128 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_3199 + mem[_3199 + 128 len 4], Mask(224, 32, s) >> 32 + 128]) + 32 <= return_data.size
                mem[_3199 + ceil32(return_data.size) + 128] = mem[_3199 + mem[_3199 + 128 len 4], Mask(224, 32, s) >> 32 + 128]
                _9743 = mem[_3199 + _9213 + 128]
                s = 0
                while s < 32 * _9743:
                    mem[s + _3199 + ceil32(return_data.size) + 160] = mem[s + _3199 + _9213 + 160]
                    s = s + 32
                    continue 
                mem[64] = (32 * _9743) + _3199 + ceil32(return_data.size) + 160
                require mem[_3199 + ceil32(return_data.size) + 128] - 1 < mem[_3199 + ceil32(return_data.size) + 128]
                if mem[(32 * mem[_3199 + ceil32(return_data.size) + 128] - 1) + _3199 + ceil32(return_data.size) + 160] <= t:
                    idx = idx + 1
                    t = t
                    continue 
                idx = idx + 1
                t = mem[(32 * mem[_3199 + ceil32(return_data.size) + 128] - 1) + _3199 + ceil32(return_data.size) + 160]
                continue 
            if 3 == idx:
                if 2 == idx:
                    _3468 = mem[64]
                    mem[mem[64]] = 3
                    mem[64] = mem[64] + 128
                    require 0 < mem[_3468]
                    mem[_3468 + 32] = 0x49d68029688eabf473097a2fc38ef61633a3c
                    require 1 < mem[_3468]
                    mem[_3468 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c
                    require 2 < mem[_3468]
                    mem[_3468 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    mem[_3468 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_3468 + 132] = s
                    mem[_3468 + 164] = 64
                    mem[_3468 + 196] = mem[_3468]
                    u = 0
                    while u < 32 * mem[_3468]:
                        mem[u + _3468 + 228] = mem[u + _3468 + 32]
                        u = u + 32
                        continue 
                    require ext_code.size(0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52)
                    staticcall 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args s, 64, mem[_3468 + 196 len (32 * mem[_3468]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_3468 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _3468 + ceil32(return_data.size) + 128
                    require return_data.size >= 32
                    _9259 = mem[_3468 + 128 len 4], Mask(224, 32, s) >> 32
                    require mem[_3468 + 128 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                    require mem[_3468 + 128 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                    require mem[_3468 + mem[_3468 + 128 len 4], Mask(224, 32, s) >> 32 + 128] <= 4294967296 and mem[_3468 + 128 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_3468 + mem[_3468 + 128 len 4], Mask(224, 32, s) >> 32 + 128]) + 32 <= return_data.size
                    mem[_3468 + ceil32(return_data.size) + 128] = mem[_3468 + mem[_3468 + 128 len 4], Mask(224, 32, s) >> 32 + 128]
                    _9766 = mem[_3468 + _9259 + 128]
                    s = 0
                    while s < 32 * _9766:
                        mem[s + _3468 + ceil32(return_data.size) + 160] = mem[s + _3468 + _9259 + 160]
                        s = s + 32
                        continue 
                    mem[64] = (32 * _9766) + _3468 + ceil32(return_data.size) + 160
                    require mem[_3468 + ceil32(return_data.size) + 128] - 1 < mem[_3468 + ceil32(return_data.size) + 128]
                    if mem[(32 * mem[_3468 + ceil32(return_data.size) + 128] - 1) + _3468 + ceil32(return_data.size) + 160] <= t:
                        idx = idx + 1
                        t = t
                        continue 
                    idx = idx + 1
                    t = mem[(32 * mem[_3468 + ceil32(return_data.size) + 128] - 1) + _3468 + ceil32(return_data.size) + 160]
                    continue 
                if idx != 3:
                    _3464 = mem[64]
                    mem[mem[64]] = 3
                    mem[64] = mem[64] + 128
                    require 0 < mem[_3464]
                    mem[_3464 + 32] = 0x49d68029688eabf473097a2fc38ef61633a3c
                    require 1 < mem[_3464]
                    mem[_3464 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c
                    require 2 < mem[_3464]
                    mem[_3464 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    mem[_3464 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_3464 + 132] = s
                    mem[_3464 + 164] = 64
                    mem[_3464 + 196] = mem[_3464]
                    u = 0
                    while u < 32 * mem[_3464]:
                        mem[u + _3464 + 228] = mem[u + _3464 + 32]
                        u = u + 32
                        continue 
                    require ext_code.size(0)
                    staticcall 0x0.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args s, 64, mem[_3464 + 196 len (32 * mem[_3464]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_3464 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _3464 + ceil32(return_data.size) + 128
                    require return_data.size >= 32
                    _9255 = mem[_3464 + 128 len 4], Mask(224, 32, s) >> 32
                    require mem[_3464 + 128 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                    require mem[_3464 + 128 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                    require mem[_3464 + mem[_3464 + 128 len 4], Mask(224, 32, s) >> 32 + 128] <= 4294967296 and mem[_3464 + 128 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_3464 + mem[_3464 + 128 len 4], Mask(224, 32, s) >> 32 + 128]) + 32 <= return_data.size
                    mem[_3464 + ceil32(return_data.size) + 128] = mem[_3464 + mem[_3464 + 128 len 4], Mask(224, 32, s) >> 32 + 128]
                    _9764 = mem[_3464 + _9255 + 128]
                    s = 0
                    while s < 32 * _9764:
                        mem[s + _3464 + ceil32(return_data.size) + 160] = mem[s + _3464 + _9255 + 160]
                        s = s + 32
                        continue 
                    mem[64] = (32 * _9764) + _3464 + ceil32(return_data.size) + 160
                    require mem[_3464 + ceil32(return_data.size) + 128] - 1 < mem[_3464 + ceil32(return_data.size) + 128]
                    if mem[(32 * mem[_3464 + ceil32(return_data.size) + 128] - 1) + _3464 + ceil32(return_data.size) + 160] <= t:
                        idx = idx + 1
                        t = t
                        continue 
                    idx = idx + 1
                    t = mem[(32 * mem[_3464 + ceil32(return_data.size) + 128] - 1) + _3464 + ceil32(return_data.size) + 160]
                    continue 
                _3802 = mem[64]
                mem[mem[64]] = 3
                mem[64] = mem[64] + 128
                require 0 < mem[_3802]
                mem[_3802 + 32] = 0x49d68029688eabf473097a2fc38ef61633a3c
                require 1 < mem[_3802]
                mem[_3802 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c
                require 2 < mem[_3802]
                mem[_3802 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                mem[_3802 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_3802 + 132] = s
                mem[_3802 + 164] = 64
                mem[_3802 + 196] = mem[_3802]
                u = 0
                while u < 32 * mem[_3802]:
                    mem[u + _3802 + 228] = mem[u + _3802 + 32]
                    u = u + 32
                    continue 
                require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c)
                staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args s, 64, mem[_3802 + 196 len (32 * mem[_3802]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_3802 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _3802 + ceil32(return_data.size) + 128
                require return_data.size >= 32
                _9257 = mem[_3802 + 128 len 4], Mask(224, 32, s) >> 32
                require mem[_3802 + 128 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                require mem[_3802 + 128 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                require mem[_3802 + mem[_3802 + 128 len 4], Mask(224, 32, s) >> 32 + 128] <= 4294967296 and mem[_3802 + 128 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_3802 + mem[_3802 + 128 len 4], Mask(224, 32, s) >> 32 + 128]) + 32 <= return_data.size
                mem[_3802 + ceil32(return_data.size) + 128] = mem[_3802 + mem[_3802 + 128 len 4], Mask(224, 32, s) >> 32 + 128]
                _9765 = mem[_3802 + _9257 + 128]
                s = 0
                while s < 32 * _9765:
                    mem[s + _3802 + ceil32(return_data.size) + 160] = mem[s + _3802 + _9257 + 160]
                    s = s + 32
                    continue 
                mem[64] = (32 * _9765) + _3802 + ceil32(return_data.size) + 160
                require mem[_3802 + ceil32(return_data.size) + 128] - 1 < mem[_3802 + ceil32(return_data.size) + 128]
                if mem[(32 * mem[_3802 + ceil32(return_data.size) + 128] - 1) + _3802 + ceil32(return_data.size) + 160] <= t:
                    idx = idx + 1
                    t = t
                    continue 
                idx = idx + 1
                t = mem[(32 * mem[_3802 + ceil32(return_data.size) + 128] - 1) + _3802 + ceil32(return_data.size) + 160]
                continue 
            if 4 == idx:
                mem[mem[64] + 4] = 0
                mem[mem[64] + 36] = 2
                mem[mem[64] + 68] = s
                require ext_code.size(0x3a1659ddcf2339be3aea159ca010979fb49155ff)
                staticcall 0x3a1659ddcf2339be3aea159ca010979fb49155ff.get_dy(uint256 arg1, uint256 arg2, uint256 arg3) with:
                        gas gas_remaining wei
                       args 0, 2, s
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                _4138 = mem[64]
                mem[mem[64]] = 3
                mem[64] = mem[64] + 128
                require 0 < mem[_4138]
                mem[_4138 + 32] = 0x74b23882a30290451a17c44f4f05243b6b58c76d
                require 1 < mem[_4138]
                mem[_4138 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c
                require 2 < mem[_4138]
                mem[_4138 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                mem[_4138 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_4138 + 132] = ext_call.return_data[0]
                mem[_4138 + 164] = 64
                mem[_4138 + 196] = mem[_4138]
                s = 0
                while s < 32 * mem[_4138]:
                    mem[s + _4138 + 228] = mem[s + _4138 + 32]
                    s = s + 32
                    continue 
                require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c)
                staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args ext_call.return_data[0], 64, mem[_4138 + 196 len (32 * mem[_4138]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_4138 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _4138 + ceil32(return_data.size) + 128
                require return_data.size >= 32
                _9251 = mem[_4138 + 128 len 4], ext_call.return_data[0 len 28]
                require mem[_4138 + 128 len 4], ext_call.return_data[0 len 28] <= 4294967296
                require mem[_4138 + 128 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                require mem[_4138 + mem[_4138 + 128 len 4], ext_call.return_data[0 len 28] + 128] <= 4294967296 and mem[_4138 + 128 len 4], ext_call.return_data[0 len 28] + (32 * mem[_4138 + mem[_4138 + 128 len 4], ext_call.return_data[0 len 28] + 128]) + 32 <= return_data.size
                mem[_4138 + ceil32(return_data.size) + 128] = mem[_4138 + mem[_4138 + 128 len 4], ext_call.return_data[0 len 28] + 128]
                _9762 = mem[_4138 + _9251 + 128]
                s = 0
                while s < 32 * _9762:
                    mem[s + _4138 + ceil32(return_data.size) + 160] = mem[s + _4138 + _9251 + 160]
                    s = s + 32
                    continue 
                mem[64] = (32 * _9762) + _4138 + ceil32(return_data.size) + 160
                require mem[_4138 + ceil32(return_data.size) + 128] - 1 < mem[_4138 + ceil32(return_data.size) + 128]
                if mem[(32 * mem[_4138 + ceil32(return_data.size) + 128] - 1) + _4138 + ceil32(return_data.size) + 160] <= t:
                    idx = idx + 1
                    t = t
                    continue 
                idx = idx + 1
                t = mem[(32 * mem[_4138 + ceil32(return_data.size) + 128] - 1) + _4138 + ceil32(return_data.size) + 160]
                continue 
            if idx != 5:
                if 6 == idx:
                    _4496 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    require 0 < mem[_4496]
                    mem[_4496 + 32] = 0x49d68029688eabf473097a2fc38ef61633a3c
                    require 1 < mem[_4496]
                    mem[_4496 + 64] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    mem[_4496 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_4496 + 100] = s
                    mem[_4496 + 132] = 64
                    mem[_4496 + 164] = mem[_4496]
                    u = 0
                    while u < 32 * mem[_4496]:
                        mem[u + _4496 + 196] = mem[u + _4496 + 32]
                        u = u + 32
                        continue 
                    require ext_code.size(0x845e76a8691423fbc4ecb8dd77556cb61c09ee25)
                    staticcall 0x845e76a8691423fbc4ecb8dd77556cb61c09ee25.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args s, 64, mem[_4496 + 164 len (32 * mem[_4496]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_4496 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _4496 + ceil32(return_data.size) + 96
                    require return_data.size >= 32
                    _9215 = mem[_4496 + 96 len 4], Mask(224, 32, s) >> 32
                    require mem[_4496 + 96 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                    require mem[_4496 + 96 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                    require mem[_4496 + mem[_4496 + 96 len 4], Mask(224, 32, s) >> 32 + 96] <= 4294967296 and mem[_4496 + 96 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_4496 + mem[_4496 + 96 len 4], Mask(224, 32, s) >> 32 + 96]) + 32 <= return_data.size
                    mem[_4496 + ceil32(return_data.size) + 96] = mem[_4496 + mem[_4496 + 96 len 4], Mask(224, 32, s) >> 32 + 96]
                    _9744 = mem[_4496 + _9215 + 96]
                    s = 0
                    while s < 32 * _9744:
                        mem[s + _4496 + ceil32(return_data.size) + 128] = mem[s + _4496 + _9215 + 128]
                        s = s + 32
                        continue 
                    mem[64] = (32 * _9744) + _4496 + ceil32(return_data.size) + 128
                    require mem[_4496 + ceil32(return_data.size) + 96] - 1 < mem[_4496 + ceil32(return_data.size) + 96]
                    if mem[(32 * mem[_4496 + ceil32(return_data.size) + 96] - 1) + _4496 + ceil32(return_data.size) + 128] <= t:
                        idx = idx + 1
                        t = t
                        continue 
                    idx = idx + 1
                    t = mem[(32 * mem[_4496 + ceil32(return_data.size) + 96] - 1) + _4496 + ceil32(return_data.size) + 128]
                    continue 
                if 7 == idx:
                    if 6 == idx:
                        _4601 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        require 0 < mem[_4601]
                        mem[_4601 + 32] = 0x49d68029688eabf473097a2fc38ef61633a3c
                        require 1 < mem[_4601]
                        mem[_4601 + 64] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                        mem[_4601 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[_4601 + 100] = s
                        mem[_4601 + 132] = 64
                        mem[_4601 + 164] = mem[_4601]
                        u = 0
                        while u < 32 * mem[_4601]:
                            mem[u + _4601 + 196] = mem[u + _4601 + 32]
                            u = u + 32
                            continue 
                        require ext_code.size(0x845e76a8691423fbc4ecb8dd77556cb61c09ee25)
                        staticcall 0x845e76a8691423fbc4ecb8dd77556cb61c09ee25.getAmountsOut(uint256 arg1, address[] arg2) with:
                                gas gas_remaining wei
                               args s, 64, mem[_4601 + 164 len (32 * mem[_4601]) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_4601 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = _4601 + ceil32(return_data.size) + 96
                        require return_data.size >= 32
                        _9225 = mem[_4601 + 96 len 4], Mask(224, 32, s) >> 32
                        require mem[_4601 + 96 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                        require mem[_4601 + 96 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                        require mem[_4601 + mem[_4601 + 96 len 4], Mask(224, 32, s) >> 32 + 96] <= 4294967296 and mem[_4601 + 96 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_4601 + mem[_4601 + 96 len 4], Mask(224, 32, s) >> 32 + 96]) + 32 <= return_data.size
                        mem[_4601 + ceil32(return_data.size) + 96] = mem[_4601 + mem[_4601 + 96 len 4], Mask(224, 32, s) >> 32 + 96]
                        _9749 = mem[_4601 + _9225 + 96]
                        s = 0
                        while s < 32 * _9749:
                            mem[s + _4601 + ceil32(return_data.size) + 128] = mem[s + _4601 + _9225 + 128]
                            s = s + 32
                            continue 
                        mem[64] = (32 * _9749) + _4601 + ceil32(return_data.size) + 128
                        require mem[_4601 + ceil32(return_data.size) + 96] - 1 < mem[_4601 + ceil32(return_data.size) + 96]
                        if mem[(32 * mem[_4601 + ceil32(return_data.size) + 96] - 1) + _4601 + ceil32(return_data.size) + 128] <= t:
                            idx = idx + 1
                            t = t
                            continue 
                        idx = idx + 1
                        t = mem[(32 * mem[_4601 + ceil32(return_data.size) + 96] - 1) + _4601 + ceil32(return_data.size) + 128]
                        continue 
                    if 7 == idx:
                        _4750 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        require 0 < mem[_4750]
                        mem[_4750 + 32] = 0x49d68029688eabf473097a2fc38ef61633a3c
                        require 1 < mem[_4750]
                        mem[_4750 + 64] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                        mem[_4750 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[_4750 + 100] = s
                        mem[_4750 + 132] = 64
                        mem[_4750 + 164] = mem[_4750]
                        u = 0
                        while u < 32 * mem[_4750]:
                            mem[u + _4750 + 196] = mem[u + _4750 + 32]
                            u = u + 32
                            continue 
                        require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c)
                        staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c.getAmountsOut(uint256 arg1, address[] arg2) with:
                                gas gas_remaining wei
                               args s, 64, mem[_4750 + 164 len (32 * mem[_4750]) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_4750 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = _4750 + ceil32(return_data.size) + 96
                        require return_data.size >= 32
                        _9223 = mem[_4750 + 96 len 4], Mask(224, 32, s) >> 32
                        require mem[_4750 + 96 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                        require mem[_4750 + 96 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                        require mem[_4750 + mem[_4750 + 96 len 4], Mask(224, 32, s) >> 32 + 96] <= 4294967296 and mem[_4750 + 96 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_4750 + mem[_4750 + 96 len 4], Mask(224, 32, s) >> 32 + 96]) + 32 <= return_data.size
                        mem[_4750 + ceil32(return_data.size) + 96] = mem[_4750 + mem[_4750 + 96 len 4], Mask(224, 32, s) >> 32 + 96]
                        _9748 = mem[_4750 + _9223 + 96]
                        s = 0
                        while s < 32 * _9748:
                            mem[s + _4750 + ceil32(return_data.size) + 128] = mem[s + _4750 + _9223 + 128]
                            s = s + 32
                            continue 
                        mem[64] = (32 * _9748) + _4750 + ceil32(return_data.size) + 128
                        require mem[_4750 + ceil32(return_data.size) + 96] - 1 < mem[_4750 + ceil32(return_data.size) + 96]
                        if mem[(32 * mem[_4750 + ceil32(return_data.size) + 96] - 1) + _4750 + ceil32(return_data.size) + 128] <= t:
                            idx = idx + 1
                            t = t
                            continue 
                        idx = idx + 1
                        t = mem[(32 * mem[_4750 + ceil32(return_data.size) + 96] - 1) + _4750 + ceil32(return_data.size) + 128]
                        continue 
                    if 8 == idx:
                        _4950 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        require 0 < mem[_4950]
                        mem[_4950 + 32] = 0x49d68029688eabf473097a2fc38ef61633a3c
                        require 1 < mem[_4950]
                        mem[_4950 + 64] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                        mem[_4950 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[_4950 + 100] = s
                        mem[_4950 + 132] = 64
                        mem[_4950 + 164] = mem[_4950]
                        u = 0
                        while u < 32 * mem[_4950]:
                            mem[u + _4950 + 196] = mem[u + _4950 + 32]
                            u = u + 32
                            continue 
                        require ext_code.size(0x6b3d631b87fe27af29efec61d2ab8ce4d621ccbf)
                        staticcall 0x6b3d631b87fe27af29efec61d2ab8ce4d621ccbf.getAmountsOut(uint256 arg1, address[] arg2) with:
                                gas gas_remaining wei
                               args s, 64, mem[_4950 + 164 len (32 * mem[_4950]) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_4950 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = _4950 + ceil32(return_data.size) + 96
                        require return_data.size >= 32
                        _9221 = mem[_4950 + 96 len 4], Mask(224, 32, s) >> 32
                        require mem[_4950 + 96 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                        require mem[_4950 + 96 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                        require mem[_4950 + mem[_4950 + 96 len 4], Mask(224, 32, s) >> 32 + 96] <= 4294967296 and mem[_4950 + 96 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_4950 + mem[_4950 + 96 len 4], Mask(224, 32, s) >> 32 + 96]) + 32 <= return_data.size
                        mem[_4950 + ceil32(return_data.size) + 96] = mem[_4950 + mem[_4950 + 96 len 4], Mask(224, 32, s) >> 32 + 96]
                        _9747 = mem[_4950 + _9221 + 96]
                        s = 0
                        while s < 32 * _9747:
                            mem[s + _4950 + ceil32(return_data.size) + 128] = mem[s + _4950 + _9221 + 128]
                            s = s + 32
                            continue 
                        mem[64] = (32 * _9747) + _4950 + ceil32(return_data.size) + 128
                        require mem[_4950 + ceil32(return_data.size) + 96] - 1 < mem[_4950 + ceil32(return_data.size) + 96]
                        if mem[(32 * mem[_4950 + ceil32(return_data.size) + 96] - 1) + _4950 + ceil32(return_data.size) + 128] <= t:
                            idx = idx + 1
                            t = t
                            continue 
                        idx = idx + 1
                        t = mem[(32 * mem[_4950 + ceil32(return_data.size) + 96] - 1) + _4950 + ceil32(return_data.size) + 128]
                        continue 
                    if idx != 9:
                        _4948 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        require 0 < mem[_4948]
                        mem[_4948 + 32] = 0x49d68029688eabf473097a2fc38ef61633a3c
                        require 1 < mem[_4948]
                        mem[_4948 + 64] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                        mem[_4948 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[_4948 + 100] = s
                        mem[_4948 + 132] = 64
                        mem[_4948 + 164] = mem[_4948]
                        u = 0
                        while u < 32 * mem[_4948]:
                            mem[u + _4948 + 196] = mem[u + _4948 + 32]
                            u = u + 32
                            continue 
                        require ext_code.size(0)
                        staticcall 0x0.getAmountsOut(uint256 arg1, address[] arg2) with:
                                gas gas_remaining wei
                               args s, 64, mem[_4948 + 164 len (32 * mem[_4948]) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_4948 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = _4948 + ceil32(return_data.size) + 96
                        require return_data.size >= 32
                        _9217 = mem[_4948 + 96 len 4], Mask(224, 32, s) >> 32
                        require mem[_4948 + 96 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                        require mem[_4948 + 96 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                        require mem[_4948 + mem[_4948 + 96 len 4], Mask(224, 32, s) >> 32 + 96] <= 4294967296 and mem[_4948 + 96 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_4948 + mem[_4948 + 96 len 4], Mask(224, 32, s) >> 32 + 96]) + 32 <= return_data.size
                        mem[_4948 + ceil32(return_data.size) + 96] = mem[_4948 + mem[_4948 + 96 len 4], Mask(224, 32, s) >> 32 + 96]
                        _9745 = mem[_4948 + _9217 + 96]
                        s = 0
                        while s < 32 * _9745:
                            mem[s + _4948 + ceil32(return_data.size) + 128] = mem[s + _4948 + _9217 + 128]
                            s = s + 32
                            continue 
                        mem[64] = (32 * _9745) + _4948 + ceil32(return_data.size) + 128
                        require mem[_4948 + ceil32(return_data.size) + 96] - 1 < mem[_4948 + ceil32(return_data.size) + 96]
                        if mem[(32 * mem[_4948 + ceil32(return_data.size) + 96] - 1) + _4948 + ceil32(return_data.size) + 128] <= t:
                            idx = idx + 1
                            t = t
                            continue 
                        idx = idx + 1
                        t = mem[(32 * mem[_4948 + ceil32(return_data.size) + 96] - 1) + _4948 + ceil32(return_data.size) + 128]
                        continue 
                    _5187 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    require 0 < mem[_5187]
                    mem[_5187 + 32] = 0x49d68029688eabf473097a2fc38ef61633a3c
                    require 1 < mem[_5187]
                    mem[_5187 + 64] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    mem[_5187 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_5187 + 100] = s
                    mem[_5187 + 132] = 64
                    mem[_5187 + 164] = mem[_5187]
                    u = 0
                    while u < 32 * mem[_5187]:
                        mem[u + _5187 + 196] = mem[u + _5187 + 32]
                        u = u + 32
                        continue 
                    require ext_code.size(0x2724b9497b2cf3325c6be3ea430b3cec34b5ef2d)
                    staticcall 0x2724b9497b2cf3325c6be3ea430b3cec34b5ef2d.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args s, 64, mem[_5187 + 164 len (32 * mem[_5187]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_5187 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _5187 + ceil32(return_data.size) + 96
                    require return_data.size >= 32
                    _9219 = mem[_5187 + 96 len 4], Mask(224, 32, s) >> 32
                    require mem[_5187 + 96 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                    require mem[_5187 + 96 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                    require mem[_5187 + mem[_5187 + 96 len 4], Mask(224, 32, s) >> 32 + 96] <= 4294967296 and mem[_5187 + 96 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_5187 + mem[_5187 + 96 len 4], Mask(224, 32, s) >> 32 + 96]) + 32 <= return_data.size
                    mem[_5187 + ceil32(return_data.size) + 96] = mem[_5187 + mem[_5187 + 96 len 4], Mask(224, 32, s) >> 32 + 96]
                    _9746 = mem[_5187 + _9219 + 96]
                    s = 0
                    while s < 32 * _9746:
                        mem[s + _5187 + ceil32(return_data.size) + 128] = mem[s + _5187 + _9219 + 128]
                        s = s + 32
                        continue 
                    mem[64] = (32 * _9746) + _5187 + ceil32(return_data.size) + 128
                    require mem[_5187 + ceil32(return_data.size) + 96] - 1 < mem[_5187 + ceil32(return_data.size) + 96]
                    if mem[(32 * mem[_5187 + ceil32(return_data.size) + 96] - 1) + _5187 + ceil32(return_data.size) + 128] <= t:
                        idx = idx + 1
                        t = t
                        continue 
                    idx = idx + 1
                    t = mem[(32 * mem[_5187 + ceil32(return_data.size) + 96] - 1) + _5187 + ceil32(return_data.size) + 128]
                    continue 
                if 8 == idx:
                    if 6 == idx:
                        _4755 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        require 0 < mem[_4755]
                        mem[_4755 + 32] = 0x49d68029688eabf473097a2fc38ef61633a3c
                        require 1 < mem[_4755]
                        mem[_4755 + 64] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                        mem[_4755 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[_4755 + 100] = s
                        mem[_4755 + 132] = 64
                        mem[_4755 + 164] = mem[_4755]
                        u = 0
                        while u < 32 * mem[_4755]:
                            mem[u + _4755 + 196] = mem[u + _4755 + 32]
                            u = u + 32
                            continue 
                        require ext_code.size(0x845e76a8691423fbc4ecb8dd77556cb61c09ee25)
                        staticcall 0x845e76a8691423fbc4ecb8dd77556cb61c09ee25.getAmountsOut(uint256 arg1, address[] arg2) with:
                                gas gas_remaining wei
                               args s, 64, mem[_4755 + 164 len (32 * mem[_4755]) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_4755 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = _4755 + ceil32(return_data.size) + 96
                        require return_data.size >= 32
                        _9235 = mem[_4755 + 96 len 4], Mask(224, 32, s) >> 32
                        require mem[_4755 + 96 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                        require mem[_4755 + 96 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                        require mem[_4755 + mem[_4755 + 96 len 4], Mask(224, 32, s) >> 32 + 96] <= 4294967296 and mem[_4755 + 96 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_4755 + mem[_4755 + 96 len 4], Mask(224, 32, s) >> 32 + 96]) + 32 <= return_data.size
                        mem[_4755 + ceil32(return_data.size) + 96] = mem[_4755 + mem[_4755 + 96 len 4], Mask(224, 32, s) >> 32 + 96]
                        _9754 = mem[_4755 + _9235 + 96]
                        s = 0
                        while s < 32 * _9754:
                            mem[s + _4755 + ceil32(return_data.size) + 128] = mem[s + _4755 + _9235 + 128]
                            s = s + 32
                            continue 
                        mem[64] = (32 * _9754) + _4755 + ceil32(return_data.size) + 128
                        require mem[_4755 + ceil32(return_data.size) + 96] - 1 < mem[_4755 + ceil32(return_data.size) + 96]
                        if mem[(32 * mem[_4755 + ceil32(return_data.size) + 96] - 1) + _4755 + ceil32(return_data.size) + 128] <= t:
                            idx = idx + 1
                            t = t
                            continue 
                        idx = idx + 1
                        t = mem[(32 * mem[_4755 + ceil32(return_data.size) + 96] - 1) + _4755 + ceil32(return_data.size) + 128]
                        continue 
                    if 7 == idx:
                        _4956 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        require 0 < mem[_4956]
                        mem[_4956 + 32] = 0x49d68029688eabf473097a2fc38ef61633a3c
                        require 1 < mem[_4956]
                        mem[_4956 + 64] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                        mem[_4956 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[_4956 + 100] = s
                        mem[_4956 + 132] = 64
                        mem[_4956 + 164] = mem[_4956]
                        u = 0
                        while u < 32 * mem[_4956]:
                            mem[u + _4956 + 196] = mem[u + _4956 + 32]
                            u = u + 32
                            continue 
                        require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c)
                        staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c.getAmountsOut(uint256 arg1, address[] arg2) with:
                                gas gas_remaining wei
                               args s, 64, mem[_4956 + 164 len (32 * mem[_4956]) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_4956 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = _4956 + ceil32(return_data.size) + 96
                        require return_data.size >= 32
                        _9233 = mem[_4956 + 96 len 4], Mask(224, 32, s) >> 32
                        require mem[_4956 + 96 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                        require mem[_4956 + 96 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                        require mem[_4956 + mem[_4956 + 96 len 4], Mask(224, 32, s) >> 32 + 96] <= 4294967296 and mem[_4956 + 96 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_4956 + mem[_4956 + 96 len 4], Mask(224, 32, s) >> 32 + 96]) + 32 <= return_data.size
                        mem[_4956 + ceil32(return_data.size) + 96] = mem[_4956 + mem[_4956 + 96 len 4], Mask(224, 32, s) >> 32 + 96]
                        _9753 = mem[_4956 + _9233 + 96]
                        s = 0
                        while s < 32 * _9753:
                            mem[s + _4956 + ceil32(return_data.size) + 128] = mem[s + _4956 + _9233 + 128]
                            s = s + 32
                            continue 
                        mem[64] = (32 * _9753) + _4956 + ceil32(return_data.size) + 128
                        require mem[_4956 + ceil32(return_data.size) + 96] - 1 < mem[_4956 + ceil32(return_data.size) + 96]
                        if mem[(32 * mem[_4956 + ceil32(return_data.size) + 96] - 1) + _4956 + ceil32(return_data.size) + 128] <= t:
                            idx = idx + 1
                            t = t
                            continue 
                        idx = idx + 1
                        t = mem[(32 * mem[_4956 + ceil32(return_data.size) + 96] - 1) + _4956 + ceil32(return_data.size) + 128]
                        continue 
                    if 8 == idx:
                        _5195 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        require 0 < mem[_5195]
                        mem[_5195 + 32] = 0x49d68029688eabf473097a2fc38ef61633a3c
                        require 1 < mem[_5195]
                        mem[_5195 + 64] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                        mem[_5195 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[_5195 + 100] = s
                        mem[_5195 + 132] = 64
                        mem[_5195 + 164] = mem[_5195]
                        u = 0
                        while u < 32 * mem[_5195]:
                            mem[u + _5195 + 196] = mem[u + _5195 + 32]
                            u = u + 32
                            continue 
                        require ext_code.size(0x6b3d631b87fe27af29efec61d2ab8ce4d621ccbf)
                        staticcall 0x6b3d631b87fe27af29efec61d2ab8ce4d621ccbf.getAmountsOut(uint256 arg1, address[] arg2) with:
                                gas gas_remaining wei
                               args s, 64, mem[_5195 + 164 len (32 * mem[_5195]) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_5195 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = _5195 + ceil32(return_data.size) + 96
                        require return_data.size >= 32
                        _9231 = mem[_5195 + 96 len 4], Mask(224, 32, s) >> 32
                        require mem[_5195 + 96 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                        require mem[_5195 + 96 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                        require mem[_5195 + mem[_5195 + 96 len 4], Mask(224, 32, s) >> 32 + 96] <= 4294967296 and mem[_5195 + 96 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_5195 + mem[_5195 + 96 len 4], Mask(224, 32, s) >> 32 + 96]) + 32 <= return_data.size
                        mem[_5195 + ceil32(return_data.size) + 96] = mem[_5195 + mem[_5195 + 96 len 4], Mask(224, 32, s) >> 32 + 96]
                        _9752 = mem[_5195 + _9231 + 96]
                        s = 0
                        while s < 32 * _9752:
                            mem[s + _5195 + ceil32(return_data.size) + 128] = mem[s + _5195 + _9231 + 128]
                            s = s + 32
                            continue 
                        mem[64] = (32 * _9752) + _5195 + ceil32(return_data.size) + 128
                        require mem[_5195 + ceil32(return_data.size) + 96] - 1 < mem[_5195 + ceil32(return_data.size) + 96]
                        if mem[(32 * mem[_5195 + ceil32(return_data.size) + 96] - 1) + _5195 + ceil32(return_data.size) + 128] <= t:
                            idx = idx + 1
                            t = t
                            continue 
                        idx = idx + 1
                        t = mem[(32 * mem[_5195 + ceil32(return_data.size) + 96] - 1) + _5195 + ceil32(return_data.size) + 128]
                        continue 
                    if idx != 9:
                        _5193 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        require 0 < mem[_5193]
                        mem[_5193 + 32] = 0x49d68029688eabf473097a2fc38ef61633a3c
                        require 1 < mem[_5193]
                        mem[_5193 + 64] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                        mem[_5193 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[_5193 + 100] = s
                        mem[_5193 + 132] = 64
                        mem[_5193 + 164] = mem[_5193]
                        u = 0
                        while u < 32 * mem[_5193]:
                            mem[u + _5193 + 196] = mem[u + _5193 + 32]
                            u = u + 32
                            continue 
                        require ext_code.size(0)
                        staticcall 0x0.getAmountsOut(uint256 arg1, address[] arg2) with:
                                gas gas_remaining wei
                               args s, 64, mem[_5193 + 164 len (32 * mem[_5193]) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_5193 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = _5193 + ceil32(return_data.size) + 96
                        require return_data.size >= 32
                        _9227 = mem[_5193 + 96 len 4], Mask(224, 32, s) >> 32
                        require mem[_5193 + 96 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                        require mem[_5193 + 96 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                        require mem[_5193 + mem[_5193 + 96 len 4], Mask(224, 32, s) >> 32 + 96] <= 4294967296 and mem[_5193 + 96 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_5193 + mem[_5193 + 96 len 4], Mask(224, 32, s) >> 32 + 96]) + 32 <= return_data.size
                        mem[_5193 + ceil32(return_data.size) + 96] = mem[_5193 + mem[_5193 + 96 len 4], Mask(224, 32, s) >> 32 + 96]
                        _9750 = mem[_5193 + _9227 + 96]
                        s = 0
                        while s < 32 * _9750:
                            mem[s + _5193 + ceil32(return_data.size) + 128] = mem[s + _5193 + _9227 + 128]
                            s = s + 32
                            continue 
                        mem[64] = (32 * _9750) + _5193 + ceil32(return_data.size) + 128
                        require mem[_5193 + ceil32(return_data.size) + 96] - 1 < mem[_5193 + ceil32(return_data.size) + 96]
                        if mem[(32 * mem[_5193 + ceil32(return_data.size) + 96] - 1) + _5193 + ceil32(return_data.size) + 128] <= t:
                            idx = idx + 1
                            t = t
                            continue 
                        idx = idx + 1
                        t = mem[(32 * mem[_5193 + ceil32(return_data.size) + 96] - 1) + _5193 + ceil32(return_data.size) + 128]
                        continue 
                    _5481 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    require 0 < mem[_5481]
                    mem[_5481 + 32] = 0x49d68029688eabf473097a2fc38ef61633a3c
                    require 1 < mem[_5481]
                    mem[_5481 + 64] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    mem[_5481 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_5481 + 100] = s
                    mem[_5481 + 132] = 64
                    mem[_5481 + 164] = mem[_5481]
                    u = 0
                    while u < 32 * mem[_5481]:
                        mem[u + _5481 + 196] = mem[u + _5481 + 32]
                        u = u + 32
                        continue 
                    require ext_code.size(0x2724b9497b2cf3325c6be3ea430b3cec34b5ef2d)
                    staticcall 0x2724b9497b2cf3325c6be3ea430b3cec34b5ef2d.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args s, 64, mem[_5481 + 164 len (32 * mem[_5481]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_5481 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _5481 + ceil32(return_data.size) + 96
                    require return_data.size >= 32
                    _9229 = mem[_5481 + 96 len 4], Mask(224, 32, s) >> 32
                    require mem[_5481 + 96 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                    require mem[_5481 + 96 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                    require mem[_5481 + mem[_5481 + 96 len 4], Mask(224, 32, s) >> 32 + 96] <= 4294967296 and mem[_5481 + 96 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_5481 + mem[_5481 + 96 len 4], Mask(224, 32, s) >> 32 + 96]) + 32 <= return_data.size
                    mem[_5481 + ceil32(return_data.size) + 96] = mem[_5481 + mem[_5481 + 96 len 4], Mask(224, 32, s) >> 32 + 96]
                    _9751 = mem[_5481 + _9229 + 96]
                    s = 0
                    while s < 32 * _9751:
                        mem[s + _5481 + ceil32(return_data.size) + 128] = mem[s + _5481 + _9229 + 128]
                        s = s + 32
                        continue 
                    mem[64] = (32 * _9751) + _5481 + ceil32(return_data.size) + 128
                    require mem[_5481 + ceil32(return_data.size) + 96] - 1 < mem[_5481 + ceil32(return_data.size) + 96]
                    if mem[(32 * mem[_5481 + ceil32(return_data.size) + 96] - 1) + _5481 + ceil32(return_data.size) + 128] <= t:
                        idx = idx + 1
                        t = t
                        continue 
                    idx = idx + 1
                    t = mem[(32 * mem[_5481 + ceil32(return_data.size) + 96] - 1) + _5481 + ceil32(return_data.size) + 128]
                    continue 
                if idx != 9:
                    if 10 == idx:
                        mem[mem[64] + 4] = 0
                        mem[mem[64] + 36] = 1
                        mem[mem[64] + 68] = s
                        require ext_code.size(0x952bda8a83c3d5f398a686bb4e8c6dd90072d523)
                        staticcall 0x952bda8a83c3d5f398a686bb4e8c6dd90072d523.calculateSwap(uint8 arg1, uint8 arg2, uint256 arg3) with:
                                gas gas_remaining wei
                               args 0, 1, s
                    else:
                        if 11 == idx:
                            mem[mem[64] + 4] = 1
                            mem[mem[64] + 36] = 2
                            mem[mem[64] + 68] = s
                            require ext_code.size(0x80f6aed32fc474dd5717105dba5ea57268f46eb)
                            staticcall 0x80f6aed32fc474dd5717105dba5ea57268f46eb.calculateSwap(uint8 arg1, uint8 arg2, uint256 arg3) with:
                                    gas gas_remaining wei
                                   args 1, 2, s
                        else:
                            if idx != 12:
                                if s <= t:
                                    idx = idx + 1
                                    t = t
                                    continue 
                                idx = idx + 1
                                t = s
                                continue 
                            mem[mem[64] + 4] = 2
                            mem[mem[64] + 36] = 1
                            mem[mem[64] + 68] = s
                            require ext_code.size(0x2dd7c9371965472e5a5fd28fbe165007c61439e1)
                            staticcall 0x2dd7c9371965472e5a5fd28fbe165007c61439e1.get_dy(int128 arg1, int128 arg2, uint256 arg3) with:
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
                if 6 == idx:
                    _4965 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    require 0 < mem[_4965]
                    mem[_4965 + 32] = 0x49d68029688eabf473097a2fc38ef61633a3c
                    require 1 < mem[_4965]
                    mem[_4965 + 64] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    mem[_4965 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_4965 + 100] = s
                    mem[_4965 + 132] = 64
                    mem[_4965 + 164] = mem[_4965]
                    u = 0
                    while u < 32 * mem[_4965]:
                        mem[u + _4965 + 196] = mem[u + _4965 + 32]
                        u = u + 32
                        continue 
                    require ext_code.size(0x845e76a8691423fbc4ecb8dd77556cb61c09ee25)
                    staticcall 0x845e76a8691423fbc4ecb8dd77556cb61c09ee25.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args s, 64, mem[_4965 + 164 len (32 * mem[_4965]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_4965 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _4965 + ceil32(return_data.size) + 96
                    require return_data.size >= 32
                    _9245 = mem[_4965 + 96 len 4], Mask(224, 32, s) >> 32
                    require mem[_4965 + 96 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                    require mem[_4965 + 96 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                    require mem[_4965 + mem[_4965 + 96 len 4], Mask(224, 32, s) >> 32 + 96] <= 4294967296 and mem[_4965 + 96 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_4965 + mem[_4965 + 96 len 4], Mask(224, 32, s) >> 32 + 96]) + 32 <= return_data.size
                    mem[_4965 + ceil32(return_data.size) + 96] = mem[_4965 + mem[_4965 + 96 len 4], Mask(224, 32, s) >> 32 + 96]
                    _9759 = mem[_4965 + _9245 + 96]
                    s = 0
                    while s < 32 * _9759:
                        mem[s + _4965 + ceil32(return_data.size) + 128] = mem[s + _4965 + _9245 + 128]
                        s = s + 32
                        continue 
                    mem[64] = (32 * _9759) + _4965 + ceil32(return_data.size) + 128
                    require mem[_4965 + ceil32(return_data.size) + 96] - 1 < mem[_4965 + ceil32(return_data.size) + 96]
                    if mem[(32 * mem[_4965 + ceil32(return_data.size) + 96] - 1) + _4965 + ceil32(return_data.size) + 128] <= t:
                        idx = idx + 1
                        t = t
                        continue 
                    idx = idx + 1
                    t = mem[(32 * mem[_4965 + ceil32(return_data.size) + 96] - 1) + _4965 + ceil32(return_data.size) + 128]
                    continue 
                if 7 == idx:
                    _5209 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    require 0 < mem[_5209]
                    mem[_5209 + 32] = 0x49d68029688eabf473097a2fc38ef61633a3c
                    require 1 < mem[_5209]
                    mem[_5209 + 64] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    mem[_5209 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_5209 + 100] = s
                    mem[_5209 + 132] = 64
                    mem[_5209 + 164] = mem[_5209]
                    u = 0
                    while u < 32 * mem[_5209]:
                        mem[u + _5209 + 196] = mem[u + _5209 + 32]
                        u = u + 32
                        continue 
                    require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c)
                    staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args s, 64, mem[_5209 + 164 len (32 * mem[_5209]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_5209 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _5209 + ceil32(return_data.size) + 96
                    require return_data.size >= 32
                    _9243 = mem[_5209 + 96 len 4], Mask(224, 32, s) >> 32
                    require mem[_5209 + 96 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                    require mem[_5209 + 96 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                    require mem[_5209 + mem[_5209 + 96 len 4], Mask(224, 32, s) >> 32 + 96] <= 4294967296 and mem[_5209 + 96 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_5209 + mem[_5209 + 96 len 4], Mask(224, 32, s) >> 32 + 96]) + 32 <= return_data.size
                    mem[_5209 + ceil32(return_data.size) + 96] = mem[_5209 + mem[_5209 + 96 len 4], Mask(224, 32, s) >> 32 + 96]
                    _9758 = mem[_5209 + _9243 + 96]
                    s = 0
                    while s < 32 * _9758:
                        mem[s + _5209 + ceil32(return_data.size) + 128] = mem[s + _5209 + _9243 + 128]
                        s = s + 32
                        continue 
                    mem[64] = (32 * _9758) + _5209 + ceil32(return_data.size) + 128
                    require mem[_5209 + ceil32(return_data.size) + 96] - 1 < mem[_5209 + ceil32(return_data.size) + 96]
                    if mem[(32 * mem[_5209 + ceil32(return_data.size) + 96] - 1) + _5209 + ceil32(return_data.size) + 128] <= t:
                        idx = idx + 1
                        t = t
                        continue 
                    idx = idx + 1
                    t = mem[(32 * mem[_5209 + ceil32(return_data.size) + 96] - 1) + _5209 + ceil32(return_data.size) + 128]
                    continue 
                if 8 == idx:
                    _5492 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    require 0 < mem[_5492]
                    mem[_5492 + 32] = 0x49d68029688eabf473097a2fc38ef61633a3c
                    require 1 < mem[_5492]
                    mem[_5492 + 64] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    mem[_5492 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_5492 + 100] = s
                    mem[_5492 + 132] = 64
                    mem[_5492 + 164] = mem[_5492]
                    u = 0
                    while u < 32 * mem[_5492]:
                        mem[u + _5492 + 196] = mem[u + _5492 + 32]
                        u = u + 32
                        continue 
                    require ext_code.size(0x6b3d631b87fe27af29efec61d2ab8ce4d621ccbf)
                    staticcall 0x6b3d631b87fe27af29efec61d2ab8ce4d621ccbf.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args s, 64, mem[_5492 + 164 len (32 * mem[_5492]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_5492 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _5492 + ceil32(return_data.size) + 96
                    require return_data.size >= 32
                    _9241 = mem[_5492 + 96 len 4], Mask(224, 32, s) >> 32
                    require mem[_5492 + 96 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                    require mem[_5492 + 96 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                    require mem[_5492 + mem[_5492 + 96 len 4], Mask(224, 32, s) >> 32 + 96] <= 4294967296 and mem[_5492 + 96 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_5492 + mem[_5492 + 96 len 4], Mask(224, 32, s) >> 32 + 96]) + 32 <= return_data.size
                    mem[_5492 + ceil32(return_data.size) + 96] = mem[_5492 + mem[_5492 + 96 len 4], Mask(224, 32, s) >> 32 + 96]
                    _9757 = mem[_5492 + _9241 + 96]
                    s = 0
                    while s < 32 * _9757:
                        mem[s + _5492 + ceil32(return_data.size) + 128] = mem[s + _5492 + _9241 + 128]
                        s = s + 32
                        continue 
                    mem[64] = (32 * _9757) + _5492 + ceil32(return_data.size) + 128
                    require mem[_5492 + ceil32(return_data.size) + 96] - 1 < mem[_5492 + ceil32(return_data.size) + 96]
                    if mem[(32 * mem[_5492 + ceil32(return_data.size) + 96] - 1) + _5492 + ceil32(return_data.size) + 128] <= t:
                        idx = idx + 1
                        t = t
                        continue 
                    idx = idx + 1
                    t = mem[(32 * mem[_5492 + ceil32(return_data.size) + 96] - 1) + _5492 + ceil32(return_data.size) + 128]
                    continue 
                if idx != 9:
                    _5490 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    require 0 < mem[_5490]
                    mem[_5490 + 32] = 0x49d68029688eabf473097a2fc38ef61633a3c
                    require 1 < mem[_5490]
                    mem[_5490 + 64] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    mem[_5490 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_5490 + 100] = s
                    mem[_5490 + 132] = 64
                    mem[_5490 + 164] = mem[_5490]
                    u = 0
                    while u < 32 * mem[_5490]:
                        mem[u + _5490 + 196] = mem[u + _5490 + 32]
                        u = u + 32
                        continue 
                    require ext_code.size(0)
                    staticcall 0x0.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args s, 64, mem[_5490 + 164 len (32 * mem[_5490]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_5490 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _5490 + ceil32(return_data.size) + 96
                    require return_data.size >= 32
                    _9237 = mem[_5490 + 96 len 4], Mask(224, 32, s) >> 32
                    require mem[_5490 + 96 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                    require mem[_5490 + 96 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                    require mem[_5490 + mem[_5490 + 96 len 4], Mask(224, 32, s) >> 32 + 96] <= 4294967296 and mem[_5490 + 96 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_5490 + mem[_5490 + 96 len 4], Mask(224, 32, s) >> 32 + 96]) + 32 <= return_data.size
                    mem[_5490 + ceil32(return_data.size) + 96] = mem[_5490 + mem[_5490 + 96 len 4], Mask(224, 32, s) >> 32 + 96]
                    _9755 = mem[_5490 + _9237 + 96]
                    s = 0
                    while s < 32 * _9755:
                        mem[s + _5490 + ceil32(return_data.size) + 128] = mem[s + _5490 + _9237 + 128]
                        s = s + 32
                        continue 
                    mem[64] = (32 * _9755) + _5490 + ceil32(return_data.size) + 128
                    require mem[_5490 + ceil32(return_data.size) + 96] - 1 < mem[_5490 + ceil32(return_data.size) + 96]
                    if mem[(32 * mem[_5490 + ceil32(return_data.size) + 96] - 1) + _5490 + ceil32(return_data.size) + 128] <= t:
                        idx = idx + 1
                        t = t
                        continue 
                    idx = idx + 1
                    t = mem[(32 * mem[_5490 + ceil32(return_data.size) + 96] - 1) + _5490 + ceil32(return_data.size) + 128]
                    continue 
                _5776 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                require 0 < mem[_5776]
                mem[_5776 + 32] = 0x49d68029688eabf473097a2fc38ef61633a3c
                require 1 < mem[_5776]
                mem[_5776 + 64] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                mem[_5776 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_5776 + 100] = s
                mem[_5776 + 132] = 64
                mem[_5776 + 164] = mem[_5776]
                u = 0
                while u < 32 * mem[_5776]:
                    mem[u + _5776 + 196] = mem[u + _5776 + 32]
                    u = u + 32
                    continue 
                require ext_code.size(0x2724b9497b2cf3325c6be3ea430b3cec34b5ef2d)
                staticcall 0x2724b9497b2cf3325c6be3ea430b3cec34b5ef2d.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args s, 64, mem[_5776 + 164 len (32 * mem[_5776]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_5776 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _5776 + ceil32(return_data.size) + 96
                require return_data.size >= 32
                _9239 = mem[_5776 + 96 len 4], Mask(224, 32, s) >> 32
                require mem[_5776 + 96 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                require mem[_5776 + 96 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                require mem[_5776 + mem[_5776 + 96 len 4], Mask(224, 32, s) >> 32 + 96] <= 4294967296 and mem[_5776 + 96 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_5776 + mem[_5776 + 96 len 4], Mask(224, 32, s) >> 32 + 96]) + 32 <= return_data.size
                mem[_5776 + ceil32(return_data.size) + 96] = mem[_5776 + mem[_5776 + 96 len 4], Mask(224, 32, s) >> 32 + 96]
                _9756 = mem[_5776 + _9239 + 96]
                s = 0
                while s < 32 * _9756:
                    mem[s + _5776 + ceil32(return_data.size) + 128] = mem[s + _5776 + _9239 + 128]
                    s = s + 32
                    continue 
                mem[64] = (32 * _9756) + _5776 + ceil32(return_data.size) + 128
                require mem[_5776 + ceil32(return_data.size) + 96] - 1 < mem[_5776 + ceil32(return_data.size) + 96]
                if mem[(32 * mem[_5776 + ceil32(return_data.size) + 96] - 1) + _5776 + ceil32(return_data.size) + 128] <= t:
                    idx = idx + 1
                    t = t
                    continue 
                idx = idx + 1
                t = mem[(32 * mem[_5776 + ceil32(return_data.size) + 96] - 1) + _5776 + ceil32(return_data.size) + 128]
                continue 
            _3456 = mem[0]
            _3792 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            require 0 < mem[_3792]
            mem[_3792 + 32] = 0x49d68029688eabf473097a2fc38ef61633a3c
            require 1 < mem[_3792]
            mem[_3792 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c
            mem[_3792 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[_3792 + 100] = s
            mem[_3792 + 132] = 64
            mem[_3792 + 164] = mem[_3792]
            u = 0
            while u < 32 * mem[_3792]:
                mem[u + _3792 + 196] = mem[u + _3792 + 32]
                u = u + 32
                continue 
            require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c)
            staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c.getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args s, 64, mem[_3792 + 164 len (32 * mem[_3792]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[_3792 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = _3792 + ceil32(return_data.size) + 96
            require return_data.size >= 32
            _9247 = mem[_3792 + 96 len 4], Mask(224, 32, s) >> 32
            require mem[_3792 + 96 len 4], Mask(224, 32, s) >> 32 <= 4294967296
            require mem[_3792 + 96 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
            require mem[_3792 + mem[_3792 + 96 len 4], Mask(224, 32, s) >> 32 + 96] <= 4294967296 and mem[_3792 + 96 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_3792 + mem[_3792 + 96 len 4], Mask(224, 32, s) >> 32 + 96]) + 32 <= return_data.size
            mem[_3792 + ceil32(return_data.size) + 96] = mem[_3792 + mem[_3792 + 96 len 4], Mask(224, 32, s) >> 32 + 96]
            _9760 = mem[_3792 + _9247 + 96]
            s = 0
            while s < 32 * _9760:
                mem[s + _3792 + ceil32(return_data.size) + 128] = mem[s + _3792 + _9247 + 128]
                s = s + 32
                continue 
            require mem[_3792 + ceil32(return_data.size) + 96] - 1 < mem[_3792 + ceil32(return_data.size) + 96]
            _11756 = mem[(32 * mem[_3792 + ceil32(return_data.size) + 96] - 1) + _3792 + ceil32(return_data.size) + 128]
            mem[(32 * _9760) + _3792 + ceil32(return_data.size) + 128] = 2
            mem[0] = _3456
            mem[(32 * _9760) + _3792 + ceil32(return_data.size) + 160] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c
            mem[(32 * _9760) + _3792 + ceil32(return_data.size) + 192] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
            mem[(32 * _9760) + _3792 + ceil32(return_data.size) + 224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[(32 * _9760) + _3792 + ceil32(return_data.size) + 228] = _11756
            mem[(32 * _9760) + _3792 + ceil32(return_data.size) + 260] = 64
            mem[(32 * _9760) + _3792 + ceil32(return_data.size) + 292] = 2
            s = 0
            while s < 64:
                mem[s + (32 * _9760) + _3792 + ceil32(return_data.size) + 324] = mem[s + (32 * _9760) + _3792 + ceil32(return_data.size) + 160]
                s = s + 32
                continue 
            require ext_code.size(0xe4a4642b19c4d0cba965673cd51422b1eda0a78d)
            staticcall 0xe4a4642b19c4d0cba965673cd51422b1eda0a78d.getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args _11756, Array(len=2, data=mem[(32 * _9760) + _3792 + ceil32(return_data.size) + 324 len 64])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _9760) + _3792 + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * _9760) + _3792 + (2 * ceil32(return_data.size)) + 224
            require return_data.size >= 32
            _12331 = mem[(32 * _9760) + _3792 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _11756) >> 32
            require mem[(32 * _9760) + _3792 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _11756) >> 32 <= 4294967296
            require mem[(32 * _9760) + _3792 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _11756) >> 32 + 32 <= return_data.size
            require mem[(32 * _9760) + _3792 + ceil32(return_data.size) + mem[(32 * _9760) + _3792 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _11756) >> 32 + 224] <= 4294967296 and mem[(32 * _9760) + _3792 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _11756) >> 32 + (32 * mem[(32 * _9760) + _3792 + ceil32(return_data.size) + mem[(32 * _9760) + _3792 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _11756) >> 32 + 224]) + 32 <= return_data.size
            mem[(32 * _9760) + _3792 + (2 * ceil32(return_data.size)) + 224] = mem[(32 * _9760) + _3792 + ceil32(return_data.size) + mem[(32 * _9760) + _3792 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _11756) >> 32 + 224]
            _12371 = mem[(32 * _9760) + _3792 + ceil32(return_data.size) + _12331 + 224]
            s = 0
            while s < 32 * _12371:
                mem[s + (32 * _9760) + _3792 + (2 * ceil32(return_data.size)) + 256] = mem[s + (32 * _9760) + _3792 + ceil32(return_data.size) + _12331 + 256]
                s = s + 32
                continue 
            mem[64] = (32 * _12371) + (32 * _9760) + _3792 + (2 * ceil32(return_data.size)) + 256
            require mem[(32 * _9760) + _3792 + (2 * ceil32(return_data.size)) + 224] - 1 < mem[(32 * _9760) + _3792 + (2 * ceil32(return_data.size)) + 224]
            if mem[(32 * mem[(32 * _9760) + _3792 + (2 * ceil32(return_data.size)) + 224] - 1) + (32 * _9760) + _3792 + (2 * ceil32(return_data.size)) + 256] <= t:
                idx = idx + 1
                t = t
                continue 
            idx = idx + 1
            t = mem[(32 * mem[(32 * _9760) + _3792 + (2 * ceil32(return_data.size)) + 224] - 1) + (32 * _9760) + _3792 + (2 * ceil32(return_data.size)) + 256]
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
        while idx < 13:
            if not idx:
                mem[mem[64] + 4] = 2
                mem[mem[64] + 36] = 0
                mem[mem[64] + 68] = 10^6 * sub_7d0b6809
                require ext_code.size(0x92d5ebf3593a92888c25c0abef126583d4b5312e)
                staticcall 0x92d5ebf3593a92888c25c0abef126583d4b5312e.get_dy_underlying(int128 arg1, int128 arg2, uint256 arg3) with:
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
                staticcall 0x83e5f18da720119ff363cf63417628eb0e9fd523.get_dy(int128 arg1, int128 arg2, uint256 arg3) with:
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
                _155 = mem[64]
                mem[mem[64]] = 3
                mem[64] = mem[64] + 128
                require 0 < mem[_155]
                mem[_155 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                require 1 < mem[_155]
                mem[_155 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c
                require 2 < mem[_155]
                mem[_155 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                mem[_155 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_155 + 132] = 10^6 * sub_7d0b6809
                mem[_155 + 164] = 64
                mem[_155 + 196] = mem[_155]
                t = 0
                while t < 32 * mem[_155]:
                    mem[t + _155 + 228] = mem[t + _155 + 32]
                    t = t + 32
                    continue 
                require ext_code.size(0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52)
                staticcall 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args 10^6 * sub_7d0b6809, 64, mem[_155 + 196 len (32 * mem[_155]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_155 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _155 + ceil32(return_data.size) + 128
                require return_data.size >= 32
                _2667 = mem[_155 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32
                require mem[_155 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 <= 4294967296
                require mem[_155 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 32 <= return_data.size
                require mem[_155 + mem[_155 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 128] <= 4294967296 and mem[_155 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + (32 * mem[_155 + mem[_155 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 128]) + 32 <= return_data.size
                mem[_155 + ceil32(return_data.size) + 128] = mem[_155 + mem[_155 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 128]
                _3045 = mem[_155 + _2667 + 128]
                t = 0
                while t < 32 * _3045:
                    mem[t + _155 + ceil32(return_data.size) + 160] = mem[t + _155 + _2667 + 160]
                    t = t + 32
                    continue 
                mem[64] = (32 * _3045) + _155 + ceil32(return_data.size) + 160
                require mem[_155 + ceil32(return_data.size) + 128] - 1 < mem[_155 + ceil32(return_data.size) + 128]
                if mem[(32 * mem[_155 + ceil32(return_data.size) + 128] - 1) + _155 + ceil32(return_data.size) + 160] <= s:
                    idx = idx + 1
                    s = s
                    continue 
                idx = idx + 1
                s = mem[(32 * mem[_155 + ceil32(return_data.size) + 128] - 1) + _155 + ceil32(return_data.size) + 160]
                continue 
            if 3 == idx:
                if 2 == idx:
                    _204 = mem[64]
                    mem[mem[64]] = 3
                    mem[64] = mem[64] + 128
                    require 0 < mem[_204]
                    mem[_204 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    require 1 < mem[_204]
                    mem[_204 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c
                    require 2 < mem[_204]
                    mem[_204 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    mem[_204 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_204 + 132] = 10^6 * sub_7d0b6809
                    mem[_204 + 164] = 64
                    mem[_204 + 196] = mem[_204]
                    t = 0
                    while t < 32 * mem[_204]:
                        mem[t + _204 + 228] = mem[t + _204 + 32]
                        t = t + 32
                        continue 
                    require ext_code.size(0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52)
                    staticcall 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args 10^6 * sub_7d0b6809, 64, mem[_204 + 196 len (32 * mem[_204]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_204 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _204 + ceil32(return_data.size) + 128
                    require return_data.size >= 32
                    _2713 = mem[_204 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32
                    require mem[_204 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 <= 4294967296
                    require mem[_204 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 32 <= return_data.size
                    require mem[_204 + mem[_204 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 128] <= 4294967296 and mem[_204 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + (32 * mem[_204 + mem[_204 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 128]) + 32 <= return_data.size
                    mem[_204 + ceil32(return_data.size) + 128] = mem[_204 + mem[_204 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 128]
                    _3068 = mem[_204 + _2713 + 128]
                    t = 0
                    while t < 32 * _3068:
                        mem[t + _204 + ceil32(return_data.size) + 160] = mem[t + _204 + _2713 + 160]
                        t = t + 32
                        continue 
                    mem[64] = (32 * _3068) + _204 + ceil32(return_data.size) + 160
                    require mem[_204 + ceil32(return_data.size) + 128] - 1 < mem[_204 + ceil32(return_data.size) + 128]
                    if mem[(32 * mem[_204 + ceil32(return_data.size) + 128] - 1) + _204 + ceil32(return_data.size) + 160] <= s:
                        idx = idx + 1
                        s = s
                        continue 
                    idx = idx + 1
                    s = mem[(32 * mem[_204 + ceil32(return_data.size) + 128] - 1) + _204 + ceil32(return_data.size) + 160]
                    continue 
                if idx != 3:
                    _200 = mem[64]
                    mem[mem[64]] = 3
                    mem[64] = mem[64] + 128
                    require 0 < mem[_200]
                    mem[_200 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    require 1 < mem[_200]
                    mem[_200 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c
                    require 2 < mem[_200]
                    mem[_200 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    mem[_200 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_200 + 132] = 10^6 * sub_7d0b6809
                    mem[_200 + 164] = 64
                    mem[_200 + 196] = mem[_200]
                    t = 0
                    while t < 32 * mem[_200]:
                        mem[t + _200 + 228] = mem[t + _200 + 32]
                        t = t + 32
                        continue 
                    require ext_code.size(0)
                    staticcall 0x0.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args 10^6 * sub_7d0b6809, 64, mem[_200 + 196 len (32 * mem[_200]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_200 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _200 + ceil32(return_data.size) + 128
                    require return_data.size >= 32
                    _2709 = mem[_200 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32
                    require mem[_200 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 <= 4294967296
                    require mem[_200 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 32 <= return_data.size
                    require mem[_200 + mem[_200 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 128] <= 4294967296 and mem[_200 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + (32 * mem[_200 + mem[_200 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 128]) + 32 <= return_data.size
                    mem[_200 + ceil32(return_data.size) + 128] = mem[_200 + mem[_200 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 128]
                    _3066 = mem[_200 + _2709 + 128]
                    t = 0
                    while t < 32 * _3066:
                        mem[t + _200 + ceil32(return_data.size) + 160] = mem[t + _200 + _2709 + 160]
                        t = t + 32
                        continue 
                    mem[64] = (32 * _3066) + _200 + ceil32(return_data.size) + 160
                    require mem[_200 + ceil32(return_data.size) + 128] - 1 < mem[_200 + ceil32(return_data.size) + 128]
                    if mem[(32 * mem[_200 + ceil32(return_data.size) + 128] - 1) + _200 + ceil32(return_data.size) + 160] <= s:
                        idx = idx + 1
                        s = s
                        continue 
                    idx = idx + 1
                    s = mem[(32 * mem[_200 + ceil32(return_data.size) + 128] - 1) + _200 + ceil32(return_data.size) + 160]
                    continue 
                _294 = mem[64]
                mem[mem[64]] = 3
                mem[64] = mem[64] + 128
                require 0 < mem[_294]
                mem[_294 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                require 1 < mem[_294]
                mem[_294 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c
                require 2 < mem[_294]
                mem[_294 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                mem[_294 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_294 + 132] = 10^6 * sub_7d0b6809
                mem[_294 + 164] = 64
                mem[_294 + 196] = mem[_294]
                t = 0
                while t < 32 * mem[_294]:
                    mem[t + _294 + 228] = mem[t + _294 + 32]
                    t = t + 32
                    continue 
                require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c)
                staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args 10^6 * sub_7d0b6809, 64, mem[_294 + 196 len (32 * mem[_294]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_294 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _294 + ceil32(return_data.size) + 128
                require return_data.size >= 32
                _2711 = mem[_294 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32
                require mem[_294 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 <= 4294967296
                require mem[_294 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 32 <= return_data.size
                require mem[_294 + mem[_294 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 128] <= 4294967296 and mem[_294 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + (32 * mem[_294 + mem[_294 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 128]) + 32 <= return_data.size
                mem[_294 + ceil32(return_data.size) + 128] = mem[_294 + mem[_294 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 128]
                _3067 = mem[_294 + _2711 + 128]
                t = 0
                while t < 32 * _3067:
                    mem[t + _294 + ceil32(return_data.size) + 160] = mem[t + _294 + _2711 + 160]
                    t = t + 32
                    continue 
                mem[64] = (32 * _3067) + _294 + ceil32(return_data.size) + 160
                require mem[_294 + ceil32(return_data.size) + 128] - 1 < mem[_294 + ceil32(return_data.size) + 128]
                if mem[(32 * mem[_294 + ceil32(return_data.size) + 128] - 1) + _294 + ceil32(return_data.size) + 160] <= s:
                    idx = idx + 1
                    s = s
                    continue 
                idx = idx + 1
                s = mem[(32 * mem[_294 + ceil32(return_data.size) + 128] - 1) + _294 + ceil32(return_data.size) + 160]
                continue 
            if 4 == idx:
                mem[mem[64] + 4] = 0
                mem[mem[64] + 36] = 2
                mem[mem[64] + 68] = 10^6 * sub_7d0b6809
                require ext_code.size(0x3a1659ddcf2339be3aea159ca010979fb49155ff)
                staticcall 0x3a1659ddcf2339be3aea159ca010979fb49155ff.get_dy(uint256 arg1, uint256 arg2, uint256 arg3) with:
                        gas gas_remaining wei
                       args 0, 2, 10^6 * sub_7d0b6809
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                _444 = mem[64]
                mem[mem[64]] = 3
                mem[64] = mem[64] + 128
                require 0 < mem[_444]
                mem[_444 + 32] = 0x74b23882a30290451a17c44f4f05243b6b58c76d
                require 1 < mem[_444]
                mem[_444 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c
                require 2 < mem[_444]
                mem[_444 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                mem[_444 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_444 + 132] = ext_call.return_data[0]
                mem[_444 + 164] = 64
                mem[_444 + 196] = mem[_444]
                t = 0
                while t < 32 * mem[_444]:
                    mem[t + _444 + 228] = mem[t + _444 + 32]
                    t = t + 32
                    continue 
                require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c)
                staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args ext_call.return_data[0], 64, mem[_444 + 196 len (32 * mem[_444]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_444 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _444 + ceil32(return_data.size) + 128
                require return_data.size >= 32
                _2705 = mem[_444 + 128 len 4], ext_call.return_data[0 len 28]
                require mem[_444 + 128 len 4], ext_call.return_data[0 len 28] <= 4294967296
                require mem[_444 + 128 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                require mem[_444 + mem[_444 + 128 len 4], ext_call.return_data[0 len 28] + 128] <= 4294967296 and mem[_444 + 128 len 4], ext_call.return_data[0 len 28] + (32 * mem[_444 + mem[_444 + 128 len 4], ext_call.return_data[0 len 28] + 128]) + 32 <= return_data.size
                mem[_444 + ceil32(return_data.size) + 128] = mem[_444 + mem[_444 + 128 len 4], ext_call.return_data[0 len 28] + 128]
                _3064 = mem[_444 + _2705 + 128]
                t = 0
                while t < 32 * _3064:
                    mem[t + _444 + ceil32(return_data.size) + 160] = mem[t + _444 + _2705 + 160]
                    t = t + 32
                    continue 
                mem[64] = (32 * _3064) + _444 + ceil32(return_data.size) + 160
                require mem[_444 + ceil32(return_data.size) + 128] - 1 < mem[_444 + ceil32(return_data.size) + 128]
                if mem[(32 * mem[_444 + ceil32(return_data.size) + 128] - 1) + _444 + ceil32(return_data.size) + 160] <= s:
                    idx = idx + 1
                    s = s
                    continue 
                idx = idx + 1
                s = mem[(32 * mem[_444 + ceil32(return_data.size) + 128] - 1) + _444 + ceil32(return_data.size) + 160]
                continue 
            if idx != 5:
                if 6 == idx:
                    _632 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    require 0 < mem[_632]
                    mem[_632 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    require 1 < mem[_632]
                    mem[_632 + 64] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    mem[_632 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_632 + 100] = 10^6 * sub_7d0b6809
                    mem[_632 + 132] = 64
                    mem[_632 + 164] = mem[_632]
                    t = 0
                    while t < 32 * mem[_632]:
                        mem[t + _632 + 196] = mem[t + _632 + 32]
                        t = t + 32
                        continue 
                    require ext_code.size(0x845e76a8691423fbc4ecb8dd77556cb61c09ee25)
                    staticcall 0x845e76a8691423fbc4ecb8dd77556cb61c09ee25.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args 10^6 * sub_7d0b6809, 64, mem[_632 + 164 len (32 * mem[_632]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_632 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _632 + ceil32(return_data.size) + 96
                    require return_data.size >= 32
                    _2669 = mem[_632 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32
                    require mem[_632 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 <= 4294967296
                    require mem[_632 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 32 <= return_data.size
                    require mem[_632 + mem[_632 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 96] <= 4294967296 and mem[_632 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + (32 * mem[_632 + mem[_632 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 96]) + 32 <= return_data.size
                    mem[_632 + ceil32(return_data.size) + 96] = mem[_632 + mem[_632 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 96]
                    _3046 = mem[_632 + _2669 + 96]
                    t = 0
                    while t < 32 * _3046:
                        mem[t + _632 + ceil32(return_data.size) + 128] = mem[t + _632 + _2669 + 128]
                        t = t + 32
                        continue 
                    mem[64] = (32 * _3046) + _632 + ceil32(return_data.size) + 128
                    require mem[_632 + ceil32(return_data.size) + 96] - 1 < mem[_632 + ceil32(return_data.size) + 96]
                    if mem[(32 * mem[_632 + ceil32(return_data.size) + 96] - 1) + _632 + ceil32(return_data.size) + 128] <= s:
                        idx = idx + 1
                        s = s
                        continue 
                    idx = idx + 1
                    s = mem[(32 * mem[_632 + ceil32(return_data.size) + 96] - 1) + _632 + ceil32(return_data.size) + 128]
                    continue 
                if 7 == idx:
                    if 6 == idx:
                        _676 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        require 0 < mem[_676]
                        mem[_676 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                        require 1 < mem[_676]
                        mem[_676 + 64] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                        mem[_676 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[_676 + 100] = 10^6 * sub_7d0b6809
                        mem[_676 + 132] = 64
                        mem[_676 + 164] = mem[_676]
                        t = 0
                        while t < 32 * mem[_676]:
                            mem[t + _676 + 196] = mem[t + _676 + 32]
                            t = t + 32
                            continue 
                        require ext_code.size(0x845e76a8691423fbc4ecb8dd77556cb61c09ee25)
                        staticcall 0x845e76a8691423fbc4ecb8dd77556cb61c09ee25.getAmountsOut(uint256 arg1, address[] arg2) with:
                                gas gas_remaining wei
                               args 10^6 * sub_7d0b6809, 64, mem[_676 + 164 len (32 * mem[_676]) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_676 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = _676 + ceil32(return_data.size) + 96
                        require return_data.size >= 32
                        _2679 = mem[_676 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32
                        require mem[_676 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 <= 4294967296
                        require mem[_676 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 32 <= return_data.size
                        require mem[_676 + mem[_676 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 96] <= 4294967296 and mem[_676 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + (32 * mem[_676 + mem[_676 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 96]) + 32 <= return_data.size
                        mem[_676 + ceil32(return_data.size) + 96] = mem[_676 + mem[_676 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 96]
                        _3051 = mem[_676 + _2679 + 96]
                        t = 0
                        while t < 32 * _3051:
                            mem[t + _676 + ceil32(return_data.size) + 128] = mem[t + _676 + _2679 + 128]
                            t = t + 32
                            continue 
                        mem[64] = (32 * _3051) + _676 + ceil32(return_data.size) + 128
                        require mem[_676 + ceil32(return_data.size) + 96] - 1 < mem[_676 + ceil32(return_data.size) + 96]
                        if mem[(32 * mem[_676 + ceil32(return_data.size) + 96] - 1) + _676 + ceil32(return_data.size) + 128] <= s:
                            idx = idx + 1
                            s = s
                            continue 
                        idx = idx + 1
                        s = mem[(32 * mem[_676 + ceil32(return_data.size) + 96] - 1) + _676 + ceil32(return_data.size) + 128]
                        continue 
                    if 7 == idx:
                        _718 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        require 0 < mem[_718]
                        mem[_718 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                        require 1 < mem[_718]
                        mem[_718 + 64] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                        mem[_718 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[_718 + 100] = 10^6 * sub_7d0b6809
                        mem[_718 + 132] = 64
                        mem[_718 + 164] = mem[_718]
                        t = 0
                        while t < 32 * mem[_718]:
                            mem[t + _718 + 196] = mem[t + _718 + 32]
                            t = t + 32
                            continue 
                        require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c)
                        staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c.getAmountsOut(uint256 arg1, address[] arg2) with:
                                gas gas_remaining wei
                               args 10^6 * sub_7d0b6809, 64, mem[_718 + 164 len (32 * mem[_718]) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_718 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = _718 + ceil32(return_data.size) + 96
                        require return_data.size >= 32
                        _2677 = mem[_718 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32
                        require mem[_718 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 <= 4294967296
                        require mem[_718 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 32 <= return_data.size
                        require mem[_718 + mem[_718 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 96] <= 4294967296 and mem[_718 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + (32 * mem[_718 + mem[_718 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 96]) + 32 <= return_data.size
                        mem[_718 + ceil32(return_data.size) + 96] = mem[_718 + mem[_718 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 96]
                        _3050 = mem[_718 + _2677 + 96]
                        t = 0
                        while t < 32 * _3050:
                            mem[t + _718 + ceil32(return_data.size) + 128] = mem[t + _718 + _2677 + 128]
                            t = t + 32
                            continue 
                        mem[64] = (32 * _3050) + _718 + ceil32(return_data.size) + 128
                        require mem[_718 + ceil32(return_data.size) + 96] - 1 < mem[_718 + ceil32(return_data.size) + 96]
                        if mem[(32 * mem[_718 + ceil32(return_data.size) + 96] - 1) + _718 + ceil32(return_data.size) + 128] <= s:
                            idx = idx + 1
                            s = s
                            continue 
                        idx = idx + 1
                        s = mem[(32 * mem[_718 + ceil32(return_data.size) + 96] - 1) + _718 + ceil32(return_data.size) + 128]
                        continue 
                    if 8 == idx:
                        _814 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        require 0 < mem[_814]
                        mem[_814 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                        require 1 < mem[_814]
                        mem[_814 + 64] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                        mem[_814 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[_814 + 100] = 10^6 * sub_7d0b6809
                        mem[_814 + 132] = 64
                        mem[_814 + 164] = mem[_814]
                        t = 0
                        while t < 32 * mem[_814]:
                            mem[t + _814 + 196] = mem[t + _814 + 32]
                            t = t + 32
                            continue 
                        require ext_code.size(0x6b3d631b87fe27af29efec61d2ab8ce4d621ccbf)
                        staticcall 0x6b3d631b87fe27af29efec61d2ab8ce4d621ccbf.getAmountsOut(uint256 arg1, address[] arg2) with:
                                gas gas_remaining wei
                               args 10^6 * sub_7d0b6809, 64, mem[_814 + 164 len (32 * mem[_814]) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_814 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = _814 + ceil32(return_data.size) + 96
                        require return_data.size >= 32
                        _2675 = mem[_814 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32
                        require mem[_814 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 <= 4294967296
                        require mem[_814 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 32 <= return_data.size
                        require mem[_814 + mem[_814 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 96] <= 4294967296 and mem[_814 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + (32 * mem[_814 + mem[_814 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 96]) + 32 <= return_data.size
                        mem[_814 + ceil32(return_data.size) + 96] = mem[_814 + mem[_814 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 96]
                        _3049 = mem[_814 + _2675 + 96]
                        t = 0
                        while t < 32 * _3049:
                            mem[t + _814 + ceil32(return_data.size) + 128] = mem[t + _814 + _2675 + 128]
                            t = t + 32
                            continue 
                        mem[64] = (32 * _3049) + _814 + ceil32(return_data.size) + 128
                        require mem[_814 + ceil32(return_data.size) + 96] - 1 < mem[_814 + ceil32(return_data.size) + 96]
                        if mem[(32 * mem[_814 + ceil32(return_data.size) + 96] - 1) + _814 + ceil32(return_data.size) + 128] <= s:
                            idx = idx + 1
                            s = s
                            continue 
                        idx = idx + 1
                        s = mem[(32 * mem[_814 + ceil32(return_data.size) + 96] - 1) + _814 + ceil32(return_data.size) + 128]
                        continue 
                    if idx != 9:
                        _812 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        require 0 < mem[_812]
                        mem[_812 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                        require 1 < mem[_812]
                        mem[_812 + 64] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                        mem[_812 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[_812 + 100] = 10^6 * sub_7d0b6809
                        mem[_812 + 132] = 64
                        mem[_812 + 164] = mem[_812]
                        t = 0
                        while t < 32 * mem[_812]:
                            mem[t + _812 + 196] = mem[t + _812 + 32]
                            t = t + 32
                            continue 
                        require ext_code.size(0)
                        staticcall 0x0.getAmountsOut(uint256 arg1, address[] arg2) with:
                                gas gas_remaining wei
                               args 10^6 * sub_7d0b6809, 64, mem[_812 + 164 len (32 * mem[_812]) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_812 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = _812 + ceil32(return_data.size) + 96
                        require return_data.size >= 32
                        _2671 = mem[_812 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32
                        require mem[_812 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 <= 4294967296
                        require mem[_812 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 32 <= return_data.size
                        require mem[_812 + mem[_812 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 96] <= 4294967296 and mem[_812 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + (32 * mem[_812 + mem[_812 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 96]) + 32 <= return_data.size
                        mem[_812 + ceil32(return_data.size) + 96] = mem[_812 + mem[_812 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 96]
                        _3047 = mem[_812 + _2671 + 96]
                        t = 0
                        while t < 32 * _3047:
                            mem[t + _812 + ceil32(return_data.size) + 128] = mem[t + _812 + _2671 + 128]
                            t = t + 32
                            continue 
                        mem[64] = (32 * _3047) + _812 + ceil32(return_data.size) + 128
                        require mem[_812 + ceil32(return_data.size) + 96] - 1 < mem[_812 + ceil32(return_data.size) + 96]
                        if mem[(32 * mem[_812 + ceil32(return_data.size) + 96] - 1) + _812 + ceil32(return_data.size) + 128] <= s:
                            idx = idx + 1
                            s = s
                            continue 
                        idx = idx + 1
                        s = mem[(32 * mem[_812 + ceil32(return_data.size) + 96] - 1) + _812 + ceil32(return_data.size) + 128]
                        continue 
                    _911 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    require 0 < mem[_911]
                    mem[_911 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    require 1 < mem[_911]
                    mem[_911 + 64] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    mem[_911 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_911 + 100] = 10^6 * sub_7d0b6809
                    mem[_911 + 132] = 64
                    mem[_911 + 164] = mem[_911]
                    t = 0
                    while t < 32 * mem[_911]:
                        mem[t + _911 + 196] = mem[t + _911 + 32]
                        t = t + 32
                        continue 
                    require ext_code.size(0x2724b9497b2cf3325c6be3ea430b3cec34b5ef2d)
                    staticcall 0x2724b9497b2cf3325c6be3ea430b3cec34b5ef2d.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args 10^6 * sub_7d0b6809, 64, mem[_911 + 164 len (32 * mem[_911]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_911 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _911 + ceil32(return_data.size) + 96
                    require return_data.size >= 32
                    _2673 = mem[_911 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32
                    require mem[_911 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 <= 4294967296
                    require mem[_911 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 32 <= return_data.size
                    require mem[_911 + mem[_911 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 96] <= 4294967296 and mem[_911 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + (32 * mem[_911 + mem[_911 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 96]) + 32 <= return_data.size
                    mem[_911 + ceil32(return_data.size) + 96] = mem[_911 + mem[_911 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 96]
                    _3048 = mem[_911 + _2673 + 96]
                    t = 0
                    while t < 32 * _3048:
                        mem[t + _911 + ceil32(return_data.size) + 128] = mem[t + _911 + _2673 + 128]
                        t = t + 32
                        continue 
                    mem[64] = (32 * _3048) + _911 + ceil32(return_data.size) + 128
                    require mem[_911 + ceil32(return_data.size) + 96] - 1 < mem[_911 + ceil32(return_data.size) + 96]
                    if mem[(32 * mem[_911 + ceil32(return_data.size) + 96] - 1) + _911 + ceil32(return_data.size) + 128] <= s:
                        idx = idx + 1
                        s = s
                        continue 
                    idx = idx + 1
                    s = mem[(32 * mem[_911 + ceil32(return_data.size) + 96] - 1) + _911 + ceil32(return_data.size) + 128]
                    continue 
                if 8 == idx:
                    if 6 == idx:
                        _723 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        require 0 < mem[_723]
                        mem[_723 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                        require 1 < mem[_723]
                        mem[_723 + 64] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                        mem[_723 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[_723 + 100] = 10^6 * sub_7d0b6809
                        mem[_723 + 132] = 64
                        mem[_723 + 164] = mem[_723]
                        t = 0
                        while t < 32 * mem[_723]:
                            mem[t + _723 + 196] = mem[t + _723 + 32]
                            t = t + 32
                            continue 
                        require ext_code.size(0x845e76a8691423fbc4ecb8dd77556cb61c09ee25)
                        staticcall 0x845e76a8691423fbc4ecb8dd77556cb61c09ee25.getAmountsOut(uint256 arg1, address[] arg2) with:
                                gas gas_remaining wei
                               args 10^6 * sub_7d0b6809, 64, mem[_723 + 164 len (32 * mem[_723]) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_723 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = _723 + ceil32(return_data.size) + 96
                        require return_data.size >= 32
                        _2689 = mem[_723 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32
                        require mem[_723 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 <= 4294967296
                        require mem[_723 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 32 <= return_data.size
                        require mem[_723 + mem[_723 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 96] <= 4294967296 and mem[_723 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + (32 * mem[_723 + mem[_723 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 96]) + 32 <= return_data.size
                        mem[_723 + ceil32(return_data.size) + 96] = mem[_723 + mem[_723 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 96]
                        _3056 = mem[_723 + _2689 + 96]
                        t = 0
                        while t < 32 * _3056:
                            mem[t + _723 + ceil32(return_data.size) + 128] = mem[t + _723 + _2689 + 128]
                            t = t + 32
                            continue 
                        mem[64] = (32 * _3056) + _723 + ceil32(return_data.size) + 128
                        require mem[_723 + ceil32(return_data.size) + 96] - 1 < mem[_723 + ceil32(return_data.size) + 96]
                        if mem[(32 * mem[_723 + ceil32(return_data.size) + 96] - 1) + _723 + ceil32(return_data.size) + 128] <= s:
                            idx = idx + 1
                            s = s
                            continue 
                        idx = idx + 1
                        s = mem[(32 * mem[_723 + ceil32(return_data.size) + 96] - 1) + _723 + ceil32(return_data.size) + 128]
                        continue 
                    if 7 == idx:
                        _820 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        require 0 < mem[_820]
                        mem[_820 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                        require 1 < mem[_820]
                        mem[_820 + 64] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                        mem[_820 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[_820 + 100] = 10^6 * sub_7d0b6809
                        mem[_820 + 132] = 64
                        mem[_820 + 164] = mem[_820]
                        t = 0
                        while t < 32 * mem[_820]:
                            mem[t + _820 + 196] = mem[t + _820 + 32]
                            t = t + 32
                            continue 
                        require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c)
                        staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c.getAmountsOut(uint256 arg1, address[] arg2) with:
                                gas gas_remaining wei
                               args 10^6 * sub_7d0b6809, 64, mem[_820 + 164 len (32 * mem[_820]) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_820 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = _820 + ceil32(return_data.size) + 96
                        require return_data.size >= 32
                        _2687 = mem[_820 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32
                        require mem[_820 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 <= 4294967296
                        require mem[_820 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 32 <= return_data.size
                        require mem[_820 + mem[_820 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 96] <= 4294967296 and mem[_820 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + (32 * mem[_820 + mem[_820 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 96]) + 32 <= return_data.size
                        mem[_820 + ceil32(return_data.size) + 96] = mem[_820 + mem[_820 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 96]
                        _3055 = mem[_820 + _2687 + 96]
                        t = 0
                        while t < 32 * _3055:
                            mem[t + _820 + ceil32(return_data.size) + 128] = mem[t + _820 + _2687 + 128]
                            t = t + 32
                            continue 
                        mem[64] = (32 * _3055) + _820 + ceil32(return_data.size) + 128
                        require mem[_820 + ceil32(return_data.size) + 96] - 1 < mem[_820 + ceil32(return_data.size) + 96]
                        if mem[(32 * mem[_820 + ceil32(return_data.size) + 96] - 1) + _820 + ceil32(return_data.size) + 128] <= s:
                            idx = idx + 1
                            s = s
                            continue 
                        idx = idx + 1
                        s = mem[(32 * mem[_820 + ceil32(return_data.size) + 96] - 1) + _820 + ceil32(return_data.size) + 128]
                        continue 
                    if 8 == idx:
                        _919 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        require 0 < mem[_919]
                        mem[_919 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                        require 1 < mem[_919]
                        mem[_919 + 64] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                        mem[_919 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[_919 + 100] = 10^6 * sub_7d0b6809
                        mem[_919 + 132] = 64
                        mem[_919 + 164] = mem[_919]
                        t = 0
                        while t < 32 * mem[_919]:
                            mem[t + _919 + 196] = mem[t + _919 + 32]
                            t = t + 32
                            continue 
                        require ext_code.size(0x6b3d631b87fe27af29efec61d2ab8ce4d621ccbf)
                        staticcall 0x6b3d631b87fe27af29efec61d2ab8ce4d621ccbf.getAmountsOut(uint256 arg1, address[] arg2) with:
                                gas gas_remaining wei
                               args 10^6 * sub_7d0b6809, 64, mem[_919 + 164 len (32 * mem[_919]) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_919 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = _919 + ceil32(return_data.size) + 96
                        require return_data.size >= 32
                        _2685 = mem[_919 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32
                        require mem[_919 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 <= 4294967296
                        require mem[_919 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 32 <= return_data.size
                        require mem[_919 + mem[_919 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 96] <= 4294967296 and mem[_919 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + (32 * mem[_919 + mem[_919 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 96]) + 32 <= return_data.size
                        mem[_919 + ceil32(return_data.size) + 96] = mem[_919 + mem[_919 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 96]
                        _3054 = mem[_919 + _2685 + 96]
                        t = 0
                        while t < 32 * _3054:
                            mem[t + _919 + ceil32(return_data.size) + 128] = mem[t + _919 + _2685 + 128]
                            t = t + 32
                            continue 
                        mem[64] = (32 * _3054) + _919 + ceil32(return_data.size) + 128
                        require mem[_919 + ceil32(return_data.size) + 96] - 1 < mem[_919 + ceil32(return_data.size) + 96]
                        if mem[(32 * mem[_919 + ceil32(return_data.size) + 96] - 1) + _919 + ceil32(return_data.size) + 128] <= s:
                            idx = idx + 1
                            s = s
                            continue 
                        idx = idx + 1
                        s = mem[(32 * mem[_919 + ceil32(return_data.size) + 96] - 1) + _919 + ceil32(return_data.size) + 128]
                        continue 
                    if idx != 9:
                        _917 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        require 0 < mem[_917]
                        mem[_917 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                        require 1 < mem[_917]
                        mem[_917 + 64] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                        mem[_917 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[_917 + 100] = 10^6 * sub_7d0b6809
                        mem[_917 + 132] = 64
                        mem[_917 + 164] = mem[_917]
                        t = 0
                        while t < 32 * mem[_917]:
                            mem[t + _917 + 196] = mem[t + _917 + 32]
                            t = t + 32
                            continue 
                        require ext_code.size(0)
                        staticcall 0x0.getAmountsOut(uint256 arg1, address[] arg2) with:
                                gas gas_remaining wei
                               args 10^6 * sub_7d0b6809, 64, mem[_917 + 164 len (32 * mem[_917]) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_917 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = _917 + ceil32(return_data.size) + 96
                        require return_data.size >= 32
                        _2681 = mem[_917 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32
                        require mem[_917 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 <= 4294967296
                        require mem[_917 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 32 <= return_data.size
                        require mem[_917 + mem[_917 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 96] <= 4294967296 and mem[_917 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + (32 * mem[_917 + mem[_917 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 96]) + 32 <= return_data.size
                        mem[_917 + ceil32(return_data.size) + 96] = mem[_917 + mem[_917 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 96]
                        _3052 = mem[_917 + _2681 + 96]
                        t = 0
                        while t < 32 * _3052:
                            mem[t + _917 + ceil32(return_data.size) + 128] = mem[t + _917 + _2681 + 128]
                            t = t + 32
                            continue 
                        mem[64] = (32 * _3052) + _917 + ceil32(return_data.size) + 128
                        require mem[_917 + ceil32(return_data.size) + 96] - 1 < mem[_917 + ceil32(return_data.size) + 96]
                        if mem[(32 * mem[_917 + ceil32(return_data.size) + 96] - 1) + _917 + ceil32(return_data.size) + 128] <= s:
                            idx = idx + 1
                            s = s
                            continue 
                        idx = idx + 1
                        s = mem[(32 * mem[_917 + ceil32(return_data.size) + 96] - 1) + _917 + ceil32(return_data.size) + 128]
                        continue 
                    _1053 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    require 0 < mem[_1053]
                    mem[_1053 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    require 1 < mem[_1053]
                    mem[_1053 + 64] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    mem[_1053 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_1053 + 100] = 10^6 * sub_7d0b6809
                    mem[_1053 + 132] = 64
                    mem[_1053 + 164] = mem[_1053]
                    t = 0
                    while t < 32 * mem[_1053]:
                        mem[t + _1053 + 196] = mem[t + _1053 + 32]
                        t = t + 32
                        continue 
                    require ext_code.size(0x2724b9497b2cf3325c6be3ea430b3cec34b5ef2d)
                    staticcall 0x2724b9497b2cf3325c6be3ea430b3cec34b5ef2d.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args 10^6 * sub_7d0b6809, 64, mem[_1053 + 164 len (32 * mem[_1053]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_1053 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _1053 + ceil32(return_data.size) + 96
                    require return_data.size >= 32
                    _2683 = mem[_1053 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32
                    require mem[_1053 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 <= 4294967296
                    require mem[_1053 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 32 <= return_data.size
                    require mem[_1053 + mem[_1053 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 96] <= 4294967296 and mem[_1053 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + (32 * mem[_1053 + mem[_1053 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 96]) + 32 <= return_data.size
                    mem[_1053 + ceil32(return_data.size) + 96] = mem[_1053 + mem[_1053 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 96]
                    _3053 = mem[_1053 + _2683 + 96]
                    t = 0
                    while t < 32 * _3053:
                        mem[t + _1053 + ceil32(return_data.size) + 128] = mem[t + _1053 + _2683 + 128]
                        t = t + 32
                        continue 
                    mem[64] = (32 * _3053) + _1053 + ceil32(return_data.size) + 128
                    require mem[_1053 + ceil32(return_data.size) + 96] - 1 < mem[_1053 + ceil32(return_data.size) + 96]
                    if mem[(32 * mem[_1053 + ceil32(return_data.size) + 96] - 1) + _1053 + ceil32(return_data.size) + 128] <= s:
                        idx = idx + 1
                        s = s
                        continue 
                    idx = idx + 1
                    s = mem[(32 * mem[_1053 + ceil32(return_data.size) + 96] - 1) + _1053 + ceil32(return_data.size) + 128]
                    continue 
                if idx != 9:
                    if 10 == idx:
                        mem[mem[64] + 4] = 0
                        mem[mem[64] + 36] = 1
                        mem[mem[64] + 68] = 10^6 * sub_7d0b6809
                        require ext_code.size(0x952bda8a83c3d5f398a686bb4e8c6dd90072d523)
                        staticcall 0x952bda8a83c3d5f398a686bb4e8c6dd90072d523.calculateSwap(uint8 arg1, uint8 arg2, uint256 arg3) with:
                                gas gas_remaining wei
                               args 0, 1, 10^6 * sub_7d0b6809
                    else:
                        if 11 == idx:
                            mem[mem[64] + 4] = 1
                            mem[mem[64] + 36] = 2
                            mem[mem[64] + 68] = 10^6 * sub_7d0b6809
                            require ext_code.size(0x80f6aed32fc474dd5717105dba5ea57268f46eb)
                            staticcall 0x80f6aed32fc474dd5717105dba5ea57268f46eb.calculateSwap(uint8 arg1, uint8 arg2, uint256 arg3) with:
                                    gas gas_remaining wei
                                   args 1, 2, 10^6 * sub_7d0b6809
                        else:
                            if idx != 12:
                                if 10^6 * sub_7d0b6809 <= s:
                                    idx = idx + 1
                                    s = s
                                    continue 
                                idx = idx + 1
                                s = 10^6 * sub_7d0b6809
                                continue 
                            mem[mem[64] + 4] = 2
                            mem[mem[64] + 36] = 1
                            mem[mem[64] + 68] = 10^6 * sub_7d0b6809
                            require ext_code.size(0x2dd7c9371965472e5a5fd28fbe165007c61439e1)
                            staticcall 0x2dd7c9371965472e5a5fd28fbe165007c61439e1.get_dy(int128 arg1, int128 arg2, uint256 arg3) with:
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
                if 6 == idx:
                    _829 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    require 0 < mem[_829]
                    mem[_829 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    require 1 < mem[_829]
                    mem[_829 + 64] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    mem[_829 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_829 + 100] = 10^6 * sub_7d0b6809
                    mem[_829 + 132] = 64
                    mem[_829 + 164] = mem[_829]
                    t = 0
                    while t < 32 * mem[_829]:
                        mem[t + _829 + 196] = mem[t + _829 + 32]
                        t = t + 32
                        continue 
                    require ext_code.size(0x845e76a8691423fbc4ecb8dd77556cb61c09ee25)
                    staticcall 0x845e76a8691423fbc4ecb8dd77556cb61c09ee25.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args 10^6 * sub_7d0b6809, 64, mem[_829 + 164 len (32 * mem[_829]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_829 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _829 + ceil32(return_data.size) + 96
                    require return_data.size >= 32
                    _2699 = mem[_829 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32
                    require mem[_829 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 <= 4294967296
                    require mem[_829 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 32 <= return_data.size
                    require mem[_829 + mem[_829 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 96] <= 4294967296 and mem[_829 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + (32 * mem[_829 + mem[_829 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 96]) + 32 <= return_data.size
                    mem[_829 + ceil32(return_data.size) + 96] = mem[_829 + mem[_829 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 96]
                    _3061 = mem[_829 + _2699 + 96]
                    t = 0
                    while t < 32 * _3061:
                        mem[t + _829 + ceil32(return_data.size) + 128] = mem[t + _829 + _2699 + 128]
                        t = t + 32
                        continue 
                    mem[64] = (32 * _3061) + _829 + ceil32(return_data.size) + 128
                    require mem[_829 + ceil32(return_data.size) + 96] - 1 < mem[_829 + ceil32(return_data.size) + 96]
                    if mem[(32 * mem[_829 + ceil32(return_data.size) + 96] - 1) + _829 + ceil32(return_data.size) + 128] <= s:
                        idx = idx + 1
                        s = s
                        continue 
                    idx = idx + 1
                    s = mem[(32 * mem[_829 + ceil32(return_data.size) + 96] - 1) + _829 + ceil32(return_data.size) + 128]
                    continue 
                if 7 == idx:
                    _933 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    require 0 < mem[_933]
                    mem[_933 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    require 1 < mem[_933]
                    mem[_933 + 64] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    mem[_933 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_933 + 100] = 10^6 * sub_7d0b6809
                    mem[_933 + 132] = 64
                    mem[_933 + 164] = mem[_933]
                    t = 0
                    while t < 32 * mem[_933]:
                        mem[t + _933 + 196] = mem[t + _933 + 32]
                        t = t + 32
                        continue 
                    require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c)
                    staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args 10^6 * sub_7d0b6809, 64, mem[_933 + 164 len (32 * mem[_933]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_933 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _933 + ceil32(return_data.size) + 96
                    require return_data.size >= 32
                    _2697 = mem[_933 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32
                    require mem[_933 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 <= 4294967296
                    require mem[_933 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 32 <= return_data.size
                    require mem[_933 + mem[_933 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 96] <= 4294967296 and mem[_933 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + (32 * mem[_933 + mem[_933 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 96]) + 32 <= return_data.size
                    mem[_933 + ceil32(return_data.size) + 96] = mem[_933 + mem[_933 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 96]
                    _3060 = mem[_933 + _2697 + 96]
                    t = 0
                    while t < 32 * _3060:
                        mem[t + _933 + ceil32(return_data.size) + 128] = mem[t + _933 + _2697 + 128]
                        t = t + 32
                        continue 
                    mem[64] = (32 * _3060) + _933 + ceil32(return_data.size) + 128
                    require mem[_933 + ceil32(return_data.size) + 96] - 1 < mem[_933 + ceil32(return_data.size) + 96]
                    if mem[(32 * mem[_933 + ceil32(return_data.size) + 96] - 1) + _933 + ceil32(return_data.size) + 128] <= s:
                        idx = idx + 1
                        s = s
                        continue 
                    idx = idx + 1
                    s = mem[(32 * mem[_933 + ceil32(return_data.size) + 96] - 1) + _933 + ceil32(return_data.size) + 128]
                    continue 
                if 8 == idx:
                    _1064 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    require 0 < mem[_1064]
                    mem[_1064 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    require 1 < mem[_1064]
                    mem[_1064 + 64] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    mem[_1064 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_1064 + 100] = 10^6 * sub_7d0b6809
                    mem[_1064 + 132] = 64
                    mem[_1064 + 164] = mem[_1064]
                    t = 0
                    while t < 32 * mem[_1064]:
                        mem[t + _1064 + 196] = mem[t + _1064 + 32]
                        t = t + 32
                        continue 
                    require ext_code.size(0x6b3d631b87fe27af29efec61d2ab8ce4d621ccbf)
                    staticcall 0x6b3d631b87fe27af29efec61d2ab8ce4d621ccbf.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args 10^6 * sub_7d0b6809, 64, mem[_1064 + 164 len (32 * mem[_1064]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_1064 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _1064 + ceil32(return_data.size) + 96
                    require return_data.size >= 32
                    _2695 = mem[_1064 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32
                    require mem[_1064 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 <= 4294967296
                    require mem[_1064 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 32 <= return_data.size
                    require mem[_1064 + mem[_1064 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 96] <= 4294967296 and mem[_1064 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + (32 * mem[_1064 + mem[_1064 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 96]) + 32 <= return_data.size
                    mem[_1064 + ceil32(return_data.size) + 96] = mem[_1064 + mem[_1064 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 96]
                    _3059 = mem[_1064 + _2695 + 96]
                    t = 0
                    while t < 32 * _3059:
                        mem[t + _1064 + ceil32(return_data.size) + 128] = mem[t + _1064 + _2695 + 128]
                        t = t + 32
                        continue 
                    mem[64] = (32 * _3059) + _1064 + ceil32(return_data.size) + 128
                    require mem[_1064 + ceil32(return_data.size) + 96] - 1 < mem[_1064 + ceil32(return_data.size) + 96]
                    if mem[(32 * mem[_1064 + ceil32(return_data.size) + 96] - 1) + _1064 + ceil32(return_data.size) + 128] <= s:
                        idx = idx + 1
                        s = s
                        continue 
                    idx = idx + 1
                    s = mem[(32 * mem[_1064 + ceil32(return_data.size) + 96] - 1) + _1064 + ceil32(return_data.size) + 128]
                    continue 
                if idx != 9:
                    _1062 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    require 0 < mem[_1062]
                    mem[_1062 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    require 1 < mem[_1062]
                    mem[_1062 + 64] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    mem[_1062 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_1062 + 100] = 10^6 * sub_7d0b6809
                    mem[_1062 + 132] = 64
                    mem[_1062 + 164] = mem[_1062]
                    t = 0
                    while t < 32 * mem[_1062]:
                        mem[t + _1062 + 196] = mem[t + _1062 + 32]
                        t = t + 32
                        continue 
                    require ext_code.size(0)
                    staticcall 0x0.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args 10^6 * sub_7d0b6809, 64, mem[_1062 + 164 len (32 * mem[_1062]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_1062 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _1062 + ceil32(return_data.size) + 96
                    require return_data.size >= 32
                    _2691 = mem[_1062 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32
                    require mem[_1062 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 <= 4294967296
                    require mem[_1062 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 32 <= return_data.size
                    require mem[_1062 + mem[_1062 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 96] <= 4294967296 and mem[_1062 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + (32 * mem[_1062 + mem[_1062 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 96]) + 32 <= return_data.size
                    mem[_1062 + ceil32(return_data.size) + 96] = mem[_1062 + mem[_1062 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 96]
                    _3057 = mem[_1062 + _2691 + 96]
                    t = 0
                    while t < 32 * _3057:
                        mem[t + _1062 + ceil32(return_data.size) + 128] = mem[t + _1062 + _2691 + 128]
                        t = t + 32
                        continue 
                    mem[64] = (32 * _3057) + _1062 + ceil32(return_data.size) + 128
                    require mem[_1062 + ceil32(return_data.size) + 96] - 1 < mem[_1062 + ceil32(return_data.size) + 96]
                    if mem[(32 * mem[_1062 + ceil32(return_data.size) + 96] - 1) + _1062 + ceil32(return_data.size) + 128] <= s:
                        idx = idx + 1
                        s = s
                        continue 
                    idx = idx + 1
                    s = mem[(32 * mem[_1062 + ceil32(return_data.size) + 96] - 1) + _1062 + ceil32(return_data.size) + 128]
                    continue 
                _1208 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                require 0 < mem[_1208]
                mem[_1208 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                require 1 < mem[_1208]
                mem[_1208 + 64] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                mem[_1208 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_1208 + 100] = 10^6 * sub_7d0b6809
                mem[_1208 + 132] = 64
                mem[_1208 + 164] = mem[_1208]
                t = 0
                while t < 32 * mem[_1208]:
                    mem[t + _1208 + 196] = mem[t + _1208 + 32]
                    t = t + 32
                    continue 
                require ext_code.size(0x2724b9497b2cf3325c6be3ea430b3cec34b5ef2d)
                staticcall 0x2724b9497b2cf3325c6be3ea430b3cec34b5ef2d.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args 10^6 * sub_7d0b6809, 64, mem[_1208 + 164 len (32 * mem[_1208]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_1208 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _1208 + ceil32(return_data.size) + 96
                require return_data.size >= 32
                _2693 = mem[_1208 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32
                require mem[_1208 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 <= 4294967296
                require mem[_1208 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 32 <= return_data.size
                require mem[_1208 + mem[_1208 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 96] <= 4294967296 and mem[_1208 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + (32 * mem[_1208 + mem[_1208 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 96]) + 32 <= return_data.size
                mem[_1208 + ceil32(return_data.size) + 96] = mem[_1208 + mem[_1208 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 96]
                _3058 = mem[_1208 + _2693 + 96]
                t = 0
                while t < 32 * _3058:
                    mem[t + _1208 + ceil32(return_data.size) + 128] = mem[t + _1208 + _2693 + 128]
                    t = t + 32
                    continue 
                mem[64] = (32 * _3058) + _1208 + ceil32(return_data.size) + 128
                require mem[_1208 + ceil32(return_data.size) + 96] - 1 < mem[_1208 + ceil32(return_data.size) + 96]
                if mem[(32 * mem[_1208 + ceil32(return_data.size) + 96] - 1) + _1208 + ceil32(return_data.size) + 128] <= s:
                    idx = idx + 1
                    s = s
                    continue 
                idx = idx + 1
                s = mem[(32 * mem[_1208 + ceil32(return_data.size) + 96] - 1) + _1208 + ceil32(return_data.size) + 128]
                continue 
            _192 = mem[0]
            _284 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            require 0 < mem[_284]
            mem[_284 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
            require 1 < mem[_284]
            mem[_284 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c
            mem[_284 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[_284 + 100] = 10^6 * sub_7d0b6809
            mem[_284 + 132] = 64
            mem[_284 + 164] = mem[_284]
            t = 0
            while t < 32 * mem[_284]:
                mem[t + _284 + 196] = mem[t + _284 + 32]
                t = t + 32
                continue 
            require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c)
            staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c.getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args 10^6 * sub_7d0b6809, 64, mem[_284 + 164 len (32 * mem[_284]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[_284 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = _284 + ceil32(return_data.size) + 96
            require return_data.size >= 32
            _2701 = mem[_284 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32
            require mem[_284 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 <= 4294967296
            require mem[_284 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 32 <= return_data.size
            require mem[_284 + mem[_284 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 96] <= 4294967296 and mem[_284 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + (32 * mem[_284 + mem[_284 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 96]) + 32 <= return_data.size
            mem[_284 + ceil32(return_data.size) + 96] = mem[_284 + mem[_284 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 96]
            _3062 = mem[_284 + _2701 + 96]
            t = 0
            while t < 32 * _3062:
                mem[t + _284 + ceil32(return_data.size) + 128] = mem[t + _284 + _2701 + 128]
                t = t + 32
                continue 
            mem[64] = (32 * _3062) + _284 + ceil32(return_data.size) + 128
            require mem[_284 + ceil32(return_data.size) + 96] - 1 < mem[_284 + ceil32(return_data.size) + 96]
            _8732 = mem[(32 * mem[_284 + ceil32(return_data.size) + 96] - 1) + _284 + ceil32(return_data.size) + 128]
            mem[(32 * _3062) + _284 + ceil32(return_data.size) + 128] = 2
            mem[0] = _192
            mem[(32 * _3062) + _284 + ceil32(return_data.size) + 160] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c
            mem[(32 * _3062) + _284 + ceil32(return_data.size) + 192] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
            mem[(32 * _3062) + _284 + ceil32(return_data.size) + 224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[(32 * _3062) + _284 + ceil32(return_data.size) + 228] = _8732
            mem[(32 * _3062) + _284 + ceil32(return_data.size) + 260] = 64
            mem[(32 * _3062) + _284 + ceil32(return_data.size) + 292] = 2
            t = 0
            while t < 64:
                mem[t + (32 * _3062) + _284 + ceil32(return_data.size) + 324] = mem[t + (32 * _3062) + _284 + ceil32(return_data.size) + 160]
                t = t + 32
                continue 
            require ext_code.size(0xe4a4642b19c4d0cba965673cd51422b1eda0a78d)
            staticcall 0xe4a4642b19c4d0cba965673cd51422b1eda0a78d.getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args _8732, Array(len=2, data=mem[(32 * _3062) + _284 + ceil32(return_data.size) + 324 len 64])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _3062) + _284 + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * _3062) + _284 + (2 * ceil32(return_data.size)) + 224
            require return_data.size >= 32
            _11869 = mem[(32 * _3062) + _284 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _8732) >> 32
            require mem[(32 * _3062) + _284 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _8732) >> 32 <= 4294967296
            require mem[(32 * _3062) + _284 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _8732) >> 32 + 32 <= return_data.size
            require mem[(32 * _3062) + _284 + ceil32(return_data.size) + mem[(32 * _3062) + _284 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _8732) >> 32 + 224] <= 4294967296 and mem[(32 * _3062) + _284 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _8732) >> 32 + (32 * mem[(32 * _3062) + _284 + ceil32(return_data.size) + mem[(32 * _3062) + _284 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _8732) >> 32 + 224]) + 32 <= return_data.size
            mem[(32 * _3062) + _284 + (2 * ceil32(return_data.size)) + 224] = mem[(32 * _3062) + _284 + ceil32(return_data.size) + mem[(32 * _3062) + _284 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _8732) >> 32 + 224]
            _11983 = mem[(32 * _3062) + _284 + ceil32(return_data.size) + _11869 + 224]
            t = 0
            while t < 32 * _11983:
                mem[t + (32 * _3062) + _284 + (2 * ceil32(return_data.size)) + 256] = mem[t + (32 * _3062) + _284 + ceil32(return_data.size) + _11869 + 256]
                t = t + 32
                continue 
            mem[64] = (32 * _11983) + (32 * _3062) + _284 + (2 * ceil32(return_data.size)) + 256
            require mem[(32 * _3062) + _284 + (2 * ceil32(return_data.size)) + 224] - 1 < mem[(32 * _3062) + _284 + (2 * ceil32(return_data.size)) + 224]
            if mem[(32 * mem[(32 * _3062) + _284 + (2 * ceil32(return_data.size)) + 224] - 1) + (32 * _3062) + _284 + (2 * ceil32(return_data.size)) + 256] <= s:
                idx = idx + 1
                s = s
                continue 
            idx = idx + 1
            s = mem[(32 * mem[(32 * _3062) + _284 + (2 * ceil32(return_data.size)) + 224] - 1) + (32 * _3062) + _284 + (2 * ceil32(return_data.size)) + 256]
            continue 
        idx = 0
        t = 0
        while idx < 13:
            if not idx:
                mem[mem[64] + 4] = 2
                mem[mem[64] + 36] = 0
                mem[mem[64] + 68] = s
                require ext_code.size(0x92d5ebf3593a92888c25c0abef126583d4b5312e)
                staticcall 0x92d5ebf3593a92888c25c0abef126583d4b5312e.get_dy_underlying(int128 arg1, int128 arg2, uint256 arg3) with:
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
                staticcall 0x83e5f18da720119ff363cf63417628eb0e9fd523.get_dy(int128 arg1, int128 arg2, uint256 arg3) with:
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
                _3171 = mem[64]
                mem[mem[64]] = 3
                mem[64] = mem[64] + 128
                require 0 < mem[_3171]
                mem[_3171 + 32] = 0x49d68029688eabf473097a2fc38ef61633a3c
                require 1 < mem[_3171]
                mem[_3171 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c
                require 2 < mem[_3171]
                mem[_3171 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                mem[_3171 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_3171 + 132] = s
                mem[_3171 + 164] = 64
                mem[_3171 + 196] = mem[_3171]
                u = 0
                while u < 32 * mem[_3171]:
                    mem[u + _3171 + 228] = mem[u + _3171 + 32]
                    u = u + 32
                    continue 
                require ext_code.size(0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52)
                staticcall 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args s, 64, mem[_3171 + 196 len (32 * mem[_3171]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_3171 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _3171 + ceil32(return_data.size) + 128
                require return_data.size >= 32
                _9019 = mem[_3171 + 128 len 4], Mask(224, 32, s) >> 32
                require mem[_3171 + 128 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                require mem[_3171 + 128 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                require mem[_3171 + mem[_3171 + 128 len 4], Mask(224, 32, s) >> 32 + 128] <= 4294967296 and mem[_3171 + 128 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_3171 + mem[_3171 + 128 len 4], Mask(224, 32, s) >> 32 + 128]) + 32 <= return_data.size
                mem[_3171 + ceil32(return_data.size) + 128] = mem[_3171 + mem[_3171 + 128 len 4], Mask(224, 32, s) >> 32 + 128]
                _9635 = mem[_3171 + _9019 + 128]
                s = 0
                while s < 32 * _9635:
                    mem[s + _3171 + ceil32(return_data.size) + 160] = mem[s + _3171 + _9019 + 160]
                    s = s + 32
                    continue 
                mem[64] = (32 * _9635) + _3171 + ceil32(return_data.size) + 160
                require mem[_3171 + ceil32(return_data.size) + 128] - 1 < mem[_3171 + ceil32(return_data.size) + 128]
                if mem[(32 * mem[_3171 + ceil32(return_data.size) + 128] - 1) + _3171 + ceil32(return_data.size) + 160] <= t:
                    idx = idx + 1
                    t = t
                    continue 
                idx = idx + 1
                t = mem[(32 * mem[_3171 + ceil32(return_data.size) + 128] - 1) + _3171 + ceil32(return_data.size) + 160]
                continue 
            if 3 == idx:
                if 2 == idx:
                    _3244 = mem[64]
                    mem[mem[64]] = 3
                    mem[64] = mem[64] + 128
                    require 0 < mem[_3244]
                    mem[_3244 + 32] = 0x49d68029688eabf473097a2fc38ef61633a3c
                    require 1 < mem[_3244]
                    mem[_3244 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c
                    require 2 < mem[_3244]
                    mem[_3244 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    mem[_3244 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_3244 + 132] = s
                    mem[_3244 + 164] = 64
                    mem[_3244 + 196] = mem[_3244]
                    u = 0
                    while u < 32 * mem[_3244]:
                        mem[u + _3244 + 228] = mem[u + _3244 + 32]
                        u = u + 32
                        continue 
                    require ext_code.size(0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52)
                    staticcall 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args s, 64, mem[_3244 + 196 len (32 * mem[_3244]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_3244 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _3244 + ceil32(return_data.size) + 128
                    require return_data.size >= 32
                    _9065 = mem[_3244 + 128 len 4], Mask(224, 32, s) >> 32
                    require mem[_3244 + 128 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                    require mem[_3244 + 128 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                    require mem[_3244 + mem[_3244 + 128 len 4], Mask(224, 32, s) >> 32 + 128] <= 4294967296 and mem[_3244 + 128 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_3244 + mem[_3244 + 128 len 4], Mask(224, 32, s) >> 32 + 128]) + 32 <= return_data.size
                    mem[_3244 + ceil32(return_data.size) + 128] = mem[_3244 + mem[_3244 + 128 len 4], Mask(224, 32, s) >> 32 + 128]
                    _9658 = mem[_3244 + _9065 + 128]
                    s = 0
                    while s < 32 * _9658:
                        mem[s + _3244 + ceil32(return_data.size) + 160] = mem[s + _3244 + _9065 + 160]
                        s = s + 32
                        continue 
                    mem[64] = (32 * _9658) + _3244 + ceil32(return_data.size) + 160
                    require mem[_3244 + ceil32(return_data.size) + 128] - 1 < mem[_3244 + ceil32(return_data.size) + 128]
                    if mem[(32 * mem[_3244 + ceil32(return_data.size) + 128] - 1) + _3244 + ceil32(return_data.size) + 160] <= t:
                        idx = idx + 1
                        t = t
                        continue 
                    idx = idx + 1
                    t = mem[(32 * mem[_3244 + ceil32(return_data.size) + 128] - 1) + _3244 + ceil32(return_data.size) + 160]
                    continue 
                if idx != 3:
                    _3240 = mem[64]
                    mem[mem[64]] = 3
                    mem[64] = mem[64] + 128
                    require 0 < mem[_3240]
                    mem[_3240 + 32] = 0x49d68029688eabf473097a2fc38ef61633a3c
                    require 1 < mem[_3240]
                    mem[_3240 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c
                    require 2 < mem[_3240]
                    mem[_3240 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    mem[_3240 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_3240 + 132] = s
                    mem[_3240 + 164] = 64
                    mem[_3240 + 196] = mem[_3240]
                    u = 0
                    while u < 32 * mem[_3240]:
                        mem[u + _3240 + 228] = mem[u + _3240 + 32]
                        u = u + 32
                        continue 
                    require ext_code.size(0)
                    staticcall 0x0.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args s, 64, mem[_3240 + 196 len (32 * mem[_3240]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_3240 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _3240 + ceil32(return_data.size) + 128
                    require return_data.size >= 32
                    _9061 = mem[_3240 + 128 len 4], Mask(224, 32, s) >> 32
                    require mem[_3240 + 128 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                    require mem[_3240 + 128 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                    require mem[_3240 + mem[_3240 + 128 len 4], Mask(224, 32, s) >> 32 + 128] <= 4294967296 and mem[_3240 + 128 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_3240 + mem[_3240 + 128 len 4], Mask(224, 32, s) >> 32 + 128]) + 32 <= return_data.size
                    mem[_3240 + ceil32(return_data.size) + 128] = mem[_3240 + mem[_3240 + 128 len 4], Mask(224, 32, s) >> 32 + 128]
                    _9656 = mem[_3240 + _9061 + 128]
                    s = 0
                    while s < 32 * _9656:
                        mem[s + _3240 + ceil32(return_data.size) + 160] = mem[s + _3240 + _9061 + 160]
                        s = s + 32
                        continue 
                    mem[64] = (32 * _9656) + _3240 + ceil32(return_data.size) + 160
                    require mem[_3240 + ceil32(return_data.size) + 128] - 1 < mem[_3240 + ceil32(return_data.size) + 128]
                    if mem[(32 * mem[_3240 + ceil32(return_data.size) + 128] - 1) + _3240 + ceil32(return_data.size) + 160] <= t:
                        idx = idx + 1
                        t = t
                        continue 
                    idx = idx + 1
                    t = mem[(32 * mem[_3240 + ceil32(return_data.size) + 128] - 1) + _3240 + ceil32(return_data.size) + 160]
                    continue 
                _3686 = mem[64]
                mem[mem[64]] = 3
                mem[64] = mem[64] + 128
                require 0 < mem[_3686]
                mem[_3686 + 32] = 0x49d68029688eabf473097a2fc38ef61633a3c
                require 1 < mem[_3686]
                mem[_3686 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c
                require 2 < mem[_3686]
                mem[_3686 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                mem[_3686 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_3686 + 132] = s
                mem[_3686 + 164] = 64
                mem[_3686 + 196] = mem[_3686]
                u = 0
                while u < 32 * mem[_3686]:
                    mem[u + _3686 + 228] = mem[u + _3686 + 32]
                    u = u + 32
                    continue 
                require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c)
                staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args s, 64, mem[_3686 + 196 len (32 * mem[_3686]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_3686 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _3686 + ceil32(return_data.size) + 128
                require return_data.size >= 32
                _9063 = mem[_3686 + 128 len 4], Mask(224, 32, s) >> 32
                require mem[_3686 + 128 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                require mem[_3686 + 128 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                require mem[_3686 + mem[_3686 + 128 len 4], Mask(224, 32, s) >> 32 + 128] <= 4294967296 and mem[_3686 + 128 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_3686 + mem[_3686 + 128 len 4], Mask(224, 32, s) >> 32 + 128]) + 32 <= return_data.size
                mem[_3686 + ceil32(return_data.size) + 128] = mem[_3686 + mem[_3686 + 128 len 4], Mask(224, 32, s) >> 32 + 128]
                _9657 = mem[_3686 + _9063 + 128]
                s = 0
                while s < 32 * _9657:
                    mem[s + _3686 + ceil32(return_data.size) + 160] = mem[s + _3686 + _9063 + 160]
                    s = s + 32
                    continue 
                mem[64] = (32 * _9657) + _3686 + ceil32(return_data.size) + 160
                require mem[_3686 + ceil32(return_data.size) + 128] - 1 < mem[_3686 + ceil32(return_data.size) + 128]
                if mem[(32 * mem[_3686 + ceil32(return_data.size) + 128] - 1) + _3686 + ceil32(return_data.size) + 160] <= t:
                    idx = idx + 1
                    t = t
                    continue 
                idx = idx + 1
                t = mem[(32 * mem[_3686 + ceil32(return_data.size) + 128] - 1) + _3686 + ceil32(return_data.size) + 160]
                continue 
            if 4 == idx:
                mem[mem[64] + 4] = 0
                mem[mem[64] + 36] = 2
                mem[mem[64] + 68] = s
                require ext_code.size(0x3a1659ddcf2339be3aea159ca010979fb49155ff)
                staticcall 0x3a1659ddcf2339be3aea159ca010979fb49155ff.get_dy(uint256 arg1, uint256 arg2, uint256 arg3) with:
                        gas gas_remaining wei
                       args 0, 2, s
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                _4044 = mem[64]
                mem[mem[64]] = 3
                mem[64] = mem[64] + 128
                require 0 < mem[_4044]
                mem[_4044 + 32] = 0x74b23882a30290451a17c44f4f05243b6b58c76d
                require 1 < mem[_4044]
                mem[_4044 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c
                require 2 < mem[_4044]
                mem[_4044 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                mem[_4044 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_4044 + 132] = ext_call.return_data[0]
                mem[_4044 + 164] = 64
                mem[_4044 + 196] = mem[_4044]
                s = 0
                while s < 32 * mem[_4044]:
                    mem[s + _4044 + 228] = mem[s + _4044 + 32]
                    s = s + 32
                    continue 
                require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c)
                staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args ext_call.return_data[0], 64, mem[_4044 + 196 len (32 * mem[_4044]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_4044 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _4044 + ceil32(return_data.size) + 128
                require return_data.size >= 32
                _9057 = mem[_4044 + 128 len 4], ext_call.return_data[0 len 28]
                require mem[_4044 + 128 len 4], ext_call.return_data[0 len 28] <= 4294967296
                require mem[_4044 + 128 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                require mem[_4044 + mem[_4044 + 128 len 4], ext_call.return_data[0 len 28] + 128] <= 4294967296 and mem[_4044 + 128 len 4], ext_call.return_data[0 len 28] + (32 * mem[_4044 + mem[_4044 + 128 len 4], ext_call.return_data[0 len 28] + 128]) + 32 <= return_data.size
                mem[_4044 + ceil32(return_data.size) + 128] = mem[_4044 + mem[_4044 + 128 len 4], ext_call.return_data[0 len 28] + 128]
                _9654 = mem[_4044 + _9057 + 128]
                s = 0
                while s < 32 * _9654:
                    mem[s + _4044 + ceil32(return_data.size) + 160] = mem[s + _4044 + _9057 + 160]
                    s = s + 32
                    continue 
                mem[64] = (32 * _9654) + _4044 + ceil32(return_data.size) + 160
                require mem[_4044 + ceil32(return_data.size) + 128] - 1 < mem[_4044 + ceil32(return_data.size) + 128]
                if mem[(32 * mem[_4044 + ceil32(return_data.size) + 128] - 1) + _4044 + ceil32(return_data.size) + 160] <= t:
                    idx = idx + 1
                    t = t
                    continue 
                idx = idx + 1
                t = mem[(32 * mem[_4044 + ceil32(return_data.size) + 128] - 1) + _4044 + ceil32(return_data.size) + 160]
                continue 
            if idx != 5:
                if 6 == idx:
                    _4444 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    require 0 < mem[_4444]
                    mem[_4444 + 32] = 0x49d68029688eabf473097a2fc38ef61633a3c
                    require 1 < mem[_4444]
                    mem[_4444 + 64] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    mem[_4444 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_4444 + 100] = s
                    mem[_4444 + 132] = 64
                    mem[_4444 + 164] = mem[_4444]
                    u = 0
                    while u < 32 * mem[_4444]:
                        mem[u + _4444 + 196] = mem[u + _4444 + 32]
                        u = u + 32
                        continue 
                    require ext_code.size(0x845e76a8691423fbc4ecb8dd77556cb61c09ee25)
                    staticcall 0x845e76a8691423fbc4ecb8dd77556cb61c09ee25.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args s, 64, mem[_4444 + 164 len (32 * mem[_4444]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_4444 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _4444 + ceil32(return_data.size) + 96
                    require return_data.size >= 32
                    _9021 = mem[_4444 + 96 len 4], Mask(224, 32, s) >> 32
                    require mem[_4444 + 96 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                    require mem[_4444 + 96 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                    require mem[_4444 + mem[_4444 + 96 len 4], Mask(224, 32, s) >> 32 + 96] <= 4294967296 and mem[_4444 + 96 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_4444 + mem[_4444 + 96 len 4], Mask(224, 32, s) >> 32 + 96]) + 32 <= return_data.size
                    mem[_4444 + ceil32(return_data.size) + 96] = mem[_4444 + mem[_4444 + 96 len 4], Mask(224, 32, s) >> 32 + 96]
                    _9636 = mem[_4444 + _9021 + 96]
                    s = 0
                    while s < 32 * _9636:
                        mem[s + _4444 + ceil32(return_data.size) + 128] = mem[s + _4444 + _9021 + 128]
                        s = s + 32
                        continue 
                    mem[64] = (32 * _9636) + _4444 + ceil32(return_data.size) + 128
                    require mem[_4444 + ceil32(return_data.size) + 96] - 1 < mem[_4444 + ceil32(return_data.size) + 96]
                    if mem[(32 * mem[_4444 + ceil32(return_data.size) + 96] - 1) + _4444 + ceil32(return_data.size) + 128] <= t:
                        idx = idx + 1
                        t = t
                        continue 
                    idx = idx + 1
                    t = mem[(32 * mem[_4444 + ceil32(return_data.size) + 96] - 1) + _4444 + ceil32(return_data.size) + 128]
                    continue 
                if 7 == idx:
                    if 6 == idx:
                        _4553 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        require 0 < mem[_4553]
                        mem[_4553 + 32] = 0x49d68029688eabf473097a2fc38ef61633a3c
                        require 1 < mem[_4553]
                        mem[_4553 + 64] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                        mem[_4553 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[_4553 + 100] = s
                        mem[_4553 + 132] = 64
                        mem[_4553 + 164] = mem[_4553]
                        u = 0
                        while u < 32 * mem[_4553]:
                            mem[u + _4553 + 196] = mem[u + _4553 + 32]
                            u = u + 32
                            continue 
                        require ext_code.size(0x845e76a8691423fbc4ecb8dd77556cb61c09ee25)
                        staticcall 0x845e76a8691423fbc4ecb8dd77556cb61c09ee25.getAmountsOut(uint256 arg1, address[] arg2) with:
                                gas gas_remaining wei
                               args s, 64, mem[_4553 + 164 len (32 * mem[_4553]) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_4553 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = _4553 + ceil32(return_data.size) + 96
                        require return_data.size >= 32
                        _9031 = mem[_4553 + 96 len 4], Mask(224, 32, s) >> 32
                        require mem[_4553 + 96 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                        require mem[_4553 + 96 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                        require mem[_4553 + mem[_4553 + 96 len 4], Mask(224, 32, s) >> 32 + 96] <= 4294967296 and mem[_4553 + 96 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_4553 + mem[_4553 + 96 len 4], Mask(224, 32, s) >> 32 + 96]) + 32 <= return_data.size
                        mem[_4553 + ceil32(return_data.size) + 96] = mem[_4553 + mem[_4553 + 96 len 4], Mask(224, 32, s) >> 32 + 96]
                        _9641 = mem[_4553 + _9031 + 96]
                        s = 0
                        while s < 32 * _9641:
                            mem[s + _4553 + ceil32(return_data.size) + 128] = mem[s + _4553 + _9031 + 128]
                            s = s + 32
                            continue 
                        mem[64] = (32 * _9641) + _4553 + ceil32(return_data.size) + 128
                        require mem[_4553 + ceil32(return_data.size) + 96] - 1 < mem[_4553 + ceil32(return_data.size) + 96]
                        if mem[(32 * mem[_4553 + ceil32(return_data.size) + 96] - 1) + _4553 + ceil32(return_data.size) + 128] <= t:
                            idx = idx + 1
                            t = t
                            continue 
                        idx = idx + 1
                        t = mem[(32 * mem[_4553 + ceil32(return_data.size) + 96] - 1) + _4553 + ceil32(return_data.size) + 128]
                        continue 
                    if 7 == idx:
                        _4646 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        require 0 < mem[_4646]
                        mem[_4646 + 32] = 0x49d68029688eabf473097a2fc38ef61633a3c
                        require 1 < mem[_4646]
                        mem[_4646 + 64] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                        mem[_4646 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[_4646 + 100] = s
                        mem[_4646 + 132] = 64
                        mem[_4646 + 164] = mem[_4646]
                        u = 0
                        while u < 32 * mem[_4646]:
                            mem[u + _4646 + 196] = mem[u + _4646 + 32]
                            u = u + 32
                            continue 
                        require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c)
                        staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c.getAmountsOut(uint256 arg1, address[] arg2) with:
                                gas gas_remaining wei
                               args s, 64, mem[_4646 + 164 len (32 * mem[_4646]) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_4646 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = _4646 + ceil32(return_data.size) + 96
                        require return_data.size >= 32
                        _9029 = mem[_4646 + 96 len 4], Mask(224, 32, s) >> 32
                        require mem[_4646 + 96 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                        require mem[_4646 + 96 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                        require mem[_4646 + mem[_4646 + 96 len 4], Mask(224, 32, s) >> 32 + 96] <= 4294967296 and mem[_4646 + 96 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_4646 + mem[_4646 + 96 len 4], Mask(224, 32, s) >> 32 + 96]) + 32 <= return_data.size
                        mem[_4646 + ceil32(return_data.size) + 96] = mem[_4646 + mem[_4646 + 96 len 4], Mask(224, 32, s) >> 32 + 96]
                        _9640 = mem[_4646 + _9029 + 96]
                        s = 0
                        while s < 32 * _9640:
                            mem[s + _4646 + ceil32(return_data.size) + 128] = mem[s + _4646 + _9029 + 128]
                            s = s + 32
                            continue 
                        mem[64] = (32 * _9640) + _4646 + ceil32(return_data.size) + 128
                        require mem[_4646 + ceil32(return_data.size) + 96] - 1 < mem[_4646 + ceil32(return_data.size) + 96]
                        if mem[(32 * mem[_4646 + ceil32(return_data.size) + 96] - 1) + _4646 + ceil32(return_data.size) + 128] <= t:
                            idx = idx + 1
                            t = t
                            continue 
                        idx = idx + 1
                        t = mem[(32 * mem[_4646 + ceil32(return_data.size) + 96] - 1) + _4646 + ceil32(return_data.size) + 128]
                        continue 
                    if 8 == idx:
                        _4854 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        require 0 < mem[_4854]
                        mem[_4854 + 32] = 0x49d68029688eabf473097a2fc38ef61633a3c
                        require 1 < mem[_4854]
                        mem[_4854 + 64] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                        mem[_4854 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[_4854 + 100] = s
                        mem[_4854 + 132] = 64
                        mem[_4854 + 164] = mem[_4854]
                        u = 0
                        while u < 32 * mem[_4854]:
                            mem[u + _4854 + 196] = mem[u + _4854 + 32]
                            u = u + 32
                            continue 
                        require ext_code.size(0x6b3d631b87fe27af29efec61d2ab8ce4d621ccbf)
                        staticcall 0x6b3d631b87fe27af29efec61d2ab8ce4d621ccbf.getAmountsOut(uint256 arg1, address[] arg2) with:
                                gas gas_remaining wei
                               args s, 64, mem[_4854 + 164 len (32 * mem[_4854]) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_4854 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = _4854 + ceil32(return_data.size) + 96
                        require return_data.size >= 32
                        _9027 = mem[_4854 + 96 len 4], Mask(224, 32, s) >> 32
                        require mem[_4854 + 96 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                        require mem[_4854 + 96 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                        require mem[_4854 + mem[_4854 + 96 len 4], Mask(224, 32, s) >> 32 + 96] <= 4294967296 and mem[_4854 + 96 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_4854 + mem[_4854 + 96 len 4], Mask(224, 32, s) >> 32 + 96]) + 32 <= return_data.size
                        mem[_4854 + ceil32(return_data.size) + 96] = mem[_4854 + mem[_4854 + 96 len 4], Mask(224, 32, s) >> 32 + 96]
                        _9639 = mem[_4854 + _9027 + 96]
                        s = 0
                        while s < 32 * _9639:
                            mem[s + _4854 + ceil32(return_data.size) + 128] = mem[s + _4854 + _9027 + 128]
                            s = s + 32
                            continue 
                        mem[64] = (32 * _9639) + _4854 + ceil32(return_data.size) + 128
                        require mem[_4854 + ceil32(return_data.size) + 96] - 1 < mem[_4854 + ceil32(return_data.size) + 96]
                        if mem[(32 * mem[_4854 + ceil32(return_data.size) + 96] - 1) + _4854 + ceil32(return_data.size) + 128] <= t:
                            idx = idx + 1
                            t = t
                            continue 
                        idx = idx + 1
                        t = mem[(32 * mem[_4854 + ceil32(return_data.size) + 96] - 1) + _4854 + ceil32(return_data.size) + 128]
                        continue 
                    if idx != 9:
                        _4852 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        require 0 < mem[_4852]
                        mem[_4852 + 32] = 0x49d68029688eabf473097a2fc38ef61633a3c
                        require 1 < mem[_4852]
                        mem[_4852 + 64] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                        mem[_4852 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[_4852 + 100] = s
                        mem[_4852 + 132] = 64
                        mem[_4852 + 164] = mem[_4852]
                        u = 0
                        while u < 32 * mem[_4852]:
                            mem[u + _4852 + 196] = mem[u + _4852 + 32]
                            u = u + 32
                            continue 
                        require ext_code.size(0)
                        staticcall 0x0.getAmountsOut(uint256 arg1, address[] arg2) with:
                                gas gas_remaining wei
                               args s, 64, mem[_4852 + 164 len (32 * mem[_4852]) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_4852 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = _4852 + ceil32(return_data.size) + 96
                        require return_data.size >= 32
                        _9023 = mem[_4852 + 96 len 4], Mask(224, 32, s) >> 32
                        require mem[_4852 + 96 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                        require mem[_4852 + 96 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                        require mem[_4852 + mem[_4852 + 96 len 4], Mask(224, 32, s) >> 32 + 96] <= 4294967296 and mem[_4852 + 96 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_4852 + mem[_4852 + 96 len 4], Mask(224, 32, s) >> 32 + 96]) + 32 <= return_data.size
                        mem[_4852 + ceil32(return_data.size) + 96] = mem[_4852 + mem[_4852 + 96 len 4], Mask(224, 32, s) >> 32 + 96]
                        _9637 = mem[_4852 + _9023 + 96]
                        s = 0
                        while s < 32 * _9637:
                            mem[s + _4852 + ceil32(return_data.size) + 128] = mem[s + _4852 + _9023 + 128]
                            s = s + 32
                            continue 
                        mem[64] = (32 * _9637) + _4852 + ceil32(return_data.size) + 128
                        require mem[_4852 + ceil32(return_data.size) + 96] - 1 < mem[_4852 + ceil32(return_data.size) + 96]
                        if mem[(32 * mem[_4852 + ceil32(return_data.size) + 96] - 1) + _4852 + ceil32(return_data.size) + 128] <= t:
                            idx = idx + 1
                            t = t
                            continue 
                        idx = idx + 1
                        t = mem[(32 * mem[_4852 + ceil32(return_data.size) + 96] - 1) + _4852 + ceil32(return_data.size) + 128]
                        continue 
                    _5047 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    require 0 < mem[_5047]
                    mem[_5047 + 32] = 0x49d68029688eabf473097a2fc38ef61633a3c
                    require 1 < mem[_5047]
                    mem[_5047 + 64] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    mem[_5047 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_5047 + 100] = s
                    mem[_5047 + 132] = 64
                    mem[_5047 + 164] = mem[_5047]
                    u = 0
                    while u < 32 * mem[_5047]:
                        mem[u + _5047 + 196] = mem[u + _5047 + 32]
                        u = u + 32
                        continue 
                    require ext_code.size(0x2724b9497b2cf3325c6be3ea430b3cec34b5ef2d)
                    staticcall 0x2724b9497b2cf3325c6be3ea430b3cec34b5ef2d.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args s, 64, mem[_5047 + 164 len (32 * mem[_5047]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_5047 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _5047 + ceil32(return_data.size) + 96
                    require return_data.size >= 32
                    _9025 = mem[_5047 + 96 len 4], Mask(224, 32, s) >> 32
                    require mem[_5047 + 96 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                    require mem[_5047 + 96 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                    require mem[_5047 + mem[_5047 + 96 len 4], Mask(224, 32, s) >> 32 + 96] <= 4294967296 and mem[_5047 + 96 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_5047 + mem[_5047 + 96 len 4], Mask(224, 32, s) >> 32 + 96]) + 32 <= return_data.size
                    mem[_5047 + ceil32(return_data.size) + 96] = mem[_5047 + mem[_5047 + 96 len 4], Mask(224, 32, s) >> 32 + 96]
                    _9638 = mem[_5047 + _9025 + 96]
                    s = 0
                    while s < 32 * _9638:
                        mem[s + _5047 + ceil32(return_data.size) + 128] = mem[s + _5047 + _9025 + 128]
                        s = s + 32
                        continue 
                    mem[64] = (32 * _9638) + _5047 + ceil32(return_data.size) + 128
                    require mem[_5047 + ceil32(return_data.size) + 96] - 1 < mem[_5047 + ceil32(return_data.size) + 96]
                    if mem[(32 * mem[_5047 + ceil32(return_data.size) + 96] - 1) + _5047 + ceil32(return_data.size) + 128] <= t:
                        idx = idx + 1
                        t = t
                        continue 
                    idx = idx + 1
                    t = mem[(32 * mem[_5047 + ceil32(return_data.size) + 96] - 1) + _5047 + ceil32(return_data.size) + 128]
                    continue 
                if 8 == idx:
                    if 6 == idx:
                        _4651 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        require 0 < mem[_4651]
                        mem[_4651 + 32] = 0x49d68029688eabf473097a2fc38ef61633a3c
                        require 1 < mem[_4651]
                        mem[_4651 + 64] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                        mem[_4651 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[_4651 + 100] = s
                        mem[_4651 + 132] = 64
                        mem[_4651 + 164] = mem[_4651]
                        u = 0
                        while u < 32 * mem[_4651]:
                            mem[u + _4651 + 196] = mem[u + _4651 + 32]
                            u = u + 32
                            continue 
                        require ext_code.size(0x845e76a8691423fbc4ecb8dd77556cb61c09ee25)
                        staticcall 0x845e76a8691423fbc4ecb8dd77556cb61c09ee25.getAmountsOut(uint256 arg1, address[] arg2) with:
                                gas gas_remaining wei
                               args s, 64, mem[_4651 + 164 len (32 * mem[_4651]) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_4651 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = _4651 + ceil32(return_data.size) + 96
                        require return_data.size >= 32
                        _9041 = mem[_4651 + 96 len 4], Mask(224, 32, s) >> 32
                        require mem[_4651 + 96 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                        require mem[_4651 + 96 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                        require mem[_4651 + mem[_4651 + 96 len 4], Mask(224, 32, s) >> 32 + 96] <= 4294967296 and mem[_4651 + 96 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_4651 + mem[_4651 + 96 len 4], Mask(224, 32, s) >> 32 + 96]) + 32 <= return_data.size
                        mem[_4651 + ceil32(return_data.size) + 96] = mem[_4651 + mem[_4651 + 96 len 4], Mask(224, 32, s) >> 32 + 96]
                        _9646 = mem[_4651 + _9041 + 96]
                        s = 0
                        while s < 32 * _9646:
                            mem[s + _4651 + ceil32(return_data.size) + 128] = mem[s + _4651 + _9041 + 128]
                            s = s + 32
                            continue 
                        mem[64] = (32 * _9646) + _4651 + ceil32(return_data.size) + 128
                        require mem[_4651 + ceil32(return_data.size) + 96] - 1 < mem[_4651 + ceil32(return_data.size) + 96]
                        if mem[(32 * mem[_4651 + ceil32(return_data.size) + 96] - 1) + _4651 + ceil32(return_data.size) + 128] <= t:
                            idx = idx + 1
                            t = t
                            continue 
                        idx = idx + 1
                        t = mem[(32 * mem[_4651 + ceil32(return_data.size) + 96] - 1) + _4651 + ceil32(return_data.size) + 128]
                        continue 
                    if 7 == idx:
                        _4860 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        require 0 < mem[_4860]
                        mem[_4860 + 32] = 0x49d68029688eabf473097a2fc38ef61633a3c
                        require 1 < mem[_4860]
                        mem[_4860 + 64] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                        mem[_4860 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[_4860 + 100] = s
                        mem[_4860 + 132] = 64
                        mem[_4860 + 164] = mem[_4860]
                        u = 0
                        while u < 32 * mem[_4860]:
                            mem[u + _4860 + 196] = mem[u + _4860 + 32]
                            u = u + 32
                            continue 
                        require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c)
                        staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c.getAmountsOut(uint256 arg1, address[] arg2) with:
                                gas gas_remaining wei
                               args s, 64, mem[_4860 + 164 len (32 * mem[_4860]) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_4860 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = _4860 + ceil32(return_data.size) + 96
                        require return_data.size >= 32
                        _9039 = mem[_4860 + 96 len 4], Mask(224, 32, s) >> 32
                        require mem[_4860 + 96 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                        require mem[_4860 + 96 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                        require mem[_4860 + mem[_4860 + 96 len 4], Mask(224, 32, s) >> 32 + 96] <= 4294967296 and mem[_4860 + 96 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_4860 + mem[_4860 + 96 len 4], Mask(224, 32, s) >> 32 + 96]) + 32 <= return_data.size
                        mem[_4860 + ceil32(return_data.size) + 96] = mem[_4860 + mem[_4860 + 96 len 4], Mask(224, 32, s) >> 32 + 96]
                        _9645 = mem[_4860 + _9039 + 96]
                        s = 0
                        while s < 32 * _9645:
                            mem[s + _4860 + ceil32(return_data.size) + 128] = mem[s + _4860 + _9039 + 128]
                            s = s + 32
                            continue 
                        mem[64] = (32 * _9645) + _4860 + ceil32(return_data.size) + 128
                        require mem[_4860 + ceil32(return_data.size) + 96] - 1 < mem[_4860 + ceil32(return_data.size) + 96]
                        if mem[(32 * mem[_4860 + ceil32(return_data.size) + 96] - 1) + _4860 + ceil32(return_data.size) + 128] <= t:
                            idx = idx + 1
                            t = t
                            continue 
                        idx = idx + 1
                        t = mem[(32 * mem[_4860 + ceil32(return_data.size) + 96] - 1) + _4860 + ceil32(return_data.size) + 128]
                        continue 
                    if 8 == idx:
                        _5055 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        require 0 < mem[_5055]
                        mem[_5055 + 32] = 0x49d68029688eabf473097a2fc38ef61633a3c
                        require 1 < mem[_5055]
                        mem[_5055 + 64] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                        mem[_5055 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[_5055 + 100] = s
                        mem[_5055 + 132] = 64
                        mem[_5055 + 164] = mem[_5055]
                        u = 0
                        while u < 32 * mem[_5055]:
                            mem[u + _5055 + 196] = mem[u + _5055 + 32]
                            u = u + 32
                            continue 
                        require ext_code.size(0x6b3d631b87fe27af29efec61d2ab8ce4d621ccbf)
                        staticcall 0x6b3d631b87fe27af29efec61d2ab8ce4d621ccbf.getAmountsOut(uint256 arg1, address[] arg2) with:
                                gas gas_remaining wei
                               args s, 64, mem[_5055 + 164 len (32 * mem[_5055]) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_5055 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = _5055 + ceil32(return_data.size) + 96
                        require return_data.size >= 32
                        _9037 = mem[_5055 + 96 len 4], Mask(224, 32, s) >> 32
                        require mem[_5055 + 96 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                        require mem[_5055 + 96 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                        require mem[_5055 + mem[_5055 + 96 len 4], Mask(224, 32, s) >> 32 + 96] <= 4294967296 and mem[_5055 + 96 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_5055 + mem[_5055 + 96 len 4], Mask(224, 32, s) >> 32 + 96]) + 32 <= return_data.size
                        mem[_5055 + ceil32(return_data.size) + 96] = mem[_5055 + mem[_5055 + 96 len 4], Mask(224, 32, s) >> 32 + 96]
                        _9644 = mem[_5055 + _9037 + 96]
                        s = 0
                        while s < 32 * _9644:
                            mem[s + _5055 + ceil32(return_data.size) + 128] = mem[s + _5055 + _9037 + 128]
                            s = s + 32
                            continue 
                        mem[64] = (32 * _9644) + _5055 + ceil32(return_data.size) + 128
                        require mem[_5055 + ceil32(return_data.size) + 96] - 1 < mem[_5055 + ceil32(return_data.size) + 96]
                        if mem[(32 * mem[_5055 + ceil32(return_data.size) + 96] - 1) + _5055 + ceil32(return_data.size) + 128] <= t:
                            idx = idx + 1
                            t = t
                            continue 
                        idx = idx + 1
                        t = mem[(32 * mem[_5055 + ceil32(return_data.size) + 96] - 1) + _5055 + ceil32(return_data.size) + 128]
                        continue 
                    if idx != 9:
                        _5053 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        require 0 < mem[_5053]
                        mem[_5053 + 32] = 0x49d68029688eabf473097a2fc38ef61633a3c
                        require 1 < mem[_5053]
                        mem[_5053 + 64] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                        mem[_5053 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[_5053 + 100] = s
                        mem[_5053 + 132] = 64
                        mem[_5053 + 164] = mem[_5053]
                        u = 0
                        while u < 32 * mem[_5053]:
                            mem[u + _5053 + 196] = mem[u + _5053 + 32]
                            u = u + 32
                            continue 
                        require ext_code.size(0)
                        staticcall 0x0.getAmountsOut(uint256 arg1, address[] arg2) with:
                                gas gas_remaining wei
                               args s, 64, mem[_5053 + 164 len (32 * mem[_5053]) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_5053 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = _5053 + ceil32(return_data.size) + 96
                        require return_data.size >= 32
                        _9033 = mem[_5053 + 96 len 4], Mask(224, 32, s) >> 32
                        require mem[_5053 + 96 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                        require mem[_5053 + 96 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                        require mem[_5053 + mem[_5053 + 96 len 4], Mask(224, 32, s) >> 32 + 96] <= 4294967296 and mem[_5053 + 96 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_5053 + mem[_5053 + 96 len 4], Mask(224, 32, s) >> 32 + 96]) + 32 <= return_data.size
                        mem[_5053 + ceil32(return_data.size) + 96] = mem[_5053 + mem[_5053 + 96 len 4], Mask(224, 32, s) >> 32 + 96]
                        _9642 = mem[_5053 + _9033 + 96]
                        s = 0
                        while s < 32 * _9642:
                            mem[s + _5053 + ceil32(return_data.size) + 128] = mem[s + _5053 + _9033 + 128]
                            s = s + 32
                            continue 
                        mem[64] = (32 * _9642) + _5053 + ceil32(return_data.size) + 128
                        require mem[_5053 + ceil32(return_data.size) + 96] - 1 < mem[_5053 + ceil32(return_data.size) + 96]
                        if mem[(32 * mem[_5053 + ceil32(return_data.size) + 96] - 1) + _5053 + ceil32(return_data.size) + 128] <= t:
                            idx = idx + 1
                            t = t
                            continue 
                        idx = idx + 1
                        t = mem[(32 * mem[_5053 + ceil32(return_data.size) + 96] - 1) + _5053 + ceil32(return_data.size) + 128]
                        continue 
                    _5333 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    require 0 < mem[_5333]
                    mem[_5333 + 32] = 0x49d68029688eabf473097a2fc38ef61633a3c
                    require 1 < mem[_5333]
                    mem[_5333 + 64] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    mem[_5333 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_5333 + 100] = s
                    mem[_5333 + 132] = 64
                    mem[_5333 + 164] = mem[_5333]
                    u = 0
                    while u < 32 * mem[_5333]:
                        mem[u + _5333 + 196] = mem[u + _5333 + 32]
                        u = u + 32
                        continue 
                    require ext_code.size(0x2724b9497b2cf3325c6be3ea430b3cec34b5ef2d)
                    staticcall 0x2724b9497b2cf3325c6be3ea430b3cec34b5ef2d.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args s, 64, mem[_5333 + 164 len (32 * mem[_5333]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_5333 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _5333 + ceil32(return_data.size) + 96
                    require return_data.size >= 32
                    _9035 = mem[_5333 + 96 len 4], Mask(224, 32, s) >> 32
                    require mem[_5333 + 96 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                    require mem[_5333 + 96 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                    require mem[_5333 + mem[_5333 + 96 len 4], Mask(224, 32, s) >> 32 + 96] <= 4294967296 and mem[_5333 + 96 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_5333 + mem[_5333 + 96 len 4], Mask(224, 32, s) >> 32 + 96]) + 32 <= return_data.size
                    mem[_5333 + ceil32(return_data.size) + 96] = mem[_5333 + mem[_5333 + 96 len 4], Mask(224, 32, s) >> 32 + 96]
                    _9643 = mem[_5333 + _9035 + 96]
                    s = 0
                    while s < 32 * _9643:
                        mem[s + _5333 + ceil32(return_data.size) + 128] = mem[s + _5333 + _9035 + 128]
                        s = s + 32
                        continue 
                    mem[64] = (32 * _9643) + _5333 + ceil32(return_data.size) + 128
                    require mem[_5333 + ceil32(return_data.size) + 96] - 1 < mem[_5333 + ceil32(return_data.size) + 96]
                    if mem[(32 * mem[_5333 + ceil32(return_data.size) + 96] - 1) + _5333 + ceil32(return_data.size) + 128] <= t:
                        idx = idx + 1
                        t = t
                        continue 
                    idx = idx + 1
                    t = mem[(32 * mem[_5333 + ceil32(return_data.size) + 96] - 1) + _5333 + ceil32(return_data.size) + 128]
                    continue 
                if idx != 9:
                    if 10 == idx:
                        mem[mem[64] + 4] = 0
                        mem[mem[64] + 36] = 1
                        mem[mem[64] + 68] = s
                        require ext_code.size(0x952bda8a83c3d5f398a686bb4e8c6dd90072d523)
                        staticcall 0x952bda8a83c3d5f398a686bb4e8c6dd90072d523.calculateSwap(uint8 arg1, uint8 arg2, uint256 arg3) with:
                                gas gas_remaining wei
                               args 0, 1, s
                    else:
                        if 11 == idx:
                            mem[mem[64] + 4] = 1
                            mem[mem[64] + 36] = 2
                            mem[mem[64] + 68] = s
                            require ext_code.size(0x80f6aed32fc474dd5717105dba5ea57268f46eb)
                            staticcall 0x80f6aed32fc474dd5717105dba5ea57268f46eb.calculateSwap(uint8 arg1, uint8 arg2, uint256 arg3) with:
                                    gas gas_remaining wei
                                   args 1, 2, s
                        else:
                            if idx != 12:
                                if s <= t:
                                    idx = idx + 1
                                    t = t
                                    continue 
                                idx = idx + 1
                                t = s
                                continue 
                            mem[mem[64] + 4] = 2
                            mem[mem[64] + 36] = 1
                            mem[mem[64] + 68] = s
                            require ext_code.size(0x2dd7c9371965472e5a5fd28fbe165007c61439e1)
                            staticcall 0x2dd7c9371965472e5a5fd28fbe165007c61439e1.get_dy(int128 arg1, int128 arg2, uint256 arg3) with:
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
                if 6 == idx:
                    _4869 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    require 0 < mem[_4869]
                    mem[_4869 + 32] = 0x49d68029688eabf473097a2fc38ef61633a3c
                    require 1 < mem[_4869]
                    mem[_4869 + 64] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    mem[_4869 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_4869 + 100] = s
                    mem[_4869 + 132] = 64
                    mem[_4869 + 164] = mem[_4869]
                    u = 0
                    while u < 32 * mem[_4869]:
                        mem[u + _4869 + 196] = mem[u + _4869 + 32]
                        u = u + 32
                        continue 
                    require ext_code.size(0x845e76a8691423fbc4ecb8dd77556cb61c09ee25)
                    staticcall 0x845e76a8691423fbc4ecb8dd77556cb61c09ee25.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args s, 64, mem[_4869 + 164 len (32 * mem[_4869]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_4869 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _4869 + ceil32(return_data.size) + 96
                    require return_data.size >= 32
                    _9051 = mem[_4869 + 96 len 4], Mask(224, 32, s) >> 32
                    require mem[_4869 + 96 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                    require mem[_4869 + 96 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                    require mem[_4869 + mem[_4869 + 96 len 4], Mask(224, 32, s) >> 32 + 96] <= 4294967296 and mem[_4869 + 96 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_4869 + mem[_4869 + 96 len 4], Mask(224, 32, s) >> 32 + 96]) + 32 <= return_data.size
                    mem[_4869 + ceil32(return_data.size) + 96] = mem[_4869 + mem[_4869 + 96 len 4], Mask(224, 32, s) >> 32 + 96]
                    _9651 = mem[_4869 + _9051 + 96]
                    s = 0
                    while s < 32 * _9651:
                        mem[s + _4869 + ceil32(return_data.size) + 128] = mem[s + _4869 + _9051 + 128]
                        s = s + 32
                        continue 
                    mem[64] = (32 * _9651) + _4869 + ceil32(return_data.size) + 128
                    require mem[_4869 + ceil32(return_data.size) + 96] - 1 < mem[_4869 + ceil32(return_data.size) + 96]
                    if mem[(32 * mem[_4869 + ceil32(return_data.size) + 96] - 1) + _4869 + ceil32(return_data.size) + 128] <= t:
                        idx = idx + 1
                        t = t
                        continue 
                    idx = idx + 1
                    t = mem[(32 * mem[_4869 + ceil32(return_data.size) + 96] - 1) + _4869 + ceil32(return_data.size) + 128]
                    continue 
                if 7 == idx:
                    _5069 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    require 0 < mem[_5069]
                    mem[_5069 + 32] = 0x49d68029688eabf473097a2fc38ef61633a3c
                    require 1 < mem[_5069]
                    mem[_5069 + 64] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    mem[_5069 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_5069 + 100] = s
                    mem[_5069 + 132] = 64
                    mem[_5069 + 164] = mem[_5069]
                    u = 0
                    while u < 32 * mem[_5069]:
                        mem[u + _5069 + 196] = mem[u + _5069 + 32]
                        u = u + 32
                        continue 
                    require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c)
                    staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args s, 64, mem[_5069 + 164 len (32 * mem[_5069]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_5069 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _5069 + ceil32(return_data.size) + 96
                    require return_data.size >= 32
                    _9049 = mem[_5069 + 96 len 4], Mask(224, 32, s) >> 32
                    require mem[_5069 + 96 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                    require mem[_5069 + 96 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                    require mem[_5069 + mem[_5069 + 96 len 4], Mask(224, 32, s) >> 32 + 96] <= 4294967296 and mem[_5069 + 96 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_5069 + mem[_5069 + 96 len 4], Mask(224, 32, s) >> 32 + 96]) + 32 <= return_data.size
                    mem[_5069 + ceil32(return_data.size) + 96] = mem[_5069 + mem[_5069 + 96 len 4], Mask(224, 32, s) >> 32 + 96]
                    _9650 = mem[_5069 + _9049 + 96]
                    s = 0
                    while s < 32 * _9650:
                        mem[s + _5069 + ceil32(return_data.size) + 128] = mem[s + _5069 + _9049 + 128]
                        s = s + 32
                        continue 
                    mem[64] = (32 * _9650) + _5069 + ceil32(return_data.size) + 128
                    require mem[_5069 + ceil32(return_data.size) + 96] - 1 < mem[_5069 + ceil32(return_data.size) + 96]
                    if mem[(32 * mem[_5069 + ceil32(return_data.size) + 96] - 1) + _5069 + ceil32(return_data.size) + 128] <= t:
                        idx = idx + 1
                        t = t
                        continue 
                    idx = idx + 1
                    t = mem[(32 * mem[_5069 + ceil32(return_data.size) + 96] - 1) + _5069 + ceil32(return_data.size) + 128]
                    continue 
                if 8 == idx:
                    _5344 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    require 0 < mem[_5344]
                    mem[_5344 + 32] = 0x49d68029688eabf473097a2fc38ef61633a3c
                    require 1 < mem[_5344]
                    mem[_5344 + 64] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    mem[_5344 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_5344 + 100] = s
                    mem[_5344 + 132] = 64
                    mem[_5344 + 164] = mem[_5344]
                    u = 0
                    while u < 32 * mem[_5344]:
                        mem[u + _5344 + 196] = mem[u + _5344 + 32]
                        u = u + 32
                        continue 
                    require ext_code.size(0x6b3d631b87fe27af29efec61d2ab8ce4d621ccbf)
                    staticcall 0x6b3d631b87fe27af29efec61d2ab8ce4d621ccbf.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args s, 64, mem[_5344 + 164 len (32 * mem[_5344]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_5344 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _5344 + ceil32(return_data.size) + 96
                    require return_data.size >= 32
                    _9047 = mem[_5344 + 96 len 4], Mask(224, 32, s) >> 32
                    require mem[_5344 + 96 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                    require mem[_5344 + 96 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                    require mem[_5344 + mem[_5344 + 96 len 4], Mask(224, 32, s) >> 32 + 96] <= 4294967296 and mem[_5344 + 96 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_5344 + mem[_5344 + 96 len 4], Mask(224, 32, s) >> 32 + 96]) + 32 <= return_data.size
                    mem[_5344 + ceil32(return_data.size) + 96] = mem[_5344 + mem[_5344 + 96 len 4], Mask(224, 32, s) >> 32 + 96]
                    _9649 = mem[_5344 + _9047 + 96]
                    s = 0
                    while s < 32 * _9649:
                        mem[s + _5344 + ceil32(return_data.size) + 128] = mem[s + _5344 + _9047 + 128]
                        s = s + 32
                        continue 
                    mem[64] = (32 * _9649) + _5344 + ceil32(return_data.size) + 128
                    require mem[_5344 + ceil32(return_data.size) + 96] - 1 < mem[_5344 + ceil32(return_data.size) + 96]
                    if mem[(32 * mem[_5344 + ceil32(return_data.size) + 96] - 1) + _5344 + ceil32(return_data.size) + 128] <= t:
                        idx = idx + 1
                        t = t
                        continue 
                    idx = idx + 1
                    t = mem[(32 * mem[_5344 + ceil32(return_data.size) + 96] - 1) + _5344 + ceil32(return_data.size) + 128]
                    continue 
                if idx != 9:
                    _5342 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    require 0 < mem[_5342]
                    mem[_5342 + 32] = 0x49d68029688eabf473097a2fc38ef61633a3c
                    require 1 < mem[_5342]
                    mem[_5342 + 64] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    mem[_5342 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_5342 + 100] = s
                    mem[_5342 + 132] = 64
                    mem[_5342 + 164] = mem[_5342]
                    u = 0
                    while u < 32 * mem[_5342]:
                        mem[u + _5342 + 196] = mem[u + _5342 + 32]
                        u = u + 32
                        continue 
                    require ext_code.size(0)
                    staticcall 0x0.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args s, 64, mem[_5342 + 164 len (32 * mem[_5342]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_5342 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _5342 + ceil32(return_data.size) + 96
                    require return_data.size >= 32
                    _9043 = mem[_5342 + 96 len 4], Mask(224, 32, s) >> 32
                    require mem[_5342 + 96 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                    require mem[_5342 + 96 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                    require mem[_5342 + mem[_5342 + 96 len 4], Mask(224, 32, s) >> 32 + 96] <= 4294967296 and mem[_5342 + 96 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_5342 + mem[_5342 + 96 len 4], Mask(224, 32, s) >> 32 + 96]) + 32 <= return_data.size
                    mem[_5342 + ceil32(return_data.size) + 96] = mem[_5342 + mem[_5342 + 96 len 4], Mask(224, 32, s) >> 32 + 96]
                    _9647 = mem[_5342 + _9043 + 96]
                    s = 0
                    while s < 32 * _9647:
                        mem[s + _5342 + ceil32(return_data.size) + 128] = mem[s + _5342 + _9043 + 128]
                        s = s + 32
                        continue 
                    mem[64] = (32 * _9647) + _5342 + ceil32(return_data.size) + 128
                    require mem[_5342 + ceil32(return_data.size) + 96] - 1 < mem[_5342 + ceil32(return_data.size) + 96]
                    if mem[(32 * mem[_5342 + ceil32(return_data.size) + 96] - 1) + _5342 + ceil32(return_data.size) + 128] <= t:
                        idx = idx + 1
                        t = t
                        continue 
                    idx = idx + 1
                    t = mem[(32 * mem[_5342 + ceil32(return_data.size) + 96] - 1) + _5342 + ceil32(return_data.size) + 128]
                    continue 
                _5644 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                require 0 < mem[_5644]
                mem[_5644 + 32] = 0x49d68029688eabf473097a2fc38ef61633a3c
                require 1 < mem[_5644]
                mem[_5644 + 64] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                mem[_5644 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_5644 + 100] = s
                mem[_5644 + 132] = 64
                mem[_5644 + 164] = mem[_5644]
                u = 0
                while u < 32 * mem[_5644]:
                    mem[u + _5644 + 196] = mem[u + _5644 + 32]
                    u = u + 32
                    continue 
                require ext_code.size(0x2724b9497b2cf3325c6be3ea430b3cec34b5ef2d)
                staticcall 0x2724b9497b2cf3325c6be3ea430b3cec34b5ef2d.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args s, 64, mem[_5644 + 164 len (32 * mem[_5644]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_5644 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _5644 + ceil32(return_data.size) + 96
                require return_data.size >= 32
                _9045 = mem[_5644 + 96 len 4], Mask(224, 32, s) >> 32
                require mem[_5644 + 96 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                require mem[_5644 + 96 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                require mem[_5644 + mem[_5644 + 96 len 4], Mask(224, 32, s) >> 32 + 96] <= 4294967296 and mem[_5644 + 96 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_5644 + mem[_5644 + 96 len 4], Mask(224, 32, s) >> 32 + 96]) + 32 <= return_data.size
                mem[_5644 + ceil32(return_data.size) + 96] = mem[_5644 + mem[_5644 + 96 len 4], Mask(224, 32, s) >> 32 + 96]
                _9648 = mem[_5644 + _9045 + 96]
                s = 0
                while s < 32 * _9648:
                    mem[s + _5644 + ceil32(return_data.size) + 128] = mem[s + _5644 + _9045 + 128]
                    s = s + 32
                    continue 
                mem[64] = (32 * _9648) + _5644 + ceil32(return_data.size) + 128
                require mem[_5644 + ceil32(return_data.size) + 96] - 1 < mem[_5644 + ceil32(return_data.size) + 96]
                if mem[(32 * mem[_5644 + ceil32(return_data.size) + 96] - 1) + _5644 + ceil32(return_data.size) + 128] <= t:
                    idx = idx + 1
                    t = t
                    continue 
                idx = idx + 1
                t = mem[(32 * mem[_5644 + ceil32(return_data.size) + 96] - 1) + _5644 + ceil32(return_data.size) + 128]
                continue 
            _3676 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            require 0 < mem[_3676]
            mem[_3676 + 32] = 0x49d68029688eabf473097a2fc38ef61633a3c
            require 1 < mem[_3676]
            mem[_3676 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c
            mem[_3676 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[_3676 + 100] = s
            mem[_3676 + 132] = 64
            mem[_3676 + 164] = mem[_3676]
            u = 0
            while u < 32 * mem[_3676]:
                mem[u + _3676 + 196] = mem[u + _3676 + 32]
                u = u + 32
                continue 
            require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c)
            staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c.getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args s, 64, mem[_3676 + 164 len (32 * mem[_3676]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[_3676 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = _3676 + ceil32(return_data.size) + 96
            require return_data.size >= 32
            _9053 = mem[_3676 + 96 len 4], Mask(224, 32, s) >> 32
            require mem[_3676 + 96 len 4], Mask(224, 32, s) >> 32 <= 4294967296
            require mem[_3676 + 96 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
            require mem[_3676 + mem[_3676 + 96 len 4], Mask(224, 32, s) >> 32 + 96] <= 4294967296 and mem[_3676 + 96 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_3676 + mem[_3676 + 96 len 4], Mask(224, 32, s) >> 32 + 96]) + 32 <= return_data.size
            mem[_3676 + ceil32(return_data.size) + 96] = mem[_3676 + mem[_3676 + 96 len 4], Mask(224, 32, s) >> 32 + 96]
            _9652 = mem[_3676 + _9053 + 96]
            s = 0
            while s < 32 * _9652:
                mem[s + _3676 + ceil32(return_data.size) + 128] = mem[s + _3676 + _9053 + 128]
                s = s + 32
                continue 
            mem[64] = (32 * _9652) + _3676 + ceil32(return_data.size) + 128
            require mem[_3676 + ceil32(return_data.size) + 96] - 1 < mem[_3676 + ceil32(return_data.size) + 96]
            _11652 = mem[(32 * mem[_3676 + ceil32(return_data.size) + 96] - 1) + _3676 + ceil32(return_data.size) + 128]
            mem[(32 * _9652) + _3676 + ceil32(return_data.size) + 128] = 2
            mem[(32 * _9652) + _3676 + ceil32(return_data.size) + 160] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c
            mem[(32 * _9652) + _3676 + ceil32(return_data.size) + 192] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
            mem[(32 * _9652) + _3676 + ceil32(return_data.size) + 224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[(32 * _9652) + _3676 + ceil32(return_data.size) + 228] = _11652
            mem[(32 * _9652) + _3676 + ceil32(return_data.size) + 260] = 64
            mem[(32 * _9652) + _3676 + ceil32(return_data.size) + 292] = 2
            s = 0
            while s < 64:
                mem[s + (32 * _9652) + _3676 + ceil32(return_data.size) + 324] = mem[s + (32 * _9652) + _3676 + ceil32(return_data.size) + 160]
                s = s + 32
                continue 
            require ext_code.size(0xe4a4642b19c4d0cba965673cd51422b1eda0a78d)
            staticcall 0xe4a4642b19c4d0cba965673cd51422b1eda0a78d.getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args _11652, Array(len=2, data=mem[(32 * _9652) + _3676 + ceil32(return_data.size) + 324 len 64])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _9652) + _3676 + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * _9652) + _3676 + (2 * ceil32(return_data.size)) + 224
            require return_data.size >= 32
            _12315 = mem[(32 * _9652) + _3676 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _11652) >> 32
            require mem[(32 * _9652) + _3676 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _11652) >> 32 <= 4294967296
            require mem[(32 * _9652) + _3676 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _11652) >> 32 + 32 <= return_data.size
            require mem[(32 * _9652) + _3676 + ceil32(return_data.size) + mem[(32 * _9652) + _3676 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _11652) >> 32 + 224] <= 4294967296 and mem[(32 * _9652) + _3676 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _11652) >> 32 + (32 * mem[(32 * _9652) + _3676 + ceil32(return_data.size) + mem[(32 * _9652) + _3676 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _11652) >> 32 + 224]) + 32 <= return_data.size
            mem[(32 * _9652) + _3676 + (2 * ceil32(return_data.size)) + 224] = mem[(32 * _9652) + _3676 + ceil32(return_data.size) + mem[(32 * _9652) + _3676 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _11652) >> 32 + 224]
            _12363 = mem[(32 * _9652) + _3676 + ceil32(return_data.size) + _12315 + 224]
            s = 0
            while s < 32 * _12363:
                mem[s + (32 * _9652) + _3676 + (2 * ceil32(return_data.size)) + 256] = mem[s + (32 * _9652) + _3676 + ceil32(return_data.size) + _12315 + 256]
                s = s + 32
                continue 
            mem[64] = (32 * _12363) + (32 * _9652) + _3676 + (2 * ceil32(return_data.size)) + 256
            require mem[(32 * _9652) + _3676 + (2 * ceil32(return_data.size)) + 224] - 1 < mem[(32 * _9652) + _3676 + (2 * ceil32(return_data.size)) + 224]
            if mem[(32 * mem[(32 * _9652) + _3676 + (2 * ceil32(return_data.size)) + 224] - 1) + (32 * _9652) + _3676 + (2 * ceil32(return_data.size)) + 256] <= t:
                idx = idx + 1
                t = t
                continue 
            idx = idx + 1
            t = mem[(32 * mem[(32 * _9652) + _3676 + (2 * ceil32(return_data.size)) + 224] - 1) + (32 * _9652) + _3676 + (2 * ceil32(return_data.size)) + 256]
            continue 
    if maxBatch:
        if 10^6 * maxBatch / maxBatch != 10^6:
            revert with 0, 32, 33, 0x75536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
    return 0, block.number
}

function sub_6835f3b8(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    mem[32] = 1
    if bool(stor1[address(msg.sender)]) != 1:
        revert with 0, 'Call not sent from the bot'
    if not sub_7d0b6809:
        mem[0] = msg.sender
        idx = 0
        s = 0
        while idx < 13:
            if not idx:
                mem[mem[64] + 4] = 2
                mem[mem[64] + 36] = 0
                mem[mem[64] + 68] = 0
                require ext_code.size(0x92d5ebf3593a92888c25c0abef126583d4b5312e)
                staticcall 0x92d5ebf3593a92888c25c0abef126583d4b5312e.get_dy_underlying(int128 arg1, int128 arg2, uint256 arg3) with:
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
                staticcall 0x83e5f18da720119ff363cf63417628eb0e9fd523.get_dy(int128 arg1, int128 arg2, uint256 arg3) with:
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
                _172 = mem[64]
                mem[mem[64]] = 3
                mem[64] = mem[64] + 128
                require 0 < mem[_172]
                mem[_172 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                require 1 < mem[_172]
                mem[_172 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c
                require 2 < mem[_172]
                mem[_172 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                mem[_172 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_172 + 132] = 0
                mem[_172 + 164] = 64
                mem[_172 + 196] = mem[_172]
                t = 0
                while t < 32 * mem[_172]:
                    mem[t + _172 + 228] = mem[t + _172 + 32]
                    t = t + 32
                    continue 
                require ext_code.size(0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52)
                staticcall 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args 0, 64, mem[_172 + 196 len (32 * mem[_172]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_172 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _172 + ceil32(return_data.size) + 128
                require return_data.size >= 32
                _2794 = mem[_172 + 128 len 4], 0
                require mem[_172 + 128 len 4], 0 <= 4294967296
                require mem[_172 + 128 len 4], 0 + 32 <= return_data.size
                require mem[_172 + mem[_172 + 128 len 4], 0 + 128] <= 4294967296 and mem[_172 + 128 len 4], 0 + (32 * mem[_172 + mem[_172 + 128 len 4], 0 + 128]) + 32 <= return_data.size
                mem[_172 + ceil32(return_data.size) + 128] = mem[_172 + mem[_172 + 128 len 4], 0 + 128]
                _3120 = mem[_172 + _2794 + 128]
                t = 0
                while t < 32 * _3120:
                    mem[t + _172 + ceil32(return_data.size) + 160] = mem[t + _172 + _2794 + 160]
                    t = t + 32
                    continue 
                mem[64] = (32 * _3120) + _172 + ceil32(return_data.size) + 160
                require mem[_172 + ceil32(return_data.size) + 128] - 1 < mem[_172 + ceil32(return_data.size) + 128]
                if mem[(32 * mem[_172 + ceil32(return_data.size) + 128] - 1) + _172 + ceil32(return_data.size) + 160] <= s:
                    idx = idx + 1
                    s = s
                    continue 
                idx = idx + 1
                s = mem[(32 * mem[_172 + ceil32(return_data.size) + 128] - 1) + _172 + ceil32(return_data.size) + 160]
                continue 
            if 3 == idx:
                if 2 == idx:
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
                    require ext_code.size(0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52)
                    staticcall 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args 0, 64, mem[_255 + 196 len (32 * mem[_255]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_255 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _255 + ceil32(return_data.size) + 128
                    require return_data.size >= 32
                    _2840 = mem[_255 + 128 len 4], 0
                    require mem[_255 + 128 len 4], 0 <= 4294967296
                    require mem[_255 + 128 len 4], 0 + 32 <= return_data.size
                    require mem[_255 + mem[_255 + 128 len 4], 0 + 128] <= 4294967296 and mem[_255 + 128 len 4], 0 + (32 * mem[_255 + mem[_255 + 128 len 4], 0 + 128]) + 32 <= return_data.size
                    mem[_255 + ceil32(return_data.size) + 128] = mem[_255 + mem[_255 + 128 len 4], 0 + 128]
                    _3143 = mem[_255 + _2840 + 128]
                    t = 0
                    while t < 32 * _3143:
                        mem[t + _255 + ceil32(return_data.size) + 160] = mem[t + _255 + _2840 + 160]
                        t = t + 32
                        continue 
                    mem[64] = (32 * _3143) + _255 + ceil32(return_data.size) + 160
                    require mem[_255 + ceil32(return_data.size) + 128] - 1 < mem[_255 + ceil32(return_data.size) + 128]
                    if mem[(32 * mem[_255 + ceil32(return_data.size) + 128] - 1) + _255 + ceil32(return_data.size) + 160] <= s:
                        idx = idx + 1
                        s = s
                        continue 
                    idx = idx + 1
                    s = mem[(32 * mem[_255 + ceil32(return_data.size) + 128] - 1) + _255 + ceil32(return_data.size) + 160]
                    continue 
                if idx != 3:
                    _251 = mem[64]
                    mem[mem[64]] = 3
                    mem[64] = mem[64] + 128
                    require 0 < mem[_251]
                    mem[_251 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    require 1 < mem[_251]
                    mem[_251 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c
                    require 2 < mem[_251]
                    mem[_251 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    mem[_251 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_251 + 132] = 0
                    mem[_251 + 164] = 64
                    mem[_251 + 196] = mem[_251]
                    t = 0
                    while t < 32 * mem[_251]:
                        mem[t + _251 + 228] = mem[t + _251 + 32]
                        t = t + 32
                        continue 
                    require ext_code.size(0)
                    staticcall 0x0.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args 0, 64, mem[_251 + 196 len (32 * mem[_251]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_251 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _251 + ceil32(return_data.size) + 128
                    require return_data.size >= 32
                    _2836 = mem[_251 + 128 len 4], 0
                    require mem[_251 + 128 len 4], 0 <= 4294967296
                    require mem[_251 + 128 len 4], 0 + 32 <= return_data.size
                    require mem[_251 + mem[_251 + 128 len 4], 0 + 128] <= 4294967296 and mem[_251 + 128 len 4], 0 + (32 * mem[_251 + mem[_251 + 128 len 4], 0 + 128]) + 32 <= return_data.size
                    mem[_251 + ceil32(return_data.size) + 128] = mem[_251 + mem[_251 + 128 len 4], 0 + 128]
                    _3141 = mem[_251 + _2836 + 128]
                    t = 0
                    while t < 32 * _3141:
                        mem[t + _251 + ceil32(return_data.size) + 160] = mem[t + _251 + _2836 + 160]
                        t = t + 32
                        continue 
                    mem[64] = (32 * _3141) + _251 + ceil32(return_data.size) + 160
                    require mem[_251 + ceil32(return_data.size) + 128] - 1 < mem[_251 + ceil32(return_data.size) + 128]
                    if mem[(32 * mem[_251 + ceil32(return_data.size) + 128] - 1) + _251 + ceil32(return_data.size) + 160] <= s:
                        idx = idx + 1
                        s = s
                        continue 
                    idx = idx + 1
                    s = mem[(32 * mem[_251 + ceil32(return_data.size) + 128] - 1) + _251 + ceil32(return_data.size) + 160]
                    continue 
                _337 = mem[64]
                mem[mem[64]] = 3
                mem[64] = mem[64] + 128
                require 0 < mem[_337]
                mem[_337 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                require 1 < mem[_337]
                mem[_337 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c
                require 2 < mem[_337]
                mem[_337 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                mem[_337 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_337 + 132] = 0
                mem[_337 + 164] = 64
                mem[_337 + 196] = mem[_337]
                t = 0
                while t < 32 * mem[_337]:
                    mem[t + _337 + 228] = mem[t + _337 + 32]
                    t = t + 32
                    continue 
                require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c)
                staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args 0, 64, mem[_337 + 196 len (32 * mem[_337]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_337 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _337 + ceil32(return_data.size) + 128
                require return_data.size >= 32
                _2838 = mem[_337 + 128 len 4], 0
                require mem[_337 + 128 len 4], 0 <= 4294967296
                require mem[_337 + 128 len 4], 0 + 32 <= return_data.size
                require mem[_337 + mem[_337 + 128 len 4], 0 + 128] <= 4294967296 and mem[_337 + 128 len 4], 0 + (32 * mem[_337 + mem[_337 + 128 len 4], 0 + 128]) + 32 <= return_data.size
                mem[_337 + ceil32(return_data.size) + 128] = mem[_337 + mem[_337 + 128 len 4], 0 + 128]
                _3142 = mem[_337 + _2838 + 128]
                t = 0
                while t < 32 * _3142:
                    mem[t + _337 + ceil32(return_data.size) + 160] = mem[t + _337 + _2838 + 160]
                    t = t + 32
                    continue 
                mem[64] = (32 * _3142) + _337 + ceil32(return_data.size) + 160
                require mem[_337 + ceil32(return_data.size) + 128] - 1 < mem[_337 + ceil32(return_data.size) + 128]
                if mem[(32 * mem[_337 + ceil32(return_data.size) + 128] - 1) + _337 + ceil32(return_data.size) + 160] <= s:
                    idx = idx + 1
                    s = s
                    continue 
                idx = idx + 1
                s = mem[(32 * mem[_337 + ceil32(return_data.size) + 128] - 1) + _337 + ceil32(return_data.size) + 160]
                continue 
            if 4 == idx:
                mem[mem[64] + 4] = 0
                mem[mem[64] + 36] = 2
                mem[mem[64] + 68] = 0
                require ext_code.size(0x3a1659ddcf2339be3aea159ca010979fb49155ff)
                staticcall 0x3a1659ddcf2339be3aea159ca010979fb49155ff.get_dy(uint256 arg1, uint256 arg2, uint256 arg3) with:
                        gas gas_remaining wei
                       args 0, 2, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                _493 = mem[64]
                mem[mem[64]] = 3
                mem[64] = mem[64] + 128
                require 0 < mem[_493]
                mem[_493 + 32] = 0x74b23882a30290451a17c44f4f05243b6b58c76d
                require 1 < mem[_493]
                mem[_493 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c
                require 2 < mem[_493]
                mem[_493 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                mem[_493 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_493 + 132] = ext_call.return_data[0]
                mem[_493 + 164] = 64
                mem[_493 + 196] = mem[_493]
                t = 0
                while t < 32 * mem[_493]:
                    mem[t + _493 + 228] = mem[t + _493 + 32]
                    t = t + 32
                    continue 
                require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c)
                staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args ext_call.return_data[0], 64, mem[_493 + 196 len (32 * mem[_493]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_493 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _493 + ceil32(return_data.size) + 128
                require return_data.size >= 32
                _2832 = mem[_493 + 128 len 4], ext_call.return_data[0 len 28]
                require mem[_493 + 128 len 4], ext_call.return_data[0 len 28] <= 4294967296
                require mem[_493 + 128 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                require mem[_493 + mem[_493 + 128 len 4], ext_call.return_data[0 len 28] + 128] <= 4294967296 and mem[_493 + 128 len 4], ext_call.return_data[0 len 28] + (32 * mem[_493 + mem[_493 + 128 len 4], ext_call.return_data[0 len 28] + 128]) + 32 <= return_data.size
                mem[_493 + ceil32(return_data.size) + 128] = mem[_493 + mem[_493 + 128 len 4], ext_call.return_data[0 len 28] + 128]
                _3139 = mem[_493 + _2832 + 128]
                t = 0
                while t < 32 * _3139:
                    mem[t + _493 + ceil32(return_data.size) + 160] = mem[t + _493 + _2832 + 160]
                    t = t + 32
                    continue 
                mem[64] = (32 * _3139) + _493 + ceil32(return_data.size) + 160
                require mem[_493 + ceil32(return_data.size) + 128] - 1 < mem[_493 + ceil32(return_data.size) + 128]
                if mem[(32 * mem[_493 + ceil32(return_data.size) + 128] - 1) + _493 + ceil32(return_data.size) + 160] <= s:
                    idx = idx + 1
                    s = s
                    continue 
                idx = idx + 1
                s = mem[(32 * mem[_493 + ceil32(return_data.size) + 128] - 1) + _493 + ceil32(return_data.size) + 160]
                continue 
            if idx != 5:
                if 6 == idx:
                    _655 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    require 0 < mem[_655]
                    mem[_655 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    require 1 < mem[_655]
                    mem[_655 + 64] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    mem[_655 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_655 + 100] = 0
                    mem[_655 + 132] = 64
                    mem[_655 + 164] = mem[_655]
                    t = 0
                    while t < 32 * mem[_655]:
                        mem[t + _655 + 196] = mem[t + _655 + 32]
                        t = t + 32
                        continue 
                    require ext_code.size(0x845e76a8691423fbc4ecb8dd77556cb61c09ee25)
                    staticcall 0x845e76a8691423fbc4ecb8dd77556cb61c09ee25.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args 0, 64, mem[_655 + 164 len (32 * mem[_655]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_655 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _655 + ceil32(return_data.size) + 96
                    require return_data.size >= 32
                    _2796 = mem[_655 + 96 len 4], 0
                    require mem[_655 + 96 len 4], 0 <= 4294967296
                    require mem[_655 + 96 len 4], 0 + 32 <= return_data.size
                    require mem[_655 + mem[_655 + 96 len 4], 0 + 96] <= 4294967296 and mem[_655 + 96 len 4], 0 + (32 * mem[_655 + mem[_655 + 96 len 4], 0 + 96]) + 32 <= return_data.size
                    mem[_655 + ceil32(return_data.size) + 96] = mem[_655 + mem[_655 + 96 len 4], 0 + 96]
                    _3121 = mem[_655 + _2796 + 96]
                    t = 0
                    while t < 32 * _3121:
                        mem[t + _655 + ceil32(return_data.size) + 128] = mem[t + _655 + _2796 + 128]
                        t = t + 32
                        continue 
                    mem[64] = (32 * _3121) + _655 + ceil32(return_data.size) + 128
                    require mem[_655 + ceil32(return_data.size) + 96] - 1 < mem[_655 + ceil32(return_data.size) + 96]
                    if mem[(32 * mem[_655 + ceil32(return_data.size) + 96] - 1) + _655 + ceil32(return_data.size) + 128] <= s:
                        idx = idx + 1
                        s = s
                        continue 
                    idx = idx + 1
                    s = mem[(32 * mem[_655 + ceil32(return_data.size) + 96] - 1) + _655 + ceil32(return_data.size) + 128]
                    continue 
                if 7 == idx:
                    if 6 == idx:
                        _701 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        require 0 < mem[_701]
                        mem[_701 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                        require 1 < mem[_701]
                        mem[_701 + 64] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                        mem[_701 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[_701 + 100] = 0
                        mem[_701 + 132] = 64
                        mem[_701 + 164] = mem[_701]
                        t = 0
                        while t < 32 * mem[_701]:
                            mem[t + _701 + 196] = mem[t + _701 + 32]
                            t = t + 32
                            continue 
                        require ext_code.size(0x845e76a8691423fbc4ecb8dd77556cb61c09ee25)
                        staticcall 0x845e76a8691423fbc4ecb8dd77556cb61c09ee25.getAmountsOut(uint256 arg1, address[] arg2) with:
                                gas gas_remaining wei
                               args 0, 64, mem[_701 + 164 len (32 * mem[_701]) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_701 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = _701 + ceil32(return_data.size) + 96
                        require return_data.size >= 32
                        _2806 = mem[_701 + 96 len 4], 0
                        require mem[_701 + 96 len 4], 0 <= 4294967296
                        require mem[_701 + 96 len 4], 0 + 32 <= return_data.size
                        require mem[_701 + mem[_701 + 96 len 4], 0 + 96] <= 4294967296 and mem[_701 + 96 len 4], 0 + (32 * mem[_701 + mem[_701 + 96 len 4], 0 + 96]) + 32 <= return_data.size
                        mem[_701 + ceil32(return_data.size) + 96] = mem[_701 + mem[_701 + 96 len 4], 0 + 96]
                        _3126 = mem[_701 + _2806 + 96]
                        t = 0
                        while t < 32 * _3126:
                            mem[t + _701 + ceil32(return_data.size) + 128] = mem[t + _701 + _2806 + 128]
                            t = t + 32
                            continue 
                        mem[64] = (32 * _3126) + _701 + ceil32(return_data.size) + 128
                        require mem[_701 + ceil32(return_data.size) + 96] - 1 < mem[_701 + ceil32(return_data.size) + 96]
                        if mem[(32 * mem[_701 + ceil32(return_data.size) + 96] - 1) + _701 + ceil32(return_data.size) + 128] <= s:
                            idx = idx + 1
                            s = s
                            continue 
                        idx = idx + 1
                        s = mem[(32 * mem[_701 + ceil32(return_data.size) + 96] - 1) + _701 + ceil32(return_data.size) + 128]
                        continue 
                    if 7 == idx:
                        _769 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        require 0 < mem[_769]
                        mem[_769 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                        require 1 < mem[_769]
                        mem[_769 + 64] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                        mem[_769 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[_769 + 100] = 0
                        mem[_769 + 132] = 64
                        mem[_769 + 164] = mem[_769]
                        t = 0
                        while t < 32 * mem[_769]:
                            mem[t + _769 + 196] = mem[t + _769 + 32]
                            t = t + 32
                            continue 
                        require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c)
                        staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c.getAmountsOut(uint256 arg1, address[] arg2) with:
                                gas gas_remaining wei
                               args 0, 64, mem[_769 + 164 len (32 * mem[_769]) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_769 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = _769 + ceil32(return_data.size) + 96
                        require return_data.size >= 32
                        _2804 = mem[_769 + 96 len 4], 0
                        require mem[_769 + 96 len 4], 0 <= 4294967296
                        require mem[_769 + 96 len 4], 0 + 32 <= return_data.size
                        require mem[_769 + mem[_769 + 96 len 4], 0 + 96] <= 4294967296 and mem[_769 + 96 len 4], 0 + (32 * mem[_769 + mem[_769 + 96 len 4], 0 + 96]) + 32 <= return_data.size
                        mem[_769 + ceil32(return_data.size) + 96] = mem[_769 + mem[_769 + 96 len 4], 0 + 96]
                        _3125 = mem[_769 + _2804 + 96]
                        t = 0
                        while t < 32 * _3125:
                            mem[t + _769 + ceil32(return_data.size) + 128] = mem[t + _769 + _2804 + 128]
                            t = t + 32
                            continue 
                        mem[64] = (32 * _3125) + _769 + ceil32(return_data.size) + 128
                        require mem[_769 + ceil32(return_data.size) + 96] - 1 < mem[_769 + ceil32(return_data.size) + 96]
                        if mem[(32 * mem[_769 + ceil32(return_data.size) + 96] - 1) + _769 + ceil32(return_data.size) + 128] <= s:
                            idx = idx + 1
                            s = s
                            continue 
                        idx = idx + 1
                        s = mem[(32 * mem[_769 + ceil32(return_data.size) + 96] - 1) + _769 + ceil32(return_data.size) + 128]
                        continue 
                    if 8 == idx:
                        _865 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        require 0 < mem[_865]
                        mem[_865 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                        require 1 < mem[_865]
                        mem[_865 + 64] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                        mem[_865 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[_865 + 100] = 0
                        mem[_865 + 132] = 64
                        mem[_865 + 164] = mem[_865]
                        t = 0
                        while t < 32 * mem[_865]:
                            mem[t + _865 + 196] = mem[t + _865 + 32]
                            t = t + 32
                            continue 
                        require ext_code.size(0x6b3d631b87fe27af29efec61d2ab8ce4d621ccbf)
                        staticcall 0x6b3d631b87fe27af29efec61d2ab8ce4d621ccbf.getAmountsOut(uint256 arg1, address[] arg2) with:
                                gas gas_remaining wei
                               args 0, 64, mem[_865 + 164 len (32 * mem[_865]) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_865 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = _865 + ceil32(return_data.size) + 96
                        require return_data.size >= 32
                        _2802 = mem[_865 + 96 len 4], 0
                        require mem[_865 + 96 len 4], 0 <= 4294967296
                        require mem[_865 + 96 len 4], 0 + 32 <= return_data.size
                        require mem[_865 + mem[_865 + 96 len 4], 0 + 96] <= 4294967296 and mem[_865 + 96 len 4], 0 + (32 * mem[_865 + mem[_865 + 96 len 4], 0 + 96]) + 32 <= return_data.size
                        mem[_865 + ceil32(return_data.size) + 96] = mem[_865 + mem[_865 + 96 len 4], 0 + 96]
                        _3124 = mem[_865 + _2802 + 96]
                        t = 0
                        while t < 32 * _3124:
                            mem[t + _865 + ceil32(return_data.size) + 128] = mem[t + _865 + _2802 + 128]
                            t = t + 32
                            continue 
                        mem[64] = (32 * _3124) + _865 + ceil32(return_data.size) + 128
                        require mem[_865 + ceil32(return_data.size) + 96] - 1 < mem[_865 + ceil32(return_data.size) + 96]
                        if mem[(32 * mem[_865 + ceil32(return_data.size) + 96] - 1) + _865 + ceil32(return_data.size) + 128] <= s:
                            idx = idx + 1
                            s = s
                            continue 
                        idx = idx + 1
                        s = mem[(32 * mem[_865 + ceil32(return_data.size) + 96] - 1) + _865 + ceil32(return_data.size) + 128]
                        continue 
                    if idx != 9:
                        _863 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        require 0 < mem[_863]
                        mem[_863 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                        require 1 < mem[_863]
                        mem[_863 + 64] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                        mem[_863 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[_863 + 100] = 0
                        mem[_863 + 132] = 64
                        mem[_863 + 164] = mem[_863]
                        t = 0
                        while t < 32 * mem[_863]:
                            mem[t + _863 + 196] = mem[t + _863 + 32]
                            t = t + 32
                            continue 
                        require ext_code.size(0)
                        staticcall 0x0.getAmountsOut(uint256 arg1, address[] arg2) with:
                                gas gas_remaining wei
                               args 0, 64, mem[_863 + 164 len (32 * mem[_863]) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_863 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = _863 + ceil32(return_data.size) + 96
                        require return_data.size >= 32
                        _2798 = mem[_863 + 96 len 4], 0
                        require mem[_863 + 96 len 4], 0 <= 4294967296
                        require mem[_863 + 96 len 4], 0 + 32 <= return_data.size
                        require mem[_863 + mem[_863 + 96 len 4], 0 + 96] <= 4294967296 and mem[_863 + 96 len 4], 0 + (32 * mem[_863 + mem[_863 + 96 len 4], 0 + 96]) + 32 <= return_data.size
                        mem[_863 + ceil32(return_data.size) + 96] = mem[_863 + mem[_863 + 96 len 4], 0 + 96]
                        _3122 = mem[_863 + _2798 + 96]
                        t = 0
                        while t < 32 * _3122:
                            mem[t + _863 + ceil32(return_data.size) + 128] = mem[t + _863 + _2798 + 128]
                            t = t + 32
                            continue 
                        mem[64] = (32 * _3122) + _863 + ceil32(return_data.size) + 128
                        require mem[_863 + ceil32(return_data.size) + 96] - 1 < mem[_863 + ceil32(return_data.size) + 96]
                        if mem[(32 * mem[_863 + ceil32(return_data.size) + 96] - 1) + _863 + ceil32(return_data.size) + 128] <= s:
                            idx = idx + 1
                            s = s
                            continue 
                        idx = idx + 1
                        s = mem[(32 * mem[_863 + ceil32(return_data.size) + 96] - 1) + _863 + ceil32(return_data.size) + 128]
                        continue 
                    _982 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    require 0 < mem[_982]
                    mem[_982 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    require 1 < mem[_982]
                    mem[_982 + 64] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    mem[_982 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_982 + 100] = 0
                    mem[_982 + 132] = 64
                    mem[_982 + 164] = mem[_982]
                    t = 0
                    while t < 32 * mem[_982]:
                        mem[t + _982 + 196] = mem[t + _982 + 32]
                        t = t + 32
                        continue 
                    require ext_code.size(0x2724b9497b2cf3325c6be3ea430b3cec34b5ef2d)
                    staticcall 0x2724b9497b2cf3325c6be3ea430b3cec34b5ef2d.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args 0, 64, mem[_982 + 164 len (32 * mem[_982]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_982 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _982 + ceil32(return_data.size) + 96
                    require return_data.size >= 32
                    _2800 = mem[_982 + 96 len 4], 0
                    require mem[_982 + 96 len 4], 0 <= 4294967296
                    require mem[_982 + 96 len 4], 0 + 32 <= return_data.size
                    require mem[_982 + mem[_982 + 96 len 4], 0 + 96] <= 4294967296 and mem[_982 + 96 len 4], 0 + (32 * mem[_982 + mem[_982 + 96 len 4], 0 + 96]) + 32 <= return_data.size
                    mem[_982 + ceil32(return_data.size) + 96] = mem[_982 + mem[_982 + 96 len 4], 0 + 96]
                    _3123 = mem[_982 + _2800 + 96]
                    t = 0
                    while t < 32 * _3123:
                        mem[t + _982 + ceil32(return_data.size) + 128] = mem[t + _982 + _2800 + 128]
                        t = t + 32
                        continue 
                    mem[64] = (32 * _3123) + _982 + ceil32(return_data.size) + 128
                    require mem[_982 + ceil32(return_data.size) + 96] - 1 < mem[_982 + ceil32(return_data.size) + 96]
                    if mem[(32 * mem[_982 + ceil32(return_data.size) + 96] - 1) + _982 + ceil32(return_data.size) + 128] <= s:
                        idx = idx + 1
                        s = s
                        continue 
                    idx = idx + 1
                    s = mem[(32 * mem[_982 + ceil32(return_data.size) + 96] - 1) + _982 + ceil32(return_data.size) + 128]
                    continue 
                if 8 == idx:
                    if 6 == idx:
                        _774 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        require 0 < mem[_774]
                        mem[_774 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                        require 1 < mem[_774]
                        mem[_774 + 64] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                        mem[_774 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[_774 + 100] = 0
                        mem[_774 + 132] = 64
                        mem[_774 + 164] = mem[_774]
                        t = 0
                        while t < 32 * mem[_774]:
                            mem[t + _774 + 196] = mem[t + _774 + 32]
                            t = t + 32
                            continue 
                        require ext_code.size(0x845e76a8691423fbc4ecb8dd77556cb61c09ee25)
                        staticcall 0x845e76a8691423fbc4ecb8dd77556cb61c09ee25.getAmountsOut(uint256 arg1, address[] arg2) with:
                                gas gas_remaining wei
                               args 0, 64, mem[_774 + 164 len (32 * mem[_774]) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_774 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = _774 + ceil32(return_data.size) + 96
                        require return_data.size >= 32
                        _2816 = mem[_774 + 96 len 4], 0
                        require mem[_774 + 96 len 4], 0 <= 4294967296
                        require mem[_774 + 96 len 4], 0 + 32 <= return_data.size
                        require mem[_774 + mem[_774 + 96 len 4], 0 + 96] <= 4294967296 and mem[_774 + 96 len 4], 0 + (32 * mem[_774 + mem[_774 + 96 len 4], 0 + 96]) + 32 <= return_data.size
                        mem[_774 + ceil32(return_data.size) + 96] = mem[_774 + mem[_774 + 96 len 4], 0 + 96]
                        _3131 = mem[_774 + _2816 + 96]
                        t = 0
                        while t < 32 * _3131:
                            mem[t + _774 + ceil32(return_data.size) + 128] = mem[t + _774 + _2816 + 128]
                            t = t + 32
                            continue 
                        mem[64] = (32 * _3131) + _774 + ceil32(return_data.size) + 128
                        require mem[_774 + ceil32(return_data.size) + 96] - 1 < mem[_774 + ceil32(return_data.size) + 96]
                        if mem[(32 * mem[_774 + ceil32(return_data.size) + 96] - 1) + _774 + ceil32(return_data.size) + 128] <= s:
                            idx = idx + 1
                            s = s
                            continue 
                        idx = idx + 1
                        s = mem[(32 * mem[_774 + ceil32(return_data.size) + 96] - 1) + _774 + ceil32(return_data.size) + 128]
                        continue 
                    if 7 == idx:
                        _871 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        require 0 < mem[_871]
                        mem[_871 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                        require 1 < mem[_871]
                        mem[_871 + 64] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                        mem[_871 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[_871 + 100] = 0
                        mem[_871 + 132] = 64
                        mem[_871 + 164] = mem[_871]
                        t = 0
                        while t < 32 * mem[_871]:
                            mem[t + _871 + 196] = mem[t + _871 + 32]
                            t = t + 32
                            continue 
                        require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c)
                        staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c.getAmountsOut(uint256 arg1, address[] arg2) with:
                                gas gas_remaining wei
                               args 0, 64, mem[_871 + 164 len (32 * mem[_871]) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_871 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = _871 + ceil32(return_data.size) + 96
                        require return_data.size >= 32
                        _2814 = mem[_871 + 96 len 4], 0
                        require mem[_871 + 96 len 4], 0 <= 4294967296
                        require mem[_871 + 96 len 4], 0 + 32 <= return_data.size
                        require mem[_871 + mem[_871 + 96 len 4], 0 + 96] <= 4294967296 and mem[_871 + 96 len 4], 0 + (32 * mem[_871 + mem[_871 + 96 len 4], 0 + 96]) + 32 <= return_data.size
                        mem[_871 + ceil32(return_data.size) + 96] = mem[_871 + mem[_871 + 96 len 4], 0 + 96]
                        _3130 = mem[_871 + _2814 + 96]
                        t = 0
                        while t < 32 * _3130:
                            mem[t + _871 + ceil32(return_data.size) + 128] = mem[t + _871 + _2814 + 128]
                            t = t + 32
                            continue 
                        mem[64] = (32 * _3130) + _871 + ceil32(return_data.size) + 128
                        require mem[_871 + ceil32(return_data.size) + 96] - 1 < mem[_871 + ceil32(return_data.size) + 96]
                        if mem[(32 * mem[_871 + ceil32(return_data.size) + 96] - 1) + _871 + ceil32(return_data.size) + 128] <= s:
                            idx = idx + 1
                            s = s
                            continue 
                        idx = idx + 1
                        s = mem[(32 * mem[_871 + ceil32(return_data.size) + 96] - 1) + _871 + ceil32(return_data.size) + 128]
                        continue 
                    if 8 == idx:
                        _990 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        require 0 < mem[_990]
                        mem[_990 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                        require 1 < mem[_990]
                        mem[_990 + 64] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                        mem[_990 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[_990 + 100] = 0
                        mem[_990 + 132] = 64
                        mem[_990 + 164] = mem[_990]
                        t = 0
                        while t < 32 * mem[_990]:
                            mem[t + _990 + 196] = mem[t + _990 + 32]
                            t = t + 32
                            continue 
                        require ext_code.size(0x6b3d631b87fe27af29efec61d2ab8ce4d621ccbf)
                        staticcall 0x6b3d631b87fe27af29efec61d2ab8ce4d621ccbf.getAmountsOut(uint256 arg1, address[] arg2) with:
                                gas gas_remaining wei
                               args 0, 64, mem[_990 + 164 len (32 * mem[_990]) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_990 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = _990 + ceil32(return_data.size) + 96
                        require return_data.size >= 32
                        _2812 = mem[_990 + 96 len 4], 0
                        require mem[_990 + 96 len 4], 0 <= 4294967296
                        require mem[_990 + 96 len 4], 0 + 32 <= return_data.size
                        require mem[_990 + mem[_990 + 96 len 4], 0 + 96] <= 4294967296 and mem[_990 + 96 len 4], 0 + (32 * mem[_990 + mem[_990 + 96 len 4], 0 + 96]) + 32 <= return_data.size
                        mem[_990 + ceil32(return_data.size) + 96] = mem[_990 + mem[_990 + 96 len 4], 0 + 96]
                        _3129 = mem[_990 + _2812 + 96]
                        t = 0
                        while t < 32 * _3129:
                            mem[t + _990 + ceil32(return_data.size) + 128] = mem[t + _990 + _2812 + 128]
                            t = t + 32
                            continue 
                        mem[64] = (32 * _3129) + _990 + ceil32(return_data.size) + 128
                        require mem[_990 + ceil32(return_data.size) + 96] - 1 < mem[_990 + ceil32(return_data.size) + 96]
                        if mem[(32 * mem[_990 + ceil32(return_data.size) + 96] - 1) + _990 + ceil32(return_data.size) + 128] <= s:
                            idx = idx + 1
                            s = s
                            continue 
                        idx = idx + 1
                        s = mem[(32 * mem[_990 + ceil32(return_data.size) + 96] - 1) + _990 + ceil32(return_data.size) + 128]
                        continue 
                    if idx != 9:
                        _988 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        require 0 < mem[_988]
                        mem[_988 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                        require 1 < mem[_988]
                        mem[_988 + 64] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                        mem[_988 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[_988 + 100] = 0
                        mem[_988 + 132] = 64
                        mem[_988 + 164] = mem[_988]
                        t = 0
                        while t < 32 * mem[_988]:
                            mem[t + _988 + 196] = mem[t + _988 + 32]
                            t = t + 32
                            continue 
                        require ext_code.size(0)
                        staticcall 0x0.getAmountsOut(uint256 arg1, address[] arg2) with:
                                gas gas_remaining wei
                               args 0, 64, mem[_988 + 164 len (32 * mem[_988]) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_988 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = _988 + ceil32(return_data.size) + 96
                        require return_data.size >= 32
                        _2808 = mem[_988 + 96 len 4], 0
                        require mem[_988 + 96 len 4], 0 <= 4294967296
                        require mem[_988 + 96 len 4], 0 + 32 <= return_data.size
                        require mem[_988 + mem[_988 + 96 len 4], 0 + 96] <= 4294967296 and mem[_988 + 96 len 4], 0 + (32 * mem[_988 + mem[_988 + 96 len 4], 0 + 96]) + 32 <= return_data.size
                        mem[_988 + ceil32(return_data.size) + 96] = mem[_988 + mem[_988 + 96 len 4], 0 + 96]
                        _3127 = mem[_988 + _2808 + 96]
                        t = 0
                        while t < 32 * _3127:
                            mem[t + _988 + ceil32(return_data.size) + 128] = mem[t + _988 + _2808 + 128]
                            t = t + 32
                            continue 
                        mem[64] = (32 * _3127) + _988 + ceil32(return_data.size) + 128
                        require mem[_988 + ceil32(return_data.size) + 96] - 1 < mem[_988 + ceil32(return_data.size) + 96]
                        if mem[(32 * mem[_988 + ceil32(return_data.size) + 96] - 1) + _988 + ceil32(return_data.size) + 128] <= s:
                            idx = idx + 1
                            s = s
                            continue 
                        idx = idx + 1
                        s = mem[(32 * mem[_988 + ceil32(return_data.size) + 96] - 1) + _988 + ceil32(return_data.size) + 128]
                        continue 
                    _1126 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    require 0 < mem[_1126]
                    mem[_1126 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    require 1 < mem[_1126]
                    mem[_1126 + 64] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    mem[_1126 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_1126 + 100] = 0
                    mem[_1126 + 132] = 64
                    mem[_1126 + 164] = mem[_1126]
                    t = 0
                    while t < 32 * mem[_1126]:
                        mem[t + _1126 + 196] = mem[t + _1126 + 32]
                        t = t + 32
                        continue 
                    require ext_code.size(0x2724b9497b2cf3325c6be3ea430b3cec34b5ef2d)
                    staticcall 0x2724b9497b2cf3325c6be3ea430b3cec34b5ef2d.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args 0, 64, mem[_1126 + 164 len (32 * mem[_1126]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_1126 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _1126 + ceil32(return_data.size) + 96
                    require return_data.size >= 32
                    _2810 = mem[_1126 + 96 len 4], 0
                    require mem[_1126 + 96 len 4], 0 <= 4294967296
                    require mem[_1126 + 96 len 4], 0 + 32 <= return_data.size
                    require mem[_1126 + mem[_1126 + 96 len 4], 0 + 96] <= 4294967296 and mem[_1126 + 96 len 4], 0 + (32 * mem[_1126 + mem[_1126 + 96 len 4], 0 + 96]) + 32 <= return_data.size
                    mem[_1126 + ceil32(return_data.size) + 96] = mem[_1126 + mem[_1126 + 96 len 4], 0 + 96]
                    _3128 = mem[_1126 + _2810 + 96]
                    t = 0
                    while t < 32 * _3128:
                        mem[t + _1126 + ceil32(return_data.size) + 128] = mem[t + _1126 + _2810 + 128]
                        t = t + 32
                        continue 
                    mem[64] = (32 * _3128) + _1126 + ceil32(return_data.size) + 128
                    require mem[_1126 + ceil32(return_data.size) + 96] - 1 < mem[_1126 + ceil32(return_data.size) + 96]
                    if mem[(32 * mem[_1126 + ceil32(return_data.size) + 96] - 1) + _1126 + ceil32(return_data.size) + 128] <= s:
                        idx = idx + 1
                        s = s
                        continue 
                    idx = idx + 1
                    s = mem[(32 * mem[_1126 + ceil32(return_data.size) + 96] - 1) + _1126 + ceil32(return_data.size) + 128]
                    continue 
                if idx != 9:
                    if 10 == idx:
                        mem[mem[64] + 4] = 0
                        mem[mem[64] + 36] = 1
                        mem[mem[64] + 68] = 0
                        require ext_code.size(0x952bda8a83c3d5f398a686bb4e8c6dd90072d523)
                        staticcall 0x952bda8a83c3d5f398a686bb4e8c6dd90072d523.calculateSwap(uint8 arg1, uint8 arg2, uint256 arg3) with:
                                gas gas_remaining wei
                               args 0, 1, 0
                    else:
                        if 11 == idx:
                            mem[mem[64] + 4] = 1
                            mem[mem[64] + 36] = 2
                            mem[mem[64] + 68] = 0
                            require ext_code.size(0x80f6aed32fc474dd5717105dba5ea57268f46eb)
                            staticcall 0x80f6aed32fc474dd5717105dba5ea57268f46eb.calculateSwap(uint8 arg1, uint8 arg2, uint256 arg3) with:
                                    gas gas_remaining wei
                                   args 1, 2, 0
                        else:
                            if idx != 12:
                                if 0 <= s:
                                    idx = idx + 1
                                    s = s
                                    continue 
                                idx = idx + 1
                                s = 0
                                continue 
                            mem[mem[64] + 4] = 2
                            mem[mem[64] + 36] = 1
                            mem[mem[64] + 68] = 0
                            require ext_code.size(0x2dd7c9371965472e5a5fd28fbe165007c61439e1)
                            staticcall 0x2dd7c9371965472e5a5fd28fbe165007c61439e1.get_dy(int128 arg1, int128 arg2, uint256 arg3) with:
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
                if 6 == idx:
                    _880 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    require 0 < mem[_880]
                    mem[_880 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    require 1 < mem[_880]
                    mem[_880 + 64] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    mem[_880 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_880 + 100] = 0
                    mem[_880 + 132] = 64
                    mem[_880 + 164] = mem[_880]
                    t = 0
                    while t < 32 * mem[_880]:
                        mem[t + _880 + 196] = mem[t + _880 + 32]
                        t = t + 32
                        continue 
                    require ext_code.size(0x845e76a8691423fbc4ecb8dd77556cb61c09ee25)
                    staticcall 0x845e76a8691423fbc4ecb8dd77556cb61c09ee25.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args 0, 64, mem[_880 + 164 len (32 * mem[_880]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_880 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _880 + ceil32(return_data.size) + 96
                    require return_data.size >= 32
                    _2826 = mem[_880 + 96 len 4], 0
                    require mem[_880 + 96 len 4], 0 <= 4294967296
                    require mem[_880 + 96 len 4], 0 + 32 <= return_data.size
                    require mem[_880 + mem[_880 + 96 len 4], 0 + 96] <= 4294967296 and mem[_880 + 96 len 4], 0 + (32 * mem[_880 + mem[_880 + 96 len 4], 0 + 96]) + 32 <= return_data.size
                    mem[_880 + ceil32(return_data.size) + 96] = mem[_880 + mem[_880 + 96 len 4], 0 + 96]
                    _3136 = mem[_880 + _2826 + 96]
                    t = 0
                    while t < 32 * _3136:
                        mem[t + _880 + ceil32(return_data.size) + 128] = mem[t + _880 + _2826 + 128]
                        t = t + 32
                        continue 
                    mem[64] = (32 * _3136) + _880 + ceil32(return_data.size) + 128
                    require mem[_880 + ceil32(return_data.size) + 96] - 1 < mem[_880 + ceil32(return_data.size) + 96]
                    if mem[(32 * mem[_880 + ceil32(return_data.size) + 96] - 1) + _880 + ceil32(return_data.size) + 128] <= s:
                        idx = idx + 1
                        s = s
                        continue 
                    idx = idx + 1
                    s = mem[(32 * mem[_880 + ceil32(return_data.size) + 96] - 1) + _880 + ceil32(return_data.size) + 128]
                    continue 
                if 7 == idx:
                    _1004 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    require 0 < mem[_1004]
                    mem[_1004 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    require 1 < mem[_1004]
                    mem[_1004 + 64] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    mem[_1004 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_1004 + 100] = 0
                    mem[_1004 + 132] = 64
                    mem[_1004 + 164] = mem[_1004]
                    t = 0
                    while t < 32 * mem[_1004]:
                        mem[t + _1004 + 196] = mem[t + _1004 + 32]
                        t = t + 32
                        continue 
                    require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c)
                    staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args 0, 64, mem[_1004 + 164 len (32 * mem[_1004]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_1004 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _1004 + ceil32(return_data.size) + 96
                    require return_data.size >= 32
                    _2824 = mem[_1004 + 96 len 4], 0
                    require mem[_1004 + 96 len 4], 0 <= 4294967296
                    require mem[_1004 + 96 len 4], 0 + 32 <= return_data.size
                    require mem[_1004 + mem[_1004 + 96 len 4], 0 + 96] <= 4294967296 and mem[_1004 + 96 len 4], 0 + (32 * mem[_1004 + mem[_1004 + 96 len 4], 0 + 96]) + 32 <= return_data.size
                    mem[_1004 + ceil32(return_data.size) + 96] = mem[_1004 + mem[_1004 + 96 len 4], 0 + 96]
                    _3135 = mem[_1004 + _2824 + 96]
                    t = 0
                    while t < 32 * _3135:
                        mem[t + _1004 + ceil32(return_data.size) + 128] = mem[t + _1004 + _2824 + 128]
                        t = t + 32
                        continue 
                    mem[64] = (32 * _3135) + _1004 + ceil32(return_data.size) + 128
                    require mem[_1004 + ceil32(return_data.size) + 96] - 1 < mem[_1004 + ceil32(return_data.size) + 96]
                    if mem[(32 * mem[_1004 + ceil32(return_data.size) + 96] - 1) + _1004 + ceil32(return_data.size) + 128] <= s:
                        idx = idx + 1
                        s = s
                        continue 
                    idx = idx + 1
                    s = mem[(32 * mem[_1004 + ceil32(return_data.size) + 96] - 1) + _1004 + ceil32(return_data.size) + 128]
                    continue 
                if 8 == idx:
                    _1137 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    require 0 < mem[_1137]
                    mem[_1137 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    require 1 < mem[_1137]
                    mem[_1137 + 64] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    mem[_1137 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_1137 + 100] = 0
                    mem[_1137 + 132] = 64
                    mem[_1137 + 164] = mem[_1137]
                    t = 0
                    while t < 32 * mem[_1137]:
                        mem[t + _1137 + 196] = mem[t + _1137 + 32]
                        t = t + 32
                        continue 
                    require ext_code.size(0x6b3d631b87fe27af29efec61d2ab8ce4d621ccbf)
                    staticcall 0x6b3d631b87fe27af29efec61d2ab8ce4d621ccbf.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args 0, 64, mem[_1137 + 164 len (32 * mem[_1137]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_1137 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _1137 + ceil32(return_data.size) + 96
                    require return_data.size >= 32
                    _2822 = mem[_1137 + 96 len 4], 0
                    require mem[_1137 + 96 len 4], 0 <= 4294967296
                    require mem[_1137 + 96 len 4], 0 + 32 <= return_data.size
                    require mem[_1137 + mem[_1137 + 96 len 4], 0 + 96] <= 4294967296 and mem[_1137 + 96 len 4], 0 + (32 * mem[_1137 + mem[_1137 + 96 len 4], 0 + 96]) + 32 <= return_data.size
                    mem[_1137 + ceil32(return_data.size) + 96] = mem[_1137 + mem[_1137 + 96 len 4], 0 + 96]
                    _3134 = mem[_1137 + _2822 + 96]
                    t = 0
                    while t < 32 * _3134:
                        mem[t + _1137 + ceil32(return_data.size) + 128] = mem[t + _1137 + _2822 + 128]
                        t = t + 32
                        continue 
                    mem[64] = (32 * _3134) + _1137 + ceil32(return_data.size) + 128
                    require mem[_1137 + ceil32(return_data.size) + 96] - 1 < mem[_1137 + ceil32(return_data.size) + 96]
                    if mem[(32 * mem[_1137 + ceil32(return_data.size) + 96] - 1) + _1137 + ceil32(return_data.size) + 128] <= s:
                        idx = idx + 1
                        s = s
                        continue 
                    idx = idx + 1
                    s = mem[(32 * mem[_1137 + ceil32(return_data.size) + 96] - 1) + _1137 + ceil32(return_data.size) + 128]
                    continue 
                if idx != 9:
                    _1135 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    require 0 < mem[_1135]
                    mem[_1135 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    require 1 < mem[_1135]
                    mem[_1135 + 64] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    mem[_1135 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_1135 + 100] = 0
                    mem[_1135 + 132] = 64
                    mem[_1135 + 164] = mem[_1135]
                    t = 0
                    while t < 32 * mem[_1135]:
                        mem[t + _1135 + 196] = mem[t + _1135 + 32]
                        t = t + 32
                        continue 
                    require ext_code.size(0)
                    staticcall 0x0.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args 0, 64, mem[_1135 + 164 len (32 * mem[_1135]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_1135 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _1135 + ceil32(return_data.size) + 96
                    require return_data.size >= 32
                    _2818 = mem[_1135 + 96 len 4], 0
                    require mem[_1135 + 96 len 4], 0 <= 4294967296
                    require mem[_1135 + 96 len 4], 0 + 32 <= return_data.size
                    require mem[_1135 + mem[_1135 + 96 len 4], 0 + 96] <= 4294967296 and mem[_1135 + 96 len 4], 0 + (32 * mem[_1135 + mem[_1135 + 96 len 4], 0 + 96]) + 32 <= return_data.size
                    mem[_1135 + ceil32(return_data.size) + 96] = mem[_1135 + mem[_1135 + 96 len 4], 0 + 96]
                    _3132 = mem[_1135 + _2818 + 96]
                    t = 0
                    while t < 32 * _3132:
                        mem[t + _1135 + ceil32(return_data.size) + 128] = mem[t + _1135 + _2818 + 128]
                        t = t + 32
                        continue 
                    mem[64] = (32 * _3132) + _1135 + ceil32(return_data.size) + 128
                    require mem[_1135 + ceil32(return_data.size) + 96] - 1 < mem[_1135 + ceil32(return_data.size) + 96]
                    if mem[(32 * mem[_1135 + ceil32(return_data.size) + 96] - 1) + _1135 + ceil32(return_data.size) + 128] <= s:
                        idx = idx + 1
                        s = s
                        continue 
                    idx = idx + 1
                    s = mem[(32 * mem[_1135 + ceil32(return_data.size) + 96] - 1) + _1135 + ceil32(return_data.size) + 128]
                    continue 
                _1277 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                require 0 < mem[_1277]
                mem[_1277 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                require 1 < mem[_1277]
                mem[_1277 + 64] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                mem[_1277 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_1277 + 100] = 0
                mem[_1277 + 132] = 64
                mem[_1277 + 164] = mem[_1277]
                t = 0
                while t < 32 * mem[_1277]:
                    mem[t + _1277 + 196] = mem[t + _1277 + 32]
                    t = t + 32
                    continue 
                require ext_code.size(0x2724b9497b2cf3325c6be3ea430b3cec34b5ef2d)
                staticcall 0x2724b9497b2cf3325c6be3ea430b3cec34b5ef2d.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args 0, 64, mem[_1277 + 164 len (32 * mem[_1277]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_1277 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _1277 + ceil32(return_data.size) + 96
                require return_data.size >= 32
                _2820 = mem[_1277 + 96 len 4], 0
                require mem[_1277 + 96 len 4], 0 <= 4294967296
                require mem[_1277 + 96 len 4], 0 + 32 <= return_data.size
                require mem[_1277 + mem[_1277 + 96 len 4], 0 + 96] <= 4294967296 and mem[_1277 + 96 len 4], 0 + (32 * mem[_1277 + mem[_1277 + 96 len 4], 0 + 96]) + 32 <= return_data.size
                mem[_1277 + ceil32(return_data.size) + 96] = mem[_1277 + mem[_1277 + 96 len 4], 0 + 96]
                _3133 = mem[_1277 + _2820 + 96]
                t = 0
                while t < 32 * _3133:
                    mem[t + _1277 + ceil32(return_data.size) + 128] = mem[t + _1277 + _2820 + 128]
                    t = t + 32
                    continue 
                mem[64] = (32 * _3133) + _1277 + ceil32(return_data.size) + 128
                require mem[_1277 + ceil32(return_data.size) + 96] - 1 < mem[_1277 + ceil32(return_data.size) + 96]
                if mem[(32 * mem[_1277 + ceil32(return_data.size) + 96] - 1) + _1277 + ceil32(return_data.size) + 128] <= s:
                    idx = idx + 1
                    s = s
                    continue 
                idx = idx + 1
                s = mem[(32 * mem[_1277 + ceil32(return_data.size) + 96] - 1) + _1277 + ceil32(return_data.size) + 128]
                continue 
            _327 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            require 0 < mem[_327]
            mem[_327 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
            require 1 < mem[_327]
            mem[_327 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c
            mem[_327 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[_327 + 100] = 0
            mem[_327 + 132] = 64
            mem[_327 + 164] = mem[_327]
            t = 0
            while t < 32 * mem[_327]:
                mem[t + _327 + 196] = mem[t + _327 + 32]
                t = t + 32
                continue 
            require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c)
            staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c.getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args 0, 64, mem[_327 + 164 len (32 * mem[_327]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[_327 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = _327 + ceil32(return_data.size) + 96
            require return_data.size >= 32
            _2828 = mem[_327 + 96 len 4], 0
            require mem[_327 + 96 len 4], 0 <= 4294967296
            require mem[_327 + 96 len 4], 0 + 32 <= return_data.size
            require mem[_327 + mem[_327 + 96 len 4], 0 + 96] <= 4294967296 and mem[_327 + 96 len 4], 0 + (32 * mem[_327 + mem[_327 + 96 len 4], 0 + 96]) + 32 <= return_data.size
            mem[_327 + ceil32(return_data.size) + 96] = mem[_327 + mem[_327 + 96 len 4], 0 + 96]
            _3137 = mem[_327 + _2828 + 96]
            t = 0
            while t < 32 * _3137:
                mem[t + _327 + ceil32(return_data.size) + 128] = mem[t + _327 + _2828 + 128]
                t = t + 32
                continue 
            mem[64] = (32 * _3137) + _327 + ceil32(return_data.size) + 128
            require mem[_327 + ceil32(return_data.size) + 96] - 1 < mem[_327 + ceil32(return_data.size) + 96]
            _8707 = mem[(32 * mem[_327 + ceil32(return_data.size) + 96] - 1) + _327 + ceil32(return_data.size) + 128]
            mem[(32 * _3137) + _327 + ceil32(return_data.size) + 128] = 2
            mem[(32 * _3137) + _327 + ceil32(return_data.size) + 160] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c
            mem[(32 * _3137) + _327 + ceil32(return_data.size) + 192] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
            mem[(32 * _3137) + _327 + ceil32(return_data.size) + 224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[(32 * _3137) + _327 + ceil32(return_data.size) + 228] = _8707
            mem[(32 * _3137) + _327 + ceil32(return_data.size) + 260] = 64
            mem[(32 * _3137) + _327 + ceil32(return_data.size) + 292] = 2
            t = 0
            while t < 64:
                mem[t + (32 * _3137) + _327 + ceil32(return_data.size) + 324] = mem[t + (32 * _3137) + _327 + ceil32(return_data.size) + 160]
                t = t + 32
                continue 
            require ext_code.size(0xe4a4642b19c4d0cba965673cd51422b1eda0a78d)
            staticcall 0xe4a4642b19c4d0cba965673cd51422b1eda0a78d.getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args _8707, Array(len=2, data=mem[(32 * _3137) + _327 + ceil32(return_data.size) + 324 len 64])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _3137) + _327 + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * _3137) + _327 + (2 * ceil32(return_data.size)) + 224
            require return_data.size >= 32
            _11804 = mem[(32 * _3137) + _327 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _8707) >> 32
            require mem[(32 * _3137) + _327 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _8707) >> 32 <= 4294967296
            require mem[(32 * _3137) + _327 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _8707) >> 32 + 32 <= return_data.size
            require mem[(32 * _3137) + _327 + ceil32(return_data.size) + mem[(32 * _3137) + _327 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _8707) >> 32 + 224] <= 4294967296 and mem[(32 * _3137) + _327 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _8707) >> 32 + (32 * mem[(32 * _3137) + _327 + ceil32(return_data.size) + mem[(32 * _3137) + _327 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _8707) >> 32 + 224]) + 32 <= return_data.size
            mem[(32 * _3137) + _327 + (2 * ceil32(return_data.size)) + 224] = mem[(32 * _3137) + _327 + ceil32(return_data.size) + mem[(32 * _3137) + _327 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _8707) >> 32 + 224]
            _11934 = mem[(32 * _3137) + _327 + ceil32(return_data.size) + _11804 + 224]
            t = 0
            while t < 32 * _11934:
                mem[t + (32 * _3137) + _327 + (2 * ceil32(return_data.size)) + 256] = mem[t + (32 * _3137) + _327 + ceil32(return_data.size) + _11804 + 256]
                t = t + 32
                continue 
            mem[64] = (32 * _11934) + (32 * _3137) + _327 + (2 * ceil32(return_data.size)) + 256
            require mem[(32 * _3137) + _327 + (2 * ceil32(return_data.size)) + 224] - 1 < mem[(32 * _3137) + _327 + (2 * ceil32(return_data.size)) + 224]
            if mem[(32 * mem[(32 * _3137) + _327 + (2 * ceil32(return_data.size)) + 224] - 1) + (32 * _3137) + _327 + (2 * ceil32(return_data.size)) + 256] <= s:
                idx = idx + 1
                s = s
                continue 
            idx = idx + 1
            s = mem[(32 * mem[(32 * _3137) + _327 + (2 * ceil32(return_data.size)) + 224] - 1) + (32 * _3137) + _327 + (2 * ceil32(return_data.size)) + 256]
            continue 
        idx = 0
        t = 0
        while idx < 13:
            if not idx:
                mem[mem[64] + 4] = 2
                mem[mem[64] + 36] = 0
                mem[mem[64] + 68] = s
                require ext_code.size(0x92d5ebf3593a92888c25c0abef126583d4b5312e)
                staticcall 0x92d5ebf3593a92888c25c0abef126583d4b5312e.get_dy_underlying(int128 arg1, int128 arg2, uint256 arg3) with:
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
                staticcall 0x83e5f18da720119ff363cf63417628eb0e9fd523.get_dy(int128 arg1, int128 arg2, uint256 arg3) with:
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
                _3202 = mem[64]
                mem[mem[64]] = 3
                mem[64] = mem[64] + 128
                require 0 < mem[_3202]
                mem[_3202 + 32] = 0x49d68029688eabf473097a2fc38ef61633a3c
                require 1 < mem[_3202]
                mem[_3202 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c
                require 2 < mem[_3202]
                mem[_3202 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                mem[_3202 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_3202 + 132] = s
                mem[_3202 + 164] = 64
                mem[_3202 + 196] = mem[_3202]
                u = 0
                while u < 32 * mem[_3202]:
                    mem[u + _3202 + 228] = mem[u + _3202 + 32]
                    u = u + 32
                    continue 
                require ext_code.size(0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52)
                staticcall 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args s, 64, mem[_3202 + 196 len (32 * mem[_3202]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_3202 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _3202 + ceil32(return_data.size) + 128
                require return_data.size >= 32
                _9136 = mem[_3202 + 128 len 4], Mask(224, 32, s) >> 32
                require mem[_3202 + 128 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                require mem[_3202 + 128 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                require mem[_3202 + mem[_3202 + 128 len 4], Mask(224, 32, s) >> 32 + 128] <= 4294967296 and mem[_3202 + 128 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_3202 + mem[_3202 + 128 len 4], Mask(224, 32, s) >> 32 + 128]) + 32 <= return_data.size
                mem[_3202 + ceil32(return_data.size) + 128] = mem[_3202 + mem[_3202 + 128 len 4], Mask(224, 32, s) >> 32 + 128]
                _9666 = mem[_3202 + _9136 + 128]
                s = 0
                while s < 32 * _9666:
                    mem[s + _3202 + ceil32(return_data.size) + 160] = mem[s + _3202 + _9136 + 160]
                    s = s + 32
                    continue 
                mem[64] = (32 * _9666) + _3202 + ceil32(return_data.size) + 160
                require mem[_3202 + ceil32(return_data.size) + 128] - 1 < mem[_3202 + ceil32(return_data.size) + 128]
                if mem[(32 * mem[_3202 + ceil32(return_data.size) + 128] - 1) + _3202 + ceil32(return_data.size) + 160] <= t:
                    idx = idx + 1
                    t = t
                    continue 
                idx = idx + 1
                t = mem[(32 * mem[_3202 + ceil32(return_data.size) + 128] - 1) + _3202 + ceil32(return_data.size) + 160]
                continue 
            if 3 == idx:
                if 2 == idx:
                    _3471 = mem[64]
                    mem[mem[64]] = 3
                    mem[64] = mem[64] + 128
                    require 0 < mem[_3471]
                    mem[_3471 + 32] = 0x49d68029688eabf473097a2fc38ef61633a3c
                    require 1 < mem[_3471]
                    mem[_3471 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c
                    require 2 < mem[_3471]
                    mem[_3471 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    mem[_3471 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_3471 + 132] = s
                    mem[_3471 + 164] = 64
                    mem[_3471 + 196] = mem[_3471]
                    u = 0
                    while u < 32 * mem[_3471]:
                        mem[u + _3471 + 228] = mem[u + _3471 + 32]
                        u = u + 32
                        continue 
                    require ext_code.size(0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52)
                    staticcall 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args s, 64, mem[_3471 + 196 len (32 * mem[_3471]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_3471 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _3471 + ceil32(return_data.size) + 128
                    require return_data.size >= 32
                    _9182 = mem[_3471 + 128 len 4], Mask(224, 32, s) >> 32
                    require mem[_3471 + 128 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                    require mem[_3471 + 128 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                    require mem[_3471 + mem[_3471 + 128 len 4], Mask(224, 32, s) >> 32 + 128] <= 4294967296 and mem[_3471 + 128 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_3471 + mem[_3471 + 128 len 4], Mask(224, 32, s) >> 32 + 128]) + 32 <= return_data.size
                    mem[_3471 + ceil32(return_data.size) + 128] = mem[_3471 + mem[_3471 + 128 len 4], Mask(224, 32, s) >> 32 + 128]
                    _9689 = mem[_3471 + _9182 + 128]
                    s = 0
                    while s < 32 * _9689:
                        mem[s + _3471 + ceil32(return_data.size) + 160] = mem[s + _3471 + _9182 + 160]
                        s = s + 32
                        continue 
                    mem[64] = (32 * _9689) + _3471 + ceil32(return_data.size) + 160
                    require mem[_3471 + ceil32(return_data.size) + 128] - 1 < mem[_3471 + ceil32(return_data.size) + 128]
                    if mem[(32 * mem[_3471 + ceil32(return_data.size) + 128] - 1) + _3471 + ceil32(return_data.size) + 160] <= t:
                        idx = idx + 1
                        t = t
                        continue 
                    idx = idx + 1
                    t = mem[(32 * mem[_3471 + ceil32(return_data.size) + 128] - 1) + _3471 + ceil32(return_data.size) + 160]
                    continue 
                if idx != 3:
                    _3467 = mem[64]
                    mem[mem[64]] = 3
                    mem[64] = mem[64] + 128
                    require 0 < mem[_3467]
                    mem[_3467 + 32] = 0x49d68029688eabf473097a2fc38ef61633a3c
                    require 1 < mem[_3467]
                    mem[_3467 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c
                    require 2 < mem[_3467]
                    mem[_3467 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    mem[_3467 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_3467 + 132] = s
                    mem[_3467 + 164] = 64
                    mem[_3467 + 196] = mem[_3467]
                    u = 0
                    while u < 32 * mem[_3467]:
                        mem[u + _3467 + 228] = mem[u + _3467 + 32]
                        u = u + 32
                        continue 
                    require ext_code.size(0)
                    staticcall 0x0.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args s, 64, mem[_3467 + 196 len (32 * mem[_3467]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_3467 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _3467 + ceil32(return_data.size) + 128
                    require return_data.size >= 32
                    _9178 = mem[_3467 + 128 len 4], Mask(224, 32, s) >> 32
                    require mem[_3467 + 128 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                    require mem[_3467 + 128 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                    require mem[_3467 + mem[_3467 + 128 len 4], Mask(224, 32, s) >> 32 + 128] <= 4294967296 and mem[_3467 + 128 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_3467 + mem[_3467 + 128 len 4], Mask(224, 32, s) >> 32 + 128]) + 32 <= return_data.size
                    mem[_3467 + ceil32(return_data.size) + 128] = mem[_3467 + mem[_3467 + 128 len 4], Mask(224, 32, s) >> 32 + 128]
                    _9687 = mem[_3467 + _9178 + 128]
                    s = 0
                    while s < 32 * _9687:
                        mem[s + _3467 + ceil32(return_data.size) + 160] = mem[s + _3467 + _9178 + 160]
                        s = s + 32
                        continue 
                    mem[64] = (32 * _9687) + _3467 + ceil32(return_data.size) + 160
                    require mem[_3467 + ceil32(return_data.size) + 128] - 1 < mem[_3467 + ceil32(return_data.size) + 128]
                    if mem[(32 * mem[_3467 + ceil32(return_data.size) + 128] - 1) + _3467 + ceil32(return_data.size) + 160] <= t:
                        idx = idx + 1
                        t = t
                        continue 
                    idx = idx + 1
                    t = mem[(32 * mem[_3467 + ceil32(return_data.size) + 128] - 1) + _3467 + ceil32(return_data.size) + 160]
                    continue 
                _3805 = mem[64]
                mem[mem[64]] = 3
                mem[64] = mem[64] + 128
                require 0 < mem[_3805]
                mem[_3805 + 32] = 0x49d68029688eabf473097a2fc38ef61633a3c
                require 1 < mem[_3805]
                mem[_3805 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c
                require 2 < mem[_3805]
                mem[_3805 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                mem[_3805 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_3805 + 132] = s
                mem[_3805 + 164] = 64
                mem[_3805 + 196] = mem[_3805]
                u = 0
                while u < 32 * mem[_3805]:
                    mem[u + _3805 + 228] = mem[u + _3805 + 32]
                    u = u + 32
                    continue 
                require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c)
                staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args s, 64, mem[_3805 + 196 len (32 * mem[_3805]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_3805 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _3805 + ceil32(return_data.size) + 128
                require return_data.size >= 32
                _9180 = mem[_3805 + 128 len 4], Mask(224, 32, s) >> 32
                require mem[_3805 + 128 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                require mem[_3805 + 128 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                require mem[_3805 + mem[_3805 + 128 len 4], Mask(224, 32, s) >> 32 + 128] <= 4294967296 and mem[_3805 + 128 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_3805 + mem[_3805 + 128 len 4], Mask(224, 32, s) >> 32 + 128]) + 32 <= return_data.size
                mem[_3805 + ceil32(return_data.size) + 128] = mem[_3805 + mem[_3805 + 128 len 4], Mask(224, 32, s) >> 32 + 128]
                _9688 = mem[_3805 + _9180 + 128]
                s = 0
                while s < 32 * _9688:
                    mem[s + _3805 + ceil32(return_data.size) + 160] = mem[s + _3805 + _9180 + 160]
                    s = s + 32
                    continue 
                mem[64] = (32 * _9688) + _3805 + ceil32(return_data.size) + 160
                require mem[_3805 + ceil32(return_data.size) + 128] - 1 < mem[_3805 + ceil32(return_data.size) + 128]
                if mem[(32 * mem[_3805 + ceil32(return_data.size) + 128] - 1) + _3805 + ceil32(return_data.size) + 160] <= t:
                    idx = idx + 1
                    t = t
                    continue 
                idx = idx + 1
                t = mem[(32 * mem[_3805 + ceil32(return_data.size) + 128] - 1) + _3805 + ceil32(return_data.size) + 160]
                continue 
            if 4 == idx:
                mem[mem[64] + 4] = 0
                mem[mem[64] + 36] = 2
                mem[mem[64] + 68] = s
                require ext_code.size(0x3a1659ddcf2339be3aea159ca010979fb49155ff)
                staticcall 0x3a1659ddcf2339be3aea159ca010979fb49155ff.get_dy(uint256 arg1, uint256 arg2, uint256 arg3) with:
                        gas gas_remaining wei
                       args 0, 2, s
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                _4131 = mem[64]
                mem[mem[64]] = 3
                mem[64] = mem[64] + 128
                require 0 < mem[_4131]
                mem[_4131 + 32] = 0x74b23882a30290451a17c44f4f05243b6b58c76d
                require 1 < mem[_4131]
                mem[_4131 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c
                require 2 < mem[_4131]
                mem[_4131 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                mem[_4131 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_4131 + 132] = ext_call.return_data[0]
                mem[_4131 + 164] = 64
                mem[_4131 + 196] = mem[_4131]
                s = 0
                while s < 32 * mem[_4131]:
                    mem[s + _4131 + 228] = mem[s + _4131 + 32]
                    s = s + 32
                    continue 
                require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c)
                staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args ext_call.return_data[0], 64, mem[_4131 + 196 len (32 * mem[_4131]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_4131 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _4131 + ceil32(return_data.size) + 128
                require return_data.size >= 32
                _9174 = mem[_4131 + 128 len 4], ext_call.return_data[0 len 28]
                require mem[_4131 + 128 len 4], ext_call.return_data[0 len 28] <= 4294967296
                require mem[_4131 + 128 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                require mem[_4131 + mem[_4131 + 128 len 4], ext_call.return_data[0 len 28] + 128] <= 4294967296 and mem[_4131 + 128 len 4], ext_call.return_data[0 len 28] + (32 * mem[_4131 + mem[_4131 + 128 len 4], ext_call.return_data[0 len 28] + 128]) + 32 <= return_data.size
                mem[_4131 + ceil32(return_data.size) + 128] = mem[_4131 + mem[_4131 + 128 len 4], ext_call.return_data[0 len 28] + 128]
                _9685 = mem[_4131 + _9174 + 128]
                s = 0
                while s < 32 * _9685:
                    mem[s + _4131 + ceil32(return_data.size) + 160] = mem[s + _4131 + _9174 + 160]
                    s = s + 32
                    continue 
                mem[64] = (32 * _9685) + _4131 + ceil32(return_data.size) + 160
                require mem[_4131 + ceil32(return_data.size) + 128] - 1 < mem[_4131 + ceil32(return_data.size) + 128]
                if mem[(32 * mem[_4131 + ceil32(return_data.size) + 128] - 1) + _4131 + ceil32(return_data.size) + 160] <= t:
                    idx = idx + 1
                    t = t
                    continue 
                idx = idx + 1
                t = mem[(32 * mem[_4131 + ceil32(return_data.size) + 128] - 1) + _4131 + ceil32(return_data.size) + 160]
                continue 
            if idx != 5:
                if 6 == idx:
                    _4459 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    require 0 < mem[_4459]
                    mem[_4459 + 32] = 0x49d68029688eabf473097a2fc38ef61633a3c
                    require 1 < mem[_4459]
                    mem[_4459 + 64] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    mem[_4459 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_4459 + 100] = s
                    mem[_4459 + 132] = 64
                    mem[_4459 + 164] = mem[_4459]
                    u = 0
                    while u < 32 * mem[_4459]:
                        mem[u + _4459 + 196] = mem[u + _4459 + 32]
                        u = u + 32
                        continue 
                    require ext_code.size(0x845e76a8691423fbc4ecb8dd77556cb61c09ee25)
                    staticcall 0x845e76a8691423fbc4ecb8dd77556cb61c09ee25.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args s, 64, mem[_4459 + 164 len (32 * mem[_4459]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_4459 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _4459 + ceil32(return_data.size) + 96
                    require return_data.size >= 32
                    _9138 = mem[_4459 + 96 len 4], Mask(224, 32, s) >> 32
                    require mem[_4459 + 96 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                    require mem[_4459 + 96 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                    require mem[_4459 + mem[_4459 + 96 len 4], Mask(224, 32, s) >> 32 + 96] <= 4294967296 and mem[_4459 + 96 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_4459 + mem[_4459 + 96 len 4], Mask(224, 32, s) >> 32 + 96]) + 32 <= return_data.size
                    mem[_4459 + ceil32(return_data.size) + 96] = mem[_4459 + mem[_4459 + 96 len 4], Mask(224, 32, s) >> 32 + 96]
                    _9667 = mem[_4459 + _9138 + 96]
                    s = 0
                    while s < 32 * _9667:
                        mem[s + _4459 + ceil32(return_data.size) + 128] = mem[s + _4459 + _9138 + 128]
                        s = s + 32
                        continue 
                    mem[64] = (32 * _9667) + _4459 + ceil32(return_data.size) + 128
                    require mem[_4459 + ceil32(return_data.size) + 96] - 1 < mem[_4459 + ceil32(return_data.size) + 96]
                    if mem[(32 * mem[_4459 + ceil32(return_data.size) + 96] - 1) + _4459 + ceil32(return_data.size) + 128] <= t:
                        idx = idx + 1
                        t = t
                        continue 
                    idx = idx + 1
                    t = mem[(32 * mem[_4459 + ceil32(return_data.size) + 96] - 1) + _4459 + ceil32(return_data.size) + 128]
                    continue 
                if 7 == idx:
                    if 6 == idx:
                        _4559 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        require 0 < mem[_4559]
                        mem[_4559 + 32] = 0x49d68029688eabf473097a2fc38ef61633a3c
                        require 1 < mem[_4559]
                        mem[_4559 + 64] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                        mem[_4559 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[_4559 + 100] = s
                        mem[_4559 + 132] = 64
                        mem[_4559 + 164] = mem[_4559]
                        u = 0
                        while u < 32 * mem[_4559]:
                            mem[u + _4559 + 196] = mem[u + _4559 + 32]
                            u = u + 32
                            continue 
                        require ext_code.size(0x845e76a8691423fbc4ecb8dd77556cb61c09ee25)
                        staticcall 0x845e76a8691423fbc4ecb8dd77556cb61c09ee25.getAmountsOut(uint256 arg1, address[] arg2) with:
                                gas gas_remaining wei
                               args s, 64, mem[_4559 + 164 len (32 * mem[_4559]) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_4559 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = _4559 + ceil32(return_data.size) + 96
                        require return_data.size >= 32
                        _9148 = mem[_4559 + 96 len 4], Mask(224, 32, s) >> 32
                        require mem[_4559 + 96 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                        require mem[_4559 + 96 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                        require mem[_4559 + mem[_4559 + 96 len 4], Mask(224, 32, s) >> 32 + 96] <= 4294967296 and mem[_4559 + 96 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_4559 + mem[_4559 + 96 len 4], Mask(224, 32, s) >> 32 + 96]) + 32 <= return_data.size
                        mem[_4559 + ceil32(return_data.size) + 96] = mem[_4559 + mem[_4559 + 96 len 4], Mask(224, 32, s) >> 32 + 96]
                        _9672 = mem[_4559 + _9148 + 96]
                        s = 0
                        while s < 32 * _9672:
                            mem[s + _4559 + ceil32(return_data.size) + 128] = mem[s + _4559 + _9148 + 128]
                            s = s + 32
                            continue 
                        mem[64] = (32 * _9672) + _4559 + ceil32(return_data.size) + 128
                        require mem[_4559 + ceil32(return_data.size) + 96] - 1 < mem[_4559 + ceil32(return_data.size) + 96]
                        if mem[(32 * mem[_4559 + ceil32(return_data.size) + 96] - 1) + _4559 + ceil32(return_data.size) + 128] <= t:
                            idx = idx + 1
                            t = t
                            continue 
                        idx = idx + 1
                        t = mem[(32 * mem[_4559 + ceil32(return_data.size) + 96] - 1) + _4559 + ceil32(return_data.size) + 128]
                        continue 
                    if 7 == idx:
                        _4705 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        require 0 < mem[_4705]
                        mem[_4705 + 32] = 0x49d68029688eabf473097a2fc38ef61633a3c
                        require 1 < mem[_4705]
                        mem[_4705 + 64] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                        mem[_4705 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[_4705 + 100] = s
                        mem[_4705 + 132] = 64
                        mem[_4705 + 164] = mem[_4705]
                        u = 0
                        while u < 32 * mem[_4705]:
                            mem[u + _4705 + 196] = mem[u + _4705 + 32]
                            u = u + 32
                            continue 
                        require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c)
                        staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c.getAmountsOut(uint256 arg1, address[] arg2) with:
                                gas gas_remaining wei
                               args s, 64, mem[_4705 + 164 len (32 * mem[_4705]) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_4705 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = _4705 + ceil32(return_data.size) + 96
                        require return_data.size >= 32
                        _9146 = mem[_4705 + 96 len 4], Mask(224, 32, s) >> 32
                        require mem[_4705 + 96 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                        require mem[_4705 + 96 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                        require mem[_4705 + mem[_4705 + 96 len 4], Mask(224, 32, s) >> 32 + 96] <= 4294967296 and mem[_4705 + 96 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_4705 + mem[_4705 + 96 len 4], Mask(224, 32, s) >> 32 + 96]) + 32 <= return_data.size
                        mem[_4705 + ceil32(return_data.size) + 96] = mem[_4705 + mem[_4705 + 96 len 4], Mask(224, 32, s) >> 32 + 96]
                        _9671 = mem[_4705 + _9146 + 96]
                        s = 0
                        while s < 32 * _9671:
                            mem[s + _4705 + ceil32(return_data.size) + 128] = mem[s + _4705 + _9146 + 128]
                            s = s + 32
                            continue 
                        mem[64] = (32 * _9671) + _4705 + ceil32(return_data.size) + 128
                        require mem[_4705 + ceil32(return_data.size) + 96] - 1 < mem[_4705 + ceil32(return_data.size) + 96]
                        if mem[(32 * mem[_4705 + ceil32(return_data.size) + 96] - 1) + _4705 + ceil32(return_data.size) + 128] <= t:
                            idx = idx + 1
                            t = t
                            continue 
                        idx = idx + 1
                        t = mem[(32 * mem[_4705 + ceil32(return_data.size) + 96] - 1) + _4705 + ceil32(return_data.size) + 128]
                        continue 
                    if 8 == idx:
                        _4905 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        require 0 < mem[_4905]
                        mem[_4905 + 32] = 0x49d68029688eabf473097a2fc38ef61633a3c
                        require 1 < mem[_4905]
                        mem[_4905 + 64] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                        mem[_4905 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[_4905 + 100] = s
                        mem[_4905 + 132] = 64
                        mem[_4905 + 164] = mem[_4905]
                        u = 0
                        while u < 32 * mem[_4905]:
                            mem[u + _4905 + 196] = mem[u + _4905 + 32]
                            u = u + 32
                            continue 
                        require ext_code.size(0x6b3d631b87fe27af29efec61d2ab8ce4d621ccbf)
                        staticcall 0x6b3d631b87fe27af29efec61d2ab8ce4d621ccbf.getAmountsOut(uint256 arg1, address[] arg2) with:
                                gas gas_remaining wei
                               args s, 64, mem[_4905 + 164 len (32 * mem[_4905]) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_4905 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = _4905 + ceil32(return_data.size) + 96
                        require return_data.size >= 32
                        _9144 = mem[_4905 + 96 len 4], Mask(224, 32, s) >> 32
                        require mem[_4905 + 96 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                        require mem[_4905 + 96 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                        require mem[_4905 + mem[_4905 + 96 len 4], Mask(224, 32, s) >> 32 + 96] <= 4294967296 and mem[_4905 + 96 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_4905 + mem[_4905 + 96 len 4], Mask(224, 32, s) >> 32 + 96]) + 32 <= return_data.size
                        mem[_4905 + ceil32(return_data.size) + 96] = mem[_4905 + mem[_4905 + 96 len 4], Mask(224, 32, s) >> 32 + 96]
                        _9670 = mem[_4905 + _9144 + 96]
                        s = 0
                        while s < 32 * _9670:
                            mem[s + _4905 + ceil32(return_data.size) + 128] = mem[s + _4905 + _9144 + 128]
                            s = s + 32
                            continue 
                        mem[64] = (32 * _9670) + _4905 + ceil32(return_data.size) + 128
                        require mem[_4905 + ceil32(return_data.size) + 96] - 1 < mem[_4905 + ceil32(return_data.size) + 96]
                        if mem[(32 * mem[_4905 + ceil32(return_data.size) + 96] - 1) + _4905 + ceil32(return_data.size) + 128] <= t:
                            idx = idx + 1
                            t = t
                            continue 
                        idx = idx + 1
                        t = mem[(32 * mem[_4905 + ceil32(return_data.size) + 96] - 1) + _4905 + ceil32(return_data.size) + 128]
                        continue 
                    if idx != 9:
                        _4903 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        require 0 < mem[_4903]
                        mem[_4903 + 32] = 0x49d68029688eabf473097a2fc38ef61633a3c
                        require 1 < mem[_4903]
                        mem[_4903 + 64] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                        mem[_4903 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[_4903 + 100] = s
                        mem[_4903 + 132] = 64
                        mem[_4903 + 164] = mem[_4903]
                        u = 0
                        while u < 32 * mem[_4903]:
                            mem[u + _4903 + 196] = mem[u + _4903 + 32]
                            u = u + 32
                            continue 
                        require ext_code.size(0)
                        staticcall 0x0.getAmountsOut(uint256 arg1, address[] arg2) with:
                                gas gas_remaining wei
                               args s, 64, mem[_4903 + 164 len (32 * mem[_4903]) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_4903 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = _4903 + ceil32(return_data.size) + 96
                        require return_data.size >= 32
                        _9140 = mem[_4903 + 96 len 4], Mask(224, 32, s) >> 32
                        require mem[_4903 + 96 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                        require mem[_4903 + 96 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                        require mem[_4903 + mem[_4903 + 96 len 4], Mask(224, 32, s) >> 32 + 96] <= 4294967296 and mem[_4903 + 96 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_4903 + mem[_4903 + 96 len 4], Mask(224, 32, s) >> 32 + 96]) + 32 <= return_data.size
                        mem[_4903 + ceil32(return_data.size) + 96] = mem[_4903 + mem[_4903 + 96 len 4], Mask(224, 32, s) >> 32 + 96]
                        _9668 = mem[_4903 + _9140 + 96]
                        s = 0
                        while s < 32 * _9668:
                            mem[s + _4903 + ceil32(return_data.size) + 128] = mem[s + _4903 + _9140 + 128]
                            s = s + 32
                            continue 
                        mem[64] = (32 * _9668) + _4903 + ceil32(return_data.size) + 128
                        require mem[_4903 + ceil32(return_data.size) + 96] - 1 < mem[_4903 + ceil32(return_data.size) + 96]
                        if mem[(32 * mem[_4903 + ceil32(return_data.size) + 96] - 1) + _4903 + ceil32(return_data.size) + 128] <= t:
                            idx = idx + 1
                            t = t
                            continue 
                        idx = idx + 1
                        t = mem[(32 * mem[_4903 + ceil32(return_data.size) + 96] - 1) + _4903 + ceil32(return_data.size) + 128]
                        continue 
                    _5142 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    require 0 < mem[_5142]
                    mem[_5142 + 32] = 0x49d68029688eabf473097a2fc38ef61633a3c
                    require 1 < mem[_5142]
                    mem[_5142 + 64] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    mem[_5142 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_5142 + 100] = s
                    mem[_5142 + 132] = 64
                    mem[_5142 + 164] = mem[_5142]
                    u = 0
                    while u < 32 * mem[_5142]:
                        mem[u + _5142 + 196] = mem[u + _5142 + 32]
                        u = u + 32
                        continue 
                    require ext_code.size(0x2724b9497b2cf3325c6be3ea430b3cec34b5ef2d)
                    staticcall 0x2724b9497b2cf3325c6be3ea430b3cec34b5ef2d.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args s, 64, mem[_5142 + 164 len (32 * mem[_5142]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_5142 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _5142 + ceil32(return_data.size) + 96
                    require return_data.size >= 32
                    _9142 = mem[_5142 + 96 len 4], Mask(224, 32, s) >> 32
                    require mem[_5142 + 96 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                    require mem[_5142 + 96 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                    require mem[_5142 + mem[_5142 + 96 len 4], Mask(224, 32, s) >> 32 + 96] <= 4294967296 and mem[_5142 + 96 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_5142 + mem[_5142 + 96 len 4], Mask(224, 32, s) >> 32 + 96]) + 32 <= return_data.size
                    mem[_5142 + ceil32(return_data.size) + 96] = mem[_5142 + mem[_5142 + 96 len 4], Mask(224, 32, s) >> 32 + 96]
                    _9669 = mem[_5142 + _9142 + 96]
                    s = 0
                    while s < 32 * _9669:
                        mem[s + _5142 + ceil32(return_data.size) + 128] = mem[s + _5142 + _9142 + 128]
                        s = s + 32
                        continue 
                    mem[64] = (32 * _9669) + _5142 + ceil32(return_data.size) + 128
                    require mem[_5142 + ceil32(return_data.size) + 96] - 1 < mem[_5142 + ceil32(return_data.size) + 96]
                    if mem[(32 * mem[_5142 + ceil32(return_data.size) + 96] - 1) + _5142 + ceil32(return_data.size) + 128] <= t:
                        idx = idx + 1
                        t = t
                        continue 
                    idx = idx + 1
                    t = mem[(32 * mem[_5142 + ceil32(return_data.size) + 96] - 1) + _5142 + ceil32(return_data.size) + 128]
                    continue 
                if 8 == idx:
                    if 6 == idx:
                        _4710 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        require 0 < mem[_4710]
                        mem[_4710 + 32] = 0x49d68029688eabf473097a2fc38ef61633a3c
                        require 1 < mem[_4710]
                        mem[_4710 + 64] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                        mem[_4710 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[_4710 + 100] = s
                        mem[_4710 + 132] = 64
                        mem[_4710 + 164] = mem[_4710]
                        u = 0
                        while u < 32 * mem[_4710]:
                            mem[u + _4710 + 196] = mem[u + _4710 + 32]
                            u = u + 32
                            continue 
                        require ext_code.size(0x845e76a8691423fbc4ecb8dd77556cb61c09ee25)
                        staticcall 0x845e76a8691423fbc4ecb8dd77556cb61c09ee25.getAmountsOut(uint256 arg1, address[] arg2) with:
                                gas gas_remaining wei
                               args s, 64, mem[_4710 + 164 len (32 * mem[_4710]) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_4710 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = _4710 + ceil32(return_data.size) + 96
                        require return_data.size >= 32
                        _9158 = mem[_4710 + 96 len 4], Mask(224, 32, s) >> 32
                        require mem[_4710 + 96 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                        require mem[_4710 + 96 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                        require mem[_4710 + mem[_4710 + 96 len 4], Mask(224, 32, s) >> 32 + 96] <= 4294967296 and mem[_4710 + 96 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_4710 + mem[_4710 + 96 len 4], Mask(224, 32, s) >> 32 + 96]) + 32 <= return_data.size
                        mem[_4710 + ceil32(return_data.size) + 96] = mem[_4710 + mem[_4710 + 96 len 4], Mask(224, 32, s) >> 32 + 96]
                        _9677 = mem[_4710 + _9158 + 96]
                        s = 0
                        while s < 32 * _9677:
                            mem[s + _4710 + ceil32(return_data.size) + 128] = mem[s + _4710 + _9158 + 128]
                            s = s + 32
                            continue 
                        mem[64] = (32 * _9677) + _4710 + ceil32(return_data.size) + 128
                        require mem[_4710 + ceil32(return_data.size) + 96] - 1 < mem[_4710 + ceil32(return_data.size) + 96]
                        if mem[(32 * mem[_4710 + ceil32(return_data.size) + 96] - 1) + _4710 + ceil32(return_data.size) + 128] <= t:
                            idx = idx + 1
                            t = t
                            continue 
                        idx = idx + 1
                        t = mem[(32 * mem[_4710 + ceil32(return_data.size) + 96] - 1) + _4710 + ceil32(return_data.size) + 128]
                        continue 
                    if 7 == idx:
                        _4911 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        require 0 < mem[_4911]
                        mem[_4911 + 32] = 0x49d68029688eabf473097a2fc38ef61633a3c
                        require 1 < mem[_4911]
                        mem[_4911 + 64] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                        mem[_4911 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[_4911 + 100] = s
                        mem[_4911 + 132] = 64
                        mem[_4911 + 164] = mem[_4911]
                        u = 0
                        while u < 32 * mem[_4911]:
                            mem[u + _4911 + 196] = mem[u + _4911 + 32]
                            u = u + 32
                            continue 
                        require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c)
                        staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c.getAmountsOut(uint256 arg1, address[] arg2) with:
                                gas gas_remaining wei
                               args s, 64, mem[_4911 + 164 len (32 * mem[_4911]) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_4911 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = _4911 + ceil32(return_data.size) + 96
                        require return_data.size >= 32
                        _9156 = mem[_4911 + 96 len 4], Mask(224, 32, s) >> 32
                        require mem[_4911 + 96 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                        require mem[_4911 + 96 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                        require mem[_4911 + mem[_4911 + 96 len 4], Mask(224, 32, s) >> 32 + 96] <= 4294967296 and mem[_4911 + 96 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_4911 + mem[_4911 + 96 len 4], Mask(224, 32, s) >> 32 + 96]) + 32 <= return_data.size
                        mem[_4911 + ceil32(return_data.size) + 96] = mem[_4911 + mem[_4911 + 96 len 4], Mask(224, 32, s) >> 32 + 96]
                        _9676 = mem[_4911 + _9156 + 96]
                        s = 0
                        while s < 32 * _9676:
                            mem[s + _4911 + ceil32(return_data.size) + 128] = mem[s + _4911 + _9156 + 128]
                            s = s + 32
                            continue 
                        mem[64] = (32 * _9676) + _4911 + ceil32(return_data.size) + 128
                        require mem[_4911 + ceil32(return_data.size) + 96] - 1 < mem[_4911 + ceil32(return_data.size) + 96]
                        if mem[(32 * mem[_4911 + ceil32(return_data.size) + 96] - 1) + _4911 + ceil32(return_data.size) + 128] <= t:
                            idx = idx + 1
                            t = t
                            continue 
                        idx = idx + 1
                        t = mem[(32 * mem[_4911 + ceil32(return_data.size) + 96] - 1) + _4911 + ceil32(return_data.size) + 128]
                        continue 
                    if 8 == idx:
                        _5150 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        require 0 < mem[_5150]
                        mem[_5150 + 32] = 0x49d68029688eabf473097a2fc38ef61633a3c
                        require 1 < mem[_5150]
                        mem[_5150 + 64] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                        mem[_5150 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[_5150 + 100] = s
                        mem[_5150 + 132] = 64
                        mem[_5150 + 164] = mem[_5150]
                        u = 0
                        while u < 32 * mem[_5150]:
                            mem[u + _5150 + 196] = mem[u + _5150 + 32]
                            u = u + 32
                            continue 
                        require ext_code.size(0x6b3d631b87fe27af29efec61d2ab8ce4d621ccbf)
                        staticcall 0x6b3d631b87fe27af29efec61d2ab8ce4d621ccbf.getAmountsOut(uint256 arg1, address[] arg2) with:
                                gas gas_remaining wei
                               args s, 64, mem[_5150 + 164 len (32 * mem[_5150]) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_5150 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = _5150 + ceil32(return_data.size) + 96
                        require return_data.size >= 32
                        _9154 = mem[_5150 + 96 len 4], Mask(224, 32, s) >> 32
                        require mem[_5150 + 96 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                        require mem[_5150 + 96 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                        require mem[_5150 + mem[_5150 + 96 len 4], Mask(224, 32, s) >> 32 + 96] <= 4294967296 and mem[_5150 + 96 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_5150 + mem[_5150 + 96 len 4], Mask(224, 32, s) >> 32 + 96]) + 32 <= return_data.size
                        mem[_5150 + ceil32(return_data.size) + 96] = mem[_5150 + mem[_5150 + 96 len 4], Mask(224, 32, s) >> 32 + 96]
                        _9675 = mem[_5150 + _9154 + 96]
                        s = 0
                        while s < 32 * _9675:
                            mem[s + _5150 + ceil32(return_data.size) + 128] = mem[s + _5150 + _9154 + 128]
                            s = s + 32
                            continue 
                        mem[64] = (32 * _9675) + _5150 + ceil32(return_data.size) + 128
                        require mem[_5150 + ceil32(return_data.size) + 96] - 1 < mem[_5150 + ceil32(return_data.size) + 96]
                        if mem[(32 * mem[_5150 + ceil32(return_data.size) + 96] - 1) + _5150 + ceil32(return_data.size) + 128] <= t:
                            idx = idx + 1
                            t = t
                            continue 
                        idx = idx + 1
                        t = mem[(32 * mem[_5150 + ceil32(return_data.size) + 96] - 1) + _5150 + ceil32(return_data.size) + 128]
                        continue 
                    if idx != 9:
                        _5148 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        require 0 < mem[_5148]
                        mem[_5148 + 32] = 0x49d68029688eabf473097a2fc38ef61633a3c
                        require 1 < mem[_5148]
                        mem[_5148 + 64] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                        mem[_5148 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[_5148 + 100] = s
                        mem[_5148 + 132] = 64
                        mem[_5148 + 164] = mem[_5148]
                        u = 0
                        while u < 32 * mem[_5148]:
                            mem[u + _5148 + 196] = mem[u + _5148 + 32]
                            u = u + 32
                            continue 
                        require ext_code.size(0)
                        staticcall 0x0.getAmountsOut(uint256 arg1, address[] arg2) with:
                                gas gas_remaining wei
                               args s, 64, mem[_5148 + 164 len (32 * mem[_5148]) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_5148 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = _5148 + ceil32(return_data.size) + 96
                        require return_data.size >= 32
                        _9150 = mem[_5148 + 96 len 4], Mask(224, 32, s) >> 32
                        require mem[_5148 + 96 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                        require mem[_5148 + 96 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                        require mem[_5148 + mem[_5148 + 96 len 4], Mask(224, 32, s) >> 32 + 96] <= 4294967296 and mem[_5148 + 96 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_5148 + mem[_5148 + 96 len 4], Mask(224, 32, s) >> 32 + 96]) + 32 <= return_data.size
                        mem[_5148 + ceil32(return_data.size) + 96] = mem[_5148 + mem[_5148 + 96 len 4], Mask(224, 32, s) >> 32 + 96]
                        _9673 = mem[_5148 + _9150 + 96]
                        s = 0
                        while s < 32 * _9673:
                            mem[s + _5148 + ceil32(return_data.size) + 128] = mem[s + _5148 + _9150 + 128]
                            s = s + 32
                            continue 
                        mem[64] = (32 * _9673) + _5148 + ceil32(return_data.size) + 128
                        require mem[_5148 + ceil32(return_data.size) + 96] - 1 < mem[_5148 + ceil32(return_data.size) + 96]
                        if mem[(32 * mem[_5148 + ceil32(return_data.size) + 96] - 1) + _5148 + ceil32(return_data.size) + 128] <= t:
                            idx = idx + 1
                            t = t
                            continue 
                        idx = idx + 1
                        t = mem[(32 * mem[_5148 + ceil32(return_data.size) + 96] - 1) + _5148 + ceil32(return_data.size) + 128]
                        continue 
                    _5436 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    require 0 < mem[_5436]
                    mem[_5436 + 32] = 0x49d68029688eabf473097a2fc38ef61633a3c
                    require 1 < mem[_5436]
                    mem[_5436 + 64] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    mem[_5436 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_5436 + 100] = s
                    mem[_5436 + 132] = 64
                    mem[_5436 + 164] = mem[_5436]
                    u = 0
                    while u < 32 * mem[_5436]:
                        mem[u + _5436 + 196] = mem[u + _5436 + 32]
                        u = u + 32
                        continue 
                    require ext_code.size(0x2724b9497b2cf3325c6be3ea430b3cec34b5ef2d)
                    staticcall 0x2724b9497b2cf3325c6be3ea430b3cec34b5ef2d.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args s, 64, mem[_5436 + 164 len (32 * mem[_5436]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_5436 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _5436 + ceil32(return_data.size) + 96
                    require return_data.size >= 32
                    _9152 = mem[_5436 + 96 len 4], Mask(224, 32, s) >> 32
                    require mem[_5436 + 96 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                    require mem[_5436 + 96 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                    require mem[_5436 + mem[_5436 + 96 len 4], Mask(224, 32, s) >> 32 + 96] <= 4294967296 and mem[_5436 + 96 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_5436 + mem[_5436 + 96 len 4], Mask(224, 32, s) >> 32 + 96]) + 32 <= return_data.size
                    mem[_5436 + ceil32(return_data.size) + 96] = mem[_5436 + mem[_5436 + 96 len 4], Mask(224, 32, s) >> 32 + 96]
                    _9674 = mem[_5436 + _9152 + 96]
                    s = 0
                    while s < 32 * _9674:
                        mem[s + _5436 + ceil32(return_data.size) + 128] = mem[s + _5436 + _9152 + 128]
                        s = s + 32
                        continue 
                    mem[64] = (32 * _9674) + _5436 + ceil32(return_data.size) + 128
                    require mem[_5436 + ceil32(return_data.size) + 96] - 1 < mem[_5436 + ceil32(return_data.size) + 96]
                    if mem[(32 * mem[_5436 + ceil32(return_data.size) + 96] - 1) + _5436 + ceil32(return_data.size) + 128] <= t:
                        idx = idx + 1
                        t = t
                        continue 
                    idx = idx + 1
                    t = mem[(32 * mem[_5436 + ceil32(return_data.size) + 96] - 1) + _5436 + ceil32(return_data.size) + 128]
                    continue 
                if idx != 9:
                    if 10 == idx:
                        mem[mem[64] + 4] = 0
                        mem[mem[64] + 36] = 1
                        mem[mem[64] + 68] = s
                        require ext_code.size(0x952bda8a83c3d5f398a686bb4e8c6dd90072d523)
                        staticcall 0x952bda8a83c3d5f398a686bb4e8c6dd90072d523.calculateSwap(uint8 arg1, uint8 arg2, uint256 arg3) with:
                                gas gas_remaining wei
                               args 0, 1, s
                    else:
                        if 11 == idx:
                            mem[mem[64] + 4] = 1
                            mem[mem[64] + 36] = 2
                            mem[mem[64] + 68] = s
                            require ext_code.size(0x80f6aed32fc474dd5717105dba5ea57268f46eb)
                            staticcall 0x80f6aed32fc474dd5717105dba5ea57268f46eb.calculateSwap(uint8 arg1, uint8 arg2, uint256 arg3) with:
                                    gas gas_remaining wei
                                   args 1, 2, s
                        else:
                            if idx != 12:
                                if s <= t:
                                    idx = idx + 1
                                    t = t
                                    continue 
                                idx = idx + 1
                                t = s
                                continue 
                            mem[mem[64] + 4] = 2
                            mem[mem[64] + 36] = 1
                            mem[mem[64] + 68] = s
                            require ext_code.size(0x2dd7c9371965472e5a5fd28fbe165007c61439e1)
                            staticcall 0x2dd7c9371965472e5a5fd28fbe165007c61439e1.get_dy(int128 arg1, int128 arg2, uint256 arg3) with:
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
                if 6 == idx:
                    _4920 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    require 0 < mem[_4920]
                    mem[_4920 + 32] = 0x49d68029688eabf473097a2fc38ef61633a3c
                    require 1 < mem[_4920]
                    mem[_4920 + 64] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    mem[_4920 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_4920 + 100] = s
                    mem[_4920 + 132] = 64
                    mem[_4920 + 164] = mem[_4920]
                    u = 0
                    while u < 32 * mem[_4920]:
                        mem[u + _4920 + 196] = mem[u + _4920 + 32]
                        u = u + 32
                        continue 
                    require ext_code.size(0x845e76a8691423fbc4ecb8dd77556cb61c09ee25)
                    staticcall 0x845e76a8691423fbc4ecb8dd77556cb61c09ee25.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args s, 64, mem[_4920 + 164 len (32 * mem[_4920]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_4920 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _4920 + ceil32(return_data.size) + 96
                    require return_data.size >= 32
                    _9168 = mem[_4920 + 96 len 4], Mask(224, 32, s) >> 32
                    require mem[_4920 + 96 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                    require mem[_4920 + 96 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                    require mem[_4920 + mem[_4920 + 96 len 4], Mask(224, 32, s) >> 32 + 96] <= 4294967296 and mem[_4920 + 96 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_4920 + mem[_4920 + 96 len 4], Mask(224, 32, s) >> 32 + 96]) + 32 <= return_data.size
                    mem[_4920 + ceil32(return_data.size) + 96] = mem[_4920 + mem[_4920 + 96 len 4], Mask(224, 32, s) >> 32 + 96]
                    _9682 = mem[_4920 + _9168 + 96]
                    s = 0
                    while s < 32 * _9682:
                        mem[s + _4920 + ceil32(return_data.size) + 128] = mem[s + _4920 + _9168 + 128]
                        s = s + 32
                        continue 
                    mem[64] = (32 * _9682) + _4920 + ceil32(return_data.size) + 128
                    require mem[_4920 + ceil32(return_data.size) + 96] - 1 < mem[_4920 + ceil32(return_data.size) + 96]
                    if mem[(32 * mem[_4920 + ceil32(return_data.size) + 96] - 1) + _4920 + ceil32(return_data.size) + 128] <= t:
                        idx = idx + 1
                        t = t
                        continue 
                    idx = idx + 1
                    t = mem[(32 * mem[_4920 + ceil32(return_data.size) + 96] - 1) + _4920 + ceil32(return_data.size) + 128]
                    continue 
                if 7 == idx:
                    _5164 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    require 0 < mem[_5164]
                    mem[_5164 + 32] = 0x49d68029688eabf473097a2fc38ef61633a3c
                    require 1 < mem[_5164]
                    mem[_5164 + 64] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    mem[_5164 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_5164 + 100] = s
                    mem[_5164 + 132] = 64
                    mem[_5164 + 164] = mem[_5164]
                    u = 0
                    while u < 32 * mem[_5164]:
                        mem[u + _5164 + 196] = mem[u + _5164 + 32]
                        u = u + 32
                        continue 
                    require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c)
                    staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args s, 64, mem[_5164 + 164 len (32 * mem[_5164]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_5164 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _5164 + ceil32(return_data.size) + 96
                    require return_data.size >= 32
                    _9166 = mem[_5164 + 96 len 4], Mask(224, 32, s) >> 32
                    require mem[_5164 + 96 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                    require mem[_5164 + 96 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                    require mem[_5164 + mem[_5164 + 96 len 4], Mask(224, 32, s) >> 32 + 96] <= 4294967296 and mem[_5164 + 96 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_5164 + mem[_5164 + 96 len 4], Mask(224, 32, s) >> 32 + 96]) + 32 <= return_data.size
                    mem[_5164 + ceil32(return_data.size) + 96] = mem[_5164 + mem[_5164 + 96 len 4], Mask(224, 32, s) >> 32 + 96]
                    _9681 = mem[_5164 + _9166 + 96]
                    s = 0
                    while s < 32 * _9681:
                        mem[s + _5164 + ceil32(return_data.size) + 128] = mem[s + _5164 + _9166 + 128]
                        s = s + 32
                        continue 
                    mem[64] = (32 * _9681) + _5164 + ceil32(return_data.size) + 128
                    require mem[_5164 + ceil32(return_data.size) + 96] - 1 < mem[_5164 + ceil32(return_data.size) + 96]
                    if mem[(32 * mem[_5164 + ceil32(return_data.size) + 96] - 1) + _5164 + ceil32(return_data.size) + 128] <= t:
                        idx = idx + 1
                        t = t
                        continue 
                    idx = idx + 1
                    t = mem[(32 * mem[_5164 + ceil32(return_data.size) + 96] - 1) + _5164 + ceil32(return_data.size) + 128]
                    continue 
                if 8 == idx:
                    _5447 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    require 0 < mem[_5447]
                    mem[_5447 + 32] = 0x49d68029688eabf473097a2fc38ef61633a3c
                    require 1 < mem[_5447]
                    mem[_5447 + 64] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    mem[_5447 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_5447 + 100] = s
                    mem[_5447 + 132] = 64
                    mem[_5447 + 164] = mem[_5447]
                    u = 0
                    while u < 32 * mem[_5447]:
                        mem[u + _5447 + 196] = mem[u + _5447 + 32]
                        u = u + 32
                        continue 
                    require ext_code.size(0x6b3d631b87fe27af29efec61d2ab8ce4d621ccbf)
                    staticcall 0x6b3d631b87fe27af29efec61d2ab8ce4d621ccbf.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args s, 64, mem[_5447 + 164 len (32 * mem[_5447]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_5447 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _5447 + ceil32(return_data.size) + 96
                    require return_data.size >= 32
                    _9164 = mem[_5447 + 96 len 4], Mask(224, 32, s) >> 32
                    require mem[_5447 + 96 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                    require mem[_5447 + 96 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                    require mem[_5447 + mem[_5447 + 96 len 4], Mask(224, 32, s) >> 32 + 96] <= 4294967296 and mem[_5447 + 96 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_5447 + mem[_5447 + 96 len 4], Mask(224, 32, s) >> 32 + 96]) + 32 <= return_data.size
                    mem[_5447 + ceil32(return_data.size) + 96] = mem[_5447 + mem[_5447 + 96 len 4], Mask(224, 32, s) >> 32 + 96]
                    _9680 = mem[_5447 + _9164 + 96]
                    s = 0
                    while s < 32 * _9680:
                        mem[s + _5447 + ceil32(return_data.size) + 128] = mem[s + _5447 + _9164 + 128]
                        s = s + 32
                        continue 
                    mem[64] = (32 * _9680) + _5447 + ceil32(return_data.size) + 128
                    require mem[_5447 + ceil32(return_data.size) + 96] - 1 < mem[_5447 + ceil32(return_data.size) + 96]
                    if mem[(32 * mem[_5447 + ceil32(return_data.size) + 96] - 1) + _5447 + ceil32(return_data.size) + 128] <= t:
                        idx = idx + 1
                        t = t
                        continue 
                    idx = idx + 1
                    t = mem[(32 * mem[_5447 + ceil32(return_data.size) + 96] - 1) + _5447 + ceil32(return_data.size) + 128]
                    continue 
                if idx != 9:
                    _5445 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    require 0 < mem[_5445]
                    mem[_5445 + 32] = 0x49d68029688eabf473097a2fc38ef61633a3c
                    require 1 < mem[_5445]
                    mem[_5445 + 64] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    mem[_5445 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_5445 + 100] = s
                    mem[_5445 + 132] = 64
                    mem[_5445 + 164] = mem[_5445]
                    u = 0
                    while u < 32 * mem[_5445]:
                        mem[u + _5445 + 196] = mem[u + _5445 + 32]
                        u = u + 32
                        continue 
                    require ext_code.size(0)
                    staticcall 0x0.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args s, 64, mem[_5445 + 164 len (32 * mem[_5445]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_5445 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _5445 + ceil32(return_data.size) + 96
                    require return_data.size >= 32
                    _9160 = mem[_5445 + 96 len 4], Mask(224, 32, s) >> 32
                    require mem[_5445 + 96 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                    require mem[_5445 + 96 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                    require mem[_5445 + mem[_5445 + 96 len 4], Mask(224, 32, s) >> 32 + 96] <= 4294967296 and mem[_5445 + 96 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_5445 + mem[_5445 + 96 len 4], Mask(224, 32, s) >> 32 + 96]) + 32 <= return_data.size
                    mem[_5445 + ceil32(return_data.size) + 96] = mem[_5445 + mem[_5445 + 96 len 4], Mask(224, 32, s) >> 32 + 96]
                    _9678 = mem[_5445 + _9160 + 96]
                    s = 0
                    while s < 32 * _9678:
                        mem[s + _5445 + ceil32(return_data.size) + 128] = mem[s + _5445 + _9160 + 128]
                        s = s + 32
                        continue 
                    mem[64] = (32 * _9678) + _5445 + ceil32(return_data.size) + 128
                    require mem[_5445 + ceil32(return_data.size) + 96] - 1 < mem[_5445 + ceil32(return_data.size) + 96]
                    if mem[(32 * mem[_5445 + ceil32(return_data.size) + 96] - 1) + _5445 + ceil32(return_data.size) + 128] <= t:
                        idx = idx + 1
                        t = t
                        continue 
                    idx = idx + 1
                    t = mem[(32 * mem[_5445 + ceil32(return_data.size) + 96] - 1) + _5445 + ceil32(return_data.size) + 128]
                    continue 
                _5731 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                require 0 < mem[_5731]
                mem[_5731 + 32] = 0x49d68029688eabf473097a2fc38ef61633a3c
                require 1 < mem[_5731]
                mem[_5731 + 64] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                mem[_5731 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_5731 + 100] = s
                mem[_5731 + 132] = 64
                mem[_5731 + 164] = mem[_5731]
                u = 0
                while u < 32 * mem[_5731]:
                    mem[u + _5731 + 196] = mem[u + _5731 + 32]
                    u = u + 32
                    continue 
                require ext_code.size(0x2724b9497b2cf3325c6be3ea430b3cec34b5ef2d)
                staticcall 0x2724b9497b2cf3325c6be3ea430b3cec34b5ef2d.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args s, 64, mem[_5731 + 164 len (32 * mem[_5731]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_5731 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _5731 + ceil32(return_data.size) + 96
                require return_data.size >= 32
                _9162 = mem[_5731 + 96 len 4], Mask(224, 32, s) >> 32
                require mem[_5731 + 96 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                require mem[_5731 + 96 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                require mem[_5731 + mem[_5731 + 96 len 4], Mask(224, 32, s) >> 32 + 96] <= 4294967296 and mem[_5731 + 96 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_5731 + mem[_5731 + 96 len 4], Mask(224, 32, s) >> 32 + 96]) + 32 <= return_data.size
                mem[_5731 + ceil32(return_data.size) + 96] = mem[_5731 + mem[_5731 + 96 len 4], Mask(224, 32, s) >> 32 + 96]
                _9679 = mem[_5731 + _9162 + 96]
                s = 0
                while s < 32 * _9679:
                    mem[s + _5731 + ceil32(return_data.size) + 128] = mem[s + _5731 + _9162 + 128]
                    s = s + 32
                    continue 
                mem[64] = (32 * _9679) + _5731 + ceil32(return_data.size) + 128
                require mem[_5731 + ceil32(return_data.size) + 96] - 1 < mem[_5731 + ceil32(return_data.size) + 96]
                if mem[(32 * mem[_5731 + ceil32(return_data.size) + 96] - 1) + _5731 + ceil32(return_data.size) + 128] <= t:
                    idx = idx + 1
                    t = t
                    continue 
                idx = idx + 1
                t = mem[(32 * mem[_5731 + ceil32(return_data.size) + 96] - 1) + _5731 + ceil32(return_data.size) + 128]
                continue 
            _3459 = mem[0]
            _3795 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            require 0 < mem[_3795]
            mem[_3795 + 32] = 0x49d68029688eabf473097a2fc38ef61633a3c
            require 1 < mem[_3795]
            mem[_3795 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c
            mem[_3795 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[_3795 + 100] = s
            mem[_3795 + 132] = 64
            mem[_3795 + 164] = mem[_3795]
            u = 0
            while u < 32 * mem[_3795]:
                mem[u + _3795 + 196] = mem[u + _3795 + 32]
                u = u + 32
                continue 
            require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c)
            staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c.getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args s, 64, mem[_3795 + 164 len (32 * mem[_3795]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[_3795 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = _3795 + ceil32(return_data.size) + 96
            require return_data.size >= 32
            _9170 = mem[_3795 + 96 len 4], Mask(224, 32, s) >> 32
            require mem[_3795 + 96 len 4], Mask(224, 32, s) >> 32 <= 4294967296
            require mem[_3795 + 96 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
            require mem[_3795 + mem[_3795 + 96 len 4], Mask(224, 32, s) >> 32 + 96] <= 4294967296 and mem[_3795 + 96 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_3795 + mem[_3795 + 96 len 4], Mask(224, 32, s) >> 32 + 96]) + 32 <= return_data.size
            mem[_3795 + ceil32(return_data.size) + 96] = mem[_3795 + mem[_3795 + 96 len 4], Mask(224, 32, s) >> 32 + 96]
            _9683 = mem[_3795 + _9170 + 96]
            s = 0
            while s < 32 * _9683:
                mem[s + _3795 + ceil32(return_data.size) + 128] = mem[s + _3795 + _9170 + 128]
                s = s + 32
                continue 
            mem[64] = (32 * _9683) + _3795 + ceil32(return_data.size) + 128
            require mem[_3795 + ceil32(return_data.size) + 96] - 1 < mem[_3795 + ceil32(return_data.size) + 96]
            _11679 = mem[(32 * mem[_3795 + ceil32(return_data.size) + 96] - 1) + _3795 + ceil32(return_data.size) + 128]
            mem[(32 * _9683) + _3795 + ceil32(return_data.size) + 128] = 2
            mem[0] = _3459
            mem[(32 * _9683) + _3795 + ceil32(return_data.size) + 160] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c
            mem[(32 * _9683) + _3795 + ceil32(return_data.size) + 192] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
            mem[(32 * _9683) + _3795 + ceil32(return_data.size) + 224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[(32 * _9683) + _3795 + ceil32(return_data.size) + 228] = _11679
            mem[(32 * _9683) + _3795 + ceil32(return_data.size) + 260] = 64
            mem[(32 * _9683) + _3795 + ceil32(return_data.size) + 292] = 2
            s = 0
            while s < 64:
                mem[s + (32 * _9683) + _3795 + ceil32(return_data.size) + 324] = mem[s + (32 * _9683) + _3795 + ceil32(return_data.size) + 160]
                s = s + 32
                continue 
            require ext_code.size(0xe4a4642b19c4d0cba965673cd51422b1eda0a78d)
            staticcall 0xe4a4642b19c4d0cba965673cd51422b1eda0a78d.getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args _11679, Array(len=2, data=mem[(32 * _9683) + _3795 + ceil32(return_data.size) + 324 len 64])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _9683) + _3795 + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * _9683) + _3795 + (2 * ceil32(return_data.size)) + 224
            require return_data.size >= 32
            _12254 = mem[(32 * _9683) + _3795 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _11679) >> 32
            require mem[(32 * _9683) + _3795 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _11679) >> 32 <= 4294967296
            require mem[(32 * _9683) + _3795 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _11679) >> 32 + 32 <= return_data.size
            require mem[(32 * _9683) + _3795 + ceil32(return_data.size) + mem[(32 * _9683) + _3795 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _11679) >> 32 + 224] <= 4294967296 and mem[(32 * _9683) + _3795 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _11679) >> 32 + (32 * mem[(32 * _9683) + _3795 + ceil32(return_data.size) + mem[(32 * _9683) + _3795 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _11679) >> 32 + 224]) + 32 <= return_data.size
            mem[(32 * _9683) + _3795 + (2 * ceil32(return_data.size)) + 224] = mem[(32 * _9683) + _3795 + ceil32(return_data.size) + mem[(32 * _9683) + _3795 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _11679) >> 32 + 224]
            _12294 = mem[(32 * _9683) + _3795 + ceil32(return_data.size) + _12254 + 224]
            s = 0
            while s < 32 * _12294:
                mem[s + (32 * _9683) + _3795 + (2 * ceil32(return_data.size)) + 256] = mem[s + (32 * _9683) + _3795 + ceil32(return_data.size) + _12254 + 256]
                s = s + 32
                continue 
            mem[64] = (32 * _12294) + (32 * _9683) + _3795 + (2 * ceil32(return_data.size)) + 256
            require mem[(32 * _9683) + _3795 + (2 * ceil32(return_data.size)) + 224] - 1 < mem[(32 * _9683) + _3795 + (2 * ceil32(return_data.size)) + 224]
            if mem[(32 * mem[(32 * _9683) + _3795 + (2 * ceil32(return_data.size)) + 224] - 1) + (32 * _9683) + _3795 + (2 * ceil32(return_data.size)) + 256] <= t:
                idx = idx + 1
                t = t
                continue 
            idx = idx + 1
            t = mem[(32 * mem[(32 * _9683) + _3795 + (2 * ceil32(return_data.size)) + 224] - 1) + (32 * _9683) + _3795 + (2 * ceil32(return_data.size)) + 256]
            continue 
    else:
        if 10^6 * sub_7d0b6809 / sub_7d0b6809 != 10^6:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x75536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        mem[0] = msg.sender
        idx = 0
        s = 0
        while idx < 13:
            if not idx:
                mem[mem[64] + 4] = 2
                mem[mem[64] + 36] = 0
                mem[mem[64] + 68] = 10^6 * sub_7d0b6809
                require ext_code.size(0x92d5ebf3593a92888c25c0abef126583d4b5312e)
                staticcall 0x92d5ebf3593a92888c25c0abef126583d4b5312e.get_dy_underlying(int128 arg1, int128 arg2, uint256 arg3) with:
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
                staticcall 0x83e5f18da720119ff363cf63417628eb0e9fd523.get_dy(int128 arg1, int128 arg2, uint256 arg3) with:
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
                _158 = mem[64]
                mem[mem[64]] = 3
                mem[64] = mem[64] + 128
                require 0 < mem[_158]
                mem[_158 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                require 1 < mem[_158]
                mem[_158 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c
                require 2 < mem[_158]
                mem[_158 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                mem[_158 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_158 + 132] = 10^6 * sub_7d0b6809
                mem[_158 + 164] = 64
                mem[_158 + 196] = mem[_158]
                t = 0
                while t < 32 * mem[_158]:
                    mem[t + _158 + 228] = mem[t + _158 + 32]
                    t = t + 32
                    continue 
                require ext_code.size(0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52)
                staticcall 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args 10^6 * sub_7d0b6809, 64, mem[_158 + 196 len (32 * mem[_158]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_158 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _158 + ceil32(return_data.size) + 128
                require return_data.size >= 32
                _2674 = mem[_158 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32
                require mem[_158 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 <= 4294967296
                require mem[_158 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 32 <= return_data.size
                require mem[_158 + mem[_158 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 128] <= 4294967296 and mem[_158 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + (32 * mem[_158 + mem[_158 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 128]) + 32 <= return_data.size
                mem[_158 + ceil32(return_data.size) + 128] = mem[_158 + mem[_158 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 128]
                _3060 = mem[_158 + _2674 + 128]
                t = 0
                while t < 32 * _3060:
                    mem[t + _158 + ceil32(return_data.size) + 160] = mem[t + _158 + _2674 + 160]
                    t = t + 32
                    continue 
                mem[64] = (32 * _3060) + _158 + ceil32(return_data.size) + 160
                require mem[_158 + ceil32(return_data.size) + 128] - 1 < mem[_158 + ceil32(return_data.size) + 128]
                if mem[(32 * mem[_158 + ceil32(return_data.size) + 128] - 1) + _158 + ceil32(return_data.size) + 160] <= s:
                    idx = idx + 1
                    s = s
                    continue 
                idx = idx + 1
                s = mem[(32 * mem[_158 + ceil32(return_data.size) + 128] - 1) + _158 + ceil32(return_data.size) + 160]
                continue 
            if 3 == idx:
                if 2 == idx:
                    _207 = mem[64]
                    mem[mem[64]] = 3
                    mem[64] = mem[64] + 128
                    require 0 < mem[_207]
                    mem[_207 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    require 1 < mem[_207]
                    mem[_207 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c
                    require 2 < mem[_207]
                    mem[_207 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    mem[_207 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_207 + 132] = 10^6 * sub_7d0b6809
                    mem[_207 + 164] = 64
                    mem[_207 + 196] = mem[_207]
                    t = 0
                    while t < 32 * mem[_207]:
                        mem[t + _207 + 228] = mem[t + _207 + 32]
                        t = t + 32
                        continue 
                    require ext_code.size(0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52)
                    staticcall 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args 10^6 * sub_7d0b6809, 64, mem[_207 + 196 len (32 * mem[_207]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_207 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _207 + ceil32(return_data.size) + 128
                    require return_data.size >= 32
                    _2720 = mem[_207 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32
                    require mem[_207 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 <= 4294967296
                    require mem[_207 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 32 <= return_data.size
                    require mem[_207 + mem[_207 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 128] <= 4294967296 and mem[_207 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + (32 * mem[_207 + mem[_207 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 128]) + 32 <= return_data.size
                    mem[_207 + ceil32(return_data.size) + 128] = mem[_207 + mem[_207 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 128]
                    _3083 = mem[_207 + _2720 + 128]
                    t = 0
                    while t < 32 * _3083:
                        mem[t + _207 + ceil32(return_data.size) + 160] = mem[t + _207 + _2720 + 160]
                        t = t + 32
                        continue 
                    mem[64] = (32 * _3083) + _207 + ceil32(return_data.size) + 160
                    require mem[_207 + ceil32(return_data.size) + 128] - 1 < mem[_207 + ceil32(return_data.size) + 128]
                    if mem[(32 * mem[_207 + ceil32(return_data.size) + 128] - 1) + _207 + ceil32(return_data.size) + 160] <= s:
                        idx = idx + 1
                        s = s
                        continue 
                    idx = idx + 1
                    s = mem[(32 * mem[_207 + ceil32(return_data.size) + 128] - 1) + _207 + ceil32(return_data.size) + 160]
                    continue 
                if idx != 3:
                    _203 = mem[64]
                    mem[mem[64]] = 3
                    mem[64] = mem[64] + 128
                    require 0 < mem[_203]
                    mem[_203 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    require 1 < mem[_203]
                    mem[_203 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c
                    require 2 < mem[_203]
                    mem[_203 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    mem[_203 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_203 + 132] = 10^6 * sub_7d0b6809
                    mem[_203 + 164] = 64
                    mem[_203 + 196] = mem[_203]
                    t = 0
                    while t < 32 * mem[_203]:
                        mem[t + _203 + 228] = mem[t + _203 + 32]
                        t = t + 32
                        continue 
                    require ext_code.size(0)
                    staticcall 0x0.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args 10^6 * sub_7d0b6809, 64, mem[_203 + 196 len (32 * mem[_203]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_203 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _203 + ceil32(return_data.size) + 128
                    require return_data.size >= 32
                    _2716 = mem[_203 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32
                    require mem[_203 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 <= 4294967296
                    require mem[_203 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 32 <= return_data.size
                    require mem[_203 + mem[_203 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 128] <= 4294967296 and mem[_203 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + (32 * mem[_203 + mem[_203 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 128]) + 32 <= return_data.size
                    mem[_203 + ceil32(return_data.size) + 128] = mem[_203 + mem[_203 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 128]
                    _3081 = mem[_203 + _2716 + 128]
                    t = 0
                    while t < 32 * _3081:
                        mem[t + _203 + ceil32(return_data.size) + 160] = mem[t + _203 + _2716 + 160]
                        t = t + 32
                        continue 
                    mem[64] = (32 * _3081) + _203 + ceil32(return_data.size) + 160
                    require mem[_203 + ceil32(return_data.size) + 128] - 1 < mem[_203 + ceil32(return_data.size) + 128]
                    if mem[(32 * mem[_203 + ceil32(return_data.size) + 128] - 1) + _203 + ceil32(return_data.size) + 160] <= s:
                        idx = idx + 1
                        s = s
                        continue 
                    idx = idx + 1
                    s = mem[(32 * mem[_203 + ceil32(return_data.size) + 128] - 1) + _203 + ceil32(return_data.size) + 160]
                    continue 
                _297 = mem[64]
                mem[mem[64]] = 3
                mem[64] = mem[64] + 128
                require 0 < mem[_297]
                mem[_297 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                require 1 < mem[_297]
                mem[_297 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c
                require 2 < mem[_297]
                mem[_297 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                mem[_297 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_297 + 132] = 10^6 * sub_7d0b6809
                mem[_297 + 164] = 64
                mem[_297 + 196] = mem[_297]
                t = 0
                while t < 32 * mem[_297]:
                    mem[t + _297 + 228] = mem[t + _297 + 32]
                    t = t + 32
                    continue 
                require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c)
                staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args 10^6 * sub_7d0b6809, 64, mem[_297 + 196 len (32 * mem[_297]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_297 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _297 + ceil32(return_data.size) + 128
                require return_data.size >= 32
                _2718 = mem[_297 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32
                require mem[_297 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 <= 4294967296
                require mem[_297 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 32 <= return_data.size
                require mem[_297 + mem[_297 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 128] <= 4294967296 and mem[_297 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + (32 * mem[_297 + mem[_297 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 128]) + 32 <= return_data.size
                mem[_297 + ceil32(return_data.size) + 128] = mem[_297 + mem[_297 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 128]
                _3082 = mem[_297 + _2718 + 128]
                t = 0
                while t < 32 * _3082:
                    mem[t + _297 + ceil32(return_data.size) + 160] = mem[t + _297 + _2718 + 160]
                    t = t + 32
                    continue 
                mem[64] = (32 * _3082) + _297 + ceil32(return_data.size) + 160
                require mem[_297 + ceil32(return_data.size) + 128] - 1 < mem[_297 + ceil32(return_data.size) + 128]
                if mem[(32 * mem[_297 + ceil32(return_data.size) + 128] - 1) + _297 + ceil32(return_data.size) + 160] <= s:
                    idx = idx + 1
                    s = s
                    continue 
                idx = idx + 1
                s = mem[(32 * mem[_297 + ceil32(return_data.size) + 128] - 1) + _297 + ceil32(return_data.size) + 160]
                continue 
            if 4 == idx:
                mem[mem[64] + 4] = 0
                mem[mem[64] + 36] = 2
                mem[mem[64] + 68] = 10^6 * sub_7d0b6809
                require ext_code.size(0x3a1659ddcf2339be3aea159ca010979fb49155ff)
                staticcall 0x3a1659ddcf2339be3aea159ca010979fb49155ff.get_dy(uint256 arg1, uint256 arg2, uint256 arg3) with:
                        gas gas_remaining wei
                       args 0, 2, 10^6 * sub_7d0b6809
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                _447 = mem[64]
                mem[mem[64]] = 3
                mem[64] = mem[64] + 128
                require 0 < mem[_447]
                mem[_447 + 32] = 0x74b23882a30290451a17c44f4f05243b6b58c76d
                require 1 < mem[_447]
                mem[_447 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c
                require 2 < mem[_447]
                mem[_447 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                mem[_447 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_447 + 132] = ext_call.return_data[0]
                mem[_447 + 164] = 64
                mem[_447 + 196] = mem[_447]
                t = 0
                while t < 32 * mem[_447]:
                    mem[t + _447 + 228] = mem[t + _447 + 32]
                    t = t + 32
                    continue 
                require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c)
                staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args ext_call.return_data[0], 64, mem[_447 + 196 len (32 * mem[_447]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_447 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _447 + ceil32(return_data.size) + 128
                require return_data.size >= 32
                _2712 = mem[_447 + 128 len 4], ext_call.return_data[0 len 28]
                require mem[_447 + 128 len 4], ext_call.return_data[0 len 28] <= 4294967296
                require mem[_447 + 128 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                require mem[_447 + mem[_447 + 128 len 4], ext_call.return_data[0 len 28] + 128] <= 4294967296 and mem[_447 + 128 len 4], ext_call.return_data[0 len 28] + (32 * mem[_447 + mem[_447 + 128 len 4], ext_call.return_data[0 len 28] + 128]) + 32 <= return_data.size
                mem[_447 + ceil32(return_data.size) + 128] = mem[_447 + mem[_447 + 128 len 4], ext_call.return_data[0 len 28] + 128]
                _3079 = mem[_447 + _2712 + 128]
                t = 0
                while t < 32 * _3079:
                    mem[t + _447 + ceil32(return_data.size) + 160] = mem[t + _447 + _2712 + 160]
                    t = t + 32
                    continue 
                mem[64] = (32 * _3079) + _447 + ceil32(return_data.size) + 160
                require mem[_447 + ceil32(return_data.size) + 128] - 1 < mem[_447 + ceil32(return_data.size) + 128]
                if mem[(32 * mem[_447 + ceil32(return_data.size) + 128] - 1) + _447 + ceil32(return_data.size) + 160] <= s:
                    idx = idx + 1
                    s = s
                    continue 
                idx = idx + 1
                s = mem[(32 * mem[_447 + ceil32(return_data.size) + 128] - 1) + _447 + ceil32(return_data.size) + 160]
                continue 
            if idx != 5:
                if 6 == idx:
                    _635 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    require 0 < mem[_635]
                    mem[_635 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    require 1 < mem[_635]
                    mem[_635 + 64] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    mem[_635 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_635 + 100] = 10^6 * sub_7d0b6809
                    mem[_635 + 132] = 64
                    mem[_635 + 164] = mem[_635]
                    t = 0
                    while t < 32 * mem[_635]:
                        mem[t + _635 + 196] = mem[t + _635 + 32]
                        t = t + 32
                        continue 
                    require ext_code.size(0x845e76a8691423fbc4ecb8dd77556cb61c09ee25)
                    staticcall 0x845e76a8691423fbc4ecb8dd77556cb61c09ee25.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args 10^6 * sub_7d0b6809, 64, mem[_635 + 164 len (32 * mem[_635]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_635 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _635 + ceil32(return_data.size) + 96
                    require return_data.size >= 32
                    _2676 = mem[_635 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32
                    require mem[_635 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 <= 4294967296
                    require mem[_635 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 32 <= return_data.size
                    require mem[_635 + mem[_635 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 96] <= 4294967296 and mem[_635 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + (32 * mem[_635 + mem[_635 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 96]) + 32 <= return_data.size
                    mem[_635 + ceil32(return_data.size) + 96] = mem[_635 + mem[_635 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 96]
                    _3061 = mem[_635 + _2676 + 96]
                    t = 0
                    while t < 32 * _3061:
                        mem[t + _635 + ceil32(return_data.size) + 128] = mem[t + _635 + _2676 + 128]
                        t = t + 32
                        continue 
                    mem[64] = (32 * _3061) + _635 + ceil32(return_data.size) + 128
                    require mem[_635 + ceil32(return_data.size) + 96] - 1 < mem[_635 + ceil32(return_data.size) + 96]
                    if mem[(32 * mem[_635 + ceil32(return_data.size) + 96] - 1) + _635 + ceil32(return_data.size) + 128] <= s:
                        idx = idx + 1
                        s = s
                        continue 
                    idx = idx + 1
                    s = mem[(32 * mem[_635 + ceil32(return_data.size) + 96] - 1) + _635 + ceil32(return_data.size) + 128]
                    continue 
                if 7 == idx:
                    if 6 == idx:
                        _679 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        require 0 < mem[_679]
                        mem[_679 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                        require 1 < mem[_679]
                        mem[_679 + 64] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                        mem[_679 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[_679 + 100] = 10^6 * sub_7d0b6809
                        mem[_679 + 132] = 64
                        mem[_679 + 164] = mem[_679]
                        t = 0
                        while t < 32 * mem[_679]:
                            mem[t + _679 + 196] = mem[t + _679 + 32]
                            t = t + 32
                            continue 
                        require ext_code.size(0x845e76a8691423fbc4ecb8dd77556cb61c09ee25)
                        staticcall 0x845e76a8691423fbc4ecb8dd77556cb61c09ee25.getAmountsOut(uint256 arg1, address[] arg2) with:
                                gas gas_remaining wei
                               args 10^6 * sub_7d0b6809, 64, mem[_679 + 164 len (32 * mem[_679]) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_679 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = _679 + ceil32(return_data.size) + 96
                        require return_data.size >= 32
                        _2686 = mem[_679 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32
                        require mem[_679 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 <= 4294967296
                        require mem[_679 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 32 <= return_data.size
                        require mem[_679 + mem[_679 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 96] <= 4294967296 and mem[_679 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + (32 * mem[_679 + mem[_679 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 96]) + 32 <= return_data.size
                        mem[_679 + ceil32(return_data.size) + 96] = mem[_679 + mem[_679 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 96]
                        _3066 = mem[_679 + _2686 + 96]
                        t = 0
                        while t < 32 * _3066:
                            mem[t + _679 + ceil32(return_data.size) + 128] = mem[t + _679 + _2686 + 128]
                            t = t + 32
                            continue 
                        mem[64] = (32 * _3066) + _679 + ceil32(return_data.size) + 128
                        require mem[_679 + ceil32(return_data.size) + 96] - 1 < mem[_679 + ceil32(return_data.size) + 96]
                        if mem[(32 * mem[_679 + ceil32(return_data.size) + 96] - 1) + _679 + ceil32(return_data.size) + 128] <= s:
                            idx = idx + 1
                            s = s
                            continue 
                        idx = idx + 1
                        s = mem[(32 * mem[_679 + ceil32(return_data.size) + 96] - 1) + _679 + ceil32(return_data.size) + 128]
                        continue 
                    if 7 == idx:
                        _721 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        require 0 < mem[_721]
                        mem[_721 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                        require 1 < mem[_721]
                        mem[_721 + 64] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                        mem[_721 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[_721 + 100] = 10^6 * sub_7d0b6809
                        mem[_721 + 132] = 64
                        mem[_721 + 164] = mem[_721]
                        t = 0
                        while t < 32 * mem[_721]:
                            mem[t + _721 + 196] = mem[t + _721 + 32]
                            t = t + 32
                            continue 
                        require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c)
                        staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c.getAmountsOut(uint256 arg1, address[] arg2) with:
                                gas gas_remaining wei
                               args 10^6 * sub_7d0b6809, 64, mem[_721 + 164 len (32 * mem[_721]) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_721 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = _721 + ceil32(return_data.size) + 96
                        require return_data.size >= 32
                        _2684 = mem[_721 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32
                        require mem[_721 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 <= 4294967296
                        require mem[_721 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 32 <= return_data.size
                        require mem[_721 + mem[_721 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 96] <= 4294967296 and mem[_721 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + (32 * mem[_721 + mem[_721 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 96]) + 32 <= return_data.size
                        mem[_721 + ceil32(return_data.size) + 96] = mem[_721 + mem[_721 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 96]
                        _3065 = mem[_721 + _2684 + 96]
                        t = 0
                        while t < 32 * _3065:
                            mem[t + _721 + ceil32(return_data.size) + 128] = mem[t + _721 + _2684 + 128]
                            t = t + 32
                            continue 
                        mem[64] = (32 * _3065) + _721 + ceil32(return_data.size) + 128
                        require mem[_721 + ceil32(return_data.size) + 96] - 1 < mem[_721 + ceil32(return_data.size) + 96]
                        if mem[(32 * mem[_721 + ceil32(return_data.size) + 96] - 1) + _721 + ceil32(return_data.size) + 128] <= s:
                            idx = idx + 1
                            s = s
                            continue 
                        idx = idx + 1
                        s = mem[(32 * mem[_721 + ceil32(return_data.size) + 96] - 1) + _721 + ceil32(return_data.size) + 128]
                        continue 
                    if 8 == idx:
                        _817 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        require 0 < mem[_817]
                        mem[_817 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                        require 1 < mem[_817]
                        mem[_817 + 64] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                        mem[_817 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[_817 + 100] = 10^6 * sub_7d0b6809
                        mem[_817 + 132] = 64
                        mem[_817 + 164] = mem[_817]
                        t = 0
                        while t < 32 * mem[_817]:
                            mem[t + _817 + 196] = mem[t + _817 + 32]
                            t = t + 32
                            continue 
                        require ext_code.size(0x6b3d631b87fe27af29efec61d2ab8ce4d621ccbf)
                        staticcall 0x6b3d631b87fe27af29efec61d2ab8ce4d621ccbf.getAmountsOut(uint256 arg1, address[] arg2) with:
                                gas gas_remaining wei
                               args 10^6 * sub_7d0b6809, 64, mem[_817 + 164 len (32 * mem[_817]) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_817 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = _817 + ceil32(return_data.size) + 96
                        require return_data.size >= 32
                        _2682 = mem[_817 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32
                        require mem[_817 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 <= 4294967296
                        require mem[_817 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 32 <= return_data.size
                        require mem[_817 + mem[_817 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 96] <= 4294967296 and mem[_817 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + (32 * mem[_817 + mem[_817 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 96]) + 32 <= return_data.size
                        mem[_817 + ceil32(return_data.size) + 96] = mem[_817 + mem[_817 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 96]
                        _3064 = mem[_817 + _2682 + 96]
                        t = 0
                        while t < 32 * _3064:
                            mem[t + _817 + ceil32(return_data.size) + 128] = mem[t + _817 + _2682 + 128]
                            t = t + 32
                            continue 
                        mem[64] = (32 * _3064) + _817 + ceil32(return_data.size) + 128
                        require mem[_817 + ceil32(return_data.size) + 96] - 1 < mem[_817 + ceil32(return_data.size) + 96]
                        if mem[(32 * mem[_817 + ceil32(return_data.size) + 96] - 1) + _817 + ceil32(return_data.size) + 128] <= s:
                            idx = idx + 1
                            s = s
                            continue 
                        idx = idx + 1
                        s = mem[(32 * mem[_817 + ceil32(return_data.size) + 96] - 1) + _817 + ceil32(return_data.size) + 128]
                        continue 
                    if idx != 9:
                        _815 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        require 0 < mem[_815]
                        mem[_815 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                        require 1 < mem[_815]
                        mem[_815 + 64] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                        mem[_815 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[_815 + 100] = 10^6 * sub_7d0b6809
                        mem[_815 + 132] = 64
                        mem[_815 + 164] = mem[_815]
                        t = 0
                        while t < 32 * mem[_815]:
                            mem[t + _815 + 196] = mem[t + _815 + 32]
                            t = t + 32
                            continue 
                        require ext_code.size(0)
                        staticcall 0x0.getAmountsOut(uint256 arg1, address[] arg2) with:
                                gas gas_remaining wei
                               args 10^6 * sub_7d0b6809, 64, mem[_815 + 164 len (32 * mem[_815]) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_815 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = _815 + ceil32(return_data.size) + 96
                        require return_data.size >= 32
                        _2678 = mem[_815 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32
                        require mem[_815 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 <= 4294967296
                        require mem[_815 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 32 <= return_data.size
                        require mem[_815 + mem[_815 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 96] <= 4294967296 and mem[_815 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + (32 * mem[_815 + mem[_815 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 96]) + 32 <= return_data.size
                        mem[_815 + ceil32(return_data.size) + 96] = mem[_815 + mem[_815 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 96]
                        _3062 = mem[_815 + _2678 + 96]
                        t = 0
                        while t < 32 * _3062:
                            mem[t + _815 + ceil32(return_data.size) + 128] = mem[t + _815 + _2678 + 128]
                            t = t + 32
                            continue 
                        mem[64] = (32 * _3062) + _815 + ceil32(return_data.size) + 128
                        require mem[_815 + ceil32(return_data.size) + 96] - 1 < mem[_815 + ceil32(return_data.size) + 96]
                        if mem[(32 * mem[_815 + ceil32(return_data.size) + 96] - 1) + _815 + ceil32(return_data.size) + 128] <= s:
                            idx = idx + 1
                            s = s
                            continue 
                        idx = idx + 1
                        s = mem[(32 * mem[_815 + ceil32(return_data.size) + 96] - 1) + _815 + ceil32(return_data.size) + 128]
                        continue 
                    _914 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    require 0 < mem[_914]
                    mem[_914 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    require 1 < mem[_914]
                    mem[_914 + 64] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    mem[_914 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_914 + 100] = 10^6 * sub_7d0b6809
                    mem[_914 + 132] = 64
                    mem[_914 + 164] = mem[_914]
                    t = 0
                    while t < 32 * mem[_914]:
                        mem[t + _914 + 196] = mem[t + _914 + 32]
                        t = t + 32
                        continue 
                    require ext_code.size(0x2724b9497b2cf3325c6be3ea430b3cec34b5ef2d)
                    staticcall 0x2724b9497b2cf3325c6be3ea430b3cec34b5ef2d.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args 10^6 * sub_7d0b6809, 64, mem[_914 + 164 len (32 * mem[_914]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_914 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _914 + ceil32(return_data.size) + 96
                    require return_data.size >= 32
                    _2680 = mem[_914 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32
                    require mem[_914 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 <= 4294967296
                    require mem[_914 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 32 <= return_data.size
                    require mem[_914 + mem[_914 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 96] <= 4294967296 and mem[_914 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + (32 * mem[_914 + mem[_914 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 96]) + 32 <= return_data.size
                    mem[_914 + ceil32(return_data.size) + 96] = mem[_914 + mem[_914 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 96]
                    _3063 = mem[_914 + _2680 + 96]
                    t = 0
                    while t < 32 * _3063:
                        mem[t + _914 + ceil32(return_data.size) + 128] = mem[t + _914 + _2680 + 128]
                        t = t + 32
                        continue 
                    mem[64] = (32 * _3063) + _914 + ceil32(return_data.size) + 128
                    require mem[_914 + ceil32(return_data.size) + 96] - 1 < mem[_914 + ceil32(return_data.size) + 96]
                    if mem[(32 * mem[_914 + ceil32(return_data.size) + 96] - 1) + _914 + ceil32(return_data.size) + 128] <= s:
                        idx = idx + 1
                        s = s
                        continue 
                    idx = idx + 1
                    s = mem[(32 * mem[_914 + ceil32(return_data.size) + 96] - 1) + _914 + ceil32(return_data.size) + 128]
                    continue 
                if 8 == idx:
                    if 6 == idx:
                        _726 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        require 0 < mem[_726]
                        mem[_726 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                        require 1 < mem[_726]
                        mem[_726 + 64] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                        mem[_726 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[_726 + 100] = 10^6 * sub_7d0b6809
                        mem[_726 + 132] = 64
                        mem[_726 + 164] = mem[_726]
                        t = 0
                        while t < 32 * mem[_726]:
                            mem[t + _726 + 196] = mem[t + _726 + 32]
                            t = t + 32
                            continue 
                        require ext_code.size(0x845e76a8691423fbc4ecb8dd77556cb61c09ee25)
                        staticcall 0x845e76a8691423fbc4ecb8dd77556cb61c09ee25.getAmountsOut(uint256 arg1, address[] arg2) with:
                                gas gas_remaining wei
                               args 10^6 * sub_7d0b6809, 64, mem[_726 + 164 len (32 * mem[_726]) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_726 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = _726 + ceil32(return_data.size) + 96
                        require return_data.size >= 32
                        _2696 = mem[_726 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32
                        require mem[_726 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 <= 4294967296
                        require mem[_726 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 32 <= return_data.size
                        require mem[_726 + mem[_726 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 96] <= 4294967296 and mem[_726 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + (32 * mem[_726 + mem[_726 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 96]) + 32 <= return_data.size
                        mem[_726 + ceil32(return_data.size) + 96] = mem[_726 + mem[_726 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 96]
                        _3071 = mem[_726 + _2696 + 96]
                        t = 0
                        while t < 32 * _3071:
                            mem[t + _726 + ceil32(return_data.size) + 128] = mem[t + _726 + _2696 + 128]
                            t = t + 32
                            continue 
                        mem[64] = (32 * _3071) + _726 + ceil32(return_data.size) + 128
                        require mem[_726 + ceil32(return_data.size) + 96] - 1 < mem[_726 + ceil32(return_data.size) + 96]
                        if mem[(32 * mem[_726 + ceil32(return_data.size) + 96] - 1) + _726 + ceil32(return_data.size) + 128] <= s:
                            idx = idx + 1
                            s = s
                            continue 
                        idx = idx + 1
                        s = mem[(32 * mem[_726 + ceil32(return_data.size) + 96] - 1) + _726 + ceil32(return_data.size) + 128]
                        continue 
                    if 7 == idx:
                        _823 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        require 0 < mem[_823]
                        mem[_823 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                        require 1 < mem[_823]
                        mem[_823 + 64] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                        mem[_823 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[_823 + 100] = 10^6 * sub_7d0b6809
                        mem[_823 + 132] = 64
                        mem[_823 + 164] = mem[_823]
                        t = 0
                        while t < 32 * mem[_823]:
                            mem[t + _823 + 196] = mem[t + _823 + 32]
                            t = t + 32
                            continue 
                        require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c)
                        staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c.getAmountsOut(uint256 arg1, address[] arg2) with:
                                gas gas_remaining wei
                               args 10^6 * sub_7d0b6809, 64, mem[_823 + 164 len (32 * mem[_823]) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_823 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = _823 + ceil32(return_data.size) + 96
                        require return_data.size >= 32
                        _2694 = mem[_823 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32
                        require mem[_823 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 <= 4294967296
                        require mem[_823 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 32 <= return_data.size
                        require mem[_823 + mem[_823 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 96] <= 4294967296 and mem[_823 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + (32 * mem[_823 + mem[_823 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 96]) + 32 <= return_data.size
                        mem[_823 + ceil32(return_data.size) + 96] = mem[_823 + mem[_823 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 96]
                        _3070 = mem[_823 + _2694 + 96]
                        t = 0
                        while t < 32 * _3070:
                            mem[t + _823 + ceil32(return_data.size) + 128] = mem[t + _823 + _2694 + 128]
                            t = t + 32
                            continue 
                        mem[64] = (32 * _3070) + _823 + ceil32(return_data.size) + 128
                        require mem[_823 + ceil32(return_data.size) + 96] - 1 < mem[_823 + ceil32(return_data.size) + 96]
                        if mem[(32 * mem[_823 + ceil32(return_data.size) + 96] - 1) + _823 + ceil32(return_data.size) + 128] <= s:
                            idx = idx + 1
                            s = s
                            continue 
                        idx = idx + 1
                        s = mem[(32 * mem[_823 + ceil32(return_data.size) + 96] - 1) + _823 + ceil32(return_data.size) + 128]
                        continue 
                    if 8 == idx:
                        _922 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        require 0 < mem[_922]
                        mem[_922 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                        require 1 < mem[_922]
                        mem[_922 + 64] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                        mem[_922 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[_922 + 100] = 10^6 * sub_7d0b6809
                        mem[_922 + 132] = 64
                        mem[_922 + 164] = mem[_922]
                        t = 0
                        while t < 32 * mem[_922]:
                            mem[t + _922 + 196] = mem[t + _922 + 32]
                            t = t + 32
                            continue 
                        require ext_code.size(0x6b3d631b87fe27af29efec61d2ab8ce4d621ccbf)
                        staticcall 0x6b3d631b87fe27af29efec61d2ab8ce4d621ccbf.getAmountsOut(uint256 arg1, address[] arg2) with:
                                gas gas_remaining wei
                               args 10^6 * sub_7d0b6809, 64, mem[_922 + 164 len (32 * mem[_922]) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_922 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = _922 + ceil32(return_data.size) + 96
                        require return_data.size >= 32
                        _2692 = mem[_922 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32
                        require mem[_922 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 <= 4294967296
                        require mem[_922 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 32 <= return_data.size
                        require mem[_922 + mem[_922 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 96] <= 4294967296 and mem[_922 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + (32 * mem[_922 + mem[_922 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 96]) + 32 <= return_data.size
                        mem[_922 + ceil32(return_data.size) + 96] = mem[_922 + mem[_922 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 96]
                        _3069 = mem[_922 + _2692 + 96]
                        t = 0
                        while t < 32 * _3069:
                            mem[t + _922 + ceil32(return_data.size) + 128] = mem[t + _922 + _2692 + 128]
                            t = t + 32
                            continue 
                        mem[64] = (32 * _3069) + _922 + ceil32(return_data.size) + 128
                        require mem[_922 + ceil32(return_data.size) + 96] - 1 < mem[_922 + ceil32(return_data.size) + 96]
                        if mem[(32 * mem[_922 + ceil32(return_data.size) + 96] - 1) + _922 + ceil32(return_data.size) + 128] <= s:
                            idx = idx + 1
                            s = s
                            continue 
                        idx = idx + 1
                        s = mem[(32 * mem[_922 + ceil32(return_data.size) + 96] - 1) + _922 + ceil32(return_data.size) + 128]
                        continue 
                    if idx != 9:
                        _920 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        require 0 < mem[_920]
                        mem[_920 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                        require 1 < mem[_920]
                        mem[_920 + 64] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                        mem[_920 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[_920 + 100] = 10^6 * sub_7d0b6809
                        mem[_920 + 132] = 64
                        mem[_920 + 164] = mem[_920]
                        t = 0
                        while t < 32 * mem[_920]:
                            mem[t + _920 + 196] = mem[t + _920 + 32]
                            t = t + 32
                            continue 
                        require ext_code.size(0)
                        staticcall 0x0.getAmountsOut(uint256 arg1, address[] arg2) with:
                                gas gas_remaining wei
                               args 10^6 * sub_7d0b6809, 64, mem[_920 + 164 len (32 * mem[_920]) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_920 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = _920 + ceil32(return_data.size) + 96
                        require return_data.size >= 32
                        _2688 = mem[_920 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32
                        require mem[_920 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 <= 4294967296
                        require mem[_920 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 32 <= return_data.size
                        require mem[_920 + mem[_920 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 96] <= 4294967296 and mem[_920 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + (32 * mem[_920 + mem[_920 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 96]) + 32 <= return_data.size
                        mem[_920 + ceil32(return_data.size) + 96] = mem[_920 + mem[_920 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 96]
                        _3067 = mem[_920 + _2688 + 96]
                        t = 0
                        while t < 32 * _3067:
                            mem[t + _920 + ceil32(return_data.size) + 128] = mem[t + _920 + _2688 + 128]
                            t = t + 32
                            continue 
                        mem[64] = (32 * _3067) + _920 + ceil32(return_data.size) + 128
                        require mem[_920 + ceil32(return_data.size) + 96] - 1 < mem[_920 + ceil32(return_data.size) + 96]
                        if mem[(32 * mem[_920 + ceil32(return_data.size) + 96] - 1) + _920 + ceil32(return_data.size) + 128] <= s:
                            idx = idx + 1
                            s = s
                            continue 
                        idx = idx + 1
                        s = mem[(32 * mem[_920 + ceil32(return_data.size) + 96] - 1) + _920 + ceil32(return_data.size) + 128]
                        continue 
                    _1056 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    require 0 < mem[_1056]
                    mem[_1056 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    require 1 < mem[_1056]
                    mem[_1056 + 64] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    mem[_1056 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_1056 + 100] = 10^6 * sub_7d0b6809
                    mem[_1056 + 132] = 64
                    mem[_1056 + 164] = mem[_1056]
                    t = 0
                    while t < 32 * mem[_1056]:
                        mem[t + _1056 + 196] = mem[t + _1056 + 32]
                        t = t + 32
                        continue 
                    require ext_code.size(0x2724b9497b2cf3325c6be3ea430b3cec34b5ef2d)
                    staticcall 0x2724b9497b2cf3325c6be3ea430b3cec34b5ef2d.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args 10^6 * sub_7d0b6809, 64, mem[_1056 + 164 len (32 * mem[_1056]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_1056 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _1056 + ceil32(return_data.size) + 96
                    require return_data.size >= 32
                    _2690 = mem[_1056 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32
                    require mem[_1056 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 <= 4294967296
                    require mem[_1056 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 32 <= return_data.size
                    require mem[_1056 + mem[_1056 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 96] <= 4294967296 and mem[_1056 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + (32 * mem[_1056 + mem[_1056 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 96]) + 32 <= return_data.size
                    mem[_1056 + ceil32(return_data.size) + 96] = mem[_1056 + mem[_1056 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 96]
                    _3068 = mem[_1056 + _2690 + 96]
                    t = 0
                    while t < 32 * _3068:
                        mem[t + _1056 + ceil32(return_data.size) + 128] = mem[t + _1056 + _2690 + 128]
                        t = t + 32
                        continue 
                    mem[64] = (32 * _3068) + _1056 + ceil32(return_data.size) + 128
                    require mem[_1056 + ceil32(return_data.size) + 96] - 1 < mem[_1056 + ceil32(return_data.size) + 96]
                    if mem[(32 * mem[_1056 + ceil32(return_data.size) + 96] - 1) + _1056 + ceil32(return_data.size) + 128] <= s:
                        idx = idx + 1
                        s = s
                        continue 
                    idx = idx + 1
                    s = mem[(32 * mem[_1056 + ceil32(return_data.size) + 96] - 1) + _1056 + ceil32(return_data.size) + 128]
                    continue 
                if idx != 9:
                    if 10 == idx:
                        mem[mem[64] + 4] = 0
                        mem[mem[64] + 36] = 1
                        mem[mem[64] + 68] = 10^6 * sub_7d0b6809
                        require ext_code.size(0x952bda8a83c3d5f398a686bb4e8c6dd90072d523)
                        staticcall 0x952bda8a83c3d5f398a686bb4e8c6dd90072d523.calculateSwap(uint8 arg1, uint8 arg2, uint256 arg3) with:
                                gas gas_remaining wei
                               args 0, 1, 10^6 * sub_7d0b6809
                    else:
                        if 11 == idx:
                            mem[mem[64] + 4] = 1
                            mem[mem[64] + 36] = 2
                            mem[mem[64] + 68] = 10^6 * sub_7d0b6809
                            require ext_code.size(0x80f6aed32fc474dd5717105dba5ea57268f46eb)
                            staticcall 0x80f6aed32fc474dd5717105dba5ea57268f46eb.calculateSwap(uint8 arg1, uint8 arg2, uint256 arg3) with:
                                    gas gas_remaining wei
                                   args 1, 2, 10^6 * sub_7d0b6809
                        else:
                            if idx != 12:
                                if 10^6 * sub_7d0b6809 <= s:
                                    idx = idx + 1
                                    s = s
                                    continue 
                                idx = idx + 1
                                s = 10^6 * sub_7d0b6809
                                continue 
                            mem[mem[64] + 4] = 2
                            mem[mem[64] + 36] = 1
                            mem[mem[64] + 68] = 10^6 * sub_7d0b6809
                            require ext_code.size(0x2dd7c9371965472e5a5fd28fbe165007c61439e1)
                            staticcall 0x2dd7c9371965472e5a5fd28fbe165007c61439e1.get_dy(int128 arg1, int128 arg2, uint256 arg3) with:
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
                if 6 == idx:
                    _832 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    require 0 < mem[_832]
                    mem[_832 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    require 1 < mem[_832]
                    mem[_832 + 64] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    mem[_832 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_832 + 100] = 10^6 * sub_7d0b6809
                    mem[_832 + 132] = 64
                    mem[_832 + 164] = mem[_832]
                    t = 0
                    while t < 32 * mem[_832]:
                        mem[t + _832 + 196] = mem[t + _832 + 32]
                        t = t + 32
                        continue 
                    require ext_code.size(0x845e76a8691423fbc4ecb8dd77556cb61c09ee25)
                    staticcall 0x845e76a8691423fbc4ecb8dd77556cb61c09ee25.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args 10^6 * sub_7d0b6809, 64, mem[_832 + 164 len (32 * mem[_832]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_832 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _832 + ceil32(return_data.size) + 96
                    require return_data.size >= 32
                    _2706 = mem[_832 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32
                    require mem[_832 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 <= 4294967296
                    require mem[_832 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 32 <= return_data.size
                    require mem[_832 + mem[_832 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 96] <= 4294967296 and mem[_832 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + (32 * mem[_832 + mem[_832 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 96]) + 32 <= return_data.size
                    mem[_832 + ceil32(return_data.size) + 96] = mem[_832 + mem[_832 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 96]
                    _3076 = mem[_832 + _2706 + 96]
                    t = 0
                    while t < 32 * _3076:
                        mem[t + _832 + ceil32(return_data.size) + 128] = mem[t + _832 + _2706 + 128]
                        t = t + 32
                        continue 
                    mem[64] = (32 * _3076) + _832 + ceil32(return_data.size) + 128
                    require mem[_832 + ceil32(return_data.size) + 96] - 1 < mem[_832 + ceil32(return_data.size) + 96]
                    if mem[(32 * mem[_832 + ceil32(return_data.size) + 96] - 1) + _832 + ceil32(return_data.size) + 128] <= s:
                        idx = idx + 1
                        s = s
                        continue 
                    idx = idx + 1
                    s = mem[(32 * mem[_832 + ceil32(return_data.size) + 96] - 1) + _832 + ceil32(return_data.size) + 128]
                    continue 
                if 7 == idx:
                    _936 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    require 0 < mem[_936]
                    mem[_936 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    require 1 < mem[_936]
                    mem[_936 + 64] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    mem[_936 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_936 + 100] = 10^6 * sub_7d0b6809
                    mem[_936 + 132] = 64
                    mem[_936 + 164] = mem[_936]
                    t = 0
                    while t < 32 * mem[_936]:
                        mem[t + _936 + 196] = mem[t + _936 + 32]
                        t = t + 32
                        continue 
                    require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c)
                    staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args 10^6 * sub_7d0b6809, 64, mem[_936 + 164 len (32 * mem[_936]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_936 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _936 + ceil32(return_data.size) + 96
                    require return_data.size >= 32
                    _2704 = mem[_936 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32
                    require mem[_936 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 <= 4294967296
                    require mem[_936 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 32 <= return_data.size
                    require mem[_936 + mem[_936 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 96] <= 4294967296 and mem[_936 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + (32 * mem[_936 + mem[_936 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 96]) + 32 <= return_data.size
                    mem[_936 + ceil32(return_data.size) + 96] = mem[_936 + mem[_936 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 96]
                    _3075 = mem[_936 + _2704 + 96]
                    t = 0
                    while t < 32 * _3075:
                        mem[t + _936 + ceil32(return_data.size) + 128] = mem[t + _936 + _2704 + 128]
                        t = t + 32
                        continue 
                    mem[64] = (32 * _3075) + _936 + ceil32(return_data.size) + 128
                    require mem[_936 + ceil32(return_data.size) + 96] - 1 < mem[_936 + ceil32(return_data.size) + 96]
                    if mem[(32 * mem[_936 + ceil32(return_data.size) + 96] - 1) + _936 + ceil32(return_data.size) + 128] <= s:
                        idx = idx + 1
                        s = s
                        continue 
                    idx = idx + 1
                    s = mem[(32 * mem[_936 + ceil32(return_data.size) + 96] - 1) + _936 + ceil32(return_data.size) + 128]
                    continue 
                if 8 == idx:
                    _1067 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    require 0 < mem[_1067]
                    mem[_1067 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    require 1 < mem[_1067]
                    mem[_1067 + 64] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    mem[_1067 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_1067 + 100] = 10^6 * sub_7d0b6809
                    mem[_1067 + 132] = 64
                    mem[_1067 + 164] = mem[_1067]
                    t = 0
                    while t < 32 * mem[_1067]:
                        mem[t + _1067 + 196] = mem[t + _1067 + 32]
                        t = t + 32
                        continue 
                    require ext_code.size(0x6b3d631b87fe27af29efec61d2ab8ce4d621ccbf)
                    staticcall 0x6b3d631b87fe27af29efec61d2ab8ce4d621ccbf.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args 10^6 * sub_7d0b6809, 64, mem[_1067 + 164 len (32 * mem[_1067]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_1067 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _1067 + ceil32(return_data.size) + 96
                    require return_data.size >= 32
                    _2702 = mem[_1067 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32
                    require mem[_1067 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 <= 4294967296
                    require mem[_1067 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 32 <= return_data.size
                    require mem[_1067 + mem[_1067 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 96] <= 4294967296 and mem[_1067 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + (32 * mem[_1067 + mem[_1067 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 96]) + 32 <= return_data.size
                    mem[_1067 + ceil32(return_data.size) + 96] = mem[_1067 + mem[_1067 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 96]
                    _3074 = mem[_1067 + _2702 + 96]
                    t = 0
                    while t < 32 * _3074:
                        mem[t + _1067 + ceil32(return_data.size) + 128] = mem[t + _1067 + _2702 + 128]
                        t = t + 32
                        continue 
                    mem[64] = (32 * _3074) + _1067 + ceil32(return_data.size) + 128
                    require mem[_1067 + ceil32(return_data.size) + 96] - 1 < mem[_1067 + ceil32(return_data.size) + 96]
                    if mem[(32 * mem[_1067 + ceil32(return_data.size) + 96] - 1) + _1067 + ceil32(return_data.size) + 128] <= s:
                        idx = idx + 1
                        s = s
                        continue 
                    idx = idx + 1
                    s = mem[(32 * mem[_1067 + ceil32(return_data.size) + 96] - 1) + _1067 + ceil32(return_data.size) + 128]
                    continue 
                if idx != 9:
                    _1065 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    require 0 < mem[_1065]
                    mem[_1065 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    require 1 < mem[_1065]
                    mem[_1065 + 64] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    mem[_1065 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_1065 + 100] = 10^6 * sub_7d0b6809
                    mem[_1065 + 132] = 64
                    mem[_1065 + 164] = mem[_1065]
                    t = 0
                    while t < 32 * mem[_1065]:
                        mem[t + _1065 + 196] = mem[t + _1065 + 32]
                        t = t + 32
                        continue 
                    require ext_code.size(0)
                    staticcall 0x0.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args 10^6 * sub_7d0b6809, 64, mem[_1065 + 164 len (32 * mem[_1065]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_1065 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _1065 + ceil32(return_data.size) + 96
                    require return_data.size >= 32
                    _2698 = mem[_1065 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32
                    require mem[_1065 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 <= 4294967296
                    require mem[_1065 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 32 <= return_data.size
                    require mem[_1065 + mem[_1065 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 96] <= 4294967296 and mem[_1065 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + (32 * mem[_1065 + mem[_1065 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 96]) + 32 <= return_data.size
                    mem[_1065 + ceil32(return_data.size) + 96] = mem[_1065 + mem[_1065 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 96]
                    _3072 = mem[_1065 + _2698 + 96]
                    t = 0
                    while t < 32 * _3072:
                        mem[t + _1065 + ceil32(return_data.size) + 128] = mem[t + _1065 + _2698 + 128]
                        t = t + 32
                        continue 
                    mem[64] = (32 * _3072) + _1065 + ceil32(return_data.size) + 128
                    require mem[_1065 + ceil32(return_data.size) + 96] - 1 < mem[_1065 + ceil32(return_data.size) + 96]
                    if mem[(32 * mem[_1065 + ceil32(return_data.size) + 96] - 1) + _1065 + ceil32(return_data.size) + 128] <= s:
                        idx = idx + 1
                        s = s
                        continue 
                    idx = idx + 1
                    s = mem[(32 * mem[_1065 + ceil32(return_data.size) + 96] - 1) + _1065 + ceil32(return_data.size) + 128]
                    continue 
                _1211 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                require 0 < mem[_1211]
                mem[_1211 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                require 1 < mem[_1211]
                mem[_1211 + 64] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                mem[_1211 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_1211 + 100] = 10^6 * sub_7d0b6809
                mem[_1211 + 132] = 64
                mem[_1211 + 164] = mem[_1211]
                t = 0
                while t < 32 * mem[_1211]:
                    mem[t + _1211 + 196] = mem[t + _1211 + 32]
                    t = t + 32
                    continue 
                require ext_code.size(0x2724b9497b2cf3325c6be3ea430b3cec34b5ef2d)
                staticcall 0x2724b9497b2cf3325c6be3ea430b3cec34b5ef2d.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args 10^6 * sub_7d0b6809, 64, mem[_1211 + 164 len (32 * mem[_1211]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_1211 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _1211 + ceil32(return_data.size) + 96
                require return_data.size >= 32
                _2700 = mem[_1211 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32
                require mem[_1211 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 <= 4294967296
                require mem[_1211 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 32 <= return_data.size
                require mem[_1211 + mem[_1211 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 96] <= 4294967296 and mem[_1211 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + (32 * mem[_1211 + mem[_1211 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 96]) + 32 <= return_data.size
                mem[_1211 + ceil32(return_data.size) + 96] = mem[_1211 + mem[_1211 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 96]
                _3073 = mem[_1211 + _2700 + 96]
                t = 0
                while t < 32 * _3073:
                    mem[t + _1211 + ceil32(return_data.size) + 128] = mem[t + _1211 + _2700 + 128]
                    t = t + 32
                    continue 
                mem[64] = (32 * _3073) + _1211 + ceil32(return_data.size) + 128
                require mem[_1211 + ceil32(return_data.size) + 96] - 1 < mem[_1211 + ceil32(return_data.size) + 96]
                if mem[(32 * mem[_1211 + ceil32(return_data.size) + 96] - 1) + _1211 + ceil32(return_data.size) + 128] <= s:
                    idx = idx + 1
                    s = s
                    continue 
                idx = idx + 1
                s = mem[(32 * mem[_1211 + ceil32(return_data.size) + 96] - 1) + _1211 + ceil32(return_data.size) + 128]
                continue 
            _195 = mem[0]
            _287 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            require 0 < mem[_287]
            mem[_287 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
            require 1 < mem[_287]
            mem[_287 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c
            mem[_287 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[_287 + 100] = 10^6 * sub_7d0b6809
            mem[_287 + 132] = 64
            mem[_287 + 164] = mem[_287]
            t = 0
            while t < 32 * mem[_287]:
                mem[t + _287 + 196] = mem[t + _287 + 32]
                t = t + 32
                continue 
            require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c)
            staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c.getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args 10^6 * sub_7d0b6809, 64, mem[_287 + 164 len (32 * mem[_287]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[_287 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = _287 + ceil32(return_data.size) + 96
            require return_data.size >= 32
            _2708 = mem[_287 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32
            require mem[_287 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 <= 4294967296
            require mem[_287 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 32 <= return_data.size
            require mem[_287 + mem[_287 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 96] <= 4294967296 and mem[_287 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + (32 * mem[_287 + mem[_287 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 96]) + 32 <= return_data.size
            mem[_287 + ceil32(return_data.size) + 96] = mem[_287 + mem[_287 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 96]
            _3077 = mem[_287 + _2708 + 96]
            t = 0
            while t < 32 * _3077:
                mem[t + _287 + ceil32(return_data.size) + 128] = mem[t + _287 + _2708 + 128]
                t = t + 32
                continue 
            mem[64] = (32 * _3077) + _287 + ceil32(return_data.size) + 128
            require mem[_287 + ceil32(return_data.size) + 96] - 1 < mem[_287 + ceil32(return_data.size) + 96]
            _8655 = mem[(32 * mem[_287 + ceil32(return_data.size) + 96] - 1) + _287 + ceil32(return_data.size) + 128]
            mem[(32 * _3077) + _287 + ceil32(return_data.size) + 128] = 2
            mem[0] = _195
            mem[(32 * _3077) + _287 + ceil32(return_data.size) + 160] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c
            mem[(32 * _3077) + _287 + ceil32(return_data.size) + 192] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
            mem[(32 * _3077) + _287 + ceil32(return_data.size) + 224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[(32 * _3077) + _287 + ceil32(return_data.size) + 228] = _8655
            mem[(32 * _3077) + _287 + ceil32(return_data.size) + 260] = 64
            mem[(32 * _3077) + _287 + ceil32(return_data.size) + 292] = 2
            t = 0
            while t < 64:
                mem[t + (32 * _3077) + _287 + ceil32(return_data.size) + 324] = mem[t + (32 * _3077) + _287 + ceil32(return_data.size) + 160]
                t = t + 32
                continue 
            require ext_code.size(0xe4a4642b19c4d0cba965673cd51422b1eda0a78d)
            staticcall 0xe4a4642b19c4d0cba965673cd51422b1eda0a78d.getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args _8655, Array(len=2, data=mem[(32 * _3077) + _287 + ceil32(return_data.size) + 324 len 64])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _3077) + _287 + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * _3077) + _287 + (2 * ceil32(return_data.size)) + 224
            require return_data.size >= 32
            _11792 = mem[(32 * _3077) + _287 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _8655) >> 32
            require mem[(32 * _3077) + _287 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _8655) >> 32 <= 4294967296
            require mem[(32 * _3077) + _287 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _8655) >> 32 + 32 <= return_data.size
            require mem[(32 * _3077) + _287 + ceil32(return_data.size) + mem[(32 * _3077) + _287 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _8655) >> 32 + 224] <= 4294967296 and mem[(32 * _3077) + _287 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _8655) >> 32 + (32 * mem[(32 * _3077) + _287 + ceil32(return_data.size) + mem[(32 * _3077) + _287 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _8655) >> 32 + 224]) + 32 <= return_data.size
            mem[(32 * _3077) + _287 + (2 * ceil32(return_data.size)) + 224] = mem[(32 * _3077) + _287 + ceil32(return_data.size) + mem[(32 * _3077) + _287 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _8655) >> 32 + 224]
            _11906 = mem[(32 * _3077) + _287 + ceil32(return_data.size) + _11792 + 224]
            t = 0
            while t < 32 * _11906:
                mem[t + (32 * _3077) + _287 + (2 * ceil32(return_data.size)) + 256] = mem[t + (32 * _3077) + _287 + ceil32(return_data.size) + _11792 + 256]
                t = t + 32
                continue 
            mem[64] = (32 * _11906) + (32 * _3077) + _287 + (2 * ceil32(return_data.size)) + 256
            require mem[(32 * _3077) + _287 + (2 * ceil32(return_data.size)) + 224] - 1 < mem[(32 * _3077) + _287 + (2 * ceil32(return_data.size)) + 224]
            if mem[(32 * mem[(32 * _3077) + _287 + (2 * ceil32(return_data.size)) + 224] - 1) + (32 * _3077) + _287 + (2 * ceil32(return_data.size)) + 256] <= s:
                idx = idx + 1
                s = s
                continue 
            idx = idx + 1
            s = mem[(32 * mem[(32 * _3077) + _287 + (2 * ceil32(return_data.size)) + 224] - 1) + (32 * _3077) + _287 + (2 * ceil32(return_data.size)) + 256]
            continue 
        idx = 0
        t = 0
        while idx < 13:
            if not idx:
                mem[mem[64] + 4] = 2
                mem[mem[64] + 36] = 0
                mem[mem[64] + 68] = s
                require ext_code.size(0x92d5ebf3593a92888c25c0abef126583d4b5312e)
                staticcall 0x92d5ebf3593a92888c25c0abef126583d4b5312e.get_dy_underlying(int128 arg1, int128 arg2, uint256 arg3) with:
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
                staticcall 0x83e5f18da720119ff363cf63417628eb0e9fd523.get_dy(int128 arg1, int128 arg2, uint256 arg3) with:
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
                _3174 = mem[64]
                mem[mem[64]] = 3
                mem[64] = mem[64] + 128
                require 0 < mem[_3174]
                mem[_3174 + 32] = 0x49d68029688eabf473097a2fc38ef61633a3c
                require 1 < mem[_3174]
                mem[_3174 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c
                require 2 < mem[_3174]
                mem[_3174 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                mem[_3174 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_3174 + 132] = s
                mem[_3174 + 164] = 64
                mem[_3174 + 196] = mem[_3174]
                u = 0
                while u < 32 * mem[_3174]:
                    mem[u + _3174 + 228] = mem[u + _3174 + 32]
                    u = u + 32
                    continue 
                require ext_code.size(0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52)
                staticcall 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args s, 64, mem[_3174 + 196 len (32 * mem[_3174]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_3174 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _3174 + ceil32(return_data.size) + 128
                require return_data.size >= 32
                _8942 = mem[_3174 + 128 len 4], Mask(224, 32, s) >> 32
                require mem[_3174 + 128 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                require mem[_3174 + 128 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                require mem[_3174 + mem[_3174 + 128 len 4], Mask(224, 32, s) >> 32 + 128] <= 4294967296 and mem[_3174 + 128 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_3174 + mem[_3174 + 128 len 4], Mask(224, 32, s) >> 32 + 128]) + 32 <= return_data.size
                mem[_3174 + ceil32(return_data.size) + 128] = mem[_3174 + mem[_3174 + 128 len 4], Mask(224, 32, s) >> 32 + 128]
                _9558 = mem[_3174 + _8942 + 128]
                s = 0
                while s < 32 * _9558:
                    mem[s + _3174 + ceil32(return_data.size) + 160] = mem[s + _3174 + _8942 + 160]
                    s = s + 32
                    continue 
                mem[64] = (32 * _9558) + _3174 + ceil32(return_data.size) + 160
                require mem[_3174 + ceil32(return_data.size) + 128] - 1 < mem[_3174 + ceil32(return_data.size) + 128]
                if mem[(32 * mem[_3174 + ceil32(return_data.size) + 128] - 1) + _3174 + ceil32(return_data.size) + 160] <= t:
                    idx = idx + 1
                    t = t
                    continue 
                idx = idx + 1
                t = mem[(32 * mem[_3174 + ceil32(return_data.size) + 128] - 1) + _3174 + ceil32(return_data.size) + 160]
                continue 
            if 3 == idx:
                if 2 == idx:
                    _3247 = mem[64]
                    mem[mem[64]] = 3
                    mem[64] = mem[64] + 128
                    require 0 < mem[_3247]
                    mem[_3247 + 32] = 0x49d68029688eabf473097a2fc38ef61633a3c
                    require 1 < mem[_3247]
                    mem[_3247 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c
                    require 2 < mem[_3247]
                    mem[_3247 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    mem[_3247 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_3247 + 132] = s
                    mem[_3247 + 164] = 64
                    mem[_3247 + 196] = mem[_3247]
                    u = 0
                    while u < 32 * mem[_3247]:
                        mem[u + _3247 + 228] = mem[u + _3247 + 32]
                        u = u + 32
                        continue 
                    require ext_code.size(0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52)
                    staticcall 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args s, 64, mem[_3247 + 196 len (32 * mem[_3247]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_3247 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _3247 + ceil32(return_data.size) + 128
                    require return_data.size >= 32
                    _8988 = mem[_3247 + 128 len 4], Mask(224, 32, s) >> 32
                    require mem[_3247 + 128 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                    require mem[_3247 + 128 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                    require mem[_3247 + mem[_3247 + 128 len 4], Mask(224, 32, s) >> 32 + 128] <= 4294967296 and mem[_3247 + 128 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_3247 + mem[_3247 + 128 len 4], Mask(224, 32, s) >> 32 + 128]) + 32 <= return_data.size
                    mem[_3247 + ceil32(return_data.size) + 128] = mem[_3247 + mem[_3247 + 128 len 4], Mask(224, 32, s) >> 32 + 128]
                    _9581 = mem[_3247 + _8988 + 128]
                    s = 0
                    while s < 32 * _9581:
                        mem[s + _3247 + ceil32(return_data.size) + 160] = mem[s + _3247 + _8988 + 160]
                        s = s + 32
                        continue 
                    mem[64] = (32 * _9581) + _3247 + ceil32(return_data.size) + 160
                    require mem[_3247 + ceil32(return_data.size) + 128] - 1 < mem[_3247 + ceil32(return_data.size) + 128]
                    if mem[(32 * mem[_3247 + ceil32(return_data.size) + 128] - 1) + _3247 + ceil32(return_data.size) + 160] <= t:
                        idx = idx + 1
                        t = t
                        continue 
                    idx = idx + 1
                    t = mem[(32 * mem[_3247 + ceil32(return_data.size) + 128] - 1) + _3247 + ceil32(return_data.size) + 160]
                    continue 
                if idx != 3:
                    _3243 = mem[64]
                    mem[mem[64]] = 3
                    mem[64] = mem[64] + 128
                    require 0 < mem[_3243]
                    mem[_3243 + 32] = 0x49d68029688eabf473097a2fc38ef61633a3c
                    require 1 < mem[_3243]
                    mem[_3243 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c
                    require 2 < mem[_3243]
                    mem[_3243 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    mem[_3243 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_3243 + 132] = s
                    mem[_3243 + 164] = 64
                    mem[_3243 + 196] = mem[_3243]
                    u = 0
                    while u < 32 * mem[_3243]:
                        mem[u + _3243 + 228] = mem[u + _3243 + 32]
                        u = u + 32
                        continue 
                    require ext_code.size(0)
                    staticcall 0x0.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args s, 64, mem[_3243 + 196 len (32 * mem[_3243]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_3243 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _3243 + ceil32(return_data.size) + 128
                    require return_data.size >= 32
                    _8984 = mem[_3243 + 128 len 4], Mask(224, 32, s) >> 32
                    require mem[_3243 + 128 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                    require mem[_3243 + 128 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                    require mem[_3243 + mem[_3243 + 128 len 4], Mask(224, 32, s) >> 32 + 128] <= 4294967296 and mem[_3243 + 128 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_3243 + mem[_3243 + 128 len 4], Mask(224, 32, s) >> 32 + 128]) + 32 <= return_data.size
                    mem[_3243 + ceil32(return_data.size) + 128] = mem[_3243 + mem[_3243 + 128 len 4], Mask(224, 32, s) >> 32 + 128]
                    _9579 = mem[_3243 + _8984 + 128]
                    s = 0
                    while s < 32 * _9579:
                        mem[s + _3243 + ceil32(return_data.size) + 160] = mem[s + _3243 + _8984 + 160]
                        s = s + 32
                        continue 
                    mem[64] = (32 * _9579) + _3243 + ceil32(return_data.size) + 160
                    require mem[_3243 + ceil32(return_data.size) + 128] - 1 < mem[_3243 + ceil32(return_data.size) + 128]
                    if mem[(32 * mem[_3243 + ceil32(return_data.size) + 128] - 1) + _3243 + ceil32(return_data.size) + 160] <= t:
                        idx = idx + 1
                        t = t
                        continue 
                    idx = idx + 1
                    t = mem[(32 * mem[_3243 + ceil32(return_data.size) + 128] - 1) + _3243 + ceil32(return_data.size) + 160]
                    continue 
                _3689 = mem[64]
                mem[mem[64]] = 3
                mem[64] = mem[64] + 128
                require 0 < mem[_3689]
                mem[_3689 + 32] = 0x49d68029688eabf473097a2fc38ef61633a3c
                require 1 < mem[_3689]
                mem[_3689 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c
                require 2 < mem[_3689]
                mem[_3689 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                mem[_3689 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_3689 + 132] = s
                mem[_3689 + 164] = 64
                mem[_3689 + 196] = mem[_3689]
                u = 0
                while u < 32 * mem[_3689]:
                    mem[u + _3689 + 228] = mem[u + _3689 + 32]
                    u = u + 32
                    continue 
                require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c)
                staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args s, 64, mem[_3689 + 196 len (32 * mem[_3689]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_3689 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _3689 + ceil32(return_data.size) + 128
                require return_data.size >= 32
                _8986 = mem[_3689 + 128 len 4], Mask(224, 32, s) >> 32
                require mem[_3689 + 128 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                require mem[_3689 + 128 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                require mem[_3689 + mem[_3689 + 128 len 4], Mask(224, 32, s) >> 32 + 128] <= 4294967296 and mem[_3689 + 128 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_3689 + mem[_3689 + 128 len 4], Mask(224, 32, s) >> 32 + 128]) + 32 <= return_data.size
                mem[_3689 + ceil32(return_data.size) + 128] = mem[_3689 + mem[_3689 + 128 len 4], Mask(224, 32, s) >> 32 + 128]
                _9580 = mem[_3689 + _8986 + 128]
                s = 0
                while s < 32 * _9580:
                    mem[s + _3689 + ceil32(return_data.size) + 160] = mem[s + _3689 + _8986 + 160]
                    s = s + 32
                    continue 
                mem[64] = (32 * _9580) + _3689 + ceil32(return_data.size) + 160
                require mem[_3689 + ceil32(return_data.size) + 128] - 1 < mem[_3689 + ceil32(return_data.size) + 128]
                if mem[(32 * mem[_3689 + ceil32(return_data.size) + 128] - 1) + _3689 + ceil32(return_data.size) + 160] <= t:
                    idx = idx + 1
                    t = t
                    continue 
                idx = idx + 1
                t = mem[(32 * mem[_3689 + ceil32(return_data.size) + 128] - 1) + _3689 + ceil32(return_data.size) + 160]
                continue 
            if 4 == idx:
                mem[mem[64] + 4] = 0
                mem[mem[64] + 36] = 2
                mem[mem[64] + 68] = s
                require ext_code.size(0x3a1659ddcf2339be3aea159ca010979fb49155ff)
                staticcall 0x3a1659ddcf2339be3aea159ca010979fb49155ff.get_dy(uint256 arg1, uint256 arg2, uint256 arg3) with:
                        gas gas_remaining wei
                       args 0, 2, s
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                _4045 = mem[64]
                mem[mem[64]] = 3
                mem[64] = mem[64] + 128
                require 0 < mem[_4045]
                mem[_4045 + 32] = 0x74b23882a30290451a17c44f4f05243b6b58c76d
                require 1 < mem[_4045]
                mem[_4045 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c
                require 2 < mem[_4045]
                mem[_4045 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                mem[_4045 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_4045 + 132] = ext_call.return_data[0]
                mem[_4045 + 164] = 64
                mem[_4045 + 196] = mem[_4045]
                s = 0
                while s < 32 * mem[_4045]:
                    mem[s + _4045 + 228] = mem[s + _4045 + 32]
                    s = s + 32
                    continue 
                require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c)
                staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args ext_call.return_data[0], 64, mem[_4045 + 196 len (32 * mem[_4045]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_4045 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _4045 + ceil32(return_data.size) + 128
                require return_data.size >= 32
                _8980 = mem[_4045 + 128 len 4], ext_call.return_data[0 len 28]
                require mem[_4045 + 128 len 4], ext_call.return_data[0 len 28] <= 4294967296
                require mem[_4045 + 128 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                require mem[_4045 + mem[_4045 + 128 len 4], ext_call.return_data[0 len 28] + 128] <= 4294967296 and mem[_4045 + 128 len 4], ext_call.return_data[0 len 28] + (32 * mem[_4045 + mem[_4045 + 128 len 4], ext_call.return_data[0 len 28] + 128]) + 32 <= return_data.size
                mem[_4045 + ceil32(return_data.size) + 128] = mem[_4045 + mem[_4045 + 128 len 4], ext_call.return_data[0 len 28] + 128]
                _9577 = mem[_4045 + _8980 + 128]
                s = 0
                while s < 32 * _9577:
                    mem[s + _4045 + ceil32(return_data.size) + 160] = mem[s + _4045 + _8980 + 160]
                    s = s + 32
                    continue 
                mem[64] = (32 * _9577) + _4045 + ceil32(return_data.size) + 160
                require mem[_4045 + ceil32(return_data.size) + 128] - 1 < mem[_4045 + ceil32(return_data.size) + 128]
                if mem[(32 * mem[_4045 + ceil32(return_data.size) + 128] - 1) + _4045 + ceil32(return_data.size) + 160] <= t:
                    idx = idx + 1
                    t = t
                    continue 
                idx = idx + 1
                t = mem[(32 * mem[_4045 + ceil32(return_data.size) + 128] - 1) + _4045 + ceil32(return_data.size) + 160]
                continue 
            if idx != 5:
                if 6 == idx:
                    _4407 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    require 0 < mem[_4407]
                    mem[_4407 + 32] = 0x49d68029688eabf473097a2fc38ef61633a3c
                    require 1 < mem[_4407]
                    mem[_4407 + 64] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    mem[_4407 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_4407 + 100] = s
                    mem[_4407 + 132] = 64
                    mem[_4407 + 164] = mem[_4407]
                    u = 0
                    while u < 32 * mem[_4407]:
                        mem[u + _4407 + 196] = mem[u + _4407 + 32]
                        u = u + 32
                        continue 
                    require ext_code.size(0x845e76a8691423fbc4ecb8dd77556cb61c09ee25)
                    staticcall 0x845e76a8691423fbc4ecb8dd77556cb61c09ee25.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args s, 64, mem[_4407 + 164 len (32 * mem[_4407]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_4407 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _4407 + ceil32(return_data.size) + 96
                    require return_data.size >= 32
                    _8944 = mem[_4407 + 96 len 4], Mask(224, 32, s) >> 32
                    require mem[_4407 + 96 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                    require mem[_4407 + 96 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                    require mem[_4407 + mem[_4407 + 96 len 4], Mask(224, 32, s) >> 32 + 96] <= 4294967296 and mem[_4407 + 96 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_4407 + mem[_4407 + 96 len 4], Mask(224, 32, s) >> 32 + 96]) + 32 <= return_data.size
                    mem[_4407 + ceil32(return_data.size) + 96] = mem[_4407 + mem[_4407 + 96 len 4], Mask(224, 32, s) >> 32 + 96]
                    _9559 = mem[_4407 + _8944 + 96]
                    s = 0
                    while s < 32 * _9559:
                        mem[s + _4407 + ceil32(return_data.size) + 128] = mem[s + _4407 + _8944 + 128]
                        s = s + 32
                        continue 
                    mem[64] = (32 * _9559) + _4407 + ceil32(return_data.size) + 128
                    require mem[_4407 + ceil32(return_data.size) + 96] - 1 < mem[_4407 + ceil32(return_data.size) + 96]
                    if mem[(32 * mem[_4407 + ceil32(return_data.size) + 96] - 1) + _4407 + ceil32(return_data.size) + 128] <= t:
                        idx = idx + 1
                        t = t
                        continue 
                    idx = idx + 1
                    t = mem[(32 * mem[_4407 + ceil32(return_data.size) + 96] - 1) + _4407 + ceil32(return_data.size) + 128]
                    continue 
                if 7 == idx:
                    if 6 == idx:
                        _4515 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        require 0 < mem[_4515]
                        mem[_4515 + 32] = 0x49d68029688eabf473097a2fc38ef61633a3c
                        require 1 < mem[_4515]
                        mem[_4515 + 64] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                        mem[_4515 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[_4515 + 100] = s
                        mem[_4515 + 132] = 64
                        mem[_4515 + 164] = mem[_4515]
                        u = 0
                        while u < 32 * mem[_4515]:
                            mem[u + _4515 + 196] = mem[u + _4515 + 32]
                            u = u + 32
                            continue 
                        require ext_code.size(0x845e76a8691423fbc4ecb8dd77556cb61c09ee25)
                        staticcall 0x845e76a8691423fbc4ecb8dd77556cb61c09ee25.getAmountsOut(uint256 arg1, address[] arg2) with:
                                gas gas_remaining wei
                               args s, 64, mem[_4515 + 164 len (32 * mem[_4515]) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_4515 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = _4515 + ceil32(return_data.size) + 96
                        require return_data.size >= 32
                        _8954 = mem[_4515 + 96 len 4], Mask(224, 32, s) >> 32
                        require mem[_4515 + 96 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                        require mem[_4515 + 96 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                        require mem[_4515 + mem[_4515 + 96 len 4], Mask(224, 32, s) >> 32 + 96] <= 4294967296 and mem[_4515 + 96 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_4515 + mem[_4515 + 96 len 4], Mask(224, 32, s) >> 32 + 96]) + 32 <= return_data.size
                        mem[_4515 + ceil32(return_data.size) + 96] = mem[_4515 + mem[_4515 + 96 len 4], Mask(224, 32, s) >> 32 + 96]
                        _9564 = mem[_4515 + _8954 + 96]
                        s = 0
                        while s < 32 * _9564:
                            mem[s + _4515 + ceil32(return_data.size) + 128] = mem[s + _4515 + _8954 + 128]
                            s = s + 32
                            continue 
                        mem[64] = (32 * _9564) + _4515 + ceil32(return_data.size) + 128
                        require mem[_4515 + ceil32(return_data.size) + 96] - 1 < mem[_4515 + ceil32(return_data.size) + 96]
                        if mem[(32 * mem[_4515 + ceil32(return_data.size) + 96] - 1) + _4515 + ceil32(return_data.size) + 128] <= t:
                            idx = idx + 1
                            t = t
                            continue 
                        idx = idx + 1
                        t = mem[(32 * mem[_4515 + ceil32(return_data.size) + 96] - 1) + _4515 + ceil32(return_data.size) + 128]
                        continue 
                    if 7 == idx:
                        _4601 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        require 0 < mem[_4601]
                        mem[_4601 + 32] = 0x49d68029688eabf473097a2fc38ef61633a3c
                        require 1 < mem[_4601]
                        mem[_4601 + 64] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                        mem[_4601 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[_4601 + 100] = s
                        mem[_4601 + 132] = 64
                        mem[_4601 + 164] = mem[_4601]
                        u = 0
                        while u < 32 * mem[_4601]:
                            mem[u + _4601 + 196] = mem[u + _4601 + 32]
                            u = u + 32
                            continue 
                        require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c)
                        staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c.getAmountsOut(uint256 arg1, address[] arg2) with:
                                gas gas_remaining wei
                               args s, 64, mem[_4601 + 164 len (32 * mem[_4601]) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_4601 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = _4601 + ceil32(return_data.size) + 96
                        require return_data.size >= 32
                        _8952 = mem[_4601 + 96 len 4], Mask(224, 32, s) >> 32
                        require mem[_4601 + 96 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                        require mem[_4601 + 96 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                        require mem[_4601 + mem[_4601 + 96 len 4], Mask(224, 32, s) >> 32 + 96] <= 4294967296 and mem[_4601 + 96 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_4601 + mem[_4601 + 96 len 4], Mask(224, 32, s) >> 32 + 96]) + 32 <= return_data.size
                        mem[_4601 + ceil32(return_data.size) + 96] = mem[_4601 + mem[_4601 + 96 len 4], Mask(224, 32, s) >> 32 + 96]
                        _9563 = mem[_4601 + _8952 + 96]
                        s = 0
                        while s < 32 * _9563:
                            mem[s + _4601 + ceil32(return_data.size) + 128] = mem[s + _4601 + _8952 + 128]
                            s = s + 32
                            continue 
                        mem[64] = (32 * _9563) + _4601 + ceil32(return_data.size) + 128
                        require mem[_4601 + ceil32(return_data.size) + 96] - 1 < mem[_4601 + ceil32(return_data.size) + 96]
                        if mem[(32 * mem[_4601 + ceil32(return_data.size) + 96] - 1) + _4601 + ceil32(return_data.size) + 128] <= t:
                            idx = idx + 1
                            t = t
                            continue 
                        idx = idx + 1
                        t = mem[(32 * mem[_4601 + ceil32(return_data.size) + 96] - 1) + _4601 + ceil32(return_data.size) + 128]
                        continue 
                    if 8 == idx:
                        _4809 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        require 0 < mem[_4809]
                        mem[_4809 + 32] = 0x49d68029688eabf473097a2fc38ef61633a3c
                        require 1 < mem[_4809]
                        mem[_4809 + 64] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                        mem[_4809 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[_4809 + 100] = s
                        mem[_4809 + 132] = 64
                        mem[_4809 + 164] = mem[_4809]
                        u = 0
                        while u < 32 * mem[_4809]:
                            mem[u + _4809 + 196] = mem[u + _4809 + 32]
                            u = u + 32
                            continue 
                        require ext_code.size(0x6b3d631b87fe27af29efec61d2ab8ce4d621ccbf)
                        staticcall 0x6b3d631b87fe27af29efec61d2ab8ce4d621ccbf.getAmountsOut(uint256 arg1, address[] arg2) with:
                                gas gas_remaining wei
                               args s, 64, mem[_4809 + 164 len (32 * mem[_4809]) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_4809 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = _4809 + ceil32(return_data.size) + 96
                        require return_data.size >= 32
                        _8950 = mem[_4809 + 96 len 4], Mask(224, 32, s) >> 32
                        require mem[_4809 + 96 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                        require mem[_4809 + 96 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                        require mem[_4809 + mem[_4809 + 96 len 4], Mask(224, 32, s) >> 32 + 96] <= 4294967296 and mem[_4809 + 96 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_4809 + mem[_4809 + 96 len 4], Mask(224, 32, s) >> 32 + 96]) + 32 <= return_data.size
                        mem[_4809 + ceil32(return_data.size) + 96] = mem[_4809 + mem[_4809 + 96 len 4], Mask(224, 32, s) >> 32 + 96]
                        _9562 = mem[_4809 + _8950 + 96]
                        s = 0
                        while s < 32 * _9562:
                            mem[s + _4809 + ceil32(return_data.size) + 128] = mem[s + _4809 + _8950 + 128]
                            s = s + 32
                            continue 
                        mem[64] = (32 * _9562) + _4809 + ceil32(return_data.size) + 128
                        require mem[_4809 + ceil32(return_data.size) + 96] - 1 < mem[_4809 + ceil32(return_data.size) + 96]
                        if mem[(32 * mem[_4809 + ceil32(return_data.size) + 96] - 1) + _4809 + ceil32(return_data.size) + 128] <= t:
                            idx = idx + 1
                            t = t
                            continue 
                        idx = idx + 1
                        t = mem[(32 * mem[_4809 + ceil32(return_data.size) + 96] - 1) + _4809 + ceil32(return_data.size) + 128]
                        continue 
                    if idx != 9:
                        _4807 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        require 0 < mem[_4807]
                        mem[_4807 + 32] = 0x49d68029688eabf473097a2fc38ef61633a3c
                        require 1 < mem[_4807]
                        mem[_4807 + 64] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                        mem[_4807 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[_4807 + 100] = s
                        mem[_4807 + 132] = 64
                        mem[_4807 + 164] = mem[_4807]
                        u = 0
                        while u < 32 * mem[_4807]:
                            mem[u + _4807 + 196] = mem[u + _4807 + 32]
                            u = u + 32
                            continue 
                        require ext_code.size(0)
                        staticcall 0x0.getAmountsOut(uint256 arg1, address[] arg2) with:
                                gas gas_remaining wei
                               args s, 64, mem[_4807 + 164 len (32 * mem[_4807]) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_4807 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = _4807 + ceil32(return_data.size) + 96
                        require return_data.size >= 32
                        _8946 = mem[_4807 + 96 len 4], Mask(224, 32, s) >> 32
                        require mem[_4807 + 96 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                        require mem[_4807 + 96 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                        require mem[_4807 + mem[_4807 + 96 len 4], Mask(224, 32, s) >> 32 + 96] <= 4294967296 and mem[_4807 + 96 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_4807 + mem[_4807 + 96 len 4], Mask(224, 32, s) >> 32 + 96]) + 32 <= return_data.size
                        mem[_4807 + ceil32(return_data.size) + 96] = mem[_4807 + mem[_4807 + 96 len 4], Mask(224, 32, s) >> 32 + 96]
                        _9560 = mem[_4807 + _8946 + 96]
                        s = 0
                        while s < 32 * _9560:
                            mem[s + _4807 + ceil32(return_data.size) + 128] = mem[s + _4807 + _8946 + 128]
                            s = s + 32
                            continue 
                        mem[64] = (32 * _9560) + _4807 + ceil32(return_data.size) + 128
                        require mem[_4807 + ceil32(return_data.size) + 96] - 1 < mem[_4807 + ceil32(return_data.size) + 96]
                        if mem[(32 * mem[_4807 + ceil32(return_data.size) + 96] - 1) + _4807 + ceil32(return_data.size) + 128] <= t:
                            idx = idx + 1
                            t = t
                            continue 
                        idx = idx + 1
                        t = mem[(32 * mem[_4807 + ceil32(return_data.size) + 96] - 1) + _4807 + ceil32(return_data.size) + 128]
                        continue 
                    _5002 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    require 0 < mem[_5002]
                    mem[_5002 + 32] = 0x49d68029688eabf473097a2fc38ef61633a3c
                    require 1 < mem[_5002]
                    mem[_5002 + 64] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    mem[_5002 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_5002 + 100] = s
                    mem[_5002 + 132] = 64
                    mem[_5002 + 164] = mem[_5002]
                    u = 0
                    while u < 32 * mem[_5002]:
                        mem[u + _5002 + 196] = mem[u + _5002 + 32]
                        u = u + 32
                        continue 
                    require ext_code.size(0x2724b9497b2cf3325c6be3ea430b3cec34b5ef2d)
                    staticcall 0x2724b9497b2cf3325c6be3ea430b3cec34b5ef2d.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args s, 64, mem[_5002 + 164 len (32 * mem[_5002]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_5002 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _5002 + ceil32(return_data.size) + 96
                    require return_data.size >= 32
                    _8948 = mem[_5002 + 96 len 4], Mask(224, 32, s) >> 32
                    require mem[_5002 + 96 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                    require mem[_5002 + 96 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                    require mem[_5002 + mem[_5002 + 96 len 4], Mask(224, 32, s) >> 32 + 96] <= 4294967296 and mem[_5002 + 96 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_5002 + mem[_5002 + 96 len 4], Mask(224, 32, s) >> 32 + 96]) + 32 <= return_data.size
                    mem[_5002 + ceil32(return_data.size) + 96] = mem[_5002 + mem[_5002 + 96 len 4], Mask(224, 32, s) >> 32 + 96]
                    _9561 = mem[_5002 + _8948 + 96]
                    s = 0
                    while s < 32 * _9561:
                        mem[s + _5002 + ceil32(return_data.size) + 128] = mem[s + _5002 + _8948 + 128]
                        s = s + 32
                        continue 
                    mem[64] = (32 * _9561) + _5002 + ceil32(return_data.size) + 128
                    require mem[_5002 + ceil32(return_data.size) + 96] - 1 < mem[_5002 + ceil32(return_data.size) + 96]
                    if mem[(32 * mem[_5002 + ceil32(return_data.size) + 96] - 1) + _5002 + ceil32(return_data.size) + 128] <= t:
                        idx = idx + 1
                        t = t
                        continue 
                    idx = idx + 1
                    t = mem[(32 * mem[_5002 + ceil32(return_data.size) + 96] - 1) + _5002 + ceil32(return_data.size) + 128]
                    continue 
                if 8 == idx:
                    if 6 == idx:
                        _4606 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        require 0 < mem[_4606]
                        mem[_4606 + 32] = 0x49d68029688eabf473097a2fc38ef61633a3c
                        require 1 < mem[_4606]
                        mem[_4606 + 64] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                        mem[_4606 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[_4606 + 100] = s
                        mem[_4606 + 132] = 64
                        mem[_4606 + 164] = mem[_4606]
                        u = 0
                        while u < 32 * mem[_4606]:
                            mem[u + _4606 + 196] = mem[u + _4606 + 32]
                            u = u + 32
                            continue 
                        require ext_code.size(0x845e76a8691423fbc4ecb8dd77556cb61c09ee25)
                        staticcall 0x845e76a8691423fbc4ecb8dd77556cb61c09ee25.getAmountsOut(uint256 arg1, address[] arg2) with:
                                gas gas_remaining wei
                               args s, 64, mem[_4606 + 164 len (32 * mem[_4606]) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_4606 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = _4606 + ceil32(return_data.size) + 96
                        require return_data.size >= 32
                        _8964 = mem[_4606 + 96 len 4], Mask(224, 32, s) >> 32
                        require mem[_4606 + 96 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                        require mem[_4606 + 96 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                        require mem[_4606 + mem[_4606 + 96 len 4], Mask(224, 32, s) >> 32 + 96] <= 4294967296 and mem[_4606 + 96 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_4606 + mem[_4606 + 96 len 4], Mask(224, 32, s) >> 32 + 96]) + 32 <= return_data.size
                        mem[_4606 + ceil32(return_data.size) + 96] = mem[_4606 + mem[_4606 + 96 len 4], Mask(224, 32, s) >> 32 + 96]
                        _9569 = mem[_4606 + _8964 + 96]
                        s = 0
                        while s < 32 * _9569:
                            mem[s + _4606 + ceil32(return_data.size) + 128] = mem[s + _4606 + _8964 + 128]
                            s = s + 32
                            continue 
                        mem[64] = (32 * _9569) + _4606 + ceil32(return_data.size) + 128
                        require mem[_4606 + ceil32(return_data.size) + 96] - 1 < mem[_4606 + ceil32(return_data.size) + 96]
                        if mem[(32 * mem[_4606 + ceil32(return_data.size) + 96] - 1) + _4606 + ceil32(return_data.size) + 128] <= t:
                            idx = idx + 1
                            t = t
                            continue 
                        idx = idx + 1
                        t = mem[(32 * mem[_4606 + ceil32(return_data.size) + 96] - 1) + _4606 + ceil32(return_data.size) + 128]
                        continue 
                    if 7 == idx:
                        _4815 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        require 0 < mem[_4815]
                        mem[_4815 + 32] = 0x49d68029688eabf473097a2fc38ef61633a3c
                        require 1 < mem[_4815]
                        mem[_4815 + 64] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                        mem[_4815 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[_4815 + 100] = s
                        mem[_4815 + 132] = 64
                        mem[_4815 + 164] = mem[_4815]
                        u = 0
                        while u < 32 * mem[_4815]:
                            mem[u + _4815 + 196] = mem[u + _4815 + 32]
                            u = u + 32
                            continue 
                        require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c)
                        staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c.getAmountsOut(uint256 arg1, address[] arg2) with:
                                gas gas_remaining wei
                               args s, 64, mem[_4815 + 164 len (32 * mem[_4815]) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_4815 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = _4815 + ceil32(return_data.size) + 96
                        require return_data.size >= 32
                        _8962 = mem[_4815 + 96 len 4], Mask(224, 32, s) >> 32
                        require mem[_4815 + 96 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                        require mem[_4815 + 96 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                        require mem[_4815 + mem[_4815 + 96 len 4], Mask(224, 32, s) >> 32 + 96] <= 4294967296 and mem[_4815 + 96 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_4815 + mem[_4815 + 96 len 4], Mask(224, 32, s) >> 32 + 96]) + 32 <= return_data.size
                        mem[_4815 + ceil32(return_data.size) + 96] = mem[_4815 + mem[_4815 + 96 len 4], Mask(224, 32, s) >> 32 + 96]
                        _9568 = mem[_4815 + _8962 + 96]
                        s = 0
                        while s < 32 * _9568:
                            mem[s + _4815 + ceil32(return_data.size) + 128] = mem[s + _4815 + _8962 + 128]
                            s = s + 32
                            continue 
                        mem[64] = (32 * _9568) + _4815 + ceil32(return_data.size) + 128
                        require mem[_4815 + ceil32(return_data.size) + 96] - 1 < mem[_4815 + ceil32(return_data.size) + 96]
                        if mem[(32 * mem[_4815 + ceil32(return_data.size) + 96] - 1) + _4815 + ceil32(return_data.size) + 128] <= t:
                            idx = idx + 1
                            t = t
                            continue 
                        idx = idx + 1
                        t = mem[(32 * mem[_4815 + ceil32(return_data.size) + 96] - 1) + _4815 + ceil32(return_data.size) + 128]
                        continue 
                    if 8 == idx:
                        _5010 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        require 0 < mem[_5010]
                        mem[_5010 + 32] = 0x49d68029688eabf473097a2fc38ef61633a3c
                        require 1 < mem[_5010]
                        mem[_5010 + 64] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                        mem[_5010 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[_5010 + 100] = s
                        mem[_5010 + 132] = 64
                        mem[_5010 + 164] = mem[_5010]
                        u = 0
                        while u < 32 * mem[_5010]:
                            mem[u + _5010 + 196] = mem[u + _5010 + 32]
                            u = u + 32
                            continue 
                        require ext_code.size(0x6b3d631b87fe27af29efec61d2ab8ce4d621ccbf)
                        staticcall 0x6b3d631b87fe27af29efec61d2ab8ce4d621ccbf.getAmountsOut(uint256 arg1, address[] arg2) with:
                                gas gas_remaining wei
                               args s, 64, mem[_5010 + 164 len (32 * mem[_5010]) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_5010 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = _5010 + ceil32(return_data.size) + 96
                        require return_data.size >= 32
                        _8960 = mem[_5010 + 96 len 4], Mask(224, 32, s) >> 32
                        require mem[_5010 + 96 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                        require mem[_5010 + 96 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                        require mem[_5010 + mem[_5010 + 96 len 4], Mask(224, 32, s) >> 32 + 96] <= 4294967296 and mem[_5010 + 96 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_5010 + mem[_5010 + 96 len 4], Mask(224, 32, s) >> 32 + 96]) + 32 <= return_data.size
                        mem[_5010 + ceil32(return_data.size) + 96] = mem[_5010 + mem[_5010 + 96 len 4], Mask(224, 32, s) >> 32 + 96]
                        _9567 = mem[_5010 + _8960 + 96]
                        s = 0
                        while s < 32 * _9567:
                            mem[s + _5010 + ceil32(return_data.size) + 128] = mem[s + _5010 + _8960 + 128]
                            s = s + 32
                            continue 
                        mem[64] = (32 * _9567) + _5010 + ceil32(return_data.size) + 128
                        require mem[_5010 + ceil32(return_data.size) + 96] - 1 < mem[_5010 + ceil32(return_data.size) + 96]
                        if mem[(32 * mem[_5010 + ceil32(return_data.size) + 96] - 1) + _5010 + ceil32(return_data.size) + 128] <= t:
                            idx = idx + 1
                            t = t
                            continue 
                        idx = idx + 1
                        t = mem[(32 * mem[_5010 + ceil32(return_data.size) + 96] - 1) + _5010 + ceil32(return_data.size) + 128]
                        continue 
                    if idx != 9:
                        _5008 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        require 0 < mem[_5008]
                        mem[_5008 + 32] = 0x49d68029688eabf473097a2fc38ef61633a3c
                        require 1 < mem[_5008]
                        mem[_5008 + 64] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                        mem[_5008 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[_5008 + 100] = s
                        mem[_5008 + 132] = 64
                        mem[_5008 + 164] = mem[_5008]
                        u = 0
                        while u < 32 * mem[_5008]:
                            mem[u + _5008 + 196] = mem[u + _5008 + 32]
                            u = u + 32
                            continue 
                        require ext_code.size(0)
                        staticcall 0x0.getAmountsOut(uint256 arg1, address[] arg2) with:
                                gas gas_remaining wei
                               args s, 64, mem[_5008 + 164 len (32 * mem[_5008]) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_5008 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = _5008 + ceil32(return_data.size) + 96
                        require return_data.size >= 32
                        _8956 = mem[_5008 + 96 len 4], Mask(224, 32, s) >> 32
                        require mem[_5008 + 96 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                        require mem[_5008 + 96 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                        require mem[_5008 + mem[_5008 + 96 len 4], Mask(224, 32, s) >> 32 + 96] <= 4294967296 and mem[_5008 + 96 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_5008 + mem[_5008 + 96 len 4], Mask(224, 32, s) >> 32 + 96]) + 32 <= return_data.size
                        mem[_5008 + ceil32(return_data.size) + 96] = mem[_5008 + mem[_5008 + 96 len 4], Mask(224, 32, s) >> 32 + 96]
                        _9565 = mem[_5008 + _8956 + 96]
                        s = 0
                        while s < 32 * _9565:
                            mem[s + _5008 + ceil32(return_data.size) + 128] = mem[s + _5008 + _8956 + 128]
                            s = s + 32
                            continue 
                        mem[64] = (32 * _9565) + _5008 + ceil32(return_data.size) + 128
                        require mem[_5008 + ceil32(return_data.size) + 96] - 1 < mem[_5008 + ceil32(return_data.size) + 96]
                        if mem[(32 * mem[_5008 + ceil32(return_data.size) + 96] - 1) + _5008 + ceil32(return_data.size) + 128] <= t:
                            idx = idx + 1
                            t = t
                            continue 
                        idx = idx + 1
                        t = mem[(32 * mem[_5008 + ceil32(return_data.size) + 96] - 1) + _5008 + ceil32(return_data.size) + 128]
                        continue 
                    _5288 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    require 0 < mem[_5288]
                    mem[_5288 + 32] = 0x49d68029688eabf473097a2fc38ef61633a3c
                    require 1 < mem[_5288]
                    mem[_5288 + 64] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    mem[_5288 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_5288 + 100] = s
                    mem[_5288 + 132] = 64
                    mem[_5288 + 164] = mem[_5288]
                    u = 0
                    while u < 32 * mem[_5288]:
                        mem[u + _5288 + 196] = mem[u + _5288 + 32]
                        u = u + 32
                        continue 
                    require ext_code.size(0x2724b9497b2cf3325c6be3ea430b3cec34b5ef2d)
                    staticcall 0x2724b9497b2cf3325c6be3ea430b3cec34b5ef2d.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args s, 64, mem[_5288 + 164 len (32 * mem[_5288]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_5288 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _5288 + ceil32(return_data.size) + 96
                    require return_data.size >= 32
                    _8958 = mem[_5288 + 96 len 4], Mask(224, 32, s) >> 32
                    require mem[_5288 + 96 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                    require mem[_5288 + 96 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                    require mem[_5288 + mem[_5288 + 96 len 4], Mask(224, 32, s) >> 32 + 96] <= 4294967296 and mem[_5288 + 96 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_5288 + mem[_5288 + 96 len 4], Mask(224, 32, s) >> 32 + 96]) + 32 <= return_data.size
                    mem[_5288 + ceil32(return_data.size) + 96] = mem[_5288 + mem[_5288 + 96 len 4], Mask(224, 32, s) >> 32 + 96]
                    _9566 = mem[_5288 + _8958 + 96]
                    s = 0
                    while s < 32 * _9566:
                        mem[s + _5288 + ceil32(return_data.size) + 128] = mem[s + _5288 + _8958 + 128]
                        s = s + 32
                        continue 
                    mem[64] = (32 * _9566) + _5288 + ceil32(return_data.size) + 128
                    require mem[_5288 + ceil32(return_data.size) + 96] - 1 < mem[_5288 + ceil32(return_data.size) + 96]
                    if mem[(32 * mem[_5288 + ceil32(return_data.size) + 96] - 1) + _5288 + ceil32(return_data.size) + 128] <= t:
                        idx = idx + 1
                        t = t
                        continue 
                    idx = idx + 1
                    t = mem[(32 * mem[_5288 + ceil32(return_data.size) + 96] - 1) + _5288 + ceil32(return_data.size) + 128]
                    continue 
                if idx != 9:
                    if 10 == idx:
                        mem[mem[64] + 4] = 0
                        mem[mem[64] + 36] = 1
                        mem[mem[64] + 68] = s
                        require ext_code.size(0x952bda8a83c3d5f398a686bb4e8c6dd90072d523)
                        staticcall 0x952bda8a83c3d5f398a686bb4e8c6dd90072d523.calculateSwap(uint8 arg1, uint8 arg2, uint256 arg3) with:
                                gas gas_remaining wei
                               args 0, 1, s
                    else:
                        if 11 == idx:
                            mem[mem[64] + 4] = 1
                            mem[mem[64] + 36] = 2
                            mem[mem[64] + 68] = s
                            require ext_code.size(0x80f6aed32fc474dd5717105dba5ea57268f46eb)
                            staticcall 0x80f6aed32fc474dd5717105dba5ea57268f46eb.calculateSwap(uint8 arg1, uint8 arg2, uint256 arg3) with:
                                    gas gas_remaining wei
                                   args 1, 2, s
                        else:
                            if idx != 12:
                                if s <= t:
                                    idx = idx + 1
                                    t = t
                                    continue 
                                idx = idx + 1
                                t = s
                                continue 
                            mem[mem[64] + 4] = 2
                            mem[mem[64] + 36] = 1
                            mem[mem[64] + 68] = s
                            require ext_code.size(0x2dd7c9371965472e5a5fd28fbe165007c61439e1)
                            staticcall 0x2dd7c9371965472e5a5fd28fbe165007c61439e1.get_dy(int128 arg1, int128 arg2, uint256 arg3) with:
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
                if 6 == idx:
                    _4824 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    require 0 < mem[_4824]
                    mem[_4824 + 32] = 0x49d68029688eabf473097a2fc38ef61633a3c
                    require 1 < mem[_4824]
                    mem[_4824 + 64] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    mem[_4824 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_4824 + 100] = s
                    mem[_4824 + 132] = 64
                    mem[_4824 + 164] = mem[_4824]
                    u = 0
                    while u < 32 * mem[_4824]:
                        mem[u + _4824 + 196] = mem[u + _4824 + 32]
                        u = u + 32
                        continue 
                    require ext_code.size(0x845e76a8691423fbc4ecb8dd77556cb61c09ee25)
                    staticcall 0x845e76a8691423fbc4ecb8dd77556cb61c09ee25.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args s, 64, mem[_4824 + 164 len (32 * mem[_4824]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_4824 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _4824 + ceil32(return_data.size) + 96
                    require return_data.size >= 32
                    _8974 = mem[_4824 + 96 len 4], Mask(224, 32, s) >> 32
                    require mem[_4824 + 96 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                    require mem[_4824 + 96 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                    require mem[_4824 + mem[_4824 + 96 len 4], Mask(224, 32, s) >> 32 + 96] <= 4294967296 and mem[_4824 + 96 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_4824 + mem[_4824 + 96 len 4], Mask(224, 32, s) >> 32 + 96]) + 32 <= return_data.size
                    mem[_4824 + ceil32(return_data.size) + 96] = mem[_4824 + mem[_4824 + 96 len 4], Mask(224, 32, s) >> 32 + 96]
                    _9574 = mem[_4824 + _8974 + 96]
                    s = 0
                    while s < 32 * _9574:
                        mem[s + _4824 + ceil32(return_data.size) + 128] = mem[s + _4824 + _8974 + 128]
                        s = s + 32
                        continue 
                    mem[64] = (32 * _9574) + _4824 + ceil32(return_data.size) + 128
                    require mem[_4824 + ceil32(return_data.size) + 96] - 1 < mem[_4824 + ceil32(return_data.size) + 96]
                    if mem[(32 * mem[_4824 + ceil32(return_data.size) + 96] - 1) + _4824 + ceil32(return_data.size) + 128] <= t:
                        idx = idx + 1
                        t = t
                        continue 
                    idx = idx + 1
                    t = mem[(32 * mem[_4824 + ceil32(return_data.size) + 96] - 1) + _4824 + ceil32(return_data.size) + 128]
                    continue 
                if 7 == idx:
                    _5024 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    require 0 < mem[_5024]
                    mem[_5024 + 32] = 0x49d68029688eabf473097a2fc38ef61633a3c
                    require 1 < mem[_5024]
                    mem[_5024 + 64] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    mem[_5024 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_5024 + 100] = s
                    mem[_5024 + 132] = 64
                    mem[_5024 + 164] = mem[_5024]
                    u = 0
                    while u < 32 * mem[_5024]:
                        mem[u + _5024 + 196] = mem[u + _5024 + 32]
                        u = u + 32
                        continue 
                    require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c)
                    staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args s, 64, mem[_5024 + 164 len (32 * mem[_5024]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_5024 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _5024 + ceil32(return_data.size) + 96
                    require return_data.size >= 32
                    _8972 = mem[_5024 + 96 len 4], Mask(224, 32, s) >> 32
                    require mem[_5024 + 96 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                    require mem[_5024 + 96 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                    require mem[_5024 + mem[_5024 + 96 len 4], Mask(224, 32, s) >> 32 + 96] <= 4294967296 and mem[_5024 + 96 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_5024 + mem[_5024 + 96 len 4], Mask(224, 32, s) >> 32 + 96]) + 32 <= return_data.size
                    mem[_5024 + ceil32(return_data.size) + 96] = mem[_5024 + mem[_5024 + 96 len 4], Mask(224, 32, s) >> 32 + 96]
                    _9573 = mem[_5024 + _8972 + 96]
                    s = 0
                    while s < 32 * _9573:
                        mem[s + _5024 + ceil32(return_data.size) + 128] = mem[s + _5024 + _8972 + 128]
                        s = s + 32
                        continue 
                    mem[64] = (32 * _9573) + _5024 + ceil32(return_data.size) + 128
                    require mem[_5024 + ceil32(return_data.size) + 96] - 1 < mem[_5024 + ceil32(return_data.size) + 96]
                    if mem[(32 * mem[_5024 + ceil32(return_data.size) + 96] - 1) + _5024 + ceil32(return_data.size) + 128] <= t:
                        idx = idx + 1
                        t = t
                        continue 
                    idx = idx + 1
                    t = mem[(32 * mem[_5024 + ceil32(return_data.size) + 96] - 1) + _5024 + ceil32(return_data.size) + 128]
                    continue 
                if 8 == idx:
                    _5299 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    require 0 < mem[_5299]
                    mem[_5299 + 32] = 0x49d68029688eabf473097a2fc38ef61633a3c
                    require 1 < mem[_5299]
                    mem[_5299 + 64] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    mem[_5299 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_5299 + 100] = s
                    mem[_5299 + 132] = 64
                    mem[_5299 + 164] = mem[_5299]
                    u = 0
                    while u < 32 * mem[_5299]:
                        mem[u + _5299 + 196] = mem[u + _5299 + 32]
                        u = u + 32
                        continue 
                    require ext_code.size(0x6b3d631b87fe27af29efec61d2ab8ce4d621ccbf)
                    staticcall 0x6b3d631b87fe27af29efec61d2ab8ce4d621ccbf.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args s, 64, mem[_5299 + 164 len (32 * mem[_5299]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_5299 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _5299 + ceil32(return_data.size) + 96
                    require return_data.size >= 32
                    _8970 = mem[_5299 + 96 len 4], Mask(224, 32, s) >> 32
                    require mem[_5299 + 96 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                    require mem[_5299 + 96 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                    require mem[_5299 + mem[_5299 + 96 len 4], Mask(224, 32, s) >> 32 + 96] <= 4294967296 and mem[_5299 + 96 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_5299 + mem[_5299 + 96 len 4], Mask(224, 32, s) >> 32 + 96]) + 32 <= return_data.size
                    mem[_5299 + ceil32(return_data.size) + 96] = mem[_5299 + mem[_5299 + 96 len 4], Mask(224, 32, s) >> 32 + 96]
                    _9572 = mem[_5299 + _8970 + 96]
                    s = 0
                    while s < 32 * _9572:
                        mem[s + _5299 + ceil32(return_data.size) + 128] = mem[s + _5299 + _8970 + 128]
                        s = s + 32
                        continue 
                    mem[64] = (32 * _9572) + _5299 + ceil32(return_data.size) + 128
                    require mem[_5299 + ceil32(return_data.size) + 96] - 1 < mem[_5299 + ceil32(return_data.size) + 96]
                    if mem[(32 * mem[_5299 + ceil32(return_data.size) + 96] - 1) + _5299 + ceil32(return_data.size) + 128] <= t:
                        idx = idx + 1
                        t = t
                        continue 
                    idx = idx + 1
                    t = mem[(32 * mem[_5299 + ceil32(return_data.size) + 96] - 1) + _5299 + ceil32(return_data.size) + 128]
                    continue 
                if idx != 9:
                    _5297 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    require 0 < mem[_5297]
                    mem[_5297 + 32] = 0x49d68029688eabf473097a2fc38ef61633a3c
                    require 1 < mem[_5297]
                    mem[_5297 + 64] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    mem[_5297 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_5297 + 100] = s
                    mem[_5297 + 132] = 64
                    mem[_5297 + 164] = mem[_5297]
                    u = 0
                    while u < 32 * mem[_5297]:
                        mem[u + _5297 + 196] = mem[u + _5297 + 32]
                        u = u + 32
                        continue 
                    require ext_code.size(0)
                    staticcall 0x0.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args s, 64, mem[_5297 + 164 len (32 * mem[_5297]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_5297 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _5297 + ceil32(return_data.size) + 96
                    require return_data.size >= 32
                    _8966 = mem[_5297 + 96 len 4], Mask(224, 32, s) >> 32
                    require mem[_5297 + 96 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                    require mem[_5297 + 96 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                    require mem[_5297 + mem[_5297 + 96 len 4], Mask(224, 32, s) >> 32 + 96] <= 4294967296 and mem[_5297 + 96 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_5297 + mem[_5297 + 96 len 4], Mask(224, 32, s) >> 32 + 96]) + 32 <= return_data.size
                    mem[_5297 + ceil32(return_data.size) + 96] = mem[_5297 + mem[_5297 + 96 len 4], Mask(224, 32, s) >> 32 + 96]
                    _9570 = mem[_5297 + _8966 + 96]
                    s = 0
                    while s < 32 * _9570:
                        mem[s + _5297 + ceil32(return_data.size) + 128] = mem[s + _5297 + _8966 + 128]
                        s = s + 32
                        continue 
                    mem[64] = (32 * _9570) + _5297 + ceil32(return_data.size) + 128
                    require mem[_5297 + ceil32(return_data.size) + 96] - 1 < mem[_5297 + ceil32(return_data.size) + 96]
                    if mem[(32 * mem[_5297 + ceil32(return_data.size) + 96] - 1) + _5297 + ceil32(return_data.size) + 128] <= t:
                        idx = idx + 1
                        t = t
                        continue 
                    idx = idx + 1
                    t = mem[(32 * mem[_5297 + ceil32(return_data.size) + 96] - 1) + _5297 + ceil32(return_data.size) + 128]
                    continue 
                _5599 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                require 0 < mem[_5599]
                mem[_5599 + 32] = 0x49d68029688eabf473097a2fc38ef61633a3c
                require 1 < mem[_5599]
                mem[_5599 + 64] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                mem[_5599 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_5599 + 100] = s
                mem[_5599 + 132] = 64
                mem[_5599 + 164] = mem[_5599]
                u = 0
                while u < 32 * mem[_5599]:
                    mem[u + _5599 + 196] = mem[u + _5599 + 32]
                    u = u + 32
                    continue 
                require ext_code.size(0x2724b9497b2cf3325c6be3ea430b3cec34b5ef2d)
                staticcall 0x2724b9497b2cf3325c6be3ea430b3cec34b5ef2d.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args s, 64, mem[_5599 + 164 len (32 * mem[_5599]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_5599 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _5599 + ceil32(return_data.size) + 96
                require return_data.size >= 32
                _8968 = mem[_5599 + 96 len 4], Mask(224, 32, s) >> 32
                require mem[_5599 + 96 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                require mem[_5599 + 96 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                require mem[_5599 + mem[_5599 + 96 len 4], Mask(224, 32, s) >> 32 + 96] <= 4294967296 and mem[_5599 + 96 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_5599 + mem[_5599 + 96 len 4], Mask(224, 32, s) >> 32 + 96]) + 32 <= return_data.size
                mem[_5599 + ceil32(return_data.size) + 96] = mem[_5599 + mem[_5599 + 96 len 4], Mask(224, 32, s) >> 32 + 96]
                _9571 = mem[_5599 + _8968 + 96]
                s = 0
                while s < 32 * _9571:
                    mem[s + _5599 + ceil32(return_data.size) + 128] = mem[s + _5599 + _8968 + 128]
                    s = s + 32
                    continue 
                mem[64] = (32 * _9571) + _5599 + ceil32(return_data.size) + 128
                require mem[_5599 + ceil32(return_data.size) + 96] - 1 < mem[_5599 + ceil32(return_data.size) + 96]
                if mem[(32 * mem[_5599 + ceil32(return_data.size) + 96] - 1) + _5599 + ceil32(return_data.size) + 128] <= t:
                    idx = idx + 1
                    t = t
                    continue 
                idx = idx + 1
                t = mem[(32 * mem[_5599 + ceil32(return_data.size) + 96] - 1) + _5599 + ceil32(return_data.size) + 128]
                continue 
            _3235 = mem[0]
            _3679 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            require 0 < mem[_3679]
            mem[_3679 + 32] = 0x49d68029688eabf473097a2fc38ef61633a3c
            require 1 < mem[_3679]
            mem[_3679 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c
            mem[_3679 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[_3679 + 100] = s
            mem[_3679 + 132] = 64
            mem[_3679 + 164] = mem[_3679]
            u = 0
            while u < 32 * mem[_3679]:
                mem[u + _3679 + 196] = mem[u + _3679 + 32]
                u = u + 32
                continue 
            require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c)
            staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c.getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args s, 64, mem[_3679 + 164 len (32 * mem[_3679]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[_3679 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = _3679 + ceil32(return_data.size) + 96
            require return_data.size >= 32
            _8976 = mem[_3679 + 96 len 4], Mask(224, 32, s) >> 32
            require mem[_3679 + 96 len 4], Mask(224, 32, s) >> 32 <= 4294967296
            require mem[_3679 + 96 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
            require mem[_3679 + mem[_3679 + 96 len 4], Mask(224, 32, s) >> 32 + 96] <= 4294967296 and mem[_3679 + 96 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_3679 + mem[_3679 + 96 len 4], Mask(224, 32, s) >> 32 + 96]) + 32 <= return_data.size
            mem[_3679 + ceil32(return_data.size) + 96] = mem[_3679 + mem[_3679 + 96 len 4], Mask(224, 32, s) >> 32 + 96]
            _9575 = mem[_3679 + _8976 + 96]
            s = 0
            while s < 32 * _9575:
                mem[s + _3679 + ceil32(return_data.size) + 128] = mem[s + _3679 + _8976 + 128]
                s = s + 32
                continue 
            mem[64] = (32 * _9575) + _3679 + ceil32(return_data.size) + 128
            require mem[_3679 + ceil32(return_data.size) + 96] - 1 < mem[_3679 + ceil32(return_data.size) + 96]
            _11575 = mem[(32 * mem[_3679 + ceil32(return_data.size) + 96] - 1) + _3679 + ceil32(return_data.size) + 128]
            mem[(32 * _9575) + _3679 + ceil32(return_data.size) + 128] = 2
            mem[0] = _3235
            mem[(32 * _9575) + _3679 + ceil32(return_data.size) + 160] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c
            mem[(32 * _9575) + _3679 + ceil32(return_data.size) + 192] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
            mem[(32 * _9575) + _3679 + ceil32(return_data.size) + 224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[(32 * _9575) + _3679 + ceil32(return_data.size) + 228] = _11575
            mem[(32 * _9575) + _3679 + ceil32(return_data.size) + 260] = 64
            mem[(32 * _9575) + _3679 + ceil32(return_data.size) + 292] = 2
            s = 0
            while s < 64:
                mem[s + (32 * _9575) + _3679 + ceil32(return_data.size) + 324] = mem[s + (32 * _9575) + _3679 + ceil32(return_data.size) + 160]
                s = s + 32
                continue 
            require ext_code.size(0xe4a4642b19c4d0cba965673cd51422b1eda0a78d)
            staticcall 0xe4a4642b19c4d0cba965673cd51422b1eda0a78d.getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args _11575, Array(len=2, data=mem[(32 * _9575) + _3679 + ceil32(return_data.size) + 324 len 64])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _9575) + _3679 + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * _9575) + _3679 + (2 * ceil32(return_data.size)) + 224
            require return_data.size >= 32
            _12238 = mem[(32 * _9575) + _3679 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _11575) >> 32
            require mem[(32 * _9575) + _3679 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _11575) >> 32 <= 4294967296
            require mem[(32 * _9575) + _3679 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _11575) >> 32 + 32 <= return_data.size
            require mem[(32 * _9575) + _3679 + ceil32(return_data.size) + mem[(32 * _9575) + _3679 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _11575) >> 32 + 224] <= 4294967296 and mem[(32 * _9575) + _3679 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _11575) >> 32 + (32 * mem[(32 * _9575) + _3679 + ceil32(return_data.size) + mem[(32 * _9575) + _3679 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _11575) >> 32 + 224]) + 32 <= return_data.size
            mem[(32 * _9575) + _3679 + (2 * ceil32(return_data.size)) + 224] = mem[(32 * _9575) + _3679 + ceil32(return_data.size) + mem[(32 * _9575) + _3679 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _11575) >> 32 + 224]
            _12286 = mem[(32 * _9575) + _3679 + ceil32(return_data.size) + _12238 + 224]
            s = 0
            while s < 32 * _12286:
                mem[s + (32 * _9575) + _3679 + (2 * ceil32(return_data.size)) + 256] = mem[s + (32 * _9575) + _3679 + ceil32(return_data.size) + _12238 + 256]
                s = s + 32
                continue 
            mem[64] = (32 * _12286) + (32 * _9575) + _3679 + (2 * ceil32(return_data.size)) + 256
            require mem[(32 * _9575) + _3679 + (2 * ceil32(return_data.size)) + 224] - 1 < mem[(32 * _9575) + _3679 + (2 * ceil32(return_data.size)) + 224]
            if mem[(32 * mem[(32 * _9575) + _3679 + (2 * ceil32(return_data.size)) + 224] - 1) + (32 * _9575) + _3679 + (2 * ceil32(return_data.size)) + 256] <= t:
                idx = idx + 1
                t = t
                continue 
            idx = idx + 1
            t = mem[(32 * mem[(32 * _9575) + _3679 + (2 * ceil32(return_data.size)) + 224] - 1) + (32 * _9575) + _3679 + (2 * ceil32(return_data.size)) + 256]
            continue 
    revert with 0, 'No profit possible'
}



}
