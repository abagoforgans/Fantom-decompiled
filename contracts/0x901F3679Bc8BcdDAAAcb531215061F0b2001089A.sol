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
            if idx < 4:
                _97 = mem[64]
                mem[mem[64]] = 3
                mem[64] = mem[64] + 128
                require 0 < mem[_97]
                mem[_97 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                require 1 < mem[_97]
                mem[_97 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                require 2 < mem[_97]
                mem[_97 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                mem[_97 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_97 + 132] = 0
                mem[_97 + 164] = 64
                mem[_97 + 196] = mem[_97]
                t = 0
                while t < 32 * mem[_97]:
                    mem[t + _97 + 228] = mem[t + _97 + 32]
                    t = t + 32
                    continue 
                if not idx:
                    require ext_code.size(0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52)
                    staticcall 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52.getAmountsOut(uint256 rg1, address[] rg2) with:
                            gas gas_remaining wei
                           args 0, 64, mem[_97 + 196 len (32 * mem[_97]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_97 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _97 + ceil32(return_data.size) + 128
                    require return_data.size >= 32
                    _961 = mem[_97 + 128 len 4], 0
                    require mem[_97 + 128 len 4], 0 <= 4294967296
                    require mem[_97 + 128 len 4], 0 + 32 <= return_data.size
                    require mem[_97 + mem[_97 + 128 len 4], 0 + 128] <= 4294967296 and mem[_97 + 128 len 4], 0 + (32 * mem[_97 + mem[_97 + 128 len 4], 0 + 128]) + 32 <= return_data.size
                    mem[_97 + ceil32(return_data.size) + 128] = mem[_97 + mem[_97 + 128 len 4], 0 + 128]
                    _1069 = mem[_97 + _961 + 128]
                    t = 0
                    while t < 32 * _1069:
                        mem[t + _97 + ceil32(return_data.size) + 160] = mem[t + _97 + _961 + 160]
                        t = t + 32
                        continue 
                    mem[64] = (32 * _1069) + _97 + ceil32(return_data.size) + 160
                else:
                    if 1 == idx:
                        require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                        staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c29.getAmountsOut(uint256 rg1, address[] rg2) with:
                                gas gas_remaining wei
                               args 0, 64, mem[_97 + 196 len (32 * mem[_97]) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_97 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = _97 + ceil32(return_data.size) + 128
                        require return_data.size >= 32
                        _959 = mem[_97 + 128 len 4], 0
                        require mem[_97 + 128 len 4], 0 <= 4294967296
                        require mem[_97 + 128 len 4], 0 + 32 <= return_data.size
                        require mem[_97 + mem[_97 + 128 len 4], 0 + 128] <= 4294967296 and mem[_97 + 128 len 4], 0 + (32 * mem[_97 + mem[_97 + 128 len 4], 0 + 128]) + 32 <= return_data.size
                        mem[_97 + ceil32(return_data.size) + 128] = mem[_97 + mem[_97 + 128 len 4], 0 + 128]
                        _1068 = mem[_97 + _959 + 128]
                        t = 0
                        while t < 32 * _1068:
                            mem[t + _97 + ceil32(return_data.size) + 160] = mem[t + _97 + _959 + 160]
                            t = t + 32
                            continue 
                        mem[64] = (32 * _1068) + _97 + ceil32(return_data.size) + 160
                    else:
                        if 2 == idx:
                            require ext_code.size(0x7b17021fcb7bc888641dc3bedfed3734fcaf2c87)
                            staticcall 0x7b17021fcb7bc888641dc3bedfed3734fcaf2c87.getAmountsOut(uint256 rg1, address[] rg2) with:
                                    gas gas_remaining wei
                                   args 0, 64, mem[_97 + 196 len (32 * mem[_97]) + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[_97 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = _97 + ceil32(return_data.size) + 128
                            require return_data.size >= 32
                            _957 = mem[_97 + 128 len 4], 0
                            require mem[_97 + 128 len 4], 0 <= 4294967296
                            require mem[_97 + 128 len 4], 0 + 32 <= return_data.size
                            require mem[_97 + mem[_97 + 128 len 4], 0 + 128] <= 4294967296 and mem[_97 + 128 len 4], 0 + (32 * mem[_97 + mem[_97 + 128 len 4], 0 + 128]) + 32 <= return_data.size
                            mem[_97 + ceil32(return_data.size) + 128] = mem[_97 + mem[_97 + 128 len 4], 0 + 128]
                            _1067 = mem[_97 + _957 + 128]
                            t = 0
                            while t < 32 * _1067:
                                mem[t + _97 + ceil32(return_data.size) + 160] = mem[t + _97 + _957 + 160]
                                t = t + 32
                                continue 
                            mem[64] = (32 * _1067) + _97 + ceil32(return_data.size) + 160
                        else:
                            if idx != 3:
                                require ext_code.size(0)
                                staticcall 0x0.getAmountsOut(uint256 rg1, address[] rg2) with:
                                        gas gas_remaining wei
                                       args 0, 64, mem[_97 + 196 len (32 * mem[_97]) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[_97 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = _97 + ceil32(return_data.size) + 128
                                require return_data.size >= 32
                                _953 = mem[_97 + 128 len 4], 0
                                require mem[_97 + 128 len 4], 0 <= 4294967296
                                require mem[_97 + 128 len 4], 0 + 32 <= return_data.size
                                require mem[_97 + mem[_97 + 128 len 4], 0 + 128] <= 4294967296 and mem[_97 + 128 len 4], 0 + (32 * mem[_97 + mem[_97 + 128 len 4], 0 + 128]) + 32 <= return_data.size
                                mem[_97 + ceil32(return_data.size) + 128] = mem[_97 + mem[_97 + 128 len 4], 0 + 128]
                                _1065 = mem[_97 + _953 + 128]
                                t = 0
                                while t < 32 * _1065:
                                    mem[t + _97 + ceil32(return_data.size) + 160] = mem[t + _97 + _953 + 160]
                                    t = t + 32
                                    continue 
                                mem[64] = (32 * _1065) + _97 + ceil32(return_data.size) + 160
                            else:
                                require ext_code.size(0x53c153a0df7e050bbefbb70ee9632061f12795fb)
                                staticcall 0x53c153a0df7e050bbefbb70ee9632061f12795fb.getAmountsOut(uint256 rg1, address[] rg2) with:
                                        gas gas_remaining wei
                                       args 0, 64, mem[_97 + 196 len (32 * mem[_97]) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[_97 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = _97 + ceil32(return_data.size) + 128
                                require return_data.size >= 32
                                _955 = mem[_97 + 128 len 4], 0
                                require mem[_97 + 128 len 4], 0 <= 4294967296
                                require mem[_97 + 128 len 4], 0 + 32 <= return_data.size
                                require mem[_97 + mem[_97 + 128 len 4], 0 + 128] <= 4294967296 and mem[_97 + 128 len 4], 0 + (32 * mem[_97 + mem[_97 + 128 len 4], 0 + 128]) + 32 <= return_data.size
                                mem[_97 + ceil32(return_data.size) + 128] = mem[_97 + mem[_97 + 128 len 4], 0 + 128]
                                _1066 = mem[_97 + _955 + 128]
                                t = 0
                                while t < 32 * _1066:
                                    mem[t + _97 + ceil32(return_data.size) + 160] = mem[t + _97 + _955 + 160]
                                    t = t + 32
                                    continue 
                                mem[64] = (32 * _1066) + _97 + ceil32(return_data.size) + 160
                require mem[_97 + ceil32(return_data.size) + 128] - 1 < mem[_97 + ceil32(return_data.size) + 128]
                if mem[(32 * mem[_97 + ceil32(return_data.size) + 128] - 1) + _97 + ceil32(return_data.size) + 160] <= s:
                    idx = idx + 1
                    s = s
                    continue 
                idx = idx + 1
                s = mem[(32 * mem[_97 + ceil32(return_data.size) + 128] - 1) + _97 + ceil32(return_data.size) + 160]
                continue 
            if idx != 4:
                if 0 <= s:
                    idx = idx + 1
                    s = s
                    continue 
                idx = idx + 1
                s = 0
                continue 
            _121 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            require 0 < mem[_121]
            mem[_121 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
            require 1 < mem[_121]
            mem[_121 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
            mem[_121 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[_121 + 100] = 0
            mem[_121 + 132] = 64
            mem[_121 + 164] = mem[_121]
            t = 0
            while t < 32 * mem[_121]:
                mem[t + _121 + 196] = mem[t + _121 + 32]
                t = t + 32
                continue 
            require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
            staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c29.getAmountsOut(uint256 rg1, address[] rg2) with:
                    gas gas_remaining wei
                   args 0, 64, mem[_121 + 164 len (32 * mem[_121]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[_121 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = _121 + ceil32(return_data.size) + 96
            require return_data.size >= 32
            _949 = mem[_121 + 96 len 4], 0
            require mem[_121 + 96 len 4], 0 <= 4294967296
            require mem[_121 + 96 len 4], 0 + 32 <= return_data.size
            require mem[_121 + mem[_121 + 96 len 4], 0 + 96] <= 4294967296 and mem[_121 + 96 len 4], 0 + (32 * mem[_121 + mem[_121 + 96 len 4], 0 + 96]) + 32 <= return_data.size
            mem[_121 + ceil32(return_data.size) + 96] = mem[_121 + mem[_121 + 96 len 4], 0 + 96]
            _1063 = mem[_121 + _949 + 96]
            t = 0
            while t < 32 * _1063:
                mem[t + _121 + ceil32(return_data.size) + 128] = mem[t + _121 + _949 + 128]
                t = t + 32
                continue 
            mem[64] = (32 * _1063) + _121 + ceil32(return_data.size) + 128
            require mem[_121 + ceil32(return_data.size) + 96] - 1 < mem[_121 + ceil32(return_data.size) + 96]
            _2413 = mem[(32 * mem[_121 + ceil32(return_data.size) + 96] - 1) + _121 + ceil32(return_data.size) + 128]
            mem[(32 * _1063) + _121 + ceil32(return_data.size) + 128] = 2
            mem[(32 * _1063) + _121 + ceil32(return_data.size) + 160] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
            mem[(32 * _1063) + _121 + ceil32(return_data.size) + 192] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
            mem[(32 * _1063) + _121 + ceil32(return_data.size) + 224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[(32 * _1063) + _121 + ceil32(return_data.size) + 228] = _2413
            mem[(32 * _1063) + _121 + ceil32(return_data.size) + 260] = 64
            mem[(32 * _1063) + _121 + ceil32(return_data.size) + 292] = 2
            t = 0
            while t < 64:
                mem[t + (32 * _1063) + _121 + ceil32(return_data.size) + 324] = mem[t + (32 * _1063) + _121 + ceil32(return_data.size) + 160]
                t = t + 32
                continue 
            require ext_code.size(0x1b02da8cb0d097eb8d57a175b88c7d8b47997506)
            staticcall 0x1b02da8cb0d097eb8d57a175b88c7d8b47997506.getAmountsOut(uint256 rg1, address[] rg2) with:
                    gas gas_remaining wei
                   args _2413, Array(len=2, data=mem[(32 * _1063) + _121 + ceil32(return_data.size) + 324 len 64])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _1063) + _121 + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * _1063) + _121 + (2 * ceil32(return_data.size)) + 224
            require return_data.size >= 32
            _3363 = mem[(32 * _1063) + _121 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _2413) >> 32
            require mem[(32 * _1063) + _121 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _2413) >> 32 <= 4294967296
            require mem[(32 * _1063) + _121 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _2413) >> 32 + 32 <= return_data.size
            require mem[(32 * _1063) + _121 + ceil32(return_data.size) + mem[(32 * _1063) + _121 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _2413) >> 32 + 224] <= 4294967296 and mem[(32 * _1063) + _121 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _2413) >> 32 + (32 * mem[(32 * _1063) + _121 + ceil32(return_data.size) + mem[(32 * _1063) + _121 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _2413) >> 32 + 224]) + 32 <= return_data.size
            mem[(32 * _1063) + _121 + (2 * ceil32(return_data.size)) + 224] = mem[(32 * _1063) + _121 + ceil32(return_data.size) + mem[(32 * _1063) + _121 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _2413) >> 32 + 224]
            _3417 = mem[(32 * _1063) + _121 + ceil32(return_data.size) + _3363 + 224]
            t = 0
            while t < 32 * _3417:
                mem[t + (32 * _1063) + _121 + (2 * ceil32(return_data.size)) + 256] = mem[t + (32 * _1063) + _121 + ceil32(return_data.size) + _3363 + 256]
                t = t + 32
                continue 
            mem[64] = (32 * _3417) + (32 * _1063) + _121 + (2 * ceil32(return_data.size)) + 256
            require mem[(32 * _1063) + _121 + (2 * ceil32(return_data.size)) + 224] - 1 < mem[(32 * _1063) + _121 + (2 * ceil32(return_data.size)) + 224]
            if mem[(32 * mem[(32 * _1063) + _121 + (2 * ceil32(return_data.size)) + 224] - 1) + (32 * _1063) + _121 + (2 * ceil32(return_data.size)) + 256] <= s:
                idx = idx + 1
                s = s
                continue 
            idx = idx + 1
            s = mem[(32 * mem[(32 * _1063) + _121 + (2 * ceil32(return_data.size)) + 224] - 1) + (32 * _1063) + _121 + (2 * ceil32(return_data.size)) + 256]
            continue 
        idx = 0
        t = 0
        while idx < 5:
            if idx < 4:
                _893 = mem[64]
                mem[mem[64]] = 3
                mem[64] = mem[64] + 128
                require 0 < mem[_893]
                mem[_893 + 32] = 0x74b23882a30290451a17c44f4f05243b6b58c76d
                require 1 < mem[_893]
                mem[_893 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                require 2 < mem[_893]
                mem[_893 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                mem[_893 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_893 + 132] = s
                mem[_893 + 164] = 64
                mem[_893 + 196] = mem[_893]
                u = 0
                while u < 32 * mem[_893]:
                    mem[u + _893 + 228] = mem[u + _893 + 32]
                    u = u + 32
                    continue 
                if not idx:
                    require ext_code.size(0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52)
                    staticcall 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52.getAmountsOut(uint256 rg1, address[] rg2) with:
                            gas gas_remaining wei
                           args s, 64, mem[_893 + 196 len (32 * mem[_893]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_893 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _893 + ceil32(return_data.size) + 128
                    require return_data.size >= 32
                    _2541 = mem[_893 + 128 len 4], Mask(224, 32, s) >> 32
                    require mem[_893 + 128 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                    require mem[_893 + 128 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                    require mem[_893 + mem[_893 + 128 len 4], Mask(224, 32, s) >> 32 + 128] <= 4294967296 and mem[_893 + 128 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_893 + mem[_893 + 128 len 4], Mask(224, 32, s) >> 32 + 128]) + 32 <= return_data.size
                    mem[_893 + ceil32(return_data.size) + 128] = mem[_893 + mem[_893 + 128 len 4], Mask(224, 32, s) >> 32 + 128]
                    _2684 = mem[_893 + _2541 + 128]
                    s = 0
                    while s < 32 * _2684:
                        mem[s + _893 + ceil32(return_data.size) + 160] = mem[s + _893 + _2541 + 160]
                        s = s + 32
                        continue 
                    mem[64] = (32 * _2684) + _893 + ceil32(return_data.size) + 160
                else:
                    if 1 == idx:
                        require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                        staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c29.getAmountsOut(uint256 rg1, address[] rg2) with:
                                gas gas_remaining wei
                               args s, 64, mem[_893 + 196 len (32 * mem[_893]) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_893 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = _893 + ceil32(return_data.size) + 128
                        require return_data.size >= 32
                        _2539 = mem[_893 + 128 len 4], Mask(224, 32, s) >> 32
                        require mem[_893 + 128 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                        require mem[_893 + 128 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                        require mem[_893 + mem[_893 + 128 len 4], Mask(224, 32, s) >> 32 + 128] <= 4294967296 and mem[_893 + 128 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_893 + mem[_893 + 128 len 4], Mask(224, 32, s) >> 32 + 128]) + 32 <= return_data.size
                        mem[_893 + ceil32(return_data.size) + 128] = mem[_893 + mem[_893 + 128 len 4], Mask(224, 32, s) >> 32 + 128]
                        _2683 = mem[_893 + _2539 + 128]
                        s = 0
                        while s < 32 * _2683:
                            mem[s + _893 + ceil32(return_data.size) + 160] = mem[s + _893 + _2539 + 160]
                            s = s + 32
                            continue 
                        mem[64] = (32 * _2683) + _893 + ceil32(return_data.size) + 160
                    else:
                        if 2 == idx:
                            require ext_code.size(0x7b17021fcb7bc888641dc3bedfed3734fcaf2c87)
                            staticcall 0x7b17021fcb7bc888641dc3bedfed3734fcaf2c87.getAmountsOut(uint256 rg1, address[] rg2) with:
                                    gas gas_remaining wei
                                   args s, 64, mem[_893 + 196 len (32 * mem[_893]) + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[_893 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = _893 + ceil32(return_data.size) + 128
                            require return_data.size >= 32
                            _2537 = mem[_893 + 128 len 4], Mask(224, 32, s) >> 32
                            require mem[_893 + 128 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                            require mem[_893 + 128 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                            require mem[_893 + mem[_893 + 128 len 4], Mask(224, 32, s) >> 32 + 128] <= 4294967296 and mem[_893 + 128 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_893 + mem[_893 + 128 len 4], Mask(224, 32, s) >> 32 + 128]) + 32 <= return_data.size
                            mem[_893 + ceil32(return_data.size) + 128] = mem[_893 + mem[_893 + 128 len 4], Mask(224, 32, s) >> 32 + 128]
                            _2682 = mem[_893 + _2537 + 128]
                            s = 0
                            while s < 32 * _2682:
                                mem[s + _893 + ceil32(return_data.size) + 160] = mem[s + _893 + _2537 + 160]
                                s = s + 32
                                continue 
                            mem[64] = (32 * _2682) + _893 + ceil32(return_data.size) + 160
                        else:
                            if idx != 3:
                                require ext_code.size(0)
                                staticcall 0x0.getAmountsOut(uint256 rg1, address[] rg2) with:
                                        gas gas_remaining wei
                                       args s, 64, mem[_893 + 196 len (32 * mem[_893]) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[_893 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = _893 + ceil32(return_data.size) + 128
                                require return_data.size >= 32
                                _2533 = mem[_893 + 128 len 4], Mask(224, 32, s) >> 32
                                require mem[_893 + 128 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                                require mem[_893 + 128 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                                require mem[_893 + mem[_893 + 128 len 4], Mask(224, 32, s) >> 32 + 128] <= 4294967296 and mem[_893 + 128 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_893 + mem[_893 + 128 len 4], Mask(224, 32, s) >> 32 + 128]) + 32 <= return_data.size
                                mem[_893 + ceil32(return_data.size) + 128] = mem[_893 + mem[_893 + 128 len 4], Mask(224, 32, s) >> 32 + 128]
                                _2680 = mem[_893 + _2533 + 128]
                                s = 0
                                while s < 32 * _2680:
                                    mem[s + _893 + ceil32(return_data.size) + 160] = mem[s + _893 + _2533 + 160]
                                    s = s + 32
                                    continue 
                                mem[64] = (32 * _2680) + _893 + ceil32(return_data.size) + 160
                            else:
                                require ext_code.size(0x53c153a0df7e050bbefbb70ee9632061f12795fb)
                                staticcall 0x53c153a0df7e050bbefbb70ee9632061f12795fb.getAmountsOut(uint256 rg1, address[] rg2) with:
                                        gas gas_remaining wei
                                       args s, 64, mem[_893 + 196 len (32 * mem[_893]) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[_893 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = _893 + ceil32(return_data.size) + 128
                                require return_data.size >= 32
                                _2535 = mem[_893 + 128 len 4], Mask(224, 32, s) >> 32
                                require mem[_893 + 128 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                                require mem[_893 + 128 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                                require mem[_893 + mem[_893 + 128 len 4], Mask(224, 32, s) >> 32 + 128] <= 4294967296 and mem[_893 + 128 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_893 + mem[_893 + 128 len 4], Mask(224, 32, s) >> 32 + 128]) + 32 <= return_data.size
                                mem[_893 + ceil32(return_data.size) + 128] = mem[_893 + mem[_893 + 128 len 4], Mask(224, 32, s) >> 32 + 128]
                                _2681 = mem[_893 + _2535 + 128]
                                s = 0
                                while s < 32 * _2681:
                                    mem[s + _893 + ceil32(return_data.size) + 160] = mem[s + _893 + _2535 + 160]
                                    s = s + 32
                                    continue 
                                mem[64] = (32 * _2681) + _893 + ceil32(return_data.size) + 160
                require mem[_893 + ceil32(return_data.size) + 128] - 1 < mem[_893 + ceil32(return_data.size) + 128]
                if mem[(32 * mem[_893 + ceil32(return_data.size) + 128] - 1) + _893 + ceil32(return_data.size) + 160] <= t:
                    idx = idx + 1
                    t = t
                    continue 
                idx = idx + 1
                t = mem[(32 * mem[_893 + ceil32(return_data.size) + 128] - 1) + _893 + ceil32(return_data.size) + 160]
                continue 
            if idx != 4:
                if s <= t:
                    idx = idx + 1
                    t = t
                    continue 
                idx = idx + 1
                t = s
                continue 
            _1009 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            require 0 < mem[_1009]
            mem[_1009 + 32] = 0x74b23882a30290451a17c44f4f05243b6b58c76d
            require 1 < mem[_1009]
            mem[_1009 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
            mem[_1009 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[_1009 + 100] = s
            mem[_1009 + 132] = 64
            mem[_1009 + 164] = mem[_1009]
            u = 0
            while u < 32 * mem[_1009]:
                mem[u + _1009 + 196] = mem[u + _1009 + 32]
                u = u + 32
                continue 
            require ext_code.size(0x1b02da8cb0d097eb8d57a175b88c7d8b47997506)
            staticcall 0x1b02da8cb0d097eb8d57a175b88c7d8b47997506.getAmountsOut(uint256 rg1, address[] rg2) with:
                    gas gas_remaining wei
                   args s, 64, mem[_1009 + 164 len (32 * mem[_1009]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[_1009 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = _1009 + ceil32(return_data.size) + 96
            require return_data.size >= 32
            _2531 = mem[_1009 + 96 len 4], Mask(224, 32, s) >> 32
            require mem[_1009 + 96 len 4], Mask(224, 32, s) >> 32 <= 4294967296
            require mem[_1009 + 96 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
            require mem[_1009 + mem[_1009 + 96 len 4], Mask(224, 32, s) >> 32 + 96] <= 4294967296 and mem[_1009 + 96 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_1009 + mem[_1009 + 96 len 4], Mask(224, 32, s) >> 32 + 96]) + 32 <= return_data.size
            mem[_1009 + ceil32(return_data.size) + 96] = mem[_1009 + mem[_1009 + 96 len 4], Mask(224, 32, s) >> 32 + 96]
            _2679 = mem[_1009 + _2531 + 96]
            s = 0
            while s < 32 * _2679:
                mem[s + _1009 + ceil32(return_data.size) + 128] = mem[s + _1009 + _2531 + 128]
                s = s + 32
                continue 
            require mem[_1009 + ceil32(return_data.size) + 96] - 1 < mem[_1009 + ceil32(return_data.size) + 96]
            _3315 = mem[(32 * mem[_1009 + ceil32(return_data.size) + 96] - 1) + _1009 + ceil32(return_data.size) + 128]
            mem[(32 * _2679) + _1009 + ceil32(return_data.size) + 128] = 2
            mem[(32 * _2679) + _1009 + ceil32(return_data.size) + 160] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
            mem[(32 * _2679) + _1009 + ceil32(return_data.size) + 192] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
            mem[(32 * _2679) + _1009 + ceil32(return_data.size) + 224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[(32 * _2679) + _1009 + ceil32(return_data.size) + 228] = _3315
            mem[(32 * _2679) + _1009 + ceil32(return_data.size) + 260] = 64
            mem[(32 * _2679) + _1009 + ceil32(return_data.size) + 292] = 2
            s = 0
            while s < 64:
                mem[s + (32 * _2679) + _1009 + ceil32(return_data.size) + 324] = mem[s + (32 * _2679) + _1009 + ceil32(return_data.size) + 160]
                s = s + 32
                continue 
            require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
            staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c29.getAmountsOut(uint256 rg1, address[] rg2) with:
                    gas gas_remaining wei
                   args _3315, Array(len=2, data=mem[(32 * _2679) + _1009 + ceil32(return_data.size) + 324 len 64])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _2679) + _1009 + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * _2679) + _1009 + (2 * ceil32(return_data.size)) + 224
            require return_data.size >= 32
            _3611 = mem[(32 * _2679) + _1009 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _3315) >> 32
            require mem[(32 * _2679) + _1009 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _3315) >> 32 <= 4294967296
            require mem[(32 * _2679) + _1009 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _3315) >> 32 + 32 <= return_data.size
            require mem[(32 * _2679) + _1009 + ceil32(return_data.size) + mem[(32 * _2679) + _1009 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _3315) >> 32 + 224] <= 4294967296 and mem[(32 * _2679) + _1009 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _3315) >> 32 + (32 * mem[(32 * _2679) + _1009 + ceil32(return_data.size) + mem[(32 * _2679) + _1009 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _3315) >> 32 + 224]) + 32 <= return_data.size
            mem[(32 * _2679) + _1009 + (2 * ceil32(return_data.size)) + 224] = mem[(32 * _2679) + _1009 + ceil32(return_data.size) + mem[(32 * _2679) + _1009 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _3315) >> 32 + 224]
            _3631 = mem[(32 * _2679) + _1009 + ceil32(return_data.size) + _3611 + 224]
            s = 0
            while s < 32 * _3631:
                mem[s + (32 * _2679) + _1009 + (2 * ceil32(return_data.size)) + 256] = mem[s + (32 * _2679) + _1009 + ceil32(return_data.size) + _3611 + 256]
                s = s + 32
                continue 
            mem[64] = (32 * _3631) + (32 * _2679) + _1009 + (2 * ceil32(return_data.size)) + 256
            require mem[(32 * _2679) + _1009 + (2 * ceil32(return_data.size)) + 224] - 1 < mem[(32 * _2679) + _1009 + (2 * ceil32(return_data.size)) + 224]
            if mem[(32 * mem[(32 * _2679) + _1009 + (2 * ceil32(return_data.size)) + 224] - 1) + (32 * _2679) + _1009 + (2 * ceil32(return_data.size)) + 256] <= t:
                idx = idx + 1
                t = t
                continue 
            idx = idx + 1
            t = mem[(32 * mem[(32 * _2679) + _1009 + (2 * ceil32(return_data.size)) + 224] - 1) + (32 * _2679) + _1009 + (2 * ceil32(return_data.size)) + 256]
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
            if idx < 4:
                _89 = mem[64]
                mem[mem[64]] = 3
                mem[64] = mem[64] + 128
                require 0 < mem[_89]
                mem[_89 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                require 1 < mem[_89]
                mem[_89 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                require 2 < mem[_89]
                mem[_89 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                mem[_89 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_89 + 132] = 10^6 * sub_7d0b6809
                mem[_89 + 164] = 64
                mem[_89 + 196] = mem[_89]
                t = 0
                while t < 32 * mem[_89]:
                    mem[t + _89 + 228] = mem[t + _89 + 32]
                    t = t + 32
                    continue 
                if not idx:
                    require ext_code.size(0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52)
                    staticcall 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52.getAmountsOut(uint256 rg1, address[] rg2) with:
                            gas gas_remaining wei
                           args 10^6 * sub_7d0b6809, 64, mem[_89 + 196 len (32 * mem[_89]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_89 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _89 + ceil32(return_data.size) + 128
                    require return_data.size >= 32
                    _929 = mem[_89 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32
                    require mem[_89 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 <= 4294967296
                    require mem[_89 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 32 <= return_data.size
                    require mem[_89 + mem[_89 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 128] <= 4294967296 and mem[_89 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + (32 * mem[_89 + mem[_89 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 128]) + 32 <= return_data.size
                    mem[_89 + ceil32(return_data.size) + 128] = mem[_89 + mem[_89 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 128]
                    _1043 = mem[_89 + _929 + 128]
                    t = 0
                    while t < 32 * _1043:
                        mem[t + _89 + ceil32(return_data.size) + 160] = mem[t + _89 + _929 + 160]
                        t = t + 32
                        continue 
                    mem[64] = (32 * _1043) + _89 + ceil32(return_data.size) + 160
                else:
                    if 1 == idx:
                        require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                        staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c29.getAmountsOut(uint256 rg1, address[] rg2) with:
                                gas gas_remaining wei
                               args 10^6 * sub_7d0b6809, 64, mem[_89 + 196 len (32 * mem[_89]) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_89 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = _89 + ceil32(return_data.size) + 128
                        require return_data.size >= 32
                        _927 = mem[_89 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32
                        require mem[_89 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 <= 4294967296
                        require mem[_89 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 32 <= return_data.size
                        require mem[_89 + mem[_89 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 128] <= 4294967296 and mem[_89 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + (32 * mem[_89 + mem[_89 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 128]) + 32 <= return_data.size
                        mem[_89 + ceil32(return_data.size) + 128] = mem[_89 + mem[_89 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 128]
                        _1042 = mem[_89 + _927 + 128]
                        t = 0
                        while t < 32 * _1042:
                            mem[t + _89 + ceil32(return_data.size) + 160] = mem[t + _89 + _927 + 160]
                            t = t + 32
                            continue 
                        mem[64] = (32 * _1042) + _89 + ceil32(return_data.size) + 160
                    else:
                        if 2 == idx:
                            require ext_code.size(0x7b17021fcb7bc888641dc3bedfed3734fcaf2c87)
                            staticcall 0x7b17021fcb7bc888641dc3bedfed3734fcaf2c87.getAmountsOut(uint256 rg1, address[] rg2) with:
                                    gas gas_remaining wei
                                   args 10^6 * sub_7d0b6809, 64, mem[_89 + 196 len (32 * mem[_89]) + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[_89 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = _89 + ceil32(return_data.size) + 128
                            require return_data.size >= 32
                            _925 = mem[_89 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32
                            require mem[_89 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 <= 4294967296
                            require mem[_89 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 32 <= return_data.size
                            require mem[_89 + mem[_89 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 128] <= 4294967296 and mem[_89 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + (32 * mem[_89 + mem[_89 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 128]) + 32 <= return_data.size
                            mem[_89 + ceil32(return_data.size) + 128] = mem[_89 + mem[_89 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 128]
                            _1041 = mem[_89 + _925 + 128]
                            t = 0
                            while t < 32 * _1041:
                                mem[t + _89 + ceil32(return_data.size) + 160] = mem[t + _89 + _925 + 160]
                                t = t + 32
                                continue 
                            mem[64] = (32 * _1041) + _89 + ceil32(return_data.size) + 160
                        else:
                            if idx != 3:
                                require ext_code.size(0)
                                staticcall 0x0.getAmountsOut(uint256 rg1, address[] rg2) with:
                                        gas gas_remaining wei
                                       args 10^6 * sub_7d0b6809, 64, mem[_89 + 196 len (32 * mem[_89]) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[_89 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = _89 + ceil32(return_data.size) + 128
                                require return_data.size >= 32
                                _921 = mem[_89 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32
                                require mem[_89 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 <= 4294967296
                                require mem[_89 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 32 <= return_data.size
                                require mem[_89 + mem[_89 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 128] <= 4294967296 and mem[_89 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + (32 * mem[_89 + mem[_89 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 128]) + 32 <= return_data.size
                                mem[_89 + ceil32(return_data.size) + 128] = mem[_89 + mem[_89 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 128]
                                _1039 = mem[_89 + _921 + 128]
                                t = 0
                                while t < 32 * _1039:
                                    mem[t + _89 + ceil32(return_data.size) + 160] = mem[t + _89 + _921 + 160]
                                    t = t + 32
                                    continue 
                                mem[64] = (32 * _1039) + _89 + ceil32(return_data.size) + 160
                            else:
                                require ext_code.size(0x53c153a0df7e050bbefbb70ee9632061f12795fb)
                                staticcall 0x53c153a0df7e050bbefbb70ee9632061f12795fb.getAmountsOut(uint256 rg1, address[] rg2) with:
                                        gas gas_remaining wei
                                       args 10^6 * sub_7d0b6809, 64, mem[_89 + 196 len (32 * mem[_89]) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[_89 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = _89 + ceil32(return_data.size) + 128
                                require return_data.size >= 32
                                _923 = mem[_89 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32
                                require mem[_89 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 <= 4294967296
                                require mem[_89 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 32 <= return_data.size
                                require mem[_89 + mem[_89 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 128] <= 4294967296 and mem[_89 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + (32 * mem[_89 + mem[_89 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 128]) + 32 <= return_data.size
                                mem[_89 + ceil32(return_data.size) + 128] = mem[_89 + mem[_89 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 128]
                                _1040 = mem[_89 + _923 + 128]
                                t = 0
                                while t < 32 * _1040:
                                    mem[t + _89 + ceil32(return_data.size) + 160] = mem[t + _89 + _923 + 160]
                                    t = t + 32
                                    continue 
                                mem[64] = (32 * _1040) + _89 + ceil32(return_data.size) + 160
                require mem[_89 + ceil32(return_data.size) + 128] - 1 < mem[_89 + ceil32(return_data.size) + 128]
                if mem[(32 * mem[_89 + ceil32(return_data.size) + 128] - 1) + _89 + ceil32(return_data.size) + 160] <= s:
                    idx = idx + 1
                    s = s
                    continue 
                idx = idx + 1
                s = mem[(32 * mem[_89 + ceil32(return_data.size) + 128] - 1) + _89 + ceil32(return_data.size) + 160]
                continue 
            if idx != 4:
                if 10^6 * sub_7d0b6809 <= s:
                    idx = idx + 1
                    s = s
                    continue 
                idx = idx + 1
                s = 10^6 * sub_7d0b6809
                continue 
            _115 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            require 0 < mem[_115]
            mem[_115 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
            require 1 < mem[_115]
            mem[_115 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
            mem[_115 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[_115 + 100] = 10^6 * sub_7d0b6809
            mem[_115 + 132] = 64
            mem[_115 + 164] = mem[_115]
            t = 0
            while t < 32 * mem[_115]:
                mem[t + _115 + 196] = mem[t + _115 + 32]
                t = t + 32
                continue 
            require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
            staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c29.getAmountsOut(uint256 rg1, address[] rg2) with:
                    gas gas_remaining wei
                   args 10^6 * sub_7d0b6809, 64, mem[_115 + 164 len (32 * mem[_115]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[_115 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = _115 + ceil32(return_data.size) + 96
            require return_data.size >= 32
            _917 = mem[_115 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32
            require mem[_115 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 <= 4294967296
            require mem[_115 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 32 <= return_data.size
            require mem[_115 + mem[_115 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 96] <= 4294967296 and mem[_115 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + (32 * mem[_115 + mem[_115 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 96]) + 32 <= return_data.size
            mem[_115 + ceil32(return_data.size) + 96] = mem[_115 + mem[_115 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 96]
            _1037 = mem[_115 + _917 + 96]
            t = 0
            while t < 32 * _1037:
                mem[t + _115 + ceil32(return_data.size) + 128] = mem[t + _115 + _917 + 128]
                t = t + 32
                continue 
            mem[64] = (32 * _1037) + _115 + ceil32(return_data.size) + 128
            require mem[_115 + ceil32(return_data.size) + 96] - 1 < mem[_115 + ceil32(return_data.size) + 96]
            _2399 = mem[(32 * mem[_115 + ceil32(return_data.size) + 96] - 1) + _115 + ceil32(return_data.size) + 128]
            mem[(32 * _1037) + _115 + ceil32(return_data.size) + 128] = 2
            mem[(32 * _1037) + _115 + ceil32(return_data.size) + 160] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
            mem[(32 * _1037) + _115 + ceil32(return_data.size) + 192] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
            mem[(32 * _1037) + _115 + ceil32(return_data.size) + 224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[(32 * _1037) + _115 + ceil32(return_data.size) + 228] = _2399
            mem[(32 * _1037) + _115 + ceil32(return_data.size) + 260] = 64
            mem[(32 * _1037) + _115 + ceil32(return_data.size) + 292] = 2
            t = 0
            while t < 64:
                mem[t + (32 * _1037) + _115 + ceil32(return_data.size) + 324] = mem[t + (32 * _1037) + _115 + ceil32(return_data.size) + 160]
                t = t + 32
                continue 
            require ext_code.size(0x1b02da8cb0d097eb8d57a175b88c7d8b47997506)
            staticcall 0x1b02da8cb0d097eb8d57a175b88c7d8b47997506.getAmountsOut(uint256 rg1, address[] rg2) with:
                    gas gas_remaining wei
                   args _2399, Array(len=2, data=mem[(32 * _1037) + _115 + ceil32(return_data.size) + 324 len 64])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _1037) + _115 + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * _1037) + _115 + (2 * ceil32(return_data.size)) + 224
            require return_data.size >= 32
            _3355 = mem[(32 * _1037) + _115 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _2399) >> 32
            require mem[(32 * _1037) + _115 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _2399) >> 32 <= 4294967296
            require mem[(32 * _1037) + _115 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _2399) >> 32 + 32 <= return_data.size
            require mem[(32 * _1037) + _115 + ceil32(return_data.size) + mem[(32 * _1037) + _115 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _2399) >> 32 + 224] <= 4294967296 and mem[(32 * _1037) + _115 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _2399) >> 32 + (32 * mem[(32 * _1037) + _115 + ceil32(return_data.size) + mem[(32 * _1037) + _115 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _2399) >> 32 + 224]) + 32 <= return_data.size
            mem[(32 * _1037) + _115 + (2 * ceil32(return_data.size)) + 224] = mem[(32 * _1037) + _115 + ceil32(return_data.size) + mem[(32 * _1037) + _115 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _2399) >> 32 + 224]
            _3401 = mem[(32 * _1037) + _115 + ceil32(return_data.size) + _3355 + 224]
            t = 0
            while t < 32 * _3401:
                mem[t + (32 * _1037) + _115 + (2 * ceil32(return_data.size)) + 256] = mem[t + (32 * _1037) + _115 + ceil32(return_data.size) + _3355 + 256]
                t = t + 32
                continue 
            mem[64] = (32 * _3401) + (32 * _1037) + _115 + (2 * ceil32(return_data.size)) + 256
            require mem[(32 * _1037) + _115 + (2 * ceil32(return_data.size)) + 224] - 1 < mem[(32 * _1037) + _115 + (2 * ceil32(return_data.size)) + 224]
            if mem[(32 * mem[(32 * _1037) + _115 + (2 * ceil32(return_data.size)) + 224] - 1) + (32 * _1037) + _115 + (2 * ceil32(return_data.size)) + 256] <= s:
                idx = idx + 1
                s = s
                continue 
            idx = idx + 1
            s = mem[(32 * mem[(32 * _1037) + _115 + (2 * ceil32(return_data.size)) + 224] - 1) + (32 * _1037) + _115 + (2 * ceil32(return_data.size)) + 256]
            continue 
        idx = 0
        t = 0
        while idx < 5:
            if idx < 4:
                _871 = mem[64]
                mem[mem[64]] = 3
                mem[64] = mem[64] + 128
                require 0 < mem[_871]
                mem[_871 + 32] = 0x74b23882a30290451a17c44f4f05243b6b58c76d
                require 1 < mem[_871]
                mem[_871 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                require 2 < mem[_871]
                mem[_871 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                mem[_871 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_871 + 132] = s
                mem[_871 + 164] = 64
                mem[_871 + 196] = mem[_871]
                u = 0
                while u < 32 * mem[_871]:
                    mem[u + _871 + 228] = mem[u + _871 + 32]
                    u = u + 32
                    continue 
                if not idx:
                    require ext_code.size(0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52)
                    staticcall 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52.getAmountsOut(uint256 rg1, address[] rg2) with:
                            gas gas_remaining wei
                           args s, 64, mem[_871 + 196 len (32 * mem[_871]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_871 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _871 + ceil32(return_data.size) + 128
                    require return_data.size >= 32
                    _2493 = mem[_871 + 128 len 4], Mask(224, 32, s) >> 32
                    require mem[_871 + 128 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                    require mem[_871 + 128 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                    require mem[_871 + mem[_871 + 128 len 4], Mask(224, 32, s) >> 32 + 128] <= 4294967296 and mem[_871 + 128 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_871 + mem[_871 + 128 len 4], Mask(224, 32, s) >> 32 + 128]) + 32 <= return_data.size
                    mem[_871 + ceil32(return_data.size) + 128] = mem[_871 + mem[_871 + 128 len 4], Mask(224, 32, s) >> 32 + 128]
                    _2648 = mem[_871 + _2493 + 128]
                    s = 0
                    while s < 32 * _2648:
                        mem[s + _871 + ceil32(return_data.size) + 160] = mem[s + _871 + _2493 + 160]
                        s = s + 32
                        continue 
                    mem[64] = (32 * _2648) + _871 + ceil32(return_data.size) + 160
                else:
                    if 1 == idx:
                        require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                        staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c29.getAmountsOut(uint256 rg1, address[] rg2) with:
                                gas gas_remaining wei
                               args s, 64, mem[_871 + 196 len (32 * mem[_871]) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_871 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = _871 + ceil32(return_data.size) + 128
                        require return_data.size >= 32
                        _2491 = mem[_871 + 128 len 4], Mask(224, 32, s) >> 32
                        require mem[_871 + 128 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                        require mem[_871 + 128 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                        require mem[_871 + mem[_871 + 128 len 4], Mask(224, 32, s) >> 32 + 128] <= 4294967296 and mem[_871 + 128 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_871 + mem[_871 + 128 len 4], Mask(224, 32, s) >> 32 + 128]) + 32 <= return_data.size
                        mem[_871 + ceil32(return_data.size) + 128] = mem[_871 + mem[_871 + 128 len 4], Mask(224, 32, s) >> 32 + 128]
                        _2647 = mem[_871 + _2491 + 128]
                        s = 0
                        while s < 32 * _2647:
                            mem[s + _871 + ceil32(return_data.size) + 160] = mem[s + _871 + _2491 + 160]
                            s = s + 32
                            continue 
                        mem[64] = (32 * _2647) + _871 + ceil32(return_data.size) + 160
                    else:
                        if 2 == idx:
                            require ext_code.size(0x7b17021fcb7bc888641dc3bedfed3734fcaf2c87)
                            staticcall 0x7b17021fcb7bc888641dc3bedfed3734fcaf2c87.getAmountsOut(uint256 rg1, address[] rg2) with:
                                    gas gas_remaining wei
                                   args s, 64, mem[_871 + 196 len (32 * mem[_871]) + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[_871 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = _871 + ceil32(return_data.size) + 128
                            require return_data.size >= 32
                            _2489 = mem[_871 + 128 len 4], Mask(224, 32, s) >> 32
                            require mem[_871 + 128 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                            require mem[_871 + 128 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                            require mem[_871 + mem[_871 + 128 len 4], Mask(224, 32, s) >> 32 + 128] <= 4294967296 and mem[_871 + 128 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_871 + mem[_871 + 128 len 4], Mask(224, 32, s) >> 32 + 128]) + 32 <= return_data.size
                            mem[_871 + ceil32(return_data.size) + 128] = mem[_871 + mem[_871 + 128 len 4], Mask(224, 32, s) >> 32 + 128]
                            _2646 = mem[_871 + _2489 + 128]
                            s = 0
                            while s < 32 * _2646:
                                mem[s + _871 + ceil32(return_data.size) + 160] = mem[s + _871 + _2489 + 160]
                                s = s + 32
                                continue 
                            mem[64] = (32 * _2646) + _871 + ceil32(return_data.size) + 160
                        else:
                            if idx != 3:
                                require ext_code.size(0)
                                staticcall 0x0.getAmountsOut(uint256 rg1, address[] rg2) with:
                                        gas gas_remaining wei
                                       args s, 64, mem[_871 + 196 len (32 * mem[_871]) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[_871 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = _871 + ceil32(return_data.size) + 128
                                require return_data.size >= 32
                                _2485 = mem[_871 + 128 len 4], Mask(224, 32, s) >> 32
                                require mem[_871 + 128 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                                require mem[_871 + 128 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                                require mem[_871 + mem[_871 + 128 len 4], Mask(224, 32, s) >> 32 + 128] <= 4294967296 and mem[_871 + 128 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_871 + mem[_871 + 128 len 4], Mask(224, 32, s) >> 32 + 128]) + 32 <= return_data.size
                                mem[_871 + ceil32(return_data.size) + 128] = mem[_871 + mem[_871 + 128 len 4], Mask(224, 32, s) >> 32 + 128]
                                _2644 = mem[_871 + _2485 + 128]
                                s = 0
                                while s < 32 * _2644:
                                    mem[s + _871 + ceil32(return_data.size) + 160] = mem[s + _871 + _2485 + 160]
                                    s = s + 32
                                    continue 
                                mem[64] = (32 * _2644) + _871 + ceil32(return_data.size) + 160
                            else:
                                require ext_code.size(0x53c153a0df7e050bbefbb70ee9632061f12795fb)
                                staticcall 0x53c153a0df7e050bbefbb70ee9632061f12795fb.getAmountsOut(uint256 rg1, address[] rg2) with:
                                        gas gas_remaining wei
                                       args s, 64, mem[_871 + 196 len (32 * mem[_871]) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[_871 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = _871 + ceil32(return_data.size) + 128
                                require return_data.size >= 32
                                _2487 = mem[_871 + 128 len 4], Mask(224, 32, s) >> 32
                                require mem[_871 + 128 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                                require mem[_871 + 128 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                                require mem[_871 + mem[_871 + 128 len 4], Mask(224, 32, s) >> 32 + 128] <= 4294967296 and mem[_871 + 128 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_871 + mem[_871 + 128 len 4], Mask(224, 32, s) >> 32 + 128]) + 32 <= return_data.size
                                mem[_871 + ceil32(return_data.size) + 128] = mem[_871 + mem[_871 + 128 len 4], Mask(224, 32, s) >> 32 + 128]
                                _2645 = mem[_871 + _2487 + 128]
                                s = 0
                                while s < 32 * _2645:
                                    mem[s + _871 + ceil32(return_data.size) + 160] = mem[s + _871 + _2487 + 160]
                                    s = s + 32
                                    continue 
                                mem[64] = (32 * _2645) + _871 + ceil32(return_data.size) + 160
                require mem[_871 + ceil32(return_data.size) + 128] - 1 < mem[_871 + ceil32(return_data.size) + 128]
                if mem[(32 * mem[_871 + ceil32(return_data.size) + 128] - 1) + _871 + ceil32(return_data.size) + 160] <= t:
                    idx = idx + 1
                    t = t
                    continue 
                idx = idx + 1
                t = mem[(32 * mem[_871 + ceil32(return_data.size) + 128] - 1) + _871 + ceil32(return_data.size) + 160]
                continue 
            if idx != 4:
                if s <= t:
                    idx = idx + 1
                    t = t
                    continue 
                idx = idx + 1
                t = s
                continue 
            _987 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            require 0 < mem[_987]
            mem[_987 + 32] = 0x74b23882a30290451a17c44f4f05243b6b58c76d
            require 1 < mem[_987]
            mem[_987 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
            mem[_987 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[_987 + 100] = s
            mem[_987 + 132] = 64
            mem[_987 + 164] = mem[_987]
            u = 0
            while u < 32 * mem[_987]:
                mem[u + _987 + 196] = mem[u + _987 + 32]
                u = u + 32
                continue 
            require ext_code.size(0x1b02da8cb0d097eb8d57a175b88c7d8b47997506)
            staticcall 0x1b02da8cb0d097eb8d57a175b88c7d8b47997506.getAmountsOut(uint256 rg1, address[] rg2) with:
                    gas gas_remaining wei
                   args s, 64, mem[_987 + 164 len (32 * mem[_987]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[_987 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = _987 + ceil32(return_data.size) + 96
            require return_data.size >= 32
            _2483 = mem[_987 + 96 len 4], Mask(224, 32, s) >> 32
            require mem[_987 + 96 len 4], Mask(224, 32, s) >> 32 <= 4294967296
            require mem[_987 + 96 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
            require mem[_987 + mem[_987 + 96 len 4], Mask(224, 32, s) >> 32 + 96] <= 4294967296 and mem[_987 + 96 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_987 + mem[_987 + 96 len 4], Mask(224, 32, s) >> 32 + 96]) + 32 <= return_data.size
            mem[_987 + ceil32(return_data.size) + 96] = mem[_987 + mem[_987 + 96 len 4], Mask(224, 32, s) >> 32 + 96]
            _2643 = mem[_987 + _2483 + 96]
            s = 0
            while s < 32 * _2643:
                mem[s + _987 + ceil32(return_data.size) + 128] = mem[s + _987 + _2483 + 128]
                s = s + 32
                continue 
            mem[64] = (32 * _2643) + _987 + ceil32(return_data.size) + 128
            require mem[_987 + ceil32(return_data.size) + 96] - 1 < mem[_987 + ceil32(return_data.size) + 96]
            _3291 = mem[(32 * mem[_987 + ceil32(return_data.size) + 96] - 1) + _987 + ceil32(return_data.size) + 128]
            mem[(32 * _2643) + _987 + ceil32(return_data.size) + 128] = 2
            mem[(32 * _2643) + _987 + ceil32(return_data.size) + 160] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
            mem[(32 * _2643) + _987 + ceil32(return_data.size) + 192] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
            mem[(32 * _2643) + _987 + ceil32(return_data.size) + 224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[(32 * _2643) + _987 + ceil32(return_data.size) + 228] = _3291
            mem[(32 * _2643) + _987 + ceil32(return_data.size) + 260] = 64
            mem[(32 * _2643) + _987 + ceil32(return_data.size) + 292] = 2
            s = 0
            while s < 64:
                mem[s + (32 * _2643) + _987 + ceil32(return_data.size) + 324] = mem[s + (32 * _2643) + _987 + ceil32(return_data.size) + 160]
                s = s + 32
                continue 
            require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
            staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c29.getAmountsOut(uint256 rg1, address[] rg2) with:
                    gas gas_remaining wei
                   args _3291, Array(len=2, data=mem[(32 * _2643) + _987 + ceil32(return_data.size) + 324 len 64])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _2643) + _987 + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * _2643) + _987 + (2 * ceil32(return_data.size)) + 224
            require return_data.size >= 32
            _3603 = mem[(32 * _2643) + _987 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _3291) >> 32
            require mem[(32 * _2643) + _987 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _3291) >> 32 <= 4294967296
            require mem[(32 * _2643) + _987 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _3291) >> 32 + 32 <= return_data.size
            require mem[(32 * _2643) + _987 + ceil32(return_data.size) + mem[(32 * _2643) + _987 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _3291) >> 32 + 224] <= 4294967296 and mem[(32 * _2643) + _987 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _3291) >> 32 + (32 * mem[(32 * _2643) + _987 + ceil32(return_data.size) + mem[(32 * _2643) + _987 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _3291) >> 32 + 224]) + 32 <= return_data.size
            mem[(32 * _2643) + _987 + (2 * ceil32(return_data.size)) + 224] = mem[(32 * _2643) + _987 + ceil32(return_data.size) + mem[(32 * _2643) + _987 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _3291) >> 32 + 224]
            _3627 = mem[(32 * _2643) + _987 + ceil32(return_data.size) + _3603 + 224]
            s = 0
            while s < 32 * _3627:
                mem[s + (32 * _2643) + _987 + (2 * ceil32(return_data.size)) + 256] = mem[s + (32 * _2643) + _987 + ceil32(return_data.size) + _3603 + 256]
                s = s + 32
                continue 
            mem[64] = (32 * _3627) + (32 * _2643) + _987 + (2 * ceil32(return_data.size)) + 256
            require mem[(32 * _2643) + _987 + (2 * ceil32(return_data.size)) + 224] - 1 < mem[(32 * _2643) + _987 + (2 * ceil32(return_data.size)) + 224]
            if mem[(32 * mem[(32 * _2643) + _987 + (2 * ceil32(return_data.size)) + 224] - 1) + (32 * _2643) + _987 + (2 * ceil32(return_data.size)) + 256] <= t:
                idx = idx + 1
                t = t
                continue 
            idx = idx + 1
            t = mem[(32 * mem[(32 * _2643) + _987 + (2 * ceil32(return_data.size)) + 224] - 1) + (32 * _2643) + _987 + (2 * ceil32(return_data.size)) + 256]
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
            if idx < 4:
                _102 = mem[64]
                mem[mem[64]] = 3
                mem[64] = mem[64] + 128
                require 0 < mem[_102]
                mem[_102 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                require 1 < mem[_102]
                mem[_102 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                require 2 < mem[_102]
                mem[_102 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                mem[_102 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_102 + 132] = 0
                mem[_102 + 164] = 64
                mem[_102 + 196] = mem[_102]
                t = 0
                while t < 32 * mem[_102]:
                    mem[t + _102 + 228] = mem[t + _102 + 32]
                    t = t + 32
                    continue 
                if not idx:
                    require ext_code.size(0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52)
                    staticcall 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52.getAmountsOut(uint256 rg1, address[] rg2) with:
                            gas gas_remaining wei
                           args 0, 64, mem[_102 + 196 len (32 * mem[_102]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_102 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _102 + ceil32(return_data.size) + 128
                    require return_data.size >= 32
                    _966 = mem[_102 + 128 len 4], 0
                    require mem[_102 + 128 len 4], 0 <= 4294967296
                    require mem[_102 + 128 len 4], 0 + 32 <= return_data.size
                    require mem[_102 + mem[_102 + 128 len 4], 0 + 128] <= 4294967296 and mem[_102 + 128 len 4], 0 + (32 * mem[_102 + mem[_102 + 128 len 4], 0 + 128]) + 32 <= return_data.size
                    mem[_102 + ceil32(return_data.size) + 128] = mem[_102 + mem[_102 + 128 len 4], 0 + 128]
                    _1062 = mem[_102 + _966 + 128]
                    t = 0
                    while t < 32 * _1062:
                        mem[t + _102 + ceil32(return_data.size) + 160] = mem[t + _102 + _966 + 160]
                        t = t + 32
                        continue 
                    mem[64] = (32 * _1062) + _102 + ceil32(return_data.size) + 160
                else:
                    if 1 == idx:
                        require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                        staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c29.getAmountsOut(uint256 rg1, address[] rg2) with:
                                gas gas_remaining wei
                               args 0, 64, mem[_102 + 196 len (32 * mem[_102]) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_102 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = _102 + ceil32(return_data.size) + 128
                        require return_data.size >= 32
                        _964 = mem[_102 + 128 len 4], 0
                        require mem[_102 + 128 len 4], 0 <= 4294967296
                        require mem[_102 + 128 len 4], 0 + 32 <= return_data.size
                        require mem[_102 + mem[_102 + 128 len 4], 0 + 128] <= 4294967296 and mem[_102 + 128 len 4], 0 + (32 * mem[_102 + mem[_102 + 128 len 4], 0 + 128]) + 32 <= return_data.size
                        mem[_102 + ceil32(return_data.size) + 128] = mem[_102 + mem[_102 + 128 len 4], 0 + 128]
                        _1061 = mem[_102 + _964 + 128]
                        t = 0
                        while t < 32 * _1061:
                            mem[t + _102 + ceil32(return_data.size) + 160] = mem[t + _102 + _964 + 160]
                            t = t + 32
                            continue 
                        mem[64] = (32 * _1061) + _102 + ceil32(return_data.size) + 160
                    else:
                        if 2 == idx:
                            require ext_code.size(0x7b17021fcb7bc888641dc3bedfed3734fcaf2c87)
                            staticcall 0x7b17021fcb7bc888641dc3bedfed3734fcaf2c87.getAmountsOut(uint256 rg1, address[] rg2) with:
                                    gas gas_remaining wei
                                   args 0, 64, mem[_102 + 196 len (32 * mem[_102]) + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[_102 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = _102 + ceil32(return_data.size) + 128
                            require return_data.size >= 32
                            _962 = mem[_102 + 128 len 4], 0
                            require mem[_102 + 128 len 4], 0 <= 4294967296
                            require mem[_102 + 128 len 4], 0 + 32 <= return_data.size
                            require mem[_102 + mem[_102 + 128 len 4], 0 + 128] <= 4294967296 and mem[_102 + 128 len 4], 0 + (32 * mem[_102 + mem[_102 + 128 len 4], 0 + 128]) + 32 <= return_data.size
                            mem[_102 + ceil32(return_data.size) + 128] = mem[_102 + mem[_102 + 128 len 4], 0 + 128]
                            _1060 = mem[_102 + _962 + 128]
                            t = 0
                            while t < 32 * _1060:
                                mem[t + _102 + ceil32(return_data.size) + 160] = mem[t + _102 + _962 + 160]
                                t = t + 32
                                continue 
                            mem[64] = (32 * _1060) + _102 + ceil32(return_data.size) + 160
                        else:
                            if idx != 3:
                                require ext_code.size(0)
                                staticcall 0x0.getAmountsOut(uint256 rg1, address[] rg2) with:
                                        gas gas_remaining wei
                                       args 0, 64, mem[_102 + 196 len (32 * mem[_102]) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[_102 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = _102 + ceil32(return_data.size) + 128
                                require return_data.size >= 32
                                _958 = mem[_102 + 128 len 4], 0
                                require mem[_102 + 128 len 4], 0 <= 4294967296
                                require mem[_102 + 128 len 4], 0 + 32 <= return_data.size
                                require mem[_102 + mem[_102 + 128 len 4], 0 + 128] <= 4294967296 and mem[_102 + 128 len 4], 0 + (32 * mem[_102 + mem[_102 + 128 len 4], 0 + 128]) + 32 <= return_data.size
                                mem[_102 + ceil32(return_data.size) + 128] = mem[_102 + mem[_102 + 128 len 4], 0 + 128]
                                _1058 = mem[_102 + _958 + 128]
                                t = 0
                                while t < 32 * _1058:
                                    mem[t + _102 + ceil32(return_data.size) + 160] = mem[t + _102 + _958 + 160]
                                    t = t + 32
                                    continue 
                                mem[64] = (32 * _1058) + _102 + ceil32(return_data.size) + 160
                            else:
                                require ext_code.size(0x53c153a0df7e050bbefbb70ee9632061f12795fb)
                                staticcall 0x53c153a0df7e050bbefbb70ee9632061f12795fb.getAmountsOut(uint256 rg1, address[] rg2) with:
                                        gas gas_remaining wei
                                       args 0, 64, mem[_102 + 196 len (32 * mem[_102]) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[_102 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = _102 + ceil32(return_data.size) + 128
                                require return_data.size >= 32
                                _960 = mem[_102 + 128 len 4], 0
                                require mem[_102 + 128 len 4], 0 <= 4294967296
                                require mem[_102 + 128 len 4], 0 + 32 <= return_data.size
                                require mem[_102 + mem[_102 + 128 len 4], 0 + 128] <= 4294967296 and mem[_102 + 128 len 4], 0 + (32 * mem[_102 + mem[_102 + 128 len 4], 0 + 128]) + 32 <= return_data.size
                                mem[_102 + ceil32(return_data.size) + 128] = mem[_102 + mem[_102 + 128 len 4], 0 + 128]
                                _1059 = mem[_102 + _960 + 128]
                                t = 0
                                while t < 32 * _1059:
                                    mem[t + _102 + ceil32(return_data.size) + 160] = mem[t + _102 + _960 + 160]
                                    t = t + 32
                                    continue 
                                mem[64] = (32 * _1059) + _102 + ceil32(return_data.size) + 160
                require mem[_102 + ceil32(return_data.size) + 128] - 1 < mem[_102 + ceil32(return_data.size) + 128]
                if mem[(32 * mem[_102 + ceil32(return_data.size) + 128] - 1) + _102 + ceil32(return_data.size) + 160] <= s:
                    idx = idx + 1
                    s = s
                    continue 
                idx = idx + 1
                s = mem[(32 * mem[_102 + ceil32(return_data.size) + 128] - 1) + _102 + ceil32(return_data.size) + 160]
                continue 
            if idx != 4:
                if 0 <= s:
                    idx = idx + 1
                    s = s
                    continue 
                idx = idx + 1
                s = 0
                continue 
            _126 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            require 0 < mem[_126]
            mem[_126 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
            require 1 < mem[_126]
            mem[_126 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
            mem[_126 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[_126 + 100] = 0
            mem[_126 + 132] = 64
            mem[_126 + 164] = mem[_126]
            t = 0
            while t < 32 * mem[_126]:
                mem[t + _126 + 196] = mem[t + _126 + 32]
                t = t + 32
                continue 
            require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
            staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c29.getAmountsOut(uint256 rg1, address[] rg2) with:
                    gas gas_remaining wei
                   args 0, 64, mem[_126 + 164 len (32 * mem[_126]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[_126 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = _126 + ceil32(return_data.size) + 96
            require return_data.size >= 32
            _954 = mem[_126 + 96 len 4], 0
            require mem[_126 + 96 len 4], 0 <= 4294967296
            require mem[_126 + 96 len 4], 0 + 32 <= return_data.size
            require mem[_126 + mem[_126 + 96 len 4], 0 + 96] <= 4294967296 and mem[_126 + 96 len 4], 0 + (32 * mem[_126 + mem[_126 + 96 len 4], 0 + 96]) + 32 <= return_data.size
            mem[_126 + ceil32(return_data.size) + 96] = mem[_126 + mem[_126 + 96 len 4], 0 + 96]
            _1056 = mem[_126 + _954 + 96]
            t = 0
            while t < 32 * _1056:
                mem[t + _126 + ceil32(return_data.size) + 128] = mem[t + _126 + _954 + 128]
                t = t + 32
                continue 
            require mem[_126 + ceil32(return_data.size) + 96] - 1 < mem[_126 + ceil32(return_data.size) + 96]
            _2322 = mem[(32 * mem[_126 + ceil32(return_data.size) + 96] - 1) + _126 + ceil32(return_data.size) + 128]
            mem[(32 * _1056) + _126 + ceil32(return_data.size) + 128] = 2
            mem[(32 * _1056) + _126 + ceil32(return_data.size) + 160] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
            mem[(32 * _1056) + _126 + ceil32(return_data.size) + 192] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
            mem[(32 * _1056) + _126 + ceil32(return_data.size) + 224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[(32 * _1056) + _126 + ceil32(return_data.size) + 228] = _2322
            mem[(32 * _1056) + _126 + ceil32(return_data.size) + 260] = 64
            mem[(32 * _1056) + _126 + ceil32(return_data.size) + 292] = 2
            t = 0
            while t < 64:
                mem[t + (32 * _1056) + _126 + ceil32(return_data.size) + 324] = mem[t + (32 * _1056) + _126 + ceil32(return_data.size) + 160]
                t = t + 32
                continue 
            require ext_code.size(0x1b02da8cb0d097eb8d57a175b88c7d8b47997506)
            staticcall 0x1b02da8cb0d097eb8d57a175b88c7d8b47997506.getAmountsOut(uint256 rg1, address[] rg2) with:
                    gas gas_remaining wei
                   args _2322, Array(len=2, data=mem[(32 * _1056) + _126 + ceil32(return_data.size) + 324 len 64])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _1056) + _126 + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * _1056) + _126 + (2 * ceil32(return_data.size)) + 224
            require return_data.size >= 32
            _3272 = mem[(32 * _1056) + _126 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _2322) >> 32
            require mem[(32 * _1056) + _126 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _2322) >> 32 <= 4294967296
            require mem[(32 * _1056) + _126 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _2322) >> 32 + 32 <= return_data.size
            require mem[(32 * _1056) + _126 + ceil32(return_data.size) + mem[(32 * _1056) + _126 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _2322) >> 32 + 224] <= 4294967296 and mem[(32 * _1056) + _126 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _2322) >> 32 + (32 * mem[(32 * _1056) + _126 + ceil32(return_data.size) + mem[(32 * _1056) + _126 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _2322) >> 32 + 224]) + 32 <= return_data.size
            mem[(32 * _1056) + _126 + (2 * ceil32(return_data.size)) + 224] = mem[(32 * _1056) + _126 + ceil32(return_data.size) + mem[(32 * _1056) + _126 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _2322) >> 32 + 224]
            _3326 = mem[(32 * _1056) + _126 + ceil32(return_data.size) + _3272 + 224]
            t = 0
            while t < 32 * _3326:
                mem[t + (32 * _1056) + _126 + (2 * ceil32(return_data.size)) + 256] = mem[t + (32 * _1056) + _126 + ceil32(return_data.size) + _3272 + 256]
                t = t + 32
                continue 
            mem[64] = (32 * _3326) + (32 * _1056) + _126 + (2 * ceil32(return_data.size)) + 256
            require mem[(32 * _1056) + _126 + (2 * ceil32(return_data.size)) + 224] - 1 < mem[(32 * _1056) + _126 + (2 * ceil32(return_data.size)) + 224]
            if mem[(32 * mem[(32 * _1056) + _126 + (2 * ceil32(return_data.size)) + 224] - 1) + (32 * _1056) + _126 + (2 * ceil32(return_data.size)) + 256] <= s:
                idx = idx + 1
                s = s
                continue 
            idx = idx + 1
            s = mem[(32 * mem[(32 * _1056) + _126 + (2 * ceil32(return_data.size)) + 224] - 1) + (32 * _1056) + _126 + (2 * ceil32(return_data.size)) + 256]
            continue 
        idx = 0
        t = 0
        while idx < 5:
            if idx < 4:
                _898 = mem[64]
                mem[mem[64]] = 3
                mem[64] = mem[64] + 128
                require 0 < mem[_898]
                mem[_898 + 32] = 0x74b23882a30290451a17c44f4f05243b6b58c76d
                require 1 < mem[_898]
                mem[_898 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                require 2 < mem[_898]
                mem[_898 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                mem[_898 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_898 + 132] = s
                mem[_898 + 164] = 64
                mem[_898 + 196] = mem[_898]
                u = 0
                while u < 32 * mem[_898]:
                    mem[u + _898 + 228] = mem[u + _898 + 32]
                    u = u + 32
                    continue 
                if not idx:
                    require ext_code.size(0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52)
                    staticcall 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52.getAmountsOut(uint256 rg1, address[] rg2) with:
                            gas gas_remaining wei
                           args s, 64, mem[_898 + 196 len (32 * mem[_898]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_898 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _898 + ceil32(return_data.size) + 128
                    require return_data.size >= 32
                    _2450 = mem[_898 + 128 len 4], Mask(224, 32, s) >> 32
                    require mem[_898 + 128 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                    require mem[_898 + 128 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                    require mem[_898 + mem[_898 + 128 len 4], Mask(224, 32, s) >> 32 + 128] <= 4294967296 and mem[_898 + 128 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_898 + mem[_898 + 128 len 4], Mask(224, 32, s) >> 32 + 128]) + 32 <= return_data.size
                    mem[_898 + ceil32(return_data.size) + 128] = mem[_898 + mem[_898 + 128 len 4], Mask(224, 32, s) >> 32 + 128]
                    _2593 = mem[_898 + _2450 + 128]
                    s = 0
                    while s < 32 * _2593:
                        mem[s + _898 + ceil32(return_data.size) + 160] = mem[s + _898 + _2450 + 160]
                        s = s + 32
                        continue 
                    mem[64] = (32 * _2593) + _898 + ceil32(return_data.size) + 160
                else:
                    if 1 == idx:
                        require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                        staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c29.getAmountsOut(uint256 rg1, address[] rg2) with:
                                gas gas_remaining wei
                               args s, 64, mem[_898 + 196 len (32 * mem[_898]) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_898 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = _898 + ceil32(return_data.size) + 128
                        require return_data.size >= 32
                        _2448 = mem[_898 + 128 len 4], Mask(224, 32, s) >> 32
                        require mem[_898 + 128 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                        require mem[_898 + 128 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                        require mem[_898 + mem[_898 + 128 len 4], Mask(224, 32, s) >> 32 + 128] <= 4294967296 and mem[_898 + 128 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_898 + mem[_898 + 128 len 4], Mask(224, 32, s) >> 32 + 128]) + 32 <= return_data.size
                        mem[_898 + ceil32(return_data.size) + 128] = mem[_898 + mem[_898 + 128 len 4], Mask(224, 32, s) >> 32 + 128]
                        _2592 = mem[_898 + _2448 + 128]
                        s = 0
                        while s < 32 * _2592:
                            mem[s + _898 + ceil32(return_data.size) + 160] = mem[s + _898 + _2448 + 160]
                            s = s + 32
                            continue 
                        mem[64] = (32 * _2592) + _898 + ceil32(return_data.size) + 160
                    else:
                        if 2 == idx:
                            require ext_code.size(0x7b17021fcb7bc888641dc3bedfed3734fcaf2c87)
                            staticcall 0x7b17021fcb7bc888641dc3bedfed3734fcaf2c87.getAmountsOut(uint256 rg1, address[] rg2) with:
                                    gas gas_remaining wei
                                   args s, 64, mem[_898 + 196 len (32 * mem[_898]) + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[_898 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = _898 + ceil32(return_data.size) + 128
                            require return_data.size >= 32
                            _2446 = mem[_898 + 128 len 4], Mask(224, 32, s) >> 32
                            require mem[_898 + 128 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                            require mem[_898 + 128 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                            require mem[_898 + mem[_898 + 128 len 4], Mask(224, 32, s) >> 32 + 128] <= 4294967296 and mem[_898 + 128 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_898 + mem[_898 + 128 len 4], Mask(224, 32, s) >> 32 + 128]) + 32 <= return_data.size
                            mem[_898 + ceil32(return_data.size) + 128] = mem[_898 + mem[_898 + 128 len 4], Mask(224, 32, s) >> 32 + 128]
                            _2591 = mem[_898 + _2446 + 128]
                            s = 0
                            while s < 32 * _2591:
                                mem[s + _898 + ceil32(return_data.size) + 160] = mem[s + _898 + _2446 + 160]
                                s = s + 32
                                continue 
                            mem[64] = (32 * _2591) + _898 + ceil32(return_data.size) + 160
                        else:
                            if idx != 3:
                                require ext_code.size(0)
                                staticcall 0x0.getAmountsOut(uint256 rg1, address[] rg2) with:
                                        gas gas_remaining wei
                                       args s, 64, mem[_898 + 196 len (32 * mem[_898]) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[_898 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = _898 + ceil32(return_data.size) + 128
                                require return_data.size >= 32
                                _2442 = mem[_898 + 128 len 4], Mask(224, 32, s) >> 32
                                require mem[_898 + 128 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                                require mem[_898 + 128 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                                require mem[_898 + mem[_898 + 128 len 4], Mask(224, 32, s) >> 32 + 128] <= 4294967296 and mem[_898 + 128 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_898 + mem[_898 + 128 len 4], Mask(224, 32, s) >> 32 + 128]) + 32 <= return_data.size
                                mem[_898 + ceil32(return_data.size) + 128] = mem[_898 + mem[_898 + 128 len 4], Mask(224, 32, s) >> 32 + 128]
                                _2589 = mem[_898 + _2442 + 128]
                                s = 0
                                while s < 32 * _2589:
                                    mem[s + _898 + ceil32(return_data.size) + 160] = mem[s + _898 + _2442 + 160]
                                    s = s + 32
                                    continue 
                                mem[64] = (32 * _2589) + _898 + ceil32(return_data.size) + 160
                            else:
                                require ext_code.size(0x53c153a0df7e050bbefbb70ee9632061f12795fb)
                                staticcall 0x53c153a0df7e050bbefbb70ee9632061f12795fb.getAmountsOut(uint256 rg1, address[] rg2) with:
                                        gas gas_remaining wei
                                       args s, 64, mem[_898 + 196 len (32 * mem[_898]) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[_898 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = _898 + ceil32(return_data.size) + 128
                                require return_data.size >= 32
                                _2444 = mem[_898 + 128 len 4], Mask(224, 32, s) >> 32
                                require mem[_898 + 128 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                                require mem[_898 + 128 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                                require mem[_898 + mem[_898 + 128 len 4], Mask(224, 32, s) >> 32 + 128] <= 4294967296 and mem[_898 + 128 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_898 + mem[_898 + 128 len 4], Mask(224, 32, s) >> 32 + 128]) + 32 <= return_data.size
                                mem[_898 + ceil32(return_data.size) + 128] = mem[_898 + mem[_898 + 128 len 4], Mask(224, 32, s) >> 32 + 128]
                                _2590 = mem[_898 + _2444 + 128]
                                s = 0
                                while s < 32 * _2590:
                                    mem[s + _898 + ceil32(return_data.size) + 160] = mem[s + _898 + _2444 + 160]
                                    s = s + 32
                                    continue 
                                mem[64] = (32 * _2590) + _898 + ceil32(return_data.size) + 160
                require mem[_898 + ceil32(return_data.size) + 128] - 1 < mem[_898 + ceil32(return_data.size) + 128]
                if mem[(32 * mem[_898 + ceil32(return_data.size) + 128] - 1) + _898 + ceil32(return_data.size) + 160] <= t:
                    idx = idx + 1
                    t = t
                    continue 
                idx = idx + 1
                t = mem[(32 * mem[_898 + ceil32(return_data.size) + 128] - 1) + _898 + ceil32(return_data.size) + 160]
                continue 
            if idx != 4:
                if s <= t:
                    idx = idx + 1
                    t = t
                    continue 
                idx = idx + 1
                t = s
                continue 
            _1014 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            require 0 < mem[_1014]
            mem[_1014 + 32] = 0x74b23882a30290451a17c44f4f05243b6b58c76d
            require 1 < mem[_1014]
            mem[_1014 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
            mem[_1014 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[_1014 + 100] = s
            mem[_1014 + 132] = 64
            mem[_1014 + 164] = mem[_1014]
            u = 0
            while u < 32 * mem[_1014]:
                mem[u + _1014 + 196] = mem[u + _1014 + 32]
                u = u + 32
                continue 
            require ext_code.size(0x1b02da8cb0d097eb8d57a175b88c7d8b47997506)
            staticcall 0x1b02da8cb0d097eb8d57a175b88c7d8b47997506.getAmountsOut(uint256 rg1, address[] rg2) with:
                    gas gas_remaining wei
                   args s, 64, mem[_1014 + 164 len (32 * mem[_1014]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[_1014 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = _1014 + ceil32(return_data.size) + 96
            require return_data.size >= 32
            _2440 = mem[_1014 + 96 len 4], Mask(224, 32, s) >> 32
            require mem[_1014 + 96 len 4], Mask(224, 32, s) >> 32 <= 4294967296
            require mem[_1014 + 96 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
            require mem[_1014 + mem[_1014 + 96 len 4], Mask(224, 32, s) >> 32 + 96] <= 4294967296 and mem[_1014 + 96 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_1014 + mem[_1014 + 96 len 4], Mask(224, 32, s) >> 32 + 96]) + 32 <= return_data.size
            mem[_1014 + ceil32(return_data.size) + 96] = mem[_1014 + mem[_1014 + 96 len 4], Mask(224, 32, s) >> 32 + 96]
            _2588 = mem[_1014 + _2440 + 96]
            s = 0
            while s < 32 * _2588:
                mem[s + _1014 + ceil32(return_data.size) + 128] = mem[s + _1014 + _2440 + 128]
                s = s + 32
                continue 
            mem[64] = (32 * _2588) + _1014 + ceil32(return_data.size) + 128
            require mem[_1014 + ceil32(return_data.size) + 96] - 1 < mem[_1014 + ceil32(return_data.size) + 96]
            _3224 = mem[(32 * mem[_1014 + ceil32(return_data.size) + 96] - 1) + _1014 + ceil32(return_data.size) + 128]
            mem[(32 * _2588) + _1014 + ceil32(return_data.size) + 128] = 2
            mem[(32 * _2588) + _1014 + ceil32(return_data.size) + 160] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
            mem[(32 * _2588) + _1014 + ceil32(return_data.size) + 192] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
            mem[(32 * _2588) + _1014 + ceil32(return_data.size) + 224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[(32 * _2588) + _1014 + ceil32(return_data.size) + 228] = _3224
            mem[(32 * _2588) + _1014 + ceil32(return_data.size) + 260] = 64
            mem[(32 * _2588) + _1014 + ceil32(return_data.size) + 292] = 2
            s = 0
            while s < 64:
                mem[s + (32 * _2588) + _1014 + ceil32(return_data.size) + 324] = mem[s + (32 * _2588) + _1014 + ceil32(return_data.size) + 160]
                s = s + 32
                continue 
            require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
            staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c29.getAmountsOut(uint256 rg1, address[] rg2) with:
                    gas gas_remaining wei
                   args _3224, Array(len=2, data=mem[(32 * _2588) + _1014 + ceil32(return_data.size) + 324 len 64])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _2588) + _1014 + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * _2588) + _1014 + (2 * ceil32(return_data.size)) + 224
            require return_data.size >= 32
            _3520 = mem[(32 * _2588) + _1014 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _3224) >> 32
            require mem[(32 * _2588) + _1014 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _3224) >> 32 <= 4294967296
            require mem[(32 * _2588) + _1014 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _3224) >> 32 + 32 <= return_data.size
            require mem[(32 * _2588) + _1014 + ceil32(return_data.size) + mem[(32 * _2588) + _1014 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _3224) >> 32 + 224] <= 4294967296 and mem[(32 * _2588) + _1014 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _3224) >> 32 + (32 * mem[(32 * _2588) + _1014 + ceil32(return_data.size) + mem[(32 * _2588) + _1014 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _3224) >> 32 + 224]) + 32 <= return_data.size
            mem[(32 * _2588) + _1014 + (2 * ceil32(return_data.size)) + 224] = mem[(32 * _2588) + _1014 + ceil32(return_data.size) + mem[(32 * _2588) + _1014 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _3224) >> 32 + 224]
            _3540 = mem[(32 * _2588) + _1014 + ceil32(return_data.size) + _3520 + 224]
            s = 0
            while s < 32 * _3540:
                mem[s + (32 * _2588) + _1014 + (2 * ceil32(return_data.size)) + 256] = mem[s + (32 * _2588) + _1014 + ceil32(return_data.size) + _3520 + 256]
                s = s + 32
                continue 
            mem[64] = (32 * _3540) + (32 * _2588) + _1014 + (2 * ceil32(return_data.size)) + 256
            require mem[(32 * _2588) + _1014 + (2 * ceil32(return_data.size)) + 224] - 1 < mem[(32 * _2588) + _1014 + (2 * ceil32(return_data.size)) + 224]
            if mem[(32 * mem[(32 * _2588) + _1014 + (2 * ceil32(return_data.size)) + 224] - 1) + (32 * _2588) + _1014 + (2 * ceil32(return_data.size)) + 256] <= t:
                idx = idx + 1
                t = t
                continue 
            idx = idx + 1
            t = mem[(32 * mem[(32 * _2588) + _1014 + (2 * ceil32(return_data.size)) + 224] - 1) + (32 * _2588) + _1014 + (2 * ceil32(return_data.size)) + 256]
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
            if idx < 4:
                _94 = mem[64]
                mem[mem[64]] = 3
                mem[64] = mem[64] + 128
                require 0 < mem[_94]
                mem[_94 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                require 1 < mem[_94]
                mem[_94 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                require 2 < mem[_94]
                mem[_94 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                mem[_94 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_94 + 132] = 10^6 * sub_7d0b6809
                mem[_94 + 164] = 64
                mem[_94 + 196] = mem[_94]
                t = 0
                while t < 32 * mem[_94]:
                    mem[t + _94 + 228] = mem[t + _94 + 32]
                    t = t + 32
                    continue 
                if not idx:
                    require ext_code.size(0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52)
                    staticcall 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52.getAmountsOut(uint256 rg1, address[] rg2) with:
                            gas gas_remaining wei
                           args 10^6 * sub_7d0b6809, 64, mem[_94 + 196 len (32 * mem[_94]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_94 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _94 + ceil32(return_data.size) + 128
                    require return_data.size >= 32
                    _934 = mem[_94 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32
                    require mem[_94 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 <= 4294967296
                    require mem[_94 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 32 <= return_data.size
                    require mem[_94 + mem[_94 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 128] <= 4294967296 and mem[_94 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + (32 * mem[_94 + mem[_94 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 128]) + 32 <= return_data.size
                    mem[_94 + ceil32(return_data.size) + 128] = mem[_94 + mem[_94 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 128]
                    _1044 = mem[_94 + _934 + 128]
                    t = 0
                    while t < 32 * _1044:
                        mem[t + _94 + ceil32(return_data.size) + 160] = mem[t + _94 + _934 + 160]
                        t = t + 32
                        continue 
                    mem[64] = (32 * _1044) + _94 + ceil32(return_data.size) + 160
                else:
                    if 1 == idx:
                        require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                        staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c29.getAmountsOut(uint256 rg1, address[] rg2) with:
                                gas gas_remaining wei
                               args 10^6 * sub_7d0b6809, 64, mem[_94 + 196 len (32 * mem[_94]) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_94 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = _94 + ceil32(return_data.size) + 128
                        require return_data.size >= 32
                        _932 = mem[_94 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32
                        require mem[_94 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 <= 4294967296
                        require mem[_94 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 32 <= return_data.size
                        require mem[_94 + mem[_94 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 128] <= 4294967296 and mem[_94 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + (32 * mem[_94 + mem[_94 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 128]) + 32 <= return_data.size
                        mem[_94 + ceil32(return_data.size) + 128] = mem[_94 + mem[_94 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 128]
                        _1043 = mem[_94 + _932 + 128]
                        t = 0
                        while t < 32 * _1043:
                            mem[t + _94 + ceil32(return_data.size) + 160] = mem[t + _94 + _932 + 160]
                            t = t + 32
                            continue 
                        mem[64] = (32 * _1043) + _94 + ceil32(return_data.size) + 160
                    else:
                        if 2 == idx:
                            require ext_code.size(0x7b17021fcb7bc888641dc3bedfed3734fcaf2c87)
                            staticcall 0x7b17021fcb7bc888641dc3bedfed3734fcaf2c87.getAmountsOut(uint256 rg1, address[] rg2) with:
                                    gas gas_remaining wei
                                   args 10^6 * sub_7d0b6809, 64, mem[_94 + 196 len (32 * mem[_94]) + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[_94 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = _94 + ceil32(return_data.size) + 128
                            require return_data.size >= 32
                            _930 = mem[_94 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32
                            require mem[_94 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 <= 4294967296
                            require mem[_94 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 32 <= return_data.size
                            require mem[_94 + mem[_94 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 128] <= 4294967296 and mem[_94 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + (32 * mem[_94 + mem[_94 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 128]) + 32 <= return_data.size
                            mem[_94 + ceil32(return_data.size) + 128] = mem[_94 + mem[_94 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 128]
                            _1042 = mem[_94 + _930 + 128]
                            t = 0
                            while t < 32 * _1042:
                                mem[t + _94 + ceil32(return_data.size) + 160] = mem[t + _94 + _930 + 160]
                                t = t + 32
                                continue 
                            mem[64] = (32 * _1042) + _94 + ceil32(return_data.size) + 160
                        else:
                            if idx != 3:
                                require ext_code.size(0)
                                staticcall 0x0.getAmountsOut(uint256 rg1, address[] rg2) with:
                                        gas gas_remaining wei
                                       args 10^6 * sub_7d0b6809, 64, mem[_94 + 196 len (32 * mem[_94]) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[_94 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = _94 + ceil32(return_data.size) + 128
                                require return_data.size >= 32
                                _926 = mem[_94 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32
                                require mem[_94 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 <= 4294967296
                                require mem[_94 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 32 <= return_data.size
                                require mem[_94 + mem[_94 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 128] <= 4294967296 and mem[_94 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + (32 * mem[_94 + mem[_94 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 128]) + 32 <= return_data.size
                                mem[_94 + ceil32(return_data.size) + 128] = mem[_94 + mem[_94 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 128]
                                _1040 = mem[_94 + _926 + 128]
                                t = 0
                                while t < 32 * _1040:
                                    mem[t + _94 + ceil32(return_data.size) + 160] = mem[t + _94 + _926 + 160]
                                    t = t + 32
                                    continue 
                                mem[64] = (32 * _1040) + _94 + ceil32(return_data.size) + 160
                            else:
                                require ext_code.size(0x53c153a0df7e050bbefbb70ee9632061f12795fb)
                                staticcall 0x53c153a0df7e050bbefbb70ee9632061f12795fb.getAmountsOut(uint256 rg1, address[] rg2) with:
                                        gas gas_remaining wei
                                       args 10^6 * sub_7d0b6809, 64, mem[_94 + 196 len (32 * mem[_94]) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[_94 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = _94 + ceil32(return_data.size) + 128
                                require return_data.size >= 32
                                _928 = mem[_94 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32
                                require mem[_94 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 <= 4294967296
                                require mem[_94 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 32 <= return_data.size
                                require mem[_94 + mem[_94 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 128] <= 4294967296 and mem[_94 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + (32 * mem[_94 + mem[_94 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 128]) + 32 <= return_data.size
                                mem[_94 + ceil32(return_data.size) + 128] = mem[_94 + mem[_94 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 128]
                                _1041 = mem[_94 + _928 + 128]
                                t = 0
                                while t < 32 * _1041:
                                    mem[t + _94 + ceil32(return_data.size) + 160] = mem[t + _94 + _928 + 160]
                                    t = t + 32
                                    continue 
                                mem[64] = (32 * _1041) + _94 + ceil32(return_data.size) + 160
                require mem[_94 + ceil32(return_data.size) + 128] - 1 < mem[_94 + ceil32(return_data.size) + 128]
                if mem[(32 * mem[_94 + ceil32(return_data.size) + 128] - 1) + _94 + ceil32(return_data.size) + 160] <= s:
                    idx = idx + 1
                    s = s
                    continue 
                idx = idx + 1
                s = mem[(32 * mem[_94 + ceil32(return_data.size) + 128] - 1) + _94 + ceil32(return_data.size) + 160]
                continue 
            if idx != 4:
                if 10^6 * sub_7d0b6809 <= s:
                    idx = idx + 1
                    s = s
                    continue 
                idx = idx + 1
                s = 10^6 * sub_7d0b6809
                continue 
            _120 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            require 0 < mem[_120]
            mem[_120 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
            require 1 < mem[_120]
            mem[_120 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
            mem[_120 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[_120 + 100] = 10^6 * sub_7d0b6809
            mem[_120 + 132] = 64
            mem[_120 + 164] = mem[_120]
            t = 0
            while t < 32 * mem[_120]:
                mem[t + _120 + 196] = mem[t + _120 + 32]
                t = t + 32
                continue 
            require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
            staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c29.getAmountsOut(uint256 rg1, address[] rg2) with:
                    gas gas_remaining wei
                   args 10^6 * sub_7d0b6809, 64, mem[_120 + 164 len (32 * mem[_120]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[_120 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = _120 + ceil32(return_data.size) + 96
            require return_data.size >= 32
            _922 = mem[_120 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32
            require mem[_120 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 <= 4294967296
            require mem[_120 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 32 <= return_data.size
            require mem[_120 + mem[_120 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 96] <= 4294967296 and mem[_120 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + (32 * mem[_120 + mem[_120 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 96]) + 32 <= return_data.size
            mem[_120 + ceil32(return_data.size) + 96] = mem[_120 + mem[_120 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 96]
            _1038 = mem[_120 + _922 + 96]
            t = 0
            while t < 32 * _1038:
                mem[t + _120 + ceil32(return_data.size) + 128] = mem[t + _120 + _922 + 128]
                t = t + 32
                continue 
            mem[64] = (32 * _1038) + _120 + ceil32(return_data.size) + 128
            require mem[_120 + ceil32(return_data.size) + 96] - 1 < mem[_120 + ceil32(return_data.size) + 96]
            _2308 = mem[(32 * mem[_120 + ceil32(return_data.size) + 96] - 1) + _120 + ceil32(return_data.size) + 128]
            mem[(32 * _1038) + _120 + ceil32(return_data.size) + 128] = 2
            mem[(32 * _1038) + _120 + ceil32(return_data.size) + 160] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
            mem[(32 * _1038) + _120 + ceil32(return_data.size) + 192] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
            mem[(32 * _1038) + _120 + ceil32(return_data.size) + 224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[(32 * _1038) + _120 + ceil32(return_data.size) + 228] = _2308
            mem[(32 * _1038) + _120 + ceil32(return_data.size) + 260] = 64
            mem[(32 * _1038) + _120 + ceil32(return_data.size) + 292] = 2
            t = 0
            while t < 64:
                mem[t + (32 * _1038) + _120 + ceil32(return_data.size) + 324] = mem[t + (32 * _1038) + _120 + ceil32(return_data.size) + 160]
                t = t + 32
                continue 
            require ext_code.size(0x1b02da8cb0d097eb8d57a175b88c7d8b47997506)
            staticcall 0x1b02da8cb0d097eb8d57a175b88c7d8b47997506.getAmountsOut(uint256 rg1, address[] rg2) with:
                    gas gas_remaining wei
                   args _2308, Array(len=2, data=mem[(32 * _1038) + _120 + ceil32(return_data.size) + 324 len 64])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _1038) + _120 + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * _1038) + _120 + (2 * ceil32(return_data.size)) + 224
            require return_data.size >= 32
            _3264 = mem[(32 * _1038) + _120 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _2308) >> 32
            require mem[(32 * _1038) + _120 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _2308) >> 32 <= 4294967296
            require mem[(32 * _1038) + _120 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _2308) >> 32 + 32 <= return_data.size
            require mem[(32 * _1038) + _120 + ceil32(return_data.size) + mem[(32 * _1038) + _120 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _2308) >> 32 + 224] <= 4294967296 and mem[(32 * _1038) + _120 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _2308) >> 32 + (32 * mem[(32 * _1038) + _120 + ceil32(return_data.size) + mem[(32 * _1038) + _120 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _2308) >> 32 + 224]) + 32 <= return_data.size
            mem[(32 * _1038) + _120 + (2 * ceil32(return_data.size)) + 224] = mem[(32 * _1038) + _120 + ceil32(return_data.size) + mem[(32 * _1038) + _120 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _2308) >> 32 + 224]
            _3310 = mem[(32 * _1038) + _120 + ceil32(return_data.size) + _3264 + 224]
            t = 0
            while t < 32 * _3310:
                mem[t + (32 * _1038) + _120 + (2 * ceil32(return_data.size)) + 256] = mem[t + (32 * _1038) + _120 + ceil32(return_data.size) + _3264 + 256]
                t = t + 32
                continue 
            mem[64] = (32 * _3310) + (32 * _1038) + _120 + (2 * ceil32(return_data.size)) + 256
            require mem[(32 * _1038) + _120 + (2 * ceil32(return_data.size)) + 224] - 1 < mem[(32 * _1038) + _120 + (2 * ceil32(return_data.size)) + 224]
            if mem[(32 * mem[(32 * _1038) + _120 + (2 * ceil32(return_data.size)) + 224] - 1) + (32 * _1038) + _120 + (2 * ceil32(return_data.size)) + 256] <= s:
                idx = idx + 1
                s = s
                continue 
            idx = idx + 1
            s = mem[(32 * mem[(32 * _1038) + _120 + (2 * ceil32(return_data.size)) + 224] - 1) + (32 * _1038) + _120 + (2 * ceil32(return_data.size)) + 256]
            continue 
        idx = 0
        t = 0
        while idx < 5:
            if idx < 4:
                _876 = mem[64]
                mem[mem[64]] = 3
                mem[64] = mem[64] + 128
                require 0 < mem[_876]
                mem[_876 + 32] = 0x74b23882a30290451a17c44f4f05243b6b58c76d
                require 1 < mem[_876]
                mem[_876 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                require 2 < mem[_876]
                mem[_876 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                mem[_876 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_876 + 132] = s
                mem[_876 + 164] = 64
                mem[_876 + 196] = mem[_876]
                u = 0
                while u < 32 * mem[_876]:
                    mem[u + _876 + 228] = mem[u + _876 + 32]
                    u = u + 32
                    continue 
                if not idx:
                    require ext_code.size(0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52)
                    staticcall 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52.getAmountsOut(uint256 rg1, address[] rg2) with:
                            gas gas_remaining wei
                           args s, 64, mem[_876 + 196 len (32 * mem[_876]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_876 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _876 + ceil32(return_data.size) + 128
                    require return_data.size >= 32
                    _2402 = mem[_876 + 128 len 4], Mask(224, 32, s) >> 32
                    require mem[_876 + 128 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                    require mem[_876 + 128 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                    require mem[_876 + mem[_876 + 128 len 4], Mask(224, 32, s) >> 32 + 128] <= 4294967296 and mem[_876 + 128 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_876 + mem[_876 + 128 len 4], Mask(224, 32, s) >> 32 + 128]) + 32 <= return_data.size
                    mem[_876 + ceil32(return_data.size) + 128] = mem[_876 + mem[_876 + 128 len 4], Mask(224, 32, s) >> 32 + 128]
                    _2557 = mem[_876 + _2402 + 128]
                    s = 0
                    while s < 32 * _2557:
                        mem[s + _876 + ceil32(return_data.size) + 160] = mem[s + _876 + _2402 + 160]
                        s = s + 32
                        continue 
                    mem[64] = (32 * _2557) + _876 + ceil32(return_data.size) + 160
                else:
                    if 1 == idx:
                        require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                        staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c29.getAmountsOut(uint256 rg1, address[] rg2) with:
                                gas gas_remaining wei
                               args s, 64, mem[_876 + 196 len (32 * mem[_876]) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_876 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = _876 + ceil32(return_data.size) + 128
                        require return_data.size >= 32
                        _2400 = mem[_876 + 128 len 4], Mask(224, 32, s) >> 32
                        require mem[_876 + 128 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                        require mem[_876 + 128 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                        require mem[_876 + mem[_876 + 128 len 4], Mask(224, 32, s) >> 32 + 128] <= 4294967296 and mem[_876 + 128 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_876 + mem[_876 + 128 len 4], Mask(224, 32, s) >> 32 + 128]) + 32 <= return_data.size
                        mem[_876 + ceil32(return_data.size) + 128] = mem[_876 + mem[_876 + 128 len 4], Mask(224, 32, s) >> 32 + 128]
                        _2556 = mem[_876 + _2400 + 128]
                        s = 0
                        while s < 32 * _2556:
                            mem[s + _876 + ceil32(return_data.size) + 160] = mem[s + _876 + _2400 + 160]
                            s = s + 32
                            continue 
                        mem[64] = (32 * _2556) + _876 + ceil32(return_data.size) + 160
                    else:
                        if 2 == idx:
                            require ext_code.size(0x7b17021fcb7bc888641dc3bedfed3734fcaf2c87)
                            staticcall 0x7b17021fcb7bc888641dc3bedfed3734fcaf2c87.getAmountsOut(uint256 rg1, address[] rg2) with:
                                    gas gas_remaining wei
                                   args s, 64, mem[_876 + 196 len (32 * mem[_876]) + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[_876 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = _876 + ceil32(return_data.size) + 128
                            require return_data.size >= 32
                            _2398 = mem[_876 + 128 len 4], Mask(224, 32, s) >> 32
                            require mem[_876 + 128 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                            require mem[_876 + 128 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                            require mem[_876 + mem[_876 + 128 len 4], Mask(224, 32, s) >> 32 + 128] <= 4294967296 and mem[_876 + 128 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_876 + mem[_876 + 128 len 4], Mask(224, 32, s) >> 32 + 128]) + 32 <= return_data.size
                            mem[_876 + ceil32(return_data.size) + 128] = mem[_876 + mem[_876 + 128 len 4], Mask(224, 32, s) >> 32 + 128]
                            _2555 = mem[_876 + _2398 + 128]
                            s = 0
                            while s < 32 * _2555:
                                mem[s + _876 + ceil32(return_data.size) + 160] = mem[s + _876 + _2398 + 160]
                                s = s + 32
                                continue 
                            mem[64] = (32 * _2555) + _876 + ceil32(return_data.size) + 160
                        else:
                            if idx != 3:
                                require ext_code.size(0)
                                staticcall 0x0.getAmountsOut(uint256 rg1, address[] rg2) with:
                                        gas gas_remaining wei
                                       args s, 64, mem[_876 + 196 len (32 * mem[_876]) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[_876 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = _876 + ceil32(return_data.size) + 128
                                require return_data.size >= 32
                                _2394 = mem[_876 + 128 len 4], Mask(224, 32, s) >> 32
                                require mem[_876 + 128 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                                require mem[_876 + 128 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                                require mem[_876 + mem[_876 + 128 len 4], Mask(224, 32, s) >> 32 + 128] <= 4294967296 and mem[_876 + 128 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_876 + mem[_876 + 128 len 4], Mask(224, 32, s) >> 32 + 128]) + 32 <= return_data.size
                                mem[_876 + ceil32(return_data.size) + 128] = mem[_876 + mem[_876 + 128 len 4], Mask(224, 32, s) >> 32 + 128]
                                _2553 = mem[_876 + _2394 + 128]
                                s = 0
                                while s < 32 * _2553:
                                    mem[s + _876 + ceil32(return_data.size) + 160] = mem[s + _876 + _2394 + 160]
                                    s = s + 32
                                    continue 
                                mem[64] = (32 * _2553) + _876 + ceil32(return_data.size) + 160
                            else:
                                require ext_code.size(0x53c153a0df7e050bbefbb70ee9632061f12795fb)
                                staticcall 0x53c153a0df7e050bbefbb70ee9632061f12795fb.getAmountsOut(uint256 rg1, address[] rg2) with:
                                        gas gas_remaining wei
                                       args s, 64, mem[_876 + 196 len (32 * mem[_876]) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[_876 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = _876 + ceil32(return_data.size) + 128
                                require return_data.size >= 32
                                _2396 = mem[_876 + 128 len 4], Mask(224, 32, s) >> 32
                                require mem[_876 + 128 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                                require mem[_876 + 128 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                                require mem[_876 + mem[_876 + 128 len 4], Mask(224, 32, s) >> 32 + 128] <= 4294967296 and mem[_876 + 128 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_876 + mem[_876 + 128 len 4], Mask(224, 32, s) >> 32 + 128]) + 32 <= return_data.size
                                mem[_876 + ceil32(return_data.size) + 128] = mem[_876 + mem[_876 + 128 len 4], Mask(224, 32, s) >> 32 + 128]
                                _2554 = mem[_876 + _2396 + 128]
                                s = 0
                                while s < 32 * _2554:
                                    mem[s + _876 + ceil32(return_data.size) + 160] = mem[s + _876 + _2396 + 160]
                                    s = s + 32
                                    continue 
                                mem[64] = (32 * _2554) + _876 + ceil32(return_data.size) + 160
                require mem[_876 + ceil32(return_data.size) + 128] - 1 < mem[_876 + ceil32(return_data.size) + 128]
                if mem[(32 * mem[_876 + ceil32(return_data.size) + 128] - 1) + _876 + ceil32(return_data.size) + 160] <= t:
                    idx = idx + 1
                    t = t
                    continue 
                idx = idx + 1
                t = mem[(32 * mem[_876 + ceil32(return_data.size) + 128] - 1) + _876 + ceil32(return_data.size) + 160]
                continue 
            if idx != 4:
                if s <= t:
                    idx = idx + 1
                    t = t
                    continue 
                idx = idx + 1
                t = s
                continue 
            _992 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            require 0 < mem[_992]
            mem[_992 + 32] = 0x74b23882a30290451a17c44f4f05243b6b58c76d
            require 1 < mem[_992]
            mem[_992 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
            mem[_992 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[_992 + 100] = s
            mem[_992 + 132] = 64
            mem[_992 + 164] = mem[_992]
            u = 0
            while u < 32 * mem[_992]:
                mem[u + _992 + 196] = mem[u + _992 + 32]
                u = u + 32
                continue 
            require ext_code.size(0x1b02da8cb0d097eb8d57a175b88c7d8b47997506)
            staticcall 0x1b02da8cb0d097eb8d57a175b88c7d8b47997506.getAmountsOut(uint256 rg1, address[] rg2) with:
                    gas gas_remaining wei
                   args s, 64, mem[_992 + 164 len (32 * mem[_992]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[_992 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = _992 + ceil32(return_data.size) + 96
            require return_data.size >= 32
            _2392 = mem[_992 + 96 len 4], Mask(224, 32, s) >> 32
            require mem[_992 + 96 len 4], Mask(224, 32, s) >> 32 <= 4294967296
            require mem[_992 + 96 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
            require mem[_992 + mem[_992 + 96 len 4], Mask(224, 32, s) >> 32 + 96] <= 4294967296 and mem[_992 + 96 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_992 + mem[_992 + 96 len 4], Mask(224, 32, s) >> 32 + 96]) + 32 <= return_data.size
            mem[_992 + ceil32(return_data.size) + 96] = mem[_992 + mem[_992 + 96 len 4], Mask(224, 32, s) >> 32 + 96]
            _2552 = mem[_992 + _2392 + 96]
            s = 0
            while s < 32 * _2552:
                mem[s + _992 + ceil32(return_data.size) + 128] = mem[s + _992 + _2392 + 128]
                s = s + 32
                continue 
            mem[64] = (32 * _2552) + _992 + ceil32(return_data.size) + 128
            require mem[_992 + ceil32(return_data.size) + 96] - 1 < mem[_992 + ceil32(return_data.size) + 96]
            _3200 = mem[(32 * mem[_992 + ceil32(return_data.size) + 96] - 1) + _992 + ceil32(return_data.size) + 128]
            mem[(32 * _2552) + _992 + ceil32(return_data.size) + 128] = 2
            mem[(32 * _2552) + _992 + ceil32(return_data.size) + 160] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
            mem[(32 * _2552) + _992 + ceil32(return_data.size) + 192] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
            mem[(32 * _2552) + _992 + ceil32(return_data.size) + 224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[(32 * _2552) + _992 + ceil32(return_data.size) + 228] = _3200
            mem[(32 * _2552) + _992 + ceil32(return_data.size) + 260] = 64
            mem[(32 * _2552) + _992 + ceil32(return_data.size) + 292] = 2
            s = 0
            while s < 64:
                mem[s + (32 * _2552) + _992 + ceil32(return_data.size) + 324] = mem[s + (32 * _2552) + _992 + ceil32(return_data.size) + 160]
                s = s + 32
                continue 
            require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
            staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c29.getAmountsOut(uint256 rg1, address[] rg2) with:
                    gas gas_remaining wei
                   args _3200, Array(len=2, data=mem[(32 * _2552) + _992 + ceil32(return_data.size) + 324 len 64])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _2552) + _992 + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * _2552) + _992 + (2 * ceil32(return_data.size)) + 224
            require return_data.size >= 32
            _3512 = mem[(32 * _2552) + _992 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _3200) >> 32
            require mem[(32 * _2552) + _992 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _3200) >> 32 <= 4294967296
            require mem[(32 * _2552) + _992 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _3200) >> 32 + 32 <= return_data.size
            require mem[(32 * _2552) + _992 + ceil32(return_data.size) + mem[(32 * _2552) + _992 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _3200) >> 32 + 224] <= 4294967296 and mem[(32 * _2552) + _992 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _3200) >> 32 + (32 * mem[(32 * _2552) + _992 + ceil32(return_data.size) + mem[(32 * _2552) + _992 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _3200) >> 32 + 224]) + 32 <= return_data.size
            mem[(32 * _2552) + _992 + (2 * ceil32(return_data.size)) + 224] = mem[(32 * _2552) + _992 + ceil32(return_data.size) + mem[(32 * _2552) + _992 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _3200) >> 32 + 224]
            _3536 = mem[(32 * _2552) + _992 + ceil32(return_data.size) + _3512 + 224]
            s = 0
            while s < 32 * _3536:
                mem[s + (32 * _2552) + _992 + (2 * ceil32(return_data.size)) + 256] = mem[s + (32 * _2552) + _992 + ceil32(return_data.size) + _3512 + 256]
                s = s + 32
                continue 
            mem[64] = (32 * _3536) + (32 * _2552) + _992 + (2 * ceil32(return_data.size)) + 256
            require mem[(32 * _2552) + _992 + (2 * ceil32(return_data.size)) + 224] - 1 < mem[(32 * _2552) + _992 + (2 * ceil32(return_data.size)) + 224]
            if mem[(32 * mem[(32 * _2552) + _992 + (2 * ceil32(return_data.size)) + 224] - 1) + (32 * _2552) + _992 + (2 * ceil32(return_data.size)) + 256] <= t:
                idx = idx + 1
                t = t
                continue 
            idx = idx + 1
            t = mem[(32 * mem[(32 * _2552) + _992 + (2 * ceil32(return_data.size)) + 224] - 1) + (32 * _2552) + _992 + (2 * ceil32(return_data.size)) + 256]
            continue 
}



}
