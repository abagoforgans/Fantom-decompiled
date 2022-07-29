contract main {




// =====================  Runtime code  =====================


#
#  - size(uint256 arg1)
#
address sub_48db3888Address;
array of uint256 stor1;
array of uint256 stor6;
array of uint256 stor7;
uint256 stor12;
mapping of uint256 lastClaim;

function lastClaim(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return lastClaim[arg1]
}

function sub_48db3888(?) payable {
    return sub_48db3888Address
}

function _fallback() payable {
    revert
}

function hash(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return sha3(Array(len=10, data='But God...'), sub_48db3888Address, arg1)
}

function sub_84d18c94(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    mem[96] = ('cd', 4).length
    mem[64] = (32 * ('cd', 4).length) + 128
    if not ('cd', 4).length:
        idx = 0
        while idx < ('cd', 4).length:
            _84 = mem[64]
            mem[64] = mem[64] + 64
            mem[_84] = 6
            mem[_84 + 32] = 'COSMIC'
            mem[mem[64]] = 0x282550ec00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 64
            mem[mem[64] + 68] = 6
            s = 0
            while s < 6:
                mem[mem[64] + s + 100] = mem[_84 + s + 32]
                s = s + 32
                continue 
            mem[mem[64] + 106] = 0
            mem[mem[64] + 36] = cd[((32 * idx) + cd[4] + 36)]
            require ext_code.size(sub_48db3888Address)
            staticcall sub_48db3888Address.0x282550ec with:
                    gas gas_remaining wei
                   args 64, cd[((32 * idx) + cd[4] + 36)], 6, mem[mem[64] + 100 len 6], 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _174 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _178 = mem[_174]
            require mem[_174] <= test266151307()
            require _174 + mem[_174] + 31 < _174 + return_data.size
            _182 = mem[_174 + mem[_174]]
            if mem[_174 + mem[_174]] > test266151307():
                revert with 'NH{q', 65
            if _174 + ceil32(return_data.size) + ceil32(ceil32(mem[_174 + mem[_174]])) + 1 > test266151307() or ceil32(ceil32(mem[_174 + mem[_174]])) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = _174 + ceil32(return_data.size) + ceil32(ceil32(mem[_174 + mem[_174]])) + 1
            mem[_174 + ceil32(return_data.size)] = _182
            require _178 + _182 + 32 <= return_data.size
            s = 0
            while s < _182:
                mem[_174 + ceil32(return_data.size) + s + 32] = mem[_174 + _178 + s + 32]
                s = s + 32
                continue 
            if ceil32(_182) > _182:
                mem[_174 + ceil32(return_data.size) + _182 + 32] = 0
            if not _182:
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + 128] = 0
            else:
                require _182 >= 32
                require mem[_174 + ceil32(return_data.size) + 32] == mem[_174 + ceil32(return_data.size) + 32]
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + 128] = mem[_174 + ceil32(return_data.size) + 32]
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
    else:
        mem[128 len 32 * ('cd', 4).length] = call.data[calldata.size len 32 * ('cd', 4).length]
        idx = 0
        while idx < ('cd', 4).length:
            _86 = mem[64]
            mem[64] = mem[64] + 64
            mem[_86] = 6
            mem[_86 + 32] = 'COSMIC'
            mem[mem[64]] = 0x282550ec00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 64
            mem[mem[64] + 68] = 6
            s = 0
            while s < 6:
                mem[mem[64] + s + 100] = mem[_86 + s + 32]
                s = s + 32
                continue 
            mem[mem[64] + 106] = 0
            mem[mem[64] + 36] = cd[((32 * idx) + cd[4] + 36)]
            require ext_code.size(sub_48db3888Address)
            staticcall sub_48db3888Address.0x282550ec with:
                    gas gas_remaining wei
                   args 64, cd[((32 * idx) + cd[4] + 36)], 6, mem[mem[64] + 100 len 6], 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _175 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _179 = mem[_175]
            require mem[_175] <= test266151307()
            require _175 + mem[_175] + 31 < _175 + return_data.size
            _183 = mem[_175 + mem[_175]]
            if mem[_175 + mem[_175]] > test266151307():
                revert with 'NH{q', 65
            if _175 + ceil32(return_data.size) + ceil32(ceil32(mem[_175 + mem[_175]])) + 1 > test266151307() or ceil32(ceil32(mem[_175 + mem[_175]])) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = _175 + ceil32(return_data.size) + ceil32(ceil32(mem[_175 + mem[_175]])) + 1
            mem[_175 + ceil32(return_data.size)] = _183
            require _179 + _183 + 32 <= return_data.size
            s = 0
            while s < _183:
                mem[_175 + ceil32(return_data.size) + s + 32] = mem[_175 + _179 + s + 32]
                s = s + 32
                continue 
            if ceil32(_183) > _183:
                mem[_175 + ceil32(return_data.size) + _183 + 32] = 0
            if not _183:
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + 128] = 0
            else:
                require _183 >= 32
                require mem[_175 + ceil32(return_data.size) + 32] == mem[_175 + ceil32(return_data.size) + 32]
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + 128] = mem[_175 + ceil32(return_data.size) + 32]
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
    mem[mem[64]] = 32
    mem[mem[64] + 32] = mem[96]
    mem[mem[64] + 64 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
    return 32, mem[mem[64] + 32 len (32 * mem[96]) + 32]
}

function sub_c2563174(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[96] = 6
    mem[128] = 'COSMIC'
    mem[160] = 0x282550ec00000000000000000000000000000000000000000000000000000000
    mem[164] = 64
    mem[228] = 6
    mem[260] = 'COSMIC'
    mem[266] = 0
    mem[196] = arg1
    require ext_code.size(sub_48db3888Address)
    staticcall sub_48db3888Address.0x282550ec with:
            gas gas_remaining wei
           args 64, arg1, 6, 'COSMIC', 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[160 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 160
    require return_data.size >= 32
    _67 = mem[160 len 4], 0
    require mem[160 len 4], 0 <= test266151307()
    require mem[160 len 4], 0 + 191 < return_data.size + 160
    _69 = mem[mem[160 len 4], 0 + 160]
    if mem[mem[160 len 4], 0 + 160] > test266151307():
        revert with 'NH{q', 65
    if ceil32(return_data.size) + ceil32(ceil32(mem[mem[160 len 4], 0 + 160])) + 161 > test266151307() or ceil32(ceil32(mem[mem[160 len 4], 0 + 160])) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = ceil32(return_data.size) + ceil32(ceil32(mem[mem[160 len 4], 0 + 160])) + 161
    mem[ceil32(return_data.size) + 160] = mem[mem[160 len 4], 0 + 160]
    require _67 + _69 + 32 <= return_data.size
    mem[ceil32(return_data.size) + 192 len ceil32(_69)] = mem[_67 + 192 len ceil32(_69)]
    if ceil32(_69) > _69:
        mem[ceil32(return_data.size) + _69 + 192] = 0
    if not _69:
        if 0 < stor12:
            idx = 0
            while idx < 6:
                if 0 >= stor7[idx]:
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                if idx == 6:
                    if stor12 and 2 > -1 / stor12:
                        revert with 'NH{q', 17
                    if not idx:
                        if 2 * stor12 < 0:
                            revert with 'NH{q', 17
                        if not 2 * stor12:
                            revert with 'NH{q', 18
                        return idx, 0 / 2 * stor12
                    if idx < 1:
                        revert with 'NH{q', 17
                    if idx - 1 >= 6:
                        revert with 'NH{q', 50
                    if 2 * stor12 < stor6[idx]:
                        revert with 'NH{q', 17
                    if 0 < stor6[idx]:
                        revert with 'NH{q', 17
                    if -stor6[idx] > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
                        revert with 'NH{q', 17
                    if not (2 * stor12) - stor6[idx]:
                        revert with 'NH{q', 18
                    return idx, -100 * stor6[idx] / (2 * stor12) - stor6[idx]
                if idx >= 6:
                    revert with 'NH{q', 50
                if not idx:
                    if stor7[idx] < 0:
                        revert with 'NH{q', 17
                    if not stor7[idx]:
                        revert with 'NH{q', 18
                    return idx, 0 / stor7[idx]
                if idx < 1:
                    revert with 'NH{q', 17
                if idx - 1 >= 6:
                    revert with 'NH{q', 50
                if stor7[idx] < stor6[idx]:
                    revert with 'NH{q', 17
                if 0 < stor6[idx]:
                    revert with 'NH{q', 17
                if -stor6[idx] > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
                    revert with 'NH{q', 17
                if not stor7[idx] - stor6[idx]:
                    revert with 'NH{q', 18
                return idx, -100 * stor6[idx] / stor7[idx] - stor6[idx]
            if stor7.length < 0:
                revert with 'NH{q', 17
            if not stor7.length:
                revert with 'NH{q', 18
            return 0, 0 / stor7.length
        if stor12 and 2 > -1 / stor12:
            revert with 'NH{q', 17
        if 2 * stor12 < stor12:
            revert with 'NH{q', 17
        if 0 < stor12:
            revert with 'NH{q', 17
        if -stor12 > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
            revert with 'NH{q', 17
        if not stor12:
            revert with 'NH{q', 18
        return 6, -100 * stor12 / stor12
    require _69 >= 32
    require mem[ceil32(return_data.size) + 192] == mem[ceil32(return_data.size) + 192]
    if mem[ceil32(return_data.size) + 192] / 10^18 < stor12:
        idx = 0
        while idx < 6:
            if mem[ceil32(return_data.size) + 192] / 10^18 >= stor7[idx]:
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            if idx == 6:
                if stor12 and 2 > -1 / stor12:
                    revert with 'NH{q', 17
                if not idx:
                    if 2 * stor12 < 0:
                        revert with 'NH{q', 17
                    if mem[ceil32(return_data.size) + 192] / 10^18 < 0:
                        revert with 'NH{q', 17
                    if mem[ceil32(return_data.size) + 192] / 10^18 > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
                        revert with 'NH{q', 17
                    if not 2 * stor12:
                        revert with 'NH{q', 18
                    return idx, 100 * mem[ceil32(return_data.size) + 192] / 10^18 / 2 * stor12
                if idx < 1:
                    revert with 'NH{q', 17
                if idx - 1 >= 6:
                    revert with 'NH{q', 50
                if 2 * stor12 < stor6[idx]:
                    revert with 'NH{q', 17
                if mem[ceil32(return_data.size) + 192] / 10^18 < stor6[idx]:
                    revert with 'NH{q', 17
                if (mem[ceil32(return_data.size) + 192] / 10^18) - stor6[idx] > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
                    revert with 'NH{q', 17
                if not (2 * stor12) - stor6[idx]:
                    revert with 'NH{q', 18
                return idx, (100 * mem[ceil32(return_data.size) + 192] / 10^18) - (100 * stor6[idx]) / (2 * stor12) - stor6[idx]
            if idx >= 6:
                revert with 'NH{q', 50
            if not idx:
                if stor7[idx] < 0:
                    revert with 'NH{q', 17
                if mem[ceil32(return_data.size) + 192] / 10^18 < 0:
                    revert with 'NH{q', 17
                if mem[ceil32(return_data.size) + 192] / 10^18 > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
                    revert with 'NH{q', 17
                if not stor7[idx]:
                    revert with 'NH{q', 18
                return idx, 100 * mem[ceil32(return_data.size) + 192] / 10^18 / stor7[idx]
            if idx < 1:
                revert with 'NH{q', 17
            if idx - 1 >= 6:
                revert with 'NH{q', 50
            if stor7[idx] < stor6[idx]:
                revert with 'NH{q', 17
            if mem[ceil32(return_data.size) + 192] / 10^18 < stor6[idx]:
                revert with 'NH{q', 17
            if (mem[ceil32(return_data.size) + 192] / 10^18) - stor6[idx] > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
                revert with 'NH{q', 17
            if not stor7[idx] - stor6[idx]:
                revert with 'NH{q', 18
            return idx, (100 * mem[ceil32(return_data.size) + 192] / 10^18) - (100 * stor6[idx]) / stor7[idx] - stor6[idx]
        if stor7.length < 0:
            revert with 'NH{q', 17
        if mem[ceil32(return_data.size) + 192] / 10^18 < 0:
            revert with 'NH{q', 17
        if mem[ceil32(return_data.size) + 192] / 10^18 > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
            revert with 'NH{q', 17
        if not stor7.length:
            revert with 'NH{q', 18
        return 0, 100 * mem[ceil32(return_data.size) + 192] / 10^18 / stor7.length
    if stor12 and 2 > -1 / stor12:
        revert with 'NH{q', 17
    if 2 * stor12 < stor12:
        revert with 'NH{q', 17
    if mem[ceil32(return_data.size) + 192] / 10^18 < stor12:
        revert with 'NH{q', 17
    if (mem[ceil32(return_data.size) + 192] / 10^18) - stor12 > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
        revert with 'NH{q', 17
    if not stor12:
        revert with 'NH{q', 18
    return 6, (100 * mem[ceil32(return_data.size) + 192] / 10^18) - (100 * stor12) / stor12
}

function claim(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[0] = arg1
    mem[32] = 13
    if block.timestamp < lastClaim[arg1]:
        revert with 'NH{q', 17
    mem[96] = 6
    mem[128] = 'COSMIC'
    mem[160] = 0x282550ec00000000000000000000000000000000000000000000000000000000
    mem[164] = 64
    mem[228] = 6
    mem[260] = 'COSMIC'
    mem[266] = 0
    mem[196] = arg1
    require ext_code.size(sub_48db3888Address)
    staticcall sub_48db3888Address.0x282550ec with:
            gas gas_remaining wei
           args 64, arg1, 6, 'COSMIC', 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[160 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 160
    require return_data.size >= 32
    _152 = mem[160 len 4], 0
    require mem[160 len 4], 0 <= test266151307()
    require mem[160 len 4], 0 + 191 < return_data.size + 160
    _154 = mem[mem[160 len 4], 0 + 160]
    if mem[mem[160 len 4], 0 + 160] > test266151307():
        revert with 'NH{q', 65
    if ceil32(return_data.size) + ceil32(ceil32(mem[mem[160 len 4], 0 + 160])) + 161 > test266151307() or ceil32(ceil32(mem[mem[160 len 4], 0 + 160])) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = ceil32(return_data.size) + ceil32(ceil32(mem[mem[160 len 4], 0 + 160])) + 161
    mem[ceil32(return_data.size) + 160] = mem[mem[160 len 4], 0 + 160]
    require _152 + _154 + 32 <= return_data.size
    mem[ceil32(return_data.size) + 192 len ceil32(_154)] = mem[_152 + 192 len ceil32(_154)]
    if ceil32(_154) <= _154:
        if not _154:
            if 0 >= stor12:
                if stor12 and 2 > -1 / stor12:
                    revert with 'NH{q', 17
                if 2 * stor12 < stor12:
                    revert with 'NH{q', 17
                if 0 < stor12:
                    revert with 'NH{q', 17
                if -stor12 > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
                    revert with 'NH{q', 17
                if not stor12:
                    revert with 'NH{q', 18
                if 100 > -(-100 * stor12 / stor12) - 1:
                    revert with 'NH{q', 17
                revert with 'NH{q', 50
            idx = 0
            while idx < 6:
                if 0 >= stor7[idx]:
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                if idx == 6:
                    if stor12 and 2 > -1 / stor12:
                        revert with 'NH{q', 17
                    if not idx:
                        if 2 * stor12 < 0:
                            revert with 'NH{q', 17
                        if not 2 * stor12:
                            revert with 'NH{q', 18
                        if 100 > -(0 / 2 * stor12) - 1:
                            revert with 'NH{q', 17
                        if idx >= 6:
                            revert with 'NH{q', 50
                        if stor1[idx] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                            revert with 'NH{q', 17
                        if 10^18 * stor1[idx] and (0 / 2 * stor12) + 100 > -1 / 10^18 * stor1[idx]:
                            revert with 'NH{q', 17
                        if (100 * 10^18 * stor1[idx]) + (10^18 * 0 / 2 * stor12 * stor1[idx]) / 100 and block.timestamp - lastClaim[arg1] > -1 / (100 * 10^18 * stor1[idx]) + (10^18 * 0 / 2 * stor12 * stor1[idx]) / 100:
                            revert with 'NH{q', 17
                        mem[0] = arg1
                        mem[32] = 13
                        lastClaim[arg1] = block.timestamp
                        if not lastClaim[arg1]:
                            _1276 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1276] = 6
                            mem[_1276 + 32] = 'COSMIC'
                            mem[mem[64]] = 0xc8616da500000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 96
                            mem[mem[64] + 100] = 6
                            idx = 0
                            while idx < 6:
                                mem[mem[64] + idx + 132] = mem[_1276 + idx + 32]
                                idx = idx + 32
                                continue 
                            require ext_code.size(sub_48db3888Address)
                            call sub_48db3888Address.0xc8616da5 with:
                                 gas gas_remaining wei
                                args 96, arg1, 10^18, 6, mem[mem[64] + 132 len 6], 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            emit Claim(10^18, arg1);
                            return 10^18
                        if (block.timestamp * (100 * 10^18 * stor1[idx]) + (10^18 * 0 / 2 * stor12 * stor1[idx]) / 100) - (lastClaim[arg1] * (100 * 10^18 * stor1[idx]) + (10^18 * 0 / 2 * stor12 * stor1[idx]) / 100) / 8736 * 24 * 3600 > 5 * 10^18:
                            _1312 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1312] = 6
                            mem[_1312 + 32] = 'COSMIC'
                            mem[mem[64]] = 0xc8616da500000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 96
                            mem[mem[64] + 100] = 6
                            idx = 0
                            while idx < 6:
                                mem[mem[64] + idx + 132] = mem[_1312 + idx + 32]
                                idx = idx + 32
                                continue 
                            require ext_code.size(sub_48db3888Address)
                            call sub_48db3888Address.0xc8616da5 with:
                                 gas gas_remaining wei
                                args 96, arg1, 5 * 10^18, 6, mem[mem[64] + 132 len 6], 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            emit Claim(5 * 10^18, arg1);
                            return 5 * 10^18
                        _1315 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1315] = 6
                        mem[_1315 + 32] = 'COSMIC'
                        mem[mem[64]] = 0xc8616da500000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 96
                        mem[mem[64] + 100] = 6
                        s = 0
                        while s < 6:
                            mem[mem[64] + s + 132] = mem[_1315 + s + 32]
                            s = s + 32
                            continue 
                        require ext_code.size(sub_48db3888Address)
                        call sub_48db3888Address.0xc8616da5 with:
                             gas gas_remaining wei
                            args 96, arg1, (block.timestamp * (100 * 10^18 * stor1[idx]) + (10^18 * 0 / 2 * stor12 * stor1[idx]) / 100) - (lastClaim[arg1] * (100 * 10^18 * stor1[idx]) + (10^18 * 0 / 2 * stor12 * stor1[idx]) / 100) / 8736 * 24 * 3600, 6, mem[mem[64] + 132 len 6], 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        emit Claim(((block.timestamp * (100 * 10^18 * stor1[idx]) + (10^18 * 0 / 2 * stor12 * stor1[idx]) / 100) - (lastClaim[arg1] * (100 * 10^18 * stor1[idx]) + (10^18 * 0 / 2 * stor12 * stor1[idx]) / 100) / 8736 * 24 * 3600), arg1);
                        return ((block.timestamp * (100 * 10^18 * stor1[idx]) + (10^18 * 0 / 2 * stor12 * stor1[idx]) / 100) - (lastClaim[arg1] * (100 * 10^18 * stor1[idx]) + (10^18 * 0 / 2 * stor12 * stor1[idx]) / 100) / 8736 * 24 * 3600)
                    if idx < 1:
                        revert with 'NH{q', 17
                    if idx - 1 >= 6:
                        revert with 'NH{q', 50
                    if 2 * stor12 < stor6[idx]:
                        revert with 'NH{q', 17
                    if 0 < stor6[idx]:
                        revert with 'NH{q', 17
                    if -stor6[idx] > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
                        revert with 'NH{q', 17
                    if not (2 * stor12) - stor6[idx]:
                        revert with 'NH{q', 18
                    if 100 > -(-100 * stor6[idx] / (2 * stor12) - stor6[idx]) - 1:
                        revert with 'NH{q', 17
                    if idx >= 6:
                        revert with 'NH{q', 50
                    if stor1[idx] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                        revert with 'NH{q', 17
                    if 10^18 * stor1[idx] and (-100 * stor6[idx] / (2 * stor12) - stor6[idx]) + 100 > -1 / 10^18 * stor1[idx]:
                        revert with 'NH{q', 17
                    if (100 * 10^18 * stor1[idx]) + (10^18 * -100 * stor6[idx] / (2 * stor12) - stor6[idx] * stor1[idx]) / 100 and block.timestamp - lastClaim[arg1] > -1 / (100 * 10^18 * stor1[idx]) + (10^18 * -100 * stor6[idx] / (2 * stor12) - stor6[idx] * stor1[idx]) / 100:
                        revert with 'NH{q', 17
                    mem[0] = arg1
                    mem[32] = 13
                    lastClaim[arg1] = block.timestamp
                    if not lastClaim[arg1]:
                        _1435 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1435] = 6
                        mem[_1435 + 32] = 'COSMIC'
                        mem[mem[64]] = 0xc8616da500000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 96
                        mem[mem[64] + 100] = 6
                        idx = 0
                        while idx < 6:
                            mem[mem[64] + idx + 132] = mem[_1435 + idx + 32]
                            idx = idx + 32
                            continue 
                        require ext_code.size(sub_48db3888Address)
                        call sub_48db3888Address.0xc8616da5 with:
                             gas gas_remaining wei
                            args 96, arg1, 10^18, 6, mem[mem[64] + 132 len 6], 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        emit Claim(10^18, arg1);
                        return 10^18
                    if (block.timestamp * (100 * 10^18 * stor1[idx]) + (10^18 * -100 * stor6[idx] / (2 * stor12) - stor6[idx] * stor1[idx]) / 100) - (lastClaim[arg1] * (100 * 10^18 * stor1[idx]) + (10^18 * -100 * stor6[idx] / (2 * stor12) - stor6[idx] * stor1[idx]) / 100) / 8736 * 24 * 3600 > 5 * 10^18:
                        _1534 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1534] = 6
                        mem[_1534 + 32] = 'COSMIC'
                        mem[mem[64]] = 0xc8616da500000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 96
                        mem[mem[64] + 100] = 6
                        idx = 0
                        while idx < 6:
                            mem[mem[64] + idx + 132] = mem[_1534 + idx + 32]
                            idx = idx + 32
                            continue 
                        require ext_code.size(sub_48db3888Address)
                        call sub_48db3888Address.0xc8616da5 with:
                             gas gas_remaining wei
                            args 96, arg1, 5 * 10^18, 6, mem[mem[64] + 132 len 6], 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        emit Claim(5 * 10^18, arg1);
                        return 5 * 10^18
                    _1537 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1537] = 6
                    mem[_1537 + 32] = 'COSMIC'
                    mem[mem[64]] = 0xc8616da500000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 96
                    mem[mem[64] + 100] = 6
                    s = 0
                    while s < 6:
                        mem[mem[64] + s + 132] = mem[_1537 + s + 32]
                        s = s + 32
                        continue 
                    require ext_code.size(sub_48db3888Address)
                    call sub_48db3888Address.0xc8616da5 with:
                         gas gas_remaining wei
                        args 96, arg1, (block.timestamp * (100 * 10^18 * stor1[idx]) + (10^18 * -100 * stor6[idx] / (2 * stor12) - stor6[idx] * stor1[idx]) / 100) - (lastClaim[arg1] * (100 * 10^18 * stor1[idx]) + (10^18 * -100 * stor6[idx] / (2 * stor12) - stor6[idx] * stor1[idx]) / 100) / 8736 * 24 * 3600, 6, mem[mem[64] + 132 len 6], 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    emit Claim(((block.timestamp * (100 * 10^18 * stor1[idx]) + (10^18 * -100 * stor6[idx] / (2 * stor12) - stor6[idx] * stor1[idx]) / 100) - (lastClaim[arg1] * (100 * 10^18 * stor1[idx]) + (10^18 * -100 * stor6[idx] / (2 * stor12) - stor6[idx] * stor1[idx]) / 100) / 8736 * 24 * 3600), arg1);
                    return ((block.timestamp * (100 * 10^18 * stor1[idx]) + (10^18 * -100 * stor6[idx] / (2 * stor12) - stor6[idx] * stor1[idx]) / 100) - (lastClaim[arg1] * (100 * 10^18 * stor1[idx]) + (10^18 * -100 * stor6[idx] / (2 * stor12) - stor6[idx] * stor1[idx]) / 100) / 8736 * 24 * 3600)
                if idx >= 6:
                    revert with 'NH{q', 50
                if not idx:
                    if stor7[idx] < 0:
                        revert with 'NH{q', 17
                    if not stor7[idx]:
                        revert with 'NH{q', 18
                    if 100 > -(0 / stor7[idx]) - 1:
                        revert with 'NH{q', 17
                    if idx >= 6:
                        revert with 'NH{q', 50
                    if stor1[idx] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                        revert with 'NH{q', 17
                    if 10^18 * stor1[idx] and (0 / stor7[idx]) + 100 > -1 / 10^18 * stor1[idx]:
                        revert with 'NH{q', 17
                    if (100 * 10^18 * stor1[idx]) + (10^18 * 0 / stor7[idx] * stor1[idx]) / 100 and block.timestamp - lastClaim[arg1] > -1 / (100 * 10^18 * stor1[idx]) + (10^18 * 0 / stor7[idx] * stor1[idx]) / 100:
                        revert with 'NH{q', 17
                    mem[0] = arg1
                    mem[32] = 13
                    lastClaim[arg1] = block.timestamp
                    if not lastClaim[arg1]:
                        _1001 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1001] = 6
                        mem[_1001 + 32] = 'COSMIC'
                        mem[mem[64]] = 0xc8616da500000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 96
                        mem[mem[64] + 100] = 6
                        idx = 0
                        while idx < 6:
                            mem[mem[64] + idx + 132] = mem[_1001 + idx + 32]
                            idx = idx + 32
                            continue 
                        require ext_code.size(sub_48db3888Address)
                        call sub_48db3888Address.0xc8616da5 with:
                             gas gas_remaining wei
                            args 96, arg1, 10^18, 6, mem[mem[64] + 132 len 6], 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        emit Claim(10^18, arg1);
                        return 10^18
                    if (block.timestamp * (100 * 10^18 * stor1[idx]) + (10^18 * 0 / stor7[idx] * stor1[idx]) / 100) - (lastClaim[arg1] * (100 * 10^18 * stor1[idx]) + (10^18 * 0 / stor7[idx] * stor1[idx]) / 100) / 8736 * 24 * 3600 > 5 * 10^18:
                        _1050 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1050] = 6
                        mem[_1050 + 32] = 'COSMIC'
                        mem[mem[64]] = 0xc8616da500000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 96
                        mem[mem[64] + 100] = 6
                        idx = 0
                        while idx < 6:
                            mem[mem[64] + idx + 132] = mem[_1050 + idx + 32]
                            idx = idx + 32
                            continue 
                        require ext_code.size(sub_48db3888Address)
                        call sub_48db3888Address.0xc8616da5 with:
                             gas gas_remaining wei
                            args 96, arg1, 5 * 10^18, 6, mem[mem[64] + 132 len 6], 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        emit Claim(5 * 10^18, arg1);
                        return 5 * 10^18
                    _1053 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1053] = 6
                    mem[_1053 + 32] = 'COSMIC'
                    mem[mem[64]] = 0xc8616da500000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 96
                    mem[mem[64] + 100] = 6
                    s = 0
                    while s < 6:
                        mem[mem[64] + s + 132] = mem[_1053 + s + 32]
                        s = s + 32
                        continue 
                    require ext_code.size(sub_48db3888Address)
                    call sub_48db3888Address.0xc8616da5 with:
                         gas gas_remaining wei
                        args 96, arg1, (block.timestamp * (100 * 10^18 * stor1[idx]) + (10^18 * 0 / stor7[idx] * stor1[idx]) / 100) - (lastClaim[arg1] * (100 * 10^18 * stor1[idx]) + (10^18 * 0 / stor7[idx] * stor1[idx]) / 100) / 8736 * 24 * 3600, 6, mem[mem[64] + 132 len 6], 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    emit Claim(((block.timestamp * (100 * 10^18 * stor1[idx]) + (10^18 * 0 / stor7[idx] * stor1[idx]) / 100) - (lastClaim[arg1] * (100 * 10^18 * stor1[idx]) + (10^18 * 0 / stor7[idx] * stor1[idx]) / 100) / 8736 * 24 * 3600), arg1);
                    return ((block.timestamp * (100 * 10^18 * stor1[idx]) + (10^18 * 0 / stor7[idx] * stor1[idx]) / 100) - (lastClaim[arg1] * (100 * 10^18 * stor1[idx]) + (10^18 * 0 / stor7[idx] * stor1[idx]) / 100) / 8736 * 24 * 3600)
                if idx < 1:
                    revert with 'NH{q', 17
                if idx - 1 >= 6:
                    revert with 'NH{q', 50
                if stor7[idx] < stor6[idx]:
                    revert with 'NH{q', 17
                if 0 < stor6[idx]:
                    revert with 'NH{q', 17
                if -stor6[idx] > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
                    revert with 'NH{q', 17
                if not stor7[idx] - stor6[idx]:
                    revert with 'NH{q', 18
                if 100 > -(-100 * stor6[idx] / stor7[idx] - stor6[idx]) - 1:
                    revert with 'NH{q', 17
                if idx >= 6:
                    revert with 'NH{q', 50
                if stor1[idx] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                    revert with 'NH{q', 17
                if 10^18 * stor1[idx] and (-100 * stor6[idx] / stor7[idx] - stor6[idx]) + 100 > -1 / 10^18 * stor1[idx]:
                    revert with 'NH{q', 17
                if (100 * 10^18 * stor1[idx]) + (10^18 * -100 * stor6[idx] / stor7[idx] - stor6[idx] * stor1[idx]) / 100 and block.timestamp - lastClaim[arg1] > -1 / (100 * 10^18 * stor1[idx]) + (10^18 * -100 * stor6[idx] / stor7[idx] - stor6[idx] * stor1[idx]) / 100:
                    revert with 'NH{q', 17
                mem[0] = arg1
                mem[32] = 13
                lastClaim[arg1] = block.timestamp
                if not lastClaim[arg1]:
                    _1142 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1142] = 6
                    mem[_1142 + 32] = 'COSMIC'
                    mem[mem[64]] = 0xc8616da500000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 96
                    mem[mem[64] + 100] = 6
                    idx = 0
                    while idx < 6:
                        mem[mem[64] + idx + 132] = mem[_1142 + idx + 32]
                        idx = idx + 32
                        continue 
                    require ext_code.size(sub_48db3888Address)
                    call sub_48db3888Address.0xc8616da5 with:
                         gas gas_remaining wei
                        args 96, arg1, 10^18, 6, mem[mem[64] + 132 len 6], 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    emit Claim(10^18, arg1);
                    return 10^18
                if (block.timestamp * (100 * 10^18 * stor1[idx]) + (10^18 * -100 * stor6[idx] / stor7[idx] - stor6[idx] * stor1[idx]) / 100) - (lastClaim[arg1] * (100 * 10^18 * stor1[idx]) + (10^18 * -100 * stor6[idx] / stor7[idx] - stor6[idx] * stor1[idx]) / 100) / 8736 * 24 * 3600 > 5 * 10^18:
                    _1192 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1192] = 6
                    mem[_1192 + 32] = 'COSMIC'
                    mem[mem[64]] = 0xc8616da500000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 96
                    mem[mem[64] + 100] = 6
                    idx = 0
                    while idx < 6:
                        mem[mem[64] + idx + 132] = mem[_1192 + idx + 32]
                        idx = idx + 32
                        continue 
                    require ext_code.size(sub_48db3888Address)
                    call sub_48db3888Address.0xc8616da5 with:
                         gas gas_remaining wei
                        args 96, arg1, 5 * 10^18, 6, mem[mem[64] + 132 len 6], 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    emit Claim(5 * 10^18, arg1);
                    return 5 * 10^18
                _1195 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1195] = 6
                mem[_1195 + 32] = 'COSMIC'
                mem[mem[64]] = 0xc8616da500000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 96
                mem[mem[64] + 100] = 6
                s = 0
                while s < 6:
                    mem[mem[64] + s + 132] = mem[_1195 + s + 32]
                    s = s + 32
                    continue 
                require ext_code.size(sub_48db3888Address)
                call sub_48db3888Address.0xc8616da5 with:
                     gas gas_remaining wei
                    args 96, arg1, (block.timestamp * (100 * 10^18 * stor1[idx]) + (10^18 * -100 * stor6[idx] / stor7[idx] - stor6[idx] * stor1[idx]) / 100) - (lastClaim[arg1] * (100 * 10^18 * stor1[idx]) + (10^18 * -100 * stor6[idx] / stor7[idx] - stor6[idx] * stor1[idx]) / 100) / 8736 * 24 * 3600, 6, mem[mem[64] + 132 len 6], 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                emit Claim(((block.timestamp * (100 * 10^18 * stor1[idx]) + (10^18 * -100 * stor6[idx] / stor7[idx] - stor6[idx] * stor1[idx]) / 100) - (lastClaim[arg1] * (100 * 10^18 * stor1[idx]) + (10^18 * -100 * stor6[idx] / stor7[idx] - stor6[idx] * stor1[idx]) / 100) / 8736 * 24 * 3600), arg1);
                return ((block.timestamp * (100 * 10^18 * stor1[idx]) + (10^18 * -100 * stor6[idx] / stor7[idx] - stor6[idx] * stor1[idx]) / 100) - (lastClaim[arg1] * (100 * 10^18 * stor1[idx]) + (10^18 * -100 * stor6[idx] / stor7[idx] - stor6[idx] * stor1[idx]) / 100) / 8736 * 24 * 3600)
            if stor7.length < 0:
                revert with 'NH{q', 17
            if not stor7.length:
                revert with 'NH{q', 18
            if 100 > -(0 / stor7.length) - 1:
                revert with 'NH{q', 17
            if stor1.length > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                revert with 'NH{q', 17
            if 10^18 * stor1.length and (0 / stor7.length) + 100 > -1 / 10^18 * stor1.length:
                revert with 'NH{q', 17
            if (100 * 10^18 * stor1.length) + (10^18 * 0 / stor7.length * stor1.length) / 100 and block.timestamp - lastClaim[arg1] > -1 / (100 * 10^18 * stor1.length) + (10^18 * 0 / stor7.length * stor1.length) / 100:
                revert with 'NH{q', 17
            lastClaim[arg1] = block.timestamp
            require ext_code.size(sub_48db3888Address)
            if not lastClaim[arg1]:
                call sub_48db3888Address.0xc8616da5 with:
                     gas gas_remaining wei
                    args 96, arg1, 10^18, 6, 'COSMIC', 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                emit Claim(10^18, arg1);
                return 10^18
            if (block.timestamp * (100 * 10^18 * stor1.length) + (10^18 * 0 / stor7.length * stor1.length) / 100) - (lastClaim[arg1] * (100 * 10^18 * stor1.length) + (10^18 * 0 / stor7.length * stor1.length) / 100) / 8736 * 24 * 3600 > 5 * 10^18:
                call sub_48db3888Address.0xc8616da5 with:
                     gas gas_remaining wei
                    args 96, arg1, 5 * 10^18, 6, 'COSMIC', 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                emit Claim(5 * 10^18, arg1);
                return 5 * 10^18
            call sub_48db3888Address.0xc8616da5 with:
                 gas gas_remaining wei
                args 96, arg1, (block.timestamp * (100 * 10^18 * stor1.length) + (10^18 * 0 / stor7.length * stor1.length) / 100) - (lastClaim[arg1] * (100 * 10^18 * stor1.length) + (10^18 * 0 / stor7.length * stor1.length) / 100) / 8736 * 24 * 3600, 6, 'COSMIC', 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            emit Claim(((block.timestamp * (100 * 10^18 * stor1.length) + (10^18 * 0 / stor7.length * stor1.length) / 100) - (lastClaim[arg1] * (100 * 10^18 * stor1.length) + (10^18 * 0 / stor7.length * stor1.length) / 100) / 8736 * 24 * 3600), arg1);
            return ((block.timestamp * (100 * 10^18 * stor1.length) + (10^18 * 0 / stor7.length * stor1.length) / 100) - (lastClaim[arg1] * (100 * 10^18 * stor1.length) + (10^18 * 0 / stor7.length * stor1.length) / 100) / 8736 * 24 * 3600)
        require _154 >= 32
        _524 = mem[ceil32(return_data.size) + 192]
        require mem[ceil32(return_data.size) + 192] == mem[ceil32(return_data.size) + 192]
        if mem[ceil32(return_data.size) + 192] / 10^18 >= stor12:
            if stor12 and 2 > -1 / stor12:
                revert with 'NH{q', 17
            if 2 * stor12 < stor12:
                revert with 'NH{q', 17
            if mem[ceil32(return_data.size) + 192] / 10^18 < stor12:
                revert with 'NH{q', 17
            if (mem[ceil32(return_data.size) + 192] / 10^18) - stor12 > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
                revert with 'NH{q', 17
            if not stor12:
                revert with 'NH{q', 18
            if 100 > -((100 * mem[ceil32(return_data.size) + 192] / 10^18) - (100 * stor12) / stor12) - 1:
                revert with 'NH{q', 17
            revert with 'NH{q', 50
        idx = 0
        while idx < 6:
            if mem[ceil32(return_data.size) + 192] / 10^18 >= stor7[idx]:
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            if idx == 6:
                if stor12 and 2 > -1 / stor12:
                    revert with 'NH{q', 17
                if not idx:
                    if 2 * stor12 < 0:
                        revert with 'NH{q', 17
                    if mem[ceil32(return_data.size) + 192] / 10^18 < 0:
                        revert with 'NH{q', 17
                    if mem[ceil32(return_data.size) + 192] / 10^18 > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
                        revert with 'NH{q', 17
                    if not 2 * stor12:
                        revert with 'NH{q', 18
                    if 100 > -(100 * mem[ceil32(return_data.size) + 192] / 10^18 / 2 * stor12) - 1:
                        revert with 'NH{q', 17
                    if idx >= 6:
                        revert with 'NH{q', 50
                    if stor1[idx] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                        revert with 'NH{q', 17
                    if 10^18 * stor1[idx] and (100 * mem[ceil32(return_data.size) + 192] / 10^18 / 2 * stor12) + 100 > -1 / 10^18 * stor1[idx]:
                        revert with 'NH{q', 17
                    if (100 * 10^18 * stor1[idx]) + (10^18 * 100 * mem[ceil32(return_data.size) + 192] / 10^18 / 2 * stor12 * stor1[idx]) / 100 and block.timestamp - lastClaim[arg1] > -1 / (100 * 10^18 * stor1[idx]) + (10^18 * 100 * mem[ceil32(return_data.size) + 192] / 10^18 / 2 * stor12 * stor1[idx]) / 100:
                        revert with 'NH{q', 17
                    mem[0] = arg1
                    mem[32] = 13
                    lastClaim[arg1] = block.timestamp
                    if not lastClaim[arg1]:
                        _1279 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1279] = 6
                        mem[_1279 + 32] = 'COSMIC'
                        mem[mem[64]] = 0xc8616da500000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 96
                        mem[mem[64] + 100] = 6
                        idx = 0
                        while idx < 6:
                            mem[mem[64] + idx + 132] = mem[_1279 + idx + 32]
                            idx = idx + 32
                            continue 
                        require ext_code.size(sub_48db3888Address)
                        call sub_48db3888Address.0xc8616da5 with:
                             gas gas_remaining wei
                            args 96, arg1, 10^18, 6, mem[mem[64] + 132 len 6], 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        emit Claim(10^18, arg1);
                        return 10^18
                    if (block.timestamp * (100 * 10^18 * stor1[idx]) + (10^18 * 100 * mem[ceil32(return_data.size) + 192] / 10^18 / 2 * stor12 * stor1[idx]) / 100) - (lastClaim[arg1] * (100 * 10^18 * stor1[idx]) + (10^18 * 100 * mem[ceil32(return_data.size) + 192] / 10^18 / 2 * stor12 * stor1[idx]) / 100) / 8736 * 24 * 3600 > 5 * 10^18:
                        _1318 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1318] = 6
                        mem[_1318 + 32] = 'COSMIC'
                        mem[mem[64]] = 0xc8616da500000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 96
                        mem[mem[64] + 100] = 6
                        idx = 0
                        while idx < 6:
                            mem[mem[64] + idx + 132] = mem[_1318 + idx + 32]
                            idx = idx + 32
                            continue 
                        require ext_code.size(sub_48db3888Address)
                        call sub_48db3888Address.0xc8616da5 with:
                             gas gas_remaining wei
                            args 96, arg1, 5 * 10^18, 6, mem[mem[64] + 132 len 6], 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        emit Claim(5 * 10^18, arg1);
                        return 5 * 10^18
                    _1321 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1321] = 6
                    mem[_1321 + 32] = 'COSMIC'
                    mem[mem[64]] = 0xc8616da500000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 96
                    mem[mem[64] + 100] = 6
                    s = 0
                    while s < 6:
                        mem[mem[64] + s + 132] = mem[_1321 + s + 32]
                        s = s + 32
                        continue 
                    require ext_code.size(sub_48db3888Address)
                    call sub_48db3888Address.0xc8616da5 with:
                         gas gas_remaining wei
                        args 96, arg1, (block.timestamp * (100 * 10^18 * stor1[idx]) + (10^18 * 100 * _524 / 10^18 / 2 * stor12 * stor1[idx]) / 100) - (lastClaim[arg1] * (100 * 10^18 * stor1[idx]) + (10^18 * 100 * _524 / 10^18 / 2 * stor12 * stor1[idx]) / 100) / 8736 * 24 * 3600, 6, mem[mem[64] + 132 len 6], 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    emit Claim(((block.timestamp * (100 * 10^18 * stor1[idx]) + (10^18 * 100 * _524 / 10^18 / 2 * stor12 * stor1[idx]) / 100) - (lastClaim[arg1] * (100 * 10^18 * stor1[idx]) + (10^18 * 100 * _524 / 10^18 / 2 * stor12 * stor1[idx]) / 100) / 8736 * 24 * 3600), arg1);
                    return ((block.timestamp * (100 * 10^18 * stor1[idx]) + (10^18 * 100 * _524 / 10^18 / 2 * stor12 * stor1[idx]) / 100) - (lastClaim[arg1] * (100 * 10^18 * stor1[idx]) + (10^18 * 100 * _524 / 10^18 / 2 * stor12 * stor1[idx]) / 100) / 8736 * 24 * 3600)
                if idx < 1:
                    revert with 'NH{q', 17
                if idx - 1 >= 6:
                    revert with 'NH{q', 50
                if 2 * stor12 < stor6[idx]:
                    revert with 'NH{q', 17
                if mem[ceil32(return_data.size) + 192] / 10^18 < stor6[idx]:
                    revert with 'NH{q', 17
                if (mem[ceil32(return_data.size) + 192] / 10^18) - stor6[idx] > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
                    revert with 'NH{q', 17
                if not (2 * stor12) - stor6[idx]:
                    revert with 'NH{q', 18
                if 100 > -((100 * mem[ceil32(return_data.size) + 192] / 10^18) - (100 * stor6[idx]) / (2 * stor12) - stor6[idx]) - 1:
                    revert with 'NH{q', 17
                if idx >= 6:
                    revert with 'NH{q', 50
                if stor1[idx] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                    revert with 'NH{q', 17
                if 10^18 * stor1[idx] and ((100 * mem[ceil32(return_data.size) + 192] / 10^18) - (100 * stor6[idx]) / (2 * stor12) - stor6[idx]) + 100 > -1 / 10^18 * stor1[idx]:
                    revert with 'NH{q', 17
                if (100 * 10^18 * stor1[idx]) + (10^18 * (100 * mem[ceil32(return_data.size) + 192] / 10^18) - (100 * stor6[idx]) / (2 * stor12) - stor6[idx] * stor1[idx]) / 100 and block.timestamp - lastClaim[arg1] > -1 / (100 * 10^18 * stor1[idx]) + (10^18 * (100 * mem[ceil32(return_data.size) + 192] / 10^18) - (100 * stor6[idx]) / (2 * stor12) - stor6[idx] * stor1[idx]) / 100:
                    revert with 'NH{q', 17
                mem[0] = arg1
                mem[32] = 13
                lastClaim[arg1] = block.timestamp
                if not lastClaim[arg1]:
                    _1441 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1441] = 6
                    mem[_1441 + 32] = 'COSMIC'
                    mem[mem[64]] = 0xc8616da500000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 96
                    mem[mem[64] + 100] = 6
                    idx = 0
                    while idx < 6:
                        mem[mem[64] + idx + 132] = mem[_1441 + idx + 32]
                        idx = idx + 32
                        continue 
                    require ext_code.size(sub_48db3888Address)
                    call sub_48db3888Address.0xc8616da5 with:
                         gas gas_remaining wei
                        args 96, arg1, 10^18, 6, mem[mem[64] + 132 len 6], 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    emit Claim(10^18, arg1);
                    return 10^18
                if (block.timestamp * (100 * 10^18 * stor1[idx]) + (10^18 * (100 * mem[ceil32(return_data.size) + 192] / 10^18) - (100 * stor6[idx]) / (2 * stor12) - stor6[idx] * stor1[idx]) / 100) - (lastClaim[arg1] * (100 * 10^18 * stor1[idx]) + (10^18 * (100 * mem[ceil32(return_data.size) + 192] / 10^18) - (100 * stor6[idx]) / (2 * stor12) - stor6[idx] * stor1[idx]) / 100) / 8736 * 24 * 3600 > 5 * 10^18:
                    _1543 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1543] = 6
                    mem[_1543 + 32] = 'COSMIC'
                    mem[mem[64]] = 0xc8616da500000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 96
                    mem[mem[64] + 100] = 6
                    idx = 0
                    while idx < 6:
                        mem[mem[64] + idx + 132] = mem[_1543 + idx + 32]
                        idx = idx + 32
                        continue 
                    require ext_code.size(sub_48db3888Address)
                    call sub_48db3888Address.0xc8616da5 with:
                         gas gas_remaining wei
                        args 96, arg1, 5 * 10^18, 6, mem[mem[64] + 132 len 6], 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    emit Claim(5 * 10^18, arg1);
                    return 5 * 10^18
                _1546 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1546] = 6
                mem[_1546 + 32] = 'COSMIC'
                mem[mem[64]] = 0xc8616da500000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 96
                mem[mem[64] + 100] = 6
                s = 0
                while s < 6:
                    mem[mem[64] + s + 132] = mem[_1546 + s + 32]
                    s = s + 32
                    continue 
                require ext_code.size(sub_48db3888Address)
                call sub_48db3888Address.0xc8616da5 with:
                     gas gas_remaining wei
                    args 96, arg1, (block.timestamp * (100 * 10^18 * stor1[idx]) + (10^18 * (100 * _524 / 10^18) - (100 * stor6[idx]) / (2 * stor12) - stor6[idx] * stor1[idx]) / 100) - (lastClaim[arg1] * (100 * 10^18 * stor1[idx]) + (10^18 * (100 * _524 / 10^18) - (100 * stor6[idx]) / (2 * stor12) - stor6[idx] * stor1[idx]) / 100) / 8736 * 24 * 3600, 6, mem[mem[64] + 132 len 6], 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                emit Claim(((block.timestamp * (100 * 10^18 * stor1[idx]) + (10^18 * (100 * _524 / 10^18) - (100 * stor6[idx]) / (2 * stor12) - stor6[idx] * stor1[idx]) / 100) - (lastClaim[arg1] * (100 * 10^18 * stor1[idx]) + (10^18 * (100 * _524 / 10^18) - (100 * stor6[idx]) / (2 * stor12) - stor6[idx] * stor1[idx]) / 100) / 8736 * 24 * 3600), arg1);
                return ((block.timestamp * (100 * 10^18 * stor1[idx]) + (10^18 * (100 * _524 / 10^18) - (100 * stor6[idx]) / (2 * stor12) - stor6[idx] * stor1[idx]) / 100) - (lastClaim[arg1] * (100 * 10^18 * stor1[idx]) + (10^18 * (100 * _524 / 10^18) - (100 * stor6[idx]) / (2 * stor12) - stor6[idx] * stor1[idx]) / 100) / 8736 * 24 * 3600)
            if idx >= 6:
                revert with 'NH{q', 50
            if not idx:
                if stor7[idx] < 0:
                    revert with 'NH{q', 17
                if mem[ceil32(return_data.size) + 192] / 10^18 < 0:
                    revert with 'NH{q', 17
                if mem[ceil32(return_data.size) + 192] / 10^18 > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
                    revert with 'NH{q', 17
                if not stor7[idx]:
                    revert with 'NH{q', 18
                if 100 > -(100 * mem[ceil32(return_data.size) + 192] / 10^18 / stor7[idx]) - 1:
                    revert with 'NH{q', 17
                if idx >= 6:
                    revert with 'NH{q', 50
                if stor1[idx] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                    revert with 'NH{q', 17
                if 10^18 * stor1[idx] and (100 * mem[ceil32(return_data.size) + 192] / 10^18 / stor7[idx]) + 100 > -1 / 10^18 * stor1[idx]:
                    revert with 'NH{q', 17
                if (100 * 10^18 * stor1[idx]) + (10^18 * 100 * mem[ceil32(return_data.size) + 192] / 10^18 / stor7[idx] * stor1[idx]) / 100 and block.timestamp - lastClaim[arg1] > -1 / (100 * 10^18 * stor1[idx]) + (10^18 * 100 * mem[ceil32(return_data.size) + 192] / 10^18 / stor7[idx] * stor1[idx]) / 100:
                    revert with 'NH{q', 17
                mem[0] = arg1
                mem[32] = 13
                lastClaim[arg1] = block.timestamp
                if not lastClaim[arg1]:
                    _1005 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1005] = 6
                    mem[_1005 + 32] = 'COSMIC'
                    mem[mem[64]] = 0xc8616da500000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 96
                    mem[mem[64] + 100] = 6
                    idx = 0
                    while idx < 6:
                        mem[mem[64] + idx + 132] = mem[_1005 + idx + 32]
                        idx = idx + 32
                        continue 
                    require ext_code.size(sub_48db3888Address)
                    call sub_48db3888Address.0xc8616da5 with:
                         gas gas_remaining wei
                        args 96, arg1, 10^18, 6, mem[mem[64] + 132 len 6], 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    emit Claim(10^18, arg1);
                    return 10^18
                if (block.timestamp * (100 * 10^18 * stor1[idx]) + (10^18 * 100 * mem[ceil32(return_data.size) + 192] / 10^18 / stor7[idx] * stor1[idx]) / 100) - (lastClaim[arg1] * (100 * 10^18 * stor1[idx]) + (10^18 * 100 * mem[ceil32(return_data.size) + 192] / 10^18 / stor7[idx] * stor1[idx]) / 100) / 8736 * 24 * 3600 > 5 * 10^18:
                    _1058 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1058] = 6
                    mem[_1058 + 32] = 'COSMIC'
                    mem[mem[64]] = 0xc8616da500000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 96
                    mem[mem[64] + 100] = 6
                    idx = 0
                    while idx < 6:
                        mem[mem[64] + idx + 132] = mem[_1058 + idx + 32]
                        idx = idx + 32
                        continue 
                    require ext_code.size(sub_48db3888Address)
                    call sub_48db3888Address.0xc8616da5 with:
                         gas gas_remaining wei
                        args 96, arg1, 5 * 10^18, 6, mem[mem[64] + 132 len 6], 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    emit Claim(5 * 10^18, arg1);
                    return 5 * 10^18
                _1061 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1061] = 6
                mem[_1061 + 32] = 'COSMIC'
                mem[mem[64]] = 0xc8616da500000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 96
                mem[mem[64] + 100] = 6
                s = 0
                while s < 6:
                    mem[mem[64] + s + 132] = mem[_1061 + s + 32]
                    s = s + 32
                    continue 
                require ext_code.size(sub_48db3888Address)
                call sub_48db3888Address.0xc8616da5 with:
                     gas gas_remaining wei
                    args 96, arg1, (block.timestamp * (100 * 10^18 * stor1[idx]) + (10^18 * 100 * _524 / 10^18 / stor7[idx] * stor1[idx]) / 100) - (lastClaim[arg1] * (100 * 10^18 * stor1[idx]) + (10^18 * 100 * _524 / 10^18 / stor7[idx] * stor1[idx]) / 100) / 8736 * 24 * 3600, 6, mem[mem[64] + 132 len 6], 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                emit Claim(((block.timestamp * (100 * 10^18 * stor1[idx]) + (10^18 * 100 * _524 / 10^18 / stor7[idx] * stor1[idx]) / 100) - (lastClaim[arg1] * (100 * 10^18 * stor1[idx]) + (10^18 * 100 * _524 / 10^18 / stor7[idx] * stor1[idx]) / 100) / 8736 * 24 * 3600), arg1);
                return ((block.timestamp * (100 * 10^18 * stor1[idx]) + (10^18 * 100 * _524 / 10^18 / stor7[idx] * stor1[idx]) / 100) - (lastClaim[arg1] * (100 * 10^18 * stor1[idx]) + (10^18 * 100 * _524 / 10^18 / stor7[idx] * stor1[idx]) / 100) / 8736 * 24 * 3600)
            if idx < 1:
                revert with 'NH{q', 17
            if idx - 1 >= 6:
                revert with 'NH{q', 50
            if stor7[idx] < stor6[idx]:
                revert with 'NH{q', 17
            if mem[ceil32(return_data.size) + 192] / 10^18 < stor6[idx]:
                revert with 'NH{q', 17
            if (mem[ceil32(return_data.size) + 192] / 10^18) - stor6[idx] > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
                revert with 'NH{q', 17
            if not stor7[idx] - stor6[idx]:
                revert with 'NH{q', 18
            if 100 > -((100 * mem[ceil32(return_data.size) + 192] / 10^18) - (100 * stor6[idx]) / stor7[idx] - stor6[idx]) - 1:
                revert with 'NH{q', 17
            if idx >= 6:
                revert with 'NH{q', 50
            if stor1[idx] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                revert with 'NH{q', 17
            if 10^18 * stor1[idx] and ((100 * mem[ceil32(return_data.size) + 192] / 10^18) - (100 * stor6[idx]) / stor7[idx] - stor6[idx]) + 100 > -1 / 10^18 * stor1[idx]:
                revert with 'NH{q', 17
            if (100 * 10^18 * stor1[idx]) + (10^18 * (100 * mem[ceil32(return_data.size) + 192] / 10^18) - (100 * stor6[idx]) / stor7[idx] - stor6[idx] * stor1[idx]) / 100 and block.timestamp - lastClaim[arg1] > -1 / (100 * 10^18 * stor1[idx]) + (10^18 * (100 * mem[ceil32(return_data.size) + 192] / 10^18) - (100 * stor6[idx]) / stor7[idx] - stor6[idx] * stor1[idx]) / 100:
                revert with 'NH{q', 17
            mem[0] = arg1
            mem[32] = 13
            lastClaim[arg1] = block.timestamp
            if not lastClaim[arg1]:
                _1147 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1147] = 6
                mem[_1147 + 32] = 'COSMIC'
                mem[mem[64]] = 0xc8616da500000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 96
                mem[mem[64] + 100] = 6
                idx = 0
                while idx < 6:
                    mem[mem[64] + idx + 132] = mem[_1147 + idx + 32]
                    idx = idx + 32
                    continue 
                require ext_code.size(sub_48db3888Address)
                call sub_48db3888Address.0xc8616da5 with:
                     gas gas_remaining wei
                    args 96, arg1, 10^18, 6, mem[mem[64] + 132 len 6], 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                emit Claim(10^18, arg1);
                return 10^18
            if (block.timestamp * (100 * 10^18 * stor1[idx]) + (10^18 * (100 * mem[ceil32(return_data.size) + 192] / 10^18) - (100 * stor6[idx]) / stor7[idx] - stor6[idx] * stor1[idx]) / 100) - (lastClaim[arg1] * (100 * 10^18 * stor1[idx]) + (10^18 * (100 * mem[ceil32(return_data.size) + 192] / 10^18) - (100 * stor6[idx]) / stor7[idx] - stor6[idx] * stor1[idx]) / 100) / 8736 * 24 * 3600 > 5 * 10^18:
                _1198 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1198] = 6
                mem[_1198 + 32] = 'COSMIC'
                mem[mem[64]] = 0xc8616da500000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 96
                mem[mem[64] + 100] = 6
                idx = 0
                while idx < 6:
                    mem[mem[64] + idx + 132] = mem[_1198 + idx + 32]
                    idx = idx + 32
                    continue 
                require ext_code.size(sub_48db3888Address)
                call sub_48db3888Address.0xc8616da5 with:
                     gas gas_remaining wei
                    args 96, arg1, 5 * 10^18, 6, mem[mem[64] + 132 len 6], 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                emit Claim(5 * 10^18, arg1);
                return 5 * 10^18
            _1201 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1201] = 6
            mem[_1201 + 32] = 'COSMIC'
            mem[mem[64]] = 0xc8616da500000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 96
            mem[mem[64] + 100] = 6
            s = 0
            while s < 6:
                mem[mem[64] + s + 132] = mem[_1201 + s + 32]
                s = s + 32
                continue 
            require ext_code.size(sub_48db3888Address)
            call sub_48db3888Address.0xc8616da5 with:
                 gas gas_remaining wei
                args 96, arg1, (block.timestamp * (100 * 10^18 * stor1[idx]) + (10^18 * (100 * _524 / 10^18) - (100 * stor6[idx]) / stor7[idx] - stor6[idx] * stor1[idx]) / 100) - (lastClaim[arg1] * (100 * 10^18 * stor1[idx]) + (10^18 * (100 * _524 / 10^18) - (100 * stor6[idx]) / stor7[idx] - stor6[idx] * stor1[idx]) / 100) / 8736 * 24 * 3600, 6, mem[mem[64] + 132 len 6], 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            emit Claim(((block.timestamp * (100 * 10^18 * stor1[idx]) + (10^18 * (100 * _524 / 10^18) - (100 * stor6[idx]) / stor7[idx] - stor6[idx] * stor1[idx]) / 100) - (lastClaim[arg1] * (100 * 10^18 * stor1[idx]) + (10^18 * (100 * _524 / 10^18) - (100 * stor6[idx]) / stor7[idx] - stor6[idx] * stor1[idx]) / 100) / 8736 * 24 * 3600), arg1);
            return ((block.timestamp * (100 * 10^18 * stor1[idx]) + (10^18 * (100 * _524 / 10^18) - (100 * stor6[idx]) / stor7[idx] - stor6[idx] * stor1[idx]) / 100) - (lastClaim[arg1] * (100 * 10^18 * stor1[idx]) + (10^18 * (100 * _524 / 10^18) - (100 * stor6[idx]) / stor7[idx] - stor6[idx] * stor1[idx]) / 100) / 8736 * 24 * 3600)
    else:
        mem[ceil32(return_data.size) + _154 + 192] = 0
        if not _154:
            if 0 >= stor12:
                if stor12 and 2 > -1 / stor12:
                    revert with 'NH{q', 17
                if 2 * stor12 < stor12:
                    revert with 'NH{q', 17
                if 0 < stor12:
                    revert with 'NH{q', 17
                if -stor12 > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
                    revert with 'NH{q', 17
                if not stor12:
                    revert with 'NH{q', 18
                if 100 > -(-100 * stor12 / stor12) - 1:
                    revert with 'NH{q', 17
                revert with 'NH{q', 50
            idx = 0
            while idx < 6:
                if 0 >= stor7[idx]:
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                if idx == 6:
                    if stor12 and 2 > -1 / stor12:
                        revert with 'NH{q', 17
                    if not idx:
                        if 2 * stor12 < 0:
                            revert with 'NH{q', 17
                        if not 2 * stor12:
                            revert with 'NH{q', 18
                        if 100 > -(0 / 2 * stor12) - 1:
                            revert with 'NH{q', 17
                        if idx >= 6:
                            revert with 'NH{q', 50
                        if stor1[idx] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                            revert with 'NH{q', 17
                        if 10^18 * stor1[idx] and (0 / 2 * stor12) + 100 > -1 / 10^18 * stor1[idx]:
                            revert with 'NH{q', 17
                        if (100 * 10^18 * stor1[idx]) + (10^18 * 0 / 2 * stor12 * stor1[idx]) / 100 and block.timestamp - lastClaim[arg1] > -1 / (100 * 10^18 * stor1[idx]) + (10^18 * 0 / 2 * stor12 * stor1[idx]) / 100:
                            revert with 'NH{q', 17
                        mem[0] = arg1
                        mem[32] = 13
                        lastClaim[arg1] = block.timestamp
                        if not lastClaim[arg1]:
                            _1282 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1282] = 6
                            mem[_1282 + 32] = 'COSMIC'
                            mem[mem[64]] = 0xc8616da500000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 96
                            mem[mem[64] + 100] = 6
                            idx = 0
                            while idx < 6:
                                mem[mem[64] + idx + 132] = mem[_1282 + idx + 32]
                                idx = idx + 32
                                continue 
                            require ext_code.size(sub_48db3888Address)
                            call sub_48db3888Address.0xc8616da5 with:
                                 gas gas_remaining wei
                                args 96, arg1, 10^18, 6, mem[mem[64] + 132 len 6], 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            emit Claim(10^18, arg1);
                            return 10^18
                        if (block.timestamp * (100 * 10^18 * stor1[idx]) + (10^18 * 0 / 2 * stor12 * stor1[idx]) / 100) - (lastClaim[arg1] * (100 * 10^18 * stor1[idx]) + (10^18 * 0 / 2 * stor12 * stor1[idx]) / 100) / 8736 * 24 * 3600 > 5 * 10^18:
                            _1324 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1324] = 6
                            mem[_1324 + 32] = 'COSMIC'
                            mem[mem[64]] = 0xc8616da500000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 96
                            mem[mem[64] + 100] = 6
                            idx = 0
                            while idx < 6:
                                mem[mem[64] + idx + 132] = mem[_1324 + idx + 32]
                                idx = idx + 32
                                continue 
                            require ext_code.size(sub_48db3888Address)
                            call sub_48db3888Address.0xc8616da5 with:
                                 gas gas_remaining wei
                                args 96, arg1, 5 * 10^18, 6, mem[mem[64] + 132 len 6], 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            emit Claim(5 * 10^18, arg1);
                            return 5 * 10^18
                        _1327 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1327] = 6
                        mem[_1327 + 32] = 'COSMIC'
                        mem[mem[64]] = 0xc8616da500000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 96
                        mem[mem[64] + 100] = 6
                        s = 0
                        while s < 6:
                            mem[mem[64] + s + 132] = mem[_1327 + s + 32]
                            s = s + 32
                            continue 
                        require ext_code.size(sub_48db3888Address)
                        call sub_48db3888Address.0xc8616da5 with:
                             gas gas_remaining wei
                            args 96, arg1, (block.timestamp * (100 * 10^18 * stor1[idx]) + (10^18 * 0 / 2 * stor12 * stor1[idx]) / 100) - (lastClaim[arg1] * (100 * 10^18 * stor1[idx]) + (10^18 * 0 / 2 * stor12 * stor1[idx]) / 100) / 8736 * 24 * 3600, 6, mem[mem[64] + 132 len 6], 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        emit Claim(((block.timestamp * (100 * 10^18 * stor1[idx]) + (10^18 * 0 / 2 * stor12 * stor1[idx]) / 100) - (lastClaim[arg1] * (100 * 10^18 * stor1[idx]) + (10^18 * 0 / 2 * stor12 * stor1[idx]) / 100) / 8736 * 24 * 3600), arg1);
                        return ((block.timestamp * (100 * 10^18 * stor1[idx]) + (10^18 * 0 / 2 * stor12 * stor1[idx]) / 100) - (lastClaim[arg1] * (100 * 10^18 * stor1[idx]) + (10^18 * 0 / 2 * stor12 * stor1[idx]) / 100) / 8736 * 24 * 3600)
                    if idx < 1:
                        revert with 'NH{q', 17
                    if idx - 1 >= 6:
                        revert with 'NH{q', 50
                    if 2 * stor12 < stor6[idx]:
                        revert with 'NH{q', 17
                    if 0 < stor6[idx]:
                        revert with 'NH{q', 17
                    if -stor6[idx] > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
                        revert with 'NH{q', 17
                    if not (2 * stor12) - stor6[idx]:
                        revert with 'NH{q', 18
                    if 100 > -(-100 * stor6[idx] / (2 * stor12) - stor6[idx]) - 1:
                        revert with 'NH{q', 17
                    if idx >= 6:
                        revert with 'NH{q', 50
                    if stor1[idx] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                        revert with 'NH{q', 17
                    if 10^18 * stor1[idx] and (-100 * stor6[idx] / (2 * stor12) - stor6[idx]) + 100 > -1 / 10^18 * stor1[idx]:
                        revert with 'NH{q', 17
                    if (100 * 10^18 * stor1[idx]) + (10^18 * -100 * stor6[idx] / (2 * stor12) - stor6[idx] * stor1[idx]) / 100 and block.timestamp - lastClaim[arg1] > -1 / (100 * 10^18 * stor1[idx]) + (10^18 * -100 * stor6[idx] / (2 * stor12) - stor6[idx] * stor1[idx]) / 100:
                        revert with 'NH{q', 17
                    mem[0] = arg1
                    mem[32] = 13
                    lastClaim[arg1] = block.timestamp
                    if not lastClaim[arg1]:
                        _1447 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1447] = 6
                        mem[_1447 + 32] = 'COSMIC'
                        mem[mem[64]] = 0xc8616da500000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 96
                        mem[mem[64] + 100] = 6
                        idx = 0
                        while idx < 6:
                            mem[mem[64] + idx + 132] = mem[_1447 + idx + 32]
                            idx = idx + 32
                            continue 
                        require ext_code.size(sub_48db3888Address)
                        call sub_48db3888Address.0xc8616da5 with:
                             gas gas_remaining wei
                            args 96, arg1, 10^18, 6, mem[mem[64] + 132 len 6], 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        emit Claim(10^18, arg1);
                        return 10^18
                    if (block.timestamp * (100 * 10^18 * stor1[idx]) + (10^18 * -100 * stor6[idx] / (2 * stor12) - stor6[idx] * stor1[idx]) / 100) - (lastClaim[arg1] * (100 * 10^18 * stor1[idx]) + (10^18 * -100 * stor6[idx] / (2 * stor12) - stor6[idx] * stor1[idx]) / 100) / 8736 * 24 * 3600 > 5 * 10^18:
                        _1552 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1552] = 6
                        mem[_1552 + 32] = 'COSMIC'
                        mem[mem[64]] = 0xc8616da500000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 96
                        mem[mem[64] + 100] = 6
                        idx = 0
                        while idx < 6:
                            mem[mem[64] + idx + 132] = mem[_1552 + idx + 32]
                            idx = idx + 32
                            continue 
                        require ext_code.size(sub_48db3888Address)
                        call sub_48db3888Address.0xc8616da5 with:
                             gas gas_remaining wei
                            args 96, arg1, 5 * 10^18, 6, mem[mem[64] + 132 len 6], 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        emit Claim(5 * 10^18, arg1);
                        return 5 * 10^18
                    _1555 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1555] = 6
                    mem[_1555 + 32] = 'COSMIC'
                    mem[mem[64]] = 0xc8616da500000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 96
                    mem[mem[64] + 100] = 6
                    s = 0
                    while s < 6:
                        mem[mem[64] + s + 132] = mem[_1555 + s + 32]
                        s = s + 32
                        continue 
                    require ext_code.size(sub_48db3888Address)
                    call sub_48db3888Address.0xc8616da5 with:
                         gas gas_remaining wei
                        args 96, arg1, (block.timestamp * (100 * 10^18 * stor1[idx]) + (10^18 * -100 * stor6[idx] / (2 * stor12) - stor6[idx] * stor1[idx]) / 100) - (lastClaim[arg1] * (100 * 10^18 * stor1[idx]) + (10^18 * -100 * stor6[idx] / (2 * stor12) - stor6[idx] * stor1[idx]) / 100) / 8736 * 24 * 3600, 6, mem[mem[64] + 132 len 6], 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    emit Claim(((block.timestamp * (100 * 10^18 * stor1[idx]) + (10^18 * -100 * stor6[idx] / (2 * stor12) - stor6[idx] * stor1[idx]) / 100) - (lastClaim[arg1] * (100 * 10^18 * stor1[idx]) + (10^18 * -100 * stor6[idx] / (2 * stor12) - stor6[idx] * stor1[idx]) / 100) / 8736 * 24 * 3600), arg1);
                    return ((block.timestamp * (100 * 10^18 * stor1[idx]) + (10^18 * -100 * stor6[idx] / (2 * stor12) - stor6[idx] * stor1[idx]) / 100) - (lastClaim[arg1] * (100 * 10^18 * stor1[idx]) + (10^18 * -100 * stor6[idx] / (2 * stor12) - stor6[idx] * stor1[idx]) / 100) / 8736 * 24 * 3600)
                if idx >= 6:
                    revert with 'NH{q', 50
                if not idx:
                    if stor7[idx] < 0:
                        revert with 'NH{q', 17
                    if not stor7[idx]:
                        revert with 'NH{q', 18
                    if 100 > -(0 / stor7[idx]) - 1:
                        revert with 'NH{q', 17
                    if idx >= 6:
                        revert with 'NH{q', 50
                    if stor1[idx] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                        revert with 'NH{q', 17
                    if 10^18 * stor1[idx] and (0 / stor7[idx]) + 100 > -1 / 10^18 * stor1[idx]:
                        revert with 'NH{q', 17
                    if (100 * 10^18 * stor1[idx]) + (10^18 * 0 / stor7[idx] * stor1[idx]) / 100 and block.timestamp - lastClaim[arg1] > -1 / (100 * 10^18 * stor1[idx]) + (10^18 * 0 / stor7[idx] * stor1[idx]) / 100:
                        revert with 'NH{q', 17
                    mem[0] = arg1
                    mem[32] = 13
                    lastClaim[arg1] = block.timestamp
                    if not lastClaim[arg1]:
                        _1009 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1009] = 6
                        mem[_1009 + 32] = 'COSMIC'
                        mem[mem[64]] = 0xc8616da500000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 96
                        mem[mem[64] + 100] = 6
                        idx = 0
                        while idx < 6:
                            mem[mem[64] + idx + 132] = mem[_1009 + idx + 32]
                            idx = idx + 32
                            continue 
                        require ext_code.size(sub_48db3888Address)
                        call sub_48db3888Address.0xc8616da5 with:
                             gas gas_remaining wei
                            args 96, arg1, 10^18, 6, mem[mem[64] + 132 len 6], 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        emit Claim(10^18, arg1);
                        return 10^18
                    if (block.timestamp * (100 * 10^18 * stor1[idx]) + (10^18 * 0 / stor7[idx] * stor1[idx]) / 100) - (lastClaim[arg1] * (100 * 10^18 * stor1[idx]) + (10^18 * 0 / stor7[idx] * stor1[idx]) / 100) / 8736 * 24 * 3600 > 5 * 10^18:
                        _1066 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1066] = 6
                        mem[_1066 + 32] = 'COSMIC'
                        mem[mem[64]] = 0xc8616da500000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 96
                        mem[mem[64] + 100] = 6
                        idx = 0
                        while idx < 6:
                            mem[mem[64] + idx + 132] = mem[_1066 + idx + 32]
                            idx = idx + 32
                            continue 
                        require ext_code.size(sub_48db3888Address)
                        call sub_48db3888Address.0xc8616da5 with:
                             gas gas_remaining wei
                            args 96, arg1, 5 * 10^18, 6, mem[mem[64] + 132 len 6], 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        emit Claim(5 * 10^18, arg1);
                        return 5 * 10^18
                    _1069 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1069] = 6
                    mem[_1069 + 32] = 'COSMIC'
                    mem[mem[64]] = 0xc8616da500000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 96
                    mem[mem[64] + 100] = 6
                    s = 0
                    while s < 6:
                        mem[mem[64] + s + 132] = mem[_1069 + s + 32]
                        s = s + 32
                        continue 
                    require ext_code.size(sub_48db3888Address)
                    call sub_48db3888Address.0xc8616da5 with:
                         gas gas_remaining wei
                        args 96, arg1, (block.timestamp * (100 * 10^18 * stor1[idx]) + (10^18 * 0 / stor7[idx] * stor1[idx]) / 100) - (lastClaim[arg1] * (100 * 10^18 * stor1[idx]) + (10^18 * 0 / stor7[idx] * stor1[idx]) / 100) / 8736 * 24 * 3600, 6, mem[mem[64] + 132 len 6], 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    emit Claim(((block.timestamp * (100 * 10^18 * stor1[idx]) + (10^18 * 0 / stor7[idx] * stor1[idx]) / 100) - (lastClaim[arg1] * (100 * 10^18 * stor1[idx]) + (10^18 * 0 / stor7[idx] * stor1[idx]) / 100) / 8736 * 24 * 3600), arg1);
                    return ((block.timestamp * (100 * 10^18 * stor1[idx]) + (10^18 * 0 / stor7[idx] * stor1[idx]) / 100) - (lastClaim[arg1] * (100 * 10^18 * stor1[idx]) + (10^18 * 0 / stor7[idx] * stor1[idx]) / 100) / 8736 * 24 * 3600)
                if idx < 1:
                    revert with 'NH{q', 17
                if idx - 1 >= 6:
                    revert with 'NH{q', 50
                if stor7[idx] < stor6[idx]:
                    revert with 'NH{q', 17
                if 0 < stor6[idx]:
                    revert with 'NH{q', 17
                if -stor6[idx] > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
                    revert with 'NH{q', 17
                if not stor7[idx] - stor6[idx]:
                    revert with 'NH{q', 18
                if 100 > -(-100 * stor6[idx] / stor7[idx] - stor6[idx]) - 1:
                    revert with 'NH{q', 17
                if idx >= 6:
                    revert with 'NH{q', 50
                if stor1[idx] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                    revert with 'NH{q', 17
                if 10^18 * stor1[idx] and (-100 * stor6[idx] / stor7[idx] - stor6[idx]) + 100 > -1 / 10^18 * stor1[idx]:
                    revert with 'NH{q', 17
                if (100 * 10^18 * stor1[idx]) + (10^18 * -100 * stor6[idx] / stor7[idx] - stor6[idx] * stor1[idx]) / 100 and block.timestamp - lastClaim[arg1] > -1 / (100 * 10^18 * stor1[idx]) + (10^18 * -100 * stor6[idx] / stor7[idx] - stor6[idx] * stor1[idx]) / 100:
                    revert with 'NH{q', 17
                mem[0] = arg1
                mem[32] = 13
                lastClaim[arg1] = block.timestamp
                if not lastClaim[arg1]:
                    _1152 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1152] = 6
                    mem[_1152 + 32] = 'COSMIC'
                    mem[mem[64]] = 0xc8616da500000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 96
                    mem[mem[64] + 100] = 6
                    idx = 0
                    while idx < 6:
                        mem[mem[64] + idx + 132] = mem[_1152 + idx + 32]
                        idx = idx + 32
                        continue 
                    require ext_code.size(sub_48db3888Address)
                    call sub_48db3888Address.0xc8616da5 with:
                         gas gas_remaining wei
                        args 96, arg1, 10^18, 6, mem[mem[64] + 132 len 6], 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    emit Claim(10^18, arg1);
                    return 10^18
                if (block.timestamp * (100 * 10^18 * stor1[idx]) + (10^18 * -100 * stor6[idx] / stor7[idx] - stor6[idx] * stor1[idx]) / 100) - (lastClaim[arg1] * (100 * 10^18 * stor1[idx]) + (10^18 * -100 * stor6[idx] / stor7[idx] - stor6[idx] * stor1[idx]) / 100) / 8736 * 24 * 3600 > 5 * 10^18:
                    _1204 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1204] = 6
                    mem[_1204 + 32] = 'COSMIC'
                    mem[mem[64]] = 0xc8616da500000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 96
                    mem[mem[64] + 100] = 6
                    idx = 0
                    while idx < 6:
                        mem[mem[64] + idx + 132] = mem[_1204 + idx + 32]
                        idx = idx + 32
                        continue 
                    require ext_code.size(sub_48db3888Address)
                    call sub_48db3888Address.0xc8616da5 with:
                         gas gas_remaining wei
                        args 96, arg1, 5 * 10^18, 6, mem[mem[64] + 132 len 6], 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    emit Claim(5 * 10^18, arg1);
                    return 5 * 10^18
                _1207 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1207] = 6
                mem[_1207 + 32] = 'COSMIC'
                mem[mem[64]] = 0xc8616da500000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 96
                mem[mem[64] + 100] = 6
                s = 0
                while s < 6:
                    mem[mem[64] + s + 132] = mem[_1207 + s + 32]
                    s = s + 32
                    continue 
                require ext_code.size(sub_48db3888Address)
                call sub_48db3888Address.0xc8616da5 with:
                     gas gas_remaining wei
                    args 96, arg1, (block.timestamp * (100 * 10^18 * stor1[idx]) + (10^18 * -100 * stor6[idx] / stor7[idx] - stor6[idx] * stor1[idx]) / 100) - (lastClaim[arg1] * (100 * 10^18 * stor1[idx]) + (10^18 * -100 * stor6[idx] / stor7[idx] - stor6[idx] * stor1[idx]) / 100) / 8736 * 24 * 3600, 6, mem[mem[64] + 132 len 6], 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                emit Claim(((block.timestamp * (100 * 10^18 * stor1[idx]) + (10^18 * -100 * stor6[idx] / stor7[idx] - stor6[idx] * stor1[idx]) / 100) - (lastClaim[arg1] * (100 * 10^18 * stor1[idx]) + (10^18 * -100 * stor6[idx] / stor7[idx] - stor6[idx] * stor1[idx]) / 100) / 8736 * 24 * 3600), arg1);
                return ((block.timestamp * (100 * 10^18 * stor1[idx]) + (10^18 * -100 * stor6[idx] / stor7[idx] - stor6[idx] * stor1[idx]) / 100) - (lastClaim[arg1] * (100 * 10^18 * stor1[idx]) + (10^18 * -100 * stor6[idx] / stor7[idx] - stor6[idx] * stor1[idx]) / 100) / 8736 * 24 * 3600)
            if stor7.length < 0:
                revert with 'NH{q', 17
            if not stor7.length:
                revert with 'NH{q', 18
            if 100 > -(0 / stor7.length) - 1:
                revert with 'NH{q', 17
            if stor1.length > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                revert with 'NH{q', 17
            if 10^18 * stor1.length and (0 / stor7.length) + 100 > -1 / 10^18 * stor1.length:
                revert with 'NH{q', 17
            if (100 * 10^18 * stor1.length) + (10^18 * 0 / stor7.length * stor1.length) / 100 and block.timestamp - lastClaim[arg1] > -1 / (100 * 10^18 * stor1.length) + (10^18 * 0 / stor7.length * stor1.length) / 100:
                revert with 'NH{q', 17
            lastClaim[arg1] = block.timestamp
            require ext_code.size(sub_48db3888Address)
            if not lastClaim[arg1]:
                call sub_48db3888Address.0xc8616da5 with:
                     gas gas_remaining wei
                    args 96, arg1, 10^18, 6, 'COSMIC', 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                emit Claim(10^18, arg1);
                return 10^18
            if (block.timestamp * (100 * 10^18 * stor1.length) + (10^18 * 0 / stor7.length * stor1.length) / 100) - (lastClaim[arg1] * (100 * 10^18 * stor1.length) + (10^18 * 0 / stor7.length * stor1.length) / 100) / 8736 * 24 * 3600 > 5 * 10^18:
                call sub_48db3888Address.0xc8616da5 with:
                     gas gas_remaining wei
                    args 96, arg1, 5 * 10^18, 6, 'COSMIC', 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                emit Claim(5 * 10^18, arg1);
                return 5 * 10^18
            call sub_48db3888Address.0xc8616da5 with:
                 gas gas_remaining wei
                args 96, arg1, (block.timestamp * (100 * 10^18 * stor1.length) + (10^18 * 0 / stor7.length * stor1.length) / 100) - (lastClaim[arg1] * (100 * 10^18 * stor1.length) + (10^18 * 0 / stor7.length * stor1.length) / 100) / 8736 * 24 * 3600, 6, 'COSMIC', 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            emit Claim(((block.timestamp * (100 * 10^18 * stor1.length) + (10^18 * 0 / stor7.length * stor1.length) / 100) - (lastClaim[arg1] * (100 * 10^18 * stor1.length) + (10^18 * 0 / stor7.length * stor1.length) / 100) / 8736 * 24 * 3600), arg1);
            return ((block.timestamp * (100 * 10^18 * stor1.length) + (10^18 * 0 / stor7.length * stor1.length) / 100) - (lastClaim[arg1] * (100 * 10^18 * stor1.length) + (10^18 * 0 / stor7.length * stor1.length) / 100) / 8736 * 24 * 3600)
        require _154 >= 32
        _526 = mem[ceil32(return_data.size) + 192]
        require mem[ceil32(return_data.size) + 192] == mem[ceil32(return_data.size) + 192]
        if mem[ceil32(return_data.size) + 192] / 10^18 >= stor12:
            if stor12 and 2 > -1 / stor12:
                revert with 'NH{q', 17
            if 2 * stor12 < stor12:
                revert with 'NH{q', 17
            if mem[ceil32(return_data.size) + 192] / 10^18 < stor12:
                revert with 'NH{q', 17
            if (mem[ceil32(return_data.size) + 192] / 10^18) - stor12 > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
                revert with 'NH{q', 17
            if not stor12:
                revert with 'NH{q', 18
            if 100 > -((100 * mem[ceil32(return_data.size) + 192] / 10^18) - (100 * stor12) / stor12) - 1:
                revert with 'NH{q', 17
            revert with 'NH{q', 50
        idx = 0
        while idx < 6:
            if mem[ceil32(return_data.size) + 192] / 10^18 >= stor7[idx]:
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            if idx == 6:
                if stor12 and 2 > -1 / stor12:
                    revert with 'NH{q', 17
                if not idx:
                    if 2 * stor12 < 0:
                        revert with 'NH{q', 17
                    if mem[ceil32(return_data.size) + 192] / 10^18 < 0:
                        revert with 'NH{q', 17
                    if mem[ceil32(return_data.size) + 192] / 10^18 > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
                        revert with 'NH{q', 17
                    if not 2 * stor12:
                        revert with 'NH{q', 18
                    if 100 > -(100 * mem[ceil32(return_data.size) + 192] / 10^18 / 2 * stor12) - 1:
                        revert with 'NH{q', 17
                    if idx >= 6:
                        revert with 'NH{q', 50
                    if stor1[idx] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                        revert with 'NH{q', 17
                    if 10^18 * stor1[idx] and (100 * mem[ceil32(return_data.size) + 192] / 10^18 / 2 * stor12) + 100 > -1 / 10^18 * stor1[idx]:
                        revert with 'NH{q', 17
                    if (100 * 10^18 * stor1[idx]) + (10^18 * 100 * mem[ceil32(return_data.size) + 192] / 10^18 / 2 * stor12 * stor1[idx]) / 100 and block.timestamp - lastClaim[arg1] > -1 / (100 * 10^18 * stor1[idx]) + (10^18 * 100 * mem[ceil32(return_data.size) + 192] / 10^18 / 2 * stor12 * stor1[idx]) / 100:
                        revert with 'NH{q', 17
                    mem[0] = arg1
                    mem[32] = 13
                    lastClaim[arg1] = block.timestamp
                    if not lastClaim[arg1]:
                        _1285 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1285] = 6
                        mem[_1285 + 32] = 'COSMIC'
                        mem[mem[64]] = 0xc8616da500000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 96
                        mem[mem[64] + 100] = 6
                        idx = 0
                        while idx < 6:
                            mem[mem[64] + idx + 132] = mem[_1285 + idx + 32]
                            idx = idx + 32
                            continue 
                        require ext_code.size(sub_48db3888Address)
                        call sub_48db3888Address.0xc8616da5 with:
                             gas gas_remaining wei
                            args 96, arg1, 10^18, 6, mem[mem[64] + 132 len 6], 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        emit Claim(10^18, arg1);
                        return 10^18
                    if (block.timestamp * (100 * 10^18 * stor1[idx]) + (10^18 * 100 * mem[ceil32(return_data.size) + 192] / 10^18 / 2 * stor12 * stor1[idx]) / 100) - (lastClaim[arg1] * (100 * 10^18 * stor1[idx]) + (10^18 * 100 * mem[ceil32(return_data.size) + 192] / 10^18 / 2 * stor12 * stor1[idx]) / 100) / 8736 * 24 * 3600 > 5 * 10^18:
                        _1330 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1330] = 6
                        mem[_1330 + 32] = 'COSMIC'
                        mem[mem[64]] = 0xc8616da500000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 96
                        mem[mem[64] + 100] = 6
                        idx = 0
                        while idx < 6:
                            mem[mem[64] + idx + 132] = mem[_1330 + idx + 32]
                            idx = idx + 32
                            continue 
                        require ext_code.size(sub_48db3888Address)
                        call sub_48db3888Address.0xc8616da5 with:
                             gas gas_remaining wei
                            args 96, arg1, 5 * 10^18, 6, mem[mem[64] + 132 len 6], 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        emit Claim(5 * 10^18, arg1);
                        return 5 * 10^18
                    _1333 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1333] = 6
                    mem[_1333 + 32] = 'COSMIC'
                    mem[mem[64]] = 0xc8616da500000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 96
                    mem[mem[64] + 100] = 6
                    s = 0
                    while s < 6:
                        mem[mem[64] + s + 132] = mem[_1333 + s + 32]
                        s = s + 32
                        continue 
                    require ext_code.size(sub_48db3888Address)
                    call sub_48db3888Address.0xc8616da5 with:
                         gas gas_remaining wei
                        args 96, arg1, (block.timestamp * (100 * 10^18 * stor1[idx]) + (10^18 * 100 * _526 / 10^18 / 2 * stor12 * stor1[idx]) / 100) - (lastClaim[arg1] * (100 * 10^18 * stor1[idx]) + (10^18 * 100 * _526 / 10^18 / 2 * stor12 * stor1[idx]) / 100) / 8736 * 24 * 3600, 6, mem[mem[64] + 132 len 6], 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    emit Claim(((block.timestamp * (100 * 10^18 * stor1[idx]) + (10^18 * 100 * _526 / 10^18 / 2 * stor12 * stor1[idx]) / 100) - (lastClaim[arg1] * (100 * 10^18 * stor1[idx]) + (10^18 * 100 * _526 / 10^18 / 2 * stor12 * stor1[idx]) / 100) / 8736 * 24 * 3600), arg1);
                    return ((block.timestamp * (100 * 10^18 * stor1[idx]) + (10^18 * 100 * _526 / 10^18 / 2 * stor12 * stor1[idx]) / 100) - (lastClaim[arg1] * (100 * 10^18 * stor1[idx]) + (10^18 * 100 * _526 / 10^18 / 2 * stor12 * stor1[idx]) / 100) / 8736 * 24 * 3600)
                if idx < 1:
                    revert with 'NH{q', 17
                if idx - 1 >= 6:
                    revert with 'NH{q', 50
                if 2 * stor12 < stor6[idx]:
                    revert with 'NH{q', 17
                if mem[ceil32(return_data.size) + 192] / 10^18 < stor6[idx]:
                    revert with 'NH{q', 17
                if (mem[ceil32(return_data.size) + 192] / 10^18) - stor6[idx] > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
                    revert with 'NH{q', 17
                if not (2 * stor12) - stor6[idx]:
                    revert with 'NH{q', 18
                if 100 > -((100 * mem[ceil32(return_data.size) + 192] / 10^18) - (100 * stor6[idx]) / (2 * stor12) - stor6[idx]) - 1:
                    revert with 'NH{q', 17
                if idx >= 6:
                    revert with 'NH{q', 50
                if stor1[idx] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                    revert with 'NH{q', 17
                if 10^18 * stor1[idx] and ((100 * mem[ceil32(return_data.size) + 192] / 10^18) - (100 * stor6[idx]) / (2 * stor12) - stor6[idx]) + 100 > -1 / 10^18 * stor1[idx]:
                    revert with 'NH{q', 17
                if (100 * 10^18 * stor1[idx]) + (10^18 * (100 * mem[ceil32(return_data.size) + 192] / 10^18) - (100 * stor6[idx]) / (2 * stor12) - stor6[idx] * stor1[idx]) / 100 and block.timestamp - lastClaim[arg1] > -1 / (100 * 10^18 * stor1[idx]) + (10^18 * (100 * mem[ceil32(return_data.size) + 192] / 10^18) - (100 * stor6[idx]) / (2 * stor12) - stor6[idx] * stor1[idx]) / 100:
                    revert with 'NH{q', 17
                mem[0] = arg1
                mem[32] = 13
                lastClaim[arg1] = block.timestamp
                if not lastClaim[arg1]:
                    _1453 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1453] = 6
                    mem[_1453 + 32] = 'COSMIC'
                    mem[mem[64]] = 0xc8616da500000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 96
                    mem[mem[64] + 100] = 6
                    idx = 0
                    while idx < 6:
                        mem[mem[64] + idx + 132] = mem[_1453 + idx + 32]
                        idx = idx + 32
                        continue 
                    require ext_code.size(sub_48db3888Address)
                    call sub_48db3888Address.0xc8616da5 with:
                         gas gas_remaining wei
                        args 96, arg1, 10^18, 6, mem[mem[64] + 132 len 6], 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    emit Claim(10^18, arg1);
                    return 10^18
                if (block.timestamp * (100 * 10^18 * stor1[idx]) + (10^18 * (100 * mem[ceil32(return_data.size) + 192] / 10^18) - (100 * stor6[idx]) / (2 * stor12) - stor6[idx] * stor1[idx]) / 100) - (lastClaim[arg1] * (100 * 10^18 * stor1[idx]) + (10^18 * (100 * mem[ceil32(return_data.size) + 192] / 10^18) - (100 * stor6[idx]) / (2 * stor12) - stor6[idx] * stor1[idx]) / 100) / 8736 * 24 * 3600 > 5 * 10^18:
                    _1561 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1561] = 6
                    mem[_1561 + 32] = 'COSMIC'
                    mem[mem[64]] = 0xc8616da500000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 96
                    mem[mem[64] + 100] = 6
                    idx = 0
                    while idx < 6:
                        mem[mem[64] + idx + 132] = mem[_1561 + idx + 32]
                        idx = idx + 32
                        continue 
                    require ext_code.size(sub_48db3888Address)
                    call sub_48db3888Address.0xc8616da5 with:
                         gas gas_remaining wei
                        args 96, arg1, 5 * 10^18, 6, mem[mem[64] + 132 len 6], 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    emit Claim(5 * 10^18, arg1);
                    return 5 * 10^18
                _1564 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1564] = 6
                mem[_1564 + 32] = 'COSMIC'
                mem[mem[64]] = 0xc8616da500000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 96
                mem[mem[64] + 100] = 6
                s = 0
                while s < 6:
                    mem[mem[64] + s + 132] = mem[_1564 + s + 32]
                    s = s + 32
                    continue 
                require ext_code.size(sub_48db3888Address)
                call sub_48db3888Address.0xc8616da5 with:
                     gas gas_remaining wei
                    args 96, arg1, (block.timestamp * (100 * 10^18 * stor1[idx]) + (10^18 * (100 * _526 / 10^18) - (100 * stor6[idx]) / (2 * stor12) - stor6[idx] * stor1[idx]) / 100) - (lastClaim[arg1] * (100 * 10^18 * stor1[idx]) + (10^18 * (100 * _526 / 10^18) - (100 * stor6[idx]) / (2 * stor12) - stor6[idx] * stor1[idx]) / 100) / 8736 * 24 * 3600, 6, mem[mem[64] + 132 len 6], 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                emit Claim(((block.timestamp * (100 * 10^18 * stor1[idx]) + (10^18 * (100 * _526 / 10^18) - (100 * stor6[idx]) / (2 * stor12) - stor6[idx] * stor1[idx]) / 100) - (lastClaim[arg1] * (100 * 10^18 * stor1[idx]) + (10^18 * (100 * _526 / 10^18) - (100 * stor6[idx]) / (2 * stor12) - stor6[idx] * stor1[idx]) / 100) / 8736 * 24 * 3600), arg1);
                return ((block.timestamp * (100 * 10^18 * stor1[idx]) + (10^18 * (100 * _526 / 10^18) - (100 * stor6[idx]) / (2 * stor12) - stor6[idx] * stor1[idx]) / 100) - (lastClaim[arg1] * (100 * 10^18 * stor1[idx]) + (10^18 * (100 * _526 / 10^18) - (100 * stor6[idx]) / (2 * stor12) - stor6[idx] * stor1[idx]) / 100) / 8736 * 24 * 3600)
            if idx >= 6:
                revert with 'NH{q', 50
            if not idx:
                if stor7[idx] < 0:
                    revert with 'NH{q', 17
                if mem[ceil32(return_data.size) + 192] / 10^18 < 0:
                    revert with 'NH{q', 17
                if mem[ceil32(return_data.size) + 192] / 10^18 > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
                    revert with 'NH{q', 17
                if not stor7[idx]:
                    revert with 'NH{q', 18
                if 100 > -(100 * mem[ceil32(return_data.size) + 192] / 10^18 / stor7[idx]) - 1:
                    revert with 'NH{q', 17
                if idx >= 6:
                    revert with 'NH{q', 50
                if stor1[idx] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                    revert with 'NH{q', 17
                if 10^18 * stor1[idx] and (100 * mem[ceil32(return_data.size) + 192] / 10^18 / stor7[idx]) + 100 > -1 / 10^18 * stor1[idx]:
                    revert with 'NH{q', 17
                if (100 * 10^18 * stor1[idx]) + (10^18 * 100 * mem[ceil32(return_data.size) + 192] / 10^18 / stor7[idx] * stor1[idx]) / 100 and block.timestamp - lastClaim[arg1] > -1 / (100 * 10^18 * stor1[idx]) + (10^18 * 100 * mem[ceil32(return_data.size) + 192] / 10^18 / stor7[idx] * stor1[idx]) / 100:
                    revert with 'NH{q', 17
                mem[0] = arg1
                mem[32] = 13
                lastClaim[arg1] = block.timestamp
                if not lastClaim[arg1]:
                    _1013 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1013] = 6
                    mem[_1013 + 32] = 'COSMIC'
                    mem[mem[64]] = 0xc8616da500000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 96
                    mem[mem[64] + 100] = 6
                    idx = 0
                    while idx < 6:
                        mem[mem[64] + idx + 132] = mem[_1013 + idx + 32]
                        idx = idx + 32
                        continue 
                    require ext_code.size(sub_48db3888Address)
                    call sub_48db3888Address.0xc8616da5 with:
                         gas gas_remaining wei
                        args 96, arg1, 10^18, 6, mem[mem[64] + 132 len 6], 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    emit Claim(10^18, arg1);
                    return 10^18
                if (block.timestamp * (100 * 10^18 * stor1[idx]) + (10^18 * 100 * mem[ceil32(return_data.size) + 192] / 10^18 / stor7[idx] * stor1[idx]) / 100) - (lastClaim[arg1] * (100 * 10^18 * stor1[idx]) + (10^18 * 100 * mem[ceil32(return_data.size) + 192] / 10^18 / stor7[idx] * stor1[idx]) / 100) / 8736 * 24 * 3600 > 5 * 10^18:
                    _1074 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1074] = 6
                    mem[_1074 + 32] = 'COSMIC'
                    mem[mem[64]] = 0xc8616da500000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 96
                    mem[mem[64] + 100] = 6
                    idx = 0
                    while idx < 6:
                        mem[mem[64] + idx + 132] = mem[_1074 + idx + 32]
                        idx = idx + 32
                        continue 
                    require ext_code.size(sub_48db3888Address)
                    call sub_48db3888Address.0xc8616da5 with:
                         gas gas_remaining wei
                        args 96, arg1, 5 * 10^18, 6, mem[mem[64] + 132 len 6], 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    emit Claim(5 * 10^18, arg1);
                    return 5 * 10^18
                _1077 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1077] = 6
                mem[_1077 + 32] = 'COSMIC'
                mem[mem[64]] = 0xc8616da500000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 96
                mem[mem[64] + 100] = 6
                s = 0
                while s < 6:
                    mem[mem[64] + s + 132] = mem[_1077 + s + 32]
                    s = s + 32
                    continue 
                require ext_code.size(sub_48db3888Address)
                call sub_48db3888Address.0xc8616da5 with:
                     gas gas_remaining wei
                    args 96, arg1, (block.timestamp * (100 * 10^18 * stor1[idx]) + (10^18 * 100 * _526 / 10^18 / stor7[idx] * stor1[idx]) / 100) - (lastClaim[arg1] * (100 * 10^18 * stor1[idx]) + (10^18 * 100 * _526 / 10^18 / stor7[idx] * stor1[idx]) / 100) / 8736 * 24 * 3600, 6, mem[mem[64] + 132 len 6], 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                emit Claim(((block.timestamp * (100 * 10^18 * stor1[idx]) + (10^18 * 100 * _526 / 10^18 / stor7[idx] * stor1[idx]) / 100) - (lastClaim[arg1] * (100 * 10^18 * stor1[idx]) + (10^18 * 100 * _526 / 10^18 / stor7[idx] * stor1[idx]) / 100) / 8736 * 24 * 3600), arg1);
                return ((block.timestamp * (100 * 10^18 * stor1[idx]) + (10^18 * 100 * _526 / 10^18 / stor7[idx] * stor1[idx]) / 100) - (lastClaim[arg1] * (100 * 10^18 * stor1[idx]) + (10^18 * 100 * _526 / 10^18 / stor7[idx] * stor1[idx]) / 100) / 8736 * 24 * 3600)
            if idx < 1:
                revert with 'NH{q', 17
            if idx - 1 >= 6:
                revert with 'NH{q', 50
            if stor7[idx] < stor6[idx]:
                revert with 'NH{q', 17
            if mem[ceil32(return_data.size) + 192] / 10^18 < stor6[idx]:
                revert with 'NH{q', 17
            if (mem[ceil32(return_data.size) + 192] / 10^18) - stor6[idx] > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
                revert with 'NH{q', 17
            if not stor7[idx] - stor6[idx]:
                revert with 'NH{q', 18
            if 100 > -((100 * mem[ceil32(return_data.size) + 192] / 10^18) - (100 * stor6[idx]) / stor7[idx] - stor6[idx]) - 1:
                revert with 'NH{q', 17
            if idx >= 6:
                revert with 'NH{q', 50
            if stor1[idx] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                revert with 'NH{q', 17
            if 10^18 * stor1[idx] and ((100 * mem[ceil32(return_data.size) + 192] / 10^18) - (100 * stor6[idx]) / stor7[idx] - stor6[idx]) + 100 > -1 / 10^18 * stor1[idx]:
                revert with 'NH{q', 17
            if (100 * 10^18 * stor1[idx]) + (10^18 * (100 * mem[ceil32(return_data.size) + 192] / 10^18) - (100 * stor6[idx]) / stor7[idx] - stor6[idx] * stor1[idx]) / 100 and block.timestamp - lastClaim[arg1] > -1 / (100 * 10^18 * stor1[idx]) + (10^18 * (100 * mem[ceil32(return_data.size) + 192] / 10^18) - (100 * stor6[idx]) / stor7[idx] - stor6[idx] * stor1[idx]) / 100:
                revert with 'NH{q', 17
            mem[0] = arg1
            mem[32] = 13
            lastClaim[arg1] = block.timestamp
            if not lastClaim[arg1]:
                _1157 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1157] = 6
                mem[_1157 + 32] = 'COSMIC'
                mem[mem[64]] = 0xc8616da500000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 96
                mem[mem[64] + 100] = 6
                idx = 0
                while idx < 6:
                    mem[mem[64] + idx + 132] = mem[_1157 + idx + 32]
                    idx = idx + 32
                    continue 
                require ext_code.size(sub_48db3888Address)
                call sub_48db3888Address.0xc8616da5 with:
                     gas gas_remaining wei
                    args 96, arg1, 10^18, 6, mem[mem[64] + 132 len 6], 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                emit Claim(10^18, arg1);
                return 10^18
            if (block.timestamp * (100 * 10^18 * stor1[idx]) + (10^18 * (100 * mem[ceil32(return_data.size) + 192] / 10^18) - (100 * stor6[idx]) / stor7[idx] - stor6[idx] * stor1[idx]) / 100) - (lastClaim[arg1] * (100 * 10^18 * stor1[idx]) + (10^18 * (100 * mem[ceil32(return_data.size) + 192] / 10^18) - (100 * stor6[idx]) / stor7[idx] - stor6[idx] * stor1[idx]) / 100) / 8736 * 24 * 3600 > 5 * 10^18:
                _1210 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1210] = 6
                mem[_1210 + 32] = 'COSMIC'
                mem[mem[64]] = 0xc8616da500000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 96
                mem[mem[64] + 100] = 6
                idx = 0
                while idx < 6:
                    mem[mem[64] + idx + 132] = mem[_1210 + idx + 32]
                    idx = idx + 32
                    continue 
                require ext_code.size(sub_48db3888Address)
                call sub_48db3888Address.0xc8616da5 with:
                     gas gas_remaining wei
                    args 96, arg1, 5 * 10^18, 6, mem[mem[64] + 132 len 6], 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                emit Claim(5 * 10^18, arg1);
                return 5 * 10^18
            _1213 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1213] = 6
            mem[_1213 + 32] = 'COSMIC'
            mem[mem[64]] = 0xc8616da500000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 96
            mem[mem[64] + 100] = 6
            s = 0
            while s < 6:
                mem[mem[64] + s + 132] = mem[_1213 + s + 32]
                s = s + 32
                continue 
            require ext_code.size(sub_48db3888Address)
            call sub_48db3888Address.0xc8616da5 with:
                 gas gas_remaining wei
                args 96, arg1, (block.timestamp * (100 * 10^18 * stor1[idx]) + (10^18 * (100 * _526 / 10^18) - (100 * stor6[idx]) / stor7[idx] - stor6[idx] * stor1[idx]) / 100) - (lastClaim[arg1] * (100 * 10^18 * stor1[idx]) + (10^18 * (100 * _526 / 10^18) - (100 * stor6[idx]) / stor7[idx] - stor6[idx] * stor1[idx]) / 100) / 8736 * 24 * 3600, 6, mem[mem[64] + 132 len 6], 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            emit Claim(((block.timestamp * (100 * 10^18 * stor1[idx]) + (10^18 * (100 * _526 / 10^18) - (100 * stor6[idx]) / stor7[idx] - stor6[idx] * stor1[idx]) / 100) - (lastClaim[arg1] * (100 * 10^18 * stor1[idx]) + (10^18 * (100 * _526 / 10^18) - (100 * stor6[idx]) / stor7[idx] - stor6[idx] * stor1[idx]) / 100) / 8736 * 24 * 3600), arg1);
            return ((block.timestamp * (100 * 10^18 * stor1[idx]) + (10^18 * (100 * _526 / 10^18) - (100 * stor6[idx]) / stor7[idx] - stor6[idx] * stor1[idx]) / 100) - (lastClaim[arg1] * (100 * 10^18 * stor1[idx]) + (10^18 * (100 * _526 / 10^18) - (100 * stor6[idx]) / stor7[idx] - stor6[idx] * stor1[idx]) / 100) / 8736 * 24 * 3600)
    if stor7.length < 0:
        revert with 'NH{q', 17
    if mem[ceil32(return_data.size) + 192] / 10^18 < 0:
        revert with 'NH{q', 17
    if mem[ceil32(return_data.size) + 192] / 10^18 > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
        revert with 'NH{q', 17
    if not stor7.length:
        revert with 'NH{q', 18
    if 100 > -(100 * mem[ceil32(return_data.size) + 192] / 10^18 / stor7.length) - 1:
        revert with 'NH{q', 17
    if stor1.length > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
        revert with 'NH{q', 17
    if 10^18 * stor1.length and (100 * mem[ceil32(return_data.size) + 192] / 10^18 / stor7.length) + 100 > -1 / 10^18 * stor1.length:
        revert with 'NH{q', 17
    if (100 * 10^18 * stor1.length) + (10^18 * 100 * mem[ceil32(return_data.size) + 192] / 10^18 / stor7.length * stor1.length) / 100 and block.timestamp - lastClaim[arg1] > -1 / (100 * 10^18 * stor1.length) + (10^18 * 100 * mem[ceil32(return_data.size) + 192] / 10^18 / stor7.length * stor1.length) / 100:
        revert with 'NH{q', 17
    lastClaim[arg1] = block.timestamp
    require ext_code.size(sub_48db3888Address)
    if not lastClaim[arg1]:
        call sub_48db3888Address.0xc8616da5 with:
             gas gas_remaining wei
            args 96, arg1, 10^18, 6, 'COSMIC', 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit Claim(10^18, arg1);
        return 10^18
    if (block.timestamp * (100 * 10^18 * stor1.length) + (10^18 * 100 * mem[ceil32(return_data.size) + 192] / 10^18 / stor7.length * stor1.length) / 100) - (lastClaim[arg1] * (100 * 10^18 * stor1.length) + (10^18 * 100 * mem[ceil32(return_data.size) + 192] / 10^18 / stor7.length * stor1.length) / 100) / 8736 * 24 * 3600 > 5 * 10^18:
        call sub_48db3888Address.0xc8616da5 with:
             gas gas_remaining wei
            args 96, arg1, 5 * 10^18, 6, 'COSMIC', 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit Claim(5 * 10^18, arg1);
        return 5 * 10^18
    call sub_48db3888Address.0xc8616da5 with:
         gas gas_remaining wei
        args 96, arg1, (block.timestamp * (100 * 10^18 * stor1.length) + (10^18 * 100 * mem[ceil32(return_data.size) + 192] / 10^18 / stor7.length * stor1.length) / 100) - (lastClaim[arg1] * (100 * 10^18 * stor1.length) + (10^18 * 100 * mem[ceil32(return_data.size) + 192] / 10^18 / stor7.length * stor1.length) / 100) / 8736 * 24 * 3600, 6, 'COSMIC', 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Claim(((block.timestamp * (100 * 10^18 * stor1.length) + (10^18 * 100 * mem[ceil32(return_data.size) + 192] / 10^18 / stor7.length * stor1.length) / 100) - (lastClaim[arg1] * (100 * 10^18 * stor1.length) + (10^18 * 100 * mem[ceil32(return_data.size) + 192] / 10^18 / stor7.length * stor1.length) / 100) / 8736 * 24 * 3600), arg1);
    return ((block.timestamp * (100 * 10^18 * stor1.length) + (10^18 * 100 * mem[ceil32(return_data.size) + 192] / 10^18 / stor7.length * stor1.length) / 100) - (lastClaim[arg1] * (100 * 10^18 * stor1.length) + (10^18 * 100 * mem[ceil32(return_data.size) + 192] / 10^18 / stor7.length * stor1.length) / 100) / 8736 * 24 * 3600)
}



}
