contract main {




// =====================  Runtime code  =====================


#
#  - sub_0cbc9035(?)
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
        while idx < 5:
            if not idx:
                _93 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                require 0 < mem[_93]
                mem[_93 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                require 1 < mem[_93]
                mem[_93 + 64] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                mem[_93 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_93 + 100] = 0
                mem[_93 + 132] = 64
                mem[_93 + 164] = mem[_93]
                t = 0
                while t < 32 * mem[_93]:
                    mem[t + _93 + 196] = mem[t + _93 + 32]
                    t = t + 32
                    continue 
                require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c29.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args 0, 64, mem[_93 + 164 len (32 * mem[_93]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_93 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _93 + ceil32(return_data.size) + 96
                require return_data.size >= 32
                _1005 = mem[_93 + 96 len 4], 0
                require mem[_93 + 96 len 4], 0 <= 4294967296
                require mem[_93 + 96 len 4], 0 + 32 <= return_data.size
                require mem[_93 + mem[_93 + 96 len 4], 0 + 96] <= 4294967296 and mem[_93 + 96 len 4], 0 + (32 * mem[_93 + mem[_93 + 96 len 4], 0 + 96]) + 32 <= return_data.size
                mem[_93 + ceil32(return_data.size) + 96] = mem[_93 + mem[_93 + 96 len 4], 0 + 96]
                _1125 = mem[_93 + _1005 + 96]
                t = 0
                while t < 32 * _1125:
                    mem[t + _93 + ceil32(return_data.size) + 128] = mem[t + _93 + _1005 + 128]
                    t = t + 32
                    continue 
                mem[64] = (32 * _1125) + _93 + ceil32(return_data.size) + 128
                require mem[_93 + ceil32(return_data.size) + 96] - 1 < mem[_93 + ceil32(return_data.size) + 96]
                if mem[(32 * mem[_93 + ceil32(return_data.size) + 96] - 1) + _93 + ceil32(return_data.size) + 128] <= s:
                    idx = idx + 1
                    s = s
                    continue 
                idx = idx + 1
                s = mem[(32 * mem[_93 + ceil32(return_data.size) + 96] - 1) + _93 + ceil32(return_data.size) + 128]
                continue 
            if idx != 1:
                if idx != 2:
                    if 3 == idx:
                        mem[mem[64] + 4] = 2
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = 0
                        require ext_code.size(0x2dd7c9371965472e5a5fd28fbe165007c61439e1)
                        staticcall 0x2dd7c9371965472e5a5fd28fbe165007c61439e1.get_dy(int128 arg1, int128 arg2, uint256 arg3) with:
                                gas gas_remaining wei
                               args 2, 0, 0
                    else:
                        if idx != 4:
                            if 0 <= s:
                                idx = idx + 1
                                s = s
                                continue 
                            idx = idx + 1
                            s = 0
                            continue 
                        mem[mem[64] + 4] = 1
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = 0
                        require ext_code.size(0x80f6aed32fc474dd5717105dba5ea57268f46eb)
                        staticcall 0x80f6aed32fc474dd5717105dba5ea57268f46eb.calculateSwap(uint8 arg1, uint8 arg2, uint256 arg3) with:
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
                mem[_169 + 132] = 0
                mem[_169 + 164] = 64
                mem[_169 + 196] = mem[_169]
                if not Mask(251, 0, mem[_169]):
                    require ext_code.size(0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52)
                    staticcall 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args 0, 64, mem[_169 + 196 len (32 * mem[_169]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_169 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _169 + ceil32(return_data.size) + 128
                    require return_data.size >= 32
                    _515 = mem[_169 + 128 len 4], 0
                    require mem[_169 + 128 len 4], 0 <= 4294967296
                    require mem[_169 + 128 len 4], 0 + 32 <= return_data.size
                    require mem[_169 + mem[_169 + 128 len 4], 0 + 128] <= 4294967296 and mem[_169 + 128 len 4], 0 + (32 * mem[_169 + mem[_169 + 128 len 4], 0 + 128]) + 32 <= return_data.size
                    mem[_169 + ceil32(return_data.size) + 128] = mem[_169 + mem[_169 + 128 len 4], 0 + 128]
                    _632 = mem[_169 + _515 + 128]
                    t = 0
                    while t < 32 * _632:
                        mem[t + _169 + ceil32(return_data.size) + 160] = mem[t + _169 + _515 + 160]
                        t = t + 32
                        continue 
                    mem[64] = (32 * _632) + _169 + ceil32(return_data.size) + 160
                else:
                    mem[_169 + 228] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    t = 32
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
                    _1003 = mem[_169 + 128 len 4], 0
                    require mem[_169 + 128 len 4], 0 <= 4294967296
                    require mem[_169 + 128 len 4], 0 + 32 <= return_data.size
                    require mem[_169 + mem[_169 + 128 len 4], 0 + 128] <= 4294967296 and mem[_169 + 128 len 4], 0 + (32 * mem[_169 + mem[_169 + 128 len 4], 0 + 128]) + 32 <= return_data.size
                    mem[_169 + ceil32(return_data.size) + 128] = mem[_169 + mem[_169 + 128 len 4], 0 + 128]
                    _1124 = mem[_169 + _1003 + 128]
                    t = 0
                    while t < 32 * _1124:
                        mem[t + _169 + ceil32(return_data.size) + 160] = mem[t + _169 + _1003 + 160]
                        t = t + 32
                        continue 
                    mem[64] = (32 * _1124) + _169 + ceil32(return_data.size) + 160
                require mem[_169 + ceil32(return_data.size) + 128] - 1 < mem[_169 + ceil32(return_data.size) + 128]
                if mem[(32 * mem[_169 + ceil32(return_data.size) + 128] - 1) + _169 + ceil32(return_data.size) + 160] <= s:
                    idx = idx + 1
                    s = s
                    continue 
                idx = idx + 1
                s = mem[(32 * mem[_169 + ceil32(return_data.size) + 128] - 1) + _169 + ceil32(return_data.size) + 160]
                continue 
            if 2 == idx:
                _137 = mem[64]
                mem[mem[64]] = 3
                mem[64] = mem[64] + 128
                require 0 < mem[_137]
                mem[_137 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                require 1 < mem[_137]
                mem[_137 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                require 2 < mem[_137]
                mem[_137 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                mem[_137 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_137 + 132] = 0
                mem[_137 + 164] = 64
                mem[_137 + 196] = mem[_137]
                if not Mask(251, 0, mem[_137]):
                    require ext_code.size(0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52)
                    staticcall 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args 0, 64, mem[_137 + 196 len (32 * mem[_137]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_137 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _137 + ceil32(return_data.size) + 128
                    require return_data.size >= 32
                    _472 = mem[_137 + 128 len 4], 0
                    require mem[_137 + 128 len 4], 0 <= 4294967296
                    require mem[_137 + 128 len 4], 0 + 32 <= return_data.size
                    require mem[_137 + mem[_137 + 128 len 4], 0 + 128] <= 4294967296 and mem[_137 + 128 len 4], 0 + (32 * mem[_137 + mem[_137 + 128 len 4], 0 + 128]) + 32 <= return_data.size
                    mem[_137 + ceil32(return_data.size) + 128] = mem[_137 + mem[_137 + 128 len 4], 0 + 128]
                    _603 = mem[_137 + _472 + 128]
                    t = 0
                    while t < 32 * _603:
                        mem[t + _137 + ceil32(return_data.size) + 160] = mem[t + _137 + _472 + 160]
                        t = t + 32
                        continue 
                    mem[64] = (32 * _603) + _137 + ceil32(return_data.size) + 160
                    require mem[_137 + ceil32(return_data.size) + 128] - 1 < mem[_137 + ceil32(return_data.size) + 128]
                    if mem[(32 * mem[_137 + ceil32(return_data.size) + 128] - 1) + _137 + ceil32(return_data.size) + 160] <= s:
                        t = floor32(_603) + 1
                        s = s
                        continue 
                    t = floor32(_603) + 1
                    s = mem[(32 * mem[_137 + ceil32(return_data.size) + 128] - 1) + _137 + ceil32(return_data.size) + 160]
                    continue 
                mem[_137 + 228] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                t = 32
                while t < 32 * mem[_137]:
                    mem[t + _137 + 228] = mem[t + _137 + 32]
                    t = t + 32
                    continue 
                require ext_code.size(0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52)
                staticcall 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args 0, 64, mem[_137 + 196 len (32 * mem[_137]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_137 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _137 + ceil32(return_data.size) + 128
                require return_data.size >= 32
                _1001 = mem[_137 + 128 len 4], 0
                require mem[_137 + 128 len 4], 0 <= 4294967296
                require mem[_137 + 128 len 4], 0 + 32 <= return_data.size
                require mem[_137 + mem[_137 + 128 len 4], 0 + 128] <= 4294967296 and mem[_137 + 128 len 4], 0 + (32 * mem[_137 + mem[_137 + 128 len 4], 0 + 128]) + 32 <= return_data.size
                mem[_137 + ceil32(return_data.size) + 128] = mem[_137 + mem[_137 + 128 len 4], 0 + 128]
                _1123 = mem[_137 + _1001 + 128]
                t = 0
                while t < 32 * _1123:
                    mem[t + _137 + ceil32(return_data.size) + 160] = mem[t + _137 + _1001 + 160]
                    t = t + 32
                    continue 
                mem[64] = (32 * _1123) + _137 + ceil32(return_data.size) + 160
                require mem[_137 + ceil32(return_data.size) + 128] - 1 < mem[_137 + ceil32(return_data.size) + 128]
                if mem[(32 * mem[_137 + ceil32(return_data.size) + 128] - 1) + _137 + ceil32(return_data.size) + 160] <= s:
                    idx = idx + 1
                    s = s
                    continue 
                idx = idx + 1
                s = mem[(32 * mem[_137 + ceil32(return_data.size) + 128] - 1) + _137 + ceil32(return_data.size) + 160]
                continue 
            if idx != 1:
                _135 = mem[64]
                mem[mem[64]] = 3
                mem[64] = mem[64] + 128
                require 0 < mem[_135]
                mem[_135 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                require 1 < mem[_135]
                mem[_135 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                require 2 < mem[_135]
                mem[_135 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                mem[_135 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_135 + 132] = 0
                mem[_135 + 164] = 64
                mem[_135 + 196] = mem[_135]
                if not Mask(251, 0, mem[_135]):
                    require ext_code.size(0)
                    staticcall 0x0.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args 0, 64, mem[_135 + 196 len (32 * mem[_135]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_135 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _135 + ceil32(return_data.size) + 128
                    require return_data.size >= 32
                    _467 = mem[_135 + 128 len 4], 0
                    require mem[_135 + 128 len 4], 0 <= 4294967296
                    require mem[_135 + 128 len 4], 0 + 32 <= return_data.size
                    require mem[_135 + mem[_135 + 128 len 4], 0 + 128] <= 4294967296 and mem[_135 + 128 len 4], 0 + (32 * mem[_135 + mem[_135 + 128 len 4], 0 + 128]) + 32 <= return_data.size
                    mem[_135 + ceil32(return_data.size) + 128] = mem[_135 + mem[_135 + 128 len 4], 0 + 128]
                    _599 = mem[_135 + _467 + 128]
                    t = 0
                    while t < 32 * _599:
                        mem[t + _135 + ceil32(return_data.size) + 160] = mem[t + _135 + _467 + 160]
                        t = t + 32
                        continue 
                    mem[64] = (32 * _599) + _135 + ceil32(return_data.size) + 160
                    require mem[_135 + ceil32(return_data.size) + 128] - 1 < mem[_135 + ceil32(return_data.size) + 128]
                    if mem[(32 * mem[_135 + ceil32(return_data.size) + 128] - 1) + _135 + ceil32(return_data.size) + 160] <= s:
                        t = floor32(_599) + 1
                        s = s
                        continue 
                    t = floor32(_599) + 1
                    s = mem[(32 * mem[_135 + ceil32(return_data.size) + 128] - 1) + _135 + ceil32(return_data.size) + 160]
                    continue 
                mem[_135 + 228] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                t = 32
                while t < 32 * mem[_135]:
                    mem[t + _135 + 228] = mem[t + _135 + 32]
                    t = t + 32
                    continue 
                require ext_code.size(0)
                staticcall 0x0.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args 0, 64, mem[_135 + 196 len (32 * mem[_135]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_135 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _135 + ceil32(return_data.size) + 128
                require return_data.size >= 32
                _997 = mem[_135 + 128 len 4], 0
                require mem[_135 + 128 len 4], 0 <= 4294967296
                require mem[_135 + 128 len 4], 0 + 32 <= return_data.size
                require mem[_135 + mem[_135 + 128 len 4], 0 + 128] <= 4294967296 and mem[_135 + 128 len 4], 0 + (32 * mem[_135 + mem[_135 + 128 len 4], 0 + 128]) + 32 <= return_data.size
                mem[_135 + ceil32(return_data.size) + 128] = mem[_135 + mem[_135 + 128 len 4], 0 + 128]
                _1121 = mem[_135 + _997 + 128]
                t = 0
                while t < 32 * _1121:
                    mem[t + _135 + ceil32(return_data.size) + 160] = mem[t + _135 + _997 + 160]
                    t = t + 32
                    continue 
                mem[64] = (32 * _1121) + _135 + ceil32(return_data.size) + 160
                require mem[_135 + ceil32(return_data.size) + 128] - 1 < mem[_135 + ceil32(return_data.size) + 128]
                if mem[(32 * mem[_135 + ceil32(return_data.size) + 128] - 1) + _135 + ceil32(return_data.size) + 160] <= s:
                    idx = idx + 1
                    s = s
                    continue 
                idx = idx + 1
                s = mem[(32 * mem[_135 + ceil32(return_data.size) + 128] - 1) + _135 + ceil32(return_data.size) + 160]
                continue 
            _164 = mem[64]
            mem[mem[64]] = 3
            mem[64] = mem[64] + 128
            require 0 < mem[_164]
            mem[_164 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
            require 1 < mem[_164]
            mem[_164 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
            require 2 < mem[_164]
            mem[_164 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
            mem[_164 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[_164 + 132] = 0
            mem[_164 + 164] = 64
            mem[_164 + 196] = mem[_164]
            if not Mask(251, 0, mem[_164]):
                require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c29.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args 0, 64, mem[_164 + 196 len (32 * mem[_164]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_164 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _164 + ceil32(return_data.size) + 128
                require return_data.size >= 32
                _512 = mem[_164 + 128 len 4], 0
                require mem[_164 + 128 len 4], 0 <= 4294967296
                require mem[_164 + 128 len 4], 0 + 32 <= return_data.size
                require mem[_164 + mem[_164 + 128 len 4], 0 + 128] <= 4294967296 and mem[_164 + 128 len 4], 0 + (32 * mem[_164 + mem[_164 + 128 len 4], 0 + 128]) + 32 <= return_data.size
                mem[_164 + ceil32(return_data.size) + 128] = mem[_164 + mem[_164 + 128 len 4], 0 + 128]
                _630 = mem[_164 + _512 + 128]
                t = 0
                while t < 32 * _630:
                    mem[t + _164 + ceil32(return_data.size) + 160] = mem[t + _164 + _512 + 160]
                    t = t + 32
                    continue 
                mem[64] = (32 * _630) + _164 + ceil32(return_data.size) + 160
            else:
                mem[_164 + 228] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                t = 32
                while t < 32 * mem[_164]:
                    mem[t + _164 + 228] = mem[t + _164 + 32]
                    t = t + 32
                    continue 
                require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c29.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args 0, 64, mem[_164 + 196 len (32 * mem[_164]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_164 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _164 + ceil32(return_data.size) + 128
                require return_data.size >= 32
                _999 = mem[_164 + 128 len 4], 0
                require mem[_164 + 128 len 4], 0 <= 4294967296
                require mem[_164 + 128 len 4], 0 + 32 <= return_data.size
                require mem[_164 + mem[_164 + 128 len 4], 0 + 128] <= 4294967296 and mem[_164 + 128 len 4], 0 + (32 * mem[_164 + mem[_164 + 128 len 4], 0 + 128]) + 32 <= return_data.size
                mem[_164 + ceil32(return_data.size) + 128] = mem[_164 + mem[_164 + 128 len 4], 0 + 128]
                _1122 = mem[_164 + _999 + 128]
                t = 0
                while t < 32 * _1122:
                    mem[t + _164 + ceil32(return_data.size) + 160] = mem[t + _164 + _999 + 160]
                    t = t + 32
                    continue 
                mem[64] = (32 * _1122) + _164 + ceil32(return_data.size) + 160
            require mem[_164 + ceil32(return_data.size) + 128] - 1 < mem[_164 + ceil32(return_data.size) + 128]
            if mem[(32 * mem[_164 + ceil32(return_data.size) + 128] - 1) + _164 + ceil32(return_data.size) + 160] <= s:
                idx = idx + 1
                s = s
                continue 
            idx = idx + 1
            s = mem[(32 * mem[_164 + ceil32(return_data.size) + 128] - 1) + _164 + ceil32(return_data.size) + 160]
            continue 
        idx = 0
        t = 0
        while idx < 5:
            if not idx:
                _953 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                require 0 < mem[_953]
                mem[_953 + 32] = 0x82f0b8b456c1a451378467398982d4834b6829c1
                require 1 < mem[_953]
                mem[_953 + 64] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                mem[_953 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_953 + 100] = s
                mem[_953 + 132] = 64
                mem[_953 + 164] = mem[_953]
                u = 0
                while u < 32 * mem[_953]:
                    mem[u + _953 + 196] = mem[u + _953 + 32]
                    u = u + 32
                    continue 
                require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c29.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args s, 64, mem[_953 + 164 len (32 * mem[_953]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_953 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _953 + ceil32(return_data.size) + 96
                require return_data.size >= 32
                _2715 = mem[_953 + 96 len 4], Mask(224, 32, s) >> 32
                require mem[_953 + 96 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                require mem[_953 + 96 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                require mem[_953 + mem[_953 + 96 len 4], Mask(224, 32, s) >> 32 + 96] <= 4294967296 and mem[_953 + 96 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_953 + mem[_953 + 96 len 4], Mask(224, 32, s) >> 32 + 96]) + 32 <= return_data.size
                mem[_953 + ceil32(return_data.size) + 96] = mem[_953 + mem[_953 + 96 len 4], Mask(224, 32, s) >> 32 + 96]
                _2811 = mem[_953 + _2715 + 96]
                s = 0
                while s < 32 * _2811:
                    mem[s + _953 + ceil32(return_data.size) + 128] = mem[s + _953 + _2715 + 128]
                    s = s + 32
                    continue 
                mem[64] = (32 * _2811) + _953 + ceil32(return_data.size) + 128
                require mem[_953 + ceil32(return_data.size) + 96] - 1 < mem[_953 + ceil32(return_data.size) + 96]
                if mem[(32 * mem[_953 + ceil32(return_data.size) + 96] - 1) + _953 + ceil32(return_data.size) + 128] <= t:
                    idx = idx + 1
                    t = t
                    continue 
                idx = idx + 1
                t = mem[(32 * mem[_953 + ceil32(return_data.size) + 96] - 1) + _953 + ceil32(return_data.size) + 128]
                continue 
            if idx != 1:
                if idx != 2:
                    if 3 == idx:
                        mem[mem[64] + 4] = 0
                        mem[mem[64] + 36] = 2
                        mem[mem[64] + 68] = s
                        require ext_code.size(0x2dd7c9371965472e5a5fd28fbe165007c61439e1)
                        staticcall 0x2dd7c9371965472e5a5fd28fbe165007c61439e1.get_dy(int128 arg1, int128 arg2, uint256 arg3) with:
                                gas gas_remaining wei
                               args 0, 2, s
                    else:
                        if idx != 4:
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
                        require ext_code.size(0x80f6aed32fc474dd5717105dba5ea57268f46eb)
                        staticcall 0x80f6aed32fc474dd5717105dba5ea57268f46eb.calculateSwap(uint8 arg1, uint8 arg2, uint256 arg3) with:
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
                _1175 = mem[64]
                mem[mem[64]] = 3
                mem[64] = mem[64] + 128
                require 0 < mem[_1175]
                mem[_1175 + 32] = 0x82f0b8b456c1a451378467398982d4834b6829c1
                require 1 < mem[_1175]
                mem[_1175 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                require 2 < mem[_1175]
                mem[_1175 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                mem[_1175 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_1175 + 132] = s
                mem[_1175 + 164] = 64
                mem[_1175 + 196] = mem[_1175]
                if not Mask(251, 0, mem[_1175]):
                    require ext_code.size(0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52)
                    staticcall 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args s, 64, mem[_1175 + 196 len (32 * mem[_1175]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_1175 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _1175 + ceil32(return_data.size) + 128
                    require return_data.size >= 32
                    _1795 = mem[_1175 + 128 len 4], Mask(224, 32, s) >> 32
                    require mem[_1175 + 128 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                    require mem[_1175 + 128 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                    require mem[_1175 + mem[_1175 + 128 len 4], Mask(224, 32, s) >> 32 + 128] <= 4294967296 and mem[_1175 + 128 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_1175 + mem[_1175 + 128 len 4], Mask(224, 32, s) >> 32 + 128]) + 32 <= return_data.size
                    mem[_1175 + ceil32(return_data.size) + 128] = mem[_1175 + mem[_1175 + 128 len 4], Mask(224, 32, s) >> 32 + 128]
                    _1990 = mem[_1175 + _1795 + 128]
                    s = 0
                    while s < 32 * _1990:
                        mem[s + _1175 + ceil32(return_data.size) + 160] = mem[s + _1175 + _1795 + 160]
                        s = s + 32
                        continue 
                    mem[64] = (32 * _1990) + _1175 + ceil32(return_data.size) + 160
                else:
                    mem[_1175 + 228] = 0x82f0b8b456c1a451378467398982d4834b6829c1
                    u = 32
                    while u < 32 * mem[_1175]:
                        mem[u + _1175 + 228] = mem[u + _1175 + 32]
                        u = u + 32
                        continue 
                    require ext_code.size(0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52)
                    staticcall 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args s, 64, mem[_1175 + 196 len (32 * mem[_1175]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_1175 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _1175 + ceil32(return_data.size) + 128
                    require return_data.size >= 32
                    _2713 = mem[_1175 + 128 len 4], Mask(224, 32, s) >> 32
                    require mem[_1175 + 128 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                    require mem[_1175 + 128 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                    require mem[_1175 + mem[_1175 + 128 len 4], Mask(224, 32, s) >> 32 + 128] <= 4294967296 and mem[_1175 + 128 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_1175 + mem[_1175 + 128 len 4], Mask(224, 32, s) >> 32 + 128]) + 32 <= return_data.size
                    mem[_1175 + ceil32(return_data.size) + 128] = mem[_1175 + mem[_1175 + 128 len 4], Mask(224, 32, s) >> 32 + 128]
                    _2810 = mem[_1175 + _2713 + 128]
                    s = 0
                    while s < 32 * _2810:
                        mem[s + _1175 + ceil32(return_data.size) + 160] = mem[s + _1175 + _2713 + 160]
                        s = s + 32
                        continue 
                    mem[64] = (32 * _2810) + _1175 + ceil32(return_data.size) + 160
                require mem[_1175 + ceil32(return_data.size) + 128] - 1 < mem[_1175 + ceil32(return_data.size) + 128]
                if mem[(32 * mem[_1175 + ceil32(return_data.size) + 128] - 1) + _1175 + ceil32(return_data.size) + 160] <= t:
                    idx = idx + 1
                    t = t
                    continue 
                idx = idx + 1
                t = mem[(32 * mem[_1175 + ceil32(return_data.size) + 128] - 1) + _1175 + ceil32(return_data.size) + 160]
                continue 
            if 2 == idx:
                _1109 = mem[64]
                mem[mem[64]] = 3
                mem[64] = mem[64] + 128
                require 0 < mem[_1109]
                mem[_1109 + 32] = 0x82f0b8b456c1a451378467398982d4834b6829c1
                require 1 < mem[_1109]
                mem[_1109 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                require 2 < mem[_1109]
                mem[_1109 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                mem[_1109 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_1109 + 132] = s
                mem[_1109 + 164] = 64
                mem[_1109 + 196] = mem[_1109]
                if not Mask(251, 0, mem[_1109]):
                    require ext_code.size(0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52)
                    staticcall 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args s, 64, mem[_1109 + 196 len (32 * mem[_1109]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_1109 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _1109 + ceil32(return_data.size) + 128
                    require return_data.size >= 32
                    _1711 = mem[_1109 + 128 len 4], Mask(224, 32, s) >> 32
                    require mem[_1109 + 128 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                    require mem[_1109 + 128 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                    require mem[_1109 + mem[_1109 + 128 len 4], Mask(224, 32, s) >> 32 + 128] <= 4294967296 and mem[_1109 + 128 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_1109 + mem[_1109 + 128 len 4], Mask(224, 32, s) >> 32 + 128]) + 32 <= return_data.size
                    mem[_1109 + ceil32(return_data.size) + 128] = mem[_1109 + mem[_1109 + 128 len 4], Mask(224, 32, s) >> 32 + 128]
                    _1943 = mem[_1109 + _1711 + 128]
                    s = 0
                    while s < 32 * _1943:
                        mem[s + _1109 + ceil32(return_data.size) + 160] = mem[s + _1109 + _1711 + 160]
                        s = s + 32
                        continue 
                    mem[64] = (32 * _1943) + _1109 + ceil32(return_data.size) + 160
                    require mem[_1109 + ceil32(return_data.size) + 128] - 1 < mem[_1109 + ceil32(return_data.size) + 128]
                    if mem[(32 * mem[_1109 + ceil32(return_data.size) + 128] - 1) + _1109 + ceil32(return_data.size) + 160] <= t:
                        s = floor32(_1943) + 1
                        t = t
                        continue 
                    s = floor32(_1943) + 1
                    t = mem[(32 * mem[_1109 + ceil32(return_data.size) + 128] - 1) + _1109 + ceil32(return_data.size) + 160]
                    continue 
                mem[_1109 + 228] = 0x82f0b8b456c1a451378467398982d4834b6829c1
                u = 32
                while u < 32 * mem[_1109]:
                    mem[u + _1109 + 228] = mem[u + _1109 + 32]
                    u = u + 32
                    continue 
                require ext_code.size(0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52)
                staticcall 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args s, 64, mem[_1109 + 196 len (32 * mem[_1109]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_1109 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _1109 + ceil32(return_data.size) + 128
                require return_data.size >= 32
                _2711 = mem[_1109 + 128 len 4], Mask(224, 32, s) >> 32
                require mem[_1109 + 128 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                require mem[_1109 + 128 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                require mem[_1109 + mem[_1109 + 128 len 4], Mask(224, 32, s) >> 32 + 128] <= 4294967296 and mem[_1109 + 128 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_1109 + mem[_1109 + 128 len 4], Mask(224, 32, s) >> 32 + 128]) + 32 <= return_data.size
                mem[_1109 + ceil32(return_data.size) + 128] = mem[_1109 + mem[_1109 + 128 len 4], Mask(224, 32, s) >> 32 + 128]
                _2809 = mem[_1109 + _2711 + 128]
                s = 0
                while s < 32 * _2809:
                    mem[s + _1109 + ceil32(return_data.size) + 160] = mem[s + _1109 + _2711 + 160]
                    s = s + 32
                    continue 
                mem[64] = (32 * _2809) + _1109 + ceil32(return_data.size) + 160
                require mem[_1109 + ceil32(return_data.size) + 128] - 1 < mem[_1109 + ceil32(return_data.size) + 128]
                if mem[(32 * mem[_1109 + ceil32(return_data.size) + 128] - 1) + _1109 + ceil32(return_data.size) + 160] <= t:
                    idx = idx + 1
                    t = t
                    continue 
                idx = idx + 1
                t = mem[(32 * mem[_1109 + ceil32(return_data.size) + 128] - 1) + _1109 + ceil32(return_data.size) + 160]
                continue 
            if idx != 1:
                _1107 = mem[64]
                mem[mem[64]] = 3
                mem[64] = mem[64] + 128
                require 0 < mem[_1107]
                mem[_1107 + 32] = 0x82f0b8b456c1a451378467398982d4834b6829c1
                require 1 < mem[_1107]
                mem[_1107 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                require 2 < mem[_1107]
                mem[_1107 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                mem[_1107 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_1107 + 132] = s
                mem[_1107 + 164] = 64
                mem[_1107 + 196] = mem[_1107]
                if not Mask(251, 0, mem[_1107]):
                    require ext_code.size(0)
                    staticcall 0x0.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args s, 64, mem[_1107 + 196 len (32 * mem[_1107]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_1107 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _1107 + ceil32(return_data.size) + 128
                    require return_data.size >= 32
                    _1706 = mem[_1107 + 128 len 4], Mask(224, 32, s) >> 32
                    require mem[_1107 + 128 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                    require mem[_1107 + 128 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                    require mem[_1107 + mem[_1107 + 128 len 4], Mask(224, 32, s) >> 32 + 128] <= 4294967296 and mem[_1107 + 128 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_1107 + mem[_1107 + 128 len 4], Mask(224, 32, s) >> 32 + 128]) + 32 <= return_data.size
                    mem[_1107 + ceil32(return_data.size) + 128] = mem[_1107 + mem[_1107 + 128 len 4], Mask(224, 32, s) >> 32 + 128]
                    _1939 = mem[_1107 + _1706 + 128]
                    s = 0
                    while s < 32 * _1939:
                        mem[s + _1107 + ceil32(return_data.size) + 160] = mem[s + _1107 + _1706 + 160]
                        s = s + 32
                        continue 
                    mem[64] = (32 * _1939) + _1107 + ceil32(return_data.size) + 160
                    require mem[_1107 + ceil32(return_data.size) + 128] - 1 < mem[_1107 + ceil32(return_data.size) + 128]
                    if mem[(32 * mem[_1107 + ceil32(return_data.size) + 128] - 1) + _1107 + ceil32(return_data.size) + 160] <= t:
                        s = floor32(_1939) + 1
                        t = t
                        continue 
                    s = floor32(_1939) + 1
                    t = mem[(32 * mem[_1107 + ceil32(return_data.size) + 128] - 1) + _1107 + ceil32(return_data.size) + 160]
                    continue 
                mem[_1107 + 228] = 0x82f0b8b456c1a451378467398982d4834b6829c1
                u = 32
                while u < 32 * mem[_1107]:
                    mem[u + _1107 + 228] = mem[u + _1107 + 32]
                    u = u + 32
                    continue 
                require ext_code.size(0)
                staticcall 0x0.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args s, 64, mem[_1107 + 196 len (32 * mem[_1107]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_1107 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _1107 + ceil32(return_data.size) + 128
                require return_data.size >= 32
                _2707 = mem[_1107 + 128 len 4], Mask(224, 32, s) >> 32
                require mem[_1107 + 128 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                require mem[_1107 + 128 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                require mem[_1107 + mem[_1107 + 128 len 4], Mask(224, 32, s) >> 32 + 128] <= 4294967296 and mem[_1107 + 128 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_1107 + mem[_1107 + 128 len 4], Mask(224, 32, s) >> 32 + 128]) + 32 <= return_data.size
                mem[_1107 + ceil32(return_data.size) + 128] = mem[_1107 + mem[_1107 + 128 len 4], Mask(224, 32, s) >> 32 + 128]
                _2807 = mem[_1107 + _2707 + 128]
                s = 0
                while s < 32 * _2807:
                    mem[s + _1107 + ceil32(return_data.size) + 160] = mem[s + _1107 + _2707 + 160]
                    s = s + 32
                    continue 
                mem[64] = (32 * _2807) + _1107 + ceil32(return_data.size) + 160
                require mem[_1107 + ceil32(return_data.size) + 128] - 1 < mem[_1107 + ceil32(return_data.size) + 128]
                if mem[(32 * mem[_1107 + ceil32(return_data.size) + 128] - 1) + _1107 + ceil32(return_data.size) + 160] <= t:
                    idx = idx + 1
                    t = t
                    continue 
                idx = idx + 1
                t = mem[(32 * mem[_1107 + ceil32(return_data.size) + 128] - 1) + _1107 + ceil32(return_data.size) + 160]
                continue 
            _1172 = mem[64]
            mem[mem[64]] = 3
            mem[64] = mem[64] + 128
            require 0 < mem[_1172]
            mem[_1172 + 32] = 0x82f0b8b456c1a451378467398982d4834b6829c1
            require 1 < mem[_1172]
            mem[_1172 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
            require 2 < mem[_1172]
            mem[_1172 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
            mem[_1172 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[_1172 + 132] = s
            mem[_1172 + 164] = 64
            mem[_1172 + 196] = mem[_1172]
            if not Mask(251, 0, mem[_1172]):
                require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c29.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args s, 64, mem[_1172 + 196 len (32 * mem[_1172]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_1172 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _1172 + ceil32(return_data.size) + 128
                require return_data.size >= 32
                _1792 = mem[_1172 + 128 len 4], Mask(224, 32, s) >> 32
                require mem[_1172 + 128 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                require mem[_1172 + 128 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                require mem[_1172 + mem[_1172 + 128 len 4], Mask(224, 32, s) >> 32 + 128] <= 4294967296 and mem[_1172 + 128 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_1172 + mem[_1172 + 128 len 4], Mask(224, 32, s) >> 32 + 128]) + 32 <= return_data.size
                mem[_1172 + ceil32(return_data.size) + 128] = mem[_1172 + mem[_1172 + 128 len 4], Mask(224, 32, s) >> 32 + 128]
                _1988 = mem[_1172 + _1792 + 128]
                s = 0
                while s < 32 * _1988:
                    mem[s + _1172 + ceil32(return_data.size) + 160] = mem[s + _1172 + _1792 + 160]
                    s = s + 32
                    continue 
                mem[64] = (32 * _1988) + _1172 + ceil32(return_data.size) + 160
            else:
                mem[_1172 + 228] = 0x82f0b8b456c1a451378467398982d4834b6829c1
                u = 32
                while u < 32 * mem[_1172]:
                    mem[u + _1172 + 228] = mem[u + _1172 + 32]
                    u = u + 32
                    continue 
                require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c29.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args s, 64, mem[_1172 + 196 len (32 * mem[_1172]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_1172 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _1172 + ceil32(return_data.size) + 128
                require return_data.size >= 32
                _2709 = mem[_1172 + 128 len 4], Mask(224, 32, s) >> 32
                require mem[_1172 + 128 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                require mem[_1172 + 128 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                require mem[_1172 + mem[_1172 + 128 len 4], Mask(224, 32, s) >> 32 + 128] <= 4294967296 and mem[_1172 + 128 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_1172 + mem[_1172 + 128 len 4], Mask(224, 32, s) >> 32 + 128]) + 32 <= return_data.size
                mem[_1172 + ceil32(return_data.size) + 128] = mem[_1172 + mem[_1172 + 128 len 4], Mask(224, 32, s) >> 32 + 128]
                _2808 = mem[_1172 + _2709 + 128]
                s = 0
                while s < 32 * _2808:
                    mem[s + _1172 + ceil32(return_data.size) + 160] = mem[s + _1172 + _2709 + 160]
                    s = s + 32
                    continue 
                mem[64] = (32 * _2808) + _1172 + ceil32(return_data.size) + 160
            require mem[_1172 + ceil32(return_data.size) + 128] - 1 < mem[_1172 + ceil32(return_data.size) + 128]
            if mem[(32 * mem[_1172 + ceil32(return_data.size) + 128] - 1) + _1172 + ceil32(return_data.size) + 160] <= t:
                idx = idx + 1
                t = t
                continue 
            idx = idx + 1
            t = mem[(32 * mem[_1172 + ceil32(return_data.size) + 128] - 1) + _1172 + ceil32(return_data.size) + 160]
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
        while idx < 5:
            if not idx:
                _85 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                require 0 < mem[_85]
                mem[_85 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                require 1 < mem[_85]
                mem[_85 + 64] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                mem[_85 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_85 + 100] = 10^6 * sub_7d0b6809
                mem[_85 + 132] = 64
                mem[_85 + 164] = mem[_85]
                t = 0
                while t < 32 * mem[_85]:
                    mem[t + _85 + 196] = mem[t + _85 + 32]
                    t = t + 32
                    continue 
                require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c29.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args 10^6 * sub_7d0b6809, 64, mem[_85 + 164 len (32 * mem[_85]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_85 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _85 + ceil32(return_data.size) + 96
                require return_data.size >= 32
                _981 = mem[_85 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32
                require mem[_85 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 <= 4294967296
                require mem[_85 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 32 <= return_data.size
                require mem[_85 + mem[_85 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 96] <= 4294967296 and mem[_85 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + (32 * mem[_85 + mem[_85 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 96]) + 32 <= return_data.size
                mem[_85 + ceil32(return_data.size) + 96] = mem[_85 + mem[_85 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 96]
                _1083 = mem[_85 + _981 + 96]
                t = 0
                while t < 32 * _1083:
                    mem[t + _85 + ceil32(return_data.size) + 128] = mem[t + _85 + _981 + 128]
                    t = t + 32
                    continue 
                mem[64] = (32 * _1083) + _85 + ceil32(return_data.size) + 128
                require mem[_85 + ceil32(return_data.size) + 96] - 1 < mem[_85 + ceil32(return_data.size) + 96]
                if mem[(32 * mem[_85 + ceil32(return_data.size) + 96] - 1) + _85 + ceil32(return_data.size) + 128] <= s:
                    idx = idx + 1
                    s = s
                    continue 
                idx = idx + 1
                s = mem[(32 * mem[_85 + ceil32(return_data.size) + 96] - 1) + _85 + ceil32(return_data.size) + 128]
                continue 
            if idx != 1:
                if idx != 2:
                    if 3 == idx:
                        mem[mem[64] + 4] = 2
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = 10^6 * sub_7d0b6809
                        require ext_code.size(0x2dd7c9371965472e5a5fd28fbe165007c61439e1)
                        staticcall 0x2dd7c9371965472e5a5fd28fbe165007c61439e1.get_dy(int128 arg1, int128 arg2, uint256 arg3) with:
                                gas gas_remaining wei
                               args 2, 0, 10^6 * sub_7d0b6809
                    else:
                        if idx != 4:
                            if 10^6 * sub_7d0b6809 <= s:
                                idx = idx + 1
                                s = s
                                continue 
                            idx = idx + 1
                            s = 10^6 * sub_7d0b6809
                            continue 
                        mem[mem[64] + 4] = 1
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = 10^6 * sub_7d0b6809
                        require ext_code.size(0x80f6aed32fc474dd5717105dba5ea57268f46eb)
                        staticcall 0x80f6aed32fc474dd5717105dba5ea57268f46eb.calculateSwap(uint8 arg1, uint8 arg2, uint256 arg3) with:
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
                _153 = mem[64]
                mem[mem[64]] = 3
                mem[64] = mem[64] + 128
                require 0 < mem[_153]
                mem[_153 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                require 1 < mem[_153]
                mem[_153 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                require 2 < mem[_153]
                mem[_153 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                mem[_153 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_153 + 132] = 10^6 * sub_7d0b6809
                mem[_153 + 164] = 64
                mem[_153 + 196] = mem[_153]
                if not Mask(251, 0, mem[_153]):
                    require ext_code.size(0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52)
                    staticcall 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args 10^6 * sub_7d0b6809, 64, mem[_153 + 196 len (32 * mem[_153]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_153 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _153 + ceil32(return_data.size) + 128
                    require return_data.size >= 32
                    _493 = mem[_153 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32
                    require mem[_153 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 <= 4294967296
                    require mem[_153 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 32 <= return_data.size
                    require mem[_153 + mem[_153 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 128] <= 4294967296 and mem[_153 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + (32 * mem[_153 + mem[_153 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 128]) + 32 <= return_data.size
                    mem[_153 + ceil32(return_data.size) + 128] = mem[_153 + mem[_153 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 128]
                    _620 = mem[_153 + _493 + 128]
                    t = 0
                    while t < 32 * _620:
                        mem[t + _153 + ceil32(return_data.size) + 160] = mem[t + _153 + _493 + 160]
                        t = t + 32
                        continue 
                    mem[64] = (32 * _620) + _153 + ceil32(return_data.size) + 160
                else:
                    mem[_153 + 228] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    t = 32
                    while t < 32 * mem[_153]:
                        mem[t + _153 + 228] = mem[t + _153 + 32]
                        t = t + 32
                        continue 
                    require ext_code.size(0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52)
                    staticcall 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args 10^6 * sub_7d0b6809, 64, mem[_153 + 196 len (32 * mem[_153]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_153 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _153 + ceil32(return_data.size) + 128
                    require return_data.size >= 32
                    _979 = mem[_153 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32
                    require mem[_153 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 <= 4294967296
                    require mem[_153 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 32 <= return_data.size
                    require mem[_153 + mem[_153 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 128] <= 4294967296 and mem[_153 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + (32 * mem[_153 + mem[_153 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 128]) + 32 <= return_data.size
                    mem[_153 + ceil32(return_data.size) + 128] = mem[_153 + mem[_153 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 128]
                    _1082 = mem[_153 + _979 + 128]
                    t = 0
                    while t < 32 * _1082:
                        mem[t + _153 + ceil32(return_data.size) + 160] = mem[t + _153 + _979 + 160]
                        t = t + 32
                        continue 
                    mem[64] = (32 * _1082) + _153 + ceil32(return_data.size) + 160
                require mem[_153 + ceil32(return_data.size) + 128] - 1 < mem[_153 + ceil32(return_data.size) + 128]
                if mem[(32 * mem[_153 + ceil32(return_data.size) + 128] - 1) + _153 + ceil32(return_data.size) + 160] <= s:
                    idx = idx + 1
                    s = s
                    continue 
                idx = idx + 1
                s = mem[(32 * mem[_153 + ceil32(return_data.size) + 128] - 1) + _153 + ceil32(return_data.size) + 160]
                continue 
            if 2 == idx:
                _125 = mem[64]
                mem[mem[64]] = 3
                mem[64] = mem[64] + 128
                require 0 < mem[_125]
                mem[_125 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                require 1 < mem[_125]
                mem[_125 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                require 2 < mem[_125]
                mem[_125 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                mem[_125 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_125 + 132] = 10^6 * sub_7d0b6809
                mem[_125 + 164] = 64
                mem[_125 + 196] = mem[_125]
                if not Mask(251, 0, mem[_125]):
                    require ext_code.size(0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52)
                    staticcall 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args 10^6 * sub_7d0b6809, 64, mem[_125 + 196 len (32 * mem[_125]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_125 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _125 + ceil32(return_data.size) + 128
                    require return_data.size >= 32
                    _452 = mem[_125 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32
                    require mem[_125 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 <= 4294967296
                    require mem[_125 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 32 <= return_data.size
                    require mem[_125 + mem[_125 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 128] <= 4294967296 and mem[_125 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + (32 * mem[_125 + mem[_125 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 128]) + 32 <= return_data.size
                    mem[_125 + ceil32(return_data.size) + 128] = mem[_125 + mem[_125 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 128]
                    _587 = mem[_125 + _452 + 128]
                    t = 0
                    while t < 32 * _587:
                        mem[t + _125 + ceil32(return_data.size) + 160] = mem[t + _125 + _452 + 160]
                        t = t + 32
                        continue 
                    mem[64] = (32 * _587) + _125 + ceil32(return_data.size) + 160
                    require mem[_125 + ceil32(return_data.size) + 128] - 1 < mem[_125 + ceil32(return_data.size) + 128]
                    if mem[(32 * mem[_125 + ceil32(return_data.size) + 128] - 1) + _125 + ceil32(return_data.size) + 160] <= s:
                        t = floor32(_587) + 1
                        s = s
                        continue 
                    t = floor32(_587) + 1
                    s = mem[(32 * mem[_125 + ceil32(return_data.size) + 128] - 1) + _125 + ceil32(return_data.size) + 160]
                    continue 
                mem[_125 + 228] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                t = 32
                while t < 32 * mem[_125]:
                    mem[t + _125 + 228] = mem[t + _125 + 32]
                    t = t + 32
                    continue 
                require ext_code.size(0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52)
                staticcall 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args 10^6 * sub_7d0b6809, 64, mem[_125 + 196 len (32 * mem[_125]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_125 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _125 + ceil32(return_data.size) + 128
                require return_data.size >= 32
                _977 = mem[_125 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32
                require mem[_125 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 <= 4294967296
                require mem[_125 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 32 <= return_data.size
                require mem[_125 + mem[_125 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 128] <= 4294967296 and mem[_125 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + (32 * mem[_125 + mem[_125 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 128]) + 32 <= return_data.size
                mem[_125 + ceil32(return_data.size) + 128] = mem[_125 + mem[_125 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 128]
                _1081 = mem[_125 + _977 + 128]
                t = 0
                while t < 32 * _1081:
                    mem[t + _125 + ceil32(return_data.size) + 160] = mem[t + _125 + _977 + 160]
                    t = t + 32
                    continue 
                mem[64] = (32 * _1081) + _125 + ceil32(return_data.size) + 160
                require mem[_125 + ceil32(return_data.size) + 128] - 1 < mem[_125 + ceil32(return_data.size) + 128]
                if mem[(32 * mem[_125 + ceil32(return_data.size) + 128] - 1) + _125 + ceil32(return_data.size) + 160] <= s:
                    idx = idx + 1
                    s = s
                    continue 
                idx = idx + 1
                s = mem[(32 * mem[_125 + ceil32(return_data.size) + 128] - 1) + _125 + ceil32(return_data.size) + 160]
                continue 
            if idx != 1:
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
                if not Mask(251, 0, mem[_123]):
                    require ext_code.size(0)
                    staticcall 0x0.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args 10^6 * sub_7d0b6809, 64, mem[_123 + 196 len (32 * mem[_123]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_123 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _123 + ceil32(return_data.size) + 128
                    require return_data.size >= 32
                    _447 = mem[_123 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32
                    require mem[_123 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 <= 4294967296
                    require mem[_123 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 32 <= return_data.size
                    require mem[_123 + mem[_123 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 128] <= 4294967296 and mem[_123 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + (32 * mem[_123 + mem[_123 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 128]) + 32 <= return_data.size
                    mem[_123 + ceil32(return_data.size) + 128] = mem[_123 + mem[_123 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 128]
                    _583 = mem[_123 + _447 + 128]
                    t = 0
                    while t < 32 * _583:
                        mem[t + _123 + ceil32(return_data.size) + 160] = mem[t + _123 + _447 + 160]
                        t = t + 32
                        continue 
                    mem[64] = (32 * _583) + _123 + ceil32(return_data.size) + 160
                    require mem[_123 + ceil32(return_data.size) + 128] - 1 < mem[_123 + ceil32(return_data.size) + 128]
                    if mem[(32 * mem[_123 + ceil32(return_data.size) + 128] - 1) + _123 + ceil32(return_data.size) + 160] <= s:
                        t = floor32(_583) + 1
                        s = s
                        continue 
                    t = floor32(_583) + 1
                    s = mem[(32 * mem[_123 + ceil32(return_data.size) + 128] - 1) + _123 + ceil32(return_data.size) + 160]
                    continue 
                mem[_123 + 228] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                t = 32
                while t < 32 * mem[_123]:
                    mem[t + _123 + 228] = mem[t + _123 + 32]
                    t = t + 32
                    continue 
                require ext_code.size(0)
                staticcall 0x0.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args 10^6 * sub_7d0b6809, 64, mem[_123 + 196 len (32 * mem[_123]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_123 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _123 + ceil32(return_data.size) + 128
                require return_data.size >= 32
                _973 = mem[_123 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32
                require mem[_123 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 <= 4294967296
                require mem[_123 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 32 <= return_data.size
                require mem[_123 + mem[_123 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 128] <= 4294967296 and mem[_123 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + (32 * mem[_123 + mem[_123 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 128]) + 32 <= return_data.size
                mem[_123 + ceil32(return_data.size) + 128] = mem[_123 + mem[_123 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 128]
                _1079 = mem[_123 + _973 + 128]
                t = 0
                while t < 32 * _1079:
                    mem[t + _123 + ceil32(return_data.size) + 160] = mem[t + _123 + _973 + 160]
                    t = t + 32
                    continue 
                mem[64] = (32 * _1079) + _123 + ceil32(return_data.size) + 160
                require mem[_123 + ceil32(return_data.size) + 128] - 1 < mem[_123 + ceil32(return_data.size) + 128]
                if mem[(32 * mem[_123 + ceil32(return_data.size) + 128] - 1) + _123 + ceil32(return_data.size) + 160] <= s:
                    idx = idx + 1
                    s = s
                    continue 
                idx = idx + 1
                s = mem[(32 * mem[_123 + ceil32(return_data.size) + 128] - 1) + _123 + ceil32(return_data.size) + 160]
                continue 
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
            if not Mask(251, 0, mem[_148]):
                require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c29.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args 10^6 * sub_7d0b6809, 64, mem[_148 + 196 len (32 * mem[_148]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_148 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _148 + ceil32(return_data.size) + 128
                require return_data.size >= 32
                _490 = mem[_148 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32
                require mem[_148 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 <= 4294967296
                require mem[_148 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 32 <= return_data.size
                require mem[_148 + mem[_148 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 128] <= 4294967296 and mem[_148 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + (32 * mem[_148 + mem[_148 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 128]) + 32 <= return_data.size
                mem[_148 + ceil32(return_data.size) + 128] = mem[_148 + mem[_148 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 128]
                _618 = mem[_148 + _490 + 128]
                t = 0
                while t < 32 * _618:
                    mem[t + _148 + ceil32(return_data.size) + 160] = mem[t + _148 + _490 + 160]
                    t = t + 32
                    continue 
                mem[64] = (32 * _618) + _148 + ceil32(return_data.size) + 160
            else:
                mem[_148 + 228] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                t = 32
                while t < 32 * mem[_148]:
                    mem[t + _148 + 228] = mem[t + _148 + 32]
                    t = t + 32
                    continue 
                require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c29.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args 10^6 * sub_7d0b6809, 64, mem[_148 + 196 len (32 * mem[_148]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_148 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _148 + ceil32(return_data.size) + 128
                require return_data.size >= 32
                _975 = mem[_148 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32
                require mem[_148 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 <= 4294967296
                require mem[_148 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 32 <= return_data.size
                require mem[_148 + mem[_148 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 128] <= 4294967296 and mem[_148 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + (32 * mem[_148 + mem[_148 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 128]) + 32 <= return_data.size
                mem[_148 + ceil32(return_data.size) + 128] = mem[_148 + mem[_148 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 128]
                _1080 = mem[_148 + _975 + 128]
                t = 0
                while t < 32 * _1080:
                    mem[t + _148 + ceil32(return_data.size) + 160] = mem[t + _148 + _975 + 160]
                    t = t + 32
                    continue 
                mem[64] = (32 * _1080) + _148 + ceil32(return_data.size) + 160
            require mem[_148 + ceil32(return_data.size) + 128] - 1 < mem[_148 + ceil32(return_data.size) + 128]
            if mem[(32 * mem[_148 + ceil32(return_data.size) + 128] - 1) + _148 + ceil32(return_data.size) + 160] <= s:
                idx = idx + 1
                s = s
                continue 
            idx = idx + 1
            s = mem[(32 * mem[_148 + ceil32(return_data.size) + 128] - 1) + _148 + ceil32(return_data.size) + 160]
            continue 
        idx = 0
        t = 0
        while idx < 5:
            if not idx:
                _935 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                require 0 < mem[_935]
                mem[_935 + 32] = 0x82f0b8b456c1a451378467398982d4834b6829c1
                require 1 < mem[_935]
                mem[_935 + 64] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                mem[_935 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_935 + 100] = s
                mem[_935 + 132] = 64
                mem[_935 + 164] = mem[_935]
                u = 0
                while u < 32 * mem[_935]:
                    mem[u + _935 + 196] = mem[u + _935 + 32]
                    u = u + 32
                    continue 
                require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c29.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args s, 64, mem[_935 + 164 len (32 * mem[_935]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_935 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _935 + ceil32(return_data.size) + 96
                require return_data.size >= 32
                _2675 = mem[_935 + 96 len 4], Mask(224, 32, s) >> 32
                require mem[_935 + 96 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                require mem[_935 + 96 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                require mem[_935 + mem[_935 + 96 len 4], Mask(224, 32, s) >> 32 + 96] <= 4294967296 and mem[_935 + 96 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_935 + mem[_935 + 96 len 4], Mask(224, 32, s) >> 32 + 96]) + 32 <= return_data.size
                mem[_935 + ceil32(return_data.size) + 96] = mem[_935 + mem[_935 + 96 len 4], Mask(224, 32, s) >> 32 + 96]
                _2791 = mem[_935 + _2675 + 96]
                s = 0
                while s < 32 * _2791:
                    mem[s + _935 + ceil32(return_data.size) + 128] = mem[s + _935 + _2675 + 128]
                    s = s + 32
                    continue 
                mem[64] = (32 * _2791) + _935 + ceil32(return_data.size) + 128
                require mem[_935 + ceil32(return_data.size) + 96] - 1 < mem[_935 + ceil32(return_data.size) + 96]
                if mem[(32 * mem[_935 + ceil32(return_data.size) + 96] - 1) + _935 + ceil32(return_data.size) + 128] <= t:
                    idx = idx + 1
                    t = t
                    continue 
                idx = idx + 1
                t = mem[(32 * mem[_935 + ceil32(return_data.size) + 96] - 1) + _935 + ceil32(return_data.size) + 128]
                continue 
            if idx != 1:
                if idx != 2:
                    if 3 == idx:
                        mem[mem[64] + 4] = 0
                        mem[mem[64] + 36] = 2
                        mem[mem[64] + 68] = s
                        require ext_code.size(0x2dd7c9371965472e5a5fd28fbe165007c61439e1)
                        staticcall 0x2dd7c9371965472e5a5fd28fbe165007c61439e1.get_dy(int128 arg1, int128 arg2, uint256 arg3) with:
                                gas gas_remaining wei
                               args 0, 2, s
                    else:
                        if idx != 4:
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
                        require ext_code.size(0x80f6aed32fc474dd5717105dba5ea57268f46eb)
                        staticcall 0x80f6aed32fc474dd5717105dba5ea57268f46eb.calculateSwap(uint8 arg1, uint8 arg2, uint256 arg3) with:
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
                _1151 = mem[64]
                mem[mem[64]] = 3
                mem[64] = mem[64] + 128
                require 0 < mem[_1151]
                mem[_1151 + 32] = 0x82f0b8b456c1a451378467398982d4834b6829c1
                require 1 < mem[_1151]
                mem[_1151 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                require 2 < mem[_1151]
                mem[_1151 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                mem[_1151 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_1151 + 132] = s
                mem[_1151 + 164] = 64
                mem[_1151 + 196] = mem[_1151]
                if not Mask(251, 0, mem[_1151]):
                    require ext_code.size(0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52)
                    staticcall 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args s, 64, mem[_1151 + 196 len (32 * mem[_1151]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_1151 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _1151 + ceil32(return_data.size) + 128
                    require return_data.size >= 32
                    _1759 = mem[_1151 + 128 len 4], Mask(224, 32, s) >> 32
                    require mem[_1151 + 128 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                    require mem[_1151 + 128 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                    require mem[_1151 + mem[_1151 + 128 len 4], Mask(224, 32, s) >> 32 + 128] <= 4294967296 and mem[_1151 + 128 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_1151 + mem[_1151 + 128 len 4], Mask(224, 32, s) >> 32 + 128]) + 32 <= return_data.size
                    mem[_1151 + ceil32(return_data.size) + 128] = mem[_1151 + mem[_1151 + 128 len 4], Mask(224, 32, s) >> 32 + 128]
                    _1974 = mem[_1151 + _1759 + 128]
                    s = 0
                    while s < 32 * _1974:
                        mem[s + _1151 + ceil32(return_data.size) + 160] = mem[s + _1151 + _1759 + 160]
                        s = s + 32
                        continue 
                    mem[64] = (32 * _1974) + _1151 + ceil32(return_data.size) + 160
                else:
                    mem[_1151 + 228] = 0x82f0b8b456c1a451378467398982d4834b6829c1
                    u = 32
                    while u < 32 * mem[_1151]:
                        mem[u + _1151 + 228] = mem[u + _1151 + 32]
                        u = u + 32
                        continue 
                    require ext_code.size(0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52)
                    staticcall 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args s, 64, mem[_1151 + 196 len (32 * mem[_1151]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_1151 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _1151 + ceil32(return_data.size) + 128
                    require return_data.size >= 32
                    _2673 = mem[_1151 + 128 len 4], Mask(224, 32, s) >> 32
                    require mem[_1151 + 128 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                    require mem[_1151 + 128 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                    require mem[_1151 + mem[_1151 + 128 len 4], Mask(224, 32, s) >> 32 + 128] <= 4294967296 and mem[_1151 + 128 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_1151 + mem[_1151 + 128 len 4], Mask(224, 32, s) >> 32 + 128]) + 32 <= return_data.size
                    mem[_1151 + ceil32(return_data.size) + 128] = mem[_1151 + mem[_1151 + 128 len 4], Mask(224, 32, s) >> 32 + 128]
                    _2790 = mem[_1151 + _2673 + 128]
                    s = 0
                    while s < 32 * _2790:
                        mem[s + _1151 + ceil32(return_data.size) + 160] = mem[s + _1151 + _2673 + 160]
                        s = s + 32
                        continue 
                    mem[64] = (32 * _2790) + _1151 + ceil32(return_data.size) + 160
                require mem[_1151 + ceil32(return_data.size) + 128] - 1 < mem[_1151 + ceil32(return_data.size) + 128]
                if mem[(32 * mem[_1151 + ceil32(return_data.size) + 128] - 1) + _1151 + ceil32(return_data.size) + 160] <= t:
                    idx = idx + 1
                    t = t
                    continue 
                idx = idx + 1
                t = mem[(32 * mem[_1151 + ceil32(return_data.size) + 128] - 1) + _1151 + ceil32(return_data.size) + 160]
                continue 
            if 2 == idx:
                _1067 = mem[64]
                mem[mem[64]] = 3
                mem[64] = mem[64] + 128
                require 0 < mem[_1067]
                mem[_1067 + 32] = 0x82f0b8b456c1a451378467398982d4834b6829c1
                require 1 < mem[_1067]
                mem[_1067 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                require 2 < mem[_1067]
                mem[_1067 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                mem[_1067 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_1067 + 132] = s
                mem[_1067 + 164] = 64
                mem[_1067 + 196] = mem[_1067]
                if not Mask(251, 0, mem[_1067]):
                    require ext_code.size(0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52)
                    staticcall 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args s, 64, mem[_1067 + 196 len (32 * mem[_1067]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_1067 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _1067 + ceil32(return_data.size) + 128
                    require return_data.size >= 32
                    _1659 = mem[_1067 + 128 len 4], Mask(224, 32, s) >> 32
                    require mem[_1067 + 128 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                    require mem[_1067 + 128 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                    require mem[_1067 + mem[_1067 + 128 len 4], Mask(224, 32, s) >> 32 + 128] <= 4294967296 and mem[_1067 + 128 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_1067 + mem[_1067 + 128 len 4], Mask(224, 32, s) >> 32 + 128]) + 32 <= return_data.size
                    mem[_1067 + ceil32(return_data.size) + 128] = mem[_1067 + mem[_1067 + 128 len 4], Mask(224, 32, s) >> 32 + 128]
                    _1911 = mem[_1067 + _1659 + 128]
                    s = 0
                    while s < 32 * _1911:
                        mem[s + _1067 + ceil32(return_data.size) + 160] = mem[s + _1067 + _1659 + 160]
                        s = s + 32
                        continue 
                    mem[64] = (32 * _1911) + _1067 + ceil32(return_data.size) + 160
                    require mem[_1067 + ceil32(return_data.size) + 128] - 1 < mem[_1067 + ceil32(return_data.size) + 128]
                    if mem[(32 * mem[_1067 + ceil32(return_data.size) + 128] - 1) + _1067 + ceil32(return_data.size) + 160] <= t:
                        s = floor32(_1911) + 1
                        t = t
                        continue 
                    s = floor32(_1911) + 1
                    t = mem[(32 * mem[_1067 + ceil32(return_data.size) + 128] - 1) + _1067 + ceil32(return_data.size) + 160]
                    continue 
                mem[_1067 + 228] = 0x82f0b8b456c1a451378467398982d4834b6829c1
                u = 32
                while u < 32 * mem[_1067]:
                    mem[u + _1067 + 228] = mem[u + _1067 + 32]
                    u = u + 32
                    continue 
                require ext_code.size(0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52)
                staticcall 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args s, 64, mem[_1067 + 196 len (32 * mem[_1067]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_1067 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _1067 + ceil32(return_data.size) + 128
                require return_data.size >= 32
                _2671 = mem[_1067 + 128 len 4], Mask(224, 32, s) >> 32
                require mem[_1067 + 128 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                require mem[_1067 + 128 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                require mem[_1067 + mem[_1067 + 128 len 4], Mask(224, 32, s) >> 32 + 128] <= 4294967296 and mem[_1067 + 128 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_1067 + mem[_1067 + 128 len 4], Mask(224, 32, s) >> 32 + 128]) + 32 <= return_data.size
                mem[_1067 + ceil32(return_data.size) + 128] = mem[_1067 + mem[_1067 + 128 len 4], Mask(224, 32, s) >> 32 + 128]
                _2789 = mem[_1067 + _2671 + 128]
                s = 0
                while s < 32 * _2789:
                    mem[s + _1067 + ceil32(return_data.size) + 160] = mem[s + _1067 + _2671 + 160]
                    s = s + 32
                    continue 
                mem[64] = (32 * _2789) + _1067 + ceil32(return_data.size) + 160
                require mem[_1067 + ceil32(return_data.size) + 128] - 1 < mem[_1067 + ceil32(return_data.size) + 128]
                if mem[(32 * mem[_1067 + ceil32(return_data.size) + 128] - 1) + _1067 + ceil32(return_data.size) + 160] <= t:
                    idx = idx + 1
                    t = t
                    continue 
                idx = idx + 1
                t = mem[(32 * mem[_1067 + ceil32(return_data.size) + 128] - 1) + _1067 + ceil32(return_data.size) + 160]
                continue 
            if idx != 1:
                _1065 = mem[64]
                mem[mem[64]] = 3
                mem[64] = mem[64] + 128
                require 0 < mem[_1065]
                mem[_1065 + 32] = 0x82f0b8b456c1a451378467398982d4834b6829c1
                require 1 < mem[_1065]
                mem[_1065 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                require 2 < mem[_1065]
                mem[_1065 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                mem[_1065 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_1065 + 132] = s
                mem[_1065 + 164] = 64
                mem[_1065 + 196] = mem[_1065]
                if not Mask(251, 0, mem[_1065]):
                    require ext_code.size(0)
                    staticcall 0x0.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args s, 64, mem[_1065 + 196 len (32 * mem[_1065]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_1065 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _1065 + ceil32(return_data.size) + 128
                    require return_data.size >= 32
                    _1654 = mem[_1065 + 128 len 4], Mask(224, 32, s) >> 32
                    require mem[_1065 + 128 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                    require mem[_1065 + 128 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                    require mem[_1065 + mem[_1065 + 128 len 4], Mask(224, 32, s) >> 32 + 128] <= 4294967296 and mem[_1065 + 128 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_1065 + mem[_1065 + 128 len 4], Mask(224, 32, s) >> 32 + 128]) + 32 <= return_data.size
                    mem[_1065 + ceil32(return_data.size) + 128] = mem[_1065 + mem[_1065 + 128 len 4], Mask(224, 32, s) >> 32 + 128]
                    _1907 = mem[_1065 + _1654 + 128]
                    s = 0
                    while s < 32 * _1907:
                        mem[s + _1065 + ceil32(return_data.size) + 160] = mem[s + _1065 + _1654 + 160]
                        s = s + 32
                        continue 
                    mem[64] = (32 * _1907) + _1065 + ceil32(return_data.size) + 160
                    require mem[_1065 + ceil32(return_data.size) + 128] - 1 < mem[_1065 + ceil32(return_data.size) + 128]
                    if mem[(32 * mem[_1065 + ceil32(return_data.size) + 128] - 1) + _1065 + ceil32(return_data.size) + 160] <= t:
                        s = floor32(_1907) + 1
                        t = t
                        continue 
                    s = floor32(_1907) + 1
                    t = mem[(32 * mem[_1065 + ceil32(return_data.size) + 128] - 1) + _1065 + ceil32(return_data.size) + 160]
                    continue 
                mem[_1065 + 228] = 0x82f0b8b456c1a451378467398982d4834b6829c1
                u = 32
                while u < 32 * mem[_1065]:
                    mem[u + _1065 + 228] = mem[u + _1065 + 32]
                    u = u + 32
                    continue 
                require ext_code.size(0)
                staticcall 0x0.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args s, 64, mem[_1065 + 196 len (32 * mem[_1065]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_1065 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _1065 + ceil32(return_data.size) + 128
                require return_data.size >= 32
                _2667 = mem[_1065 + 128 len 4], Mask(224, 32, s) >> 32
                require mem[_1065 + 128 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                require mem[_1065 + 128 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                require mem[_1065 + mem[_1065 + 128 len 4], Mask(224, 32, s) >> 32 + 128] <= 4294967296 and mem[_1065 + 128 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_1065 + mem[_1065 + 128 len 4], Mask(224, 32, s) >> 32 + 128]) + 32 <= return_data.size
                mem[_1065 + ceil32(return_data.size) + 128] = mem[_1065 + mem[_1065 + 128 len 4], Mask(224, 32, s) >> 32 + 128]
                _2787 = mem[_1065 + _2667 + 128]
                s = 0
                while s < 32 * _2787:
                    mem[s + _1065 + ceil32(return_data.size) + 160] = mem[s + _1065 + _2667 + 160]
                    s = s + 32
                    continue 
                mem[64] = (32 * _2787) + _1065 + ceil32(return_data.size) + 160
                require mem[_1065 + ceil32(return_data.size) + 128] - 1 < mem[_1065 + ceil32(return_data.size) + 128]
                if mem[(32 * mem[_1065 + ceil32(return_data.size) + 128] - 1) + _1065 + ceil32(return_data.size) + 160] <= t:
                    idx = idx + 1
                    t = t
                    continue 
                idx = idx + 1
                t = mem[(32 * mem[_1065 + ceil32(return_data.size) + 128] - 1) + _1065 + ceil32(return_data.size) + 160]
                continue 
            _1148 = mem[64]
            mem[mem[64]] = 3
            mem[64] = mem[64] + 128
            require 0 < mem[_1148]
            mem[_1148 + 32] = 0x82f0b8b456c1a451378467398982d4834b6829c1
            require 1 < mem[_1148]
            mem[_1148 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
            require 2 < mem[_1148]
            mem[_1148 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
            mem[_1148 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[_1148 + 132] = s
            mem[_1148 + 164] = 64
            mem[_1148 + 196] = mem[_1148]
            if not Mask(251, 0, mem[_1148]):
                require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c29.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args s, 64, mem[_1148 + 196 len (32 * mem[_1148]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_1148 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _1148 + ceil32(return_data.size) + 128
                require return_data.size >= 32
                _1756 = mem[_1148 + 128 len 4], Mask(224, 32, s) >> 32
                require mem[_1148 + 128 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                require mem[_1148 + 128 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                require mem[_1148 + mem[_1148 + 128 len 4], Mask(224, 32, s) >> 32 + 128] <= 4294967296 and mem[_1148 + 128 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_1148 + mem[_1148 + 128 len 4], Mask(224, 32, s) >> 32 + 128]) + 32 <= return_data.size
                mem[_1148 + ceil32(return_data.size) + 128] = mem[_1148 + mem[_1148 + 128 len 4], Mask(224, 32, s) >> 32 + 128]
                _1972 = mem[_1148 + _1756 + 128]
                s = 0
                while s < 32 * _1972:
                    mem[s + _1148 + ceil32(return_data.size) + 160] = mem[s + _1148 + _1756 + 160]
                    s = s + 32
                    continue 
                mem[64] = (32 * _1972) + _1148 + ceil32(return_data.size) + 160
            else:
                mem[_1148 + 228] = 0x82f0b8b456c1a451378467398982d4834b6829c1
                u = 32
                while u < 32 * mem[_1148]:
                    mem[u + _1148 + 228] = mem[u + _1148 + 32]
                    u = u + 32
                    continue 
                require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c29.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args s, 64, mem[_1148 + 196 len (32 * mem[_1148]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_1148 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _1148 + ceil32(return_data.size) + 128
                require return_data.size >= 32
                _2669 = mem[_1148 + 128 len 4], Mask(224, 32, s) >> 32
                require mem[_1148 + 128 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                require mem[_1148 + 128 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                require mem[_1148 + mem[_1148 + 128 len 4], Mask(224, 32, s) >> 32 + 128] <= 4294967296 and mem[_1148 + 128 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_1148 + mem[_1148 + 128 len 4], Mask(224, 32, s) >> 32 + 128]) + 32 <= return_data.size
                mem[_1148 + ceil32(return_data.size) + 128] = mem[_1148 + mem[_1148 + 128 len 4], Mask(224, 32, s) >> 32 + 128]
                _2788 = mem[_1148 + _2669 + 128]
                s = 0
                while s < 32 * _2788:
                    mem[s + _1148 + ceil32(return_data.size) + 160] = mem[s + _1148 + _2669 + 160]
                    s = s + 32
                    continue 
                mem[64] = (32 * _2788) + _1148 + ceil32(return_data.size) + 160
            require mem[_1148 + ceil32(return_data.size) + 128] - 1 < mem[_1148 + ceil32(return_data.size) + 128]
            if mem[(32 * mem[_1148 + ceil32(return_data.size) + 128] - 1) + _1148 + ceil32(return_data.size) + 160] <= t:
                idx = idx + 1
                t = t
                continue 
            idx = idx + 1
            t = mem[(32 * mem[_1148 + ceil32(return_data.size) + 128] - 1) + _1148 + ceil32(return_data.size) + 160]
            continue 
    if maxBatch:
        if 10^6 * maxBatch / maxBatch != 10^6:
            revert with 0, 32, 33, 0x75536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
    return 0, block.number, 0, 0, 0
}



}
