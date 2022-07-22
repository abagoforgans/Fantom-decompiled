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
        while idx < 9:
            if not idx:
                mem[mem[64] + 4] = 1
                mem[mem[64] + 36] = 0
                mem[mem[64] + 68] = 0
                require ext_code.size(0x27e611fd27b276acbd5ffd632e5eaebec9761e40)
                staticcall 0x27e611fd27b276acbd5ffd632e5eaebec9761e40.get_dy(int128 arg1, int128 arg2, uint256 arg3) with:
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
                staticcall 0x83e5f18da720119ff363cf63417628eb0e9fd523.get_dy(int128 arg1, int128 arg2, uint256 arg3) with:
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
                staticcall 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args 0, 64, mem[_131 + 228 len (32 * mem[_131]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_131 + 160 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _131 + ceil32(return_data.size) + 160
                require return_data.size >= 32
                _1663 = mem[_131 + 160 len 4], 0
                require mem[_131 + 160 len 4], 0 <= 4294967296
                require mem[_131 + 160 len 4], 0 + 32 <= return_data.size
                require mem[_131 + mem[_131 + 160 len 4], 0 + 160] <= 4294967296 and mem[_131 + 160 len 4], 0 + (32 * mem[_131 + mem[_131 + 160 len 4], 0 + 160]) + 32 <= return_data.size
                mem[_131 + ceil32(return_data.size) + 160] = mem[_131 + mem[_131 + 160 len 4], 0 + 160]
                _1929 = mem[_131 + _1663 + 160]
                t = 0
                while t < 32 * _1929:
                    mem[t + _131 + ceil32(return_data.size) + 192] = mem[t + _131 + _1663 + 192]
                    t = t + 32
                    continue 
                mem[64] = (32 * _1929) + _131 + ceil32(return_data.size) + 192
                require mem[_131 + ceil32(return_data.size) + 160] - 1 < mem[_131 + ceil32(return_data.size) + 160]
                if mem[(32 * mem[_131 + ceil32(return_data.size) + 160] - 1) + _131 + ceil32(return_data.size) + 192] <= s:
                    idx = idx + 1
                    s = s
                    continue 
                idx = idx + 1
                s = mem[(32 * mem[_131 + ceil32(return_data.size) + 160] - 1) + _131 + ceil32(return_data.size) + 192]
                continue 
            if 3 == idx:
                _247 = mem[64]
                mem[mem[64]] = 3
                mem[64] = mem[64] + 128
                require 0 < mem[_247]
                mem[_247 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                require 1 < mem[_247]
                mem[_247 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c
                require 2 < mem[_247]
                mem[_247 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                mem[_247 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_247 + 132] = 0
                mem[_247 + 164] = 64
                mem[_247 + 196] = mem[_247]
                t = 0
                while t < 32 * mem[_247]:
                    mem[t + _247 + 228] = mem[t + _247 + 32]
                    t = t + 32
                    continue 
                require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c)
                staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args 0, 64, mem[_247 + 196 len (32 * mem[_247]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_247 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _247 + ceil32(return_data.size) + 128
                require return_data.size >= 32
                _1643 = mem[_247 + 128 len 4], 0
                require mem[_247 + 128 len 4], 0 <= 4294967296
                require mem[_247 + 128 len 4], 0 + 32 <= return_data.size
                require mem[_247 + mem[_247 + 128 len 4], 0 + 128] <= 4294967296 and mem[_247 + 128 len 4], 0 + (32 * mem[_247 + mem[_247 + 128 len 4], 0 + 128]) + 32 <= return_data.size
                mem[_247 + ceil32(return_data.size) + 128] = mem[_247 + mem[_247 + 128 len 4], 0 + 128]
                _1919 = mem[_247 + _1643 + 128]
                t = 0
                while t < 32 * _1919:
                    mem[t + _247 + ceil32(return_data.size) + 160] = mem[t + _247 + _1643 + 160]
                    t = t + 32
                    continue 
                mem[64] = (32 * _1919) + _247 + ceil32(return_data.size) + 160
                require mem[_247 + ceil32(return_data.size) + 128] - 1 < mem[_247 + ceil32(return_data.size) + 128]
                if mem[(32 * mem[_247 + ceil32(return_data.size) + 128] - 1) + _247 + ceil32(return_data.size) + 160] <= s:
                    idx = idx + 1
                    s = s
                    continue 
                idx = idx + 1
                s = mem[(32 * mem[_247 + ceil32(return_data.size) + 128] - 1) + _247 + ceil32(return_data.size) + 160]
                continue 
            if 4 == idx:
                if 3 == idx:
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
                    mem[_294 + 132] = 0
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
                           args 0, 64, mem[_294 + 196 len (32 * mem[_294]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_294 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _294 + ceil32(return_data.size) + 128
                    require return_data.size >= 32
                    _1661 = mem[_294 + 128 len 4], 0
                    require mem[_294 + 128 len 4], 0 <= 4294967296
                    require mem[_294 + 128 len 4], 0 + 32 <= return_data.size
                    require mem[_294 + mem[_294 + 128 len 4], 0 + 128] <= 4294967296 and mem[_294 + 128 len 4], 0 + (32 * mem[_294 + mem[_294 + 128 len 4], 0 + 128]) + 32 <= return_data.size
                    mem[_294 + ceil32(return_data.size) + 128] = mem[_294 + mem[_294 + 128 len 4], 0 + 128]
                    _1928 = mem[_294 + _1661 + 128]
                    t = 0
                    while t < 32 * _1928:
                        mem[t + _294 + ceil32(return_data.size) + 160] = mem[t + _294 + _1661 + 160]
                        t = t + 32
                        continue 
                    mem[64] = (32 * _1928) + _294 + ceil32(return_data.size) + 160
                    require mem[_294 + ceil32(return_data.size) + 128] - 1 < mem[_294 + ceil32(return_data.size) + 128]
                    if mem[(32 * mem[_294 + ceil32(return_data.size) + 128] - 1) + _294 + ceil32(return_data.size) + 160] <= s:
                        idx = idx + 1
                        s = s
                        continue 
                    idx = idx + 1
                    s = mem[(32 * mem[_294 + ceil32(return_data.size) + 128] - 1) + _294 + ceil32(return_data.size) + 160]
                    continue 
                if idx != 4:
                    _292 = mem[64]
                    mem[mem[64]] = 3
                    mem[64] = mem[64] + 128
                    require 0 < mem[_292]
                    mem[_292 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    require 1 < mem[_292]
                    mem[_292 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c
                    require 2 < mem[_292]
                    mem[_292 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    mem[_292 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_292 + 132] = 0
                    mem[_292 + 164] = 64
                    mem[_292 + 196] = mem[_292]
                    t = 0
                    while t < 32 * mem[_292]:
                        mem[t + _292 + 228] = mem[t + _292 + 32]
                        t = t + 32
                        continue 
                    require ext_code.size(0)
                    staticcall 0x0.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args 0, 64, mem[_292 + 196 len (32 * mem[_292]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_292 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _292 + ceil32(return_data.size) + 128
                    require return_data.size >= 32
                    _1657 = mem[_292 + 128 len 4], 0
                    require mem[_292 + 128 len 4], 0 <= 4294967296
                    require mem[_292 + 128 len 4], 0 + 32 <= return_data.size
                    require mem[_292 + mem[_292 + 128 len 4], 0 + 128] <= 4294967296 and mem[_292 + 128 len 4], 0 + (32 * mem[_292 + mem[_292 + 128 len 4], 0 + 128]) + 32 <= return_data.size
                    mem[_292 + ceil32(return_data.size) + 128] = mem[_292 + mem[_292 + 128 len 4], 0 + 128]
                    _1926 = mem[_292 + _1657 + 128]
                    t = 0
                    while t < 32 * _1926:
                        mem[t + _292 + ceil32(return_data.size) + 160] = mem[t + _292 + _1657 + 160]
                        t = t + 32
                        continue 
                    mem[64] = (32 * _1926) + _292 + ceil32(return_data.size) + 160
                    require mem[_292 + ceil32(return_data.size) + 128] - 1 < mem[_292 + ceil32(return_data.size) + 128]
                    if mem[(32 * mem[_292 + ceil32(return_data.size) + 128] - 1) + _292 + ceil32(return_data.size) + 160] <= s:
                        idx = idx + 1
                        s = s
                        continue 
                    idx = idx + 1
                    s = mem[(32 * mem[_292 + ceil32(return_data.size) + 128] - 1) + _292 + ceil32(return_data.size) + 160]
                    continue 
                _363 = mem[64]
                mem[mem[64]] = 3
                mem[64] = mem[64] + 128
                require 0 < mem[_363]
                mem[_363 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                require 1 < mem[_363]
                mem[_363 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c
                require 2 < mem[_363]
                mem[_363 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                mem[_363 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_363 + 132] = 0
                mem[_363 + 164] = 64
                mem[_363 + 196] = mem[_363]
                t = 0
                while t < 32 * mem[_363]:
                    mem[t + _363 + 228] = mem[t + _363 + 32]
                    t = t + 32
                    continue 
                require ext_code.size(0x53c153a0df7e050bbefbb70ee9632061f12795fb)
                staticcall 0x53c153a0df7e050bbefbb70ee9632061f12795fb.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args 0, 64, mem[_363 + 196 len (32 * mem[_363]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_363 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _363 + ceil32(return_data.size) + 128
                require return_data.size >= 32
                _1659 = mem[_363 + 128 len 4], 0
                require mem[_363 + 128 len 4], 0 <= 4294967296
                require mem[_363 + 128 len 4], 0 + 32 <= return_data.size
                require mem[_363 + mem[_363 + 128 len 4], 0 + 128] <= 4294967296 and mem[_363 + 128 len 4], 0 + (32 * mem[_363 + mem[_363 + 128 len 4], 0 + 128]) + 32 <= return_data.size
                mem[_363 + ceil32(return_data.size) + 128] = mem[_363 + mem[_363 + 128 len 4], 0 + 128]
                _1927 = mem[_363 + _1659 + 128]
                t = 0
                while t < 32 * _1927:
                    mem[t + _363 + ceil32(return_data.size) + 160] = mem[t + _363 + _1659 + 160]
                    t = t + 32
                    continue 
                mem[64] = (32 * _1927) + _363 + ceil32(return_data.size) + 160
                require mem[_363 + ceil32(return_data.size) + 128] - 1 < mem[_363 + ceil32(return_data.size) + 128]
                if mem[(32 * mem[_363 + ceil32(return_data.size) + 128] - 1) + _363 + ceil32(return_data.size) + 160] <= s:
                    idx = idx + 1
                    s = s
                    continue 
                idx = idx + 1
                s = mem[(32 * mem[_363 + ceil32(return_data.size) + 128] - 1) + _363 + ceil32(return_data.size) + 160]
                continue 
            if 5 == idx:
                _436 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                require 0 < mem[_436]
                mem[_436 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                require 1 < mem[_436]
                mem[_436 + 64] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                mem[_436 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_436 + 100] = 0
                mem[_436 + 132] = 64
                mem[_436 + 164] = mem[_436]
                t = 0
                while t < 32 * mem[_436]:
                    mem[t + _436 + 196] = mem[t + _436 + 32]
                    t = t + 32
                    continue 
                require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c)
                staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args 0, 64, mem[_436 + 164 len (32 * mem[_436]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_436 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _436 + ceil32(return_data.size) + 96
                require return_data.size >= 32
                _1645 = mem[_436 + 96 len 4], 0
                require mem[_436 + 96 len 4], 0 <= 4294967296
                require mem[_436 + 96 len 4], 0 + 32 <= return_data.size
                require mem[_436 + mem[_436 + 96 len 4], 0 + 96] <= 4294967296 and mem[_436 + 96 len 4], 0 + (32 * mem[_436 + mem[_436 + 96 len 4], 0 + 96]) + 32 <= return_data.size
                mem[_436 + ceil32(return_data.size) + 96] = mem[_436 + mem[_436 + 96 len 4], 0 + 96]
                _1920 = mem[_436 + _1645 + 96]
                t = 0
                while t < 32 * _1920:
                    mem[t + _436 + ceil32(return_data.size) + 128] = mem[t + _436 + _1645 + 128]
                    t = t + 32
                    continue 
                mem[64] = (32 * _1920) + _436 + ceil32(return_data.size) + 128
                require mem[_436 + ceil32(return_data.size) + 96] - 1 < mem[_436 + ceil32(return_data.size) + 96]
                if mem[(32 * mem[_436 + ceil32(return_data.size) + 96] - 1) + _436 + ceil32(return_data.size) + 128] <= s:
                    idx = idx + 1
                    s = s
                    continue 
                idx = idx + 1
                s = mem[(32 * mem[_436 + ceil32(return_data.size) + 96] - 1) + _436 + ceil32(return_data.size) + 128]
                continue 
            if 6 == idx:
                if 5 == idx:
                    _532 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    require 0 < mem[_532]
                    mem[_532 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    require 1 < mem[_532]
                    mem[_532 + 64] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    mem[_532 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_532 + 100] = 0
                    mem[_532 + 132] = 64
                    mem[_532 + 164] = mem[_532]
                    t = 0
                    while t < 32 * mem[_532]:
                        mem[t + _532 + 196] = mem[t + _532 + 32]
                        t = t + 32
                        continue 
                    require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c)
                    staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args 0, 64, mem[_532 + 164 len (32 * mem[_532]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_532 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _532 + ceil32(return_data.size) + 96
                    require return_data.size >= 32
                    _1655 = mem[_532 + 96 len 4], 0
                    require mem[_532 + 96 len 4], 0 <= 4294967296
                    require mem[_532 + 96 len 4], 0 + 32 <= return_data.size
                    require mem[_532 + mem[_532 + 96 len 4], 0 + 96] <= 4294967296 and mem[_532 + 96 len 4], 0 + (32 * mem[_532 + mem[_532 + 96 len 4], 0 + 96]) + 32 <= return_data.size
                    mem[_532 + ceil32(return_data.size) + 96] = mem[_532 + mem[_532 + 96 len 4], 0 + 96]
                    _1925 = mem[_532 + _1655 + 96]
                    t = 0
                    while t < 32 * _1925:
                        mem[t + _532 + ceil32(return_data.size) + 128] = mem[t + _532 + _1655 + 128]
                        t = t + 32
                        continue 
                    mem[64] = (32 * _1925) + _532 + ceil32(return_data.size) + 128
                    require mem[_532 + ceil32(return_data.size) + 96] - 1 < mem[_532 + ceil32(return_data.size) + 96]
                    if mem[(32 * mem[_532 + ceil32(return_data.size) + 96] - 1) + _532 + ceil32(return_data.size) + 128] <= s:
                        idx = idx + 1
                        s = s
                        continue 
                    idx = idx + 1
                    s = mem[(32 * mem[_532 + ceil32(return_data.size) + 96] - 1) + _532 + ceil32(return_data.size) + 128]
                    continue 
                if idx != 6:
                    _530 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    require 0 < mem[_530]
                    mem[_530 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    require 1 < mem[_530]
                    mem[_530 + 64] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    mem[_530 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_530 + 100] = 0
                    mem[_530 + 132] = 64
                    mem[_530 + 164] = mem[_530]
                    t = 0
                    while t < 32 * mem[_530]:
                        mem[t + _530 + 196] = mem[t + _530 + 32]
                        t = t + 32
                        continue 
                    require ext_code.size(0)
                    staticcall 0x0.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args 0, 64, mem[_530 + 164 len (32 * mem[_530]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_530 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _530 + ceil32(return_data.size) + 96
                    require return_data.size >= 32
                    _1651 = mem[_530 + 96 len 4], 0
                    require mem[_530 + 96 len 4], 0 <= 4294967296
                    require mem[_530 + 96 len 4], 0 + 32 <= return_data.size
                    require mem[_530 + mem[_530 + 96 len 4], 0 + 96] <= 4294967296 and mem[_530 + 96 len 4], 0 + (32 * mem[_530 + mem[_530 + 96 len 4], 0 + 96]) + 32 <= return_data.size
                    mem[_530 + ceil32(return_data.size) + 96] = mem[_530 + mem[_530 + 96 len 4], 0 + 96]
                    _1923 = mem[_530 + _1651 + 96]
                    t = 0
                    while t < 32 * _1923:
                        mem[t + _530 + ceil32(return_data.size) + 128] = mem[t + _530 + _1651 + 128]
                        t = t + 32
                        continue 
                    mem[64] = (32 * _1923) + _530 + ceil32(return_data.size) + 128
                    require mem[_530 + ceil32(return_data.size) + 96] - 1 < mem[_530 + ceil32(return_data.size) + 96]
                    if mem[(32 * mem[_530 + ceil32(return_data.size) + 96] - 1) + _530 + ceil32(return_data.size) + 128] <= s:
                        idx = idx + 1
                        s = s
                        continue 
                    idx = idx + 1
                    s = mem[(32 * mem[_530 + ceil32(return_data.size) + 96] - 1) + _530 + ceil32(return_data.size) + 128]
                    continue 
                _628 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                require 0 < mem[_628]
                mem[_628 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                require 1 < mem[_628]
                mem[_628 + 64] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                mem[_628 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_628 + 100] = 0
                mem[_628 + 132] = 64
                mem[_628 + 164] = mem[_628]
                t = 0
                while t < 32 * mem[_628]:
                    mem[t + _628 + 196] = mem[t + _628 + 32]
                    t = t + 32
                    continue 
                require ext_code.size(0x53c153a0df7e050bbefbb70ee9632061f12795fb)
                staticcall 0x53c153a0df7e050bbefbb70ee9632061f12795fb.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args 0, 64, mem[_628 + 164 len (32 * mem[_628]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_628 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _628 + ceil32(return_data.size) + 96
                require return_data.size >= 32
                _1653 = mem[_628 + 96 len 4], 0
                require mem[_628 + 96 len 4], 0 <= 4294967296
                require mem[_628 + 96 len 4], 0 + 32 <= return_data.size
                require mem[_628 + mem[_628 + 96 len 4], 0 + 96] <= 4294967296 and mem[_628 + 96 len 4], 0 + (32 * mem[_628 + mem[_628 + 96 len 4], 0 + 96]) + 32 <= return_data.size
                mem[_628 + ceil32(return_data.size) + 96] = mem[_628 + mem[_628 + 96 len 4], 0 + 96]
                _1924 = mem[_628 + _1653 + 96]
                t = 0
                while t < 32 * _1924:
                    mem[t + _628 + ceil32(return_data.size) + 128] = mem[t + _628 + _1653 + 128]
                    t = t + 32
                    continue 
                mem[64] = (32 * _1924) + _628 + ceil32(return_data.size) + 128
                require mem[_628 + ceil32(return_data.size) + 96] - 1 < mem[_628 + ceil32(return_data.size) + 96]
                if mem[(32 * mem[_628 + ceil32(return_data.size) + 96] - 1) + _628 + ceil32(return_data.size) + 128] <= s:
                    idx = idx + 1
                    s = s
                    continue 
                idx = idx + 1
                s = mem[(32 * mem[_628 + ceil32(return_data.size) + 96] - 1) + _628 + ceil32(return_data.size) + 128]
                continue 
            if idx != 7:
                if idx != 8:
                    if 0 <= s:
                        idx = idx + 1
                        s = s
                        continue 
                    idx = idx + 1
                    s = 0
                    continue 
                mem[mem[64] + 4] = 0
                mem[mem[64] + 36] = 2
                mem[mem[64] + 68] = 0
                require ext_code.size(0x952bda8a83c3d5f398a686bb4e8c6dd90072d523)
                staticcall 0x952bda8a83c3d5f398a686bb4e8c6dd90072d523.calculateSwap(uint8 arg1, uint8 arg2, uint256 arg3) with:
                        gas gas_remaining wei
                       args 0, 2, 0
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
            _526 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            require 0 < mem[_526]
            mem[_526 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
            require 1 < mem[_526]
            mem[_526 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c
            mem[_526 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[_526 + 100] = 0
            mem[_526 + 132] = 64
            mem[_526 + 164] = mem[_526]
            t = 0
            while t < 32 * mem[_526]:
                mem[t + _526 + 196] = mem[t + _526 + 32]
                t = t + 32
                continue 
            require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c)
            staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c.getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args 0, 64, mem[_526 + 164 len (32 * mem[_526]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[_526 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = _526 + ceil32(return_data.size) + 96
            require return_data.size >= 32
            _1647 = mem[_526 + 96 len 4], 0
            require mem[_526 + 96 len 4], 0 <= 4294967296
            require mem[_526 + 96 len 4], 0 + 32 <= return_data.size
            require mem[_526 + mem[_526 + 96 len 4], 0 + 96] <= 4294967296 and mem[_526 + 96 len 4], 0 + (32 * mem[_526 + mem[_526 + 96 len 4], 0 + 96]) + 32 <= return_data.size
            mem[_526 + ceil32(return_data.size) + 96] = mem[_526 + mem[_526 + 96 len 4], 0 + 96]
            _1921 = mem[_526 + _1647 + 96]
            t = 0
            while t < 32 * _1921:
                mem[t + _526 + ceil32(return_data.size) + 128] = mem[t + _526 + _1647 + 128]
                t = t + 32
                continue 
            mem[64] = (32 * _1921) + _526 + ceil32(return_data.size) + 128
            require mem[_526 + ceil32(return_data.size) + 96] - 1 < mem[_526 + ceil32(return_data.size) + 96]
            _5029 = mem[(32 * mem[_526 + ceil32(return_data.size) + 96] - 1) + _526 + ceil32(return_data.size) + 128]
            mem[(32 * _1921) + _526 + ceil32(return_data.size) + 128] = 2
            mem[(32 * _1921) + _526 + ceil32(return_data.size) + 160] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c
            mem[(32 * _1921) + _526 + ceil32(return_data.size) + 192] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
            mem[(32 * _1921) + _526 + ceil32(return_data.size) + 224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[(32 * _1921) + _526 + ceil32(return_data.size) + 228] = _5029
            mem[(32 * _1921) + _526 + ceil32(return_data.size) + 260] = 64
            mem[(32 * _1921) + _526 + ceil32(return_data.size) + 292] = 2
            t = 0
            while t < 64:
                mem[t + (32 * _1921) + _526 + ceil32(return_data.size) + 324] = mem[t + (32 * _1921) + _526 + ceil32(return_data.size) + 160]
                t = t + 32
                continue 
            require ext_code.size(0x1b02da8cb0d097eb8d57a175b88c7d8b47997506)
            staticcall 0x1b02da8cb0d097eb8d57a175b88c7d8b47997506.getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args _5029, Array(len=2, data=mem[(32 * _1921) + _526 + ceil32(return_data.size) + 324 len 64])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _1921) + _526 + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * _1921) + _526 + (2 * ceil32(return_data.size)) + 224
            require return_data.size >= 32
            _6803 = mem[(32 * _1921) + _526 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _5029) >> 32
            require mem[(32 * _1921) + _526 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _5029) >> 32 <= 4294967296
            require mem[(32 * _1921) + _526 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _5029) >> 32 + 32 <= return_data.size
            require mem[(32 * _1921) + _526 + ceil32(return_data.size) + mem[(32 * _1921) + _526 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _5029) >> 32 + 224] <= 4294967296 and mem[(32 * _1921) + _526 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _5029) >> 32 + (32 * mem[(32 * _1921) + _526 + ceil32(return_data.size) + mem[(32 * _1921) + _526 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _5029) >> 32 + 224]) + 32 <= return_data.size
            mem[(32 * _1921) + _526 + (2 * ceil32(return_data.size)) + 224] = mem[(32 * _1921) + _526 + ceil32(return_data.size) + mem[(32 * _1921) + _526 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _5029) >> 32 + 224]
            _6923 = mem[(32 * _1921) + _526 + ceil32(return_data.size) + _6803 + 224]
            t = 0
            while t < 32 * _6923:
                mem[t + (32 * _1921) + _526 + (2 * ceil32(return_data.size)) + 256] = mem[t + (32 * _1921) + _526 + ceil32(return_data.size) + _6803 + 256]
                t = t + 32
                continue 
            mem[64] = (32 * _6923) + (32 * _1921) + _526 + (2 * ceil32(return_data.size)) + 256
            require mem[(32 * _1921) + _526 + (2 * ceil32(return_data.size)) + 224] - 1 < mem[(32 * _1921) + _526 + (2 * ceil32(return_data.size)) + 224]
            if mem[(32 * mem[(32 * _1921) + _526 + (2 * ceil32(return_data.size)) + 224] - 1) + (32 * _1921) + _526 + (2 * ceil32(return_data.size)) + 256] <= s:
                idx = idx + 1
                s = s
                continue 
            idx = idx + 1
            s = mem[(32 * mem[(32 * _1921) + _526 + (2 * ceil32(return_data.size)) + 224] - 1) + (32 * _1921) + _526 + (2 * ceil32(return_data.size)) + 256]
            continue 
        idx = 0
        t = 0
        while idx < 9:
            if not idx:
                mem[mem[64] + 4] = 1
                mem[mem[64] + 36] = 0
                mem[mem[64] + 68] = s
                require ext_code.size(0x27e611fd27b276acbd5ffd632e5eaebec9761e40)
                staticcall 0x27e611fd27b276acbd5ffd632e5eaebec9761e40.get_dy(int128 arg1, int128 arg2, uint256 arg3) with:
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
                staticcall 0x83e5f18da720119ff363cf63417628eb0e9fd523.get_dy(int128 arg1, int128 arg2, uint256 arg3) with:
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
                _1731 = mem[64]
                mem[mem[64]] = 4
                mem[64] = mem[64] + 160
                require 0 < mem[_1731]
                mem[_1731 + 32] = 0x8d11ec38a3eb5e956b052f67da8bdc9bef8abf
                require 1 < mem[_1731]
                mem[_1731 + 64] = 0x5cc61a78f164885776aa610fb0fe1257df78e59b
                require 2 < mem[_1731]
                mem[_1731 + 96] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c
                require 3 < mem[_1731]
                mem[_1731 + 128] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                mem[_1731 + 160] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_1731 + 164] = s
                mem[_1731 + 196] = 64
                mem[_1731 + 228] = mem[_1731]
                u = 0
                while u < 32 * mem[_1731]:
                    mem[u + _1731 + 260] = mem[u + _1731 + 32]
                    u = u + 32
                    continue 
                require ext_code.size(0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52)
                staticcall 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args s, 64, mem[_1731 + 228 len (32 * mem[_1731]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_1731 + 160 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _1731 + ceil32(return_data.size) + 160
                require return_data.size >= 32
                _5271 = mem[_1731 + 160 len 4], Mask(224, 32, s) >> 32
                require mem[_1731 + 160 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                require mem[_1731 + 160 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                require mem[_1731 + mem[_1731 + 160 len 4], Mask(224, 32, s) >> 32 + 160] <= 4294967296 and mem[_1731 + 160 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_1731 + mem[_1731 + 160 len 4], Mask(224, 32, s) >> 32 + 160]) + 32 <= return_data.size
                mem[_1731 + ceil32(return_data.size) + 160] = mem[_1731 + mem[_1731 + 160 len 4], Mask(224, 32, s) >> 32 + 160]
                _5545 = mem[_1731 + _5271 + 160]
                s = 0
                while s < 32 * _5545:
                    mem[s + _1731 + ceil32(return_data.size) + 192] = mem[s + _1731 + _5271 + 192]
                    s = s + 32
                    continue 
                mem[64] = (32 * _5545) + _1731 + ceil32(return_data.size) + 192
                require mem[_1731 + ceil32(return_data.size) + 160] - 1 < mem[_1731 + ceil32(return_data.size) + 160]
                if mem[(32 * mem[_1731 + ceil32(return_data.size) + 160] - 1) + _1731 + ceil32(return_data.size) + 192] <= t:
                    idx = idx + 1
                    t = t
                    continue 
                idx = idx + 1
                t = mem[(32 * mem[_1731 + ceil32(return_data.size) + 160] - 1) + _1731 + ceil32(return_data.size) + 192]
                continue 
            if 3 == idx:
                _2123 = mem[64]
                mem[mem[64]] = 3
                mem[64] = mem[64] + 128
                require 0 < mem[_2123]
                mem[_2123 + 32] = 0x8d11ec38a3eb5e956b052f67da8bdc9bef8abf
                require 1 < mem[_2123]
                mem[_2123 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c
                require 2 < mem[_2123]
                mem[_2123 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                mem[_2123 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_2123 + 132] = s
                mem[_2123 + 164] = 64
                mem[_2123 + 196] = mem[_2123]
                u = 0
                while u < 32 * mem[_2123]:
                    mem[u + _2123 + 228] = mem[u + _2123 + 32]
                    u = u + 32
                    continue 
                require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c)
                staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args s, 64, mem[_2123 + 196 len (32 * mem[_2123]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_2123 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _2123 + ceil32(return_data.size) + 128
                require return_data.size >= 32
                _5251 = mem[_2123 + 128 len 4], Mask(224, 32, s) >> 32
                require mem[_2123 + 128 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                require mem[_2123 + 128 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                require mem[_2123 + mem[_2123 + 128 len 4], Mask(224, 32, s) >> 32 + 128] <= 4294967296 and mem[_2123 + 128 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_2123 + mem[_2123 + 128 len 4], Mask(224, 32, s) >> 32 + 128]) + 32 <= return_data.size
                mem[_2123 + ceil32(return_data.size) + 128] = mem[_2123 + mem[_2123 + 128 len 4], Mask(224, 32, s) >> 32 + 128]
                _5535 = mem[_2123 + _5251 + 128]
                s = 0
                while s < 32 * _5535:
                    mem[s + _2123 + ceil32(return_data.size) + 160] = mem[s + _2123 + _5251 + 160]
                    s = s + 32
                    continue 
                mem[64] = (32 * _5535) + _2123 + ceil32(return_data.size) + 160
                require mem[_2123 + ceil32(return_data.size) + 128] - 1 < mem[_2123 + ceil32(return_data.size) + 128]
                if mem[(32 * mem[_2123 + ceil32(return_data.size) + 128] - 1) + _2123 + ceil32(return_data.size) + 160] <= t:
                    idx = idx + 1
                    t = t
                    continue 
                idx = idx + 1
                t = mem[(32 * mem[_2123 + ceil32(return_data.size) + 128] - 1) + _2123 + ceil32(return_data.size) + 160]
                continue 
            if 4 == idx:
                if 3 == idx:
                    _2276 = mem[64]
                    mem[mem[64]] = 3
                    mem[64] = mem[64] + 128
                    require 0 < mem[_2276]
                    mem[_2276 + 32] = 0x8d11ec38a3eb5e956b052f67da8bdc9bef8abf
                    require 1 < mem[_2276]
                    mem[_2276 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c
                    require 2 < mem[_2276]
                    mem[_2276 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    mem[_2276 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_2276 + 132] = s
                    mem[_2276 + 164] = 64
                    mem[_2276 + 196] = mem[_2276]
                    u = 0
                    while u < 32 * mem[_2276]:
                        mem[u + _2276 + 228] = mem[u + _2276 + 32]
                        u = u + 32
                        continue 
                    require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c)
                    staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args s, 64, mem[_2276 + 196 len (32 * mem[_2276]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_2276 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _2276 + ceil32(return_data.size) + 128
                    require return_data.size >= 32
                    _5269 = mem[_2276 + 128 len 4], Mask(224, 32, s) >> 32
                    require mem[_2276 + 128 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                    require mem[_2276 + 128 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                    require mem[_2276 + mem[_2276 + 128 len 4], Mask(224, 32, s) >> 32 + 128] <= 4294967296 and mem[_2276 + 128 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_2276 + mem[_2276 + 128 len 4], Mask(224, 32, s) >> 32 + 128]) + 32 <= return_data.size
                    mem[_2276 + ceil32(return_data.size) + 128] = mem[_2276 + mem[_2276 + 128 len 4], Mask(224, 32, s) >> 32 + 128]
                    _5544 = mem[_2276 + _5269 + 128]
                    s = 0
                    while s < 32 * _5544:
                        mem[s + _2276 + ceil32(return_data.size) + 160] = mem[s + _2276 + _5269 + 160]
                        s = s + 32
                        continue 
                    mem[64] = (32 * _5544) + _2276 + ceil32(return_data.size) + 160
                    require mem[_2276 + ceil32(return_data.size) + 128] - 1 < mem[_2276 + ceil32(return_data.size) + 128]
                    if mem[(32 * mem[_2276 + ceil32(return_data.size) + 128] - 1) + _2276 + ceil32(return_data.size) + 160] <= t:
                        idx = idx + 1
                        t = t
                        continue 
                    idx = idx + 1
                    t = mem[(32 * mem[_2276 + ceil32(return_data.size) + 128] - 1) + _2276 + ceil32(return_data.size) + 160]
                    continue 
                if idx != 4:
                    _2274 = mem[64]
                    mem[mem[64]] = 3
                    mem[64] = mem[64] + 128
                    require 0 < mem[_2274]
                    mem[_2274 + 32] = 0x8d11ec38a3eb5e956b052f67da8bdc9bef8abf
                    require 1 < mem[_2274]
                    mem[_2274 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c
                    require 2 < mem[_2274]
                    mem[_2274 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    mem[_2274 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_2274 + 132] = s
                    mem[_2274 + 164] = 64
                    mem[_2274 + 196] = mem[_2274]
                    u = 0
                    while u < 32 * mem[_2274]:
                        mem[u + _2274 + 228] = mem[u + _2274 + 32]
                        u = u + 32
                        continue 
                    require ext_code.size(0)
                    staticcall 0x0.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args s, 64, mem[_2274 + 196 len (32 * mem[_2274]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_2274 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _2274 + ceil32(return_data.size) + 128
                    require return_data.size >= 32
                    _5265 = mem[_2274 + 128 len 4], Mask(224, 32, s) >> 32
                    require mem[_2274 + 128 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                    require mem[_2274 + 128 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                    require mem[_2274 + mem[_2274 + 128 len 4], Mask(224, 32, s) >> 32 + 128] <= 4294967296 and mem[_2274 + 128 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_2274 + mem[_2274 + 128 len 4], Mask(224, 32, s) >> 32 + 128]) + 32 <= return_data.size
                    mem[_2274 + ceil32(return_data.size) + 128] = mem[_2274 + mem[_2274 + 128 len 4], Mask(224, 32, s) >> 32 + 128]
                    _5542 = mem[_2274 + _5265 + 128]
                    s = 0
                    while s < 32 * _5542:
                        mem[s + _2274 + ceil32(return_data.size) + 160] = mem[s + _2274 + _5265 + 160]
                        s = s + 32
                        continue 
                    mem[64] = (32 * _5542) + _2274 + ceil32(return_data.size) + 160
                    require mem[_2274 + ceil32(return_data.size) + 128] - 1 < mem[_2274 + ceil32(return_data.size) + 128]
                    if mem[(32 * mem[_2274 + ceil32(return_data.size) + 128] - 1) + _2274 + ceil32(return_data.size) + 160] <= t:
                        idx = idx + 1
                        t = t
                        continue 
                    idx = idx + 1
                    t = mem[(32 * mem[_2274 + ceil32(return_data.size) + 128] - 1) + _2274 + ceil32(return_data.size) + 160]
                    continue 
                _2409 = mem[64]
                mem[mem[64]] = 3
                mem[64] = mem[64] + 128
                require 0 < mem[_2409]
                mem[_2409 + 32] = 0x8d11ec38a3eb5e956b052f67da8bdc9bef8abf
                require 1 < mem[_2409]
                mem[_2409 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c
                require 2 < mem[_2409]
                mem[_2409 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                mem[_2409 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_2409 + 132] = s
                mem[_2409 + 164] = 64
                mem[_2409 + 196] = mem[_2409]
                u = 0
                while u < 32 * mem[_2409]:
                    mem[u + _2409 + 228] = mem[u + _2409 + 32]
                    u = u + 32
                    continue 
                require ext_code.size(0x53c153a0df7e050bbefbb70ee9632061f12795fb)
                staticcall 0x53c153a0df7e050bbefbb70ee9632061f12795fb.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args s, 64, mem[_2409 + 196 len (32 * mem[_2409]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_2409 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _2409 + ceil32(return_data.size) + 128
                require return_data.size >= 32
                _5267 = mem[_2409 + 128 len 4], Mask(224, 32, s) >> 32
                require mem[_2409 + 128 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                require mem[_2409 + 128 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                require mem[_2409 + mem[_2409 + 128 len 4], Mask(224, 32, s) >> 32 + 128] <= 4294967296 and mem[_2409 + 128 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_2409 + mem[_2409 + 128 len 4], Mask(224, 32, s) >> 32 + 128]) + 32 <= return_data.size
                mem[_2409 + ceil32(return_data.size) + 128] = mem[_2409 + mem[_2409 + 128 len 4], Mask(224, 32, s) >> 32 + 128]
                _5543 = mem[_2409 + _5267 + 128]
                s = 0
                while s < 32 * _5543:
                    mem[s + _2409 + ceil32(return_data.size) + 160] = mem[s + _2409 + _5267 + 160]
                    s = s + 32
                    continue 
                mem[64] = (32 * _5543) + _2409 + ceil32(return_data.size) + 160
                require mem[_2409 + ceil32(return_data.size) + 128] - 1 < mem[_2409 + ceil32(return_data.size) + 128]
                if mem[(32 * mem[_2409 + ceil32(return_data.size) + 128] - 1) + _2409 + ceil32(return_data.size) + 160] <= t:
                    idx = idx + 1
                    t = t
                    continue 
                idx = idx + 1
                t = mem[(32 * mem[_2409 + ceil32(return_data.size) + 128] - 1) + _2409 + ceil32(return_data.size) + 160]
                continue 
            if 5 == idx:
                _2552 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                require 0 < mem[_2552]
                mem[_2552 + 32] = 0x8d11ec38a3eb5e956b052f67da8bdc9bef8abf
                require 1 < mem[_2552]
                mem[_2552 + 64] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                mem[_2552 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_2552 + 100] = s
                mem[_2552 + 132] = 64
                mem[_2552 + 164] = mem[_2552]
                u = 0
                while u < 32 * mem[_2552]:
                    mem[u + _2552 + 196] = mem[u + _2552 + 32]
                    u = u + 32
                    continue 
                require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c)
                staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args s, 64, mem[_2552 + 164 len (32 * mem[_2552]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_2552 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _2552 + ceil32(return_data.size) + 96
                require return_data.size >= 32
                _5253 = mem[_2552 + 96 len 4], Mask(224, 32, s) >> 32
                require mem[_2552 + 96 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                require mem[_2552 + 96 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                require mem[_2552 + mem[_2552 + 96 len 4], Mask(224, 32, s) >> 32 + 96] <= 4294967296 and mem[_2552 + 96 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_2552 + mem[_2552 + 96 len 4], Mask(224, 32, s) >> 32 + 96]) + 32 <= return_data.size
                mem[_2552 + ceil32(return_data.size) + 96] = mem[_2552 + mem[_2552 + 96 len 4], Mask(224, 32, s) >> 32 + 96]
                _5536 = mem[_2552 + _5253 + 96]
                s = 0
                while s < 32 * _5536:
                    mem[s + _2552 + ceil32(return_data.size) + 128] = mem[s + _2552 + _5253 + 128]
                    s = s + 32
                    continue 
                mem[64] = (32 * _5536) + _2552 + ceil32(return_data.size) + 128
                require mem[_2552 + ceil32(return_data.size) + 96] - 1 < mem[_2552 + ceil32(return_data.size) + 96]
                if mem[(32 * mem[_2552 + ceil32(return_data.size) + 96] - 1) + _2552 + ceil32(return_data.size) + 128] <= t:
                    idx = idx + 1
                    t = t
                    continue 
                idx = idx + 1
                t = mem[(32 * mem[_2552 + ceil32(return_data.size) + 96] - 1) + _2552 + ceil32(return_data.size) + 128]
                continue 
            if 6 == idx:
                if 5 == idx:
                    _2728 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    require 0 < mem[_2728]
                    mem[_2728 + 32] = 0x8d11ec38a3eb5e956b052f67da8bdc9bef8abf
                    require 1 < mem[_2728]
                    mem[_2728 + 64] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    mem[_2728 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_2728 + 100] = s
                    mem[_2728 + 132] = 64
                    mem[_2728 + 164] = mem[_2728]
                    u = 0
                    while u < 32 * mem[_2728]:
                        mem[u + _2728 + 196] = mem[u + _2728 + 32]
                        u = u + 32
                        continue 
                    require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c)
                    staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args s, 64, mem[_2728 + 164 len (32 * mem[_2728]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_2728 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _2728 + ceil32(return_data.size) + 96
                    require return_data.size >= 32
                    _5263 = mem[_2728 + 96 len 4], Mask(224, 32, s) >> 32
                    require mem[_2728 + 96 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                    require mem[_2728 + 96 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                    require mem[_2728 + mem[_2728 + 96 len 4], Mask(224, 32, s) >> 32 + 96] <= 4294967296 and mem[_2728 + 96 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_2728 + mem[_2728 + 96 len 4], Mask(224, 32, s) >> 32 + 96]) + 32 <= return_data.size
                    mem[_2728 + ceil32(return_data.size) + 96] = mem[_2728 + mem[_2728 + 96 len 4], Mask(224, 32, s) >> 32 + 96]
                    _5541 = mem[_2728 + _5263 + 96]
                    s = 0
                    while s < 32 * _5541:
                        mem[s + _2728 + ceil32(return_data.size) + 128] = mem[s + _2728 + _5263 + 128]
                        s = s + 32
                        continue 
                    mem[64] = (32 * _5541) + _2728 + ceil32(return_data.size) + 128
                    require mem[_2728 + ceil32(return_data.size) + 96] - 1 < mem[_2728 + ceil32(return_data.size) + 96]
                    if mem[(32 * mem[_2728 + ceil32(return_data.size) + 96] - 1) + _2728 + ceil32(return_data.size) + 128] <= t:
                        idx = idx + 1
                        t = t
                        continue 
                    idx = idx + 1
                    t = mem[(32 * mem[_2728 + ceil32(return_data.size) + 96] - 1) + _2728 + ceil32(return_data.size) + 128]
                    continue 
                if idx != 6:
                    _2726 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    require 0 < mem[_2726]
                    mem[_2726 + 32] = 0x8d11ec38a3eb5e956b052f67da8bdc9bef8abf
                    require 1 < mem[_2726]
                    mem[_2726 + 64] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    mem[_2726 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_2726 + 100] = s
                    mem[_2726 + 132] = 64
                    mem[_2726 + 164] = mem[_2726]
                    u = 0
                    while u < 32 * mem[_2726]:
                        mem[u + _2726 + 196] = mem[u + _2726 + 32]
                        u = u + 32
                        continue 
                    require ext_code.size(0)
                    staticcall 0x0.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args s, 64, mem[_2726 + 164 len (32 * mem[_2726]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_2726 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _2726 + ceil32(return_data.size) + 96
                    require return_data.size >= 32
                    _5259 = mem[_2726 + 96 len 4], Mask(224, 32, s) >> 32
                    require mem[_2726 + 96 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                    require mem[_2726 + 96 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                    require mem[_2726 + mem[_2726 + 96 len 4], Mask(224, 32, s) >> 32 + 96] <= 4294967296 and mem[_2726 + 96 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_2726 + mem[_2726 + 96 len 4], Mask(224, 32, s) >> 32 + 96]) + 32 <= return_data.size
                    mem[_2726 + ceil32(return_data.size) + 96] = mem[_2726 + mem[_2726 + 96 len 4], Mask(224, 32, s) >> 32 + 96]
                    _5539 = mem[_2726 + _5259 + 96]
                    s = 0
                    while s < 32 * _5539:
                        mem[s + _2726 + ceil32(return_data.size) + 128] = mem[s + _2726 + _5259 + 128]
                        s = s + 32
                        continue 
                    mem[64] = (32 * _5539) + _2726 + ceil32(return_data.size) + 128
                    require mem[_2726 + ceil32(return_data.size) + 96] - 1 < mem[_2726 + ceil32(return_data.size) + 96]
                    if mem[(32 * mem[_2726 + ceil32(return_data.size) + 96] - 1) + _2726 + ceil32(return_data.size) + 128] <= t:
                        idx = idx + 1
                        t = t
                        continue 
                    idx = idx + 1
                    t = mem[(32 * mem[_2726 + ceil32(return_data.size) + 96] - 1) + _2726 + ceil32(return_data.size) + 128]
                    continue 
                _2927 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                require 0 < mem[_2927]
                mem[_2927 + 32] = 0x8d11ec38a3eb5e956b052f67da8bdc9bef8abf
                require 1 < mem[_2927]
                mem[_2927 + 64] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                mem[_2927 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_2927 + 100] = s
                mem[_2927 + 132] = 64
                mem[_2927 + 164] = mem[_2927]
                u = 0
                while u < 32 * mem[_2927]:
                    mem[u + _2927 + 196] = mem[u + _2927 + 32]
                    u = u + 32
                    continue 
                require ext_code.size(0x53c153a0df7e050bbefbb70ee9632061f12795fb)
                staticcall 0x53c153a0df7e050bbefbb70ee9632061f12795fb.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args s, 64, mem[_2927 + 164 len (32 * mem[_2927]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_2927 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _2927 + ceil32(return_data.size) + 96
                require return_data.size >= 32
                _5261 = mem[_2927 + 96 len 4], Mask(224, 32, s) >> 32
                require mem[_2927 + 96 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                require mem[_2927 + 96 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                require mem[_2927 + mem[_2927 + 96 len 4], Mask(224, 32, s) >> 32 + 96] <= 4294967296 and mem[_2927 + 96 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_2927 + mem[_2927 + 96 len 4], Mask(224, 32, s) >> 32 + 96]) + 32 <= return_data.size
                mem[_2927 + ceil32(return_data.size) + 96] = mem[_2927 + mem[_2927 + 96 len 4], Mask(224, 32, s) >> 32 + 96]
                _5540 = mem[_2927 + _5261 + 96]
                s = 0
                while s < 32 * _5540:
                    mem[s + _2927 + ceil32(return_data.size) + 128] = mem[s + _2927 + _5261 + 128]
                    s = s + 32
                    continue 
                mem[64] = (32 * _5540) + _2927 + ceil32(return_data.size) + 128
                require mem[_2927 + ceil32(return_data.size) + 96] - 1 < mem[_2927 + ceil32(return_data.size) + 96]
                if mem[(32 * mem[_2927 + ceil32(return_data.size) + 96] - 1) + _2927 + ceil32(return_data.size) + 128] <= t:
                    idx = idx + 1
                    t = t
                    continue 
                idx = idx + 1
                t = mem[(32 * mem[_2927 + ceil32(return_data.size) + 96] - 1) + _2927 + ceil32(return_data.size) + 128]
                continue 
            if idx != 7:
                if idx != 8:
                    if s <= t:
                        idx = idx + 1
                        t = t
                        continue 
                    idx = idx + 1
                    t = s
                    continue 
                mem[mem[64] + 4] = 0
                mem[mem[64] + 36] = 2
                mem[mem[64] + 68] = s
                require ext_code.size(0x952bda8a83c3d5f398a686bb4e8c6dd90072d523)
                staticcall 0x952bda8a83c3d5f398a686bb4e8c6dd90072d523.calculateSwap(uint8 arg1, uint8 arg2, uint256 arg3) with:
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
            _2722 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            require 0 < mem[_2722]
            mem[_2722 + 32] = 0x8d11ec38a3eb5e956b052f67da8bdc9bef8abf
            require 1 < mem[_2722]
            mem[_2722 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c
            mem[_2722 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[_2722 + 100] = s
            mem[_2722 + 132] = 64
            mem[_2722 + 164] = mem[_2722]
            u = 0
            while u < 32 * mem[_2722]:
                mem[u + _2722 + 196] = mem[u + _2722 + 32]
                u = u + 32
                continue 
            require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c)
            staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c.getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args s, 64, mem[_2722 + 164 len (32 * mem[_2722]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[_2722 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = _2722 + ceil32(return_data.size) + 96
            require return_data.size >= 32
            _5255 = mem[_2722 + 96 len 4], Mask(224, 32, s) >> 32
            require mem[_2722 + 96 len 4], Mask(224, 32, s) >> 32 <= 4294967296
            require mem[_2722 + 96 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
            require mem[_2722 + mem[_2722 + 96 len 4], Mask(224, 32, s) >> 32 + 96] <= 4294967296 and mem[_2722 + 96 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_2722 + mem[_2722 + 96 len 4], Mask(224, 32, s) >> 32 + 96]) + 32 <= return_data.size
            mem[_2722 + ceil32(return_data.size) + 96] = mem[_2722 + mem[_2722 + 96 len 4], Mask(224, 32, s) >> 32 + 96]
            _5537 = mem[_2722 + _5255 + 96]
            s = 0
            while s < 32 * _5537:
                mem[s + _2722 + ceil32(return_data.size) + 128] = mem[s + _2722 + _5255 + 128]
                s = s + 32
                continue 
            mem[64] = (32 * _5537) + _2722 + ceil32(return_data.size) + 128
            require mem[_2722 + ceil32(return_data.size) + 96] - 1 < mem[_2722 + ceil32(return_data.size) + 96]
            _6725 = mem[(32 * mem[_2722 + ceil32(return_data.size) + 96] - 1) + _2722 + ceil32(return_data.size) + 128]
            mem[(32 * _5537) + _2722 + ceil32(return_data.size) + 128] = 2
            mem[(32 * _5537) + _2722 + ceil32(return_data.size) + 160] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c
            mem[(32 * _5537) + _2722 + ceil32(return_data.size) + 192] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
            mem[(32 * _5537) + _2722 + ceil32(return_data.size) + 224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[(32 * _5537) + _2722 + ceil32(return_data.size) + 228] = _6725
            mem[(32 * _5537) + _2722 + ceil32(return_data.size) + 260] = 64
            mem[(32 * _5537) + _2722 + ceil32(return_data.size) + 292] = 2
            s = 0
            while s < 64:
                mem[s + (32 * _5537) + _2722 + ceil32(return_data.size) + 324] = mem[s + (32 * _5537) + _2722 + ceil32(return_data.size) + 160]
                s = s + 32
                continue 
            require ext_code.size(0x1b02da8cb0d097eb8d57a175b88c7d8b47997506)
            staticcall 0x1b02da8cb0d097eb8d57a175b88c7d8b47997506.getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args _6725, Array(len=2, data=mem[(32 * _5537) + _2722 + ceil32(return_data.size) + 324 len 64])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _5537) + _2722 + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * _5537) + _2722 + (2 * ceil32(return_data.size)) + 224
            require return_data.size >= 32
            _7243 = mem[(32 * _5537) + _2722 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _6725) >> 32
            require mem[(32 * _5537) + _2722 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _6725) >> 32 <= 4294967296
            require mem[(32 * _5537) + _2722 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _6725) >> 32 + 32 <= return_data.size
            require mem[(32 * _5537) + _2722 + ceil32(return_data.size) + mem[(32 * _5537) + _2722 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _6725) >> 32 + 224] <= 4294967296 and mem[(32 * _5537) + _2722 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _6725) >> 32 + (32 * mem[(32 * _5537) + _2722 + ceil32(return_data.size) + mem[(32 * _5537) + _2722 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _6725) >> 32 + 224]) + 32 <= return_data.size
            mem[(32 * _5537) + _2722 + (2 * ceil32(return_data.size)) + 224] = mem[(32 * _5537) + _2722 + ceil32(return_data.size) + mem[(32 * _5537) + _2722 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _6725) >> 32 + 224]
            _7283 = mem[(32 * _5537) + _2722 + ceil32(return_data.size) + _7243 + 224]
            s = 0
            while s < 32 * _7283:
                mem[s + (32 * _5537) + _2722 + (2 * ceil32(return_data.size)) + 256] = mem[s + (32 * _5537) + _2722 + ceil32(return_data.size) + _7243 + 256]
                s = s + 32
                continue 
            mem[64] = (32 * _7283) + (32 * _5537) + _2722 + (2 * ceil32(return_data.size)) + 256
            require mem[(32 * _5537) + _2722 + (2 * ceil32(return_data.size)) + 224] - 1 < mem[(32 * _5537) + _2722 + (2 * ceil32(return_data.size)) + 224]
            if mem[(32 * mem[(32 * _5537) + _2722 + (2 * ceil32(return_data.size)) + 224] - 1) + (32 * _5537) + _2722 + (2 * ceil32(return_data.size)) + 256] <= t:
                idx = idx + 1
                t = t
                continue 
            idx = idx + 1
            t = mem[(32 * mem[(32 * _5537) + _2722 + (2 * ceil32(return_data.size)) + 224] - 1) + (32 * _5537) + _2722 + (2 * ceil32(return_data.size)) + 256]
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
        while idx < 9:
            if not idx:
                mem[mem[64] + 4] = 1
                mem[mem[64] + 36] = 0
                mem[mem[64] + 68] = 10^6 * sub_7d0b6809
                require ext_code.size(0x27e611fd27b276acbd5ffd632e5eaebec9761e40)
                staticcall 0x27e611fd27b276acbd5ffd632e5eaebec9761e40.get_dy(int128 arg1, int128 arg2, uint256 arg3) with:
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
                staticcall 0x83e5f18da720119ff363cf63417628eb0e9fd523.get_dy(int128 arg1, int128 arg2, uint256 arg3) with:
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
                staticcall 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args 10^6 * sub_7d0b6809, 64, mem[_115 + 228 len (32 * mem[_115]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_115 + 160 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _115 + ceil32(return_data.size) + 160
                require return_data.size >= 32
                _1599 = mem[_115 + 160 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32
                require mem[_115 + 160 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 <= 4294967296
                require mem[_115 + 160 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 32 <= return_data.size
                require mem[_115 + mem[_115 + 160 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 160] <= 4294967296 and mem[_115 + 160 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + (32 * mem[_115 + mem[_115 + 160 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 160]) + 32 <= return_data.size
                mem[_115 + ceil32(return_data.size) + 160] = mem[_115 + mem[_115 + 160 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 160]
                _1865 = mem[_115 + _1599 + 160]
                t = 0
                while t < 32 * _1865:
                    mem[t + _115 + ceil32(return_data.size) + 192] = mem[t + _115 + _1599 + 192]
                    t = t + 32
                    continue 
                mem[64] = (32 * _1865) + _115 + ceil32(return_data.size) + 192
                require mem[_115 + ceil32(return_data.size) + 160] - 1 < mem[_115 + ceil32(return_data.size) + 160]
                if mem[(32 * mem[_115 + ceil32(return_data.size) + 160] - 1) + _115 + ceil32(return_data.size) + 192] <= s:
                    idx = idx + 1
                    s = s
                    continue 
                idx = idx + 1
                s = mem[(32 * mem[_115 + ceil32(return_data.size) + 160] - 1) + _115 + ceil32(return_data.size) + 192]
                continue 
            if 3 == idx:
                _231 = mem[64]
                mem[mem[64]] = 3
                mem[64] = mem[64] + 128
                require 0 < mem[_231]
                mem[_231 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                require 1 < mem[_231]
                mem[_231 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c
                require 2 < mem[_231]
                mem[_231 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                mem[_231 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_231 + 132] = 10^6 * sub_7d0b6809
                mem[_231 + 164] = 64
                mem[_231 + 196] = mem[_231]
                t = 0
                while t < 32 * mem[_231]:
                    mem[t + _231 + 228] = mem[t + _231 + 32]
                    t = t + 32
                    continue 
                require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c)
                staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args 10^6 * sub_7d0b6809, 64, mem[_231 + 196 len (32 * mem[_231]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_231 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _231 + ceil32(return_data.size) + 128
                require return_data.size >= 32
                _1579 = mem[_231 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32
                require mem[_231 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 <= 4294967296
                require mem[_231 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 32 <= return_data.size
                require mem[_231 + mem[_231 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 128] <= 4294967296 and mem[_231 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + (32 * mem[_231 + mem[_231 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 128]) + 32 <= return_data.size
                mem[_231 + ceil32(return_data.size) + 128] = mem[_231 + mem[_231 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 128]
                _1855 = mem[_231 + _1579 + 128]
                t = 0
                while t < 32 * _1855:
                    mem[t + _231 + ceil32(return_data.size) + 160] = mem[t + _231 + _1579 + 160]
                    t = t + 32
                    continue 
                mem[64] = (32 * _1855) + _231 + ceil32(return_data.size) + 160
                require mem[_231 + ceil32(return_data.size) + 128] - 1 < mem[_231 + ceil32(return_data.size) + 128]
                if mem[(32 * mem[_231 + ceil32(return_data.size) + 128] - 1) + _231 + ceil32(return_data.size) + 160] <= s:
                    idx = idx + 1
                    s = s
                    continue 
                idx = idx + 1
                s = mem[(32 * mem[_231 + ceil32(return_data.size) + 128] - 1) + _231 + ceil32(return_data.size) + 160]
                continue 
            if 4 == idx:
                if 3 == idx:
                    _268 = mem[64]
                    mem[mem[64]] = 3
                    mem[64] = mem[64] + 128
                    require 0 < mem[_268]
                    mem[_268 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    require 1 < mem[_268]
                    mem[_268 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c
                    require 2 < mem[_268]
                    mem[_268 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    mem[_268 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_268 + 132] = 10^6 * sub_7d0b6809
                    mem[_268 + 164] = 64
                    mem[_268 + 196] = mem[_268]
                    t = 0
                    while t < 32 * mem[_268]:
                        mem[t + _268 + 228] = mem[t + _268 + 32]
                        t = t + 32
                        continue 
                    require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c)
                    staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args 10^6 * sub_7d0b6809, 64, mem[_268 + 196 len (32 * mem[_268]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_268 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _268 + ceil32(return_data.size) + 128
                    require return_data.size >= 32
                    _1597 = mem[_268 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32
                    require mem[_268 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 <= 4294967296
                    require mem[_268 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 32 <= return_data.size
                    require mem[_268 + mem[_268 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 128] <= 4294967296 and mem[_268 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + (32 * mem[_268 + mem[_268 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 128]) + 32 <= return_data.size
                    mem[_268 + ceil32(return_data.size) + 128] = mem[_268 + mem[_268 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 128]
                    _1864 = mem[_268 + _1597 + 128]
                    t = 0
                    while t < 32 * _1864:
                        mem[t + _268 + ceil32(return_data.size) + 160] = mem[t + _268 + _1597 + 160]
                        t = t + 32
                        continue 
                    mem[64] = (32 * _1864) + _268 + ceil32(return_data.size) + 160
                    require mem[_268 + ceil32(return_data.size) + 128] - 1 < mem[_268 + ceil32(return_data.size) + 128]
                    if mem[(32 * mem[_268 + ceil32(return_data.size) + 128] - 1) + _268 + ceil32(return_data.size) + 160] <= s:
                        idx = idx + 1
                        s = s
                        continue 
                    idx = idx + 1
                    s = mem[(32 * mem[_268 + ceil32(return_data.size) + 128] - 1) + _268 + ceil32(return_data.size) + 160]
                    continue 
                if idx != 4:
                    _266 = mem[64]
                    mem[mem[64]] = 3
                    mem[64] = mem[64] + 128
                    require 0 < mem[_266]
                    mem[_266 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    require 1 < mem[_266]
                    mem[_266 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c
                    require 2 < mem[_266]
                    mem[_266 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    mem[_266 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_266 + 132] = 10^6 * sub_7d0b6809
                    mem[_266 + 164] = 64
                    mem[_266 + 196] = mem[_266]
                    t = 0
                    while t < 32 * mem[_266]:
                        mem[t + _266 + 228] = mem[t + _266 + 32]
                        t = t + 32
                        continue 
                    require ext_code.size(0)
                    staticcall 0x0.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args 10^6 * sub_7d0b6809, 64, mem[_266 + 196 len (32 * mem[_266]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_266 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _266 + ceil32(return_data.size) + 128
                    require return_data.size >= 32
                    _1593 = mem[_266 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32
                    require mem[_266 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 <= 4294967296
                    require mem[_266 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 32 <= return_data.size
                    require mem[_266 + mem[_266 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 128] <= 4294967296 and mem[_266 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + (32 * mem[_266 + mem[_266 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 128]) + 32 <= return_data.size
                    mem[_266 + ceil32(return_data.size) + 128] = mem[_266 + mem[_266 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 128]
                    _1862 = mem[_266 + _1593 + 128]
                    t = 0
                    while t < 32 * _1862:
                        mem[t + _266 + ceil32(return_data.size) + 160] = mem[t + _266 + _1593 + 160]
                        t = t + 32
                        continue 
                    mem[64] = (32 * _1862) + _266 + ceil32(return_data.size) + 160
                    require mem[_266 + ceil32(return_data.size) + 128] - 1 < mem[_266 + ceil32(return_data.size) + 128]
                    if mem[(32 * mem[_266 + ceil32(return_data.size) + 128] - 1) + _266 + ceil32(return_data.size) + 160] <= s:
                        idx = idx + 1
                        s = s
                        continue 
                    idx = idx + 1
                    s = mem[(32 * mem[_266 + ceil32(return_data.size) + 128] - 1) + _266 + ceil32(return_data.size) + 160]
                    continue 
                _321 = mem[64]
                mem[mem[64]] = 3
                mem[64] = mem[64] + 128
                require 0 < mem[_321]
                mem[_321 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                require 1 < mem[_321]
                mem[_321 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c
                require 2 < mem[_321]
                mem[_321 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                mem[_321 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_321 + 132] = 10^6 * sub_7d0b6809
                mem[_321 + 164] = 64
                mem[_321 + 196] = mem[_321]
                t = 0
                while t < 32 * mem[_321]:
                    mem[t + _321 + 228] = mem[t + _321 + 32]
                    t = t + 32
                    continue 
                require ext_code.size(0x53c153a0df7e050bbefbb70ee9632061f12795fb)
                staticcall 0x53c153a0df7e050bbefbb70ee9632061f12795fb.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args 10^6 * sub_7d0b6809, 64, mem[_321 + 196 len (32 * mem[_321]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_321 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _321 + ceil32(return_data.size) + 128
                require return_data.size >= 32
                _1595 = mem[_321 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32
                require mem[_321 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 <= 4294967296
                require mem[_321 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 32 <= return_data.size
                require mem[_321 + mem[_321 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 128] <= 4294967296 and mem[_321 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + (32 * mem[_321 + mem[_321 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 128]) + 32 <= return_data.size
                mem[_321 + ceil32(return_data.size) + 128] = mem[_321 + mem[_321 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 128]
                _1863 = mem[_321 + _1595 + 128]
                t = 0
                while t < 32 * _1863:
                    mem[t + _321 + ceil32(return_data.size) + 160] = mem[t + _321 + _1595 + 160]
                    t = t + 32
                    continue 
                mem[64] = (32 * _1863) + _321 + ceil32(return_data.size) + 160
                require mem[_321 + ceil32(return_data.size) + 128] - 1 < mem[_321 + ceil32(return_data.size) + 128]
                if mem[(32 * mem[_321 + ceil32(return_data.size) + 128] - 1) + _321 + ceil32(return_data.size) + 160] <= s:
                    idx = idx + 1
                    s = s
                    continue 
                idx = idx + 1
                s = mem[(32 * mem[_321 + ceil32(return_data.size) + 128] - 1) + _321 + ceil32(return_data.size) + 160]
                continue 
            if 5 == idx:
                _400 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                require 0 < mem[_400]
                mem[_400 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                require 1 < mem[_400]
                mem[_400 + 64] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                mem[_400 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_400 + 100] = 10^6 * sub_7d0b6809
                mem[_400 + 132] = 64
                mem[_400 + 164] = mem[_400]
                t = 0
                while t < 32 * mem[_400]:
                    mem[t + _400 + 196] = mem[t + _400 + 32]
                    t = t + 32
                    continue 
                require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c)
                staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args 10^6 * sub_7d0b6809, 64, mem[_400 + 164 len (32 * mem[_400]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_400 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _400 + ceil32(return_data.size) + 96
                require return_data.size >= 32
                _1581 = mem[_400 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32
                require mem[_400 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 <= 4294967296
                require mem[_400 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 32 <= return_data.size
                require mem[_400 + mem[_400 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 96] <= 4294967296 and mem[_400 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + (32 * mem[_400 + mem[_400 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 96]) + 32 <= return_data.size
                mem[_400 + ceil32(return_data.size) + 96] = mem[_400 + mem[_400 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 96]
                _1856 = mem[_400 + _1581 + 96]
                t = 0
                while t < 32 * _1856:
                    mem[t + _400 + ceil32(return_data.size) + 128] = mem[t + _400 + _1581 + 128]
                    t = t + 32
                    continue 
                mem[64] = (32 * _1856) + _400 + ceil32(return_data.size) + 128
                require mem[_400 + ceil32(return_data.size) + 96] - 1 < mem[_400 + ceil32(return_data.size) + 96]
                if mem[(32 * mem[_400 + ceil32(return_data.size) + 96] - 1) + _400 + ceil32(return_data.size) + 128] <= s:
                    idx = idx + 1
                    s = s
                    continue 
                idx = idx + 1
                s = mem[(32 * mem[_400 + ceil32(return_data.size) + 96] - 1) + _400 + ceil32(return_data.size) + 128]
                continue 
            if 6 == idx:
                if 5 == idx:
                    _480 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    require 0 < mem[_480]
                    mem[_480 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    require 1 < mem[_480]
                    mem[_480 + 64] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    mem[_480 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_480 + 100] = 10^6 * sub_7d0b6809
                    mem[_480 + 132] = 64
                    mem[_480 + 164] = mem[_480]
                    t = 0
                    while t < 32 * mem[_480]:
                        mem[t + _480 + 196] = mem[t + _480 + 32]
                        t = t + 32
                        continue 
                    require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c)
                    staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args 10^6 * sub_7d0b6809, 64, mem[_480 + 164 len (32 * mem[_480]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_480 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _480 + ceil32(return_data.size) + 96
                    require return_data.size >= 32
                    _1591 = mem[_480 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32
                    require mem[_480 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 <= 4294967296
                    require mem[_480 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 32 <= return_data.size
                    require mem[_480 + mem[_480 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 96] <= 4294967296 and mem[_480 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + (32 * mem[_480 + mem[_480 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 96]) + 32 <= return_data.size
                    mem[_480 + ceil32(return_data.size) + 96] = mem[_480 + mem[_480 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 96]
                    _1861 = mem[_480 + _1591 + 96]
                    t = 0
                    while t < 32 * _1861:
                        mem[t + _480 + ceil32(return_data.size) + 128] = mem[t + _480 + _1591 + 128]
                        t = t + 32
                        continue 
                    mem[64] = (32 * _1861) + _480 + ceil32(return_data.size) + 128
                    require mem[_480 + ceil32(return_data.size) + 96] - 1 < mem[_480 + ceil32(return_data.size) + 96]
                    if mem[(32 * mem[_480 + ceil32(return_data.size) + 96] - 1) + _480 + ceil32(return_data.size) + 128] <= s:
                        idx = idx + 1
                        s = s
                        continue 
                    idx = idx + 1
                    s = mem[(32 * mem[_480 + ceil32(return_data.size) + 96] - 1) + _480 + ceil32(return_data.size) + 128]
                    continue 
                if idx != 6:
                    _478 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    require 0 < mem[_478]
                    mem[_478 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    require 1 < mem[_478]
                    mem[_478 + 64] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    mem[_478 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_478 + 100] = 10^6 * sub_7d0b6809
                    mem[_478 + 132] = 64
                    mem[_478 + 164] = mem[_478]
                    t = 0
                    while t < 32 * mem[_478]:
                        mem[t + _478 + 196] = mem[t + _478 + 32]
                        t = t + 32
                        continue 
                    require ext_code.size(0)
                    staticcall 0x0.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args 10^6 * sub_7d0b6809, 64, mem[_478 + 164 len (32 * mem[_478]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_478 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _478 + ceil32(return_data.size) + 96
                    require return_data.size >= 32
                    _1587 = mem[_478 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32
                    require mem[_478 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 <= 4294967296
                    require mem[_478 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 32 <= return_data.size
                    require mem[_478 + mem[_478 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 96] <= 4294967296 and mem[_478 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + (32 * mem[_478 + mem[_478 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 96]) + 32 <= return_data.size
                    mem[_478 + ceil32(return_data.size) + 96] = mem[_478 + mem[_478 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 96]
                    _1859 = mem[_478 + _1587 + 96]
                    t = 0
                    while t < 32 * _1859:
                        mem[t + _478 + ceil32(return_data.size) + 128] = mem[t + _478 + _1587 + 128]
                        t = t + 32
                        continue 
                    mem[64] = (32 * _1859) + _478 + ceil32(return_data.size) + 128
                    require mem[_478 + ceil32(return_data.size) + 96] - 1 < mem[_478 + ceil32(return_data.size) + 96]
                    if mem[(32 * mem[_478 + ceil32(return_data.size) + 96] - 1) + _478 + ceil32(return_data.size) + 128] <= s:
                        idx = idx + 1
                        s = s
                        continue 
                    idx = idx + 1
                    s = mem[(32 * mem[_478 + ceil32(return_data.size) + 96] - 1) + _478 + ceil32(return_data.size) + 128]
                    continue 
                _586 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                require 0 < mem[_586]
                mem[_586 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                require 1 < mem[_586]
                mem[_586 + 64] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                mem[_586 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_586 + 100] = 10^6 * sub_7d0b6809
                mem[_586 + 132] = 64
                mem[_586 + 164] = mem[_586]
                t = 0
                while t < 32 * mem[_586]:
                    mem[t + _586 + 196] = mem[t + _586 + 32]
                    t = t + 32
                    continue 
                require ext_code.size(0x53c153a0df7e050bbefbb70ee9632061f12795fb)
                staticcall 0x53c153a0df7e050bbefbb70ee9632061f12795fb.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args 10^6 * sub_7d0b6809, 64, mem[_586 + 164 len (32 * mem[_586]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_586 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _586 + ceil32(return_data.size) + 96
                require return_data.size >= 32
                _1589 = mem[_586 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32
                require mem[_586 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 <= 4294967296
                require mem[_586 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 32 <= return_data.size
                require mem[_586 + mem[_586 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 96] <= 4294967296 and mem[_586 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + (32 * mem[_586 + mem[_586 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 96]) + 32 <= return_data.size
                mem[_586 + ceil32(return_data.size) + 96] = mem[_586 + mem[_586 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 96]
                _1860 = mem[_586 + _1589 + 96]
                t = 0
                while t < 32 * _1860:
                    mem[t + _586 + ceil32(return_data.size) + 128] = mem[t + _586 + _1589 + 128]
                    t = t + 32
                    continue 
                mem[64] = (32 * _1860) + _586 + ceil32(return_data.size) + 128
                require mem[_586 + ceil32(return_data.size) + 96] - 1 < mem[_586 + ceil32(return_data.size) + 96]
                if mem[(32 * mem[_586 + ceil32(return_data.size) + 96] - 1) + _586 + ceil32(return_data.size) + 128] <= s:
                    idx = idx + 1
                    s = s
                    continue 
                idx = idx + 1
                s = mem[(32 * mem[_586 + ceil32(return_data.size) + 96] - 1) + _586 + ceil32(return_data.size) + 128]
                continue 
            if idx != 7:
                if idx != 8:
                    if 10^6 * sub_7d0b6809 <= s:
                        idx = idx + 1
                        s = s
                        continue 
                    idx = idx + 1
                    s = 10^6 * sub_7d0b6809
                    continue 
                mem[mem[64] + 4] = 0
                mem[mem[64] + 36] = 2
                mem[mem[64] + 68] = 10^6 * sub_7d0b6809
                require ext_code.size(0x952bda8a83c3d5f398a686bb4e8c6dd90072d523)
                staticcall 0x952bda8a83c3d5f398a686bb4e8c6dd90072d523.calculateSwap(uint8 arg1, uint8 arg2, uint256 arg3) with:
                        gas gas_remaining wei
                       args 0, 2, 10^6 * sub_7d0b6809
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
            _404 = mem[0]
            _474 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            require 0 < mem[_474]
            mem[_474 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
            require 1 < mem[_474]
            mem[_474 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c
            mem[_474 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[_474 + 100] = 10^6 * sub_7d0b6809
            mem[_474 + 132] = 64
            mem[_474 + 164] = mem[_474]
            t = 0
            while t < 32 * mem[_474]:
                mem[t + _474 + 196] = mem[t + _474 + 32]
                t = t + 32
                continue 
            require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c)
            staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c.getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args 10^6 * sub_7d0b6809, 64, mem[_474 + 164 len (32 * mem[_474]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[_474 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = _474 + ceil32(return_data.size) + 96
            require return_data.size >= 32
            _1583 = mem[_474 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32
            require mem[_474 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 <= 4294967296
            require mem[_474 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 32 <= return_data.size
            require mem[_474 + mem[_474 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 96] <= 4294967296 and mem[_474 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + (32 * mem[_474 + mem[_474 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 96]) + 32 <= return_data.size
            mem[_474 + ceil32(return_data.size) + 96] = mem[_474 + mem[_474 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 96]
            _1857 = mem[_474 + _1583 + 96]
            t = 0
            while t < 32 * _1857:
                mem[t + _474 + ceil32(return_data.size) + 128] = mem[t + _474 + _1583 + 128]
                t = t + 32
                continue 
            require mem[_474 + ceil32(return_data.size) + 96] - 1 < mem[_474 + ceil32(return_data.size) + 96]
            _5005 = mem[(32 * mem[_474 + ceil32(return_data.size) + 96] - 1) + _474 + ceil32(return_data.size) + 128]
            mem[(32 * _1857) + _474 + ceil32(return_data.size) + 128] = 2
            mem[0] = _404
            mem[(32 * _1857) + _474 + ceil32(return_data.size) + 160] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c
            mem[(32 * _1857) + _474 + ceil32(return_data.size) + 192] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
            mem[(32 * _1857) + _474 + ceil32(return_data.size) + 224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[(32 * _1857) + _474 + ceil32(return_data.size) + 228] = _5005
            mem[(32 * _1857) + _474 + ceil32(return_data.size) + 260] = 64
            mem[(32 * _1857) + _474 + ceil32(return_data.size) + 292] = 2
            t = 0
            while t < 64:
                mem[t + (32 * _1857) + _474 + ceil32(return_data.size) + 324] = mem[t + (32 * _1857) + _474 + ceil32(return_data.size) + 160]
                t = t + 32
                continue 
            require ext_code.size(0x1b02da8cb0d097eb8d57a175b88c7d8b47997506)
            staticcall 0x1b02da8cb0d097eb8d57a175b88c7d8b47997506.getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args _5005, Array(len=2, data=mem[(32 * _1857) + _474 + ceil32(return_data.size) + 324 len 64])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _1857) + _474 + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * _1857) + _474 + (2 * ceil32(return_data.size)) + 224
            require return_data.size >= 32
            _6795 = mem[(32 * _1857) + _474 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _5005) >> 32
            require mem[(32 * _1857) + _474 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _5005) >> 32 <= 4294967296
            require mem[(32 * _1857) + _474 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _5005) >> 32 + 32 <= return_data.size
            require mem[(32 * _1857) + _474 + ceil32(return_data.size) + mem[(32 * _1857) + _474 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _5005) >> 32 + 224] <= 4294967296 and mem[(32 * _1857) + _474 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _5005) >> 32 + (32 * mem[(32 * _1857) + _474 + ceil32(return_data.size) + mem[(32 * _1857) + _474 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _5005) >> 32 + 224]) + 32 <= return_data.size
            mem[(32 * _1857) + _474 + (2 * ceil32(return_data.size)) + 224] = mem[(32 * _1857) + _474 + ceil32(return_data.size) + mem[(32 * _1857) + _474 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _5005) >> 32 + 224]
            _6895 = mem[(32 * _1857) + _474 + ceil32(return_data.size) + _6795 + 224]
            t = 0
            while t < 32 * _6895:
                mem[t + (32 * _1857) + _474 + (2 * ceil32(return_data.size)) + 256] = mem[t + (32 * _1857) + _474 + ceil32(return_data.size) + _6795 + 256]
                t = t + 32
                continue 
            mem[64] = (32 * _6895) + (32 * _1857) + _474 + (2 * ceil32(return_data.size)) + 256
            require mem[(32 * _1857) + _474 + (2 * ceil32(return_data.size)) + 224] - 1 < mem[(32 * _1857) + _474 + (2 * ceil32(return_data.size)) + 224]
            if mem[(32 * mem[(32 * _1857) + _474 + (2 * ceil32(return_data.size)) + 224] - 1) + (32 * _1857) + _474 + (2 * ceil32(return_data.size)) + 256] <= s:
                idx = idx + 1
                s = s
                continue 
            idx = idx + 1
            s = mem[(32 * mem[(32 * _1857) + _474 + (2 * ceil32(return_data.size)) + 224] - 1) + (32 * _1857) + _474 + (2 * ceil32(return_data.size)) + 256]
            continue 
        idx = 0
        t = 0
        while idx < 9:
            if not idx:
                mem[mem[64] + 4] = 1
                mem[mem[64] + 36] = 0
                mem[mem[64] + 68] = s
                require ext_code.size(0x27e611fd27b276acbd5ffd632e5eaebec9761e40)
                staticcall 0x27e611fd27b276acbd5ffd632e5eaebec9761e40.get_dy(int128 arg1, int128 arg2, uint256 arg3) with:
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
                staticcall 0x83e5f18da720119ff363cf63417628eb0e9fd523.get_dy(int128 arg1, int128 arg2, uint256 arg3) with:
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
                _1699 = mem[64]
                mem[mem[64]] = 4
                mem[64] = mem[64] + 160
                require 0 < mem[_1699]
                mem[_1699 + 32] = 0x8d11ec38a3eb5e956b052f67da8bdc9bef8abf
                require 1 < mem[_1699]
                mem[_1699 + 64] = 0x5cc61a78f164885776aa610fb0fe1257df78e59b
                require 2 < mem[_1699]
                mem[_1699 + 96] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c
                require 3 < mem[_1699]
                mem[_1699 + 128] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                mem[_1699 + 160] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_1699 + 164] = s
                mem[_1699 + 196] = 64
                mem[_1699 + 228] = mem[_1699]
                u = 0
                while u < 32 * mem[_1699]:
                    mem[u + _1699 + 260] = mem[u + _1699 + 32]
                    u = u + 32
                    continue 
                require ext_code.size(0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52)
                staticcall 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args s, 64, mem[_1699 + 228 len (32 * mem[_1699]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_1699 + 160 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _1699 + ceil32(return_data.size) + 160
                require return_data.size >= 32
                _5175 = mem[_1699 + 160 len 4], Mask(224, 32, s) >> 32
                require mem[_1699 + 160 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                require mem[_1699 + 160 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                require mem[_1699 + mem[_1699 + 160 len 4], Mask(224, 32, s) >> 32 + 160] <= 4294967296 and mem[_1699 + 160 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_1699 + mem[_1699 + 160 len 4], Mask(224, 32, s) >> 32 + 160]) + 32 <= return_data.size
                mem[_1699 + ceil32(return_data.size) + 160] = mem[_1699 + mem[_1699 + 160 len 4], Mask(224, 32, s) >> 32 + 160]
                _5485 = mem[_1699 + _5175 + 160]
                s = 0
                while s < 32 * _5485:
                    mem[s + _1699 + ceil32(return_data.size) + 192] = mem[s + _1699 + _5175 + 192]
                    s = s + 32
                    continue 
                mem[64] = (32 * _5485) + _1699 + ceil32(return_data.size) + 192
                require mem[_1699 + ceil32(return_data.size) + 160] - 1 < mem[_1699 + ceil32(return_data.size) + 160]
                if mem[(32 * mem[_1699 + ceil32(return_data.size) + 160] - 1) + _1699 + ceil32(return_data.size) + 192] <= t:
                    idx = idx + 1
                    t = t
                    continue 
                idx = idx + 1
                t = mem[(32 * mem[_1699 + ceil32(return_data.size) + 160] - 1) + _1699 + ceil32(return_data.size) + 192]
                continue 
            if 3 == idx:
                _2035 = mem[64]
                mem[mem[64]] = 3
                mem[64] = mem[64] + 128
                require 0 < mem[_2035]
                mem[_2035 + 32] = 0x8d11ec38a3eb5e956b052f67da8bdc9bef8abf
                require 1 < mem[_2035]
                mem[_2035 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c
                require 2 < mem[_2035]
                mem[_2035 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                mem[_2035 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_2035 + 132] = s
                mem[_2035 + 164] = 64
                mem[_2035 + 196] = mem[_2035]
                u = 0
                while u < 32 * mem[_2035]:
                    mem[u + _2035 + 228] = mem[u + _2035 + 32]
                    u = u + 32
                    continue 
                require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c)
                staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args s, 64, mem[_2035 + 196 len (32 * mem[_2035]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_2035 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _2035 + ceil32(return_data.size) + 128
                require return_data.size >= 32
                _5155 = mem[_2035 + 128 len 4], Mask(224, 32, s) >> 32
                require mem[_2035 + 128 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                require mem[_2035 + 128 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                require mem[_2035 + mem[_2035 + 128 len 4], Mask(224, 32, s) >> 32 + 128] <= 4294967296 and mem[_2035 + 128 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_2035 + mem[_2035 + 128 len 4], Mask(224, 32, s) >> 32 + 128]) + 32 <= return_data.size
                mem[_2035 + ceil32(return_data.size) + 128] = mem[_2035 + mem[_2035 + 128 len 4], Mask(224, 32, s) >> 32 + 128]
                _5475 = mem[_2035 + _5155 + 128]
                s = 0
                while s < 32 * _5475:
                    mem[s + _2035 + ceil32(return_data.size) + 160] = mem[s + _2035 + _5155 + 160]
                    s = s + 32
                    continue 
                mem[64] = (32 * _5475) + _2035 + ceil32(return_data.size) + 160
                require mem[_2035 + ceil32(return_data.size) + 128] - 1 < mem[_2035 + ceil32(return_data.size) + 128]
                if mem[(32 * mem[_2035 + ceil32(return_data.size) + 128] - 1) + _2035 + ceil32(return_data.size) + 160] <= t:
                    idx = idx + 1
                    t = t
                    continue 
                idx = idx + 1
                t = mem[(32 * mem[_2035 + ceil32(return_data.size) + 128] - 1) + _2035 + ceil32(return_data.size) + 160]
                continue 
            if 4 == idx:
                if 3 == idx:
                    _2216 = mem[64]
                    mem[mem[64]] = 3
                    mem[64] = mem[64] + 128
                    require 0 < mem[_2216]
                    mem[_2216 + 32] = 0x8d11ec38a3eb5e956b052f67da8bdc9bef8abf
                    require 1 < mem[_2216]
                    mem[_2216 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c
                    require 2 < mem[_2216]
                    mem[_2216 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    mem[_2216 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_2216 + 132] = s
                    mem[_2216 + 164] = 64
                    mem[_2216 + 196] = mem[_2216]
                    u = 0
                    while u < 32 * mem[_2216]:
                        mem[u + _2216 + 228] = mem[u + _2216 + 32]
                        u = u + 32
                        continue 
                    require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c)
                    staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args s, 64, mem[_2216 + 196 len (32 * mem[_2216]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_2216 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _2216 + ceil32(return_data.size) + 128
                    require return_data.size >= 32
                    _5173 = mem[_2216 + 128 len 4], Mask(224, 32, s) >> 32
                    require mem[_2216 + 128 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                    require mem[_2216 + 128 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                    require mem[_2216 + mem[_2216 + 128 len 4], Mask(224, 32, s) >> 32 + 128] <= 4294967296 and mem[_2216 + 128 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_2216 + mem[_2216 + 128 len 4], Mask(224, 32, s) >> 32 + 128]) + 32 <= return_data.size
                    mem[_2216 + ceil32(return_data.size) + 128] = mem[_2216 + mem[_2216 + 128 len 4], Mask(224, 32, s) >> 32 + 128]
                    _5484 = mem[_2216 + _5173 + 128]
                    s = 0
                    while s < 32 * _5484:
                        mem[s + _2216 + ceil32(return_data.size) + 160] = mem[s + _2216 + _5173 + 160]
                        s = s + 32
                        continue 
                    mem[64] = (32 * _5484) + _2216 + ceil32(return_data.size) + 160
                    require mem[_2216 + ceil32(return_data.size) + 128] - 1 < mem[_2216 + ceil32(return_data.size) + 128]
                    if mem[(32 * mem[_2216 + ceil32(return_data.size) + 128] - 1) + _2216 + ceil32(return_data.size) + 160] <= t:
                        idx = idx + 1
                        t = t
                        continue 
                    idx = idx + 1
                    t = mem[(32 * mem[_2216 + ceil32(return_data.size) + 128] - 1) + _2216 + ceil32(return_data.size) + 160]
                    continue 
                if idx != 4:
                    _2214 = mem[64]
                    mem[mem[64]] = 3
                    mem[64] = mem[64] + 128
                    require 0 < mem[_2214]
                    mem[_2214 + 32] = 0x8d11ec38a3eb5e956b052f67da8bdc9bef8abf
                    require 1 < mem[_2214]
                    mem[_2214 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c
                    require 2 < mem[_2214]
                    mem[_2214 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    mem[_2214 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_2214 + 132] = s
                    mem[_2214 + 164] = 64
                    mem[_2214 + 196] = mem[_2214]
                    u = 0
                    while u < 32 * mem[_2214]:
                        mem[u + _2214 + 228] = mem[u + _2214 + 32]
                        u = u + 32
                        continue 
                    require ext_code.size(0)
                    staticcall 0x0.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args s, 64, mem[_2214 + 196 len (32 * mem[_2214]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_2214 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _2214 + ceil32(return_data.size) + 128
                    require return_data.size >= 32
                    _5169 = mem[_2214 + 128 len 4], Mask(224, 32, s) >> 32
                    require mem[_2214 + 128 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                    require mem[_2214 + 128 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                    require mem[_2214 + mem[_2214 + 128 len 4], Mask(224, 32, s) >> 32 + 128] <= 4294967296 and mem[_2214 + 128 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_2214 + mem[_2214 + 128 len 4], Mask(224, 32, s) >> 32 + 128]) + 32 <= return_data.size
                    mem[_2214 + ceil32(return_data.size) + 128] = mem[_2214 + mem[_2214 + 128 len 4], Mask(224, 32, s) >> 32 + 128]
                    _5482 = mem[_2214 + _5169 + 128]
                    s = 0
                    while s < 32 * _5482:
                        mem[s + _2214 + ceil32(return_data.size) + 160] = mem[s + _2214 + _5169 + 160]
                        s = s + 32
                        continue 
                    mem[64] = (32 * _5482) + _2214 + ceil32(return_data.size) + 160
                    require mem[_2214 + ceil32(return_data.size) + 128] - 1 < mem[_2214 + ceil32(return_data.size) + 128]
                    if mem[(32 * mem[_2214 + ceil32(return_data.size) + 128] - 1) + _2214 + ceil32(return_data.size) + 160] <= t:
                        idx = idx + 1
                        t = t
                        continue 
                    idx = idx + 1
                    t = mem[(32 * mem[_2214 + ceil32(return_data.size) + 128] - 1) + _2214 + ceil32(return_data.size) + 160]
                    continue 
                _2337 = mem[64]
                mem[mem[64]] = 3
                mem[64] = mem[64] + 128
                require 0 < mem[_2337]
                mem[_2337 + 32] = 0x8d11ec38a3eb5e956b052f67da8bdc9bef8abf
                require 1 < mem[_2337]
                mem[_2337 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c
                require 2 < mem[_2337]
                mem[_2337 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                mem[_2337 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_2337 + 132] = s
                mem[_2337 + 164] = 64
                mem[_2337 + 196] = mem[_2337]
                u = 0
                while u < 32 * mem[_2337]:
                    mem[u + _2337 + 228] = mem[u + _2337 + 32]
                    u = u + 32
                    continue 
                require ext_code.size(0x53c153a0df7e050bbefbb70ee9632061f12795fb)
                staticcall 0x53c153a0df7e050bbefbb70ee9632061f12795fb.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args s, 64, mem[_2337 + 196 len (32 * mem[_2337]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_2337 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _2337 + ceil32(return_data.size) + 128
                require return_data.size >= 32
                _5171 = mem[_2337 + 128 len 4], Mask(224, 32, s) >> 32
                require mem[_2337 + 128 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                require mem[_2337 + 128 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                require mem[_2337 + mem[_2337 + 128 len 4], Mask(224, 32, s) >> 32 + 128] <= 4294967296 and mem[_2337 + 128 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_2337 + mem[_2337 + 128 len 4], Mask(224, 32, s) >> 32 + 128]) + 32 <= return_data.size
                mem[_2337 + ceil32(return_data.size) + 128] = mem[_2337 + mem[_2337 + 128 len 4], Mask(224, 32, s) >> 32 + 128]
                _5483 = mem[_2337 + _5171 + 128]
                s = 0
                while s < 32 * _5483:
                    mem[s + _2337 + ceil32(return_data.size) + 160] = mem[s + _2337 + _5171 + 160]
                    s = s + 32
                    continue 
                mem[64] = (32 * _5483) + _2337 + ceil32(return_data.size) + 160
                require mem[_2337 + ceil32(return_data.size) + 128] - 1 < mem[_2337 + ceil32(return_data.size) + 128]
                if mem[(32 * mem[_2337 + ceil32(return_data.size) + 128] - 1) + _2337 + ceil32(return_data.size) + 160] <= t:
                    idx = idx + 1
                    t = t
                    continue 
                idx = idx + 1
                t = mem[(32 * mem[_2337 + ceil32(return_data.size) + 128] - 1) + _2337 + ceil32(return_data.size) + 160]
                continue 
            if 5 == idx:
                _2480 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                require 0 < mem[_2480]
                mem[_2480 + 32] = 0x8d11ec38a3eb5e956b052f67da8bdc9bef8abf
                require 1 < mem[_2480]
                mem[_2480 + 64] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                mem[_2480 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_2480 + 100] = s
                mem[_2480 + 132] = 64
                mem[_2480 + 164] = mem[_2480]
                u = 0
                while u < 32 * mem[_2480]:
                    mem[u + _2480 + 196] = mem[u + _2480 + 32]
                    u = u + 32
                    continue 
                require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c)
                staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args s, 64, mem[_2480 + 164 len (32 * mem[_2480]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_2480 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _2480 + ceil32(return_data.size) + 96
                require return_data.size >= 32
                _5157 = mem[_2480 + 96 len 4], Mask(224, 32, s) >> 32
                require mem[_2480 + 96 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                require mem[_2480 + 96 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                require mem[_2480 + mem[_2480 + 96 len 4], Mask(224, 32, s) >> 32 + 96] <= 4294967296 and mem[_2480 + 96 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_2480 + mem[_2480 + 96 len 4], Mask(224, 32, s) >> 32 + 96]) + 32 <= return_data.size
                mem[_2480 + ceil32(return_data.size) + 96] = mem[_2480 + mem[_2480 + 96 len 4], Mask(224, 32, s) >> 32 + 96]
                _5476 = mem[_2480 + _5157 + 96]
                s = 0
                while s < 32 * _5476:
                    mem[s + _2480 + ceil32(return_data.size) + 128] = mem[s + _2480 + _5157 + 128]
                    s = s + 32
                    continue 
                mem[64] = (32 * _5476) + _2480 + ceil32(return_data.size) + 128
                require mem[_2480 + ceil32(return_data.size) + 96] - 1 < mem[_2480 + ceil32(return_data.size) + 96]
                if mem[(32 * mem[_2480 + ceil32(return_data.size) + 96] - 1) + _2480 + ceil32(return_data.size) + 128] <= t:
                    idx = idx + 1
                    t = t
                    continue 
                idx = idx + 1
                t = mem[(32 * mem[_2480 + ceil32(return_data.size) + 96] - 1) + _2480 + ceil32(return_data.size) + 128]
                continue 
            if 6 == idx:
                if 5 == idx:
                    _2628 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    require 0 < mem[_2628]
                    mem[_2628 + 32] = 0x8d11ec38a3eb5e956b052f67da8bdc9bef8abf
                    require 1 < mem[_2628]
                    mem[_2628 + 64] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    mem[_2628 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_2628 + 100] = s
                    mem[_2628 + 132] = 64
                    mem[_2628 + 164] = mem[_2628]
                    u = 0
                    while u < 32 * mem[_2628]:
                        mem[u + _2628 + 196] = mem[u + _2628 + 32]
                        u = u + 32
                        continue 
                    require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c)
                    staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args s, 64, mem[_2628 + 164 len (32 * mem[_2628]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_2628 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _2628 + ceil32(return_data.size) + 96
                    require return_data.size >= 32
                    _5167 = mem[_2628 + 96 len 4], Mask(224, 32, s) >> 32
                    require mem[_2628 + 96 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                    require mem[_2628 + 96 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                    require mem[_2628 + mem[_2628 + 96 len 4], Mask(224, 32, s) >> 32 + 96] <= 4294967296 and mem[_2628 + 96 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_2628 + mem[_2628 + 96 len 4], Mask(224, 32, s) >> 32 + 96]) + 32 <= return_data.size
                    mem[_2628 + ceil32(return_data.size) + 96] = mem[_2628 + mem[_2628 + 96 len 4], Mask(224, 32, s) >> 32 + 96]
                    _5481 = mem[_2628 + _5167 + 96]
                    s = 0
                    while s < 32 * _5481:
                        mem[s + _2628 + ceil32(return_data.size) + 128] = mem[s + _2628 + _5167 + 128]
                        s = s + 32
                        continue 
                    mem[64] = (32 * _5481) + _2628 + ceil32(return_data.size) + 128
                    require mem[_2628 + ceil32(return_data.size) + 96] - 1 < mem[_2628 + ceil32(return_data.size) + 96]
                    if mem[(32 * mem[_2628 + ceil32(return_data.size) + 96] - 1) + _2628 + ceil32(return_data.size) + 128] <= t:
                        idx = idx + 1
                        t = t
                        continue 
                    idx = idx + 1
                    t = mem[(32 * mem[_2628 + ceil32(return_data.size) + 96] - 1) + _2628 + ceil32(return_data.size) + 128]
                    continue 
                if idx != 6:
                    _2626 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    require 0 < mem[_2626]
                    mem[_2626 + 32] = 0x8d11ec38a3eb5e956b052f67da8bdc9bef8abf
                    require 1 < mem[_2626]
                    mem[_2626 + 64] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    mem[_2626 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_2626 + 100] = s
                    mem[_2626 + 132] = 64
                    mem[_2626 + 164] = mem[_2626]
                    u = 0
                    while u < 32 * mem[_2626]:
                        mem[u + _2626 + 196] = mem[u + _2626 + 32]
                        u = u + 32
                        continue 
                    require ext_code.size(0)
                    staticcall 0x0.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args s, 64, mem[_2626 + 164 len (32 * mem[_2626]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_2626 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _2626 + ceil32(return_data.size) + 96
                    require return_data.size >= 32
                    _5163 = mem[_2626 + 96 len 4], Mask(224, 32, s) >> 32
                    require mem[_2626 + 96 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                    require mem[_2626 + 96 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                    require mem[_2626 + mem[_2626 + 96 len 4], Mask(224, 32, s) >> 32 + 96] <= 4294967296 and mem[_2626 + 96 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_2626 + mem[_2626 + 96 len 4], Mask(224, 32, s) >> 32 + 96]) + 32 <= return_data.size
                    mem[_2626 + ceil32(return_data.size) + 96] = mem[_2626 + mem[_2626 + 96 len 4], Mask(224, 32, s) >> 32 + 96]
                    _5479 = mem[_2626 + _5163 + 96]
                    s = 0
                    while s < 32 * _5479:
                        mem[s + _2626 + ceil32(return_data.size) + 128] = mem[s + _2626 + _5163 + 128]
                        s = s + 32
                        continue 
                    mem[64] = (32 * _5479) + _2626 + ceil32(return_data.size) + 128
                    require mem[_2626 + ceil32(return_data.size) + 96] - 1 < mem[_2626 + ceil32(return_data.size) + 96]
                    if mem[(32 * mem[_2626 + ceil32(return_data.size) + 96] - 1) + _2626 + ceil32(return_data.size) + 128] <= t:
                        idx = idx + 1
                        t = t
                        continue 
                    idx = idx + 1
                    t = mem[(32 * mem[_2626 + ceil32(return_data.size) + 96] - 1) + _2626 + ceil32(return_data.size) + 128]
                    continue 
                _2835 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                require 0 < mem[_2835]
                mem[_2835 + 32] = 0x8d11ec38a3eb5e956b052f67da8bdc9bef8abf
                require 1 < mem[_2835]
                mem[_2835 + 64] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                mem[_2835 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_2835 + 100] = s
                mem[_2835 + 132] = 64
                mem[_2835 + 164] = mem[_2835]
                u = 0
                while u < 32 * mem[_2835]:
                    mem[u + _2835 + 196] = mem[u + _2835 + 32]
                    u = u + 32
                    continue 
                require ext_code.size(0x53c153a0df7e050bbefbb70ee9632061f12795fb)
                staticcall 0x53c153a0df7e050bbefbb70ee9632061f12795fb.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args s, 64, mem[_2835 + 164 len (32 * mem[_2835]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_2835 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _2835 + ceil32(return_data.size) + 96
                require return_data.size >= 32
                _5165 = mem[_2835 + 96 len 4], Mask(224, 32, s) >> 32
                require mem[_2835 + 96 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                require mem[_2835 + 96 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                require mem[_2835 + mem[_2835 + 96 len 4], Mask(224, 32, s) >> 32 + 96] <= 4294967296 and mem[_2835 + 96 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_2835 + mem[_2835 + 96 len 4], Mask(224, 32, s) >> 32 + 96]) + 32 <= return_data.size
                mem[_2835 + ceil32(return_data.size) + 96] = mem[_2835 + mem[_2835 + 96 len 4], Mask(224, 32, s) >> 32 + 96]
                _5480 = mem[_2835 + _5165 + 96]
                s = 0
                while s < 32 * _5480:
                    mem[s + _2835 + ceil32(return_data.size) + 128] = mem[s + _2835 + _5165 + 128]
                    s = s + 32
                    continue 
                mem[64] = (32 * _5480) + _2835 + ceil32(return_data.size) + 128
                require mem[_2835 + ceil32(return_data.size) + 96] - 1 < mem[_2835 + ceil32(return_data.size) + 96]
                if mem[(32 * mem[_2835 + ceil32(return_data.size) + 96] - 1) + _2835 + ceil32(return_data.size) + 128] <= t:
                    idx = idx + 1
                    t = t
                    continue 
                idx = idx + 1
                t = mem[(32 * mem[_2835 + ceil32(return_data.size) + 96] - 1) + _2835 + ceil32(return_data.size) + 128]
                continue 
            if idx != 7:
                if idx != 8:
                    if s <= t:
                        idx = idx + 1
                        t = t
                        continue 
                    idx = idx + 1
                    t = s
                    continue 
                mem[mem[64] + 4] = 0
                mem[mem[64] + 36] = 2
                mem[mem[64] + 68] = s
                require ext_code.size(0x952bda8a83c3d5f398a686bb4e8c6dd90072d523)
                staticcall 0x952bda8a83c3d5f398a686bb4e8c6dd90072d523.calculateSwap(uint8 arg1, uint8 arg2, uint256 arg3) with:
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
            _2484 = mem[0]
            _2622 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            require 0 < mem[_2622]
            mem[_2622 + 32] = 0x8d11ec38a3eb5e956b052f67da8bdc9bef8abf
            require 1 < mem[_2622]
            mem[_2622 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c
            mem[_2622 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[_2622 + 100] = s
            mem[_2622 + 132] = 64
            mem[_2622 + 164] = mem[_2622]
            u = 0
            while u < 32 * mem[_2622]:
                mem[u + _2622 + 196] = mem[u + _2622 + 32]
                u = u + 32
                continue 
            require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c)
            staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c.getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args s, 64, mem[_2622 + 164 len (32 * mem[_2622]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[_2622 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = _2622 + ceil32(return_data.size) + 96
            require return_data.size >= 32
            _5159 = mem[_2622 + 96 len 4], Mask(224, 32, s) >> 32
            require mem[_2622 + 96 len 4], Mask(224, 32, s) >> 32 <= 4294967296
            require mem[_2622 + 96 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
            require mem[_2622 + mem[_2622 + 96 len 4], Mask(224, 32, s) >> 32 + 96] <= 4294967296 and mem[_2622 + 96 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_2622 + mem[_2622 + 96 len 4], Mask(224, 32, s) >> 32 + 96]) + 32 <= return_data.size
            mem[_2622 + ceil32(return_data.size) + 96] = mem[_2622 + mem[_2622 + 96 len 4], Mask(224, 32, s) >> 32 + 96]
            _5477 = mem[_2622 + _5159 + 96]
            s = 0
            while s < 32 * _5477:
                mem[s + _2622 + ceil32(return_data.size) + 128] = mem[s + _2622 + _5159 + 128]
                s = s + 32
                continue 
            require mem[_2622 + ceil32(return_data.size) + 96] - 1 < mem[_2622 + ceil32(return_data.size) + 96]
            _6677 = mem[(32 * mem[_2622 + ceil32(return_data.size) + 96] - 1) + _2622 + ceil32(return_data.size) + 128]
            mem[(32 * _5477) + _2622 + ceil32(return_data.size) + 128] = 2
            mem[0] = _2484
            mem[(32 * _5477) + _2622 + ceil32(return_data.size) + 160] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c
            mem[(32 * _5477) + _2622 + ceil32(return_data.size) + 192] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
            mem[(32 * _5477) + _2622 + ceil32(return_data.size) + 224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[(32 * _5477) + _2622 + ceil32(return_data.size) + 228] = _6677
            mem[(32 * _5477) + _2622 + ceil32(return_data.size) + 260] = 64
            mem[(32 * _5477) + _2622 + ceil32(return_data.size) + 292] = 2
            s = 0
            while s < 64:
                mem[s + (32 * _5477) + _2622 + ceil32(return_data.size) + 324] = mem[s + (32 * _5477) + _2622 + ceil32(return_data.size) + 160]
                s = s + 32
                continue 
            require ext_code.size(0x1b02da8cb0d097eb8d57a175b88c7d8b47997506)
            staticcall 0x1b02da8cb0d097eb8d57a175b88c7d8b47997506.getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args _6677, Array(len=2, data=mem[(32 * _5477) + _2622 + ceil32(return_data.size) + 324 len 64])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _5477) + _2622 + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * _5477) + _2622 + (2 * ceil32(return_data.size)) + 224
            require return_data.size >= 32
            _7227 = mem[(32 * _5477) + _2622 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _6677) >> 32
            require mem[(32 * _5477) + _2622 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _6677) >> 32 <= 4294967296
            require mem[(32 * _5477) + _2622 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _6677) >> 32 + 32 <= return_data.size
            require mem[(32 * _5477) + _2622 + ceil32(return_data.size) + mem[(32 * _5477) + _2622 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _6677) >> 32 + 224] <= 4294967296 and mem[(32 * _5477) + _2622 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _6677) >> 32 + (32 * mem[(32 * _5477) + _2622 + ceil32(return_data.size) + mem[(32 * _5477) + _2622 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _6677) >> 32 + 224]) + 32 <= return_data.size
            mem[(32 * _5477) + _2622 + (2 * ceil32(return_data.size)) + 224] = mem[(32 * _5477) + _2622 + ceil32(return_data.size) + mem[(32 * _5477) + _2622 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _6677) >> 32 + 224]
            _7275 = mem[(32 * _5477) + _2622 + ceil32(return_data.size) + _7227 + 224]
            s = 0
            while s < 32 * _7275:
                mem[s + (32 * _5477) + _2622 + (2 * ceil32(return_data.size)) + 256] = mem[s + (32 * _5477) + _2622 + ceil32(return_data.size) + _7227 + 256]
                s = s + 32
                continue 
            mem[64] = (32 * _7275) + (32 * _5477) + _2622 + (2 * ceil32(return_data.size)) + 256
            require mem[(32 * _5477) + _2622 + (2 * ceil32(return_data.size)) + 224] - 1 < mem[(32 * _5477) + _2622 + (2 * ceil32(return_data.size)) + 224]
            if mem[(32 * mem[(32 * _5477) + _2622 + (2 * ceil32(return_data.size)) + 224] - 1) + (32 * _5477) + _2622 + (2 * ceil32(return_data.size)) + 256] <= t:
                idx = idx + 1
                t = t
                continue 
            idx = idx + 1
            t = mem[(32 * mem[(32 * _5477) + _2622 + (2 * ceil32(return_data.size)) + 224] - 1) + (32 * _5477) + _2622 + (2 * ceil32(return_data.size)) + 256]
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
    if not sub_7d0b6809:
        mem[0] = msg.sender
        idx = 0
        s = 0
        while idx < 9:
            if not idx:
                mem[mem[64] + 4] = 1
                mem[mem[64] + 36] = 0
                mem[mem[64] + 68] = 0
                require ext_code.size(0x27e611fd27b276acbd5ffd632e5eaebec9761e40)
                staticcall 0x27e611fd27b276acbd5ffd632e5eaebec9761e40.get_dy(int128 arg1, int128 arg2, uint256 arg3) with:
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
                staticcall 0x83e5f18da720119ff363cf63417628eb0e9fd523.get_dy(int128 arg1, int128 arg2, uint256 arg3) with:
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
                _134 = mem[64]
                mem[mem[64]] = 4
                mem[64] = mem[64] + 160
                require 0 < mem[_134]
                mem[_134 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                require 1 < mem[_134]
                mem[_134 + 64] = 0x5cc61a78f164885776aa610fb0fe1257df78e59b
                require 2 < mem[_134]
                mem[_134 + 96] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c
                require 3 < mem[_134]
                mem[_134 + 128] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                mem[_134 + 160] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_134 + 164] = 0
                mem[_134 + 196] = 64
                mem[_134 + 228] = mem[_134]
                t = 0
                while t < 32 * mem[_134]:
                    mem[t + _134 + 260] = mem[t + _134 + 32]
                    t = t + 32
                    continue 
                require ext_code.size(0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52)
                staticcall 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args 0, 64, mem[_134 + 228 len (32 * mem[_134]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_134 + 160 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _134 + ceil32(return_data.size) + 160
                require return_data.size >= 32
                _1678 = mem[_134 + 160 len 4], 0
                require mem[_134 + 160 len 4], 0 <= 4294967296
                require mem[_134 + 160 len 4], 0 + 32 <= return_data.size
                require mem[_134 + mem[_134 + 160 len 4], 0 + 160] <= 4294967296 and mem[_134 + 160 len 4], 0 + (32 * mem[_134 + mem[_134 + 160 len 4], 0 + 160]) + 32 <= return_data.size
                mem[_134 + ceil32(return_data.size) + 160] = mem[_134 + mem[_134 + 160 len 4], 0 + 160]
                _1936 = mem[_134 + _1678 + 160]
                t = 0
                while t < 32 * _1936:
                    mem[t + _134 + ceil32(return_data.size) + 192] = mem[t + _134 + _1678 + 192]
                    t = t + 32
                    continue 
                mem[64] = (32 * _1936) + _134 + ceil32(return_data.size) + 192
                require mem[_134 + ceil32(return_data.size) + 160] - 1 < mem[_134 + ceil32(return_data.size) + 160]
                if mem[(32 * mem[_134 + ceil32(return_data.size) + 160] - 1) + _134 + ceil32(return_data.size) + 192] <= s:
                    idx = idx + 1
                    s = s
                    continue 
                idx = idx + 1
                s = mem[(32 * mem[_134 + ceil32(return_data.size) + 160] - 1) + _134 + ceil32(return_data.size) + 192]
                continue 
            if 3 == idx:
                _250 = mem[64]
                mem[mem[64]] = 3
                mem[64] = mem[64] + 128
                require 0 < mem[_250]
                mem[_250 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                require 1 < mem[_250]
                mem[_250 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c
                require 2 < mem[_250]
                mem[_250 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                mem[_250 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_250 + 132] = 0
                mem[_250 + 164] = 64
                mem[_250 + 196] = mem[_250]
                t = 0
                while t < 32 * mem[_250]:
                    mem[t + _250 + 228] = mem[t + _250 + 32]
                    t = t + 32
                    continue 
                require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c)
                staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args 0, 64, mem[_250 + 196 len (32 * mem[_250]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_250 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _250 + ceil32(return_data.size) + 128
                require return_data.size >= 32
                _1658 = mem[_250 + 128 len 4], 0
                require mem[_250 + 128 len 4], 0 <= 4294967296
                require mem[_250 + 128 len 4], 0 + 32 <= return_data.size
                require mem[_250 + mem[_250 + 128 len 4], 0 + 128] <= 4294967296 and mem[_250 + 128 len 4], 0 + (32 * mem[_250 + mem[_250 + 128 len 4], 0 + 128]) + 32 <= return_data.size
                mem[_250 + ceil32(return_data.size) + 128] = mem[_250 + mem[_250 + 128 len 4], 0 + 128]
                _1926 = mem[_250 + _1658 + 128]
                t = 0
                while t < 32 * _1926:
                    mem[t + _250 + ceil32(return_data.size) + 160] = mem[t + _250 + _1658 + 160]
                    t = t + 32
                    continue 
                mem[64] = (32 * _1926) + _250 + ceil32(return_data.size) + 160
                require mem[_250 + ceil32(return_data.size) + 128] - 1 < mem[_250 + ceil32(return_data.size) + 128]
                if mem[(32 * mem[_250 + ceil32(return_data.size) + 128] - 1) + _250 + ceil32(return_data.size) + 160] <= s:
                    idx = idx + 1
                    s = s
                    continue 
                idx = idx + 1
                s = mem[(32 * mem[_250 + ceil32(return_data.size) + 128] - 1) + _250 + ceil32(return_data.size) + 160]
                continue 
            if 4 == idx:
                if 3 == idx:
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
                    mem[_297 + 132] = 0
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
                           args 0, 64, mem[_297 + 196 len (32 * mem[_297]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_297 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _297 + ceil32(return_data.size) + 128
                    require return_data.size >= 32
                    _1676 = mem[_297 + 128 len 4], 0
                    require mem[_297 + 128 len 4], 0 <= 4294967296
                    require mem[_297 + 128 len 4], 0 + 32 <= return_data.size
                    require mem[_297 + mem[_297 + 128 len 4], 0 + 128] <= 4294967296 and mem[_297 + 128 len 4], 0 + (32 * mem[_297 + mem[_297 + 128 len 4], 0 + 128]) + 32 <= return_data.size
                    mem[_297 + ceil32(return_data.size) + 128] = mem[_297 + mem[_297 + 128 len 4], 0 + 128]
                    _1935 = mem[_297 + _1676 + 128]
                    t = 0
                    while t < 32 * _1935:
                        mem[t + _297 + ceil32(return_data.size) + 160] = mem[t + _297 + _1676 + 160]
                        t = t + 32
                        continue 
                    mem[64] = (32 * _1935) + _297 + ceil32(return_data.size) + 160
                    require mem[_297 + ceil32(return_data.size) + 128] - 1 < mem[_297 + ceil32(return_data.size) + 128]
                    if mem[(32 * mem[_297 + ceil32(return_data.size) + 128] - 1) + _297 + ceil32(return_data.size) + 160] <= s:
                        idx = idx + 1
                        s = s
                        continue 
                    idx = idx + 1
                    s = mem[(32 * mem[_297 + ceil32(return_data.size) + 128] - 1) + _297 + ceil32(return_data.size) + 160]
                    continue 
                if idx != 4:
                    _295 = mem[64]
                    mem[mem[64]] = 3
                    mem[64] = mem[64] + 128
                    require 0 < mem[_295]
                    mem[_295 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    require 1 < mem[_295]
                    mem[_295 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c
                    require 2 < mem[_295]
                    mem[_295 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    mem[_295 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_295 + 132] = 0
                    mem[_295 + 164] = 64
                    mem[_295 + 196] = mem[_295]
                    t = 0
                    while t < 32 * mem[_295]:
                        mem[t + _295 + 228] = mem[t + _295 + 32]
                        t = t + 32
                        continue 
                    require ext_code.size(0)
                    staticcall 0x0.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args 0, 64, mem[_295 + 196 len (32 * mem[_295]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_295 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _295 + ceil32(return_data.size) + 128
                    require return_data.size >= 32
                    _1672 = mem[_295 + 128 len 4], 0
                    require mem[_295 + 128 len 4], 0 <= 4294967296
                    require mem[_295 + 128 len 4], 0 + 32 <= return_data.size
                    require mem[_295 + mem[_295 + 128 len 4], 0 + 128] <= 4294967296 and mem[_295 + 128 len 4], 0 + (32 * mem[_295 + mem[_295 + 128 len 4], 0 + 128]) + 32 <= return_data.size
                    mem[_295 + ceil32(return_data.size) + 128] = mem[_295 + mem[_295 + 128 len 4], 0 + 128]
                    _1933 = mem[_295 + _1672 + 128]
                    t = 0
                    while t < 32 * _1933:
                        mem[t + _295 + ceil32(return_data.size) + 160] = mem[t + _295 + _1672 + 160]
                        t = t + 32
                        continue 
                    mem[64] = (32 * _1933) + _295 + ceil32(return_data.size) + 160
                    require mem[_295 + ceil32(return_data.size) + 128] - 1 < mem[_295 + ceil32(return_data.size) + 128]
                    if mem[(32 * mem[_295 + ceil32(return_data.size) + 128] - 1) + _295 + ceil32(return_data.size) + 160] <= s:
                        idx = idx + 1
                        s = s
                        continue 
                    idx = idx + 1
                    s = mem[(32 * mem[_295 + ceil32(return_data.size) + 128] - 1) + _295 + ceil32(return_data.size) + 160]
                    continue 
                _366 = mem[64]
                mem[mem[64]] = 3
                mem[64] = mem[64] + 128
                require 0 < mem[_366]
                mem[_366 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                require 1 < mem[_366]
                mem[_366 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c
                require 2 < mem[_366]
                mem[_366 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                mem[_366 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_366 + 132] = 0
                mem[_366 + 164] = 64
                mem[_366 + 196] = mem[_366]
                t = 0
                while t < 32 * mem[_366]:
                    mem[t + _366 + 228] = mem[t + _366 + 32]
                    t = t + 32
                    continue 
                require ext_code.size(0x53c153a0df7e050bbefbb70ee9632061f12795fb)
                staticcall 0x53c153a0df7e050bbefbb70ee9632061f12795fb.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args 0, 64, mem[_366 + 196 len (32 * mem[_366]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_366 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _366 + ceil32(return_data.size) + 128
                require return_data.size >= 32
                _1674 = mem[_366 + 128 len 4], 0
                require mem[_366 + 128 len 4], 0 <= 4294967296
                require mem[_366 + 128 len 4], 0 + 32 <= return_data.size
                require mem[_366 + mem[_366 + 128 len 4], 0 + 128] <= 4294967296 and mem[_366 + 128 len 4], 0 + (32 * mem[_366 + mem[_366 + 128 len 4], 0 + 128]) + 32 <= return_data.size
                mem[_366 + ceil32(return_data.size) + 128] = mem[_366 + mem[_366 + 128 len 4], 0 + 128]
                _1934 = mem[_366 + _1674 + 128]
                t = 0
                while t < 32 * _1934:
                    mem[t + _366 + ceil32(return_data.size) + 160] = mem[t + _366 + _1674 + 160]
                    t = t + 32
                    continue 
                mem[64] = (32 * _1934) + _366 + ceil32(return_data.size) + 160
                require mem[_366 + ceil32(return_data.size) + 128] - 1 < mem[_366 + ceil32(return_data.size) + 128]
                if mem[(32 * mem[_366 + ceil32(return_data.size) + 128] - 1) + _366 + ceil32(return_data.size) + 160] <= s:
                    idx = idx + 1
                    s = s
                    continue 
                idx = idx + 1
                s = mem[(32 * mem[_366 + ceil32(return_data.size) + 128] - 1) + _366 + ceil32(return_data.size) + 160]
                continue 
            if 5 == idx:
                _439 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                require 0 < mem[_439]
                mem[_439 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                require 1 < mem[_439]
                mem[_439 + 64] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                mem[_439 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_439 + 100] = 0
                mem[_439 + 132] = 64
                mem[_439 + 164] = mem[_439]
                t = 0
                while t < 32 * mem[_439]:
                    mem[t + _439 + 196] = mem[t + _439 + 32]
                    t = t + 32
                    continue 
                require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c)
                staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args 0, 64, mem[_439 + 164 len (32 * mem[_439]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_439 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _439 + ceil32(return_data.size) + 96
                require return_data.size >= 32
                _1660 = mem[_439 + 96 len 4], 0
                require mem[_439 + 96 len 4], 0 <= 4294967296
                require mem[_439 + 96 len 4], 0 + 32 <= return_data.size
                require mem[_439 + mem[_439 + 96 len 4], 0 + 96] <= 4294967296 and mem[_439 + 96 len 4], 0 + (32 * mem[_439 + mem[_439 + 96 len 4], 0 + 96]) + 32 <= return_data.size
                mem[_439 + ceil32(return_data.size) + 96] = mem[_439 + mem[_439 + 96 len 4], 0 + 96]
                _1927 = mem[_439 + _1660 + 96]
                t = 0
                while t < 32 * _1927:
                    mem[t + _439 + ceil32(return_data.size) + 128] = mem[t + _439 + _1660 + 128]
                    t = t + 32
                    continue 
                mem[64] = (32 * _1927) + _439 + ceil32(return_data.size) + 128
                require mem[_439 + ceil32(return_data.size) + 96] - 1 < mem[_439 + ceil32(return_data.size) + 96]
                if mem[(32 * mem[_439 + ceil32(return_data.size) + 96] - 1) + _439 + ceil32(return_data.size) + 128] <= s:
                    idx = idx + 1
                    s = s
                    continue 
                idx = idx + 1
                s = mem[(32 * mem[_439 + ceil32(return_data.size) + 96] - 1) + _439 + ceil32(return_data.size) + 128]
                continue 
            if 6 == idx:
                if 5 == idx:
                    _535 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    require 0 < mem[_535]
                    mem[_535 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    require 1 < mem[_535]
                    mem[_535 + 64] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    mem[_535 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_535 + 100] = 0
                    mem[_535 + 132] = 64
                    mem[_535 + 164] = mem[_535]
                    t = 0
                    while t < 32 * mem[_535]:
                        mem[t + _535 + 196] = mem[t + _535 + 32]
                        t = t + 32
                        continue 
                    require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c)
                    staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args 0, 64, mem[_535 + 164 len (32 * mem[_535]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_535 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _535 + ceil32(return_data.size) + 96
                    require return_data.size >= 32
                    _1670 = mem[_535 + 96 len 4], 0
                    require mem[_535 + 96 len 4], 0 <= 4294967296
                    require mem[_535 + 96 len 4], 0 + 32 <= return_data.size
                    require mem[_535 + mem[_535 + 96 len 4], 0 + 96] <= 4294967296 and mem[_535 + 96 len 4], 0 + (32 * mem[_535 + mem[_535 + 96 len 4], 0 + 96]) + 32 <= return_data.size
                    mem[_535 + ceil32(return_data.size) + 96] = mem[_535 + mem[_535 + 96 len 4], 0 + 96]
                    _1932 = mem[_535 + _1670 + 96]
                    t = 0
                    while t < 32 * _1932:
                        mem[t + _535 + ceil32(return_data.size) + 128] = mem[t + _535 + _1670 + 128]
                        t = t + 32
                        continue 
                    mem[64] = (32 * _1932) + _535 + ceil32(return_data.size) + 128
                    require mem[_535 + ceil32(return_data.size) + 96] - 1 < mem[_535 + ceil32(return_data.size) + 96]
                    if mem[(32 * mem[_535 + ceil32(return_data.size) + 96] - 1) + _535 + ceil32(return_data.size) + 128] <= s:
                        idx = idx + 1
                        s = s
                        continue 
                    idx = idx + 1
                    s = mem[(32 * mem[_535 + ceil32(return_data.size) + 96] - 1) + _535 + ceil32(return_data.size) + 128]
                    continue 
                if idx != 6:
                    _533 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    require 0 < mem[_533]
                    mem[_533 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    require 1 < mem[_533]
                    mem[_533 + 64] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    mem[_533 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_533 + 100] = 0
                    mem[_533 + 132] = 64
                    mem[_533 + 164] = mem[_533]
                    t = 0
                    while t < 32 * mem[_533]:
                        mem[t + _533 + 196] = mem[t + _533 + 32]
                        t = t + 32
                        continue 
                    require ext_code.size(0)
                    staticcall 0x0.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args 0, 64, mem[_533 + 164 len (32 * mem[_533]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_533 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _533 + ceil32(return_data.size) + 96
                    require return_data.size >= 32
                    _1666 = mem[_533 + 96 len 4], 0
                    require mem[_533 + 96 len 4], 0 <= 4294967296
                    require mem[_533 + 96 len 4], 0 + 32 <= return_data.size
                    require mem[_533 + mem[_533 + 96 len 4], 0 + 96] <= 4294967296 and mem[_533 + 96 len 4], 0 + (32 * mem[_533 + mem[_533 + 96 len 4], 0 + 96]) + 32 <= return_data.size
                    mem[_533 + ceil32(return_data.size) + 96] = mem[_533 + mem[_533 + 96 len 4], 0 + 96]
                    _1930 = mem[_533 + _1666 + 96]
                    t = 0
                    while t < 32 * _1930:
                        mem[t + _533 + ceil32(return_data.size) + 128] = mem[t + _533 + _1666 + 128]
                        t = t + 32
                        continue 
                    mem[64] = (32 * _1930) + _533 + ceil32(return_data.size) + 128
                    require mem[_533 + ceil32(return_data.size) + 96] - 1 < mem[_533 + ceil32(return_data.size) + 96]
                    if mem[(32 * mem[_533 + ceil32(return_data.size) + 96] - 1) + _533 + ceil32(return_data.size) + 128] <= s:
                        idx = idx + 1
                        s = s
                        continue 
                    idx = idx + 1
                    s = mem[(32 * mem[_533 + ceil32(return_data.size) + 96] - 1) + _533 + ceil32(return_data.size) + 128]
                    continue 
                _631 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                require 0 < mem[_631]
                mem[_631 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                require 1 < mem[_631]
                mem[_631 + 64] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                mem[_631 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_631 + 100] = 0
                mem[_631 + 132] = 64
                mem[_631 + 164] = mem[_631]
                t = 0
                while t < 32 * mem[_631]:
                    mem[t + _631 + 196] = mem[t + _631 + 32]
                    t = t + 32
                    continue 
                require ext_code.size(0x53c153a0df7e050bbefbb70ee9632061f12795fb)
                staticcall 0x53c153a0df7e050bbefbb70ee9632061f12795fb.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args 0, 64, mem[_631 + 164 len (32 * mem[_631]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_631 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _631 + ceil32(return_data.size) + 96
                require return_data.size >= 32
                _1668 = mem[_631 + 96 len 4], 0
                require mem[_631 + 96 len 4], 0 <= 4294967296
                require mem[_631 + 96 len 4], 0 + 32 <= return_data.size
                require mem[_631 + mem[_631 + 96 len 4], 0 + 96] <= 4294967296 and mem[_631 + 96 len 4], 0 + (32 * mem[_631 + mem[_631 + 96 len 4], 0 + 96]) + 32 <= return_data.size
                mem[_631 + ceil32(return_data.size) + 96] = mem[_631 + mem[_631 + 96 len 4], 0 + 96]
                _1931 = mem[_631 + _1668 + 96]
                t = 0
                while t < 32 * _1931:
                    mem[t + _631 + ceil32(return_data.size) + 128] = mem[t + _631 + _1668 + 128]
                    t = t + 32
                    continue 
                mem[64] = (32 * _1931) + _631 + ceil32(return_data.size) + 128
                require mem[_631 + ceil32(return_data.size) + 96] - 1 < mem[_631 + ceil32(return_data.size) + 96]
                if mem[(32 * mem[_631 + ceil32(return_data.size) + 96] - 1) + _631 + ceil32(return_data.size) + 128] <= s:
                    idx = idx + 1
                    s = s
                    continue 
                idx = idx + 1
                s = mem[(32 * mem[_631 + ceil32(return_data.size) + 96] - 1) + _631 + ceil32(return_data.size) + 128]
                continue 
            if idx != 7:
                if idx != 8:
                    if 0 <= s:
                        idx = idx + 1
                        s = s
                        continue 
                    idx = idx + 1
                    s = 0
                    continue 
                mem[mem[64] + 4] = 0
                mem[mem[64] + 36] = 2
                mem[mem[64] + 68] = 0
                require ext_code.size(0x952bda8a83c3d5f398a686bb4e8c6dd90072d523)
                staticcall 0x952bda8a83c3d5f398a686bb4e8c6dd90072d523.calculateSwap(uint8 arg1, uint8 arg2, uint256 arg3) with:
                        gas gas_remaining wei
                       args 0, 2, 0
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
            _529 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            require 0 < mem[_529]
            mem[_529 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
            require 1 < mem[_529]
            mem[_529 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c
            mem[_529 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[_529 + 100] = 0
            mem[_529 + 132] = 64
            mem[_529 + 164] = mem[_529]
            t = 0
            while t < 32 * mem[_529]:
                mem[t + _529 + 196] = mem[t + _529 + 32]
                t = t + 32
                continue 
            require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c)
            staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c.getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args 0, 64, mem[_529 + 164 len (32 * mem[_529]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[_529 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = _529 + ceil32(return_data.size) + 96
            require return_data.size >= 32
            _1662 = mem[_529 + 96 len 4], 0
            require mem[_529 + 96 len 4], 0 <= 4294967296
            require mem[_529 + 96 len 4], 0 + 32 <= return_data.size
            require mem[_529 + mem[_529 + 96 len 4], 0 + 96] <= 4294967296 and mem[_529 + 96 len 4], 0 + (32 * mem[_529 + mem[_529 + 96 len 4], 0 + 96]) + 32 <= return_data.size
            mem[_529 + ceil32(return_data.size) + 96] = mem[_529 + mem[_529 + 96 len 4], 0 + 96]
            _1928 = mem[_529 + _1662 + 96]
            t = 0
            while t < 32 * _1928:
                mem[t + _529 + ceil32(return_data.size) + 128] = mem[t + _529 + _1662 + 128]
                t = t + 32
                continue 
            mem[64] = (32 * _1928) + _529 + ceil32(return_data.size) + 128
            require mem[_529 + ceil32(return_data.size) + 96] - 1 < mem[_529 + ceil32(return_data.size) + 96]
            _4952 = mem[(32 * mem[_529 + ceil32(return_data.size) + 96] - 1) + _529 + ceil32(return_data.size) + 128]
            mem[(32 * _1928) + _529 + ceil32(return_data.size) + 128] = 2
            mem[(32 * _1928) + _529 + ceil32(return_data.size) + 160] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c
            mem[(32 * _1928) + _529 + ceil32(return_data.size) + 192] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
            mem[(32 * _1928) + _529 + ceil32(return_data.size) + 224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[(32 * _1928) + _529 + ceil32(return_data.size) + 228] = _4952
            mem[(32 * _1928) + _529 + ceil32(return_data.size) + 260] = 64
            mem[(32 * _1928) + _529 + ceil32(return_data.size) + 292] = 2
            t = 0
            while t < 64:
                mem[t + (32 * _1928) + _529 + ceil32(return_data.size) + 324] = mem[t + (32 * _1928) + _529 + ceil32(return_data.size) + 160]
                t = t + 32
                continue 
            require ext_code.size(0x1b02da8cb0d097eb8d57a175b88c7d8b47997506)
            staticcall 0x1b02da8cb0d097eb8d57a175b88c7d8b47997506.getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args _4952, Array(len=2, data=mem[(32 * _1928) + _529 + ceil32(return_data.size) + 324 len 64])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _1928) + _529 + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * _1928) + _529 + (2 * ceil32(return_data.size)) + 224
            require return_data.size >= 32
            _6726 = mem[(32 * _1928) + _529 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _4952) >> 32
            require mem[(32 * _1928) + _529 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _4952) >> 32 <= 4294967296
            require mem[(32 * _1928) + _529 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _4952) >> 32 + 32 <= return_data.size
            require mem[(32 * _1928) + _529 + ceil32(return_data.size) + mem[(32 * _1928) + _529 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _4952) >> 32 + 224] <= 4294967296 and mem[(32 * _1928) + _529 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _4952) >> 32 + (32 * mem[(32 * _1928) + _529 + ceil32(return_data.size) + mem[(32 * _1928) + _529 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _4952) >> 32 + 224]) + 32 <= return_data.size
            mem[(32 * _1928) + _529 + (2 * ceil32(return_data.size)) + 224] = mem[(32 * _1928) + _529 + ceil32(return_data.size) + mem[(32 * _1928) + _529 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _4952) >> 32 + 224]
            _6846 = mem[(32 * _1928) + _529 + ceil32(return_data.size) + _6726 + 224]
            t = 0
            while t < 32 * _6846:
                mem[t + (32 * _1928) + _529 + (2 * ceil32(return_data.size)) + 256] = mem[t + (32 * _1928) + _529 + ceil32(return_data.size) + _6726 + 256]
                t = t + 32
                continue 
            mem[64] = (32 * _6846) + (32 * _1928) + _529 + (2 * ceil32(return_data.size)) + 256
            require mem[(32 * _1928) + _529 + (2 * ceil32(return_data.size)) + 224] - 1 < mem[(32 * _1928) + _529 + (2 * ceil32(return_data.size)) + 224]
            if mem[(32 * mem[(32 * _1928) + _529 + (2 * ceil32(return_data.size)) + 224] - 1) + (32 * _1928) + _529 + (2 * ceil32(return_data.size)) + 256] <= s:
                idx = idx + 1
                s = s
                continue 
            idx = idx + 1
            s = mem[(32 * mem[(32 * _1928) + _529 + (2 * ceil32(return_data.size)) + 224] - 1) + (32 * _1928) + _529 + (2 * ceil32(return_data.size)) + 256]
            continue 
        idx = 0
        t = 0
        while idx < 9:
            if not idx:
                mem[mem[64] + 4] = 1
                mem[mem[64] + 36] = 0
                mem[mem[64] + 68] = s
                require ext_code.size(0x27e611fd27b276acbd5ffd632e5eaebec9761e40)
                staticcall 0x27e611fd27b276acbd5ffd632e5eaebec9761e40.get_dy(int128 arg1, int128 arg2, uint256 arg3) with:
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
                staticcall 0x83e5f18da720119ff363cf63417628eb0e9fd523.get_dy(int128 arg1, int128 arg2, uint256 arg3) with:
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
                _1750 = mem[64]
                mem[mem[64]] = 4
                mem[64] = mem[64] + 160
                require 0 < mem[_1750]
                mem[_1750 + 32] = 0x8d11ec38a3eb5e956b052f67da8bdc9bef8abf
                require 1 < mem[_1750]
                mem[_1750 + 64] = 0x5cc61a78f164885776aa610fb0fe1257df78e59b
                require 2 < mem[_1750]
                mem[_1750 + 96] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c
                require 3 < mem[_1750]
                mem[_1750 + 128] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                mem[_1750 + 160] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_1750 + 164] = s
                mem[_1750 + 196] = 64
                mem[_1750 + 228] = mem[_1750]
                u = 0
                while u < 32 * mem[_1750]:
                    mem[u + _1750 + 260] = mem[u + _1750 + 32]
                    u = u + 32
                    continue 
                require ext_code.size(0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52)
                staticcall 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args s, 64, mem[_1750 + 228 len (32 * mem[_1750]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_1750 + 160 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _1750 + ceil32(return_data.size) + 160
                require return_data.size >= 32
                _5194 = mem[_1750 + 160 len 4], Mask(224, 32, s) >> 32
                require mem[_1750 + 160 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                require mem[_1750 + 160 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                require mem[_1750 + mem[_1750 + 160 len 4], Mask(224, 32, s) >> 32 + 160] <= 4294967296 and mem[_1750 + 160 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_1750 + mem[_1750 + 160 len 4], Mask(224, 32, s) >> 32 + 160]) + 32 <= return_data.size
                mem[_1750 + ceil32(return_data.size) + 160] = mem[_1750 + mem[_1750 + 160 len 4], Mask(224, 32, s) >> 32 + 160]
                _5468 = mem[_1750 + _5194 + 160]
                s = 0
                while s < 32 * _5468:
                    mem[s + _1750 + ceil32(return_data.size) + 192] = mem[s + _1750 + _5194 + 192]
                    s = s + 32
                    continue 
                mem[64] = (32 * _5468) + _1750 + ceil32(return_data.size) + 192
                require mem[_1750 + ceil32(return_data.size) + 160] - 1 < mem[_1750 + ceil32(return_data.size) + 160]
                if mem[(32 * mem[_1750 + ceil32(return_data.size) + 160] - 1) + _1750 + ceil32(return_data.size) + 192] <= t:
                    idx = idx + 1
                    t = t
                    continue 
                idx = idx + 1
                t = mem[(32 * mem[_1750 + ceil32(return_data.size) + 160] - 1) + _1750 + ceil32(return_data.size) + 192]
                continue 
            if 3 == idx:
                _2126 = mem[64]
                mem[mem[64]] = 3
                mem[64] = mem[64] + 128
                require 0 < mem[_2126]
                mem[_2126 + 32] = 0x8d11ec38a3eb5e956b052f67da8bdc9bef8abf
                require 1 < mem[_2126]
                mem[_2126 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c
                require 2 < mem[_2126]
                mem[_2126 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                mem[_2126 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_2126 + 132] = s
                mem[_2126 + 164] = 64
                mem[_2126 + 196] = mem[_2126]
                u = 0
                while u < 32 * mem[_2126]:
                    mem[u + _2126 + 228] = mem[u + _2126 + 32]
                    u = u + 32
                    continue 
                require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c)
                staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args s, 64, mem[_2126 + 196 len (32 * mem[_2126]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_2126 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _2126 + ceil32(return_data.size) + 128
                require return_data.size >= 32
                _5174 = mem[_2126 + 128 len 4], Mask(224, 32, s) >> 32
                require mem[_2126 + 128 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                require mem[_2126 + 128 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                require mem[_2126 + mem[_2126 + 128 len 4], Mask(224, 32, s) >> 32 + 128] <= 4294967296 and mem[_2126 + 128 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_2126 + mem[_2126 + 128 len 4], Mask(224, 32, s) >> 32 + 128]) + 32 <= return_data.size
                mem[_2126 + ceil32(return_data.size) + 128] = mem[_2126 + mem[_2126 + 128 len 4], Mask(224, 32, s) >> 32 + 128]
                _5458 = mem[_2126 + _5174 + 128]
                s = 0
                while s < 32 * _5458:
                    mem[s + _2126 + ceil32(return_data.size) + 160] = mem[s + _2126 + _5174 + 160]
                    s = s + 32
                    continue 
                mem[64] = (32 * _5458) + _2126 + ceil32(return_data.size) + 160
                require mem[_2126 + ceil32(return_data.size) + 128] - 1 < mem[_2126 + ceil32(return_data.size) + 128]
                if mem[(32 * mem[_2126 + ceil32(return_data.size) + 128] - 1) + _2126 + ceil32(return_data.size) + 160] <= t:
                    idx = idx + 1
                    t = t
                    continue 
                idx = idx + 1
                t = mem[(32 * mem[_2126 + ceil32(return_data.size) + 128] - 1) + _2126 + ceil32(return_data.size) + 160]
                continue 
            if 4 == idx:
                if 3 == idx:
                    _2279 = mem[64]
                    mem[mem[64]] = 3
                    mem[64] = mem[64] + 128
                    require 0 < mem[_2279]
                    mem[_2279 + 32] = 0x8d11ec38a3eb5e956b052f67da8bdc9bef8abf
                    require 1 < mem[_2279]
                    mem[_2279 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c
                    require 2 < mem[_2279]
                    mem[_2279 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    mem[_2279 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_2279 + 132] = s
                    mem[_2279 + 164] = 64
                    mem[_2279 + 196] = mem[_2279]
                    u = 0
                    while u < 32 * mem[_2279]:
                        mem[u + _2279 + 228] = mem[u + _2279 + 32]
                        u = u + 32
                        continue 
                    require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c)
                    staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args s, 64, mem[_2279 + 196 len (32 * mem[_2279]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_2279 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _2279 + ceil32(return_data.size) + 128
                    require return_data.size >= 32
                    _5192 = mem[_2279 + 128 len 4], Mask(224, 32, s) >> 32
                    require mem[_2279 + 128 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                    require mem[_2279 + 128 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                    require mem[_2279 + mem[_2279 + 128 len 4], Mask(224, 32, s) >> 32 + 128] <= 4294967296 and mem[_2279 + 128 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_2279 + mem[_2279 + 128 len 4], Mask(224, 32, s) >> 32 + 128]) + 32 <= return_data.size
                    mem[_2279 + ceil32(return_data.size) + 128] = mem[_2279 + mem[_2279 + 128 len 4], Mask(224, 32, s) >> 32 + 128]
                    _5467 = mem[_2279 + _5192 + 128]
                    s = 0
                    while s < 32 * _5467:
                        mem[s + _2279 + ceil32(return_data.size) + 160] = mem[s + _2279 + _5192 + 160]
                        s = s + 32
                        continue 
                    mem[64] = (32 * _5467) + _2279 + ceil32(return_data.size) + 160
                    require mem[_2279 + ceil32(return_data.size) + 128] - 1 < mem[_2279 + ceil32(return_data.size) + 128]
                    if mem[(32 * mem[_2279 + ceil32(return_data.size) + 128] - 1) + _2279 + ceil32(return_data.size) + 160] <= t:
                        idx = idx + 1
                        t = t
                        continue 
                    idx = idx + 1
                    t = mem[(32 * mem[_2279 + ceil32(return_data.size) + 128] - 1) + _2279 + ceil32(return_data.size) + 160]
                    continue 
                if idx != 4:
                    _2277 = mem[64]
                    mem[mem[64]] = 3
                    mem[64] = mem[64] + 128
                    require 0 < mem[_2277]
                    mem[_2277 + 32] = 0x8d11ec38a3eb5e956b052f67da8bdc9bef8abf
                    require 1 < mem[_2277]
                    mem[_2277 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c
                    require 2 < mem[_2277]
                    mem[_2277 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    mem[_2277 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_2277 + 132] = s
                    mem[_2277 + 164] = 64
                    mem[_2277 + 196] = mem[_2277]
                    u = 0
                    while u < 32 * mem[_2277]:
                        mem[u + _2277 + 228] = mem[u + _2277 + 32]
                        u = u + 32
                        continue 
                    require ext_code.size(0)
                    staticcall 0x0.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args s, 64, mem[_2277 + 196 len (32 * mem[_2277]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_2277 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _2277 + ceil32(return_data.size) + 128
                    require return_data.size >= 32
                    _5188 = mem[_2277 + 128 len 4], Mask(224, 32, s) >> 32
                    require mem[_2277 + 128 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                    require mem[_2277 + 128 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                    require mem[_2277 + mem[_2277 + 128 len 4], Mask(224, 32, s) >> 32 + 128] <= 4294967296 and mem[_2277 + 128 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_2277 + mem[_2277 + 128 len 4], Mask(224, 32, s) >> 32 + 128]) + 32 <= return_data.size
                    mem[_2277 + ceil32(return_data.size) + 128] = mem[_2277 + mem[_2277 + 128 len 4], Mask(224, 32, s) >> 32 + 128]
                    _5465 = mem[_2277 + _5188 + 128]
                    s = 0
                    while s < 32 * _5465:
                        mem[s + _2277 + ceil32(return_data.size) + 160] = mem[s + _2277 + _5188 + 160]
                        s = s + 32
                        continue 
                    mem[64] = (32 * _5465) + _2277 + ceil32(return_data.size) + 160
                    require mem[_2277 + ceil32(return_data.size) + 128] - 1 < mem[_2277 + ceil32(return_data.size) + 128]
                    if mem[(32 * mem[_2277 + ceil32(return_data.size) + 128] - 1) + _2277 + ceil32(return_data.size) + 160] <= t:
                        idx = idx + 1
                        t = t
                        continue 
                    idx = idx + 1
                    t = mem[(32 * mem[_2277 + ceil32(return_data.size) + 128] - 1) + _2277 + ceil32(return_data.size) + 160]
                    continue 
                _2412 = mem[64]
                mem[mem[64]] = 3
                mem[64] = mem[64] + 128
                require 0 < mem[_2412]
                mem[_2412 + 32] = 0x8d11ec38a3eb5e956b052f67da8bdc9bef8abf
                require 1 < mem[_2412]
                mem[_2412 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c
                require 2 < mem[_2412]
                mem[_2412 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                mem[_2412 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_2412 + 132] = s
                mem[_2412 + 164] = 64
                mem[_2412 + 196] = mem[_2412]
                u = 0
                while u < 32 * mem[_2412]:
                    mem[u + _2412 + 228] = mem[u + _2412 + 32]
                    u = u + 32
                    continue 
                require ext_code.size(0x53c153a0df7e050bbefbb70ee9632061f12795fb)
                staticcall 0x53c153a0df7e050bbefbb70ee9632061f12795fb.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args s, 64, mem[_2412 + 196 len (32 * mem[_2412]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_2412 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _2412 + ceil32(return_data.size) + 128
                require return_data.size >= 32
                _5190 = mem[_2412 + 128 len 4], Mask(224, 32, s) >> 32
                require mem[_2412 + 128 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                require mem[_2412 + 128 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                require mem[_2412 + mem[_2412 + 128 len 4], Mask(224, 32, s) >> 32 + 128] <= 4294967296 and mem[_2412 + 128 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_2412 + mem[_2412 + 128 len 4], Mask(224, 32, s) >> 32 + 128]) + 32 <= return_data.size
                mem[_2412 + ceil32(return_data.size) + 128] = mem[_2412 + mem[_2412 + 128 len 4], Mask(224, 32, s) >> 32 + 128]
                _5466 = mem[_2412 + _5190 + 128]
                s = 0
                while s < 32 * _5466:
                    mem[s + _2412 + ceil32(return_data.size) + 160] = mem[s + _2412 + _5190 + 160]
                    s = s + 32
                    continue 
                mem[64] = (32 * _5466) + _2412 + ceil32(return_data.size) + 160
                require mem[_2412 + ceil32(return_data.size) + 128] - 1 < mem[_2412 + ceil32(return_data.size) + 128]
                if mem[(32 * mem[_2412 + ceil32(return_data.size) + 128] - 1) + _2412 + ceil32(return_data.size) + 160] <= t:
                    idx = idx + 1
                    t = t
                    continue 
                idx = idx + 1
                t = mem[(32 * mem[_2412 + ceil32(return_data.size) + 128] - 1) + _2412 + ceil32(return_data.size) + 160]
                continue 
            if 5 == idx:
                _2545 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                require 0 < mem[_2545]
                mem[_2545 + 32] = 0x8d11ec38a3eb5e956b052f67da8bdc9bef8abf
                require 1 < mem[_2545]
                mem[_2545 + 64] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                mem[_2545 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_2545 + 100] = s
                mem[_2545 + 132] = 64
                mem[_2545 + 164] = mem[_2545]
                u = 0
                while u < 32 * mem[_2545]:
                    mem[u + _2545 + 196] = mem[u + _2545 + 32]
                    u = u + 32
                    continue 
                require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c)
                staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args s, 64, mem[_2545 + 164 len (32 * mem[_2545]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_2545 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _2545 + ceil32(return_data.size) + 96
                require return_data.size >= 32
                _5176 = mem[_2545 + 96 len 4], Mask(224, 32, s) >> 32
                require mem[_2545 + 96 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                require mem[_2545 + 96 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                require mem[_2545 + mem[_2545 + 96 len 4], Mask(224, 32, s) >> 32 + 96] <= 4294967296 and mem[_2545 + 96 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_2545 + mem[_2545 + 96 len 4], Mask(224, 32, s) >> 32 + 96]) + 32 <= return_data.size
                mem[_2545 + ceil32(return_data.size) + 96] = mem[_2545 + mem[_2545 + 96 len 4], Mask(224, 32, s) >> 32 + 96]
                _5459 = mem[_2545 + _5176 + 96]
                s = 0
                while s < 32 * _5459:
                    mem[s + _2545 + ceil32(return_data.size) + 128] = mem[s + _2545 + _5176 + 128]
                    s = s + 32
                    continue 
                mem[64] = (32 * _5459) + _2545 + ceil32(return_data.size) + 128
                require mem[_2545 + ceil32(return_data.size) + 96] - 1 < mem[_2545 + ceil32(return_data.size) + 96]
                if mem[(32 * mem[_2545 + ceil32(return_data.size) + 96] - 1) + _2545 + ceil32(return_data.size) + 128] <= t:
                    idx = idx + 1
                    t = t
                    continue 
                idx = idx + 1
                t = mem[(32 * mem[_2545 + ceil32(return_data.size) + 96] - 1) + _2545 + ceil32(return_data.size) + 128]
                continue 
            if 6 == idx:
                if 5 == idx:
                    _2715 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    require 0 < mem[_2715]
                    mem[_2715 + 32] = 0x8d11ec38a3eb5e956b052f67da8bdc9bef8abf
                    require 1 < mem[_2715]
                    mem[_2715 + 64] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    mem[_2715 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_2715 + 100] = s
                    mem[_2715 + 132] = 64
                    mem[_2715 + 164] = mem[_2715]
                    u = 0
                    while u < 32 * mem[_2715]:
                        mem[u + _2715 + 196] = mem[u + _2715 + 32]
                        u = u + 32
                        continue 
                    require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c)
                    staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args s, 64, mem[_2715 + 164 len (32 * mem[_2715]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_2715 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _2715 + ceil32(return_data.size) + 96
                    require return_data.size >= 32
                    _5186 = mem[_2715 + 96 len 4], Mask(224, 32, s) >> 32
                    require mem[_2715 + 96 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                    require mem[_2715 + 96 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                    require mem[_2715 + mem[_2715 + 96 len 4], Mask(224, 32, s) >> 32 + 96] <= 4294967296 and mem[_2715 + 96 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_2715 + mem[_2715 + 96 len 4], Mask(224, 32, s) >> 32 + 96]) + 32 <= return_data.size
                    mem[_2715 + ceil32(return_data.size) + 96] = mem[_2715 + mem[_2715 + 96 len 4], Mask(224, 32, s) >> 32 + 96]
                    _5464 = mem[_2715 + _5186 + 96]
                    s = 0
                    while s < 32 * _5464:
                        mem[s + _2715 + ceil32(return_data.size) + 128] = mem[s + _2715 + _5186 + 128]
                        s = s + 32
                        continue 
                    mem[64] = (32 * _5464) + _2715 + ceil32(return_data.size) + 128
                    require mem[_2715 + ceil32(return_data.size) + 96] - 1 < mem[_2715 + ceil32(return_data.size) + 96]
                    if mem[(32 * mem[_2715 + ceil32(return_data.size) + 96] - 1) + _2715 + ceil32(return_data.size) + 128] <= t:
                        idx = idx + 1
                        t = t
                        continue 
                    idx = idx + 1
                    t = mem[(32 * mem[_2715 + ceil32(return_data.size) + 96] - 1) + _2715 + ceil32(return_data.size) + 128]
                    continue 
                if idx != 6:
                    _2713 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    require 0 < mem[_2713]
                    mem[_2713 + 32] = 0x8d11ec38a3eb5e956b052f67da8bdc9bef8abf
                    require 1 < mem[_2713]
                    mem[_2713 + 64] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    mem[_2713 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_2713 + 100] = s
                    mem[_2713 + 132] = 64
                    mem[_2713 + 164] = mem[_2713]
                    u = 0
                    while u < 32 * mem[_2713]:
                        mem[u + _2713 + 196] = mem[u + _2713 + 32]
                        u = u + 32
                        continue 
                    require ext_code.size(0)
                    staticcall 0x0.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args s, 64, mem[_2713 + 164 len (32 * mem[_2713]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_2713 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _2713 + ceil32(return_data.size) + 96
                    require return_data.size >= 32
                    _5182 = mem[_2713 + 96 len 4], Mask(224, 32, s) >> 32
                    require mem[_2713 + 96 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                    require mem[_2713 + 96 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                    require mem[_2713 + mem[_2713 + 96 len 4], Mask(224, 32, s) >> 32 + 96] <= 4294967296 and mem[_2713 + 96 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_2713 + mem[_2713 + 96 len 4], Mask(224, 32, s) >> 32 + 96]) + 32 <= return_data.size
                    mem[_2713 + ceil32(return_data.size) + 96] = mem[_2713 + mem[_2713 + 96 len 4], Mask(224, 32, s) >> 32 + 96]
                    _5462 = mem[_2713 + _5182 + 96]
                    s = 0
                    while s < 32 * _5462:
                        mem[s + _2713 + ceil32(return_data.size) + 128] = mem[s + _2713 + _5182 + 128]
                        s = s + 32
                        continue 
                    mem[64] = (32 * _5462) + _2713 + ceil32(return_data.size) + 128
                    require mem[_2713 + ceil32(return_data.size) + 96] - 1 < mem[_2713 + ceil32(return_data.size) + 96]
                    if mem[(32 * mem[_2713 + ceil32(return_data.size) + 96] - 1) + _2713 + ceil32(return_data.size) + 128] <= t:
                        idx = idx + 1
                        t = t
                        continue 
                    idx = idx + 1
                    t = mem[(32 * mem[_2713 + ceil32(return_data.size) + 96] - 1) + _2713 + ceil32(return_data.size) + 128]
                    continue 
                _2899 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                require 0 < mem[_2899]
                mem[_2899 + 32] = 0x8d11ec38a3eb5e956b052f67da8bdc9bef8abf
                require 1 < mem[_2899]
                mem[_2899 + 64] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                mem[_2899 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_2899 + 100] = s
                mem[_2899 + 132] = 64
                mem[_2899 + 164] = mem[_2899]
                u = 0
                while u < 32 * mem[_2899]:
                    mem[u + _2899 + 196] = mem[u + _2899 + 32]
                    u = u + 32
                    continue 
                require ext_code.size(0x53c153a0df7e050bbefbb70ee9632061f12795fb)
                staticcall 0x53c153a0df7e050bbefbb70ee9632061f12795fb.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args s, 64, mem[_2899 + 164 len (32 * mem[_2899]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_2899 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _2899 + ceil32(return_data.size) + 96
                require return_data.size >= 32
                _5184 = mem[_2899 + 96 len 4], Mask(224, 32, s) >> 32
                require mem[_2899 + 96 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                require mem[_2899 + 96 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                require mem[_2899 + mem[_2899 + 96 len 4], Mask(224, 32, s) >> 32 + 96] <= 4294967296 and mem[_2899 + 96 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_2899 + mem[_2899 + 96 len 4], Mask(224, 32, s) >> 32 + 96]) + 32 <= return_data.size
                mem[_2899 + ceil32(return_data.size) + 96] = mem[_2899 + mem[_2899 + 96 len 4], Mask(224, 32, s) >> 32 + 96]
                _5463 = mem[_2899 + _5184 + 96]
                s = 0
                while s < 32 * _5463:
                    mem[s + _2899 + ceil32(return_data.size) + 128] = mem[s + _2899 + _5184 + 128]
                    s = s + 32
                    continue 
                mem[64] = (32 * _5463) + _2899 + ceil32(return_data.size) + 128
                require mem[_2899 + ceil32(return_data.size) + 96] - 1 < mem[_2899 + ceil32(return_data.size) + 96]
                if mem[(32 * mem[_2899 + ceil32(return_data.size) + 96] - 1) + _2899 + ceil32(return_data.size) + 128] <= t:
                    idx = idx + 1
                    t = t
                    continue 
                idx = idx + 1
                t = mem[(32 * mem[_2899 + ceil32(return_data.size) + 96] - 1) + _2899 + ceil32(return_data.size) + 128]
                continue 
            if idx != 7:
                if idx != 8:
                    if s <= t:
                        idx = idx + 1
                        t = t
                        continue 
                    idx = idx + 1
                    t = s
                    continue 
                mem[mem[64] + 4] = 0
                mem[mem[64] + 36] = 2
                mem[mem[64] + 68] = s
                require ext_code.size(0x952bda8a83c3d5f398a686bb4e8c6dd90072d523)
                staticcall 0x952bda8a83c3d5f398a686bb4e8c6dd90072d523.calculateSwap(uint8 arg1, uint8 arg2, uint256 arg3) with:
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
            _2709 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            require 0 < mem[_2709]
            mem[_2709 + 32] = 0x8d11ec38a3eb5e956b052f67da8bdc9bef8abf
            require 1 < mem[_2709]
            mem[_2709 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c
            mem[_2709 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[_2709 + 100] = s
            mem[_2709 + 132] = 64
            mem[_2709 + 164] = mem[_2709]
            u = 0
            while u < 32 * mem[_2709]:
                mem[u + _2709 + 196] = mem[u + _2709 + 32]
                u = u + 32
                continue 
            require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c)
            staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c.getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args s, 64, mem[_2709 + 164 len (32 * mem[_2709]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[_2709 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = _2709 + ceil32(return_data.size) + 96
            require return_data.size >= 32
            _5178 = mem[_2709 + 96 len 4], Mask(224, 32, s) >> 32
            require mem[_2709 + 96 len 4], Mask(224, 32, s) >> 32 <= 4294967296
            require mem[_2709 + 96 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
            require mem[_2709 + mem[_2709 + 96 len 4], Mask(224, 32, s) >> 32 + 96] <= 4294967296 and mem[_2709 + 96 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_2709 + mem[_2709 + 96 len 4], Mask(224, 32, s) >> 32 + 96]) + 32 <= return_data.size
            mem[_2709 + ceil32(return_data.size) + 96] = mem[_2709 + mem[_2709 + 96 len 4], Mask(224, 32, s) >> 32 + 96]
            _5460 = mem[_2709 + _5178 + 96]
            s = 0
            while s < 32 * _5460:
                mem[s + _2709 + ceil32(return_data.size) + 128] = mem[s + _2709 + _5178 + 128]
                s = s + 32
                continue 
            mem[64] = (32 * _5460) + _2709 + ceil32(return_data.size) + 128
            require mem[_2709 + ceil32(return_data.size) + 96] - 1 < mem[_2709 + ceil32(return_data.size) + 96]
            _6648 = mem[(32 * mem[_2709 + ceil32(return_data.size) + 96] - 1) + _2709 + ceil32(return_data.size) + 128]
            mem[(32 * _5460) + _2709 + ceil32(return_data.size) + 128] = 2
            mem[(32 * _5460) + _2709 + ceil32(return_data.size) + 160] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c
            mem[(32 * _5460) + _2709 + ceil32(return_data.size) + 192] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
            mem[(32 * _5460) + _2709 + ceil32(return_data.size) + 224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[(32 * _5460) + _2709 + ceil32(return_data.size) + 228] = _6648
            mem[(32 * _5460) + _2709 + ceil32(return_data.size) + 260] = 64
            mem[(32 * _5460) + _2709 + ceil32(return_data.size) + 292] = 2
            s = 0
            while s < 64:
                mem[s + (32 * _5460) + _2709 + ceil32(return_data.size) + 324] = mem[s + (32 * _5460) + _2709 + ceil32(return_data.size) + 160]
                s = s + 32
                continue 
            require ext_code.size(0x1b02da8cb0d097eb8d57a175b88c7d8b47997506)
            staticcall 0x1b02da8cb0d097eb8d57a175b88c7d8b47997506.getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args _6648, Array(len=2, data=mem[(32 * _5460) + _2709 + ceil32(return_data.size) + 324 len 64])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _5460) + _2709 + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * _5460) + _2709 + (2 * ceil32(return_data.size)) + 224
            require return_data.size >= 32
            _7166 = mem[(32 * _5460) + _2709 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _6648) >> 32
            require mem[(32 * _5460) + _2709 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _6648) >> 32 <= 4294967296
            require mem[(32 * _5460) + _2709 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _6648) >> 32 + 32 <= return_data.size
            require mem[(32 * _5460) + _2709 + ceil32(return_data.size) + mem[(32 * _5460) + _2709 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _6648) >> 32 + 224] <= 4294967296 and mem[(32 * _5460) + _2709 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _6648) >> 32 + (32 * mem[(32 * _5460) + _2709 + ceil32(return_data.size) + mem[(32 * _5460) + _2709 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _6648) >> 32 + 224]) + 32 <= return_data.size
            mem[(32 * _5460) + _2709 + (2 * ceil32(return_data.size)) + 224] = mem[(32 * _5460) + _2709 + ceil32(return_data.size) + mem[(32 * _5460) + _2709 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _6648) >> 32 + 224]
            _7206 = mem[(32 * _5460) + _2709 + ceil32(return_data.size) + _7166 + 224]
            s = 0
            while s < 32 * _7206:
                mem[s + (32 * _5460) + _2709 + (2 * ceil32(return_data.size)) + 256] = mem[s + (32 * _5460) + _2709 + ceil32(return_data.size) + _7166 + 256]
                s = s + 32
                continue 
            mem[64] = (32 * _7206) + (32 * _5460) + _2709 + (2 * ceil32(return_data.size)) + 256
            require mem[(32 * _5460) + _2709 + (2 * ceil32(return_data.size)) + 224] - 1 < mem[(32 * _5460) + _2709 + (2 * ceil32(return_data.size)) + 224]
            if mem[(32 * mem[(32 * _5460) + _2709 + (2 * ceil32(return_data.size)) + 224] - 1) + (32 * _5460) + _2709 + (2 * ceil32(return_data.size)) + 256] <= t:
                idx = idx + 1
                t = t
                continue 
            idx = idx + 1
            t = mem[(32 * mem[(32 * _5460) + _2709 + (2 * ceil32(return_data.size)) + 224] - 1) + (32 * _5460) + _2709 + (2 * ceil32(return_data.size)) + 256]
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
        while idx < 9:
            if not idx:
                mem[mem[64] + 4] = 1
                mem[mem[64] + 36] = 0
                mem[mem[64] + 68] = 10^6 * sub_7d0b6809
                require ext_code.size(0x27e611fd27b276acbd5ffd632e5eaebec9761e40)
                staticcall 0x27e611fd27b276acbd5ffd632e5eaebec9761e40.get_dy(int128 arg1, int128 arg2, uint256 arg3) with:
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
                staticcall 0x83e5f18da720119ff363cf63417628eb0e9fd523.get_dy(int128 arg1, int128 arg2, uint256 arg3) with:
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
                _118 = mem[64]
                mem[mem[64]] = 4
                mem[64] = mem[64] + 160
                require 0 < mem[_118]
                mem[_118 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                require 1 < mem[_118]
                mem[_118 + 64] = 0x5cc61a78f164885776aa610fb0fe1257df78e59b
                require 2 < mem[_118]
                mem[_118 + 96] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c
                require 3 < mem[_118]
                mem[_118 + 128] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                mem[_118 + 160] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_118 + 164] = 10^6 * sub_7d0b6809
                mem[_118 + 196] = 64
                mem[_118 + 228] = mem[_118]
                t = 0
                while t < 32 * mem[_118]:
                    mem[t + _118 + 260] = mem[t + _118 + 32]
                    t = t + 32
                    continue 
                require ext_code.size(0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52)
                staticcall 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args 10^6 * sub_7d0b6809, 64, mem[_118 + 228 len (32 * mem[_118]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_118 + 160 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _118 + ceil32(return_data.size) + 160
                require return_data.size >= 32
                _1606 = mem[_118 + 160 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32
                require mem[_118 + 160 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 <= 4294967296
                require mem[_118 + 160 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 32 <= return_data.size
                require mem[_118 + mem[_118 + 160 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 160] <= 4294967296 and mem[_118 + 160 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + (32 * mem[_118 + mem[_118 + 160 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 160]) + 32 <= return_data.size
                mem[_118 + ceil32(return_data.size) + 160] = mem[_118 + mem[_118 + 160 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 160]
                _1880 = mem[_118 + _1606 + 160]
                t = 0
                while t < 32 * _1880:
                    mem[t + _118 + ceil32(return_data.size) + 192] = mem[t + _118 + _1606 + 192]
                    t = t + 32
                    continue 
                mem[64] = (32 * _1880) + _118 + ceil32(return_data.size) + 192
                require mem[_118 + ceil32(return_data.size) + 160] - 1 < mem[_118 + ceil32(return_data.size) + 160]
                if mem[(32 * mem[_118 + ceil32(return_data.size) + 160] - 1) + _118 + ceil32(return_data.size) + 192] <= s:
                    idx = idx + 1
                    s = s
                    continue 
                idx = idx + 1
                s = mem[(32 * mem[_118 + ceil32(return_data.size) + 160] - 1) + _118 + ceil32(return_data.size) + 192]
                continue 
            if 3 == idx:
                _234 = mem[64]
                mem[mem[64]] = 3
                mem[64] = mem[64] + 128
                require 0 < mem[_234]
                mem[_234 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                require 1 < mem[_234]
                mem[_234 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c
                require 2 < mem[_234]
                mem[_234 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                mem[_234 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_234 + 132] = 10^6 * sub_7d0b6809
                mem[_234 + 164] = 64
                mem[_234 + 196] = mem[_234]
                t = 0
                while t < 32 * mem[_234]:
                    mem[t + _234 + 228] = mem[t + _234 + 32]
                    t = t + 32
                    continue 
                require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c)
                staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args 10^6 * sub_7d0b6809, 64, mem[_234 + 196 len (32 * mem[_234]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_234 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _234 + ceil32(return_data.size) + 128
                require return_data.size >= 32
                _1586 = mem[_234 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32
                require mem[_234 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 <= 4294967296
                require mem[_234 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 32 <= return_data.size
                require mem[_234 + mem[_234 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 128] <= 4294967296 and mem[_234 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + (32 * mem[_234 + mem[_234 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 128]) + 32 <= return_data.size
                mem[_234 + ceil32(return_data.size) + 128] = mem[_234 + mem[_234 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 128]
                _1870 = mem[_234 + _1586 + 128]
                t = 0
                while t < 32 * _1870:
                    mem[t + _234 + ceil32(return_data.size) + 160] = mem[t + _234 + _1586 + 160]
                    t = t + 32
                    continue 
                mem[64] = (32 * _1870) + _234 + ceil32(return_data.size) + 160
                require mem[_234 + ceil32(return_data.size) + 128] - 1 < mem[_234 + ceil32(return_data.size) + 128]
                if mem[(32 * mem[_234 + ceil32(return_data.size) + 128] - 1) + _234 + ceil32(return_data.size) + 160] <= s:
                    idx = idx + 1
                    s = s
                    continue 
                idx = idx + 1
                s = mem[(32 * mem[_234 + ceil32(return_data.size) + 128] - 1) + _234 + ceil32(return_data.size) + 160]
                continue 
            if 4 == idx:
                if 3 == idx:
                    _271 = mem[64]
                    mem[mem[64]] = 3
                    mem[64] = mem[64] + 128
                    require 0 < mem[_271]
                    mem[_271 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    require 1 < mem[_271]
                    mem[_271 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c
                    require 2 < mem[_271]
                    mem[_271 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    mem[_271 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_271 + 132] = 10^6 * sub_7d0b6809
                    mem[_271 + 164] = 64
                    mem[_271 + 196] = mem[_271]
                    t = 0
                    while t < 32 * mem[_271]:
                        mem[t + _271 + 228] = mem[t + _271 + 32]
                        t = t + 32
                        continue 
                    require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c)
                    staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args 10^6 * sub_7d0b6809, 64, mem[_271 + 196 len (32 * mem[_271]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_271 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _271 + ceil32(return_data.size) + 128
                    require return_data.size >= 32
                    _1604 = mem[_271 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32
                    require mem[_271 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 <= 4294967296
                    require mem[_271 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 32 <= return_data.size
                    require mem[_271 + mem[_271 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 128] <= 4294967296 and mem[_271 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + (32 * mem[_271 + mem[_271 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 128]) + 32 <= return_data.size
                    mem[_271 + ceil32(return_data.size) + 128] = mem[_271 + mem[_271 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 128]
                    _1879 = mem[_271 + _1604 + 128]
                    t = 0
                    while t < 32 * _1879:
                        mem[t + _271 + ceil32(return_data.size) + 160] = mem[t + _271 + _1604 + 160]
                        t = t + 32
                        continue 
                    mem[64] = (32 * _1879) + _271 + ceil32(return_data.size) + 160
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
                    mem[_269 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c
                    require 2 < mem[_269]
                    mem[_269 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    mem[_269 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_269 + 132] = 10^6 * sub_7d0b6809
                    mem[_269 + 164] = 64
                    mem[_269 + 196] = mem[_269]
                    t = 0
                    while t < 32 * mem[_269]:
                        mem[t + _269 + 228] = mem[t + _269 + 32]
                        t = t + 32
                        continue 
                    require ext_code.size(0)
                    staticcall 0x0.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args 10^6 * sub_7d0b6809, 64, mem[_269 + 196 len (32 * mem[_269]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_269 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _269 + ceil32(return_data.size) + 128
                    require return_data.size >= 32
                    _1600 = mem[_269 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32
                    require mem[_269 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 <= 4294967296
                    require mem[_269 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 32 <= return_data.size
                    require mem[_269 + mem[_269 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 128] <= 4294967296 and mem[_269 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + (32 * mem[_269 + mem[_269 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 128]) + 32 <= return_data.size
                    mem[_269 + ceil32(return_data.size) + 128] = mem[_269 + mem[_269 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 128]
                    _1877 = mem[_269 + _1600 + 128]
                    t = 0
                    while t < 32 * _1877:
                        mem[t + _269 + ceil32(return_data.size) + 160] = mem[t + _269 + _1600 + 160]
                        t = t + 32
                        continue 
                    mem[64] = (32 * _1877) + _269 + ceil32(return_data.size) + 160
                    require mem[_269 + ceil32(return_data.size) + 128] - 1 < mem[_269 + ceil32(return_data.size) + 128]
                    if mem[(32 * mem[_269 + ceil32(return_data.size) + 128] - 1) + _269 + ceil32(return_data.size) + 160] <= s:
                        idx = idx + 1
                        s = s
                        continue 
                    idx = idx + 1
                    s = mem[(32 * mem[_269 + ceil32(return_data.size) + 128] - 1) + _269 + ceil32(return_data.size) + 160]
                    continue 
                _324 = mem[64]
                mem[mem[64]] = 3
                mem[64] = mem[64] + 128
                require 0 < mem[_324]
                mem[_324 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                require 1 < mem[_324]
                mem[_324 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c
                require 2 < mem[_324]
                mem[_324 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                mem[_324 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_324 + 132] = 10^6 * sub_7d0b6809
                mem[_324 + 164] = 64
                mem[_324 + 196] = mem[_324]
                t = 0
                while t < 32 * mem[_324]:
                    mem[t + _324 + 228] = mem[t + _324 + 32]
                    t = t + 32
                    continue 
                require ext_code.size(0x53c153a0df7e050bbefbb70ee9632061f12795fb)
                staticcall 0x53c153a0df7e050bbefbb70ee9632061f12795fb.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args 10^6 * sub_7d0b6809, 64, mem[_324 + 196 len (32 * mem[_324]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_324 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _324 + ceil32(return_data.size) + 128
                require return_data.size >= 32
                _1602 = mem[_324 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32
                require mem[_324 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 <= 4294967296
                require mem[_324 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 32 <= return_data.size
                require mem[_324 + mem[_324 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 128] <= 4294967296 and mem[_324 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + (32 * mem[_324 + mem[_324 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 128]) + 32 <= return_data.size
                mem[_324 + ceil32(return_data.size) + 128] = mem[_324 + mem[_324 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 128]
                _1878 = mem[_324 + _1602 + 128]
                t = 0
                while t < 32 * _1878:
                    mem[t + _324 + ceil32(return_data.size) + 160] = mem[t + _324 + _1602 + 160]
                    t = t + 32
                    continue 
                mem[64] = (32 * _1878) + _324 + ceil32(return_data.size) + 160
                require mem[_324 + ceil32(return_data.size) + 128] - 1 < mem[_324 + ceil32(return_data.size) + 128]
                if mem[(32 * mem[_324 + ceil32(return_data.size) + 128] - 1) + _324 + ceil32(return_data.size) + 160] <= s:
                    idx = idx + 1
                    s = s
                    continue 
                idx = idx + 1
                s = mem[(32 * mem[_324 + ceil32(return_data.size) + 128] - 1) + _324 + ceil32(return_data.size) + 160]
                continue 
            if 5 == idx:
                _403 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                require 0 < mem[_403]
                mem[_403 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                require 1 < mem[_403]
                mem[_403 + 64] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                mem[_403 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_403 + 100] = 10^6 * sub_7d0b6809
                mem[_403 + 132] = 64
                mem[_403 + 164] = mem[_403]
                t = 0
                while t < 32 * mem[_403]:
                    mem[t + _403 + 196] = mem[t + _403 + 32]
                    t = t + 32
                    continue 
                require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c)
                staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args 10^6 * sub_7d0b6809, 64, mem[_403 + 164 len (32 * mem[_403]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_403 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _403 + ceil32(return_data.size) + 96
                require return_data.size >= 32
                _1588 = mem[_403 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32
                require mem[_403 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 <= 4294967296
                require mem[_403 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 32 <= return_data.size
                require mem[_403 + mem[_403 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 96] <= 4294967296 and mem[_403 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + (32 * mem[_403 + mem[_403 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 96]) + 32 <= return_data.size
                mem[_403 + ceil32(return_data.size) + 96] = mem[_403 + mem[_403 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 96]
                _1871 = mem[_403 + _1588 + 96]
                t = 0
                while t < 32 * _1871:
                    mem[t + _403 + ceil32(return_data.size) + 128] = mem[t + _403 + _1588 + 128]
                    t = t + 32
                    continue 
                mem[64] = (32 * _1871) + _403 + ceil32(return_data.size) + 128
                require mem[_403 + ceil32(return_data.size) + 96] - 1 < mem[_403 + ceil32(return_data.size) + 96]
                if mem[(32 * mem[_403 + ceil32(return_data.size) + 96] - 1) + _403 + ceil32(return_data.size) + 128] <= s:
                    idx = idx + 1
                    s = s
                    continue 
                idx = idx + 1
                s = mem[(32 * mem[_403 + ceil32(return_data.size) + 96] - 1) + _403 + ceil32(return_data.size) + 128]
                continue 
            if 6 == idx:
                if 5 == idx:
                    _483 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    require 0 < mem[_483]
                    mem[_483 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    require 1 < mem[_483]
                    mem[_483 + 64] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    mem[_483 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_483 + 100] = 10^6 * sub_7d0b6809
                    mem[_483 + 132] = 64
                    mem[_483 + 164] = mem[_483]
                    t = 0
                    while t < 32 * mem[_483]:
                        mem[t + _483 + 196] = mem[t + _483 + 32]
                        t = t + 32
                        continue 
                    require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c)
                    staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args 10^6 * sub_7d0b6809, 64, mem[_483 + 164 len (32 * mem[_483]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_483 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _483 + ceil32(return_data.size) + 96
                    require return_data.size >= 32
                    _1598 = mem[_483 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32
                    require mem[_483 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 <= 4294967296
                    require mem[_483 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 32 <= return_data.size
                    require mem[_483 + mem[_483 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 96] <= 4294967296 and mem[_483 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + (32 * mem[_483 + mem[_483 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 96]) + 32 <= return_data.size
                    mem[_483 + ceil32(return_data.size) + 96] = mem[_483 + mem[_483 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 96]
                    _1876 = mem[_483 + _1598 + 96]
                    t = 0
                    while t < 32 * _1876:
                        mem[t + _483 + ceil32(return_data.size) + 128] = mem[t + _483 + _1598 + 128]
                        t = t + 32
                        continue 
                    mem[64] = (32 * _1876) + _483 + ceil32(return_data.size) + 128
                    require mem[_483 + ceil32(return_data.size) + 96] - 1 < mem[_483 + ceil32(return_data.size) + 96]
                    if mem[(32 * mem[_483 + ceil32(return_data.size) + 96] - 1) + _483 + ceil32(return_data.size) + 128] <= s:
                        idx = idx + 1
                        s = s
                        continue 
                    idx = idx + 1
                    s = mem[(32 * mem[_483 + ceil32(return_data.size) + 96] - 1) + _483 + ceil32(return_data.size) + 128]
                    continue 
                if idx != 6:
                    _481 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    require 0 < mem[_481]
                    mem[_481 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    require 1 < mem[_481]
                    mem[_481 + 64] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    mem[_481 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_481 + 100] = 10^6 * sub_7d0b6809
                    mem[_481 + 132] = 64
                    mem[_481 + 164] = mem[_481]
                    t = 0
                    while t < 32 * mem[_481]:
                        mem[t + _481 + 196] = mem[t + _481 + 32]
                        t = t + 32
                        continue 
                    require ext_code.size(0)
                    staticcall 0x0.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args 10^6 * sub_7d0b6809, 64, mem[_481 + 164 len (32 * mem[_481]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_481 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _481 + ceil32(return_data.size) + 96
                    require return_data.size >= 32
                    _1594 = mem[_481 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32
                    require mem[_481 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 <= 4294967296
                    require mem[_481 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 32 <= return_data.size
                    require mem[_481 + mem[_481 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 96] <= 4294967296 and mem[_481 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + (32 * mem[_481 + mem[_481 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 96]) + 32 <= return_data.size
                    mem[_481 + ceil32(return_data.size) + 96] = mem[_481 + mem[_481 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 96]
                    _1874 = mem[_481 + _1594 + 96]
                    t = 0
                    while t < 32 * _1874:
                        mem[t + _481 + ceil32(return_data.size) + 128] = mem[t + _481 + _1594 + 128]
                        t = t + 32
                        continue 
                    mem[64] = (32 * _1874) + _481 + ceil32(return_data.size) + 128
                    require mem[_481 + ceil32(return_data.size) + 96] - 1 < mem[_481 + ceil32(return_data.size) + 96]
                    if mem[(32 * mem[_481 + ceil32(return_data.size) + 96] - 1) + _481 + ceil32(return_data.size) + 128] <= s:
                        idx = idx + 1
                        s = s
                        continue 
                    idx = idx + 1
                    s = mem[(32 * mem[_481 + ceil32(return_data.size) + 96] - 1) + _481 + ceil32(return_data.size) + 128]
                    continue 
                _589 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                require 0 < mem[_589]
                mem[_589 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                require 1 < mem[_589]
                mem[_589 + 64] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                mem[_589 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_589 + 100] = 10^6 * sub_7d0b6809
                mem[_589 + 132] = 64
                mem[_589 + 164] = mem[_589]
                t = 0
                while t < 32 * mem[_589]:
                    mem[t + _589 + 196] = mem[t + _589 + 32]
                    t = t + 32
                    continue 
                require ext_code.size(0x53c153a0df7e050bbefbb70ee9632061f12795fb)
                staticcall 0x53c153a0df7e050bbefbb70ee9632061f12795fb.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args 10^6 * sub_7d0b6809, 64, mem[_589 + 164 len (32 * mem[_589]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_589 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _589 + ceil32(return_data.size) + 96
                require return_data.size >= 32
                _1596 = mem[_589 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32
                require mem[_589 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 <= 4294967296
                require mem[_589 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 32 <= return_data.size
                require mem[_589 + mem[_589 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 96] <= 4294967296 and mem[_589 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + (32 * mem[_589 + mem[_589 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 96]) + 32 <= return_data.size
                mem[_589 + ceil32(return_data.size) + 96] = mem[_589 + mem[_589 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 96]
                _1875 = mem[_589 + _1596 + 96]
                t = 0
                while t < 32 * _1875:
                    mem[t + _589 + ceil32(return_data.size) + 128] = mem[t + _589 + _1596 + 128]
                    t = t + 32
                    continue 
                mem[64] = (32 * _1875) + _589 + ceil32(return_data.size) + 128
                require mem[_589 + ceil32(return_data.size) + 96] - 1 < mem[_589 + ceil32(return_data.size) + 96]
                if mem[(32 * mem[_589 + ceil32(return_data.size) + 96] - 1) + _589 + ceil32(return_data.size) + 128] <= s:
                    idx = idx + 1
                    s = s
                    continue 
                idx = idx + 1
                s = mem[(32 * mem[_589 + ceil32(return_data.size) + 96] - 1) + _589 + ceil32(return_data.size) + 128]
                continue 
            if idx != 7:
                if idx != 8:
                    if 10^6 * sub_7d0b6809 <= s:
                        idx = idx + 1
                        s = s
                        continue 
                    idx = idx + 1
                    s = 10^6 * sub_7d0b6809
                    continue 
                mem[mem[64] + 4] = 0
                mem[mem[64] + 36] = 2
                mem[mem[64] + 68] = 10^6 * sub_7d0b6809
                require ext_code.size(0x952bda8a83c3d5f398a686bb4e8c6dd90072d523)
                staticcall 0x952bda8a83c3d5f398a686bb4e8c6dd90072d523.calculateSwap(uint8 arg1, uint8 arg2, uint256 arg3) with:
                        gas gas_remaining wei
                       args 0, 2, 10^6 * sub_7d0b6809
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
            _477 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            require 0 < mem[_477]
            mem[_477 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
            require 1 < mem[_477]
            mem[_477 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c
            mem[_477 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[_477 + 100] = 10^6 * sub_7d0b6809
            mem[_477 + 132] = 64
            mem[_477 + 164] = mem[_477]
            t = 0
            while t < 32 * mem[_477]:
                mem[t + _477 + 196] = mem[t + _477 + 32]
                t = t + 32
                continue 
            require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c)
            staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c.getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args 10^6 * sub_7d0b6809, 64, mem[_477 + 164 len (32 * mem[_477]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[_477 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = _477 + ceil32(return_data.size) + 96
            require return_data.size >= 32
            _1590 = mem[_477 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32
            require mem[_477 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 <= 4294967296
            require mem[_477 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 32 <= return_data.size
            require mem[_477 + mem[_477 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 96] <= 4294967296 and mem[_477 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + (32 * mem[_477 + mem[_477 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 96]) + 32 <= return_data.size
            mem[_477 + ceil32(return_data.size) + 96] = mem[_477 + mem[_477 + 96 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 96]
            _1872 = mem[_477 + _1590 + 96]
            t = 0
            while t < 32 * _1872:
                mem[t + _477 + ceil32(return_data.size) + 128] = mem[t + _477 + _1590 + 128]
                t = t + 32
                continue 
            mem[64] = (32 * _1872) + _477 + ceil32(return_data.size) + 128
            require mem[_477 + ceil32(return_data.size) + 96] - 1 < mem[_477 + ceil32(return_data.size) + 96]
            _4928 = mem[(32 * mem[_477 + ceil32(return_data.size) + 96] - 1) + _477 + ceil32(return_data.size) + 128]
            mem[(32 * _1872) + _477 + ceil32(return_data.size) + 128] = 2
            mem[(32 * _1872) + _477 + ceil32(return_data.size) + 160] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c
            mem[(32 * _1872) + _477 + ceil32(return_data.size) + 192] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
            mem[(32 * _1872) + _477 + ceil32(return_data.size) + 224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[(32 * _1872) + _477 + ceil32(return_data.size) + 228] = _4928
            mem[(32 * _1872) + _477 + ceil32(return_data.size) + 260] = 64
            mem[(32 * _1872) + _477 + ceil32(return_data.size) + 292] = 2
            t = 0
            while t < 64:
                mem[t + (32 * _1872) + _477 + ceil32(return_data.size) + 324] = mem[t + (32 * _1872) + _477 + ceil32(return_data.size) + 160]
                t = t + 32
                continue 
            require ext_code.size(0x1b02da8cb0d097eb8d57a175b88c7d8b47997506)
            staticcall 0x1b02da8cb0d097eb8d57a175b88c7d8b47997506.getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args _4928, Array(len=2, data=mem[(32 * _1872) + _477 + ceil32(return_data.size) + 324 len 64])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _1872) + _477 + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * _1872) + _477 + (2 * ceil32(return_data.size)) + 224
            require return_data.size >= 32
            _6718 = mem[(32 * _1872) + _477 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _4928) >> 32
            require mem[(32 * _1872) + _477 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _4928) >> 32 <= 4294967296
            require mem[(32 * _1872) + _477 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _4928) >> 32 + 32 <= return_data.size
            require mem[(32 * _1872) + _477 + ceil32(return_data.size) + mem[(32 * _1872) + _477 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _4928) >> 32 + 224] <= 4294967296 and mem[(32 * _1872) + _477 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _4928) >> 32 + (32 * mem[(32 * _1872) + _477 + ceil32(return_data.size) + mem[(32 * _1872) + _477 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _4928) >> 32 + 224]) + 32 <= return_data.size
            mem[(32 * _1872) + _477 + (2 * ceil32(return_data.size)) + 224] = mem[(32 * _1872) + _477 + ceil32(return_data.size) + mem[(32 * _1872) + _477 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _4928) >> 32 + 224]
            _6818 = mem[(32 * _1872) + _477 + ceil32(return_data.size) + _6718 + 224]
            t = 0
            while t < 32 * _6818:
                mem[t + (32 * _1872) + _477 + (2 * ceil32(return_data.size)) + 256] = mem[t + (32 * _1872) + _477 + ceil32(return_data.size) + _6718 + 256]
                t = t + 32
                continue 
            mem[64] = (32 * _6818) + (32 * _1872) + _477 + (2 * ceil32(return_data.size)) + 256
            require mem[(32 * _1872) + _477 + (2 * ceil32(return_data.size)) + 224] - 1 < mem[(32 * _1872) + _477 + (2 * ceil32(return_data.size)) + 224]
            if mem[(32 * mem[(32 * _1872) + _477 + (2 * ceil32(return_data.size)) + 224] - 1) + (32 * _1872) + _477 + (2 * ceil32(return_data.size)) + 256] <= s:
                idx = idx + 1
                s = s
                continue 
            idx = idx + 1
            s = mem[(32 * mem[(32 * _1872) + _477 + (2 * ceil32(return_data.size)) + 224] - 1) + (32 * _1872) + _477 + (2 * ceil32(return_data.size)) + 256]
            continue 
        idx = 0
        t = 0
        while idx < 9:
            if not idx:
                mem[mem[64] + 4] = 1
                mem[mem[64] + 36] = 0
                mem[mem[64] + 68] = s
                require ext_code.size(0x27e611fd27b276acbd5ffd632e5eaebec9761e40)
                staticcall 0x27e611fd27b276acbd5ffd632e5eaebec9761e40.get_dy(int128 arg1, int128 arg2, uint256 arg3) with:
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
                staticcall 0x83e5f18da720119ff363cf63417628eb0e9fd523.get_dy(int128 arg1, int128 arg2, uint256 arg3) with:
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
                _1718 = mem[64]
                mem[mem[64]] = 4
                mem[64] = mem[64] + 160
                require 0 < mem[_1718]
                mem[_1718 + 32] = 0x8d11ec38a3eb5e956b052f67da8bdc9bef8abf
                require 1 < mem[_1718]
                mem[_1718 + 64] = 0x5cc61a78f164885776aa610fb0fe1257df78e59b
                require 2 < mem[_1718]
                mem[_1718 + 96] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c
                require 3 < mem[_1718]
                mem[_1718 + 128] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                mem[_1718 + 160] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_1718 + 164] = s
                mem[_1718 + 196] = 64
                mem[_1718 + 228] = mem[_1718]
                u = 0
                while u < 32 * mem[_1718]:
                    mem[u + _1718 + 260] = mem[u + _1718 + 32]
                    u = u + 32
                    continue 
                require ext_code.size(0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52)
                staticcall 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args s, 64, mem[_1718 + 228 len (32 * mem[_1718]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_1718 + 160 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _1718 + ceil32(return_data.size) + 160
                require return_data.size >= 32
                _5098 = mem[_1718 + 160 len 4], Mask(224, 32, s) >> 32
                require mem[_1718 + 160 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                require mem[_1718 + 160 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                require mem[_1718 + mem[_1718 + 160 len 4], Mask(224, 32, s) >> 32 + 160] <= 4294967296 and mem[_1718 + 160 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_1718 + mem[_1718 + 160 len 4], Mask(224, 32, s) >> 32 + 160]) + 32 <= return_data.size
                mem[_1718 + ceil32(return_data.size) + 160] = mem[_1718 + mem[_1718 + 160 len 4], Mask(224, 32, s) >> 32 + 160]
                _5408 = mem[_1718 + _5098 + 160]
                s = 0
                while s < 32 * _5408:
                    mem[s + _1718 + ceil32(return_data.size) + 192] = mem[s + _1718 + _5098 + 192]
                    s = s + 32
                    continue 
                mem[64] = (32 * _5408) + _1718 + ceil32(return_data.size) + 192
                require mem[_1718 + ceil32(return_data.size) + 160] - 1 < mem[_1718 + ceil32(return_data.size) + 160]
                if mem[(32 * mem[_1718 + ceil32(return_data.size) + 160] - 1) + _1718 + ceil32(return_data.size) + 192] <= t:
                    idx = idx + 1
                    t = t
                    continue 
                idx = idx + 1
                t = mem[(32 * mem[_1718 + ceil32(return_data.size) + 160] - 1) + _1718 + ceil32(return_data.size) + 192]
                continue 
            if 3 == idx:
                _2038 = mem[64]
                mem[mem[64]] = 3
                mem[64] = mem[64] + 128
                require 0 < mem[_2038]
                mem[_2038 + 32] = 0x8d11ec38a3eb5e956b052f67da8bdc9bef8abf
                require 1 < mem[_2038]
                mem[_2038 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c
                require 2 < mem[_2038]
                mem[_2038 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                mem[_2038 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_2038 + 132] = s
                mem[_2038 + 164] = 64
                mem[_2038 + 196] = mem[_2038]
                u = 0
                while u < 32 * mem[_2038]:
                    mem[u + _2038 + 228] = mem[u + _2038 + 32]
                    u = u + 32
                    continue 
                require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c)
                staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args s, 64, mem[_2038 + 196 len (32 * mem[_2038]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_2038 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _2038 + ceil32(return_data.size) + 128
                require return_data.size >= 32
                _5078 = mem[_2038 + 128 len 4], Mask(224, 32, s) >> 32
                require mem[_2038 + 128 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                require mem[_2038 + 128 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                require mem[_2038 + mem[_2038 + 128 len 4], Mask(224, 32, s) >> 32 + 128] <= 4294967296 and mem[_2038 + 128 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_2038 + mem[_2038 + 128 len 4], Mask(224, 32, s) >> 32 + 128]) + 32 <= return_data.size
                mem[_2038 + ceil32(return_data.size) + 128] = mem[_2038 + mem[_2038 + 128 len 4], Mask(224, 32, s) >> 32 + 128]
                _5398 = mem[_2038 + _5078 + 128]
                s = 0
                while s < 32 * _5398:
                    mem[s + _2038 + ceil32(return_data.size) + 160] = mem[s + _2038 + _5078 + 160]
                    s = s + 32
                    continue 
                mem[64] = (32 * _5398) + _2038 + ceil32(return_data.size) + 160
                require mem[_2038 + ceil32(return_data.size) + 128] - 1 < mem[_2038 + ceil32(return_data.size) + 128]
                if mem[(32 * mem[_2038 + ceil32(return_data.size) + 128] - 1) + _2038 + ceil32(return_data.size) + 160] <= t:
                    idx = idx + 1
                    t = t
                    continue 
                idx = idx + 1
                t = mem[(32 * mem[_2038 + ceil32(return_data.size) + 128] - 1) + _2038 + ceil32(return_data.size) + 160]
                continue 
            if 4 == idx:
                if 3 == idx:
                    _2219 = mem[64]
                    mem[mem[64]] = 3
                    mem[64] = mem[64] + 128
                    require 0 < mem[_2219]
                    mem[_2219 + 32] = 0x8d11ec38a3eb5e956b052f67da8bdc9bef8abf
                    require 1 < mem[_2219]
                    mem[_2219 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c
                    require 2 < mem[_2219]
                    mem[_2219 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    mem[_2219 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_2219 + 132] = s
                    mem[_2219 + 164] = 64
                    mem[_2219 + 196] = mem[_2219]
                    u = 0
                    while u < 32 * mem[_2219]:
                        mem[u + _2219 + 228] = mem[u + _2219 + 32]
                        u = u + 32
                        continue 
                    require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c)
                    staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args s, 64, mem[_2219 + 196 len (32 * mem[_2219]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_2219 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _2219 + ceil32(return_data.size) + 128
                    require return_data.size >= 32
                    _5096 = mem[_2219 + 128 len 4], Mask(224, 32, s) >> 32
                    require mem[_2219 + 128 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                    require mem[_2219 + 128 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                    require mem[_2219 + mem[_2219 + 128 len 4], Mask(224, 32, s) >> 32 + 128] <= 4294967296 and mem[_2219 + 128 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_2219 + mem[_2219 + 128 len 4], Mask(224, 32, s) >> 32 + 128]) + 32 <= return_data.size
                    mem[_2219 + ceil32(return_data.size) + 128] = mem[_2219 + mem[_2219 + 128 len 4], Mask(224, 32, s) >> 32 + 128]
                    _5407 = mem[_2219 + _5096 + 128]
                    s = 0
                    while s < 32 * _5407:
                        mem[s + _2219 + ceil32(return_data.size) + 160] = mem[s + _2219 + _5096 + 160]
                        s = s + 32
                        continue 
                    mem[64] = (32 * _5407) + _2219 + ceil32(return_data.size) + 160
                    require mem[_2219 + ceil32(return_data.size) + 128] - 1 < mem[_2219 + ceil32(return_data.size) + 128]
                    if mem[(32 * mem[_2219 + ceil32(return_data.size) + 128] - 1) + _2219 + ceil32(return_data.size) + 160] <= t:
                        idx = idx + 1
                        t = t
                        continue 
                    idx = idx + 1
                    t = mem[(32 * mem[_2219 + ceil32(return_data.size) + 128] - 1) + _2219 + ceil32(return_data.size) + 160]
                    continue 
                if idx != 4:
                    _2217 = mem[64]
                    mem[mem[64]] = 3
                    mem[64] = mem[64] + 128
                    require 0 < mem[_2217]
                    mem[_2217 + 32] = 0x8d11ec38a3eb5e956b052f67da8bdc9bef8abf
                    require 1 < mem[_2217]
                    mem[_2217 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c
                    require 2 < mem[_2217]
                    mem[_2217 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    mem[_2217 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_2217 + 132] = s
                    mem[_2217 + 164] = 64
                    mem[_2217 + 196] = mem[_2217]
                    u = 0
                    while u < 32 * mem[_2217]:
                        mem[u + _2217 + 228] = mem[u + _2217 + 32]
                        u = u + 32
                        continue 
                    require ext_code.size(0)
                    staticcall 0x0.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args s, 64, mem[_2217 + 196 len (32 * mem[_2217]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_2217 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _2217 + ceil32(return_data.size) + 128
                    require return_data.size >= 32
                    _5092 = mem[_2217 + 128 len 4], Mask(224, 32, s) >> 32
                    require mem[_2217 + 128 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                    require mem[_2217 + 128 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                    require mem[_2217 + mem[_2217 + 128 len 4], Mask(224, 32, s) >> 32 + 128] <= 4294967296 and mem[_2217 + 128 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_2217 + mem[_2217 + 128 len 4], Mask(224, 32, s) >> 32 + 128]) + 32 <= return_data.size
                    mem[_2217 + ceil32(return_data.size) + 128] = mem[_2217 + mem[_2217 + 128 len 4], Mask(224, 32, s) >> 32 + 128]
                    _5405 = mem[_2217 + _5092 + 128]
                    s = 0
                    while s < 32 * _5405:
                        mem[s + _2217 + ceil32(return_data.size) + 160] = mem[s + _2217 + _5092 + 160]
                        s = s + 32
                        continue 
                    mem[64] = (32 * _5405) + _2217 + ceil32(return_data.size) + 160
                    require mem[_2217 + ceil32(return_data.size) + 128] - 1 < mem[_2217 + ceil32(return_data.size) + 128]
                    if mem[(32 * mem[_2217 + ceil32(return_data.size) + 128] - 1) + _2217 + ceil32(return_data.size) + 160] <= t:
                        idx = idx + 1
                        t = t
                        continue 
                    idx = idx + 1
                    t = mem[(32 * mem[_2217 + ceil32(return_data.size) + 128] - 1) + _2217 + ceil32(return_data.size) + 160]
                    continue 
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
                require ext_code.size(0x53c153a0df7e050bbefbb70ee9632061f12795fb)
                staticcall 0x53c153a0df7e050bbefbb70ee9632061f12795fb.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args s, 64, mem[_2340 + 196 len (32 * mem[_2340]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_2340 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _2340 + ceil32(return_data.size) + 128
                require return_data.size >= 32
                _5094 = mem[_2340 + 128 len 4], Mask(224, 32, s) >> 32
                require mem[_2340 + 128 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                require mem[_2340 + 128 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                require mem[_2340 + mem[_2340 + 128 len 4], Mask(224, 32, s) >> 32 + 128] <= 4294967296 and mem[_2340 + 128 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_2340 + mem[_2340 + 128 len 4], Mask(224, 32, s) >> 32 + 128]) + 32 <= return_data.size
                mem[_2340 + ceil32(return_data.size) + 128] = mem[_2340 + mem[_2340 + 128 len 4], Mask(224, 32, s) >> 32 + 128]
                _5406 = mem[_2340 + _5094 + 128]
                s = 0
                while s < 32 * _5406:
                    mem[s + _2340 + ceil32(return_data.size) + 160] = mem[s + _2340 + _5094 + 160]
                    s = s + 32
                    continue 
                mem[64] = (32 * _5406) + _2340 + ceil32(return_data.size) + 160
                require mem[_2340 + ceil32(return_data.size) + 128] - 1 < mem[_2340 + ceil32(return_data.size) + 128]
                if mem[(32 * mem[_2340 + ceil32(return_data.size) + 128] - 1) + _2340 + ceil32(return_data.size) + 160] <= t:
                    idx = idx + 1
                    t = t
                    continue 
                idx = idx + 1
                t = mem[(32 * mem[_2340 + ceil32(return_data.size) + 128] - 1) + _2340 + ceil32(return_data.size) + 160]
                continue 
            if 5 == idx:
                _2481 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                require 0 < mem[_2481]
                mem[_2481 + 32] = 0x8d11ec38a3eb5e956b052f67da8bdc9bef8abf
                require 1 < mem[_2481]
                mem[_2481 + 64] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                mem[_2481 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_2481 + 100] = s
                mem[_2481 + 132] = 64
                mem[_2481 + 164] = mem[_2481]
                u = 0
                while u < 32 * mem[_2481]:
                    mem[u + _2481 + 196] = mem[u + _2481 + 32]
                    u = u + 32
                    continue 
                require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c)
                staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args s, 64, mem[_2481 + 164 len (32 * mem[_2481]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_2481 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _2481 + ceil32(return_data.size) + 96
                require return_data.size >= 32
                _5080 = mem[_2481 + 96 len 4], Mask(224, 32, s) >> 32
                require mem[_2481 + 96 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                require mem[_2481 + 96 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                require mem[_2481 + mem[_2481 + 96 len 4], Mask(224, 32, s) >> 32 + 96] <= 4294967296 and mem[_2481 + 96 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_2481 + mem[_2481 + 96 len 4], Mask(224, 32, s) >> 32 + 96]) + 32 <= return_data.size
                mem[_2481 + ceil32(return_data.size) + 96] = mem[_2481 + mem[_2481 + 96 len 4], Mask(224, 32, s) >> 32 + 96]
                _5399 = mem[_2481 + _5080 + 96]
                s = 0
                while s < 32 * _5399:
                    mem[s + _2481 + ceil32(return_data.size) + 128] = mem[s + _2481 + _5080 + 128]
                    s = s + 32
                    continue 
                mem[64] = (32 * _5399) + _2481 + ceil32(return_data.size) + 128
                require mem[_2481 + ceil32(return_data.size) + 96] - 1 < mem[_2481 + ceil32(return_data.size) + 96]
                if mem[(32 * mem[_2481 + ceil32(return_data.size) + 96] - 1) + _2481 + ceil32(return_data.size) + 128] <= t:
                    idx = idx + 1
                    t = t
                    continue 
                idx = idx + 1
                t = mem[(32 * mem[_2481 + ceil32(return_data.size) + 96] - 1) + _2481 + ceil32(return_data.size) + 128]
                continue 
            if 6 == idx:
                if 5 == idx:
                    _2615 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    require 0 < mem[_2615]
                    mem[_2615 + 32] = 0x8d11ec38a3eb5e956b052f67da8bdc9bef8abf
                    require 1 < mem[_2615]
                    mem[_2615 + 64] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    mem[_2615 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_2615 + 100] = s
                    mem[_2615 + 132] = 64
                    mem[_2615 + 164] = mem[_2615]
                    u = 0
                    while u < 32 * mem[_2615]:
                        mem[u + _2615 + 196] = mem[u + _2615 + 32]
                        u = u + 32
                        continue 
                    require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c)
                    staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args s, 64, mem[_2615 + 164 len (32 * mem[_2615]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_2615 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _2615 + ceil32(return_data.size) + 96
                    require return_data.size >= 32
                    _5090 = mem[_2615 + 96 len 4], Mask(224, 32, s) >> 32
                    require mem[_2615 + 96 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                    require mem[_2615 + 96 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                    require mem[_2615 + mem[_2615 + 96 len 4], Mask(224, 32, s) >> 32 + 96] <= 4294967296 and mem[_2615 + 96 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_2615 + mem[_2615 + 96 len 4], Mask(224, 32, s) >> 32 + 96]) + 32 <= return_data.size
                    mem[_2615 + ceil32(return_data.size) + 96] = mem[_2615 + mem[_2615 + 96 len 4], Mask(224, 32, s) >> 32 + 96]
                    _5404 = mem[_2615 + _5090 + 96]
                    s = 0
                    while s < 32 * _5404:
                        mem[s + _2615 + ceil32(return_data.size) + 128] = mem[s + _2615 + _5090 + 128]
                        s = s + 32
                        continue 
                    mem[64] = (32 * _5404) + _2615 + ceil32(return_data.size) + 128
                    require mem[_2615 + ceil32(return_data.size) + 96] - 1 < mem[_2615 + ceil32(return_data.size) + 96]
                    if mem[(32 * mem[_2615 + ceil32(return_data.size) + 96] - 1) + _2615 + ceil32(return_data.size) + 128] <= t:
                        idx = idx + 1
                        t = t
                        continue 
                    idx = idx + 1
                    t = mem[(32 * mem[_2615 + ceil32(return_data.size) + 96] - 1) + _2615 + ceil32(return_data.size) + 128]
                    continue 
                if idx != 6:
                    _2613 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    require 0 < mem[_2613]
                    mem[_2613 + 32] = 0x8d11ec38a3eb5e956b052f67da8bdc9bef8abf
                    require 1 < mem[_2613]
                    mem[_2613 + 64] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                    mem[_2613 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_2613 + 100] = s
                    mem[_2613 + 132] = 64
                    mem[_2613 + 164] = mem[_2613]
                    u = 0
                    while u < 32 * mem[_2613]:
                        mem[u + _2613 + 196] = mem[u + _2613 + 32]
                        u = u + 32
                        continue 
                    require ext_code.size(0)
                    staticcall 0x0.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args s, 64, mem[_2613 + 164 len (32 * mem[_2613]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_2613 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _2613 + ceil32(return_data.size) + 96
                    require return_data.size >= 32
                    _5086 = mem[_2613 + 96 len 4], Mask(224, 32, s) >> 32
                    require mem[_2613 + 96 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                    require mem[_2613 + 96 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                    require mem[_2613 + mem[_2613 + 96 len 4], Mask(224, 32, s) >> 32 + 96] <= 4294967296 and mem[_2613 + 96 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_2613 + mem[_2613 + 96 len 4], Mask(224, 32, s) >> 32 + 96]) + 32 <= return_data.size
                    mem[_2613 + ceil32(return_data.size) + 96] = mem[_2613 + mem[_2613 + 96 len 4], Mask(224, 32, s) >> 32 + 96]
                    _5402 = mem[_2613 + _5086 + 96]
                    s = 0
                    while s < 32 * _5402:
                        mem[s + _2613 + ceil32(return_data.size) + 128] = mem[s + _2613 + _5086 + 128]
                        s = s + 32
                        continue 
                    mem[64] = (32 * _5402) + _2613 + ceil32(return_data.size) + 128
                    require mem[_2613 + ceil32(return_data.size) + 96] - 1 < mem[_2613 + ceil32(return_data.size) + 96]
                    if mem[(32 * mem[_2613 + ceil32(return_data.size) + 96] - 1) + _2613 + ceil32(return_data.size) + 128] <= t:
                        idx = idx + 1
                        t = t
                        continue 
                    idx = idx + 1
                    t = mem[(32 * mem[_2613 + ceil32(return_data.size) + 96] - 1) + _2613 + ceil32(return_data.size) + 128]
                    continue 
                _2819 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                require 0 < mem[_2819]
                mem[_2819 + 32] = 0x8d11ec38a3eb5e956b052f67da8bdc9bef8abf
                require 1 < mem[_2819]
                mem[_2819 + 64] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
                mem[_2819 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_2819 + 100] = s
                mem[_2819 + 132] = 64
                mem[_2819 + 164] = mem[_2819]
                u = 0
                while u < 32 * mem[_2819]:
                    mem[u + _2819 + 196] = mem[u + _2819 + 32]
                    u = u + 32
                    continue 
                require ext_code.size(0x53c153a0df7e050bbefbb70ee9632061f12795fb)
                staticcall 0x53c153a0df7e050bbefbb70ee9632061f12795fb.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args s, 64, mem[_2819 + 164 len (32 * mem[_2819]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_2819 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _2819 + ceil32(return_data.size) + 96
                require return_data.size >= 32
                _5088 = mem[_2819 + 96 len 4], Mask(224, 32, s) >> 32
                require mem[_2819 + 96 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                require mem[_2819 + 96 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                require mem[_2819 + mem[_2819 + 96 len 4], Mask(224, 32, s) >> 32 + 96] <= 4294967296 and mem[_2819 + 96 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_2819 + mem[_2819 + 96 len 4], Mask(224, 32, s) >> 32 + 96]) + 32 <= return_data.size
                mem[_2819 + ceil32(return_data.size) + 96] = mem[_2819 + mem[_2819 + 96 len 4], Mask(224, 32, s) >> 32 + 96]
                _5403 = mem[_2819 + _5088 + 96]
                s = 0
                while s < 32 * _5403:
                    mem[s + _2819 + ceil32(return_data.size) + 128] = mem[s + _2819 + _5088 + 128]
                    s = s + 32
                    continue 
                mem[64] = (32 * _5403) + _2819 + ceil32(return_data.size) + 128
                require mem[_2819 + ceil32(return_data.size) + 96] - 1 < mem[_2819 + ceil32(return_data.size) + 96]
                if mem[(32 * mem[_2819 + ceil32(return_data.size) + 96] - 1) + _2819 + ceil32(return_data.size) + 128] <= t:
                    idx = idx + 1
                    t = t
                    continue 
                idx = idx + 1
                t = mem[(32 * mem[_2819 + ceil32(return_data.size) + 96] - 1) + _2819 + ceil32(return_data.size) + 128]
                continue 
            if idx != 7:
                if idx != 8:
                    if s <= t:
                        idx = idx + 1
                        t = t
                        continue 
                    idx = idx + 1
                    t = s
                    continue 
                mem[mem[64] + 4] = 0
                mem[mem[64] + 36] = 2
                mem[mem[64] + 68] = s
                require ext_code.size(0x952bda8a83c3d5f398a686bb4e8c6dd90072d523)
                staticcall 0x952bda8a83c3d5f398a686bb4e8c6dd90072d523.calculateSwap(uint8 arg1, uint8 arg2, uint256 arg3) with:
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
            _2609 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            require 0 < mem[_2609]
            mem[_2609 + 32] = 0x8d11ec38a3eb5e956b052f67da8bdc9bef8abf
            require 1 < mem[_2609]
            mem[_2609 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c
            mem[_2609 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[_2609 + 100] = s
            mem[_2609 + 132] = 64
            mem[_2609 + 164] = mem[_2609]
            u = 0
            while u < 32 * mem[_2609]:
                mem[u + _2609 + 196] = mem[u + _2609 + 32]
                u = u + 32
                continue 
            require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c)
            staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c.getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args s, 64, mem[_2609 + 164 len (32 * mem[_2609]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[_2609 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = _2609 + ceil32(return_data.size) + 96
            require return_data.size >= 32
            _5082 = mem[_2609 + 96 len 4], Mask(224, 32, s) >> 32
            require mem[_2609 + 96 len 4], Mask(224, 32, s) >> 32 <= 4294967296
            require mem[_2609 + 96 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
            require mem[_2609 + mem[_2609 + 96 len 4], Mask(224, 32, s) >> 32 + 96] <= 4294967296 and mem[_2609 + 96 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_2609 + mem[_2609 + 96 len 4], Mask(224, 32, s) >> 32 + 96]) + 32 <= return_data.size
            mem[_2609 + ceil32(return_data.size) + 96] = mem[_2609 + mem[_2609 + 96 len 4], Mask(224, 32, s) >> 32 + 96]
            _5400 = mem[_2609 + _5082 + 96]
            s = 0
            while s < 32 * _5400:
                mem[s + _2609 + ceil32(return_data.size) + 128] = mem[s + _2609 + _5082 + 128]
                s = s + 32
                continue 
            mem[64] = (32 * _5400) + _2609 + ceil32(return_data.size) + 128
            require mem[_2609 + ceil32(return_data.size) + 96] - 1 < mem[_2609 + ceil32(return_data.size) + 96]
            _6600 = mem[(32 * mem[_2609 + ceil32(return_data.size) + 96] - 1) + _2609 + ceil32(return_data.size) + 128]
            mem[(32 * _5400) + _2609 + ceil32(return_data.size) + 128] = 2
            mem[(32 * _5400) + _2609 + ceil32(return_data.size) + 160] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c
            mem[(32 * _5400) + _2609 + ceil32(return_data.size) + 192] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
            mem[(32 * _5400) + _2609 + ceil32(return_data.size) + 224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[(32 * _5400) + _2609 + ceil32(return_data.size) + 228] = _6600
            mem[(32 * _5400) + _2609 + ceil32(return_data.size) + 260] = 64
            mem[(32 * _5400) + _2609 + ceil32(return_data.size) + 292] = 2
            s = 0
            while s < 64:
                mem[s + (32 * _5400) + _2609 + ceil32(return_data.size) + 324] = mem[s + (32 * _5400) + _2609 + ceil32(return_data.size) + 160]
                s = s + 32
                continue 
            require ext_code.size(0x1b02da8cb0d097eb8d57a175b88c7d8b47997506)
            staticcall 0x1b02da8cb0d097eb8d57a175b88c7d8b47997506.getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args _6600, Array(len=2, data=mem[(32 * _5400) + _2609 + ceil32(return_data.size) + 324 len 64])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _5400) + _2609 + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * _5400) + _2609 + (2 * ceil32(return_data.size)) + 224
            require return_data.size >= 32
            _7150 = mem[(32 * _5400) + _2609 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _6600) >> 32
            require mem[(32 * _5400) + _2609 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _6600) >> 32 <= 4294967296
            require mem[(32 * _5400) + _2609 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _6600) >> 32 + 32 <= return_data.size
            require mem[(32 * _5400) + _2609 + ceil32(return_data.size) + mem[(32 * _5400) + _2609 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _6600) >> 32 + 224] <= 4294967296 and mem[(32 * _5400) + _2609 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _6600) >> 32 + (32 * mem[(32 * _5400) + _2609 + ceil32(return_data.size) + mem[(32 * _5400) + _2609 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _6600) >> 32 + 224]) + 32 <= return_data.size
            mem[(32 * _5400) + _2609 + (2 * ceil32(return_data.size)) + 224] = mem[(32 * _5400) + _2609 + ceil32(return_data.size) + mem[(32 * _5400) + _2609 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _6600) >> 32 + 224]
            _7198 = mem[(32 * _5400) + _2609 + ceil32(return_data.size) + _7150 + 224]
            s = 0
            while s < 32 * _7198:
                mem[s + (32 * _5400) + _2609 + (2 * ceil32(return_data.size)) + 256] = mem[s + (32 * _5400) + _2609 + ceil32(return_data.size) + _7150 + 256]
                s = s + 32
                continue 
            mem[64] = (32 * _7198) + (32 * _5400) + _2609 + (2 * ceil32(return_data.size)) + 256
            require mem[(32 * _5400) + _2609 + (2 * ceil32(return_data.size)) + 224] - 1 < mem[(32 * _5400) + _2609 + (2 * ceil32(return_data.size)) + 224]
            if mem[(32 * mem[(32 * _5400) + _2609 + (2 * ceil32(return_data.size)) + 224] - 1) + (32 * _5400) + _2609 + (2 * ceil32(return_data.size)) + 256] <= t:
                idx = idx + 1
                t = t
                continue 
            idx = idx + 1
            t = mem[(32 * mem[(32 * _5400) + _2609 + (2 * ceil32(return_data.size)) + 224] - 1) + (32 * _5400) + _2609 + (2 * ceil32(return_data.size)) + 256]
            continue 
    revert with 0, 'No profit possible'
}



}
