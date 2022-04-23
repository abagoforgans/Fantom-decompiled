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
        while idx < 4:
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
            mem[_91 + 132] = 0
            mem[_91 + 164] = 64
            mem[_91 + 196] = mem[_91]
            t = 0
            while t < 32 * mem[_91]:
                mem[t + _91 + 228] = mem[t + _91 + 32]
                t = t + 32
                continue 
            if not idx:
                require ext_code.size(0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52)
                staticcall 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52.getAmountsOut(uint256 rg1, address[] rg2) with:
                        gas gas_remaining wei
                       args 0, 64, mem[_91 + 196 len (32 * mem[_91]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_91 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _91 + ceil32(return_data.size) + 128
                require return_data.size >= 32
                _661 = mem[_91 + 128 len 4], 0
                require mem[_91 + 128 len 4], 0 <= 4294967296
                require mem[_91 + 128 len 4], 0 + 32 <= return_data.size
                require mem[_91 + mem[_91 + 128 len 4], 0 + 128] <= 4294967296 and mem[_91 + 128 len 4], 0 + (32 * mem[_91 + mem[_91 + 128 len 4], 0 + 128]) + 32 <= return_data.size
                mem[_91 + ceil32(return_data.size) + 128] = mem[_91 + mem[_91 + 128 len 4], 0 + 128]
                _739 = mem[_91 + _661 + 128]
                t = 0
                while t < 32 * _739:
                    mem[t + _91 + ceil32(return_data.size) + 160] = mem[t + _91 + _661 + 160]
                    t = t + 32
                    continue 
                mem[64] = (32 * _739) + _91 + ceil32(return_data.size) + 160
                require mem[_91 + ceil32(return_data.size) + 128] - 1 < mem[_91 + ceil32(return_data.size) + 128]
                if mem[(32 * mem[_91 + ceil32(return_data.size) + 128] - 1) + _91 + ceil32(return_data.size) + 160] <= s:
                    idx = idx + 1
                    s = s
                    continue 
                idx = idx + 1
                s = mem[(32 * mem[_91 + ceil32(return_data.size) + 128] - 1) + _91 + ceil32(return_data.size) + 160]
                continue 
            if 1 == idx:
                require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c29.getAmountsOut(uint256 rg1, address[] rg2) with:
                        gas gas_remaining wei
                       args 0, 64, mem[_91 + 196 len (32 * mem[_91]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_91 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _91 + ceil32(return_data.size) + 128
                require return_data.size >= 32
                _659 = mem[_91 + 128 len 4], 0
                require mem[_91 + 128 len 4], 0 <= 4294967296
                require mem[_91 + 128 len 4], 0 + 32 <= return_data.size
                require mem[_91 + mem[_91 + 128 len 4], 0 + 128] <= 4294967296 and mem[_91 + 128 len 4], 0 + (32 * mem[_91 + mem[_91 + 128 len 4], 0 + 128]) + 32 <= return_data.size
                mem[_91 + ceil32(return_data.size) + 128] = mem[_91 + mem[_91 + 128 len 4], 0 + 128]
                _738 = mem[_91 + _659 + 128]
                t = 0
                while t < 32 * _738:
                    mem[t + _91 + ceil32(return_data.size) + 160] = mem[t + _91 + _659 + 160]
                    t = t + 32
                    continue 
                mem[64] = (32 * _738) + _91 + ceil32(return_data.size) + 160
                require mem[_91 + ceil32(return_data.size) + 128] - 1 < mem[_91 + ceil32(return_data.size) + 128]
                if mem[(32 * mem[_91 + ceil32(return_data.size) + 128] - 1) + _91 + ceil32(return_data.size) + 160] <= s:
                    idx = idx + 1
                    s = s
                    continue 
                idx = idx + 1
                s = mem[(32 * mem[_91 + ceil32(return_data.size) + 128] - 1) + _91 + ceil32(return_data.size) + 160]
                continue 
            if 2 == idx:
                require ext_code.size(0x7b17021fcb7bc888641dc3bedfed3734fcaf2c87)
                staticcall 0x7b17021fcb7bc888641dc3bedfed3734fcaf2c87.getAmountsOut(uint256 rg1, address[] rg2) with:
                        gas gas_remaining wei
                       args 0, 64, mem[_91 + 196 len (32 * mem[_91]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_91 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _91 + ceil32(return_data.size) + 128
                require return_data.size >= 32
                _657 = mem[_91 + 128 len 4], 0
                require mem[_91 + 128 len 4], 0 <= 4294967296
                require mem[_91 + 128 len 4], 0 + 32 <= return_data.size
                require mem[_91 + mem[_91 + 128 len 4], 0 + 128] <= 4294967296 and mem[_91 + 128 len 4], 0 + (32 * mem[_91 + mem[_91 + 128 len 4], 0 + 128]) + 32 <= return_data.size
                mem[_91 + ceil32(return_data.size) + 128] = mem[_91 + mem[_91 + 128 len 4], 0 + 128]
                _737 = mem[_91 + _657 + 128]
                t = 0
                while t < 32 * _737:
                    mem[t + _91 + ceil32(return_data.size) + 160] = mem[t + _91 + _657 + 160]
                    t = t + 32
                    continue 
                mem[64] = (32 * _737) + _91 + ceil32(return_data.size) + 160
                require mem[_91 + ceil32(return_data.size) + 128] - 1 < mem[_91 + ceil32(return_data.size) + 128]
                if mem[(32 * mem[_91 + ceil32(return_data.size) + 128] - 1) + _91 + ceil32(return_data.size) + 160] <= s:
                    idx = idx + 1
                    s = s
                    continue 
                idx = idx + 1
                s = mem[(32 * mem[_91 + ceil32(return_data.size) + 128] - 1) + _91 + ceil32(return_data.size) + 160]
                continue 
            if idx != 3:
                require ext_code.size(0)
                staticcall 0x0.getAmountsOut(uint256 rg1, address[] rg2) with:
                        gas gas_remaining wei
                       args 0, 64, mem[_91 + 196 len (32 * mem[_91]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_91 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _91 + ceil32(return_data.size) + 128
                require return_data.size >= 32
                _653 = mem[_91 + 128 len 4], 0
                require mem[_91 + 128 len 4], 0 <= 4294967296
                require mem[_91 + 128 len 4], 0 + 32 <= return_data.size
                require mem[_91 + mem[_91 + 128 len 4], 0 + 128] <= 4294967296 and mem[_91 + 128 len 4], 0 + (32 * mem[_91 + mem[_91 + 128 len 4], 0 + 128]) + 32 <= return_data.size
                mem[_91 + ceil32(return_data.size) + 128] = mem[_91 + mem[_91 + 128 len 4], 0 + 128]
                _735 = mem[_91 + _653 + 128]
                t = 0
                while t < 32 * _735:
                    mem[t + _91 + ceil32(return_data.size) + 160] = mem[t + _91 + _653 + 160]
                    t = t + 32
                    continue 
                mem[64] = (32 * _735) + _91 + ceil32(return_data.size) + 160
                require mem[_91 + ceil32(return_data.size) + 128] - 1 < mem[_91 + ceil32(return_data.size) + 128]
                if mem[(32 * mem[_91 + ceil32(return_data.size) + 128] - 1) + _91 + ceil32(return_data.size) + 160] <= s:
                    idx = idx + 1
                    s = s
                    continue 
                idx = idx + 1
                s = mem[(32 * mem[_91 + ceil32(return_data.size) + 128] - 1) + _91 + ceil32(return_data.size) + 160]
                continue 
            require ext_code.size(0x53c153a0df7e050bbefbb70ee9632061f12795fb)
            staticcall 0x53c153a0df7e050bbefbb70ee9632061f12795fb.getAmountsOut(uint256 rg1, address[] rg2) with:
                    gas gas_remaining wei
                   args 0, 64, mem[_91 + 196 len (32 * mem[_91]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[_91 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = _91 + ceil32(return_data.size) + 128
            require return_data.size >= 32
            _655 = mem[_91 + 128 len 4], 0
            require mem[_91 + 128 len 4], 0 <= 4294967296
            require mem[_91 + 128 len 4], 0 + 32 <= return_data.size
            require mem[_91 + mem[_91 + 128 len 4], 0 + 128] <= 4294967296 and mem[_91 + 128 len 4], 0 + (32 * mem[_91 + mem[_91 + 128 len 4], 0 + 128]) + 32 <= return_data.size
            mem[_91 + ceil32(return_data.size) + 128] = mem[_91 + mem[_91 + 128 len 4], 0 + 128]
            _736 = mem[_91 + _655 + 128]
            t = 0
            while t < 32 * _736:
                mem[t + _91 + ceil32(return_data.size) + 160] = mem[t + _91 + _655 + 160]
                t = t + 32
                continue 
            mem[64] = (32 * _736) + _91 + ceil32(return_data.size) + 160
            require mem[_91 + ceil32(return_data.size) + 128] - 1 < mem[_91 + ceil32(return_data.size) + 128]
            if mem[(32 * mem[_91 + ceil32(return_data.size) + 128] - 1) + _91 + ceil32(return_data.size) + 160] <= s:
                t = floor32(_736) + 1
                s = s
                continue 
            t = floor32(_736) + 1
            s = mem[(32 * mem[_91 + ceil32(return_data.size) + 128] - 1) + _91 + ceil32(return_data.size) + 160]
            continue 
        idx = 0
        t = 0
        while idx < 4:
            _591 = mem[64]
            mem[mem[64]] = 3
            mem[64] = mem[64] + 128
            require 0 < mem[_591]
            mem[_591 + 32] = 0x74b23882a30290451a17c44f4f05243b6b58c76d
            require 1 < mem[_591]
            mem[_591 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
            require 2 < mem[_591]
            mem[_591 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
            mem[_591 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[_591 + 132] = s
            mem[_591 + 164] = 64
            mem[_591 + 196] = mem[_591]
            u = 0
            while u < 32 * mem[_591]:
                mem[u + _591 + 228] = mem[u + _591 + 32]
                u = u + 32
                continue 
            if not idx:
                require ext_code.size(0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52)
                staticcall 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52.getAmountsOut(uint256 rg1, address[] rg2) with:
                        gas gas_remaining wei
                       args s, 64, mem[_591 + 196 len (32 * mem[_591]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_591 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _591 + ceil32(return_data.size) + 128
                require return_data.size >= 32
                _1699 = mem[_591 + 128 len 4], Mask(224, 32, s) >> 32
                require mem[_591 + 128 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                require mem[_591 + 128 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                require mem[_591 + mem[_591 + 128 len 4], Mask(224, 32, s) >> 32 + 128] <= 4294967296 and mem[_591 + 128 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_591 + mem[_591 + 128 len 4], Mask(224, 32, s) >> 32 + 128]) + 32 <= return_data.size
                mem[_591 + ceil32(return_data.size) + 128] = mem[_591 + mem[_591 + 128 len 4], Mask(224, 32, s) >> 32 + 128]
                _1795 = mem[_591 + _1699 + 128]
                s = 0
                while s < 32 * _1795:
                    mem[s + _591 + ceil32(return_data.size) + 160] = mem[s + _591 + _1699 + 160]
                    s = s + 32
                    continue 
                mem[64] = (32 * _1795) + _591 + ceil32(return_data.size) + 160
                require mem[_591 + ceil32(return_data.size) + 128] - 1 < mem[_591 + ceil32(return_data.size) + 128]
                if mem[(32 * mem[_591 + ceil32(return_data.size) + 128] - 1) + _591 + ceil32(return_data.size) + 160] <= t:
                    idx = idx + 1
                    t = t
                    continue 
                idx = idx + 1
                t = mem[(32 * mem[_591 + ceil32(return_data.size) + 128] - 1) + _591 + ceil32(return_data.size) + 160]
                continue 
            if 1 == idx:
                require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c29.getAmountsOut(uint256 rg1, address[] rg2) with:
                        gas gas_remaining wei
                       args s, 64, mem[_591 + 196 len (32 * mem[_591]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_591 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _591 + ceil32(return_data.size) + 128
                require return_data.size >= 32
                _1697 = mem[_591 + 128 len 4], Mask(224, 32, s) >> 32
                require mem[_591 + 128 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                require mem[_591 + 128 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                require mem[_591 + mem[_591 + 128 len 4], Mask(224, 32, s) >> 32 + 128] <= 4294967296 and mem[_591 + 128 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_591 + mem[_591 + 128 len 4], Mask(224, 32, s) >> 32 + 128]) + 32 <= return_data.size
                mem[_591 + ceil32(return_data.size) + 128] = mem[_591 + mem[_591 + 128 len 4], Mask(224, 32, s) >> 32 + 128]
                _1794 = mem[_591 + _1697 + 128]
                s = 0
                while s < 32 * _1794:
                    mem[s + _591 + ceil32(return_data.size) + 160] = mem[s + _591 + _1697 + 160]
                    s = s + 32
                    continue 
                mem[64] = (32 * _1794) + _591 + ceil32(return_data.size) + 160
                require mem[_591 + ceil32(return_data.size) + 128] - 1 < mem[_591 + ceil32(return_data.size) + 128]
                if mem[(32 * mem[_591 + ceil32(return_data.size) + 128] - 1) + _591 + ceil32(return_data.size) + 160] <= t:
                    idx = idx + 1
                    t = t
                    continue 
                idx = idx + 1
                t = mem[(32 * mem[_591 + ceil32(return_data.size) + 128] - 1) + _591 + ceil32(return_data.size) + 160]
                continue 
            if 2 == idx:
                require ext_code.size(0x7b17021fcb7bc888641dc3bedfed3734fcaf2c87)
                staticcall 0x7b17021fcb7bc888641dc3bedfed3734fcaf2c87.getAmountsOut(uint256 rg1, address[] rg2) with:
                        gas gas_remaining wei
                       args s, 64, mem[_591 + 196 len (32 * mem[_591]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_591 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _591 + ceil32(return_data.size) + 128
                require return_data.size >= 32
                _1695 = mem[_591 + 128 len 4], Mask(224, 32, s) >> 32
                require mem[_591 + 128 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                require mem[_591 + 128 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                require mem[_591 + mem[_591 + 128 len 4], Mask(224, 32, s) >> 32 + 128] <= 4294967296 and mem[_591 + 128 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_591 + mem[_591 + 128 len 4], Mask(224, 32, s) >> 32 + 128]) + 32 <= return_data.size
                mem[_591 + ceil32(return_data.size) + 128] = mem[_591 + mem[_591 + 128 len 4], Mask(224, 32, s) >> 32 + 128]
                _1793 = mem[_591 + _1695 + 128]
                s = 0
                while s < 32 * _1793:
                    mem[s + _591 + ceil32(return_data.size) + 160] = mem[s + _591 + _1695 + 160]
                    s = s + 32
                    continue 
                mem[64] = (32 * _1793) + _591 + ceil32(return_data.size) + 160
                require mem[_591 + ceil32(return_data.size) + 128] - 1 < mem[_591 + ceil32(return_data.size) + 128]
                if mem[(32 * mem[_591 + ceil32(return_data.size) + 128] - 1) + _591 + ceil32(return_data.size) + 160] <= t:
                    idx = idx + 1
                    t = t
                    continue 
                idx = idx + 1
                t = mem[(32 * mem[_591 + ceil32(return_data.size) + 128] - 1) + _591 + ceil32(return_data.size) + 160]
                continue 
            if idx != 3:
                require ext_code.size(0)
                staticcall 0x0.getAmountsOut(uint256 rg1, address[] rg2) with:
                        gas gas_remaining wei
                       args s, 64, mem[_591 + 196 len (32 * mem[_591]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_591 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _591 + ceil32(return_data.size) + 128
                require return_data.size >= 32
                _1691 = mem[_591 + 128 len 4], Mask(224, 32, s) >> 32
                require mem[_591 + 128 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                require mem[_591 + 128 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                require mem[_591 + mem[_591 + 128 len 4], Mask(224, 32, s) >> 32 + 128] <= 4294967296 and mem[_591 + 128 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_591 + mem[_591 + 128 len 4], Mask(224, 32, s) >> 32 + 128]) + 32 <= return_data.size
                mem[_591 + ceil32(return_data.size) + 128] = mem[_591 + mem[_591 + 128 len 4], Mask(224, 32, s) >> 32 + 128]
                _1791 = mem[_591 + _1691 + 128]
                s = 0
                while s < 32 * _1791:
                    mem[s + _591 + ceil32(return_data.size) + 160] = mem[s + _591 + _1691 + 160]
                    s = s + 32
                    continue 
                mem[64] = (32 * _1791) + _591 + ceil32(return_data.size) + 160
                require mem[_591 + ceil32(return_data.size) + 128] - 1 < mem[_591 + ceil32(return_data.size) + 128]
                if mem[(32 * mem[_591 + ceil32(return_data.size) + 128] - 1) + _591 + ceil32(return_data.size) + 160] <= t:
                    idx = idx + 1
                    t = t
                    continue 
                idx = idx + 1
                t = mem[(32 * mem[_591 + ceil32(return_data.size) + 128] - 1) + _591 + ceil32(return_data.size) + 160]
                continue 
            require ext_code.size(0x53c153a0df7e050bbefbb70ee9632061f12795fb)
            staticcall 0x53c153a0df7e050bbefbb70ee9632061f12795fb.getAmountsOut(uint256 rg1, address[] rg2) with:
                    gas gas_remaining wei
                   args s, 64, mem[_591 + 196 len (32 * mem[_591]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[_591 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = _591 + ceil32(return_data.size) + 128
            require return_data.size >= 32
            _1693 = mem[_591 + 128 len 4], Mask(224, 32, s) >> 32
            require mem[_591 + 128 len 4], Mask(224, 32, s) >> 32 <= 4294967296
            require mem[_591 + 128 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
            require mem[_591 + mem[_591 + 128 len 4], Mask(224, 32, s) >> 32 + 128] <= 4294967296 and mem[_591 + 128 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_591 + mem[_591 + 128 len 4], Mask(224, 32, s) >> 32 + 128]) + 32 <= return_data.size
            mem[_591 + ceil32(return_data.size) + 128] = mem[_591 + mem[_591 + 128 len 4], Mask(224, 32, s) >> 32 + 128]
            _1792 = mem[_591 + _1693 + 128]
            s = 0
            while s < 32 * _1792:
                mem[s + _591 + ceil32(return_data.size) + 160] = mem[s + _591 + _1693 + 160]
                s = s + 32
                continue 
            mem[64] = (32 * _1792) + _591 + ceil32(return_data.size) + 160
            require mem[_591 + ceil32(return_data.size) + 128] - 1 < mem[_591 + ceil32(return_data.size) + 128]
            if mem[(32 * mem[_591 + ceil32(return_data.size) + 128] - 1) + _591 + ceil32(return_data.size) + 160] <= t:
                s = floor32(_1792) + 1
                t = t
                continue 
            s = floor32(_1792) + 1
            t = mem[(32 * mem[_591 + ceil32(return_data.size) + 128] - 1) + _591 + ceil32(return_data.size) + 160]
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
        while idx < 4:
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
            if not idx:
                require ext_code.size(0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52)
                staticcall 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52.getAmountsOut(uint256 rg1, address[] rg2) with:
                        gas gas_remaining wei
                       args 10^6 * sub_7d0b6809, 64, mem[_87 + 196 len (32 * mem[_87]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_87 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _87 + ceil32(return_data.size) + 128
                require return_data.size >= 32
                _637 = mem[_87 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32
                require mem[_87 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 <= 4294967296
                require mem[_87 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 32 <= return_data.size
                require mem[_87 + mem[_87 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 128] <= 4294967296 and mem[_87 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + (32 * mem[_87 + mem[_87 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 128]) + 32 <= return_data.size
                mem[_87 + ceil32(return_data.size) + 128] = mem[_87 + mem[_87 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 128]
                _709 = mem[_87 + _637 + 128]
                t = 0
                while t < 32 * _709:
                    mem[t + _87 + ceil32(return_data.size) + 160] = mem[t + _87 + _637 + 160]
                    t = t + 32
                    continue 
                mem[64] = (32 * _709) + _87 + ceil32(return_data.size) + 160
                require mem[_87 + ceil32(return_data.size) + 128] - 1 < mem[_87 + ceil32(return_data.size) + 128]
                if mem[(32 * mem[_87 + ceil32(return_data.size) + 128] - 1) + _87 + ceil32(return_data.size) + 160] <= s:
                    idx = idx + 1
                    s = s
                    continue 
                idx = idx + 1
                s = mem[(32 * mem[_87 + ceil32(return_data.size) + 128] - 1) + _87 + ceil32(return_data.size) + 160]
                continue 
            if 1 == idx:
                require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c29.getAmountsOut(uint256 rg1, address[] rg2) with:
                        gas gas_remaining wei
                       args 10^6 * sub_7d0b6809, 64, mem[_87 + 196 len (32 * mem[_87]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_87 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _87 + ceil32(return_data.size) + 128
                require return_data.size >= 32
                _635 = mem[_87 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32
                require mem[_87 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 <= 4294967296
                require mem[_87 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 32 <= return_data.size
                require mem[_87 + mem[_87 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 128] <= 4294967296 and mem[_87 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + (32 * mem[_87 + mem[_87 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 128]) + 32 <= return_data.size
                mem[_87 + ceil32(return_data.size) + 128] = mem[_87 + mem[_87 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 128]
                _708 = mem[_87 + _635 + 128]
                t = 0
                while t < 32 * _708:
                    mem[t + _87 + ceil32(return_data.size) + 160] = mem[t + _87 + _635 + 160]
                    t = t + 32
                    continue 
                mem[64] = (32 * _708) + _87 + ceil32(return_data.size) + 160
                require mem[_87 + ceil32(return_data.size) + 128] - 1 < mem[_87 + ceil32(return_data.size) + 128]
                if mem[(32 * mem[_87 + ceil32(return_data.size) + 128] - 1) + _87 + ceil32(return_data.size) + 160] <= s:
                    idx = idx + 1
                    s = s
                    continue 
                idx = idx + 1
                s = mem[(32 * mem[_87 + ceil32(return_data.size) + 128] - 1) + _87 + ceil32(return_data.size) + 160]
                continue 
            if 2 == idx:
                require ext_code.size(0x7b17021fcb7bc888641dc3bedfed3734fcaf2c87)
                staticcall 0x7b17021fcb7bc888641dc3bedfed3734fcaf2c87.getAmountsOut(uint256 rg1, address[] rg2) with:
                        gas gas_remaining wei
                       args 10^6 * sub_7d0b6809, 64, mem[_87 + 196 len (32 * mem[_87]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_87 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _87 + ceil32(return_data.size) + 128
                require return_data.size >= 32
                _633 = mem[_87 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32
                require mem[_87 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 <= 4294967296
                require mem[_87 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 32 <= return_data.size
                require mem[_87 + mem[_87 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 128] <= 4294967296 and mem[_87 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + (32 * mem[_87 + mem[_87 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 128]) + 32 <= return_data.size
                mem[_87 + ceil32(return_data.size) + 128] = mem[_87 + mem[_87 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 128]
                _707 = mem[_87 + _633 + 128]
                t = 0
                while t < 32 * _707:
                    mem[t + _87 + ceil32(return_data.size) + 160] = mem[t + _87 + _633 + 160]
                    t = t + 32
                    continue 
                mem[64] = (32 * _707) + _87 + ceil32(return_data.size) + 160
                require mem[_87 + ceil32(return_data.size) + 128] - 1 < mem[_87 + ceil32(return_data.size) + 128]
                if mem[(32 * mem[_87 + ceil32(return_data.size) + 128] - 1) + _87 + ceil32(return_data.size) + 160] <= s:
                    idx = idx + 1
                    s = s
                    continue 
                idx = idx + 1
                s = mem[(32 * mem[_87 + ceil32(return_data.size) + 128] - 1) + _87 + ceil32(return_data.size) + 160]
                continue 
            if idx != 3:
                require ext_code.size(0)
                staticcall 0x0.getAmountsOut(uint256 rg1, address[] rg2) with:
                        gas gas_remaining wei
                       args 10^6 * sub_7d0b6809, 64, mem[_87 + 196 len (32 * mem[_87]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_87 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _87 + ceil32(return_data.size) + 128
                require return_data.size >= 32
                _629 = mem[_87 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32
                require mem[_87 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 <= 4294967296
                require mem[_87 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 32 <= return_data.size
                require mem[_87 + mem[_87 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 128] <= 4294967296 and mem[_87 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + (32 * mem[_87 + mem[_87 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 128]) + 32 <= return_data.size
                mem[_87 + ceil32(return_data.size) + 128] = mem[_87 + mem[_87 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 128]
                _705 = mem[_87 + _629 + 128]
                t = 0
                while t < 32 * _705:
                    mem[t + _87 + ceil32(return_data.size) + 160] = mem[t + _87 + _629 + 160]
                    t = t + 32
                    continue 
                mem[64] = (32 * _705) + _87 + ceil32(return_data.size) + 160
                require mem[_87 + ceil32(return_data.size) + 128] - 1 < mem[_87 + ceil32(return_data.size) + 128]
                if mem[(32 * mem[_87 + ceil32(return_data.size) + 128] - 1) + _87 + ceil32(return_data.size) + 160] <= s:
                    idx = idx + 1
                    s = s
                    continue 
                idx = idx + 1
                s = mem[(32 * mem[_87 + ceil32(return_data.size) + 128] - 1) + _87 + ceil32(return_data.size) + 160]
                continue 
            require ext_code.size(0x53c153a0df7e050bbefbb70ee9632061f12795fb)
            staticcall 0x53c153a0df7e050bbefbb70ee9632061f12795fb.getAmountsOut(uint256 rg1, address[] rg2) with:
                    gas gas_remaining wei
                   args 10^6 * sub_7d0b6809, 64, mem[_87 + 196 len (32 * mem[_87]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[_87 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = _87 + ceil32(return_data.size) + 128
            require return_data.size >= 32
            _631 = mem[_87 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32
            require mem[_87 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 <= 4294967296
            require mem[_87 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 32 <= return_data.size
            require mem[_87 + mem[_87 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 128] <= 4294967296 and mem[_87 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + (32 * mem[_87 + mem[_87 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 128]) + 32 <= return_data.size
            mem[_87 + ceil32(return_data.size) + 128] = mem[_87 + mem[_87 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 128]
            _706 = mem[_87 + _631 + 128]
            t = 0
            while t < 32 * _706:
                mem[t + _87 + ceil32(return_data.size) + 160] = mem[t + _87 + _631 + 160]
                t = t + 32
                continue 
            mem[64] = (32 * _706) + _87 + ceil32(return_data.size) + 160
            require mem[_87 + ceil32(return_data.size) + 128] - 1 < mem[_87 + ceil32(return_data.size) + 128]
            if mem[(32 * mem[_87 + ceil32(return_data.size) + 128] - 1) + _87 + ceil32(return_data.size) + 160] <= s:
                t = floor32(_706) + 1
                s = s
                continue 
            t = floor32(_706) + 1
            s = mem[(32 * mem[_87 + ceil32(return_data.size) + 128] - 1) + _87 + ceil32(return_data.size) + 160]
            continue 
        idx = 0
        t = 0
        while idx < 4:
            _583 = mem[64]
            mem[mem[64]] = 3
            mem[64] = mem[64] + 128
            require 0 < mem[_583]
            mem[_583 + 32] = 0x74b23882a30290451a17c44f4f05243b6b58c76d
            require 1 < mem[_583]
            mem[_583 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
            require 2 < mem[_583]
            mem[_583 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
            mem[_583 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[_583 + 132] = s
            mem[_583 + 164] = 64
            mem[_583 + 196] = mem[_583]
            u = 0
            while u < 32 * mem[_583]:
                mem[u + _583 + 228] = mem[u + _583 + 32]
                u = u + 32
                continue 
            if not idx:
                require ext_code.size(0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52)
                staticcall 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52.getAmountsOut(uint256 rg1, address[] rg2) with:
                        gas gas_remaining wei
                       args s, 64, mem[_583 + 196 len (32 * mem[_583]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_583 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _583 + ceil32(return_data.size) + 128
                require return_data.size >= 32
                _1659 = mem[_583 + 128 len 4], Mask(224, 32, s) >> 32
                require mem[_583 + 128 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                require mem[_583 + 128 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                require mem[_583 + mem[_583 + 128 len 4], Mask(224, 32, s) >> 32 + 128] <= 4294967296 and mem[_583 + 128 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_583 + mem[_583 + 128 len 4], Mask(224, 32, s) >> 32 + 128]) + 32 <= return_data.size
                mem[_583 + ceil32(return_data.size) + 128] = mem[_583 + mem[_583 + 128 len 4], Mask(224, 32, s) >> 32 + 128]
                _1775 = mem[_583 + _1659 + 128]
                s = 0
                while s < 32 * _1775:
                    mem[s + _583 + ceil32(return_data.size) + 160] = mem[s + _583 + _1659 + 160]
                    s = s + 32
                    continue 
                mem[64] = (32 * _1775) + _583 + ceil32(return_data.size) + 160
                require mem[_583 + ceil32(return_data.size) + 128] - 1 < mem[_583 + ceil32(return_data.size) + 128]
                if mem[(32 * mem[_583 + ceil32(return_data.size) + 128] - 1) + _583 + ceil32(return_data.size) + 160] <= t:
                    idx = idx + 1
                    t = t
                    continue 
                idx = idx + 1
                t = mem[(32 * mem[_583 + ceil32(return_data.size) + 128] - 1) + _583 + ceil32(return_data.size) + 160]
                continue 
            if 1 == idx:
                require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c29.getAmountsOut(uint256 rg1, address[] rg2) with:
                        gas gas_remaining wei
                       args s, 64, mem[_583 + 196 len (32 * mem[_583]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_583 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _583 + ceil32(return_data.size) + 128
                require return_data.size >= 32
                _1657 = mem[_583 + 128 len 4], Mask(224, 32, s) >> 32
                require mem[_583 + 128 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                require mem[_583 + 128 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                require mem[_583 + mem[_583 + 128 len 4], Mask(224, 32, s) >> 32 + 128] <= 4294967296 and mem[_583 + 128 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_583 + mem[_583 + 128 len 4], Mask(224, 32, s) >> 32 + 128]) + 32 <= return_data.size
                mem[_583 + ceil32(return_data.size) + 128] = mem[_583 + mem[_583 + 128 len 4], Mask(224, 32, s) >> 32 + 128]
                _1774 = mem[_583 + _1657 + 128]
                s = 0
                while s < 32 * _1774:
                    mem[s + _583 + ceil32(return_data.size) + 160] = mem[s + _583 + _1657 + 160]
                    s = s + 32
                    continue 
                mem[64] = (32 * _1774) + _583 + ceil32(return_data.size) + 160
                require mem[_583 + ceil32(return_data.size) + 128] - 1 < mem[_583 + ceil32(return_data.size) + 128]
                if mem[(32 * mem[_583 + ceil32(return_data.size) + 128] - 1) + _583 + ceil32(return_data.size) + 160] <= t:
                    idx = idx + 1
                    t = t
                    continue 
                idx = idx + 1
                t = mem[(32 * mem[_583 + ceil32(return_data.size) + 128] - 1) + _583 + ceil32(return_data.size) + 160]
                continue 
            if 2 == idx:
                require ext_code.size(0x7b17021fcb7bc888641dc3bedfed3734fcaf2c87)
                staticcall 0x7b17021fcb7bc888641dc3bedfed3734fcaf2c87.getAmountsOut(uint256 rg1, address[] rg2) with:
                        gas gas_remaining wei
                       args s, 64, mem[_583 + 196 len (32 * mem[_583]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_583 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _583 + ceil32(return_data.size) + 128
                require return_data.size >= 32
                _1655 = mem[_583 + 128 len 4], Mask(224, 32, s) >> 32
                require mem[_583 + 128 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                require mem[_583 + 128 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                require mem[_583 + mem[_583 + 128 len 4], Mask(224, 32, s) >> 32 + 128] <= 4294967296 and mem[_583 + 128 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_583 + mem[_583 + 128 len 4], Mask(224, 32, s) >> 32 + 128]) + 32 <= return_data.size
                mem[_583 + ceil32(return_data.size) + 128] = mem[_583 + mem[_583 + 128 len 4], Mask(224, 32, s) >> 32 + 128]
                _1773 = mem[_583 + _1655 + 128]
                s = 0
                while s < 32 * _1773:
                    mem[s + _583 + ceil32(return_data.size) + 160] = mem[s + _583 + _1655 + 160]
                    s = s + 32
                    continue 
                mem[64] = (32 * _1773) + _583 + ceil32(return_data.size) + 160
                require mem[_583 + ceil32(return_data.size) + 128] - 1 < mem[_583 + ceil32(return_data.size) + 128]
                if mem[(32 * mem[_583 + ceil32(return_data.size) + 128] - 1) + _583 + ceil32(return_data.size) + 160] <= t:
                    idx = idx + 1
                    t = t
                    continue 
                idx = idx + 1
                t = mem[(32 * mem[_583 + ceil32(return_data.size) + 128] - 1) + _583 + ceil32(return_data.size) + 160]
                continue 
            if idx != 3:
                require ext_code.size(0)
                staticcall 0x0.getAmountsOut(uint256 rg1, address[] rg2) with:
                        gas gas_remaining wei
                       args s, 64, mem[_583 + 196 len (32 * mem[_583]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_583 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _583 + ceil32(return_data.size) + 128
                require return_data.size >= 32
                _1651 = mem[_583 + 128 len 4], Mask(224, 32, s) >> 32
                require mem[_583 + 128 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                require mem[_583 + 128 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                require mem[_583 + mem[_583 + 128 len 4], Mask(224, 32, s) >> 32 + 128] <= 4294967296 and mem[_583 + 128 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_583 + mem[_583 + 128 len 4], Mask(224, 32, s) >> 32 + 128]) + 32 <= return_data.size
                mem[_583 + ceil32(return_data.size) + 128] = mem[_583 + mem[_583 + 128 len 4], Mask(224, 32, s) >> 32 + 128]
                _1771 = mem[_583 + _1651 + 128]
                s = 0
                while s < 32 * _1771:
                    mem[s + _583 + ceil32(return_data.size) + 160] = mem[s + _583 + _1651 + 160]
                    s = s + 32
                    continue 
                mem[64] = (32 * _1771) + _583 + ceil32(return_data.size) + 160
                require mem[_583 + ceil32(return_data.size) + 128] - 1 < mem[_583 + ceil32(return_data.size) + 128]
                if mem[(32 * mem[_583 + ceil32(return_data.size) + 128] - 1) + _583 + ceil32(return_data.size) + 160] <= t:
                    idx = idx + 1
                    t = t
                    continue 
                idx = idx + 1
                t = mem[(32 * mem[_583 + ceil32(return_data.size) + 128] - 1) + _583 + ceil32(return_data.size) + 160]
                continue 
            require ext_code.size(0x53c153a0df7e050bbefbb70ee9632061f12795fb)
            staticcall 0x53c153a0df7e050bbefbb70ee9632061f12795fb.getAmountsOut(uint256 rg1, address[] rg2) with:
                    gas gas_remaining wei
                   args s, 64, mem[_583 + 196 len (32 * mem[_583]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[_583 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = _583 + ceil32(return_data.size) + 128
            require return_data.size >= 32
            _1653 = mem[_583 + 128 len 4], Mask(224, 32, s) >> 32
            require mem[_583 + 128 len 4], Mask(224, 32, s) >> 32 <= 4294967296
            require mem[_583 + 128 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
            require mem[_583 + mem[_583 + 128 len 4], Mask(224, 32, s) >> 32 + 128] <= 4294967296 and mem[_583 + 128 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_583 + mem[_583 + 128 len 4], Mask(224, 32, s) >> 32 + 128]) + 32 <= return_data.size
            mem[_583 + ceil32(return_data.size) + 128] = mem[_583 + mem[_583 + 128 len 4], Mask(224, 32, s) >> 32 + 128]
            _1772 = mem[_583 + _1653 + 128]
            s = 0
            while s < 32 * _1772:
                mem[s + _583 + ceil32(return_data.size) + 160] = mem[s + _583 + _1653 + 160]
                s = s + 32
                continue 
            mem[64] = (32 * _1772) + _583 + ceil32(return_data.size) + 160
            require mem[_583 + ceil32(return_data.size) + 128] - 1 < mem[_583 + ceil32(return_data.size) + 128]
            if mem[(32 * mem[_583 + ceil32(return_data.size) + 128] - 1) + _583 + ceil32(return_data.size) + 160] <= t:
                s = floor32(_1772) + 1
                t = t
                continue 
            s = floor32(_1772) + 1
            t = mem[(32 * mem[_583 + ceil32(return_data.size) + 128] - 1) + _583 + ceil32(return_data.size) + 160]
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
        while idx < 4:
            _96 = mem[64]
            mem[mem[64]] = 3
            mem[64] = mem[64] + 128
            require 0 < mem[_96]
            mem[_96 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
            require 1 < mem[_96]
            mem[_96 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
            require 2 < mem[_96]
            mem[_96 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
            mem[_96 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[_96 + 132] = 0
            mem[_96 + 164] = 64
            mem[_96 + 196] = mem[_96]
            t = 0
            while t < 32 * mem[_96]:
                mem[t + _96 + 228] = mem[t + _96 + 32]
                t = t + 32
                continue 
            if not idx:
                require ext_code.size(0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52)
                staticcall 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52.getAmountsOut(uint256 rg1, address[] rg2) with:
                        gas gas_remaining wei
                       args 0, 64, mem[_96 + 196 len (32 * mem[_96]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_96 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _96 + ceil32(return_data.size) + 128
                require return_data.size >= 32
                _666 = mem[_96 + 128 len 4], 0
                require mem[_96 + 128 len 4], 0 <= 4294967296
                require mem[_96 + 128 len 4], 0 + 32 <= return_data.size
                require mem[_96 + mem[_96 + 128 len 4], 0 + 128] <= 4294967296 and mem[_96 + 128 len 4], 0 + (32 * mem[_96 + mem[_96 + 128 len 4], 0 + 128]) + 32 <= return_data.size
                mem[_96 + ceil32(return_data.size) + 128] = mem[_96 + mem[_96 + 128 len 4], 0 + 128]
                _732 = mem[_96 + _666 + 128]
                t = 0
                while t < 32 * _732:
                    mem[t + _96 + ceil32(return_data.size) + 160] = mem[t + _96 + _666 + 160]
                    t = t + 32
                    continue 
                mem[64] = (32 * _732) + _96 + ceil32(return_data.size) + 160
                require mem[_96 + ceil32(return_data.size) + 128] - 1 < mem[_96 + ceil32(return_data.size) + 128]
                if mem[(32 * mem[_96 + ceil32(return_data.size) + 128] - 1) + _96 + ceil32(return_data.size) + 160] <= s:
                    idx = idx + 1
                    s = s
                    continue 
                idx = idx + 1
                s = mem[(32 * mem[_96 + ceil32(return_data.size) + 128] - 1) + _96 + ceil32(return_data.size) + 160]
                continue 
            if 1 == idx:
                require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c29.getAmountsOut(uint256 rg1, address[] rg2) with:
                        gas gas_remaining wei
                       args 0, 64, mem[_96 + 196 len (32 * mem[_96]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_96 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _96 + ceil32(return_data.size) + 128
                require return_data.size >= 32
                _664 = mem[_96 + 128 len 4], 0
                require mem[_96 + 128 len 4], 0 <= 4294967296
                require mem[_96 + 128 len 4], 0 + 32 <= return_data.size
                require mem[_96 + mem[_96 + 128 len 4], 0 + 128] <= 4294967296 and mem[_96 + 128 len 4], 0 + (32 * mem[_96 + mem[_96 + 128 len 4], 0 + 128]) + 32 <= return_data.size
                mem[_96 + ceil32(return_data.size) + 128] = mem[_96 + mem[_96 + 128 len 4], 0 + 128]
                _731 = mem[_96 + _664 + 128]
                t = 0
                while t < 32 * _731:
                    mem[t + _96 + ceil32(return_data.size) + 160] = mem[t + _96 + _664 + 160]
                    t = t + 32
                    continue 
                mem[64] = (32 * _731) + _96 + ceil32(return_data.size) + 160
                require mem[_96 + ceil32(return_data.size) + 128] - 1 < mem[_96 + ceil32(return_data.size) + 128]
                if mem[(32 * mem[_96 + ceil32(return_data.size) + 128] - 1) + _96 + ceil32(return_data.size) + 160] <= s:
                    idx = idx + 1
                    s = s
                    continue 
                idx = idx + 1
                s = mem[(32 * mem[_96 + ceil32(return_data.size) + 128] - 1) + _96 + ceil32(return_data.size) + 160]
                continue 
            if 2 == idx:
                require ext_code.size(0x7b17021fcb7bc888641dc3bedfed3734fcaf2c87)
                staticcall 0x7b17021fcb7bc888641dc3bedfed3734fcaf2c87.getAmountsOut(uint256 rg1, address[] rg2) with:
                        gas gas_remaining wei
                       args 0, 64, mem[_96 + 196 len (32 * mem[_96]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_96 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _96 + ceil32(return_data.size) + 128
                require return_data.size >= 32
                _662 = mem[_96 + 128 len 4], 0
                require mem[_96 + 128 len 4], 0 <= 4294967296
                require mem[_96 + 128 len 4], 0 + 32 <= return_data.size
                require mem[_96 + mem[_96 + 128 len 4], 0 + 128] <= 4294967296 and mem[_96 + 128 len 4], 0 + (32 * mem[_96 + mem[_96 + 128 len 4], 0 + 128]) + 32 <= return_data.size
                mem[_96 + ceil32(return_data.size) + 128] = mem[_96 + mem[_96 + 128 len 4], 0 + 128]
                _730 = mem[_96 + _662 + 128]
                t = 0
                while t < 32 * _730:
                    mem[t + _96 + ceil32(return_data.size) + 160] = mem[t + _96 + _662 + 160]
                    t = t + 32
                    continue 
                mem[64] = (32 * _730) + _96 + ceil32(return_data.size) + 160
                require mem[_96 + ceil32(return_data.size) + 128] - 1 < mem[_96 + ceil32(return_data.size) + 128]
                if mem[(32 * mem[_96 + ceil32(return_data.size) + 128] - 1) + _96 + ceil32(return_data.size) + 160] <= s:
                    idx = idx + 1
                    s = s
                    continue 
                idx = idx + 1
                s = mem[(32 * mem[_96 + ceil32(return_data.size) + 128] - 1) + _96 + ceil32(return_data.size) + 160]
                continue 
            if idx != 3:
                require ext_code.size(0)
                staticcall 0x0.getAmountsOut(uint256 rg1, address[] rg2) with:
                        gas gas_remaining wei
                       args 0, 64, mem[_96 + 196 len (32 * mem[_96]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_96 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _96 + ceil32(return_data.size) + 128
                require return_data.size >= 32
                _658 = mem[_96 + 128 len 4], 0
                require mem[_96 + 128 len 4], 0 <= 4294967296
                require mem[_96 + 128 len 4], 0 + 32 <= return_data.size
                require mem[_96 + mem[_96 + 128 len 4], 0 + 128] <= 4294967296 and mem[_96 + 128 len 4], 0 + (32 * mem[_96 + mem[_96 + 128 len 4], 0 + 128]) + 32 <= return_data.size
                mem[_96 + ceil32(return_data.size) + 128] = mem[_96 + mem[_96 + 128 len 4], 0 + 128]
                _728 = mem[_96 + _658 + 128]
                t = 0
                while t < 32 * _728:
                    mem[t + _96 + ceil32(return_data.size) + 160] = mem[t + _96 + _658 + 160]
                    t = t + 32
                    continue 
                mem[64] = (32 * _728) + _96 + ceil32(return_data.size) + 160
                require mem[_96 + ceil32(return_data.size) + 128] - 1 < mem[_96 + ceil32(return_data.size) + 128]
                if mem[(32 * mem[_96 + ceil32(return_data.size) + 128] - 1) + _96 + ceil32(return_data.size) + 160] <= s:
                    idx = idx + 1
                    s = s
                    continue 
                idx = idx + 1
                s = mem[(32 * mem[_96 + ceil32(return_data.size) + 128] - 1) + _96 + ceil32(return_data.size) + 160]
                continue 
            require ext_code.size(0x53c153a0df7e050bbefbb70ee9632061f12795fb)
            staticcall 0x53c153a0df7e050bbefbb70ee9632061f12795fb.getAmountsOut(uint256 rg1, address[] rg2) with:
                    gas gas_remaining wei
                   args 0, 64, mem[_96 + 196 len (32 * mem[_96]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[_96 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = _96 + ceil32(return_data.size) + 128
            require return_data.size >= 32
            _660 = mem[_96 + 128 len 4], 0
            require mem[_96 + 128 len 4], 0 <= 4294967296
            require mem[_96 + 128 len 4], 0 + 32 <= return_data.size
            require mem[_96 + mem[_96 + 128 len 4], 0 + 128] <= 4294967296 and mem[_96 + 128 len 4], 0 + (32 * mem[_96 + mem[_96 + 128 len 4], 0 + 128]) + 32 <= return_data.size
            mem[_96 + ceil32(return_data.size) + 128] = mem[_96 + mem[_96 + 128 len 4], 0 + 128]
            _729 = mem[_96 + _660 + 128]
            t = 0
            while t < 32 * _729:
                mem[t + _96 + ceil32(return_data.size) + 160] = mem[t + _96 + _660 + 160]
                t = t + 32
                continue 
            mem[64] = (32 * _729) + _96 + ceil32(return_data.size) + 160
            require mem[_96 + ceil32(return_data.size) + 128] - 1 < mem[_96 + ceil32(return_data.size) + 128]
            if mem[(32 * mem[_96 + ceil32(return_data.size) + 128] - 1) + _96 + ceil32(return_data.size) + 160] <= s:
                t = floor32(_729) + 1
                s = s
                continue 
            t = floor32(_729) + 1
            s = mem[(32 * mem[_96 + ceil32(return_data.size) + 128] - 1) + _96 + ceil32(return_data.size) + 160]
            continue 
        idx = 0
        t = 0
        while idx < 4:
            _596 = mem[64]
            mem[mem[64]] = 3
            mem[64] = mem[64] + 128
            require 0 < mem[_596]
            mem[_596 + 32] = 0x74b23882a30290451a17c44f4f05243b6b58c76d
            require 1 < mem[_596]
            mem[_596 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
            require 2 < mem[_596]
            mem[_596 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
            mem[_596 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[_596 + 132] = s
            mem[_596 + 164] = 64
            mem[_596 + 196] = mem[_596]
            u = 0
            while u < 32 * mem[_596]:
                mem[u + _596 + 228] = mem[u + _596 + 32]
                u = u + 32
                continue 
            if not idx:
                require ext_code.size(0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52)
                staticcall 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52.getAmountsOut(uint256 rg1, address[] rg2) with:
                        gas gas_remaining wei
                       args s, 64, mem[_596 + 196 len (32 * mem[_596]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_596 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _596 + ceil32(return_data.size) + 128
                require return_data.size >= 32
                _1608 = mem[_596 + 128 len 4], Mask(224, 32, s) >> 32
                require mem[_596 + 128 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                require mem[_596 + 128 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                require mem[_596 + mem[_596 + 128 len 4], Mask(224, 32, s) >> 32 + 128] <= 4294967296 and mem[_596 + 128 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_596 + mem[_596 + 128 len 4], Mask(224, 32, s) >> 32 + 128]) + 32 <= return_data.size
                mem[_596 + ceil32(return_data.size) + 128] = mem[_596 + mem[_596 + 128 len 4], Mask(224, 32, s) >> 32 + 128]
                _1704 = mem[_596 + _1608 + 128]
                s = 0
                while s < 32 * _1704:
                    mem[s + _596 + ceil32(return_data.size) + 160] = mem[s + _596 + _1608 + 160]
                    s = s + 32
                    continue 
                mem[64] = (32 * _1704) + _596 + ceil32(return_data.size) + 160
                require mem[_596 + ceil32(return_data.size) + 128] - 1 < mem[_596 + ceil32(return_data.size) + 128]
                if mem[(32 * mem[_596 + ceil32(return_data.size) + 128] - 1) + _596 + ceil32(return_data.size) + 160] <= t:
                    idx = idx + 1
                    t = t
                    continue 
                idx = idx + 1
                t = mem[(32 * mem[_596 + ceil32(return_data.size) + 128] - 1) + _596 + ceil32(return_data.size) + 160]
                continue 
            if 1 == idx:
                require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c29.getAmountsOut(uint256 rg1, address[] rg2) with:
                        gas gas_remaining wei
                       args s, 64, mem[_596 + 196 len (32 * mem[_596]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_596 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _596 + ceil32(return_data.size) + 128
                require return_data.size >= 32
                _1606 = mem[_596 + 128 len 4], Mask(224, 32, s) >> 32
                require mem[_596 + 128 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                require mem[_596 + 128 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                require mem[_596 + mem[_596 + 128 len 4], Mask(224, 32, s) >> 32 + 128] <= 4294967296 and mem[_596 + 128 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_596 + mem[_596 + 128 len 4], Mask(224, 32, s) >> 32 + 128]) + 32 <= return_data.size
                mem[_596 + ceil32(return_data.size) + 128] = mem[_596 + mem[_596 + 128 len 4], Mask(224, 32, s) >> 32 + 128]
                _1703 = mem[_596 + _1606 + 128]
                s = 0
                while s < 32 * _1703:
                    mem[s + _596 + ceil32(return_data.size) + 160] = mem[s + _596 + _1606 + 160]
                    s = s + 32
                    continue 
                mem[64] = (32 * _1703) + _596 + ceil32(return_data.size) + 160
                require mem[_596 + ceil32(return_data.size) + 128] - 1 < mem[_596 + ceil32(return_data.size) + 128]
                if mem[(32 * mem[_596 + ceil32(return_data.size) + 128] - 1) + _596 + ceil32(return_data.size) + 160] <= t:
                    idx = idx + 1
                    t = t
                    continue 
                idx = idx + 1
                t = mem[(32 * mem[_596 + ceil32(return_data.size) + 128] - 1) + _596 + ceil32(return_data.size) + 160]
                continue 
            if 2 == idx:
                require ext_code.size(0x7b17021fcb7bc888641dc3bedfed3734fcaf2c87)
                staticcall 0x7b17021fcb7bc888641dc3bedfed3734fcaf2c87.getAmountsOut(uint256 rg1, address[] rg2) with:
                        gas gas_remaining wei
                       args s, 64, mem[_596 + 196 len (32 * mem[_596]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_596 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _596 + ceil32(return_data.size) + 128
                require return_data.size >= 32
                _1604 = mem[_596 + 128 len 4], Mask(224, 32, s) >> 32
                require mem[_596 + 128 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                require mem[_596 + 128 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                require mem[_596 + mem[_596 + 128 len 4], Mask(224, 32, s) >> 32 + 128] <= 4294967296 and mem[_596 + 128 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_596 + mem[_596 + 128 len 4], Mask(224, 32, s) >> 32 + 128]) + 32 <= return_data.size
                mem[_596 + ceil32(return_data.size) + 128] = mem[_596 + mem[_596 + 128 len 4], Mask(224, 32, s) >> 32 + 128]
                _1702 = mem[_596 + _1604 + 128]
                s = 0
                while s < 32 * _1702:
                    mem[s + _596 + ceil32(return_data.size) + 160] = mem[s + _596 + _1604 + 160]
                    s = s + 32
                    continue 
                mem[64] = (32 * _1702) + _596 + ceil32(return_data.size) + 160
                require mem[_596 + ceil32(return_data.size) + 128] - 1 < mem[_596 + ceil32(return_data.size) + 128]
                if mem[(32 * mem[_596 + ceil32(return_data.size) + 128] - 1) + _596 + ceil32(return_data.size) + 160] <= t:
                    idx = idx + 1
                    t = t
                    continue 
                idx = idx + 1
                t = mem[(32 * mem[_596 + ceil32(return_data.size) + 128] - 1) + _596 + ceil32(return_data.size) + 160]
                continue 
            if idx != 3:
                require ext_code.size(0)
                staticcall 0x0.getAmountsOut(uint256 rg1, address[] rg2) with:
                        gas gas_remaining wei
                       args s, 64, mem[_596 + 196 len (32 * mem[_596]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_596 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _596 + ceil32(return_data.size) + 128
                require return_data.size >= 32
                _1600 = mem[_596 + 128 len 4], Mask(224, 32, s) >> 32
                require mem[_596 + 128 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                require mem[_596 + 128 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                require mem[_596 + mem[_596 + 128 len 4], Mask(224, 32, s) >> 32 + 128] <= 4294967296 and mem[_596 + 128 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_596 + mem[_596 + 128 len 4], Mask(224, 32, s) >> 32 + 128]) + 32 <= return_data.size
                mem[_596 + ceil32(return_data.size) + 128] = mem[_596 + mem[_596 + 128 len 4], Mask(224, 32, s) >> 32 + 128]
                _1700 = mem[_596 + _1600 + 128]
                s = 0
                while s < 32 * _1700:
                    mem[s + _596 + ceil32(return_data.size) + 160] = mem[s + _596 + _1600 + 160]
                    s = s + 32
                    continue 
                mem[64] = (32 * _1700) + _596 + ceil32(return_data.size) + 160
                require mem[_596 + ceil32(return_data.size) + 128] - 1 < mem[_596 + ceil32(return_data.size) + 128]
                if mem[(32 * mem[_596 + ceil32(return_data.size) + 128] - 1) + _596 + ceil32(return_data.size) + 160] <= t:
                    idx = idx + 1
                    t = t
                    continue 
                idx = idx + 1
                t = mem[(32 * mem[_596 + ceil32(return_data.size) + 128] - 1) + _596 + ceil32(return_data.size) + 160]
                continue 
            require ext_code.size(0x53c153a0df7e050bbefbb70ee9632061f12795fb)
            staticcall 0x53c153a0df7e050bbefbb70ee9632061f12795fb.getAmountsOut(uint256 rg1, address[] rg2) with:
                    gas gas_remaining wei
                   args s, 64, mem[_596 + 196 len (32 * mem[_596]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[_596 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = _596 + ceil32(return_data.size) + 128
            require return_data.size >= 32
            _1602 = mem[_596 + 128 len 4], Mask(224, 32, s) >> 32
            require mem[_596 + 128 len 4], Mask(224, 32, s) >> 32 <= 4294967296
            require mem[_596 + 128 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
            require mem[_596 + mem[_596 + 128 len 4], Mask(224, 32, s) >> 32 + 128] <= 4294967296 and mem[_596 + 128 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_596 + mem[_596 + 128 len 4], Mask(224, 32, s) >> 32 + 128]) + 32 <= return_data.size
            mem[_596 + ceil32(return_data.size) + 128] = mem[_596 + mem[_596 + 128 len 4], Mask(224, 32, s) >> 32 + 128]
            _1701 = mem[_596 + _1602 + 128]
            s = 0
            while s < 32 * _1701:
                mem[s + _596 + ceil32(return_data.size) + 160] = mem[s + _596 + _1602 + 160]
                s = s + 32
                continue 
            mem[64] = (32 * _1701) + _596 + ceil32(return_data.size) + 160
            require mem[_596 + ceil32(return_data.size) + 128] - 1 < mem[_596 + ceil32(return_data.size) + 128]
            if mem[(32 * mem[_596 + ceil32(return_data.size) + 128] - 1) + _596 + ceil32(return_data.size) + 160] <= t:
                s = floor32(_1701) + 1
                t = t
                continue 
            s = floor32(_1701) + 1
            t = mem[(32 * mem[_596 + ceil32(return_data.size) + 128] - 1) + _596 + ceil32(return_data.size) + 160]
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
        while idx < 4:
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
            if not idx:
                require ext_code.size(0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52)
                staticcall 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52.getAmountsOut(uint256 rg1, address[] rg2) with:
                        gas gas_remaining wei
                       args 10^6 * sub_7d0b6809, 64, mem[_92 + 196 len (32 * mem[_92]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_92 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _92 + ceil32(return_data.size) + 128
                require return_data.size >= 32
                _642 = mem[_92 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32
                require mem[_92 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 <= 4294967296
                require mem[_92 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 32 <= return_data.size
                require mem[_92 + mem[_92 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 128] <= 4294967296 and mem[_92 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + (32 * mem[_92 + mem[_92 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 128]) + 32 <= return_data.size
                mem[_92 + ceil32(return_data.size) + 128] = mem[_92 + mem[_92 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 128]
                _710 = mem[_92 + _642 + 128]
                t = 0
                while t < 32 * _710:
                    mem[t + _92 + ceil32(return_data.size) + 160] = mem[t + _92 + _642 + 160]
                    t = t + 32
                    continue 
                mem[64] = (32 * _710) + _92 + ceil32(return_data.size) + 160
                require mem[_92 + ceil32(return_data.size) + 128] - 1 < mem[_92 + ceil32(return_data.size) + 128]
                if mem[(32 * mem[_92 + ceil32(return_data.size) + 128] - 1) + _92 + ceil32(return_data.size) + 160] <= s:
                    idx = idx + 1
                    s = s
                    continue 
                idx = idx + 1
                s = mem[(32 * mem[_92 + ceil32(return_data.size) + 128] - 1) + _92 + ceil32(return_data.size) + 160]
                continue 
            if 1 == idx:
                require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c29.getAmountsOut(uint256 rg1, address[] rg2) with:
                        gas gas_remaining wei
                       args 10^6 * sub_7d0b6809, 64, mem[_92 + 196 len (32 * mem[_92]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_92 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _92 + ceil32(return_data.size) + 128
                require return_data.size >= 32
                _640 = mem[_92 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32
                require mem[_92 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 <= 4294967296
                require mem[_92 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 32 <= return_data.size
                require mem[_92 + mem[_92 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 128] <= 4294967296 and mem[_92 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + (32 * mem[_92 + mem[_92 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 128]) + 32 <= return_data.size
                mem[_92 + ceil32(return_data.size) + 128] = mem[_92 + mem[_92 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 128]
                _709 = mem[_92 + _640 + 128]
                t = 0
                while t < 32 * _709:
                    mem[t + _92 + ceil32(return_data.size) + 160] = mem[t + _92 + _640 + 160]
                    t = t + 32
                    continue 
                mem[64] = (32 * _709) + _92 + ceil32(return_data.size) + 160
                require mem[_92 + ceil32(return_data.size) + 128] - 1 < mem[_92 + ceil32(return_data.size) + 128]
                if mem[(32 * mem[_92 + ceil32(return_data.size) + 128] - 1) + _92 + ceil32(return_data.size) + 160] <= s:
                    idx = idx + 1
                    s = s
                    continue 
                idx = idx + 1
                s = mem[(32 * mem[_92 + ceil32(return_data.size) + 128] - 1) + _92 + ceil32(return_data.size) + 160]
                continue 
            if 2 == idx:
                require ext_code.size(0x7b17021fcb7bc888641dc3bedfed3734fcaf2c87)
                staticcall 0x7b17021fcb7bc888641dc3bedfed3734fcaf2c87.getAmountsOut(uint256 rg1, address[] rg2) with:
                        gas gas_remaining wei
                       args 10^6 * sub_7d0b6809, 64, mem[_92 + 196 len (32 * mem[_92]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_92 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _92 + ceil32(return_data.size) + 128
                require return_data.size >= 32
                _638 = mem[_92 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32
                require mem[_92 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 <= 4294967296
                require mem[_92 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 32 <= return_data.size
                require mem[_92 + mem[_92 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 128] <= 4294967296 and mem[_92 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + (32 * mem[_92 + mem[_92 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 128]) + 32 <= return_data.size
                mem[_92 + ceil32(return_data.size) + 128] = mem[_92 + mem[_92 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 128]
                _708 = mem[_92 + _638 + 128]
                t = 0
                while t < 32 * _708:
                    mem[t + _92 + ceil32(return_data.size) + 160] = mem[t + _92 + _638 + 160]
                    t = t + 32
                    continue 
                mem[64] = (32 * _708) + _92 + ceil32(return_data.size) + 160
                require mem[_92 + ceil32(return_data.size) + 128] - 1 < mem[_92 + ceil32(return_data.size) + 128]
                if mem[(32 * mem[_92 + ceil32(return_data.size) + 128] - 1) + _92 + ceil32(return_data.size) + 160] <= s:
                    idx = idx + 1
                    s = s
                    continue 
                idx = idx + 1
                s = mem[(32 * mem[_92 + ceil32(return_data.size) + 128] - 1) + _92 + ceil32(return_data.size) + 160]
                continue 
            if idx != 3:
                require ext_code.size(0)
                staticcall 0x0.getAmountsOut(uint256 rg1, address[] rg2) with:
                        gas gas_remaining wei
                       args 10^6 * sub_7d0b6809, 64, mem[_92 + 196 len (32 * mem[_92]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_92 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _92 + ceil32(return_data.size) + 128
                require return_data.size >= 32
                _634 = mem[_92 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32
                require mem[_92 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 <= 4294967296
                require mem[_92 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 32 <= return_data.size
                require mem[_92 + mem[_92 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 128] <= 4294967296 and mem[_92 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + (32 * mem[_92 + mem[_92 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 128]) + 32 <= return_data.size
                mem[_92 + ceil32(return_data.size) + 128] = mem[_92 + mem[_92 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 128]
                _706 = mem[_92 + _634 + 128]
                t = 0
                while t < 32 * _706:
                    mem[t + _92 + ceil32(return_data.size) + 160] = mem[t + _92 + _634 + 160]
                    t = t + 32
                    continue 
                mem[64] = (32 * _706) + _92 + ceil32(return_data.size) + 160
                require mem[_92 + ceil32(return_data.size) + 128] - 1 < mem[_92 + ceil32(return_data.size) + 128]
                if mem[(32 * mem[_92 + ceil32(return_data.size) + 128] - 1) + _92 + ceil32(return_data.size) + 160] <= s:
                    idx = idx + 1
                    s = s
                    continue 
                idx = idx + 1
                s = mem[(32 * mem[_92 + ceil32(return_data.size) + 128] - 1) + _92 + ceil32(return_data.size) + 160]
                continue 
            require ext_code.size(0x53c153a0df7e050bbefbb70ee9632061f12795fb)
            staticcall 0x53c153a0df7e050bbefbb70ee9632061f12795fb.getAmountsOut(uint256 rg1, address[] rg2) with:
                    gas gas_remaining wei
                   args 10^6 * sub_7d0b6809, 64, mem[_92 + 196 len (32 * mem[_92]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[_92 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = _92 + ceil32(return_data.size) + 128
            require return_data.size >= 32
            _636 = mem[_92 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32
            require mem[_92 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 <= 4294967296
            require mem[_92 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 32 <= return_data.size
            require mem[_92 + mem[_92 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 128] <= 4294967296 and mem[_92 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + (32 * mem[_92 + mem[_92 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 128]) + 32 <= return_data.size
            mem[_92 + ceil32(return_data.size) + 128] = mem[_92 + mem[_92 + 128 len 4], Mask(224, 32, 10^6 * sub_7d0b6809) >> 32 + 128]
            _707 = mem[_92 + _636 + 128]
            t = 0
            while t < 32 * _707:
                mem[t + _92 + ceil32(return_data.size) + 160] = mem[t + _92 + _636 + 160]
                t = t + 32
                continue 
            mem[64] = (32 * _707) + _92 + ceil32(return_data.size) + 160
            require mem[_92 + ceil32(return_data.size) + 128] - 1 < mem[_92 + ceil32(return_data.size) + 128]
            if mem[(32 * mem[_92 + ceil32(return_data.size) + 128] - 1) + _92 + ceil32(return_data.size) + 160] <= s:
                t = floor32(_707) + 1
                s = s
                continue 
            t = floor32(_707) + 1
            s = mem[(32 * mem[_92 + ceil32(return_data.size) + 128] - 1) + _92 + ceil32(return_data.size) + 160]
            continue 
        idx = 0
        t = 0
        while idx < 4:
            _588 = mem[64]
            mem[mem[64]] = 3
            mem[64] = mem[64] + 128
            require 0 < mem[_588]
            mem[_588 + 32] = 0x74b23882a30290451a17c44f4f05243b6b58c76d
            require 1 < mem[_588]
            mem[_588 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
            require 2 < mem[_588]
            mem[_588 + 96] = 0x4068da6c83afcfa0e13ba15a6696662335d5b
            mem[_588 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[_588 + 132] = s
            mem[_588 + 164] = 64
            mem[_588 + 196] = mem[_588]
            u = 0
            while u < 32 * mem[_588]:
                mem[u + _588 + 228] = mem[u + _588 + 32]
                u = u + 32
                continue 
            if not idx:
                require ext_code.size(0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52)
                staticcall 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52.getAmountsOut(uint256 rg1, address[] rg2) with:
                        gas gas_remaining wei
                       args s, 64, mem[_588 + 196 len (32 * mem[_588]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_588 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _588 + ceil32(return_data.size) + 128
                require return_data.size >= 32
                _1568 = mem[_588 + 128 len 4], Mask(224, 32, s) >> 32
                require mem[_588 + 128 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                require mem[_588 + 128 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                require mem[_588 + mem[_588 + 128 len 4], Mask(224, 32, s) >> 32 + 128] <= 4294967296 and mem[_588 + 128 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_588 + mem[_588 + 128 len 4], Mask(224, 32, s) >> 32 + 128]) + 32 <= return_data.size
                mem[_588 + ceil32(return_data.size) + 128] = mem[_588 + mem[_588 + 128 len 4], Mask(224, 32, s) >> 32 + 128]
                _1684 = mem[_588 + _1568 + 128]
                s = 0
                while s < 32 * _1684:
                    mem[s + _588 + ceil32(return_data.size) + 160] = mem[s + _588 + _1568 + 160]
                    s = s + 32
                    continue 
                mem[64] = (32 * _1684) + _588 + ceil32(return_data.size) + 160
                require mem[_588 + ceil32(return_data.size) + 128] - 1 < mem[_588 + ceil32(return_data.size) + 128]
                if mem[(32 * mem[_588 + ceil32(return_data.size) + 128] - 1) + _588 + ceil32(return_data.size) + 160] <= t:
                    idx = idx + 1
                    t = t
                    continue 
                idx = idx + 1
                t = mem[(32 * mem[_588 + ceil32(return_data.size) + 128] - 1) + _588 + ceil32(return_data.size) + 160]
                continue 
            if 1 == idx:
                require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c29.getAmountsOut(uint256 rg1, address[] rg2) with:
                        gas gas_remaining wei
                       args s, 64, mem[_588 + 196 len (32 * mem[_588]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_588 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _588 + ceil32(return_data.size) + 128
                require return_data.size >= 32
                _1566 = mem[_588 + 128 len 4], Mask(224, 32, s) >> 32
                require mem[_588 + 128 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                require mem[_588 + 128 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                require mem[_588 + mem[_588 + 128 len 4], Mask(224, 32, s) >> 32 + 128] <= 4294967296 and mem[_588 + 128 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_588 + mem[_588 + 128 len 4], Mask(224, 32, s) >> 32 + 128]) + 32 <= return_data.size
                mem[_588 + ceil32(return_data.size) + 128] = mem[_588 + mem[_588 + 128 len 4], Mask(224, 32, s) >> 32 + 128]
                _1683 = mem[_588 + _1566 + 128]
                s = 0
                while s < 32 * _1683:
                    mem[s + _588 + ceil32(return_data.size) + 160] = mem[s + _588 + _1566 + 160]
                    s = s + 32
                    continue 
                mem[64] = (32 * _1683) + _588 + ceil32(return_data.size) + 160
                require mem[_588 + ceil32(return_data.size) + 128] - 1 < mem[_588 + ceil32(return_data.size) + 128]
                if mem[(32 * mem[_588 + ceil32(return_data.size) + 128] - 1) + _588 + ceil32(return_data.size) + 160] <= t:
                    idx = idx + 1
                    t = t
                    continue 
                idx = idx + 1
                t = mem[(32 * mem[_588 + ceil32(return_data.size) + 128] - 1) + _588 + ceil32(return_data.size) + 160]
                continue 
            if 2 == idx:
                require ext_code.size(0x7b17021fcb7bc888641dc3bedfed3734fcaf2c87)
                staticcall 0x7b17021fcb7bc888641dc3bedfed3734fcaf2c87.getAmountsOut(uint256 rg1, address[] rg2) with:
                        gas gas_remaining wei
                       args s, 64, mem[_588 + 196 len (32 * mem[_588]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_588 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _588 + ceil32(return_data.size) + 128
                require return_data.size >= 32
                _1564 = mem[_588 + 128 len 4], Mask(224, 32, s) >> 32
                require mem[_588 + 128 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                require mem[_588 + 128 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                require mem[_588 + mem[_588 + 128 len 4], Mask(224, 32, s) >> 32 + 128] <= 4294967296 and mem[_588 + 128 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_588 + mem[_588 + 128 len 4], Mask(224, 32, s) >> 32 + 128]) + 32 <= return_data.size
                mem[_588 + ceil32(return_data.size) + 128] = mem[_588 + mem[_588 + 128 len 4], Mask(224, 32, s) >> 32 + 128]
                _1682 = mem[_588 + _1564 + 128]
                s = 0
                while s < 32 * _1682:
                    mem[s + _588 + ceil32(return_data.size) + 160] = mem[s + _588 + _1564 + 160]
                    s = s + 32
                    continue 
                mem[64] = (32 * _1682) + _588 + ceil32(return_data.size) + 160
                require mem[_588 + ceil32(return_data.size) + 128] - 1 < mem[_588 + ceil32(return_data.size) + 128]
                if mem[(32 * mem[_588 + ceil32(return_data.size) + 128] - 1) + _588 + ceil32(return_data.size) + 160] <= t:
                    idx = idx + 1
                    t = t
                    continue 
                idx = idx + 1
                t = mem[(32 * mem[_588 + ceil32(return_data.size) + 128] - 1) + _588 + ceil32(return_data.size) + 160]
                continue 
            if idx != 3:
                require ext_code.size(0)
                staticcall 0x0.getAmountsOut(uint256 rg1, address[] rg2) with:
                        gas gas_remaining wei
                       args s, 64, mem[_588 + 196 len (32 * mem[_588]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_588 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _588 + ceil32(return_data.size) + 128
                require return_data.size >= 32
                _1560 = mem[_588 + 128 len 4], Mask(224, 32, s) >> 32
                require mem[_588 + 128 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                require mem[_588 + 128 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                require mem[_588 + mem[_588 + 128 len 4], Mask(224, 32, s) >> 32 + 128] <= 4294967296 and mem[_588 + 128 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_588 + mem[_588 + 128 len 4], Mask(224, 32, s) >> 32 + 128]) + 32 <= return_data.size
                mem[_588 + ceil32(return_data.size) + 128] = mem[_588 + mem[_588 + 128 len 4], Mask(224, 32, s) >> 32 + 128]
                _1680 = mem[_588 + _1560 + 128]
                s = 0
                while s < 32 * _1680:
                    mem[s + _588 + ceil32(return_data.size) + 160] = mem[s + _588 + _1560 + 160]
                    s = s + 32
                    continue 
                mem[64] = (32 * _1680) + _588 + ceil32(return_data.size) + 160
                require mem[_588 + ceil32(return_data.size) + 128] - 1 < mem[_588 + ceil32(return_data.size) + 128]
                if mem[(32 * mem[_588 + ceil32(return_data.size) + 128] - 1) + _588 + ceil32(return_data.size) + 160] <= t:
                    idx = idx + 1
                    t = t
                    continue 
                idx = idx + 1
                t = mem[(32 * mem[_588 + ceil32(return_data.size) + 128] - 1) + _588 + ceil32(return_data.size) + 160]
                continue 
            require ext_code.size(0x53c153a0df7e050bbefbb70ee9632061f12795fb)
            staticcall 0x53c153a0df7e050bbefbb70ee9632061f12795fb.getAmountsOut(uint256 rg1, address[] rg2) with:
                    gas gas_remaining wei
                   args s, 64, mem[_588 + 196 len (32 * mem[_588]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[_588 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = _588 + ceil32(return_data.size) + 128
            require return_data.size >= 32
            _1562 = mem[_588 + 128 len 4], Mask(224, 32, s) >> 32
            require mem[_588 + 128 len 4], Mask(224, 32, s) >> 32 <= 4294967296
            require mem[_588 + 128 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
            require mem[_588 + mem[_588 + 128 len 4], Mask(224, 32, s) >> 32 + 128] <= 4294967296 and mem[_588 + 128 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_588 + mem[_588 + 128 len 4], Mask(224, 32, s) >> 32 + 128]) + 32 <= return_data.size
            mem[_588 + ceil32(return_data.size) + 128] = mem[_588 + mem[_588 + 128 len 4], Mask(224, 32, s) >> 32 + 128]
            _1681 = mem[_588 + _1562 + 128]
            s = 0
            while s < 32 * _1681:
                mem[s + _588 + ceil32(return_data.size) + 160] = mem[s + _588 + _1562 + 160]
                s = s + 32
                continue 
            mem[64] = (32 * _1681) + _588 + ceil32(return_data.size) + 160
            require mem[_588 + ceil32(return_data.size) + 128] - 1 < mem[_588 + ceil32(return_data.size) + 128]
            if mem[(32 * mem[_588 + ceil32(return_data.size) + 128] - 1) + _588 + ceil32(return_data.size) + 160] <= t:
                s = floor32(_1681) + 1
                t = t
                continue 
            s = floor32(_1681) + 1
            t = mem[(32 * mem[_588 + ceil32(return_data.size) + 128] - 1) + _588 + ceil32(return_data.size) + 160]
            continue 
}



}
