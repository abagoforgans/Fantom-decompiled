contract main {




// =====================  Runtime code  =====================


#
#  - executeOperation(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5)
#  - sub_6835f3b8(?)
#
address governanceAddress;
mapping of uint8 stor1;
uint256 maxBatch;
uint256 stor3; offset 32
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
    idx = 0
    s = 0
    while idx < 2:
        if not idx:
            mem[mem[64] + 4] = 0
            mem[mem[64] + 36] = 1
            mem[mem[64] + 68] = sub_7d0b6809
            require ext_code.size(0x3ef6a01a0f81d6046290f3e2a8c5b843e738e604)
            staticcall 0x3ef6a01a0f81d6046290f3e2a8c5b843e738e604.get_dy(int128 arg1, int128 arg2, uint256 arg3) with:
                    gas gas_remaining wei
                   args 0, 1, sub_7d0b6809
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
        if idx != 1:
            if sub_7d0b6809 <= s:
                idx = idx + 1
                s = s
                continue 
            idx = idx + 1
            s = sub_7d0b6809
            continue 
        _35 = mem[64]
        mem[mem[64]] = 2
        mem[64] = mem[64] + 96
        require 0 < mem[_35]
        mem[_35 + 32] = 0x321162cd933e2be498cd2267a90534a804051b
        require 1 < mem[_35]
        mem[_35 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
        mem[_35 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[_35 + 100] = sub_7d0b6809
        mem[_35 + 132] = 64
        mem[_35 + 164] = mem[_35]
        t = 0
        while t < 32 * mem[_35]:
            mem[t + _35 + 196] = mem[t + _35 + 32]
            t = t + 32
            continue 
        require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
        staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c29.getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args sub_7d0b6809, 64, mem[_35 + 164 len (32 * mem[_35]) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[_35 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = _35 + ceil32(return_data.size) + 96
        require return_data.size >= 32
        _219 = mem[_35 + 96 len 4], stor3
        require mem[_35 + 96 len 4], stor3 <= 4294967296
        require mem[_35 + 96 len 4], stor3 + 32 <= return_data.size
        require mem[_35 + mem[_35 + 96 len 4], stor3 + 96] <= 4294967296 and mem[_35 + 96 len 4], stor3 + (32 * mem[_35 + mem[_35 + 96 len 4], stor3 + 96]) + 32 <= return_data.size
        mem[_35 + ceil32(return_data.size) + 96] = mem[_35 + mem[_35 + 96 len 4], stor3 + 96]
        _251 = mem[_35 + _219 + 96]
        t = 0
        while t < 32 * _251:
            mem[t + _35 + ceil32(return_data.size) + 128] = mem[t + _35 + _219 + 128]
            t = t + 32
            continue 
        mem[64] = (32 * _251) + _35 + ceil32(return_data.size) + 128
        require mem[_35 + ceil32(return_data.size) + 96] - 1 < mem[_35 + ceil32(return_data.size) + 96]
        _491 = mem[(32 * mem[_35 + ceil32(return_data.size) + 96] - 1) + _35 + ceil32(return_data.size) + 128]
        mem[(32 * _251) + _35 + ceil32(return_data.size) + 128] = 2
        mem[(32 * _251) + _35 + ceil32(return_data.size) + 160] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
        mem[(32 * _251) + _35 + ceil32(return_data.size) + 192] = 0x321162cd933e2be498cd2267a90534a804051b
        mem[(32 * _251) + _35 + ceil32(return_data.size) + 224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[(32 * _251) + _35 + ceil32(return_data.size) + 228] = _491
        mem[(32 * _251) + _35 + ceil32(return_data.size) + 260] = 64
        mem[(32 * _251) + _35 + ceil32(return_data.size) + 292] = 2
        t = 0
        while t < 64:
            mem[t + (32 * _251) + _35 + ceil32(return_data.size) + 324] = mem[t + (32 * _251) + _35 + ceil32(return_data.size) + 160]
            t = t + 32
            continue 
        require ext_code.size(0x53c153a0df7e050bbefbb70ee9632061f12795fb)
        staticcall 0x53c153a0df7e050bbefbb70ee9632061f12795fb.getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args _491, Array(len=2, data=mem[(32 * _251) + _35 + ceil32(return_data.size) + 324 len 64])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * _251) + _35 + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * _251) + _35 + (2 * ceil32(return_data.size)) + 224
        require return_data.size >= 32
        _699 = mem[(32 * _251) + _35 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _491) >> 32
        require mem[(32 * _251) + _35 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _491) >> 32 <= 4294967296
        require mem[(32 * _251) + _35 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _491) >> 32 + 32 <= return_data.size
        require mem[(32 * _251) + _35 + ceil32(return_data.size) + mem[(32 * _251) + _35 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _491) >> 32 + 224] <= 4294967296 and mem[(32 * _251) + _35 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _491) >> 32 + (32 * mem[(32 * _251) + _35 + ceil32(return_data.size) + mem[(32 * _251) + _35 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _491) >> 32 + 224]) + 32 <= return_data.size
        mem[(32 * _251) + _35 + (2 * ceil32(return_data.size)) + 224] = mem[(32 * _251) + _35 + ceil32(return_data.size) + mem[(32 * _251) + _35 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _491) >> 32 + 224]
        _725 = mem[(32 * _251) + _35 + ceil32(return_data.size) + _699 + 224]
        t = 0
        while t < 32 * _725:
            mem[t + (32 * _251) + _35 + (2 * ceil32(return_data.size)) + 256] = mem[t + (32 * _251) + _35 + ceil32(return_data.size) + _699 + 256]
            t = t + 32
            continue 
        mem[64] = (32 * _725) + (32 * _251) + _35 + (2 * ceil32(return_data.size)) + 256
        require mem[(32 * _251) + _35 + (2 * ceil32(return_data.size)) + 224] - 1 < mem[(32 * _251) + _35 + (2 * ceil32(return_data.size)) + 224]
        if mem[(32 * mem[(32 * _251) + _35 + (2 * ceil32(return_data.size)) + 224] - 1) + (32 * _251) + _35 + (2 * ceil32(return_data.size)) + 256] <= s:
            idx = idx + 1
            s = s
            continue 
        idx = idx + 1
        s = mem[(32 * mem[(32 * _251) + _35 + (2 * ceil32(return_data.size)) + 224] - 1) + (32 * _251) + _35 + (2 * ceil32(return_data.size)) + 256]
        continue 
    idx = 0
    t = 0
    while idx < 2:
        if not idx:
            mem[mem[64] + 4] = 1
            mem[mem[64] + 36] = 0
            mem[mem[64] + 68] = s
            require ext_code.size(0x3ef6a01a0f81d6046290f3e2a8c5b843e738e604)
            staticcall 0x3ef6a01a0f81d6046290f3e2a8c5b843e738e604.get_dy(int128 arg1, int128 arg2, uint256 arg3) with:
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
        if idx != 1:
            if s <= t:
                idx = idx + 1
                t = t
                continue 
            idx = idx + 1
            t = s
            continue 
        _235 = mem[64]
        mem[mem[64]] = 2
        mem[64] = mem[64] + 96
        require 0 < mem[_235]
        mem[_235 + 32] = 0xdbf31df14b66535af65aac99c32e9ea844e14501
        require 1 < mem[_235]
        mem[_235 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
        mem[_235 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[_235 + 100] = s
        mem[_235 + 132] = 64
        mem[_235 + 164] = mem[_235]
        u = 0
        while u < 32 * mem[_235]:
            mem[u + _235 + 196] = mem[u + _235 + 32]
            u = u + 32
            continue 
        require ext_code.size(0x53c153a0df7e050bbefbb70ee9632061f12795fb)
        staticcall 0x53c153a0df7e050bbefbb70ee9632061f12795fb.getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args s, 64, mem[_235 + 164 len (32 * mem[_235]) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[_235 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = _235 + ceil32(return_data.size) + 96
        require return_data.size >= 32
        _503 = mem[_235 + 96 len 4], Mask(224, 32, s) >> 32
        require mem[_235 + 96 len 4], Mask(224, 32, s) >> 32 <= 4294967296
        require mem[_235 + 96 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
        require mem[_235 + mem[_235 + 96 len 4], Mask(224, 32, s) >> 32 + 96] <= 4294967296 and mem[_235 + 96 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_235 + mem[_235 + 96 len 4], Mask(224, 32, s) >> 32 + 96]) + 32 <= return_data.size
        mem[_235 + ceil32(return_data.size) + 96] = mem[_235 + mem[_235 + 96 len 4], Mask(224, 32, s) >> 32 + 96]
        _523 = mem[_235 + _503 + 96]
        s = 0
        while s < 32 * _523:
            mem[s + _235 + ceil32(return_data.size) + 128] = mem[s + _235 + _503 + 128]
            s = s + 32
            continue 
        mem[64] = (32 * _523) + _235 + ceil32(return_data.size) + 128
        require mem[_235 + ceil32(return_data.size) + 96] - 1 < mem[_235 + ceil32(return_data.size) + 96]
        _687 = mem[(32 * mem[_235 + ceil32(return_data.size) + 96] - 1) + _235 + ceil32(return_data.size) + 128]
        mem[(32 * _523) + _235 + ceil32(return_data.size) + 128] = 2
        mem[(32 * _523) + _235 + ceil32(return_data.size) + 160] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
        mem[(32 * _523) + _235 + ceil32(return_data.size) + 192] = 0x321162cd933e2be498cd2267a90534a804051b
        mem[(32 * _523) + _235 + ceil32(return_data.size) + 224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[(32 * _523) + _235 + ceil32(return_data.size) + 228] = _687
        mem[(32 * _523) + _235 + ceil32(return_data.size) + 260] = 64
        mem[(32 * _523) + _235 + ceil32(return_data.size) + 292] = 2
        s = 0
        while s < 64:
            mem[s + (32 * _523) + _235 + ceil32(return_data.size) + 324] = mem[s + (32 * _523) + _235 + ceil32(return_data.size) + 160]
            s = s + 32
            continue 
        require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
        staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c29.getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args _687, Array(len=2, data=mem[(32 * _523) + _235 + ceil32(return_data.size) + 324 len 64])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * _523) + _235 + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * _523) + _235 + (2 * ceil32(return_data.size)) + 224
        require return_data.size >= 32
        _823 = mem[(32 * _523) + _235 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _687) >> 32
        require mem[(32 * _523) + _235 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _687) >> 32 <= 4294967296
        require mem[(32 * _523) + _235 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _687) >> 32 + 32 <= return_data.size
        require mem[(32 * _523) + _235 + ceil32(return_data.size) + mem[(32 * _523) + _235 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _687) >> 32 + 224] <= 4294967296 and mem[(32 * _523) + _235 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _687) >> 32 + (32 * mem[(32 * _523) + _235 + ceil32(return_data.size) + mem[(32 * _523) + _235 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _687) >> 32 + 224]) + 32 <= return_data.size
        mem[(32 * _523) + _235 + (2 * ceil32(return_data.size)) + 224] = mem[(32 * _523) + _235 + ceil32(return_data.size) + mem[(32 * _523) + _235 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _687) >> 32 + 224]
        _835 = mem[(32 * _523) + _235 + ceil32(return_data.size) + _823 + 224]
        s = 0
        while s < 32 * _835:
            mem[s + (32 * _523) + _235 + (2 * ceil32(return_data.size)) + 256] = mem[s + (32 * _523) + _235 + ceil32(return_data.size) + _823 + 256]
            s = s + 32
            continue 
        mem[64] = (32 * _835) + (32 * _523) + _235 + (2 * ceil32(return_data.size)) + 256
        require mem[(32 * _523) + _235 + (2 * ceil32(return_data.size)) + 224] - 1 < mem[(32 * _523) + _235 + (2 * ceil32(return_data.size)) + 224]
        if mem[(32 * mem[(32 * _523) + _235 + (2 * ceil32(return_data.size)) + 224] - 1) + (32 * _523) + _235 + (2 * ceil32(return_data.size)) + 256] <= t:
            idx = idx + 1
            t = t
            continue 
        idx = idx + 1
        t = mem[(32 * mem[(32 * _523) + _235 + (2 * ceil32(return_data.size)) + 224] - 1) + (32 * _523) + _235 + (2 * ceil32(return_data.size)) + 256]
        continue 
    return 0
}

function sub_94d7721f(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    idx = 0
    s = 0
    while idx < 2:
        if not idx:
            mem[mem[64] + 4] = 0
            mem[mem[64] + 36] = 1
            mem[mem[64] + 68] = sub_7d0b6809
            require ext_code.size(0x3ef6a01a0f81d6046290f3e2a8c5b843e738e604)
            staticcall 0x3ef6a01a0f81d6046290f3e2a8c5b843e738e604.get_dy(int128 arg1, int128 arg2, uint256 arg3) with:
                    gas gas_remaining wei
                   args 0, 1, sub_7d0b6809
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
        if idx != 1:
            if sub_7d0b6809 <= s:
                idx = idx + 1
                s = s
                continue 
            idx = idx + 1
            s = sub_7d0b6809
            continue 
        _35 = mem[64]
        mem[mem[64]] = 2
        mem[64] = mem[64] + 96
        require 0 < mem[_35]
        mem[_35 + 32] = 0x321162cd933e2be498cd2267a90534a804051b
        require 1 < mem[_35]
        mem[_35 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
        mem[_35 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[_35 + 100] = sub_7d0b6809
        mem[_35 + 132] = 64
        mem[_35 + 164] = mem[_35]
        t = 0
        while t < 32 * mem[_35]:
            mem[t + _35 + 196] = mem[t + _35 + 32]
            t = t + 32
            continue 
        require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
        staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c29.getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args sub_7d0b6809, 64, mem[_35 + 164 len (32 * mem[_35]) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[_35 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = _35 + ceil32(return_data.size) + 96
        require return_data.size >= 32
        _211 = mem[_35 + 96 len 4], stor3
        require mem[_35 + 96 len 4], stor3 <= 4294967296
        require mem[_35 + 96 len 4], stor3 + 32 <= return_data.size
        require mem[_35 + mem[_35 + 96 len 4], stor3 + 96] <= 4294967296 and mem[_35 + 96 len 4], stor3 + (32 * mem[_35 + mem[_35 + 96 len 4], stor3 + 96]) + 32 <= return_data.size
        mem[_35 + ceil32(return_data.size) + 96] = mem[_35 + mem[_35 + 96 len 4], stor3 + 96]
        _243 = mem[_35 + _211 + 96]
        t = 0
        while t < 32 * _243:
            mem[t + _35 + ceil32(return_data.size) + 128] = mem[t + _35 + _211 + 128]
            t = t + 32
            continue 
        mem[64] = (32 * _243) + _35 + ceil32(return_data.size) + 128
        require mem[_35 + ceil32(return_data.size) + 96] - 1 < mem[_35 + ceil32(return_data.size) + 96]
        _503 = mem[(32 * mem[_35 + ceil32(return_data.size) + 96] - 1) + _35 + ceil32(return_data.size) + 128]
        mem[(32 * _243) + _35 + ceil32(return_data.size) + 128] = 2
        mem[(32 * _243) + _35 + ceil32(return_data.size) + 160] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
        mem[(32 * _243) + _35 + ceil32(return_data.size) + 192] = 0x321162cd933e2be498cd2267a90534a804051b
        mem[(32 * _243) + _35 + ceil32(return_data.size) + 224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[(32 * _243) + _35 + ceil32(return_data.size) + 228] = _503
        mem[(32 * _243) + _35 + ceil32(return_data.size) + 260] = 64
        mem[(32 * _243) + _35 + ceil32(return_data.size) + 292] = 2
        t = 0
        while t < 64:
            mem[t + (32 * _243) + _35 + ceil32(return_data.size) + 324] = mem[t + (32 * _243) + _35 + ceil32(return_data.size) + 160]
            t = t + 32
            continue 
        require ext_code.size(0x53c153a0df7e050bbefbb70ee9632061f12795fb)
        staticcall 0x53c153a0df7e050bbefbb70ee9632061f12795fb.getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args _503, Array(len=2, data=mem[(32 * _243) + _35 + ceil32(return_data.size) + 324 len 64])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * _243) + _35 + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * _243) + _35 + (2 * ceil32(return_data.size)) + 224
        require return_data.size >= 32
        _711 = mem[(32 * _243) + _35 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _503) >> 32
        require mem[(32 * _243) + _35 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _503) >> 32 <= 4294967296
        require mem[(32 * _243) + _35 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _503) >> 32 + 32 <= return_data.size
        require mem[(32 * _243) + _35 + ceil32(return_data.size) + mem[(32 * _243) + _35 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _503) >> 32 + 224] <= 4294967296 and mem[(32 * _243) + _35 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _503) >> 32 + (32 * mem[(32 * _243) + _35 + ceil32(return_data.size) + mem[(32 * _243) + _35 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _503) >> 32 + 224]) + 32 <= return_data.size
        mem[(32 * _243) + _35 + (2 * ceil32(return_data.size)) + 224] = mem[(32 * _243) + _35 + ceil32(return_data.size) + mem[(32 * _243) + _35 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _503) >> 32 + 224]
        _737 = mem[(32 * _243) + _35 + ceil32(return_data.size) + _711 + 224]
        t = 0
        while t < 32 * _737:
            mem[t + (32 * _243) + _35 + (2 * ceil32(return_data.size)) + 256] = mem[t + (32 * _243) + _35 + ceil32(return_data.size) + _711 + 256]
            t = t + 32
            continue 
        mem[64] = (32 * _737) + (32 * _243) + _35 + (2 * ceil32(return_data.size)) + 256
        require mem[(32 * _243) + _35 + (2 * ceil32(return_data.size)) + 224] - 1 < mem[(32 * _243) + _35 + (2 * ceil32(return_data.size)) + 224]
        if mem[(32 * mem[(32 * _243) + _35 + (2 * ceil32(return_data.size)) + 224] - 1) + (32 * _243) + _35 + (2 * ceil32(return_data.size)) + 256] <= s:
            idx = idx + 1
            s = s
            continue 
        idx = idx + 1
        s = mem[(32 * mem[(32 * _243) + _35 + (2 * ceil32(return_data.size)) + 224] - 1) + (32 * _243) + _35 + (2 * ceil32(return_data.size)) + 256]
        continue 
    idx = 0
    t = 0
    while idx < 2:
        if not idx:
            mem[mem[64] + 4] = 1
            mem[mem[64] + 36] = 0
            mem[mem[64] + 68] = s
            require ext_code.size(0x3ef6a01a0f81d6046290f3e2a8c5b843e738e604)
            staticcall 0x3ef6a01a0f81d6046290f3e2a8c5b843e738e604.get_dy(int128 arg1, int128 arg2, uint256 arg3) with:
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
        if idx != 1:
            if s <= t:
                idx = idx + 1
                t = t
                continue 
            idx = idx + 1
            t = s
            continue 
        _227 = mem[64]
        mem[mem[64]] = 2
        mem[64] = mem[64] + 96
        require 0 < mem[_227]
        mem[_227 + 32] = 0xdbf31df14b66535af65aac99c32e9ea844e14501
        require 1 < mem[_227]
        mem[_227 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
        mem[_227 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[_227 + 100] = s
        mem[_227 + 132] = 64
        mem[_227 + 164] = mem[_227]
        u = 0
        while u < 32 * mem[_227]:
            mem[u + _227 + 196] = mem[u + _227 + 32]
            u = u + 32
            continue 
        require ext_code.size(0x53c153a0df7e050bbefbb70ee9632061f12795fb)
        staticcall 0x53c153a0df7e050bbefbb70ee9632061f12795fb.getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args s, 64, mem[_227 + 164 len (32 * mem[_227]) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[_227 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = _227 + ceil32(return_data.size) + 96
        require return_data.size >= 32
        _515 = mem[_227 + 96 len 4], Mask(224, 32, s) >> 32
        require mem[_227 + 96 len 4], Mask(224, 32, s) >> 32 <= 4294967296
        require mem[_227 + 96 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
        require mem[_227 + mem[_227 + 96 len 4], Mask(224, 32, s) >> 32 + 96] <= 4294967296 and mem[_227 + 96 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_227 + mem[_227 + 96 len 4], Mask(224, 32, s) >> 32 + 96]) + 32 <= return_data.size
        mem[_227 + ceil32(return_data.size) + 96] = mem[_227 + mem[_227 + 96 len 4], Mask(224, 32, s) >> 32 + 96]
        _535 = mem[_227 + _515 + 96]
        s = 0
        while s < 32 * _535:
            mem[s + _227 + ceil32(return_data.size) + 128] = mem[s + _227 + _515 + 128]
            s = s + 32
            continue 
        mem[64] = (32 * _535) + _227 + ceil32(return_data.size) + 128
        require mem[_227 + ceil32(return_data.size) + 96] - 1 < mem[_227 + ceil32(return_data.size) + 96]
        _699 = mem[(32 * mem[_227 + ceil32(return_data.size) + 96] - 1) + _227 + ceil32(return_data.size) + 128]
        mem[(32 * _535) + _227 + ceil32(return_data.size) + 128] = 2
        mem[(32 * _535) + _227 + ceil32(return_data.size) + 160] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
        mem[(32 * _535) + _227 + ceil32(return_data.size) + 192] = 0x321162cd933e2be498cd2267a90534a804051b
        mem[(32 * _535) + _227 + ceil32(return_data.size) + 224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[(32 * _535) + _227 + ceil32(return_data.size) + 228] = _699
        mem[(32 * _535) + _227 + ceil32(return_data.size) + 260] = 64
        mem[(32 * _535) + _227 + ceil32(return_data.size) + 292] = 2
        s = 0
        while s < 64:
            mem[s + (32 * _535) + _227 + ceil32(return_data.size) + 324] = mem[s + (32 * _535) + _227 + ceil32(return_data.size) + 160]
            s = s + 32
            continue 
        require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
        staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c29.getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args _699, Array(len=2, data=mem[(32 * _535) + _227 + ceil32(return_data.size) + 324 len 64])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * _535) + _227 + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * _535) + _227 + (2 * ceil32(return_data.size)) + 224
        require return_data.size >= 32
        _835 = mem[(32 * _535) + _227 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _699) >> 32
        require mem[(32 * _535) + _227 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _699) >> 32 <= 4294967296
        require mem[(32 * _535) + _227 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _699) >> 32 + 32 <= return_data.size
        require mem[(32 * _535) + _227 + ceil32(return_data.size) + mem[(32 * _535) + _227 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _699) >> 32 + 224] <= 4294967296 and mem[(32 * _535) + _227 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _699) >> 32 + (32 * mem[(32 * _535) + _227 + ceil32(return_data.size) + mem[(32 * _535) + _227 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _699) >> 32 + 224]) + 32 <= return_data.size
        mem[(32 * _535) + _227 + (2 * ceil32(return_data.size)) + 224] = mem[(32 * _535) + _227 + ceil32(return_data.size) + mem[(32 * _535) + _227 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _699) >> 32 + 224]
        _847 = mem[(32 * _535) + _227 + ceil32(return_data.size) + _835 + 224]
        s = 0
        while s < 32 * _847:
            mem[s + (32 * _535) + _227 + (2 * ceil32(return_data.size)) + 256] = mem[s + (32 * _535) + _227 + ceil32(return_data.size) + _835 + 256]
            s = s + 32
            continue 
        mem[64] = (32 * _847) + (32 * _535) + _227 + (2 * ceil32(return_data.size)) + 256
        require mem[(32 * _535) + _227 + (2 * ceil32(return_data.size)) + 224] - 1 < mem[(32 * _535) + _227 + (2 * ceil32(return_data.size)) + 224]
        if mem[(32 * mem[(32 * _535) + _227 + (2 * ceil32(return_data.size)) + 224] - 1) + (32 * _535) + _227 + (2 * ceil32(return_data.size)) + 256] <= t:
            idx = idx + 1
            t = t
            continue 
        idx = idx + 1
        t = mem[(32 * mem[(32 * _535) + _227 + (2 * ceil32(return_data.size)) + 224] - 1) + (32 * _535) + _227 + (2 * ceil32(return_data.size)) + 256]
        continue 
    return 0, block.number
}



}
