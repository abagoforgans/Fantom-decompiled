contract main {




// =====================  Runtime code  =====================


#
#  - sub_0767cf45(?)
#  - sub_19e900b3(?)
#  - sub_eda86875(?)
#
address stor0;

function _fallback() payable {
    revert
}

function withdrawToken(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require msg.sender == stor0
    require ext_code.size(arg1)
    staticcall arg1.balanceOf(address rg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg2 > ext_call.return_data[0]:
        revert with 0, 'Insufficient balance'
    require ext_code.size(arg1)
    call arg1.transfer(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args msg.sender, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function getReserves(address arg1, address arg2, address arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require ext_code.size(arg1)
    staticcall arg1.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    if arg2 < arg3:
        if arg2 == arg2:
            return ext_call.return_data[18 len 14], ext_call.return_data[32] << 144
    else:
        if arg2 == arg3:
            return ext_call.return_data[18 len 14], ext_call.return_data[32] << 144
    return ext_call.return_data[50 len 14], ext_call.return_data[0] << 144
}

function sub_4cc2d88d(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 < 96 or ceil32(32 * ('cd', 4).length) + 97 > test266151307():
        revert with 0, 65
    mem[96] = ('cd', 4).length
    require calldata.size >= cd[4] + (32 * ('cd', 4).length) + 36
    s = cd[4] + 36
    t = 128
    idx = 0
    while idx < ('cd', 4).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 36).length) + 98 < 97 or ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98 > test266151307():
        revert with 0, 65
    mem[ceil32(32 * ('cd', 4).length) + 97] = ('cd', 36).length
    require calldata.size >= cd[36] + (32 * ('cd', 36).length) + 36
    s = cd[36] + 36
    t = ceil32(32 * ('cd', 4).length) + 129
    idx = 0
    while idx < ('cd', 36).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    if ('cd', 4).length < 2:
        revert with 0, 'UniswapV2Library: INVALID_PATH'
    if ('cd', 4).length < 1:
        revert with 0, 17
    if ('cd', 4).length - 1 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
        revert with 0, 17
    if 2 * ('cd', 4).length - 1 > test266151307():
        revert with 0, 65
    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98] = 2 * ('cd', 4).length - 1
    mem[64] = ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + (64 * ('cd', 4).length - 1) + 130
    if not uint255(('cd', 4).length - 1):
        if var86001 < 1:
            revert with 0, 17
        if var90002 >= var90001:
            mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + (64 * ('cd', 4).length - 1) + 130] = 32
            mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + (64 * ('cd', 4).length - 1) + 162] = 2 * ('cd', 4).length - 1
            mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + (64 * ('cd', 4).length - 1) + 194 len 64 * ('cd', 4).length - 1] = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130 len 64 * ('cd', 4).length - 1]
            return 32, mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + (64 * ('cd', 4).length - 1) + 162 len (64 * ('cd', 4).length - 1) + 32], 
        if var92001 < ('cd', 36).length:
            if var94006 < ('cd', 4).length:
                if 1 > !var98002:
                    revert with 0, 17
                idx = var100003 + 1
                s = var100006
                t = var100007
                u = var100011
                while idx < ('cd', 4).length:
                    _1081 = mem[(32 * idx) + 128]
                    require ext_code.size(address(t))
                    staticcall address(t).getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if address(s) < mem[(32 * idx) + 140 len 20]:
                        _1091 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        _1095 = mem[_1091]
                        require mem[_1091] == mem[_1091 + 18 len 14]
                        _1099 = mem[_1091 + 32]
                        require mem[_1091 + 32] == mem[_1091 + 50 len 14]
                        require mem[_1091 + 64] == mem[_1091 + 92 len 4]
                        if u > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                            revert with 0, 17
                        if 2 * u >= mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98]:
                            revert with 0, 50
                        if address(s) == address(s):
                            mem[(64 * u) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130] = mem[_1091 + 18 len 14]
                            if u > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                revert with 0, 17
                            if 1 > !(2 * u):
                                revert with 0, 17
                            if (2 * u) + 1 >= mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98]:
                                revert with 0, 50
                            mem[(32 * (2 * u) + 1) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130] = Mask(112, 0, _1099)
                            if u == -1:
                                revert with 0, 17
                            if mem[96] < 1:
                                revert with 0, 17
                            if u + 1 < mem[96] - 1:
                                if u + 1 >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                                    revert with 0, 50
                                if u + 1 >= mem[96]:
                                    revert with 0, 50
                                if 1 > !(u + 1):
                                    revert with 0, 17
                                idx = u + 2
                                s = mem[(32 * u + 1) + 128]
                                t = mem[(32 * u + 1) + ceil32(32 * ('cd', 4).length) + 129]
                                u = u + 1
                                continue 
                            _1139 = mem[64]
                            mem[mem[64]] = 32
                            _1171 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98]
                            mem[mem[64] + 32] = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98]
                            idx = 0
                            s = ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130
                            t = mem[64] + 64
                            while idx < _1171:
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            return memory
                              from mem[64]
                               len _1139 + (32 * _1171) + -mem[64] + 64
                        mem[(64 * u) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130] = mem[_1091 + 50 len 14]
                        if u > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                            revert with 0, 17
                        if 1 > !(2 * u):
                            revert with 0, 17
                        if (2 * u) + 1 >= mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98]:
                            revert with 0, 50
                        mem[(32 * (2 * u) + 1) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130] = Mask(112, 0, _1095)
                        if u == -1:
                            revert with 0, 17
                        if mem[96] < 1:
                            revert with 0, 17
                        if u + 1 < mem[96] - 1:
                            if u + 1 >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                                revert with 0, 50
                            if u + 1 >= mem[96]:
                                revert with 0, 50
                            if 1 > !(u + 1):
                                revert with 0, 17
                            idx = u + 2
                            s = mem[(32 * u + 1) + 128]
                            t = mem[(32 * u + 1) + ceil32(32 * ('cd', 4).length) + 129]
                            u = u + 1
                            continue 
                        _1142 = mem[64]
                        mem[mem[64]] = 32
                        _1172 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98]
                        mem[mem[64] + 32] = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98]
                        idx = 0
                        s = ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130
                        t = mem[64] + 64
                        while idx < _1172:
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        return memory
                          from mem[64]
                           len _1142 + (32 * _1172) + -mem[64] + 64
                    _1092 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _1096 = mem[_1092]
                    require mem[_1092] == mem[_1092 + 18 len 14]
                    _1100 = mem[_1092 + 32]
                    require mem[_1092 + 32] == mem[_1092 + 50 len 14]
                    require mem[_1092 + 64] == mem[_1092 + 92 len 4]
                    if u > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 0, 17
                    if 2 * u >= mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98]:
                        revert with 0, 50
                    if address(s) == address(_1081):
                        mem[(64 * u) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130] = mem[_1092 + 18 len 14]
                        if u > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                            revert with 0, 17
                        if 1 > !(2 * u):
                            revert with 0, 17
                        if (2 * u) + 1 >= mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98]:
                            revert with 0, 50
                        mem[(32 * (2 * u) + 1) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130] = Mask(112, 0, _1100)
                        if u == -1:
                            revert with 0, 17
                        if mem[96] < 1:
                            revert with 0, 17
                        if u + 1 < mem[96] - 1:
                            if u + 1 >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                                revert with 0, 50
                            if u + 1 >= mem[96]:
                                revert with 0, 50
                            if 1 > !(u + 1):
                                revert with 0, 17
                            idx = u + 2
                            s = mem[(32 * u + 1) + 128]
                            t = mem[(32 * u + 1) + ceil32(32 * ('cd', 4).length) + 129]
                            u = u + 1
                            continue 
                        _1145 = mem[64]
                        mem[mem[64]] = 32
                        _1173 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98]
                        mem[mem[64] + 32] = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98]
                        idx = 0
                        s = ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130
                        t = mem[64] + 64
                        while idx < _1173:
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        return memory
                          from mem[64]
                           len _1145 + (32 * _1173) + -mem[64] + 64
                    mem[(64 * u) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130] = mem[_1092 + 50 len 14]
                    if u > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 0, 17
                    if 1 > !(2 * u):
                        revert with 0, 17
                    if (2 * u) + 1 >= mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98]:
                        revert with 0, 50
                    mem[(32 * (2 * u) + 1) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130] = Mask(112, 0, _1096)
                    if u == -1:
                        revert with 0, 17
                    if mem[96] < 1:
                        revert with 0, 17
                    if u + 1 < mem[96] - 1:
                        if u + 1 >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                            revert with 0, 50
                        if u + 1 >= mem[96]:
                            revert with 0, 50
                        if 1 > !(u + 1):
                            revert with 0, 17
                        idx = u + 2
                        s = mem[(32 * u + 1) + 128]
                        t = mem[(32 * u + 1) + ceil32(32 * ('cd', 4).length) + 129]
                        u = u + 1
                        continue 
                    _1148 = mem[64]
                    mem[mem[64]] = 32
                    _1174 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98]
                    mem[mem[64] + 32] = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98]
                    idx = 0
                    s = ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130
                    t = mem[64] + 64
                    while idx < _1174:
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    return memory
                      from mem[64]
                       len _1148 + (32 * _1174) + -mem[64] + 64
    else:
        mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130 len 64 * ('cd', 4).length - 1] = call.data[calldata.size len 64 * ('cd', 4).length - 1]
        if var87001 < 1:
            revert with 0, 17
        if var91002 >= var91001:
            mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + (64 * ('cd', 4).length - 1) + 162] = 2 * ('cd', 4).length - 1
            mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + (64 * ('cd', 4).length - 1) + 194 len 64 * ('cd', 4).length - 1] = call.data[calldata.size len 64 * ('cd', 4).length - 1]
            return 32, mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + (64 * ('cd', 4).length - 1) + 162 len (64 * ('cd', 4).length - 1) + 32], 
        if var93001 < ('cd', 36).length:
            if var95006 < ('cd', 4).length:
                if 1 > !var99002:
                    revert with 0, 17
                idx = var101003 + 1
                s = var101006
                t = var101007
                u = var101011
                while idx < ('cd', 4).length:
                    _1082 = mem[(32 * idx) + 128]
                    require ext_code.size(address(t))
                    staticcall address(t).getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if address(s) < mem[(32 * idx) + 140 len 20]:
                        _1093 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        _1097 = mem[_1093]
                        require mem[_1093] == mem[_1093 + 18 len 14]
                        _1101 = mem[_1093 + 32]
                        require mem[_1093 + 32] == mem[_1093 + 50 len 14]
                        require mem[_1093 + 64] == mem[_1093 + 92 len 4]
                        if u > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                            revert with 0, 17
                        if 2 * u >= mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98]:
                            revert with 0, 50
                        if address(s) == address(s):
                            mem[(64 * u) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130] = mem[_1093 + 18 len 14]
                            if u > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                revert with 0, 17
                            if 1 > !(2 * u):
                                revert with 0, 17
                            if (2 * u) + 1 >= mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98]:
                                revert with 0, 50
                            mem[(32 * (2 * u) + 1) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130] = Mask(112, 0, _1101)
                            if u == -1:
                                revert with 0, 17
                            if mem[96] < 1:
                                revert with 0, 17
                            if u + 1 < mem[96] - 1:
                                if u + 1 >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                                    revert with 0, 50
                                if u + 1 >= mem[96]:
                                    revert with 0, 50
                                if 1 > !(u + 1):
                                    revert with 0, 17
                                idx = u + 2
                                s = mem[(32 * u + 1) + 128]
                                t = mem[(32 * u + 1) + ceil32(32 * ('cd', 4).length) + 129]
                                u = u + 1
                                continue 
                            _1151 = mem[64]
                            mem[mem[64]] = 32
                            _1175 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98]
                            mem[mem[64] + 32] = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98]
                            idx = 0
                            s = ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130
                            t = mem[64] + 64
                            while idx < _1175:
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            return memory
                              from mem[64]
                               len _1151 + (32 * _1175) + -mem[64] + 64
                        mem[(64 * u) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130] = mem[_1093 + 50 len 14]
                        if u > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                            revert with 0, 17
                        if 1 > !(2 * u):
                            revert with 0, 17
                        if (2 * u) + 1 >= mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98]:
                            revert with 0, 50
                        mem[(32 * (2 * u) + 1) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130] = Mask(112, 0, _1097)
                        if u == -1:
                            revert with 0, 17
                        if mem[96] < 1:
                            revert with 0, 17
                        if u + 1 < mem[96] - 1:
                            if u + 1 >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                                revert with 0, 50
                            if u + 1 >= mem[96]:
                                revert with 0, 50
                            if 1 > !(u + 1):
                                revert with 0, 17
                            idx = u + 2
                            s = mem[(32 * u + 1) + 128]
                            t = mem[(32 * u + 1) + ceil32(32 * ('cd', 4).length) + 129]
                            u = u + 1
                            continue 
                        _1154 = mem[64]
                        mem[mem[64]] = 32
                        _1176 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98]
                        mem[mem[64] + 32] = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98]
                        idx = 0
                        s = ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130
                        t = mem[64] + 64
                        while idx < _1176:
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        return memory
                          from mem[64]
                           len _1154 + (32 * _1176) + -mem[64] + 64
                    _1094 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _1098 = mem[_1094]
                    require mem[_1094] == mem[_1094 + 18 len 14]
                    _1102 = mem[_1094 + 32]
                    require mem[_1094 + 32] == mem[_1094 + 50 len 14]
                    require mem[_1094 + 64] == mem[_1094 + 92 len 4]
                    if u > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 0, 17
                    if 2 * u >= mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98]:
                        revert with 0, 50
                    if address(s) == address(_1082):
                        mem[(64 * u) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130] = mem[_1094 + 18 len 14]
                        if u > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                            revert with 0, 17
                        if 1 > !(2 * u):
                            revert with 0, 17
                        if (2 * u) + 1 >= mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98]:
                            revert with 0, 50
                        mem[(32 * (2 * u) + 1) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130] = Mask(112, 0, _1102)
                        if u == -1:
                            revert with 0, 17
                        if mem[96] < 1:
                            revert with 0, 17
                        if u + 1 < mem[96] - 1:
                            if u + 1 >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                                revert with 0, 50
                            if u + 1 >= mem[96]:
                                revert with 0, 50
                            if 1 > !(u + 1):
                                revert with 0, 17
                            idx = u + 2
                            s = mem[(32 * u + 1) + 128]
                            t = mem[(32 * u + 1) + ceil32(32 * ('cd', 4).length) + 129]
                            u = u + 1
                            continue 
                        _1157 = mem[64]
                        mem[mem[64]] = 32
                        _1177 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98]
                        mem[mem[64] + 32] = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98]
                        idx = 0
                        s = ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130
                        t = mem[64] + 64
                        while idx < _1177:
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        return memory
                          from mem[64]
                           len _1157 + (32 * _1177) + -mem[64] + 64
                    mem[(64 * u) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130] = mem[_1094 + 50 len 14]
                    if u > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 0, 17
                    if 1 > !(2 * u):
                        revert with 0, 17
                    if (2 * u) + 1 >= mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98]:
                        revert with 0, 50
                    mem[(32 * (2 * u) + 1) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130] = Mask(112, 0, _1098)
                    if u == -1:
                        revert with 0, 17
                    if mem[96] < 1:
                        revert with 0, 17
                    if u + 1 < mem[96] - 1:
                        if u + 1 >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                            revert with 0, 50
                        if u + 1 >= mem[96]:
                            revert with 0, 50
                        if 1 > !(u + 1):
                            revert with 0, 17
                        idx = u + 2
                        s = mem[(32 * u + 1) + 128]
                        t = mem[(32 * u + 1) + ceil32(32 * ('cd', 4).length) + 129]
                        u = u + 1
                        continue 
                    _1160 = mem[64]
                    mem[mem[64]] = 32
                    _1178 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98]
                    mem[mem[64] + 32] = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98]
                    idx = 0
                    s = ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130
                    t = mem[64] + 64
                    while idx < _1178:
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    return memory
                      from mem[64]
                       len _1160 + (32 * _1178) + -mem[64] + 64
    revert with 0, 50
}

function getAllPairs(address arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    if arg3 <= arg2:
        revert with 0, 'Invalid indices'
    if arg3 < arg2:
        revert with 0, 17
    if arg3 - arg2 > test266151307():
        revert with 0, 65
    mem[96] = arg3 - arg2
    if not arg3 - arg2:
        if arg3 - arg2 > test266151307():
            revert with 0, 65
        mem[(32 * arg3 - arg2) + 128] = arg3 - arg2
        if not arg3 - arg2:
            if arg3 - arg2 > test266151307():
                revert with 0, 65
            mem[(64 * arg3 - arg2) + 160] = arg3 - arg2
            if not arg3 - arg2:
                if arg3 - arg2 > test266151307():
                    revert with 0, 65
                mem[(98 * arg3) + (-98 * arg2) + 192] = arg3 - arg2
                if not arg3 - arg2:
                    if arg3 - arg2 > test266151307():
                        revert with 0, 65
                    mem[(98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 224] = arg3 - arg2
                    mem[64] = (98 * arg3) + (-98 * arg2) + (64 * arg3 - arg2) + 256
                    if not arg3 - arg2:
                        idx = 0
                        s = arg2
                        while idx < arg3 - arg2:
                            mem[mem[64] + 4] = s
                            require ext_code.size(arg1)
                            staticcall arg1.allPairs(uint256 rg1) with:
                                    gas gas_remaining wei
                                   args s
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1762 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1826 = mem[_1762]
                            require mem[_1762] == mem[_1762 + 12 len 20]
                            if idx >= mem[96]:
                                revert with 0, 50
                            mem[(32 * idx) + 128] = mem[_1762 + 12 len 20]
                            require ext_code.size(address(_1826))
                            staticcall address(_1826).token0() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2051 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2051] == mem[_2051 + 12 len 20]
                            if idx >= mem[(32 * arg3 - arg2) + 128]:
                                revert with 0, 50
                            mem[(32 * idx) + (32 * arg3 - arg2) + 160] = mem[_2051 + 12 len 20]
                            require ext_code.size(address(_1826))
                            staticcall address(_1826).token1() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2370 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2370] == mem[_2370 + 12 len 20]
                            if idx >= mem[(64 * arg3 - arg2) + 160]:
                                revert with 0, 50
                            mem[(32 * idx) + (64 * arg3 - arg2) + 192] = mem[_2370 + 12 len 20]
                            if idx >= mem[(32 * arg3 - arg2) + 128]:
                                revert with 0, 50
                            _2562 = mem[(32 * idx) + (32 * arg3 - arg2) + 160]
                            if idx >= mem[(64 * arg3 - arg2) + 160]:
                                revert with 0, 50
                            _2626 = mem[(32 * idx) + (64 * arg3 - arg2) + 192]
                            require ext_code.size(address(_1826))
                            staticcall address(_1826).getReserves() with:
                                    gas gas_remaining wei
                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if mem[(32 * idx) + (32 * arg3 - arg2) + 172 len 20] < mem[(32 * idx) + (64 * arg3 - arg2) + 204 len 20]:
                                _2786 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 96
                                _2850 = mem[_2786]
                                require mem[_2786] == mem[_2786 + 18 len 14]
                                _2914 = mem[_2786 + 32]
                                require mem[_2786 + 32] == mem[_2786 + 50 len 14]
                                require mem[_2786 + 64] == mem[_2786 + 92 len 4]
                                if idx >= mem[(98 * arg3) + (-98 * arg2) + 192]:
                                    revert with 0, 50
                                if address(_2562) == address(_2562):
                                    mem[(32 * idx) + (98 * arg3) + (-98 * arg2) + 224] = mem[_2786 + 18 len 14]
                                    if idx >= mem[(98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 224]:
                                        revert with 0, 50
                                    mem[(32 * idx) + (98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 256] = Mask(112, 0, _2914)
                                else:
                                    mem[(32 * idx) + (98 * arg3) + (-98 * arg2) + 224] = mem[_2786 + 50 len 14]
                                    if idx >= mem[(98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 224]:
                                        revert with 0, 50
                                    mem[(32 * idx) + (98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 256] = Mask(112, 0, _2850)
                            else:
                                _2787 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 96
                                _2851 = mem[_2787]
                                require mem[_2787] == mem[_2787 + 18 len 14]
                                _2915 = mem[_2787 + 32]
                                require mem[_2787 + 32] == mem[_2787 + 50 len 14]
                                require mem[_2787 + 64] == mem[_2787 + 92 len 4]
                                if idx >= mem[(98 * arg3) + (-98 * arg2) + 192]:
                                    revert with 0, 50
                                if address(_2562) == address(_2626):
                                    mem[(32 * idx) + (98 * arg3) + (-98 * arg2) + 224] = mem[_2787 + 18 len 14]
                                    if idx >= mem[(98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 224]:
                                        revert with 0, 50
                                    mem[(32 * idx) + (98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 256] = Mask(112, 0, _2915)
                                else:
                                    mem[(32 * idx) + (98 * arg3) + (-98 * arg2) + 224] = mem[_2787 + 50 len 14]
                                    if idx >= mem[(98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 224]:
                                        revert with 0, 50
                                    mem[(32 * idx) + (98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 256] = Mask(112, 0, _2851)
                            if 1 > !s:
                                revert with 0, 17
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = s + 1
                            continue 
                        _1730 = mem[64]
                        mem[mem[64]] = 160
                        _1794 = mem[96]
                        mem[mem[64] + 160] = mem[96]
                        idx = 0
                        s = 128
                        t = mem[64] + 192
                        while idx < mem[96]:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[mem[64] + 32] = (32 * mem[96]) + 192
                        _3330 = mem[(32 * arg3 - arg2) + 128]
                        mem[mem[64] + (32 * mem[96]) + 192] = mem[(32 * arg3 - arg2) + 128]
                        idx = 0
                        s = (32 * arg3 - arg2) + 160
                        t = mem[64] + (32 * mem[96]) + 224
                        while idx < _3330:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[_1730 + 64] = (32 * mem[96]) + (32 * _3330) + 224
                        _3650 = mem[(64 * arg3 - arg2) + 160]
                        mem[_1730 + (32 * _1794) + (32 * _3330) + 224] = mem[(64 * arg3 - arg2) + 160]
                        idx = 0
                        s = (64 * arg3 - arg2) + 192
                        t = _1730 + (32 * _1794) + (32 * _3330) + 256
                        while idx < _3650:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[_1730 + 96] = (32 * _1794) + (32 * _3330) + (32 * _3650) + 256
                        _3906 = mem[(98 * arg3) + (-98 * arg2) + 192]
                        mem[_1730 + (32 * _1794) + (32 * _3330) + (32 * _3650) + 256] = mem[(98 * arg3) + (-98 * arg2) + 192]
                        mem[_1730 + (32 * _1794) + (32 * _3330) + (32 * _3650) + 288 len 32 * _3906] = mem[(98 * arg3) + (-98 * arg2) + 224 len 32 * _3906]
                        mem[_1730 + 128] = (32 * _1794) + (32 * _3330) + (32 * _3650) + (32 * _3906) + 288
                        _4098 = mem[(98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 224]
                        mem[_1730 + (32 * _1794) + (32 * _3330) + (32 * _3650) + (32 * _3906) + 288] = mem[(98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 224]
                        mem[_1730 + (32 * _1794) + (32 * _3330) + (32 * _3650) + (32 * _3906) + 320 len 32 * _4098] = mem[(98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 256 len 32 * _4098]
                        return memory
                          from mem[64]
                           len _1730 + (32 * _1794) + (32 * _3330) + (32 * _3650) + (32 * _3906) + (32 * _4098) + -mem[64] + 320
                    mem[(98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 256 len 32 * arg3 - arg2] = call.data[calldata.size len 32 * arg3 - arg2]
                    idx = 0
                    s = arg2
                    while idx < arg3 - arg2:
                        mem[mem[64] + 4] = s
                        require ext_code.size(arg1)
                        staticcall arg1.allPairs(uint256 rg1) with:
                                gas gas_remaining wei
                               args s
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1763 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1827 = mem[_1763]
                        require mem[_1763] == mem[_1763 + 12 len 20]
                        if idx >= mem[96]:
                            revert with 0, 50
                        mem[(32 * idx) + 128] = mem[_1763 + 12 len 20]
                        require ext_code.size(address(_1827))
                        staticcall address(_1827).token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2053 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2053] == mem[_2053 + 12 len 20]
                        if idx >= mem[(32 * arg3 - arg2) + 128]:
                            revert with 0, 50
                        mem[(32 * idx) + (32 * arg3 - arg2) + 160] = mem[_2053 + 12 len 20]
                        require ext_code.size(address(_1827))
                        staticcall address(_1827).token1() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2371 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2371] == mem[_2371 + 12 len 20]
                        if idx >= mem[(64 * arg3 - arg2) + 160]:
                            revert with 0, 50
                        mem[(32 * idx) + (64 * arg3 - arg2) + 192] = mem[_2371 + 12 len 20]
                        if idx >= mem[(32 * arg3 - arg2) + 128]:
                            revert with 0, 50
                        _2564 = mem[(32 * idx) + (32 * arg3 - arg2) + 160]
                        if idx >= mem[(64 * arg3 - arg2) + 160]:
                            revert with 0, 50
                        _2627 = mem[(32 * idx) + (64 * arg3 - arg2) + 192]
                        require ext_code.size(address(_1827))
                        staticcall address(_1827).getReserves() with:
                                gas gas_remaining wei
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if mem[(32 * idx) + (32 * arg3 - arg2) + 172 len 20] < mem[(32 * idx) + (64 * arg3 - arg2) + 204 len 20]:
                            _2788 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 96
                            _2852 = mem[_2788]
                            require mem[_2788] == mem[_2788 + 18 len 14]
                            _2916 = mem[_2788 + 32]
                            require mem[_2788 + 32] == mem[_2788 + 50 len 14]
                            require mem[_2788 + 64] == mem[_2788 + 92 len 4]
                            if idx >= mem[(98 * arg3) + (-98 * arg2) + 192]:
                                revert with 0, 50
                            if address(_2564) == address(_2564):
                                mem[(32 * idx) + (98 * arg3) + (-98 * arg2) + 224] = mem[_2788 + 18 len 14]
                                if idx >= mem[(98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 224]:
                                    revert with 0, 50
                                mem[(32 * idx) + (98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 256] = Mask(112, 0, _2916)
                            else:
                                mem[(32 * idx) + (98 * arg3) + (-98 * arg2) + 224] = mem[_2788 + 50 len 14]
                                if idx >= mem[(98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 224]:
                                    revert with 0, 50
                                mem[(32 * idx) + (98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 256] = Mask(112, 0, _2852)
                        else:
                            _2789 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 96
                            _2853 = mem[_2789]
                            require mem[_2789] == mem[_2789 + 18 len 14]
                            _2917 = mem[_2789 + 32]
                            require mem[_2789 + 32] == mem[_2789 + 50 len 14]
                            require mem[_2789 + 64] == mem[_2789 + 92 len 4]
                            if idx >= mem[(98 * arg3) + (-98 * arg2) + 192]:
                                revert with 0, 50
                            if address(_2564) == address(_2627):
                                mem[(32 * idx) + (98 * arg3) + (-98 * arg2) + 224] = mem[_2789 + 18 len 14]
                                if idx >= mem[(98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 224]:
                                    revert with 0, 50
                                mem[(32 * idx) + (98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 256] = Mask(112, 0, _2917)
                            else:
                                mem[(32 * idx) + (98 * arg3) + (-98 * arg2) + 224] = mem[_2789 + 50 len 14]
                                if idx >= mem[(98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 224]:
                                    revert with 0, 50
                                mem[(32 * idx) + (98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 256] = Mask(112, 0, _2853)
                        if 1 > !s:
                            revert with 0, 17
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s + 1
                        continue 
                    _1731 = mem[64]
                    mem[mem[64]] = 160
                    _1795 = mem[96]
                    mem[mem[64] + 160] = mem[96]
                    idx = 0
                    s = 128
                    t = mem[64] + 192
                    while idx < _1795:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_1731 + 32] = (32 * _1795) + 192
                    _3331 = mem[(32 * arg3 - arg2) + 128]
                    mem[_1731 + (32 * _1795) + 192] = mem[(32 * arg3 - arg2) + 128]
                    idx = 0
                    s = (32 * arg3 - arg2) + 160
                    t = _1731 + (32 * _1795) + 224
                    while idx < _3331:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_1731 + 64] = (32 * _1795) + (32 * _3331) + 224
                    _3651 = mem[(64 * arg3 - arg2) + 160]
                    mem[_1731 + (32 * _1795) + (32 * _3331) + 224] = mem[(64 * arg3 - arg2) + 160]
                    idx = 0
                    s = (64 * arg3 - arg2) + 192
                    t = _1731 + (32 * _1795) + (32 * _3331) + 256
                    while idx < _3651:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_1731 + 96] = (32 * _1795) + (32 * _3331) + (32 * _3651) + 256
                    _3907 = mem[(98 * arg3) + (-98 * arg2) + 192]
                    mem[_1731 + (32 * _1795) + (32 * _3331) + (32 * _3651) + 256] = mem[(98 * arg3) + (-98 * arg2) + 192]
                    mem[_1731 + (32 * _1795) + (32 * _3331) + (32 * _3651) + 288 len 32 * _3907] = mem[(98 * arg3) + (-98 * arg2) + 224 len 32 * _3907]
                    mem[_1731 + 128] = (32 * _1795) + (32 * _3331) + (32 * _3651) + (32 * _3907) + 288
                    _4099 = mem[(98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 224]
                    mem[_1731 + (32 * _1795) + (32 * _3331) + (32 * _3651) + (32 * _3907) + 288] = mem[(98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 224]
                    mem[_1731 + (32 * _1795) + (32 * _3331) + (32 * _3651) + (32 * _3907) + 320 len 32 * _4099] = mem[(98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 256 len 32 * _4099]
                    return memory
                      from mem[64]
                       len _1731 + (32 * _1795) + (32 * _3331) + (32 * _3651) + (32 * _3907) + (32 * _4099) + -mem[64] + 320
                mem[(98 * arg3) + (-98 * arg2) + 224 len 32 * arg3 - arg2] = call.data[calldata.size len 32 * arg3 - arg2]
                if arg3 - arg2 > test266151307():
                    revert with 0, 65
                mem[(98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 224] = arg3 - arg2
                mem[64] = (98 * arg3) + (-98 * arg2) + (64 * arg3 - arg2) + 256
                if not arg3 - arg2:
                    idx = 0
                    s = arg2
                    while idx < arg3 - arg2:
                        mem[mem[64] + 4] = s
                        require ext_code.size(arg1)
                        staticcall arg1.allPairs(uint256 rg1) with:
                                gas gas_remaining wei
                               args s
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1764 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1828 = mem[_1764]
                        require mem[_1764] == mem[_1764 + 12 len 20]
                        if idx >= mem[96]:
                            revert with 0, 50
                        mem[(32 * idx) + 128] = mem[_1764 + 12 len 20]
                        require ext_code.size(address(_1828))
                        staticcall address(_1828).token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2055 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2055] == mem[_2055 + 12 len 20]
                        if idx >= mem[(32 * arg3 - arg2) + 128]:
                            revert with 0, 50
                        mem[(32 * idx) + (32 * arg3 - arg2) + 160] = mem[_2055 + 12 len 20]
                        require ext_code.size(address(_1828))
                        staticcall address(_1828).token1() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2372 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2372] == mem[_2372 + 12 len 20]
                        if idx >= mem[(64 * arg3 - arg2) + 160]:
                            revert with 0, 50
                        mem[(32 * idx) + (64 * arg3 - arg2) + 192] = mem[_2372 + 12 len 20]
                        if idx >= mem[(32 * arg3 - arg2) + 128]:
                            revert with 0, 50
                        _2566 = mem[(32 * idx) + (32 * arg3 - arg2) + 160]
                        if idx >= mem[(64 * arg3 - arg2) + 160]:
                            revert with 0, 50
                        _2628 = mem[(32 * idx) + (64 * arg3 - arg2) + 192]
                        require ext_code.size(address(_1828))
                        staticcall address(_1828).getReserves() with:
                                gas gas_remaining wei
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if mem[(32 * idx) + (32 * arg3 - arg2) + 172 len 20] < mem[(32 * idx) + (64 * arg3 - arg2) + 204 len 20]:
                            _2790 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 96
                            _2854 = mem[_2790]
                            require mem[_2790] == mem[_2790 + 18 len 14]
                            _2918 = mem[_2790 + 32]
                            require mem[_2790 + 32] == mem[_2790 + 50 len 14]
                            require mem[_2790 + 64] == mem[_2790 + 92 len 4]
                            if idx >= mem[(98 * arg3) + (-98 * arg2) + 192]:
                                revert with 0, 50
                            if address(_2566) == address(_2566):
                                mem[(32 * idx) + (98 * arg3) + (-98 * arg2) + 224] = mem[_2790 + 18 len 14]
                                if idx >= mem[(98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 224]:
                                    revert with 0, 50
                                mem[(32 * idx) + (98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 256] = Mask(112, 0, _2918)
                            else:
                                mem[(32 * idx) + (98 * arg3) + (-98 * arg2) + 224] = mem[_2790 + 50 len 14]
                                if idx >= mem[(98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 224]:
                                    revert with 0, 50
                                mem[(32 * idx) + (98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 256] = Mask(112, 0, _2854)
                        else:
                            _2791 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 96
                            _2855 = mem[_2791]
                            require mem[_2791] == mem[_2791 + 18 len 14]
                            _2919 = mem[_2791 + 32]
                            require mem[_2791 + 32] == mem[_2791 + 50 len 14]
                            require mem[_2791 + 64] == mem[_2791 + 92 len 4]
                            if idx >= mem[(98 * arg3) + (-98 * arg2) + 192]:
                                revert with 0, 50
                            if address(_2566) == address(_2628):
                                mem[(32 * idx) + (98 * arg3) + (-98 * arg2) + 224] = mem[_2791 + 18 len 14]
                                if idx >= mem[(98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 224]:
                                    revert with 0, 50
                                mem[(32 * idx) + (98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 256] = Mask(112, 0, _2919)
                            else:
                                mem[(32 * idx) + (98 * arg3) + (-98 * arg2) + 224] = mem[_2791 + 50 len 14]
                                if idx >= mem[(98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 224]:
                                    revert with 0, 50
                                mem[(32 * idx) + (98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 256] = Mask(112, 0, _2855)
                        if 1 > !s:
                            revert with 0, 17
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s + 1
                        continue 
                    _1732 = mem[64]
                    mem[mem[64]] = 160
                    _1796 = mem[96]
                    mem[mem[64] + 160] = mem[96]
                    idx = 0
                    s = 128
                    t = mem[64] + 192
                    while idx < _1796:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_1732 + 32] = (32 * _1796) + 192
                    _3332 = mem[(32 * arg3 - arg2) + 128]
                    mem[_1732 + (32 * _1796) + 192] = mem[(32 * arg3 - arg2) + 128]
                    idx = 0
                    s = (32 * arg3 - arg2) + 160
                    t = _1732 + (32 * _1796) + 224
                    while idx < _3332:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_1732 + 64] = (32 * _1796) + (32 * _3332) + 224
                    _3652 = mem[(64 * arg3 - arg2) + 160]
                    mem[_1732 + (32 * _1796) + (32 * _3332) + 224] = mem[(64 * arg3 - arg2) + 160]
                    idx = 0
                    s = (64 * arg3 - arg2) + 192
                    t = _1732 + (32 * _1796) + (32 * _3332) + 256
                    while idx < _3652:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_1732 + 96] = (32 * _1796) + (32 * _3332) + (32 * _3652) + 256
                    _3908 = mem[(98 * arg3) + (-98 * arg2) + 192]
                    mem[_1732 + (32 * _1796) + (32 * _3332) + (32 * _3652) + 256] = mem[(98 * arg3) + (-98 * arg2) + 192]
                    mem[_1732 + (32 * _1796) + (32 * _3332) + (32 * _3652) + 288 len 32 * _3908] = mem[(98 * arg3) + (-98 * arg2) + 224 len 32 * _3908]
                    mem[_1732 + 128] = (32 * _1796) + (32 * _3332) + (32 * _3652) + (32 * _3908) + 288
                    _4100 = mem[(98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 224]
                    mem[_1732 + (32 * _1796) + (32 * _3332) + (32 * _3652) + (32 * _3908) + 288] = mem[(98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 224]
                    mem[_1732 + (32 * _1796) + (32 * _3332) + (32 * _3652) + (32 * _3908) + 320 len 32 * _4100] = mem[(98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 256 len 32 * _4100]
                    return memory
                      from mem[64]
                       len _1732 + (32 * _1796) + (32 * _3332) + (32 * _3652) + (32 * _3908) + (32 * _4100) + -mem[64] + 320
                mem[(98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 256 len 32 * arg3 - arg2] = call.data[calldata.size len 32 * arg3 - arg2]
                idx = 0
                s = arg2
                while idx < arg3 - arg2:
                    mem[mem[64] + 4] = s
                    require ext_code.size(arg1)
                    staticcall arg1.allPairs(uint256 rg1) with:
                            gas gas_remaining wei
                           args s
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1765 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1829 = mem[_1765]
                    require mem[_1765] == mem[_1765 + 12 len 20]
                    if idx >= mem[96]:
                        revert with 0, 50
                    mem[(32 * idx) + 128] = mem[_1765 + 12 len 20]
                    require ext_code.size(address(_1829))
                    staticcall address(_1829).token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2057 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2057] == mem[_2057 + 12 len 20]
                    if idx >= mem[(32 * arg3 - arg2) + 128]:
                        revert with 0, 50
                    mem[(32 * idx) + (32 * arg3 - arg2) + 160] = mem[_2057 + 12 len 20]
                    require ext_code.size(address(_1829))
                    staticcall address(_1829).token1() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2373 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2373] == mem[_2373 + 12 len 20]
                    if idx >= mem[(64 * arg3 - arg2) + 160]:
                        revert with 0, 50
                    mem[(32 * idx) + (64 * arg3 - arg2) + 192] = mem[_2373 + 12 len 20]
                    if idx >= mem[(32 * arg3 - arg2) + 128]:
                        revert with 0, 50
                    _2568 = mem[(32 * idx) + (32 * arg3 - arg2) + 160]
                    if idx >= mem[(64 * arg3 - arg2) + 160]:
                        revert with 0, 50
                    _2629 = mem[(32 * idx) + (64 * arg3 - arg2) + 192]
                    require ext_code.size(address(_1829))
                    staticcall address(_1829).getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if mem[(32 * idx) + (32 * arg3 - arg2) + 172 len 20] < mem[(32 * idx) + (64 * arg3 - arg2) + 204 len 20]:
                        _2792 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        _2856 = mem[_2792]
                        require mem[_2792] == mem[_2792 + 18 len 14]
                        _2920 = mem[_2792 + 32]
                        require mem[_2792 + 32] == mem[_2792 + 50 len 14]
                        require mem[_2792 + 64] == mem[_2792 + 92 len 4]
                        if idx >= mem[(98 * arg3) + (-98 * arg2) + 192]:
                            revert with 0, 50
                        if address(_2568) == address(_2568):
                            mem[(32 * idx) + (98 * arg3) + (-98 * arg2) + 224] = mem[_2792 + 18 len 14]
                            if idx >= mem[(98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 224]:
                                revert with 0, 50
                            mem[(32 * idx) + (98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 256] = Mask(112, 0, _2920)
                        else:
                            mem[(32 * idx) + (98 * arg3) + (-98 * arg2) + 224] = mem[_2792 + 50 len 14]
                            if idx >= mem[(98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 224]:
                                revert with 0, 50
                            mem[(32 * idx) + (98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 256] = Mask(112, 0, _2856)
                    else:
                        _2793 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        _2857 = mem[_2793]
                        require mem[_2793] == mem[_2793 + 18 len 14]
                        _2921 = mem[_2793 + 32]
                        require mem[_2793 + 32] == mem[_2793 + 50 len 14]
                        require mem[_2793 + 64] == mem[_2793 + 92 len 4]
                        if idx >= mem[(98 * arg3) + (-98 * arg2) + 192]:
                            revert with 0, 50
                        if address(_2568) == address(_2629):
                            mem[(32 * idx) + (98 * arg3) + (-98 * arg2) + 224] = mem[_2793 + 18 len 14]
                            if idx >= mem[(98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 224]:
                                revert with 0, 50
                            mem[(32 * idx) + (98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 256] = Mask(112, 0, _2921)
                        else:
                            mem[(32 * idx) + (98 * arg3) + (-98 * arg2) + 224] = mem[_2793 + 50 len 14]
                            if idx >= mem[(98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 224]:
                                revert with 0, 50
                            mem[(32 * idx) + (98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 256] = Mask(112, 0, _2857)
                    if 1 > !s:
                        revert with 0, 17
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + 1
                    continue 
                _1733 = mem[64]
                mem[mem[64]] = 160
                _1797 = mem[96]
                mem[mem[64] + 160] = mem[96]
                idx = 0
                s = 128
                t = mem[64] + 192
                while idx < mem[96]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[mem[64] + 32] = (32 * mem[96]) + 192
                _3333 = mem[(32 * arg3 - arg2) + 128]
                mem[mem[64] + (32 * mem[96]) + 192] = mem[(32 * arg3 - arg2) + 128]
                idx = 0
                s = (32 * arg3 - arg2) + 160
                t = mem[64] + (32 * mem[96]) + 224
                while idx < _3333:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[mem[64] + 64] = (32 * mem[96]) + (32 * _3333) + 224
                _3653 = mem[(64 * arg3 - arg2) + 160]
                mem[mem[64] + (32 * mem[96]) + (32 * _3333) + 224] = mem[(64 * arg3 - arg2) + 160]
                idx = 0
                s = (64 * arg3 - arg2) + 192
                t = mem[64] + (32 * mem[96]) + (32 * _3333) + 256
                while idx < _3653:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_1733 + 96] = (32 * mem[96]) + (32 * _3333) + (32 * _3653) + 256
                _3909 = mem[(98 * arg3) + (-98 * arg2) + 192]
                mem[_1733 + (32 * _1797) + (32 * _3333) + (32 * _3653) + 256] = mem[(98 * arg3) + (-98 * arg2) + 192]
                mem[_1733 + (32 * _1797) + (32 * _3333) + (32 * _3653) + 288 len 32 * _3909] = mem[(98 * arg3) + (-98 * arg2) + 224 len 32 * _3909]
                mem[_1733 + 128] = (32 * _1797) + (32 * _3333) + (32 * _3653) + (32 * _3909) + 288
                _4101 = mem[(98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 224]
                mem[_1733 + (32 * _1797) + (32 * _3333) + (32 * _3653) + (32 * _3909) + 288] = mem[(98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 224]
                mem[_1733 + (32 * _1797) + (32 * _3333) + (32 * _3653) + (32 * _3909) + 320 len 32 * _4101] = mem[(98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 256 len 32 * _4101]
                return memory
                  from mem[64]
                   len _1733 + (32 * _1797) + (32 * _3333) + (32 * _3653) + (32 * _3909) + (32 * _4101) + -mem[64] + 320
            mem[(64 * arg3 - arg2) + 192 len 32 * arg3 - arg2] = call.data[calldata.size len 32 * arg3 - arg2]
            if arg3 - arg2 > test266151307():
                revert with 0, 65
            mem[(98 * arg3) + (-98 * arg2) + 192] = arg3 - arg2
            if not arg3 - arg2:
                if arg3 - arg2 > test266151307():
                    revert with 0, 65
                mem[(98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 224] = arg3 - arg2
                mem[64] = (98 * arg3) + (-98 * arg2) + (64 * arg3 - arg2) + 256
                if not arg3 - arg2:
                    idx = 0
                    s = arg2
                    while idx < arg3 - arg2:
                        mem[mem[64] + 4] = s
                        require ext_code.size(arg1)
                        staticcall arg1.allPairs(uint256 rg1) with:
                                gas gas_remaining wei
                               args s
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1766 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1830 = mem[_1766]
                        require mem[_1766] == mem[_1766 + 12 len 20]
                        if idx >= mem[96]:
                            revert with 0, 50
                        mem[(32 * idx) + 128] = mem[_1766 + 12 len 20]
                        require ext_code.size(address(_1830))
                        staticcall address(_1830).token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2059 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2059] == mem[_2059 + 12 len 20]
                        if idx >= mem[(32 * arg3 - arg2) + 128]:
                            revert with 0, 50
                        mem[(32 * idx) + (32 * arg3 - arg2) + 160] = mem[_2059 + 12 len 20]
                        require ext_code.size(address(_1830))
                        staticcall address(_1830).token1() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2374 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2374] == mem[_2374 + 12 len 20]
                        if idx >= mem[(64 * arg3 - arg2) + 160]:
                            revert with 0, 50
                        mem[(32 * idx) + (64 * arg3 - arg2) + 192] = mem[_2374 + 12 len 20]
                        if idx >= mem[(32 * arg3 - arg2) + 128]:
                            revert with 0, 50
                        _2570 = mem[(32 * idx) + (32 * arg3 - arg2) + 160]
                        if idx >= mem[(64 * arg3 - arg2) + 160]:
                            revert with 0, 50
                        _2630 = mem[(32 * idx) + (64 * arg3 - arg2) + 192]
                        require ext_code.size(address(_1830))
                        staticcall address(_1830).getReserves() with:
                                gas gas_remaining wei
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if mem[(32 * idx) + (32 * arg3 - arg2) + 172 len 20] < mem[(32 * idx) + (64 * arg3 - arg2) + 204 len 20]:
                            _2794 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 96
                            _2858 = mem[_2794]
                            require mem[_2794] == mem[_2794 + 18 len 14]
                            _2922 = mem[_2794 + 32]
                            require mem[_2794 + 32] == mem[_2794 + 50 len 14]
                            require mem[_2794 + 64] == mem[_2794 + 92 len 4]
                            if idx >= mem[(98 * arg3) + (-98 * arg2) + 192]:
                                revert with 0, 50
                            if address(_2570) == address(_2570):
                                mem[(32 * idx) + (98 * arg3) + (-98 * arg2) + 224] = mem[_2794 + 18 len 14]
                                if idx >= mem[(98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 224]:
                                    revert with 0, 50
                                mem[(32 * idx) + (98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 256] = Mask(112, 0, _2922)
                            else:
                                mem[(32 * idx) + (98 * arg3) + (-98 * arg2) + 224] = mem[_2794 + 50 len 14]
                                if idx >= mem[(98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 224]:
                                    revert with 0, 50
                                mem[(32 * idx) + (98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 256] = Mask(112, 0, _2858)
                        else:
                            _2795 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 96
                            _2859 = mem[_2795]
                            require mem[_2795] == mem[_2795 + 18 len 14]
                            _2923 = mem[_2795 + 32]
                            require mem[_2795 + 32] == mem[_2795 + 50 len 14]
                            require mem[_2795 + 64] == mem[_2795 + 92 len 4]
                            if idx >= mem[(98 * arg3) + (-98 * arg2) + 192]:
                                revert with 0, 50
                            if address(_2570) == address(_2630):
                                mem[(32 * idx) + (98 * arg3) + (-98 * arg2) + 224] = mem[_2795 + 18 len 14]
                                if idx >= mem[(98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 224]:
                                    revert with 0, 50
                                mem[(32 * idx) + (98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 256] = Mask(112, 0, _2923)
                            else:
                                mem[(32 * idx) + (98 * arg3) + (-98 * arg2) + 224] = mem[_2795 + 50 len 14]
                                if idx >= mem[(98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 224]:
                                    revert with 0, 50
                                mem[(32 * idx) + (98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 256] = Mask(112, 0, _2859)
                        if 1 > !s:
                            revert with 0, 17
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s + 1
                        continue 
                    _1734 = mem[64]
                    mem[mem[64]] = 160
                    _1798 = mem[96]
                    mem[mem[64] + 160] = mem[96]
                    idx = 0
                    s = 128
                    t = mem[64] + 192
                    while idx < _1798:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_1734 + 32] = (32 * _1798) + 192
                    _3334 = mem[(32 * arg3 - arg2) + 128]
                    mem[_1734 + (32 * _1798) + 192] = mem[(32 * arg3 - arg2) + 128]
                    idx = 0
                    s = (32 * arg3 - arg2) + 160
                    t = _1734 + (32 * _1798) + 224
                    while idx < _3334:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_1734 + 64] = (32 * _1798) + (32 * _3334) + 224
                    _3654 = mem[(64 * arg3 - arg2) + 160]
                    mem[_1734 + (32 * _1798) + (32 * _3334) + 224] = mem[(64 * arg3 - arg2) + 160]
                    idx = 0
                    s = (64 * arg3 - arg2) + 192
                    t = _1734 + (32 * _1798) + (32 * _3334) + 256
                    while idx < _3654:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_1734 + 96] = (32 * _1798) + (32 * _3334) + (32 * _3654) + 256
                    _3910 = mem[(98 * arg3) + (-98 * arg2) + 192]
                    mem[_1734 + (32 * _1798) + (32 * _3334) + (32 * _3654) + 256] = mem[(98 * arg3) + (-98 * arg2) + 192]
                    mem[_1734 + (32 * _1798) + (32 * _3334) + (32 * _3654) + 288 len 32 * _3910] = mem[(98 * arg3) + (-98 * arg2) + 224 len 32 * _3910]
                    mem[_1734 + 128] = (32 * _1798) + (32 * _3334) + (32 * _3654) + (32 * _3910) + 288
                    _4102 = mem[(98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 224]
                    mem[_1734 + (32 * _1798) + (32 * _3334) + (32 * _3654) + (32 * _3910) + 288] = mem[(98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 224]
                    mem[_1734 + (32 * _1798) + (32 * _3334) + (32 * _3654) + (32 * _3910) + 320 len 32 * _4102] = mem[(98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 256 len 32 * _4102]
                    return memory
                      from mem[64]
                       len _1734 + (32 * _1798) + (32 * _3334) + (32 * _3654) + (32 * _3910) + (32 * _4102) + -mem[64] + 320
                mem[(98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 256 len 32 * arg3 - arg2] = call.data[calldata.size len 32 * arg3 - arg2]
                idx = 0
                s = arg2
                while idx < arg3 - arg2:
                    mem[mem[64] + 4] = s
                    require ext_code.size(arg1)
                    staticcall arg1.allPairs(uint256 rg1) with:
                            gas gas_remaining wei
                           args s
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1767 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1831 = mem[_1767]
                    require mem[_1767] == mem[_1767 + 12 len 20]
                    if idx >= mem[96]:
                        revert with 0, 50
                    mem[(32 * idx) + 128] = mem[_1767 + 12 len 20]
                    require ext_code.size(address(_1831))
                    staticcall address(_1831).token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2061 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2061] == mem[_2061 + 12 len 20]
                    if idx >= mem[(32 * arg3 - arg2) + 128]:
                        revert with 0, 50
                    mem[(32 * idx) + (32 * arg3 - arg2) + 160] = mem[_2061 + 12 len 20]
                    require ext_code.size(address(_1831))
                    staticcall address(_1831).token1() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2375 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2375] == mem[_2375 + 12 len 20]
                    if idx >= mem[(64 * arg3 - arg2) + 160]:
                        revert with 0, 50
                    mem[(32 * idx) + (64 * arg3 - arg2) + 192] = mem[_2375 + 12 len 20]
                    if idx >= mem[(32 * arg3 - arg2) + 128]:
                        revert with 0, 50
                    _2572 = mem[(32 * idx) + (32 * arg3 - arg2) + 160]
                    if idx >= mem[(64 * arg3 - arg2) + 160]:
                        revert with 0, 50
                    _2631 = mem[(32 * idx) + (64 * arg3 - arg2) + 192]
                    require ext_code.size(address(_1831))
                    staticcall address(_1831).getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if mem[(32 * idx) + (32 * arg3 - arg2) + 172 len 20] < mem[(32 * idx) + (64 * arg3 - arg2) + 204 len 20]:
                        _2796 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        _2860 = mem[_2796]
                        require mem[_2796] == mem[_2796 + 18 len 14]
                        _2924 = mem[_2796 + 32]
                        require mem[_2796 + 32] == mem[_2796 + 50 len 14]
                        require mem[_2796 + 64] == mem[_2796 + 92 len 4]
                        if idx >= mem[(98 * arg3) + (-98 * arg2) + 192]:
                            revert with 0, 50
                        if address(_2572) == address(_2572):
                            mem[(32 * idx) + (98 * arg3) + (-98 * arg2) + 224] = mem[_2796 + 18 len 14]
                            if idx >= mem[(98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 224]:
                                revert with 0, 50
                            mem[(32 * idx) + (98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 256] = Mask(112, 0, _2924)
                        else:
                            mem[(32 * idx) + (98 * arg3) + (-98 * arg2) + 224] = mem[_2796 + 50 len 14]
                            if idx >= mem[(98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 224]:
                                revert with 0, 50
                            mem[(32 * idx) + (98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 256] = Mask(112, 0, _2860)
                    else:
                        _2797 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        _2861 = mem[_2797]
                        require mem[_2797] == mem[_2797 + 18 len 14]
                        _2925 = mem[_2797 + 32]
                        require mem[_2797 + 32] == mem[_2797 + 50 len 14]
                        require mem[_2797 + 64] == mem[_2797 + 92 len 4]
                        if idx >= mem[(98 * arg3) + (-98 * arg2) + 192]:
                            revert with 0, 50
                        if address(_2572) == address(_2631):
                            mem[(32 * idx) + (98 * arg3) + (-98 * arg2) + 224] = mem[_2797 + 18 len 14]
                            if idx >= mem[(98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 224]:
                                revert with 0, 50
                            mem[(32 * idx) + (98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 256] = Mask(112, 0, _2925)
                        else:
                            mem[(32 * idx) + (98 * arg3) + (-98 * arg2) + 224] = mem[_2797 + 50 len 14]
                            if idx >= mem[(98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 224]:
                                revert with 0, 50
                            mem[(32 * idx) + (98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 256] = Mask(112, 0, _2861)
                    if 1 > !s:
                        revert with 0, 17
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + 1
                    continue 
                _1735 = mem[64]
                mem[mem[64]] = 160
                _1799 = mem[96]
                mem[mem[64] + 160] = mem[96]
                idx = 0
                s = 128
                t = mem[64] + 192
                while idx < mem[96]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[mem[64] + 32] = (32 * mem[96]) + 192
                _3335 = mem[(32 * arg3 - arg2) + 128]
                mem[mem[64] + (32 * mem[96]) + 192] = mem[(32 * arg3 - arg2) + 128]
                idx = 0
                s = (32 * arg3 - arg2) + 160
                t = mem[64] + (32 * mem[96]) + 224
                while idx < _3335:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_1735 + 64] = (32 * mem[96]) + (32 * _3335) + 224
                _3655 = mem[(64 * arg3 - arg2) + 160]
                mem[_1735 + (32 * _1799) + (32 * _3335) + 224] = mem[(64 * arg3 - arg2) + 160]
                idx = 0
                s = (64 * arg3 - arg2) + 192
                t = _1735 + (32 * _1799) + (32 * _3335) + 256
                while idx < _3655:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_1735 + 96] = (32 * _1799) + (32 * _3335) + (32 * _3655) + 256
                _3911 = mem[(98 * arg3) + (-98 * arg2) + 192]
                mem[_1735 + (32 * _1799) + (32 * _3335) + (32 * _3655) + 256] = mem[(98 * arg3) + (-98 * arg2) + 192]
                mem[_1735 + (32 * _1799) + (32 * _3335) + (32 * _3655) + 288 len 32 * _3911] = mem[(98 * arg3) + (-98 * arg2) + 224 len 32 * _3911]
                mem[_1735 + 128] = (32 * _1799) + (32 * _3335) + (32 * _3655) + (32 * _3911) + 288
                _4103 = mem[(98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 224]
                mem[_1735 + (32 * _1799) + (32 * _3335) + (32 * _3655) + (32 * _3911) + 288] = mem[(98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 224]
                mem[_1735 + (32 * _1799) + (32 * _3335) + (32 * _3655) + (32 * _3911) + 320 len 32 * _4103] = mem[(98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 256 len 32 * _4103]
                return memory
                  from mem[64]
                   len _1735 + (32 * _1799) + (32 * _3335) + (32 * _3655) + (32 * _3911) + (32 * _4103) + -mem[64] + 320
            mem[(98 * arg3) + (-98 * arg2) + 224 len 32 * arg3 - arg2] = call.data[calldata.size len 32 * arg3 - arg2]
            if arg3 - arg2 > test266151307():
                revert with 0, 65
            mem[(98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 224] = arg3 - arg2
            mem[64] = (98 * arg3) + (-98 * arg2) + (64 * arg3 - arg2) + 256
            if not arg3 - arg2:
                idx = 0
                s = arg2
                while idx < arg3 - arg2:
                    mem[mem[64] + 4] = s
                    require ext_code.size(arg1)
                    staticcall arg1.allPairs(uint256 rg1) with:
                            gas gas_remaining wei
                           args s
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1768 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1832 = mem[_1768]
                    require mem[_1768] == mem[_1768 + 12 len 20]
                    if idx >= mem[96]:
                        revert with 0, 50
                    mem[(32 * idx) + 128] = mem[_1768 + 12 len 20]
                    require ext_code.size(address(_1832))
                    staticcall address(_1832).token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2063 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2063] == mem[_2063 + 12 len 20]
                    if idx >= mem[(32 * arg3 - arg2) + 128]:
                        revert with 0, 50
                    mem[(32 * idx) + (32 * arg3 - arg2) + 160] = mem[_2063 + 12 len 20]
                    require ext_code.size(address(_1832))
                    staticcall address(_1832).token1() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2376 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2376] == mem[_2376 + 12 len 20]
                    if idx >= mem[(64 * arg3 - arg2) + 160]:
                        revert with 0, 50
                    mem[(32 * idx) + (64 * arg3 - arg2) + 192] = mem[_2376 + 12 len 20]
                    if idx >= mem[(32 * arg3 - arg2) + 128]:
                        revert with 0, 50
                    _2574 = mem[(32 * idx) + (32 * arg3 - arg2) + 160]
                    if idx >= mem[(64 * arg3 - arg2) + 160]:
                        revert with 0, 50
                    _2632 = mem[(32 * idx) + (64 * arg3 - arg2) + 192]
                    require ext_code.size(address(_1832))
                    staticcall address(_1832).getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if mem[(32 * idx) + (32 * arg3 - arg2) + 172 len 20] < mem[(32 * idx) + (64 * arg3 - arg2) + 204 len 20]:
                        _2798 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        _2862 = mem[_2798]
                        require mem[_2798] == mem[_2798 + 18 len 14]
                        _2926 = mem[_2798 + 32]
                        require mem[_2798 + 32] == mem[_2798 + 50 len 14]
                        require mem[_2798 + 64] == mem[_2798 + 92 len 4]
                        if idx >= mem[(98 * arg3) + (-98 * arg2) + 192]:
                            revert with 0, 50
                        if address(_2574) == address(_2574):
                            mem[(32 * idx) + (98 * arg3) + (-98 * arg2) + 224] = mem[_2798 + 18 len 14]
                            if idx >= mem[(98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 224]:
                                revert with 0, 50
                            mem[(32 * idx) + (98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 256] = Mask(112, 0, _2926)
                        else:
                            mem[(32 * idx) + (98 * arg3) + (-98 * arg2) + 224] = mem[_2798 + 50 len 14]
                            if idx >= mem[(98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 224]:
                                revert with 0, 50
                            mem[(32 * idx) + (98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 256] = Mask(112, 0, _2862)
                    else:
                        _2799 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        _2863 = mem[_2799]
                        require mem[_2799] == mem[_2799 + 18 len 14]
                        _2927 = mem[_2799 + 32]
                        require mem[_2799 + 32] == mem[_2799 + 50 len 14]
                        require mem[_2799 + 64] == mem[_2799 + 92 len 4]
                        if idx >= mem[(98 * arg3) + (-98 * arg2) + 192]:
                            revert with 0, 50
                        if address(_2574) == address(_2632):
                            mem[(32 * idx) + (98 * arg3) + (-98 * arg2) + 224] = mem[_2799 + 18 len 14]
                            if idx >= mem[(98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 224]:
                                revert with 0, 50
                            mem[(32 * idx) + (98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 256] = Mask(112, 0, _2927)
                        else:
                            mem[(32 * idx) + (98 * arg3) + (-98 * arg2) + 224] = mem[_2799 + 50 len 14]
                            if idx >= mem[(98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 224]:
                                revert with 0, 50
                            mem[(32 * idx) + (98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 256] = Mask(112, 0, _2863)
                    if 1 > !s:
                        revert with 0, 17
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + 1
                    continue 
                _1736 = mem[64]
                mem[mem[64]] = 160
                _1800 = mem[96]
                mem[mem[64] + 160] = mem[96]
                idx = 0
                s = 128
                t = mem[64] + 192
                while idx < _1800:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_1736 + 32] = (32 * _1800) + 192
                _3336 = mem[(32 * arg3 - arg2) + 128]
                mem[_1736 + (32 * _1800) + 192] = mem[(32 * arg3 - arg2) + 128]
                idx = 0
                s = (32 * arg3 - arg2) + 160
                t = _1736 + (32 * _1800) + 224
                while idx < _3336:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_1736 + 64] = (32 * _1800) + (32 * _3336) + 224
                _3656 = mem[(64 * arg3 - arg2) + 160]
                mem[_1736 + (32 * _1800) + (32 * _3336) + 224] = mem[(64 * arg3 - arg2) + 160]
                idx = 0
                s = (64 * arg3 - arg2) + 192
                t = _1736 + (32 * _1800) + (32 * _3336) + 256
                while idx < _3656:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_1736 + 96] = (32 * _1800) + (32 * _3336) + (32 * _3656) + 256
                _3912 = mem[(98 * arg3) + (-98 * arg2) + 192]
                mem[_1736 + (32 * _1800) + (32 * _3336) + (32 * _3656) + 256] = mem[(98 * arg3) + (-98 * arg2) + 192]
                mem[_1736 + (32 * _1800) + (32 * _3336) + (32 * _3656) + 288 len 32 * _3912] = mem[(98 * arg3) + (-98 * arg2) + 224 len 32 * _3912]
                mem[_1736 + 128] = (32 * _1800) + (32 * _3336) + (32 * _3656) + (32 * _3912) + 288
                _4104 = mem[(98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 224]
                mem[_1736 + (32 * _1800) + (32 * _3336) + (32 * _3656) + (32 * _3912) + 288] = mem[(98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 224]
                mem[_1736 + (32 * _1800) + (32 * _3336) + (32 * _3656) + (32 * _3912) + 320 len 32 * _4104] = mem[(98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 256 len 32 * _4104]
                return memory
                  from mem[64]
                   len _1736 + (32 * _1800) + (32 * _3336) + (32 * _3656) + (32 * _3912) + (32 * _4104) + -mem[64] + 320
            mem[(98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 256 len 32 * arg3 - arg2] = call.data[calldata.size len 32 * arg3 - arg2]
            idx = 0
            s = arg2
            while idx < arg3 - arg2:
                mem[mem[64] + 4] = s
                require ext_code.size(arg1)
                staticcall arg1.allPairs(uint256 rg1) with:
                        gas gas_remaining wei
                       args s
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1769 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1833 = mem[_1769]
                require mem[_1769] == mem[_1769 + 12 len 20]
                if idx >= mem[96]:
                    revert with 0, 50
                mem[(32 * idx) + 128] = mem[_1769 + 12 len 20]
                require ext_code.size(address(_1833))
                staticcall address(_1833).token0() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2065 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_2065] == mem[_2065 + 12 len 20]
                if idx >= mem[(32 * arg3 - arg2) + 128]:
                    revert with 0, 50
                mem[(32 * idx) + (32 * arg3 - arg2) + 160] = mem[_2065 + 12 len 20]
                require ext_code.size(address(_1833))
                staticcall address(_1833).token1() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2377 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_2377] == mem[_2377 + 12 len 20]
                if idx >= mem[(64 * arg3 - arg2) + 160]:
                    revert with 0, 50
                mem[(32 * idx) + (64 * arg3 - arg2) + 192] = mem[_2377 + 12 len 20]
                if idx >= mem[(32 * arg3 - arg2) + 128]:
                    revert with 0, 50
                _2576 = mem[(32 * idx) + (32 * arg3 - arg2) + 160]
                if idx >= mem[(64 * arg3 - arg2) + 160]:
                    revert with 0, 50
                _2633 = mem[(32 * idx) + (64 * arg3 - arg2) + 192]
                require ext_code.size(address(_1833))
                staticcall address(_1833).getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if mem[(32 * idx) + (32 * arg3 - arg2) + 172 len 20] < mem[(32 * idx) + (64 * arg3 - arg2) + 204 len 20]:
                    _2800 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _2864 = mem[_2800]
                    require mem[_2800] == mem[_2800 + 18 len 14]
                    _2928 = mem[_2800 + 32]
                    require mem[_2800 + 32] == mem[_2800 + 50 len 14]
                    require mem[_2800 + 64] == mem[_2800 + 92 len 4]
                    if idx >= mem[(98 * arg3) + (-98 * arg2) + 192]:
                        revert with 0, 50
                    if address(_2576) == address(_2576):
                        mem[(32 * idx) + (98 * arg3) + (-98 * arg2) + 224] = mem[_2800 + 18 len 14]
                        if idx >= mem[(98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 224]:
                            revert with 0, 50
                        mem[(32 * idx) + (98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 256] = Mask(112, 0, _2928)
                    else:
                        mem[(32 * idx) + (98 * arg3) + (-98 * arg2) + 224] = mem[_2800 + 50 len 14]
                        if idx >= mem[(98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 224]:
                            revert with 0, 50
                        mem[(32 * idx) + (98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 256] = Mask(112, 0, _2864)
                else:
                    _2801 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _2865 = mem[_2801]
                    require mem[_2801] == mem[_2801 + 18 len 14]
                    _2929 = mem[_2801 + 32]
                    require mem[_2801 + 32] == mem[_2801 + 50 len 14]
                    require mem[_2801 + 64] == mem[_2801 + 92 len 4]
                    if idx >= mem[(98 * arg3) + (-98 * arg2) + 192]:
                        revert with 0, 50
                    if address(_2576) == address(_2633):
                        mem[(32 * idx) + (98 * arg3) + (-98 * arg2) + 224] = mem[_2801 + 18 len 14]
                        if idx >= mem[(98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 224]:
                            revert with 0, 50
                        mem[(32 * idx) + (98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 256] = Mask(112, 0, _2929)
                    else:
                        mem[(32 * idx) + (98 * arg3) + (-98 * arg2) + 224] = mem[_2801 + 50 len 14]
                        if idx >= mem[(98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 224]:
                            revert with 0, 50
                        mem[(32 * idx) + (98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 256] = Mask(112, 0, _2865)
                if 1 > !s:
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s + 1
                continue 
            _1737 = mem[64]
            mem[mem[64]] = 160
            _1801 = mem[96]
            mem[mem[64] + 160] = mem[96]
            idx = 0
            s = 128
            t = mem[64] + 192
            while idx < mem[96]:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 32] = (32 * mem[96]) + 192
            _3337 = mem[(32 * arg3 - arg2) + 128]
            mem[mem[64] + (32 * mem[96]) + 192] = mem[(32 * arg3 - arg2) + 128]
            idx = 0
            s = (32 * arg3 - arg2) + 160
            t = mem[64] + (32 * mem[96]) + 224
            while idx < _3337:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 64] = (32 * mem[96]) + (32 * _3337) + 224
            _3657 = mem[(64 * arg3 - arg2) + 160]
            mem[mem[64] + (32 * mem[96]) + (32 * _3337) + 224] = mem[(64 * arg3 - arg2) + 160]
            idx = 0
            s = (64 * arg3 - arg2) + 192
            t = mem[64] + (32 * mem[96]) + (32 * _3337) + 256
            while idx < _3657:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_1737 + 96] = (32 * mem[96]) + (32 * _3337) + (32 * _3657) + 256
            _3913 = mem[(98 * arg3) + (-98 * arg2) + 192]
            mem[_1737 + (32 * _1801) + (32 * _3337) + (32 * _3657) + 256] = mem[(98 * arg3) + (-98 * arg2) + 192]
            mem[_1737 + (32 * _1801) + (32 * _3337) + (32 * _3657) + 288 len 32 * _3913] = mem[(98 * arg3) + (-98 * arg2) + 224 len 32 * _3913]
            mem[_1737 + 128] = (32 * _1801) + (32 * _3337) + (32 * _3657) + (32 * _3913) + 288
            _4105 = mem[(98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 224]
            mem[_1737 + (32 * _1801) + (32 * _3337) + (32 * _3657) + (32 * _3913) + 288] = mem[(98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 224]
            mem[_1737 + (32 * _1801) + (32 * _3337) + (32 * _3657) + (32 * _3913) + 320 len 32 * _4105] = mem[(98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 256 len 32 * _4105]
            return memory
              from mem[64]
               len _1737 + (32 * _1801) + (32 * _3337) + (32 * _3657) + (32 * _3913) + (32 * _4105) + -mem[64] + 320
        mem[(32 * arg3 - arg2) + 160 len 32 * arg3 - arg2] = call.data[calldata.size len 32 * arg3 - arg2]
        if arg3 - arg2 > test266151307():
            revert with 0, 65
        mem[(64 * arg3 - arg2) + 160] = arg3 - arg2
        if not arg3 - arg2:
            if arg3 - arg2 > test266151307():
                revert with 0, 65
            mem[(98 * arg3) + (-98 * arg2) + 192] = arg3 - arg2
            if not arg3 - arg2:
                if arg3 - arg2 > test266151307():
                    revert with 0, 65
                mem[(98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 224] = arg3 - arg2
                mem[64] = (98 * arg3) + (-98 * arg2) + (64 * arg3 - arg2) + 256
                if not arg3 - arg2:
                    idx = 0
                    s = arg2
                    while idx < arg3 - arg2:
                        mem[mem[64] + 4] = s
                        require ext_code.size(arg1)
                        staticcall arg1.allPairs(uint256 rg1) with:
                                gas gas_remaining wei
                               args s
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1770 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1834 = mem[_1770]
                        require mem[_1770] == mem[_1770 + 12 len 20]
                        if idx >= mem[96]:
                            revert with 0, 50
                        mem[(32 * idx) + 128] = mem[_1770 + 12 len 20]
                        require ext_code.size(address(_1834))
                        staticcall address(_1834).token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2067 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2067] == mem[_2067 + 12 len 20]
                        if idx >= mem[(32 * arg3 - arg2) + 128]:
                            revert with 0, 50
                        mem[(32 * idx) + (32 * arg3 - arg2) + 160] = mem[_2067 + 12 len 20]
                        require ext_code.size(address(_1834))
                        staticcall address(_1834).token1() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2378 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2378] == mem[_2378 + 12 len 20]
                        if idx >= mem[(64 * arg3 - arg2) + 160]:
                            revert with 0, 50
                        mem[(32 * idx) + (64 * arg3 - arg2) + 192] = mem[_2378 + 12 len 20]
                        if idx >= mem[(32 * arg3 - arg2) + 128]:
                            revert with 0, 50
                        _2578 = mem[(32 * idx) + (32 * arg3 - arg2) + 160]
                        if idx >= mem[(64 * arg3 - arg2) + 160]:
                            revert with 0, 50
                        _2634 = mem[(32 * idx) + (64 * arg3 - arg2) + 192]
                        require ext_code.size(address(_1834))
                        staticcall address(_1834).getReserves() with:
                                gas gas_remaining wei
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if mem[(32 * idx) + (32 * arg3 - arg2) + 172 len 20] < mem[(32 * idx) + (64 * arg3 - arg2) + 204 len 20]:
                            _2802 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 96
                            _2866 = mem[_2802]
                            require mem[_2802] == mem[_2802 + 18 len 14]
                            _2930 = mem[_2802 + 32]
                            require mem[_2802 + 32] == mem[_2802 + 50 len 14]
                            require mem[_2802 + 64] == mem[_2802 + 92 len 4]
                            if idx >= mem[(98 * arg3) + (-98 * arg2) + 192]:
                                revert with 0, 50
                            if address(_2578) == address(_2578):
                                mem[(32 * idx) + (98 * arg3) + (-98 * arg2) + 224] = mem[_2802 + 18 len 14]
                                if idx >= mem[(98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 224]:
                                    revert with 0, 50
                                mem[(32 * idx) + (98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 256] = Mask(112, 0, _2930)
                            else:
                                mem[(32 * idx) + (98 * arg3) + (-98 * arg2) + 224] = mem[_2802 + 50 len 14]
                                if idx >= mem[(98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 224]:
                                    revert with 0, 50
                                mem[(32 * idx) + (98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 256] = Mask(112, 0, _2866)
                        else:
                            _2803 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 96
                            _2867 = mem[_2803]
                            require mem[_2803] == mem[_2803 + 18 len 14]
                            _2931 = mem[_2803 + 32]
                            require mem[_2803 + 32] == mem[_2803 + 50 len 14]
                            require mem[_2803 + 64] == mem[_2803 + 92 len 4]
                            if idx >= mem[(98 * arg3) + (-98 * arg2) + 192]:
                                revert with 0, 50
                            if address(_2578) == address(_2634):
                                mem[(32 * idx) + (98 * arg3) + (-98 * arg2) + 224] = mem[_2803 + 18 len 14]
                                if idx >= mem[(98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 224]:
                                    revert with 0, 50
                                mem[(32 * idx) + (98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 256] = Mask(112, 0, _2931)
                            else:
                                mem[(32 * idx) + (98 * arg3) + (-98 * arg2) + 224] = mem[_2803 + 50 len 14]
                                if idx >= mem[(98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 224]:
                                    revert with 0, 50
                                mem[(32 * idx) + (98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 256] = Mask(112, 0, _2867)
                        if 1 > !s:
                            revert with 0, 17
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s + 1
                        continue 
                    _1738 = mem[64]
                    mem[mem[64]] = 160
                    _1802 = mem[96]
                    mem[mem[64] + 160] = mem[96]
                    idx = 0
                    s = 128
                    t = mem[64] + 192
                    while idx < mem[96]:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[mem[64] + 32] = (32 * mem[96]) + 192
                    _3338 = mem[(32 * arg3 - arg2) + 128]
                    mem[mem[64] + (32 * mem[96]) + 192] = mem[(32 * arg3 - arg2) + 128]
                    idx = 0
                    s = (32 * arg3 - arg2) + 160
                    t = mem[64] + (32 * mem[96]) + 224
                    while idx < _3338:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[mem[64] + 64] = (32 * mem[96]) + (32 * _3338) + 224
                    _3658 = mem[(64 * arg3 - arg2) + 160]
                    mem[mem[64] + (32 * mem[96]) + (32 * _3338) + 224] = mem[(64 * arg3 - arg2) + 160]
                    idx = 0
                    s = (64 * arg3 - arg2) + 192
                    t = mem[64] + (32 * mem[96]) + (32 * _3338) + 256
                    while idx < _3658:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_1738 + 96] = (32 * mem[96]) + (32 * _3338) + (32 * _3658) + 256
                    _3914 = mem[(98 * arg3) + (-98 * arg2) + 192]
                    mem[_1738 + (32 * _1802) + (32 * _3338) + (32 * _3658) + 256] = mem[(98 * arg3) + (-98 * arg2) + 192]
                    mem[_1738 + (32 * _1802) + (32 * _3338) + (32 * _3658) + 288 len 32 * _3914] = mem[(98 * arg3) + (-98 * arg2) + 224 len 32 * _3914]
                    mem[_1738 + 128] = (32 * _1802) + (32 * _3338) + (32 * _3658) + (32 * _3914) + 288
                    _4106 = mem[(98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 224]
                    mem[_1738 + (32 * _1802) + (32 * _3338) + (32 * _3658) + (32 * _3914) + 288] = mem[(98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 224]
                    mem[_1738 + (32 * _1802) + (32 * _3338) + (32 * _3658) + (32 * _3914) + 320 len 32 * _4106] = mem[(98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 256 len 32 * _4106]
                    return memory
                      from mem[64]
                       len _1738 + (32 * _1802) + (32 * _3338) + (32 * _3658) + (32 * _3914) + (32 * _4106) + -mem[64] + 320
                mem[(98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 256 len 32 * arg3 - arg2] = call.data[calldata.size len 32 * arg3 - arg2]
                idx = 0
                s = arg2
                while idx < arg3 - arg2:
                    mem[mem[64] + 4] = s
                    require ext_code.size(arg1)
                    staticcall arg1.allPairs(uint256 rg1) with:
                            gas gas_remaining wei
                           args s
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1771 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1835 = mem[_1771]
                    require mem[_1771] == mem[_1771 + 12 len 20]
                    if idx >= mem[96]:
                        revert with 0, 50
                    mem[(32 * idx) + 128] = mem[_1771 + 12 len 20]
                    require ext_code.size(address(_1835))
                    staticcall address(_1835).token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2069 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2069] == mem[_2069 + 12 len 20]
                    if idx >= mem[(32 * arg3 - arg2) + 128]:
                        revert with 0, 50
                    mem[(32 * idx) + (32 * arg3 - arg2) + 160] = mem[_2069 + 12 len 20]
                    require ext_code.size(address(_1835))
                    staticcall address(_1835).token1() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2379 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2379] == mem[_2379 + 12 len 20]
                    if idx >= mem[(64 * arg3 - arg2) + 160]:
                        revert with 0, 50
                    mem[(32 * idx) + (64 * arg3 - arg2) + 192] = mem[_2379 + 12 len 20]
                    if idx >= mem[(32 * arg3 - arg2) + 128]:
                        revert with 0, 50
                    _2580 = mem[(32 * idx) + (32 * arg3 - arg2) + 160]
                    if idx >= mem[(64 * arg3 - arg2) + 160]:
                        revert with 0, 50
                    _2635 = mem[(32 * idx) + (64 * arg3 - arg2) + 192]
                    require ext_code.size(address(_1835))
                    staticcall address(_1835).getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if mem[(32 * idx) + (32 * arg3 - arg2) + 172 len 20] < mem[(32 * idx) + (64 * arg3 - arg2) + 204 len 20]:
                        _2804 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        _2868 = mem[_2804]
                        require mem[_2804] == mem[_2804 + 18 len 14]
                        _2932 = mem[_2804 + 32]
                        require mem[_2804 + 32] == mem[_2804 + 50 len 14]
                        require mem[_2804 + 64] == mem[_2804 + 92 len 4]
                        if idx >= mem[(98 * arg3) + (-98 * arg2) + 192]:
                            revert with 0, 50
                        if address(_2580) == address(_2580):
                            mem[(32 * idx) + (98 * arg3) + (-98 * arg2) + 224] = mem[_2804 + 18 len 14]
                            if idx >= mem[(98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 224]:
                                revert with 0, 50
                            mem[(32 * idx) + (98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 256] = Mask(112, 0, _2932)
                        else:
                            mem[(32 * idx) + (98 * arg3) + (-98 * arg2) + 224] = mem[_2804 + 50 len 14]
                            if idx >= mem[(98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 224]:
                                revert with 0, 50
                            mem[(32 * idx) + (98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 256] = Mask(112, 0, _2868)
                    else:
                        _2805 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        _2869 = mem[_2805]
                        require mem[_2805] == mem[_2805 + 18 len 14]
                        _2933 = mem[_2805 + 32]
                        require mem[_2805 + 32] == mem[_2805 + 50 len 14]
                        require mem[_2805 + 64] == mem[_2805 + 92 len 4]
                        if idx >= mem[(98 * arg3) + (-98 * arg2) + 192]:
                            revert with 0, 50
                        if address(_2580) == address(_2635):
                            mem[(32 * idx) + (98 * arg3) + (-98 * arg2) + 224] = mem[_2805 + 18 len 14]
                            if idx >= mem[(98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 224]:
                                revert with 0, 50
                            mem[(32 * idx) + (98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 256] = Mask(112, 0, _2933)
                        else:
                            mem[(32 * idx) + (98 * arg3) + (-98 * arg2) + 224] = mem[_2805 + 50 len 14]
                            if idx >= mem[(98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 224]:
                                revert with 0, 50
                            mem[(32 * idx) + (98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 256] = Mask(112, 0, _2869)
                    if 1 > !s:
                        revert with 0, 17
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + 1
                    continue 
                _1739 = mem[64]
                mem[mem[64]] = 160
                _1803 = mem[96]
                mem[mem[64] + 160] = mem[96]
                idx = 0
                s = 128
                t = mem[64] + 192
                while idx < _1803:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_1739 + 32] = (32 * _1803) + 192
                _3339 = mem[(32 * arg3 - arg2) + 128]
                mem[_1739 + (32 * _1803) + 192] = mem[(32 * arg3 - arg2) + 128]
                idx = 0
                s = (32 * arg3 - arg2) + 160
                t = _1739 + (32 * _1803) + 224
                while idx < _3339:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_1739 + 64] = (32 * _1803) + (32 * _3339) + 224
                _3659 = mem[(64 * arg3 - arg2) + 160]
                mem[_1739 + (32 * _1803) + (32 * _3339) + 224] = mem[(64 * arg3 - arg2) + 160]
                idx = 0
                s = (64 * arg3 - arg2) + 192
                t = _1739 + (32 * _1803) + (32 * _3339) + 256
                while idx < _3659:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_1739 + 96] = (32 * _1803) + (32 * _3339) + (32 * _3659) + 256
                _3915 = mem[(98 * arg3) + (-98 * arg2) + 192]
                mem[_1739 + (32 * _1803) + (32 * _3339) + (32 * _3659) + 256] = mem[(98 * arg3) + (-98 * arg2) + 192]
                mem[_1739 + (32 * _1803) + (32 * _3339) + (32 * _3659) + 288 len 32 * _3915] = mem[(98 * arg3) + (-98 * arg2) + 224 len 32 * _3915]
                mem[_1739 + 128] = (32 * _1803) + (32 * _3339) + (32 * _3659) + (32 * _3915) + 288
                _4107 = mem[(98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 224]
                mem[_1739 + (32 * _1803) + (32 * _3339) + (32 * _3659) + (32 * _3915) + 288] = mem[(98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 224]
                mem[_1739 + (32 * _1803) + (32 * _3339) + (32 * _3659) + (32 * _3915) + 320 len 32 * _4107] = mem[(98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 256 len 32 * _4107]
                return memory
                  from mem[64]
                   len _1739 + (32 * _1803) + (32 * _3339) + (32 * _3659) + (32 * _3915) + (32 * _4107) + -mem[64] + 320
            mem[(98 * arg3) + (-98 * arg2) + 224 len 32 * arg3 - arg2] = call.data[calldata.size len 32 * arg3 - arg2]
            if arg3 - arg2 > test266151307():
                revert with 0, 65
            mem[(98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 224] = arg3 - arg2
            mem[64] = (98 * arg3) + (-98 * arg2) + (64 * arg3 - arg2) + 256
            if not arg3 - arg2:
                idx = 0
                s = arg2
                while idx < arg3 - arg2:
                    mem[mem[64] + 4] = s
                    require ext_code.size(arg1)
                    staticcall arg1.allPairs(uint256 rg1) with:
                            gas gas_remaining wei
                           args s
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1772 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1836 = mem[_1772]
                    require mem[_1772] == mem[_1772 + 12 len 20]
                    if idx >= mem[96]:
                        revert with 0, 50
                    mem[(32 * idx) + 128] = mem[_1772 + 12 len 20]
                    require ext_code.size(address(_1836))
                    staticcall address(_1836).token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2071 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2071] == mem[_2071 + 12 len 20]
                    if idx >= mem[(32 * arg3 - arg2) + 128]:
                        revert with 0, 50
                    mem[(32 * idx) + (32 * arg3 - arg2) + 160] = mem[_2071 + 12 len 20]
                    require ext_code.size(address(_1836))
                    staticcall address(_1836).token1() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2380 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2380] == mem[_2380 + 12 len 20]
                    if idx >= mem[(64 * arg3 - arg2) + 160]:
                        revert with 0, 50
                    mem[(32 * idx) + (64 * arg3 - arg2) + 192] = mem[_2380 + 12 len 20]
                    if idx >= mem[(32 * arg3 - arg2) + 128]:
                        revert with 0, 50
                    _2582 = mem[(32 * idx) + (32 * arg3 - arg2) + 160]
                    if idx >= mem[(64 * arg3 - arg2) + 160]:
                        revert with 0, 50
                    _2636 = mem[(32 * idx) + (64 * arg3 - arg2) + 192]
                    require ext_code.size(address(_1836))
                    staticcall address(_1836).getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if mem[(32 * idx) + (32 * arg3 - arg2) + 172 len 20] < mem[(32 * idx) + (64 * arg3 - arg2) + 204 len 20]:
                        _2806 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        _2870 = mem[_2806]
                        require mem[_2806] == mem[_2806 + 18 len 14]
                        _2934 = mem[_2806 + 32]
                        require mem[_2806 + 32] == mem[_2806 + 50 len 14]
                        require mem[_2806 + 64] == mem[_2806 + 92 len 4]
                        if idx >= mem[(98 * arg3) + (-98 * arg2) + 192]:
                            revert with 0, 50
                        if address(_2582) == address(_2582):
                            mem[(32 * idx) + (98 * arg3) + (-98 * arg2) + 224] = mem[_2806 + 18 len 14]
                            if idx >= mem[(98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 224]:
                                revert with 0, 50
                            mem[(32 * idx) + (98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 256] = Mask(112, 0, _2934)
                        else:
                            mem[(32 * idx) + (98 * arg3) + (-98 * arg2) + 224] = mem[_2806 + 50 len 14]
                            if idx >= mem[(98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 224]:
                                revert with 0, 50
                            mem[(32 * idx) + (98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 256] = Mask(112, 0, _2870)
                    else:
                        _2807 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        _2871 = mem[_2807]
                        require mem[_2807] == mem[_2807 + 18 len 14]
                        _2935 = mem[_2807 + 32]
                        require mem[_2807 + 32] == mem[_2807 + 50 len 14]
                        require mem[_2807 + 64] == mem[_2807 + 92 len 4]
                        if idx >= mem[(98 * arg3) + (-98 * arg2) + 192]:
                            revert with 0, 50
                        if address(_2582) == address(_2636):
                            mem[(32 * idx) + (98 * arg3) + (-98 * arg2) + 224] = mem[_2807 + 18 len 14]
                            if idx >= mem[(98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 224]:
                                revert with 0, 50
                            mem[(32 * idx) + (98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 256] = Mask(112, 0, _2935)
                        else:
                            mem[(32 * idx) + (98 * arg3) + (-98 * arg2) + 224] = mem[_2807 + 50 len 14]
                            if idx >= mem[(98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 224]:
                                revert with 0, 50
                            mem[(32 * idx) + (98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 256] = Mask(112, 0, _2871)
                    if 1 > !s:
                        revert with 0, 17
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + 1
                    continue 
                _1740 = mem[64]
                mem[mem[64]] = 160
                _1804 = mem[96]
                mem[mem[64] + 160] = mem[96]
                idx = 0
                s = 128
                t = mem[64] + 192
                while idx < mem[96]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[mem[64] + 32] = (32 * mem[96]) + 192
                _3340 = mem[(32 * arg3 - arg2) + 128]
                mem[mem[64] + (32 * mem[96]) + 192] = mem[(32 * arg3 - arg2) + 128]
                idx = 0
                s = (32 * arg3 - arg2) + 160
                t = mem[64] + (32 * mem[96]) + 224
                while idx < _3340:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_1740 + 64] = (32 * mem[96]) + (32 * _3340) + 224
                _3660 = mem[(64 * arg3 - arg2) + 160]
                mem[_1740 + (32 * _1804) + (32 * _3340) + 224] = mem[(64 * arg3 - arg2) + 160]
                idx = 0
                s = (64 * arg3 - arg2) + 192
                t = _1740 + (32 * _1804) + (32 * _3340) + 256
                while idx < _3660:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_1740 + 96] = (32 * _1804) + (32 * _3340) + (32 * _3660) + 256
                _3916 = mem[(98 * arg3) + (-98 * arg2) + 192]
                mem[_1740 + (32 * _1804) + (32 * _3340) + (32 * _3660) + 256] = mem[(98 * arg3) + (-98 * arg2) + 192]
                mem[_1740 + (32 * _1804) + (32 * _3340) + (32 * _3660) + 288 len 32 * _3916] = mem[(98 * arg3) + (-98 * arg2) + 224 len 32 * _3916]
                mem[_1740 + 128] = (32 * _1804) + (32 * _3340) + (32 * _3660) + (32 * _3916) + 288
                _4108 = mem[(98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 224]
                mem[_1740 + (32 * _1804) + (32 * _3340) + (32 * _3660) + (32 * _3916) + 288] = mem[(98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 224]
                mem[_1740 + (32 * _1804) + (32 * _3340) + (32 * _3660) + (32 * _3916) + 320 len 32 * _4108] = mem[(98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 256 len 32 * _4108]
                return memory
                  from mem[64]
                   len _1740 + (32 * _1804) + (32 * _3340) + (32 * _3660) + (32 * _3916) + (32 * _4108) + -mem[64] + 320
            mem[(98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 256 len 32 * arg3 - arg2] = call.data[calldata.size len 32 * arg3 - arg2]
            idx = 0
            s = arg2
            while idx < arg3 - arg2:
                mem[mem[64] + 4] = s
                require ext_code.size(arg1)
                staticcall arg1.allPairs(uint256 rg1) with:
                        gas gas_remaining wei
                       args s
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1773 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1837 = mem[_1773]
                require mem[_1773] == mem[_1773 + 12 len 20]
                if idx >= mem[96]:
                    revert with 0, 50
                mem[(32 * idx) + 128] = mem[_1773 + 12 len 20]
                require ext_code.size(address(_1837))
                staticcall address(_1837).token0() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2073 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_2073] == mem[_2073 + 12 len 20]
                if idx >= mem[(32 * arg3 - arg2) + 128]:
                    revert with 0, 50
                mem[(32 * idx) + (32 * arg3 - arg2) + 160] = mem[_2073 + 12 len 20]
                require ext_code.size(address(_1837))
                staticcall address(_1837).token1() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2381 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_2381] == mem[_2381 + 12 len 20]
                if idx >= mem[(64 * arg3 - arg2) + 160]:
                    revert with 0, 50
                mem[(32 * idx) + (64 * arg3 - arg2) + 192] = mem[_2381 + 12 len 20]
                if idx >= mem[(32 * arg3 - arg2) + 128]:
                    revert with 0, 50
                _2584 = mem[(32 * idx) + (32 * arg3 - arg2) + 160]
                if idx >= mem[(64 * arg3 - arg2) + 160]:
                    revert with 0, 50
                _2637 = mem[(32 * idx) + (64 * arg3 - arg2) + 192]
                require ext_code.size(address(_1837))
                staticcall address(_1837).getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if mem[(32 * idx) + (32 * arg3 - arg2) + 172 len 20] < mem[(32 * idx) + (64 * arg3 - arg2) + 204 len 20]:
                    _2808 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _2872 = mem[_2808]
                    require mem[_2808] == mem[_2808 + 18 len 14]
                    _2936 = mem[_2808 + 32]
                    require mem[_2808 + 32] == mem[_2808 + 50 len 14]
                    require mem[_2808 + 64] == mem[_2808 + 92 len 4]
                    if idx >= mem[(98 * arg3) + (-98 * arg2) + 192]:
                        revert with 0, 50
                    if address(_2584) == address(_2584):
                        mem[(32 * idx) + (98 * arg3) + (-98 * arg2) + 224] = mem[_2808 + 18 len 14]
                        if idx >= mem[(98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 224]:
                            revert with 0, 50
                        mem[(32 * idx) + (98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 256] = Mask(112, 0, _2936)
                    else:
                        mem[(32 * idx) + (98 * arg3) + (-98 * arg2) + 224] = mem[_2808 + 50 len 14]
                        if idx >= mem[(98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 224]:
                            revert with 0, 50
                        mem[(32 * idx) + (98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 256] = Mask(112, 0, _2872)
                else:
                    _2809 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _2873 = mem[_2809]
                    require mem[_2809] == mem[_2809 + 18 len 14]
                    _2937 = mem[_2809 + 32]
                    require mem[_2809 + 32] == mem[_2809 + 50 len 14]
                    require mem[_2809 + 64] == mem[_2809 + 92 len 4]
                    if idx >= mem[(98 * arg3) + (-98 * arg2) + 192]:
                        revert with 0, 50
                    if address(_2584) == address(_2637):
                        mem[(32 * idx) + (98 * arg3) + (-98 * arg2) + 224] = mem[_2809 + 18 len 14]
                        if idx >= mem[(98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 224]:
                            revert with 0, 50
                        mem[(32 * idx) + (98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 256] = Mask(112, 0, _2937)
                    else:
                        mem[(32 * idx) + (98 * arg3) + (-98 * arg2) + 224] = mem[_2809 + 50 len 14]
                        if idx >= mem[(98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 224]:
                            revert with 0, 50
                        mem[(32 * idx) + (98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 256] = Mask(112, 0, _2873)
                if 1 > !s:
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s + 1
                continue 
            _1741 = mem[64]
            mem[mem[64]] = 160
            _1805 = mem[96]
            mem[mem[64] + 160] = mem[96]
            idx = 0
            s = 128
            t = mem[64] + 192
            while idx < _1805:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_1741 + 32] = (32 * _1805) + 192
            _3341 = mem[(32 * arg3 - arg2) + 128]
            mem[_1741 + (32 * _1805) + 192] = mem[(32 * arg3 - arg2) + 128]
            idx = 0
            s = (32 * arg3 - arg2) + 160
            t = _1741 + (32 * _1805) + 224
            while idx < _3341:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_1741 + 64] = (32 * _1805) + (32 * _3341) + 224
            _3661 = mem[(64 * arg3 - arg2) + 160]
            mem[_1741 + (32 * _1805) + (32 * _3341) + 224] = mem[(64 * arg3 - arg2) + 160]
            idx = 0
            s = (64 * arg3 - arg2) + 192
            t = _1741 + (32 * _1805) + (32 * _3341) + 256
            while idx < _3661:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_1741 + 96] = (32 * _1805) + (32 * _3341) + (32 * _3661) + 256
            _3917 = mem[(98 * arg3) + (-98 * arg2) + 192]
            mem[_1741 + (32 * _1805) + (32 * _3341) + (32 * _3661) + 256] = mem[(98 * arg3) + (-98 * arg2) + 192]
            mem[_1741 + (32 * _1805) + (32 * _3341) + (32 * _3661) + 288 len 32 * _3917] = mem[(98 * arg3) + (-98 * arg2) + 224 len 32 * _3917]
            mem[_1741 + 128] = (32 * _1805) + (32 * _3341) + (32 * _3661) + (32 * _3917) + 288
            _4109 = mem[(98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 224]
            mem[_1741 + (32 * _1805) + (32 * _3341) + (32 * _3661) + (32 * _3917) + 288] = mem[(98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 224]
            mem[_1741 + (32 * _1805) + (32 * _3341) + (32 * _3661) + (32 * _3917) + 320 len 32 * _4109] = mem[(98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 256 len 32 * _4109]
            return memory
              from mem[64]
               len _1741 + (32 * _1805) + (32 * _3341) + (32 * _3661) + (32 * _3917) + (32 * _4109) + -mem[64] + 320
        mem[(64 * arg3 - arg2) + 192 len 32 * arg3 - arg2] = call.data[calldata.size len 32 * arg3 - arg2]
        if arg3 - arg2 > test266151307():
            revert with 0, 65
        mem[(98 * arg3) + (-98 * arg2) + 192] = arg3 - arg2
        if not arg3 - arg2:
            if arg3 - arg2 > test266151307():
                revert with 0, 65
            mem[(98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 224] = arg3 - arg2
            mem[64] = (98 * arg3) + (-98 * arg2) + (64 * arg3 - arg2) + 256
            if not arg3 - arg2:
                idx = 0
                s = arg2
                while idx < arg3 - arg2:
                    mem[mem[64] + 4] = s
                    require ext_code.size(arg1)
                    staticcall arg1.allPairs(uint256 rg1) with:
                            gas gas_remaining wei
                           args s
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1774 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1838 = mem[_1774]
                    require mem[_1774] == mem[_1774 + 12 len 20]
                    if idx >= mem[96]:
                        revert with 0, 50
                    mem[(32 * idx) + 128] = mem[_1774 + 12 len 20]
                    require ext_code.size(address(_1838))
                    staticcall address(_1838).token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2075 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2075] == mem[_2075 + 12 len 20]
                    if idx >= mem[(32 * arg3 - arg2) + 128]:
                        revert with 0, 50
                    mem[(32 * idx) + (32 * arg3 - arg2) + 160] = mem[_2075 + 12 len 20]
                    require ext_code.size(address(_1838))
                    staticcall address(_1838).token1() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2382 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2382] == mem[_2382 + 12 len 20]
                    if idx >= mem[(64 * arg3 - arg2) + 160]:
                        revert with 0, 50
                    mem[(32 * idx) + (64 * arg3 - arg2) + 192] = mem[_2382 + 12 len 20]
                    if idx >= mem[(32 * arg3 - arg2) + 128]:
                        revert with 0, 50
                    _2586 = mem[(32 * idx) + (32 * arg3 - arg2) + 160]
                    if idx >= mem[(64 * arg3 - arg2) + 160]:
                        revert with 0, 50
                    _2638 = mem[(32 * idx) + (64 * arg3 - arg2) + 192]
                    require ext_code.size(address(_1838))
                    staticcall address(_1838).getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if mem[(32 * idx) + (32 * arg3 - arg2) + 172 len 20] < mem[(32 * idx) + (64 * arg3 - arg2) + 204 len 20]:
                        _2810 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        _2874 = mem[_2810]
                        require mem[_2810] == mem[_2810 + 18 len 14]
                        _2938 = mem[_2810 + 32]
                        require mem[_2810 + 32] == mem[_2810 + 50 len 14]
                        require mem[_2810 + 64] == mem[_2810 + 92 len 4]
                        if idx >= mem[(98 * arg3) + (-98 * arg2) + 192]:
                            revert with 0, 50
                        if address(_2586) == address(_2586):
                            mem[(32 * idx) + (98 * arg3) + (-98 * arg2) + 224] = mem[_2810 + 18 len 14]
                            if idx >= mem[(98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 224]:
                                revert with 0, 50
                            mem[(32 * idx) + (98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 256] = Mask(112, 0, _2938)
                        else:
                            mem[(32 * idx) + (98 * arg3) + (-98 * arg2) + 224] = mem[_2810 + 50 len 14]
                            if idx >= mem[(98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 224]:
                                revert with 0, 50
                            mem[(32 * idx) + (98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 256] = Mask(112, 0, _2874)
                    else:
                        _2811 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        _2875 = mem[_2811]
                        require mem[_2811] == mem[_2811 + 18 len 14]
                        _2939 = mem[_2811 + 32]
                        require mem[_2811 + 32] == mem[_2811 + 50 len 14]
                        require mem[_2811 + 64] == mem[_2811 + 92 len 4]
                        if idx >= mem[(98 * arg3) + (-98 * arg2) + 192]:
                            revert with 0, 50
                        if address(_2586) == address(_2638):
                            mem[(32 * idx) + (98 * arg3) + (-98 * arg2) + 224] = mem[_2811 + 18 len 14]
                            if idx >= mem[(98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 224]:
                                revert with 0, 50
                            mem[(32 * idx) + (98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 256] = Mask(112, 0, _2939)
                        else:
                            mem[(32 * idx) + (98 * arg3) + (-98 * arg2) + 224] = mem[_2811 + 50 len 14]
                            if idx >= mem[(98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 224]:
                                revert with 0, 50
                            mem[(32 * idx) + (98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 256] = Mask(112, 0, _2875)
                    if 1 > !s:
                        revert with 0, 17
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + 1
                    continue 
                _1742 = mem[64]
                mem[mem[64]] = 160
                _1806 = mem[96]
                mem[mem[64] + 160] = mem[96]
                idx = 0
                s = 128
                t = mem[64] + 192
                while idx < mem[96]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[mem[64] + 32] = (32 * mem[96]) + 192
                _3342 = mem[(32 * arg3 - arg2) + 128]
                mem[mem[64] + (32 * mem[96]) + 192] = mem[(32 * arg3 - arg2) + 128]
                idx = 0
                s = (32 * arg3 - arg2) + 160
                t = mem[64] + (32 * mem[96]) + 224
                while idx < _3342:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_1742 + 64] = (32 * mem[96]) + (32 * _3342) + 224
                _3662 = mem[(64 * arg3 - arg2) + 160]
                mem[_1742 + (32 * _1806) + (32 * _3342) + 224] = mem[(64 * arg3 - arg2) + 160]
                idx = 0
                s = (64 * arg3 - arg2) + 192
                t = _1742 + (32 * _1806) + (32 * _3342) + 256
                while idx < _3662:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_1742 + 96] = (32 * _1806) + (32 * _3342) + (32 * _3662) + 256
                _3918 = mem[(98 * arg3) + (-98 * arg2) + 192]
                mem[_1742 + (32 * _1806) + (32 * _3342) + (32 * _3662) + 256] = mem[(98 * arg3) + (-98 * arg2) + 192]
                mem[_1742 + (32 * _1806) + (32 * _3342) + (32 * _3662) + 288 len 32 * _3918] = mem[(98 * arg3) + (-98 * arg2) + 224 len 32 * _3918]
                mem[_1742 + 128] = (32 * _1806) + (32 * _3342) + (32 * _3662) + (32 * _3918) + 288
                _4110 = mem[(98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 224]
                mem[_1742 + (32 * _1806) + (32 * _3342) + (32 * _3662) + (32 * _3918) + 288] = mem[(98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 224]
                mem[_1742 + (32 * _1806) + (32 * _3342) + (32 * _3662) + (32 * _3918) + 320 len 32 * _4110] = mem[(98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 256 len 32 * _4110]
                return memory
                  from mem[64]
                   len _1742 + (32 * _1806) + (32 * _3342) + (32 * _3662) + (32 * _3918) + (32 * _4110) + -mem[64] + 320
            mem[(98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 256 len 32 * arg3 - arg2] = call.data[calldata.size len 32 * arg3 - arg2]
            idx = 0
            s = arg2
            while idx < arg3 - arg2:
                mem[mem[64] + 4] = s
                require ext_code.size(arg1)
                staticcall arg1.allPairs(uint256 rg1) with:
                        gas gas_remaining wei
                       args s
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1775 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1839 = mem[_1775]
                require mem[_1775] == mem[_1775 + 12 len 20]
                if idx >= mem[96]:
                    revert with 0, 50
                mem[(32 * idx) + 128] = mem[_1775 + 12 len 20]
                require ext_code.size(address(_1839))
                staticcall address(_1839).token0() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2077 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_2077] == mem[_2077 + 12 len 20]
                if idx >= mem[(32 * arg3 - arg2) + 128]:
                    revert with 0, 50
                mem[(32 * idx) + (32 * arg3 - arg2) + 160] = mem[_2077 + 12 len 20]
                require ext_code.size(address(_1839))
                staticcall address(_1839).token1() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2383 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_2383] == mem[_2383 + 12 len 20]
                if idx >= mem[(64 * arg3 - arg2) + 160]:
                    revert with 0, 50
                mem[(32 * idx) + (64 * arg3 - arg2) + 192] = mem[_2383 + 12 len 20]
                if idx >= mem[(32 * arg3 - arg2) + 128]:
                    revert with 0, 50
                _2588 = mem[(32 * idx) + (32 * arg3 - arg2) + 160]
                if idx >= mem[(64 * arg3 - arg2) + 160]:
                    revert with 0, 50
                _2639 = mem[(32 * idx) + (64 * arg3 - arg2) + 192]
                require ext_code.size(address(_1839))
                staticcall address(_1839).getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if mem[(32 * idx) + (32 * arg3 - arg2) + 172 len 20] < mem[(32 * idx) + (64 * arg3 - arg2) + 204 len 20]:
                    _2812 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _2876 = mem[_2812]
                    require mem[_2812] == mem[_2812 + 18 len 14]
                    _2940 = mem[_2812 + 32]
                    require mem[_2812 + 32] == mem[_2812 + 50 len 14]
                    require mem[_2812 + 64] == mem[_2812 + 92 len 4]
                    if idx >= mem[(98 * arg3) + (-98 * arg2) + 192]:
                        revert with 0, 50
                    if address(_2588) == address(_2588):
                        mem[(32 * idx) + (98 * arg3) + (-98 * arg2) + 224] = mem[_2812 + 18 len 14]
                        if idx >= mem[(98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 224]:
                            revert with 0, 50
                        mem[(32 * idx) + (98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 256] = Mask(112, 0, _2940)
                    else:
                        mem[(32 * idx) + (98 * arg3) + (-98 * arg2) + 224] = mem[_2812 + 50 len 14]
                        if idx >= mem[(98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 224]:
                            revert with 0, 50
                        mem[(32 * idx) + (98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 256] = Mask(112, 0, _2876)
                else:
                    _2813 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _2877 = mem[_2813]
                    require mem[_2813] == mem[_2813 + 18 len 14]
                    _2941 = mem[_2813 + 32]
                    require mem[_2813 + 32] == mem[_2813 + 50 len 14]
                    require mem[_2813 + 64] == mem[_2813 + 92 len 4]
                    if idx >= mem[(98 * arg3) + (-98 * arg2) + 192]:
                        revert with 0, 50
                    if address(_2588) == address(_2639):
                        mem[(32 * idx) + (98 * arg3) + (-98 * arg2) + 224] = mem[_2813 + 18 len 14]
                        if idx >= mem[(98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 224]:
                            revert with 0, 50
                        mem[(32 * idx) + (98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 256] = Mask(112, 0, _2941)
                    else:
                        mem[(32 * idx) + (98 * arg3) + (-98 * arg2) + 224] = mem[_2813 + 50 len 14]
                        if idx >= mem[(98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 224]:
                            revert with 0, 50
                        mem[(32 * idx) + (98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 256] = Mask(112, 0, _2877)
                if 1 > !s:
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s + 1
                continue 
            _1743 = mem[64]
            mem[mem[64]] = 160
            _1807 = mem[96]
            mem[mem[64] + 160] = mem[96]
            idx = 0
            s = 128
            t = mem[64] + 192
            while idx < _1807:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_1743 + 32] = (32 * _1807) + 192
            _3343 = mem[(32 * arg3 - arg2) + 128]
            mem[_1743 + (32 * _1807) + 192] = mem[(32 * arg3 - arg2) + 128]
            idx = 0
            s = (32 * arg3 - arg2) + 160
            t = _1743 + (32 * _1807) + 224
            while idx < _3343:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_1743 + 64] = (32 * _1807) + (32 * _3343) + 224
            _3663 = mem[(64 * arg3 - arg2) + 160]
            mem[_1743 + (32 * _1807) + (32 * _3343) + 224] = mem[(64 * arg3 - arg2) + 160]
            idx = 0
            s = (64 * arg3 - arg2) + 192
            t = _1743 + (32 * _1807) + (32 * _3343) + 256
            while idx < _3663:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_1743 + 96] = (32 * _1807) + (32 * _3343) + (32 * _3663) + 256
            _3919 = mem[(98 * arg3) + (-98 * arg2) + 192]
            mem[_1743 + (32 * _1807) + (32 * _3343) + (32 * _3663) + 256] = mem[(98 * arg3) + (-98 * arg2) + 192]
            mem[_1743 + (32 * _1807) + (32 * _3343) + (32 * _3663) + 288 len 32 * _3919] = mem[(98 * arg3) + (-98 * arg2) + 224 len 32 * _3919]
            mem[_1743 + 128] = (32 * _1807) + (32 * _3343) + (32 * _3663) + (32 * _3919) + 288
            _4111 = mem[(98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 224]
            mem[_1743 + (32 * _1807) + (32 * _3343) + (32 * _3663) + (32 * _3919) + 288] = mem[(98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 224]
            mem[_1743 + (32 * _1807) + (32 * _3343) + (32 * _3663) + (32 * _3919) + 320 len 32 * _4111] = mem[(98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 256 len 32 * _4111]
            return memory
              from mem[64]
               len _1743 + (32 * _1807) + (32 * _3343) + (32 * _3663) + (32 * _3919) + (32 * _4111) + -mem[64] + 320
        mem[(98 * arg3) + (-98 * arg2) + 224 len 32 * arg3 - arg2] = call.data[calldata.size len 32 * arg3 - arg2]
        if arg3 - arg2 > test266151307():
            revert with 0, 65
        mem[(98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 224] = arg3 - arg2
        mem[64] = (98 * arg3) + (-98 * arg2) + (64 * arg3 - arg2) + 256
        if not arg3 - arg2:
            idx = 0
            s = arg2
            while idx < arg3 - arg2:
                mem[mem[64] + 4] = s
                require ext_code.size(arg1)
                staticcall arg1.allPairs(uint256 rg1) with:
                        gas gas_remaining wei
                       args s
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1776 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1840 = mem[_1776]
                require mem[_1776] == mem[_1776 + 12 len 20]
                if idx >= mem[96]:
                    revert with 0, 50
                mem[(32 * idx) + 128] = mem[_1776 + 12 len 20]
                require ext_code.size(address(_1840))
                staticcall address(_1840).token0() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2079 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_2079] == mem[_2079 + 12 len 20]
                if idx >= mem[(32 * arg3 - arg2) + 128]:
                    revert with 0, 50
                mem[(32 * idx) + (32 * arg3 - arg2) + 160] = mem[_2079 + 12 len 20]
                require ext_code.size(address(_1840))
                staticcall address(_1840).token1() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2384 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_2384] == mem[_2384 + 12 len 20]
                if idx >= mem[(64 * arg3 - arg2) + 160]:
                    revert with 0, 50
                mem[(32 * idx) + (64 * arg3 - arg2) + 192] = mem[_2384 + 12 len 20]
                if idx >= mem[(32 * arg3 - arg2) + 128]:
                    revert with 0, 50
                _2590 = mem[(32 * idx) + (32 * arg3 - arg2) + 160]
                if idx >= mem[(64 * arg3 - arg2) + 160]:
                    revert with 0, 50
                _2640 = mem[(32 * idx) + (64 * arg3 - arg2) + 192]
                require ext_code.size(address(_1840))
                staticcall address(_1840).getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if mem[(32 * idx) + (32 * arg3 - arg2) + 172 len 20] < mem[(32 * idx) + (64 * arg3 - arg2) + 204 len 20]:
                    _2814 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _2878 = mem[_2814]
                    require mem[_2814] == mem[_2814 + 18 len 14]
                    _2942 = mem[_2814 + 32]
                    require mem[_2814 + 32] == mem[_2814 + 50 len 14]
                    require mem[_2814 + 64] == mem[_2814 + 92 len 4]
                    if idx >= mem[(98 * arg3) + (-98 * arg2) + 192]:
                        revert with 0, 50
                    if address(_2590) == address(_2590):
                        mem[(32 * idx) + (98 * arg3) + (-98 * arg2) + 224] = mem[_2814 + 18 len 14]
                        if idx >= mem[(98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 224]:
                            revert with 0, 50
                        mem[(32 * idx) + (98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 256] = Mask(112, 0, _2942)
                    else:
                        mem[(32 * idx) + (98 * arg3) + (-98 * arg2) + 224] = mem[_2814 + 50 len 14]
                        if idx >= mem[(98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 224]:
                            revert with 0, 50
                        mem[(32 * idx) + (98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 256] = Mask(112, 0, _2878)
                else:
                    _2815 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _2879 = mem[_2815]
                    require mem[_2815] == mem[_2815 + 18 len 14]
                    _2943 = mem[_2815 + 32]
                    require mem[_2815 + 32] == mem[_2815 + 50 len 14]
                    require mem[_2815 + 64] == mem[_2815 + 92 len 4]
                    if idx >= mem[(98 * arg3) + (-98 * arg2) + 192]:
                        revert with 0, 50
                    if address(_2590) == address(_2640):
                        mem[(32 * idx) + (98 * arg3) + (-98 * arg2) + 224] = mem[_2815 + 18 len 14]
                        if idx >= mem[(98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 224]:
                            revert with 0, 50
                        mem[(32 * idx) + (98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 256] = Mask(112, 0, _2943)
                    else:
                        mem[(32 * idx) + (98 * arg3) + (-98 * arg2) + 224] = mem[_2815 + 50 len 14]
                        if idx >= mem[(98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 224]:
                            revert with 0, 50
                        mem[(32 * idx) + (98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 256] = Mask(112, 0, _2879)
                if 1 > !s:
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s + 1
                continue 
            _1744 = mem[64]
            mem[mem[64]] = 160
            _1808 = mem[96]
            mem[mem[64] + 160] = mem[96]
            idx = 0
            s = 128
            t = mem[64] + 192
            while idx < _1808:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_1744 + 32] = (32 * _1808) + 192
            _3344 = mem[(32 * arg3 - arg2) + 128]
            mem[_1744 + (32 * _1808) + 192] = mem[(32 * arg3 - arg2) + 128]
            idx = 0
            s = (32 * arg3 - arg2) + 160
            t = _1744 + (32 * _1808) + 224
            while idx < _3344:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_1744 + 64] = (32 * _1808) + (32 * _3344) + 224
            _3664 = mem[(64 * arg3 - arg2) + 160]
            mem[_1744 + (32 * _1808) + (32 * _3344) + 224] = mem[(64 * arg3 - arg2) + 160]
            idx = 0
            s = (64 * arg3 - arg2) + 192
            t = _1744 + (32 * _1808) + (32 * _3344) + 256
            while idx < _3664:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_1744 + 96] = (32 * _1808) + (32 * _3344) + (32 * _3664) + 256
            _3920 = mem[(98 * arg3) + (-98 * arg2) + 192]
            mem[_1744 + (32 * _1808) + (32 * _3344) + (32 * _3664) + 256] = mem[(98 * arg3) + (-98 * arg2) + 192]
            mem[_1744 + (32 * _1808) + (32 * _3344) + (32 * _3664) + 288 len 32 * _3920] = mem[(98 * arg3) + (-98 * arg2) + 224 len 32 * _3920]
            mem[_1744 + 128] = (32 * _1808) + (32 * _3344) + (32 * _3664) + (32 * _3920) + 288
            _4112 = mem[(98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 224]
            mem[_1744 + (32 * _1808) + (32 * _3344) + (32 * _3664) + (32 * _3920) + 288] = mem[(98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 224]
            mem[_1744 + (32 * _1808) + (32 * _3344) + (32 * _3664) + (32 * _3920) + 320 len 32 * _4112] = mem[(98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 256 len 32 * _4112]
            return memory
              from mem[64]
               len _1744 + (32 * _1808) + (32 * _3344) + (32 * _3664) + (32 * _3920) + (32 * _4112) + -mem[64] + 320
        mem[(98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 256 len 32 * arg3 - arg2] = call.data[calldata.size len 32 * arg3 - arg2]
        idx = 0
        s = arg2
        while idx < arg3 - arg2:
            mem[mem[64] + 4] = s
            require ext_code.size(arg1)
            staticcall arg1.allPairs(uint256 rg1) with:
                    gas gas_remaining wei
                   args s
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1777 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1841 = mem[_1777]
            require mem[_1777] == mem[_1777 + 12 len 20]
            if idx >= mem[96]:
                revert with 0, 50
            mem[(32 * idx) + 128] = mem[_1777 + 12 len 20]
            require ext_code.size(address(_1841))
            staticcall address(_1841).token0() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2081 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_2081] == mem[_2081 + 12 len 20]
            if idx >= mem[(32 * arg3 - arg2) + 128]:
                revert with 0, 50
            mem[(32 * idx) + (32 * arg3 - arg2) + 160] = mem[_2081 + 12 len 20]
            require ext_code.size(address(_1841))
            staticcall address(_1841).token1() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2385 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_2385] == mem[_2385 + 12 len 20]
            if idx >= mem[(64 * arg3 - arg2) + 160]:
                revert with 0, 50
            mem[(32 * idx) + (64 * arg3 - arg2) + 192] = mem[_2385 + 12 len 20]
            if idx >= mem[(32 * arg3 - arg2) + 128]:
                revert with 0, 50
            _2592 = mem[(32 * idx) + (32 * arg3 - arg2) + 160]
            if idx >= mem[(64 * arg3 - arg2) + 160]:
                revert with 0, 50
            _2641 = mem[(32 * idx) + (64 * arg3 - arg2) + 192]
            require ext_code.size(address(_1841))
            staticcall address(_1841).getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if mem[(32 * idx) + (32 * arg3 - arg2) + 172 len 20] < mem[(32 * idx) + (64 * arg3 - arg2) + 204 len 20]:
                _2816 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _2880 = mem[_2816]
                require mem[_2816] == mem[_2816 + 18 len 14]
                _2944 = mem[_2816 + 32]
                require mem[_2816 + 32] == mem[_2816 + 50 len 14]
                require mem[_2816 + 64] == mem[_2816 + 92 len 4]
                if idx >= mem[(98 * arg3) + (-98 * arg2) + 192]:
                    revert with 0, 50
                if address(_2592) == address(_2592):
                    mem[(32 * idx) + (98 * arg3) + (-98 * arg2) + 224] = mem[_2816 + 18 len 14]
                    if idx >= mem[(98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 224]:
                        revert with 0, 50
                    mem[(32 * idx) + (98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 256] = Mask(112, 0, _2944)
                else:
                    mem[(32 * idx) + (98 * arg3) + (-98 * arg2) + 224] = mem[_2816 + 50 len 14]
                    if idx >= mem[(98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 224]:
                        revert with 0, 50
                    mem[(32 * idx) + (98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 256] = Mask(112, 0, _2880)
            else:
                _2817 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _2881 = mem[_2817]
                require mem[_2817] == mem[_2817 + 18 len 14]
                _2945 = mem[_2817 + 32]
                require mem[_2817 + 32] == mem[_2817 + 50 len 14]
                require mem[_2817 + 64] == mem[_2817 + 92 len 4]
                if idx >= mem[(98 * arg3) + (-98 * arg2) + 192]:
                    revert with 0, 50
                if address(_2592) == address(_2641):
                    mem[(32 * idx) + (98 * arg3) + (-98 * arg2) + 224] = mem[_2817 + 18 len 14]
                    if idx >= mem[(98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 224]:
                        revert with 0, 50
                    mem[(32 * idx) + (98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 256] = Mask(112, 0, _2945)
                else:
                    mem[(32 * idx) + (98 * arg3) + (-98 * arg2) + 224] = mem[_2817 + 50 len 14]
                    if idx >= mem[(98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 224]:
                        revert with 0, 50
                    mem[(32 * idx) + (98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 256] = Mask(112, 0, _2881)
            if 1 > !s:
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + 1
            continue 
        _1745 = mem[64]
        mem[mem[64]] = 160
        _1809 = mem[96]
        mem[mem[64] + 160] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 192
        while idx < _1809:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_1745 + 32] = (32 * _1809) + 192
        _3345 = mem[(32 * arg3 - arg2) + 128]
        mem[_1745 + (32 * _1809) + 192] = mem[(32 * arg3 - arg2) + 128]
        idx = 0
        s = (32 * arg3 - arg2) + 160
        t = _1745 + (32 * _1809) + 224
        while idx < _3345:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_1745 + 64] = (32 * _1809) + (32 * _3345) + 224
        _3665 = mem[(64 * arg3 - arg2) + 160]
        mem[_1745 + (32 * _1809) + (32 * _3345) + 224] = mem[(64 * arg3 - arg2) + 160]
        idx = 0
        s = (64 * arg3 - arg2) + 192
        t = _1745 + (32 * _1809) + (32 * _3345) + 256
        while idx < _3665:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_1745 + 96] = (32 * _1809) + (32 * _3345) + (32 * _3665) + 256
        _3921 = mem[(98 * arg3) + (-98 * arg2) + 192]
        mem[_1745 + (32 * _1809) + (32 * _3345) + (32 * _3665) + 256] = mem[(98 * arg3) + (-98 * arg2) + 192]
        mem[_1745 + (32 * _1809) + (32 * _3345) + (32 * _3665) + 288 len 32 * _3921] = mem[(98 * arg3) + (-98 * arg2) + 224 len 32 * _3921]
        mem[_1745 + 128] = (32 * _1809) + (32 * _3345) + (32 * _3665) + (32 * _3921) + 288
        _4113 = mem[(98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 224]
        mem[_1745 + (32 * _1809) + (32 * _3345) + (32 * _3665) + (32 * _3921) + 288] = mem[(98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 224]
        mem[_1745 + (32 * _1809) + (32 * _3345) + (32 * _3665) + (32 * _3921) + 320 len 32 * _4113] = mem[(98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 256 len 32 * _4113]
        return memory
          from mem[64]
           len _1745 + (32 * _1809) + (32 * _3345) + (32 * _3665) + (32 * _3921) + (32 * _4113) + -mem[64] + 320
    mem[128 len 32 * arg3 - arg2] = call.data[calldata.size len 32 * arg3 - arg2]
    if arg3 - arg2 > test266151307():
        revert with 0, 65
    mem[(32 * arg3 - arg2) + 128] = arg3 - arg2
    if not arg3 - arg2:
        if arg3 - arg2 > test266151307():
            revert with 0, 65
        mem[(64 * arg3 - arg2) + 160] = arg3 - arg2
        if not arg3 - arg2:
            if arg3 - arg2 > test266151307():
                revert with 0, 65
            mem[(98 * arg3) + (-98 * arg2) + 192] = arg3 - arg2
            if not arg3 - arg2:
                if arg3 - arg2 > test266151307():
                    revert with 0, 65
                mem[(98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 224] = arg3 - arg2
                mem[64] = (98 * arg3) + (-98 * arg2) + (64 * arg3 - arg2) + 256
                if not arg3 - arg2:
                    idx = 0
                    s = arg2
                    while idx < arg3 - arg2:
                        mem[mem[64] + 4] = s
                        require ext_code.size(arg1)
                        staticcall arg1.allPairs(uint256 rg1) with:
                                gas gas_remaining wei
                               args s
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1778 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1842 = mem[_1778]
                        require mem[_1778] == mem[_1778 + 12 len 20]
                        if idx >= mem[96]:
                            revert with 0, 50
                        mem[(32 * idx) + 128] = mem[_1778 + 12 len 20]
                        require ext_code.size(address(_1842))
                        staticcall address(_1842).token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2083 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2083] == mem[_2083 + 12 len 20]
                        if idx >= mem[(32 * arg3 - arg2) + 128]:
                            revert with 0, 50
                        mem[(32 * idx) + (32 * arg3 - arg2) + 160] = mem[_2083 + 12 len 20]
                        require ext_code.size(address(_1842))
                        staticcall address(_1842).token1() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2386 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2386] == mem[_2386 + 12 len 20]
                        if idx >= mem[(64 * arg3 - arg2) + 160]:
                            revert with 0, 50
                        mem[(32 * idx) + (64 * arg3 - arg2) + 192] = mem[_2386 + 12 len 20]
                        if idx >= mem[(32 * arg3 - arg2) + 128]:
                            revert with 0, 50
                        _2594 = mem[(32 * idx) + (32 * arg3 - arg2) + 160]
                        if idx >= mem[(64 * arg3 - arg2) + 160]:
                            revert with 0, 50
                        _2642 = mem[(32 * idx) + (64 * arg3 - arg2) + 192]
                        require ext_code.size(address(_1842))
                        staticcall address(_1842).getReserves() with:
                                gas gas_remaining wei
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if mem[(32 * idx) + (32 * arg3 - arg2) + 172 len 20] < mem[(32 * idx) + (64 * arg3 - arg2) + 204 len 20]:
                            _2818 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 96
                            _2882 = mem[_2818]
                            require mem[_2818] == mem[_2818 + 18 len 14]
                            _2946 = mem[_2818 + 32]
                            require mem[_2818 + 32] == mem[_2818 + 50 len 14]
                            require mem[_2818 + 64] == mem[_2818 + 92 len 4]
                            if idx >= mem[(98 * arg3) + (-98 * arg2) + 192]:
                                revert with 0, 50
                            if address(_2594) == address(_2594):
                                mem[(32 * idx) + (98 * arg3) + (-98 * arg2) + 224] = mem[_2818 + 18 len 14]
                                if idx >= mem[(98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 224]:
                                    revert with 0, 50
                                mem[(32 * idx) + (98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 256] = Mask(112, 0, _2946)
                            else:
                                mem[(32 * idx) + (98 * arg3) + (-98 * arg2) + 224] = mem[_2818 + 50 len 14]
                                if idx >= mem[(98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 224]:
                                    revert with 0, 50
                                mem[(32 * idx) + (98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 256] = Mask(112, 0, _2882)
                        else:
                            _2819 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 96
                            _2883 = mem[_2819]
                            require mem[_2819] == mem[_2819 + 18 len 14]
                            _2947 = mem[_2819 + 32]
                            require mem[_2819 + 32] == mem[_2819 + 50 len 14]
                            require mem[_2819 + 64] == mem[_2819 + 92 len 4]
                            if idx >= mem[(98 * arg3) + (-98 * arg2) + 192]:
                                revert with 0, 50
                            if address(_2594) == address(_2642):
                                mem[(32 * idx) + (98 * arg3) + (-98 * arg2) + 224] = mem[_2819 + 18 len 14]
                                if idx >= mem[(98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 224]:
                                    revert with 0, 50
                                mem[(32 * idx) + (98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 256] = Mask(112, 0, _2947)
                            else:
                                mem[(32 * idx) + (98 * arg3) + (-98 * arg2) + 224] = mem[_2819 + 50 len 14]
                                if idx >= mem[(98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 224]:
                                    revert with 0, 50
                                mem[(32 * idx) + (98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 256] = Mask(112, 0, _2883)
                        if 1 > !s:
                            revert with 0, 17
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s + 1
                        continue 
                    _1746 = mem[64]
                    mem[mem[64]] = 160
                    _1810 = mem[96]
                    mem[mem[64] + 160] = mem[96]
                    idx = 0
                    s = 128
                    t = mem[64] + 192
                    while idx < _1810:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_1746 + 32] = (32 * _1810) + 192
                    _3346 = mem[(32 * arg3 - arg2) + 128]
                    mem[_1746 + (32 * _1810) + 192] = mem[(32 * arg3 - arg2) + 128]
                    idx = 0
                    s = (32 * arg3 - arg2) + 160
                    t = _1746 + (32 * _1810) + 224
                    while idx < _3346:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_1746 + 64] = (32 * _1810) + (32 * _3346) + 224
                    _3666 = mem[(64 * arg3 - arg2) + 160]
                    mem[_1746 + (32 * _1810) + (32 * _3346) + 224] = mem[(64 * arg3 - arg2) + 160]
                    idx = 0
                    s = (64 * arg3 - arg2) + 192
                    t = _1746 + (32 * _1810) + (32 * _3346) + 256
                    while idx < _3666:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_1746 + 96] = (32 * _1810) + (32 * _3346) + (32 * _3666) + 256
                    _3922 = mem[(98 * arg3) + (-98 * arg2) + 192]
                    mem[_1746 + (32 * _1810) + (32 * _3346) + (32 * _3666) + 256] = mem[(98 * arg3) + (-98 * arg2) + 192]
                    mem[_1746 + (32 * _1810) + (32 * _3346) + (32 * _3666) + 288 len 32 * _3922] = mem[(98 * arg3) + (-98 * arg2) + 224 len 32 * _3922]
                    mem[_1746 + 128] = (32 * _1810) + (32 * _3346) + (32 * _3666) + (32 * _3922) + 288
                    _4114 = mem[(98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 224]
                    mem[_1746 + (32 * _1810) + (32 * _3346) + (32 * _3666) + (32 * _3922) + 288] = mem[(98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 224]
                    mem[_1746 + (32 * _1810) + (32 * _3346) + (32 * _3666) + (32 * _3922) + 320 len 32 * _4114] = mem[(98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 256 len 32 * _4114]
                    return memory
                      from mem[64]
                       len _1746 + (32 * _1810) + (32 * _3346) + (32 * _3666) + (32 * _3922) + (32 * _4114) + -mem[64] + 320
                mem[(98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 256 len 32 * arg3 - arg2] = call.data[calldata.size len 32 * arg3 - arg2]
                idx = 0
                s = arg2
                while idx < arg3 - arg2:
                    mem[mem[64] + 4] = s
                    require ext_code.size(arg1)
                    staticcall arg1.allPairs(uint256 rg1) with:
                            gas gas_remaining wei
                           args s
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1779 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1843 = mem[_1779]
                    require mem[_1779] == mem[_1779 + 12 len 20]
                    if idx >= mem[96]:
                        revert with 0, 50
                    mem[(32 * idx) + 128] = mem[_1779 + 12 len 20]
                    require ext_code.size(address(_1843))
                    staticcall address(_1843).token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2085 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2085] == mem[_2085 + 12 len 20]
                    if idx >= mem[(32 * arg3 - arg2) + 128]:
                        revert with 0, 50
                    mem[(32 * idx) + (32 * arg3 - arg2) + 160] = mem[_2085 + 12 len 20]
                    require ext_code.size(address(_1843))
                    staticcall address(_1843).token1() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2387 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2387] == mem[_2387 + 12 len 20]
                    if idx >= mem[(64 * arg3 - arg2) + 160]:
                        revert with 0, 50
                    mem[(32 * idx) + (64 * arg3 - arg2) + 192] = mem[_2387 + 12 len 20]
                    if idx >= mem[(32 * arg3 - arg2) + 128]:
                        revert with 0, 50
                    _2596 = mem[(32 * idx) + (32 * arg3 - arg2) + 160]
                    if idx >= mem[(64 * arg3 - arg2) + 160]:
                        revert with 0, 50
                    _2643 = mem[(32 * idx) + (64 * arg3 - arg2) + 192]
                    require ext_code.size(address(_1843))
                    staticcall address(_1843).getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if mem[(32 * idx) + (32 * arg3 - arg2) + 172 len 20] < mem[(32 * idx) + (64 * arg3 - arg2) + 204 len 20]:
                        _2820 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        _2884 = mem[_2820]
                        require mem[_2820] == mem[_2820 + 18 len 14]
                        _2948 = mem[_2820 + 32]
                        require mem[_2820 + 32] == mem[_2820 + 50 len 14]
                        require mem[_2820 + 64] == mem[_2820 + 92 len 4]
                        if idx >= mem[(98 * arg3) + (-98 * arg2) + 192]:
                            revert with 0, 50
                        if address(_2596) == address(_2596):
                            mem[(32 * idx) + (98 * arg3) + (-98 * arg2) + 224] = mem[_2820 + 18 len 14]
                            if idx >= mem[(98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 224]:
                                revert with 0, 50
                            mem[(32 * idx) + (98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 256] = Mask(112, 0, _2948)
                        else:
                            mem[(32 * idx) + (98 * arg3) + (-98 * arg2) + 224] = mem[_2820 + 50 len 14]
                            if idx >= mem[(98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 224]:
                                revert with 0, 50
                            mem[(32 * idx) + (98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 256] = Mask(112, 0, _2884)
                    else:
                        _2821 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        _2885 = mem[_2821]
                        require mem[_2821] == mem[_2821 + 18 len 14]
                        _2949 = mem[_2821 + 32]
                        require mem[_2821 + 32] == mem[_2821 + 50 len 14]
                        require mem[_2821 + 64] == mem[_2821 + 92 len 4]
                        if idx >= mem[(98 * arg3) + (-98 * arg2) + 192]:
                            revert with 0, 50
                        if address(_2596) == address(_2643):
                            mem[(32 * idx) + (98 * arg3) + (-98 * arg2) + 224] = mem[_2821 + 18 len 14]
                            if idx >= mem[(98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 224]:
                                revert with 0, 50
                            mem[(32 * idx) + (98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 256] = Mask(112, 0, _2949)
                        else:
                            mem[(32 * idx) + (98 * arg3) + (-98 * arg2) + 224] = mem[_2821 + 50 len 14]
                            if idx >= mem[(98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 224]:
                                revert with 0, 50
                            mem[(32 * idx) + (98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 256] = Mask(112, 0, _2885)
                    if 1 > !s:
                        revert with 0, 17
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + 1
                    continue 
                _1747 = mem[64]
                mem[mem[64]] = 160
                _1811 = mem[96]
                mem[mem[64] + 160] = mem[96]
                idx = 0
                s = 128
                t = mem[64] + 192
                while idx < _1811:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_1747 + 32] = (32 * _1811) + 192
                _3347 = mem[(32 * arg3 - arg2) + 128]
                mem[_1747 + (32 * _1811) + 192] = mem[(32 * arg3 - arg2) + 128]
                idx = 0
                s = (32 * arg3 - arg2) + 160
                t = _1747 + (32 * _1811) + 224
                while idx < _3347:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_1747 + 64] = (32 * _1811) + (32 * _3347) + 224
                _3667 = mem[(64 * arg3 - arg2) + 160]
                mem[_1747 + (32 * _1811) + (32 * _3347) + 224] = mem[(64 * arg3 - arg2) + 160]
                idx = 0
                s = (64 * arg3 - arg2) + 192
                t = _1747 + (32 * _1811) + (32 * _3347) + 256
                while idx < _3667:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_1747 + 96] = (32 * _1811) + (32 * _3347) + (32 * _3667) + 256
                _3923 = mem[(98 * arg3) + (-98 * arg2) + 192]
                mem[_1747 + (32 * _1811) + (32 * _3347) + (32 * _3667) + 256] = mem[(98 * arg3) + (-98 * arg2) + 192]
                mem[_1747 + (32 * _1811) + (32 * _3347) + (32 * _3667) + 288 len 32 * _3923] = mem[(98 * arg3) + (-98 * arg2) + 224 len 32 * _3923]
                mem[_1747 + 128] = (32 * _1811) + (32 * _3347) + (32 * _3667) + (32 * _3923) + 288
                _4115 = mem[(98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 224]
                mem[_1747 + (32 * _1811) + (32 * _3347) + (32 * _3667) + (32 * _3923) + 288] = mem[(98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 224]
                mem[_1747 + (32 * _1811) + (32 * _3347) + (32 * _3667) + (32 * _3923) + 320 len 32 * _4115] = mem[(98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 256 len 32 * _4115]
                return memory
                  from mem[64]
                   len _1747 + (32 * _1811) + (32 * _3347) + (32 * _3667) + (32 * _3923) + (32 * _4115) + -mem[64] + 320
            mem[(98 * arg3) + (-98 * arg2) + 224 len 32 * arg3 - arg2] = call.data[calldata.size len 32 * arg3 - arg2]
            if arg3 - arg2 > test266151307():
                revert with 0, 65
            mem[(98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 224] = arg3 - arg2
            mem[64] = (98 * arg3) + (-98 * arg2) + (64 * arg3 - arg2) + 256
            if not arg3 - arg2:
                idx = 0
                s = arg2
                while idx < arg3 - arg2:
                    mem[mem[64] + 4] = s
                    require ext_code.size(arg1)
                    staticcall arg1.allPairs(uint256 rg1) with:
                            gas gas_remaining wei
                           args s
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1780 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1844 = mem[_1780]
                    require mem[_1780] == mem[_1780 + 12 len 20]
                    if idx >= mem[96]:
                        revert with 0, 50
                    mem[(32 * idx) + 128] = mem[_1780 + 12 len 20]
                    require ext_code.size(address(_1844))
                    staticcall address(_1844).token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2087 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2087] == mem[_2087 + 12 len 20]
                    if idx >= mem[(32 * arg3 - arg2) + 128]:
                        revert with 0, 50
                    mem[(32 * idx) + (32 * arg3 - arg2) + 160] = mem[_2087 + 12 len 20]
                    require ext_code.size(address(_1844))
                    staticcall address(_1844).token1() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2388 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2388] == mem[_2388 + 12 len 20]
                    if idx >= mem[(64 * arg3 - arg2) + 160]:
                        revert with 0, 50
                    mem[(32 * idx) + (64 * arg3 - arg2) + 192] = mem[_2388 + 12 len 20]
                    if idx >= mem[(32 * arg3 - arg2) + 128]:
                        revert with 0, 50
                    _2598 = mem[(32 * idx) + (32 * arg3 - arg2) + 160]
                    if idx >= mem[(64 * arg3 - arg2) + 160]:
                        revert with 0, 50
                    _2644 = mem[(32 * idx) + (64 * arg3 - arg2) + 192]
                    require ext_code.size(address(_1844))
                    staticcall address(_1844).getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if mem[(32 * idx) + (32 * arg3 - arg2) + 172 len 20] < mem[(32 * idx) + (64 * arg3 - arg2) + 204 len 20]:
                        _2822 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        _2886 = mem[_2822]
                        require mem[_2822] == mem[_2822 + 18 len 14]
                        _2950 = mem[_2822 + 32]
                        require mem[_2822 + 32] == mem[_2822 + 50 len 14]
                        require mem[_2822 + 64] == mem[_2822 + 92 len 4]
                        if idx >= mem[(98 * arg3) + (-98 * arg2) + 192]:
                            revert with 0, 50
                        if address(_2598) == address(_2598):
                            mem[(32 * idx) + (98 * arg3) + (-98 * arg2) + 224] = mem[_2822 + 18 len 14]
                            if idx >= mem[(98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 224]:
                                revert with 0, 50
                            mem[(32 * idx) + (98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 256] = Mask(112, 0, _2950)
                        else:
                            mem[(32 * idx) + (98 * arg3) + (-98 * arg2) + 224] = mem[_2822 + 50 len 14]
                            if idx >= mem[(98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 224]:
                                revert with 0, 50
                            mem[(32 * idx) + (98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 256] = Mask(112, 0, _2886)
                    else:
                        _2823 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        _2887 = mem[_2823]
                        require mem[_2823] == mem[_2823 + 18 len 14]
                        _2951 = mem[_2823 + 32]
                        require mem[_2823 + 32] == mem[_2823 + 50 len 14]
                        require mem[_2823 + 64] == mem[_2823 + 92 len 4]
                        if idx >= mem[(98 * arg3) + (-98 * arg2) + 192]:
                            revert with 0, 50
                        if address(_2598) == address(_2644):
                            mem[(32 * idx) + (98 * arg3) + (-98 * arg2) + 224] = mem[_2823 + 18 len 14]
                            if idx >= mem[(98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 224]:
                                revert with 0, 50
                            mem[(32 * idx) + (98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 256] = Mask(112, 0, _2951)
                        else:
                            mem[(32 * idx) + (98 * arg3) + (-98 * arg2) + 224] = mem[_2823 + 50 len 14]
                            if idx >= mem[(98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 224]:
                                revert with 0, 50
                            mem[(32 * idx) + (98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 256] = Mask(112, 0, _2887)
                    if 1 > !s:
                        revert with 0, 17
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + 1
                    continue 
                _1748 = mem[64]
                mem[mem[64]] = 160
                _1812 = mem[96]
                mem[mem[64] + 160] = mem[96]
                idx = 0
                s = 128
                t = mem[64] + 192
                while idx < _1812:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_1748 + 32] = (32 * _1812) + 192
                _3348 = mem[(32 * arg3 - arg2) + 128]
                mem[_1748 + (32 * _1812) + 192] = mem[(32 * arg3 - arg2) + 128]
                idx = 0
                s = (32 * arg3 - arg2) + 160
                t = _1748 + (32 * _1812) + 224
                while idx < _3348:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_1748 + 64] = (32 * _1812) + (32 * _3348) + 224
                _3668 = mem[(64 * arg3 - arg2) + 160]
                mem[_1748 + (32 * _1812) + (32 * _3348) + 224] = mem[(64 * arg3 - arg2) + 160]
                idx = 0
                s = (64 * arg3 - arg2) + 192
                t = _1748 + (32 * _1812) + (32 * _3348) + 256
                while idx < _3668:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_1748 + 96] = (32 * _1812) + (32 * _3348) + (32 * _3668) + 256
                _3924 = mem[(98 * arg3) + (-98 * arg2) + 192]
                mem[_1748 + (32 * _1812) + (32 * _3348) + (32 * _3668) + 256] = mem[(98 * arg3) + (-98 * arg2) + 192]
                mem[_1748 + (32 * _1812) + (32 * _3348) + (32 * _3668) + 288 len 32 * _3924] = mem[(98 * arg3) + (-98 * arg2) + 224 len 32 * _3924]
                mem[_1748 + 128] = (32 * _1812) + (32 * _3348) + (32 * _3668) + (32 * _3924) + 288
                _4116 = mem[(98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 224]
                mem[_1748 + (32 * _1812) + (32 * _3348) + (32 * _3668) + (32 * _3924) + 288] = mem[(98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 224]
                mem[_1748 + (32 * _1812) + (32 * _3348) + (32 * _3668) + (32 * _3924) + 320 len 32 * _4116] = mem[(98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 256 len 32 * _4116]
                return memory
                  from mem[64]
                   len _1748 + (32 * _1812) + (32 * _3348) + (32 * _3668) + (32 * _3924) + (32 * _4116) + -mem[64] + 320
            mem[(98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 256 len 32 * arg3 - arg2] = call.data[calldata.size len 32 * arg3 - arg2]
            idx = 0
            s = arg2
            while idx < arg3 - arg2:
                mem[mem[64] + 4] = s
                require ext_code.size(arg1)
                staticcall arg1.allPairs(uint256 rg1) with:
                        gas gas_remaining wei
                       args s
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1781 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1845 = mem[_1781]
                require mem[_1781] == mem[_1781 + 12 len 20]
                if idx >= mem[96]:
                    revert with 0, 50
                mem[(32 * idx) + 128] = mem[_1781 + 12 len 20]
                require ext_code.size(address(_1845))
                staticcall address(_1845).token0() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2089 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_2089] == mem[_2089 + 12 len 20]
                if idx >= mem[(32 * arg3 - arg2) + 128]:
                    revert with 0, 50
                mem[(32 * idx) + (32 * arg3 - arg2) + 160] = mem[_2089 + 12 len 20]
                require ext_code.size(address(_1845))
                staticcall address(_1845).token1() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2389 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_2389] == mem[_2389 + 12 len 20]
                if idx >= mem[(64 * arg3 - arg2) + 160]:
                    revert with 0, 50
                mem[(32 * idx) + (64 * arg3 - arg2) + 192] = mem[_2389 + 12 len 20]
                if idx >= mem[(32 * arg3 - arg2) + 128]:
                    revert with 0, 50
                _2600 = mem[(32 * idx) + (32 * arg3 - arg2) + 160]
                if idx >= mem[(64 * arg3 - arg2) + 160]:
                    revert with 0, 50
                _2645 = mem[(32 * idx) + (64 * arg3 - arg2) + 192]
                require ext_code.size(address(_1845))
                staticcall address(_1845).getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if mem[(32 * idx) + (32 * arg3 - arg2) + 172 len 20] < mem[(32 * idx) + (64 * arg3 - arg2) + 204 len 20]:
                    _2824 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _2888 = mem[_2824]
                    require mem[_2824] == mem[_2824 + 18 len 14]
                    _2952 = mem[_2824 + 32]
                    require mem[_2824 + 32] == mem[_2824 + 50 len 14]
                    require mem[_2824 + 64] == mem[_2824 + 92 len 4]
                    if idx >= mem[(98 * arg3) + (-98 * arg2) + 192]:
                        revert with 0, 50
                    if address(_2600) == address(_2600):
                        mem[(32 * idx) + (98 * arg3) + (-98 * arg2) + 224] = mem[_2824 + 18 len 14]
                        if idx >= mem[(98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 224]:
                            revert with 0, 50
                        mem[(32 * idx) + (98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 256] = Mask(112, 0, _2952)
                    else:
                        mem[(32 * idx) + (98 * arg3) + (-98 * arg2) + 224] = mem[_2824 + 50 len 14]
                        if idx >= mem[(98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 224]:
                            revert with 0, 50
                        mem[(32 * idx) + (98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 256] = Mask(112, 0, _2888)
                else:
                    _2825 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _2889 = mem[_2825]
                    require mem[_2825] == mem[_2825 + 18 len 14]
                    _2953 = mem[_2825 + 32]
                    require mem[_2825 + 32] == mem[_2825 + 50 len 14]
                    require mem[_2825 + 64] == mem[_2825 + 92 len 4]
                    if idx >= mem[(98 * arg3) + (-98 * arg2) + 192]:
                        revert with 0, 50
                    if address(_2600) == address(_2645):
                        mem[(32 * idx) + (98 * arg3) + (-98 * arg2) + 224] = mem[_2825 + 18 len 14]
                        if idx >= mem[(98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 224]:
                            revert with 0, 50
                        mem[(32 * idx) + (98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 256] = Mask(112, 0, _2953)
                    else:
                        mem[(32 * idx) + (98 * arg3) + (-98 * arg2) + 224] = mem[_2825 + 50 len 14]
                        if idx >= mem[(98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 224]:
                            revert with 0, 50
                        mem[(32 * idx) + (98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 256] = Mask(112, 0, _2889)
                if 1 > !s:
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s + 1
                continue 
            _1749 = mem[64]
            mem[mem[64]] = 160
            _1813 = mem[96]
            mem[mem[64] + 160] = mem[96]
            idx = 0
            s = 128
            t = mem[64] + 192
            while idx < mem[96]:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 32] = (32 * mem[96]) + 192
            _3349 = mem[(32 * arg3 - arg2) + 128]
            mem[mem[64] + (32 * mem[96]) + 192] = mem[(32 * arg3 - arg2) + 128]
            idx = 0
            s = (32 * arg3 - arg2) + 160
            t = mem[64] + (32 * mem[96]) + 224
            while idx < _3349:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_1749 + 64] = (32 * mem[96]) + (32 * _3349) + 224
            _3669 = mem[(64 * arg3 - arg2) + 160]
            mem[_1749 + (32 * _1813) + (32 * _3349) + 224] = mem[(64 * arg3 - arg2) + 160]
            idx = 0
            s = (64 * arg3 - arg2) + 192
            t = _1749 + (32 * _1813) + (32 * _3349) + 256
            while idx < _3669:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_1749 + 96] = (32 * _1813) + (32 * _3349) + (32 * _3669) + 256
            _3925 = mem[(98 * arg3) + (-98 * arg2) + 192]
            mem[_1749 + (32 * _1813) + (32 * _3349) + (32 * _3669) + 256] = mem[(98 * arg3) + (-98 * arg2) + 192]
            mem[_1749 + (32 * _1813) + (32 * _3349) + (32 * _3669) + 288 len 32 * _3925] = mem[(98 * arg3) + (-98 * arg2) + 224 len 32 * _3925]
            mem[_1749 + 128] = (32 * _1813) + (32 * _3349) + (32 * _3669) + (32 * _3925) + 288
            _4117 = mem[(98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 224]
            mem[_1749 + (32 * _1813) + (32 * _3349) + (32 * _3669) + (32 * _3925) + 288] = mem[(98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 224]
            mem[_1749 + (32 * _1813) + (32 * _3349) + (32 * _3669) + (32 * _3925) + 320 len 32 * _4117] = mem[(98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 256 len 32 * _4117]
            return memory
              from mem[64]
               len _1749 + (32 * _1813) + (32 * _3349) + (32 * _3669) + (32 * _3925) + (32 * _4117) + -mem[64] + 320
        mem[(64 * arg3 - arg2) + 192 len 32 * arg3 - arg2] = call.data[calldata.size len 32 * arg3 - arg2]
        if arg3 - arg2 > test266151307():
            revert with 0, 65
        mem[(98 * arg3) + (-98 * arg2) + 192] = arg3 - arg2
        if not arg3 - arg2:
            if arg3 - arg2 > test266151307():
                revert with 0, 65
            mem[(98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 224] = arg3 - arg2
            mem[64] = (98 * arg3) + (-98 * arg2) + (64 * arg3 - arg2) + 256
            if not arg3 - arg2:
                idx = 0
                s = arg2
                while idx < arg3 - arg2:
                    mem[mem[64] + 4] = s
                    require ext_code.size(arg1)
                    staticcall arg1.allPairs(uint256 rg1) with:
                            gas gas_remaining wei
                           args s
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1782 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1846 = mem[_1782]
                    require mem[_1782] == mem[_1782 + 12 len 20]
                    if idx >= mem[96]:
                        revert with 0, 50
                    mem[(32 * idx) + 128] = mem[_1782 + 12 len 20]
                    require ext_code.size(address(_1846))
                    staticcall address(_1846).token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2091 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2091] == mem[_2091 + 12 len 20]
                    if idx >= mem[(32 * arg3 - arg2) + 128]:
                        revert with 0, 50
                    mem[(32 * idx) + (32 * arg3 - arg2) + 160] = mem[_2091 + 12 len 20]
                    require ext_code.size(address(_1846))
                    staticcall address(_1846).token1() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2390 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2390] == mem[_2390 + 12 len 20]
                    if idx >= mem[(64 * arg3 - arg2) + 160]:
                        revert with 0, 50
                    mem[(32 * idx) + (64 * arg3 - arg2) + 192] = mem[_2390 + 12 len 20]
                    if idx >= mem[(32 * arg3 - arg2) + 128]:
                        revert with 0, 50
                    _2602 = mem[(32 * idx) + (32 * arg3 - arg2) + 160]
                    if idx >= mem[(64 * arg3 - arg2) + 160]:
                        revert with 0, 50
                    _2646 = mem[(32 * idx) + (64 * arg3 - arg2) + 192]
                    require ext_code.size(address(_1846))
                    staticcall address(_1846).getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if mem[(32 * idx) + (32 * arg3 - arg2) + 172 len 20] < mem[(32 * idx) + (64 * arg3 - arg2) + 204 len 20]:
                        _2826 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        _2890 = mem[_2826]
                        require mem[_2826] == mem[_2826 + 18 len 14]
                        _2954 = mem[_2826 + 32]
                        require mem[_2826 + 32] == mem[_2826 + 50 len 14]
                        require mem[_2826 + 64] == mem[_2826 + 92 len 4]
                        if idx >= mem[(98 * arg3) + (-98 * arg2) + 192]:
                            revert with 0, 50
                        if address(_2602) == address(_2602):
                            mem[(32 * idx) + (98 * arg3) + (-98 * arg2) + 224] = mem[_2826 + 18 len 14]
                            if idx >= mem[(98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 224]:
                                revert with 0, 50
                            mem[(32 * idx) + (98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 256] = Mask(112, 0, _2954)
                        else:
                            mem[(32 * idx) + (98 * arg3) + (-98 * arg2) + 224] = mem[_2826 + 50 len 14]
                            if idx >= mem[(98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 224]:
                                revert with 0, 50
                            mem[(32 * idx) + (98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 256] = Mask(112, 0, _2890)
                    else:
                        _2827 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        _2891 = mem[_2827]
                        require mem[_2827] == mem[_2827 + 18 len 14]
                        _2955 = mem[_2827 + 32]
                        require mem[_2827 + 32] == mem[_2827 + 50 len 14]
                        require mem[_2827 + 64] == mem[_2827 + 92 len 4]
                        if idx >= mem[(98 * arg3) + (-98 * arg2) + 192]:
                            revert with 0, 50
                        if address(_2602) == address(_2646):
                            mem[(32 * idx) + (98 * arg3) + (-98 * arg2) + 224] = mem[_2827 + 18 len 14]
                            if idx >= mem[(98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 224]:
                                revert with 0, 50
                            mem[(32 * idx) + (98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 256] = Mask(112, 0, _2955)
                        else:
                            mem[(32 * idx) + (98 * arg3) + (-98 * arg2) + 224] = mem[_2827 + 50 len 14]
                            if idx >= mem[(98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 224]:
                                revert with 0, 50
                            mem[(32 * idx) + (98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 256] = Mask(112, 0, _2891)
                    if 1 > !s:
                        revert with 0, 17
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + 1
                    continue 
                _1750 = mem[64]
                mem[mem[64]] = 160
                _1814 = mem[96]
                mem[mem[64] + 160] = mem[96]
                idx = 0
                s = 128
                t = mem[64] + 192
                while idx < mem[96]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[mem[64] + 32] = (32 * mem[96]) + 192
                _3350 = mem[(32 * arg3 - arg2) + 128]
                mem[mem[64] + (32 * mem[96]) + 192] = mem[(32 * arg3 - arg2) + 128]
                idx = 0
                s = (32 * arg3 - arg2) + 160
                t = mem[64] + (32 * mem[96]) + 224
                while idx < _3350:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_1750 + 64] = (32 * mem[96]) + (32 * _3350) + 224
                _3670 = mem[(64 * arg3 - arg2) + 160]
                mem[_1750 + (32 * _1814) + (32 * _3350) + 224] = mem[(64 * arg3 - arg2) + 160]
                idx = 0
                s = (64 * arg3 - arg2) + 192
                t = _1750 + (32 * _1814) + (32 * _3350) + 256
                while idx < _3670:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_1750 + 96] = (32 * _1814) + (32 * _3350) + (32 * _3670) + 256
                _3926 = mem[(98 * arg3) + (-98 * arg2) + 192]
                mem[_1750 + (32 * _1814) + (32 * _3350) + (32 * _3670) + 256] = mem[(98 * arg3) + (-98 * arg2) + 192]
                mem[_1750 + (32 * _1814) + (32 * _3350) + (32 * _3670) + 288 len 32 * _3926] = mem[(98 * arg3) + (-98 * arg2) + 224 len 32 * _3926]
                mem[_1750 + 128] = (32 * _1814) + (32 * _3350) + (32 * _3670) + (32 * _3926) + 288
                _4118 = mem[(98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 224]
                mem[_1750 + (32 * _1814) + (32 * _3350) + (32 * _3670) + (32 * _3926) + 288] = mem[(98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 224]
                mem[_1750 + (32 * _1814) + (32 * _3350) + (32 * _3670) + (32 * _3926) + 320 len 32 * _4118] = mem[(98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 256 len 32 * _4118]
                return memory
                  from mem[64]
                   len _1750 + (32 * _1814) + (32 * _3350) + (32 * _3670) + (32 * _3926) + (32 * _4118) + -mem[64] + 320
            mem[(98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 256 len 32 * arg3 - arg2] = call.data[calldata.size len 32 * arg3 - arg2]
            idx = 0
            s = arg2
            while idx < arg3 - arg2:
                mem[mem[64] + 4] = s
                require ext_code.size(arg1)
                staticcall arg1.allPairs(uint256 rg1) with:
                        gas gas_remaining wei
                       args s
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1783 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1847 = mem[_1783]
                require mem[_1783] == mem[_1783 + 12 len 20]
                if idx >= mem[96]:
                    revert with 0, 50
                mem[(32 * idx) + 128] = mem[_1783 + 12 len 20]
                require ext_code.size(address(_1847))
                staticcall address(_1847).token0() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2093 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_2093] == mem[_2093 + 12 len 20]
                if idx >= mem[(32 * arg3 - arg2) + 128]:
                    revert with 0, 50
                mem[(32 * idx) + (32 * arg3 - arg2) + 160] = mem[_2093 + 12 len 20]
                require ext_code.size(address(_1847))
                staticcall address(_1847).token1() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2391 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_2391] == mem[_2391 + 12 len 20]
                if idx >= mem[(64 * arg3 - arg2) + 160]:
                    revert with 0, 50
                mem[(32 * idx) + (64 * arg3 - arg2) + 192] = mem[_2391 + 12 len 20]
                if idx >= mem[(32 * arg3 - arg2) + 128]:
                    revert with 0, 50
                _2604 = mem[(32 * idx) + (32 * arg3 - arg2) + 160]
                if idx >= mem[(64 * arg3 - arg2) + 160]:
                    revert with 0, 50
                _2647 = mem[(32 * idx) + (64 * arg3 - arg2) + 192]
                require ext_code.size(address(_1847))
                staticcall address(_1847).getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if mem[(32 * idx) + (32 * arg3 - arg2) + 172 len 20] < mem[(32 * idx) + (64 * arg3 - arg2) + 204 len 20]:
                    _2828 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _2892 = mem[_2828]
                    require mem[_2828] == mem[_2828 + 18 len 14]
                    _2956 = mem[_2828 + 32]
                    require mem[_2828 + 32] == mem[_2828 + 50 len 14]
                    require mem[_2828 + 64] == mem[_2828 + 92 len 4]
                    if idx >= mem[(98 * arg3) + (-98 * arg2) + 192]:
                        revert with 0, 50
                    if address(_2604) == address(_2604):
                        mem[(32 * idx) + (98 * arg3) + (-98 * arg2) + 224] = mem[_2828 + 18 len 14]
                        if idx >= mem[(98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 224]:
                            revert with 0, 50
                        mem[(32 * idx) + (98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 256] = Mask(112, 0, _2956)
                    else:
                        mem[(32 * idx) + (98 * arg3) + (-98 * arg2) + 224] = mem[_2828 + 50 len 14]
                        if idx >= mem[(98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 224]:
                            revert with 0, 50
                        mem[(32 * idx) + (98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 256] = Mask(112, 0, _2892)
                else:
                    _2829 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _2893 = mem[_2829]
                    require mem[_2829] == mem[_2829 + 18 len 14]
                    _2957 = mem[_2829 + 32]
                    require mem[_2829 + 32] == mem[_2829 + 50 len 14]
                    require mem[_2829 + 64] == mem[_2829 + 92 len 4]
                    if idx >= mem[(98 * arg3) + (-98 * arg2) + 192]:
                        revert with 0, 50
                    if address(_2604) == address(_2647):
                        mem[(32 * idx) + (98 * arg3) + (-98 * arg2) + 224] = mem[_2829 + 18 len 14]
                        if idx >= mem[(98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 224]:
                            revert with 0, 50
                        mem[(32 * idx) + (98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 256] = Mask(112, 0, _2957)
                    else:
                        mem[(32 * idx) + (98 * arg3) + (-98 * arg2) + 224] = mem[_2829 + 50 len 14]
                        if idx >= mem[(98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 224]:
                            revert with 0, 50
                        mem[(32 * idx) + (98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 256] = Mask(112, 0, _2893)
                if 1 > !s:
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s + 1
                continue 
            _1751 = mem[64]
            mem[mem[64]] = 160
            _1815 = mem[96]
            mem[mem[64] + 160] = mem[96]
            idx = 0
            s = 128
            t = mem[64] + 192
            while idx < _1815:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_1751 + 32] = (32 * _1815) + 192
            _3351 = mem[(32 * arg3 - arg2) + 128]
            mem[_1751 + (32 * _1815) + 192] = mem[(32 * arg3 - arg2) + 128]
            idx = 0
            s = (32 * arg3 - arg2) + 160
            t = _1751 + (32 * _1815) + 224
            while idx < _3351:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_1751 + 64] = (32 * _1815) + (32 * _3351) + 224
            _3671 = mem[(64 * arg3 - arg2) + 160]
            mem[_1751 + (32 * _1815) + (32 * _3351) + 224] = mem[(64 * arg3 - arg2) + 160]
            idx = 0
            s = (64 * arg3 - arg2) + 192
            t = _1751 + (32 * _1815) + (32 * _3351) + 256
            while idx < _3671:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_1751 + 96] = (32 * _1815) + (32 * _3351) + (32 * _3671) + 256
            _3927 = mem[(98 * arg3) + (-98 * arg2) + 192]
            mem[_1751 + (32 * _1815) + (32 * _3351) + (32 * _3671) + 256] = mem[(98 * arg3) + (-98 * arg2) + 192]
            mem[_1751 + (32 * _1815) + (32 * _3351) + (32 * _3671) + 288 len 32 * _3927] = mem[(98 * arg3) + (-98 * arg2) + 224 len 32 * _3927]
            mem[_1751 + 128] = (32 * _1815) + (32 * _3351) + (32 * _3671) + (32 * _3927) + 288
            _4119 = mem[(98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 224]
            mem[_1751 + (32 * _1815) + (32 * _3351) + (32 * _3671) + (32 * _3927) + 288] = mem[(98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 224]
            mem[_1751 + (32 * _1815) + (32 * _3351) + (32 * _3671) + (32 * _3927) + 320 len 32 * _4119] = mem[(98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 256 len 32 * _4119]
            return memory
              from mem[64]
               len _1751 + (32 * _1815) + (32 * _3351) + (32 * _3671) + (32 * _3927) + (32 * _4119) + -mem[64] + 320
        mem[(98 * arg3) + (-98 * arg2) + 224 len 32 * arg3 - arg2] = call.data[calldata.size len 32 * arg3 - arg2]
        if arg3 - arg2 > test266151307():
            revert with 0, 65
        mem[(98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 224] = arg3 - arg2
        mem[64] = (98 * arg3) + (-98 * arg2) + (64 * arg3 - arg2) + 256
        if not arg3 - arg2:
            idx = 0
            s = arg2
            while idx < arg3 - arg2:
                mem[mem[64] + 4] = s
                require ext_code.size(arg1)
                staticcall arg1.allPairs(uint256 rg1) with:
                        gas gas_remaining wei
                       args s
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1784 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1848 = mem[_1784]
                require mem[_1784] == mem[_1784 + 12 len 20]
                if idx >= mem[96]:
                    revert with 0, 50
                mem[(32 * idx) + 128] = mem[_1784 + 12 len 20]
                require ext_code.size(address(_1848))
                staticcall address(_1848).token0() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2095 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_2095] == mem[_2095 + 12 len 20]
                if idx >= mem[(32 * arg3 - arg2) + 128]:
                    revert with 0, 50
                mem[(32 * idx) + (32 * arg3 - arg2) + 160] = mem[_2095 + 12 len 20]
                require ext_code.size(address(_1848))
                staticcall address(_1848).token1() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2392 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_2392] == mem[_2392 + 12 len 20]
                if idx >= mem[(64 * arg3 - arg2) + 160]:
                    revert with 0, 50
                mem[(32 * idx) + (64 * arg3 - arg2) + 192] = mem[_2392 + 12 len 20]
                if idx >= mem[(32 * arg3 - arg2) + 128]:
                    revert with 0, 50
                _2606 = mem[(32 * idx) + (32 * arg3 - arg2) + 160]
                if idx >= mem[(64 * arg3 - arg2) + 160]:
                    revert with 0, 50
                _2648 = mem[(32 * idx) + (64 * arg3 - arg2) + 192]
                require ext_code.size(address(_1848))
                staticcall address(_1848).getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if mem[(32 * idx) + (32 * arg3 - arg2) + 172 len 20] < mem[(32 * idx) + (64 * arg3 - arg2) + 204 len 20]:
                    _2830 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _2894 = mem[_2830]
                    require mem[_2830] == mem[_2830 + 18 len 14]
                    _2958 = mem[_2830 + 32]
                    require mem[_2830 + 32] == mem[_2830 + 50 len 14]
                    require mem[_2830 + 64] == mem[_2830 + 92 len 4]
                    if idx >= mem[(98 * arg3) + (-98 * arg2) + 192]:
                        revert with 0, 50
                    if address(_2606) == address(_2606):
                        mem[(32 * idx) + (98 * arg3) + (-98 * arg2) + 224] = mem[_2830 + 18 len 14]
                        if idx >= mem[(98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 224]:
                            revert with 0, 50
                        mem[(32 * idx) + (98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 256] = Mask(112, 0, _2958)
                    else:
                        mem[(32 * idx) + (98 * arg3) + (-98 * arg2) + 224] = mem[_2830 + 50 len 14]
                        if idx >= mem[(98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 224]:
                            revert with 0, 50
                        mem[(32 * idx) + (98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 256] = Mask(112, 0, _2894)
                else:
                    _2831 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _2895 = mem[_2831]
                    require mem[_2831] == mem[_2831 + 18 len 14]
                    _2959 = mem[_2831 + 32]
                    require mem[_2831 + 32] == mem[_2831 + 50 len 14]
                    require mem[_2831 + 64] == mem[_2831 + 92 len 4]
                    if idx >= mem[(98 * arg3) + (-98 * arg2) + 192]:
                        revert with 0, 50
                    if address(_2606) == address(_2648):
                        mem[(32 * idx) + (98 * arg3) + (-98 * arg2) + 224] = mem[_2831 + 18 len 14]
                        if idx >= mem[(98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 224]:
                            revert with 0, 50
                        mem[(32 * idx) + (98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 256] = Mask(112, 0, _2959)
                    else:
                        mem[(32 * idx) + (98 * arg3) + (-98 * arg2) + 224] = mem[_2831 + 50 len 14]
                        if idx >= mem[(98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 224]:
                            revert with 0, 50
                        mem[(32 * idx) + (98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 256] = Mask(112, 0, _2895)
                if 1 > !s:
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s + 1
                continue 
            _1752 = mem[64]
            mem[mem[64]] = 160
            _1816 = mem[96]
            mem[mem[64] + 160] = mem[96]
            idx = 0
            s = 128
            t = mem[64] + 192
            while idx < mem[96]:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 32] = (32 * mem[96]) + 192
            _3352 = mem[(32 * arg3 - arg2) + 128]
            mem[mem[64] + (32 * mem[96]) + 192] = mem[(32 * arg3 - arg2) + 128]
            idx = 0
            s = (32 * arg3 - arg2) + 160
            t = mem[64] + (32 * mem[96]) + 224
            while idx < _3352:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_1752 + 64] = (32 * mem[96]) + (32 * _3352) + 224
            _3672 = mem[(64 * arg3 - arg2) + 160]
            mem[_1752 + (32 * _1816) + (32 * _3352) + 224] = mem[(64 * arg3 - arg2) + 160]
            idx = 0
            s = (64 * arg3 - arg2) + 192
            t = _1752 + (32 * _1816) + (32 * _3352) + 256
            while idx < _3672:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_1752 + 96] = (32 * _1816) + (32 * _3352) + (32 * _3672) + 256
            _3928 = mem[(98 * arg3) + (-98 * arg2) + 192]
            mem[_1752 + (32 * _1816) + (32 * _3352) + (32 * _3672) + 256] = mem[(98 * arg3) + (-98 * arg2) + 192]
            mem[_1752 + (32 * _1816) + (32 * _3352) + (32 * _3672) + 288 len 32 * _3928] = mem[(98 * arg3) + (-98 * arg2) + 224 len 32 * _3928]
            mem[_1752 + 128] = (32 * _1816) + (32 * _3352) + (32 * _3672) + (32 * _3928) + 288
            _4120 = mem[(98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 224]
            mem[_1752 + (32 * _1816) + (32 * _3352) + (32 * _3672) + (32 * _3928) + 288] = mem[(98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 224]
            mem[_1752 + (32 * _1816) + (32 * _3352) + (32 * _3672) + (32 * _3928) + 320 len 32 * _4120] = mem[(98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 256 len 32 * _4120]
            return memory
              from mem[64]
               len _1752 + (32 * _1816) + (32 * _3352) + (32 * _3672) + (32 * _3928) + (32 * _4120) + -mem[64] + 320
        mem[(98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 256 len 32 * arg3 - arg2] = call.data[calldata.size len 32 * arg3 - arg2]
        idx = 0
        s = arg2
        while idx < arg3 - arg2:
            mem[mem[64] + 4] = s
            require ext_code.size(arg1)
            staticcall arg1.allPairs(uint256 rg1) with:
                    gas gas_remaining wei
                   args s
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1785 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1849 = mem[_1785]
            require mem[_1785] == mem[_1785 + 12 len 20]
            if idx >= mem[96]:
                revert with 0, 50
            mem[(32 * idx) + 128] = mem[_1785 + 12 len 20]
            require ext_code.size(address(_1849))
            staticcall address(_1849).token0() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2097 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_2097] == mem[_2097 + 12 len 20]
            if idx >= mem[(32 * arg3 - arg2) + 128]:
                revert with 0, 50
            mem[(32 * idx) + (32 * arg3 - arg2) + 160] = mem[_2097 + 12 len 20]
            require ext_code.size(address(_1849))
            staticcall address(_1849).token1() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2393 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_2393] == mem[_2393 + 12 len 20]
            if idx >= mem[(64 * arg3 - arg2) + 160]:
                revert with 0, 50
            mem[(32 * idx) + (64 * arg3 - arg2) + 192] = mem[_2393 + 12 len 20]
            if idx >= mem[(32 * arg3 - arg2) + 128]:
                revert with 0, 50
            _2608 = mem[(32 * idx) + (32 * arg3 - arg2) + 160]
            if idx >= mem[(64 * arg3 - arg2) + 160]:
                revert with 0, 50
            _2649 = mem[(32 * idx) + (64 * arg3 - arg2) + 192]
            require ext_code.size(address(_1849))
            staticcall address(_1849).getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if mem[(32 * idx) + (32 * arg3 - arg2) + 172 len 20] < mem[(32 * idx) + (64 * arg3 - arg2) + 204 len 20]:
                _2832 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _2896 = mem[_2832]
                require mem[_2832] == mem[_2832 + 18 len 14]
                _2960 = mem[_2832 + 32]
                require mem[_2832 + 32] == mem[_2832 + 50 len 14]
                require mem[_2832 + 64] == mem[_2832 + 92 len 4]
                if idx >= mem[(98 * arg3) + (-98 * arg2) + 192]:
                    revert with 0, 50
                if address(_2608) == address(_2608):
                    mem[(32 * idx) + (98 * arg3) + (-98 * arg2) + 224] = mem[_2832 + 18 len 14]
                    if idx >= mem[(98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 224]:
                        revert with 0, 50
                    mem[(32 * idx) + (98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 256] = Mask(112, 0, _2960)
                else:
                    mem[(32 * idx) + (98 * arg3) + (-98 * arg2) + 224] = mem[_2832 + 50 len 14]
                    if idx >= mem[(98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 224]:
                        revert with 0, 50
                    mem[(32 * idx) + (98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 256] = Mask(112, 0, _2896)
            else:
                _2833 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _2897 = mem[_2833]
                require mem[_2833] == mem[_2833 + 18 len 14]
                _2961 = mem[_2833 + 32]
                require mem[_2833 + 32] == mem[_2833 + 50 len 14]
                require mem[_2833 + 64] == mem[_2833 + 92 len 4]
                if idx >= mem[(98 * arg3) + (-98 * arg2) + 192]:
                    revert with 0, 50
                if address(_2608) == address(_2649):
                    mem[(32 * idx) + (98 * arg3) + (-98 * arg2) + 224] = mem[_2833 + 18 len 14]
                    if idx >= mem[(98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 224]:
                        revert with 0, 50
                    mem[(32 * idx) + (98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 256] = Mask(112, 0, _2961)
                else:
                    mem[(32 * idx) + (98 * arg3) + (-98 * arg2) + 224] = mem[_2833 + 50 len 14]
                    if idx >= mem[(98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 224]:
                        revert with 0, 50
                    mem[(32 * idx) + (98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 256] = Mask(112, 0, _2897)
            if 1 > !s:
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + 1
            continue 
        _1753 = mem[64]
        mem[mem[64]] = 160
        _1817 = mem[96]
        mem[mem[64] + 160] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 192
        while idx < mem[96]:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[mem[64] + 32] = (32 * mem[96]) + 192
        _3353 = mem[(32 * arg3 - arg2) + 128]
        mem[mem[64] + (32 * mem[96]) + 192] = mem[(32 * arg3 - arg2) + 128]
        idx = 0
        s = (32 * arg3 - arg2) + 160
        t = mem[64] + (32 * mem[96]) + 224
        while idx < _3353:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_1753 + 64] = (32 * mem[96]) + (32 * _3353) + 224
        _3673 = mem[(64 * arg3 - arg2) + 160]
        mem[_1753 + (32 * _1817) + (32 * _3353) + 224] = mem[(64 * arg3 - arg2) + 160]
        idx = 0
        s = (64 * arg3 - arg2) + 192
        t = _1753 + (32 * _1817) + (32 * _3353) + 256
        while idx < _3673:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_1753 + 96] = (32 * _1817) + (32 * _3353) + (32 * _3673) + 256
        _3929 = mem[(98 * arg3) + (-98 * arg2) + 192]
        mem[_1753 + (32 * _1817) + (32 * _3353) + (32 * _3673) + 256] = mem[(98 * arg3) + (-98 * arg2) + 192]
        mem[_1753 + (32 * _1817) + (32 * _3353) + (32 * _3673) + 288 len 32 * _3929] = mem[(98 * arg3) + (-98 * arg2) + 224 len 32 * _3929]
        mem[_1753 + 128] = (32 * _1817) + (32 * _3353) + (32 * _3673) + (32 * _3929) + 288
        _4121 = mem[(98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 224]
        mem[_1753 + (32 * _1817) + (32 * _3353) + (32 * _3673) + (32 * _3929) + 288] = mem[(98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 224]
        mem[_1753 + (32 * _1817) + (32 * _3353) + (32 * _3673) + (32 * _3929) + 320 len 32 * _4121] = mem[(98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 256 len 32 * _4121]
        return memory
          from mem[64]
           len _1753 + (32 * _1817) + (32 * _3353) + (32 * _3673) + (32 * _3929) + (32 * _4121) + -mem[64] + 320
    mem[(32 * arg3 - arg2) + 160 len 32 * arg3 - arg2] = call.data[calldata.size len 32 * arg3 - arg2]
    if arg3 - arg2 > test266151307():
        revert with 0, 65
    mem[(64 * arg3 - arg2) + 160] = arg3 - arg2
    if not arg3 - arg2:
        if arg3 - arg2 > test266151307():
            revert with 0, 65
        mem[(98 * arg3) + (-98 * arg2) + 192] = arg3 - arg2
        if not arg3 - arg2:
            if arg3 - arg2 > test266151307():
                revert with 0, 65
            mem[(98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 224] = arg3 - arg2
            mem[64] = (98 * arg3) + (-98 * arg2) + (64 * arg3 - arg2) + 256
            if not arg3 - arg2:
                idx = 0
                s = arg2
                while idx < arg3 - arg2:
                    mem[mem[64] + 4] = s
                    require ext_code.size(arg1)
                    staticcall arg1.allPairs(uint256 rg1) with:
                            gas gas_remaining wei
                           args s
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1786 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1850 = mem[_1786]
                    require mem[_1786] == mem[_1786 + 12 len 20]
                    if idx >= mem[96]:
                        revert with 0, 50
                    mem[(32 * idx) + 128] = mem[_1786 + 12 len 20]
                    require ext_code.size(address(_1850))
                    staticcall address(_1850).token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2099 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2099] == mem[_2099 + 12 len 20]
                    if idx >= mem[(32 * arg3 - arg2) + 128]:
                        revert with 0, 50
                    mem[(32 * idx) + (32 * arg3 - arg2) + 160] = mem[_2099 + 12 len 20]
                    require ext_code.size(address(_1850))
                    staticcall address(_1850).token1() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2394 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2394] == mem[_2394 + 12 len 20]
                    if idx >= mem[(64 * arg3 - arg2) + 160]:
                        revert with 0, 50
                    mem[(32 * idx) + (64 * arg3 - arg2) + 192] = mem[_2394 + 12 len 20]
                    if idx >= mem[(32 * arg3 - arg2) + 128]:
                        revert with 0, 50
                    _2610 = mem[(32 * idx) + (32 * arg3 - arg2) + 160]
                    if idx >= mem[(64 * arg3 - arg2) + 160]:
                        revert with 0, 50
                    _2650 = mem[(32 * idx) + (64 * arg3 - arg2) + 192]
                    require ext_code.size(address(_1850))
                    staticcall address(_1850).getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if mem[(32 * idx) + (32 * arg3 - arg2) + 172 len 20] < mem[(32 * idx) + (64 * arg3 - arg2) + 204 len 20]:
                        _2834 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        _2898 = mem[_2834]
                        require mem[_2834] == mem[_2834 + 18 len 14]
                        _2962 = mem[_2834 + 32]
                        require mem[_2834 + 32] == mem[_2834 + 50 len 14]
                        require mem[_2834 + 64] == mem[_2834 + 92 len 4]
                        if idx >= mem[(98 * arg3) + (-98 * arg2) + 192]:
                            revert with 0, 50
                        if address(_2610) == address(_2610):
                            mem[(32 * idx) + (98 * arg3) + (-98 * arg2) + 224] = mem[_2834 + 18 len 14]
                            if idx >= mem[(98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 224]:
                                revert with 0, 50
                            mem[(32 * idx) + (98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 256] = Mask(112, 0, _2962)
                        else:
                            mem[(32 * idx) + (98 * arg3) + (-98 * arg2) + 224] = mem[_2834 + 50 len 14]
                            if idx >= mem[(98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 224]:
                                revert with 0, 50
                            mem[(32 * idx) + (98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 256] = Mask(112, 0, _2898)
                    else:
                        _2835 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        _2899 = mem[_2835]
                        require mem[_2835] == mem[_2835 + 18 len 14]
                        _2963 = mem[_2835 + 32]
                        require mem[_2835 + 32] == mem[_2835 + 50 len 14]
                        require mem[_2835 + 64] == mem[_2835 + 92 len 4]
                        if idx >= mem[(98 * arg3) + (-98 * arg2) + 192]:
                            revert with 0, 50
                        if address(_2610) == address(_2650):
                            mem[(32 * idx) + (98 * arg3) + (-98 * arg2) + 224] = mem[_2835 + 18 len 14]
                            if idx >= mem[(98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 224]:
                                revert with 0, 50
                            mem[(32 * idx) + (98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 256] = Mask(112, 0, _2963)
                        else:
                            mem[(32 * idx) + (98 * arg3) + (-98 * arg2) + 224] = mem[_2835 + 50 len 14]
                            if idx >= mem[(98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 224]:
                                revert with 0, 50
                            mem[(32 * idx) + (98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 256] = Mask(112, 0, _2899)
                    if 1 > !s:
                        revert with 0, 17
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + 1
                    continue 
                _1754 = mem[64]
                mem[mem[64]] = 160
                _1818 = mem[96]
                mem[mem[64] + 160] = mem[96]
                idx = 0
                s = 128
                t = mem[64] + 192
                while idx < _1818:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_1754 + 32] = (32 * _1818) + 192
                _3354 = mem[(32 * arg3 - arg2) + 128]
                mem[_1754 + (32 * _1818) + 192] = mem[(32 * arg3 - arg2) + 128]
                idx = 0
                s = (32 * arg3 - arg2) + 160
                t = _1754 + (32 * _1818) + 224
                while idx < _3354:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_1754 + 64] = (32 * _1818) + (32 * _3354) + 224
                _3674 = mem[(64 * arg3 - arg2) + 160]
                mem[_1754 + (32 * _1818) + (32 * _3354) + 224] = mem[(64 * arg3 - arg2) + 160]
                idx = 0
                s = (64 * arg3 - arg2) + 192
                t = _1754 + (32 * _1818) + (32 * _3354) + 256
                while idx < _3674:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_1754 + 96] = (32 * _1818) + (32 * _3354) + (32 * _3674) + 256
                _3930 = mem[(98 * arg3) + (-98 * arg2) + 192]
                mem[_1754 + (32 * _1818) + (32 * _3354) + (32 * _3674) + 256] = mem[(98 * arg3) + (-98 * arg2) + 192]
                mem[_1754 + (32 * _1818) + (32 * _3354) + (32 * _3674) + 288 len 32 * _3930] = mem[(98 * arg3) + (-98 * arg2) + 224 len 32 * _3930]
                mem[_1754 + 128] = (32 * _1818) + (32 * _3354) + (32 * _3674) + (32 * _3930) + 288
                _4122 = mem[(98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 224]
                mem[_1754 + (32 * _1818) + (32 * _3354) + (32 * _3674) + (32 * _3930) + 288] = mem[(98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 224]
                mem[_1754 + (32 * _1818) + (32 * _3354) + (32 * _3674) + (32 * _3930) + 320 len 32 * _4122] = mem[(98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 256 len 32 * _4122]
                return memory
                  from mem[64]
                   len _1754 + (32 * _1818) + (32 * _3354) + (32 * _3674) + (32 * _3930) + (32 * _4122) + -mem[64] + 320
            mem[(98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 256 len 32 * arg3 - arg2] = call.data[calldata.size len 32 * arg3 - arg2]
            idx = 0
            s = arg2
            while idx < arg3 - arg2:
                mem[mem[64] + 4] = s
                require ext_code.size(arg1)
                staticcall arg1.allPairs(uint256 rg1) with:
                        gas gas_remaining wei
                       args s
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1787 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1851 = mem[_1787]
                require mem[_1787] == mem[_1787 + 12 len 20]
                if idx >= mem[96]:
                    revert with 0, 50
                mem[(32 * idx) + 128] = mem[_1787 + 12 len 20]
                require ext_code.size(address(_1851))
                staticcall address(_1851).token0() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2101 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_2101] == mem[_2101 + 12 len 20]
                if idx >= mem[(32 * arg3 - arg2) + 128]:
                    revert with 0, 50
                mem[(32 * idx) + (32 * arg3 - arg2) + 160] = mem[_2101 + 12 len 20]
                require ext_code.size(address(_1851))
                staticcall address(_1851).token1() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2395 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_2395] == mem[_2395 + 12 len 20]
                if idx >= mem[(64 * arg3 - arg2) + 160]:
                    revert with 0, 50
                mem[(32 * idx) + (64 * arg3 - arg2) + 192] = mem[_2395 + 12 len 20]
                if idx >= mem[(32 * arg3 - arg2) + 128]:
                    revert with 0, 50
                _2612 = mem[(32 * idx) + (32 * arg3 - arg2) + 160]
                if idx >= mem[(64 * arg3 - arg2) + 160]:
                    revert with 0, 50
                _2651 = mem[(32 * idx) + (64 * arg3 - arg2) + 192]
                require ext_code.size(address(_1851))
                staticcall address(_1851).getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if mem[(32 * idx) + (32 * arg3 - arg2) + 172 len 20] < mem[(32 * idx) + (64 * arg3 - arg2) + 204 len 20]:
                    _2836 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _2900 = mem[_2836]
                    require mem[_2836] == mem[_2836 + 18 len 14]
                    _2964 = mem[_2836 + 32]
                    require mem[_2836 + 32] == mem[_2836 + 50 len 14]
                    require mem[_2836 + 64] == mem[_2836 + 92 len 4]
                    if idx >= mem[(98 * arg3) + (-98 * arg2) + 192]:
                        revert with 0, 50
                    if address(_2612) == address(_2612):
                        mem[(32 * idx) + (98 * arg3) + (-98 * arg2) + 224] = mem[_2836 + 18 len 14]
                        if idx >= mem[(98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 224]:
                            revert with 0, 50
                        mem[(32 * idx) + (98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 256] = Mask(112, 0, _2964)
                    else:
                        mem[(32 * idx) + (98 * arg3) + (-98 * arg2) + 224] = mem[_2836 + 50 len 14]
                        if idx >= mem[(98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 224]:
                            revert with 0, 50
                        mem[(32 * idx) + (98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 256] = Mask(112, 0, _2900)
                else:
                    _2837 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _2901 = mem[_2837]
                    require mem[_2837] == mem[_2837 + 18 len 14]
                    _2965 = mem[_2837 + 32]
                    require mem[_2837 + 32] == mem[_2837 + 50 len 14]
                    require mem[_2837 + 64] == mem[_2837 + 92 len 4]
                    if idx >= mem[(98 * arg3) + (-98 * arg2) + 192]:
                        revert with 0, 50
                    if address(_2612) == address(_2651):
                        mem[(32 * idx) + (98 * arg3) + (-98 * arg2) + 224] = mem[_2837 + 18 len 14]
                        if idx >= mem[(98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 224]:
                            revert with 0, 50
                        mem[(32 * idx) + (98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 256] = Mask(112, 0, _2965)
                    else:
                        mem[(32 * idx) + (98 * arg3) + (-98 * arg2) + 224] = mem[_2837 + 50 len 14]
                        if idx >= mem[(98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 224]:
                            revert with 0, 50
                        mem[(32 * idx) + (98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 256] = Mask(112, 0, _2901)
                if 1 > !s:
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s + 1
                continue 
            _1755 = mem[64]
            mem[mem[64]] = 160
            _1819 = mem[96]
            mem[mem[64] + 160] = mem[96]
            idx = 0
            s = 128
            t = mem[64] + 192
            while idx < mem[96]:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 32] = (32 * mem[96]) + 192
            _3355 = mem[(32 * arg3 - arg2) + 128]
            mem[mem[64] + (32 * mem[96]) + 192] = mem[(32 * arg3 - arg2) + 128]
            idx = 0
            s = (32 * arg3 - arg2) + 160
            t = mem[64] + (32 * mem[96]) + 224
            while idx < _3355:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 64] = (32 * mem[96]) + (32 * _3355) + 224
            _3675 = mem[(64 * arg3 - arg2) + 160]
            mem[mem[64] + (32 * mem[96]) + (32 * _3355) + 224] = mem[(64 * arg3 - arg2) + 160]
            idx = 0
            s = (64 * arg3 - arg2) + 192
            t = mem[64] + (32 * mem[96]) + (32 * _3355) + 256
            while idx < _3675:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_1755 + 96] = (32 * mem[96]) + (32 * _3355) + (32 * _3675) + 256
            _3931 = mem[(98 * arg3) + (-98 * arg2) + 192]
            mem[_1755 + (32 * _1819) + (32 * _3355) + (32 * _3675) + 256] = mem[(98 * arg3) + (-98 * arg2) + 192]
            mem[_1755 + (32 * _1819) + (32 * _3355) + (32 * _3675) + 288 len 32 * _3931] = mem[(98 * arg3) + (-98 * arg2) + 224 len 32 * _3931]
            mem[_1755 + 128] = (32 * _1819) + (32 * _3355) + (32 * _3675) + (32 * _3931) + 288
            _4123 = mem[(98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 224]
            mem[_1755 + (32 * _1819) + (32 * _3355) + (32 * _3675) + (32 * _3931) + 288] = mem[(98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 224]
            mem[_1755 + (32 * _1819) + (32 * _3355) + (32 * _3675) + (32 * _3931) + 320 len 32 * _4123] = mem[(98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 256 len 32 * _4123]
            return memory
              from mem[64]
               len _1755 + (32 * _1819) + (32 * _3355) + (32 * _3675) + (32 * _3931) + (32 * _4123) + -mem[64] + 320
        mem[(98 * arg3) + (-98 * arg2) + 224 len 32 * arg3 - arg2] = call.data[calldata.size len 32 * arg3 - arg2]
        if arg3 - arg2 > test266151307():
            revert with 0, 65
        mem[(98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 224] = arg3 - arg2
        mem[64] = (98 * arg3) + (-98 * arg2) + (64 * arg3 - arg2) + 256
        if not arg3 - arg2:
            idx = 0
            s = arg2
            while idx < arg3 - arg2:
                mem[mem[64] + 4] = s
                require ext_code.size(arg1)
                staticcall arg1.allPairs(uint256 rg1) with:
                        gas gas_remaining wei
                       args s
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1788 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1852 = mem[_1788]
                require mem[_1788] == mem[_1788 + 12 len 20]
                if idx >= mem[96]:
                    revert with 0, 50
                mem[(32 * idx) + 128] = mem[_1788 + 12 len 20]
                require ext_code.size(address(_1852))
                staticcall address(_1852).token0() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2103 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_2103] == mem[_2103 + 12 len 20]
                if idx >= mem[(32 * arg3 - arg2) + 128]:
                    revert with 0, 50
                mem[(32 * idx) + (32 * arg3 - arg2) + 160] = mem[_2103 + 12 len 20]
                require ext_code.size(address(_1852))
                staticcall address(_1852).token1() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2396 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_2396] == mem[_2396 + 12 len 20]
                if idx >= mem[(64 * arg3 - arg2) + 160]:
                    revert with 0, 50
                mem[(32 * idx) + (64 * arg3 - arg2) + 192] = mem[_2396 + 12 len 20]
                if idx >= mem[(32 * arg3 - arg2) + 128]:
                    revert with 0, 50
                _2614 = mem[(32 * idx) + (32 * arg3 - arg2) + 160]
                if idx >= mem[(64 * arg3 - arg2) + 160]:
                    revert with 0, 50
                _2652 = mem[(32 * idx) + (64 * arg3 - arg2) + 192]
                require ext_code.size(address(_1852))
                staticcall address(_1852).getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if mem[(32 * idx) + (32 * arg3 - arg2) + 172 len 20] < mem[(32 * idx) + (64 * arg3 - arg2) + 204 len 20]:
                    _2838 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _2902 = mem[_2838]
                    require mem[_2838] == mem[_2838 + 18 len 14]
                    _2966 = mem[_2838 + 32]
                    require mem[_2838 + 32] == mem[_2838 + 50 len 14]
                    require mem[_2838 + 64] == mem[_2838 + 92 len 4]
                    if idx >= mem[(98 * arg3) + (-98 * arg2) + 192]:
                        revert with 0, 50
                    if address(_2614) == address(_2614):
                        mem[(32 * idx) + (98 * arg3) + (-98 * arg2) + 224] = mem[_2838 + 18 len 14]
                        if idx >= mem[(98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 224]:
                            revert with 0, 50
                        mem[(32 * idx) + (98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 256] = Mask(112, 0, _2966)
                    else:
                        mem[(32 * idx) + (98 * arg3) + (-98 * arg2) + 224] = mem[_2838 + 50 len 14]
                        if idx >= mem[(98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 224]:
                            revert with 0, 50
                        mem[(32 * idx) + (98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 256] = Mask(112, 0, _2902)
                else:
                    _2839 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _2903 = mem[_2839]
                    require mem[_2839] == mem[_2839 + 18 len 14]
                    _2967 = mem[_2839 + 32]
                    require mem[_2839 + 32] == mem[_2839 + 50 len 14]
                    require mem[_2839 + 64] == mem[_2839 + 92 len 4]
                    if idx >= mem[(98 * arg3) + (-98 * arg2) + 192]:
                        revert with 0, 50
                    if address(_2614) == address(_2652):
                        mem[(32 * idx) + (98 * arg3) + (-98 * arg2) + 224] = mem[_2839 + 18 len 14]
                        if idx >= mem[(98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 224]:
                            revert with 0, 50
                        mem[(32 * idx) + (98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 256] = Mask(112, 0, _2967)
                    else:
                        mem[(32 * idx) + (98 * arg3) + (-98 * arg2) + 224] = mem[_2839 + 50 len 14]
                        if idx >= mem[(98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 224]:
                            revert with 0, 50
                        mem[(32 * idx) + (98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 256] = Mask(112, 0, _2903)
                if 1 > !s:
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s + 1
                continue 
            _1756 = mem[64]
            mem[mem[64]] = 160
            _1820 = mem[96]
            mem[mem[64] + 160] = mem[96]
            idx = 0
            s = 128
            t = mem[64] + 192
            while idx < mem[96]:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 32] = (32 * mem[96]) + 192
            _3356 = mem[(32 * arg3 - arg2) + 128]
            mem[mem[64] + (32 * mem[96]) + 192] = mem[(32 * arg3 - arg2) + 128]
            idx = 0
            s = (32 * arg3 - arg2) + 160
            t = mem[64] + (32 * mem[96]) + 224
            while idx < _3356:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_1756 + 64] = (32 * mem[96]) + (32 * _3356) + 224
            _3676 = mem[(64 * arg3 - arg2) + 160]
            mem[_1756 + (32 * _1820) + (32 * _3356) + 224] = mem[(64 * arg3 - arg2) + 160]
            idx = 0
            s = (64 * arg3 - arg2) + 192
            t = _1756 + (32 * _1820) + (32 * _3356) + 256
            while idx < _3676:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_1756 + 96] = (32 * _1820) + (32 * _3356) + (32 * _3676) + 256
            _3932 = mem[(98 * arg3) + (-98 * arg2) + 192]
            mem[_1756 + (32 * _1820) + (32 * _3356) + (32 * _3676) + 256] = mem[(98 * arg3) + (-98 * arg2) + 192]
            mem[_1756 + (32 * _1820) + (32 * _3356) + (32 * _3676) + 288 len 32 * _3932] = mem[(98 * arg3) + (-98 * arg2) + 224 len 32 * _3932]
            mem[_1756 + 128] = (32 * _1820) + (32 * _3356) + (32 * _3676) + (32 * _3932) + 288
            _4124 = mem[(98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 224]
            mem[_1756 + (32 * _1820) + (32 * _3356) + (32 * _3676) + (32 * _3932) + 288] = mem[(98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 224]
            mem[_1756 + (32 * _1820) + (32 * _3356) + (32 * _3676) + (32 * _3932) + 320 len 32 * _4124] = mem[(98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 256 len 32 * _4124]
            return memory
              from mem[64]
               len _1756 + (32 * _1820) + (32 * _3356) + (32 * _3676) + (32 * _3932) + (32 * _4124) + -mem[64] + 320
        mem[(98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 256 len 32 * arg3 - arg2] = call.data[calldata.size len 32 * arg3 - arg2]
        idx = 0
        s = arg2
        while idx < arg3 - arg2:
            mem[mem[64] + 4] = s
            require ext_code.size(arg1)
            staticcall arg1.allPairs(uint256 rg1) with:
                    gas gas_remaining wei
                   args s
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1789 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1853 = mem[_1789]
            require mem[_1789] == mem[_1789 + 12 len 20]
            if idx >= mem[96]:
                revert with 0, 50
            mem[(32 * idx) + 128] = mem[_1789 + 12 len 20]
            require ext_code.size(address(_1853))
            staticcall address(_1853).token0() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2105 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_2105] == mem[_2105 + 12 len 20]
            if idx >= mem[(32 * arg3 - arg2) + 128]:
                revert with 0, 50
            mem[(32 * idx) + (32 * arg3 - arg2) + 160] = mem[_2105 + 12 len 20]
            require ext_code.size(address(_1853))
            staticcall address(_1853).token1() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2397 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_2397] == mem[_2397 + 12 len 20]
            if idx >= mem[(64 * arg3 - arg2) + 160]:
                revert with 0, 50
            mem[(32 * idx) + (64 * arg3 - arg2) + 192] = mem[_2397 + 12 len 20]
            if idx >= mem[(32 * arg3 - arg2) + 128]:
                revert with 0, 50
            _2616 = mem[(32 * idx) + (32 * arg3 - arg2) + 160]
            if idx >= mem[(64 * arg3 - arg2) + 160]:
                revert with 0, 50
            _2653 = mem[(32 * idx) + (64 * arg3 - arg2) + 192]
            require ext_code.size(address(_1853))
            staticcall address(_1853).getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if mem[(32 * idx) + (32 * arg3 - arg2) + 172 len 20] < mem[(32 * idx) + (64 * arg3 - arg2) + 204 len 20]:
                _2840 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _2904 = mem[_2840]
                require mem[_2840] == mem[_2840 + 18 len 14]
                _2968 = mem[_2840 + 32]
                require mem[_2840 + 32] == mem[_2840 + 50 len 14]
                require mem[_2840 + 64] == mem[_2840 + 92 len 4]
                if idx >= mem[(98 * arg3) + (-98 * arg2) + 192]:
                    revert with 0, 50
                if address(_2616) == address(_2616):
                    mem[(32 * idx) + (98 * arg3) + (-98 * arg2) + 224] = mem[_2840 + 18 len 14]
                    if idx >= mem[(98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 224]:
                        revert with 0, 50
                    mem[(32 * idx) + (98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 256] = Mask(112, 0, _2968)
                else:
                    mem[(32 * idx) + (98 * arg3) + (-98 * arg2) + 224] = mem[_2840 + 50 len 14]
                    if idx >= mem[(98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 224]:
                        revert with 0, 50
                    mem[(32 * idx) + (98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 256] = Mask(112, 0, _2904)
            else:
                _2841 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _2905 = mem[_2841]
                require mem[_2841] == mem[_2841 + 18 len 14]
                _2969 = mem[_2841 + 32]
                require mem[_2841 + 32] == mem[_2841 + 50 len 14]
                require mem[_2841 + 64] == mem[_2841 + 92 len 4]
                if idx >= mem[(98 * arg3) + (-98 * arg2) + 192]:
                    revert with 0, 50
                if address(_2616) == address(_2653):
                    mem[(32 * idx) + (98 * arg3) + (-98 * arg2) + 224] = mem[_2841 + 18 len 14]
                    if idx >= mem[(98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 224]:
                        revert with 0, 50
                    mem[(32 * idx) + (98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 256] = Mask(112, 0, _2969)
                else:
                    mem[(32 * idx) + (98 * arg3) + (-98 * arg2) + 224] = mem[_2841 + 50 len 14]
                    if idx >= mem[(98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 224]:
                        revert with 0, 50
                    mem[(32 * idx) + (98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 256] = Mask(112, 0, _2905)
            if 1 > !s:
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + 1
            continue 
        _1757 = mem[64]
        mem[mem[64]] = 160
        _1821 = mem[96]
        mem[mem[64] + 160] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 192
        while idx < _1821:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_1757 + 32] = (32 * _1821) + 192
        _3357 = mem[(32 * arg3 - arg2) + 128]
        mem[_1757 + (32 * _1821) + 192] = mem[(32 * arg3 - arg2) + 128]
        idx = 0
        s = (32 * arg3 - arg2) + 160
        t = _1757 + (32 * _1821) + 224
        while idx < _3357:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_1757 + 64] = (32 * _1821) + (32 * _3357) + 224
        _3677 = mem[(64 * arg3 - arg2) + 160]
        mem[_1757 + (32 * _1821) + (32 * _3357) + 224] = mem[(64 * arg3 - arg2) + 160]
        idx = 0
        s = (64 * arg3 - arg2) + 192
        t = _1757 + (32 * _1821) + (32 * _3357) + 256
        while idx < _3677:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_1757 + 96] = (32 * _1821) + (32 * _3357) + (32 * _3677) + 256
        _3933 = mem[(98 * arg3) + (-98 * arg2) + 192]
        mem[_1757 + (32 * _1821) + (32 * _3357) + (32 * _3677) + 256] = mem[(98 * arg3) + (-98 * arg2) + 192]
        mem[_1757 + (32 * _1821) + (32 * _3357) + (32 * _3677) + 288 len 32 * _3933] = mem[(98 * arg3) + (-98 * arg2) + 224 len 32 * _3933]
        mem[_1757 + 128] = (32 * _1821) + (32 * _3357) + (32 * _3677) + (32 * _3933) + 288
        _4125 = mem[(98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 224]
        mem[_1757 + (32 * _1821) + (32 * _3357) + (32 * _3677) + (32 * _3933) + 288] = mem[(98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 224]
        mem[_1757 + (32 * _1821) + (32 * _3357) + (32 * _3677) + (32 * _3933) + 320 len 32 * _4125] = mem[(98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 256 len 32 * _4125]
        return memory
          from mem[64]
           len _1757 + (32 * _1821) + (32 * _3357) + (32 * _3677) + (32 * _3933) + (32 * _4125) + -mem[64] + 320
    mem[(64 * arg3 - arg2) + 192 len 32 * arg3 - arg2] = call.data[calldata.size len 32 * arg3 - arg2]
    if arg3 - arg2 > test266151307():
        revert with 0, 65
    mem[(98 * arg3) + (-98 * arg2) + 192] = arg3 - arg2
    if not arg3 - arg2:
        if arg3 - arg2 > test266151307():
            revert with 0, 65
        mem[(98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 224] = arg3 - arg2
        mem[64] = (98 * arg3) + (-98 * arg2) + (64 * arg3 - arg2) + 256
        if not arg3 - arg2:
            idx = 0
            s = arg2
            while idx < arg3 - arg2:
                mem[mem[64] + 4] = s
                require ext_code.size(arg1)
                staticcall arg1.allPairs(uint256 rg1) with:
                        gas gas_remaining wei
                       args s
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1790 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1854 = mem[_1790]
                require mem[_1790] == mem[_1790 + 12 len 20]
                if idx >= mem[96]:
                    revert with 0, 50
                mem[(32 * idx) + 128] = mem[_1790 + 12 len 20]
                require ext_code.size(address(_1854))
                staticcall address(_1854).token0() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2107 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_2107] == mem[_2107 + 12 len 20]
                if idx >= mem[(32 * arg3 - arg2) + 128]:
                    revert with 0, 50
                mem[(32 * idx) + (32 * arg3 - arg2) + 160] = mem[_2107 + 12 len 20]
                require ext_code.size(address(_1854))
                staticcall address(_1854).token1() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2398 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_2398] == mem[_2398 + 12 len 20]
                if idx >= mem[(64 * arg3 - arg2) + 160]:
                    revert with 0, 50
                mem[(32 * idx) + (64 * arg3 - arg2) + 192] = mem[_2398 + 12 len 20]
                if idx >= mem[(32 * arg3 - arg2) + 128]:
                    revert with 0, 50
                _2618 = mem[(32 * idx) + (32 * arg3 - arg2) + 160]
                if idx >= mem[(64 * arg3 - arg2) + 160]:
                    revert with 0, 50
                _2654 = mem[(32 * idx) + (64 * arg3 - arg2) + 192]
                require ext_code.size(address(_1854))
                staticcall address(_1854).getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if mem[(32 * idx) + (32 * arg3 - arg2) + 172 len 20] < mem[(32 * idx) + (64 * arg3 - arg2) + 204 len 20]:
                    _2842 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _2906 = mem[_2842]
                    require mem[_2842] == mem[_2842 + 18 len 14]
                    _2970 = mem[_2842 + 32]
                    require mem[_2842 + 32] == mem[_2842 + 50 len 14]
                    require mem[_2842 + 64] == mem[_2842 + 92 len 4]
                    if idx >= mem[(98 * arg3) + (-98 * arg2) + 192]:
                        revert with 0, 50
                    if address(_2618) == address(_2618):
                        mem[(32 * idx) + (98 * arg3) + (-98 * arg2) + 224] = mem[_2842 + 18 len 14]
                        if idx >= mem[(98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 224]:
                            revert with 0, 50
                        mem[(32 * idx) + (98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 256] = Mask(112, 0, _2970)
                    else:
                        mem[(32 * idx) + (98 * arg3) + (-98 * arg2) + 224] = mem[_2842 + 50 len 14]
                        if idx >= mem[(98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 224]:
                            revert with 0, 50
                        mem[(32 * idx) + (98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 256] = Mask(112, 0, _2906)
                else:
                    _2843 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _2907 = mem[_2843]
                    require mem[_2843] == mem[_2843 + 18 len 14]
                    _2971 = mem[_2843 + 32]
                    require mem[_2843 + 32] == mem[_2843 + 50 len 14]
                    require mem[_2843 + 64] == mem[_2843 + 92 len 4]
                    if idx >= mem[(98 * arg3) + (-98 * arg2) + 192]:
                        revert with 0, 50
                    if address(_2618) == address(_2654):
                        mem[(32 * idx) + (98 * arg3) + (-98 * arg2) + 224] = mem[_2843 + 18 len 14]
                        if idx >= mem[(98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 224]:
                            revert with 0, 50
                        mem[(32 * idx) + (98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 256] = Mask(112, 0, _2971)
                    else:
                        mem[(32 * idx) + (98 * arg3) + (-98 * arg2) + 224] = mem[_2843 + 50 len 14]
                        if idx >= mem[(98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 224]:
                            revert with 0, 50
                        mem[(32 * idx) + (98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 256] = Mask(112, 0, _2907)
                if 1 > !s:
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s + 1
                continue 
            _1758 = mem[64]
            mem[mem[64]] = 160
            _1822 = mem[96]
            mem[mem[64] + 160] = mem[96]
            idx = 0
            s = 128
            t = mem[64] + 192
            while idx < _1822:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_1758 + 32] = (32 * _1822) + 192
            _3358 = mem[(32 * arg3 - arg2) + 128]
            mem[_1758 + (32 * _1822) + 192] = mem[(32 * arg3 - arg2) + 128]
            idx = 0
            s = (32 * arg3 - arg2) + 160
            t = _1758 + (32 * _1822) + 224
            while idx < _3358:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_1758 + 64] = (32 * _1822) + (32 * _3358) + 224
            _3678 = mem[(64 * arg3 - arg2) + 160]
            mem[_1758 + (32 * _1822) + (32 * _3358) + 224] = mem[(64 * arg3 - arg2) + 160]
            idx = 0
            s = (64 * arg3 - arg2) + 192
            t = _1758 + (32 * _1822) + (32 * _3358) + 256
            while idx < _3678:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_1758 + 96] = (32 * _1822) + (32 * _3358) + (32 * _3678) + 256
            _3934 = mem[(98 * arg3) + (-98 * arg2) + 192]
            mem[_1758 + (32 * _1822) + (32 * _3358) + (32 * _3678) + 256] = mem[(98 * arg3) + (-98 * arg2) + 192]
            mem[_1758 + (32 * _1822) + (32 * _3358) + (32 * _3678) + 288 len 32 * _3934] = mem[(98 * arg3) + (-98 * arg2) + 224 len 32 * _3934]
            mem[_1758 + 128] = (32 * _1822) + (32 * _3358) + (32 * _3678) + (32 * _3934) + 288
            _4126 = mem[(98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 224]
            mem[_1758 + (32 * _1822) + (32 * _3358) + (32 * _3678) + (32 * _3934) + 288] = mem[(98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 224]
            mem[_1758 + (32 * _1822) + (32 * _3358) + (32 * _3678) + (32 * _3934) + 320 len 32 * _4126] = mem[(98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 256 len 32 * _4126]
            return memory
              from mem[64]
               len _1758 + (32 * _1822) + (32 * _3358) + (32 * _3678) + (32 * _3934) + (32 * _4126) + -mem[64] + 320
        mem[(98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 256 len 32 * arg3 - arg2] = call.data[calldata.size len 32 * arg3 - arg2]
        idx = 0
        s = arg2
        while idx < arg3 - arg2:
            mem[mem[64] + 4] = s
            require ext_code.size(arg1)
            staticcall arg1.allPairs(uint256 rg1) with:
                    gas gas_remaining wei
                   args s
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1791 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1855 = mem[_1791]
            require mem[_1791] == mem[_1791 + 12 len 20]
            if idx >= mem[96]:
                revert with 0, 50
            mem[(32 * idx) + 128] = mem[_1791 + 12 len 20]
            require ext_code.size(address(_1855))
            staticcall address(_1855).token0() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2109 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_2109] == mem[_2109 + 12 len 20]
            if idx >= mem[(32 * arg3 - arg2) + 128]:
                revert with 0, 50
            mem[(32 * idx) + (32 * arg3 - arg2) + 160] = mem[_2109 + 12 len 20]
            require ext_code.size(address(_1855))
            staticcall address(_1855).token1() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2399 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_2399] == mem[_2399 + 12 len 20]
            if idx >= mem[(64 * arg3 - arg2) + 160]:
                revert with 0, 50
            mem[(32 * idx) + (64 * arg3 - arg2) + 192] = mem[_2399 + 12 len 20]
            if idx >= mem[(32 * arg3 - arg2) + 128]:
                revert with 0, 50
            _2620 = mem[(32 * idx) + (32 * arg3 - arg2) + 160]
            if idx >= mem[(64 * arg3 - arg2) + 160]:
                revert with 0, 50
            _2655 = mem[(32 * idx) + (64 * arg3 - arg2) + 192]
            require ext_code.size(address(_1855))
            staticcall address(_1855).getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if mem[(32 * idx) + (32 * arg3 - arg2) + 172 len 20] < mem[(32 * idx) + (64 * arg3 - arg2) + 204 len 20]:
                _2844 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _2908 = mem[_2844]
                require mem[_2844] == mem[_2844 + 18 len 14]
                _2972 = mem[_2844 + 32]
                require mem[_2844 + 32] == mem[_2844 + 50 len 14]
                require mem[_2844 + 64] == mem[_2844 + 92 len 4]
                if idx >= mem[(98 * arg3) + (-98 * arg2) + 192]:
                    revert with 0, 50
                if address(_2620) == address(_2620):
                    mem[(32 * idx) + (98 * arg3) + (-98 * arg2) + 224] = mem[_2844 + 18 len 14]
                    if idx >= mem[(98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 224]:
                        revert with 0, 50
                    mem[(32 * idx) + (98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 256] = Mask(112, 0, _2972)
                else:
                    mem[(32 * idx) + (98 * arg3) + (-98 * arg2) + 224] = mem[_2844 + 50 len 14]
                    if idx >= mem[(98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 224]:
                        revert with 0, 50
                    mem[(32 * idx) + (98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 256] = Mask(112, 0, _2908)
            else:
                _2845 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _2909 = mem[_2845]
                require mem[_2845] == mem[_2845 + 18 len 14]
                _2973 = mem[_2845 + 32]
                require mem[_2845 + 32] == mem[_2845 + 50 len 14]
                require mem[_2845 + 64] == mem[_2845 + 92 len 4]
                if idx >= mem[(98 * arg3) + (-98 * arg2) + 192]:
                    revert with 0, 50
                if address(_2620) == address(_2655):
                    mem[(32 * idx) + (98 * arg3) + (-98 * arg2) + 224] = mem[_2845 + 18 len 14]
                    if idx >= mem[(98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 224]:
                        revert with 0, 50
                    mem[(32 * idx) + (98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 256] = Mask(112, 0, _2973)
                else:
                    mem[(32 * idx) + (98 * arg3) + (-98 * arg2) + 224] = mem[_2845 + 50 len 14]
                    if idx >= mem[(98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 224]:
                        revert with 0, 50
                    mem[(32 * idx) + (98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 256] = Mask(112, 0, _2909)
            if 1 > !s:
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + 1
            continue 
        _1759 = mem[64]
        mem[mem[64]] = 160
        _1823 = mem[96]
        mem[mem[64] + 160] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 192
        while idx < _1823:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_1759 + 32] = (32 * _1823) + 192
        _3359 = mem[(32 * arg3 - arg2) + 128]
        mem[_1759 + (32 * _1823) + 192] = mem[(32 * arg3 - arg2) + 128]
        idx = 0
        s = (32 * arg3 - arg2) + 160
        t = _1759 + (32 * _1823) + 224
        while idx < _3359:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_1759 + 64] = (32 * _1823) + (32 * _3359) + 224
        _3679 = mem[(64 * arg3 - arg2) + 160]
        mem[_1759 + (32 * _1823) + (32 * _3359) + 224] = mem[(64 * arg3 - arg2) + 160]
        idx = 0
        s = (64 * arg3 - arg2) + 192
        t = _1759 + (32 * _1823) + (32 * _3359) + 256
        while idx < _3679:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_1759 + 96] = (32 * _1823) + (32 * _3359) + (32 * _3679) + 256
        _3935 = mem[(98 * arg3) + (-98 * arg2) + 192]
        mem[_1759 + (32 * _1823) + (32 * _3359) + (32 * _3679) + 256] = mem[(98 * arg3) + (-98 * arg2) + 192]
        mem[_1759 + (32 * _1823) + (32 * _3359) + (32 * _3679) + 288 len 32 * _3935] = mem[(98 * arg3) + (-98 * arg2) + 224 len 32 * _3935]
        mem[_1759 + 128] = (32 * _1823) + (32 * _3359) + (32 * _3679) + (32 * _3935) + 288
        _4127 = mem[(98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 224]
        mem[_1759 + (32 * _1823) + (32 * _3359) + (32 * _3679) + (32 * _3935) + 288] = mem[(98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 224]
        mem[_1759 + (32 * _1823) + (32 * _3359) + (32 * _3679) + (32 * _3935) + 320 len 32 * _4127] = mem[(98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 256 len 32 * _4127]
        return memory
          from mem[64]
           len _1759 + (32 * _1823) + (32 * _3359) + (32 * _3679) + (32 * _3935) + (32 * _4127) + -mem[64] + 320
    mem[(98 * arg3) + (-98 * arg2) + 224 len 32 * arg3 - arg2] = call.data[calldata.size len 32 * arg3 - arg2]
    if arg3 - arg2 > test266151307():
        revert with 0, 65
    mem[(98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 224] = arg3 - arg2
    mem[64] = (98 * arg3) + (-98 * arg2) + (64 * arg3 - arg2) + 256
    if not arg3 - arg2:
        idx = 0
        s = arg2
        while idx < arg3 - arg2:
            mem[mem[64] + 4] = s
            require ext_code.size(arg1)
            staticcall arg1.allPairs(uint256 rg1) with:
                    gas gas_remaining wei
                   args s
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1792 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1856 = mem[_1792]
            require mem[_1792] == mem[_1792 + 12 len 20]
            if idx >= mem[96]:
                revert with 0, 50
            mem[(32 * idx) + 128] = mem[_1792 + 12 len 20]
            require ext_code.size(address(_1856))
            staticcall address(_1856).token0() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2111 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_2111] == mem[_2111 + 12 len 20]
            if idx >= mem[(32 * arg3 - arg2) + 128]:
                revert with 0, 50
            mem[(32 * idx) + (32 * arg3 - arg2) + 160] = mem[_2111 + 12 len 20]
            require ext_code.size(address(_1856))
            staticcall address(_1856).token1() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2400 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_2400] == mem[_2400 + 12 len 20]
            if idx >= mem[(64 * arg3 - arg2) + 160]:
                revert with 0, 50
            mem[(32 * idx) + (64 * arg3 - arg2) + 192] = mem[_2400 + 12 len 20]
            if idx >= mem[(32 * arg3 - arg2) + 128]:
                revert with 0, 50
            _2622 = mem[(32 * idx) + (32 * arg3 - arg2) + 160]
            if idx >= mem[(64 * arg3 - arg2) + 160]:
                revert with 0, 50
            _2656 = mem[(32 * idx) + (64 * arg3 - arg2) + 192]
            require ext_code.size(address(_1856))
            staticcall address(_1856).getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if mem[(32 * idx) + (32 * arg3 - arg2) + 172 len 20] < mem[(32 * idx) + (64 * arg3 - arg2) + 204 len 20]:
                _2846 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _2910 = mem[_2846]
                require mem[_2846] == mem[_2846 + 18 len 14]
                _2974 = mem[_2846 + 32]
                require mem[_2846 + 32] == mem[_2846 + 50 len 14]
                require mem[_2846 + 64] == mem[_2846 + 92 len 4]
                if idx >= mem[(98 * arg3) + (-98 * arg2) + 192]:
                    revert with 0, 50
                if address(_2622) == address(_2622):
                    mem[(32 * idx) + (98 * arg3) + (-98 * arg2) + 224] = mem[_2846 + 18 len 14]
                    if idx >= mem[(98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 224]:
                        revert with 0, 50
                    mem[(32 * idx) + (98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 256] = Mask(112, 0, _2974)
                else:
                    mem[(32 * idx) + (98 * arg3) + (-98 * arg2) + 224] = mem[_2846 + 50 len 14]
                    if idx >= mem[(98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 224]:
                        revert with 0, 50
                    mem[(32 * idx) + (98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 256] = Mask(112, 0, _2910)
            else:
                _2847 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _2911 = mem[_2847]
                require mem[_2847] == mem[_2847 + 18 len 14]
                _2975 = mem[_2847 + 32]
                require mem[_2847 + 32] == mem[_2847 + 50 len 14]
                require mem[_2847 + 64] == mem[_2847 + 92 len 4]
                if idx >= mem[(98 * arg3) + (-98 * arg2) + 192]:
                    revert with 0, 50
                if address(_2622) == address(_2656):
                    mem[(32 * idx) + (98 * arg3) + (-98 * arg2) + 224] = mem[_2847 + 18 len 14]
                    if idx >= mem[(98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 224]:
                        revert with 0, 50
                    mem[(32 * idx) + (98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 256] = Mask(112, 0, _2975)
                else:
                    mem[(32 * idx) + (98 * arg3) + (-98 * arg2) + 224] = mem[_2847 + 50 len 14]
                    if idx >= mem[(98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 224]:
                        revert with 0, 50
                    mem[(32 * idx) + (98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 256] = Mask(112, 0, _2911)
            if 1 > !s:
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + 1
            continue 
        _1760 = mem[64]
        mem[mem[64]] = 160
        _1824 = mem[96]
        mem[mem[64] + 160] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 192
        while idx < _1824:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_1760 + 32] = (32 * _1824) + 192
        _3360 = mem[(32 * arg3 - arg2) + 128]
        mem[_1760 + (32 * _1824) + 192] = mem[(32 * arg3 - arg2) + 128]
        idx = 0
        s = (32 * arg3 - arg2) + 160
        t = _1760 + (32 * _1824) + 224
        while idx < _3360:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_1760 + 64] = (32 * _1824) + (32 * _3360) + 224
        _3680 = mem[(64 * arg3 - arg2) + 160]
        mem[_1760 + (32 * _1824) + (32 * _3360) + 224] = mem[(64 * arg3 - arg2) + 160]
        idx = 0
        s = (64 * arg3 - arg2) + 192
        t = _1760 + (32 * _1824) + (32 * _3360) + 256
        while idx < _3680:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_1760 + 96] = (32 * _1824) + (32 * _3360) + (32 * _3680) + 256
        _3936 = mem[(98 * arg3) + (-98 * arg2) + 192]
        mem[_1760 + (32 * _1824) + (32 * _3360) + (32 * _3680) + 256] = mem[(98 * arg3) + (-98 * arg2) + 192]
        mem[_1760 + (32 * _1824) + (32 * _3360) + (32 * _3680) + 288 len 32 * _3936] = mem[(98 * arg3) + (-98 * arg2) + 224 len 32 * _3936]
        mem[_1760 + 128] = (32 * _1824) + (32 * _3360) + (32 * _3680) + (32 * _3936) + 288
        _4128 = mem[(98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 224]
        mem[_1760 + (32 * _1824) + (32 * _3360) + (32 * _3680) + (32 * _3936) + 288] = mem[(98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 224]
        mem[_1760 + (32 * _1824) + (32 * _3360) + (32 * _3680) + (32 * _3936) + 320 len 32 * _4128] = mem[(98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 256 len 32 * _4128]
        return memory
          from mem[64]
           len _1760 + (32 * _1824) + (32 * _3360) + (32 * _3680) + (32 * _3936) + (32 * _4128) + -mem[64] + 320
    mem[(98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 256 len 32 * arg3 - arg2] = call.data[calldata.size len 32 * arg3 - arg2]
    idx = 0
    s = arg2
    while idx < arg3 - arg2:
        mem[mem[64] + 4] = s
        require ext_code.size(arg1)
        staticcall arg1.allPairs(uint256 rg1) with:
                gas gas_remaining wei
               args s
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1793 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _1857 = mem[_1793]
        require mem[_1793] == mem[_1793 + 12 len 20]
        if idx >= mem[96]:
            revert with 0, 50
        mem[(32 * idx) + 128] = mem[_1793 + 12 len 20]
        require ext_code.size(address(_1857))
        staticcall address(_1857).token0() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _2113 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_2113] == mem[_2113 + 12 len 20]
        if idx >= mem[(32 * arg3 - arg2) + 128]:
            revert with 0, 50
        mem[(32 * idx) + (32 * arg3 - arg2) + 160] = mem[_2113 + 12 len 20]
        require ext_code.size(address(_1857))
        staticcall address(_1857).token1() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _2401 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_2401] == mem[_2401 + 12 len 20]
        if idx >= mem[(64 * arg3 - arg2) + 160]:
            revert with 0, 50
        mem[(32 * idx) + (64 * arg3 - arg2) + 192] = mem[_2401 + 12 len 20]
        if idx >= mem[(32 * arg3 - arg2) + 128]:
            revert with 0, 50
        _2624 = mem[(32 * idx) + (32 * arg3 - arg2) + 160]
        if idx >= mem[(64 * arg3 - arg2) + 160]:
            revert with 0, 50
        _2657 = mem[(32 * idx) + (64 * arg3 - arg2) + 192]
        require ext_code.size(address(_1857))
        staticcall address(_1857).getReserves() with:
                gas gas_remaining wei
        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if mem[(32 * idx) + (32 * arg3 - arg2) + 172 len 20] < mem[(32 * idx) + (64 * arg3 - arg2) + 204 len 20]:
            _2848 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _2912 = mem[_2848]
            require mem[_2848] == mem[_2848 + 18 len 14]
            _2976 = mem[_2848 + 32]
            require mem[_2848 + 32] == mem[_2848 + 50 len 14]
            require mem[_2848 + 64] == mem[_2848 + 92 len 4]
            if idx >= mem[(98 * arg3) + (-98 * arg2) + 192]:
                revert with 0, 50
            if address(_2624) == address(_2624):
                mem[(32 * idx) + (98 * arg3) + (-98 * arg2) + 224] = mem[_2848 + 18 len 14]
                if idx >= mem[(98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 224]:
                    revert with 0, 50
                mem[(32 * idx) + (98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 256] = Mask(112, 0, _2976)
            else:
                mem[(32 * idx) + (98 * arg3) + (-98 * arg2) + 224] = mem[_2848 + 50 len 14]
                if idx >= mem[(98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 224]:
                    revert with 0, 50
                mem[(32 * idx) + (98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 256] = Mask(112, 0, _2912)
        else:
            _2849 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _2913 = mem[_2849]
            require mem[_2849] == mem[_2849 + 18 len 14]
            _2977 = mem[_2849 + 32]
            require mem[_2849 + 32] == mem[_2849 + 50 len 14]
            require mem[_2849 + 64] == mem[_2849 + 92 len 4]
            if idx >= mem[(98 * arg3) + (-98 * arg2) + 192]:
                revert with 0, 50
            if address(_2624) == address(_2657):
                mem[(32 * idx) + (98 * arg3) + (-98 * arg2) + 224] = mem[_2849 + 18 len 14]
                if idx >= mem[(98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 224]:
                    revert with 0, 50
                mem[(32 * idx) + (98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 256] = Mask(112, 0, _2977)
            else:
                mem[(32 * idx) + (98 * arg3) + (-98 * arg2) + 224] = mem[_2849 + 50 len 14]
                if idx >= mem[(98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 224]:
                    revert with 0, 50
                mem[(32 * idx) + (98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 256] = Mask(112, 0, _2913)
        if 1 > !s:
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s + 1
        continue 
    _1761 = mem[64]
    mem[mem[64]] = 160
    _1825 = mem[96]
    mem[mem[64] + 160] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 192
    while idx < _1825:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[_1761 + 32] = (32 * _1825) + 192
    _3361 = mem[(32 * arg3 - arg2) + 128]
    mem[_1761 + (32 * _1825) + 192] = mem[(32 * arg3 - arg2) + 128]
    idx = 0
    s = (32 * arg3 - arg2) + 160
    t = _1761 + (32 * _1825) + 224
    while idx < _3361:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[_1761 + 64] = (32 * _1825) + (32 * _3361) + 224
    _3681 = mem[(64 * arg3 - arg2) + 160]
    mem[_1761 + (32 * _1825) + (32 * _3361) + 224] = mem[(64 * arg3 - arg2) + 160]
    idx = 0
    s = (64 * arg3 - arg2) + 192
    t = _1761 + (32 * _1825) + (32 * _3361) + 256
    while idx < _3681:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[_1761 + 96] = (32 * _1825) + (32 * _3361) + (32 * _3681) + 256
    _3937 = mem[(98 * arg3) + (-98 * arg2) + 192]
    mem[_1761 + (32 * _1825) + (32 * _3361) + (32 * _3681) + 256] = mem[(98 * arg3) + (-98 * arg2) + 192]
    mem[_1761 + (32 * _1825) + (32 * _3361) + (32 * _3681) + 288 len 32 * _3937] = mem[(98 * arg3) + (-98 * arg2) + 224 len 32 * _3937]
    mem[_1761 + 128] = (32 * _1825) + (32 * _3361) + (32 * _3681) + (32 * _3937) + 288
    _4129 = mem[(98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 224]
    mem[_1761 + (32 * _1825) + (32 * _3361) + (32 * _3681) + (32 * _3937) + 288] = mem[(98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 224]
    mem[_1761 + (32 * _1825) + (32 * _3361) + (32 * _3681) + (32 * _3937) + 320 len 32 * _4129] = mem[(98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 256 len 32 * _4129]
    return memory
      from mem[64]
       len _1761 + (32 * _1825) + (32 * _3361) + (32 * _3681) + (32 * _3937) + (32 * _4129) + -mem[64] + 320
}



}
