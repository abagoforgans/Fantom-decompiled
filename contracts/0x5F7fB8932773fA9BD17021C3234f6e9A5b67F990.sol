contract main {




// =====================  Runtime code  =====================


#
#  - onFlashLoan(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5)
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
                _203 = mem[64]
                mem[mem[64]] = 3
                mem[64] = mem[64] + 128
                require 0 < mem[_203]
                mem[_203 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                require 1 < mem[_203]
                mem[_203 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                require 2 < mem[_203]
                mem[_203 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                mem[_203 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_203 + 132] = 0
                mem[_203 + 164] = 64
                mem[_203 + 196] = mem[_203]
                t = 0
                while t < 32 * mem[_203]:
                    mem[t + _203 + 228] = mem[t + _203 + 32]
                    t = t + 32
                    continue 
                require ext_code.size(0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52)
                staticcall 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args 0, 64, mem[_203 + 196 len (32 * mem[_203]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_203 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _203 + ceil32(return_data.size) + 128
                require return_data.size >= 32
                _2807 = mem[_203 + 128 len 4], 0
                require mem[_203 + 128 len 4], 0 <= 4294967296
                require mem[_203 + 128 len 4], 0 + 32 <= return_data.size
                require mem[_203 + mem[_203 + 128 len 4], 0 + 128] <= 4294967296 and mem[_203 + 128 len 4], 0 + (32 * mem[_203 + mem[_203 + 128 len 4], 0 + 128]) + 32 <= return_data.size
                mem[_203 + ceil32(return_data.size) + 128] = mem[_203 + mem[_203 + 128 len 4], 0 + 128]
                _3171 = mem[_203 + _2807 + 128]
                t = 0
                while t < 32 * _3171:
                    mem[t + _203 + ceil32(return_data.size) + 160] = mem[t + _203 + _2807 + 160]
                    t = t + 32
                    continue 
                mem[64] = (32 * _3171) + _203 + ceil32(return_data.size) + 160
                require mem[_203 + ceil32(return_data.size) + 128] - 1 < mem[_203 + ceil32(return_data.size) + 128]
                if mem[(32 * mem[_203 + ceil32(return_data.size) + 128] - 1) + _203 + ceil32(return_data.size) + 160] <= s:
                    idx = idx + 1
                    s = s
                    continue 
                idx = idx + 1
                s = mem[(32 * mem[_203 + ceil32(return_data.size) + 128] - 1) + _203 + ceil32(return_data.size) + 160]
                continue 
            if 3 == idx:
                if 2 == idx:
                    _230 = mem[64]
                    mem[mem[64]] = 3
                    mem[64] = mem[64] + 128
                    require 0 < mem[_230]
                    mem[_230 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    require 1 < mem[_230]
                    mem[_230 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                    require 2 < mem[_230]
                    mem[_230 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    mem[_230 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_230 + 132] = 0
                    mem[_230 + 164] = 64
                    mem[_230 + 196] = mem[_230]
                    t = 0
                    while t < 32 * mem[_230]:
                        mem[t + _230 + 228] = mem[t + _230 + 32]
                        t = t + 32
                        continue 
                    require ext_code.size(0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52)
                    staticcall 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args 0, 64, mem[_230 + 196 len (32 * mem[_230]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_230 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _230 + ceil32(return_data.size) + 128
                    require return_data.size >= 32
                    _2817 = mem[_230 + 128 len 4], 0
                    require mem[_230 + 128 len 4], 0 <= 4294967296
                    require mem[_230 + 128 len 4], 0 + 32 <= return_data.size
                    require mem[_230 + mem[_230 + 128 len 4], 0 + 128] <= 4294967296 and mem[_230 + 128 len 4], 0 + (32 * mem[_230 + mem[_230 + 128 len 4], 0 + 128]) + 32 <= return_data.size
                    mem[_230 + ceil32(return_data.size) + 128] = mem[_230 + mem[_230 + 128 len 4], 0 + 128]
                    _3176 = mem[_230 + _2817 + 128]
                    t = 0
                    while t < 32 * _3176:
                        mem[t + _230 + ceil32(return_data.size) + 160] = mem[t + _230 + _2817 + 160]
                        t = t + 32
                        continue 
                    mem[64] = (32 * _3176) + _230 + ceil32(return_data.size) + 160
                    require mem[_230 + ceil32(return_data.size) + 128] - 1 < mem[_230 + ceil32(return_data.size) + 128]
                    if mem[(32 * mem[_230 + ceil32(return_data.size) + 128] - 1) + _230 + ceil32(return_data.size) + 160] <= s:
                        idx = idx + 1
                        s = s
                        continue 
                    idx = idx + 1
                    s = mem[(32 * mem[_230 + ceil32(return_data.size) + 128] - 1) + _230 + ceil32(return_data.size) + 160]
                    continue 
                if 3 == idx:
                    _262 = mem[64]
                    mem[mem[64]] = 3
                    mem[64] = mem[64] + 128
                    require 0 < mem[_262]
                    mem[_262 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    require 1 < mem[_262]
                    mem[_262 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                    require 2 < mem[_262]
                    mem[_262 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    mem[_262 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_262 + 132] = 0
                    mem[_262 + 164] = 64
                    mem[_262 + 196] = mem[_262]
                    t = 0
                    while t < 32 * mem[_262]:
                        mem[t + _262 + 228] = mem[t + _262 + 32]
                        t = t + 32
                        continue 
                    require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                    staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c29.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args 0, 64, mem[_262 + 196 len (32 * mem[_262]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_262 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _262 + ceil32(return_data.size) + 128
                    require return_data.size >= 32
                    _2815 = mem[_262 + 128 len 4], 0
                    require mem[_262 + 128 len 4], 0 <= 4294967296
                    require mem[_262 + 128 len 4], 0 + 32 <= return_data.size
                    require mem[_262 + mem[_262 + 128 len 4], 0 + 128] <= 4294967296 and mem[_262 + 128 len 4], 0 + (32 * mem[_262 + mem[_262 + 128 len 4], 0 + 128]) + 32 <= return_data.size
                    mem[_262 + ceil32(return_data.size) + 128] = mem[_262 + mem[_262 + 128 len 4], 0 + 128]
                    _3175 = mem[_262 + _2815 + 128]
                    t = 0
                    while t < 32 * _3175:
                        mem[t + _262 + ceil32(return_data.size) + 160] = mem[t + _262 + _2815 + 160]
                        t = t + 32
                        continue 
                    mem[64] = (32 * _3175) + _262 + ceil32(return_data.size) + 160
                    require mem[_262 + ceil32(return_data.size) + 128] - 1 < mem[_262 + ceil32(return_data.size) + 128]
                    if mem[(32 * mem[_262 + ceil32(return_data.size) + 128] - 1) + _262 + ceil32(return_data.size) + 160] <= s:
                        idx = idx + 1
                        s = s
                        continue 
                    idx = idx + 1
                    s = mem[(32 * mem[_262 + ceil32(return_data.size) + 128] - 1) + _262 + ceil32(return_data.size) + 160]
                    continue 
                if 4 == idx:
                    _328 = mem[64]
                    mem[mem[64]] = 3
                    mem[64] = mem[64] + 128
                    require 0 < mem[_328]
                    mem[_328 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    require 1 < mem[_328]
                    mem[_328 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                    require 2 < mem[_328]
                    mem[_328 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    mem[_328 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_328 + 132] = 0
                    mem[_328 + 164] = 64
                    mem[_328 + 196] = mem[_328]
                    t = 0
                    while t < 32 * mem[_328]:
                        mem[t + _328 + 228] = mem[t + _328 + 32]
                        t = t + 32
                        continue 
                    require ext_code.size(0x7b17021fcb7bc888641dc3bedfed3734fcaf2c87)
                    staticcall 0x7b17021fcb7bc888641dc3bedfed3734fcaf2c87.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args 0, 64, mem[_328 + 196 len (32 * mem[_328]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_328 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _328 + ceil32(return_data.size) + 128
                    require return_data.size >= 32
                    _2813 = mem[_328 + 128 len 4], 0
                    require mem[_328 + 128 len 4], 0 <= 4294967296
                    require mem[_328 + 128 len 4], 0 + 32 <= return_data.size
                    require mem[_328 + mem[_328 + 128 len 4], 0 + 128] <= 4294967296 and mem[_328 + 128 len 4], 0 + (32 * mem[_328 + mem[_328 + 128 len 4], 0 + 128]) + 32 <= return_data.size
                    mem[_328 + ceil32(return_data.size) + 128] = mem[_328 + mem[_328 + 128 len 4], 0 + 128]
                    _3174 = mem[_328 + _2813 + 128]
                    t = 0
                    while t < 32 * _3174:
                        mem[t + _328 + ceil32(return_data.size) + 160] = mem[t + _328 + _2813 + 160]
                        t = t + 32
                        continue 
                    mem[64] = (32 * _3174) + _328 + ceil32(return_data.size) + 160
                    require mem[_328 + ceil32(return_data.size) + 128] - 1 < mem[_328 + ceil32(return_data.size) + 128]
                    if mem[(32 * mem[_328 + ceil32(return_data.size) + 128] - 1) + _328 + ceil32(return_data.size) + 160] <= s:
                        idx = idx + 1
                        s = s
                        continue 
                    idx = idx + 1
                    s = mem[(32 * mem[_328 + ceil32(return_data.size) + 128] - 1) + _328 + ceil32(return_data.size) + 160]
                    continue 
                if idx != 5:
                    _326 = mem[64]
                    mem[mem[64]] = 3
                    mem[64] = mem[64] + 128
                    require 0 < mem[_326]
                    mem[_326 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    require 1 < mem[_326]
                    mem[_326 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                    require 2 < mem[_326]
                    mem[_326 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    mem[_326 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_326 + 132] = 0
                    mem[_326 + 164] = 64
                    mem[_326 + 196] = mem[_326]
                    t = 0
                    while t < 32 * mem[_326]:
                        mem[t + _326 + 228] = mem[t + _326 + 32]
                        t = t + 32
                        continue 
                    require ext_code.size(0)
                    staticcall 0x0.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args 0, 64, mem[_326 + 196 len (32 * mem[_326]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_326 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _326 + ceil32(return_data.size) + 128
                    require return_data.size >= 32
                    _2809 = mem[_326 + 128 len 4], 0
                    require mem[_326 + 128 len 4], 0 <= 4294967296
                    require mem[_326 + 128 len 4], 0 + 32 <= return_data.size
                    require mem[_326 + mem[_326 + 128 len 4], 0 + 128] <= 4294967296 and mem[_326 + 128 len 4], 0 + (32 * mem[_326 + mem[_326 + 128 len 4], 0 + 128]) + 32 <= return_data.size
                    mem[_326 + ceil32(return_data.size) + 128] = mem[_326 + mem[_326 + 128 len 4], 0 + 128]
                    _3172 = mem[_326 + _2809 + 128]
                    t = 0
                    while t < 32 * _3172:
                        mem[t + _326 + ceil32(return_data.size) + 160] = mem[t + _326 + _2809 + 160]
                        t = t + 32
                        continue 
                    mem[64] = (32 * _3172) + _326 + ceil32(return_data.size) + 160
                    require mem[_326 + ceil32(return_data.size) + 128] - 1 < mem[_326 + ceil32(return_data.size) + 128]
                    if mem[(32 * mem[_326 + ceil32(return_data.size) + 128] - 1) + _326 + ceil32(return_data.size) + 160] <= s:
                        idx = idx + 1
                        s = s
                        continue 
                    idx = idx + 1
                    s = mem[(32 * mem[_326 + ceil32(return_data.size) + 128] - 1) + _326 + ceil32(return_data.size) + 160]
                    continue 
                _406 = mem[64]
                mem[mem[64]] = 3
                mem[64] = mem[64] + 128
                require 0 < mem[_406]
                mem[_406 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                require 1 < mem[_406]
                mem[_406 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                require 2 < mem[_406]
                mem[_406 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                mem[_406 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_406 + 132] = 0
                mem[_406 + 164] = 64
                mem[_406 + 196] = mem[_406]
                t = 0
                while t < 32 * mem[_406]:
                    mem[t + _406 + 228] = mem[t + _406 + 32]
                    t = t + 32
                    continue 
                require ext_code.size(0x845e76a8691423fbc4ecb8dd77556cb61c09ee25)
                staticcall 0x845e76a8691423fbc4ecb8dd77556cb61c09ee25.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args 0, 64, mem[_406 + 196 len (32 * mem[_406]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_406 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _406 + ceil32(return_data.size) + 128
                require return_data.size >= 32
                _2811 = mem[_406 + 128 len 4], 0
                require mem[_406 + 128 len 4], 0 <= 4294967296
                require mem[_406 + 128 len 4], 0 + 32 <= return_data.size
                require mem[_406 + mem[_406 + 128 len 4], 0 + 128] <= 4294967296 and mem[_406 + 128 len 4], 0 + (32 * mem[_406 + mem[_406 + 128 len 4], 0 + 128]) + 32 <= return_data.size
                mem[_406 + ceil32(return_data.size) + 128] = mem[_406 + mem[_406 + 128 len 4], 0 + 128]
                _3173 = mem[_406 + _2811 + 128]
                t = 0
                while t < 32 * _3173:
                    mem[t + _406 + ceil32(return_data.size) + 160] = mem[t + _406 + _2811 + 160]
                    t = t + 32
                    continue 
                mem[64] = (32 * _3173) + _406 + ceil32(return_data.size) + 160
                require mem[_406 + ceil32(return_data.size) + 128] - 1 < mem[_406 + ceil32(return_data.size) + 128]
                if mem[(32 * mem[_406 + ceil32(return_data.size) + 128] - 1) + _406 + ceil32(return_data.size) + 160] <= s:
                    idx = idx + 1
                    s = s
                    continue 
                idx = idx + 1
                s = mem[(32 * mem[_406 + ceil32(return_data.size) + 128] - 1) + _406 + ceil32(return_data.size) + 160]
                continue 
            if 4 == idx:
                if 2 == idx:
                    _265 = mem[64]
                    mem[mem[64]] = 3
                    mem[64] = mem[64] + 128
                    require 0 < mem[_265]
                    mem[_265 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    require 1 < mem[_265]
                    mem[_265 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                    require 2 < mem[_265]
                    mem[_265 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    mem[_265 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_265 + 132] = 0
                    mem[_265 + 164] = 64
                    mem[_265 + 196] = mem[_265]
                    t = 0
                    while t < 32 * mem[_265]:
                        mem[t + _265 + 228] = mem[t + _265 + 32]
                        t = t + 32
                        continue 
                    require ext_code.size(0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52)
                    staticcall 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args 0, 64, mem[_265 + 196 len (32 * mem[_265]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_265 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _265 + ceil32(return_data.size) + 128
                    require return_data.size >= 32
                    _2827 = mem[_265 + 128 len 4], 0
                    require mem[_265 + 128 len 4], 0 <= 4294967296
                    require mem[_265 + 128 len 4], 0 + 32 <= return_data.size
                    require mem[_265 + mem[_265 + 128 len 4], 0 + 128] <= 4294967296 and mem[_265 + 128 len 4], 0 + (32 * mem[_265 + mem[_265 + 128 len 4], 0 + 128]) + 32 <= return_data.size
                    mem[_265 + ceil32(return_data.size) + 128] = mem[_265 + mem[_265 + 128 len 4], 0 + 128]
                    _3181 = mem[_265 + _2827 + 128]
                    t = 0
                    while t < 32 * _3181:
                        mem[t + _265 + ceil32(return_data.size) + 160] = mem[t + _265 + _2827 + 160]
                        t = t + 32
                        continue 
                    mem[64] = (32 * _3181) + _265 + ceil32(return_data.size) + 160
                    require mem[_265 + ceil32(return_data.size) + 128] - 1 < mem[_265 + ceil32(return_data.size) + 128]
                    if mem[(32 * mem[_265 + ceil32(return_data.size) + 128] - 1) + _265 + ceil32(return_data.size) + 160] <= s:
                        idx = idx + 1
                        s = s
                        continue 
                    idx = idx + 1
                    s = mem[(32 * mem[_265 + ceil32(return_data.size) + 128] - 1) + _265 + ceil32(return_data.size) + 160]
                    continue 
                if 3 == idx:
                    _332 = mem[64]
                    mem[mem[64]] = 3
                    mem[64] = mem[64] + 128
                    require 0 < mem[_332]
                    mem[_332 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    require 1 < mem[_332]
                    mem[_332 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                    require 2 < mem[_332]
                    mem[_332 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    mem[_332 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_332 + 132] = 0
                    mem[_332 + 164] = 64
                    mem[_332 + 196] = mem[_332]
                    t = 0
                    while t < 32 * mem[_332]:
                        mem[t + _332 + 228] = mem[t + _332 + 32]
                        t = t + 32
                        continue 
                    require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                    staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c29.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args 0, 64, mem[_332 + 196 len (32 * mem[_332]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_332 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _332 + ceil32(return_data.size) + 128
                    require return_data.size >= 32
                    _2825 = mem[_332 + 128 len 4], 0
                    require mem[_332 + 128 len 4], 0 <= 4294967296
                    require mem[_332 + 128 len 4], 0 + 32 <= return_data.size
                    require mem[_332 + mem[_332 + 128 len 4], 0 + 128] <= 4294967296 and mem[_332 + 128 len 4], 0 + (32 * mem[_332 + mem[_332 + 128 len 4], 0 + 128]) + 32 <= return_data.size
                    mem[_332 + ceil32(return_data.size) + 128] = mem[_332 + mem[_332 + 128 len 4], 0 + 128]
                    _3180 = mem[_332 + _2825 + 128]
                    t = 0
                    while t < 32 * _3180:
                        mem[t + _332 + ceil32(return_data.size) + 160] = mem[t + _332 + _2825 + 160]
                        t = t + 32
                        continue 
                    mem[64] = (32 * _3180) + _332 + ceil32(return_data.size) + 160
                    require mem[_332 + ceil32(return_data.size) + 128] - 1 < mem[_332 + ceil32(return_data.size) + 128]
                    if mem[(32 * mem[_332 + ceil32(return_data.size) + 128] - 1) + _332 + ceil32(return_data.size) + 160] <= s:
                        idx = idx + 1
                        s = s
                        continue 
                    idx = idx + 1
                    s = mem[(32 * mem[_332 + ceil32(return_data.size) + 128] - 1) + _332 + ceil32(return_data.size) + 160]
                    continue 
                if 4 == idx:
                    _415 = mem[64]
                    mem[mem[64]] = 3
                    mem[64] = mem[64] + 128
                    require 0 < mem[_415]
                    mem[_415 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    require 1 < mem[_415]
                    mem[_415 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                    require 2 < mem[_415]
                    mem[_415 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    mem[_415 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_415 + 132] = 0
                    mem[_415 + 164] = 64
                    mem[_415 + 196] = mem[_415]
                    t = 0
                    while t < 32 * mem[_415]:
                        mem[t + _415 + 228] = mem[t + _415 + 32]
                        t = t + 32
                        continue 
                    require ext_code.size(0x7b17021fcb7bc888641dc3bedfed3734fcaf2c87)
                    staticcall 0x7b17021fcb7bc888641dc3bedfed3734fcaf2c87.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args 0, 64, mem[_415 + 196 len (32 * mem[_415]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_415 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _415 + ceil32(return_data.size) + 128
                    require return_data.size >= 32
                    _2823 = mem[_415 + 128 len 4], 0
                    require mem[_415 + 128 len 4], 0 <= 4294967296
                    require mem[_415 + 128 len 4], 0 + 32 <= return_data.size
                    require mem[_415 + mem[_415 + 128 len 4], 0 + 128] <= 4294967296 and mem[_415 + 128 len 4], 0 + (32 * mem[_415 + mem[_415 + 128 len 4], 0 + 128]) + 32 <= return_data.size
                    mem[_415 + ceil32(return_data.size) + 128] = mem[_415 + mem[_415 + 128 len 4], 0 + 128]
                    _3179 = mem[_415 + _2823 + 128]
                    t = 0
                    while t < 32 * _3179:
                        mem[t + _415 + ceil32(return_data.size) + 160] = mem[t + _415 + _2823 + 160]
                        t = t + 32
                        continue 
                    mem[64] = (32 * _3179) + _415 + ceil32(return_data.size) + 160
                    require mem[_415 + ceil32(return_data.size) + 128] - 1 < mem[_415 + ceil32(return_data.size) + 128]
                    if mem[(32 * mem[_415 + ceil32(return_data.size) + 128] - 1) + _415 + ceil32(return_data.size) + 160] <= s:
                        idx = idx + 1
                        s = s
                        continue 
                    idx = idx + 1
                    s = mem[(32 * mem[_415 + ceil32(return_data.size) + 128] - 1) + _415 + ceil32(return_data.size) + 160]
                    continue 
                if idx != 5:
                    _413 = mem[64]
                    mem[mem[64]] = 3
                    mem[64] = mem[64] + 128
                    require 0 < mem[_413]
                    mem[_413 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    require 1 < mem[_413]
                    mem[_413 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                    require 2 < mem[_413]
                    mem[_413 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    mem[_413 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_413 + 132] = 0
                    mem[_413 + 164] = 64
                    mem[_413 + 196] = mem[_413]
                    t = 0
                    while t < 32 * mem[_413]:
                        mem[t + _413 + 228] = mem[t + _413 + 32]
                        t = t + 32
                        continue 
                    require ext_code.size(0)
                    staticcall 0x0.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args 0, 64, mem[_413 + 196 len (32 * mem[_413]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_413 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _413 + ceil32(return_data.size) + 128
                    require return_data.size >= 32
                    _2819 = mem[_413 + 128 len 4], 0
                    require mem[_413 + 128 len 4], 0 <= 4294967296
                    require mem[_413 + 128 len 4], 0 + 32 <= return_data.size
                    require mem[_413 + mem[_413 + 128 len 4], 0 + 128] <= 4294967296 and mem[_413 + 128 len 4], 0 + (32 * mem[_413 + mem[_413 + 128 len 4], 0 + 128]) + 32 <= return_data.size
                    mem[_413 + ceil32(return_data.size) + 128] = mem[_413 + mem[_413 + 128 len 4], 0 + 128]
                    _3177 = mem[_413 + _2819 + 128]
                    t = 0
                    while t < 32 * _3177:
                        mem[t + _413 + ceil32(return_data.size) + 160] = mem[t + _413 + _2819 + 160]
                        t = t + 32
                        continue 
                    mem[64] = (32 * _3177) + _413 + ceil32(return_data.size) + 160
                    require mem[_413 + ceil32(return_data.size) + 128] - 1 < mem[_413 + ceil32(return_data.size) + 128]
                    if mem[(32 * mem[_413 + ceil32(return_data.size) + 128] - 1) + _413 + ceil32(return_data.size) + 160] <= s:
                        idx = idx + 1
                        s = s
                        continue 
                    idx = idx + 1
                    s = mem[(32 * mem[_413 + ceil32(return_data.size) + 128] - 1) + _413 + ceil32(return_data.size) + 160]
                    continue 
                _508 = mem[64]
                mem[mem[64]] = 3
                mem[64] = mem[64] + 128
                require 0 < mem[_508]
                mem[_508 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                require 1 < mem[_508]
                mem[_508 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                require 2 < mem[_508]
                mem[_508 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                mem[_508 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_508 + 132] = 0
                mem[_508 + 164] = 64
                mem[_508 + 196] = mem[_508]
                t = 0
                while t < 32 * mem[_508]:
                    mem[t + _508 + 228] = mem[t + _508 + 32]
                    t = t + 32
                    continue 
                require ext_code.size(0x845e76a8691423fbc4ecb8dd77556cb61c09ee25)
                staticcall 0x845e76a8691423fbc4ecb8dd77556cb61c09ee25.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args 0, 64, mem[_508 + 196 len (32 * mem[_508]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_508 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _508 + ceil32(return_data.size) + 128
                require return_data.size >= 32
                _2821 = mem[_508 + 128 len 4], 0
                require mem[_508 + 128 len 4], 0 <= 4294967296
                require mem[_508 + 128 len 4], 0 + 32 <= return_data.size
                require mem[_508 + mem[_508 + 128 len 4], 0 + 128] <= 4294967296 and mem[_508 + 128 len 4], 0 + (32 * mem[_508 + mem[_508 + 128 len 4], 0 + 128]) + 32 <= return_data.size
                mem[_508 + ceil32(return_data.size) + 128] = mem[_508 + mem[_508 + 128 len 4], 0 + 128]
                _3178 = mem[_508 + _2821 + 128]
                t = 0
                while t < 32 * _3178:
                    mem[t + _508 + ceil32(return_data.size) + 160] = mem[t + _508 + _2821 + 160]
                    t = t + 32
                    continue 
                mem[64] = (32 * _3178) + _508 + ceil32(return_data.size) + 160
                require mem[_508 + ceil32(return_data.size) + 128] - 1 < mem[_508 + ceil32(return_data.size) + 128]
                if mem[(32 * mem[_508 + ceil32(return_data.size) + 128] - 1) + _508 + ceil32(return_data.size) + 160] <= s:
                    idx = idx + 1
                    s = s
                    continue 
                idx = idx + 1
                s = mem[(32 * mem[_508 + ceil32(return_data.size) + 128] - 1) + _508 + ceil32(return_data.size) + 160]
                continue 
            if 5 == idx:
                if 2 == idx:
                    _337 = mem[64]
                    mem[mem[64]] = 3
                    mem[64] = mem[64] + 128
                    require 0 < mem[_337]
                    mem[_337 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    require 1 < mem[_337]
                    mem[_337 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
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
                    require ext_code.size(0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52)
                    staticcall 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args 0, 64, mem[_337 + 196 len (32 * mem[_337]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_337 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _337 + ceil32(return_data.size) + 128
                    require return_data.size >= 32
                    _2859 = mem[_337 + 128 len 4], 0
                    require mem[_337 + 128 len 4], 0 <= 4294967296
                    require mem[_337 + 128 len 4], 0 + 32 <= return_data.size
                    require mem[_337 + mem[_337 + 128 len 4], 0 + 128] <= 4294967296 and mem[_337 + 128 len 4], 0 + (32 * mem[_337 + mem[_337 + 128 len 4], 0 + 128]) + 32 <= return_data.size
                    mem[_337 + ceil32(return_data.size) + 128] = mem[_337 + mem[_337 + 128 len 4], 0 + 128]
                    _3197 = mem[_337 + _2859 + 128]
                    t = 0
                    while t < 32 * _3197:
                        mem[t + _337 + ceil32(return_data.size) + 160] = mem[t + _337 + _2859 + 160]
                        t = t + 32
                        continue 
                    mem[64] = (32 * _3197) + _337 + ceil32(return_data.size) + 160
                    require mem[_337 + ceil32(return_data.size) + 128] - 1 < mem[_337 + ceil32(return_data.size) + 128]
                    if mem[(32 * mem[_337 + ceil32(return_data.size) + 128] - 1) + _337 + ceil32(return_data.size) + 160] <= s:
                        idx = idx + 1
                        s = s
                        continue 
                    idx = idx + 1
                    s = mem[(32 * mem[_337 + ceil32(return_data.size) + 128] - 1) + _337 + ceil32(return_data.size) + 160]
                    continue 
                if 3 == idx:
                    _422 = mem[64]
                    mem[mem[64]] = 3
                    mem[64] = mem[64] + 128
                    require 0 < mem[_422]
                    mem[_422 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    require 1 < mem[_422]
                    mem[_422 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                    require 2 < mem[_422]
                    mem[_422 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    mem[_422 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_422 + 132] = 0
                    mem[_422 + 164] = 64
                    mem[_422 + 196] = mem[_422]
                    t = 0
                    while t < 32 * mem[_422]:
                        mem[t + _422 + 228] = mem[t + _422 + 32]
                        t = t + 32
                        continue 
                    require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                    staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c29.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args 0, 64, mem[_422 + 196 len (32 * mem[_422]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_422 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _422 + ceil32(return_data.size) + 128
                    require return_data.size >= 32
                    _2857 = mem[_422 + 128 len 4], 0
                    require mem[_422 + 128 len 4], 0 <= 4294967296
                    require mem[_422 + 128 len 4], 0 + 32 <= return_data.size
                    require mem[_422 + mem[_422 + 128 len 4], 0 + 128] <= 4294967296 and mem[_422 + 128 len 4], 0 + (32 * mem[_422 + mem[_422 + 128 len 4], 0 + 128]) + 32 <= return_data.size
                    mem[_422 + ceil32(return_data.size) + 128] = mem[_422 + mem[_422 + 128 len 4], 0 + 128]
                    _3196 = mem[_422 + _2857 + 128]
                    t = 0
                    while t < 32 * _3196:
                        mem[t + _422 + ceil32(return_data.size) + 160] = mem[t + _422 + _2857 + 160]
                        t = t + 32
                        continue 
                    mem[64] = (32 * _3196) + _422 + ceil32(return_data.size) + 160
                    require mem[_422 + ceil32(return_data.size) + 128] - 1 < mem[_422 + ceil32(return_data.size) + 128]
                    if mem[(32 * mem[_422 + ceil32(return_data.size) + 128] - 1) + _422 + ceil32(return_data.size) + 160] <= s:
                        idx = idx + 1
                        s = s
                        continue 
                    idx = idx + 1
                    s = mem[(32 * mem[_422 + ceil32(return_data.size) + 128] - 1) + _422 + ceil32(return_data.size) + 160]
                    continue 
                if 4 == idx:
                    _521 = mem[64]
                    mem[mem[64]] = 3
                    mem[64] = mem[64] + 128
                    require 0 < mem[_521]
                    mem[_521 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    require 1 < mem[_521]
                    mem[_521 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                    require 2 < mem[_521]
                    mem[_521 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    mem[_521 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_521 + 132] = 0
                    mem[_521 + 164] = 64
                    mem[_521 + 196] = mem[_521]
                    t = 0
                    while t < 32 * mem[_521]:
                        mem[t + _521 + 228] = mem[t + _521 + 32]
                        t = t + 32
                        continue 
                    require ext_code.size(0x7b17021fcb7bc888641dc3bedfed3734fcaf2c87)
                    staticcall 0x7b17021fcb7bc888641dc3bedfed3734fcaf2c87.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args 0, 64, mem[_521 + 196 len (32 * mem[_521]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_521 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _521 + ceil32(return_data.size) + 128
                    require return_data.size >= 32
                    _2855 = mem[_521 + 128 len 4], 0
                    require mem[_521 + 128 len 4], 0 <= 4294967296
                    require mem[_521 + 128 len 4], 0 + 32 <= return_data.size
                    require mem[_521 + mem[_521 + 128 len 4], 0 + 128] <= 4294967296 and mem[_521 + 128 len 4], 0 + (32 * mem[_521 + mem[_521 + 128 len 4], 0 + 128]) + 32 <= return_data.size
                    mem[_521 + ceil32(return_data.size) + 128] = mem[_521 + mem[_521 + 128 len 4], 0 + 128]
                    _3195 = mem[_521 + _2855 + 128]
                    t = 0
                    while t < 32 * _3195:
                        mem[t + _521 + ceil32(return_data.size) + 160] = mem[t + _521 + _2855 + 160]
                        t = t + 32
                        continue 
                    mem[64] = (32 * _3195) + _521 + ceil32(return_data.size) + 160
                    require mem[_521 + ceil32(return_data.size) + 128] - 1 < mem[_521 + ceil32(return_data.size) + 128]
                    if mem[(32 * mem[_521 + ceil32(return_data.size) + 128] - 1) + _521 + ceil32(return_data.size) + 160] <= s:
                        idx = idx + 1
                        s = s
                        continue 
                    idx = idx + 1
                    s = mem[(32 * mem[_521 + ceil32(return_data.size) + 128] - 1) + _521 + ceil32(return_data.size) + 160]
                    continue 
                if idx != 5:
                    _519 = mem[64]
                    mem[mem[64]] = 3
                    mem[64] = mem[64] + 128
                    require 0 < mem[_519]
                    mem[_519 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    require 1 < mem[_519]
                    mem[_519 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                    require 2 < mem[_519]
                    mem[_519 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    mem[_519 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_519 + 132] = 0
                    mem[_519 + 164] = 64
                    mem[_519 + 196] = mem[_519]
                    t = 0
                    while t < 32 * mem[_519]:
                        mem[t + _519 + 228] = mem[t + _519 + 32]
                        t = t + 32
                        continue 
                    require ext_code.size(0)
                    staticcall 0x0.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args 0, 64, mem[_519 + 196 len (32 * mem[_519]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_519 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _519 + ceil32(return_data.size) + 128
                    require return_data.size >= 32
                    _2851 = mem[_519 + 128 len 4], 0
                    require mem[_519 + 128 len 4], 0 <= 4294967296
                    require mem[_519 + 128 len 4], 0 + 32 <= return_data.size
                    require mem[_519 + mem[_519 + 128 len 4], 0 + 128] <= 4294967296 and mem[_519 + 128 len 4], 0 + (32 * mem[_519 + mem[_519 + 128 len 4], 0 + 128]) + 32 <= return_data.size
                    mem[_519 + ceil32(return_data.size) + 128] = mem[_519 + mem[_519 + 128 len 4], 0 + 128]
                    _3193 = mem[_519 + _2851 + 128]
                    t = 0
                    while t < 32 * _3193:
                        mem[t + _519 + ceil32(return_data.size) + 160] = mem[t + _519 + _2851 + 160]
                        t = t + 32
                        continue 
                    mem[64] = (32 * _3193) + _519 + ceil32(return_data.size) + 160
                    require mem[_519 + ceil32(return_data.size) + 128] - 1 < mem[_519 + ceil32(return_data.size) + 128]
                    if mem[(32 * mem[_519 + ceil32(return_data.size) + 128] - 1) + _519 + ceil32(return_data.size) + 160] <= s:
                        idx = idx + 1
                        s = s
                        continue 
                    idx = idx + 1
                    s = mem[(32 * mem[_519 + ceil32(return_data.size) + 128] - 1) + _519 + ceil32(return_data.size) + 160]
                    continue 
                _622 = mem[64]
                mem[mem[64]] = 3
                mem[64] = mem[64] + 128
                require 0 < mem[_622]
                mem[_622 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                require 1 < mem[_622]
                mem[_622 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                require 2 < mem[_622]
                mem[_622 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                mem[_622 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_622 + 132] = 0
                mem[_622 + 164] = 64
                mem[_622 + 196] = mem[_622]
                t = 0
                while t < 32 * mem[_622]:
                    mem[t + _622 + 228] = mem[t + _622 + 32]
                    t = t + 32
                    continue 
                require ext_code.size(0x845e76a8691423fbc4ecb8dd77556cb61c09ee25)
                staticcall 0x845e76a8691423fbc4ecb8dd77556cb61c09ee25.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args 0, 64, mem[_622 + 196 len (32 * mem[_622]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_622 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _622 + ceil32(return_data.size) + 128
                require return_data.size >= 32
                _2853 = mem[_622 + 128 len 4], 0
                require mem[_622 + 128 len 4], 0 <= 4294967296
                require mem[_622 + 128 len 4], 0 + 32 <= return_data.size
                require mem[_622 + mem[_622 + 128 len 4], 0 + 128] <= 4294967296 and mem[_622 + 128 len 4], 0 + (32 * mem[_622 + mem[_622 + 128 len 4], 0 + 128]) + 32 <= return_data.size
                mem[_622 + ceil32(return_data.size) + 128] = mem[_622 + mem[_622 + 128 len 4], 0 + 128]
                _3194 = mem[_622 + _2853 + 128]
                t = 0
                while t < 32 * _3194:
                    mem[t + _622 + ceil32(return_data.size) + 160] = mem[t + _622 + _2853 + 160]
                    t = t + 32
                    continue 
                mem[64] = (32 * _3194) + _622 + ceil32(return_data.size) + 160
                require mem[_622 + ceil32(return_data.size) + 128] - 1 < mem[_622 + ceil32(return_data.size) + 128]
                if mem[(32 * mem[_622 + ceil32(return_data.size) + 128] - 1) + _622 + ceil32(return_data.size) + 160] <= s:
                    idx = idx + 1
                    s = s
                    continue 
                idx = idx + 1
                s = mem[(32 * mem[_622 + ceil32(return_data.size) + 128] - 1) + _622 + ceil32(return_data.size) + 160]
                continue 
            if idx != 6:
                if 7 == idx:
                    _720 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    require 0 < mem[_720]
                    mem[_720 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    require 1 < mem[_720]
                    mem[_720 + 64] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    mem[_720 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_720 + 100] = 0
                    mem[_720 + 132] = 64
                    mem[_720 + 164] = mem[_720]
                    t = 0
                    while t < 32 * mem[_720]:
                        mem[t + _720 + 196] = mem[t + _720 + 32]
                        t = t + 32
                        continue 
                    require ext_code.size(0x845e76a8691423fbc4ecb8dd77556cb61c09ee25)
                    staticcall 0x845e76a8691423fbc4ecb8dd77556cb61c09ee25.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args 0, 64, mem[_720 + 164 len (32 * mem[_720]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_720 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _720 + ceil32(return_data.size) + 96
                    require return_data.size >= 32
                    _2829 = mem[_720 + 96 len 4], 0
                    require mem[_720 + 96 len 4], 0 <= 4294967296
                    require mem[_720 + 96 len 4], 0 + 32 <= return_data.size
                    require mem[_720 + mem[_720 + 96 len 4], 0 + 96] <= 4294967296 and mem[_720 + 96 len 4], 0 + (32 * mem[_720 + mem[_720 + 96 len 4], 0 + 96]) + 32 <= return_data.size
                    mem[_720 + ceil32(return_data.size) + 96] = mem[_720 + mem[_720 + 96 len 4], 0 + 96]
                    _3182 = mem[_720 + _2829 + 96]
                    t = 0
                    while t < 32 * _3182:
                        mem[t + _720 + ceil32(return_data.size) + 128] = mem[t + _720 + _2829 + 128]
                        t = t + 32
                        continue 
                    mem[64] = (32 * _3182) + _720 + ceil32(return_data.size) + 128
                    require mem[_720 + ceil32(return_data.size) + 96] - 1 < mem[_720 + ceil32(return_data.size) + 96]
                    if mem[(32 * mem[_720 + ceil32(return_data.size) + 96] - 1) + _720 + ceil32(return_data.size) + 128] <= s:
                        idx = idx + 1
                        s = s
                        continue 
                    idx = idx + 1
                    s = mem[(32 * mem[_720 + ceil32(return_data.size) + 96] - 1) + _720 + ceil32(return_data.size) + 128]
                    continue 
                if 8 == idx:
                    if 7 == idx:
                        _824 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        require 0 < mem[_824]
                        mem[_824 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                        require 1 < mem[_824]
                        mem[_824 + 64] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                        mem[_824 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[_824 + 100] = 0
                        mem[_824 + 132] = 64
                        mem[_824 + 164] = mem[_824]
                        t = 0
                        while t < 32 * mem[_824]:
                            mem[t + _824 + 196] = mem[t + _824 + 32]
                            t = t + 32
                            continue 
                        require ext_code.size(0x845e76a8691423fbc4ecb8dd77556cb61c09ee25)
                        staticcall 0x845e76a8691423fbc4ecb8dd77556cb61c09ee25.getAmountsOut(uint256 arg1, address[] arg2) with:
                                gas gas_remaining wei
                               args 0, 64, mem[_824 + 164 len (32 * mem[_824]) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_824 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = _824 + ceil32(return_data.size) + 96
                        require return_data.size >= 32
                        _2837 = mem[_824 + 96 len 4], 0
                        require mem[_824 + 96 len 4], 0 <= 4294967296
                        require mem[_824 + 96 len 4], 0 + 32 <= return_data.size
                        require mem[_824 + mem[_824 + 96 len 4], 0 + 96] <= 4294967296 and mem[_824 + 96 len 4], 0 + (32 * mem[_824 + mem[_824 + 96 len 4], 0 + 96]) + 32 <= return_data.size
                        mem[_824 + ceil32(return_data.size) + 96] = mem[_824 + mem[_824 + 96 len 4], 0 + 96]
                        _3186 = mem[_824 + _2837 + 96]
                        t = 0
                        while t < 32 * _3186:
                            mem[t + _824 + ceil32(return_data.size) + 128] = mem[t + _824 + _2837 + 128]
                            t = t + 32
                            continue 
                        mem[64] = (32 * _3186) + _824 + ceil32(return_data.size) + 128
                        require mem[_824 + ceil32(return_data.size) + 96] - 1 < mem[_824 + ceil32(return_data.size) + 96]
                        if mem[(32 * mem[_824 + ceil32(return_data.size) + 96] - 1) + _824 + ceil32(return_data.size) + 128] <= s:
                            idx = idx + 1
                            s = s
                            continue 
                        idx = idx + 1
                        s = mem[(32 * mem[_824 + ceil32(return_data.size) + 96] - 1) + _824 + ceil32(return_data.size) + 128]
                        continue 
                    if 8 == idx:
                        _938 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        require 0 < mem[_938]
                        mem[_938 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                        require 1 < mem[_938]
                        mem[_938 + 64] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                        mem[_938 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[_938 + 100] = 0
                        mem[_938 + 132] = 64
                        mem[_938 + 164] = mem[_938]
                        t = 0
                        while t < 32 * mem[_938]:
                            mem[t + _938 + 196] = mem[t + _938 + 32]
                            t = t + 32
                            continue 
                        require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                        staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c29.getAmountsOut(uint256 arg1, address[] arg2) with:
                                gas gas_remaining wei
                               args 0, 64, mem[_938 + 164 len (32 * mem[_938]) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_938 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = _938 + ceil32(return_data.size) + 96
                        require return_data.size >= 32
                        _2835 = mem[_938 + 96 len 4], 0
                        require mem[_938 + 96 len 4], 0 <= 4294967296
                        require mem[_938 + 96 len 4], 0 + 32 <= return_data.size
                        require mem[_938 + mem[_938 + 96 len 4], 0 + 96] <= 4294967296 and mem[_938 + 96 len 4], 0 + (32 * mem[_938 + mem[_938 + 96 len 4], 0 + 96]) + 32 <= return_data.size
                        mem[_938 + ceil32(return_data.size) + 96] = mem[_938 + mem[_938 + 96 len 4], 0 + 96]
                        _3185 = mem[_938 + _2835 + 96]
                        t = 0
                        while t < 32 * _3185:
                            mem[t + _938 + ceil32(return_data.size) + 128] = mem[t + _938 + _2835 + 128]
                            t = t + 32
                            continue 
                        mem[64] = (32 * _3185) + _938 + ceil32(return_data.size) + 128
                        require mem[_938 + ceil32(return_data.size) + 96] - 1 < mem[_938 + ceil32(return_data.size) + 96]
                        if mem[(32 * mem[_938 + ceil32(return_data.size) + 96] - 1) + _938 + ceil32(return_data.size) + 128] <= s:
                            idx = idx + 1
                            s = s
                            continue 
                        idx = idx + 1
                        s = mem[(32 * mem[_938 + ceil32(return_data.size) + 96] - 1) + _938 + ceil32(return_data.size) + 128]
                        continue 
                    if idx != 9:
                        _936 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        require 0 < mem[_936]
                        mem[_936 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                        require 1 < mem[_936]
                        mem[_936 + 64] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                        mem[_936 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[_936 + 100] = 0
                        mem[_936 + 132] = 64
                        mem[_936 + 164] = mem[_936]
                        t = 0
                        while t < 32 * mem[_936]:
                            mem[t + _936 + 196] = mem[t + _936 + 32]
                            t = t + 32
                            continue 
                        require ext_code.size(0)
                        staticcall 0x0.getAmountsOut(uint256 arg1, address[] arg2) with:
                                gas gas_remaining wei
                               args 0, 64, mem[_936 + 164 len (32 * mem[_936]) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_936 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = _936 + ceil32(return_data.size) + 96
                        require return_data.size >= 32
                        _2831 = mem[_936 + 96 len 4], 0
                        require mem[_936 + 96 len 4], 0 <= 4294967296
                        require mem[_936 + 96 len 4], 0 + 32 <= return_data.size
                        require mem[_936 + mem[_936 + 96 len 4], 0 + 96] <= 4294967296 and mem[_936 + 96 len 4], 0 + (32 * mem[_936 + mem[_936 + 96 len 4], 0 + 96]) + 32 <= return_data.size
                        mem[_936 + ceil32(return_data.size) + 96] = mem[_936 + mem[_936 + 96 len 4], 0 + 96]
                        _3183 = mem[_936 + _2831 + 96]
                        t = 0
                        while t < 32 * _3183:
                            mem[t + _936 + ceil32(return_data.size) + 128] = mem[t + _936 + _2831 + 128]
                            t = t + 32
                            continue 
                        mem[64] = (32 * _3183) + _936 + ceil32(return_data.size) + 128
                        require mem[_936 + ceil32(return_data.size) + 96] - 1 < mem[_936 + ceil32(return_data.size) + 96]
                        if mem[(32 * mem[_936 + ceil32(return_data.size) + 96] - 1) + _936 + ceil32(return_data.size) + 128] <= s:
                            idx = idx + 1
                            s = s
                            continue 
                        idx = idx + 1
                        s = mem[(32 * mem[_936 + ceil32(return_data.size) + 96] - 1) + _936 + ceil32(return_data.size) + 128]
                        continue 
                    _1054 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    require 0 < mem[_1054]
                    mem[_1054 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    require 1 < mem[_1054]
                    mem[_1054 + 64] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    mem[_1054 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_1054 + 100] = 0
                    mem[_1054 + 132] = 64
                    mem[_1054 + 164] = mem[_1054]
                    t = 0
                    while t < 32 * mem[_1054]:
                        mem[t + _1054 + 196] = mem[t + _1054 + 32]
                        t = t + 32
                        continue 
                    require ext_code.size(0x6b3d631b87fe27af29efec61d2ab8ce4d621ccbf)
                    staticcall 0x6b3d631b87fe27af29efec61d2ab8ce4d621ccbf.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args 0, 64, mem[_1054 + 164 len (32 * mem[_1054]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_1054 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _1054 + ceil32(return_data.size) + 96
                    require return_data.size >= 32
                    _2833 = mem[_1054 + 96 len 4], 0
                    require mem[_1054 + 96 len 4], 0 <= 4294967296
                    require mem[_1054 + 96 len 4], 0 + 32 <= return_data.size
                    require mem[_1054 + mem[_1054 + 96 len 4], 0 + 96] <= 4294967296 and mem[_1054 + 96 len 4], 0 + (32 * mem[_1054 + mem[_1054 + 96 len 4], 0 + 96]) + 32 <= return_data.size
                    mem[_1054 + ceil32(return_data.size) + 96] = mem[_1054 + mem[_1054 + 96 len 4], 0 + 96]
                    _3184 = mem[_1054 + _2833 + 96]
                    t = 0
                    while t < 32 * _3184:
                        mem[t + _1054 + ceil32(return_data.size) + 128] = mem[t + _1054 + _2833 + 128]
                        t = t + 32
                        continue 
                    mem[64] = (32 * _3184) + _1054 + ceil32(return_data.size) + 128
                    require mem[_1054 + ceil32(return_data.size) + 96] - 1 < mem[_1054 + ceil32(return_data.size) + 96]
                    if mem[(32 * mem[_1054 + ceil32(return_data.size) + 96] - 1) + _1054 + ceil32(return_data.size) + 128] <= s:
                        idx = idx + 1
                        s = s
                        continue 
                    idx = idx + 1
                    s = mem[(32 * mem[_1054 + ceil32(return_data.size) + 96] - 1) + _1054 + ceil32(return_data.size) + 128]
                    continue 
                if idx != 9:
                    if idx != 10:
                        if 0 <= s:
                            idx = idx + 1
                            s = s
                            continue 
                        idx = idx + 1
                        s = 0
                        continue 
                    mem[mem[64] + 4] = 0
                    mem[mem[64] + 36] = 1
                    mem[mem[64] + 68] = 0
                    require ext_code.size(0x952bda8a83c3d5f398a686bb4e8c6dd90072d523)
                    staticcall 0x952bda8a83c3d5f398a686bb4e8c6dd90072d523.calculateSwap(uint8 arg1, uint8 arg2, uint256 arg3) with:
                            gas gas_remaining wei
                           args 0, 1, 0
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
                if 7 == idx:
                    _943 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    require 0 < mem[_943]
                    mem[_943 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    require 1 < mem[_943]
                    mem[_943 + 64] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    mem[_943 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_943 + 100] = 0
                    mem[_943 + 132] = 64
                    mem[_943 + 164] = mem[_943]
                    t = 0
                    while t < 32 * mem[_943]:
                        mem[t + _943 + 196] = mem[t + _943 + 32]
                        t = t + 32
                        continue 
                    require ext_code.size(0x845e76a8691423fbc4ecb8dd77556cb61c09ee25)
                    staticcall 0x845e76a8691423fbc4ecb8dd77556cb61c09ee25.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args 0, 64, mem[_943 + 164 len (32 * mem[_943]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_943 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _943 + ceil32(return_data.size) + 96
                    require return_data.size >= 32
                    _2845 = mem[_943 + 96 len 4], 0
                    require mem[_943 + 96 len 4], 0 <= 4294967296
                    require mem[_943 + 96 len 4], 0 + 32 <= return_data.size
                    require mem[_943 + mem[_943 + 96 len 4], 0 + 96] <= 4294967296 and mem[_943 + 96 len 4], 0 + (32 * mem[_943 + mem[_943 + 96 len 4], 0 + 96]) + 32 <= return_data.size
                    mem[_943 + ceil32(return_data.size) + 96] = mem[_943 + mem[_943 + 96 len 4], 0 + 96]
                    _3190 = mem[_943 + _2845 + 96]
                    t = 0
                    while t < 32 * _3190:
                        mem[t + _943 + ceil32(return_data.size) + 128] = mem[t + _943 + _2845 + 128]
                        t = t + 32
                        continue 
                    mem[64] = (32 * _3190) + _943 + ceil32(return_data.size) + 128
                    require mem[_943 + ceil32(return_data.size) + 96] - 1 < mem[_943 + ceil32(return_data.size) + 96]
                    if mem[(32 * mem[_943 + ceil32(return_data.size) + 96] - 1) + _943 + ceil32(return_data.size) + 128] <= s:
                        idx = idx + 1
                        s = s
                        continue 
                    idx = idx + 1
                    s = mem[(32 * mem[_943 + ceil32(return_data.size) + 96] - 1) + _943 + ceil32(return_data.size) + 128]
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
                    mem[_1064 + 100] = 0
                    mem[_1064 + 132] = 64
                    mem[_1064 + 164] = mem[_1064]
                    t = 0
                    while t < 32 * mem[_1064]:
                        mem[t + _1064 + 196] = mem[t + _1064 + 32]
                        t = t + 32
                        continue 
                    require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                    staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c29.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args 0, 64, mem[_1064 + 164 len (32 * mem[_1064]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_1064 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _1064 + ceil32(return_data.size) + 96
                    require return_data.size >= 32
                    _2843 = mem[_1064 + 96 len 4], 0
                    require mem[_1064 + 96 len 4], 0 <= 4294967296
                    require mem[_1064 + 96 len 4], 0 + 32 <= return_data.size
                    require mem[_1064 + mem[_1064 + 96 len 4], 0 + 96] <= 4294967296 and mem[_1064 + 96 len 4], 0 + (32 * mem[_1064 + mem[_1064 + 96 len 4], 0 + 96]) + 32 <= return_data.size
                    mem[_1064 + ceil32(return_data.size) + 96] = mem[_1064 + mem[_1064 + 96 len 4], 0 + 96]
                    _3189 = mem[_1064 + _2843 + 96]
                    t = 0
                    while t < 32 * _3189:
                        mem[t + _1064 + ceil32(return_data.size) + 128] = mem[t + _1064 + _2843 + 128]
                        t = t + 32
                        continue 
                    mem[64] = (32 * _3189) + _1064 + ceil32(return_data.size) + 128
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
                    mem[_1062 + 100] = 0
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
                           args 0, 64, mem[_1062 + 164 len (32 * mem[_1062]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_1062 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _1062 + ceil32(return_data.size) + 96
                    require return_data.size >= 32
                    _2839 = mem[_1062 + 96 len 4], 0
                    require mem[_1062 + 96 len 4], 0 <= 4294967296
                    require mem[_1062 + 96 len 4], 0 + 32 <= return_data.size
                    require mem[_1062 + mem[_1062 + 96 len 4], 0 + 96] <= 4294967296 and mem[_1062 + 96 len 4], 0 + (32 * mem[_1062 + mem[_1062 + 96 len 4], 0 + 96]) + 32 <= return_data.size
                    mem[_1062 + ceil32(return_data.size) + 96] = mem[_1062 + mem[_1062 + 96 len 4], 0 + 96]
                    _3187 = mem[_1062 + _2839 + 96]
                    t = 0
                    while t < 32 * _3187:
                        mem[t + _1062 + ceil32(return_data.size) + 128] = mem[t + _1062 + _2839 + 128]
                        t = t + 32
                        continue 
                    mem[64] = (32 * _3187) + _1062 + ceil32(return_data.size) + 128
                    require mem[_1062 + ceil32(return_data.size) + 96] - 1 < mem[_1062 + ceil32(return_data.size) + 96]
                    if mem[(32 * mem[_1062 + ceil32(return_data.size) + 96] - 1) + _1062 + ceil32(return_data.size) + 128] <= s:
                        idx = idx + 1
                        s = s
                        continue 
                    idx = idx + 1
                    s = mem[(32 * mem[_1062 + ceil32(return_data.size) + 96] - 1) + _1062 + ceil32(return_data.size) + 128]
                    continue 
                _1199 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                require 0 < mem[_1199]
                mem[_1199 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                require 1 < mem[_1199]
                mem[_1199 + 64] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                mem[_1199 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_1199 + 100] = 0
                mem[_1199 + 132] = 64
                mem[_1199 + 164] = mem[_1199]
                t = 0
                while t < 32 * mem[_1199]:
                    mem[t + _1199 + 196] = mem[t + _1199 + 32]
                    t = t + 32
                    continue 
                require ext_code.size(0x6b3d631b87fe27af29efec61d2ab8ce4d621ccbf)
                staticcall 0x6b3d631b87fe27af29efec61d2ab8ce4d621ccbf.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args 0, 64, mem[_1199 + 164 len (32 * mem[_1199]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_1199 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _1199 + ceil32(return_data.size) + 96
                require return_data.size >= 32
                _2841 = mem[_1199 + 96 len 4], 0
                require mem[_1199 + 96 len 4], 0 <= 4294967296
                require mem[_1199 + 96 len 4], 0 + 32 <= return_data.size
                require mem[_1199 + mem[_1199 + 96 len 4], 0 + 96] <= 4294967296 and mem[_1199 + 96 len 4], 0 + (32 * mem[_1199 + mem[_1199 + 96 len 4], 0 + 96]) + 32 <= return_data.size
                mem[_1199 + ceil32(return_data.size) + 96] = mem[_1199 + mem[_1199 + 96 len 4], 0 + 96]
                _3188 = mem[_1199 + _2841 + 96]
                t = 0
                while t < 32 * _3188:
                    mem[t + _1199 + ceil32(return_data.size) + 128] = mem[t + _1199 + _2841 + 128]
                    t = t + 32
                    continue 
                mem[64] = (32 * _3188) + _1199 + ceil32(return_data.size) + 128
                require mem[_1199 + ceil32(return_data.size) + 96] - 1 < mem[_1199 + ceil32(return_data.size) + 96]
                if mem[(32 * mem[_1199 + ceil32(return_data.size) + 96] - 1) + _1199 + ceil32(return_data.size) + 128] <= s:
                    idx = idx + 1
                    s = s
                    continue 
                idx = idx + 1
                s = mem[(32 * mem[_1199 + ceil32(return_data.size) + 96] - 1) + _1199 + ceil32(return_data.size) + 128]
                continue 
            _335 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            require 0 < mem[_335]
            mem[_335 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
            require 1 < mem[_335]
            mem[_335 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
            mem[_335 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[_335 + 100] = 0
            mem[_335 + 132] = 64
            mem[_335 + 164] = mem[_335]
            t = 0
            while t < 32 * mem[_335]:
                mem[t + _335 + 196] = mem[t + _335 + 32]
                t = t + 32
                continue 
            require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
            staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c29.getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args 0, 64, mem[_335 + 164 len (32 * mem[_335]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[_335 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = _335 + ceil32(return_data.size) + 96
            require return_data.size >= 32
            _2847 = mem[_335 + 96 len 4], 0
            require mem[_335 + 96 len 4], 0 <= 4294967296
            require mem[_335 + 96 len 4], 0 + 32 <= return_data.size
            require mem[_335 + mem[_335 + 96 len 4], 0 + 96] <= 4294967296 and mem[_335 + 96 len 4], 0 + (32 * mem[_335 + mem[_335 + 96 len 4], 0 + 96]) + 32 <= return_data.size
            mem[_335 + ceil32(return_data.size) + 96] = mem[_335 + mem[_335 + 96 len 4], 0 + 96]
            _3191 = mem[_335 + _2847 + 96]
            t = 0
            while t < 32 * _3191:
                mem[t + _335 + ceil32(return_data.size) + 128] = mem[t + _335 + _2847 + 128]
                t = t + 32
                continue 
            require mem[_335 + ceil32(return_data.size) + 96] - 1 < mem[_335 + ceil32(return_data.size) + 96]
            _8913 = mem[(32 * mem[_335 + ceil32(return_data.size) + 96] - 1) + _335 + ceil32(return_data.size) + 128]
            mem[(32 * _3191) + _335 + ceil32(return_data.size) + 128] = 2
            mem[(32 * _3191) + _335 + ceil32(return_data.size) + 160] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
            mem[(32 * _3191) + _335 + ceil32(return_data.size) + 192] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
            mem[(32 * _3191) + _335 + ceil32(return_data.size) + 224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[(32 * _3191) + _335 + ceil32(return_data.size) + 228] = _8913
            mem[(32 * _3191) + _335 + ceil32(return_data.size) + 260] = 64
            mem[(32 * _3191) + _335 + ceil32(return_data.size) + 292] = 2
            t = 0
            while t < 64:
                mem[t + (32 * _3191) + _335 + ceil32(return_data.size) + 324] = mem[t + (32 * _3191) + _335 + ceil32(return_data.size) + 160]
                t = t + 32
                continue 
            require ext_code.size(0x1b02da8cb0d097eb8d57a175b88c7d8b47997506)
            staticcall 0x1b02da8cb0d097eb8d57a175b88c7d8b47997506.getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args _8913, Array(len=2, data=mem[(32 * _3191) + _335 + ceil32(return_data.size) + 324 len 64])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _3191) + _335 + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * _3191) + _335 + (2 * ceil32(return_data.size)) + 224
            require return_data.size >= 32
            _12211 = mem[(32 * _3191) + _335 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _8913) >> 32
            require mem[(32 * _3191) + _335 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _8913) >> 32 <= 4294967296
            require mem[(32 * _3191) + _335 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _8913) >> 32 + 32 <= return_data.size
            require mem[(32 * _3191) + _335 + ceil32(return_data.size) + mem[(32 * _3191) + _335 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _8913) >> 32 + 224] <= 4294967296 and mem[(32 * _3191) + _335 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _8913) >> 32 + (32 * mem[(32 * _3191) + _335 + ceil32(return_data.size) + mem[(32 * _3191) + _335 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _8913) >> 32 + 224]) + 32 <= return_data.size
            mem[(32 * _3191) + _335 + (2 * ceil32(return_data.size)) + 224] = mem[(32 * _3191) + _335 + ceil32(return_data.size) + mem[(32 * _3191) + _335 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _8913) >> 32 + 224]
            _12299 = mem[(32 * _3191) + _335 + ceil32(return_data.size) + _12211 + 224]
            t = 0
            while t < 32 * _12299:
                mem[t + (32 * _3191) + _335 + (2 * ceil32(return_data.size)) + 256] = mem[t + (32 * _3191) + _335 + ceil32(return_data.size) + _12211 + 256]
                t = t + 32
                continue 
            mem[64] = (32 * _12299) + (32 * _3191) + _335 + (2 * ceil32(return_data.size)) + 256
            require mem[(32 * _3191) + _335 + (2 * ceil32(return_data.size)) + 224] - 1 < mem[(32 * _3191) + _335 + (2 * ceil32(return_data.size)) + 224]
            if mem[(32 * mem[(32 * _3191) + _335 + (2 * ceil32(return_data.size)) + 224] - 1) + (32 * _3191) + _335 + (2 * ceil32(return_data.size)) + 256] <= s:
                idx = idx + 1
                s = s
                continue 
            idx = idx + 1
            s = mem[(32 * mem[(32 * _3191) + _335 + (2 * ceil32(return_data.size)) + 224] - 1) + (32 * _3191) + _335 + (2 * ceil32(return_data.size)) + 256]
            continue 
        idx = 0
        t = 0
        while idx < 6:
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
                _3653 = mem[64]
                mem[mem[64]] = 3
                mem[64] = mem[64] + 128
                require 0 < mem[_3653]
                mem[_3653 + 32] = 0x49d68029688eabf473097a2fc38ef61633a3c
                require 1 < mem[_3653]
                mem[_3653 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                require 2 < mem[_3653]
                mem[_3653 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                mem[_3653 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_3653 + 132] = s
                mem[_3653 + 164] = 64
                mem[_3653 + 196] = mem[_3653]
                u = 0
                while u < 32 * mem[_3653]:
                    mem[u + _3653 + 228] = mem[u + _3653 + 32]
                    u = u + 32
                    continue 
                require ext_code.size(0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52)
                staticcall 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args s, 64, mem[_3653 + 196 len (32 * mem[_3653]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_3653 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _3653 + ceil32(return_data.size) + 128
                require return_data.size >= 32
                _9387 = mem[_3653 + 128 len 4], Mask(224, 32, s) >> 32
                require mem[_3653 + 128 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                require mem[_3653 + 128 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                require mem[_3653 + mem[_3653 + 128 len 4], Mask(224, 32, s) >> 32 + 128] <= 4294967296 and mem[_3653 + 128 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_3653 + mem[_3653 + 128 len 4], Mask(224, 32, s) >> 32 + 128]) + 32 <= return_data.size
                mem[_3653 + ceil32(return_data.size) + 128] = mem[_3653 + mem[_3653 + 128 len 4], Mask(224, 32, s) >> 32 + 128]
                _9955 = mem[_3653 + _9387 + 128]
                s = 0
                while s < 32 * _9955:
                    mem[s + _3653 + ceil32(return_data.size) + 160] = mem[s + _3653 + _9387 + 160]
                    s = s + 32
                    continue 
                mem[64] = (32 * _9955) + _3653 + ceil32(return_data.size) + 160
                require mem[_3653 + ceil32(return_data.size) + 128] - 1 < mem[_3653 + ceil32(return_data.size) + 128]
                if mem[(32 * mem[_3653 + ceil32(return_data.size) + 128] - 1) + _3653 + ceil32(return_data.size) + 160] <= t:
                    idx = idx + 1
                    t = t
                    continue 
                idx = idx + 1
                t = mem[(32 * mem[_3653 + ceil32(return_data.size) + 128] - 1) + _3653 + ceil32(return_data.size) + 160]
                continue 
            if 3 == idx:
                if 2 == idx:
                    _3732 = mem[64]
                    mem[mem[64]] = 3
                    mem[64] = mem[64] + 128
                    require 0 < mem[_3732]
                    mem[_3732 + 32] = 0x49d68029688eabf473097a2fc38ef61633a3c
                    require 1 < mem[_3732]
                    mem[_3732 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                    require 2 < mem[_3732]
                    mem[_3732 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    mem[_3732 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_3732 + 132] = s
                    mem[_3732 + 164] = 64
                    mem[_3732 + 196] = mem[_3732]
                    u = 0
                    while u < 32 * mem[_3732]:
                        mem[u + _3732 + 228] = mem[u + _3732 + 32]
                        u = u + 32
                        continue 
                    require ext_code.size(0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52)
                    staticcall 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args s, 64, mem[_3732 + 196 len (32 * mem[_3732]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_3732 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _3732 + ceil32(return_data.size) + 128
                    require return_data.size >= 32
                    _9397 = mem[_3732 + 128 len 4], Mask(224, 32, s) >> 32
                    require mem[_3732 + 128 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                    require mem[_3732 + 128 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                    require mem[_3732 + mem[_3732 + 128 len 4], Mask(224, 32, s) >> 32 + 128] <= 4294967296 and mem[_3732 + 128 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_3732 + mem[_3732 + 128 len 4], Mask(224, 32, s) >> 32 + 128]) + 32 <= return_data.size
                    mem[_3732 + ceil32(return_data.size) + 128] = mem[_3732 + mem[_3732 + 128 len 4], Mask(224, 32, s) >> 32 + 128]
                    _9960 = mem[_3732 + _9397 + 128]
                    s = 0
                    while s < 32 * _9960:
                        mem[s + _3732 + ceil32(return_data.size) + 160] = mem[s + _3732 + _9397 + 160]
                        s = s + 32
                        continue 
                    mem[64] = (32 * _9960) + _3732 + ceil32(return_data.size) + 160
                    require mem[_3732 + ceil32(return_data.size) + 128] - 1 < mem[_3732 + ceil32(return_data.size) + 128]
                    if mem[(32 * mem[_3732 + ceil32(return_data.size) + 128] - 1) + _3732 + ceil32(return_data.size) + 160] <= t:
                        idx = idx + 1
                        t = t
                        continue 
                    idx = idx + 1
                    t = mem[(32 * mem[_3732 + ceil32(return_data.size) + 128] - 1) + _3732 + ceil32(return_data.size) + 160]
                    continue 
                if 3 == idx:
                    _3790 = mem[64]
                    mem[mem[64]] = 3
                    mem[64] = mem[64] + 128
                    require 0 < mem[_3790]
                    mem[_3790 + 32] = 0x49d68029688eabf473097a2fc38ef61633a3c
                    require 1 < mem[_3790]
                    mem[_3790 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                    require 2 < mem[_3790]
                    mem[_3790 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    mem[_3790 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_3790 + 132] = s
                    mem[_3790 + 164] = 64
                    mem[_3790 + 196] = mem[_3790]
                    u = 0
                    while u < 32 * mem[_3790]:
                        mem[u + _3790 + 228] = mem[u + _3790 + 32]
                        u = u + 32
                        continue 
                    require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                    staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c29.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args s, 64, mem[_3790 + 196 len (32 * mem[_3790]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_3790 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _3790 + ceil32(return_data.size) + 128
                    require return_data.size >= 32
                    _9395 = mem[_3790 + 128 len 4], Mask(224, 32, s) >> 32
                    require mem[_3790 + 128 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                    require mem[_3790 + 128 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                    require mem[_3790 + mem[_3790 + 128 len 4], Mask(224, 32, s) >> 32 + 128] <= 4294967296 and mem[_3790 + 128 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_3790 + mem[_3790 + 128 len 4], Mask(224, 32, s) >> 32 + 128]) + 32 <= return_data.size
                    mem[_3790 + ceil32(return_data.size) + 128] = mem[_3790 + mem[_3790 + 128 len 4], Mask(224, 32, s) >> 32 + 128]
                    _9959 = mem[_3790 + _9395 + 128]
                    s = 0
                    while s < 32 * _9959:
                        mem[s + _3790 + ceil32(return_data.size) + 160] = mem[s + _3790 + _9395 + 160]
                        s = s + 32
                        continue 
                    mem[64] = (32 * _9959) + _3790 + ceil32(return_data.size) + 160
                    require mem[_3790 + ceil32(return_data.size) + 128] - 1 < mem[_3790 + ceil32(return_data.size) + 128]
                    if mem[(32 * mem[_3790 + ceil32(return_data.size) + 128] - 1) + _3790 + ceil32(return_data.size) + 160] <= t:
                        idx = idx + 1
                        t = t
                        continue 
                    idx = idx + 1
                    t = mem[(32 * mem[_3790 + ceil32(return_data.size) + 128] - 1) + _3790 + ceil32(return_data.size) + 160]
                    continue 
                if 4 == idx:
                    _3900 = mem[64]
                    mem[mem[64]] = 3
                    mem[64] = mem[64] + 128
                    require 0 < mem[_3900]
                    mem[_3900 + 32] = 0x49d68029688eabf473097a2fc38ef61633a3c
                    require 1 < mem[_3900]
                    mem[_3900 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                    require 2 < mem[_3900]
                    mem[_3900 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    mem[_3900 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_3900 + 132] = s
                    mem[_3900 + 164] = 64
                    mem[_3900 + 196] = mem[_3900]
                    u = 0
                    while u < 32 * mem[_3900]:
                        mem[u + _3900 + 228] = mem[u + _3900 + 32]
                        u = u + 32
                        continue 
                    require ext_code.size(0x7b17021fcb7bc888641dc3bedfed3734fcaf2c87)
                    staticcall 0x7b17021fcb7bc888641dc3bedfed3734fcaf2c87.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args s, 64, mem[_3900 + 196 len (32 * mem[_3900]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_3900 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _3900 + ceil32(return_data.size) + 128
                    require return_data.size >= 32
                    _9393 = mem[_3900 + 128 len 4], Mask(224, 32, s) >> 32
                    require mem[_3900 + 128 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                    require mem[_3900 + 128 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                    require mem[_3900 + mem[_3900 + 128 len 4], Mask(224, 32, s) >> 32 + 128] <= 4294967296 and mem[_3900 + 128 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_3900 + mem[_3900 + 128 len 4], Mask(224, 32, s) >> 32 + 128]) + 32 <= return_data.size
                    mem[_3900 + ceil32(return_data.size) + 128] = mem[_3900 + mem[_3900 + 128 len 4], Mask(224, 32, s) >> 32 + 128]
                    _9958 = mem[_3900 + _9393 + 128]
                    s = 0
                    while s < 32 * _9958:
                        mem[s + _3900 + ceil32(return_data.size) + 160] = mem[s + _3900 + _9393 + 160]
                        s = s + 32
                        continue 
                    mem[64] = (32 * _9958) + _3900 + ceil32(return_data.size) + 160
                    require mem[_3900 + ceil32(return_data.size) + 128] - 1 < mem[_3900 + ceil32(return_data.size) + 128]
                    if mem[(32 * mem[_3900 + ceil32(return_data.size) + 128] - 1) + _3900 + ceil32(return_data.size) + 160] <= t:
                        idx = idx + 1
                        t = t
                        continue 
                    idx = idx + 1
                    t = mem[(32 * mem[_3900 + ceil32(return_data.size) + 128] - 1) + _3900 + ceil32(return_data.size) + 160]
                    continue 
                if idx != 5:
                    _3898 = mem[64]
                    mem[mem[64]] = 3
                    mem[64] = mem[64] + 128
                    require 0 < mem[_3898]
                    mem[_3898 + 32] = 0x49d68029688eabf473097a2fc38ef61633a3c
                    require 1 < mem[_3898]
                    mem[_3898 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                    require 2 < mem[_3898]
                    mem[_3898 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    mem[_3898 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_3898 + 132] = s
                    mem[_3898 + 164] = 64
                    mem[_3898 + 196] = mem[_3898]
                    u = 0
                    while u < 32 * mem[_3898]:
                        mem[u + _3898 + 228] = mem[u + _3898 + 32]
                        u = u + 32
                        continue 
                    require ext_code.size(0)
                    staticcall 0x0.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args s, 64, mem[_3898 + 196 len (32 * mem[_3898]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_3898 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _3898 + ceil32(return_data.size) + 128
                    require return_data.size >= 32
                    _9389 = mem[_3898 + 128 len 4], Mask(224, 32, s) >> 32
                    require mem[_3898 + 128 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                    require mem[_3898 + 128 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                    require mem[_3898 + mem[_3898 + 128 len 4], Mask(224, 32, s) >> 32 + 128] <= 4294967296 and mem[_3898 + 128 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_3898 + mem[_3898 + 128 len 4], Mask(224, 32, s) >> 32 + 128]) + 32 <= return_data.size
                    mem[_3898 + ceil32(return_data.size) + 128] = mem[_3898 + mem[_3898 + 128 len 4], Mask(224, 32, s) >> 32 + 128]
                    _9956 = mem[_3898 + _9389 + 128]
                    s = 0
                    while s < 32 * _9956:
                        mem[s + _3898 + ceil32(return_data.size) + 160] = mem[s + _3898 + _9389 + 160]
                        s = s + 32
                        continue 
                    mem[64] = (32 * _9956) + _3898 + ceil32(return_data.size) + 160
                    require mem[_3898 + ceil32(return_data.size) + 128] - 1 < mem[_3898 + ceil32(return_data.size) + 128]
                    if mem[(32 * mem[_3898 + ceil32(return_data.size) + 128] - 1) + _3898 + ceil32(return_data.size) + 160] <= t:
                        idx = idx + 1
                        t = t
                        continue 
                    idx = idx + 1
                    t = mem[(32 * mem[_3898 + ceil32(return_data.size) + 128] - 1) + _3898 + ceil32(return_data.size) + 160]
                    continue 
                _4063 = mem[64]
                mem[mem[64]] = 3
                mem[64] = mem[64] + 128
                require 0 < mem[_4063]
                mem[_4063 + 32] = 0x49d68029688eabf473097a2fc38ef61633a3c
                require 1 < mem[_4063]
                mem[_4063 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                require 2 < mem[_4063]
                mem[_4063 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                mem[_4063 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_4063 + 132] = s
                mem[_4063 + 164] = 64
                mem[_4063 + 196] = mem[_4063]
                u = 0
                while u < 32 * mem[_4063]:
                    mem[u + _4063 + 228] = mem[u + _4063 + 32]
                    u = u + 32
                    continue 
                require ext_code.size(0x845e76a8691423fbc4ecb8dd77556cb61c09ee25)
                staticcall 0x845e76a8691423fbc4ecb8dd77556cb61c09ee25.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args s, 64, mem[_4063 + 196 len (32 * mem[_4063]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_4063 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _4063 + ceil32(return_data.size) + 128
                require return_data.size >= 32
                _9391 = mem[_4063 + 128 len 4], Mask(224, 32, s) >> 32
                require mem[_4063 + 128 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                require mem[_4063 + 128 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                require mem[_4063 + mem[_4063 + 128 len 4], Mask(224, 32, s) >> 32 + 128] <= 4294967296 and mem[_4063 + 128 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_4063 + mem[_4063 + 128 len 4], Mask(224, 32, s) >> 32 + 128]) + 32 <= return_data.size
                mem[_4063 + ceil32(return_data.size) + 128] = mem[_4063 + mem[_4063 + 128 len 4], Mask(224, 32, s) >> 32 + 128]
                _9957 = mem[_4063 + _9391 + 128]
                s = 0
                while s < 32 * _9957:
                    mem[s + _4063 + ceil32(return_data.size) + 160] = mem[s + _4063 + _9391 + 160]
                    s = s + 32
                    continue 
                mem[64] = (32 * _9957) + _4063 + ceil32(return_data.size) + 160
                require mem[_4063 + ceil32(return_data.size) + 128] - 1 < mem[_4063 + ceil32(return_data.size) + 128]
                if mem[(32 * mem[_4063 + ceil32(return_data.size) + 128] - 1) + _4063 + ceil32(return_data.size) + 160] <= t:
                    idx = idx + 1
                    t = t
                    continue 
                idx = idx + 1
                t = mem[(32 * mem[_4063 + ceil32(return_data.size) + 128] - 1) + _4063 + ceil32(return_data.size) + 160]
                continue 
            if 4 == idx:
                if 2 == idx:
                    _3793 = mem[64]
                    mem[mem[64]] = 3
                    mem[64] = mem[64] + 128
                    require 0 < mem[_3793]
                    mem[_3793 + 32] = 0x49d68029688eabf473097a2fc38ef61633a3c
                    require 1 < mem[_3793]
                    mem[_3793 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                    require 2 < mem[_3793]
                    mem[_3793 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    mem[_3793 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_3793 + 132] = s
                    mem[_3793 + 164] = 64
                    mem[_3793 + 196] = mem[_3793]
                    u = 0
                    while u < 32 * mem[_3793]:
                        mem[u + _3793 + 228] = mem[u + _3793 + 32]
                        u = u + 32
                        continue 
                    require ext_code.size(0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52)
                    staticcall 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args s, 64, mem[_3793 + 196 len (32 * mem[_3793]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_3793 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _3793 + ceil32(return_data.size) + 128
                    require return_data.size >= 32
                    _9407 = mem[_3793 + 128 len 4], Mask(224, 32, s) >> 32
                    require mem[_3793 + 128 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                    require mem[_3793 + 128 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                    require mem[_3793 + mem[_3793 + 128 len 4], Mask(224, 32, s) >> 32 + 128] <= 4294967296 and mem[_3793 + 128 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_3793 + mem[_3793 + 128 len 4], Mask(224, 32, s) >> 32 + 128]) + 32 <= return_data.size
                    mem[_3793 + ceil32(return_data.size) + 128] = mem[_3793 + mem[_3793 + 128 len 4], Mask(224, 32, s) >> 32 + 128]
                    _9965 = mem[_3793 + _9407 + 128]
                    s = 0
                    while s < 32 * _9965:
                        mem[s + _3793 + ceil32(return_data.size) + 160] = mem[s + _3793 + _9407 + 160]
                        s = s + 32
                        continue 
                    mem[64] = (32 * _9965) + _3793 + ceil32(return_data.size) + 160
                    require mem[_3793 + ceil32(return_data.size) + 128] - 1 < mem[_3793 + ceil32(return_data.size) + 128]
                    if mem[(32 * mem[_3793 + ceil32(return_data.size) + 128] - 1) + _3793 + ceil32(return_data.size) + 160] <= t:
                        idx = idx + 1
                        t = t
                        continue 
                    idx = idx + 1
                    t = mem[(32 * mem[_3793 + ceil32(return_data.size) + 128] - 1) + _3793 + ceil32(return_data.size) + 160]
                    continue 
                if 3 == idx:
                    _3904 = mem[64]
                    mem[mem[64]] = 3
                    mem[64] = mem[64] + 128
                    require 0 < mem[_3904]
                    mem[_3904 + 32] = 0x49d68029688eabf473097a2fc38ef61633a3c
                    require 1 < mem[_3904]
                    mem[_3904 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                    require 2 < mem[_3904]
                    mem[_3904 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    mem[_3904 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_3904 + 132] = s
                    mem[_3904 + 164] = 64
                    mem[_3904 + 196] = mem[_3904]
                    u = 0
                    while u < 32 * mem[_3904]:
                        mem[u + _3904 + 228] = mem[u + _3904 + 32]
                        u = u + 32
                        continue 
                    require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                    staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c29.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args s, 64, mem[_3904 + 196 len (32 * mem[_3904]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_3904 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _3904 + ceil32(return_data.size) + 128
                    require return_data.size >= 32
                    _9405 = mem[_3904 + 128 len 4], Mask(224, 32, s) >> 32
                    require mem[_3904 + 128 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                    require mem[_3904 + 128 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                    require mem[_3904 + mem[_3904 + 128 len 4], Mask(224, 32, s) >> 32 + 128] <= 4294967296 and mem[_3904 + 128 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_3904 + mem[_3904 + 128 len 4], Mask(224, 32, s) >> 32 + 128]) + 32 <= return_data.size
                    mem[_3904 + ceil32(return_data.size) + 128] = mem[_3904 + mem[_3904 + 128 len 4], Mask(224, 32, s) >> 32 + 128]
                    _9964 = mem[_3904 + _9405 + 128]
                    s = 0
                    while s < 32 * _9964:
                        mem[s + _3904 + ceil32(return_data.size) + 160] = mem[s + _3904 + _9405 + 160]
                        s = s + 32
                        continue 
                    mem[64] = (32 * _9964) + _3904 + ceil32(return_data.size) + 160
                    require mem[_3904 + ceil32(return_data.size) + 128] - 1 < mem[_3904 + ceil32(return_data.size) + 128]
                    if mem[(32 * mem[_3904 + ceil32(return_data.size) + 128] - 1) + _3904 + ceil32(return_data.size) + 160] <= t:
                        idx = idx + 1
                        t = t
                        continue 
                    idx = idx + 1
                    t = mem[(32 * mem[_3904 + ceil32(return_data.size) + 128] - 1) + _3904 + ceil32(return_data.size) + 160]
                    continue 
                if 4 == idx:
                    _4072 = mem[64]
                    mem[mem[64]] = 3
                    mem[64] = mem[64] + 128
                    require 0 < mem[_4072]
                    mem[_4072 + 32] = 0x49d68029688eabf473097a2fc38ef61633a3c
                    require 1 < mem[_4072]
                    mem[_4072 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                    require 2 < mem[_4072]
                    mem[_4072 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    mem[_4072 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_4072 + 132] = s
                    mem[_4072 + 164] = 64
                    mem[_4072 + 196] = mem[_4072]
                    u = 0
                    while u < 32 * mem[_4072]:
                        mem[u + _4072 + 228] = mem[u + _4072 + 32]
                        u = u + 32
                        continue 
                    require ext_code.size(0x7b17021fcb7bc888641dc3bedfed3734fcaf2c87)
                    staticcall 0x7b17021fcb7bc888641dc3bedfed3734fcaf2c87.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args s, 64, mem[_4072 + 196 len (32 * mem[_4072]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_4072 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _4072 + ceil32(return_data.size) + 128
                    require return_data.size >= 32
                    _9403 = mem[_4072 + 128 len 4], Mask(224, 32, s) >> 32
                    require mem[_4072 + 128 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                    require mem[_4072 + 128 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                    require mem[_4072 + mem[_4072 + 128 len 4], Mask(224, 32, s) >> 32 + 128] <= 4294967296 and mem[_4072 + 128 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_4072 + mem[_4072 + 128 len 4], Mask(224, 32, s) >> 32 + 128]) + 32 <= return_data.size
                    mem[_4072 + ceil32(return_data.size) + 128] = mem[_4072 + mem[_4072 + 128 len 4], Mask(224, 32, s) >> 32 + 128]
                    _9963 = mem[_4072 + _9403 + 128]
                    s = 0
                    while s < 32 * _9963:
                        mem[s + _4072 + ceil32(return_data.size) + 160] = mem[s + _4072 + _9403 + 160]
                        s = s + 32
                        continue 
                    mem[64] = (32 * _9963) + _4072 + ceil32(return_data.size) + 160
                    require mem[_4072 + ceil32(return_data.size) + 128] - 1 < mem[_4072 + ceil32(return_data.size) + 128]
                    if mem[(32 * mem[_4072 + ceil32(return_data.size) + 128] - 1) + _4072 + ceil32(return_data.size) + 160] <= t:
                        idx = idx + 1
                        t = t
                        continue 
                    idx = idx + 1
                    t = mem[(32 * mem[_4072 + ceil32(return_data.size) + 128] - 1) + _4072 + ceil32(return_data.size) + 160]
                    continue 
                if idx != 5:
                    _4070 = mem[64]
                    mem[mem[64]] = 3
                    mem[64] = mem[64] + 128
                    require 0 < mem[_4070]
                    mem[_4070 + 32] = 0x49d68029688eabf473097a2fc38ef61633a3c
                    require 1 < mem[_4070]
                    mem[_4070 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                    require 2 < mem[_4070]
                    mem[_4070 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    mem[_4070 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_4070 + 132] = s
                    mem[_4070 + 164] = 64
                    mem[_4070 + 196] = mem[_4070]
                    u = 0
                    while u < 32 * mem[_4070]:
                        mem[u + _4070 + 228] = mem[u + _4070 + 32]
                        u = u + 32
                        continue 
                    require ext_code.size(0)
                    staticcall 0x0.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args s, 64, mem[_4070 + 196 len (32 * mem[_4070]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_4070 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _4070 + ceil32(return_data.size) + 128
                    require return_data.size >= 32
                    _9399 = mem[_4070 + 128 len 4], Mask(224, 32, s) >> 32
                    require mem[_4070 + 128 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                    require mem[_4070 + 128 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                    require mem[_4070 + mem[_4070 + 128 len 4], Mask(224, 32, s) >> 32 + 128] <= 4294967296 and mem[_4070 + 128 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_4070 + mem[_4070 + 128 len 4], Mask(224, 32, s) >> 32 + 128]) + 32 <= return_data.size
                    mem[_4070 + ceil32(return_data.size) + 128] = mem[_4070 + mem[_4070 + 128 len 4], Mask(224, 32, s) >> 32 + 128]
                    _9961 = mem[_4070 + _9399 + 128]
                    s = 0
                    while s < 32 * _9961:
                        mem[s + _4070 + ceil32(return_data.size) + 160] = mem[s + _4070 + _9399 + 160]
                        s = s + 32
                        continue 
                    mem[64] = (32 * _9961) + _4070 + ceil32(return_data.size) + 160
                    require mem[_4070 + ceil32(return_data.size) + 128] - 1 < mem[_4070 + ceil32(return_data.size) + 128]
                    if mem[(32 * mem[_4070 + ceil32(return_data.size) + 128] - 1) + _4070 + ceil32(return_data.size) + 160] <= t:
                        idx = idx + 1
                        t = t
                        continue 
                    idx = idx + 1
                    t = mem[(32 * mem[_4070 + ceil32(return_data.size) + 128] - 1) + _4070 + ceil32(return_data.size) + 160]
                    continue 
                _4280 = mem[64]
                mem[mem[64]] = 3
                mem[64] = mem[64] + 128
                require 0 < mem[_4280]
                mem[_4280 + 32] = 0x49d68029688eabf473097a2fc38ef61633a3c
                require 1 < mem[_4280]
                mem[_4280 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                require 2 < mem[_4280]
                mem[_4280 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                mem[_4280 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_4280 + 132] = s
                mem[_4280 + 164] = 64
                mem[_4280 + 196] = mem[_4280]
                u = 0
                while u < 32 * mem[_4280]:
                    mem[u + _4280 + 228] = mem[u + _4280 + 32]
                    u = u + 32
                    continue 
                require ext_code.size(0x845e76a8691423fbc4ecb8dd77556cb61c09ee25)
                staticcall 0x845e76a8691423fbc4ecb8dd77556cb61c09ee25.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args s, 64, mem[_4280 + 196 len (32 * mem[_4280]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_4280 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _4280 + ceil32(return_data.size) + 128
                require return_data.size >= 32
                _9401 = mem[_4280 + 128 len 4], Mask(224, 32, s) >> 32
                require mem[_4280 + 128 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                require mem[_4280 + 128 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                require mem[_4280 + mem[_4280 + 128 len 4], Mask(224, 32, s) >> 32 + 128] <= 4294967296 and mem[_4280 + 128 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_4280 + mem[_4280 + 128 len 4], Mask(224, 32, s) >> 32 + 128]) + 32 <= return_data.size
                mem[_4280 + ceil32(return_data.size) + 128] = mem[_4280 + mem[_4280 + 128 len 4], Mask(224, 32, s) >> 32 + 128]
                _9962 = mem[_4280 + _9401 + 128]
                s = 0
                while s < 32 * _9962:
                    mem[s + _4280 + ceil32(return_data.size) + 160] = mem[s + _4280 + _9401 + 160]
                    s = s + 32
                    continue 
                mem[64] = (32 * _9962) + _4280 + ceil32(return_data.size) + 160
                require mem[_4280 + ceil32(return_data.size) + 128] - 1 < mem[_4280 + ceil32(return_data.size) + 128]
                if mem[(32 * mem[_4280 + ceil32(return_data.size) + 128] - 1) + _4280 + ceil32(return_data.size) + 160] <= t:
                    idx = idx + 1
                    t = t
                    continue 
                idx = idx + 1
                t = mem[(32 * mem[_4280 + ceil32(return_data.size) + 128] - 1) + _4280 + ceil32(return_data.size) + 160]
                continue 
            if 5 == idx:
                if 2 == idx:
                    _3909 = mem[64]
                    mem[mem[64]] = 3
                    mem[64] = mem[64] + 128
                    require 0 < mem[_3909]
                    mem[_3909 + 32] = 0x49d68029688eabf473097a2fc38ef61633a3c
                    require 1 < mem[_3909]
                    mem[_3909 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                    require 2 < mem[_3909]
                    mem[_3909 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    mem[_3909 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_3909 + 132] = s
                    mem[_3909 + 164] = 64
                    mem[_3909 + 196] = mem[_3909]
                    u = 0
                    while u < 32 * mem[_3909]:
                        mem[u + _3909 + 228] = mem[u + _3909 + 32]
                        u = u + 32
                        continue 
                    require ext_code.size(0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52)
                    staticcall 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args s, 64, mem[_3909 + 196 len (32 * mem[_3909]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_3909 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _3909 + ceil32(return_data.size) + 128
                    require return_data.size >= 32
                    _9439 = mem[_3909 + 128 len 4], Mask(224, 32, s) >> 32
                    require mem[_3909 + 128 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                    require mem[_3909 + 128 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                    require mem[_3909 + mem[_3909 + 128 len 4], Mask(224, 32, s) >> 32 + 128] <= 4294967296 and mem[_3909 + 128 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_3909 + mem[_3909 + 128 len 4], Mask(224, 32, s) >> 32 + 128]) + 32 <= return_data.size
                    mem[_3909 + ceil32(return_data.size) + 128] = mem[_3909 + mem[_3909 + 128 len 4], Mask(224, 32, s) >> 32 + 128]
                    _9981 = mem[_3909 + _9439 + 128]
                    s = 0
                    while s < 32 * _9981:
                        mem[s + _3909 + ceil32(return_data.size) + 160] = mem[s + _3909 + _9439 + 160]
                        s = s + 32
                        continue 
                    mem[64] = (32 * _9981) + _3909 + ceil32(return_data.size) + 160
                    require mem[_3909 + ceil32(return_data.size) + 128] - 1 < mem[_3909 + ceil32(return_data.size) + 128]
                    if mem[(32 * mem[_3909 + ceil32(return_data.size) + 128] - 1) + _3909 + ceil32(return_data.size) + 160] <= t:
                        idx = idx + 1
                        t = t
                        continue 
                    idx = idx + 1
                    t = mem[(32 * mem[_3909 + ceil32(return_data.size) + 128] - 1) + _3909 + ceil32(return_data.size) + 160]
                    continue 
                if 3 == idx:
                    _4079 = mem[64]
                    mem[mem[64]] = 3
                    mem[64] = mem[64] + 128
                    require 0 < mem[_4079]
                    mem[_4079 + 32] = 0x49d68029688eabf473097a2fc38ef61633a3c
                    require 1 < mem[_4079]
                    mem[_4079 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                    require 2 < mem[_4079]
                    mem[_4079 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    mem[_4079 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_4079 + 132] = s
                    mem[_4079 + 164] = 64
                    mem[_4079 + 196] = mem[_4079]
                    u = 0
                    while u < 32 * mem[_4079]:
                        mem[u + _4079 + 228] = mem[u + _4079 + 32]
                        u = u + 32
                        continue 
                    require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                    staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c29.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args s, 64, mem[_4079 + 196 len (32 * mem[_4079]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_4079 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _4079 + ceil32(return_data.size) + 128
                    require return_data.size >= 32
                    _9437 = mem[_4079 + 128 len 4], Mask(224, 32, s) >> 32
                    require mem[_4079 + 128 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                    require mem[_4079 + 128 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                    require mem[_4079 + mem[_4079 + 128 len 4], Mask(224, 32, s) >> 32 + 128] <= 4294967296 and mem[_4079 + 128 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_4079 + mem[_4079 + 128 len 4], Mask(224, 32, s) >> 32 + 128]) + 32 <= return_data.size
                    mem[_4079 + ceil32(return_data.size) + 128] = mem[_4079 + mem[_4079 + 128 len 4], Mask(224, 32, s) >> 32 + 128]
                    _9980 = mem[_4079 + _9437 + 128]
                    s = 0
                    while s < 32 * _9980:
                        mem[s + _4079 + ceil32(return_data.size) + 160] = mem[s + _4079 + _9437 + 160]
                        s = s + 32
                        continue 
                    mem[64] = (32 * _9980) + _4079 + ceil32(return_data.size) + 160
                    require mem[_4079 + ceil32(return_data.size) + 128] - 1 < mem[_4079 + ceil32(return_data.size) + 128]
                    if mem[(32 * mem[_4079 + ceil32(return_data.size) + 128] - 1) + _4079 + ceil32(return_data.size) + 160] <= t:
                        idx = idx + 1
                        t = t
                        continue 
                    idx = idx + 1
                    t = mem[(32 * mem[_4079 + ceil32(return_data.size) + 128] - 1) + _4079 + ceil32(return_data.size) + 160]
                    continue 
                if 4 == idx:
                    _4293 = mem[64]
                    mem[mem[64]] = 3
                    mem[64] = mem[64] + 128
                    require 0 < mem[_4293]
                    mem[_4293 + 32] = 0x49d68029688eabf473097a2fc38ef61633a3c
                    require 1 < mem[_4293]
                    mem[_4293 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                    require 2 < mem[_4293]
                    mem[_4293 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    mem[_4293 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_4293 + 132] = s
                    mem[_4293 + 164] = 64
                    mem[_4293 + 196] = mem[_4293]
                    u = 0
                    while u < 32 * mem[_4293]:
                        mem[u + _4293 + 228] = mem[u + _4293 + 32]
                        u = u + 32
                        continue 
                    require ext_code.size(0x7b17021fcb7bc888641dc3bedfed3734fcaf2c87)
                    staticcall 0x7b17021fcb7bc888641dc3bedfed3734fcaf2c87.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args s, 64, mem[_4293 + 196 len (32 * mem[_4293]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_4293 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _4293 + ceil32(return_data.size) + 128
                    require return_data.size >= 32
                    _9435 = mem[_4293 + 128 len 4], Mask(224, 32, s) >> 32
                    require mem[_4293 + 128 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                    require mem[_4293 + 128 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                    require mem[_4293 + mem[_4293 + 128 len 4], Mask(224, 32, s) >> 32 + 128] <= 4294967296 and mem[_4293 + 128 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_4293 + mem[_4293 + 128 len 4], Mask(224, 32, s) >> 32 + 128]) + 32 <= return_data.size
                    mem[_4293 + ceil32(return_data.size) + 128] = mem[_4293 + mem[_4293 + 128 len 4], Mask(224, 32, s) >> 32 + 128]
                    _9979 = mem[_4293 + _9435 + 128]
                    s = 0
                    while s < 32 * _9979:
                        mem[s + _4293 + ceil32(return_data.size) + 160] = mem[s + _4293 + _9435 + 160]
                        s = s + 32
                        continue 
                    mem[64] = (32 * _9979) + _4293 + ceil32(return_data.size) + 160
                    require mem[_4293 + ceil32(return_data.size) + 128] - 1 < mem[_4293 + ceil32(return_data.size) + 128]
                    if mem[(32 * mem[_4293 + ceil32(return_data.size) + 128] - 1) + _4293 + ceil32(return_data.size) + 160] <= t:
                        idx = idx + 1
                        t = t
                        continue 
                    idx = idx + 1
                    t = mem[(32 * mem[_4293 + ceil32(return_data.size) + 128] - 1) + _4293 + ceil32(return_data.size) + 160]
                    continue 
                if idx != 5:
                    _4291 = mem[64]
                    mem[mem[64]] = 3
                    mem[64] = mem[64] + 128
                    require 0 < mem[_4291]
                    mem[_4291 + 32] = 0x49d68029688eabf473097a2fc38ef61633a3c
                    require 1 < mem[_4291]
                    mem[_4291 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                    require 2 < mem[_4291]
                    mem[_4291 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    mem[_4291 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_4291 + 132] = s
                    mem[_4291 + 164] = 64
                    mem[_4291 + 196] = mem[_4291]
                    u = 0
                    while u < 32 * mem[_4291]:
                        mem[u + _4291 + 228] = mem[u + _4291 + 32]
                        u = u + 32
                        continue 
                    require ext_code.size(0)
                    staticcall 0x0.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args s, 64, mem[_4291 + 196 len (32 * mem[_4291]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_4291 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _4291 + ceil32(return_data.size) + 128
                    require return_data.size >= 32
                    _9431 = mem[_4291 + 128 len 4], Mask(224, 32, s) >> 32
                    require mem[_4291 + 128 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                    require mem[_4291 + 128 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                    require mem[_4291 + mem[_4291 + 128 len 4], Mask(224, 32, s) >> 32 + 128] <= 4294967296 and mem[_4291 + 128 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_4291 + mem[_4291 + 128 len 4], Mask(224, 32, s) >> 32 + 128]) + 32 <= return_data.size
                    mem[_4291 + ceil32(return_data.size) + 128] = mem[_4291 + mem[_4291 + 128 len 4], Mask(224, 32, s) >> 32 + 128]
                    _9977 = mem[_4291 + _9431 + 128]
                    s = 0
                    while s < 32 * _9977:
                        mem[s + _4291 + ceil32(return_data.size) + 160] = mem[s + _4291 + _9431 + 160]
                        s = s + 32
                        continue 
                    mem[64] = (32 * _9977) + _4291 + ceil32(return_data.size) + 160
                    require mem[_4291 + ceil32(return_data.size) + 128] - 1 < mem[_4291 + ceil32(return_data.size) + 128]
                    if mem[(32 * mem[_4291 + ceil32(return_data.size) + 128] - 1) + _4291 + ceil32(return_data.size) + 160] <= t:
                        idx = idx + 1
                        t = t
                        continue 
                    idx = idx + 1
                    t = mem[(32 * mem[_4291 + ceil32(return_data.size) + 128] - 1) + _4291 + ceil32(return_data.size) + 160]
                    continue 
                _4515 = mem[64]
                mem[mem[64]] = 3
                mem[64] = mem[64] + 128
                require 0 < mem[_4515]
                mem[_4515 + 32] = 0x49d68029688eabf473097a2fc38ef61633a3c
                require 1 < mem[_4515]
                mem[_4515 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                require 2 < mem[_4515]
                mem[_4515 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                mem[_4515 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_4515 + 132] = s
                mem[_4515 + 164] = 64
                mem[_4515 + 196] = mem[_4515]
                u = 0
                while u < 32 * mem[_4515]:
                    mem[u + _4515 + 228] = mem[u + _4515 + 32]
                    u = u + 32
                    continue 
                require ext_code.size(0x845e76a8691423fbc4ecb8dd77556cb61c09ee25)
                staticcall 0x845e76a8691423fbc4ecb8dd77556cb61c09ee25.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args s, 64, mem[_4515 + 196 len (32 * mem[_4515]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_4515 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _4515 + ceil32(return_data.size) + 128
                require return_data.size >= 32
                _9433 = mem[_4515 + 128 len 4], Mask(224, 32, s) >> 32
                require mem[_4515 + 128 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                require mem[_4515 + 128 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                require mem[_4515 + mem[_4515 + 128 len 4], Mask(224, 32, s) >> 32 + 128] <= 4294967296 and mem[_4515 + 128 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_4515 + mem[_4515 + 128 len 4], Mask(224, 32, s) >> 32 + 128]) + 32 <= return_data.size
                mem[_4515 + ceil32(return_data.size) + 128] = mem[_4515 + mem[_4515 + 128 len 4], Mask(224, 32, s) >> 32 + 128]
                _9978 = mem[_4515 + _9433 + 128]
                s = 0
                while s < 32 * _9978:
                    mem[s + _4515 + ceil32(return_data.size) + 160] = mem[s + _4515 + _9433 + 160]
                    s = s + 32
                    continue 
                mem[64] = (32 * _9978) + _4515 + ceil32(return_data.size) + 160
                require mem[_4515 + ceil32(return_data.size) + 128] - 1 < mem[_4515 + ceil32(return_data.size) + 128]
                if mem[(32 * mem[_4515 + ceil32(return_data.size) + 128] - 1) + _4515 + ceil32(return_data.size) + 160] <= t:
                    idx = idx + 1
                    t = t
                    continue 
                idx = idx + 1
                t = mem[(32 * mem[_4515 + ceil32(return_data.size) + 128] - 1) + _4515 + ceil32(return_data.size) + 160]
                continue 
            if idx != 6:
                if 7 == idx:
                    _4726 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    require 0 < mem[_4726]
                    mem[_4726 + 32] = 0x49d68029688eabf473097a2fc38ef61633a3c
                    require 1 < mem[_4726]
                    mem[_4726 + 64] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    mem[_4726 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_4726 + 100] = s
                    mem[_4726 + 132] = 64
                    mem[_4726 + 164] = mem[_4726]
                    u = 0
                    while u < 32 * mem[_4726]:
                        mem[u + _4726 + 196] = mem[u + _4726 + 32]
                        u = u + 32
                        continue 
                    require ext_code.size(0x845e76a8691423fbc4ecb8dd77556cb61c09ee25)
                    staticcall 0x845e76a8691423fbc4ecb8dd77556cb61c09ee25.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args s, 64, mem[_4726 + 164 len (32 * mem[_4726]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_4726 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _4726 + ceil32(return_data.size) + 96
                    require return_data.size >= 32
                    _9409 = mem[_4726 + 96 len 4], Mask(224, 32, s) >> 32
                    require mem[_4726 + 96 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                    require mem[_4726 + 96 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                    require mem[_4726 + mem[_4726 + 96 len 4], Mask(224, 32, s) >> 32 + 96] <= 4294967296 and mem[_4726 + 96 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_4726 + mem[_4726 + 96 len 4], Mask(224, 32, s) >> 32 + 96]) + 32 <= return_data.size
                    mem[_4726 + ceil32(return_data.size) + 96] = mem[_4726 + mem[_4726 + 96 len 4], Mask(224, 32, s) >> 32 + 96]
                    _9966 = mem[_4726 + _9409 + 96]
                    s = 0
                    while s < 32 * _9966:
                        mem[s + _4726 + ceil32(return_data.size) + 128] = mem[s + _4726 + _9409 + 128]
                        s = s + 32
                        continue 
                    mem[64] = (32 * _9966) + _4726 + ceil32(return_data.size) + 128
                    require mem[_4726 + ceil32(return_data.size) + 96] - 1 < mem[_4726 + ceil32(return_data.size) + 96]
                    if mem[(32 * mem[_4726 + ceil32(return_data.size) + 96] - 1) + _4726 + ceil32(return_data.size) + 128] <= t:
                        idx = idx + 1
                        t = t
                        continue 
                    idx = idx + 1
                    t = mem[(32 * mem[_4726 + ceil32(return_data.size) + 96] - 1) + _4726 + ceil32(return_data.size) + 128]
                    continue 
                if 8 == idx:
                    if 7 == idx:
                        _4944 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        require 0 < mem[_4944]
                        mem[_4944 + 32] = 0x49d68029688eabf473097a2fc38ef61633a3c
                        require 1 < mem[_4944]
                        mem[_4944 + 64] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                        mem[_4944 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[_4944 + 100] = s
                        mem[_4944 + 132] = 64
                        mem[_4944 + 164] = mem[_4944]
                        u = 0
                        while u < 32 * mem[_4944]:
                            mem[u + _4944 + 196] = mem[u + _4944 + 32]
                            u = u + 32
                            continue 
                        require ext_code.size(0x845e76a8691423fbc4ecb8dd77556cb61c09ee25)
                        staticcall 0x845e76a8691423fbc4ecb8dd77556cb61c09ee25.getAmountsOut(uint256 arg1, address[] arg2) with:
                                gas gas_remaining wei
                               args s, 64, mem[_4944 + 164 len (32 * mem[_4944]) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_4944 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = _4944 + ceil32(return_data.size) + 96
                        require return_data.size >= 32
                        _9417 = mem[_4944 + 96 len 4], Mask(224, 32, s) >> 32
                        require mem[_4944 + 96 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                        require mem[_4944 + 96 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                        require mem[_4944 + mem[_4944 + 96 len 4], Mask(224, 32, s) >> 32 + 96] <= 4294967296 and mem[_4944 + 96 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_4944 + mem[_4944 + 96 len 4], Mask(224, 32, s) >> 32 + 96]) + 32 <= return_data.size
                        mem[_4944 + ceil32(return_data.size) + 96] = mem[_4944 + mem[_4944 + 96 len 4], Mask(224, 32, s) >> 32 + 96]
                        _9970 = mem[_4944 + _9417 + 96]
                        s = 0
                        while s < 32 * _9970:
                            mem[s + _4944 + ceil32(return_data.size) + 128] = mem[s + _4944 + _9417 + 128]
                            s = s + 32
                            continue 
                        mem[64] = (32 * _9970) + _4944 + ceil32(return_data.size) + 128
                        require mem[_4944 + ceil32(return_data.size) + 96] - 1 < mem[_4944 + ceil32(return_data.size) + 96]
                        if mem[(32 * mem[_4944 + ceil32(return_data.size) + 96] - 1) + _4944 + ceil32(return_data.size) + 128] <= t:
                            idx = idx + 1
                            t = t
                            continue 
                        idx = idx + 1
                        t = mem[(32 * mem[_4944 + ceil32(return_data.size) + 96] - 1) + _4944 + ceil32(return_data.size) + 128]
                        continue 
                    if 8 == idx:
                        _5174 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        require 0 < mem[_5174]
                        mem[_5174 + 32] = 0x49d68029688eabf473097a2fc38ef61633a3c
                        require 1 < mem[_5174]
                        mem[_5174 + 64] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                        mem[_5174 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[_5174 + 100] = s
                        mem[_5174 + 132] = 64
                        mem[_5174 + 164] = mem[_5174]
                        u = 0
                        while u < 32 * mem[_5174]:
                            mem[u + _5174 + 196] = mem[u + _5174 + 32]
                            u = u + 32
                            continue 
                        require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                        staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c29.getAmountsOut(uint256 arg1, address[] arg2) with:
                                gas gas_remaining wei
                               args s, 64, mem[_5174 + 164 len (32 * mem[_5174]) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_5174 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = _5174 + ceil32(return_data.size) + 96
                        require return_data.size >= 32
                        _9415 = mem[_5174 + 96 len 4], Mask(224, 32, s) >> 32
                        require mem[_5174 + 96 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                        require mem[_5174 + 96 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                        require mem[_5174 + mem[_5174 + 96 len 4], Mask(224, 32, s) >> 32 + 96] <= 4294967296 and mem[_5174 + 96 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_5174 + mem[_5174 + 96 len 4], Mask(224, 32, s) >> 32 + 96]) + 32 <= return_data.size
                        mem[_5174 + ceil32(return_data.size) + 96] = mem[_5174 + mem[_5174 + 96 len 4], Mask(224, 32, s) >> 32 + 96]
                        _9969 = mem[_5174 + _9415 + 96]
                        s = 0
                        while s < 32 * _9969:
                            mem[s + _5174 + ceil32(return_data.size) + 128] = mem[s + _5174 + _9415 + 128]
                            s = s + 32
                            continue 
                        mem[64] = (32 * _9969) + _5174 + ceil32(return_data.size) + 128
                        require mem[_5174 + ceil32(return_data.size) + 96] - 1 < mem[_5174 + ceil32(return_data.size) + 96]
                        if mem[(32 * mem[_5174 + ceil32(return_data.size) + 96] - 1) + _5174 + ceil32(return_data.size) + 128] <= t:
                            idx = idx + 1
                            t = t
                            continue 
                        idx = idx + 1
                        t = mem[(32 * mem[_5174 + ceil32(return_data.size) + 96] - 1) + _5174 + ceil32(return_data.size) + 128]
                        continue 
                    if idx != 9:
                        _5172 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        require 0 < mem[_5172]
                        mem[_5172 + 32] = 0x49d68029688eabf473097a2fc38ef61633a3c
                        require 1 < mem[_5172]
                        mem[_5172 + 64] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                        mem[_5172 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[_5172 + 100] = s
                        mem[_5172 + 132] = 64
                        mem[_5172 + 164] = mem[_5172]
                        u = 0
                        while u < 32 * mem[_5172]:
                            mem[u + _5172 + 196] = mem[u + _5172 + 32]
                            u = u + 32
                            continue 
                        require ext_code.size(0)
                        staticcall 0x0.getAmountsOut(uint256 arg1, address[] arg2) with:
                                gas gas_remaining wei
                               args s, 64, mem[_5172 + 164 len (32 * mem[_5172]) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_5172 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = _5172 + ceil32(return_data.size) + 96
                        require return_data.size >= 32
                        _9411 = mem[_5172 + 96 len 4], Mask(224, 32, s) >> 32
                        require mem[_5172 + 96 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                        require mem[_5172 + 96 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                        require mem[_5172 + mem[_5172 + 96 len 4], Mask(224, 32, s) >> 32 + 96] <= 4294967296 and mem[_5172 + 96 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_5172 + mem[_5172 + 96 len 4], Mask(224, 32, s) >> 32 + 96]) + 32 <= return_data.size
                        mem[_5172 + ceil32(return_data.size) + 96] = mem[_5172 + mem[_5172 + 96 len 4], Mask(224, 32, s) >> 32 + 96]
                        _9967 = mem[_5172 + _9411 + 96]
                        s = 0
                        while s < 32 * _9967:
                            mem[s + _5172 + ceil32(return_data.size) + 128] = mem[s + _5172 + _9411 + 128]
                            s = s + 32
                            continue 
                        mem[64] = (32 * _9967) + _5172 + ceil32(return_data.size) + 128
                        require mem[_5172 + ceil32(return_data.size) + 96] - 1 < mem[_5172 + ceil32(return_data.size) + 96]
                        if mem[(32 * mem[_5172 + ceil32(return_data.size) + 96] - 1) + _5172 + ceil32(return_data.size) + 128] <= t:
                            idx = idx + 1
                            t = t
                            continue 
                        idx = idx + 1
                        t = mem[(32 * mem[_5172 + ceil32(return_data.size) + 96] - 1) + _5172 + ceil32(return_data.size) + 128]
                        continue 
                    _5422 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    require 0 < mem[_5422]
                    mem[_5422 + 32] = 0x49d68029688eabf473097a2fc38ef61633a3c
                    require 1 < mem[_5422]
                    mem[_5422 + 64] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    mem[_5422 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_5422 + 100] = s
                    mem[_5422 + 132] = 64
                    mem[_5422 + 164] = mem[_5422]
                    u = 0
                    while u < 32 * mem[_5422]:
                        mem[u + _5422 + 196] = mem[u + _5422 + 32]
                        u = u + 32
                        continue 
                    require ext_code.size(0x6b3d631b87fe27af29efec61d2ab8ce4d621ccbf)
                    staticcall 0x6b3d631b87fe27af29efec61d2ab8ce4d621ccbf.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args s, 64, mem[_5422 + 164 len (32 * mem[_5422]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_5422 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _5422 + ceil32(return_data.size) + 96
                    require return_data.size >= 32
                    _9413 = mem[_5422 + 96 len 4], Mask(224, 32, s) >> 32
                    require mem[_5422 + 96 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                    require mem[_5422 + 96 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                    require mem[_5422 + mem[_5422 + 96 len 4], Mask(224, 32, s) >> 32 + 96] <= 4294967296 and mem[_5422 + 96 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_5422 + mem[_5422 + 96 len 4], Mask(224, 32, s) >> 32 + 96]) + 32 <= return_data.size
                    mem[_5422 + ceil32(return_data.size) + 96] = mem[_5422 + mem[_5422 + 96 len 4], Mask(224, 32, s) >> 32 + 96]
                    _9968 = mem[_5422 + _9413 + 96]
                    s = 0
                    while s < 32 * _9968:
                        mem[s + _5422 + ceil32(return_data.size) + 128] = mem[s + _5422 + _9413 + 128]
                        s = s + 32
                        continue 
                    mem[64] = (32 * _9968) + _5422 + ceil32(return_data.size) + 128
                    require mem[_5422 + ceil32(return_data.size) + 96] - 1 < mem[_5422 + ceil32(return_data.size) + 96]
                    if mem[(32 * mem[_5422 + ceil32(return_data.size) + 96] - 1) + _5422 + ceil32(return_data.size) + 128] <= t:
                        idx = idx + 1
                        t = t
                        continue 
                    idx = idx + 1
                    t = mem[(32 * mem[_5422 + ceil32(return_data.size) + 96] - 1) + _5422 + ceil32(return_data.size) + 128]
                    continue 
                if idx != 9:
                    if idx != 10:
                        if s <= t:
                            idx = idx + 1
                            t = t
                            continue 
                        idx = idx + 1
                        t = s
                        continue 
                    mem[mem[64] + 4] = 0
                    mem[mem[64] + 36] = 1
                    mem[mem[64] + 68] = s
                    require ext_code.size(0x952bda8a83c3d5f398a686bb4e8c6dd90072d523)
                    staticcall 0x952bda8a83c3d5f398a686bb4e8c6dd90072d523.calculateSwap(uint8 arg1, uint8 arg2, uint256 arg3) with:
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
                if 7 == idx:
                    _5179 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    require 0 < mem[_5179]
                    mem[_5179 + 32] = 0x49d68029688eabf473097a2fc38ef61633a3c
                    require 1 < mem[_5179]
                    mem[_5179 + 64] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    mem[_5179 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_5179 + 100] = s
                    mem[_5179 + 132] = 64
                    mem[_5179 + 164] = mem[_5179]
                    u = 0
                    while u < 32 * mem[_5179]:
                        mem[u + _5179 + 196] = mem[u + _5179 + 32]
                        u = u + 32
                        continue 
                    require ext_code.size(0x845e76a8691423fbc4ecb8dd77556cb61c09ee25)
                    staticcall 0x845e76a8691423fbc4ecb8dd77556cb61c09ee25.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args s, 64, mem[_5179 + 164 len (32 * mem[_5179]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_5179 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _5179 + ceil32(return_data.size) + 96
                    require return_data.size >= 32
                    _9425 = mem[_5179 + 96 len 4], Mask(224, 32, s) >> 32
                    require mem[_5179 + 96 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                    require mem[_5179 + 96 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                    require mem[_5179 + mem[_5179 + 96 len 4], Mask(224, 32, s) >> 32 + 96] <= 4294967296 and mem[_5179 + 96 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_5179 + mem[_5179 + 96 len 4], Mask(224, 32, s) >> 32 + 96]) + 32 <= return_data.size
                    mem[_5179 + ceil32(return_data.size) + 96] = mem[_5179 + mem[_5179 + 96 len 4], Mask(224, 32, s) >> 32 + 96]
                    _9974 = mem[_5179 + _9425 + 96]
                    s = 0
                    while s < 32 * _9974:
                        mem[s + _5179 + ceil32(return_data.size) + 128] = mem[s + _5179 + _9425 + 128]
                        s = s + 32
                        continue 
                    mem[64] = (32 * _9974) + _5179 + ceil32(return_data.size) + 128
                    require mem[_5179 + ceil32(return_data.size) + 96] - 1 < mem[_5179 + ceil32(return_data.size) + 96]
                    if mem[(32 * mem[_5179 + ceil32(return_data.size) + 96] - 1) + _5179 + ceil32(return_data.size) + 128] <= t:
                        idx = idx + 1
                        t = t
                        continue 
                    idx = idx + 1
                    t = mem[(32 * mem[_5179 + ceil32(return_data.size) + 96] - 1) + _5179 + ceil32(return_data.size) + 128]
                    continue 
                if 8 == idx:
                    _5432 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    require 0 < mem[_5432]
                    mem[_5432 + 32] = 0x49d68029688eabf473097a2fc38ef61633a3c
                    require 1 < mem[_5432]
                    mem[_5432 + 64] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    mem[_5432 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_5432 + 100] = s
                    mem[_5432 + 132] = 64
                    mem[_5432 + 164] = mem[_5432]
                    u = 0
                    while u < 32 * mem[_5432]:
                        mem[u + _5432 + 196] = mem[u + _5432 + 32]
                        u = u + 32
                        continue 
                    require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                    staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c29.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args s, 64, mem[_5432 + 164 len (32 * mem[_5432]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_5432 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _5432 + ceil32(return_data.size) + 96
                    require return_data.size >= 32
                    _9423 = mem[_5432 + 96 len 4], Mask(224, 32, s) >> 32
                    require mem[_5432 + 96 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                    require mem[_5432 + 96 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                    require mem[_5432 + mem[_5432 + 96 len 4], Mask(224, 32, s) >> 32 + 96] <= 4294967296 and mem[_5432 + 96 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_5432 + mem[_5432 + 96 len 4], Mask(224, 32, s) >> 32 + 96]) + 32 <= return_data.size
                    mem[_5432 + ceil32(return_data.size) + 96] = mem[_5432 + mem[_5432 + 96 len 4], Mask(224, 32, s) >> 32 + 96]
                    _9973 = mem[_5432 + _9423 + 96]
                    s = 0
                    while s < 32 * _9973:
                        mem[s + _5432 + ceil32(return_data.size) + 128] = mem[s + _5432 + _9423 + 128]
                        s = s + 32
                        continue 
                    mem[64] = (32 * _9973) + _5432 + ceil32(return_data.size) + 128
                    require mem[_5432 + ceil32(return_data.size) + 96] - 1 < mem[_5432 + ceil32(return_data.size) + 96]
                    if mem[(32 * mem[_5432 + ceil32(return_data.size) + 96] - 1) + _5432 + ceil32(return_data.size) + 128] <= t:
                        idx = idx + 1
                        t = t
                        continue 
                    idx = idx + 1
                    t = mem[(32 * mem[_5432 + ceil32(return_data.size) + 96] - 1) + _5432 + ceil32(return_data.size) + 128]
                    continue 
                if idx != 9:
                    _5430 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    require 0 < mem[_5430]
                    mem[_5430 + 32] = 0x49d68029688eabf473097a2fc38ef61633a3c
                    require 1 < mem[_5430]
                    mem[_5430 + 64] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    mem[_5430 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_5430 + 100] = s
                    mem[_5430 + 132] = 64
                    mem[_5430 + 164] = mem[_5430]
                    u = 0
                    while u < 32 * mem[_5430]:
                        mem[u + _5430 + 196] = mem[u + _5430 + 32]
                        u = u + 32
                        continue 
                    require ext_code.size(0)
                    staticcall 0x0.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args s, 64, mem[_5430 + 164 len (32 * mem[_5430]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_5430 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _5430 + ceil32(return_data.size) + 96
                    require return_data.size >= 32
                    _9419 = mem[_5430 + 96 len 4], Mask(224, 32, s) >> 32
                    require mem[_5430 + 96 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                    require mem[_5430 + 96 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                    require mem[_5430 + mem[_5430 + 96 len 4], Mask(224, 32, s) >> 32 + 96] <= 4294967296 and mem[_5430 + 96 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_5430 + mem[_5430 + 96 len 4], Mask(224, 32, s) >> 32 + 96]) + 32 <= return_data.size
                    mem[_5430 + ceil32(return_data.size) + 96] = mem[_5430 + mem[_5430 + 96 len 4], Mask(224, 32, s) >> 32 + 96]
                    _9971 = mem[_5430 + _9419 + 96]
                    s = 0
                    while s < 32 * _9971:
                        mem[s + _5430 + ceil32(return_data.size) + 128] = mem[s + _5430 + _9419 + 128]
                        s = s + 32
                        continue 
                    mem[64] = (32 * _9971) + _5430 + ceil32(return_data.size) + 128
                    require mem[_5430 + ceil32(return_data.size) + 96] - 1 < mem[_5430 + ceil32(return_data.size) + 96]
                    if mem[(32 * mem[_5430 + ceil32(return_data.size) + 96] - 1) + _5430 + ceil32(return_data.size) + 128] <= t:
                        idx = idx + 1
                        t = t
                        continue 
                    idx = idx + 1
                    t = mem[(32 * mem[_5430 + ceil32(return_data.size) + 96] - 1) + _5430 + ceil32(return_data.size) + 128]
                    continue 
                _5709 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                require 0 < mem[_5709]
                mem[_5709 + 32] = 0x49d68029688eabf473097a2fc38ef61633a3c
                require 1 < mem[_5709]
                mem[_5709 + 64] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                mem[_5709 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_5709 + 100] = s
                mem[_5709 + 132] = 64
                mem[_5709 + 164] = mem[_5709]
                u = 0
                while u < 32 * mem[_5709]:
                    mem[u + _5709 + 196] = mem[u + _5709 + 32]
                    u = u + 32
                    continue 
                require ext_code.size(0x6b3d631b87fe27af29efec61d2ab8ce4d621ccbf)
                staticcall 0x6b3d631b87fe27af29efec61d2ab8ce4d621ccbf.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args s, 64, mem[_5709 + 164 len (32 * mem[_5709]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_5709 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _5709 + ceil32(return_data.size) + 96
                require return_data.size >= 32
                _9421 = mem[_5709 + 96 len 4], Mask(224, 32, s) >> 32
                require mem[_5709 + 96 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                require mem[_5709 + 96 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                require mem[_5709 + mem[_5709 + 96 len 4], Mask(224, 32, s) >> 32 + 96] <= 4294967296 and mem[_5709 + 96 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_5709 + mem[_5709 + 96 len 4], Mask(224, 32, s) >> 32 + 96]) + 32 <= return_data.size
                mem[_5709 + ceil32(return_data.size) + 96] = mem[_5709 + mem[_5709 + 96 len 4], Mask(224, 32, s) >> 32 + 96]
                _9972 = mem[_5709 + _9421 + 96]
                s = 0
                while s < 32 * _9972:
                    mem[s + _5709 + ceil32(return_data.size) + 128] = mem[s + _5709 + _9421 + 128]
                    s = s + 32
                    continue 
                mem[64] = (32 * _9972) + _5709 + ceil32(return_data.size) + 128
                require mem[_5709 + ceil32(return_data.size) + 96] - 1 < mem[_5709 + ceil32(return_data.size) + 96]
                if mem[(32 * mem[_5709 + ceil32(return_data.size) + 96] - 1) + _5709 + ceil32(return_data.size) + 128] <= t:
                    idx = idx + 1
                    t = t
                    continue 
                idx = idx + 1
                t = mem[(32 * mem[_5709 + ceil32(return_data.size) + 96] - 1) + _5709 + ceil32(return_data.size) + 128]
                continue 
            _3907 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            require 0 < mem[_3907]
            mem[_3907 + 32] = 0x49d68029688eabf473097a2fc38ef61633a3c
            require 1 < mem[_3907]
            mem[_3907 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
            mem[_3907 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[_3907 + 100] = s
            mem[_3907 + 132] = 64
            mem[_3907 + 164] = mem[_3907]
            u = 0
            while u < 32 * mem[_3907]:
                mem[u + _3907 + 196] = mem[u + _3907 + 32]
                u = u + 32
                continue 
            require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
            staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c29.getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args s, 64, mem[_3907 + 164 len (32 * mem[_3907]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[_3907 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = _3907 + ceil32(return_data.size) + 96
            require return_data.size >= 32
            _9427 = mem[_3907 + 96 len 4], Mask(224, 32, s) >> 32
            require mem[_3907 + 96 len 4], Mask(224, 32, s) >> 32 <= 4294967296
            require mem[_3907 + 96 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
            require mem[_3907 + mem[_3907 + 96 len 4], Mask(224, 32, s) >> 32 + 96] <= 4294967296 and mem[_3907 + 96 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_3907 + mem[_3907 + 96 len 4], Mask(224, 32, s) >> 32 + 96]) + 32 <= return_data.size
            mem[_3907 + ceil32(return_data.size) + 96] = mem[_3907 + mem[_3907 + 96 len 4], Mask(224, 32, s) >> 32 + 96]
            _9975 = mem[_3907 + _9427 + 96]
            s = 0
            while s < 32 * _9975:
                mem[s + _3907 + ceil32(return_data.size) + 128] = mem[s + _3907 + _9427 + 128]
                s = s + 32
                continue 
            require mem[_3907 + ceil32(return_data.size) + 96] - 1 < mem[_3907 + ceil32(return_data.size) + 96]
            _12091 = mem[(32 * mem[_3907 + ceil32(return_data.size) + 96] - 1) + _3907 + ceil32(return_data.size) + 128]
            mem[(32 * _9975) + _3907 + ceil32(return_data.size) + 128] = 2
            mem[(32 * _9975) + _3907 + ceil32(return_data.size) + 160] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
            mem[(32 * _9975) + _3907 + ceil32(return_data.size) + 192] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
            mem[(32 * _9975) + _3907 + ceil32(return_data.size) + 224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[(32 * _9975) + _3907 + ceil32(return_data.size) + 228] = _12091
            mem[(32 * _9975) + _3907 + ceil32(return_data.size) + 260] = 64
            mem[(32 * _9975) + _3907 + ceil32(return_data.size) + 292] = 2
            s = 0
            while s < 64:
                mem[s + (32 * _9975) + _3907 + ceil32(return_data.size) + 324] = mem[s + (32 * _9975) + _3907 + ceil32(return_data.size) + 160]
                s = s + 32
                continue 
            require ext_code.size(0x1b02da8cb0d097eb8d57a175b88c7d8b47997506)
            staticcall 0x1b02da8cb0d097eb8d57a175b88c7d8b47997506.getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args _12091, Array(len=2, data=mem[(32 * _9975) + _3907 + ceil32(return_data.size) + 324 len 64])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _9975) + _3907 + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * _9975) + _3907 + (2 * ceil32(return_data.size)) + 224
            require return_data.size >= 32
            _12619 = mem[(32 * _9975) + _3907 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _12091) >> 32
            require mem[(32 * _9975) + _3907 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _12091) >> 32 <= 4294967296
            require mem[(32 * _9975) + _3907 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _12091) >> 32 + 32 <= return_data.size
            require mem[(32 * _9975) + _3907 + ceil32(return_data.size) + mem[(32 * _9975) + _3907 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _12091) >> 32 + 224] <= 4294967296 and mem[(32 * _9975) + _3907 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _12091) >> 32 + (32 * mem[(32 * _9975) + _3907 + ceil32(return_data.size) + mem[(32 * _9975) + _3907 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _12091) >> 32 + 224]) + 32 <= return_data.size
            mem[(32 * _9975) + _3907 + (2 * ceil32(return_data.size)) + 224] = mem[(32 * _9975) + _3907 + ceil32(return_data.size) + mem[(32 * _9975) + _3907 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _12091) >> 32 + 224]
            _12659 = mem[(32 * _9975) + _3907 + ceil32(return_data.size) + _12619 + 224]
            s = 0
            while s < 32 * _12659:
                mem[s + (32 * _9975) + _3907 + (2 * ceil32(return_data.size)) + 256] = mem[s + (32 * _9975) + _3907 + ceil32(return_data.size) + _12619 + 256]
                s = s + 32
                continue 
            mem[64] = (32 * _12659) + (32 * _9975) + _3907 + (2 * ceil32(return_data.size)) + 256
            require mem[(32 * _9975) + _3907 + (2 * ceil32(return_data.size)) + 224] - 1 < mem[(32 * _9975) + _3907 + (2 * ceil32(return_data.size)) + 224]
            if mem[(32 * mem[(32 * _9975) + _3907 + (2 * ceil32(return_data.size)) + 224] - 1) + (32 * _9975) + _3907 + (2 * ceil32(return_data.size)) + 256] <= t:
                idx = idx + 1
                t = t
                continue 
            idx = idx + 1
            t = mem[(32 * mem[(32 * _9975) + _3907 + (2 * ceil32(return_data.size)) + 224] - 1) + (32 * _9975) + _3907 + (2 * ceil32(return_data.size)) + 256]
            continue 
    else:
        if 10^11 * sub_7d0b6809 / sub_7d0b6809 != 10^11:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        idx = 0
        s = 0
        while idx < 6:
            if not idx:
                mem[mem[64] + 4] = 2
                mem[mem[64] + 36] = 0
                mem[mem[64] + 68] = 10^11 * sub_7d0b6809
                require ext_code.size(0x92d5ebf3593a92888c25c0abef126583d4b5312e)
                staticcall 0x92d5ebf3593a92888c25c0abef126583d4b5312e.get_dy_underlying(int128 arg1, int128 arg2, uint256 arg3) with:
                        gas gas_remaining wei
                       args 2, 0, 10^11 * sub_7d0b6809
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
                mem[mem[64] + 68] = 10^11 * sub_7d0b6809
                require ext_code.size(0x83e5f18da720119ff363cf63417628eb0e9fd523)
                staticcall 0x83e5f18da720119ff363cf63417628eb0e9fd523.get_dy(int128 arg1, int128 arg2, uint256 arg3) with:
                        gas gas_remaining wei
                       args 2, 0, 10^11 * sub_7d0b6809
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
                _191 = mem[64]
                mem[mem[64]] = 3
                mem[64] = mem[64] + 128
                require 0 < mem[_191]
                mem[_191 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                require 1 < mem[_191]
                mem[_191 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                require 2 < mem[_191]
                mem[_191 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                mem[_191 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_191 + 132] = 10^11 * sub_7d0b6809
                mem[_191 + 164] = 64
                mem[_191 + 196] = mem[_191]
                t = 0
                while t < 32 * mem[_191]:
                    mem[t + _191 + 228] = mem[t + _191 + 32]
                    t = t + 32
                    continue 
                require ext_code.size(0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52)
                staticcall 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args 10^11 * sub_7d0b6809, 64, mem[_191 + 196 len (32 * mem[_191]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_191 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _191 + ceil32(return_data.size) + 128
                require return_data.size >= 32
                _2683 = mem[_191 + 128 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32
                require mem[_191 + 128 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32 <= 4294967296
                require mem[_191 + 128 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32 + 32 <= return_data.size
                require mem[_191 + mem[_191 + 128 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32 + 128] <= 4294967296 and mem[_191 + 128 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32 + (32 * mem[_191 + mem[_191 + 128 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32 + 128]) + 32 <= return_data.size
                mem[_191 + ceil32(return_data.size) + 128] = mem[_191 + mem[_191 + 128 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32 + 128]
                _3097 = mem[_191 + _2683 + 128]
                t = 0
                while t < 32 * _3097:
                    mem[t + _191 + ceil32(return_data.size) + 160] = mem[t + _191 + _2683 + 160]
                    t = t + 32
                    continue 
                mem[64] = (32 * _3097) + _191 + ceil32(return_data.size) + 160
                require mem[_191 + ceil32(return_data.size) + 128] - 1 < mem[_191 + ceil32(return_data.size) + 128]
                if mem[(32 * mem[_191 + ceil32(return_data.size) + 128] - 1) + _191 + ceil32(return_data.size) + 160] <= s:
                    idx = idx + 1
                    s = s
                    continue 
                idx = idx + 1
                s = mem[(32 * mem[_191 + ceil32(return_data.size) + 128] - 1) + _191 + ceil32(return_data.size) + 160]
                continue 
            if 3 == idx:
                if 2 == idx:
                    _216 = mem[64]
                    mem[mem[64]] = 3
                    mem[64] = mem[64] + 128
                    require 0 < mem[_216]
                    mem[_216 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    require 1 < mem[_216]
                    mem[_216 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                    require 2 < mem[_216]
                    mem[_216 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    mem[_216 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_216 + 132] = 10^11 * sub_7d0b6809
                    mem[_216 + 164] = 64
                    mem[_216 + 196] = mem[_216]
                    t = 0
                    while t < 32 * mem[_216]:
                        mem[t + _216 + 228] = mem[t + _216 + 32]
                        t = t + 32
                        continue 
                    require ext_code.size(0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52)
                    staticcall 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args 10^11 * sub_7d0b6809, 64, mem[_216 + 196 len (32 * mem[_216]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_216 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _216 + ceil32(return_data.size) + 128
                    require return_data.size >= 32
                    _2693 = mem[_216 + 128 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32
                    require mem[_216 + 128 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32 <= 4294967296
                    require mem[_216 + 128 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32 + 32 <= return_data.size
                    require mem[_216 + mem[_216 + 128 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32 + 128] <= 4294967296 and mem[_216 + 128 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32 + (32 * mem[_216 + mem[_216 + 128 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32 + 128]) + 32 <= return_data.size
                    mem[_216 + ceil32(return_data.size) + 128] = mem[_216 + mem[_216 + 128 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32 + 128]
                    _3102 = mem[_216 + _2693 + 128]
                    t = 0
                    while t < 32 * _3102:
                        mem[t + _216 + ceil32(return_data.size) + 160] = mem[t + _216 + _2693 + 160]
                        t = t + 32
                        continue 
                    mem[64] = (32 * _3102) + _216 + ceil32(return_data.size) + 160
                    require mem[_216 + ceil32(return_data.size) + 128] - 1 < mem[_216 + ceil32(return_data.size) + 128]
                    if mem[(32 * mem[_216 + ceil32(return_data.size) + 128] - 1) + _216 + ceil32(return_data.size) + 160] <= s:
                        idx = idx + 1
                        s = s
                        continue 
                    idx = idx + 1
                    s = mem[(32 * mem[_216 + ceil32(return_data.size) + 128] - 1) + _216 + ceil32(return_data.size) + 160]
                    continue 
                if 3 == idx:
                    _242 = mem[64]
                    mem[mem[64]] = 3
                    mem[64] = mem[64] + 128
                    require 0 < mem[_242]
                    mem[_242 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    require 1 < mem[_242]
                    mem[_242 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                    require 2 < mem[_242]
                    mem[_242 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    mem[_242 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_242 + 132] = 10^11 * sub_7d0b6809
                    mem[_242 + 164] = 64
                    mem[_242 + 196] = mem[_242]
                    t = 0
                    while t < 32 * mem[_242]:
                        mem[t + _242 + 228] = mem[t + _242 + 32]
                        t = t + 32
                        continue 
                    require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                    staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c29.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args 10^11 * sub_7d0b6809, 64, mem[_242 + 196 len (32 * mem[_242]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_242 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _242 + ceil32(return_data.size) + 128
                    require return_data.size >= 32
                    _2691 = mem[_242 + 128 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32
                    require mem[_242 + 128 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32 <= 4294967296
                    require mem[_242 + 128 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32 + 32 <= return_data.size
                    require mem[_242 + mem[_242 + 128 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32 + 128] <= 4294967296 and mem[_242 + 128 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32 + (32 * mem[_242 + mem[_242 + 128 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32 + 128]) + 32 <= return_data.size
                    mem[_242 + ceil32(return_data.size) + 128] = mem[_242 + mem[_242 + 128 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32 + 128]
                    _3101 = mem[_242 + _2691 + 128]
                    t = 0
                    while t < 32 * _3101:
                        mem[t + _242 + ceil32(return_data.size) + 160] = mem[t + _242 + _2691 + 160]
                        t = t + 32
                        continue 
                    mem[64] = (32 * _3101) + _242 + ceil32(return_data.size) + 160
                    require mem[_242 + ceil32(return_data.size) + 128] - 1 < mem[_242 + ceil32(return_data.size) + 128]
                    if mem[(32 * mem[_242 + ceil32(return_data.size) + 128] - 1) + _242 + ceil32(return_data.size) + 160] <= s:
                        idx = idx + 1
                        s = s
                        continue 
                    idx = idx + 1
                    s = mem[(32 * mem[_242 + ceil32(return_data.size) + 128] - 1) + _242 + ceil32(return_data.size) + 160]
                    continue 
                if 4 == idx:
                    _288 = mem[64]
                    mem[mem[64]] = 3
                    mem[64] = mem[64] + 128
                    require 0 < mem[_288]
                    mem[_288 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    require 1 < mem[_288]
                    mem[_288 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                    require 2 < mem[_288]
                    mem[_288 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    mem[_288 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_288 + 132] = 10^11 * sub_7d0b6809
                    mem[_288 + 164] = 64
                    mem[_288 + 196] = mem[_288]
                    t = 0
                    while t < 32 * mem[_288]:
                        mem[t + _288 + 228] = mem[t + _288 + 32]
                        t = t + 32
                        continue 
                    require ext_code.size(0x7b17021fcb7bc888641dc3bedfed3734fcaf2c87)
                    staticcall 0x7b17021fcb7bc888641dc3bedfed3734fcaf2c87.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args 10^11 * sub_7d0b6809, 64, mem[_288 + 196 len (32 * mem[_288]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_288 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _288 + ceil32(return_data.size) + 128
                    require return_data.size >= 32
                    _2689 = mem[_288 + 128 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32
                    require mem[_288 + 128 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32 <= 4294967296
                    require mem[_288 + 128 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32 + 32 <= return_data.size
                    require mem[_288 + mem[_288 + 128 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32 + 128] <= 4294967296 and mem[_288 + 128 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32 + (32 * mem[_288 + mem[_288 + 128 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32 + 128]) + 32 <= return_data.size
                    mem[_288 + ceil32(return_data.size) + 128] = mem[_288 + mem[_288 + 128 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32 + 128]
                    _3100 = mem[_288 + _2689 + 128]
                    t = 0
                    while t < 32 * _3100:
                        mem[t + _288 + ceil32(return_data.size) + 160] = mem[t + _288 + _2689 + 160]
                        t = t + 32
                        continue 
                    mem[64] = (32 * _3100) + _288 + ceil32(return_data.size) + 160
                    require mem[_288 + ceil32(return_data.size) + 128] - 1 < mem[_288 + ceil32(return_data.size) + 128]
                    if mem[(32 * mem[_288 + ceil32(return_data.size) + 128] - 1) + _288 + ceil32(return_data.size) + 160] <= s:
                        idx = idx + 1
                        s = s
                        continue 
                    idx = idx + 1
                    s = mem[(32 * mem[_288 + ceil32(return_data.size) + 128] - 1) + _288 + ceil32(return_data.size) + 160]
                    continue 
                if idx != 5:
                    _286 = mem[64]
                    mem[mem[64]] = 3
                    mem[64] = mem[64] + 128
                    require 0 < mem[_286]
                    mem[_286 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    require 1 < mem[_286]
                    mem[_286 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                    require 2 < mem[_286]
                    mem[_286 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    mem[_286 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_286 + 132] = 10^11 * sub_7d0b6809
                    mem[_286 + 164] = 64
                    mem[_286 + 196] = mem[_286]
                    t = 0
                    while t < 32 * mem[_286]:
                        mem[t + _286 + 228] = mem[t + _286 + 32]
                        t = t + 32
                        continue 
                    require ext_code.size(0)
                    staticcall 0x0.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args 10^11 * sub_7d0b6809, 64, mem[_286 + 196 len (32 * mem[_286]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_286 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _286 + ceil32(return_data.size) + 128
                    require return_data.size >= 32
                    _2685 = mem[_286 + 128 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32
                    require mem[_286 + 128 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32 <= 4294967296
                    require mem[_286 + 128 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32 + 32 <= return_data.size
                    require mem[_286 + mem[_286 + 128 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32 + 128] <= 4294967296 and mem[_286 + 128 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32 + (32 * mem[_286 + mem[_286 + 128 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32 + 128]) + 32 <= return_data.size
                    mem[_286 + ceil32(return_data.size) + 128] = mem[_286 + mem[_286 + 128 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32 + 128]
                    _3098 = mem[_286 + _2685 + 128]
                    t = 0
                    while t < 32 * _3098:
                        mem[t + _286 + ceil32(return_data.size) + 160] = mem[t + _286 + _2685 + 160]
                        t = t + 32
                        continue 
                    mem[64] = (32 * _3098) + _286 + ceil32(return_data.size) + 160
                    require mem[_286 + ceil32(return_data.size) + 128] - 1 < mem[_286 + ceil32(return_data.size) + 128]
                    if mem[(32 * mem[_286 + ceil32(return_data.size) + 128] - 1) + _286 + ceil32(return_data.size) + 160] <= s:
                        idx = idx + 1
                        s = s
                        continue 
                    idx = idx + 1
                    s = mem[(32 * mem[_286 + ceil32(return_data.size) + 128] - 1) + _286 + ceil32(return_data.size) + 160]
                    continue 
                _362 = mem[64]
                mem[mem[64]] = 3
                mem[64] = mem[64] + 128
                require 0 < mem[_362]
                mem[_362 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                require 1 < mem[_362]
                mem[_362 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                require 2 < mem[_362]
                mem[_362 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                mem[_362 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_362 + 132] = 10^11 * sub_7d0b6809
                mem[_362 + 164] = 64
                mem[_362 + 196] = mem[_362]
                t = 0
                while t < 32 * mem[_362]:
                    mem[t + _362 + 228] = mem[t + _362 + 32]
                    t = t + 32
                    continue 
                require ext_code.size(0x845e76a8691423fbc4ecb8dd77556cb61c09ee25)
                staticcall 0x845e76a8691423fbc4ecb8dd77556cb61c09ee25.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args 10^11 * sub_7d0b6809, 64, mem[_362 + 196 len (32 * mem[_362]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_362 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _362 + ceil32(return_data.size) + 128
                require return_data.size >= 32
                _2687 = mem[_362 + 128 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32
                require mem[_362 + 128 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32 <= 4294967296
                require mem[_362 + 128 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32 + 32 <= return_data.size
                require mem[_362 + mem[_362 + 128 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32 + 128] <= 4294967296 and mem[_362 + 128 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32 + (32 * mem[_362 + mem[_362 + 128 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32 + 128]) + 32 <= return_data.size
                mem[_362 + ceil32(return_data.size) + 128] = mem[_362 + mem[_362 + 128 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32 + 128]
                _3099 = mem[_362 + _2687 + 128]
                t = 0
                while t < 32 * _3099:
                    mem[t + _362 + ceil32(return_data.size) + 160] = mem[t + _362 + _2687 + 160]
                    t = t + 32
                    continue 
                mem[64] = (32 * _3099) + _362 + ceil32(return_data.size) + 160
                require mem[_362 + ceil32(return_data.size) + 128] - 1 < mem[_362 + ceil32(return_data.size) + 128]
                if mem[(32 * mem[_362 + ceil32(return_data.size) + 128] - 1) + _362 + ceil32(return_data.size) + 160] <= s:
                    idx = idx + 1
                    s = s
                    continue 
                idx = idx + 1
                s = mem[(32 * mem[_362 + ceil32(return_data.size) + 128] - 1) + _362 + ceil32(return_data.size) + 160]
                continue 
            if 4 == idx:
                if 2 == idx:
                    _245 = mem[64]
                    mem[mem[64]] = 3
                    mem[64] = mem[64] + 128
                    require 0 < mem[_245]
                    mem[_245 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    require 1 < mem[_245]
                    mem[_245 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                    require 2 < mem[_245]
                    mem[_245 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    mem[_245 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_245 + 132] = 10^11 * sub_7d0b6809
                    mem[_245 + 164] = 64
                    mem[_245 + 196] = mem[_245]
                    t = 0
                    while t < 32 * mem[_245]:
                        mem[t + _245 + 228] = mem[t + _245 + 32]
                        t = t + 32
                        continue 
                    require ext_code.size(0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52)
                    staticcall 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args 10^11 * sub_7d0b6809, 64, mem[_245 + 196 len (32 * mem[_245]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_245 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _245 + ceil32(return_data.size) + 128
                    require return_data.size >= 32
                    _2703 = mem[_245 + 128 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32
                    require mem[_245 + 128 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32 <= 4294967296
                    require mem[_245 + 128 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32 + 32 <= return_data.size
                    require mem[_245 + mem[_245 + 128 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32 + 128] <= 4294967296 and mem[_245 + 128 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32 + (32 * mem[_245 + mem[_245 + 128 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32 + 128]) + 32 <= return_data.size
                    mem[_245 + ceil32(return_data.size) + 128] = mem[_245 + mem[_245 + 128 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32 + 128]
                    _3107 = mem[_245 + _2703 + 128]
                    t = 0
                    while t < 32 * _3107:
                        mem[t + _245 + ceil32(return_data.size) + 160] = mem[t + _245 + _2703 + 160]
                        t = t + 32
                        continue 
                    mem[64] = (32 * _3107) + _245 + ceil32(return_data.size) + 160
                    require mem[_245 + ceil32(return_data.size) + 128] - 1 < mem[_245 + ceil32(return_data.size) + 128]
                    if mem[(32 * mem[_245 + ceil32(return_data.size) + 128] - 1) + _245 + ceil32(return_data.size) + 160] <= s:
                        idx = idx + 1
                        s = s
                        continue 
                    idx = idx + 1
                    s = mem[(32 * mem[_245 + ceil32(return_data.size) + 128] - 1) + _245 + ceil32(return_data.size) + 160]
                    continue 
                if 3 == idx:
                    _292 = mem[64]
                    mem[mem[64]] = 3
                    mem[64] = mem[64] + 128
                    require 0 < mem[_292]
                    mem[_292 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    require 1 < mem[_292]
                    mem[_292 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                    require 2 < mem[_292]
                    mem[_292 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    mem[_292 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_292 + 132] = 10^11 * sub_7d0b6809
                    mem[_292 + 164] = 64
                    mem[_292 + 196] = mem[_292]
                    t = 0
                    while t < 32 * mem[_292]:
                        mem[t + _292 + 228] = mem[t + _292 + 32]
                        t = t + 32
                        continue 
                    require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                    staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c29.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args 10^11 * sub_7d0b6809, 64, mem[_292 + 196 len (32 * mem[_292]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_292 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _292 + ceil32(return_data.size) + 128
                    require return_data.size >= 32
                    _2701 = mem[_292 + 128 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32
                    require mem[_292 + 128 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32 <= 4294967296
                    require mem[_292 + 128 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32 + 32 <= return_data.size
                    require mem[_292 + mem[_292 + 128 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32 + 128] <= 4294967296 and mem[_292 + 128 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32 + (32 * mem[_292 + mem[_292 + 128 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32 + 128]) + 32 <= return_data.size
                    mem[_292 + ceil32(return_data.size) + 128] = mem[_292 + mem[_292 + 128 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32 + 128]
                    _3106 = mem[_292 + _2701 + 128]
                    t = 0
                    while t < 32 * _3106:
                        mem[t + _292 + ceil32(return_data.size) + 160] = mem[t + _292 + _2701 + 160]
                        t = t + 32
                        continue 
                    mem[64] = (32 * _3106) + _292 + ceil32(return_data.size) + 160
                    require mem[_292 + ceil32(return_data.size) + 128] - 1 < mem[_292 + ceil32(return_data.size) + 128]
                    if mem[(32 * mem[_292 + ceil32(return_data.size) + 128] - 1) + _292 + ceil32(return_data.size) + 160] <= s:
                        idx = idx + 1
                        s = s
                        continue 
                    idx = idx + 1
                    s = mem[(32 * mem[_292 + ceil32(return_data.size) + 128] - 1) + _292 + ceil32(return_data.size) + 160]
                    continue 
                if 4 == idx:
                    _371 = mem[64]
                    mem[mem[64]] = 3
                    mem[64] = mem[64] + 128
                    require 0 < mem[_371]
                    mem[_371 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    require 1 < mem[_371]
                    mem[_371 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                    require 2 < mem[_371]
                    mem[_371 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    mem[_371 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_371 + 132] = 10^11 * sub_7d0b6809
                    mem[_371 + 164] = 64
                    mem[_371 + 196] = mem[_371]
                    t = 0
                    while t < 32 * mem[_371]:
                        mem[t + _371 + 228] = mem[t + _371 + 32]
                        t = t + 32
                        continue 
                    require ext_code.size(0x7b17021fcb7bc888641dc3bedfed3734fcaf2c87)
                    staticcall 0x7b17021fcb7bc888641dc3bedfed3734fcaf2c87.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args 10^11 * sub_7d0b6809, 64, mem[_371 + 196 len (32 * mem[_371]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_371 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _371 + ceil32(return_data.size) + 128
                    require return_data.size >= 32
                    _2699 = mem[_371 + 128 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32
                    require mem[_371 + 128 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32 <= 4294967296
                    require mem[_371 + 128 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32 + 32 <= return_data.size
                    require mem[_371 + mem[_371 + 128 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32 + 128] <= 4294967296 and mem[_371 + 128 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32 + (32 * mem[_371 + mem[_371 + 128 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32 + 128]) + 32 <= return_data.size
                    mem[_371 + ceil32(return_data.size) + 128] = mem[_371 + mem[_371 + 128 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32 + 128]
                    _3105 = mem[_371 + _2699 + 128]
                    t = 0
                    while t < 32 * _3105:
                        mem[t + _371 + ceil32(return_data.size) + 160] = mem[t + _371 + _2699 + 160]
                        t = t + 32
                        continue 
                    mem[64] = (32 * _3105) + _371 + ceil32(return_data.size) + 160
                    require mem[_371 + ceil32(return_data.size) + 128] - 1 < mem[_371 + ceil32(return_data.size) + 128]
                    if mem[(32 * mem[_371 + ceil32(return_data.size) + 128] - 1) + _371 + ceil32(return_data.size) + 160] <= s:
                        idx = idx + 1
                        s = s
                        continue 
                    idx = idx + 1
                    s = mem[(32 * mem[_371 + ceil32(return_data.size) + 128] - 1) + _371 + ceil32(return_data.size) + 160]
                    continue 
                if idx != 5:
                    _369 = mem[64]
                    mem[mem[64]] = 3
                    mem[64] = mem[64] + 128
                    require 0 < mem[_369]
                    mem[_369 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    require 1 < mem[_369]
                    mem[_369 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                    require 2 < mem[_369]
                    mem[_369 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    mem[_369 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_369 + 132] = 10^11 * sub_7d0b6809
                    mem[_369 + 164] = 64
                    mem[_369 + 196] = mem[_369]
                    t = 0
                    while t < 32 * mem[_369]:
                        mem[t + _369 + 228] = mem[t + _369 + 32]
                        t = t + 32
                        continue 
                    require ext_code.size(0)
                    staticcall 0x0.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args 10^11 * sub_7d0b6809, 64, mem[_369 + 196 len (32 * mem[_369]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_369 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _369 + ceil32(return_data.size) + 128
                    require return_data.size >= 32
                    _2695 = mem[_369 + 128 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32
                    require mem[_369 + 128 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32 <= 4294967296
                    require mem[_369 + 128 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32 + 32 <= return_data.size
                    require mem[_369 + mem[_369 + 128 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32 + 128] <= 4294967296 and mem[_369 + 128 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32 + (32 * mem[_369 + mem[_369 + 128 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32 + 128]) + 32 <= return_data.size
                    mem[_369 + ceil32(return_data.size) + 128] = mem[_369 + mem[_369 + 128 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32 + 128]
                    _3103 = mem[_369 + _2695 + 128]
                    t = 0
                    while t < 32 * _3103:
                        mem[t + _369 + ceil32(return_data.size) + 160] = mem[t + _369 + _2695 + 160]
                        t = t + 32
                        continue 
                    mem[64] = (32 * _3103) + _369 + ceil32(return_data.size) + 160
                    require mem[_369 + ceil32(return_data.size) + 128] - 1 < mem[_369 + ceil32(return_data.size) + 128]
                    if mem[(32 * mem[_369 + ceil32(return_data.size) + 128] - 1) + _369 + ceil32(return_data.size) + 160] <= s:
                        idx = idx + 1
                        s = s
                        continue 
                    idx = idx + 1
                    s = mem[(32 * mem[_369 + ceil32(return_data.size) + 128] - 1) + _369 + ceil32(return_data.size) + 160]
                    continue 
                _456 = mem[64]
                mem[mem[64]] = 3
                mem[64] = mem[64] + 128
                require 0 < mem[_456]
                mem[_456 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                require 1 < mem[_456]
                mem[_456 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                require 2 < mem[_456]
                mem[_456 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                mem[_456 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_456 + 132] = 10^11 * sub_7d0b6809
                mem[_456 + 164] = 64
                mem[_456 + 196] = mem[_456]
                t = 0
                while t < 32 * mem[_456]:
                    mem[t + _456 + 228] = mem[t + _456 + 32]
                    t = t + 32
                    continue 
                require ext_code.size(0x845e76a8691423fbc4ecb8dd77556cb61c09ee25)
                staticcall 0x845e76a8691423fbc4ecb8dd77556cb61c09ee25.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args 10^11 * sub_7d0b6809, 64, mem[_456 + 196 len (32 * mem[_456]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_456 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _456 + ceil32(return_data.size) + 128
                require return_data.size >= 32
                _2697 = mem[_456 + 128 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32
                require mem[_456 + 128 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32 <= 4294967296
                require mem[_456 + 128 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32 + 32 <= return_data.size
                require mem[_456 + mem[_456 + 128 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32 + 128] <= 4294967296 and mem[_456 + 128 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32 + (32 * mem[_456 + mem[_456 + 128 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32 + 128]) + 32 <= return_data.size
                mem[_456 + ceil32(return_data.size) + 128] = mem[_456 + mem[_456 + 128 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32 + 128]
                _3104 = mem[_456 + _2697 + 128]
                t = 0
                while t < 32 * _3104:
                    mem[t + _456 + ceil32(return_data.size) + 160] = mem[t + _456 + _2697 + 160]
                    t = t + 32
                    continue 
                mem[64] = (32 * _3104) + _456 + ceil32(return_data.size) + 160
                require mem[_456 + ceil32(return_data.size) + 128] - 1 < mem[_456 + ceil32(return_data.size) + 128]
                if mem[(32 * mem[_456 + ceil32(return_data.size) + 128] - 1) + _456 + ceil32(return_data.size) + 160] <= s:
                    idx = idx + 1
                    s = s
                    continue 
                idx = idx + 1
                s = mem[(32 * mem[_456 + ceil32(return_data.size) + 128] - 1) + _456 + ceil32(return_data.size) + 160]
                continue 
            if 5 == idx:
                if 2 == idx:
                    _297 = mem[64]
                    mem[mem[64]] = 3
                    mem[64] = mem[64] + 128
                    require 0 < mem[_297]
                    mem[_297 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    require 1 < mem[_297]
                    mem[_297 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                    require 2 < mem[_297]
                    mem[_297 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    mem[_297 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_297 + 132] = 10^11 * sub_7d0b6809
                    mem[_297 + 164] = 64
                    mem[_297 + 196] = mem[_297]
                    t = 0
                    while t < 32 * mem[_297]:
                        mem[t + _297 + 228] = mem[t + _297 + 32]
                        t = t + 32
                        continue 
                    require ext_code.size(0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52)
                    staticcall 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args 10^11 * sub_7d0b6809, 64, mem[_297 + 196 len (32 * mem[_297]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_297 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _297 + ceil32(return_data.size) + 128
                    require return_data.size >= 32
                    _2735 = mem[_297 + 128 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32
                    require mem[_297 + 128 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32 <= 4294967296
                    require mem[_297 + 128 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32 + 32 <= return_data.size
                    require mem[_297 + mem[_297 + 128 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32 + 128] <= 4294967296 and mem[_297 + 128 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32 + (32 * mem[_297 + mem[_297 + 128 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32 + 128]) + 32 <= return_data.size
                    mem[_297 + ceil32(return_data.size) + 128] = mem[_297 + mem[_297 + 128 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32 + 128]
                    _3123 = mem[_297 + _2735 + 128]
                    t = 0
                    while t < 32 * _3123:
                        mem[t + _297 + ceil32(return_data.size) + 160] = mem[t + _297 + _2735 + 160]
                        t = t + 32
                        continue 
                    mem[64] = (32 * _3123) + _297 + ceil32(return_data.size) + 160
                    require mem[_297 + ceil32(return_data.size) + 128] - 1 < mem[_297 + ceil32(return_data.size) + 128]
                    if mem[(32 * mem[_297 + ceil32(return_data.size) + 128] - 1) + _297 + ceil32(return_data.size) + 160] <= s:
                        idx = idx + 1
                        s = s
                        continue 
                    idx = idx + 1
                    s = mem[(32 * mem[_297 + ceil32(return_data.size) + 128] - 1) + _297 + ceil32(return_data.size) + 160]
                    continue 
                if 3 == idx:
                    _378 = mem[64]
                    mem[mem[64]] = 3
                    mem[64] = mem[64] + 128
                    require 0 < mem[_378]
                    mem[_378 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    require 1 < mem[_378]
                    mem[_378 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                    require 2 < mem[_378]
                    mem[_378 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    mem[_378 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_378 + 132] = 10^11 * sub_7d0b6809
                    mem[_378 + 164] = 64
                    mem[_378 + 196] = mem[_378]
                    t = 0
                    while t < 32 * mem[_378]:
                        mem[t + _378 + 228] = mem[t + _378 + 32]
                        t = t + 32
                        continue 
                    require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                    staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c29.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args 10^11 * sub_7d0b6809, 64, mem[_378 + 196 len (32 * mem[_378]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_378 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _378 + ceil32(return_data.size) + 128
                    require return_data.size >= 32
                    _2733 = mem[_378 + 128 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32
                    require mem[_378 + 128 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32 <= 4294967296
                    require mem[_378 + 128 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32 + 32 <= return_data.size
                    require mem[_378 + mem[_378 + 128 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32 + 128] <= 4294967296 and mem[_378 + 128 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32 + (32 * mem[_378 + mem[_378 + 128 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32 + 128]) + 32 <= return_data.size
                    mem[_378 + ceil32(return_data.size) + 128] = mem[_378 + mem[_378 + 128 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32 + 128]
                    _3122 = mem[_378 + _2733 + 128]
                    t = 0
                    while t < 32 * _3122:
                        mem[t + _378 + ceil32(return_data.size) + 160] = mem[t + _378 + _2733 + 160]
                        t = t + 32
                        continue 
                    mem[64] = (32 * _3122) + _378 + ceil32(return_data.size) + 160
                    require mem[_378 + ceil32(return_data.size) + 128] - 1 < mem[_378 + ceil32(return_data.size) + 128]
                    if mem[(32 * mem[_378 + ceil32(return_data.size) + 128] - 1) + _378 + ceil32(return_data.size) + 160] <= s:
                        idx = idx + 1
                        s = s
                        continue 
                    idx = idx + 1
                    s = mem[(32 * mem[_378 + ceil32(return_data.size) + 128] - 1) + _378 + ceil32(return_data.size) + 160]
                    continue 
                if 4 == idx:
                    _469 = mem[64]
                    mem[mem[64]] = 3
                    mem[64] = mem[64] + 128
                    require 0 < mem[_469]
                    mem[_469 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    require 1 < mem[_469]
                    mem[_469 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                    require 2 < mem[_469]
                    mem[_469 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    mem[_469 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_469 + 132] = 10^11 * sub_7d0b6809
                    mem[_469 + 164] = 64
                    mem[_469 + 196] = mem[_469]
                    t = 0
                    while t < 32 * mem[_469]:
                        mem[t + _469 + 228] = mem[t + _469 + 32]
                        t = t + 32
                        continue 
                    require ext_code.size(0x7b17021fcb7bc888641dc3bedfed3734fcaf2c87)
                    staticcall 0x7b17021fcb7bc888641dc3bedfed3734fcaf2c87.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args 10^11 * sub_7d0b6809, 64, mem[_469 + 196 len (32 * mem[_469]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_469 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _469 + ceil32(return_data.size) + 128
                    require return_data.size >= 32
                    _2731 = mem[_469 + 128 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32
                    require mem[_469 + 128 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32 <= 4294967296
                    require mem[_469 + 128 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32 + 32 <= return_data.size
                    require mem[_469 + mem[_469 + 128 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32 + 128] <= 4294967296 and mem[_469 + 128 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32 + (32 * mem[_469 + mem[_469 + 128 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32 + 128]) + 32 <= return_data.size
                    mem[_469 + ceil32(return_data.size) + 128] = mem[_469 + mem[_469 + 128 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32 + 128]
                    _3121 = mem[_469 + _2731 + 128]
                    t = 0
                    while t < 32 * _3121:
                        mem[t + _469 + ceil32(return_data.size) + 160] = mem[t + _469 + _2731 + 160]
                        t = t + 32
                        continue 
                    mem[64] = (32 * _3121) + _469 + ceil32(return_data.size) + 160
                    require mem[_469 + ceil32(return_data.size) + 128] - 1 < mem[_469 + ceil32(return_data.size) + 128]
                    if mem[(32 * mem[_469 + ceil32(return_data.size) + 128] - 1) + _469 + ceil32(return_data.size) + 160] <= s:
                        idx = idx + 1
                        s = s
                        continue 
                    idx = idx + 1
                    s = mem[(32 * mem[_469 + ceil32(return_data.size) + 128] - 1) + _469 + ceil32(return_data.size) + 160]
                    continue 
                if idx != 5:
                    _467 = mem[64]
                    mem[mem[64]] = 3
                    mem[64] = mem[64] + 128
                    require 0 < mem[_467]
                    mem[_467 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    require 1 < mem[_467]
                    mem[_467 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                    require 2 < mem[_467]
                    mem[_467 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    mem[_467 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_467 + 132] = 10^11 * sub_7d0b6809
                    mem[_467 + 164] = 64
                    mem[_467 + 196] = mem[_467]
                    t = 0
                    while t < 32 * mem[_467]:
                        mem[t + _467 + 228] = mem[t + _467 + 32]
                        t = t + 32
                        continue 
                    require ext_code.size(0)
                    staticcall 0x0.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args 10^11 * sub_7d0b6809, 64, mem[_467 + 196 len (32 * mem[_467]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_467 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _467 + ceil32(return_data.size) + 128
                    require return_data.size >= 32
                    _2727 = mem[_467 + 128 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32
                    require mem[_467 + 128 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32 <= 4294967296
                    require mem[_467 + 128 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32 + 32 <= return_data.size
                    require mem[_467 + mem[_467 + 128 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32 + 128] <= 4294967296 and mem[_467 + 128 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32 + (32 * mem[_467 + mem[_467 + 128 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32 + 128]) + 32 <= return_data.size
                    mem[_467 + ceil32(return_data.size) + 128] = mem[_467 + mem[_467 + 128 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32 + 128]
                    _3119 = mem[_467 + _2727 + 128]
                    t = 0
                    while t < 32 * _3119:
                        mem[t + _467 + ceil32(return_data.size) + 160] = mem[t + _467 + _2727 + 160]
                        t = t + 32
                        continue 
                    mem[64] = (32 * _3119) + _467 + ceil32(return_data.size) + 160
                    require mem[_467 + ceil32(return_data.size) + 128] - 1 < mem[_467 + ceil32(return_data.size) + 128]
                    if mem[(32 * mem[_467 + ceil32(return_data.size) + 128] - 1) + _467 + ceil32(return_data.size) + 160] <= s:
                        idx = idx + 1
                        s = s
                        continue 
                    idx = idx + 1
                    s = mem[(32 * mem[_467 + ceil32(return_data.size) + 128] - 1) + _467 + ceil32(return_data.size) + 160]
                    continue 
                _570 = mem[64]
                mem[mem[64]] = 3
                mem[64] = mem[64] + 128
                require 0 < mem[_570]
                mem[_570 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                require 1 < mem[_570]
                mem[_570 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                require 2 < mem[_570]
                mem[_570 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                mem[_570 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_570 + 132] = 10^11 * sub_7d0b6809
                mem[_570 + 164] = 64
                mem[_570 + 196] = mem[_570]
                t = 0
                while t < 32 * mem[_570]:
                    mem[t + _570 + 228] = mem[t + _570 + 32]
                    t = t + 32
                    continue 
                require ext_code.size(0x845e76a8691423fbc4ecb8dd77556cb61c09ee25)
                staticcall 0x845e76a8691423fbc4ecb8dd77556cb61c09ee25.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args 10^11 * sub_7d0b6809, 64, mem[_570 + 196 len (32 * mem[_570]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_570 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _570 + ceil32(return_data.size) + 128
                require return_data.size >= 32
                _2729 = mem[_570 + 128 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32
                require mem[_570 + 128 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32 <= 4294967296
                require mem[_570 + 128 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32 + 32 <= return_data.size
                require mem[_570 + mem[_570 + 128 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32 + 128] <= 4294967296 and mem[_570 + 128 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32 + (32 * mem[_570 + mem[_570 + 128 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32 + 128]) + 32 <= return_data.size
                mem[_570 + ceil32(return_data.size) + 128] = mem[_570 + mem[_570 + 128 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32 + 128]
                _3120 = mem[_570 + _2729 + 128]
                t = 0
                while t < 32 * _3120:
                    mem[t + _570 + ceil32(return_data.size) + 160] = mem[t + _570 + _2729 + 160]
                    t = t + 32
                    continue 
                mem[64] = (32 * _3120) + _570 + ceil32(return_data.size) + 160
                require mem[_570 + ceil32(return_data.size) + 128] - 1 < mem[_570 + ceil32(return_data.size) + 128]
                if mem[(32 * mem[_570 + ceil32(return_data.size) + 128] - 1) + _570 + ceil32(return_data.size) + 160] <= s:
                    idx = idx + 1
                    s = s
                    continue 
                idx = idx + 1
                s = mem[(32 * mem[_570 + ceil32(return_data.size) + 128] - 1) + _570 + ceil32(return_data.size) + 160]
                continue 
            if idx != 6:
                if 7 == idx:
                    _670 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    require 0 < mem[_670]
                    mem[_670 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    require 1 < mem[_670]
                    mem[_670 + 64] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    mem[_670 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_670 + 100] = 10^11 * sub_7d0b6809
                    mem[_670 + 132] = 64
                    mem[_670 + 164] = mem[_670]
                    t = 0
                    while t < 32 * mem[_670]:
                        mem[t + _670 + 196] = mem[t + _670 + 32]
                        t = t + 32
                        continue 
                    require ext_code.size(0x845e76a8691423fbc4ecb8dd77556cb61c09ee25)
                    staticcall 0x845e76a8691423fbc4ecb8dd77556cb61c09ee25.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args 10^11 * sub_7d0b6809, 64, mem[_670 + 164 len (32 * mem[_670]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_670 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _670 + ceil32(return_data.size) + 96
                    require return_data.size >= 32
                    _2705 = mem[_670 + 96 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32
                    require mem[_670 + 96 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32 <= 4294967296
                    require mem[_670 + 96 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32 + 32 <= return_data.size
                    require mem[_670 + mem[_670 + 96 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32 + 96] <= 4294967296 and mem[_670 + 96 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32 + (32 * mem[_670 + mem[_670 + 96 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32 + 96]) + 32 <= return_data.size
                    mem[_670 + ceil32(return_data.size) + 96] = mem[_670 + mem[_670 + 96 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32 + 96]
                    _3108 = mem[_670 + _2705 + 96]
                    t = 0
                    while t < 32 * _3108:
                        mem[t + _670 + ceil32(return_data.size) + 128] = mem[t + _670 + _2705 + 128]
                        t = t + 32
                        continue 
                    mem[64] = (32 * _3108) + _670 + ceil32(return_data.size) + 128
                    require mem[_670 + ceil32(return_data.size) + 96] - 1 < mem[_670 + ceil32(return_data.size) + 96]
                    if mem[(32 * mem[_670 + ceil32(return_data.size) + 96] - 1) + _670 + ceil32(return_data.size) + 128] <= s:
                        idx = idx + 1
                        s = s
                        continue 
                    idx = idx + 1
                    s = mem[(32 * mem[_670 + ceil32(return_data.size) + 96] - 1) + _670 + ceil32(return_data.size) + 128]
                    continue 
                if 8 == idx:
                    if 7 == idx:
                        _768 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        require 0 < mem[_768]
                        mem[_768 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                        require 1 < mem[_768]
                        mem[_768 + 64] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                        mem[_768 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[_768 + 100] = 10^11 * sub_7d0b6809
                        mem[_768 + 132] = 64
                        mem[_768 + 164] = mem[_768]
                        t = 0
                        while t < 32 * mem[_768]:
                            mem[t + _768 + 196] = mem[t + _768 + 32]
                            t = t + 32
                            continue 
                        require ext_code.size(0x845e76a8691423fbc4ecb8dd77556cb61c09ee25)
                        staticcall 0x845e76a8691423fbc4ecb8dd77556cb61c09ee25.getAmountsOut(uint256 arg1, address[] arg2) with:
                                gas gas_remaining wei
                               args 10^11 * sub_7d0b6809, 64, mem[_768 + 164 len (32 * mem[_768]) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_768 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = _768 + ceil32(return_data.size) + 96
                        require return_data.size >= 32
                        _2713 = mem[_768 + 96 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32
                        require mem[_768 + 96 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32 <= 4294967296
                        require mem[_768 + 96 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32 + 32 <= return_data.size
                        require mem[_768 + mem[_768 + 96 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32 + 96] <= 4294967296 and mem[_768 + 96 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32 + (32 * mem[_768 + mem[_768 + 96 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32 + 96]) + 32 <= return_data.size
                        mem[_768 + ceil32(return_data.size) + 96] = mem[_768 + mem[_768 + 96 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32 + 96]
                        _3112 = mem[_768 + _2713 + 96]
                        t = 0
                        while t < 32 * _3112:
                            mem[t + _768 + ceil32(return_data.size) + 128] = mem[t + _768 + _2713 + 128]
                            t = t + 32
                            continue 
                        mem[64] = (32 * _3112) + _768 + ceil32(return_data.size) + 128
                        require mem[_768 + ceil32(return_data.size) + 96] - 1 < mem[_768 + ceil32(return_data.size) + 96]
                        if mem[(32 * mem[_768 + ceil32(return_data.size) + 96] - 1) + _768 + ceil32(return_data.size) + 128] <= s:
                            idx = idx + 1
                            s = s
                            continue 
                        idx = idx + 1
                        s = mem[(32 * mem[_768 + ceil32(return_data.size) + 96] - 1) + _768 + ceil32(return_data.size) + 128]
                        continue 
                    if 8 == idx:
                        _882 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        require 0 < mem[_882]
                        mem[_882 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                        require 1 < mem[_882]
                        mem[_882 + 64] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                        mem[_882 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[_882 + 100] = 10^11 * sub_7d0b6809
                        mem[_882 + 132] = 64
                        mem[_882 + 164] = mem[_882]
                        t = 0
                        while t < 32 * mem[_882]:
                            mem[t + _882 + 196] = mem[t + _882 + 32]
                            t = t + 32
                            continue 
                        require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                        staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c29.getAmountsOut(uint256 arg1, address[] arg2) with:
                                gas gas_remaining wei
                               args 10^11 * sub_7d0b6809, 64, mem[_882 + 164 len (32 * mem[_882]) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_882 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = _882 + ceil32(return_data.size) + 96
                        require return_data.size >= 32
                        _2711 = mem[_882 + 96 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32
                        require mem[_882 + 96 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32 <= 4294967296
                        require mem[_882 + 96 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32 + 32 <= return_data.size
                        require mem[_882 + mem[_882 + 96 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32 + 96] <= 4294967296 and mem[_882 + 96 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32 + (32 * mem[_882 + mem[_882 + 96 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32 + 96]) + 32 <= return_data.size
                        mem[_882 + ceil32(return_data.size) + 96] = mem[_882 + mem[_882 + 96 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32 + 96]
                        _3111 = mem[_882 + _2711 + 96]
                        t = 0
                        while t < 32 * _3111:
                            mem[t + _882 + ceil32(return_data.size) + 128] = mem[t + _882 + _2711 + 128]
                            t = t + 32
                            continue 
                        mem[64] = (32 * _3111) + _882 + ceil32(return_data.size) + 128
                        require mem[_882 + ceil32(return_data.size) + 96] - 1 < mem[_882 + ceil32(return_data.size) + 96]
                        if mem[(32 * mem[_882 + ceil32(return_data.size) + 96] - 1) + _882 + ceil32(return_data.size) + 128] <= s:
                            idx = idx + 1
                            s = s
                            continue 
                        idx = idx + 1
                        s = mem[(32 * mem[_882 + ceil32(return_data.size) + 96] - 1) + _882 + ceil32(return_data.size) + 128]
                        continue 
                    if idx != 9:
                        _880 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        require 0 < mem[_880]
                        mem[_880 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                        require 1 < mem[_880]
                        mem[_880 + 64] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                        mem[_880 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[_880 + 100] = 10^11 * sub_7d0b6809
                        mem[_880 + 132] = 64
                        mem[_880 + 164] = mem[_880]
                        t = 0
                        while t < 32 * mem[_880]:
                            mem[t + _880 + 196] = mem[t + _880 + 32]
                            t = t + 32
                            continue 
                        require ext_code.size(0)
                        staticcall 0x0.getAmountsOut(uint256 arg1, address[] arg2) with:
                                gas gas_remaining wei
                               args 10^11 * sub_7d0b6809, 64, mem[_880 + 164 len (32 * mem[_880]) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_880 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = _880 + ceil32(return_data.size) + 96
                        require return_data.size >= 32
                        _2707 = mem[_880 + 96 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32
                        require mem[_880 + 96 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32 <= 4294967296
                        require mem[_880 + 96 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32 + 32 <= return_data.size
                        require mem[_880 + mem[_880 + 96 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32 + 96] <= 4294967296 and mem[_880 + 96 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32 + (32 * mem[_880 + mem[_880 + 96 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32 + 96]) + 32 <= return_data.size
                        mem[_880 + ceil32(return_data.size) + 96] = mem[_880 + mem[_880 + 96 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32 + 96]
                        _3109 = mem[_880 + _2707 + 96]
                        t = 0
                        while t < 32 * _3109:
                            mem[t + _880 + ceil32(return_data.size) + 128] = mem[t + _880 + _2707 + 128]
                            t = t + 32
                            continue 
                        mem[64] = (32 * _3109) + _880 + ceil32(return_data.size) + 128
                        require mem[_880 + ceil32(return_data.size) + 96] - 1 < mem[_880 + ceil32(return_data.size) + 96]
                        if mem[(32 * mem[_880 + ceil32(return_data.size) + 96] - 1) + _880 + ceil32(return_data.size) + 128] <= s:
                            idx = idx + 1
                            s = s
                            continue 
                        idx = idx + 1
                        s = mem[(32 * mem[_880 + ceil32(return_data.size) + 96] - 1) + _880 + ceil32(return_data.size) + 128]
                        continue 
                    _990 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    require 0 < mem[_990]
                    mem[_990 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    require 1 < mem[_990]
                    mem[_990 + 64] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    mem[_990 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_990 + 100] = 10^11 * sub_7d0b6809
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
                           args 10^11 * sub_7d0b6809, 64, mem[_990 + 164 len (32 * mem[_990]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_990 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _990 + ceil32(return_data.size) + 96
                    require return_data.size >= 32
                    _2709 = mem[_990 + 96 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32
                    require mem[_990 + 96 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32 <= 4294967296
                    require mem[_990 + 96 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32 + 32 <= return_data.size
                    require mem[_990 + mem[_990 + 96 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32 + 96] <= 4294967296 and mem[_990 + 96 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32 + (32 * mem[_990 + mem[_990 + 96 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32 + 96]) + 32 <= return_data.size
                    mem[_990 + ceil32(return_data.size) + 96] = mem[_990 + mem[_990 + 96 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32 + 96]
                    _3110 = mem[_990 + _2709 + 96]
                    t = 0
                    while t < 32 * _3110:
                        mem[t + _990 + ceil32(return_data.size) + 128] = mem[t + _990 + _2709 + 128]
                        t = t + 32
                        continue 
                    mem[64] = (32 * _3110) + _990 + ceil32(return_data.size) + 128
                    require mem[_990 + ceil32(return_data.size) + 96] - 1 < mem[_990 + ceil32(return_data.size) + 96]
                    if mem[(32 * mem[_990 + ceil32(return_data.size) + 96] - 1) + _990 + ceil32(return_data.size) + 128] <= s:
                        idx = idx + 1
                        s = s
                        continue 
                    idx = idx + 1
                    s = mem[(32 * mem[_990 + ceil32(return_data.size) + 96] - 1) + _990 + ceil32(return_data.size) + 128]
                    continue 
                if idx != 9:
                    if idx != 10:
                        if 10^11 * sub_7d0b6809 <= s:
                            idx = idx + 1
                            s = s
                            continue 
                        idx = idx + 1
                        s = 10^11 * sub_7d0b6809
                        continue 
                    mem[mem[64] + 4] = 0
                    mem[mem[64] + 36] = 1
                    mem[mem[64] + 68] = 10^11 * sub_7d0b6809
                    require ext_code.size(0x952bda8a83c3d5f398a686bb4e8c6dd90072d523)
                    staticcall 0x952bda8a83c3d5f398a686bb4e8c6dd90072d523.calculateSwap(uint8 arg1, uint8 arg2, uint256 arg3) with:
                            gas gas_remaining wei
                           args 0, 1, 10^11 * sub_7d0b6809
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
                if 7 == idx:
                    _887 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    require 0 < mem[_887]
                    mem[_887 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    require 1 < mem[_887]
                    mem[_887 + 64] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    mem[_887 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_887 + 100] = 10^11 * sub_7d0b6809
                    mem[_887 + 132] = 64
                    mem[_887 + 164] = mem[_887]
                    t = 0
                    while t < 32 * mem[_887]:
                        mem[t + _887 + 196] = mem[t + _887 + 32]
                        t = t + 32
                        continue 
                    require ext_code.size(0x845e76a8691423fbc4ecb8dd77556cb61c09ee25)
                    staticcall 0x845e76a8691423fbc4ecb8dd77556cb61c09ee25.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args 10^11 * sub_7d0b6809, 64, mem[_887 + 164 len (32 * mem[_887]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_887 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _887 + ceil32(return_data.size) + 96
                    require return_data.size >= 32
                    _2721 = mem[_887 + 96 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32
                    require mem[_887 + 96 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32 <= 4294967296
                    require mem[_887 + 96 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32 + 32 <= return_data.size
                    require mem[_887 + mem[_887 + 96 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32 + 96] <= 4294967296 and mem[_887 + 96 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32 + (32 * mem[_887 + mem[_887 + 96 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32 + 96]) + 32 <= return_data.size
                    mem[_887 + ceil32(return_data.size) + 96] = mem[_887 + mem[_887 + 96 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32 + 96]
                    _3116 = mem[_887 + _2721 + 96]
                    t = 0
                    while t < 32 * _3116:
                        mem[t + _887 + ceil32(return_data.size) + 128] = mem[t + _887 + _2721 + 128]
                        t = t + 32
                        continue 
                    mem[64] = (32 * _3116) + _887 + ceil32(return_data.size) + 128
                    require mem[_887 + ceil32(return_data.size) + 96] - 1 < mem[_887 + ceil32(return_data.size) + 96]
                    if mem[(32 * mem[_887 + ceil32(return_data.size) + 96] - 1) + _887 + ceil32(return_data.size) + 128] <= s:
                        idx = idx + 1
                        s = s
                        continue 
                    idx = idx + 1
                    s = mem[(32 * mem[_887 + ceil32(return_data.size) + 96] - 1) + _887 + ceil32(return_data.size) + 128]
                    continue 
                if 8 == idx:
                    _1000 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    require 0 < mem[_1000]
                    mem[_1000 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    require 1 < mem[_1000]
                    mem[_1000 + 64] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    mem[_1000 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_1000 + 100] = 10^11 * sub_7d0b6809
                    mem[_1000 + 132] = 64
                    mem[_1000 + 164] = mem[_1000]
                    t = 0
                    while t < 32 * mem[_1000]:
                        mem[t + _1000 + 196] = mem[t + _1000 + 32]
                        t = t + 32
                        continue 
                    require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                    staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c29.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args 10^11 * sub_7d0b6809, 64, mem[_1000 + 164 len (32 * mem[_1000]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_1000 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _1000 + ceil32(return_data.size) + 96
                    require return_data.size >= 32
                    _2719 = mem[_1000 + 96 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32
                    require mem[_1000 + 96 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32 <= 4294967296
                    require mem[_1000 + 96 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32 + 32 <= return_data.size
                    require mem[_1000 + mem[_1000 + 96 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32 + 96] <= 4294967296 and mem[_1000 + 96 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32 + (32 * mem[_1000 + mem[_1000 + 96 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32 + 96]) + 32 <= return_data.size
                    mem[_1000 + ceil32(return_data.size) + 96] = mem[_1000 + mem[_1000 + 96 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32 + 96]
                    _3115 = mem[_1000 + _2719 + 96]
                    t = 0
                    while t < 32 * _3115:
                        mem[t + _1000 + ceil32(return_data.size) + 128] = mem[t + _1000 + _2719 + 128]
                        t = t + 32
                        continue 
                    mem[64] = (32 * _3115) + _1000 + ceil32(return_data.size) + 128
                    require mem[_1000 + ceil32(return_data.size) + 96] - 1 < mem[_1000 + ceil32(return_data.size) + 96]
                    if mem[(32 * mem[_1000 + ceil32(return_data.size) + 96] - 1) + _1000 + ceil32(return_data.size) + 128] <= s:
                        idx = idx + 1
                        s = s
                        continue 
                    idx = idx + 1
                    s = mem[(32 * mem[_1000 + ceil32(return_data.size) + 96] - 1) + _1000 + ceil32(return_data.size) + 128]
                    continue 
                if idx != 9:
                    _998 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    require 0 < mem[_998]
                    mem[_998 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    require 1 < mem[_998]
                    mem[_998 + 64] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    mem[_998 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_998 + 100] = 10^11 * sub_7d0b6809
                    mem[_998 + 132] = 64
                    mem[_998 + 164] = mem[_998]
                    t = 0
                    while t < 32 * mem[_998]:
                        mem[t + _998 + 196] = mem[t + _998 + 32]
                        t = t + 32
                        continue 
                    require ext_code.size(0)
                    staticcall 0x0.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args 10^11 * sub_7d0b6809, 64, mem[_998 + 164 len (32 * mem[_998]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_998 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _998 + ceil32(return_data.size) + 96
                    require return_data.size >= 32
                    _2715 = mem[_998 + 96 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32
                    require mem[_998 + 96 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32 <= 4294967296
                    require mem[_998 + 96 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32 + 32 <= return_data.size
                    require mem[_998 + mem[_998 + 96 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32 + 96] <= 4294967296 and mem[_998 + 96 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32 + (32 * mem[_998 + mem[_998 + 96 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32 + 96]) + 32 <= return_data.size
                    mem[_998 + ceil32(return_data.size) + 96] = mem[_998 + mem[_998 + 96 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32 + 96]
                    _3113 = mem[_998 + _2715 + 96]
                    t = 0
                    while t < 32 * _3113:
                        mem[t + _998 + ceil32(return_data.size) + 128] = mem[t + _998 + _2715 + 128]
                        t = t + 32
                        continue 
                    mem[64] = (32 * _3113) + _998 + ceil32(return_data.size) + 128
                    require mem[_998 + ceil32(return_data.size) + 96] - 1 < mem[_998 + ceil32(return_data.size) + 96]
                    if mem[(32 * mem[_998 + ceil32(return_data.size) + 96] - 1) + _998 + ceil32(return_data.size) + 128] <= s:
                        idx = idx + 1
                        s = s
                        continue 
                    idx = idx + 1
                    s = mem[(32 * mem[_998 + ceil32(return_data.size) + 96] - 1) + _998 + ceil32(return_data.size) + 128]
                    continue 
                _1129 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                require 0 < mem[_1129]
                mem[_1129 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                require 1 < mem[_1129]
                mem[_1129 + 64] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                mem[_1129 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_1129 + 100] = 10^11 * sub_7d0b6809
                mem[_1129 + 132] = 64
                mem[_1129 + 164] = mem[_1129]
                t = 0
                while t < 32 * mem[_1129]:
                    mem[t + _1129 + 196] = mem[t + _1129 + 32]
                    t = t + 32
                    continue 
                require ext_code.size(0x6b3d631b87fe27af29efec61d2ab8ce4d621ccbf)
                staticcall 0x6b3d631b87fe27af29efec61d2ab8ce4d621ccbf.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args 10^11 * sub_7d0b6809, 64, mem[_1129 + 164 len (32 * mem[_1129]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_1129 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _1129 + ceil32(return_data.size) + 96
                require return_data.size >= 32
                _2717 = mem[_1129 + 96 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32
                require mem[_1129 + 96 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32 <= 4294967296
                require mem[_1129 + 96 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32 + 32 <= return_data.size
                require mem[_1129 + mem[_1129 + 96 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32 + 96] <= 4294967296 and mem[_1129 + 96 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32 + (32 * mem[_1129 + mem[_1129 + 96 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32 + 96]) + 32 <= return_data.size
                mem[_1129 + ceil32(return_data.size) + 96] = mem[_1129 + mem[_1129 + 96 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32 + 96]
                _3114 = mem[_1129 + _2717 + 96]
                t = 0
                while t < 32 * _3114:
                    mem[t + _1129 + ceil32(return_data.size) + 128] = mem[t + _1129 + _2717 + 128]
                    t = t + 32
                    continue 
                mem[64] = (32 * _3114) + _1129 + ceil32(return_data.size) + 128
                require mem[_1129 + ceil32(return_data.size) + 96] - 1 < mem[_1129 + ceil32(return_data.size) + 96]
                if mem[(32 * mem[_1129 + ceil32(return_data.size) + 96] - 1) + _1129 + ceil32(return_data.size) + 128] <= s:
                    idx = idx + 1
                    s = s
                    continue 
                idx = idx + 1
                s = mem[(32 * mem[_1129 + ceil32(return_data.size) + 96] - 1) + _1129 + ceil32(return_data.size) + 128]
                continue 
            _295 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            require 0 < mem[_295]
            mem[_295 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
            require 1 < mem[_295]
            mem[_295 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
            mem[_295 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[_295 + 100] = 10^11 * sub_7d0b6809
            mem[_295 + 132] = 64
            mem[_295 + 164] = mem[_295]
            t = 0
            while t < 32 * mem[_295]:
                mem[t + _295 + 196] = mem[t + _295 + 32]
                t = t + 32
                continue 
            require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
            staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c29.getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args 10^11 * sub_7d0b6809, 64, mem[_295 + 164 len (32 * mem[_295]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[_295 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = _295 + ceil32(return_data.size) + 96
            require return_data.size >= 32
            _2723 = mem[_295 + 96 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32
            require mem[_295 + 96 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32 <= 4294967296
            require mem[_295 + 96 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32 + 32 <= return_data.size
            require mem[_295 + mem[_295 + 96 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32 + 96] <= 4294967296 and mem[_295 + 96 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32 + (32 * mem[_295 + mem[_295 + 96 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32 + 96]) + 32 <= return_data.size
            mem[_295 + ceil32(return_data.size) + 96] = mem[_295 + mem[_295 + 96 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32 + 96]
            _3117 = mem[_295 + _2723 + 96]
            t = 0
            while t < 32 * _3117:
                mem[t + _295 + ceil32(return_data.size) + 128] = mem[t + _295 + _2723 + 128]
                t = t + 32
                continue 
            mem[64] = (32 * _3117) + _295 + ceil32(return_data.size) + 128
            require mem[_295 + ceil32(return_data.size) + 96] - 1 < mem[_295 + ceil32(return_data.size) + 96]
            _8859 = mem[(32 * mem[_295 + ceil32(return_data.size) + 96] - 1) + _295 + ceil32(return_data.size) + 128]
            mem[(32 * _3117) + _295 + ceil32(return_data.size) + 128] = 2
            mem[(32 * _3117) + _295 + ceil32(return_data.size) + 160] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
            mem[(32 * _3117) + _295 + ceil32(return_data.size) + 192] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
            mem[(32 * _3117) + _295 + ceil32(return_data.size) + 224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[(32 * _3117) + _295 + ceil32(return_data.size) + 228] = _8859
            mem[(32 * _3117) + _295 + ceil32(return_data.size) + 260] = 64
            mem[(32 * _3117) + _295 + ceil32(return_data.size) + 292] = 2
            t = 0
            while t < 64:
                mem[t + (32 * _3117) + _295 + ceil32(return_data.size) + 324] = mem[t + (32 * _3117) + _295 + ceil32(return_data.size) + 160]
                t = t + 32
                continue 
            require ext_code.size(0x1b02da8cb0d097eb8d57a175b88c7d8b47997506)
            staticcall 0x1b02da8cb0d097eb8d57a175b88c7d8b47997506.getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args _8859, Array(len=2, data=mem[(32 * _3117) + _295 + ceil32(return_data.size) + 324 len 64])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _3117) + _295 + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * _3117) + _295 + (2 * ceil32(return_data.size)) + 224
            require return_data.size >= 32
            _12203 = mem[(32 * _3117) + _295 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _8859) >> 32
            require mem[(32 * _3117) + _295 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _8859) >> 32 <= 4294967296
            require mem[(32 * _3117) + _295 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _8859) >> 32 + 32 <= return_data.size
            require mem[(32 * _3117) + _295 + ceil32(return_data.size) + mem[(32 * _3117) + _295 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _8859) >> 32 + 224] <= 4294967296 and mem[(32 * _3117) + _295 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _8859) >> 32 + (32 * mem[(32 * _3117) + _295 + ceil32(return_data.size) + mem[(32 * _3117) + _295 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _8859) >> 32 + 224]) + 32 <= return_data.size
            mem[(32 * _3117) + _295 + (2 * ceil32(return_data.size)) + 224] = mem[(32 * _3117) + _295 + ceil32(return_data.size) + mem[(32 * _3117) + _295 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _8859) >> 32 + 224]
            _12271 = mem[(32 * _3117) + _295 + ceil32(return_data.size) + _12203 + 224]
            t = 0
            while t < 32 * _12271:
                mem[t + (32 * _3117) + _295 + (2 * ceil32(return_data.size)) + 256] = mem[t + (32 * _3117) + _295 + ceil32(return_data.size) + _12203 + 256]
                t = t + 32
                continue 
            mem[64] = (32 * _12271) + (32 * _3117) + _295 + (2 * ceil32(return_data.size)) + 256
            require mem[(32 * _3117) + _295 + (2 * ceil32(return_data.size)) + 224] - 1 < mem[(32 * _3117) + _295 + (2 * ceil32(return_data.size)) + 224]
            if mem[(32 * mem[(32 * _3117) + _295 + (2 * ceil32(return_data.size)) + 224] - 1) + (32 * _3117) + _295 + (2 * ceil32(return_data.size)) + 256] <= s:
                idx = idx + 1
                s = s
                continue 
            idx = idx + 1
            s = mem[(32 * mem[(32 * _3117) + _295 + (2 * ceil32(return_data.size)) + 224] - 1) + (32 * _3117) + _295 + (2 * ceil32(return_data.size)) + 256]
            continue 
        idx = 0
        t = 0
        while idx < 6:
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
                _3591 = mem[64]
                mem[mem[64]] = 3
                mem[64] = mem[64] + 128
                require 0 < mem[_3591]
                mem[_3591 + 32] = 0x49d68029688eabf473097a2fc38ef61633a3c
                require 1 < mem[_3591]
                mem[_3591 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                require 2 < mem[_3591]
                mem[_3591 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                mem[_3591 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_3591 + 132] = s
                mem[_3591 + 164] = 64
                mem[_3591 + 196] = mem[_3591]
                u = 0
                while u < 32 * mem[_3591]:
                    mem[u + _3591 + 228] = mem[u + _3591 + 32]
                    u = u + 32
                    continue 
                require ext_code.size(0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52)
                staticcall 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args s, 64, mem[_3591 + 196 len (32 * mem[_3591]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_3591 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _3591 + ceil32(return_data.size) + 128
                require return_data.size >= 32
                _9171 = mem[_3591 + 128 len 4], Mask(224, 32, s) >> 32
                require mem[_3591 + 128 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                require mem[_3591 + 128 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                require mem[_3591 + mem[_3591 + 128 len 4], Mask(224, 32, s) >> 32 + 128] <= 4294967296 and mem[_3591 + 128 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_3591 + mem[_3591 + 128 len 4], Mask(224, 32, s) >> 32 + 128]) + 32 <= return_data.size
                mem[_3591 + ceil32(return_data.size) + 128] = mem[_3591 + mem[_3591 + 128 len 4], Mask(224, 32, s) >> 32 + 128]
                _9835 = mem[_3591 + _9171 + 128]
                s = 0
                while s < 32 * _9835:
                    mem[s + _3591 + ceil32(return_data.size) + 160] = mem[s + _3591 + _9171 + 160]
                    s = s + 32
                    continue 
                mem[64] = (32 * _9835) + _3591 + ceil32(return_data.size) + 160
                require mem[_3591 + ceil32(return_data.size) + 128] - 1 < mem[_3591 + ceil32(return_data.size) + 128]
                if mem[(32 * mem[_3591 + ceil32(return_data.size) + 128] - 1) + _3591 + ceil32(return_data.size) + 160] <= t:
                    idx = idx + 1
                    t = t
                    continue 
                idx = idx + 1
                t = mem[(32 * mem[_3591 + ceil32(return_data.size) + 128] - 1) + _3591 + ceil32(return_data.size) + 160]
                continue 
            if 3 == idx:
                if 2 == idx:
                    _3716 = mem[64]
                    mem[mem[64]] = 3
                    mem[64] = mem[64] + 128
                    require 0 < mem[_3716]
                    mem[_3716 + 32] = 0x49d68029688eabf473097a2fc38ef61633a3c
                    require 1 < mem[_3716]
                    mem[_3716 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                    require 2 < mem[_3716]
                    mem[_3716 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    mem[_3716 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_3716 + 132] = s
                    mem[_3716 + 164] = 64
                    mem[_3716 + 196] = mem[_3716]
                    u = 0
                    while u < 32 * mem[_3716]:
                        mem[u + _3716 + 228] = mem[u + _3716 + 32]
                        u = u + 32
                        continue 
                    require ext_code.size(0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52)
                    staticcall 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args s, 64, mem[_3716 + 196 len (32 * mem[_3716]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_3716 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _3716 + ceil32(return_data.size) + 128
                    require return_data.size >= 32
                    _9181 = mem[_3716 + 128 len 4], Mask(224, 32, s) >> 32
                    require mem[_3716 + 128 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                    require mem[_3716 + 128 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                    require mem[_3716 + mem[_3716 + 128 len 4], Mask(224, 32, s) >> 32 + 128] <= 4294967296 and mem[_3716 + 128 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_3716 + mem[_3716 + 128 len 4], Mask(224, 32, s) >> 32 + 128]) + 32 <= return_data.size
                    mem[_3716 + ceil32(return_data.size) + 128] = mem[_3716 + mem[_3716 + 128 len 4], Mask(224, 32, s) >> 32 + 128]
                    _9840 = mem[_3716 + _9181 + 128]
                    s = 0
                    while s < 32 * _9840:
                        mem[s + _3716 + ceil32(return_data.size) + 160] = mem[s + _3716 + _9181 + 160]
                        s = s + 32
                        continue 
                    mem[64] = (32 * _9840) + _3716 + ceil32(return_data.size) + 160
                    require mem[_3716 + ceil32(return_data.size) + 128] - 1 < mem[_3716 + ceil32(return_data.size) + 128]
                    if mem[(32 * mem[_3716 + ceil32(return_data.size) + 128] - 1) + _3716 + ceil32(return_data.size) + 160] <= t:
                        idx = idx + 1
                        t = t
                        continue 
                    idx = idx + 1
                    t = mem[(32 * mem[_3716 + ceil32(return_data.size) + 128] - 1) + _3716 + ceil32(return_data.size) + 160]
                    continue 
                if 3 == idx:
                    _3750 = mem[64]
                    mem[mem[64]] = 3
                    mem[64] = mem[64] + 128
                    require 0 < mem[_3750]
                    mem[_3750 + 32] = 0x49d68029688eabf473097a2fc38ef61633a3c
                    require 1 < mem[_3750]
                    mem[_3750 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                    require 2 < mem[_3750]
                    mem[_3750 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    mem[_3750 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_3750 + 132] = s
                    mem[_3750 + 164] = 64
                    mem[_3750 + 196] = mem[_3750]
                    u = 0
                    while u < 32 * mem[_3750]:
                        mem[u + _3750 + 228] = mem[u + _3750 + 32]
                        u = u + 32
                        continue 
                    require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                    staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c29.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args s, 64, mem[_3750 + 196 len (32 * mem[_3750]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_3750 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _3750 + ceil32(return_data.size) + 128
                    require return_data.size >= 32
                    _9179 = mem[_3750 + 128 len 4], Mask(224, 32, s) >> 32
                    require mem[_3750 + 128 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                    require mem[_3750 + 128 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                    require mem[_3750 + mem[_3750 + 128 len 4], Mask(224, 32, s) >> 32 + 128] <= 4294967296 and mem[_3750 + 128 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_3750 + mem[_3750 + 128 len 4], Mask(224, 32, s) >> 32 + 128]) + 32 <= return_data.size
                    mem[_3750 + ceil32(return_data.size) + 128] = mem[_3750 + mem[_3750 + 128 len 4], Mask(224, 32, s) >> 32 + 128]
                    _9839 = mem[_3750 + _9179 + 128]
                    s = 0
                    while s < 32 * _9839:
                        mem[s + _3750 + ceil32(return_data.size) + 160] = mem[s + _3750 + _9179 + 160]
                        s = s + 32
                        continue 
                    mem[64] = (32 * _9839) + _3750 + ceil32(return_data.size) + 160
                    require mem[_3750 + ceil32(return_data.size) + 128] - 1 < mem[_3750 + ceil32(return_data.size) + 128]
                    if mem[(32 * mem[_3750 + ceil32(return_data.size) + 128] - 1) + _3750 + ceil32(return_data.size) + 160] <= t:
                        idx = idx + 1
                        t = t
                        continue 
                    idx = idx + 1
                    t = mem[(32 * mem[_3750 + ceil32(return_data.size) + 128] - 1) + _3750 + ceil32(return_data.size) + 160]
                    continue 
                if 4 == idx:
                    _3832 = mem[64]
                    mem[mem[64]] = 3
                    mem[64] = mem[64] + 128
                    require 0 < mem[_3832]
                    mem[_3832 + 32] = 0x49d68029688eabf473097a2fc38ef61633a3c
                    require 1 < mem[_3832]
                    mem[_3832 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                    require 2 < mem[_3832]
                    mem[_3832 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    mem[_3832 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_3832 + 132] = s
                    mem[_3832 + 164] = 64
                    mem[_3832 + 196] = mem[_3832]
                    u = 0
                    while u < 32 * mem[_3832]:
                        mem[u + _3832 + 228] = mem[u + _3832 + 32]
                        u = u + 32
                        continue 
                    require ext_code.size(0x7b17021fcb7bc888641dc3bedfed3734fcaf2c87)
                    staticcall 0x7b17021fcb7bc888641dc3bedfed3734fcaf2c87.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args s, 64, mem[_3832 + 196 len (32 * mem[_3832]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_3832 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _3832 + ceil32(return_data.size) + 128
                    require return_data.size >= 32
                    _9177 = mem[_3832 + 128 len 4], Mask(224, 32, s) >> 32
                    require mem[_3832 + 128 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                    require mem[_3832 + 128 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                    require mem[_3832 + mem[_3832 + 128 len 4], Mask(224, 32, s) >> 32 + 128] <= 4294967296 and mem[_3832 + 128 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_3832 + mem[_3832 + 128 len 4], Mask(224, 32, s) >> 32 + 128]) + 32 <= return_data.size
                    mem[_3832 + ceil32(return_data.size) + 128] = mem[_3832 + mem[_3832 + 128 len 4], Mask(224, 32, s) >> 32 + 128]
                    _9838 = mem[_3832 + _9177 + 128]
                    s = 0
                    while s < 32 * _9838:
                        mem[s + _3832 + ceil32(return_data.size) + 160] = mem[s + _3832 + _9177 + 160]
                        s = s + 32
                        continue 
                    mem[64] = (32 * _9838) + _3832 + ceil32(return_data.size) + 160
                    require mem[_3832 + ceil32(return_data.size) + 128] - 1 < mem[_3832 + ceil32(return_data.size) + 128]
                    if mem[(32 * mem[_3832 + ceil32(return_data.size) + 128] - 1) + _3832 + ceil32(return_data.size) + 160] <= t:
                        idx = idx + 1
                        t = t
                        continue 
                    idx = idx + 1
                    t = mem[(32 * mem[_3832 + ceil32(return_data.size) + 128] - 1) + _3832 + ceil32(return_data.size) + 160]
                    continue 
                if idx != 5:
                    _3830 = mem[64]
                    mem[mem[64]] = 3
                    mem[64] = mem[64] + 128
                    require 0 < mem[_3830]
                    mem[_3830 + 32] = 0x49d68029688eabf473097a2fc38ef61633a3c
                    require 1 < mem[_3830]
                    mem[_3830 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                    require 2 < mem[_3830]
                    mem[_3830 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    mem[_3830 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_3830 + 132] = s
                    mem[_3830 + 164] = 64
                    mem[_3830 + 196] = mem[_3830]
                    u = 0
                    while u < 32 * mem[_3830]:
                        mem[u + _3830 + 228] = mem[u + _3830 + 32]
                        u = u + 32
                        continue 
                    require ext_code.size(0)
                    staticcall 0x0.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args s, 64, mem[_3830 + 196 len (32 * mem[_3830]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_3830 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _3830 + ceil32(return_data.size) + 128
                    require return_data.size >= 32
                    _9173 = mem[_3830 + 128 len 4], Mask(224, 32, s) >> 32
                    require mem[_3830 + 128 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                    require mem[_3830 + 128 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                    require mem[_3830 + mem[_3830 + 128 len 4], Mask(224, 32, s) >> 32 + 128] <= 4294967296 and mem[_3830 + 128 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_3830 + mem[_3830 + 128 len 4], Mask(224, 32, s) >> 32 + 128]) + 32 <= return_data.size
                    mem[_3830 + ceil32(return_data.size) + 128] = mem[_3830 + mem[_3830 + 128 len 4], Mask(224, 32, s) >> 32 + 128]
                    _9836 = mem[_3830 + _9173 + 128]
                    s = 0
                    while s < 32 * _9836:
                        mem[s + _3830 + ceil32(return_data.size) + 160] = mem[s + _3830 + _9173 + 160]
                        s = s + 32
                        continue 
                    mem[64] = (32 * _9836) + _3830 + ceil32(return_data.size) + 160
                    require mem[_3830 + ceil32(return_data.size) + 128] - 1 < mem[_3830 + ceil32(return_data.size) + 128]
                    if mem[(32 * mem[_3830 + ceil32(return_data.size) + 128] - 1) + _3830 + ceil32(return_data.size) + 160] <= t:
                        idx = idx + 1
                        t = t
                        continue 
                    idx = idx + 1
                    t = mem[(32 * mem[_3830 + ceil32(return_data.size) + 128] - 1) + _3830 + ceil32(return_data.size) + 160]
                    continue 
                _3967 = mem[64]
                mem[mem[64]] = 3
                mem[64] = mem[64] + 128
                require 0 < mem[_3967]
                mem[_3967 + 32] = 0x49d68029688eabf473097a2fc38ef61633a3c
                require 1 < mem[_3967]
                mem[_3967 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                require 2 < mem[_3967]
                mem[_3967 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                mem[_3967 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_3967 + 132] = s
                mem[_3967 + 164] = 64
                mem[_3967 + 196] = mem[_3967]
                u = 0
                while u < 32 * mem[_3967]:
                    mem[u + _3967 + 228] = mem[u + _3967 + 32]
                    u = u + 32
                    continue 
                require ext_code.size(0x845e76a8691423fbc4ecb8dd77556cb61c09ee25)
                staticcall 0x845e76a8691423fbc4ecb8dd77556cb61c09ee25.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args s, 64, mem[_3967 + 196 len (32 * mem[_3967]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_3967 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _3967 + ceil32(return_data.size) + 128
                require return_data.size >= 32
                _9175 = mem[_3967 + 128 len 4], Mask(224, 32, s) >> 32
                require mem[_3967 + 128 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                require mem[_3967 + 128 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                require mem[_3967 + mem[_3967 + 128 len 4], Mask(224, 32, s) >> 32 + 128] <= 4294967296 and mem[_3967 + 128 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_3967 + mem[_3967 + 128 len 4], Mask(224, 32, s) >> 32 + 128]) + 32 <= return_data.size
                mem[_3967 + ceil32(return_data.size) + 128] = mem[_3967 + mem[_3967 + 128 len 4], Mask(224, 32, s) >> 32 + 128]
                _9837 = mem[_3967 + _9175 + 128]
                s = 0
                while s < 32 * _9837:
                    mem[s + _3967 + ceil32(return_data.size) + 160] = mem[s + _3967 + _9175 + 160]
                    s = s + 32
                    continue 
                mem[64] = (32 * _9837) + _3967 + ceil32(return_data.size) + 160
                require mem[_3967 + ceil32(return_data.size) + 128] - 1 < mem[_3967 + ceil32(return_data.size) + 128]
                if mem[(32 * mem[_3967 + ceil32(return_data.size) + 128] - 1) + _3967 + ceil32(return_data.size) + 160] <= t:
                    idx = idx + 1
                    t = t
                    continue 
                idx = idx + 1
                t = mem[(32 * mem[_3967 + ceil32(return_data.size) + 128] - 1) + _3967 + ceil32(return_data.size) + 160]
                continue 
            if 4 == idx:
                if 2 == idx:
                    _3753 = mem[64]
                    mem[mem[64]] = 3
                    mem[64] = mem[64] + 128
                    require 0 < mem[_3753]
                    mem[_3753 + 32] = 0x49d68029688eabf473097a2fc38ef61633a3c
                    require 1 < mem[_3753]
                    mem[_3753 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                    require 2 < mem[_3753]
                    mem[_3753 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    mem[_3753 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_3753 + 132] = s
                    mem[_3753 + 164] = 64
                    mem[_3753 + 196] = mem[_3753]
                    u = 0
                    while u < 32 * mem[_3753]:
                        mem[u + _3753 + 228] = mem[u + _3753 + 32]
                        u = u + 32
                        continue 
                    require ext_code.size(0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52)
                    staticcall 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args s, 64, mem[_3753 + 196 len (32 * mem[_3753]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_3753 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _3753 + ceil32(return_data.size) + 128
                    require return_data.size >= 32
                    _9191 = mem[_3753 + 128 len 4], Mask(224, 32, s) >> 32
                    require mem[_3753 + 128 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                    require mem[_3753 + 128 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                    require mem[_3753 + mem[_3753 + 128 len 4], Mask(224, 32, s) >> 32 + 128] <= 4294967296 and mem[_3753 + 128 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_3753 + mem[_3753 + 128 len 4], Mask(224, 32, s) >> 32 + 128]) + 32 <= return_data.size
                    mem[_3753 + ceil32(return_data.size) + 128] = mem[_3753 + mem[_3753 + 128 len 4], Mask(224, 32, s) >> 32 + 128]
                    _9845 = mem[_3753 + _9191 + 128]
                    s = 0
                    while s < 32 * _9845:
                        mem[s + _3753 + ceil32(return_data.size) + 160] = mem[s + _3753 + _9191 + 160]
                        s = s + 32
                        continue 
                    mem[64] = (32 * _9845) + _3753 + ceil32(return_data.size) + 160
                    require mem[_3753 + ceil32(return_data.size) + 128] - 1 < mem[_3753 + ceil32(return_data.size) + 128]
                    if mem[(32 * mem[_3753 + ceil32(return_data.size) + 128] - 1) + _3753 + ceil32(return_data.size) + 160] <= t:
                        idx = idx + 1
                        t = t
                        continue 
                    idx = idx + 1
                    t = mem[(32 * mem[_3753 + ceil32(return_data.size) + 128] - 1) + _3753 + ceil32(return_data.size) + 160]
                    continue 
                if 3 == idx:
                    _3836 = mem[64]
                    mem[mem[64]] = 3
                    mem[64] = mem[64] + 128
                    require 0 < mem[_3836]
                    mem[_3836 + 32] = 0x49d68029688eabf473097a2fc38ef61633a3c
                    require 1 < mem[_3836]
                    mem[_3836 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                    require 2 < mem[_3836]
                    mem[_3836 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    mem[_3836 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_3836 + 132] = s
                    mem[_3836 + 164] = 64
                    mem[_3836 + 196] = mem[_3836]
                    u = 0
                    while u < 32 * mem[_3836]:
                        mem[u + _3836 + 228] = mem[u + _3836 + 32]
                        u = u + 32
                        continue 
                    require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                    staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c29.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args s, 64, mem[_3836 + 196 len (32 * mem[_3836]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_3836 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _3836 + ceil32(return_data.size) + 128
                    require return_data.size >= 32
                    _9189 = mem[_3836 + 128 len 4], Mask(224, 32, s) >> 32
                    require mem[_3836 + 128 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                    require mem[_3836 + 128 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                    require mem[_3836 + mem[_3836 + 128 len 4], Mask(224, 32, s) >> 32 + 128] <= 4294967296 and mem[_3836 + 128 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_3836 + mem[_3836 + 128 len 4], Mask(224, 32, s) >> 32 + 128]) + 32 <= return_data.size
                    mem[_3836 + ceil32(return_data.size) + 128] = mem[_3836 + mem[_3836 + 128 len 4], Mask(224, 32, s) >> 32 + 128]
                    _9844 = mem[_3836 + _9189 + 128]
                    s = 0
                    while s < 32 * _9844:
                        mem[s + _3836 + ceil32(return_data.size) + 160] = mem[s + _3836 + _9189 + 160]
                        s = s + 32
                        continue 
                    mem[64] = (32 * _9844) + _3836 + ceil32(return_data.size) + 160
                    require mem[_3836 + ceil32(return_data.size) + 128] - 1 < mem[_3836 + ceil32(return_data.size) + 128]
                    if mem[(32 * mem[_3836 + ceil32(return_data.size) + 128] - 1) + _3836 + ceil32(return_data.size) + 160] <= t:
                        idx = idx + 1
                        t = t
                        continue 
                    idx = idx + 1
                    t = mem[(32 * mem[_3836 + ceil32(return_data.size) + 128] - 1) + _3836 + ceil32(return_data.size) + 160]
                    continue 
                if 4 == idx:
                    _3976 = mem[64]
                    mem[mem[64]] = 3
                    mem[64] = mem[64] + 128
                    require 0 < mem[_3976]
                    mem[_3976 + 32] = 0x49d68029688eabf473097a2fc38ef61633a3c
                    require 1 < mem[_3976]
                    mem[_3976 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                    require 2 < mem[_3976]
                    mem[_3976 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    mem[_3976 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_3976 + 132] = s
                    mem[_3976 + 164] = 64
                    mem[_3976 + 196] = mem[_3976]
                    u = 0
                    while u < 32 * mem[_3976]:
                        mem[u + _3976 + 228] = mem[u + _3976 + 32]
                        u = u + 32
                        continue 
                    require ext_code.size(0x7b17021fcb7bc888641dc3bedfed3734fcaf2c87)
                    staticcall 0x7b17021fcb7bc888641dc3bedfed3734fcaf2c87.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args s, 64, mem[_3976 + 196 len (32 * mem[_3976]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_3976 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _3976 + ceil32(return_data.size) + 128
                    require return_data.size >= 32
                    _9187 = mem[_3976 + 128 len 4], Mask(224, 32, s) >> 32
                    require mem[_3976 + 128 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                    require mem[_3976 + 128 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                    require mem[_3976 + mem[_3976 + 128 len 4], Mask(224, 32, s) >> 32 + 128] <= 4294967296 and mem[_3976 + 128 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_3976 + mem[_3976 + 128 len 4], Mask(224, 32, s) >> 32 + 128]) + 32 <= return_data.size
                    mem[_3976 + ceil32(return_data.size) + 128] = mem[_3976 + mem[_3976 + 128 len 4], Mask(224, 32, s) >> 32 + 128]
                    _9843 = mem[_3976 + _9187 + 128]
                    s = 0
                    while s < 32 * _9843:
                        mem[s + _3976 + ceil32(return_data.size) + 160] = mem[s + _3976 + _9187 + 160]
                        s = s + 32
                        continue 
                    mem[64] = (32 * _9843) + _3976 + ceil32(return_data.size) + 160
                    require mem[_3976 + ceil32(return_data.size) + 128] - 1 < mem[_3976 + ceil32(return_data.size) + 128]
                    if mem[(32 * mem[_3976 + ceil32(return_data.size) + 128] - 1) + _3976 + ceil32(return_data.size) + 160] <= t:
                        idx = idx + 1
                        t = t
                        continue 
                    idx = idx + 1
                    t = mem[(32 * mem[_3976 + ceil32(return_data.size) + 128] - 1) + _3976 + ceil32(return_data.size) + 160]
                    continue 
                if idx != 5:
                    _3974 = mem[64]
                    mem[mem[64]] = 3
                    mem[64] = mem[64] + 128
                    require 0 < mem[_3974]
                    mem[_3974 + 32] = 0x49d68029688eabf473097a2fc38ef61633a3c
                    require 1 < mem[_3974]
                    mem[_3974 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                    require 2 < mem[_3974]
                    mem[_3974 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    mem[_3974 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_3974 + 132] = s
                    mem[_3974 + 164] = 64
                    mem[_3974 + 196] = mem[_3974]
                    u = 0
                    while u < 32 * mem[_3974]:
                        mem[u + _3974 + 228] = mem[u + _3974 + 32]
                        u = u + 32
                        continue 
                    require ext_code.size(0)
                    staticcall 0x0.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args s, 64, mem[_3974 + 196 len (32 * mem[_3974]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_3974 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _3974 + ceil32(return_data.size) + 128
                    require return_data.size >= 32
                    _9183 = mem[_3974 + 128 len 4], Mask(224, 32, s) >> 32
                    require mem[_3974 + 128 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                    require mem[_3974 + 128 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                    require mem[_3974 + mem[_3974 + 128 len 4], Mask(224, 32, s) >> 32 + 128] <= 4294967296 and mem[_3974 + 128 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_3974 + mem[_3974 + 128 len 4], Mask(224, 32, s) >> 32 + 128]) + 32 <= return_data.size
                    mem[_3974 + ceil32(return_data.size) + 128] = mem[_3974 + mem[_3974 + 128 len 4], Mask(224, 32, s) >> 32 + 128]
                    _9841 = mem[_3974 + _9183 + 128]
                    s = 0
                    while s < 32 * _9841:
                        mem[s + _3974 + ceil32(return_data.size) + 160] = mem[s + _3974 + _9183 + 160]
                        s = s + 32
                        continue 
                    mem[64] = (32 * _9841) + _3974 + ceil32(return_data.size) + 160
                    require mem[_3974 + ceil32(return_data.size) + 128] - 1 < mem[_3974 + ceil32(return_data.size) + 128]
                    if mem[(32 * mem[_3974 + ceil32(return_data.size) + 128] - 1) + _3974 + ceil32(return_data.size) + 160] <= t:
                        idx = idx + 1
                        t = t
                        continue 
                    idx = idx + 1
                    t = mem[(32 * mem[_3974 + ceil32(return_data.size) + 128] - 1) + _3974 + ceil32(return_data.size) + 160]
                    continue 
                _4164 = mem[64]
                mem[mem[64]] = 3
                mem[64] = mem[64] + 128
                require 0 < mem[_4164]
                mem[_4164 + 32] = 0x49d68029688eabf473097a2fc38ef61633a3c
                require 1 < mem[_4164]
                mem[_4164 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                require 2 < mem[_4164]
                mem[_4164 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                mem[_4164 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_4164 + 132] = s
                mem[_4164 + 164] = 64
                mem[_4164 + 196] = mem[_4164]
                u = 0
                while u < 32 * mem[_4164]:
                    mem[u + _4164 + 228] = mem[u + _4164 + 32]
                    u = u + 32
                    continue 
                require ext_code.size(0x845e76a8691423fbc4ecb8dd77556cb61c09ee25)
                staticcall 0x845e76a8691423fbc4ecb8dd77556cb61c09ee25.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args s, 64, mem[_4164 + 196 len (32 * mem[_4164]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_4164 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _4164 + ceil32(return_data.size) + 128
                require return_data.size >= 32
                _9185 = mem[_4164 + 128 len 4], Mask(224, 32, s) >> 32
                require mem[_4164 + 128 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                require mem[_4164 + 128 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                require mem[_4164 + mem[_4164 + 128 len 4], Mask(224, 32, s) >> 32 + 128] <= 4294967296 and mem[_4164 + 128 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_4164 + mem[_4164 + 128 len 4], Mask(224, 32, s) >> 32 + 128]) + 32 <= return_data.size
                mem[_4164 + ceil32(return_data.size) + 128] = mem[_4164 + mem[_4164 + 128 len 4], Mask(224, 32, s) >> 32 + 128]
                _9842 = mem[_4164 + _9185 + 128]
                s = 0
                while s < 32 * _9842:
                    mem[s + _4164 + ceil32(return_data.size) + 160] = mem[s + _4164 + _9185 + 160]
                    s = s + 32
                    continue 
                mem[64] = (32 * _9842) + _4164 + ceil32(return_data.size) + 160
                require mem[_4164 + ceil32(return_data.size) + 128] - 1 < mem[_4164 + ceil32(return_data.size) + 128]
                if mem[(32 * mem[_4164 + ceil32(return_data.size) + 128] - 1) + _4164 + ceil32(return_data.size) + 160] <= t:
                    idx = idx + 1
                    t = t
                    continue 
                idx = idx + 1
                t = mem[(32 * mem[_4164 + ceil32(return_data.size) + 128] - 1) + _4164 + ceil32(return_data.size) + 160]
                continue 
            if 5 == idx:
                if 2 == idx:
                    _3841 = mem[64]
                    mem[mem[64]] = 3
                    mem[64] = mem[64] + 128
                    require 0 < mem[_3841]
                    mem[_3841 + 32] = 0x49d68029688eabf473097a2fc38ef61633a3c
                    require 1 < mem[_3841]
                    mem[_3841 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                    require 2 < mem[_3841]
                    mem[_3841 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    mem[_3841 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_3841 + 132] = s
                    mem[_3841 + 164] = 64
                    mem[_3841 + 196] = mem[_3841]
                    u = 0
                    while u < 32 * mem[_3841]:
                        mem[u + _3841 + 228] = mem[u + _3841 + 32]
                        u = u + 32
                        continue 
                    require ext_code.size(0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52)
                    staticcall 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args s, 64, mem[_3841 + 196 len (32 * mem[_3841]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_3841 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _3841 + ceil32(return_data.size) + 128
                    require return_data.size >= 32
                    _9223 = mem[_3841 + 128 len 4], Mask(224, 32, s) >> 32
                    require mem[_3841 + 128 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                    require mem[_3841 + 128 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                    require mem[_3841 + mem[_3841 + 128 len 4], Mask(224, 32, s) >> 32 + 128] <= 4294967296 and mem[_3841 + 128 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_3841 + mem[_3841 + 128 len 4], Mask(224, 32, s) >> 32 + 128]) + 32 <= return_data.size
                    mem[_3841 + ceil32(return_data.size) + 128] = mem[_3841 + mem[_3841 + 128 len 4], Mask(224, 32, s) >> 32 + 128]
                    _9861 = mem[_3841 + _9223 + 128]
                    s = 0
                    while s < 32 * _9861:
                        mem[s + _3841 + ceil32(return_data.size) + 160] = mem[s + _3841 + _9223 + 160]
                        s = s + 32
                        continue 
                    mem[64] = (32 * _9861) + _3841 + ceil32(return_data.size) + 160
                    require mem[_3841 + ceil32(return_data.size) + 128] - 1 < mem[_3841 + ceil32(return_data.size) + 128]
                    if mem[(32 * mem[_3841 + ceil32(return_data.size) + 128] - 1) + _3841 + ceil32(return_data.size) + 160] <= t:
                        idx = idx + 1
                        t = t
                        continue 
                    idx = idx + 1
                    t = mem[(32 * mem[_3841 + ceil32(return_data.size) + 128] - 1) + _3841 + ceil32(return_data.size) + 160]
                    continue 
                if 3 == idx:
                    _3983 = mem[64]
                    mem[mem[64]] = 3
                    mem[64] = mem[64] + 128
                    require 0 < mem[_3983]
                    mem[_3983 + 32] = 0x49d68029688eabf473097a2fc38ef61633a3c
                    require 1 < mem[_3983]
                    mem[_3983 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                    require 2 < mem[_3983]
                    mem[_3983 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    mem[_3983 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_3983 + 132] = s
                    mem[_3983 + 164] = 64
                    mem[_3983 + 196] = mem[_3983]
                    u = 0
                    while u < 32 * mem[_3983]:
                        mem[u + _3983 + 228] = mem[u + _3983 + 32]
                        u = u + 32
                        continue 
                    require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                    staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c29.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args s, 64, mem[_3983 + 196 len (32 * mem[_3983]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_3983 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _3983 + ceil32(return_data.size) + 128
                    require return_data.size >= 32
                    _9221 = mem[_3983 + 128 len 4], Mask(224, 32, s) >> 32
                    require mem[_3983 + 128 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                    require mem[_3983 + 128 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                    require mem[_3983 + mem[_3983 + 128 len 4], Mask(224, 32, s) >> 32 + 128] <= 4294967296 and mem[_3983 + 128 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_3983 + mem[_3983 + 128 len 4], Mask(224, 32, s) >> 32 + 128]) + 32 <= return_data.size
                    mem[_3983 + ceil32(return_data.size) + 128] = mem[_3983 + mem[_3983 + 128 len 4], Mask(224, 32, s) >> 32 + 128]
                    _9860 = mem[_3983 + _9221 + 128]
                    s = 0
                    while s < 32 * _9860:
                        mem[s + _3983 + ceil32(return_data.size) + 160] = mem[s + _3983 + _9221 + 160]
                        s = s + 32
                        continue 
                    mem[64] = (32 * _9860) + _3983 + ceil32(return_data.size) + 160
                    require mem[_3983 + ceil32(return_data.size) + 128] - 1 < mem[_3983 + ceil32(return_data.size) + 128]
                    if mem[(32 * mem[_3983 + ceil32(return_data.size) + 128] - 1) + _3983 + ceil32(return_data.size) + 160] <= t:
                        idx = idx + 1
                        t = t
                        continue 
                    idx = idx + 1
                    t = mem[(32 * mem[_3983 + ceil32(return_data.size) + 128] - 1) + _3983 + ceil32(return_data.size) + 160]
                    continue 
                if 4 == idx:
                    _4177 = mem[64]
                    mem[mem[64]] = 3
                    mem[64] = mem[64] + 128
                    require 0 < mem[_4177]
                    mem[_4177 + 32] = 0x49d68029688eabf473097a2fc38ef61633a3c
                    require 1 < mem[_4177]
                    mem[_4177 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                    require 2 < mem[_4177]
                    mem[_4177 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    mem[_4177 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_4177 + 132] = s
                    mem[_4177 + 164] = 64
                    mem[_4177 + 196] = mem[_4177]
                    u = 0
                    while u < 32 * mem[_4177]:
                        mem[u + _4177 + 228] = mem[u + _4177 + 32]
                        u = u + 32
                        continue 
                    require ext_code.size(0x7b17021fcb7bc888641dc3bedfed3734fcaf2c87)
                    staticcall 0x7b17021fcb7bc888641dc3bedfed3734fcaf2c87.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args s, 64, mem[_4177 + 196 len (32 * mem[_4177]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_4177 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _4177 + ceil32(return_data.size) + 128
                    require return_data.size >= 32
                    _9219 = mem[_4177 + 128 len 4], Mask(224, 32, s) >> 32
                    require mem[_4177 + 128 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                    require mem[_4177 + 128 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                    require mem[_4177 + mem[_4177 + 128 len 4], Mask(224, 32, s) >> 32 + 128] <= 4294967296 and mem[_4177 + 128 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_4177 + mem[_4177 + 128 len 4], Mask(224, 32, s) >> 32 + 128]) + 32 <= return_data.size
                    mem[_4177 + ceil32(return_data.size) + 128] = mem[_4177 + mem[_4177 + 128 len 4], Mask(224, 32, s) >> 32 + 128]
                    _9859 = mem[_4177 + _9219 + 128]
                    s = 0
                    while s < 32 * _9859:
                        mem[s + _4177 + ceil32(return_data.size) + 160] = mem[s + _4177 + _9219 + 160]
                        s = s + 32
                        continue 
                    mem[64] = (32 * _9859) + _4177 + ceil32(return_data.size) + 160
                    require mem[_4177 + ceil32(return_data.size) + 128] - 1 < mem[_4177 + ceil32(return_data.size) + 128]
                    if mem[(32 * mem[_4177 + ceil32(return_data.size) + 128] - 1) + _4177 + ceil32(return_data.size) + 160] <= t:
                        idx = idx + 1
                        t = t
                        continue 
                    idx = idx + 1
                    t = mem[(32 * mem[_4177 + ceil32(return_data.size) + 128] - 1) + _4177 + ceil32(return_data.size) + 160]
                    continue 
                if idx != 5:
                    _4175 = mem[64]
                    mem[mem[64]] = 3
                    mem[64] = mem[64] + 128
                    require 0 < mem[_4175]
                    mem[_4175 + 32] = 0x49d68029688eabf473097a2fc38ef61633a3c
                    require 1 < mem[_4175]
                    mem[_4175 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                    require 2 < mem[_4175]
                    mem[_4175 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    mem[_4175 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_4175 + 132] = s
                    mem[_4175 + 164] = 64
                    mem[_4175 + 196] = mem[_4175]
                    u = 0
                    while u < 32 * mem[_4175]:
                        mem[u + _4175 + 228] = mem[u + _4175 + 32]
                        u = u + 32
                        continue 
                    require ext_code.size(0)
                    staticcall 0x0.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args s, 64, mem[_4175 + 196 len (32 * mem[_4175]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_4175 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _4175 + ceil32(return_data.size) + 128
                    require return_data.size >= 32
                    _9215 = mem[_4175 + 128 len 4], Mask(224, 32, s) >> 32
                    require mem[_4175 + 128 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                    require mem[_4175 + 128 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                    require mem[_4175 + mem[_4175 + 128 len 4], Mask(224, 32, s) >> 32 + 128] <= 4294967296 and mem[_4175 + 128 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_4175 + mem[_4175 + 128 len 4], Mask(224, 32, s) >> 32 + 128]) + 32 <= return_data.size
                    mem[_4175 + ceil32(return_data.size) + 128] = mem[_4175 + mem[_4175 + 128 len 4], Mask(224, 32, s) >> 32 + 128]
                    _9857 = mem[_4175 + _9215 + 128]
                    s = 0
                    while s < 32 * _9857:
                        mem[s + _4175 + ceil32(return_data.size) + 160] = mem[s + _4175 + _9215 + 160]
                        s = s + 32
                        continue 
                    mem[64] = (32 * _9857) + _4175 + ceil32(return_data.size) + 160
                    require mem[_4175 + ceil32(return_data.size) + 128] - 1 < mem[_4175 + ceil32(return_data.size) + 128]
                    if mem[(32 * mem[_4175 + ceil32(return_data.size) + 128] - 1) + _4175 + ceil32(return_data.size) + 160] <= t:
                        idx = idx + 1
                        t = t
                        continue 
                    idx = idx + 1
                    t = mem[(32 * mem[_4175 + ceil32(return_data.size) + 128] - 1) + _4175 + ceil32(return_data.size) + 160]
                    continue 
                _4407 = mem[64]
                mem[mem[64]] = 3
                mem[64] = mem[64] + 128
                require 0 < mem[_4407]
                mem[_4407 + 32] = 0x49d68029688eabf473097a2fc38ef61633a3c
                require 1 < mem[_4407]
                mem[_4407 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                require 2 < mem[_4407]
                mem[_4407 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                mem[_4407 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_4407 + 132] = s
                mem[_4407 + 164] = 64
                mem[_4407 + 196] = mem[_4407]
                u = 0
                while u < 32 * mem[_4407]:
                    mem[u + _4407 + 228] = mem[u + _4407 + 32]
                    u = u + 32
                    continue 
                require ext_code.size(0x845e76a8691423fbc4ecb8dd77556cb61c09ee25)
                staticcall 0x845e76a8691423fbc4ecb8dd77556cb61c09ee25.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args s, 64, mem[_4407 + 196 len (32 * mem[_4407]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_4407 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _4407 + ceil32(return_data.size) + 128
                require return_data.size >= 32
                _9217 = mem[_4407 + 128 len 4], Mask(224, 32, s) >> 32
                require mem[_4407 + 128 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                require mem[_4407 + 128 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                require mem[_4407 + mem[_4407 + 128 len 4], Mask(224, 32, s) >> 32 + 128] <= 4294967296 and mem[_4407 + 128 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_4407 + mem[_4407 + 128 len 4], Mask(224, 32, s) >> 32 + 128]) + 32 <= return_data.size
                mem[_4407 + ceil32(return_data.size) + 128] = mem[_4407 + mem[_4407 + 128 len 4], Mask(224, 32, s) >> 32 + 128]
                _9858 = mem[_4407 + _9217 + 128]
                s = 0
                while s < 32 * _9858:
                    mem[s + _4407 + ceil32(return_data.size) + 160] = mem[s + _4407 + _9217 + 160]
                    s = s + 32
                    continue 
                mem[64] = (32 * _9858) + _4407 + ceil32(return_data.size) + 160
                require mem[_4407 + ceil32(return_data.size) + 128] - 1 < mem[_4407 + ceil32(return_data.size) + 128]
                if mem[(32 * mem[_4407 + ceil32(return_data.size) + 128] - 1) + _4407 + ceil32(return_data.size) + 160] <= t:
                    idx = idx + 1
                    t = t
                    continue 
                idx = idx + 1
                t = mem[(32 * mem[_4407 + ceil32(return_data.size) + 128] - 1) + _4407 + ceil32(return_data.size) + 160]
                continue 
            if idx != 6:
                if 7 == idx:
                    _4618 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    require 0 < mem[_4618]
                    mem[_4618 + 32] = 0x49d68029688eabf473097a2fc38ef61633a3c
                    require 1 < mem[_4618]
                    mem[_4618 + 64] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    mem[_4618 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_4618 + 100] = s
                    mem[_4618 + 132] = 64
                    mem[_4618 + 164] = mem[_4618]
                    u = 0
                    while u < 32 * mem[_4618]:
                        mem[u + _4618 + 196] = mem[u + _4618 + 32]
                        u = u + 32
                        continue 
                    require ext_code.size(0x845e76a8691423fbc4ecb8dd77556cb61c09ee25)
                    staticcall 0x845e76a8691423fbc4ecb8dd77556cb61c09ee25.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args s, 64, mem[_4618 + 164 len (32 * mem[_4618]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_4618 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _4618 + ceil32(return_data.size) + 96
                    require return_data.size >= 32
                    _9193 = mem[_4618 + 96 len 4], Mask(224, 32, s) >> 32
                    require mem[_4618 + 96 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                    require mem[_4618 + 96 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                    require mem[_4618 + mem[_4618 + 96 len 4], Mask(224, 32, s) >> 32 + 96] <= 4294967296 and mem[_4618 + 96 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_4618 + mem[_4618 + 96 len 4], Mask(224, 32, s) >> 32 + 96]) + 32 <= return_data.size
                    mem[_4618 + ceil32(return_data.size) + 96] = mem[_4618 + mem[_4618 + 96 len 4], Mask(224, 32, s) >> 32 + 96]
                    _9846 = mem[_4618 + _9193 + 96]
                    s = 0
                    while s < 32 * _9846:
                        mem[s + _4618 + ceil32(return_data.size) + 128] = mem[s + _4618 + _9193 + 128]
                        s = s + 32
                        continue 
                    mem[64] = (32 * _9846) + _4618 + ceil32(return_data.size) + 128
                    require mem[_4618 + ceil32(return_data.size) + 96] - 1 < mem[_4618 + ceil32(return_data.size) + 96]
                    if mem[(32 * mem[_4618 + ceil32(return_data.size) + 96] - 1) + _4618 + ceil32(return_data.size) + 128] <= t:
                        idx = idx + 1
                        t = t
                        continue 
                    idx = idx + 1
                    t = mem[(32 * mem[_4618 + ceil32(return_data.size) + 96] - 1) + _4618 + ceil32(return_data.size) + 128]
                    continue 
                if 8 == idx:
                    if 7 == idx:
                        _4832 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        require 0 < mem[_4832]
                        mem[_4832 + 32] = 0x49d68029688eabf473097a2fc38ef61633a3c
                        require 1 < mem[_4832]
                        mem[_4832 + 64] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                        mem[_4832 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[_4832 + 100] = s
                        mem[_4832 + 132] = 64
                        mem[_4832 + 164] = mem[_4832]
                        u = 0
                        while u < 32 * mem[_4832]:
                            mem[u + _4832 + 196] = mem[u + _4832 + 32]
                            u = u + 32
                            continue 
                        require ext_code.size(0x845e76a8691423fbc4ecb8dd77556cb61c09ee25)
                        staticcall 0x845e76a8691423fbc4ecb8dd77556cb61c09ee25.getAmountsOut(uint256 arg1, address[] arg2) with:
                                gas gas_remaining wei
                               args s, 64, mem[_4832 + 164 len (32 * mem[_4832]) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_4832 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = _4832 + ceil32(return_data.size) + 96
                        require return_data.size >= 32
                        _9201 = mem[_4832 + 96 len 4], Mask(224, 32, s) >> 32
                        require mem[_4832 + 96 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                        require mem[_4832 + 96 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                        require mem[_4832 + mem[_4832 + 96 len 4], Mask(224, 32, s) >> 32 + 96] <= 4294967296 and mem[_4832 + 96 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_4832 + mem[_4832 + 96 len 4], Mask(224, 32, s) >> 32 + 96]) + 32 <= return_data.size
                        mem[_4832 + ceil32(return_data.size) + 96] = mem[_4832 + mem[_4832 + 96 len 4], Mask(224, 32, s) >> 32 + 96]
                        _9850 = mem[_4832 + _9201 + 96]
                        s = 0
                        while s < 32 * _9850:
                            mem[s + _4832 + ceil32(return_data.size) + 128] = mem[s + _4832 + _9201 + 128]
                            s = s + 32
                            continue 
                        mem[64] = (32 * _9850) + _4832 + ceil32(return_data.size) + 128
                        require mem[_4832 + ceil32(return_data.size) + 96] - 1 < mem[_4832 + ceil32(return_data.size) + 96]
                        if mem[(32 * mem[_4832 + ceil32(return_data.size) + 96] - 1) + _4832 + ceil32(return_data.size) + 128] <= t:
                            idx = idx + 1
                            t = t
                            continue 
                        idx = idx + 1
                        t = mem[(32 * mem[_4832 + ceil32(return_data.size) + 96] - 1) + _4832 + ceil32(return_data.size) + 128]
                        continue 
                    if 8 == idx:
                        _5058 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        require 0 < mem[_5058]
                        mem[_5058 + 32] = 0x49d68029688eabf473097a2fc38ef61633a3c
                        require 1 < mem[_5058]
                        mem[_5058 + 64] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                        mem[_5058 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[_5058 + 100] = s
                        mem[_5058 + 132] = 64
                        mem[_5058 + 164] = mem[_5058]
                        u = 0
                        while u < 32 * mem[_5058]:
                            mem[u + _5058 + 196] = mem[u + _5058 + 32]
                            u = u + 32
                            continue 
                        require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                        staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c29.getAmountsOut(uint256 arg1, address[] arg2) with:
                                gas gas_remaining wei
                               args s, 64, mem[_5058 + 164 len (32 * mem[_5058]) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_5058 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = _5058 + ceil32(return_data.size) + 96
                        require return_data.size >= 32
                        _9199 = mem[_5058 + 96 len 4], Mask(224, 32, s) >> 32
                        require mem[_5058 + 96 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                        require mem[_5058 + 96 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                        require mem[_5058 + mem[_5058 + 96 len 4], Mask(224, 32, s) >> 32 + 96] <= 4294967296 and mem[_5058 + 96 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_5058 + mem[_5058 + 96 len 4], Mask(224, 32, s) >> 32 + 96]) + 32 <= return_data.size
                        mem[_5058 + ceil32(return_data.size) + 96] = mem[_5058 + mem[_5058 + 96 len 4], Mask(224, 32, s) >> 32 + 96]
                        _9849 = mem[_5058 + _9199 + 96]
                        s = 0
                        while s < 32 * _9849:
                            mem[s + _5058 + ceil32(return_data.size) + 128] = mem[s + _5058 + _9199 + 128]
                            s = s + 32
                            continue 
                        mem[64] = (32 * _9849) + _5058 + ceil32(return_data.size) + 128
                        require mem[_5058 + ceil32(return_data.size) + 96] - 1 < mem[_5058 + ceil32(return_data.size) + 96]
                        if mem[(32 * mem[_5058 + ceil32(return_data.size) + 96] - 1) + _5058 + ceil32(return_data.size) + 128] <= t:
                            idx = idx + 1
                            t = t
                            continue 
                        idx = idx + 1
                        t = mem[(32 * mem[_5058 + ceil32(return_data.size) + 96] - 1) + _5058 + ceil32(return_data.size) + 128]
                        continue 
                    if idx != 9:
                        _5056 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        require 0 < mem[_5056]
                        mem[_5056 + 32] = 0x49d68029688eabf473097a2fc38ef61633a3c
                        require 1 < mem[_5056]
                        mem[_5056 + 64] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                        mem[_5056 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[_5056 + 100] = s
                        mem[_5056 + 132] = 64
                        mem[_5056 + 164] = mem[_5056]
                        u = 0
                        while u < 32 * mem[_5056]:
                            mem[u + _5056 + 196] = mem[u + _5056 + 32]
                            u = u + 32
                            continue 
                        require ext_code.size(0)
                        staticcall 0x0.getAmountsOut(uint256 arg1, address[] arg2) with:
                                gas gas_remaining wei
                               args s, 64, mem[_5056 + 164 len (32 * mem[_5056]) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_5056 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = _5056 + ceil32(return_data.size) + 96
                        require return_data.size >= 32
                        _9195 = mem[_5056 + 96 len 4], Mask(224, 32, s) >> 32
                        require mem[_5056 + 96 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                        require mem[_5056 + 96 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                        require mem[_5056 + mem[_5056 + 96 len 4], Mask(224, 32, s) >> 32 + 96] <= 4294967296 and mem[_5056 + 96 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_5056 + mem[_5056 + 96 len 4], Mask(224, 32, s) >> 32 + 96]) + 32 <= return_data.size
                        mem[_5056 + ceil32(return_data.size) + 96] = mem[_5056 + mem[_5056 + 96 len 4], Mask(224, 32, s) >> 32 + 96]
                        _9847 = mem[_5056 + _9195 + 96]
                        s = 0
                        while s < 32 * _9847:
                            mem[s + _5056 + ceil32(return_data.size) + 128] = mem[s + _5056 + _9195 + 128]
                            s = s + 32
                            continue 
                        mem[64] = (32 * _9847) + _5056 + ceil32(return_data.size) + 128
                        require mem[_5056 + ceil32(return_data.size) + 96] - 1 < mem[_5056 + ceil32(return_data.size) + 96]
                        if mem[(32 * mem[_5056 + ceil32(return_data.size) + 96] - 1) + _5056 + ceil32(return_data.size) + 128] <= t:
                            idx = idx + 1
                            t = t
                            continue 
                        idx = idx + 1
                        t = mem[(32 * mem[_5056 + ceil32(return_data.size) + 96] - 1) + _5056 + ceil32(return_data.size) + 128]
                        continue 
                    _5286 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    require 0 < mem[_5286]
                    mem[_5286 + 32] = 0x49d68029688eabf473097a2fc38ef61633a3c
                    require 1 < mem[_5286]
                    mem[_5286 + 64] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    mem[_5286 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_5286 + 100] = s
                    mem[_5286 + 132] = 64
                    mem[_5286 + 164] = mem[_5286]
                    u = 0
                    while u < 32 * mem[_5286]:
                        mem[u + _5286 + 196] = mem[u + _5286 + 32]
                        u = u + 32
                        continue 
                    require ext_code.size(0x6b3d631b87fe27af29efec61d2ab8ce4d621ccbf)
                    staticcall 0x6b3d631b87fe27af29efec61d2ab8ce4d621ccbf.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args s, 64, mem[_5286 + 164 len (32 * mem[_5286]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_5286 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _5286 + ceil32(return_data.size) + 96
                    require return_data.size >= 32
                    _9197 = mem[_5286 + 96 len 4], Mask(224, 32, s) >> 32
                    require mem[_5286 + 96 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                    require mem[_5286 + 96 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                    require mem[_5286 + mem[_5286 + 96 len 4], Mask(224, 32, s) >> 32 + 96] <= 4294967296 and mem[_5286 + 96 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_5286 + mem[_5286 + 96 len 4], Mask(224, 32, s) >> 32 + 96]) + 32 <= return_data.size
                    mem[_5286 + ceil32(return_data.size) + 96] = mem[_5286 + mem[_5286 + 96 len 4], Mask(224, 32, s) >> 32 + 96]
                    _9848 = mem[_5286 + _9197 + 96]
                    s = 0
                    while s < 32 * _9848:
                        mem[s + _5286 + ceil32(return_data.size) + 128] = mem[s + _5286 + _9197 + 128]
                        s = s + 32
                        continue 
                    mem[64] = (32 * _9848) + _5286 + ceil32(return_data.size) + 128
                    require mem[_5286 + ceil32(return_data.size) + 96] - 1 < mem[_5286 + ceil32(return_data.size) + 96]
                    if mem[(32 * mem[_5286 + ceil32(return_data.size) + 96] - 1) + _5286 + ceil32(return_data.size) + 128] <= t:
                        idx = idx + 1
                        t = t
                        continue 
                    idx = idx + 1
                    t = mem[(32 * mem[_5286 + ceil32(return_data.size) + 96] - 1) + _5286 + ceil32(return_data.size) + 128]
                    continue 
                if idx != 9:
                    if idx != 10:
                        if s <= t:
                            idx = idx + 1
                            t = t
                            continue 
                        idx = idx + 1
                        t = s
                        continue 
                    mem[mem[64] + 4] = 0
                    mem[mem[64] + 36] = 1
                    mem[mem[64] + 68] = s
                    require ext_code.size(0x952bda8a83c3d5f398a686bb4e8c6dd90072d523)
                    staticcall 0x952bda8a83c3d5f398a686bb4e8c6dd90072d523.calculateSwap(uint8 arg1, uint8 arg2, uint256 arg3) with:
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
                if 7 == idx:
                    _5063 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    require 0 < mem[_5063]
                    mem[_5063 + 32] = 0x49d68029688eabf473097a2fc38ef61633a3c
                    require 1 < mem[_5063]
                    mem[_5063 + 64] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    mem[_5063 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_5063 + 100] = s
                    mem[_5063 + 132] = 64
                    mem[_5063 + 164] = mem[_5063]
                    u = 0
                    while u < 32 * mem[_5063]:
                        mem[u + _5063 + 196] = mem[u + _5063 + 32]
                        u = u + 32
                        continue 
                    require ext_code.size(0x845e76a8691423fbc4ecb8dd77556cb61c09ee25)
                    staticcall 0x845e76a8691423fbc4ecb8dd77556cb61c09ee25.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args s, 64, mem[_5063 + 164 len (32 * mem[_5063]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_5063 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _5063 + ceil32(return_data.size) + 96
                    require return_data.size >= 32
                    _9209 = mem[_5063 + 96 len 4], Mask(224, 32, s) >> 32
                    require mem[_5063 + 96 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                    require mem[_5063 + 96 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                    require mem[_5063 + mem[_5063 + 96 len 4], Mask(224, 32, s) >> 32 + 96] <= 4294967296 and mem[_5063 + 96 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_5063 + mem[_5063 + 96 len 4], Mask(224, 32, s) >> 32 + 96]) + 32 <= return_data.size
                    mem[_5063 + ceil32(return_data.size) + 96] = mem[_5063 + mem[_5063 + 96 len 4], Mask(224, 32, s) >> 32 + 96]
                    _9854 = mem[_5063 + _9209 + 96]
                    s = 0
                    while s < 32 * _9854:
                        mem[s + _5063 + ceil32(return_data.size) + 128] = mem[s + _5063 + _9209 + 128]
                        s = s + 32
                        continue 
                    mem[64] = (32 * _9854) + _5063 + ceil32(return_data.size) + 128
                    require mem[_5063 + ceil32(return_data.size) + 96] - 1 < mem[_5063 + ceil32(return_data.size) + 96]
                    if mem[(32 * mem[_5063 + ceil32(return_data.size) + 96] - 1) + _5063 + ceil32(return_data.size) + 128] <= t:
                        idx = idx + 1
                        t = t
                        continue 
                    idx = idx + 1
                    t = mem[(32 * mem[_5063 + ceil32(return_data.size) + 96] - 1) + _5063 + ceil32(return_data.size) + 128]
                    continue 
                if 8 == idx:
                    _5296 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    require 0 < mem[_5296]
                    mem[_5296 + 32] = 0x49d68029688eabf473097a2fc38ef61633a3c
                    require 1 < mem[_5296]
                    mem[_5296 + 64] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    mem[_5296 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_5296 + 100] = s
                    mem[_5296 + 132] = 64
                    mem[_5296 + 164] = mem[_5296]
                    u = 0
                    while u < 32 * mem[_5296]:
                        mem[u + _5296 + 196] = mem[u + _5296 + 32]
                        u = u + 32
                        continue 
                    require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                    staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c29.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args s, 64, mem[_5296 + 164 len (32 * mem[_5296]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_5296 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _5296 + ceil32(return_data.size) + 96
                    require return_data.size >= 32
                    _9207 = mem[_5296 + 96 len 4], Mask(224, 32, s) >> 32
                    require mem[_5296 + 96 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                    require mem[_5296 + 96 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                    require mem[_5296 + mem[_5296 + 96 len 4], Mask(224, 32, s) >> 32 + 96] <= 4294967296 and mem[_5296 + 96 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_5296 + mem[_5296 + 96 len 4], Mask(224, 32, s) >> 32 + 96]) + 32 <= return_data.size
                    mem[_5296 + ceil32(return_data.size) + 96] = mem[_5296 + mem[_5296 + 96 len 4], Mask(224, 32, s) >> 32 + 96]
                    _9853 = mem[_5296 + _9207 + 96]
                    s = 0
                    while s < 32 * _9853:
                        mem[s + _5296 + ceil32(return_data.size) + 128] = mem[s + _5296 + _9207 + 128]
                        s = s + 32
                        continue 
                    mem[64] = (32 * _9853) + _5296 + ceil32(return_data.size) + 128
                    require mem[_5296 + ceil32(return_data.size) + 96] - 1 < mem[_5296 + ceil32(return_data.size) + 96]
                    if mem[(32 * mem[_5296 + ceil32(return_data.size) + 96] - 1) + _5296 + ceil32(return_data.size) + 128] <= t:
                        idx = idx + 1
                        t = t
                        continue 
                    idx = idx + 1
                    t = mem[(32 * mem[_5296 + ceil32(return_data.size) + 96] - 1) + _5296 + ceil32(return_data.size) + 128]
                    continue 
                if idx != 9:
                    _5294 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    require 0 < mem[_5294]
                    mem[_5294 + 32] = 0x49d68029688eabf473097a2fc38ef61633a3c
                    require 1 < mem[_5294]
                    mem[_5294 + 64] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    mem[_5294 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_5294 + 100] = s
                    mem[_5294 + 132] = 64
                    mem[_5294 + 164] = mem[_5294]
                    u = 0
                    while u < 32 * mem[_5294]:
                        mem[u + _5294 + 196] = mem[u + _5294 + 32]
                        u = u + 32
                        continue 
                    require ext_code.size(0)
                    staticcall 0x0.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args s, 64, mem[_5294 + 164 len (32 * mem[_5294]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_5294 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _5294 + ceil32(return_data.size) + 96
                    require return_data.size >= 32
                    _9203 = mem[_5294 + 96 len 4], Mask(224, 32, s) >> 32
                    require mem[_5294 + 96 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                    require mem[_5294 + 96 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                    require mem[_5294 + mem[_5294 + 96 len 4], Mask(224, 32, s) >> 32 + 96] <= 4294967296 and mem[_5294 + 96 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_5294 + mem[_5294 + 96 len 4], Mask(224, 32, s) >> 32 + 96]) + 32 <= return_data.size
                    mem[_5294 + ceil32(return_data.size) + 96] = mem[_5294 + mem[_5294 + 96 len 4], Mask(224, 32, s) >> 32 + 96]
                    _9851 = mem[_5294 + _9203 + 96]
                    s = 0
                    while s < 32 * _9851:
                        mem[s + _5294 + ceil32(return_data.size) + 128] = mem[s + _5294 + _9203 + 128]
                        s = s + 32
                        continue 
                    mem[64] = (32 * _9851) + _5294 + ceil32(return_data.size) + 128
                    require mem[_5294 + ceil32(return_data.size) + 96] - 1 < mem[_5294 + ceil32(return_data.size) + 96]
                    if mem[(32 * mem[_5294 + ceil32(return_data.size) + 96] - 1) + _5294 + ceil32(return_data.size) + 128] <= t:
                        idx = idx + 1
                        t = t
                        continue 
                    idx = idx + 1
                    t = mem[(32 * mem[_5294 + ceil32(return_data.size) + 96] - 1) + _5294 + ceil32(return_data.size) + 128]
                    continue 
                _5569 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                require 0 < mem[_5569]
                mem[_5569 + 32] = 0x49d68029688eabf473097a2fc38ef61633a3c
                require 1 < mem[_5569]
                mem[_5569 + 64] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                mem[_5569 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_5569 + 100] = s
                mem[_5569 + 132] = 64
                mem[_5569 + 164] = mem[_5569]
                u = 0
                while u < 32 * mem[_5569]:
                    mem[u + _5569 + 196] = mem[u + _5569 + 32]
                    u = u + 32
                    continue 
                require ext_code.size(0x6b3d631b87fe27af29efec61d2ab8ce4d621ccbf)
                staticcall 0x6b3d631b87fe27af29efec61d2ab8ce4d621ccbf.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args s, 64, mem[_5569 + 164 len (32 * mem[_5569]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_5569 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _5569 + ceil32(return_data.size) + 96
                require return_data.size >= 32
                _9205 = mem[_5569 + 96 len 4], Mask(224, 32, s) >> 32
                require mem[_5569 + 96 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                require mem[_5569 + 96 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                require mem[_5569 + mem[_5569 + 96 len 4], Mask(224, 32, s) >> 32 + 96] <= 4294967296 and mem[_5569 + 96 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_5569 + mem[_5569 + 96 len 4], Mask(224, 32, s) >> 32 + 96]) + 32 <= return_data.size
                mem[_5569 + ceil32(return_data.size) + 96] = mem[_5569 + mem[_5569 + 96 len 4], Mask(224, 32, s) >> 32 + 96]
                _9852 = mem[_5569 + _9205 + 96]
                s = 0
                while s < 32 * _9852:
                    mem[s + _5569 + ceil32(return_data.size) + 128] = mem[s + _5569 + _9205 + 128]
                    s = s + 32
                    continue 
                mem[64] = (32 * _9852) + _5569 + ceil32(return_data.size) + 128
                require mem[_5569 + ceil32(return_data.size) + 96] - 1 < mem[_5569 + ceil32(return_data.size) + 96]
                if mem[(32 * mem[_5569 + ceil32(return_data.size) + 96] - 1) + _5569 + ceil32(return_data.size) + 128] <= t:
                    idx = idx + 1
                    t = t
                    continue 
                idx = idx + 1
                t = mem[(32 * mem[_5569 + ceil32(return_data.size) + 96] - 1) + _5569 + ceil32(return_data.size) + 128]
                continue 
            _3839 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            require 0 < mem[_3839]
            mem[_3839 + 32] = 0x49d68029688eabf473097a2fc38ef61633a3c
            require 1 < mem[_3839]
            mem[_3839 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
            mem[_3839 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[_3839 + 100] = s
            mem[_3839 + 132] = 64
            mem[_3839 + 164] = mem[_3839]
            u = 0
            while u < 32 * mem[_3839]:
                mem[u + _3839 + 196] = mem[u + _3839 + 32]
                u = u + 32
                continue 
            require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
            staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c29.getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args s, 64, mem[_3839 + 164 len (32 * mem[_3839]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[_3839 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = _3839 + ceil32(return_data.size) + 96
            require return_data.size >= 32
            _9211 = mem[_3839 + 96 len 4], Mask(224, 32, s) >> 32
            require mem[_3839 + 96 len 4], Mask(224, 32, s) >> 32 <= 4294967296
            require mem[_3839 + 96 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
            require mem[_3839 + mem[_3839 + 96 len 4], Mask(224, 32, s) >> 32 + 96] <= 4294967296 and mem[_3839 + 96 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_3839 + mem[_3839 + 96 len 4], Mask(224, 32, s) >> 32 + 96]) + 32 <= return_data.size
            mem[_3839 + ceil32(return_data.size) + 96] = mem[_3839 + mem[_3839 + 96 len 4], Mask(224, 32, s) >> 32 + 96]
            _9855 = mem[_3839 + _9211 + 96]
            s = 0
            while s < 32 * _9855:
                mem[s + _3839 + ceil32(return_data.size) + 128] = mem[s + _3839 + _9211 + 128]
                s = s + 32
                continue 
            mem[64] = (32 * _9855) + _3839 + ceil32(return_data.size) + 128
            require mem[_3839 + ceil32(return_data.size) + 96] - 1 < mem[_3839 + ceil32(return_data.size) + 96]
            _11983 = mem[(32 * mem[_3839 + ceil32(return_data.size) + 96] - 1) + _3839 + ceil32(return_data.size) + 128]
            mem[(32 * _9855) + _3839 + ceil32(return_data.size) + 128] = 2
            mem[(32 * _9855) + _3839 + ceil32(return_data.size) + 160] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
            mem[(32 * _9855) + _3839 + ceil32(return_data.size) + 192] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
            mem[(32 * _9855) + _3839 + ceil32(return_data.size) + 224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[(32 * _9855) + _3839 + ceil32(return_data.size) + 228] = _11983
            mem[(32 * _9855) + _3839 + ceil32(return_data.size) + 260] = 64
            mem[(32 * _9855) + _3839 + ceil32(return_data.size) + 292] = 2
            s = 0
            while s < 64:
                mem[s + (32 * _9855) + _3839 + ceil32(return_data.size) + 324] = mem[s + (32 * _9855) + _3839 + ceil32(return_data.size) + 160]
                s = s + 32
                continue 
            require ext_code.size(0x1b02da8cb0d097eb8d57a175b88c7d8b47997506)
            staticcall 0x1b02da8cb0d097eb8d57a175b88c7d8b47997506.getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args _11983, Array(len=2, data=mem[(32 * _9855) + _3839 + ceil32(return_data.size) + 324 len 64])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _9855) + _3839 + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * _9855) + _3839 + (2 * ceil32(return_data.size)) + 224
            require return_data.size >= 32
            _12603 = mem[(32 * _9855) + _3839 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _11983) >> 32
            require mem[(32 * _9855) + _3839 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _11983) >> 32 <= 4294967296
            require mem[(32 * _9855) + _3839 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _11983) >> 32 + 32 <= return_data.size
            require mem[(32 * _9855) + _3839 + ceil32(return_data.size) + mem[(32 * _9855) + _3839 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _11983) >> 32 + 224] <= 4294967296 and mem[(32 * _9855) + _3839 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _11983) >> 32 + (32 * mem[(32 * _9855) + _3839 + ceil32(return_data.size) + mem[(32 * _9855) + _3839 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _11983) >> 32 + 224]) + 32 <= return_data.size
            mem[(32 * _9855) + _3839 + (2 * ceil32(return_data.size)) + 224] = mem[(32 * _9855) + _3839 + ceil32(return_data.size) + mem[(32 * _9855) + _3839 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _11983) >> 32 + 224]
            _12651 = mem[(32 * _9855) + _3839 + ceil32(return_data.size) + _12603 + 224]
            s = 0
            while s < 32 * _12651:
                mem[s + (32 * _9855) + _3839 + (2 * ceil32(return_data.size)) + 256] = mem[s + (32 * _9855) + _3839 + ceil32(return_data.size) + _12603 + 256]
                s = s + 32
                continue 
            mem[64] = (32 * _12651) + (32 * _9855) + _3839 + (2 * ceil32(return_data.size)) + 256
            require mem[(32 * _9855) + _3839 + (2 * ceil32(return_data.size)) + 224] - 1 < mem[(32 * _9855) + _3839 + (2 * ceil32(return_data.size)) + 224]
            if mem[(32 * mem[(32 * _9855) + _3839 + (2 * ceil32(return_data.size)) + 224] - 1) + (32 * _9855) + _3839 + (2 * ceil32(return_data.size)) + 256] <= t:
                idx = idx + 1
                t = t
                continue 
            idx = idx + 1
            t = mem[(32 * mem[(32 * _9855) + _3839 + (2 * ceil32(return_data.size)) + 224] - 1) + (32 * _9855) + _3839 + (2 * ceil32(return_data.size)) + 256]
            continue 
    if maxBatch:
        if 10^11 * maxBatch / maxBatch != 10^11:
            revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
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
                _208 = mem[64]
                mem[mem[64]] = 3
                mem[64] = mem[64] + 128
                require 0 < mem[_208]
                mem[_208 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                require 1 < mem[_208]
                mem[_208 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                require 2 < mem[_208]
                mem[_208 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                mem[_208 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_208 + 132] = 0
                mem[_208 + 164] = 64
                mem[_208 + 196] = mem[_208]
                t = 0
                while t < 32 * mem[_208]:
                    mem[t + _208 + 228] = mem[t + _208 + 32]
                    t = t + 32
                    continue 
                require ext_code.size(0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52)
                staticcall 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args 0, 64, mem[_208 + 196 len (32 * mem[_208]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_208 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _208 + ceil32(return_data.size) + 128
                require return_data.size >= 32
                _2812 = mem[_208 + 128 len 4], 0
                require mem[_208 + 128 len 4], 0 <= 4294967296
                require mem[_208 + 128 len 4], 0 + 32 <= return_data.size
                require mem[_208 + mem[_208 + 128 len 4], 0 + 128] <= 4294967296 and mem[_208 + 128 len 4], 0 + (32 * mem[_208 + mem[_208 + 128 len 4], 0 + 128]) + 32 <= return_data.size
                mem[_208 + ceil32(return_data.size) + 128] = mem[_208 + mem[_208 + 128 len 4], 0 + 128]
                _3164 = mem[_208 + _2812 + 128]
                t = 0
                while t < 32 * _3164:
                    mem[t + _208 + ceil32(return_data.size) + 160] = mem[t + _208 + _2812 + 160]
                    t = t + 32
                    continue 
                mem[64] = (32 * _3164) + _208 + ceil32(return_data.size) + 160
                require mem[_208 + ceil32(return_data.size) + 128] - 1 < mem[_208 + ceil32(return_data.size) + 128]
                if mem[(32 * mem[_208 + ceil32(return_data.size) + 128] - 1) + _208 + ceil32(return_data.size) + 160] <= s:
                    idx = idx + 1
                    s = s
                    continue 
                idx = idx + 1
                s = mem[(32 * mem[_208 + ceil32(return_data.size) + 128] - 1) + _208 + ceil32(return_data.size) + 160]
                continue 
            if 3 == idx:
                if 2 == idx:
                    _235 = mem[64]
                    mem[mem[64]] = 3
                    mem[64] = mem[64] + 128
                    require 0 < mem[_235]
                    mem[_235 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    require 1 < mem[_235]
                    mem[_235 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                    require 2 < mem[_235]
                    mem[_235 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    mem[_235 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_235 + 132] = 0
                    mem[_235 + 164] = 64
                    mem[_235 + 196] = mem[_235]
                    t = 0
                    while t < 32 * mem[_235]:
                        mem[t + _235 + 228] = mem[t + _235 + 32]
                        t = t + 32
                        continue 
                    require ext_code.size(0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52)
                    staticcall 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args 0, 64, mem[_235 + 196 len (32 * mem[_235]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_235 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _235 + ceil32(return_data.size) + 128
                    require return_data.size >= 32
                    _2822 = mem[_235 + 128 len 4], 0
                    require mem[_235 + 128 len 4], 0 <= 4294967296
                    require mem[_235 + 128 len 4], 0 + 32 <= return_data.size
                    require mem[_235 + mem[_235 + 128 len 4], 0 + 128] <= 4294967296 and mem[_235 + 128 len 4], 0 + (32 * mem[_235 + mem[_235 + 128 len 4], 0 + 128]) + 32 <= return_data.size
                    mem[_235 + ceil32(return_data.size) + 128] = mem[_235 + mem[_235 + 128 len 4], 0 + 128]
                    _3169 = mem[_235 + _2822 + 128]
                    t = 0
                    while t < 32 * _3169:
                        mem[t + _235 + ceil32(return_data.size) + 160] = mem[t + _235 + _2822 + 160]
                        t = t + 32
                        continue 
                    mem[64] = (32 * _3169) + _235 + ceil32(return_data.size) + 160
                    require mem[_235 + ceil32(return_data.size) + 128] - 1 < mem[_235 + ceil32(return_data.size) + 128]
                    if mem[(32 * mem[_235 + ceil32(return_data.size) + 128] - 1) + _235 + ceil32(return_data.size) + 160] <= s:
                        idx = idx + 1
                        s = s
                        continue 
                    idx = idx + 1
                    s = mem[(32 * mem[_235 + ceil32(return_data.size) + 128] - 1) + _235 + ceil32(return_data.size) + 160]
                    continue 
                if 3 == idx:
                    _267 = mem[64]
                    mem[mem[64]] = 3
                    mem[64] = mem[64] + 128
                    require 0 < mem[_267]
                    mem[_267 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    require 1 < mem[_267]
                    mem[_267 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                    require 2 < mem[_267]
                    mem[_267 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    mem[_267 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_267 + 132] = 0
                    mem[_267 + 164] = 64
                    mem[_267 + 196] = mem[_267]
                    t = 0
                    while t < 32 * mem[_267]:
                        mem[t + _267 + 228] = mem[t + _267 + 32]
                        t = t + 32
                        continue 
                    require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                    staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c29.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args 0, 64, mem[_267 + 196 len (32 * mem[_267]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_267 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _267 + ceil32(return_data.size) + 128
                    require return_data.size >= 32
                    _2820 = mem[_267 + 128 len 4], 0
                    require mem[_267 + 128 len 4], 0 <= 4294967296
                    require mem[_267 + 128 len 4], 0 + 32 <= return_data.size
                    require mem[_267 + mem[_267 + 128 len 4], 0 + 128] <= 4294967296 and mem[_267 + 128 len 4], 0 + (32 * mem[_267 + mem[_267 + 128 len 4], 0 + 128]) + 32 <= return_data.size
                    mem[_267 + ceil32(return_data.size) + 128] = mem[_267 + mem[_267 + 128 len 4], 0 + 128]
                    _3168 = mem[_267 + _2820 + 128]
                    t = 0
                    while t < 32 * _3168:
                        mem[t + _267 + ceil32(return_data.size) + 160] = mem[t + _267 + _2820 + 160]
                        t = t + 32
                        continue 
                    mem[64] = (32 * _3168) + _267 + ceil32(return_data.size) + 160
                    require mem[_267 + ceil32(return_data.size) + 128] - 1 < mem[_267 + ceil32(return_data.size) + 128]
                    if mem[(32 * mem[_267 + ceil32(return_data.size) + 128] - 1) + _267 + ceil32(return_data.size) + 160] <= s:
                        idx = idx + 1
                        s = s
                        continue 
                    idx = idx + 1
                    s = mem[(32 * mem[_267 + ceil32(return_data.size) + 128] - 1) + _267 + ceil32(return_data.size) + 160]
                    continue 
                if 4 == idx:
                    _333 = mem[64]
                    mem[mem[64]] = 3
                    mem[64] = mem[64] + 128
                    require 0 < mem[_333]
                    mem[_333 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    require 1 < mem[_333]
                    mem[_333 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                    require 2 < mem[_333]
                    mem[_333 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    mem[_333 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_333 + 132] = 0
                    mem[_333 + 164] = 64
                    mem[_333 + 196] = mem[_333]
                    t = 0
                    while t < 32 * mem[_333]:
                        mem[t + _333 + 228] = mem[t + _333 + 32]
                        t = t + 32
                        continue 
                    require ext_code.size(0x7b17021fcb7bc888641dc3bedfed3734fcaf2c87)
                    staticcall 0x7b17021fcb7bc888641dc3bedfed3734fcaf2c87.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args 0, 64, mem[_333 + 196 len (32 * mem[_333]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_333 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _333 + ceil32(return_data.size) + 128
                    require return_data.size >= 32
                    _2818 = mem[_333 + 128 len 4], 0
                    require mem[_333 + 128 len 4], 0 <= 4294967296
                    require mem[_333 + 128 len 4], 0 + 32 <= return_data.size
                    require mem[_333 + mem[_333 + 128 len 4], 0 + 128] <= 4294967296 and mem[_333 + 128 len 4], 0 + (32 * mem[_333 + mem[_333 + 128 len 4], 0 + 128]) + 32 <= return_data.size
                    mem[_333 + ceil32(return_data.size) + 128] = mem[_333 + mem[_333 + 128 len 4], 0 + 128]
                    _3167 = mem[_333 + _2818 + 128]
                    t = 0
                    while t < 32 * _3167:
                        mem[t + _333 + ceil32(return_data.size) + 160] = mem[t + _333 + _2818 + 160]
                        t = t + 32
                        continue 
                    mem[64] = (32 * _3167) + _333 + ceil32(return_data.size) + 160
                    require mem[_333 + ceil32(return_data.size) + 128] - 1 < mem[_333 + ceil32(return_data.size) + 128]
                    if mem[(32 * mem[_333 + ceil32(return_data.size) + 128] - 1) + _333 + ceil32(return_data.size) + 160] <= s:
                        idx = idx + 1
                        s = s
                        continue 
                    idx = idx + 1
                    s = mem[(32 * mem[_333 + ceil32(return_data.size) + 128] - 1) + _333 + ceil32(return_data.size) + 160]
                    continue 
                if idx != 5:
                    _331 = mem[64]
                    mem[mem[64]] = 3
                    mem[64] = mem[64] + 128
                    require 0 < mem[_331]
                    mem[_331 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    require 1 < mem[_331]
                    mem[_331 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                    require 2 < mem[_331]
                    mem[_331 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    mem[_331 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_331 + 132] = 0
                    mem[_331 + 164] = 64
                    mem[_331 + 196] = mem[_331]
                    t = 0
                    while t < 32 * mem[_331]:
                        mem[t + _331 + 228] = mem[t + _331 + 32]
                        t = t + 32
                        continue 
                    require ext_code.size(0)
                    staticcall 0x0.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args 0, 64, mem[_331 + 196 len (32 * mem[_331]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_331 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _331 + ceil32(return_data.size) + 128
                    require return_data.size >= 32
                    _2814 = mem[_331 + 128 len 4], 0
                    require mem[_331 + 128 len 4], 0 <= 4294967296
                    require mem[_331 + 128 len 4], 0 + 32 <= return_data.size
                    require mem[_331 + mem[_331 + 128 len 4], 0 + 128] <= 4294967296 and mem[_331 + 128 len 4], 0 + (32 * mem[_331 + mem[_331 + 128 len 4], 0 + 128]) + 32 <= return_data.size
                    mem[_331 + ceil32(return_data.size) + 128] = mem[_331 + mem[_331 + 128 len 4], 0 + 128]
                    _3165 = mem[_331 + _2814 + 128]
                    t = 0
                    while t < 32 * _3165:
                        mem[t + _331 + ceil32(return_data.size) + 160] = mem[t + _331 + _2814 + 160]
                        t = t + 32
                        continue 
                    mem[64] = (32 * _3165) + _331 + ceil32(return_data.size) + 160
                    require mem[_331 + ceil32(return_data.size) + 128] - 1 < mem[_331 + ceil32(return_data.size) + 128]
                    if mem[(32 * mem[_331 + ceil32(return_data.size) + 128] - 1) + _331 + ceil32(return_data.size) + 160] <= s:
                        idx = idx + 1
                        s = s
                        continue 
                    idx = idx + 1
                    s = mem[(32 * mem[_331 + ceil32(return_data.size) + 128] - 1) + _331 + ceil32(return_data.size) + 160]
                    continue 
                _411 = mem[64]
                mem[mem[64]] = 3
                mem[64] = mem[64] + 128
                require 0 < mem[_411]
                mem[_411 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                require 1 < mem[_411]
                mem[_411 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                require 2 < mem[_411]
                mem[_411 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                mem[_411 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_411 + 132] = 0
                mem[_411 + 164] = 64
                mem[_411 + 196] = mem[_411]
                t = 0
                while t < 32 * mem[_411]:
                    mem[t + _411 + 228] = mem[t + _411 + 32]
                    t = t + 32
                    continue 
                require ext_code.size(0x845e76a8691423fbc4ecb8dd77556cb61c09ee25)
                staticcall 0x845e76a8691423fbc4ecb8dd77556cb61c09ee25.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args 0, 64, mem[_411 + 196 len (32 * mem[_411]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_411 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _411 + ceil32(return_data.size) + 128
                require return_data.size >= 32
                _2816 = mem[_411 + 128 len 4], 0
                require mem[_411 + 128 len 4], 0 <= 4294967296
                require mem[_411 + 128 len 4], 0 + 32 <= return_data.size
                require mem[_411 + mem[_411 + 128 len 4], 0 + 128] <= 4294967296 and mem[_411 + 128 len 4], 0 + (32 * mem[_411 + mem[_411 + 128 len 4], 0 + 128]) + 32 <= return_data.size
                mem[_411 + ceil32(return_data.size) + 128] = mem[_411 + mem[_411 + 128 len 4], 0 + 128]
                _3166 = mem[_411 + _2816 + 128]
                t = 0
                while t < 32 * _3166:
                    mem[t + _411 + ceil32(return_data.size) + 160] = mem[t + _411 + _2816 + 160]
                    t = t + 32
                    continue 
                mem[64] = (32 * _3166) + _411 + ceil32(return_data.size) + 160
                require mem[_411 + ceil32(return_data.size) + 128] - 1 < mem[_411 + ceil32(return_data.size) + 128]
                if mem[(32 * mem[_411 + ceil32(return_data.size) + 128] - 1) + _411 + ceil32(return_data.size) + 160] <= s:
                    idx = idx + 1
                    s = s
                    continue 
                idx = idx + 1
                s = mem[(32 * mem[_411 + ceil32(return_data.size) + 128] - 1) + _411 + ceil32(return_data.size) + 160]
                continue 
            if 4 == idx:
                if 2 == idx:
                    _270 = mem[64]
                    mem[mem[64]] = 3
                    mem[64] = mem[64] + 128
                    require 0 < mem[_270]
                    mem[_270 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    require 1 < mem[_270]
                    mem[_270 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                    require 2 < mem[_270]
                    mem[_270 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    mem[_270 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_270 + 132] = 0
                    mem[_270 + 164] = 64
                    mem[_270 + 196] = mem[_270]
                    t = 0
                    while t < 32 * mem[_270]:
                        mem[t + _270 + 228] = mem[t + _270 + 32]
                        t = t + 32
                        continue 
                    require ext_code.size(0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52)
                    staticcall 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args 0, 64, mem[_270 + 196 len (32 * mem[_270]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_270 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _270 + ceil32(return_data.size) + 128
                    require return_data.size >= 32
                    _2832 = mem[_270 + 128 len 4], 0
                    require mem[_270 + 128 len 4], 0 <= 4294967296
                    require mem[_270 + 128 len 4], 0 + 32 <= return_data.size
                    require mem[_270 + mem[_270 + 128 len 4], 0 + 128] <= 4294967296 and mem[_270 + 128 len 4], 0 + (32 * mem[_270 + mem[_270 + 128 len 4], 0 + 128]) + 32 <= return_data.size
                    mem[_270 + ceil32(return_data.size) + 128] = mem[_270 + mem[_270 + 128 len 4], 0 + 128]
                    _3174 = mem[_270 + _2832 + 128]
                    t = 0
                    while t < 32 * _3174:
                        mem[t + _270 + ceil32(return_data.size) + 160] = mem[t + _270 + _2832 + 160]
                        t = t + 32
                        continue 
                    mem[64] = (32 * _3174) + _270 + ceil32(return_data.size) + 160
                    require mem[_270 + ceil32(return_data.size) + 128] - 1 < mem[_270 + ceil32(return_data.size) + 128]
                    if mem[(32 * mem[_270 + ceil32(return_data.size) + 128] - 1) + _270 + ceil32(return_data.size) + 160] <= s:
                        idx = idx + 1
                        s = s
                        continue 
                    idx = idx + 1
                    s = mem[(32 * mem[_270 + ceil32(return_data.size) + 128] - 1) + _270 + ceil32(return_data.size) + 160]
                    continue 
                if 3 == idx:
                    _337 = mem[64]
                    mem[mem[64]] = 3
                    mem[64] = mem[64] + 128
                    require 0 < mem[_337]
                    mem[_337 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    require 1 < mem[_337]
                    mem[_337 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
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
                    require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                    staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c29.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args 0, 64, mem[_337 + 196 len (32 * mem[_337]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_337 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _337 + ceil32(return_data.size) + 128
                    require return_data.size >= 32
                    _2830 = mem[_337 + 128 len 4], 0
                    require mem[_337 + 128 len 4], 0 <= 4294967296
                    require mem[_337 + 128 len 4], 0 + 32 <= return_data.size
                    require mem[_337 + mem[_337 + 128 len 4], 0 + 128] <= 4294967296 and mem[_337 + 128 len 4], 0 + (32 * mem[_337 + mem[_337 + 128 len 4], 0 + 128]) + 32 <= return_data.size
                    mem[_337 + ceil32(return_data.size) + 128] = mem[_337 + mem[_337 + 128 len 4], 0 + 128]
                    _3173 = mem[_337 + _2830 + 128]
                    t = 0
                    while t < 32 * _3173:
                        mem[t + _337 + ceil32(return_data.size) + 160] = mem[t + _337 + _2830 + 160]
                        t = t + 32
                        continue 
                    mem[64] = (32 * _3173) + _337 + ceil32(return_data.size) + 160
                    require mem[_337 + ceil32(return_data.size) + 128] - 1 < mem[_337 + ceil32(return_data.size) + 128]
                    if mem[(32 * mem[_337 + ceil32(return_data.size) + 128] - 1) + _337 + ceil32(return_data.size) + 160] <= s:
                        idx = idx + 1
                        s = s
                        continue 
                    idx = idx + 1
                    s = mem[(32 * mem[_337 + ceil32(return_data.size) + 128] - 1) + _337 + ceil32(return_data.size) + 160]
                    continue 
                if 4 == idx:
                    _420 = mem[64]
                    mem[mem[64]] = 3
                    mem[64] = mem[64] + 128
                    require 0 < mem[_420]
                    mem[_420 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    require 1 < mem[_420]
                    mem[_420 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                    require 2 < mem[_420]
                    mem[_420 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    mem[_420 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_420 + 132] = 0
                    mem[_420 + 164] = 64
                    mem[_420 + 196] = mem[_420]
                    t = 0
                    while t < 32 * mem[_420]:
                        mem[t + _420 + 228] = mem[t + _420 + 32]
                        t = t + 32
                        continue 
                    require ext_code.size(0x7b17021fcb7bc888641dc3bedfed3734fcaf2c87)
                    staticcall 0x7b17021fcb7bc888641dc3bedfed3734fcaf2c87.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args 0, 64, mem[_420 + 196 len (32 * mem[_420]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_420 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _420 + ceil32(return_data.size) + 128
                    require return_data.size >= 32
                    _2828 = mem[_420 + 128 len 4], 0
                    require mem[_420 + 128 len 4], 0 <= 4294967296
                    require mem[_420 + 128 len 4], 0 + 32 <= return_data.size
                    require mem[_420 + mem[_420 + 128 len 4], 0 + 128] <= 4294967296 and mem[_420 + 128 len 4], 0 + (32 * mem[_420 + mem[_420 + 128 len 4], 0 + 128]) + 32 <= return_data.size
                    mem[_420 + ceil32(return_data.size) + 128] = mem[_420 + mem[_420 + 128 len 4], 0 + 128]
                    _3172 = mem[_420 + _2828 + 128]
                    t = 0
                    while t < 32 * _3172:
                        mem[t + _420 + ceil32(return_data.size) + 160] = mem[t + _420 + _2828 + 160]
                        t = t + 32
                        continue 
                    mem[64] = (32 * _3172) + _420 + ceil32(return_data.size) + 160
                    require mem[_420 + ceil32(return_data.size) + 128] - 1 < mem[_420 + ceil32(return_data.size) + 128]
                    if mem[(32 * mem[_420 + ceil32(return_data.size) + 128] - 1) + _420 + ceil32(return_data.size) + 160] <= s:
                        idx = idx + 1
                        s = s
                        continue 
                    idx = idx + 1
                    s = mem[(32 * mem[_420 + ceil32(return_data.size) + 128] - 1) + _420 + ceil32(return_data.size) + 160]
                    continue 
                if idx != 5:
                    _418 = mem[64]
                    mem[mem[64]] = 3
                    mem[64] = mem[64] + 128
                    require 0 < mem[_418]
                    mem[_418 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    require 1 < mem[_418]
                    mem[_418 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                    require 2 < mem[_418]
                    mem[_418 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    mem[_418 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_418 + 132] = 0
                    mem[_418 + 164] = 64
                    mem[_418 + 196] = mem[_418]
                    t = 0
                    while t < 32 * mem[_418]:
                        mem[t + _418 + 228] = mem[t + _418 + 32]
                        t = t + 32
                        continue 
                    require ext_code.size(0)
                    staticcall 0x0.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args 0, 64, mem[_418 + 196 len (32 * mem[_418]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_418 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _418 + ceil32(return_data.size) + 128
                    require return_data.size >= 32
                    _2824 = mem[_418 + 128 len 4], 0
                    require mem[_418 + 128 len 4], 0 <= 4294967296
                    require mem[_418 + 128 len 4], 0 + 32 <= return_data.size
                    require mem[_418 + mem[_418 + 128 len 4], 0 + 128] <= 4294967296 and mem[_418 + 128 len 4], 0 + (32 * mem[_418 + mem[_418 + 128 len 4], 0 + 128]) + 32 <= return_data.size
                    mem[_418 + ceil32(return_data.size) + 128] = mem[_418 + mem[_418 + 128 len 4], 0 + 128]
                    _3170 = mem[_418 + _2824 + 128]
                    t = 0
                    while t < 32 * _3170:
                        mem[t + _418 + ceil32(return_data.size) + 160] = mem[t + _418 + _2824 + 160]
                        t = t + 32
                        continue 
                    mem[64] = (32 * _3170) + _418 + ceil32(return_data.size) + 160
                    require mem[_418 + ceil32(return_data.size) + 128] - 1 < mem[_418 + ceil32(return_data.size) + 128]
                    if mem[(32 * mem[_418 + ceil32(return_data.size) + 128] - 1) + _418 + ceil32(return_data.size) + 160] <= s:
                        idx = idx + 1
                        s = s
                        continue 
                    idx = idx + 1
                    s = mem[(32 * mem[_418 + ceil32(return_data.size) + 128] - 1) + _418 + ceil32(return_data.size) + 160]
                    continue 
                _513 = mem[64]
                mem[mem[64]] = 3
                mem[64] = mem[64] + 128
                require 0 < mem[_513]
                mem[_513 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                require 1 < mem[_513]
                mem[_513 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                require 2 < mem[_513]
                mem[_513 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                mem[_513 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_513 + 132] = 0
                mem[_513 + 164] = 64
                mem[_513 + 196] = mem[_513]
                t = 0
                while t < 32 * mem[_513]:
                    mem[t + _513 + 228] = mem[t + _513 + 32]
                    t = t + 32
                    continue 
                require ext_code.size(0x845e76a8691423fbc4ecb8dd77556cb61c09ee25)
                staticcall 0x845e76a8691423fbc4ecb8dd77556cb61c09ee25.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args 0, 64, mem[_513 + 196 len (32 * mem[_513]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_513 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _513 + ceil32(return_data.size) + 128
                require return_data.size >= 32
                _2826 = mem[_513 + 128 len 4], 0
                require mem[_513 + 128 len 4], 0 <= 4294967296
                require mem[_513 + 128 len 4], 0 + 32 <= return_data.size
                require mem[_513 + mem[_513 + 128 len 4], 0 + 128] <= 4294967296 and mem[_513 + 128 len 4], 0 + (32 * mem[_513 + mem[_513 + 128 len 4], 0 + 128]) + 32 <= return_data.size
                mem[_513 + ceil32(return_data.size) + 128] = mem[_513 + mem[_513 + 128 len 4], 0 + 128]
                _3171 = mem[_513 + _2826 + 128]
                t = 0
                while t < 32 * _3171:
                    mem[t + _513 + ceil32(return_data.size) + 160] = mem[t + _513 + _2826 + 160]
                    t = t + 32
                    continue 
                mem[64] = (32 * _3171) + _513 + ceil32(return_data.size) + 160
                require mem[_513 + ceil32(return_data.size) + 128] - 1 < mem[_513 + ceil32(return_data.size) + 128]
                if mem[(32 * mem[_513 + ceil32(return_data.size) + 128] - 1) + _513 + ceil32(return_data.size) + 160] <= s:
                    idx = idx + 1
                    s = s
                    continue 
                idx = idx + 1
                s = mem[(32 * mem[_513 + ceil32(return_data.size) + 128] - 1) + _513 + ceil32(return_data.size) + 160]
                continue 
            if 5 == idx:
                if 2 == idx:
                    _342 = mem[64]
                    mem[mem[64]] = 3
                    mem[64] = mem[64] + 128
                    require 0 < mem[_342]
                    mem[_342 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    require 1 < mem[_342]
                    mem[_342 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                    require 2 < mem[_342]
                    mem[_342 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    mem[_342 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_342 + 132] = 0
                    mem[_342 + 164] = 64
                    mem[_342 + 196] = mem[_342]
                    t = 0
                    while t < 32 * mem[_342]:
                        mem[t + _342 + 228] = mem[t + _342 + 32]
                        t = t + 32
                        continue 
                    require ext_code.size(0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52)
                    staticcall 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args 0, 64, mem[_342 + 196 len (32 * mem[_342]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_342 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _342 + ceil32(return_data.size) + 128
                    require return_data.size >= 32
                    _2864 = mem[_342 + 128 len 4], 0
                    require mem[_342 + 128 len 4], 0 <= 4294967296
                    require mem[_342 + 128 len 4], 0 + 32 <= return_data.size
                    require mem[_342 + mem[_342 + 128 len 4], 0 + 128] <= 4294967296 and mem[_342 + 128 len 4], 0 + (32 * mem[_342 + mem[_342 + 128 len 4], 0 + 128]) + 32 <= return_data.size
                    mem[_342 + ceil32(return_data.size) + 128] = mem[_342 + mem[_342 + 128 len 4], 0 + 128]
                    _3190 = mem[_342 + _2864 + 128]
                    t = 0
                    while t < 32 * _3190:
                        mem[t + _342 + ceil32(return_data.size) + 160] = mem[t + _342 + _2864 + 160]
                        t = t + 32
                        continue 
                    mem[64] = (32 * _3190) + _342 + ceil32(return_data.size) + 160
                    require mem[_342 + ceil32(return_data.size) + 128] - 1 < mem[_342 + ceil32(return_data.size) + 128]
                    if mem[(32 * mem[_342 + ceil32(return_data.size) + 128] - 1) + _342 + ceil32(return_data.size) + 160] <= s:
                        idx = idx + 1
                        s = s
                        continue 
                    idx = idx + 1
                    s = mem[(32 * mem[_342 + ceil32(return_data.size) + 128] - 1) + _342 + ceil32(return_data.size) + 160]
                    continue 
                if 3 == idx:
                    _427 = mem[64]
                    mem[mem[64]] = 3
                    mem[64] = mem[64] + 128
                    require 0 < mem[_427]
                    mem[_427 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    require 1 < mem[_427]
                    mem[_427 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                    require 2 < mem[_427]
                    mem[_427 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    mem[_427 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_427 + 132] = 0
                    mem[_427 + 164] = 64
                    mem[_427 + 196] = mem[_427]
                    t = 0
                    while t < 32 * mem[_427]:
                        mem[t + _427 + 228] = mem[t + _427 + 32]
                        t = t + 32
                        continue 
                    require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                    staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c29.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args 0, 64, mem[_427 + 196 len (32 * mem[_427]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_427 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _427 + ceil32(return_data.size) + 128
                    require return_data.size >= 32
                    _2862 = mem[_427 + 128 len 4], 0
                    require mem[_427 + 128 len 4], 0 <= 4294967296
                    require mem[_427 + 128 len 4], 0 + 32 <= return_data.size
                    require mem[_427 + mem[_427 + 128 len 4], 0 + 128] <= 4294967296 and mem[_427 + 128 len 4], 0 + (32 * mem[_427 + mem[_427 + 128 len 4], 0 + 128]) + 32 <= return_data.size
                    mem[_427 + ceil32(return_data.size) + 128] = mem[_427 + mem[_427 + 128 len 4], 0 + 128]
                    _3189 = mem[_427 + _2862 + 128]
                    t = 0
                    while t < 32 * _3189:
                        mem[t + _427 + ceil32(return_data.size) + 160] = mem[t + _427 + _2862 + 160]
                        t = t + 32
                        continue 
                    mem[64] = (32 * _3189) + _427 + ceil32(return_data.size) + 160
                    require mem[_427 + ceil32(return_data.size) + 128] - 1 < mem[_427 + ceil32(return_data.size) + 128]
                    if mem[(32 * mem[_427 + ceil32(return_data.size) + 128] - 1) + _427 + ceil32(return_data.size) + 160] <= s:
                        idx = idx + 1
                        s = s
                        continue 
                    idx = idx + 1
                    s = mem[(32 * mem[_427 + ceil32(return_data.size) + 128] - 1) + _427 + ceil32(return_data.size) + 160]
                    continue 
                if 4 == idx:
                    _526 = mem[64]
                    mem[mem[64]] = 3
                    mem[64] = mem[64] + 128
                    require 0 < mem[_526]
                    mem[_526 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    require 1 < mem[_526]
                    mem[_526 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                    require 2 < mem[_526]
                    mem[_526 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    mem[_526 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_526 + 132] = 0
                    mem[_526 + 164] = 64
                    mem[_526 + 196] = mem[_526]
                    t = 0
                    while t < 32 * mem[_526]:
                        mem[t + _526 + 228] = mem[t + _526 + 32]
                        t = t + 32
                        continue 
                    require ext_code.size(0x7b17021fcb7bc888641dc3bedfed3734fcaf2c87)
                    staticcall 0x7b17021fcb7bc888641dc3bedfed3734fcaf2c87.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args 0, 64, mem[_526 + 196 len (32 * mem[_526]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_526 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _526 + ceil32(return_data.size) + 128
                    require return_data.size >= 32
                    _2860 = mem[_526 + 128 len 4], 0
                    require mem[_526 + 128 len 4], 0 <= 4294967296
                    require mem[_526 + 128 len 4], 0 + 32 <= return_data.size
                    require mem[_526 + mem[_526 + 128 len 4], 0 + 128] <= 4294967296 and mem[_526 + 128 len 4], 0 + (32 * mem[_526 + mem[_526 + 128 len 4], 0 + 128]) + 32 <= return_data.size
                    mem[_526 + ceil32(return_data.size) + 128] = mem[_526 + mem[_526 + 128 len 4], 0 + 128]
                    _3188 = mem[_526 + _2860 + 128]
                    t = 0
                    while t < 32 * _3188:
                        mem[t + _526 + ceil32(return_data.size) + 160] = mem[t + _526 + _2860 + 160]
                        t = t + 32
                        continue 
                    mem[64] = (32 * _3188) + _526 + ceil32(return_data.size) + 160
                    require mem[_526 + ceil32(return_data.size) + 128] - 1 < mem[_526 + ceil32(return_data.size) + 128]
                    if mem[(32 * mem[_526 + ceil32(return_data.size) + 128] - 1) + _526 + ceil32(return_data.size) + 160] <= s:
                        idx = idx + 1
                        s = s
                        continue 
                    idx = idx + 1
                    s = mem[(32 * mem[_526 + ceil32(return_data.size) + 128] - 1) + _526 + ceil32(return_data.size) + 160]
                    continue 
                if idx != 5:
                    _524 = mem[64]
                    mem[mem[64]] = 3
                    mem[64] = mem[64] + 128
                    require 0 < mem[_524]
                    mem[_524 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    require 1 < mem[_524]
                    mem[_524 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                    require 2 < mem[_524]
                    mem[_524 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    mem[_524 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_524 + 132] = 0
                    mem[_524 + 164] = 64
                    mem[_524 + 196] = mem[_524]
                    t = 0
                    while t < 32 * mem[_524]:
                        mem[t + _524 + 228] = mem[t + _524 + 32]
                        t = t + 32
                        continue 
                    require ext_code.size(0)
                    staticcall 0x0.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args 0, 64, mem[_524 + 196 len (32 * mem[_524]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_524 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _524 + ceil32(return_data.size) + 128
                    require return_data.size >= 32
                    _2856 = mem[_524 + 128 len 4], 0
                    require mem[_524 + 128 len 4], 0 <= 4294967296
                    require mem[_524 + 128 len 4], 0 + 32 <= return_data.size
                    require mem[_524 + mem[_524 + 128 len 4], 0 + 128] <= 4294967296 and mem[_524 + 128 len 4], 0 + (32 * mem[_524 + mem[_524 + 128 len 4], 0 + 128]) + 32 <= return_data.size
                    mem[_524 + ceil32(return_data.size) + 128] = mem[_524 + mem[_524 + 128 len 4], 0 + 128]
                    _3186 = mem[_524 + _2856 + 128]
                    t = 0
                    while t < 32 * _3186:
                        mem[t + _524 + ceil32(return_data.size) + 160] = mem[t + _524 + _2856 + 160]
                        t = t + 32
                        continue 
                    mem[64] = (32 * _3186) + _524 + ceil32(return_data.size) + 160
                    require mem[_524 + ceil32(return_data.size) + 128] - 1 < mem[_524 + ceil32(return_data.size) + 128]
                    if mem[(32 * mem[_524 + ceil32(return_data.size) + 128] - 1) + _524 + ceil32(return_data.size) + 160] <= s:
                        idx = idx + 1
                        s = s
                        continue 
                    idx = idx + 1
                    s = mem[(32 * mem[_524 + ceil32(return_data.size) + 128] - 1) + _524 + ceil32(return_data.size) + 160]
                    continue 
                _627 = mem[64]
                mem[mem[64]] = 3
                mem[64] = mem[64] + 128
                require 0 < mem[_627]
                mem[_627 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                require 1 < mem[_627]
                mem[_627 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                require 2 < mem[_627]
                mem[_627 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                mem[_627 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_627 + 132] = 0
                mem[_627 + 164] = 64
                mem[_627 + 196] = mem[_627]
                t = 0
                while t < 32 * mem[_627]:
                    mem[t + _627 + 228] = mem[t + _627 + 32]
                    t = t + 32
                    continue 
                require ext_code.size(0x845e76a8691423fbc4ecb8dd77556cb61c09ee25)
                staticcall 0x845e76a8691423fbc4ecb8dd77556cb61c09ee25.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args 0, 64, mem[_627 + 196 len (32 * mem[_627]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_627 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _627 + ceil32(return_data.size) + 128
                require return_data.size >= 32
                _2858 = mem[_627 + 128 len 4], 0
                require mem[_627 + 128 len 4], 0 <= 4294967296
                require mem[_627 + 128 len 4], 0 + 32 <= return_data.size
                require mem[_627 + mem[_627 + 128 len 4], 0 + 128] <= 4294967296 and mem[_627 + 128 len 4], 0 + (32 * mem[_627 + mem[_627 + 128 len 4], 0 + 128]) + 32 <= return_data.size
                mem[_627 + ceil32(return_data.size) + 128] = mem[_627 + mem[_627 + 128 len 4], 0 + 128]
                _3187 = mem[_627 + _2858 + 128]
                t = 0
                while t < 32 * _3187:
                    mem[t + _627 + ceil32(return_data.size) + 160] = mem[t + _627 + _2858 + 160]
                    t = t + 32
                    continue 
                mem[64] = (32 * _3187) + _627 + ceil32(return_data.size) + 160
                require mem[_627 + ceil32(return_data.size) + 128] - 1 < mem[_627 + ceil32(return_data.size) + 128]
                if mem[(32 * mem[_627 + ceil32(return_data.size) + 128] - 1) + _627 + ceil32(return_data.size) + 160] <= s:
                    idx = idx + 1
                    s = s
                    continue 
                idx = idx + 1
                s = mem[(32 * mem[_627 + ceil32(return_data.size) + 128] - 1) + _627 + ceil32(return_data.size) + 160]
                continue 
            if idx != 6:
                if 7 == idx:
                    _725 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    require 0 < mem[_725]
                    mem[_725 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    require 1 < mem[_725]
                    mem[_725 + 64] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    mem[_725 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_725 + 100] = 0
                    mem[_725 + 132] = 64
                    mem[_725 + 164] = mem[_725]
                    t = 0
                    while t < 32 * mem[_725]:
                        mem[t + _725 + 196] = mem[t + _725 + 32]
                        t = t + 32
                        continue 
                    require ext_code.size(0x845e76a8691423fbc4ecb8dd77556cb61c09ee25)
                    staticcall 0x845e76a8691423fbc4ecb8dd77556cb61c09ee25.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args 0, 64, mem[_725 + 164 len (32 * mem[_725]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_725 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _725 + ceil32(return_data.size) + 96
                    require return_data.size >= 32
                    _2834 = mem[_725 + 96 len 4], 0
                    require mem[_725 + 96 len 4], 0 <= 4294967296
                    require mem[_725 + 96 len 4], 0 + 32 <= return_data.size
                    require mem[_725 + mem[_725 + 96 len 4], 0 + 96] <= 4294967296 and mem[_725 + 96 len 4], 0 + (32 * mem[_725 + mem[_725 + 96 len 4], 0 + 96]) + 32 <= return_data.size
                    mem[_725 + ceil32(return_data.size) + 96] = mem[_725 + mem[_725 + 96 len 4], 0 + 96]
                    _3175 = mem[_725 + _2834 + 96]
                    t = 0
                    while t < 32 * _3175:
                        mem[t + _725 + ceil32(return_data.size) + 128] = mem[t + _725 + _2834 + 128]
                        t = t + 32
                        continue 
                    mem[64] = (32 * _3175) + _725 + ceil32(return_data.size) + 128
                    require mem[_725 + ceil32(return_data.size) + 96] - 1 < mem[_725 + ceil32(return_data.size) + 96]
                    if mem[(32 * mem[_725 + ceil32(return_data.size) + 96] - 1) + _725 + ceil32(return_data.size) + 128] <= s:
                        idx = idx + 1
                        s = s
                        continue 
                    idx = idx + 1
                    s = mem[(32 * mem[_725 + ceil32(return_data.size) + 96] - 1) + _725 + ceil32(return_data.size) + 128]
                    continue 
                if 8 == idx:
                    if 7 == idx:
                        _829 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        require 0 < mem[_829]
                        mem[_829 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                        require 1 < mem[_829]
                        mem[_829 + 64] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                        mem[_829 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[_829 + 100] = 0
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
                               args 0, 64, mem[_829 + 164 len (32 * mem[_829]) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_829 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = _829 + ceil32(return_data.size) + 96
                        require return_data.size >= 32
                        _2842 = mem[_829 + 96 len 4], 0
                        require mem[_829 + 96 len 4], 0 <= 4294967296
                        require mem[_829 + 96 len 4], 0 + 32 <= return_data.size
                        require mem[_829 + mem[_829 + 96 len 4], 0 + 96] <= 4294967296 and mem[_829 + 96 len 4], 0 + (32 * mem[_829 + mem[_829 + 96 len 4], 0 + 96]) + 32 <= return_data.size
                        mem[_829 + ceil32(return_data.size) + 96] = mem[_829 + mem[_829 + 96 len 4], 0 + 96]
                        _3179 = mem[_829 + _2842 + 96]
                        t = 0
                        while t < 32 * _3179:
                            mem[t + _829 + ceil32(return_data.size) + 128] = mem[t + _829 + _2842 + 128]
                            t = t + 32
                            continue 
                        mem[64] = (32 * _3179) + _829 + ceil32(return_data.size) + 128
                        require mem[_829 + ceil32(return_data.size) + 96] - 1 < mem[_829 + ceil32(return_data.size) + 96]
                        if mem[(32 * mem[_829 + ceil32(return_data.size) + 96] - 1) + _829 + ceil32(return_data.size) + 128] <= s:
                            idx = idx + 1
                            s = s
                            continue 
                        idx = idx + 1
                        s = mem[(32 * mem[_829 + ceil32(return_data.size) + 96] - 1) + _829 + ceil32(return_data.size) + 128]
                        continue 
                    if 8 == idx:
                        _943 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        require 0 < mem[_943]
                        mem[_943 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                        require 1 < mem[_943]
                        mem[_943 + 64] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                        mem[_943 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[_943 + 100] = 0
                        mem[_943 + 132] = 64
                        mem[_943 + 164] = mem[_943]
                        t = 0
                        while t < 32 * mem[_943]:
                            mem[t + _943 + 196] = mem[t + _943 + 32]
                            t = t + 32
                            continue 
                        require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                        staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c29.getAmountsOut(uint256 arg1, address[] arg2) with:
                                gas gas_remaining wei
                               args 0, 64, mem[_943 + 164 len (32 * mem[_943]) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_943 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = _943 + ceil32(return_data.size) + 96
                        require return_data.size >= 32
                        _2840 = mem[_943 + 96 len 4], 0
                        require mem[_943 + 96 len 4], 0 <= 4294967296
                        require mem[_943 + 96 len 4], 0 + 32 <= return_data.size
                        require mem[_943 + mem[_943 + 96 len 4], 0 + 96] <= 4294967296 and mem[_943 + 96 len 4], 0 + (32 * mem[_943 + mem[_943 + 96 len 4], 0 + 96]) + 32 <= return_data.size
                        mem[_943 + ceil32(return_data.size) + 96] = mem[_943 + mem[_943 + 96 len 4], 0 + 96]
                        _3178 = mem[_943 + _2840 + 96]
                        t = 0
                        while t < 32 * _3178:
                            mem[t + _943 + ceil32(return_data.size) + 128] = mem[t + _943 + _2840 + 128]
                            t = t + 32
                            continue 
                        mem[64] = (32 * _3178) + _943 + ceil32(return_data.size) + 128
                        require mem[_943 + ceil32(return_data.size) + 96] - 1 < mem[_943 + ceil32(return_data.size) + 96]
                        if mem[(32 * mem[_943 + ceil32(return_data.size) + 96] - 1) + _943 + ceil32(return_data.size) + 128] <= s:
                            idx = idx + 1
                            s = s
                            continue 
                        idx = idx + 1
                        s = mem[(32 * mem[_943 + ceil32(return_data.size) + 96] - 1) + _943 + ceil32(return_data.size) + 128]
                        continue 
                    if idx != 9:
                        _941 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        require 0 < mem[_941]
                        mem[_941 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                        require 1 < mem[_941]
                        mem[_941 + 64] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                        mem[_941 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[_941 + 100] = 0
                        mem[_941 + 132] = 64
                        mem[_941 + 164] = mem[_941]
                        t = 0
                        while t < 32 * mem[_941]:
                            mem[t + _941 + 196] = mem[t + _941 + 32]
                            t = t + 32
                            continue 
                        require ext_code.size(0)
                        staticcall 0x0.getAmountsOut(uint256 arg1, address[] arg2) with:
                                gas gas_remaining wei
                               args 0, 64, mem[_941 + 164 len (32 * mem[_941]) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_941 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = _941 + ceil32(return_data.size) + 96
                        require return_data.size >= 32
                        _2836 = mem[_941 + 96 len 4], 0
                        require mem[_941 + 96 len 4], 0 <= 4294967296
                        require mem[_941 + 96 len 4], 0 + 32 <= return_data.size
                        require mem[_941 + mem[_941 + 96 len 4], 0 + 96] <= 4294967296 and mem[_941 + 96 len 4], 0 + (32 * mem[_941 + mem[_941 + 96 len 4], 0 + 96]) + 32 <= return_data.size
                        mem[_941 + ceil32(return_data.size) + 96] = mem[_941 + mem[_941 + 96 len 4], 0 + 96]
                        _3176 = mem[_941 + _2836 + 96]
                        t = 0
                        while t < 32 * _3176:
                            mem[t + _941 + ceil32(return_data.size) + 128] = mem[t + _941 + _2836 + 128]
                            t = t + 32
                            continue 
                        mem[64] = (32 * _3176) + _941 + ceil32(return_data.size) + 128
                        require mem[_941 + ceil32(return_data.size) + 96] - 1 < mem[_941 + ceil32(return_data.size) + 96]
                        if mem[(32 * mem[_941 + ceil32(return_data.size) + 96] - 1) + _941 + ceil32(return_data.size) + 128] <= s:
                            idx = idx + 1
                            s = s
                            continue 
                        idx = idx + 1
                        s = mem[(32 * mem[_941 + ceil32(return_data.size) + 96] - 1) + _941 + ceil32(return_data.size) + 128]
                        continue 
                    _1059 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    require 0 < mem[_1059]
                    mem[_1059 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    require 1 < mem[_1059]
                    mem[_1059 + 64] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    mem[_1059 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_1059 + 100] = 0
                    mem[_1059 + 132] = 64
                    mem[_1059 + 164] = mem[_1059]
                    t = 0
                    while t < 32 * mem[_1059]:
                        mem[t + _1059 + 196] = mem[t + _1059 + 32]
                        t = t + 32
                        continue 
                    require ext_code.size(0x6b3d631b87fe27af29efec61d2ab8ce4d621ccbf)
                    staticcall 0x6b3d631b87fe27af29efec61d2ab8ce4d621ccbf.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args 0, 64, mem[_1059 + 164 len (32 * mem[_1059]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_1059 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _1059 + ceil32(return_data.size) + 96
                    require return_data.size >= 32
                    _2838 = mem[_1059 + 96 len 4], 0
                    require mem[_1059 + 96 len 4], 0 <= 4294967296
                    require mem[_1059 + 96 len 4], 0 + 32 <= return_data.size
                    require mem[_1059 + mem[_1059 + 96 len 4], 0 + 96] <= 4294967296 and mem[_1059 + 96 len 4], 0 + (32 * mem[_1059 + mem[_1059 + 96 len 4], 0 + 96]) + 32 <= return_data.size
                    mem[_1059 + ceil32(return_data.size) + 96] = mem[_1059 + mem[_1059 + 96 len 4], 0 + 96]
                    _3177 = mem[_1059 + _2838 + 96]
                    t = 0
                    while t < 32 * _3177:
                        mem[t + _1059 + ceil32(return_data.size) + 128] = mem[t + _1059 + _2838 + 128]
                        t = t + 32
                        continue 
                    mem[64] = (32 * _3177) + _1059 + ceil32(return_data.size) + 128
                    require mem[_1059 + ceil32(return_data.size) + 96] - 1 < mem[_1059 + ceil32(return_data.size) + 96]
                    if mem[(32 * mem[_1059 + ceil32(return_data.size) + 96] - 1) + _1059 + ceil32(return_data.size) + 128] <= s:
                        idx = idx + 1
                        s = s
                        continue 
                    idx = idx + 1
                    s = mem[(32 * mem[_1059 + ceil32(return_data.size) + 96] - 1) + _1059 + ceil32(return_data.size) + 128]
                    continue 
                if idx != 9:
                    if idx != 10:
                        if 0 <= s:
                            idx = idx + 1
                            s = s
                            continue 
                        idx = idx + 1
                        s = 0
                        continue 
                    mem[mem[64] + 4] = 0
                    mem[mem[64] + 36] = 1
                    mem[mem[64] + 68] = 0
                    require ext_code.size(0x952bda8a83c3d5f398a686bb4e8c6dd90072d523)
                    staticcall 0x952bda8a83c3d5f398a686bb4e8c6dd90072d523.calculateSwap(uint8 arg1, uint8 arg2, uint256 arg3) with:
                            gas gas_remaining wei
                           args 0, 1, 0
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
                if 7 == idx:
                    _948 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    require 0 < mem[_948]
                    mem[_948 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    require 1 < mem[_948]
                    mem[_948 + 64] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    mem[_948 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_948 + 100] = 0
                    mem[_948 + 132] = 64
                    mem[_948 + 164] = mem[_948]
                    t = 0
                    while t < 32 * mem[_948]:
                        mem[t + _948 + 196] = mem[t + _948 + 32]
                        t = t + 32
                        continue 
                    require ext_code.size(0x845e76a8691423fbc4ecb8dd77556cb61c09ee25)
                    staticcall 0x845e76a8691423fbc4ecb8dd77556cb61c09ee25.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args 0, 64, mem[_948 + 164 len (32 * mem[_948]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_948 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _948 + ceil32(return_data.size) + 96
                    require return_data.size >= 32
                    _2850 = mem[_948 + 96 len 4], 0
                    require mem[_948 + 96 len 4], 0 <= 4294967296
                    require mem[_948 + 96 len 4], 0 + 32 <= return_data.size
                    require mem[_948 + mem[_948 + 96 len 4], 0 + 96] <= 4294967296 and mem[_948 + 96 len 4], 0 + (32 * mem[_948 + mem[_948 + 96 len 4], 0 + 96]) + 32 <= return_data.size
                    mem[_948 + ceil32(return_data.size) + 96] = mem[_948 + mem[_948 + 96 len 4], 0 + 96]
                    _3183 = mem[_948 + _2850 + 96]
                    t = 0
                    while t < 32 * _3183:
                        mem[t + _948 + ceil32(return_data.size) + 128] = mem[t + _948 + _2850 + 128]
                        t = t + 32
                        continue 
                    mem[64] = (32 * _3183) + _948 + ceil32(return_data.size) + 128
                    require mem[_948 + ceil32(return_data.size) + 96] - 1 < mem[_948 + ceil32(return_data.size) + 96]
                    if mem[(32 * mem[_948 + ceil32(return_data.size) + 96] - 1) + _948 + ceil32(return_data.size) + 128] <= s:
                        idx = idx + 1
                        s = s
                        continue 
                    idx = idx + 1
                    s = mem[(32 * mem[_948 + ceil32(return_data.size) + 96] - 1) + _948 + ceil32(return_data.size) + 128]
                    continue 
                if 8 == idx:
                    _1069 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    require 0 < mem[_1069]
                    mem[_1069 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    require 1 < mem[_1069]
                    mem[_1069 + 64] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    mem[_1069 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_1069 + 100] = 0
                    mem[_1069 + 132] = 64
                    mem[_1069 + 164] = mem[_1069]
                    t = 0
                    while t < 32 * mem[_1069]:
                        mem[t + _1069 + 196] = mem[t + _1069 + 32]
                        t = t + 32
                        continue 
                    require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                    staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c29.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args 0, 64, mem[_1069 + 164 len (32 * mem[_1069]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_1069 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _1069 + ceil32(return_data.size) + 96
                    require return_data.size >= 32
                    _2848 = mem[_1069 + 96 len 4], 0
                    require mem[_1069 + 96 len 4], 0 <= 4294967296
                    require mem[_1069 + 96 len 4], 0 + 32 <= return_data.size
                    require mem[_1069 + mem[_1069 + 96 len 4], 0 + 96] <= 4294967296 and mem[_1069 + 96 len 4], 0 + (32 * mem[_1069 + mem[_1069 + 96 len 4], 0 + 96]) + 32 <= return_data.size
                    mem[_1069 + ceil32(return_data.size) + 96] = mem[_1069 + mem[_1069 + 96 len 4], 0 + 96]
                    _3182 = mem[_1069 + _2848 + 96]
                    t = 0
                    while t < 32 * _3182:
                        mem[t + _1069 + ceil32(return_data.size) + 128] = mem[t + _1069 + _2848 + 128]
                        t = t + 32
                        continue 
                    mem[64] = (32 * _3182) + _1069 + ceil32(return_data.size) + 128
                    require mem[_1069 + ceil32(return_data.size) + 96] - 1 < mem[_1069 + ceil32(return_data.size) + 96]
                    if mem[(32 * mem[_1069 + ceil32(return_data.size) + 96] - 1) + _1069 + ceil32(return_data.size) + 128] <= s:
                        idx = idx + 1
                        s = s
                        continue 
                    idx = idx + 1
                    s = mem[(32 * mem[_1069 + ceil32(return_data.size) + 96] - 1) + _1069 + ceil32(return_data.size) + 128]
                    continue 
                if idx != 9:
                    _1067 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    require 0 < mem[_1067]
                    mem[_1067 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    require 1 < mem[_1067]
                    mem[_1067 + 64] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    mem[_1067 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_1067 + 100] = 0
                    mem[_1067 + 132] = 64
                    mem[_1067 + 164] = mem[_1067]
                    t = 0
                    while t < 32 * mem[_1067]:
                        mem[t + _1067 + 196] = mem[t + _1067 + 32]
                        t = t + 32
                        continue 
                    require ext_code.size(0)
                    staticcall 0x0.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args 0, 64, mem[_1067 + 164 len (32 * mem[_1067]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_1067 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _1067 + ceil32(return_data.size) + 96
                    require return_data.size >= 32
                    _2844 = mem[_1067 + 96 len 4], 0
                    require mem[_1067 + 96 len 4], 0 <= 4294967296
                    require mem[_1067 + 96 len 4], 0 + 32 <= return_data.size
                    require mem[_1067 + mem[_1067 + 96 len 4], 0 + 96] <= 4294967296 and mem[_1067 + 96 len 4], 0 + (32 * mem[_1067 + mem[_1067 + 96 len 4], 0 + 96]) + 32 <= return_data.size
                    mem[_1067 + ceil32(return_data.size) + 96] = mem[_1067 + mem[_1067 + 96 len 4], 0 + 96]
                    _3180 = mem[_1067 + _2844 + 96]
                    t = 0
                    while t < 32 * _3180:
                        mem[t + _1067 + ceil32(return_data.size) + 128] = mem[t + _1067 + _2844 + 128]
                        t = t + 32
                        continue 
                    mem[64] = (32 * _3180) + _1067 + ceil32(return_data.size) + 128
                    require mem[_1067 + ceil32(return_data.size) + 96] - 1 < mem[_1067 + ceil32(return_data.size) + 96]
                    if mem[(32 * mem[_1067 + ceil32(return_data.size) + 96] - 1) + _1067 + ceil32(return_data.size) + 128] <= s:
                        idx = idx + 1
                        s = s
                        continue 
                    idx = idx + 1
                    s = mem[(32 * mem[_1067 + ceil32(return_data.size) + 96] - 1) + _1067 + ceil32(return_data.size) + 128]
                    continue 
                _1204 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                require 0 < mem[_1204]
                mem[_1204 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                require 1 < mem[_1204]
                mem[_1204 + 64] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                mem[_1204 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_1204 + 100] = 0
                mem[_1204 + 132] = 64
                mem[_1204 + 164] = mem[_1204]
                t = 0
                while t < 32 * mem[_1204]:
                    mem[t + _1204 + 196] = mem[t + _1204 + 32]
                    t = t + 32
                    continue 
                require ext_code.size(0x6b3d631b87fe27af29efec61d2ab8ce4d621ccbf)
                staticcall 0x6b3d631b87fe27af29efec61d2ab8ce4d621ccbf.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args 0, 64, mem[_1204 + 164 len (32 * mem[_1204]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_1204 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _1204 + ceil32(return_data.size) + 96
                require return_data.size >= 32
                _2846 = mem[_1204 + 96 len 4], 0
                require mem[_1204 + 96 len 4], 0 <= 4294967296
                require mem[_1204 + 96 len 4], 0 + 32 <= return_data.size
                require mem[_1204 + mem[_1204 + 96 len 4], 0 + 96] <= 4294967296 and mem[_1204 + 96 len 4], 0 + (32 * mem[_1204 + mem[_1204 + 96 len 4], 0 + 96]) + 32 <= return_data.size
                mem[_1204 + ceil32(return_data.size) + 96] = mem[_1204 + mem[_1204 + 96 len 4], 0 + 96]
                _3181 = mem[_1204 + _2846 + 96]
                t = 0
                while t < 32 * _3181:
                    mem[t + _1204 + ceil32(return_data.size) + 128] = mem[t + _1204 + _2846 + 128]
                    t = t + 32
                    continue 
                mem[64] = (32 * _3181) + _1204 + ceil32(return_data.size) + 128
                require mem[_1204 + ceil32(return_data.size) + 96] - 1 < mem[_1204 + ceil32(return_data.size) + 96]
                if mem[(32 * mem[_1204 + ceil32(return_data.size) + 96] - 1) + _1204 + ceil32(return_data.size) + 128] <= s:
                    idx = idx + 1
                    s = s
                    continue 
                idx = idx + 1
                s = mem[(32 * mem[_1204 + ceil32(return_data.size) + 96] - 1) + _1204 + ceil32(return_data.size) + 128]
                continue 
            _340 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            require 0 < mem[_340]
            mem[_340 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
            require 1 < mem[_340]
            mem[_340 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
            mem[_340 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[_340 + 100] = 0
            mem[_340 + 132] = 64
            mem[_340 + 164] = mem[_340]
            t = 0
            while t < 32 * mem[_340]:
                mem[t + _340 + 196] = mem[t + _340 + 32]
                t = t + 32
                continue 
            require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
            staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c29.getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args 0, 64, mem[_340 + 164 len (32 * mem[_340]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[_340 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = _340 + ceil32(return_data.size) + 96
            require return_data.size >= 32
            _2852 = mem[_340 + 96 len 4], 0
            require mem[_340 + 96 len 4], 0 <= 4294967296
            require mem[_340 + 96 len 4], 0 + 32 <= return_data.size
            require mem[_340 + mem[_340 + 96 len 4], 0 + 96] <= 4294967296 and mem[_340 + 96 len 4], 0 + (32 * mem[_340 + mem[_340 + 96 len 4], 0 + 96]) + 32 <= return_data.size
            mem[_340 + ceil32(return_data.size) + 96] = mem[_340 + mem[_340 + 96 len 4], 0 + 96]
            _3184 = mem[_340 + _2852 + 96]
            t = 0
            while t < 32 * _3184:
                mem[t + _340 + ceil32(return_data.size) + 128] = mem[t + _340 + _2852 + 128]
                t = t + 32
                continue 
            mem[64] = (32 * _3184) + _340 + ceil32(return_data.size) + 128
            require mem[_340 + ceil32(return_data.size) + 96] - 1 < mem[_340 + ceil32(return_data.size) + 96]
            _8822 = mem[(32 * mem[_340 + ceil32(return_data.size) + 96] - 1) + _340 + ceil32(return_data.size) + 128]
            mem[(32 * _3184) + _340 + ceil32(return_data.size) + 128] = 2
            mem[(32 * _3184) + _340 + ceil32(return_data.size) + 160] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
            mem[(32 * _3184) + _340 + ceil32(return_data.size) + 192] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
            mem[(32 * _3184) + _340 + ceil32(return_data.size) + 224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[(32 * _3184) + _340 + ceil32(return_data.size) + 228] = _8822
            mem[(32 * _3184) + _340 + ceil32(return_data.size) + 260] = 64
            mem[(32 * _3184) + _340 + ceil32(return_data.size) + 292] = 2
            t = 0
            while t < 64:
                mem[t + (32 * _3184) + _340 + ceil32(return_data.size) + 324] = mem[t + (32 * _3184) + _340 + ceil32(return_data.size) + 160]
                t = t + 32
                continue 
            require ext_code.size(0x1b02da8cb0d097eb8d57a175b88c7d8b47997506)
            staticcall 0x1b02da8cb0d097eb8d57a175b88c7d8b47997506.getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args _8822, Array(len=2, data=mem[(32 * _3184) + _340 + ceil32(return_data.size) + 324 len 64])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _3184) + _340 + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * _3184) + _340 + (2 * ceil32(return_data.size)) + 224
            require return_data.size >= 32
            _12120 = mem[(32 * _3184) + _340 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _8822) >> 32
            require mem[(32 * _3184) + _340 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _8822) >> 32 <= 4294967296
            require mem[(32 * _3184) + _340 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _8822) >> 32 + 32 <= return_data.size
            require mem[(32 * _3184) + _340 + ceil32(return_data.size) + mem[(32 * _3184) + _340 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _8822) >> 32 + 224] <= 4294967296 and mem[(32 * _3184) + _340 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _8822) >> 32 + (32 * mem[(32 * _3184) + _340 + ceil32(return_data.size) + mem[(32 * _3184) + _340 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _8822) >> 32 + 224]) + 32 <= return_data.size
            mem[(32 * _3184) + _340 + (2 * ceil32(return_data.size)) + 224] = mem[(32 * _3184) + _340 + ceil32(return_data.size) + mem[(32 * _3184) + _340 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _8822) >> 32 + 224]
            _12208 = mem[(32 * _3184) + _340 + ceil32(return_data.size) + _12120 + 224]
            t = 0
            while t < 32 * _12208:
                mem[t + (32 * _3184) + _340 + (2 * ceil32(return_data.size)) + 256] = mem[t + (32 * _3184) + _340 + ceil32(return_data.size) + _12120 + 256]
                t = t + 32
                continue 
            mem[64] = (32 * _12208) + (32 * _3184) + _340 + (2 * ceil32(return_data.size)) + 256
            require mem[(32 * _3184) + _340 + (2 * ceil32(return_data.size)) + 224] - 1 < mem[(32 * _3184) + _340 + (2 * ceil32(return_data.size)) + 224]
            if mem[(32 * mem[(32 * _3184) + _340 + (2 * ceil32(return_data.size)) + 224] - 1) + (32 * _3184) + _340 + (2 * ceil32(return_data.size)) + 256] <= s:
                idx = idx + 1
                s = s
                continue 
            idx = idx + 1
            s = mem[(32 * mem[(32 * _3184) + _340 + (2 * ceil32(return_data.size)) + 224] - 1) + (32 * _3184) + _340 + (2 * ceil32(return_data.size)) + 256]
            continue 
        idx = 0
        t = 0
        while idx < 6:
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
                _3642 = mem[64]
                mem[mem[64]] = 3
                mem[64] = mem[64] + 128
                require 0 < mem[_3642]
                mem[_3642 + 32] = 0x49d68029688eabf473097a2fc38ef61633a3c
                require 1 < mem[_3642]
                mem[_3642 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                require 2 < mem[_3642]
                mem[_3642 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                mem[_3642 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_3642 + 132] = s
                mem[_3642 + 164] = 64
                mem[_3642 + 196] = mem[_3642]
                u = 0
                while u < 32 * mem[_3642]:
                    mem[u + _3642 + 228] = mem[u + _3642 + 32]
                    u = u + 32
                    continue 
                require ext_code.size(0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52)
                staticcall 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args s, 64, mem[_3642 + 196 len (32 * mem[_3642]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_3642 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _3642 + ceil32(return_data.size) + 128
                require return_data.size >= 32
                _9296 = mem[_3642 + 128 len 4], Mask(224, 32, s) >> 32
                require mem[_3642 + 128 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                require mem[_3642 + 128 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                require mem[_3642 + mem[_3642 + 128 len 4], Mask(224, 32, s) >> 32 + 128] <= 4294967296 and mem[_3642 + 128 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_3642 + mem[_3642 + 128 len 4], Mask(224, 32, s) >> 32 + 128]) + 32 <= return_data.size
                mem[_3642 + ceil32(return_data.size) + 128] = mem[_3642 + mem[_3642 + 128 len 4], Mask(224, 32, s) >> 32 + 128]
                _9864 = mem[_3642 + _9296 + 128]
                s = 0
                while s < 32 * _9864:
                    mem[s + _3642 + ceil32(return_data.size) + 160] = mem[s + _3642 + _9296 + 160]
                    s = s + 32
                    continue 
                mem[64] = (32 * _9864) + _3642 + ceil32(return_data.size) + 160
                require mem[_3642 + ceil32(return_data.size) + 128] - 1 < mem[_3642 + ceil32(return_data.size) + 128]
                if mem[(32 * mem[_3642 + ceil32(return_data.size) + 128] - 1) + _3642 + ceil32(return_data.size) + 160] <= t:
                    idx = idx + 1
                    t = t
                    continue 
                idx = idx + 1
                t = mem[(32 * mem[_3642 + ceil32(return_data.size) + 128] - 1) + _3642 + ceil32(return_data.size) + 160]
                continue 
            if 3 == idx:
                if 2 == idx:
                    _3721 = mem[64]
                    mem[mem[64]] = 3
                    mem[64] = mem[64] + 128
                    require 0 < mem[_3721]
                    mem[_3721 + 32] = 0x49d68029688eabf473097a2fc38ef61633a3c
                    require 1 < mem[_3721]
                    mem[_3721 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                    require 2 < mem[_3721]
                    mem[_3721 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    mem[_3721 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_3721 + 132] = s
                    mem[_3721 + 164] = 64
                    mem[_3721 + 196] = mem[_3721]
                    u = 0
                    while u < 32 * mem[_3721]:
                        mem[u + _3721 + 228] = mem[u + _3721 + 32]
                        u = u + 32
                        continue 
                    require ext_code.size(0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52)
                    staticcall 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args s, 64, mem[_3721 + 196 len (32 * mem[_3721]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_3721 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _3721 + ceil32(return_data.size) + 128
                    require return_data.size >= 32
                    _9306 = mem[_3721 + 128 len 4], Mask(224, 32, s) >> 32
                    require mem[_3721 + 128 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                    require mem[_3721 + 128 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                    require mem[_3721 + mem[_3721 + 128 len 4], Mask(224, 32, s) >> 32 + 128] <= 4294967296 and mem[_3721 + 128 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_3721 + mem[_3721 + 128 len 4], Mask(224, 32, s) >> 32 + 128]) + 32 <= return_data.size
                    mem[_3721 + ceil32(return_data.size) + 128] = mem[_3721 + mem[_3721 + 128 len 4], Mask(224, 32, s) >> 32 + 128]
                    _9869 = mem[_3721 + _9306 + 128]
                    s = 0
                    while s < 32 * _9869:
                        mem[s + _3721 + ceil32(return_data.size) + 160] = mem[s + _3721 + _9306 + 160]
                        s = s + 32
                        continue 
                    mem[64] = (32 * _9869) + _3721 + ceil32(return_data.size) + 160
                    require mem[_3721 + ceil32(return_data.size) + 128] - 1 < mem[_3721 + ceil32(return_data.size) + 128]
                    if mem[(32 * mem[_3721 + ceil32(return_data.size) + 128] - 1) + _3721 + ceil32(return_data.size) + 160] <= t:
                        idx = idx + 1
                        t = t
                        continue 
                    idx = idx + 1
                    t = mem[(32 * mem[_3721 + ceil32(return_data.size) + 128] - 1) + _3721 + ceil32(return_data.size) + 160]
                    continue 
                if 3 == idx:
                    _3769 = mem[64]
                    mem[mem[64]] = 3
                    mem[64] = mem[64] + 128
                    require 0 < mem[_3769]
                    mem[_3769 + 32] = 0x49d68029688eabf473097a2fc38ef61633a3c
                    require 1 < mem[_3769]
                    mem[_3769 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                    require 2 < mem[_3769]
                    mem[_3769 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    mem[_3769 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_3769 + 132] = s
                    mem[_3769 + 164] = 64
                    mem[_3769 + 196] = mem[_3769]
                    u = 0
                    while u < 32 * mem[_3769]:
                        mem[u + _3769 + 228] = mem[u + _3769 + 32]
                        u = u + 32
                        continue 
                    require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                    staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c29.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args s, 64, mem[_3769 + 196 len (32 * mem[_3769]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_3769 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _3769 + ceil32(return_data.size) + 128
                    require return_data.size >= 32
                    _9304 = mem[_3769 + 128 len 4], Mask(224, 32, s) >> 32
                    require mem[_3769 + 128 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                    require mem[_3769 + 128 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                    require mem[_3769 + mem[_3769 + 128 len 4], Mask(224, 32, s) >> 32 + 128] <= 4294967296 and mem[_3769 + 128 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_3769 + mem[_3769 + 128 len 4], Mask(224, 32, s) >> 32 + 128]) + 32 <= return_data.size
                    mem[_3769 + ceil32(return_data.size) + 128] = mem[_3769 + mem[_3769 + 128 len 4], Mask(224, 32, s) >> 32 + 128]
                    _9868 = mem[_3769 + _9304 + 128]
                    s = 0
                    while s < 32 * _9868:
                        mem[s + _3769 + ceil32(return_data.size) + 160] = mem[s + _3769 + _9304 + 160]
                        s = s + 32
                        continue 
                    mem[64] = (32 * _9868) + _3769 + ceil32(return_data.size) + 160
                    require mem[_3769 + ceil32(return_data.size) + 128] - 1 < mem[_3769 + ceil32(return_data.size) + 128]
                    if mem[(32 * mem[_3769 + ceil32(return_data.size) + 128] - 1) + _3769 + ceil32(return_data.size) + 160] <= t:
                        idx = idx + 1
                        t = t
                        continue 
                    idx = idx + 1
                    t = mem[(32 * mem[_3769 + ceil32(return_data.size) + 128] - 1) + _3769 + ceil32(return_data.size) + 160]
                    continue 
                if 4 == idx:
                    _3873 = mem[64]
                    mem[mem[64]] = 3
                    mem[64] = mem[64] + 128
                    require 0 < mem[_3873]
                    mem[_3873 + 32] = 0x49d68029688eabf473097a2fc38ef61633a3c
                    require 1 < mem[_3873]
                    mem[_3873 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                    require 2 < mem[_3873]
                    mem[_3873 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    mem[_3873 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_3873 + 132] = s
                    mem[_3873 + 164] = 64
                    mem[_3873 + 196] = mem[_3873]
                    u = 0
                    while u < 32 * mem[_3873]:
                        mem[u + _3873 + 228] = mem[u + _3873 + 32]
                        u = u + 32
                        continue 
                    require ext_code.size(0x7b17021fcb7bc888641dc3bedfed3734fcaf2c87)
                    staticcall 0x7b17021fcb7bc888641dc3bedfed3734fcaf2c87.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args s, 64, mem[_3873 + 196 len (32 * mem[_3873]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_3873 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _3873 + ceil32(return_data.size) + 128
                    require return_data.size >= 32
                    _9302 = mem[_3873 + 128 len 4], Mask(224, 32, s) >> 32
                    require mem[_3873 + 128 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                    require mem[_3873 + 128 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                    require mem[_3873 + mem[_3873 + 128 len 4], Mask(224, 32, s) >> 32 + 128] <= 4294967296 and mem[_3873 + 128 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_3873 + mem[_3873 + 128 len 4], Mask(224, 32, s) >> 32 + 128]) + 32 <= return_data.size
                    mem[_3873 + ceil32(return_data.size) + 128] = mem[_3873 + mem[_3873 + 128 len 4], Mask(224, 32, s) >> 32 + 128]
                    _9867 = mem[_3873 + _9302 + 128]
                    s = 0
                    while s < 32 * _9867:
                        mem[s + _3873 + ceil32(return_data.size) + 160] = mem[s + _3873 + _9302 + 160]
                        s = s + 32
                        continue 
                    mem[64] = (32 * _9867) + _3873 + ceil32(return_data.size) + 160
                    require mem[_3873 + ceil32(return_data.size) + 128] - 1 < mem[_3873 + ceil32(return_data.size) + 128]
                    if mem[(32 * mem[_3873 + ceil32(return_data.size) + 128] - 1) + _3873 + ceil32(return_data.size) + 160] <= t:
                        idx = idx + 1
                        t = t
                        continue 
                    idx = idx + 1
                    t = mem[(32 * mem[_3873 + ceil32(return_data.size) + 128] - 1) + _3873 + ceil32(return_data.size) + 160]
                    continue 
                if idx != 5:
                    _3871 = mem[64]
                    mem[mem[64]] = 3
                    mem[64] = mem[64] + 128
                    require 0 < mem[_3871]
                    mem[_3871 + 32] = 0x49d68029688eabf473097a2fc38ef61633a3c
                    require 1 < mem[_3871]
                    mem[_3871 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                    require 2 < mem[_3871]
                    mem[_3871 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    mem[_3871 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_3871 + 132] = s
                    mem[_3871 + 164] = 64
                    mem[_3871 + 196] = mem[_3871]
                    u = 0
                    while u < 32 * mem[_3871]:
                        mem[u + _3871 + 228] = mem[u + _3871 + 32]
                        u = u + 32
                        continue 
                    require ext_code.size(0)
                    staticcall 0x0.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args s, 64, mem[_3871 + 196 len (32 * mem[_3871]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_3871 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _3871 + ceil32(return_data.size) + 128
                    require return_data.size >= 32
                    _9298 = mem[_3871 + 128 len 4], Mask(224, 32, s) >> 32
                    require mem[_3871 + 128 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                    require mem[_3871 + 128 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                    require mem[_3871 + mem[_3871 + 128 len 4], Mask(224, 32, s) >> 32 + 128] <= 4294967296 and mem[_3871 + 128 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_3871 + mem[_3871 + 128 len 4], Mask(224, 32, s) >> 32 + 128]) + 32 <= return_data.size
                    mem[_3871 + ceil32(return_data.size) + 128] = mem[_3871 + mem[_3871 + 128 len 4], Mask(224, 32, s) >> 32 + 128]
                    _9865 = mem[_3871 + _9298 + 128]
                    s = 0
                    while s < 32 * _9865:
                        mem[s + _3871 + ceil32(return_data.size) + 160] = mem[s + _3871 + _9298 + 160]
                        s = s + 32
                        continue 
                    mem[64] = (32 * _9865) + _3871 + ceil32(return_data.size) + 160
                    require mem[_3871 + ceil32(return_data.size) + 128] - 1 < mem[_3871 + ceil32(return_data.size) + 128]
                    if mem[(32 * mem[_3871 + ceil32(return_data.size) + 128] - 1) + _3871 + ceil32(return_data.size) + 160] <= t:
                        idx = idx + 1
                        t = t
                        continue 
                    idx = idx + 1
                    t = mem[(32 * mem[_3871 + ceil32(return_data.size) + 128] - 1) + _3871 + ceil32(return_data.size) + 160]
                    continue 
                _4021 = mem[64]
                mem[mem[64]] = 3
                mem[64] = mem[64] + 128
                require 0 < mem[_4021]
                mem[_4021 + 32] = 0x49d68029688eabf473097a2fc38ef61633a3c
                require 1 < mem[_4021]
                mem[_4021 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                require 2 < mem[_4021]
                mem[_4021 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                mem[_4021 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_4021 + 132] = s
                mem[_4021 + 164] = 64
                mem[_4021 + 196] = mem[_4021]
                u = 0
                while u < 32 * mem[_4021]:
                    mem[u + _4021 + 228] = mem[u + _4021 + 32]
                    u = u + 32
                    continue 
                require ext_code.size(0x845e76a8691423fbc4ecb8dd77556cb61c09ee25)
                staticcall 0x845e76a8691423fbc4ecb8dd77556cb61c09ee25.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args s, 64, mem[_4021 + 196 len (32 * mem[_4021]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_4021 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _4021 + ceil32(return_data.size) + 128
                require return_data.size >= 32
                _9300 = mem[_4021 + 128 len 4], Mask(224, 32, s) >> 32
                require mem[_4021 + 128 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                require mem[_4021 + 128 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                require mem[_4021 + mem[_4021 + 128 len 4], Mask(224, 32, s) >> 32 + 128] <= 4294967296 and mem[_4021 + 128 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_4021 + mem[_4021 + 128 len 4], Mask(224, 32, s) >> 32 + 128]) + 32 <= return_data.size
                mem[_4021 + ceil32(return_data.size) + 128] = mem[_4021 + mem[_4021 + 128 len 4], Mask(224, 32, s) >> 32 + 128]
                _9866 = mem[_4021 + _9300 + 128]
                s = 0
                while s < 32 * _9866:
                    mem[s + _4021 + ceil32(return_data.size) + 160] = mem[s + _4021 + _9300 + 160]
                    s = s + 32
                    continue 
                mem[64] = (32 * _9866) + _4021 + ceil32(return_data.size) + 160
                require mem[_4021 + ceil32(return_data.size) + 128] - 1 < mem[_4021 + ceil32(return_data.size) + 128]
                if mem[(32 * mem[_4021 + ceil32(return_data.size) + 128] - 1) + _4021 + ceil32(return_data.size) + 160] <= t:
                    idx = idx + 1
                    t = t
                    continue 
                idx = idx + 1
                t = mem[(32 * mem[_4021 + ceil32(return_data.size) + 128] - 1) + _4021 + ceil32(return_data.size) + 160]
                continue 
            if 4 == idx:
                if 2 == idx:
                    _3772 = mem[64]
                    mem[mem[64]] = 3
                    mem[64] = mem[64] + 128
                    require 0 < mem[_3772]
                    mem[_3772 + 32] = 0x49d68029688eabf473097a2fc38ef61633a3c
                    require 1 < mem[_3772]
                    mem[_3772 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                    require 2 < mem[_3772]
                    mem[_3772 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    mem[_3772 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_3772 + 132] = s
                    mem[_3772 + 164] = 64
                    mem[_3772 + 196] = mem[_3772]
                    u = 0
                    while u < 32 * mem[_3772]:
                        mem[u + _3772 + 228] = mem[u + _3772 + 32]
                        u = u + 32
                        continue 
                    require ext_code.size(0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52)
                    staticcall 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args s, 64, mem[_3772 + 196 len (32 * mem[_3772]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_3772 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _3772 + ceil32(return_data.size) + 128
                    require return_data.size >= 32
                    _9316 = mem[_3772 + 128 len 4], Mask(224, 32, s) >> 32
                    require mem[_3772 + 128 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                    require mem[_3772 + 128 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                    require mem[_3772 + mem[_3772 + 128 len 4], Mask(224, 32, s) >> 32 + 128] <= 4294967296 and mem[_3772 + 128 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_3772 + mem[_3772 + 128 len 4], Mask(224, 32, s) >> 32 + 128]) + 32 <= return_data.size
                    mem[_3772 + ceil32(return_data.size) + 128] = mem[_3772 + mem[_3772 + 128 len 4], Mask(224, 32, s) >> 32 + 128]
                    _9874 = mem[_3772 + _9316 + 128]
                    s = 0
                    while s < 32 * _9874:
                        mem[s + _3772 + ceil32(return_data.size) + 160] = mem[s + _3772 + _9316 + 160]
                        s = s + 32
                        continue 
                    mem[64] = (32 * _9874) + _3772 + ceil32(return_data.size) + 160
                    require mem[_3772 + ceil32(return_data.size) + 128] - 1 < mem[_3772 + ceil32(return_data.size) + 128]
                    if mem[(32 * mem[_3772 + ceil32(return_data.size) + 128] - 1) + _3772 + ceil32(return_data.size) + 160] <= t:
                        idx = idx + 1
                        t = t
                        continue 
                    idx = idx + 1
                    t = mem[(32 * mem[_3772 + ceil32(return_data.size) + 128] - 1) + _3772 + ceil32(return_data.size) + 160]
                    continue 
                if 3 == idx:
                    _3877 = mem[64]
                    mem[mem[64]] = 3
                    mem[64] = mem[64] + 128
                    require 0 < mem[_3877]
                    mem[_3877 + 32] = 0x49d68029688eabf473097a2fc38ef61633a3c
                    require 1 < mem[_3877]
                    mem[_3877 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                    require 2 < mem[_3877]
                    mem[_3877 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    mem[_3877 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_3877 + 132] = s
                    mem[_3877 + 164] = 64
                    mem[_3877 + 196] = mem[_3877]
                    u = 0
                    while u < 32 * mem[_3877]:
                        mem[u + _3877 + 228] = mem[u + _3877 + 32]
                        u = u + 32
                        continue 
                    require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                    staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c29.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args s, 64, mem[_3877 + 196 len (32 * mem[_3877]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_3877 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _3877 + ceil32(return_data.size) + 128
                    require return_data.size >= 32
                    _9314 = mem[_3877 + 128 len 4], Mask(224, 32, s) >> 32
                    require mem[_3877 + 128 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                    require mem[_3877 + 128 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                    require mem[_3877 + mem[_3877 + 128 len 4], Mask(224, 32, s) >> 32 + 128] <= 4294967296 and mem[_3877 + 128 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_3877 + mem[_3877 + 128 len 4], Mask(224, 32, s) >> 32 + 128]) + 32 <= return_data.size
                    mem[_3877 + ceil32(return_data.size) + 128] = mem[_3877 + mem[_3877 + 128 len 4], Mask(224, 32, s) >> 32 + 128]
                    _9873 = mem[_3877 + _9314 + 128]
                    s = 0
                    while s < 32 * _9873:
                        mem[s + _3877 + ceil32(return_data.size) + 160] = mem[s + _3877 + _9314 + 160]
                        s = s + 32
                        continue 
                    mem[64] = (32 * _9873) + _3877 + ceil32(return_data.size) + 160
                    require mem[_3877 + ceil32(return_data.size) + 128] - 1 < mem[_3877 + ceil32(return_data.size) + 128]
                    if mem[(32 * mem[_3877 + ceil32(return_data.size) + 128] - 1) + _3877 + ceil32(return_data.size) + 160] <= t:
                        idx = idx + 1
                        t = t
                        continue 
                    idx = idx + 1
                    t = mem[(32 * mem[_3877 + ceil32(return_data.size) + 128] - 1) + _3877 + ceil32(return_data.size) + 160]
                    continue 
                if 4 == idx:
                    _4030 = mem[64]
                    mem[mem[64]] = 3
                    mem[64] = mem[64] + 128
                    require 0 < mem[_4030]
                    mem[_4030 + 32] = 0x49d68029688eabf473097a2fc38ef61633a3c
                    require 1 < mem[_4030]
                    mem[_4030 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                    require 2 < mem[_4030]
                    mem[_4030 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    mem[_4030 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_4030 + 132] = s
                    mem[_4030 + 164] = 64
                    mem[_4030 + 196] = mem[_4030]
                    u = 0
                    while u < 32 * mem[_4030]:
                        mem[u + _4030 + 228] = mem[u + _4030 + 32]
                        u = u + 32
                        continue 
                    require ext_code.size(0x7b17021fcb7bc888641dc3bedfed3734fcaf2c87)
                    staticcall 0x7b17021fcb7bc888641dc3bedfed3734fcaf2c87.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args s, 64, mem[_4030 + 196 len (32 * mem[_4030]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_4030 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _4030 + ceil32(return_data.size) + 128
                    require return_data.size >= 32
                    _9312 = mem[_4030 + 128 len 4], Mask(224, 32, s) >> 32
                    require mem[_4030 + 128 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                    require mem[_4030 + 128 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                    require mem[_4030 + mem[_4030 + 128 len 4], Mask(224, 32, s) >> 32 + 128] <= 4294967296 and mem[_4030 + 128 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_4030 + mem[_4030 + 128 len 4], Mask(224, 32, s) >> 32 + 128]) + 32 <= return_data.size
                    mem[_4030 + ceil32(return_data.size) + 128] = mem[_4030 + mem[_4030 + 128 len 4], Mask(224, 32, s) >> 32 + 128]
                    _9872 = mem[_4030 + _9312 + 128]
                    s = 0
                    while s < 32 * _9872:
                        mem[s + _4030 + ceil32(return_data.size) + 160] = mem[s + _4030 + _9312 + 160]
                        s = s + 32
                        continue 
                    mem[64] = (32 * _9872) + _4030 + ceil32(return_data.size) + 160
                    require mem[_4030 + ceil32(return_data.size) + 128] - 1 < mem[_4030 + ceil32(return_data.size) + 128]
                    if mem[(32 * mem[_4030 + ceil32(return_data.size) + 128] - 1) + _4030 + ceil32(return_data.size) + 160] <= t:
                        idx = idx + 1
                        t = t
                        continue 
                    idx = idx + 1
                    t = mem[(32 * mem[_4030 + ceil32(return_data.size) + 128] - 1) + _4030 + ceil32(return_data.size) + 160]
                    continue 
                if idx != 5:
                    _4028 = mem[64]
                    mem[mem[64]] = 3
                    mem[64] = mem[64] + 128
                    require 0 < mem[_4028]
                    mem[_4028 + 32] = 0x49d68029688eabf473097a2fc38ef61633a3c
                    require 1 < mem[_4028]
                    mem[_4028 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                    require 2 < mem[_4028]
                    mem[_4028 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    mem[_4028 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_4028 + 132] = s
                    mem[_4028 + 164] = 64
                    mem[_4028 + 196] = mem[_4028]
                    u = 0
                    while u < 32 * mem[_4028]:
                        mem[u + _4028 + 228] = mem[u + _4028 + 32]
                        u = u + 32
                        continue 
                    require ext_code.size(0)
                    staticcall 0x0.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args s, 64, mem[_4028 + 196 len (32 * mem[_4028]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_4028 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _4028 + ceil32(return_data.size) + 128
                    require return_data.size >= 32
                    _9308 = mem[_4028 + 128 len 4], Mask(224, 32, s) >> 32
                    require mem[_4028 + 128 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                    require mem[_4028 + 128 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                    require mem[_4028 + mem[_4028 + 128 len 4], Mask(224, 32, s) >> 32 + 128] <= 4294967296 and mem[_4028 + 128 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_4028 + mem[_4028 + 128 len 4], Mask(224, 32, s) >> 32 + 128]) + 32 <= return_data.size
                    mem[_4028 + ceil32(return_data.size) + 128] = mem[_4028 + mem[_4028 + 128 len 4], Mask(224, 32, s) >> 32 + 128]
                    _9870 = mem[_4028 + _9308 + 128]
                    s = 0
                    while s < 32 * _9870:
                        mem[s + _4028 + ceil32(return_data.size) + 160] = mem[s + _4028 + _9308 + 160]
                        s = s + 32
                        continue 
                    mem[64] = (32 * _9870) + _4028 + ceil32(return_data.size) + 160
                    require mem[_4028 + ceil32(return_data.size) + 128] - 1 < mem[_4028 + ceil32(return_data.size) + 128]
                    if mem[(32 * mem[_4028 + ceil32(return_data.size) + 128] - 1) + _4028 + ceil32(return_data.size) + 160] <= t:
                        idx = idx + 1
                        t = t
                        continue 
                    idx = idx + 1
                    t = mem[(32 * mem[_4028 + ceil32(return_data.size) + 128] - 1) + _4028 + ceil32(return_data.size) + 160]
                    continue 
                _4229 = mem[64]
                mem[mem[64]] = 3
                mem[64] = mem[64] + 128
                require 0 < mem[_4229]
                mem[_4229 + 32] = 0x49d68029688eabf473097a2fc38ef61633a3c
                require 1 < mem[_4229]
                mem[_4229 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                require 2 < mem[_4229]
                mem[_4229 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                mem[_4229 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_4229 + 132] = s
                mem[_4229 + 164] = 64
                mem[_4229 + 196] = mem[_4229]
                u = 0
                while u < 32 * mem[_4229]:
                    mem[u + _4229 + 228] = mem[u + _4229 + 32]
                    u = u + 32
                    continue 
                require ext_code.size(0x845e76a8691423fbc4ecb8dd77556cb61c09ee25)
                staticcall 0x845e76a8691423fbc4ecb8dd77556cb61c09ee25.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args s, 64, mem[_4229 + 196 len (32 * mem[_4229]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_4229 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _4229 + ceil32(return_data.size) + 128
                require return_data.size >= 32
                _9310 = mem[_4229 + 128 len 4], Mask(224, 32, s) >> 32
                require mem[_4229 + 128 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                require mem[_4229 + 128 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                require mem[_4229 + mem[_4229 + 128 len 4], Mask(224, 32, s) >> 32 + 128] <= 4294967296 and mem[_4229 + 128 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_4229 + mem[_4229 + 128 len 4], Mask(224, 32, s) >> 32 + 128]) + 32 <= return_data.size
                mem[_4229 + ceil32(return_data.size) + 128] = mem[_4229 + mem[_4229 + 128 len 4], Mask(224, 32, s) >> 32 + 128]
                _9871 = mem[_4229 + _9310 + 128]
                s = 0
                while s < 32 * _9871:
                    mem[s + _4229 + ceil32(return_data.size) + 160] = mem[s + _4229 + _9310 + 160]
                    s = s + 32
                    continue 
                mem[64] = (32 * _9871) + _4229 + ceil32(return_data.size) + 160
                require mem[_4229 + ceil32(return_data.size) + 128] - 1 < mem[_4229 + ceil32(return_data.size) + 128]
                if mem[(32 * mem[_4229 + ceil32(return_data.size) + 128] - 1) + _4229 + ceil32(return_data.size) + 160] <= t:
                    idx = idx + 1
                    t = t
                    continue 
                idx = idx + 1
                t = mem[(32 * mem[_4229 + ceil32(return_data.size) + 128] - 1) + _4229 + ceil32(return_data.size) + 160]
                continue 
            if 5 == idx:
                if 2 == idx:
                    _3882 = mem[64]
                    mem[mem[64]] = 3
                    mem[64] = mem[64] + 128
                    require 0 < mem[_3882]
                    mem[_3882 + 32] = 0x49d68029688eabf473097a2fc38ef61633a3c
                    require 1 < mem[_3882]
                    mem[_3882 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                    require 2 < mem[_3882]
                    mem[_3882 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    mem[_3882 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_3882 + 132] = s
                    mem[_3882 + 164] = 64
                    mem[_3882 + 196] = mem[_3882]
                    u = 0
                    while u < 32 * mem[_3882]:
                        mem[u + _3882 + 228] = mem[u + _3882 + 32]
                        u = u + 32
                        continue 
                    require ext_code.size(0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52)
                    staticcall 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args s, 64, mem[_3882 + 196 len (32 * mem[_3882]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_3882 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _3882 + ceil32(return_data.size) + 128
                    require return_data.size >= 32
                    _9348 = mem[_3882 + 128 len 4], Mask(224, 32, s) >> 32
                    require mem[_3882 + 128 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                    require mem[_3882 + 128 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                    require mem[_3882 + mem[_3882 + 128 len 4], Mask(224, 32, s) >> 32 + 128] <= 4294967296 and mem[_3882 + 128 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_3882 + mem[_3882 + 128 len 4], Mask(224, 32, s) >> 32 + 128]) + 32 <= return_data.size
                    mem[_3882 + ceil32(return_data.size) + 128] = mem[_3882 + mem[_3882 + 128 len 4], Mask(224, 32, s) >> 32 + 128]
                    _9890 = mem[_3882 + _9348 + 128]
                    s = 0
                    while s < 32 * _9890:
                        mem[s + _3882 + ceil32(return_data.size) + 160] = mem[s + _3882 + _9348 + 160]
                        s = s + 32
                        continue 
                    mem[64] = (32 * _9890) + _3882 + ceil32(return_data.size) + 160
                    require mem[_3882 + ceil32(return_data.size) + 128] - 1 < mem[_3882 + ceil32(return_data.size) + 128]
                    if mem[(32 * mem[_3882 + ceil32(return_data.size) + 128] - 1) + _3882 + ceil32(return_data.size) + 160] <= t:
                        idx = idx + 1
                        t = t
                        continue 
                    idx = idx + 1
                    t = mem[(32 * mem[_3882 + ceil32(return_data.size) + 128] - 1) + _3882 + ceil32(return_data.size) + 160]
                    continue 
                if 3 == idx:
                    _4037 = mem[64]
                    mem[mem[64]] = 3
                    mem[64] = mem[64] + 128
                    require 0 < mem[_4037]
                    mem[_4037 + 32] = 0x49d68029688eabf473097a2fc38ef61633a3c
                    require 1 < mem[_4037]
                    mem[_4037 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                    require 2 < mem[_4037]
                    mem[_4037 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    mem[_4037 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_4037 + 132] = s
                    mem[_4037 + 164] = 64
                    mem[_4037 + 196] = mem[_4037]
                    u = 0
                    while u < 32 * mem[_4037]:
                        mem[u + _4037 + 228] = mem[u + _4037 + 32]
                        u = u + 32
                        continue 
                    require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                    staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c29.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args s, 64, mem[_4037 + 196 len (32 * mem[_4037]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_4037 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _4037 + ceil32(return_data.size) + 128
                    require return_data.size >= 32
                    _9346 = mem[_4037 + 128 len 4], Mask(224, 32, s) >> 32
                    require mem[_4037 + 128 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                    require mem[_4037 + 128 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                    require mem[_4037 + mem[_4037 + 128 len 4], Mask(224, 32, s) >> 32 + 128] <= 4294967296 and mem[_4037 + 128 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_4037 + mem[_4037 + 128 len 4], Mask(224, 32, s) >> 32 + 128]) + 32 <= return_data.size
                    mem[_4037 + ceil32(return_data.size) + 128] = mem[_4037 + mem[_4037 + 128 len 4], Mask(224, 32, s) >> 32 + 128]
                    _9889 = mem[_4037 + _9346 + 128]
                    s = 0
                    while s < 32 * _9889:
                        mem[s + _4037 + ceil32(return_data.size) + 160] = mem[s + _4037 + _9346 + 160]
                        s = s + 32
                        continue 
                    mem[64] = (32 * _9889) + _4037 + ceil32(return_data.size) + 160
                    require mem[_4037 + ceil32(return_data.size) + 128] - 1 < mem[_4037 + ceil32(return_data.size) + 128]
                    if mem[(32 * mem[_4037 + ceil32(return_data.size) + 128] - 1) + _4037 + ceil32(return_data.size) + 160] <= t:
                        idx = idx + 1
                        t = t
                        continue 
                    idx = idx + 1
                    t = mem[(32 * mem[_4037 + ceil32(return_data.size) + 128] - 1) + _4037 + ceil32(return_data.size) + 160]
                    continue 
                if 4 == idx:
                    _4242 = mem[64]
                    mem[mem[64]] = 3
                    mem[64] = mem[64] + 128
                    require 0 < mem[_4242]
                    mem[_4242 + 32] = 0x49d68029688eabf473097a2fc38ef61633a3c
                    require 1 < mem[_4242]
                    mem[_4242 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                    require 2 < mem[_4242]
                    mem[_4242 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    mem[_4242 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_4242 + 132] = s
                    mem[_4242 + 164] = 64
                    mem[_4242 + 196] = mem[_4242]
                    u = 0
                    while u < 32 * mem[_4242]:
                        mem[u + _4242 + 228] = mem[u + _4242 + 32]
                        u = u + 32
                        continue 
                    require ext_code.size(0x7b17021fcb7bc888641dc3bedfed3734fcaf2c87)
                    staticcall 0x7b17021fcb7bc888641dc3bedfed3734fcaf2c87.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args s, 64, mem[_4242 + 196 len (32 * mem[_4242]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_4242 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _4242 + ceil32(return_data.size) + 128
                    require return_data.size >= 32
                    _9344 = mem[_4242 + 128 len 4], Mask(224, 32, s) >> 32
                    require mem[_4242 + 128 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                    require mem[_4242 + 128 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                    require mem[_4242 + mem[_4242 + 128 len 4], Mask(224, 32, s) >> 32 + 128] <= 4294967296 and mem[_4242 + 128 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_4242 + mem[_4242 + 128 len 4], Mask(224, 32, s) >> 32 + 128]) + 32 <= return_data.size
                    mem[_4242 + ceil32(return_data.size) + 128] = mem[_4242 + mem[_4242 + 128 len 4], Mask(224, 32, s) >> 32 + 128]
                    _9888 = mem[_4242 + _9344 + 128]
                    s = 0
                    while s < 32 * _9888:
                        mem[s + _4242 + ceil32(return_data.size) + 160] = mem[s + _4242 + _9344 + 160]
                        s = s + 32
                        continue 
                    mem[64] = (32 * _9888) + _4242 + ceil32(return_data.size) + 160
                    require mem[_4242 + ceil32(return_data.size) + 128] - 1 < mem[_4242 + ceil32(return_data.size) + 128]
                    if mem[(32 * mem[_4242 + ceil32(return_data.size) + 128] - 1) + _4242 + ceil32(return_data.size) + 160] <= t:
                        idx = idx + 1
                        t = t
                        continue 
                    idx = idx + 1
                    t = mem[(32 * mem[_4242 + ceil32(return_data.size) + 128] - 1) + _4242 + ceil32(return_data.size) + 160]
                    continue 
                if idx != 5:
                    _4240 = mem[64]
                    mem[mem[64]] = 3
                    mem[64] = mem[64] + 128
                    require 0 < mem[_4240]
                    mem[_4240 + 32] = 0x49d68029688eabf473097a2fc38ef61633a3c
                    require 1 < mem[_4240]
                    mem[_4240 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                    require 2 < mem[_4240]
                    mem[_4240 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    mem[_4240 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_4240 + 132] = s
                    mem[_4240 + 164] = 64
                    mem[_4240 + 196] = mem[_4240]
                    u = 0
                    while u < 32 * mem[_4240]:
                        mem[u + _4240 + 228] = mem[u + _4240 + 32]
                        u = u + 32
                        continue 
                    require ext_code.size(0)
                    staticcall 0x0.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args s, 64, mem[_4240 + 196 len (32 * mem[_4240]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_4240 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _4240 + ceil32(return_data.size) + 128
                    require return_data.size >= 32
                    _9340 = mem[_4240 + 128 len 4], Mask(224, 32, s) >> 32
                    require mem[_4240 + 128 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                    require mem[_4240 + 128 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                    require mem[_4240 + mem[_4240 + 128 len 4], Mask(224, 32, s) >> 32 + 128] <= 4294967296 and mem[_4240 + 128 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_4240 + mem[_4240 + 128 len 4], Mask(224, 32, s) >> 32 + 128]) + 32 <= return_data.size
                    mem[_4240 + ceil32(return_data.size) + 128] = mem[_4240 + mem[_4240 + 128 len 4], Mask(224, 32, s) >> 32 + 128]
                    _9886 = mem[_4240 + _9340 + 128]
                    s = 0
                    while s < 32 * _9886:
                        mem[s + _4240 + ceil32(return_data.size) + 160] = mem[s + _4240 + _9340 + 160]
                        s = s + 32
                        continue 
                    mem[64] = (32 * _9886) + _4240 + ceil32(return_data.size) + 160
                    require mem[_4240 + ceil32(return_data.size) + 128] - 1 < mem[_4240 + ceil32(return_data.size) + 128]
                    if mem[(32 * mem[_4240 + ceil32(return_data.size) + 128] - 1) + _4240 + ceil32(return_data.size) + 160] <= t:
                        idx = idx + 1
                        t = t
                        continue 
                    idx = idx + 1
                    t = mem[(32 * mem[_4240 + ceil32(return_data.size) + 128] - 1) + _4240 + ceil32(return_data.size) + 160]
                    continue 
                _4459 = mem[64]
                mem[mem[64]] = 3
                mem[64] = mem[64] + 128
                require 0 < mem[_4459]
                mem[_4459 + 32] = 0x49d68029688eabf473097a2fc38ef61633a3c
                require 1 < mem[_4459]
                mem[_4459 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                require 2 < mem[_4459]
                mem[_4459 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                mem[_4459 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_4459 + 132] = s
                mem[_4459 + 164] = 64
                mem[_4459 + 196] = mem[_4459]
                u = 0
                while u < 32 * mem[_4459]:
                    mem[u + _4459 + 228] = mem[u + _4459 + 32]
                    u = u + 32
                    continue 
                require ext_code.size(0x845e76a8691423fbc4ecb8dd77556cb61c09ee25)
                staticcall 0x845e76a8691423fbc4ecb8dd77556cb61c09ee25.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args s, 64, mem[_4459 + 196 len (32 * mem[_4459]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_4459 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _4459 + ceil32(return_data.size) + 128
                require return_data.size >= 32
                _9342 = mem[_4459 + 128 len 4], Mask(224, 32, s) >> 32
                require mem[_4459 + 128 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                require mem[_4459 + 128 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                require mem[_4459 + mem[_4459 + 128 len 4], Mask(224, 32, s) >> 32 + 128] <= 4294967296 and mem[_4459 + 128 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_4459 + mem[_4459 + 128 len 4], Mask(224, 32, s) >> 32 + 128]) + 32 <= return_data.size
                mem[_4459 + ceil32(return_data.size) + 128] = mem[_4459 + mem[_4459 + 128 len 4], Mask(224, 32, s) >> 32 + 128]
                _9887 = mem[_4459 + _9342 + 128]
                s = 0
                while s < 32 * _9887:
                    mem[s + _4459 + ceil32(return_data.size) + 160] = mem[s + _4459 + _9342 + 160]
                    s = s + 32
                    continue 
                mem[64] = (32 * _9887) + _4459 + ceil32(return_data.size) + 160
                require mem[_4459 + ceil32(return_data.size) + 128] - 1 < mem[_4459 + ceil32(return_data.size) + 128]
                if mem[(32 * mem[_4459 + ceil32(return_data.size) + 128] - 1) + _4459 + ceil32(return_data.size) + 160] <= t:
                    idx = idx + 1
                    t = t
                    continue 
                idx = idx + 1
                t = mem[(32 * mem[_4459 + ceil32(return_data.size) + 128] - 1) + _4459 + ceil32(return_data.size) + 160]
                continue 
            if idx != 6:
                if 7 == idx:
                    _4667 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    require 0 < mem[_4667]
                    mem[_4667 + 32] = 0x49d68029688eabf473097a2fc38ef61633a3c
                    require 1 < mem[_4667]
                    mem[_4667 + 64] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    mem[_4667 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_4667 + 100] = s
                    mem[_4667 + 132] = 64
                    mem[_4667 + 164] = mem[_4667]
                    u = 0
                    while u < 32 * mem[_4667]:
                        mem[u + _4667 + 196] = mem[u + _4667 + 32]
                        u = u + 32
                        continue 
                    require ext_code.size(0x845e76a8691423fbc4ecb8dd77556cb61c09ee25)
                    staticcall 0x845e76a8691423fbc4ecb8dd77556cb61c09ee25.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args s, 64, mem[_4667 + 164 len (32 * mem[_4667]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_4667 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _4667 + ceil32(return_data.size) + 96
                    require return_data.size >= 32
                    _9318 = mem[_4667 + 96 len 4], Mask(224, 32, s) >> 32
                    require mem[_4667 + 96 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                    require mem[_4667 + 96 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                    require mem[_4667 + mem[_4667 + 96 len 4], Mask(224, 32, s) >> 32 + 96] <= 4294967296 and mem[_4667 + 96 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_4667 + mem[_4667 + 96 len 4], Mask(224, 32, s) >> 32 + 96]) + 32 <= return_data.size
                    mem[_4667 + ceil32(return_data.size) + 96] = mem[_4667 + mem[_4667 + 96 len 4], Mask(224, 32, s) >> 32 + 96]
                    _9875 = mem[_4667 + _9318 + 96]
                    s = 0
                    while s < 32 * _9875:
                        mem[s + _4667 + ceil32(return_data.size) + 128] = mem[s + _4667 + _9318 + 128]
                        s = s + 32
                        continue 
                    mem[64] = (32 * _9875) + _4667 + ceil32(return_data.size) + 128
                    require mem[_4667 + ceil32(return_data.size) + 96] - 1 < mem[_4667 + ceil32(return_data.size) + 96]
                    if mem[(32 * mem[_4667 + ceil32(return_data.size) + 96] - 1) + _4667 + ceil32(return_data.size) + 128] <= t:
                        idx = idx + 1
                        t = t
                        continue 
                    idx = idx + 1
                    t = mem[(32 * mem[_4667 + ceil32(return_data.size) + 96] - 1) + _4667 + ceil32(return_data.size) + 128]
                    continue 
                if 8 == idx:
                    if 7 == idx:
                        _4885 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        require 0 < mem[_4885]
                        mem[_4885 + 32] = 0x49d68029688eabf473097a2fc38ef61633a3c
                        require 1 < mem[_4885]
                        mem[_4885 + 64] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                        mem[_4885 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[_4885 + 100] = s
                        mem[_4885 + 132] = 64
                        mem[_4885 + 164] = mem[_4885]
                        u = 0
                        while u < 32 * mem[_4885]:
                            mem[u + _4885 + 196] = mem[u + _4885 + 32]
                            u = u + 32
                            continue 
                        require ext_code.size(0x845e76a8691423fbc4ecb8dd77556cb61c09ee25)
                        staticcall 0x845e76a8691423fbc4ecb8dd77556cb61c09ee25.getAmountsOut(uint256 arg1, address[] arg2) with:
                                gas gas_remaining wei
                               args s, 64, mem[_4885 + 164 len (32 * mem[_4885]) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_4885 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = _4885 + ceil32(return_data.size) + 96
                        require return_data.size >= 32
                        _9326 = mem[_4885 + 96 len 4], Mask(224, 32, s) >> 32
                        require mem[_4885 + 96 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                        require mem[_4885 + 96 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                        require mem[_4885 + mem[_4885 + 96 len 4], Mask(224, 32, s) >> 32 + 96] <= 4294967296 and mem[_4885 + 96 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_4885 + mem[_4885 + 96 len 4], Mask(224, 32, s) >> 32 + 96]) + 32 <= return_data.size
                        mem[_4885 + ceil32(return_data.size) + 96] = mem[_4885 + mem[_4885 + 96 len 4], Mask(224, 32, s) >> 32 + 96]
                        _9879 = mem[_4885 + _9326 + 96]
                        s = 0
                        while s < 32 * _9879:
                            mem[s + _4885 + ceil32(return_data.size) + 128] = mem[s + _4885 + _9326 + 128]
                            s = s + 32
                            continue 
                        mem[64] = (32 * _9879) + _4885 + ceil32(return_data.size) + 128
                        require mem[_4885 + ceil32(return_data.size) + 96] - 1 < mem[_4885 + ceil32(return_data.size) + 96]
                        if mem[(32 * mem[_4885 + ceil32(return_data.size) + 96] - 1) + _4885 + ceil32(return_data.size) + 128] <= t:
                            idx = idx + 1
                            t = t
                            continue 
                        idx = idx + 1
                        t = mem[(32 * mem[_4885 + ceil32(return_data.size) + 96] - 1) + _4885 + ceil32(return_data.size) + 128]
                        continue 
                    if 8 == idx:
                        _5115 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        require 0 < mem[_5115]
                        mem[_5115 + 32] = 0x49d68029688eabf473097a2fc38ef61633a3c
                        require 1 < mem[_5115]
                        mem[_5115 + 64] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                        mem[_5115 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[_5115 + 100] = s
                        mem[_5115 + 132] = 64
                        mem[_5115 + 164] = mem[_5115]
                        u = 0
                        while u < 32 * mem[_5115]:
                            mem[u + _5115 + 196] = mem[u + _5115 + 32]
                            u = u + 32
                            continue 
                        require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                        staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c29.getAmountsOut(uint256 arg1, address[] arg2) with:
                                gas gas_remaining wei
                               args s, 64, mem[_5115 + 164 len (32 * mem[_5115]) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_5115 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = _5115 + ceil32(return_data.size) + 96
                        require return_data.size >= 32
                        _9324 = mem[_5115 + 96 len 4], Mask(224, 32, s) >> 32
                        require mem[_5115 + 96 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                        require mem[_5115 + 96 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                        require mem[_5115 + mem[_5115 + 96 len 4], Mask(224, 32, s) >> 32 + 96] <= 4294967296 and mem[_5115 + 96 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_5115 + mem[_5115 + 96 len 4], Mask(224, 32, s) >> 32 + 96]) + 32 <= return_data.size
                        mem[_5115 + ceil32(return_data.size) + 96] = mem[_5115 + mem[_5115 + 96 len 4], Mask(224, 32, s) >> 32 + 96]
                        _9878 = mem[_5115 + _9324 + 96]
                        s = 0
                        while s < 32 * _9878:
                            mem[s + _5115 + ceil32(return_data.size) + 128] = mem[s + _5115 + _9324 + 128]
                            s = s + 32
                            continue 
                        mem[64] = (32 * _9878) + _5115 + ceil32(return_data.size) + 128
                        require mem[_5115 + ceil32(return_data.size) + 96] - 1 < mem[_5115 + ceil32(return_data.size) + 96]
                        if mem[(32 * mem[_5115 + ceil32(return_data.size) + 96] - 1) + _5115 + ceil32(return_data.size) + 128] <= t:
                            idx = idx + 1
                            t = t
                            continue 
                        idx = idx + 1
                        t = mem[(32 * mem[_5115 + ceil32(return_data.size) + 96] - 1) + _5115 + ceil32(return_data.size) + 128]
                        continue 
                    if idx != 9:
                        _5113 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        require 0 < mem[_5113]
                        mem[_5113 + 32] = 0x49d68029688eabf473097a2fc38ef61633a3c
                        require 1 < mem[_5113]
                        mem[_5113 + 64] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                        mem[_5113 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[_5113 + 100] = s
                        mem[_5113 + 132] = 64
                        mem[_5113 + 164] = mem[_5113]
                        u = 0
                        while u < 32 * mem[_5113]:
                            mem[u + _5113 + 196] = mem[u + _5113 + 32]
                            u = u + 32
                            continue 
                        require ext_code.size(0)
                        staticcall 0x0.getAmountsOut(uint256 arg1, address[] arg2) with:
                                gas gas_remaining wei
                               args s, 64, mem[_5113 + 164 len (32 * mem[_5113]) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_5113 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = _5113 + ceil32(return_data.size) + 96
                        require return_data.size >= 32
                        _9320 = mem[_5113 + 96 len 4], Mask(224, 32, s) >> 32
                        require mem[_5113 + 96 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                        require mem[_5113 + 96 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                        require mem[_5113 + mem[_5113 + 96 len 4], Mask(224, 32, s) >> 32 + 96] <= 4294967296 and mem[_5113 + 96 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_5113 + mem[_5113 + 96 len 4], Mask(224, 32, s) >> 32 + 96]) + 32 <= return_data.size
                        mem[_5113 + ceil32(return_data.size) + 96] = mem[_5113 + mem[_5113 + 96 len 4], Mask(224, 32, s) >> 32 + 96]
                        _9876 = mem[_5113 + _9320 + 96]
                        s = 0
                        while s < 32 * _9876:
                            mem[s + _5113 + ceil32(return_data.size) + 128] = mem[s + _5113 + _9320 + 128]
                            s = s + 32
                            continue 
                        mem[64] = (32 * _9876) + _5113 + ceil32(return_data.size) + 128
                        require mem[_5113 + ceil32(return_data.size) + 96] - 1 < mem[_5113 + ceil32(return_data.size) + 96]
                        if mem[(32 * mem[_5113 + ceil32(return_data.size) + 96] - 1) + _5113 + ceil32(return_data.size) + 128] <= t:
                            idx = idx + 1
                            t = t
                            continue 
                        idx = idx + 1
                        t = mem[(32 * mem[_5113 + ceil32(return_data.size) + 96] - 1) + _5113 + ceil32(return_data.size) + 128]
                        continue 
                    _5363 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    require 0 < mem[_5363]
                    mem[_5363 + 32] = 0x49d68029688eabf473097a2fc38ef61633a3c
                    require 1 < mem[_5363]
                    mem[_5363 + 64] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    mem[_5363 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_5363 + 100] = s
                    mem[_5363 + 132] = 64
                    mem[_5363 + 164] = mem[_5363]
                    u = 0
                    while u < 32 * mem[_5363]:
                        mem[u + _5363 + 196] = mem[u + _5363 + 32]
                        u = u + 32
                        continue 
                    require ext_code.size(0x6b3d631b87fe27af29efec61d2ab8ce4d621ccbf)
                    staticcall 0x6b3d631b87fe27af29efec61d2ab8ce4d621ccbf.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args s, 64, mem[_5363 + 164 len (32 * mem[_5363]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_5363 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _5363 + ceil32(return_data.size) + 96
                    require return_data.size >= 32
                    _9322 = mem[_5363 + 96 len 4], Mask(224, 32, s) >> 32
                    require mem[_5363 + 96 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                    require mem[_5363 + 96 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                    require mem[_5363 + mem[_5363 + 96 len 4], Mask(224, 32, s) >> 32 + 96] <= 4294967296 and mem[_5363 + 96 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_5363 + mem[_5363 + 96 len 4], Mask(224, 32, s) >> 32 + 96]) + 32 <= return_data.size
                    mem[_5363 + ceil32(return_data.size) + 96] = mem[_5363 + mem[_5363 + 96 len 4], Mask(224, 32, s) >> 32 + 96]
                    _9877 = mem[_5363 + _9322 + 96]
                    s = 0
                    while s < 32 * _9877:
                        mem[s + _5363 + ceil32(return_data.size) + 128] = mem[s + _5363 + _9322 + 128]
                        s = s + 32
                        continue 
                    mem[64] = (32 * _9877) + _5363 + ceil32(return_data.size) + 128
                    require mem[_5363 + ceil32(return_data.size) + 96] - 1 < mem[_5363 + ceil32(return_data.size) + 96]
                    if mem[(32 * mem[_5363 + ceil32(return_data.size) + 96] - 1) + _5363 + ceil32(return_data.size) + 128] <= t:
                        idx = idx + 1
                        t = t
                        continue 
                    idx = idx + 1
                    t = mem[(32 * mem[_5363 + ceil32(return_data.size) + 96] - 1) + _5363 + ceil32(return_data.size) + 128]
                    continue 
                if idx != 9:
                    if idx != 10:
                        if s <= t:
                            idx = idx + 1
                            t = t
                            continue 
                        idx = idx + 1
                        t = s
                        continue 
                    mem[mem[64] + 4] = 0
                    mem[mem[64] + 36] = 1
                    mem[mem[64] + 68] = s
                    require ext_code.size(0x952bda8a83c3d5f398a686bb4e8c6dd90072d523)
                    staticcall 0x952bda8a83c3d5f398a686bb4e8c6dd90072d523.calculateSwap(uint8 arg1, uint8 arg2, uint256 arg3) with:
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
                if 7 == idx:
                    _5120 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    require 0 < mem[_5120]
                    mem[_5120 + 32] = 0x49d68029688eabf473097a2fc38ef61633a3c
                    require 1 < mem[_5120]
                    mem[_5120 + 64] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    mem[_5120 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_5120 + 100] = s
                    mem[_5120 + 132] = 64
                    mem[_5120 + 164] = mem[_5120]
                    u = 0
                    while u < 32 * mem[_5120]:
                        mem[u + _5120 + 196] = mem[u + _5120 + 32]
                        u = u + 32
                        continue 
                    require ext_code.size(0x845e76a8691423fbc4ecb8dd77556cb61c09ee25)
                    staticcall 0x845e76a8691423fbc4ecb8dd77556cb61c09ee25.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args s, 64, mem[_5120 + 164 len (32 * mem[_5120]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_5120 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _5120 + ceil32(return_data.size) + 96
                    require return_data.size >= 32
                    _9334 = mem[_5120 + 96 len 4], Mask(224, 32, s) >> 32
                    require mem[_5120 + 96 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                    require mem[_5120 + 96 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                    require mem[_5120 + mem[_5120 + 96 len 4], Mask(224, 32, s) >> 32 + 96] <= 4294967296 and mem[_5120 + 96 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_5120 + mem[_5120 + 96 len 4], Mask(224, 32, s) >> 32 + 96]) + 32 <= return_data.size
                    mem[_5120 + ceil32(return_data.size) + 96] = mem[_5120 + mem[_5120 + 96 len 4], Mask(224, 32, s) >> 32 + 96]
                    _9883 = mem[_5120 + _9334 + 96]
                    s = 0
                    while s < 32 * _9883:
                        mem[s + _5120 + ceil32(return_data.size) + 128] = mem[s + _5120 + _9334 + 128]
                        s = s + 32
                        continue 
                    mem[64] = (32 * _9883) + _5120 + ceil32(return_data.size) + 128
                    require mem[_5120 + ceil32(return_data.size) + 96] - 1 < mem[_5120 + ceil32(return_data.size) + 96]
                    if mem[(32 * mem[_5120 + ceil32(return_data.size) + 96] - 1) + _5120 + ceil32(return_data.size) + 128] <= t:
                        idx = idx + 1
                        t = t
                        continue 
                    idx = idx + 1
                    t = mem[(32 * mem[_5120 + ceil32(return_data.size) + 96] - 1) + _5120 + ceil32(return_data.size) + 128]
                    continue 
                if 8 == idx:
                    _5373 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    require 0 < mem[_5373]
                    mem[_5373 + 32] = 0x49d68029688eabf473097a2fc38ef61633a3c
                    require 1 < mem[_5373]
                    mem[_5373 + 64] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    mem[_5373 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_5373 + 100] = s
                    mem[_5373 + 132] = 64
                    mem[_5373 + 164] = mem[_5373]
                    u = 0
                    while u < 32 * mem[_5373]:
                        mem[u + _5373 + 196] = mem[u + _5373 + 32]
                        u = u + 32
                        continue 
                    require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                    staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c29.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args s, 64, mem[_5373 + 164 len (32 * mem[_5373]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_5373 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _5373 + ceil32(return_data.size) + 96
                    require return_data.size >= 32
                    _9332 = mem[_5373 + 96 len 4], Mask(224, 32, s) >> 32
                    require mem[_5373 + 96 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                    require mem[_5373 + 96 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                    require mem[_5373 + mem[_5373 + 96 len 4], Mask(224, 32, s) >> 32 + 96] <= 4294967296 and mem[_5373 + 96 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_5373 + mem[_5373 + 96 len 4], Mask(224, 32, s) >> 32 + 96]) + 32 <= return_data.size
                    mem[_5373 + ceil32(return_data.size) + 96] = mem[_5373 + mem[_5373 + 96 len 4], Mask(224, 32, s) >> 32 + 96]
                    _9882 = mem[_5373 + _9332 + 96]
                    s = 0
                    while s < 32 * _9882:
                        mem[s + _5373 + ceil32(return_data.size) + 128] = mem[s + _5373 + _9332 + 128]
                        s = s + 32
                        continue 
                    mem[64] = (32 * _9882) + _5373 + ceil32(return_data.size) + 128
                    require mem[_5373 + ceil32(return_data.size) + 96] - 1 < mem[_5373 + ceil32(return_data.size) + 96]
                    if mem[(32 * mem[_5373 + ceil32(return_data.size) + 96] - 1) + _5373 + ceil32(return_data.size) + 128] <= t:
                        idx = idx + 1
                        t = t
                        continue 
                    idx = idx + 1
                    t = mem[(32 * mem[_5373 + ceil32(return_data.size) + 96] - 1) + _5373 + ceil32(return_data.size) + 128]
                    continue 
                if idx != 9:
                    _5371 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    require 0 < mem[_5371]
                    mem[_5371 + 32] = 0x49d68029688eabf473097a2fc38ef61633a3c
                    require 1 < mem[_5371]
                    mem[_5371 + 64] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    mem[_5371 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_5371 + 100] = s
                    mem[_5371 + 132] = 64
                    mem[_5371 + 164] = mem[_5371]
                    u = 0
                    while u < 32 * mem[_5371]:
                        mem[u + _5371 + 196] = mem[u + _5371 + 32]
                        u = u + 32
                        continue 
                    require ext_code.size(0)
                    staticcall 0x0.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args s, 64, mem[_5371 + 164 len (32 * mem[_5371]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_5371 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _5371 + ceil32(return_data.size) + 96
                    require return_data.size >= 32
                    _9328 = mem[_5371 + 96 len 4], Mask(224, 32, s) >> 32
                    require mem[_5371 + 96 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                    require mem[_5371 + 96 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                    require mem[_5371 + mem[_5371 + 96 len 4], Mask(224, 32, s) >> 32 + 96] <= 4294967296 and mem[_5371 + 96 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_5371 + mem[_5371 + 96 len 4], Mask(224, 32, s) >> 32 + 96]) + 32 <= return_data.size
                    mem[_5371 + ceil32(return_data.size) + 96] = mem[_5371 + mem[_5371 + 96 len 4], Mask(224, 32, s) >> 32 + 96]
                    _9880 = mem[_5371 + _9328 + 96]
                    s = 0
                    while s < 32 * _9880:
                        mem[s + _5371 + ceil32(return_data.size) + 128] = mem[s + _5371 + _9328 + 128]
                        s = s + 32
                        continue 
                    mem[64] = (32 * _9880) + _5371 + ceil32(return_data.size) + 128
                    require mem[_5371 + ceil32(return_data.size) + 96] - 1 < mem[_5371 + ceil32(return_data.size) + 96]
                    if mem[(32 * mem[_5371 + ceil32(return_data.size) + 96] - 1) + _5371 + ceil32(return_data.size) + 128] <= t:
                        idx = idx + 1
                        t = t
                        continue 
                    idx = idx + 1
                    t = mem[(32 * mem[_5371 + ceil32(return_data.size) + 96] - 1) + _5371 + ceil32(return_data.size) + 128]
                    continue 
                _5650 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                require 0 < mem[_5650]
                mem[_5650 + 32] = 0x49d68029688eabf473097a2fc38ef61633a3c
                require 1 < mem[_5650]
                mem[_5650 + 64] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                mem[_5650 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_5650 + 100] = s
                mem[_5650 + 132] = 64
                mem[_5650 + 164] = mem[_5650]
                u = 0
                while u < 32 * mem[_5650]:
                    mem[u + _5650 + 196] = mem[u + _5650 + 32]
                    u = u + 32
                    continue 
                require ext_code.size(0x6b3d631b87fe27af29efec61d2ab8ce4d621ccbf)
                staticcall 0x6b3d631b87fe27af29efec61d2ab8ce4d621ccbf.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args s, 64, mem[_5650 + 164 len (32 * mem[_5650]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_5650 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _5650 + ceil32(return_data.size) + 96
                require return_data.size >= 32
                _9330 = mem[_5650 + 96 len 4], Mask(224, 32, s) >> 32
                require mem[_5650 + 96 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                require mem[_5650 + 96 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                require mem[_5650 + mem[_5650 + 96 len 4], Mask(224, 32, s) >> 32 + 96] <= 4294967296 and mem[_5650 + 96 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_5650 + mem[_5650 + 96 len 4], Mask(224, 32, s) >> 32 + 96]) + 32 <= return_data.size
                mem[_5650 + ceil32(return_data.size) + 96] = mem[_5650 + mem[_5650 + 96 len 4], Mask(224, 32, s) >> 32 + 96]
                _9881 = mem[_5650 + _9330 + 96]
                s = 0
                while s < 32 * _9881:
                    mem[s + _5650 + ceil32(return_data.size) + 128] = mem[s + _5650 + _9330 + 128]
                    s = s + 32
                    continue 
                mem[64] = (32 * _9881) + _5650 + ceil32(return_data.size) + 128
                require mem[_5650 + ceil32(return_data.size) + 96] - 1 < mem[_5650 + ceil32(return_data.size) + 96]
                if mem[(32 * mem[_5650 + ceil32(return_data.size) + 96] - 1) + _5650 + ceil32(return_data.size) + 128] <= t:
                    idx = idx + 1
                    t = t
                    continue 
                idx = idx + 1
                t = mem[(32 * mem[_5650 + ceil32(return_data.size) + 96] - 1) + _5650 + ceil32(return_data.size) + 128]
                continue 
            _3880 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            require 0 < mem[_3880]
            mem[_3880 + 32] = 0x49d68029688eabf473097a2fc38ef61633a3c
            require 1 < mem[_3880]
            mem[_3880 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
            mem[_3880 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[_3880 + 100] = s
            mem[_3880 + 132] = 64
            mem[_3880 + 164] = mem[_3880]
            u = 0
            while u < 32 * mem[_3880]:
                mem[u + _3880 + 196] = mem[u + _3880 + 32]
                u = u + 32
                continue 
            require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
            staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c29.getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args s, 64, mem[_3880 + 164 len (32 * mem[_3880]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[_3880 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = _3880 + ceil32(return_data.size) + 96
            require return_data.size >= 32
            _9336 = mem[_3880 + 96 len 4], Mask(224, 32, s) >> 32
            require mem[_3880 + 96 len 4], Mask(224, 32, s) >> 32 <= 4294967296
            require mem[_3880 + 96 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
            require mem[_3880 + mem[_3880 + 96 len 4], Mask(224, 32, s) >> 32 + 96] <= 4294967296 and mem[_3880 + 96 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_3880 + mem[_3880 + 96 len 4], Mask(224, 32, s) >> 32 + 96]) + 32 <= return_data.size
            mem[_3880 + ceil32(return_data.size) + 96] = mem[_3880 + mem[_3880 + 96 len 4], Mask(224, 32, s) >> 32 + 96]
            _9884 = mem[_3880 + _9336 + 96]
            s = 0
            while s < 32 * _9884:
                mem[s + _3880 + ceil32(return_data.size) + 128] = mem[s + _3880 + _9336 + 128]
                s = s + 32
                continue 
            require mem[_3880 + ceil32(return_data.size) + 96] - 1 < mem[_3880 + ceil32(return_data.size) + 96]
            _12000 = mem[(32 * mem[_3880 + ceil32(return_data.size) + 96] - 1) + _3880 + ceil32(return_data.size) + 128]
            mem[(32 * _9884) + _3880 + ceil32(return_data.size) + 128] = 2
            mem[(32 * _9884) + _3880 + ceil32(return_data.size) + 160] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
            mem[(32 * _9884) + _3880 + ceil32(return_data.size) + 192] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
            mem[(32 * _9884) + _3880 + ceil32(return_data.size) + 224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[(32 * _9884) + _3880 + ceil32(return_data.size) + 228] = _12000
            mem[(32 * _9884) + _3880 + ceil32(return_data.size) + 260] = 64
            mem[(32 * _9884) + _3880 + ceil32(return_data.size) + 292] = 2
            s = 0
            while s < 64:
                mem[s + (32 * _9884) + _3880 + ceil32(return_data.size) + 324] = mem[s + (32 * _9884) + _3880 + ceil32(return_data.size) + 160]
                s = s + 32
                continue 
            require ext_code.size(0x1b02da8cb0d097eb8d57a175b88c7d8b47997506)
            staticcall 0x1b02da8cb0d097eb8d57a175b88c7d8b47997506.getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args _12000, Array(len=2, data=mem[(32 * _9884) + _3880 + ceil32(return_data.size) + 324 len 64])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _9884) + _3880 + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * _9884) + _3880 + (2 * ceil32(return_data.size)) + 224
            require return_data.size >= 32
            _12528 = mem[(32 * _9884) + _3880 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _12000) >> 32
            require mem[(32 * _9884) + _3880 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _12000) >> 32 <= 4294967296
            require mem[(32 * _9884) + _3880 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _12000) >> 32 + 32 <= return_data.size
            require mem[(32 * _9884) + _3880 + ceil32(return_data.size) + mem[(32 * _9884) + _3880 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _12000) >> 32 + 224] <= 4294967296 and mem[(32 * _9884) + _3880 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _12000) >> 32 + (32 * mem[(32 * _9884) + _3880 + ceil32(return_data.size) + mem[(32 * _9884) + _3880 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _12000) >> 32 + 224]) + 32 <= return_data.size
            mem[(32 * _9884) + _3880 + (2 * ceil32(return_data.size)) + 224] = mem[(32 * _9884) + _3880 + ceil32(return_data.size) + mem[(32 * _9884) + _3880 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _12000) >> 32 + 224]
            _12568 = mem[(32 * _9884) + _3880 + ceil32(return_data.size) + _12528 + 224]
            s = 0
            while s < 32 * _12568:
                mem[s + (32 * _9884) + _3880 + (2 * ceil32(return_data.size)) + 256] = mem[s + (32 * _9884) + _3880 + ceil32(return_data.size) + _12528 + 256]
                s = s + 32
                continue 
            mem[64] = (32 * _12568) + (32 * _9884) + _3880 + (2 * ceil32(return_data.size)) + 256
            require mem[(32 * _9884) + _3880 + (2 * ceil32(return_data.size)) + 224] - 1 < mem[(32 * _9884) + _3880 + (2 * ceil32(return_data.size)) + 224]
            if mem[(32 * mem[(32 * _9884) + _3880 + (2 * ceil32(return_data.size)) + 224] - 1) + (32 * _9884) + _3880 + (2 * ceil32(return_data.size)) + 256] <= t:
                idx = idx + 1
                t = t
                continue 
            idx = idx + 1
            t = mem[(32 * mem[(32 * _9884) + _3880 + (2 * ceil32(return_data.size)) + 224] - 1) + (32 * _9884) + _3880 + (2 * ceil32(return_data.size)) + 256]
            continue 
    else:
        if 10^11 * sub_7d0b6809 / sub_7d0b6809 != 10^11:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        mem[0] = msg.sender
        idx = 0
        s = 0
        while idx < 6:
            if not idx:
                mem[mem[64] + 4] = 2
                mem[mem[64] + 36] = 0
                mem[mem[64] + 68] = 10^11 * sub_7d0b6809
                require ext_code.size(0x92d5ebf3593a92888c25c0abef126583d4b5312e)
                staticcall 0x92d5ebf3593a92888c25c0abef126583d4b5312e.get_dy_underlying(int128 arg1, int128 arg2, uint256 arg3) with:
                        gas gas_remaining wei
                       args 2, 0, 10^11 * sub_7d0b6809
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
                mem[mem[64] + 68] = 10^11 * sub_7d0b6809
                require ext_code.size(0x83e5f18da720119ff363cf63417628eb0e9fd523)
                staticcall 0x83e5f18da720119ff363cf63417628eb0e9fd523.get_dy(int128 arg1, int128 arg2, uint256 arg3) with:
                        gas gas_remaining wei
                       args 2, 0, 10^11 * sub_7d0b6809
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
                _196 = mem[64]
                mem[mem[64]] = 3
                mem[64] = mem[64] + 128
                require 0 < mem[_196]
                mem[_196 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                require 1 < mem[_196]
                mem[_196 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                require 2 < mem[_196]
                mem[_196 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                mem[_196 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_196 + 132] = 10^11 * sub_7d0b6809
                mem[_196 + 164] = 64
                mem[_196 + 196] = mem[_196]
                t = 0
                while t < 32 * mem[_196]:
                    mem[t + _196 + 228] = mem[t + _196 + 32]
                    t = t + 32
                    continue 
                require ext_code.size(0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52)
                staticcall 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args 10^11 * sub_7d0b6809, 64, mem[_196 + 196 len (32 * mem[_196]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_196 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _196 + ceil32(return_data.size) + 128
                require return_data.size >= 32
                _2688 = mem[_196 + 128 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32
                require mem[_196 + 128 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32 <= 4294967296
                require mem[_196 + 128 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32 + 32 <= return_data.size
                require mem[_196 + mem[_196 + 128 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32 + 128] <= 4294967296 and mem[_196 + 128 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32 + (32 * mem[_196 + mem[_196 + 128 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32 + 128]) + 32 <= return_data.size
                mem[_196 + ceil32(return_data.size) + 128] = mem[_196 + mem[_196 + 128 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32 + 128]
                _3098 = mem[_196 + _2688 + 128]
                t = 0
                while t < 32 * _3098:
                    mem[t + _196 + ceil32(return_data.size) + 160] = mem[t + _196 + _2688 + 160]
                    t = t + 32
                    continue 
                mem[64] = (32 * _3098) + _196 + ceil32(return_data.size) + 160
                require mem[_196 + ceil32(return_data.size) + 128] - 1 < mem[_196 + ceil32(return_data.size) + 128]
                if mem[(32 * mem[_196 + ceil32(return_data.size) + 128] - 1) + _196 + ceil32(return_data.size) + 160] <= s:
                    idx = idx + 1
                    s = s
                    continue 
                idx = idx + 1
                s = mem[(32 * mem[_196 + ceil32(return_data.size) + 128] - 1) + _196 + ceil32(return_data.size) + 160]
                continue 
            if 3 == idx:
                if 2 == idx:
                    _221 = mem[64]
                    mem[mem[64]] = 3
                    mem[64] = mem[64] + 128
                    require 0 < mem[_221]
                    mem[_221 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    require 1 < mem[_221]
                    mem[_221 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                    require 2 < mem[_221]
                    mem[_221 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    mem[_221 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_221 + 132] = 10^11 * sub_7d0b6809
                    mem[_221 + 164] = 64
                    mem[_221 + 196] = mem[_221]
                    t = 0
                    while t < 32 * mem[_221]:
                        mem[t + _221 + 228] = mem[t + _221 + 32]
                        t = t + 32
                        continue 
                    require ext_code.size(0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52)
                    staticcall 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args 10^11 * sub_7d0b6809, 64, mem[_221 + 196 len (32 * mem[_221]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_221 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _221 + ceil32(return_data.size) + 128
                    require return_data.size >= 32
                    _2698 = mem[_221 + 128 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32
                    require mem[_221 + 128 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32 <= 4294967296
                    require mem[_221 + 128 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32 + 32 <= return_data.size
                    require mem[_221 + mem[_221 + 128 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32 + 128] <= 4294967296 and mem[_221 + 128 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32 + (32 * mem[_221 + mem[_221 + 128 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32 + 128]) + 32 <= return_data.size
                    mem[_221 + ceil32(return_data.size) + 128] = mem[_221 + mem[_221 + 128 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32 + 128]
                    _3103 = mem[_221 + _2698 + 128]
                    t = 0
                    while t < 32 * _3103:
                        mem[t + _221 + ceil32(return_data.size) + 160] = mem[t + _221 + _2698 + 160]
                        t = t + 32
                        continue 
                    mem[64] = (32 * _3103) + _221 + ceil32(return_data.size) + 160
                    require mem[_221 + ceil32(return_data.size) + 128] - 1 < mem[_221 + ceil32(return_data.size) + 128]
                    if mem[(32 * mem[_221 + ceil32(return_data.size) + 128] - 1) + _221 + ceil32(return_data.size) + 160] <= s:
                        idx = idx + 1
                        s = s
                        continue 
                    idx = idx + 1
                    s = mem[(32 * mem[_221 + ceil32(return_data.size) + 128] - 1) + _221 + ceil32(return_data.size) + 160]
                    continue 
                if 3 == idx:
                    _247 = mem[64]
                    mem[mem[64]] = 3
                    mem[64] = mem[64] + 128
                    require 0 < mem[_247]
                    mem[_247 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    require 1 < mem[_247]
                    mem[_247 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                    require 2 < mem[_247]
                    mem[_247 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    mem[_247 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_247 + 132] = 10^11 * sub_7d0b6809
                    mem[_247 + 164] = 64
                    mem[_247 + 196] = mem[_247]
                    t = 0
                    while t < 32 * mem[_247]:
                        mem[t + _247 + 228] = mem[t + _247 + 32]
                        t = t + 32
                        continue 
                    require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                    staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c29.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args 10^11 * sub_7d0b6809, 64, mem[_247 + 196 len (32 * mem[_247]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_247 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _247 + ceil32(return_data.size) + 128
                    require return_data.size >= 32
                    _2696 = mem[_247 + 128 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32
                    require mem[_247 + 128 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32 <= 4294967296
                    require mem[_247 + 128 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32 + 32 <= return_data.size
                    require mem[_247 + mem[_247 + 128 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32 + 128] <= 4294967296 and mem[_247 + 128 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32 + (32 * mem[_247 + mem[_247 + 128 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32 + 128]) + 32 <= return_data.size
                    mem[_247 + ceil32(return_data.size) + 128] = mem[_247 + mem[_247 + 128 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32 + 128]
                    _3102 = mem[_247 + _2696 + 128]
                    t = 0
                    while t < 32 * _3102:
                        mem[t + _247 + ceil32(return_data.size) + 160] = mem[t + _247 + _2696 + 160]
                        t = t + 32
                        continue 
                    mem[64] = (32 * _3102) + _247 + ceil32(return_data.size) + 160
                    require mem[_247 + ceil32(return_data.size) + 128] - 1 < mem[_247 + ceil32(return_data.size) + 128]
                    if mem[(32 * mem[_247 + ceil32(return_data.size) + 128] - 1) + _247 + ceil32(return_data.size) + 160] <= s:
                        idx = idx + 1
                        s = s
                        continue 
                    idx = idx + 1
                    s = mem[(32 * mem[_247 + ceil32(return_data.size) + 128] - 1) + _247 + ceil32(return_data.size) + 160]
                    continue 
                if 4 == idx:
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
                    mem[_293 + 132] = 10^11 * sub_7d0b6809
                    mem[_293 + 164] = 64
                    mem[_293 + 196] = mem[_293]
                    t = 0
                    while t < 32 * mem[_293]:
                        mem[t + _293 + 228] = mem[t + _293 + 32]
                        t = t + 32
                        continue 
                    require ext_code.size(0x7b17021fcb7bc888641dc3bedfed3734fcaf2c87)
                    staticcall 0x7b17021fcb7bc888641dc3bedfed3734fcaf2c87.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args 10^11 * sub_7d0b6809, 64, mem[_293 + 196 len (32 * mem[_293]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_293 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _293 + ceil32(return_data.size) + 128
                    require return_data.size >= 32
                    _2694 = mem[_293 + 128 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32
                    require mem[_293 + 128 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32 <= 4294967296
                    require mem[_293 + 128 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32 + 32 <= return_data.size
                    require mem[_293 + mem[_293 + 128 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32 + 128] <= 4294967296 and mem[_293 + 128 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32 + (32 * mem[_293 + mem[_293 + 128 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32 + 128]) + 32 <= return_data.size
                    mem[_293 + ceil32(return_data.size) + 128] = mem[_293 + mem[_293 + 128 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32 + 128]
                    _3101 = mem[_293 + _2694 + 128]
                    t = 0
                    while t < 32 * _3101:
                        mem[t + _293 + ceil32(return_data.size) + 160] = mem[t + _293 + _2694 + 160]
                        t = t + 32
                        continue 
                    mem[64] = (32 * _3101) + _293 + ceil32(return_data.size) + 160
                    require mem[_293 + ceil32(return_data.size) + 128] - 1 < mem[_293 + ceil32(return_data.size) + 128]
                    if mem[(32 * mem[_293 + ceil32(return_data.size) + 128] - 1) + _293 + ceil32(return_data.size) + 160] <= s:
                        idx = idx + 1
                        s = s
                        continue 
                    idx = idx + 1
                    s = mem[(32 * mem[_293 + ceil32(return_data.size) + 128] - 1) + _293 + ceil32(return_data.size) + 160]
                    continue 
                if idx != 5:
                    _291 = mem[64]
                    mem[mem[64]] = 3
                    mem[64] = mem[64] + 128
                    require 0 < mem[_291]
                    mem[_291 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    require 1 < mem[_291]
                    mem[_291 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                    require 2 < mem[_291]
                    mem[_291 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    mem[_291 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_291 + 132] = 10^11 * sub_7d0b6809
                    mem[_291 + 164] = 64
                    mem[_291 + 196] = mem[_291]
                    t = 0
                    while t < 32 * mem[_291]:
                        mem[t + _291 + 228] = mem[t + _291 + 32]
                        t = t + 32
                        continue 
                    require ext_code.size(0)
                    staticcall 0x0.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args 10^11 * sub_7d0b6809, 64, mem[_291 + 196 len (32 * mem[_291]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_291 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _291 + ceil32(return_data.size) + 128
                    require return_data.size >= 32
                    _2690 = mem[_291 + 128 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32
                    require mem[_291 + 128 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32 <= 4294967296
                    require mem[_291 + 128 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32 + 32 <= return_data.size
                    require mem[_291 + mem[_291 + 128 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32 + 128] <= 4294967296 and mem[_291 + 128 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32 + (32 * mem[_291 + mem[_291 + 128 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32 + 128]) + 32 <= return_data.size
                    mem[_291 + ceil32(return_data.size) + 128] = mem[_291 + mem[_291 + 128 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32 + 128]
                    _3099 = mem[_291 + _2690 + 128]
                    t = 0
                    while t < 32 * _3099:
                        mem[t + _291 + ceil32(return_data.size) + 160] = mem[t + _291 + _2690 + 160]
                        t = t + 32
                        continue 
                    mem[64] = (32 * _3099) + _291 + ceil32(return_data.size) + 160
                    require mem[_291 + ceil32(return_data.size) + 128] - 1 < mem[_291 + ceil32(return_data.size) + 128]
                    if mem[(32 * mem[_291 + ceil32(return_data.size) + 128] - 1) + _291 + ceil32(return_data.size) + 160] <= s:
                        idx = idx + 1
                        s = s
                        continue 
                    idx = idx + 1
                    s = mem[(32 * mem[_291 + ceil32(return_data.size) + 128] - 1) + _291 + ceil32(return_data.size) + 160]
                    continue 
                _367 = mem[64]
                mem[mem[64]] = 3
                mem[64] = mem[64] + 128
                require 0 < mem[_367]
                mem[_367 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                require 1 < mem[_367]
                mem[_367 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                require 2 < mem[_367]
                mem[_367 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                mem[_367 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_367 + 132] = 10^11 * sub_7d0b6809
                mem[_367 + 164] = 64
                mem[_367 + 196] = mem[_367]
                t = 0
                while t < 32 * mem[_367]:
                    mem[t + _367 + 228] = mem[t + _367 + 32]
                    t = t + 32
                    continue 
                require ext_code.size(0x845e76a8691423fbc4ecb8dd77556cb61c09ee25)
                staticcall 0x845e76a8691423fbc4ecb8dd77556cb61c09ee25.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args 10^11 * sub_7d0b6809, 64, mem[_367 + 196 len (32 * mem[_367]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_367 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _367 + ceil32(return_data.size) + 128
                require return_data.size >= 32
                _2692 = mem[_367 + 128 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32
                require mem[_367 + 128 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32 <= 4294967296
                require mem[_367 + 128 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32 + 32 <= return_data.size
                require mem[_367 + mem[_367 + 128 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32 + 128] <= 4294967296 and mem[_367 + 128 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32 + (32 * mem[_367 + mem[_367 + 128 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32 + 128]) + 32 <= return_data.size
                mem[_367 + ceil32(return_data.size) + 128] = mem[_367 + mem[_367 + 128 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32 + 128]
                _3100 = mem[_367 + _2692 + 128]
                t = 0
                while t < 32 * _3100:
                    mem[t + _367 + ceil32(return_data.size) + 160] = mem[t + _367 + _2692 + 160]
                    t = t + 32
                    continue 
                mem[64] = (32 * _3100) + _367 + ceil32(return_data.size) + 160
                require mem[_367 + ceil32(return_data.size) + 128] - 1 < mem[_367 + ceil32(return_data.size) + 128]
                if mem[(32 * mem[_367 + ceil32(return_data.size) + 128] - 1) + _367 + ceil32(return_data.size) + 160] <= s:
                    idx = idx + 1
                    s = s
                    continue 
                idx = idx + 1
                s = mem[(32 * mem[_367 + ceil32(return_data.size) + 128] - 1) + _367 + ceil32(return_data.size) + 160]
                continue 
            if 4 == idx:
                if 2 == idx:
                    _250 = mem[64]
                    mem[mem[64]] = 3
                    mem[64] = mem[64] + 128
                    require 0 < mem[_250]
                    mem[_250 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    require 1 < mem[_250]
                    mem[_250 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                    require 2 < mem[_250]
                    mem[_250 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    mem[_250 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_250 + 132] = 10^11 * sub_7d0b6809
                    mem[_250 + 164] = 64
                    mem[_250 + 196] = mem[_250]
                    t = 0
                    while t < 32 * mem[_250]:
                        mem[t + _250 + 228] = mem[t + _250 + 32]
                        t = t + 32
                        continue 
                    require ext_code.size(0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52)
                    staticcall 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args 10^11 * sub_7d0b6809, 64, mem[_250 + 196 len (32 * mem[_250]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_250 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _250 + ceil32(return_data.size) + 128
                    require return_data.size >= 32
                    _2708 = mem[_250 + 128 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32
                    require mem[_250 + 128 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32 <= 4294967296
                    require mem[_250 + 128 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32 + 32 <= return_data.size
                    require mem[_250 + mem[_250 + 128 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32 + 128] <= 4294967296 and mem[_250 + 128 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32 + (32 * mem[_250 + mem[_250 + 128 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32 + 128]) + 32 <= return_data.size
                    mem[_250 + ceil32(return_data.size) + 128] = mem[_250 + mem[_250 + 128 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32 + 128]
                    _3108 = mem[_250 + _2708 + 128]
                    t = 0
                    while t < 32 * _3108:
                        mem[t + _250 + ceil32(return_data.size) + 160] = mem[t + _250 + _2708 + 160]
                        t = t + 32
                        continue 
                    mem[64] = (32 * _3108) + _250 + ceil32(return_data.size) + 160
                    require mem[_250 + ceil32(return_data.size) + 128] - 1 < mem[_250 + ceil32(return_data.size) + 128]
                    if mem[(32 * mem[_250 + ceil32(return_data.size) + 128] - 1) + _250 + ceil32(return_data.size) + 160] <= s:
                        idx = idx + 1
                        s = s
                        continue 
                    idx = idx + 1
                    s = mem[(32 * mem[_250 + ceil32(return_data.size) + 128] - 1) + _250 + ceil32(return_data.size) + 160]
                    continue 
                if 3 == idx:
                    _297 = mem[64]
                    mem[mem[64]] = 3
                    mem[64] = mem[64] + 128
                    require 0 < mem[_297]
                    mem[_297 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    require 1 < mem[_297]
                    mem[_297 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                    require 2 < mem[_297]
                    mem[_297 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    mem[_297 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_297 + 132] = 10^11 * sub_7d0b6809
                    mem[_297 + 164] = 64
                    mem[_297 + 196] = mem[_297]
                    t = 0
                    while t < 32 * mem[_297]:
                        mem[t + _297 + 228] = mem[t + _297 + 32]
                        t = t + 32
                        continue 
                    require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                    staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c29.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args 10^11 * sub_7d0b6809, 64, mem[_297 + 196 len (32 * mem[_297]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_297 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _297 + ceil32(return_data.size) + 128
                    require return_data.size >= 32
                    _2706 = mem[_297 + 128 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32
                    require mem[_297 + 128 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32 <= 4294967296
                    require mem[_297 + 128 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32 + 32 <= return_data.size
                    require mem[_297 + mem[_297 + 128 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32 + 128] <= 4294967296 and mem[_297 + 128 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32 + (32 * mem[_297 + mem[_297 + 128 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32 + 128]) + 32 <= return_data.size
                    mem[_297 + ceil32(return_data.size) + 128] = mem[_297 + mem[_297 + 128 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32 + 128]
                    _3107 = mem[_297 + _2706 + 128]
                    t = 0
                    while t < 32 * _3107:
                        mem[t + _297 + ceil32(return_data.size) + 160] = mem[t + _297 + _2706 + 160]
                        t = t + 32
                        continue 
                    mem[64] = (32 * _3107) + _297 + ceil32(return_data.size) + 160
                    require mem[_297 + ceil32(return_data.size) + 128] - 1 < mem[_297 + ceil32(return_data.size) + 128]
                    if mem[(32 * mem[_297 + ceil32(return_data.size) + 128] - 1) + _297 + ceil32(return_data.size) + 160] <= s:
                        idx = idx + 1
                        s = s
                        continue 
                    idx = idx + 1
                    s = mem[(32 * mem[_297 + ceil32(return_data.size) + 128] - 1) + _297 + ceil32(return_data.size) + 160]
                    continue 
                if 4 == idx:
                    _376 = mem[64]
                    mem[mem[64]] = 3
                    mem[64] = mem[64] + 128
                    require 0 < mem[_376]
                    mem[_376 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    require 1 < mem[_376]
                    mem[_376 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                    require 2 < mem[_376]
                    mem[_376 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    mem[_376 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_376 + 132] = 10^11 * sub_7d0b6809
                    mem[_376 + 164] = 64
                    mem[_376 + 196] = mem[_376]
                    t = 0
                    while t < 32 * mem[_376]:
                        mem[t + _376 + 228] = mem[t + _376 + 32]
                        t = t + 32
                        continue 
                    require ext_code.size(0x7b17021fcb7bc888641dc3bedfed3734fcaf2c87)
                    staticcall 0x7b17021fcb7bc888641dc3bedfed3734fcaf2c87.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args 10^11 * sub_7d0b6809, 64, mem[_376 + 196 len (32 * mem[_376]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_376 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _376 + ceil32(return_data.size) + 128
                    require return_data.size >= 32
                    _2704 = mem[_376 + 128 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32
                    require mem[_376 + 128 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32 <= 4294967296
                    require mem[_376 + 128 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32 + 32 <= return_data.size
                    require mem[_376 + mem[_376 + 128 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32 + 128] <= 4294967296 and mem[_376 + 128 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32 + (32 * mem[_376 + mem[_376 + 128 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32 + 128]) + 32 <= return_data.size
                    mem[_376 + ceil32(return_data.size) + 128] = mem[_376 + mem[_376 + 128 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32 + 128]
                    _3106 = mem[_376 + _2704 + 128]
                    t = 0
                    while t < 32 * _3106:
                        mem[t + _376 + ceil32(return_data.size) + 160] = mem[t + _376 + _2704 + 160]
                        t = t + 32
                        continue 
                    mem[64] = (32 * _3106) + _376 + ceil32(return_data.size) + 160
                    require mem[_376 + ceil32(return_data.size) + 128] - 1 < mem[_376 + ceil32(return_data.size) + 128]
                    if mem[(32 * mem[_376 + ceil32(return_data.size) + 128] - 1) + _376 + ceil32(return_data.size) + 160] <= s:
                        idx = idx + 1
                        s = s
                        continue 
                    idx = idx + 1
                    s = mem[(32 * mem[_376 + ceil32(return_data.size) + 128] - 1) + _376 + ceil32(return_data.size) + 160]
                    continue 
                if idx != 5:
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
                    mem[_374 + 132] = 10^11 * sub_7d0b6809
                    mem[_374 + 164] = 64
                    mem[_374 + 196] = mem[_374]
                    t = 0
                    while t < 32 * mem[_374]:
                        mem[t + _374 + 228] = mem[t + _374 + 32]
                        t = t + 32
                        continue 
                    require ext_code.size(0)
                    staticcall 0x0.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args 10^11 * sub_7d0b6809, 64, mem[_374 + 196 len (32 * mem[_374]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_374 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _374 + ceil32(return_data.size) + 128
                    require return_data.size >= 32
                    _2700 = mem[_374 + 128 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32
                    require mem[_374 + 128 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32 <= 4294967296
                    require mem[_374 + 128 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32 + 32 <= return_data.size
                    require mem[_374 + mem[_374 + 128 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32 + 128] <= 4294967296 and mem[_374 + 128 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32 + (32 * mem[_374 + mem[_374 + 128 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32 + 128]) + 32 <= return_data.size
                    mem[_374 + ceil32(return_data.size) + 128] = mem[_374 + mem[_374 + 128 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32 + 128]
                    _3104 = mem[_374 + _2700 + 128]
                    t = 0
                    while t < 32 * _3104:
                        mem[t + _374 + ceil32(return_data.size) + 160] = mem[t + _374 + _2700 + 160]
                        t = t + 32
                        continue 
                    mem[64] = (32 * _3104) + _374 + ceil32(return_data.size) + 160
                    require mem[_374 + ceil32(return_data.size) + 128] - 1 < mem[_374 + ceil32(return_data.size) + 128]
                    if mem[(32 * mem[_374 + ceil32(return_data.size) + 128] - 1) + _374 + ceil32(return_data.size) + 160] <= s:
                        idx = idx + 1
                        s = s
                        continue 
                    idx = idx + 1
                    s = mem[(32 * mem[_374 + ceil32(return_data.size) + 128] - 1) + _374 + ceil32(return_data.size) + 160]
                    continue 
                _461 = mem[64]
                mem[mem[64]] = 3
                mem[64] = mem[64] + 128
                require 0 < mem[_461]
                mem[_461 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                require 1 < mem[_461]
                mem[_461 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                require 2 < mem[_461]
                mem[_461 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                mem[_461 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_461 + 132] = 10^11 * sub_7d0b6809
                mem[_461 + 164] = 64
                mem[_461 + 196] = mem[_461]
                t = 0
                while t < 32 * mem[_461]:
                    mem[t + _461 + 228] = mem[t + _461 + 32]
                    t = t + 32
                    continue 
                require ext_code.size(0x845e76a8691423fbc4ecb8dd77556cb61c09ee25)
                staticcall 0x845e76a8691423fbc4ecb8dd77556cb61c09ee25.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args 10^11 * sub_7d0b6809, 64, mem[_461 + 196 len (32 * mem[_461]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_461 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _461 + ceil32(return_data.size) + 128
                require return_data.size >= 32
                _2702 = mem[_461 + 128 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32
                require mem[_461 + 128 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32 <= 4294967296
                require mem[_461 + 128 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32 + 32 <= return_data.size
                require mem[_461 + mem[_461 + 128 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32 + 128] <= 4294967296 and mem[_461 + 128 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32 + (32 * mem[_461 + mem[_461 + 128 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32 + 128]) + 32 <= return_data.size
                mem[_461 + ceil32(return_data.size) + 128] = mem[_461 + mem[_461 + 128 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32 + 128]
                _3105 = mem[_461 + _2702 + 128]
                t = 0
                while t < 32 * _3105:
                    mem[t + _461 + ceil32(return_data.size) + 160] = mem[t + _461 + _2702 + 160]
                    t = t + 32
                    continue 
                mem[64] = (32 * _3105) + _461 + ceil32(return_data.size) + 160
                require mem[_461 + ceil32(return_data.size) + 128] - 1 < mem[_461 + ceil32(return_data.size) + 128]
                if mem[(32 * mem[_461 + ceil32(return_data.size) + 128] - 1) + _461 + ceil32(return_data.size) + 160] <= s:
                    idx = idx + 1
                    s = s
                    continue 
                idx = idx + 1
                s = mem[(32 * mem[_461 + ceil32(return_data.size) + 128] - 1) + _461 + ceil32(return_data.size) + 160]
                continue 
            if 5 == idx:
                if 2 == idx:
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
                    mem[_302 + 132] = 10^11 * sub_7d0b6809
                    mem[_302 + 164] = 64
                    mem[_302 + 196] = mem[_302]
                    t = 0
                    while t < 32 * mem[_302]:
                        mem[t + _302 + 228] = mem[t + _302 + 32]
                        t = t + 32
                        continue 
                    require ext_code.size(0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52)
                    staticcall 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args 10^11 * sub_7d0b6809, 64, mem[_302 + 196 len (32 * mem[_302]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_302 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _302 + ceil32(return_data.size) + 128
                    require return_data.size >= 32
                    _2740 = mem[_302 + 128 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32
                    require mem[_302 + 128 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32 <= 4294967296
                    require mem[_302 + 128 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32 + 32 <= return_data.size
                    require mem[_302 + mem[_302 + 128 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32 + 128] <= 4294967296 and mem[_302 + 128 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32 + (32 * mem[_302 + mem[_302 + 128 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32 + 128]) + 32 <= return_data.size
                    mem[_302 + ceil32(return_data.size) + 128] = mem[_302 + mem[_302 + 128 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32 + 128]
                    _3124 = mem[_302 + _2740 + 128]
                    t = 0
                    while t < 32 * _3124:
                        mem[t + _302 + ceil32(return_data.size) + 160] = mem[t + _302 + _2740 + 160]
                        t = t + 32
                        continue 
                    mem[64] = (32 * _3124) + _302 + ceil32(return_data.size) + 160
                    require mem[_302 + ceil32(return_data.size) + 128] - 1 < mem[_302 + ceil32(return_data.size) + 128]
                    if mem[(32 * mem[_302 + ceil32(return_data.size) + 128] - 1) + _302 + ceil32(return_data.size) + 160] <= s:
                        idx = idx + 1
                        s = s
                        continue 
                    idx = idx + 1
                    s = mem[(32 * mem[_302 + ceil32(return_data.size) + 128] - 1) + _302 + ceil32(return_data.size) + 160]
                    continue 
                if 3 == idx:
                    _383 = mem[64]
                    mem[mem[64]] = 3
                    mem[64] = mem[64] + 128
                    require 0 < mem[_383]
                    mem[_383 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    require 1 < mem[_383]
                    mem[_383 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                    require 2 < mem[_383]
                    mem[_383 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    mem[_383 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_383 + 132] = 10^11 * sub_7d0b6809
                    mem[_383 + 164] = 64
                    mem[_383 + 196] = mem[_383]
                    t = 0
                    while t < 32 * mem[_383]:
                        mem[t + _383 + 228] = mem[t + _383 + 32]
                        t = t + 32
                        continue 
                    require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                    staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c29.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args 10^11 * sub_7d0b6809, 64, mem[_383 + 196 len (32 * mem[_383]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_383 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _383 + ceil32(return_data.size) + 128
                    require return_data.size >= 32
                    _2738 = mem[_383 + 128 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32
                    require mem[_383 + 128 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32 <= 4294967296
                    require mem[_383 + 128 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32 + 32 <= return_data.size
                    require mem[_383 + mem[_383 + 128 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32 + 128] <= 4294967296 and mem[_383 + 128 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32 + (32 * mem[_383 + mem[_383 + 128 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32 + 128]) + 32 <= return_data.size
                    mem[_383 + ceil32(return_data.size) + 128] = mem[_383 + mem[_383 + 128 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32 + 128]
                    _3123 = mem[_383 + _2738 + 128]
                    t = 0
                    while t < 32 * _3123:
                        mem[t + _383 + ceil32(return_data.size) + 160] = mem[t + _383 + _2738 + 160]
                        t = t + 32
                        continue 
                    mem[64] = (32 * _3123) + _383 + ceil32(return_data.size) + 160
                    require mem[_383 + ceil32(return_data.size) + 128] - 1 < mem[_383 + ceil32(return_data.size) + 128]
                    if mem[(32 * mem[_383 + ceil32(return_data.size) + 128] - 1) + _383 + ceil32(return_data.size) + 160] <= s:
                        idx = idx + 1
                        s = s
                        continue 
                    idx = idx + 1
                    s = mem[(32 * mem[_383 + ceil32(return_data.size) + 128] - 1) + _383 + ceil32(return_data.size) + 160]
                    continue 
                if 4 == idx:
                    _474 = mem[64]
                    mem[mem[64]] = 3
                    mem[64] = mem[64] + 128
                    require 0 < mem[_474]
                    mem[_474 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    require 1 < mem[_474]
                    mem[_474 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                    require 2 < mem[_474]
                    mem[_474 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    mem[_474 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_474 + 132] = 10^11 * sub_7d0b6809
                    mem[_474 + 164] = 64
                    mem[_474 + 196] = mem[_474]
                    t = 0
                    while t < 32 * mem[_474]:
                        mem[t + _474 + 228] = mem[t + _474 + 32]
                        t = t + 32
                        continue 
                    require ext_code.size(0x7b17021fcb7bc888641dc3bedfed3734fcaf2c87)
                    staticcall 0x7b17021fcb7bc888641dc3bedfed3734fcaf2c87.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args 10^11 * sub_7d0b6809, 64, mem[_474 + 196 len (32 * mem[_474]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_474 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _474 + ceil32(return_data.size) + 128
                    require return_data.size >= 32
                    _2736 = mem[_474 + 128 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32
                    require mem[_474 + 128 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32 <= 4294967296
                    require mem[_474 + 128 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32 + 32 <= return_data.size
                    require mem[_474 + mem[_474 + 128 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32 + 128] <= 4294967296 and mem[_474 + 128 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32 + (32 * mem[_474 + mem[_474 + 128 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32 + 128]) + 32 <= return_data.size
                    mem[_474 + ceil32(return_data.size) + 128] = mem[_474 + mem[_474 + 128 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32 + 128]
                    _3122 = mem[_474 + _2736 + 128]
                    t = 0
                    while t < 32 * _3122:
                        mem[t + _474 + ceil32(return_data.size) + 160] = mem[t + _474 + _2736 + 160]
                        t = t + 32
                        continue 
                    mem[64] = (32 * _3122) + _474 + ceil32(return_data.size) + 160
                    require mem[_474 + ceil32(return_data.size) + 128] - 1 < mem[_474 + ceil32(return_data.size) + 128]
                    if mem[(32 * mem[_474 + ceil32(return_data.size) + 128] - 1) + _474 + ceil32(return_data.size) + 160] <= s:
                        idx = idx + 1
                        s = s
                        continue 
                    idx = idx + 1
                    s = mem[(32 * mem[_474 + ceil32(return_data.size) + 128] - 1) + _474 + ceil32(return_data.size) + 160]
                    continue 
                if idx != 5:
                    _472 = mem[64]
                    mem[mem[64]] = 3
                    mem[64] = mem[64] + 128
                    require 0 < mem[_472]
                    mem[_472 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    require 1 < mem[_472]
                    mem[_472 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                    require 2 < mem[_472]
                    mem[_472 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    mem[_472 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_472 + 132] = 10^11 * sub_7d0b6809
                    mem[_472 + 164] = 64
                    mem[_472 + 196] = mem[_472]
                    t = 0
                    while t < 32 * mem[_472]:
                        mem[t + _472 + 228] = mem[t + _472 + 32]
                        t = t + 32
                        continue 
                    require ext_code.size(0)
                    staticcall 0x0.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args 10^11 * sub_7d0b6809, 64, mem[_472 + 196 len (32 * mem[_472]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_472 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _472 + ceil32(return_data.size) + 128
                    require return_data.size >= 32
                    _2732 = mem[_472 + 128 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32
                    require mem[_472 + 128 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32 <= 4294967296
                    require mem[_472 + 128 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32 + 32 <= return_data.size
                    require mem[_472 + mem[_472 + 128 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32 + 128] <= 4294967296 and mem[_472 + 128 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32 + (32 * mem[_472 + mem[_472 + 128 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32 + 128]) + 32 <= return_data.size
                    mem[_472 + ceil32(return_data.size) + 128] = mem[_472 + mem[_472 + 128 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32 + 128]
                    _3120 = mem[_472 + _2732 + 128]
                    t = 0
                    while t < 32 * _3120:
                        mem[t + _472 + ceil32(return_data.size) + 160] = mem[t + _472 + _2732 + 160]
                        t = t + 32
                        continue 
                    mem[64] = (32 * _3120) + _472 + ceil32(return_data.size) + 160
                    require mem[_472 + ceil32(return_data.size) + 128] - 1 < mem[_472 + ceil32(return_data.size) + 128]
                    if mem[(32 * mem[_472 + ceil32(return_data.size) + 128] - 1) + _472 + ceil32(return_data.size) + 160] <= s:
                        idx = idx + 1
                        s = s
                        continue 
                    idx = idx + 1
                    s = mem[(32 * mem[_472 + ceil32(return_data.size) + 128] - 1) + _472 + ceil32(return_data.size) + 160]
                    continue 
                _575 = mem[64]
                mem[mem[64]] = 3
                mem[64] = mem[64] + 128
                require 0 < mem[_575]
                mem[_575 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                require 1 < mem[_575]
                mem[_575 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                require 2 < mem[_575]
                mem[_575 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                mem[_575 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_575 + 132] = 10^11 * sub_7d0b6809
                mem[_575 + 164] = 64
                mem[_575 + 196] = mem[_575]
                t = 0
                while t < 32 * mem[_575]:
                    mem[t + _575 + 228] = mem[t + _575 + 32]
                    t = t + 32
                    continue 
                require ext_code.size(0x845e76a8691423fbc4ecb8dd77556cb61c09ee25)
                staticcall 0x845e76a8691423fbc4ecb8dd77556cb61c09ee25.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args 10^11 * sub_7d0b6809, 64, mem[_575 + 196 len (32 * mem[_575]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_575 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _575 + ceil32(return_data.size) + 128
                require return_data.size >= 32
                _2734 = mem[_575 + 128 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32
                require mem[_575 + 128 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32 <= 4294967296
                require mem[_575 + 128 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32 + 32 <= return_data.size
                require mem[_575 + mem[_575 + 128 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32 + 128] <= 4294967296 and mem[_575 + 128 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32 + (32 * mem[_575 + mem[_575 + 128 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32 + 128]) + 32 <= return_data.size
                mem[_575 + ceil32(return_data.size) + 128] = mem[_575 + mem[_575 + 128 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32 + 128]
                _3121 = mem[_575 + _2734 + 128]
                t = 0
                while t < 32 * _3121:
                    mem[t + _575 + ceil32(return_data.size) + 160] = mem[t + _575 + _2734 + 160]
                    t = t + 32
                    continue 
                mem[64] = (32 * _3121) + _575 + ceil32(return_data.size) + 160
                require mem[_575 + ceil32(return_data.size) + 128] - 1 < mem[_575 + ceil32(return_data.size) + 128]
                if mem[(32 * mem[_575 + ceil32(return_data.size) + 128] - 1) + _575 + ceil32(return_data.size) + 160] <= s:
                    idx = idx + 1
                    s = s
                    continue 
                idx = idx + 1
                s = mem[(32 * mem[_575 + ceil32(return_data.size) + 128] - 1) + _575 + ceil32(return_data.size) + 160]
                continue 
            if idx != 6:
                if 7 == idx:
                    _675 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    require 0 < mem[_675]
                    mem[_675 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    require 1 < mem[_675]
                    mem[_675 + 64] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    mem[_675 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_675 + 100] = 10^11 * sub_7d0b6809
                    mem[_675 + 132] = 64
                    mem[_675 + 164] = mem[_675]
                    t = 0
                    while t < 32 * mem[_675]:
                        mem[t + _675 + 196] = mem[t + _675 + 32]
                        t = t + 32
                        continue 
                    require ext_code.size(0x845e76a8691423fbc4ecb8dd77556cb61c09ee25)
                    staticcall 0x845e76a8691423fbc4ecb8dd77556cb61c09ee25.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args 10^11 * sub_7d0b6809, 64, mem[_675 + 164 len (32 * mem[_675]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_675 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _675 + ceil32(return_data.size) + 96
                    require return_data.size >= 32
                    _2710 = mem[_675 + 96 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32
                    require mem[_675 + 96 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32 <= 4294967296
                    require mem[_675 + 96 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32 + 32 <= return_data.size
                    require mem[_675 + mem[_675 + 96 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32 + 96] <= 4294967296 and mem[_675 + 96 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32 + (32 * mem[_675 + mem[_675 + 96 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32 + 96]) + 32 <= return_data.size
                    mem[_675 + ceil32(return_data.size) + 96] = mem[_675 + mem[_675 + 96 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32 + 96]
                    _3109 = mem[_675 + _2710 + 96]
                    t = 0
                    while t < 32 * _3109:
                        mem[t + _675 + ceil32(return_data.size) + 128] = mem[t + _675 + _2710 + 128]
                        t = t + 32
                        continue 
                    mem[64] = (32 * _3109) + _675 + ceil32(return_data.size) + 128
                    require mem[_675 + ceil32(return_data.size) + 96] - 1 < mem[_675 + ceil32(return_data.size) + 96]
                    if mem[(32 * mem[_675 + ceil32(return_data.size) + 96] - 1) + _675 + ceil32(return_data.size) + 128] <= s:
                        idx = idx + 1
                        s = s
                        continue 
                    idx = idx + 1
                    s = mem[(32 * mem[_675 + ceil32(return_data.size) + 96] - 1) + _675 + ceil32(return_data.size) + 128]
                    continue 
                if 8 == idx:
                    if 7 == idx:
                        _773 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        require 0 < mem[_773]
                        mem[_773 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                        require 1 < mem[_773]
                        mem[_773 + 64] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                        mem[_773 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[_773 + 100] = 10^11 * sub_7d0b6809
                        mem[_773 + 132] = 64
                        mem[_773 + 164] = mem[_773]
                        t = 0
                        while t < 32 * mem[_773]:
                            mem[t + _773 + 196] = mem[t + _773 + 32]
                            t = t + 32
                            continue 
                        require ext_code.size(0x845e76a8691423fbc4ecb8dd77556cb61c09ee25)
                        staticcall 0x845e76a8691423fbc4ecb8dd77556cb61c09ee25.getAmountsOut(uint256 arg1, address[] arg2) with:
                                gas gas_remaining wei
                               args 10^11 * sub_7d0b6809, 64, mem[_773 + 164 len (32 * mem[_773]) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_773 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = _773 + ceil32(return_data.size) + 96
                        require return_data.size >= 32
                        _2718 = mem[_773 + 96 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32
                        require mem[_773 + 96 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32 <= 4294967296
                        require mem[_773 + 96 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32 + 32 <= return_data.size
                        require mem[_773 + mem[_773 + 96 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32 + 96] <= 4294967296 and mem[_773 + 96 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32 + (32 * mem[_773 + mem[_773 + 96 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32 + 96]) + 32 <= return_data.size
                        mem[_773 + ceil32(return_data.size) + 96] = mem[_773 + mem[_773 + 96 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32 + 96]
                        _3113 = mem[_773 + _2718 + 96]
                        t = 0
                        while t < 32 * _3113:
                            mem[t + _773 + ceil32(return_data.size) + 128] = mem[t + _773 + _2718 + 128]
                            t = t + 32
                            continue 
                        mem[64] = (32 * _3113) + _773 + ceil32(return_data.size) + 128
                        require mem[_773 + ceil32(return_data.size) + 96] - 1 < mem[_773 + ceil32(return_data.size) + 96]
                        if mem[(32 * mem[_773 + ceil32(return_data.size) + 96] - 1) + _773 + ceil32(return_data.size) + 128] <= s:
                            idx = idx + 1
                            s = s
                            continue 
                        idx = idx + 1
                        s = mem[(32 * mem[_773 + ceil32(return_data.size) + 96] - 1) + _773 + ceil32(return_data.size) + 128]
                        continue 
                    if 8 == idx:
                        _887 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        require 0 < mem[_887]
                        mem[_887 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                        require 1 < mem[_887]
                        mem[_887 + 64] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                        mem[_887 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[_887 + 100] = 10^11 * sub_7d0b6809
                        mem[_887 + 132] = 64
                        mem[_887 + 164] = mem[_887]
                        t = 0
                        while t < 32 * mem[_887]:
                            mem[t + _887 + 196] = mem[t + _887 + 32]
                            t = t + 32
                            continue 
                        require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                        staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c29.getAmountsOut(uint256 arg1, address[] arg2) with:
                                gas gas_remaining wei
                               args 10^11 * sub_7d0b6809, 64, mem[_887 + 164 len (32 * mem[_887]) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_887 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = _887 + ceil32(return_data.size) + 96
                        require return_data.size >= 32
                        _2716 = mem[_887 + 96 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32
                        require mem[_887 + 96 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32 <= 4294967296
                        require mem[_887 + 96 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32 + 32 <= return_data.size
                        require mem[_887 + mem[_887 + 96 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32 + 96] <= 4294967296 and mem[_887 + 96 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32 + (32 * mem[_887 + mem[_887 + 96 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32 + 96]) + 32 <= return_data.size
                        mem[_887 + ceil32(return_data.size) + 96] = mem[_887 + mem[_887 + 96 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32 + 96]
                        _3112 = mem[_887 + _2716 + 96]
                        t = 0
                        while t < 32 * _3112:
                            mem[t + _887 + ceil32(return_data.size) + 128] = mem[t + _887 + _2716 + 128]
                            t = t + 32
                            continue 
                        mem[64] = (32 * _3112) + _887 + ceil32(return_data.size) + 128
                        require mem[_887 + ceil32(return_data.size) + 96] - 1 < mem[_887 + ceil32(return_data.size) + 96]
                        if mem[(32 * mem[_887 + ceil32(return_data.size) + 96] - 1) + _887 + ceil32(return_data.size) + 128] <= s:
                            idx = idx + 1
                            s = s
                            continue 
                        idx = idx + 1
                        s = mem[(32 * mem[_887 + ceil32(return_data.size) + 96] - 1) + _887 + ceil32(return_data.size) + 128]
                        continue 
                    if idx != 9:
                        _885 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        require 0 < mem[_885]
                        mem[_885 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                        require 1 < mem[_885]
                        mem[_885 + 64] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                        mem[_885 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[_885 + 100] = 10^11 * sub_7d0b6809
                        mem[_885 + 132] = 64
                        mem[_885 + 164] = mem[_885]
                        t = 0
                        while t < 32 * mem[_885]:
                            mem[t + _885 + 196] = mem[t + _885 + 32]
                            t = t + 32
                            continue 
                        require ext_code.size(0)
                        staticcall 0x0.getAmountsOut(uint256 arg1, address[] arg2) with:
                                gas gas_remaining wei
                               args 10^11 * sub_7d0b6809, 64, mem[_885 + 164 len (32 * mem[_885]) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_885 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = _885 + ceil32(return_data.size) + 96
                        require return_data.size >= 32
                        _2712 = mem[_885 + 96 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32
                        require mem[_885 + 96 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32 <= 4294967296
                        require mem[_885 + 96 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32 + 32 <= return_data.size
                        require mem[_885 + mem[_885 + 96 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32 + 96] <= 4294967296 and mem[_885 + 96 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32 + (32 * mem[_885 + mem[_885 + 96 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32 + 96]) + 32 <= return_data.size
                        mem[_885 + ceil32(return_data.size) + 96] = mem[_885 + mem[_885 + 96 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32 + 96]
                        _3110 = mem[_885 + _2712 + 96]
                        t = 0
                        while t < 32 * _3110:
                            mem[t + _885 + ceil32(return_data.size) + 128] = mem[t + _885 + _2712 + 128]
                            t = t + 32
                            continue 
                        mem[64] = (32 * _3110) + _885 + ceil32(return_data.size) + 128
                        require mem[_885 + ceil32(return_data.size) + 96] - 1 < mem[_885 + ceil32(return_data.size) + 96]
                        if mem[(32 * mem[_885 + ceil32(return_data.size) + 96] - 1) + _885 + ceil32(return_data.size) + 128] <= s:
                            idx = idx + 1
                            s = s
                            continue 
                        idx = idx + 1
                        s = mem[(32 * mem[_885 + ceil32(return_data.size) + 96] - 1) + _885 + ceil32(return_data.size) + 128]
                        continue 
                    _995 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    require 0 < mem[_995]
                    mem[_995 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    require 1 < mem[_995]
                    mem[_995 + 64] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    mem[_995 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_995 + 100] = 10^11 * sub_7d0b6809
                    mem[_995 + 132] = 64
                    mem[_995 + 164] = mem[_995]
                    t = 0
                    while t < 32 * mem[_995]:
                        mem[t + _995 + 196] = mem[t + _995 + 32]
                        t = t + 32
                        continue 
                    require ext_code.size(0x6b3d631b87fe27af29efec61d2ab8ce4d621ccbf)
                    staticcall 0x6b3d631b87fe27af29efec61d2ab8ce4d621ccbf.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args 10^11 * sub_7d0b6809, 64, mem[_995 + 164 len (32 * mem[_995]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_995 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _995 + ceil32(return_data.size) + 96
                    require return_data.size >= 32
                    _2714 = mem[_995 + 96 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32
                    require mem[_995 + 96 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32 <= 4294967296
                    require mem[_995 + 96 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32 + 32 <= return_data.size
                    require mem[_995 + mem[_995 + 96 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32 + 96] <= 4294967296 and mem[_995 + 96 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32 + (32 * mem[_995 + mem[_995 + 96 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32 + 96]) + 32 <= return_data.size
                    mem[_995 + ceil32(return_data.size) + 96] = mem[_995 + mem[_995 + 96 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32 + 96]
                    _3111 = mem[_995 + _2714 + 96]
                    t = 0
                    while t < 32 * _3111:
                        mem[t + _995 + ceil32(return_data.size) + 128] = mem[t + _995 + _2714 + 128]
                        t = t + 32
                        continue 
                    mem[64] = (32 * _3111) + _995 + ceil32(return_data.size) + 128
                    require mem[_995 + ceil32(return_data.size) + 96] - 1 < mem[_995 + ceil32(return_data.size) + 96]
                    if mem[(32 * mem[_995 + ceil32(return_data.size) + 96] - 1) + _995 + ceil32(return_data.size) + 128] <= s:
                        idx = idx + 1
                        s = s
                        continue 
                    idx = idx + 1
                    s = mem[(32 * mem[_995 + ceil32(return_data.size) + 96] - 1) + _995 + ceil32(return_data.size) + 128]
                    continue 
                if idx != 9:
                    if idx != 10:
                        if 10^11 * sub_7d0b6809 <= s:
                            idx = idx + 1
                            s = s
                            continue 
                        idx = idx + 1
                        s = 10^11 * sub_7d0b6809
                        continue 
                    mem[mem[64] + 4] = 0
                    mem[mem[64] + 36] = 1
                    mem[mem[64] + 68] = 10^11 * sub_7d0b6809
                    require ext_code.size(0x952bda8a83c3d5f398a686bb4e8c6dd90072d523)
                    staticcall 0x952bda8a83c3d5f398a686bb4e8c6dd90072d523.calculateSwap(uint8 arg1, uint8 arg2, uint256 arg3) with:
                            gas gas_remaining wei
                           args 0, 1, 10^11 * sub_7d0b6809
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
                if 7 == idx:
                    _892 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    require 0 < mem[_892]
                    mem[_892 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    require 1 < mem[_892]
                    mem[_892 + 64] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    mem[_892 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_892 + 100] = 10^11 * sub_7d0b6809
                    mem[_892 + 132] = 64
                    mem[_892 + 164] = mem[_892]
                    t = 0
                    while t < 32 * mem[_892]:
                        mem[t + _892 + 196] = mem[t + _892 + 32]
                        t = t + 32
                        continue 
                    require ext_code.size(0x845e76a8691423fbc4ecb8dd77556cb61c09ee25)
                    staticcall 0x845e76a8691423fbc4ecb8dd77556cb61c09ee25.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args 10^11 * sub_7d0b6809, 64, mem[_892 + 164 len (32 * mem[_892]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_892 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _892 + ceil32(return_data.size) + 96
                    require return_data.size >= 32
                    _2726 = mem[_892 + 96 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32
                    require mem[_892 + 96 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32 <= 4294967296
                    require mem[_892 + 96 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32 + 32 <= return_data.size
                    require mem[_892 + mem[_892 + 96 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32 + 96] <= 4294967296 and mem[_892 + 96 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32 + (32 * mem[_892 + mem[_892 + 96 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32 + 96]) + 32 <= return_data.size
                    mem[_892 + ceil32(return_data.size) + 96] = mem[_892 + mem[_892 + 96 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32 + 96]
                    _3117 = mem[_892 + _2726 + 96]
                    t = 0
                    while t < 32 * _3117:
                        mem[t + _892 + ceil32(return_data.size) + 128] = mem[t + _892 + _2726 + 128]
                        t = t + 32
                        continue 
                    mem[64] = (32 * _3117) + _892 + ceil32(return_data.size) + 128
                    require mem[_892 + ceil32(return_data.size) + 96] - 1 < mem[_892 + ceil32(return_data.size) + 96]
                    if mem[(32 * mem[_892 + ceil32(return_data.size) + 96] - 1) + _892 + ceil32(return_data.size) + 128] <= s:
                        idx = idx + 1
                        s = s
                        continue 
                    idx = idx + 1
                    s = mem[(32 * mem[_892 + ceil32(return_data.size) + 96] - 1) + _892 + ceil32(return_data.size) + 128]
                    continue 
                if 8 == idx:
                    _1005 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    require 0 < mem[_1005]
                    mem[_1005 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    require 1 < mem[_1005]
                    mem[_1005 + 64] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    mem[_1005 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_1005 + 100] = 10^11 * sub_7d0b6809
                    mem[_1005 + 132] = 64
                    mem[_1005 + 164] = mem[_1005]
                    t = 0
                    while t < 32 * mem[_1005]:
                        mem[t + _1005 + 196] = mem[t + _1005 + 32]
                        t = t + 32
                        continue 
                    require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                    staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c29.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args 10^11 * sub_7d0b6809, 64, mem[_1005 + 164 len (32 * mem[_1005]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_1005 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _1005 + ceil32(return_data.size) + 96
                    require return_data.size >= 32
                    _2724 = mem[_1005 + 96 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32
                    require mem[_1005 + 96 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32 <= 4294967296
                    require mem[_1005 + 96 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32 + 32 <= return_data.size
                    require mem[_1005 + mem[_1005 + 96 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32 + 96] <= 4294967296 and mem[_1005 + 96 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32 + (32 * mem[_1005 + mem[_1005 + 96 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32 + 96]) + 32 <= return_data.size
                    mem[_1005 + ceil32(return_data.size) + 96] = mem[_1005 + mem[_1005 + 96 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32 + 96]
                    _3116 = mem[_1005 + _2724 + 96]
                    t = 0
                    while t < 32 * _3116:
                        mem[t + _1005 + ceil32(return_data.size) + 128] = mem[t + _1005 + _2724 + 128]
                        t = t + 32
                        continue 
                    mem[64] = (32 * _3116) + _1005 + ceil32(return_data.size) + 128
                    require mem[_1005 + ceil32(return_data.size) + 96] - 1 < mem[_1005 + ceil32(return_data.size) + 96]
                    if mem[(32 * mem[_1005 + ceil32(return_data.size) + 96] - 1) + _1005 + ceil32(return_data.size) + 128] <= s:
                        idx = idx + 1
                        s = s
                        continue 
                    idx = idx + 1
                    s = mem[(32 * mem[_1005 + ceil32(return_data.size) + 96] - 1) + _1005 + ceil32(return_data.size) + 128]
                    continue 
                if idx != 9:
                    _1003 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    require 0 < mem[_1003]
                    mem[_1003 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    require 1 < mem[_1003]
                    mem[_1003 + 64] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    mem[_1003 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_1003 + 100] = 10^11 * sub_7d0b6809
                    mem[_1003 + 132] = 64
                    mem[_1003 + 164] = mem[_1003]
                    t = 0
                    while t < 32 * mem[_1003]:
                        mem[t + _1003 + 196] = mem[t + _1003 + 32]
                        t = t + 32
                        continue 
                    require ext_code.size(0)
                    staticcall 0x0.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args 10^11 * sub_7d0b6809, 64, mem[_1003 + 164 len (32 * mem[_1003]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_1003 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _1003 + ceil32(return_data.size) + 96
                    require return_data.size >= 32
                    _2720 = mem[_1003 + 96 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32
                    require mem[_1003 + 96 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32 <= 4294967296
                    require mem[_1003 + 96 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32 + 32 <= return_data.size
                    require mem[_1003 + mem[_1003 + 96 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32 + 96] <= 4294967296 and mem[_1003 + 96 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32 + (32 * mem[_1003 + mem[_1003 + 96 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32 + 96]) + 32 <= return_data.size
                    mem[_1003 + ceil32(return_data.size) + 96] = mem[_1003 + mem[_1003 + 96 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32 + 96]
                    _3114 = mem[_1003 + _2720 + 96]
                    t = 0
                    while t < 32 * _3114:
                        mem[t + _1003 + ceil32(return_data.size) + 128] = mem[t + _1003 + _2720 + 128]
                        t = t + 32
                        continue 
                    mem[64] = (32 * _3114) + _1003 + ceil32(return_data.size) + 128
                    require mem[_1003 + ceil32(return_data.size) + 96] - 1 < mem[_1003 + ceil32(return_data.size) + 96]
                    if mem[(32 * mem[_1003 + ceil32(return_data.size) + 96] - 1) + _1003 + ceil32(return_data.size) + 128] <= s:
                        idx = idx + 1
                        s = s
                        continue 
                    idx = idx + 1
                    s = mem[(32 * mem[_1003 + ceil32(return_data.size) + 96] - 1) + _1003 + ceil32(return_data.size) + 128]
                    continue 
                _1134 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                require 0 < mem[_1134]
                mem[_1134 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                require 1 < mem[_1134]
                mem[_1134 + 64] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                mem[_1134 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_1134 + 100] = 10^11 * sub_7d0b6809
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
                       args 10^11 * sub_7d0b6809, 64, mem[_1134 + 164 len (32 * mem[_1134]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_1134 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _1134 + ceil32(return_data.size) + 96
                require return_data.size >= 32
                _2722 = mem[_1134 + 96 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32
                require mem[_1134 + 96 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32 <= 4294967296
                require mem[_1134 + 96 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32 + 32 <= return_data.size
                require mem[_1134 + mem[_1134 + 96 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32 + 96] <= 4294967296 and mem[_1134 + 96 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32 + (32 * mem[_1134 + mem[_1134 + 96 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32 + 96]) + 32 <= return_data.size
                mem[_1134 + ceil32(return_data.size) + 96] = mem[_1134 + mem[_1134 + 96 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32 + 96]
                _3115 = mem[_1134 + _2722 + 96]
                t = 0
                while t < 32 * _3115:
                    mem[t + _1134 + ceil32(return_data.size) + 128] = mem[t + _1134 + _2722 + 128]
                    t = t + 32
                    continue 
                mem[64] = (32 * _3115) + _1134 + ceil32(return_data.size) + 128
                require mem[_1134 + ceil32(return_data.size) + 96] - 1 < mem[_1134 + ceil32(return_data.size) + 96]
                if mem[(32 * mem[_1134 + ceil32(return_data.size) + 96] - 1) + _1134 + ceil32(return_data.size) + 128] <= s:
                    idx = idx + 1
                    s = s
                    continue 
                idx = idx + 1
                s = mem[(32 * mem[_1134 + ceil32(return_data.size) + 96] - 1) + _1134 + ceil32(return_data.size) + 128]
                continue 
            _300 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            require 0 < mem[_300]
            mem[_300 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
            require 1 < mem[_300]
            mem[_300 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
            mem[_300 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[_300 + 100] = 10^11 * sub_7d0b6809
            mem[_300 + 132] = 64
            mem[_300 + 164] = mem[_300]
            t = 0
            while t < 32 * mem[_300]:
                mem[t + _300 + 196] = mem[t + _300 + 32]
                t = t + 32
                continue 
            require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
            staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c29.getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args 10^11 * sub_7d0b6809, 64, mem[_300 + 164 len (32 * mem[_300]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[_300 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = _300 + ceil32(return_data.size) + 96
            require return_data.size >= 32
            _2728 = mem[_300 + 96 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32
            require mem[_300 + 96 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32 <= 4294967296
            require mem[_300 + 96 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32 + 32 <= return_data.size
            require mem[_300 + mem[_300 + 96 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32 + 96] <= 4294967296 and mem[_300 + 96 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32 + (32 * mem[_300 + mem[_300 + 96 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32 + 96]) + 32 <= return_data.size
            mem[_300 + ceil32(return_data.size) + 96] = mem[_300 + mem[_300 + 96 len 4], Mask(224, 32, 10^11 * sub_7d0b6809) >> 32 + 96]
            _3118 = mem[_300 + _2728 + 96]
            t = 0
            while t < 32 * _3118:
                mem[t + _300 + ceil32(return_data.size) + 128] = mem[t + _300 + _2728 + 128]
                t = t + 32
                continue 
            require mem[_300 + ceil32(return_data.size) + 96] - 1 < mem[_300 + ceil32(return_data.size) + 96]
            _8768 = mem[(32 * mem[_300 + ceil32(return_data.size) + 96] - 1) + _300 + ceil32(return_data.size) + 128]
            mem[(32 * _3118) + _300 + ceil32(return_data.size) + 128] = 2
            mem[(32 * _3118) + _300 + ceil32(return_data.size) + 160] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
            mem[(32 * _3118) + _300 + ceil32(return_data.size) + 192] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
            mem[(32 * _3118) + _300 + ceil32(return_data.size) + 224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[(32 * _3118) + _300 + ceil32(return_data.size) + 228] = _8768
            mem[(32 * _3118) + _300 + ceil32(return_data.size) + 260] = 64
            mem[(32 * _3118) + _300 + ceil32(return_data.size) + 292] = 2
            t = 0
            while t < 64:
                mem[t + (32 * _3118) + _300 + ceil32(return_data.size) + 324] = mem[t + (32 * _3118) + _300 + ceil32(return_data.size) + 160]
                t = t + 32
                continue 
            require ext_code.size(0x1b02da8cb0d097eb8d57a175b88c7d8b47997506)
            staticcall 0x1b02da8cb0d097eb8d57a175b88c7d8b47997506.getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args _8768, Array(len=2, data=mem[(32 * _3118) + _300 + ceil32(return_data.size) + 324 len 64])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _3118) + _300 + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * _3118) + _300 + (2 * ceil32(return_data.size)) + 224
            require return_data.size >= 32
            _12112 = mem[(32 * _3118) + _300 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _8768) >> 32
            require mem[(32 * _3118) + _300 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _8768) >> 32 <= 4294967296
            require mem[(32 * _3118) + _300 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _8768) >> 32 + 32 <= return_data.size
            require mem[(32 * _3118) + _300 + ceil32(return_data.size) + mem[(32 * _3118) + _300 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _8768) >> 32 + 224] <= 4294967296 and mem[(32 * _3118) + _300 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _8768) >> 32 + (32 * mem[(32 * _3118) + _300 + ceil32(return_data.size) + mem[(32 * _3118) + _300 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _8768) >> 32 + 224]) + 32 <= return_data.size
            mem[(32 * _3118) + _300 + (2 * ceil32(return_data.size)) + 224] = mem[(32 * _3118) + _300 + ceil32(return_data.size) + mem[(32 * _3118) + _300 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _8768) >> 32 + 224]
            _12180 = mem[(32 * _3118) + _300 + ceil32(return_data.size) + _12112 + 224]
            t = 0
            while t < 32 * _12180:
                mem[t + (32 * _3118) + _300 + (2 * ceil32(return_data.size)) + 256] = mem[t + (32 * _3118) + _300 + ceil32(return_data.size) + _12112 + 256]
                t = t + 32
                continue 
            mem[64] = (32 * _12180) + (32 * _3118) + _300 + (2 * ceil32(return_data.size)) + 256
            require mem[(32 * _3118) + _300 + (2 * ceil32(return_data.size)) + 224] - 1 < mem[(32 * _3118) + _300 + (2 * ceil32(return_data.size)) + 224]
            if mem[(32 * mem[(32 * _3118) + _300 + (2 * ceil32(return_data.size)) + 224] - 1) + (32 * _3118) + _300 + (2 * ceil32(return_data.size)) + 256] <= s:
                idx = idx + 1
                s = s
                continue 
            idx = idx + 1
            s = mem[(32 * mem[(32 * _3118) + _300 + (2 * ceil32(return_data.size)) + 224] - 1) + (32 * _3118) + _300 + (2 * ceil32(return_data.size)) + 256]
            continue 
        idx = 0
        t = 0
        while idx < 6:
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
                _3580 = mem[64]
                mem[mem[64]] = 3
                mem[64] = mem[64] + 128
                require 0 < mem[_3580]
                mem[_3580 + 32] = 0x49d68029688eabf473097a2fc38ef61633a3c
                require 1 < mem[_3580]
                mem[_3580 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                require 2 < mem[_3580]
                mem[_3580 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                mem[_3580 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_3580 + 132] = s
                mem[_3580 + 164] = 64
                mem[_3580 + 196] = mem[_3580]
                u = 0
                while u < 32 * mem[_3580]:
                    mem[u + _3580 + 228] = mem[u + _3580 + 32]
                    u = u + 32
                    continue 
                require ext_code.size(0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52)
                staticcall 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args s, 64, mem[_3580 + 196 len (32 * mem[_3580]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_3580 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _3580 + ceil32(return_data.size) + 128
                require return_data.size >= 32
                _9080 = mem[_3580 + 128 len 4], Mask(224, 32, s) >> 32
                require mem[_3580 + 128 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                require mem[_3580 + 128 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                require mem[_3580 + mem[_3580 + 128 len 4], Mask(224, 32, s) >> 32 + 128] <= 4294967296 and mem[_3580 + 128 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_3580 + mem[_3580 + 128 len 4], Mask(224, 32, s) >> 32 + 128]) + 32 <= return_data.size
                mem[_3580 + ceil32(return_data.size) + 128] = mem[_3580 + mem[_3580 + 128 len 4], Mask(224, 32, s) >> 32 + 128]
                _9744 = mem[_3580 + _9080 + 128]
                s = 0
                while s < 32 * _9744:
                    mem[s + _3580 + ceil32(return_data.size) + 160] = mem[s + _3580 + _9080 + 160]
                    s = s + 32
                    continue 
                mem[64] = (32 * _9744) + _3580 + ceil32(return_data.size) + 160
                require mem[_3580 + ceil32(return_data.size) + 128] - 1 < mem[_3580 + ceil32(return_data.size) + 128]
                if mem[(32 * mem[_3580 + ceil32(return_data.size) + 128] - 1) + _3580 + ceil32(return_data.size) + 160] <= t:
                    idx = idx + 1
                    t = t
                    continue 
                idx = idx + 1
                t = mem[(32 * mem[_3580 + ceil32(return_data.size) + 128] - 1) + _3580 + ceil32(return_data.size) + 160]
                continue 
            if 3 == idx:
                if 2 == idx:
                    _3705 = mem[64]
                    mem[mem[64]] = 3
                    mem[64] = mem[64] + 128
                    require 0 < mem[_3705]
                    mem[_3705 + 32] = 0x49d68029688eabf473097a2fc38ef61633a3c
                    require 1 < mem[_3705]
                    mem[_3705 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                    require 2 < mem[_3705]
                    mem[_3705 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    mem[_3705 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_3705 + 132] = s
                    mem[_3705 + 164] = 64
                    mem[_3705 + 196] = mem[_3705]
                    u = 0
                    while u < 32 * mem[_3705]:
                        mem[u + _3705 + 228] = mem[u + _3705 + 32]
                        u = u + 32
                        continue 
                    require ext_code.size(0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52)
                    staticcall 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args s, 64, mem[_3705 + 196 len (32 * mem[_3705]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_3705 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _3705 + ceil32(return_data.size) + 128
                    require return_data.size >= 32
                    _9090 = mem[_3705 + 128 len 4], Mask(224, 32, s) >> 32
                    require mem[_3705 + 128 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                    require mem[_3705 + 128 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                    require mem[_3705 + mem[_3705 + 128 len 4], Mask(224, 32, s) >> 32 + 128] <= 4294967296 and mem[_3705 + 128 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_3705 + mem[_3705 + 128 len 4], Mask(224, 32, s) >> 32 + 128]) + 32 <= return_data.size
                    mem[_3705 + ceil32(return_data.size) + 128] = mem[_3705 + mem[_3705 + 128 len 4], Mask(224, 32, s) >> 32 + 128]
                    _9749 = mem[_3705 + _9090 + 128]
                    s = 0
                    while s < 32 * _9749:
                        mem[s + _3705 + ceil32(return_data.size) + 160] = mem[s + _3705 + _9090 + 160]
                        s = s + 32
                        continue 
                    mem[64] = (32 * _9749) + _3705 + ceil32(return_data.size) + 160
                    require mem[_3705 + ceil32(return_data.size) + 128] - 1 < mem[_3705 + ceil32(return_data.size) + 128]
                    if mem[(32 * mem[_3705 + ceil32(return_data.size) + 128] - 1) + _3705 + ceil32(return_data.size) + 160] <= t:
                        idx = idx + 1
                        t = t
                        continue 
                    idx = idx + 1
                    t = mem[(32 * mem[_3705 + ceil32(return_data.size) + 128] - 1) + _3705 + ceil32(return_data.size) + 160]
                    continue 
                if 3 == idx:
                    _3737 = mem[64]
                    mem[mem[64]] = 3
                    mem[64] = mem[64] + 128
                    require 0 < mem[_3737]
                    mem[_3737 + 32] = 0x49d68029688eabf473097a2fc38ef61633a3c
                    require 1 < mem[_3737]
                    mem[_3737 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                    require 2 < mem[_3737]
                    mem[_3737 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    mem[_3737 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_3737 + 132] = s
                    mem[_3737 + 164] = 64
                    mem[_3737 + 196] = mem[_3737]
                    u = 0
                    while u < 32 * mem[_3737]:
                        mem[u + _3737 + 228] = mem[u + _3737 + 32]
                        u = u + 32
                        continue 
                    require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                    staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c29.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args s, 64, mem[_3737 + 196 len (32 * mem[_3737]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_3737 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _3737 + ceil32(return_data.size) + 128
                    require return_data.size >= 32
                    _9088 = mem[_3737 + 128 len 4], Mask(224, 32, s) >> 32
                    require mem[_3737 + 128 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                    require mem[_3737 + 128 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                    require mem[_3737 + mem[_3737 + 128 len 4], Mask(224, 32, s) >> 32 + 128] <= 4294967296 and mem[_3737 + 128 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_3737 + mem[_3737 + 128 len 4], Mask(224, 32, s) >> 32 + 128]) + 32 <= return_data.size
                    mem[_3737 + ceil32(return_data.size) + 128] = mem[_3737 + mem[_3737 + 128 len 4], Mask(224, 32, s) >> 32 + 128]
                    _9748 = mem[_3737 + _9088 + 128]
                    s = 0
                    while s < 32 * _9748:
                        mem[s + _3737 + ceil32(return_data.size) + 160] = mem[s + _3737 + _9088 + 160]
                        s = s + 32
                        continue 
                    mem[64] = (32 * _9748) + _3737 + ceil32(return_data.size) + 160
                    require mem[_3737 + ceil32(return_data.size) + 128] - 1 < mem[_3737 + ceil32(return_data.size) + 128]
                    if mem[(32 * mem[_3737 + ceil32(return_data.size) + 128] - 1) + _3737 + ceil32(return_data.size) + 160] <= t:
                        idx = idx + 1
                        t = t
                        continue 
                    idx = idx + 1
                    t = mem[(32 * mem[_3737 + ceil32(return_data.size) + 128] - 1) + _3737 + ceil32(return_data.size) + 160]
                    continue 
                if 4 == idx:
                    _3805 = mem[64]
                    mem[mem[64]] = 3
                    mem[64] = mem[64] + 128
                    require 0 < mem[_3805]
                    mem[_3805 + 32] = 0x49d68029688eabf473097a2fc38ef61633a3c
                    require 1 < mem[_3805]
                    mem[_3805 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
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
                    require ext_code.size(0x7b17021fcb7bc888641dc3bedfed3734fcaf2c87)
                    staticcall 0x7b17021fcb7bc888641dc3bedfed3734fcaf2c87.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args s, 64, mem[_3805 + 196 len (32 * mem[_3805]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_3805 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _3805 + ceil32(return_data.size) + 128
                    require return_data.size >= 32
                    _9086 = mem[_3805 + 128 len 4], Mask(224, 32, s) >> 32
                    require mem[_3805 + 128 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                    require mem[_3805 + 128 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                    require mem[_3805 + mem[_3805 + 128 len 4], Mask(224, 32, s) >> 32 + 128] <= 4294967296 and mem[_3805 + 128 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_3805 + mem[_3805 + 128 len 4], Mask(224, 32, s) >> 32 + 128]) + 32 <= return_data.size
                    mem[_3805 + ceil32(return_data.size) + 128] = mem[_3805 + mem[_3805 + 128 len 4], Mask(224, 32, s) >> 32 + 128]
                    _9747 = mem[_3805 + _9086 + 128]
                    s = 0
                    while s < 32 * _9747:
                        mem[s + _3805 + ceil32(return_data.size) + 160] = mem[s + _3805 + _9086 + 160]
                        s = s + 32
                        continue 
                    mem[64] = (32 * _9747) + _3805 + ceil32(return_data.size) + 160
                    require mem[_3805 + ceil32(return_data.size) + 128] - 1 < mem[_3805 + ceil32(return_data.size) + 128]
                    if mem[(32 * mem[_3805 + ceil32(return_data.size) + 128] - 1) + _3805 + ceil32(return_data.size) + 160] <= t:
                        idx = idx + 1
                        t = t
                        continue 
                    idx = idx + 1
                    t = mem[(32 * mem[_3805 + ceil32(return_data.size) + 128] - 1) + _3805 + ceil32(return_data.size) + 160]
                    continue 
                if idx != 5:
                    _3803 = mem[64]
                    mem[mem[64]] = 3
                    mem[64] = mem[64] + 128
                    require 0 < mem[_3803]
                    mem[_3803 + 32] = 0x49d68029688eabf473097a2fc38ef61633a3c
                    require 1 < mem[_3803]
                    mem[_3803 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                    require 2 < mem[_3803]
                    mem[_3803 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    mem[_3803 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_3803 + 132] = s
                    mem[_3803 + 164] = 64
                    mem[_3803 + 196] = mem[_3803]
                    u = 0
                    while u < 32 * mem[_3803]:
                        mem[u + _3803 + 228] = mem[u + _3803 + 32]
                        u = u + 32
                        continue 
                    require ext_code.size(0)
                    staticcall 0x0.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args s, 64, mem[_3803 + 196 len (32 * mem[_3803]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_3803 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _3803 + ceil32(return_data.size) + 128
                    require return_data.size >= 32
                    _9082 = mem[_3803 + 128 len 4], Mask(224, 32, s) >> 32
                    require mem[_3803 + 128 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                    require mem[_3803 + 128 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                    require mem[_3803 + mem[_3803 + 128 len 4], Mask(224, 32, s) >> 32 + 128] <= 4294967296 and mem[_3803 + 128 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_3803 + mem[_3803 + 128 len 4], Mask(224, 32, s) >> 32 + 128]) + 32 <= return_data.size
                    mem[_3803 + ceil32(return_data.size) + 128] = mem[_3803 + mem[_3803 + 128 len 4], Mask(224, 32, s) >> 32 + 128]
                    _9745 = mem[_3803 + _9082 + 128]
                    s = 0
                    while s < 32 * _9745:
                        mem[s + _3803 + ceil32(return_data.size) + 160] = mem[s + _3803 + _9082 + 160]
                        s = s + 32
                        continue 
                    mem[64] = (32 * _9745) + _3803 + ceil32(return_data.size) + 160
                    require mem[_3803 + ceil32(return_data.size) + 128] - 1 < mem[_3803 + ceil32(return_data.size) + 128]
                    if mem[(32 * mem[_3803 + ceil32(return_data.size) + 128] - 1) + _3803 + ceil32(return_data.size) + 160] <= t:
                        idx = idx + 1
                        t = t
                        continue 
                    idx = idx + 1
                    t = mem[(32 * mem[_3803 + ceil32(return_data.size) + 128] - 1) + _3803 + ceil32(return_data.size) + 160]
                    continue 
                _3937 = mem[64]
                mem[mem[64]] = 3
                mem[64] = mem[64] + 128
                require 0 < mem[_3937]
                mem[_3937 + 32] = 0x49d68029688eabf473097a2fc38ef61633a3c
                require 1 < mem[_3937]
                mem[_3937 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                require 2 < mem[_3937]
                mem[_3937 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                mem[_3937 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_3937 + 132] = s
                mem[_3937 + 164] = 64
                mem[_3937 + 196] = mem[_3937]
                u = 0
                while u < 32 * mem[_3937]:
                    mem[u + _3937 + 228] = mem[u + _3937 + 32]
                    u = u + 32
                    continue 
                require ext_code.size(0x845e76a8691423fbc4ecb8dd77556cb61c09ee25)
                staticcall 0x845e76a8691423fbc4ecb8dd77556cb61c09ee25.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args s, 64, mem[_3937 + 196 len (32 * mem[_3937]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_3937 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _3937 + ceil32(return_data.size) + 128
                require return_data.size >= 32
                _9084 = mem[_3937 + 128 len 4], Mask(224, 32, s) >> 32
                require mem[_3937 + 128 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                require mem[_3937 + 128 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                require mem[_3937 + mem[_3937 + 128 len 4], Mask(224, 32, s) >> 32 + 128] <= 4294967296 and mem[_3937 + 128 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_3937 + mem[_3937 + 128 len 4], Mask(224, 32, s) >> 32 + 128]) + 32 <= return_data.size
                mem[_3937 + ceil32(return_data.size) + 128] = mem[_3937 + mem[_3937 + 128 len 4], Mask(224, 32, s) >> 32 + 128]
                _9746 = mem[_3937 + _9084 + 128]
                s = 0
                while s < 32 * _9746:
                    mem[s + _3937 + ceil32(return_data.size) + 160] = mem[s + _3937 + _9084 + 160]
                    s = s + 32
                    continue 
                mem[64] = (32 * _9746) + _3937 + ceil32(return_data.size) + 160
                require mem[_3937 + ceil32(return_data.size) + 128] - 1 < mem[_3937 + ceil32(return_data.size) + 128]
                if mem[(32 * mem[_3937 + ceil32(return_data.size) + 128] - 1) + _3937 + ceil32(return_data.size) + 160] <= t:
                    idx = idx + 1
                    t = t
                    continue 
                idx = idx + 1
                t = mem[(32 * mem[_3937 + ceil32(return_data.size) + 128] - 1) + _3937 + ceil32(return_data.size) + 160]
                continue 
            if 4 == idx:
                if 2 == idx:
                    _3740 = mem[64]
                    mem[mem[64]] = 3
                    mem[64] = mem[64] + 128
                    require 0 < mem[_3740]
                    mem[_3740 + 32] = 0x49d68029688eabf473097a2fc38ef61633a3c
                    require 1 < mem[_3740]
                    mem[_3740 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                    require 2 < mem[_3740]
                    mem[_3740 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    mem[_3740 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_3740 + 132] = s
                    mem[_3740 + 164] = 64
                    mem[_3740 + 196] = mem[_3740]
                    u = 0
                    while u < 32 * mem[_3740]:
                        mem[u + _3740 + 228] = mem[u + _3740 + 32]
                        u = u + 32
                        continue 
                    require ext_code.size(0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52)
                    staticcall 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args s, 64, mem[_3740 + 196 len (32 * mem[_3740]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_3740 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _3740 + ceil32(return_data.size) + 128
                    require return_data.size >= 32
                    _9100 = mem[_3740 + 128 len 4], Mask(224, 32, s) >> 32
                    require mem[_3740 + 128 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                    require mem[_3740 + 128 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                    require mem[_3740 + mem[_3740 + 128 len 4], Mask(224, 32, s) >> 32 + 128] <= 4294967296 and mem[_3740 + 128 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_3740 + mem[_3740 + 128 len 4], Mask(224, 32, s) >> 32 + 128]) + 32 <= return_data.size
                    mem[_3740 + ceil32(return_data.size) + 128] = mem[_3740 + mem[_3740 + 128 len 4], Mask(224, 32, s) >> 32 + 128]
                    _9754 = mem[_3740 + _9100 + 128]
                    s = 0
                    while s < 32 * _9754:
                        mem[s + _3740 + ceil32(return_data.size) + 160] = mem[s + _3740 + _9100 + 160]
                        s = s + 32
                        continue 
                    mem[64] = (32 * _9754) + _3740 + ceil32(return_data.size) + 160
                    require mem[_3740 + ceil32(return_data.size) + 128] - 1 < mem[_3740 + ceil32(return_data.size) + 128]
                    if mem[(32 * mem[_3740 + ceil32(return_data.size) + 128] - 1) + _3740 + ceil32(return_data.size) + 160] <= t:
                        idx = idx + 1
                        t = t
                        continue 
                    idx = idx + 1
                    t = mem[(32 * mem[_3740 + ceil32(return_data.size) + 128] - 1) + _3740 + ceil32(return_data.size) + 160]
                    continue 
                if 3 == idx:
                    _3809 = mem[64]
                    mem[mem[64]] = 3
                    mem[64] = mem[64] + 128
                    require 0 < mem[_3809]
                    mem[_3809 + 32] = 0x49d68029688eabf473097a2fc38ef61633a3c
                    require 1 < mem[_3809]
                    mem[_3809 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                    require 2 < mem[_3809]
                    mem[_3809 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    mem[_3809 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_3809 + 132] = s
                    mem[_3809 + 164] = 64
                    mem[_3809 + 196] = mem[_3809]
                    u = 0
                    while u < 32 * mem[_3809]:
                        mem[u + _3809 + 228] = mem[u + _3809 + 32]
                        u = u + 32
                        continue 
                    require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                    staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c29.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args s, 64, mem[_3809 + 196 len (32 * mem[_3809]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_3809 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _3809 + ceil32(return_data.size) + 128
                    require return_data.size >= 32
                    _9098 = mem[_3809 + 128 len 4], Mask(224, 32, s) >> 32
                    require mem[_3809 + 128 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                    require mem[_3809 + 128 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                    require mem[_3809 + mem[_3809 + 128 len 4], Mask(224, 32, s) >> 32 + 128] <= 4294967296 and mem[_3809 + 128 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_3809 + mem[_3809 + 128 len 4], Mask(224, 32, s) >> 32 + 128]) + 32 <= return_data.size
                    mem[_3809 + ceil32(return_data.size) + 128] = mem[_3809 + mem[_3809 + 128 len 4], Mask(224, 32, s) >> 32 + 128]
                    _9753 = mem[_3809 + _9098 + 128]
                    s = 0
                    while s < 32 * _9753:
                        mem[s + _3809 + ceil32(return_data.size) + 160] = mem[s + _3809 + _9098 + 160]
                        s = s + 32
                        continue 
                    mem[64] = (32 * _9753) + _3809 + ceil32(return_data.size) + 160
                    require mem[_3809 + ceil32(return_data.size) + 128] - 1 < mem[_3809 + ceil32(return_data.size) + 128]
                    if mem[(32 * mem[_3809 + ceil32(return_data.size) + 128] - 1) + _3809 + ceil32(return_data.size) + 160] <= t:
                        idx = idx + 1
                        t = t
                        continue 
                    idx = idx + 1
                    t = mem[(32 * mem[_3809 + ceil32(return_data.size) + 128] - 1) + _3809 + ceil32(return_data.size) + 160]
                    continue 
                if 4 == idx:
                    _3946 = mem[64]
                    mem[mem[64]] = 3
                    mem[64] = mem[64] + 128
                    require 0 < mem[_3946]
                    mem[_3946 + 32] = 0x49d68029688eabf473097a2fc38ef61633a3c
                    require 1 < mem[_3946]
                    mem[_3946 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                    require 2 < mem[_3946]
                    mem[_3946 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    mem[_3946 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_3946 + 132] = s
                    mem[_3946 + 164] = 64
                    mem[_3946 + 196] = mem[_3946]
                    u = 0
                    while u < 32 * mem[_3946]:
                        mem[u + _3946 + 228] = mem[u + _3946 + 32]
                        u = u + 32
                        continue 
                    require ext_code.size(0x7b17021fcb7bc888641dc3bedfed3734fcaf2c87)
                    staticcall 0x7b17021fcb7bc888641dc3bedfed3734fcaf2c87.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args s, 64, mem[_3946 + 196 len (32 * mem[_3946]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_3946 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _3946 + ceil32(return_data.size) + 128
                    require return_data.size >= 32
                    _9096 = mem[_3946 + 128 len 4], Mask(224, 32, s) >> 32
                    require mem[_3946 + 128 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                    require mem[_3946 + 128 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                    require mem[_3946 + mem[_3946 + 128 len 4], Mask(224, 32, s) >> 32 + 128] <= 4294967296 and mem[_3946 + 128 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_3946 + mem[_3946 + 128 len 4], Mask(224, 32, s) >> 32 + 128]) + 32 <= return_data.size
                    mem[_3946 + ceil32(return_data.size) + 128] = mem[_3946 + mem[_3946 + 128 len 4], Mask(224, 32, s) >> 32 + 128]
                    _9752 = mem[_3946 + _9096 + 128]
                    s = 0
                    while s < 32 * _9752:
                        mem[s + _3946 + ceil32(return_data.size) + 160] = mem[s + _3946 + _9096 + 160]
                        s = s + 32
                        continue 
                    mem[64] = (32 * _9752) + _3946 + ceil32(return_data.size) + 160
                    require mem[_3946 + ceil32(return_data.size) + 128] - 1 < mem[_3946 + ceil32(return_data.size) + 128]
                    if mem[(32 * mem[_3946 + ceil32(return_data.size) + 128] - 1) + _3946 + ceil32(return_data.size) + 160] <= t:
                        idx = idx + 1
                        t = t
                        continue 
                    idx = idx + 1
                    t = mem[(32 * mem[_3946 + ceil32(return_data.size) + 128] - 1) + _3946 + ceil32(return_data.size) + 160]
                    continue 
                if idx != 5:
                    _3944 = mem[64]
                    mem[mem[64]] = 3
                    mem[64] = mem[64] + 128
                    require 0 < mem[_3944]
                    mem[_3944 + 32] = 0x49d68029688eabf473097a2fc38ef61633a3c
                    require 1 < mem[_3944]
                    mem[_3944 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                    require 2 < mem[_3944]
                    mem[_3944 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    mem[_3944 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_3944 + 132] = s
                    mem[_3944 + 164] = 64
                    mem[_3944 + 196] = mem[_3944]
                    u = 0
                    while u < 32 * mem[_3944]:
                        mem[u + _3944 + 228] = mem[u + _3944 + 32]
                        u = u + 32
                        continue 
                    require ext_code.size(0)
                    staticcall 0x0.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args s, 64, mem[_3944 + 196 len (32 * mem[_3944]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_3944 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _3944 + ceil32(return_data.size) + 128
                    require return_data.size >= 32
                    _9092 = mem[_3944 + 128 len 4], Mask(224, 32, s) >> 32
                    require mem[_3944 + 128 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                    require mem[_3944 + 128 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                    require mem[_3944 + mem[_3944 + 128 len 4], Mask(224, 32, s) >> 32 + 128] <= 4294967296 and mem[_3944 + 128 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_3944 + mem[_3944 + 128 len 4], Mask(224, 32, s) >> 32 + 128]) + 32 <= return_data.size
                    mem[_3944 + ceil32(return_data.size) + 128] = mem[_3944 + mem[_3944 + 128 len 4], Mask(224, 32, s) >> 32 + 128]
                    _9750 = mem[_3944 + _9092 + 128]
                    s = 0
                    while s < 32 * _9750:
                        mem[s + _3944 + ceil32(return_data.size) + 160] = mem[s + _3944 + _9092 + 160]
                        s = s + 32
                        continue 
                    mem[64] = (32 * _9750) + _3944 + ceil32(return_data.size) + 160
                    require mem[_3944 + ceil32(return_data.size) + 128] - 1 < mem[_3944 + ceil32(return_data.size) + 128]
                    if mem[(32 * mem[_3944 + ceil32(return_data.size) + 128] - 1) + _3944 + ceil32(return_data.size) + 160] <= t:
                        idx = idx + 1
                        t = t
                        continue 
                    idx = idx + 1
                    t = mem[(32 * mem[_3944 + ceil32(return_data.size) + 128] - 1) + _3944 + ceil32(return_data.size) + 160]
                    continue 
                _4113 = mem[64]
                mem[mem[64]] = 3
                mem[64] = mem[64] + 128
                require 0 < mem[_4113]
                mem[_4113 + 32] = 0x49d68029688eabf473097a2fc38ef61633a3c
                require 1 < mem[_4113]
                mem[_4113 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                require 2 < mem[_4113]
                mem[_4113 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                mem[_4113 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_4113 + 132] = s
                mem[_4113 + 164] = 64
                mem[_4113 + 196] = mem[_4113]
                u = 0
                while u < 32 * mem[_4113]:
                    mem[u + _4113 + 228] = mem[u + _4113 + 32]
                    u = u + 32
                    continue 
                require ext_code.size(0x845e76a8691423fbc4ecb8dd77556cb61c09ee25)
                staticcall 0x845e76a8691423fbc4ecb8dd77556cb61c09ee25.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args s, 64, mem[_4113 + 196 len (32 * mem[_4113]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_4113 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _4113 + ceil32(return_data.size) + 128
                require return_data.size >= 32
                _9094 = mem[_4113 + 128 len 4], Mask(224, 32, s) >> 32
                require mem[_4113 + 128 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                require mem[_4113 + 128 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                require mem[_4113 + mem[_4113 + 128 len 4], Mask(224, 32, s) >> 32 + 128] <= 4294967296 and mem[_4113 + 128 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_4113 + mem[_4113 + 128 len 4], Mask(224, 32, s) >> 32 + 128]) + 32 <= return_data.size
                mem[_4113 + ceil32(return_data.size) + 128] = mem[_4113 + mem[_4113 + 128 len 4], Mask(224, 32, s) >> 32 + 128]
                _9751 = mem[_4113 + _9094 + 128]
                s = 0
                while s < 32 * _9751:
                    mem[s + _4113 + ceil32(return_data.size) + 160] = mem[s + _4113 + _9094 + 160]
                    s = s + 32
                    continue 
                mem[64] = (32 * _9751) + _4113 + ceil32(return_data.size) + 160
                require mem[_4113 + ceil32(return_data.size) + 128] - 1 < mem[_4113 + ceil32(return_data.size) + 128]
                if mem[(32 * mem[_4113 + ceil32(return_data.size) + 128] - 1) + _4113 + ceil32(return_data.size) + 160] <= t:
                    idx = idx + 1
                    t = t
                    continue 
                idx = idx + 1
                t = mem[(32 * mem[_4113 + ceil32(return_data.size) + 128] - 1) + _4113 + ceil32(return_data.size) + 160]
                continue 
            if 5 == idx:
                if 2 == idx:
                    _3814 = mem[64]
                    mem[mem[64]] = 3
                    mem[64] = mem[64] + 128
                    require 0 < mem[_3814]
                    mem[_3814 + 32] = 0x49d68029688eabf473097a2fc38ef61633a3c
                    require 1 < mem[_3814]
                    mem[_3814 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                    require 2 < mem[_3814]
                    mem[_3814 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    mem[_3814 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_3814 + 132] = s
                    mem[_3814 + 164] = 64
                    mem[_3814 + 196] = mem[_3814]
                    u = 0
                    while u < 32 * mem[_3814]:
                        mem[u + _3814 + 228] = mem[u + _3814 + 32]
                        u = u + 32
                        continue 
                    require ext_code.size(0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52)
                    staticcall 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args s, 64, mem[_3814 + 196 len (32 * mem[_3814]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_3814 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _3814 + ceil32(return_data.size) + 128
                    require return_data.size >= 32
                    _9132 = mem[_3814 + 128 len 4], Mask(224, 32, s) >> 32
                    require mem[_3814 + 128 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                    require mem[_3814 + 128 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                    require mem[_3814 + mem[_3814 + 128 len 4], Mask(224, 32, s) >> 32 + 128] <= 4294967296 and mem[_3814 + 128 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_3814 + mem[_3814 + 128 len 4], Mask(224, 32, s) >> 32 + 128]) + 32 <= return_data.size
                    mem[_3814 + ceil32(return_data.size) + 128] = mem[_3814 + mem[_3814 + 128 len 4], Mask(224, 32, s) >> 32 + 128]
                    _9770 = mem[_3814 + _9132 + 128]
                    s = 0
                    while s < 32 * _9770:
                        mem[s + _3814 + ceil32(return_data.size) + 160] = mem[s + _3814 + _9132 + 160]
                        s = s + 32
                        continue 
                    mem[64] = (32 * _9770) + _3814 + ceil32(return_data.size) + 160
                    require mem[_3814 + ceil32(return_data.size) + 128] - 1 < mem[_3814 + ceil32(return_data.size) + 128]
                    if mem[(32 * mem[_3814 + ceil32(return_data.size) + 128] - 1) + _3814 + ceil32(return_data.size) + 160] <= t:
                        idx = idx + 1
                        t = t
                        continue 
                    idx = idx + 1
                    t = mem[(32 * mem[_3814 + ceil32(return_data.size) + 128] - 1) + _3814 + ceil32(return_data.size) + 160]
                    continue 
                if 3 == idx:
                    _3953 = mem[64]
                    mem[mem[64]] = 3
                    mem[64] = mem[64] + 128
                    require 0 < mem[_3953]
                    mem[_3953 + 32] = 0x49d68029688eabf473097a2fc38ef61633a3c
                    require 1 < mem[_3953]
                    mem[_3953 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                    require 2 < mem[_3953]
                    mem[_3953 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    mem[_3953 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_3953 + 132] = s
                    mem[_3953 + 164] = 64
                    mem[_3953 + 196] = mem[_3953]
                    u = 0
                    while u < 32 * mem[_3953]:
                        mem[u + _3953 + 228] = mem[u + _3953 + 32]
                        u = u + 32
                        continue 
                    require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                    staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c29.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args s, 64, mem[_3953 + 196 len (32 * mem[_3953]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_3953 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _3953 + ceil32(return_data.size) + 128
                    require return_data.size >= 32
                    _9130 = mem[_3953 + 128 len 4], Mask(224, 32, s) >> 32
                    require mem[_3953 + 128 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                    require mem[_3953 + 128 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                    require mem[_3953 + mem[_3953 + 128 len 4], Mask(224, 32, s) >> 32 + 128] <= 4294967296 and mem[_3953 + 128 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_3953 + mem[_3953 + 128 len 4], Mask(224, 32, s) >> 32 + 128]) + 32 <= return_data.size
                    mem[_3953 + ceil32(return_data.size) + 128] = mem[_3953 + mem[_3953 + 128 len 4], Mask(224, 32, s) >> 32 + 128]
                    _9769 = mem[_3953 + _9130 + 128]
                    s = 0
                    while s < 32 * _9769:
                        mem[s + _3953 + ceil32(return_data.size) + 160] = mem[s + _3953 + _9130 + 160]
                        s = s + 32
                        continue 
                    mem[64] = (32 * _9769) + _3953 + ceil32(return_data.size) + 160
                    require mem[_3953 + ceil32(return_data.size) + 128] - 1 < mem[_3953 + ceil32(return_data.size) + 128]
                    if mem[(32 * mem[_3953 + ceil32(return_data.size) + 128] - 1) + _3953 + ceil32(return_data.size) + 160] <= t:
                        idx = idx + 1
                        t = t
                        continue 
                    idx = idx + 1
                    t = mem[(32 * mem[_3953 + ceil32(return_data.size) + 128] - 1) + _3953 + ceil32(return_data.size) + 160]
                    continue 
                if 4 == idx:
                    _4126 = mem[64]
                    mem[mem[64]] = 3
                    mem[64] = mem[64] + 128
                    require 0 < mem[_4126]
                    mem[_4126 + 32] = 0x49d68029688eabf473097a2fc38ef61633a3c
                    require 1 < mem[_4126]
                    mem[_4126 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                    require 2 < mem[_4126]
                    mem[_4126 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    mem[_4126 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_4126 + 132] = s
                    mem[_4126 + 164] = 64
                    mem[_4126 + 196] = mem[_4126]
                    u = 0
                    while u < 32 * mem[_4126]:
                        mem[u + _4126 + 228] = mem[u + _4126 + 32]
                        u = u + 32
                        continue 
                    require ext_code.size(0x7b17021fcb7bc888641dc3bedfed3734fcaf2c87)
                    staticcall 0x7b17021fcb7bc888641dc3bedfed3734fcaf2c87.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args s, 64, mem[_4126 + 196 len (32 * mem[_4126]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_4126 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _4126 + ceil32(return_data.size) + 128
                    require return_data.size >= 32
                    _9128 = mem[_4126 + 128 len 4], Mask(224, 32, s) >> 32
                    require mem[_4126 + 128 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                    require mem[_4126 + 128 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                    require mem[_4126 + mem[_4126 + 128 len 4], Mask(224, 32, s) >> 32 + 128] <= 4294967296 and mem[_4126 + 128 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_4126 + mem[_4126 + 128 len 4], Mask(224, 32, s) >> 32 + 128]) + 32 <= return_data.size
                    mem[_4126 + ceil32(return_data.size) + 128] = mem[_4126 + mem[_4126 + 128 len 4], Mask(224, 32, s) >> 32 + 128]
                    _9768 = mem[_4126 + _9128 + 128]
                    s = 0
                    while s < 32 * _9768:
                        mem[s + _4126 + ceil32(return_data.size) + 160] = mem[s + _4126 + _9128 + 160]
                        s = s + 32
                        continue 
                    mem[64] = (32 * _9768) + _4126 + ceil32(return_data.size) + 160
                    require mem[_4126 + ceil32(return_data.size) + 128] - 1 < mem[_4126 + ceil32(return_data.size) + 128]
                    if mem[(32 * mem[_4126 + ceil32(return_data.size) + 128] - 1) + _4126 + ceil32(return_data.size) + 160] <= t:
                        idx = idx + 1
                        t = t
                        continue 
                    idx = idx + 1
                    t = mem[(32 * mem[_4126 + ceil32(return_data.size) + 128] - 1) + _4126 + ceil32(return_data.size) + 160]
                    continue 
                if idx != 5:
                    _4124 = mem[64]
                    mem[mem[64]] = 3
                    mem[64] = mem[64] + 128
                    require 0 < mem[_4124]
                    mem[_4124 + 32] = 0x49d68029688eabf473097a2fc38ef61633a3c
                    require 1 < mem[_4124]
                    mem[_4124 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                    require 2 < mem[_4124]
                    mem[_4124 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    mem[_4124 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_4124 + 132] = s
                    mem[_4124 + 164] = 64
                    mem[_4124 + 196] = mem[_4124]
                    u = 0
                    while u < 32 * mem[_4124]:
                        mem[u + _4124 + 228] = mem[u + _4124 + 32]
                        u = u + 32
                        continue 
                    require ext_code.size(0)
                    staticcall 0x0.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args s, 64, mem[_4124 + 196 len (32 * mem[_4124]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_4124 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _4124 + ceil32(return_data.size) + 128
                    require return_data.size >= 32
                    _9124 = mem[_4124 + 128 len 4], Mask(224, 32, s) >> 32
                    require mem[_4124 + 128 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                    require mem[_4124 + 128 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                    require mem[_4124 + mem[_4124 + 128 len 4], Mask(224, 32, s) >> 32 + 128] <= 4294967296 and mem[_4124 + 128 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_4124 + mem[_4124 + 128 len 4], Mask(224, 32, s) >> 32 + 128]) + 32 <= return_data.size
                    mem[_4124 + ceil32(return_data.size) + 128] = mem[_4124 + mem[_4124 + 128 len 4], Mask(224, 32, s) >> 32 + 128]
                    _9766 = mem[_4124 + _9124 + 128]
                    s = 0
                    while s < 32 * _9766:
                        mem[s + _4124 + ceil32(return_data.size) + 160] = mem[s + _4124 + _9124 + 160]
                        s = s + 32
                        continue 
                    mem[64] = (32 * _9766) + _4124 + ceil32(return_data.size) + 160
                    require mem[_4124 + ceil32(return_data.size) + 128] - 1 < mem[_4124 + ceil32(return_data.size) + 128]
                    if mem[(32 * mem[_4124 + ceil32(return_data.size) + 128] - 1) + _4124 + ceil32(return_data.size) + 160] <= t:
                        idx = idx + 1
                        t = t
                        continue 
                    idx = idx + 1
                    t = mem[(32 * mem[_4124 + ceil32(return_data.size) + 128] - 1) + _4124 + ceil32(return_data.size) + 160]
                    continue 
                _4355 = mem[64]
                mem[mem[64]] = 3
                mem[64] = mem[64] + 128
                require 0 < mem[_4355]
                mem[_4355 + 32] = 0x49d68029688eabf473097a2fc38ef61633a3c
                require 1 < mem[_4355]
                mem[_4355 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                require 2 < mem[_4355]
                mem[_4355 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                mem[_4355 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_4355 + 132] = s
                mem[_4355 + 164] = 64
                mem[_4355 + 196] = mem[_4355]
                u = 0
                while u < 32 * mem[_4355]:
                    mem[u + _4355 + 228] = mem[u + _4355 + 32]
                    u = u + 32
                    continue 
                require ext_code.size(0x845e76a8691423fbc4ecb8dd77556cb61c09ee25)
                staticcall 0x845e76a8691423fbc4ecb8dd77556cb61c09ee25.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args s, 64, mem[_4355 + 196 len (32 * mem[_4355]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_4355 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _4355 + ceil32(return_data.size) + 128
                require return_data.size >= 32
                _9126 = mem[_4355 + 128 len 4], Mask(224, 32, s) >> 32
                require mem[_4355 + 128 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                require mem[_4355 + 128 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                require mem[_4355 + mem[_4355 + 128 len 4], Mask(224, 32, s) >> 32 + 128] <= 4294967296 and mem[_4355 + 128 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_4355 + mem[_4355 + 128 len 4], Mask(224, 32, s) >> 32 + 128]) + 32 <= return_data.size
                mem[_4355 + ceil32(return_data.size) + 128] = mem[_4355 + mem[_4355 + 128 len 4], Mask(224, 32, s) >> 32 + 128]
                _9767 = mem[_4355 + _9126 + 128]
                s = 0
                while s < 32 * _9767:
                    mem[s + _4355 + ceil32(return_data.size) + 160] = mem[s + _4355 + _9126 + 160]
                    s = s + 32
                    continue 
                mem[64] = (32 * _9767) + _4355 + ceil32(return_data.size) + 160
                require mem[_4355 + ceil32(return_data.size) + 128] - 1 < mem[_4355 + ceil32(return_data.size) + 128]
                if mem[(32 * mem[_4355 + ceil32(return_data.size) + 128] - 1) + _4355 + ceil32(return_data.size) + 160] <= t:
                    idx = idx + 1
                    t = t
                    continue 
                idx = idx + 1
                t = mem[(32 * mem[_4355 + ceil32(return_data.size) + 128] - 1) + _4355 + ceil32(return_data.size) + 160]
                continue 
            if idx != 6:
                if 7 == idx:
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
                    _9102 = mem[_4559 + 96 len 4], Mask(224, 32, s) >> 32
                    require mem[_4559 + 96 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                    require mem[_4559 + 96 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                    require mem[_4559 + mem[_4559 + 96 len 4], Mask(224, 32, s) >> 32 + 96] <= 4294967296 and mem[_4559 + 96 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_4559 + mem[_4559 + 96 len 4], Mask(224, 32, s) >> 32 + 96]) + 32 <= return_data.size
                    mem[_4559 + ceil32(return_data.size) + 96] = mem[_4559 + mem[_4559 + 96 len 4], Mask(224, 32, s) >> 32 + 96]
                    _9755 = mem[_4559 + _9102 + 96]
                    s = 0
                    while s < 32 * _9755:
                        mem[s + _4559 + ceil32(return_data.size) + 128] = mem[s + _4559 + _9102 + 128]
                        s = s + 32
                        continue 
                    mem[64] = (32 * _9755) + _4559 + ceil32(return_data.size) + 128
                    require mem[_4559 + ceil32(return_data.size) + 96] - 1 < mem[_4559 + ceil32(return_data.size) + 96]
                    if mem[(32 * mem[_4559 + ceil32(return_data.size) + 96] - 1) + _4559 + ceil32(return_data.size) + 128] <= t:
                        idx = idx + 1
                        t = t
                        continue 
                    idx = idx + 1
                    t = mem[(32 * mem[_4559 + ceil32(return_data.size) + 96] - 1) + _4559 + ceil32(return_data.size) + 128]
                    continue 
                if 8 == idx:
                    if 7 == idx:
                        _4773 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        require 0 < mem[_4773]
                        mem[_4773 + 32] = 0x49d68029688eabf473097a2fc38ef61633a3c
                        require 1 < mem[_4773]
                        mem[_4773 + 64] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                        mem[_4773 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[_4773 + 100] = s
                        mem[_4773 + 132] = 64
                        mem[_4773 + 164] = mem[_4773]
                        u = 0
                        while u < 32 * mem[_4773]:
                            mem[u + _4773 + 196] = mem[u + _4773 + 32]
                            u = u + 32
                            continue 
                        require ext_code.size(0x845e76a8691423fbc4ecb8dd77556cb61c09ee25)
                        staticcall 0x845e76a8691423fbc4ecb8dd77556cb61c09ee25.getAmountsOut(uint256 arg1, address[] arg2) with:
                                gas gas_remaining wei
                               args s, 64, mem[_4773 + 164 len (32 * mem[_4773]) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_4773 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = _4773 + ceil32(return_data.size) + 96
                        require return_data.size >= 32
                        _9110 = mem[_4773 + 96 len 4], Mask(224, 32, s) >> 32
                        require mem[_4773 + 96 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                        require mem[_4773 + 96 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                        require mem[_4773 + mem[_4773 + 96 len 4], Mask(224, 32, s) >> 32 + 96] <= 4294967296 and mem[_4773 + 96 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_4773 + mem[_4773 + 96 len 4], Mask(224, 32, s) >> 32 + 96]) + 32 <= return_data.size
                        mem[_4773 + ceil32(return_data.size) + 96] = mem[_4773 + mem[_4773 + 96 len 4], Mask(224, 32, s) >> 32 + 96]
                        _9759 = mem[_4773 + _9110 + 96]
                        s = 0
                        while s < 32 * _9759:
                            mem[s + _4773 + ceil32(return_data.size) + 128] = mem[s + _4773 + _9110 + 128]
                            s = s + 32
                            continue 
                        mem[64] = (32 * _9759) + _4773 + ceil32(return_data.size) + 128
                        require mem[_4773 + ceil32(return_data.size) + 96] - 1 < mem[_4773 + ceil32(return_data.size) + 96]
                        if mem[(32 * mem[_4773 + ceil32(return_data.size) + 96] - 1) + _4773 + ceil32(return_data.size) + 128] <= t:
                            idx = idx + 1
                            t = t
                            continue 
                        idx = idx + 1
                        t = mem[(32 * mem[_4773 + ceil32(return_data.size) + 96] - 1) + _4773 + ceil32(return_data.size) + 128]
                        continue 
                    if 8 == idx:
                        _4999 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        require 0 < mem[_4999]
                        mem[_4999 + 32] = 0x49d68029688eabf473097a2fc38ef61633a3c
                        require 1 < mem[_4999]
                        mem[_4999 + 64] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                        mem[_4999 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[_4999 + 100] = s
                        mem[_4999 + 132] = 64
                        mem[_4999 + 164] = mem[_4999]
                        u = 0
                        while u < 32 * mem[_4999]:
                            mem[u + _4999 + 196] = mem[u + _4999 + 32]
                            u = u + 32
                            continue 
                        require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                        staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c29.getAmountsOut(uint256 arg1, address[] arg2) with:
                                gas gas_remaining wei
                               args s, 64, mem[_4999 + 164 len (32 * mem[_4999]) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_4999 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = _4999 + ceil32(return_data.size) + 96
                        require return_data.size >= 32
                        _9108 = mem[_4999 + 96 len 4], Mask(224, 32, s) >> 32
                        require mem[_4999 + 96 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                        require mem[_4999 + 96 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                        require mem[_4999 + mem[_4999 + 96 len 4], Mask(224, 32, s) >> 32 + 96] <= 4294967296 and mem[_4999 + 96 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_4999 + mem[_4999 + 96 len 4], Mask(224, 32, s) >> 32 + 96]) + 32 <= return_data.size
                        mem[_4999 + ceil32(return_data.size) + 96] = mem[_4999 + mem[_4999 + 96 len 4], Mask(224, 32, s) >> 32 + 96]
                        _9758 = mem[_4999 + _9108 + 96]
                        s = 0
                        while s < 32 * _9758:
                            mem[s + _4999 + ceil32(return_data.size) + 128] = mem[s + _4999 + _9108 + 128]
                            s = s + 32
                            continue 
                        mem[64] = (32 * _9758) + _4999 + ceil32(return_data.size) + 128
                        require mem[_4999 + ceil32(return_data.size) + 96] - 1 < mem[_4999 + ceil32(return_data.size) + 96]
                        if mem[(32 * mem[_4999 + ceil32(return_data.size) + 96] - 1) + _4999 + ceil32(return_data.size) + 128] <= t:
                            idx = idx + 1
                            t = t
                            continue 
                        idx = idx + 1
                        t = mem[(32 * mem[_4999 + ceil32(return_data.size) + 96] - 1) + _4999 + ceil32(return_data.size) + 128]
                        continue 
                    if idx != 9:
                        _4997 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        require 0 < mem[_4997]
                        mem[_4997 + 32] = 0x49d68029688eabf473097a2fc38ef61633a3c
                        require 1 < mem[_4997]
                        mem[_4997 + 64] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                        mem[_4997 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[_4997 + 100] = s
                        mem[_4997 + 132] = 64
                        mem[_4997 + 164] = mem[_4997]
                        u = 0
                        while u < 32 * mem[_4997]:
                            mem[u + _4997 + 196] = mem[u + _4997 + 32]
                            u = u + 32
                            continue 
                        require ext_code.size(0)
                        staticcall 0x0.getAmountsOut(uint256 arg1, address[] arg2) with:
                                gas gas_remaining wei
                               args s, 64, mem[_4997 + 164 len (32 * mem[_4997]) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_4997 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = _4997 + ceil32(return_data.size) + 96
                        require return_data.size >= 32
                        _9104 = mem[_4997 + 96 len 4], Mask(224, 32, s) >> 32
                        require mem[_4997 + 96 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                        require mem[_4997 + 96 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                        require mem[_4997 + mem[_4997 + 96 len 4], Mask(224, 32, s) >> 32 + 96] <= 4294967296 and mem[_4997 + 96 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_4997 + mem[_4997 + 96 len 4], Mask(224, 32, s) >> 32 + 96]) + 32 <= return_data.size
                        mem[_4997 + ceil32(return_data.size) + 96] = mem[_4997 + mem[_4997 + 96 len 4], Mask(224, 32, s) >> 32 + 96]
                        _9756 = mem[_4997 + _9104 + 96]
                        s = 0
                        while s < 32 * _9756:
                            mem[s + _4997 + ceil32(return_data.size) + 128] = mem[s + _4997 + _9104 + 128]
                            s = s + 32
                            continue 
                        mem[64] = (32 * _9756) + _4997 + ceil32(return_data.size) + 128
                        require mem[_4997 + ceil32(return_data.size) + 96] - 1 < mem[_4997 + ceil32(return_data.size) + 96]
                        if mem[(32 * mem[_4997 + ceil32(return_data.size) + 96] - 1) + _4997 + ceil32(return_data.size) + 128] <= t:
                            idx = idx + 1
                            t = t
                            continue 
                        idx = idx + 1
                        t = mem[(32 * mem[_4997 + ceil32(return_data.size) + 96] - 1) + _4997 + ceil32(return_data.size) + 128]
                        continue 
                    _5227 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    require 0 < mem[_5227]
                    mem[_5227 + 32] = 0x49d68029688eabf473097a2fc38ef61633a3c
                    require 1 < mem[_5227]
                    mem[_5227 + 64] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    mem[_5227 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_5227 + 100] = s
                    mem[_5227 + 132] = 64
                    mem[_5227 + 164] = mem[_5227]
                    u = 0
                    while u < 32 * mem[_5227]:
                        mem[u + _5227 + 196] = mem[u + _5227 + 32]
                        u = u + 32
                        continue 
                    require ext_code.size(0x6b3d631b87fe27af29efec61d2ab8ce4d621ccbf)
                    staticcall 0x6b3d631b87fe27af29efec61d2ab8ce4d621ccbf.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args s, 64, mem[_5227 + 164 len (32 * mem[_5227]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_5227 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _5227 + ceil32(return_data.size) + 96
                    require return_data.size >= 32
                    _9106 = mem[_5227 + 96 len 4], Mask(224, 32, s) >> 32
                    require mem[_5227 + 96 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                    require mem[_5227 + 96 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                    require mem[_5227 + mem[_5227 + 96 len 4], Mask(224, 32, s) >> 32 + 96] <= 4294967296 and mem[_5227 + 96 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_5227 + mem[_5227 + 96 len 4], Mask(224, 32, s) >> 32 + 96]) + 32 <= return_data.size
                    mem[_5227 + ceil32(return_data.size) + 96] = mem[_5227 + mem[_5227 + 96 len 4], Mask(224, 32, s) >> 32 + 96]
                    _9757 = mem[_5227 + _9106 + 96]
                    s = 0
                    while s < 32 * _9757:
                        mem[s + _5227 + ceil32(return_data.size) + 128] = mem[s + _5227 + _9106 + 128]
                        s = s + 32
                        continue 
                    mem[64] = (32 * _9757) + _5227 + ceil32(return_data.size) + 128
                    require mem[_5227 + ceil32(return_data.size) + 96] - 1 < mem[_5227 + ceil32(return_data.size) + 96]
                    if mem[(32 * mem[_5227 + ceil32(return_data.size) + 96] - 1) + _5227 + ceil32(return_data.size) + 128] <= t:
                        idx = idx + 1
                        t = t
                        continue 
                    idx = idx + 1
                    t = mem[(32 * mem[_5227 + ceil32(return_data.size) + 96] - 1) + _5227 + ceil32(return_data.size) + 128]
                    continue 
                if idx != 9:
                    if idx != 10:
                        if s <= t:
                            idx = idx + 1
                            t = t
                            continue 
                        idx = idx + 1
                        t = s
                        continue 
                    mem[mem[64] + 4] = 0
                    mem[mem[64] + 36] = 1
                    mem[mem[64] + 68] = s
                    require ext_code.size(0x952bda8a83c3d5f398a686bb4e8c6dd90072d523)
                    staticcall 0x952bda8a83c3d5f398a686bb4e8c6dd90072d523.calculateSwap(uint8 arg1, uint8 arg2, uint256 arg3) with:
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
                if 7 == idx:
                    _5004 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    require 0 < mem[_5004]
                    mem[_5004 + 32] = 0x49d68029688eabf473097a2fc38ef61633a3c
                    require 1 < mem[_5004]
                    mem[_5004 + 64] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    mem[_5004 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_5004 + 100] = s
                    mem[_5004 + 132] = 64
                    mem[_5004 + 164] = mem[_5004]
                    u = 0
                    while u < 32 * mem[_5004]:
                        mem[u + _5004 + 196] = mem[u + _5004 + 32]
                        u = u + 32
                        continue 
                    require ext_code.size(0x845e76a8691423fbc4ecb8dd77556cb61c09ee25)
                    staticcall 0x845e76a8691423fbc4ecb8dd77556cb61c09ee25.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args s, 64, mem[_5004 + 164 len (32 * mem[_5004]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_5004 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _5004 + ceil32(return_data.size) + 96
                    require return_data.size >= 32
                    _9118 = mem[_5004 + 96 len 4], Mask(224, 32, s) >> 32
                    require mem[_5004 + 96 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                    require mem[_5004 + 96 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                    require mem[_5004 + mem[_5004 + 96 len 4], Mask(224, 32, s) >> 32 + 96] <= 4294967296 and mem[_5004 + 96 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_5004 + mem[_5004 + 96 len 4], Mask(224, 32, s) >> 32 + 96]) + 32 <= return_data.size
                    mem[_5004 + ceil32(return_data.size) + 96] = mem[_5004 + mem[_5004 + 96 len 4], Mask(224, 32, s) >> 32 + 96]
                    _9763 = mem[_5004 + _9118 + 96]
                    s = 0
                    while s < 32 * _9763:
                        mem[s + _5004 + ceil32(return_data.size) + 128] = mem[s + _5004 + _9118 + 128]
                        s = s + 32
                        continue 
                    mem[64] = (32 * _9763) + _5004 + ceil32(return_data.size) + 128
                    require mem[_5004 + ceil32(return_data.size) + 96] - 1 < mem[_5004 + ceil32(return_data.size) + 96]
                    if mem[(32 * mem[_5004 + ceil32(return_data.size) + 96] - 1) + _5004 + ceil32(return_data.size) + 128] <= t:
                        idx = idx + 1
                        t = t
                        continue 
                    idx = idx + 1
                    t = mem[(32 * mem[_5004 + ceil32(return_data.size) + 96] - 1) + _5004 + ceil32(return_data.size) + 128]
                    continue 
                if 8 == idx:
                    _5237 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    require 0 < mem[_5237]
                    mem[_5237 + 32] = 0x49d68029688eabf473097a2fc38ef61633a3c
                    require 1 < mem[_5237]
                    mem[_5237 + 64] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    mem[_5237 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_5237 + 100] = s
                    mem[_5237 + 132] = 64
                    mem[_5237 + 164] = mem[_5237]
                    u = 0
                    while u < 32 * mem[_5237]:
                        mem[u + _5237 + 196] = mem[u + _5237 + 32]
                        u = u + 32
                        continue 
                    require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                    staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c29.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args s, 64, mem[_5237 + 164 len (32 * mem[_5237]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_5237 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _5237 + ceil32(return_data.size) + 96
                    require return_data.size >= 32
                    _9116 = mem[_5237 + 96 len 4], Mask(224, 32, s) >> 32
                    require mem[_5237 + 96 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                    require mem[_5237 + 96 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                    require mem[_5237 + mem[_5237 + 96 len 4], Mask(224, 32, s) >> 32 + 96] <= 4294967296 and mem[_5237 + 96 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_5237 + mem[_5237 + 96 len 4], Mask(224, 32, s) >> 32 + 96]) + 32 <= return_data.size
                    mem[_5237 + ceil32(return_data.size) + 96] = mem[_5237 + mem[_5237 + 96 len 4], Mask(224, 32, s) >> 32 + 96]
                    _9762 = mem[_5237 + _9116 + 96]
                    s = 0
                    while s < 32 * _9762:
                        mem[s + _5237 + ceil32(return_data.size) + 128] = mem[s + _5237 + _9116 + 128]
                        s = s + 32
                        continue 
                    mem[64] = (32 * _9762) + _5237 + ceil32(return_data.size) + 128
                    require mem[_5237 + ceil32(return_data.size) + 96] - 1 < mem[_5237 + ceil32(return_data.size) + 96]
                    if mem[(32 * mem[_5237 + ceil32(return_data.size) + 96] - 1) + _5237 + ceil32(return_data.size) + 128] <= t:
                        idx = idx + 1
                        t = t
                        continue 
                    idx = idx + 1
                    t = mem[(32 * mem[_5237 + ceil32(return_data.size) + 96] - 1) + _5237 + ceil32(return_data.size) + 128]
                    continue 
                if idx != 9:
                    _5235 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    require 0 < mem[_5235]
                    mem[_5235 + 32] = 0x49d68029688eabf473097a2fc38ef61633a3c
                    require 1 < mem[_5235]
                    mem[_5235 + 64] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    mem[_5235 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_5235 + 100] = s
                    mem[_5235 + 132] = 64
                    mem[_5235 + 164] = mem[_5235]
                    u = 0
                    while u < 32 * mem[_5235]:
                        mem[u + _5235 + 196] = mem[u + _5235 + 32]
                        u = u + 32
                        continue 
                    require ext_code.size(0)
                    staticcall 0x0.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args s, 64, mem[_5235 + 164 len (32 * mem[_5235]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_5235 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _5235 + ceil32(return_data.size) + 96
                    require return_data.size >= 32
                    _9112 = mem[_5235 + 96 len 4], Mask(224, 32, s) >> 32
                    require mem[_5235 + 96 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                    require mem[_5235 + 96 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                    require mem[_5235 + mem[_5235 + 96 len 4], Mask(224, 32, s) >> 32 + 96] <= 4294967296 and mem[_5235 + 96 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_5235 + mem[_5235 + 96 len 4], Mask(224, 32, s) >> 32 + 96]) + 32 <= return_data.size
                    mem[_5235 + ceil32(return_data.size) + 96] = mem[_5235 + mem[_5235 + 96 len 4], Mask(224, 32, s) >> 32 + 96]
                    _9760 = mem[_5235 + _9112 + 96]
                    s = 0
                    while s < 32 * _9760:
                        mem[s + _5235 + ceil32(return_data.size) + 128] = mem[s + _5235 + _9112 + 128]
                        s = s + 32
                        continue 
                    mem[64] = (32 * _9760) + _5235 + ceil32(return_data.size) + 128
                    require mem[_5235 + ceil32(return_data.size) + 96] - 1 < mem[_5235 + ceil32(return_data.size) + 96]
                    if mem[(32 * mem[_5235 + ceil32(return_data.size) + 96] - 1) + _5235 + ceil32(return_data.size) + 128] <= t:
                        idx = idx + 1
                        t = t
                        continue 
                    idx = idx + 1
                    t = mem[(32 * mem[_5235 + ceil32(return_data.size) + 96] - 1) + _5235 + ceil32(return_data.size) + 128]
                    continue 
                _5510 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                require 0 < mem[_5510]
                mem[_5510 + 32] = 0x49d68029688eabf473097a2fc38ef61633a3c
                require 1 < mem[_5510]
                mem[_5510 + 64] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                mem[_5510 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_5510 + 100] = s
                mem[_5510 + 132] = 64
                mem[_5510 + 164] = mem[_5510]
                u = 0
                while u < 32 * mem[_5510]:
                    mem[u + _5510 + 196] = mem[u + _5510 + 32]
                    u = u + 32
                    continue 
                require ext_code.size(0x6b3d631b87fe27af29efec61d2ab8ce4d621ccbf)
                staticcall 0x6b3d631b87fe27af29efec61d2ab8ce4d621ccbf.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args s, 64, mem[_5510 + 164 len (32 * mem[_5510]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_5510 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _5510 + ceil32(return_data.size) + 96
                require return_data.size >= 32
                _9114 = mem[_5510 + 96 len 4], Mask(224, 32, s) >> 32
                require mem[_5510 + 96 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                require mem[_5510 + 96 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                require mem[_5510 + mem[_5510 + 96 len 4], Mask(224, 32, s) >> 32 + 96] <= 4294967296 and mem[_5510 + 96 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_5510 + mem[_5510 + 96 len 4], Mask(224, 32, s) >> 32 + 96]) + 32 <= return_data.size
                mem[_5510 + ceil32(return_data.size) + 96] = mem[_5510 + mem[_5510 + 96 len 4], Mask(224, 32, s) >> 32 + 96]
                _9761 = mem[_5510 + _9114 + 96]
                s = 0
                while s < 32 * _9761:
                    mem[s + _5510 + ceil32(return_data.size) + 128] = mem[s + _5510 + _9114 + 128]
                    s = s + 32
                    continue 
                mem[64] = (32 * _9761) + _5510 + ceil32(return_data.size) + 128
                require mem[_5510 + ceil32(return_data.size) + 96] - 1 < mem[_5510 + ceil32(return_data.size) + 96]
                if mem[(32 * mem[_5510 + ceil32(return_data.size) + 96] - 1) + _5510 + ceil32(return_data.size) + 128] <= t:
                    idx = idx + 1
                    t = t
                    continue 
                idx = idx + 1
                t = mem[(32 * mem[_5510 + ceil32(return_data.size) + 96] - 1) + _5510 + ceil32(return_data.size) + 128]
                continue 
            _3812 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            require 0 < mem[_3812]
            mem[_3812 + 32] = 0x49d68029688eabf473097a2fc38ef61633a3c
            require 1 < mem[_3812]
            mem[_3812 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
            mem[_3812 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[_3812 + 100] = s
            mem[_3812 + 132] = 64
            mem[_3812 + 164] = mem[_3812]
            u = 0
            while u < 32 * mem[_3812]:
                mem[u + _3812 + 196] = mem[u + _3812 + 32]
                u = u + 32
                continue 
            require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
            staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c29.getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args s, 64, mem[_3812 + 164 len (32 * mem[_3812]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[_3812 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = _3812 + ceil32(return_data.size) + 96
            require return_data.size >= 32
            _9120 = mem[_3812 + 96 len 4], Mask(224, 32, s) >> 32
            require mem[_3812 + 96 len 4], Mask(224, 32, s) >> 32 <= 4294967296
            require mem[_3812 + 96 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
            require mem[_3812 + mem[_3812 + 96 len 4], Mask(224, 32, s) >> 32 + 96] <= 4294967296 and mem[_3812 + 96 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_3812 + mem[_3812 + 96 len 4], Mask(224, 32, s) >> 32 + 96]) + 32 <= return_data.size
            mem[_3812 + ceil32(return_data.size) + 96] = mem[_3812 + mem[_3812 + 96 len 4], Mask(224, 32, s) >> 32 + 96]
            _9764 = mem[_3812 + _9120 + 96]
            s = 0
            while s < 32 * _9764:
                mem[s + _3812 + ceil32(return_data.size) + 128] = mem[s + _3812 + _9120 + 128]
                s = s + 32
                continue 
            mem[64] = (32 * _9764) + _3812 + ceil32(return_data.size) + 128
            require mem[_3812 + ceil32(return_data.size) + 96] - 1 < mem[_3812 + ceil32(return_data.size) + 96]
            _11892 = mem[(32 * mem[_3812 + ceil32(return_data.size) + 96] - 1) + _3812 + ceil32(return_data.size) + 128]
            mem[(32 * _9764) + _3812 + ceil32(return_data.size) + 128] = 2
            mem[(32 * _9764) + _3812 + ceil32(return_data.size) + 160] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
            mem[(32 * _9764) + _3812 + ceil32(return_data.size) + 192] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
            mem[(32 * _9764) + _3812 + ceil32(return_data.size) + 224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[(32 * _9764) + _3812 + ceil32(return_data.size) + 228] = _11892
            mem[(32 * _9764) + _3812 + ceil32(return_data.size) + 260] = 64
            mem[(32 * _9764) + _3812 + ceil32(return_data.size) + 292] = 2
            s = 0
            while s < 64:
                mem[s + (32 * _9764) + _3812 + ceil32(return_data.size) + 324] = mem[s + (32 * _9764) + _3812 + ceil32(return_data.size) + 160]
                s = s + 32
                continue 
            require ext_code.size(0x1b02da8cb0d097eb8d57a175b88c7d8b47997506)
            staticcall 0x1b02da8cb0d097eb8d57a175b88c7d8b47997506.getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args _11892, Array(len=2, data=mem[(32 * _9764) + _3812 + ceil32(return_data.size) + 324 len 64])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _9764) + _3812 + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * _9764) + _3812 + (2 * ceil32(return_data.size)) + 224
            require return_data.size >= 32
            _12512 = mem[(32 * _9764) + _3812 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _11892) >> 32
            require mem[(32 * _9764) + _3812 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _11892) >> 32 <= 4294967296
            require mem[(32 * _9764) + _3812 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _11892) >> 32 + 32 <= return_data.size
            require mem[(32 * _9764) + _3812 + ceil32(return_data.size) + mem[(32 * _9764) + _3812 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _11892) >> 32 + 224] <= 4294967296 and mem[(32 * _9764) + _3812 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _11892) >> 32 + (32 * mem[(32 * _9764) + _3812 + ceil32(return_data.size) + mem[(32 * _9764) + _3812 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _11892) >> 32 + 224]) + 32 <= return_data.size
            mem[(32 * _9764) + _3812 + (2 * ceil32(return_data.size)) + 224] = mem[(32 * _9764) + _3812 + ceil32(return_data.size) + mem[(32 * _9764) + _3812 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _11892) >> 32 + 224]
            _12560 = mem[(32 * _9764) + _3812 + ceil32(return_data.size) + _12512 + 224]
            s = 0
            while s < 32 * _12560:
                mem[s + (32 * _9764) + _3812 + (2 * ceil32(return_data.size)) + 256] = mem[s + (32 * _9764) + _3812 + ceil32(return_data.size) + _12512 + 256]
                s = s + 32
                continue 
            mem[64] = (32 * _12560) + (32 * _9764) + _3812 + (2 * ceil32(return_data.size)) + 256
            require mem[(32 * _9764) + _3812 + (2 * ceil32(return_data.size)) + 224] - 1 < mem[(32 * _9764) + _3812 + (2 * ceil32(return_data.size)) + 224]
            if mem[(32 * mem[(32 * _9764) + _3812 + (2 * ceil32(return_data.size)) + 224] - 1) + (32 * _9764) + _3812 + (2 * ceil32(return_data.size)) + 256] <= t:
                idx = idx + 1
                t = t
                continue 
            idx = idx + 1
            t = mem[(32 * mem[(32 * _9764) + _3812 + (2 * ceil32(return_data.size)) + 224] - 1) + (32 * _9764) + _3812 + (2 * ceil32(return_data.size)) + 256]
            continue 
}



}
