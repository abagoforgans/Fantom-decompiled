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
uint256 sub_2d727922;

function sub_1a45acc7(?) payable {
    return sub_1a45acc7
}

function sub_2d727922(?) payable {
    return sub_2d727922
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

function sub_9102b36a(?) payable {
    require calldata.size - 4 >= 32
    if governanceAddress != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    sub_2d727922 = arg1
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
            _440 = mem[0]
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
            require mem[_526 + ceil32(return_data.size) + 96] - 1 < mem[_526 + ceil32(return_data.size) + 96]
            _5029 = mem[(32 * mem[_526 + ceil32(return_data.size) + 96] - 1) + _526 + ceil32(return_data.size) + 128]
            mem[(32 * _1921) + _526 + ceil32(return_data.size) + 128] = 2
            mem[0] = _440
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
            _2556 = mem[0]
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
            mem[0] = _2556
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
    return 0, block.number, 0, 0, 0
}



}
