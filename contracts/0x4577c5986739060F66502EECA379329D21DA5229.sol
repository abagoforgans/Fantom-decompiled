contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function sub_74a552c9(?) payable {
    require calldata.size - 4 >= 160
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require ext_code.size(address(arg1))
    staticcall address(arg1).allTokenHashesLength() with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg4 and arg5 > -1 / arg4:
        revert with 0, 17
    if arg4 * arg5 > ext_call.return_data[0]:
        revert with 0, 'OUT_OF_RANGE'
    if arg5 > test266151307():
        revert with 0, 65
    mem[ceil32(return_data.size) + 96] = arg5
    if not arg5:
        if arg5 > test266151307():
            revert with 0, 65
        mem[ceil32(return_data.size) + (32 * arg5) + 128] = arg5
        mem[64] = ceil32(return_data.size) + (64 * arg5) + 160
        if not arg5:
            if arg4 and arg5 > -1 / arg4:
                revert with 0, 17
            if arg4 and arg5 > -1 / arg4:
                revert with 0, 17
            if arg4 * arg5 > !arg5:
                revert with 0, 17
            if var85002 >= (arg4 * arg5) + arg5:
                mem[ceil32(return_data.size) + (64 * arg5) + 160] = 64
                mem[ceil32(return_data.size) + (64 * arg5) + 224] = arg5
                mem[ceil32(return_data.size) + (64 * arg5) + 256 len 32 * arg5] = mem[ceil32(return_data.size) + 128 len 32 * arg5]
                mem[ceil32(return_data.size) + (64 * arg5) + 192] = (32 * arg5) + 96
                mem[ceil32(return_data.size) + (98 * arg5) + 256] = arg5
                mem[ceil32(return_data.size) + (98 * arg5) + 288 len 32 * arg5] = mem[ceil32(return_data.size) + (32 * arg5) + 160 len 32 * arg5]
                return memory
                  from ceil32(return_data.size) + (64 * arg5) + 160
                   len (194 * arg5) + 128
            idx = var85002
            while idx < ext_call.return_data[0]:
                mem[mem[64] + 4] = idx
                require ext_code.size(address(arg1))
                staticcall address(arg1).allTokenHashes(uint256 arg1) with:
                        gas gas_remaining wei
                       args idx
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1031 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1043 = mem[_1031]
                mem[mem[64] + 4] = mem[_1031]
                require ext_code.size(address(arg1))
                staticcall address(arg1).tokenType(uint256 arg1) with:
                        gas gas_remaining wei
                       args _1043
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    if idx == -1:
                        revert with 0, 17
                    if arg4 and arg5 > -1 / arg4:
                        revert with 0, 17
                    if arg4 * arg5 > !arg5:
                        revert with 0, 17
                    if idx + 1 < (arg4 * arg5) + arg5:
                        idx = idx + 1
                        continue 
                    _1098 = mem[64]
                    mem[mem[64]] = 64
                    _1102 = mem[ceil32(return_data.size) + 96]
                    mem[mem[64] + 64] = mem[ceil32(return_data.size) + 96]
                    idx = 0
                    s = ceil32(return_data.size) + 128
                    t = mem[64] + 96
                    while idx < _1102:
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_1098 + 32] = (32 * _1102) + 96
                    _1311 = mem[ceil32(return_data.size) + (32 * arg5) + 128]
                    mem[_1098 + (32 * _1102) + 96] = mem[ceil32(return_data.size) + (32 * arg5) + 128]
                    idx = 0
                    s = ceil32(return_data.size) + (32 * arg5) + 160
                    t = _1098 + (32 * _1102) + 128
                    while idx < _1311:
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    return memory
                      from mem[64]
                       len _1098 + (32 * _1102) + (32 * _1311) + -mem[64] + 128
                _1070 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1078 = mem[_1070]
                require mem[_1070] == mem[_1070 + 31 len 1]
                mem[mem[64] + 4] = address(arg3)
                mem[mem[64] + 36] = _1043
                require ext_code.size(address(arg2))
                staticcall address(arg2).balanceOf(address arg1, uint256 arg2) with:
                        gas gas_remaining wei
                       args address(arg3), _1043
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1090 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if not mem[_1090]:
                    if idx == -1:
                        revert with 0, 17
                    if arg4 and arg5 > -1 / arg4:
                        revert with 0, 17
                    if arg4 * arg5 > !arg5:
                        revert with 0, 17
                    if idx + 1 < (arg4 * arg5) + arg5:
                        idx = idx + 1
                        continue 
                    _1130 = mem[64]
                    mem[mem[64]] = 64
                    _1138 = mem[ceil32(return_data.size) + 96]
                    mem[mem[64] + 64] = mem[ceil32(return_data.size) + 96]
                    idx = 0
                    s = ceil32(return_data.size) + 128
                    t = mem[64] + 96
                    while idx < _1138:
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_1130 + 32] = (32 * _1138) + 96
                    _1312 = mem[ceil32(return_data.size) + (32 * arg5) + 128]
                    mem[_1130 + (32 * _1138) + 96] = mem[ceil32(return_data.size) + (32 * arg5) + 128]
                    idx = 0
                    s = ceil32(return_data.size) + (32 * arg5) + 160
                    t = _1130 + (32 * _1138) + 128
                    while idx < _1312:
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    return memory
                      from mem[64]
                       len _1130 + (32 * _1138) + (32 * _1312) + -mem[64] + 128
                if not _1043:
                    if idx == -1:
                        revert with 0, 17
                    if arg4 and arg5 > -1 / arg4:
                        revert with 0, 17
                    if arg4 * arg5 > !arg5:
                        revert with 0, 17
                    if idx + 1 < (arg4 * arg5) + arg5:
                        idx = idx + 1
                        continue 
                    _1134 = mem[64]
                    mem[mem[64]] = 64
                    _1146 = mem[ceil32(return_data.size) + 96]
                    mem[mem[64] + 64] = mem[ceil32(return_data.size) + 96]
                    idx = 0
                    s = ceil32(return_data.size) + 128
                    t = mem[64] + 96
                    while idx < _1146:
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_1134 + 32] = (32 * _1146) + 96
                    _1313 = mem[ceil32(return_data.size) + (32 * arg5) + 128]
                    mem[_1134 + (32 * _1146) + 96] = mem[ceil32(return_data.size) + (32 * arg5) + 128]
                    idx = 0
                    s = ceil32(return_data.size) + (32 * arg5) + 160
                    t = _1134 + (32 * _1146) + 128
                    while idx < _1313:
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    return memory
                      from mem[64]
                       len _1134 + (32 * _1146) + (32 * _1313) + -mem[64] + 128
                if 1 == _1043:
                    if idx == -1:
                        revert with 0, 17
                    if arg4 and arg5 > -1 / arg4:
                        revert with 0, 17
                    if arg4 * arg5 > !arg5:
                        revert with 0, 17
                    if idx + 1 < (arg4 * arg5) + arg5:
                        idx = idx + 1
                        continue 
                    _1139 = mem[64]
                    mem[mem[64]] = 64
                    _1152 = mem[ceil32(return_data.size) + 96]
                    mem[mem[64] + 64] = mem[ceil32(return_data.size) + 96]
                    idx = 0
                    s = ceil32(return_data.size) + 128
                    t = mem[64] + 96
                    while idx < _1152:
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_1139 + 32] = (32 * _1152) + 96
                    _1317 = mem[ceil32(return_data.size) + (32 * arg5) + 128]
                    mem[_1139 + (32 * _1152) + 96] = mem[ceil32(return_data.size) + (32 * arg5) + 128]
                    idx = 0
                    s = ceil32(return_data.size) + (32 * arg5) + 160
                    t = _1139 + (32 * _1152) + 128
                    while idx < _1317:
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    return memory
                      from mem[64]
                       len _1139 + (32 * _1152) + (32 * _1317) + -mem[64] + 128
                if 1 == uint8(_1078):
                    if 0 >= mem[ceil32(return_data.size) + 96]:
                        revert with 0, 50
                    mem[ceil32(return_data.size) + 128] = _1043
                    if idx == -1:
                        revert with 0, 17
                    if arg4 and arg5 > -1 / arg4:
                        revert with 0, 17
                    if arg4 * arg5 > !arg5:
                        revert with 0, 17
                    if idx + 1 < (arg4 * arg5) + arg5:
                        idx = idx + 1
                        continue 
                    _1184 = mem[64]
                    mem[mem[64]] = 64
                    _1208 = mem[ceil32(return_data.size) + 96]
                    mem[mem[64] + 64] = mem[ceil32(return_data.size) + 96]
                    idx = 0
                    s = ceil32(return_data.size) + 128
                    t = mem[64] + 96
                    while idx < _1208:
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_1184 + 32] = (32 * _1208) + 96
                    _1316 = mem[ceil32(return_data.size) + (32 * arg5) + 128]
                    mem[_1184 + (32 * _1208) + 96] = mem[ceil32(return_data.size) + (32 * arg5) + 128]
                    idx = 0
                    s = ceil32(return_data.size) + (32 * arg5) + 160
                    t = _1184 + (32 * _1208) + 128
                    while idx < _1316:
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    return memory
                      from mem[64]
                       len _1184 + (32 * _1208) + (32 * _1316) + -mem[64] + 128
                if uint8(_1078) != 2:
                    if idx == -1:
                        revert with 0, 17
                    if arg4 and arg5 > -1 / arg4:
                        revert with 0, 17
                    if arg4 * arg5 > !arg5:
                        revert with 0, 17
                    if idx + 1 < (arg4 * arg5) + arg5:
                        idx = idx + 1
                        continue 
                    _1151 = mem[64]
                    mem[mem[64]] = 64
                    _1167 = mem[ceil32(return_data.size) + 96]
                    mem[mem[64] + 64] = mem[ceil32(return_data.size) + 96]
                    idx = 0
                    s = ceil32(return_data.size) + 128
                    t = mem[64] + 96
                    while idx < _1167:
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_1151 + 32] = (32 * _1167) + 96
                    _1314 = mem[ceil32(return_data.size) + (32 * arg5) + 128]
                    mem[_1151 + (32 * _1167) + 96] = mem[ceil32(return_data.size) + (32 * arg5) + 128]
                    idx = 0
                    s = ceil32(return_data.size) + (32 * arg5) + 160
                    t = _1151 + (32 * _1167) + 128
                    while idx < _1314:
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    return memory
                      from mem[64]
                       len _1151 + (32 * _1167) + (32 * _1314) + -mem[64] + 128
                if 0 >= mem[ceil32(return_data.size) + (32 * arg5) + 128]:
                    revert with 0, 50
                mem[ceil32(return_data.size) + (32 * arg5) + 160] = _1043
                if idx == -1:
                    revert with 0, 17
                if arg4 and arg5 > -1 / arg4:
                    revert with 0, 17
                if arg4 * arg5 > !arg5:
                    revert with 0, 17
                if idx + 1 < (arg4 * arg5) + arg5:
                    idx = idx + 1
                    continue 
                _1199 = mem[64]
                mem[mem[64]] = 64
                _1223 = mem[ceil32(return_data.size) + 96]
                mem[mem[64] + 64] = mem[ceil32(return_data.size) + 96]
                idx = 0
                s = ceil32(return_data.size) + 128
                t = mem[64] + 96
                while idx < _1223:
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_1199 + 32] = (32 * _1223) + 96
                _1315 = mem[ceil32(return_data.size) + (32 * arg5) + 128]
                mem[_1199 + (32 * _1223) + 96] = mem[ceil32(return_data.size) + (32 * arg5) + 128]
                idx = 0
                s = ceil32(return_data.size) + (32 * arg5) + 160
                t = _1199 + (32 * _1223) + 128
                while idx < _1315:
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                return memory
                  from mem[64]
                   len _1199 + (32 * _1223) + (32 * _1315) + -mem[64] + 128
            _1020 = mem[64]
            mem[mem[64]] = 64
            _1032 = mem[ceil32(return_data.size) + 96]
            mem[mem[64] + 64] = mem[ceil32(return_data.size) + 96]
            mem[mem[64] + 96 len 32 * _1032] = mem[ceil32(return_data.size) + 128 len 32 * _1032]
            mem[mem[64] + 32] = (32 * _1032) + 96
            _1318 = mem[ceil32(return_data.size) + (32 * arg5) + 128]
            mem[_1020 + (32 * _1032) + 96] = mem[ceil32(return_data.size) + (32 * arg5) + 128]
            mem[_1020 + (32 * _1032) + 128 len 32 * _1318] = mem[ceil32(return_data.size) + (32 * arg5) + 160 len 32 * _1318]
            return memory
              from mem[64]
               len _1020 + (32 * _1032) + (32 * _1318) + -mem[64] + 128
        mem[ceil32(return_data.size) + (32 * arg5) + 160 len 32 * arg5] = call.data[calldata.size len 32 * arg5]
        if arg4 and arg5 > -1 / arg4:
            revert with 0, 17
        if arg4 and arg5 > -1 / arg4:
            revert with 0, 17
        if arg4 * arg5 > !arg5:
            revert with 0, 17
        if var86002 >= (arg4 * arg5) + arg5:
            mem[ceil32(return_data.size) + (64 * arg5) + 160] = 64
            mem[ceil32(return_data.size) + (64 * arg5) + 224] = arg5
            mem[ceil32(return_data.size) + (64 * arg5) + 256 len 32 * arg5] = mem[ceil32(return_data.size) + 128 len 32 * arg5]
            mem[ceil32(return_data.size) + (64 * arg5) + 192] = (32 * arg5) + 96
            mem[ceil32(return_data.size) + (98 * arg5) + 256] = arg5
            mem[ceil32(return_data.size) + (98 * arg5) + 288 len 32 * arg5] = call.data[calldata.size len 32 * arg5]
            return memory
              from ceil32(return_data.size) + (64 * arg5) + 160
               len (194 * arg5) + 128
        idx = var86002
        while idx < ext_call.return_data[0]:
            mem[mem[64] + 4] = idx
            require ext_code.size(address(arg1))
            staticcall address(arg1).allTokenHashes(uint256 arg1) with:
                    gas gas_remaining wei
                   args idx
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1034 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1046 = mem[_1034]
            mem[mem[64] + 4] = mem[_1034]
            require ext_code.size(address(arg1))
            staticcall address(arg1).tokenType(uint256 arg1) with:
                    gas gas_remaining wei
                   args _1046
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                if idx == -1:
                    revert with 0, 17
                if arg4 and arg5 > -1 / arg4:
                    revert with 0, 17
                if arg4 * arg5 > !arg5:
                    revert with 0, 17
                if idx + 1 < (arg4 * arg5) + arg5:
                    idx = idx + 1
                    continue 
                _1099 = mem[64]
                mem[mem[64]] = 64
                _1103 = mem[ceil32(return_data.size) + 96]
                mem[mem[64] + 64] = mem[ceil32(return_data.size) + 96]
                idx = 0
                s = ceil32(return_data.size) + 128
                t = mem[64] + 96
                while idx < _1103:
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_1099 + 32] = (32 * _1103) + 96
                _1320 = mem[ceil32(return_data.size) + (32 * arg5) + 128]
                mem[_1099 + (32 * _1103) + 96] = mem[ceil32(return_data.size) + (32 * arg5) + 128]
                idx = 0
                s = ceil32(return_data.size) + (32 * arg5) + 160
                t = _1099 + (32 * _1103) + 128
                while idx < _1320:
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                return memory
                  from mem[64]
                   len _1099 + (32 * _1103) + (32 * _1320) + -mem[64] + 128
            _1071 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1079 = mem[_1071]
            require mem[_1071] == mem[_1071 + 31 len 1]
            mem[mem[64] + 4] = address(arg3)
            mem[mem[64] + 36] = _1046
            require ext_code.size(address(arg2))
            staticcall address(arg2).balanceOf(address arg1, uint256 arg2) with:
                    gas gas_remaining wei
                   args address(arg3), _1046
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1091 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if not mem[_1091]:
                if idx == -1:
                    revert with 0, 17
                if arg4 and arg5 > -1 / arg4:
                    revert with 0, 17
                if arg4 * arg5 > !arg5:
                    revert with 0, 17
                if idx + 1 < (arg4 * arg5) + arg5:
                    idx = idx + 1
                    continue 
                _1131 = mem[64]
                mem[mem[64]] = 64
                _1140 = mem[ceil32(return_data.size) + 96]
                mem[mem[64] + 64] = mem[ceil32(return_data.size) + 96]
                idx = 0
                s = ceil32(return_data.size) + 128
                t = mem[64] + 96
                while idx < _1140:
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_1131 + 32] = (32 * _1140) + 96
                _1321 = mem[ceil32(return_data.size) + (32 * arg5) + 128]
                mem[_1131 + (32 * _1140) + 96] = mem[ceil32(return_data.size) + (32 * arg5) + 128]
                idx = 0
                s = ceil32(return_data.size) + (32 * arg5) + 160
                t = _1131 + (32 * _1140) + 128
                while idx < _1321:
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                return memory
                  from mem[64]
                   len _1131 + (32 * _1140) + (32 * _1321) + -mem[64] + 128
            if not _1046:
                if idx == -1:
                    revert with 0, 17
                if arg4 and arg5 > -1 / arg4:
                    revert with 0, 17
                if arg4 * arg5 > !arg5:
                    revert with 0, 17
                if idx + 1 < (arg4 * arg5) + arg5:
                    idx = idx + 1
                    continue 
                _1135 = mem[64]
                mem[mem[64]] = 64
                _1147 = mem[ceil32(return_data.size) + 96]
                mem[mem[64] + 64] = mem[ceil32(return_data.size) + 96]
                idx = 0
                s = ceil32(return_data.size) + 128
                t = mem[64] + 96
                while idx < _1147:
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_1135 + 32] = (32 * _1147) + 96
                _1322 = mem[ceil32(return_data.size) + (32 * arg5) + 128]
                mem[_1135 + (32 * _1147) + 96] = mem[ceil32(return_data.size) + (32 * arg5) + 128]
                idx = 0
                s = ceil32(return_data.size) + (32 * arg5) + 160
                t = _1135 + (32 * _1147) + 128
                while idx < _1322:
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                return memory
                  from mem[64]
                   len _1135 + (32 * _1147) + (32 * _1322) + -mem[64] + 128
            if 1 == _1046:
                if idx == -1:
                    revert with 0, 17
                if arg4 and arg5 > -1 / arg4:
                    revert with 0, 17
                if arg4 * arg5 > !arg5:
                    revert with 0, 17
                if idx + 1 < (arg4 * arg5) + arg5:
                    idx = idx + 1
                    continue 
                _1141 = mem[64]
                mem[mem[64]] = 64
                _1155 = mem[ceil32(return_data.size) + 96]
                mem[mem[64] + 64] = mem[ceil32(return_data.size) + 96]
                idx = 0
                s = ceil32(return_data.size) + 128
                t = mem[64] + 96
                while idx < _1155:
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_1141 + 32] = (32 * _1155) + 96
                _1326 = mem[ceil32(return_data.size) + (32 * arg5) + 128]
                mem[_1141 + (32 * _1155) + 96] = mem[ceil32(return_data.size) + (32 * arg5) + 128]
                idx = 0
                s = ceil32(return_data.size) + (32 * arg5) + 160
                t = _1141 + (32 * _1155) + 128
                while idx < _1326:
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                return memory
                  from mem[64]
                   len _1141 + (32 * _1155) + (32 * _1326) + -mem[64] + 128
            if 1 == uint8(_1079):
                if 0 >= mem[ceil32(return_data.size) + 96]:
                    revert with 0, 50
                mem[ceil32(return_data.size) + 128] = _1046
                if idx == -1:
                    revert with 0, 17
                if arg4 and arg5 > -1 / arg4:
                    revert with 0, 17
                if arg4 * arg5 > !arg5:
                    revert with 0, 17
                if idx + 1 < (arg4 * arg5) + arg5:
                    idx = idx + 1
                    continue 
                _1188 = mem[64]
                mem[mem[64]] = 64
                _1212 = mem[ceil32(return_data.size) + 96]
                mem[mem[64] + 64] = mem[ceil32(return_data.size) + 96]
                idx = 0
                s = ceil32(return_data.size) + 128
                t = mem[64] + 96
                while idx < _1212:
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_1188 + 32] = (32 * _1212) + 96
                _1325 = mem[ceil32(return_data.size) + (32 * arg5) + 128]
                mem[_1188 + (32 * _1212) + 96] = mem[ceil32(return_data.size) + (32 * arg5) + 128]
                idx = 0
                s = ceil32(return_data.size) + (32 * arg5) + 160
                t = _1188 + (32 * _1212) + 128
                while idx < _1325:
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                return memory
                  from mem[64]
                   len _1188 + (32 * _1212) + (32 * _1325) + -mem[64] + 128
            if uint8(_1079) != 2:
                if idx == -1:
                    revert with 0, 17
                if arg4 and arg5 > -1 / arg4:
                    revert with 0, 17
                if arg4 * arg5 > !arg5:
                    revert with 0, 17
                if idx + 1 < (arg4 * arg5) + arg5:
                    idx = idx + 1
                    continue 
                _1154 = mem[64]
                mem[mem[64]] = 64
                _1170 = mem[ceil32(return_data.size) + 96]
                mem[mem[64] + 64] = mem[ceil32(return_data.size) + 96]
                idx = 0
                s = ceil32(return_data.size) + 128
                t = mem[64] + 96
                while idx < _1170:
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_1154 + 32] = (32 * _1170) + 96
                _1323 = mem[ceil32(return_data.size) + (32 * arg5) + 128]
                mem[_1154 + (32 * _1170) + 96] = mem[ceil32(return_data.size) + (32 * arg5) + 128]
                idx = 0
                s = ceil32(return_data.size) + (32 * arg5) + 160
                t = _1154 + (32 * _1170) + 128
                while idx < _1323:
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                return memory
                  from mem[64]
                   len _1154 + (32 * _1170) + (32 * _1323) + -mem[64] + 128
            if 0 >= mem[ceil32(return_data.size) + (32 * arg5) + 128]:
                revert with 0, 50
            mem[ceil32(return_data.size) + (32 * arg5) + 160] = _1046
            if idx == -1:
                revert with 0, 17
            if arg4 and arg5 > -1 / arg4:
                revert with 0, 17
            if arg4 * arg5 > !arg5:
                revert with 0, 17
            if idx + 1 < (arg4 * arg5) + arg5:
                idx = idx + 1
                continue 
            _1201 = mem[64]
            mem[mem[64]] = 64
            _1225 = mem[ceil32(return_data.size) + 96]
            mem[mem[64] + 64] = mem[ceil32(return_data.size) + 96]
            idx = 0
            s = ceil32(return_data.size) + 128
            t = mem[64] + 96
            while idx < _1225:
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_1201 + 32] = (32 * _1225) + 96
            _1324 = mem[ceil32(return_data.size) + (32 * arg5) + 128]
            mem[_1201 + (32 * _1225) + 96] = mem[ceil32(return_data.size) + (32 * arg5) + 128]
            idx = 0
            s = ceil32(return_data.size) + (32 * arg5) + 160
            t = _1201 + (32 * _1225) + 128
            while idx < _1324:
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return memory
              from mem[64]
               len _1201 + (32 * _1225) + (32 * _1324) + -mem[64] + 128
        _1023 = mem[64]
        mem[mem[64]] = 64
        _1035 = mem[ceil32(return_data.size) + 96]
        mem[mem[64] + 64] = mem[ceil32(return_data.size) + 96]
        mem[mem[64] + 96 len 32 * _1035] = mem[ceil32(return_data.size) + 128 len 32 * _1035]
        mem[mem[64] + 32] = (32 * _1035) + 96
        _1327 = mem[ceil32(return_data.size) + (32 * arg5) + 128]
        mem[_1023 + (32 * _1035) + 96] = mem[ceil32(return_data.size) + (32 * arg5) + 128]
        mem[_1023 + (32 * _1035) + 128 len 32 * _1327] = mem[ceil32(return_data.size) + (32 * arg5) + 160 len 32 * _1327]
        return memory
          from mem[64]
           len _1023 + (32 * _1035) + (32 * _1327) + -mem[64] + 128
    mem[ceil32(return_data.size) + 128 len 32 * arg5] = call.data[calldata.size len 32 * arg5]
    if arg5 > test266151307():
        revert with 0, 65
    mem[ceil32(return_data.size) + (32 * arg5) + 128] = arg5
    mem[64] = ceil32(return_data.size) + (64 * arg5) + 160
    if not arg5:
        if arg4 and arg5 > -1 / arg4:
            revert with 0, 17
        if arg4 and arg5 > -1 / arg4:
            revert with 0, 17
        if arg4 * arg5 > !arg5:
            revert with 0, 17
        if var86002 >= (arg4 * arg5) + arg5:
            mem[ceil32(return_data.size) + (64 * arg5) + 160] = 64
            mem[ceil32(return_data.size) + (64 * arg5) + 224] = arg5
            mem[ceil32(return_data.size) + (64 * arg5) + 256 len 32 * arg5] = call.data[calldata.size len 32 * arg5]
            mem[ceil32(return_data.size) + (64 * arg5) + 192] = (32 * arg5) + 96
            mem[ceil32(return_data.size) + (98 * arg5) + 256] = arg5
            mem[ceil32(return_data.size) + (98 * arg5) + 288 len 32 * arg5] = mem[ceil32(return_data.size) + (32 * arg5) + 160 len 32 * arg5]
            return memory
              from ceil32(return_data.size) + (64 * arg5) + 160
               len (194 * arg5) + 128
        idx = var86002
        while idx < ext_call.return_data[0]:
            mem[mem[64] + 4] = idx
            require ext_code.size(address(arg1))
            staticcall address(arg1).allTokenHashes(uint256 arg1) with:
                    gas gas_remaining wei
                   args idx
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1037 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1049 = mem[_1037]
            mem[mem[64] + 4] = mem[_1037]
            require ext_code.size(address(arg1))
            staticcall address(arg1).tokenType(uint256 arg1) with:
                    gas gas_remaining wei
                   args _1049
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                if idx == -1:
                    revert with 0, 17
                if arg4 and arg5 > -1 / arg4:
                    revert with 0, 17
                if arg4 * arg5 > !arg5:
                    revert with 0, 17
                if idx + 1 < (arg4 * arg5) + arg5:
                    idx = idx + 1
                    continue 
                _1100 = mem[64]
                mem[mem[64]] = 64
                _1104 = mem[ceil32(return_data.size) + 96]
                mem[mem[64] + 64] = mem[ceil32(return_data.size) + 96]
                idx = 0
                s = ceil32(return_data.size) + 128
                t = mem[64] + 96
                while idx < _1104:
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_1100 + 32] = (32 * _1104) + 96
                _1329 = mem[ceil32(return_data.size) + (32 * arg5) + 128]
                mem[_1100 + (32 * _1104) + 96] = mem[ceil32(return_data.size) + (32 * arg5) + 128]
                idx = 0
                s = ceil32(return_data.size) + (32 * arg5) + 160
                t = _1100 + (32 * _1104) + 128
                while idx < _1329:
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                return memory
                  from mem[64]
                   len _1100 + (32 * _1104) + (32 * _1329) + -mem[64] + 128
            _1072 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1080 = mem[_1072]
            require mem[_1072] == mem[_1072 + 31 len 1]
            mem[mem[64] + 4] = address(arg3)
            mem[mem[64] + 36] = _1049
            require ext_code.size(address(arg2))
            staticcall address(arg2).balanceOf(address arg1, uint256 arg2) with:
                    gas gas_remaining wei
                   args address(arg3), _1049
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1092 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if not mem[_1092]:
                if idx == -1:
                    revert with 0, 17
                if arg4 and arg5 > -1 / arg4:
                    revert with 0, 17
                if arg4 * arg5 > !arg5:
                    revert with 0, 17
                if idx + 1 < (arg4 * arg5) + arg5:
                    idx = idx + 1
                    continue 
                _1132 = mem[64]
                mem[mem[64]] = 64
                _1142 = mem[ceil32(return_data.size) + 96]
                mem[mem[64] + 64] = mem[ceil32(return_data.size) + 96]
                idx = 0
                s = ceil32(return_data.size) + 128
                t = mem[64] + 96
                while idx < _1142:
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_1132 + 32] = (32 * _1142) + 96
                _1330 = mem[ceil32(return_data.size) + (32 * arg5) + 128]
                mem[_1132 + (32 * _1142) + 96] = mem[ceil32(return_data.size) + (32 * arg5) + 128]
                idx = 0
                s = ceil32(return_data.size) + (32 * arg5) + 160
                t = _1132 + (32 * _1142) + 128
                while idx < _1330:
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                return memory
                  from mem[64]
                   len _1132 + (32 * _1142) + (32 * _1330) + -mem[64] + 128
            if not _1049:
                if idx == -1:
                    revert with 0, 17
                if arg4 and arg5 > -1 / arg4:
                    revert with 0, 17
                if arg4 * arg5 > !arg5:
                    revert with 0, 17
                if idx + 1 < (arg4 * arg5) + arg5:
                    idx = idx + 1
                    continue 
                _1136 = mem[64]
                mem[mem[64]] = 64
                _1148 = mem[ceil32(return_data.size) + 96]
                mem[mem[64] + 64] = mem[ceil32(return_data.size) + 96]
                idx = 0
                s = ceil32(return_data.size) + 128
                t = mem[64] + 96
                while idx < _1148:
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_1136 + 32] = (32 * _1148) + 96
                _1331 = mem[ceil32(return_data.size) + (32 * arg5) + 128]
                mem[_1136 + (32 * _1148) + 96] = mem[ceil32(return_data.size) + (32 * arg5) + 128]
                idx = 0
                s = ceil32(return_data.size) + (32 * arg5) + 160
                t = _1136 + (32 * _1148) + 128
                while idx < _1331:
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                return memory
                  from mem[64]
                   len _1136 + (32 * _1148) + (32 * _1331) + -mem[64] + 128
            if 1 == _1049:
                if idx == -1:
                    revert with 0, 17
                if arg4 and arg5 > -1 / arg4:
                    revert with 0, 17
                if arg4 * arg5 > !arg5:
                    revert with 0, 17
                if idx + 1 < (arg4 * arg5) + arg5:
                    idx = idx + 1
                    continue 
                _1143 = mem[64]
                mem[mem[64]] = 64
                _1158 = mem[ceil32(return_data.size) + 96]
                mem[mem[64] + 64] = mem[ceil32(return_data.size) + 96]
                idx = 0
                s = ceil32(return_data.size) + 128
                t = mem[64] + 96
                while idx < _1158:
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_1143 + 32] = (32 * _1158) + 96
                _1335 = mem[ceil32(return_data.size) + (32 * arg5) + 128]
                mem[_1143 + (32 * _1158) + 96] = mem[ceil32(return_data.size) + (32 * arg5) + 128]
                idx = 0
                s = ceil32(return_data.size) + (32 * arg5) + 160
                t = _1143 + (32 * _1158) + 128
                while idx < _1335:
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                return memory
                  from mem[64]
                   len _1143 + (32 * _1158) + (32 * _1335) + -mem[64] + 128
            if 1 == uint8(_1080):
                if 0 >= mem[ceil32(return_data.size) + 96]:
                    revert with 0, 50
                mem[ceil32(return_data.size) + 128] = _1049
                if idx == -1:
                    revert with 0, 17
                if arg4 and arg5 > -1 / arg4:
                    revert with 0, 17
                if arg4 * arg5 > !arg5:
                    revert with 0, 17
                if idx + 1 < (arg4 * arg5) + arg5:
                    idx = idx + 1
                    continue 
                _1192 = mem[64]
                mem[mem[64]] = 64
                _1216 = mem[ceil32(return_data.size) + 96]
                mem[mem[64] + 64] = mem[ceil32(return_data.size) + 96]
                idx = 0
                s = ceil32(return_data.size) + 128
                t = mem[64] + 96
                while idx < _1216:
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_1192 + 32] = (32 * _1216) + 96
                _1334 = mem[ceil32(return_data.size) + (32 * arg5) + 128]
                mem[_1192 + (32 * _1216) + 96] = mem[ceil32(return_data.size) + (32 * arg5) + 128]
                idx = 0
                s = ceil32(return_data.size) + (32 * arg5) + 160
                t = _1192 + (32 * _1216) + 128
                while idx < _1334:
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                return memory
                  from mem[64]
                   len _1192 + (32 * _1216) + (32 * _1334) + -mem[64] + 128
            if uint8(_1080) != 2:
                if idx == -1:
                    revert with 0, 17
                if arg4 and arg5 > -1 / arg4:
                    revert with 0, 17
                if arg4 * arg5 > !arg5:
                    revert with 0, 17
                if idx + 1 < (arg4 * arg5) + arg5:
                    idx = idx + 1
                    continue 
                _1157 = mem[64]
                mem[mem[64]] = 64
                _1173 = mem[ceil32(return_data.size) + 96]
                mem[mem[64] + 64] = mem[ceil32(return_data.size) + 96]
                idx = 0
                s = ceil32(return_data.size) + 128
                t = mem[64] + 96
                while idx < _1173:
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_1157 + 32] = (32 * _1173) + 96
                _1332 = mem[ceil32(return_data.size) + (32 * arg5) + 128]
                mem[_1157 + (32 * _1173) + 96] = mem[ceil32(return_data.size) + (32 * arg5) + 128]
                idx = 0
                s = ceil32(return_data.size) + (32 * arg5) + 160
                t = _1157 + (32 * _1173) + 128
                while idx < _1332:
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                return memory
                  from mem[64]
                   len _1157 + (32 * _1173) + (32 * _1332) + -mem[64] + 128
            if 0 >= mem[ceil32(return_data.size) + (32 * arg5) + 128]:
                revert with 0, 50
            mem[ceil32(return_data.size) + (32 * arg5) + 160] = _1049
            if idx == -1:
                revert with 0, 17
            if arg4 and arg5 > -1 / arg4:
                revert with 0, 17
            if arg4 * arg5 > !arg5:
                revert with 0, 17
            if idx + 1 < (arg4 * arg5) + arg5:
                idx = idx + 1
                continue 
            _1203 = mem[64]
            mem[mem[64]] = 64
            _1227 = mem[ceil32(return_data.size) + 96]
            mem[mem[64] + 64] = mem[ceil32(return_data.size) + 96]
            idx = 0
            s = ceil32(return_data.size) + 128
            t = mem[64] + 96
            while idx < _1227:
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_1203 + 32] = (32 * _1227) + 96
            _1333 = mem[ceil32(return_data.size) + (32 * arg5) + 128]
            mem[_1203 + (32 * _1227) + 96] = mem[ceil32(return_data.size) + (32 * arg5) + 128]
            idx = 0
            s = ceil32(return_data.size) + (32 * arg5) + 160
            t = _1203 + (32 * _1227) + 128
            while idx < _1333:
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return memory
              from mem[64]
               len _1203 + (32 * _1227) + (32 * _1333) + -mem[64] + 128
        _1026 = mem[64]
        mem[mem[64]] = 64
        _1038 = mem[ceil32(return_data.size) + 96]
        mem[mem[64] + 64] = mem[ceil32(return_data.size) + 96]
        mem[mem[64] + 96 len 32 * _1038] = mem[ceil32(return_data.size) + 128 len 32 * _1038]
        mem[mem[64] + 32] = (32 * _1038) + 96
        _1336 = mem[ceil32(return_data.size) + (32 * arg5) + 128]
        mem[_1026 + (32 * _1038) + 96] = mem[ceil32(return_data.size) + (32 * arg5) + 128]
        mem[_1026 + (32 * _1038) + 128 len 32 * _1336] = mem[ceil32(return_data.size) + (32 * arg5) + 160 len 32 * _1336]
        return memory
          from mem[64]
           len _1026 + (32 * _1038) + (32 * _1336) + -mem[64] + 128
    mem[ceil32(return_data.size) + (32 * arg5) + 160 len 32 * arg5] = call.data[calldata.size len 32 * arg5]
    if arg4 and arg5 > -1 / arg4:
        revert with 0, 17
    if arg4 and arg5 > -1 / arg4:
        revert with 0, 17
    if arg4 * arg5 > !arg5:
        revert with 0, 17
    if var87002 >= (arg4 * arg5) + arg5:
        mem[ceil32(return_data.size) + (64 * arg5) + 160] = 64
        mem[ceil32(return_data.size) + (64 * arg5) + 224] = arg5
        mem[ceil32(return_data.size) + (64 * arg5) + 256 len 32 * arg5] = call.data[calldata.size len 32 * arg5]
        mem[ceil32(return_data.size) + (64 * arg5) + 192] = (32 * arg5) + 96
        mem[ceil32(return_data.size) + (98 * arg5) + 256] = arg5
        mem[ceil32(return_data.size) + (98 * arg5) + 288 len 32 * arg5] = call.data[calldata.size len 32 * arg5]
        return memory
          from ceil32(return_data.size) + (64 * arg5) + 160
           len (194 * arg5) + 128
    idx = var87002
    while idx < ext_call.return_data[0]:
        mem[mem[64] + 4] = idx
        require ext_code.size(address(arg1))
        staticcall address(arg1).allTokenHashes(uint256 arg1) with:
                gas gas_remaining wei
               args idx
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1040 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _1052 = mem[_1040]
        mem[mem[64] + 4] = mem[_1040]
        require ext_code.size(address(arg1))
        staticcall address(arg1).tokenType(uint256 arg1) with:
                gas gas_remaining wei
               args _1052
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            if idx == -1:
                revert with 0, 17
            if arg4 and arg5 > -1 / arg4:
                revert with 0, 17
            if arg4 * arg5 > !arg5:
                revert with 0, 17
            if idx + 1 < (arg4 * arg5) + arg5:
                idx = idx + 1
                continue 
            _1101 = mem[64]
            mem[mem[64]] = 64
            _1105 = mem[ceil32(return_data.size) + 96]
            mem[mem[64] + 64] = mem[ceil32(return_data.size) + 96]
            idx = 0
            s = ceil32(return_data.size) + 128
            t = mem[64] + 96
            while idx < _1105:
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_1101 + 32] = (32 * _1105) + 96
            _1338 = mem[ceil32(return_data.size) + (32 * arg5) + 128]
            mem[_1101 + (32 * _1105) + 96] = mem[ceil32(return_data.size) + (32 * arg5) + 128]
            idx = 0
            s = ceil32(return_data.size) + (32 * arg5) + 160
            t = _1101 + (32 * _1105) + 128
            while idx < _1338:
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return memory
              from mem[64]
               len _1101 + (32 * _1105) + (32 * _1338) + -mem[64] + 128
        _1073 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _1081 = mem[_1073]
        require mem[_1073] == mem[_1073 + 31 len 1]
        mem[mem[64] + 4] = address(arg3)
        mem[mem[64] + 36] = _1052
        require ext_code.size(address(arg2))
        staticcall address(arg2).balanceOf(address arg1, uint256 arg2) with:
                gas gas_remaining wei
               args address(arg3), _1052
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1093 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if not mem[_1093]:
            if idx == -1:
                revert with 0, 17
            if arg4 and arg5 > -1 / arg4:
                revert with 0, 17
            if arg4 * arg5 > !arg5:
                revert with 0, 17
            if idx + 1 < (arg4 * arg5) + arg5:
                idx = idx + 1
                continue 
            _1133 = mem[64]
            mem[mem[64]] = 64
            _1144 = mem[ceil32(return_data.size) + 96]
            mem[mem[64] + 64] = mem[ceil32(return_data.size) + 96]
            idx = 0
            s = ceil32(return_data.size) + 128
            t = mem[64] + 96
            while idx < _1144:
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_1133 + 32] = (32 * _1144) + 96
            _1339 = mem[ceil32(return_data.size) + (32 * arg5) + 128]
            mem[_1133 + (32 * _1144) + 96] = mem[ceil32(return_data.size) + (32 * arg5) + 128]
            idx = 0
            s = ceil32(return_data.size) + (32 * arg5) + 160
            t = _1133 + (32 * _1144) + 128
            while idx < _1339:
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return memory
              from mem[64]
               len _1133 + (32 * _1144) + (32 * _1339) + -mem[64] + 128
        if not _1052:
            if idx == -1:
                revert with 0, 17
            if arg4 and arg5 > -1 / arg4:
                revert with 0, 17
            if arg4 * arg5 > !arg5:
                revert with 0, 17
            if idx + 1 < (arg4 * arg5) + arg5:
                idx = idx + 1
                continue 
            _1137 = mem[64]
            mem[mem[64]] = 64
            _1149 = mem[ceil32(return_data.size) + 96]
            mem[mem[64] + 64] = mem[ceil32(return_data.size) + 96]
            idx = 0
            s = ceil32(return_data.size) + 128
            t = mem[64] + 96
            while idx < _1149:
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_1137 + 32] = (32 * _1149) + 96
            _1340 = mem[ceil32(return_data.size) + (32 * arg5) + 128]
            mem[_1137 + (32 * _1149) + 96] = mem[ceil32(return_data.size) + (32 * arg5) + 128]
            idx = 0
            s = ceil32(return_data.size) + (32 * arg5) + 160
            t = _1137 + (32 * _1149) + 128
            while idx < _1340:
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return memory
              from mem[64]
               len _1137 + (32 * _1149) + (32 * _1340) + -mem[64] + 128
        if 1 == _1052:
            if idx == -1:
                revert with 0, 17
            if arg4 and arg5 > -1 / arg4:
                revert with 0, 17
            if arg4 * arg5 > !arg5:
                revert with 0, 17
            if idx + 1 < (arg4 * arg5) + arg5:
                idx = idx + 1
                continue 
            _1145 = mem[64]
            mem[mem[64]] = 64
            _1161 = mem[ceil32(return_data.size) + 96]
            mem[mem[64] + 64] = mem[ceil32(return_data.size) + 96]
            idx = 0
            s = ceil32(return_data.size) + 128
            t = mem[64] + 96
            while idx < _1161:
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_1145 + 32] = (32 * _1161) + 96
            _1344 = mem[ceil32(return_data.size) + (32 * arg5) + 128]
            mem[_1145 + (32 * _1161) + 96] = mem[ceil32(return_data.size) + (32 * arg5) + 128]
            idx = 0
            s = ceil32(return_data.size) + (32 * arg5) + 160
            t = _1145 + (32 * _1161) + 128
            while idx < _1344:
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return memory
              from mem[64]
               len _1145 + (32 * _1161) + (32 * _1344) + -mem[64] + 128
        if 1 == uint8(_1081):
            if 0 >= mem[ceil32(return_data.size) + 96]:
                revert with 0, 50
            mem[ceil32(return_data.size) + 128] = _1052
            if idx == -1:
                revert with 0, 17
            if arg4 and arg5 > -1 / arg4:
                revert with 0, 17
            if arg4 * arg5 > !arg5:
                revert with 0, 17
            if idx + 1 < (arg4 * arg5) + arg5:
                idx = idx + 1
                continue 
            _1196 = mem[64]
            mem[mem[64]] = 64
            _1220 = mem[ceil32(return_data.size) + 96]
            mem[mem[64] + 64] = mem[ceil32(return_data.size) + 96]
            idx = 0
            s = ceil32(return_data.size) + 128
            t = mem[64] + 96
            while idx < _1220:
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_1196 + 32] = (32 * _1220) + 96
            _1343 = mem[ceil32(return_data.size) + (32 * arg5) + 128]
            mem[_1196 + (32 * _1220) + 96] = mem[ceil32(return_data.size) + (32 * arg5) + 128]
            idx = 0
            s = ceil32(return_data.size) + (32 * arg5) + 160
            t = _1196 + (32 * _1220) + 128
            while idx < _1343:
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return memory
              from mem[64]
               len _1196 + (32 * _1220) + (32 * _1343) + -mem[64] + 128
        if uint8(_1081) != 2:
            if idx == -1:
                revert with 0, 17
            if arg4 and arg5 > -1 / arg4:
                revert with 0, 17
            if arg4 * arg5 > !arg5:
                revert with 0, 17
            if idx + 1 < (arg4 * arg5) + arg5:
                idx = idx + 1
                continue 
            _1160 = mem[64]
            mem[mem[64]] = 64
            _1176 = mem[ceil32(return_data.size) + 96]
            mem[mem[64] + 64] = mem[ceil32(return_data.size) + 96]
            idx = 0
            s = ceil32(return_data.size) + 128
            t = mem[64] + 96
            while idx < _1176:
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_1160 + 32] = (32 * _1176) + 96
            _1341 = mem[ceil32(return_data.size) + (32 * arg5) + 128]
            mem[_1160 + (32 * _1176) + 96] = mem[ceil32(return_data.size) + (32 * arg5) + 128]
            idx = 0
            s = ceil32(return_data.size) + (32 * arg5) + 160
            t = _1160 + (32 * _1176) + 128
            while idx < _1341:
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return memory
              from mem[64]
               len _1160 + (32 * _1176) + (32 * _1341) + -mem[64] + 128
        if 0 >= mem[ceil32(return_data.size) + (32 * arg5) + 128]:
            revert with 0, 50
        mem[ceil32(return_data.size) + (32 * arg5) + 160] = _1052
        if idx == -1:
            revert with 0, 17
        if arg4 and arg5 > -1 / arg4:
            revert with 0, 17
        if arg4 * arg5 > !arg5:
            revert with 0, 17
        if idx + 1 < (arg4 * arg5) + arg5:
            idx = idx + 1
            continue 
        _1205 = mem[64]
        mem[mem[64]] = 64
        _1229 = mem[ceil32(return_data.size) + 96]
        mem[mem[64] + 64] = mem[ceil32(return_data.size) + 96]
        idx = 0
        s = ceil32(return_data.size) + 128
        t = mem[64] + 96
        while idx < _1229:
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_1205 + 32] = (32 * _1229) + 96
        _1342 = mem[ceil32(return_data.size) + (32 * arg5) + 128]
        mem[_1205 + (32 * _1229) + 96] = mem[ceil32(return_data.size) + (32 * arg5) + 128]
        idx = 0
        s = ceil32(return_data.size) + (32 * arg5) + 160
        t = _1205 + (32 * _1229) + 128
        while idx < _1342:
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _1205 + (32 * _1229) + (32 * _1342) + -mem[64] + 128
    _1029 = mem[64]
    mem[mem[64]] = 64
    _1041 = mem[ceil32(return_data.size) + 96]
    mem[mem[64] + 64] = mem[ceil32(return_data.size) + 96]
    mem[mem[64] + 96 len 32 * _1041] = mem[ceil32(return_data.size) + 128 len 32 * _1041]
    mem[mem[64] + 32] = (32 * _1041) + 96
    _1345 = mem[ceil32(return_data.size) + (32 * arg5) + 128]
    mem[_1029 + (32 * _1041) + 96] = mem[ceil32(return_data.size) + (32 * arg5) + 128]
    mem[_1029 + (32 * _1041) + 128 len 32 * _1345] = mem[ceil32(return_data.size) + (32 * arg5) + 160 len 32 * _1345]
    return memory
      from mem[64]
       len _1029 + (32 * _1041) + (32 * _1345) + -mem[64] + 128
}



}
