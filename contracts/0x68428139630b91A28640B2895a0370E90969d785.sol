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
            if var83002 >= (arg4 * arg5) + arg5:
                mem[ceil32(return_data.size) + (64 * arg5) + 160] = 64
                mem[ceil32(return_data.size) + (64 * arg5) + 224] = arg5
                mem[ceil32(return_data.size) + (64 * arg5) + 256 len 32 * arg5] = mem[ceil32(return_data.size) + 128 len 32 * arg5]
                mem[ceil32(return_data.size) + (64 * arg5) + 192] = (32 * arg5) + 96
                mem[ceil32(return_data.size) + (98 * arg5) + 256] = arg5
                mem[ceil32(return_data.size) + (98 * arg5) + 288 len 32 * arg5] = mem[ceil32(return_data.size) + (32 * arg5) + 160 len 32 * arg5]
                return memory
                  from ceil32(return_data.size) + (64 * arg5) + 160
                   len (194 * arg5) + 128
            idx = var83002
            while idx < ext_call.return_data[0]:
                mem[mem[64] + 4] = idx
                require ext_code.size(address(arg1))
                staticcall address(arg1).allTokenHashes(uint256 arg1) with:
                        gas gas_remaining wei
                       args idx
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1007 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1019 = mem[_1007]
                mem[mem[64] + 4] = mem[_1007]
                require ext_code.size(address(arg1))
                staticcall address(arg1).tokenType(uint256 arg1) with:
                        gas gas_remaining wei
                       args _1019
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1046 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1054 = mem[_1046]
                require mem[_1046] < 2
                mem[mem[64] + 4] = address(arg3)
                mem[mem[64] + 36] = _1019
                require ext_code.size(address(arg2))
                staticcall address(arg2).balanceOf(address arg1, uint256 arg2) with:
                        gas gas_remaining wei
                       args address(arg3), _1019
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1066 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if not mem[_1066]:
                    if idx == -1:
                        revert with 0, 17
                    if arg4 and arg5 > -1 / arg4:
                        revert with 0, 17
                    if arg4 * arg5 > !arg5:
                        revert with 0, 17
                    if idx + 1 < (arg4 * arg5) + arg5:
                        idx = idx + 1
                        continue 
                    _1082 = mem[64]
                    mem[mem[64]] = 64
                    _1090 = mem[ceil32(return_data.size) + 96]
                    mem[mem[64] + 64] = mem[ceil32(return_data.size) + 96]
                    idx = 0
                    s = ceil32(return_data.size) + 128
                    t = mem[64] + 96
                    while idx < _1090:
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_1082 + 32] = (32 * _1090) + 96
                    _1259 = mem[ceil32(return_data.size) + (32 * arg5) + 128]
                    mem[_1082 + (32 * _1090) + 96] = mem[ceil32(return_data.size) + (32 * arg5) + 128]
                    idx = 0
                    s = ceil32(return_data.size) + (32 * arg5) + 160
                    t = _1082 + (32 * _1090) + 128
                    while idx < _1259:
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    return memory
                      from mem[64]
                       len _1082 + (32 * _1090) + (32 * _1259) + -mem[64] + 128
                if not _1019:
                    if idx == -1:
                        revert with 0, 17
                    if arg4 and arg5 > -1 / arg4:
                        revert with 0, 17
                    if arg4 * arg5 > !arg5:
                        revert with 0, 17
                    if idx + 1 < (arg4 * arg5) + arg5:
                        idx = idx + 1
                        continue 
                    _1086 = mem[64]
                    mem[mem[64]] = 64
                    _1098 = mem[ceil32(return_data.size) + 96]
                    mem[mem[64] + 64] = mem[ceil32(return_data.size) + 96]
                    idx = 0
                    s = ceil32(return_data.size) + 128
                    t = mem[64] + 96
                    while idx < _1098:
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_1086 + 32] = (32 * _1098) + 96
                    _1260 = mem[ceil32(return_data.size) + (32 * arg5) + 128]
                    mem[_1086 + (32 * _1098) + 96] = mem[ceil32(return_data.size) + (32 * arg5) + 128]
                    idx = 0
                    s = ceil32(return_data.size) + (32 * arg5) + 160
                    t = _1086 + (32 * _1098) + 128
                    while idx < _1260:
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    return memory
                      from mem[64]
                       len _1086 + (32 * _1098) + (32 * _1260) + -mem[64] + 128
                if 1 == _1019:
                    if idx == -1:
                        revert with 0, 17
                    if arg4 and arg5 > -1 / arg4:
                        revert with 0, 17
                    if arg4 * arg5 > !arg5:
                        revert with 0, 17
                    if idx + 1 < (arg4 * arg5) + arg5:
                        idx = idx + 1
                        continue 
                    _1091 = mem[64]
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
                    mem[_1091 + 32] = (32 * _1103) + 96
                    _1264 = mem[ceil32(return_data.size) + (32 * arg5) + 128]
                    mem[_1091 + (32 * _1103) + 96] = mem[ceil32(return_data.size) + (32 * arg5) + 128]
                    idx = 0
                    s = ceil32(return_data.size) + (32 * arg5) + 160
                    t = _1091 + (32 * _1103) + 128
                    while idx < _1264:
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    return memory
                      from mem[64]
                       len _1091 + (32 * _1103) + (32 * _1264) + -mem[64] + 128
                if _1054 > 1:
                    revert with 0, 33
                if not _1054:
                    if 0 >= mem[ceil32(return_data.size) + 96]:
                        revert with 0, 50
                    mem[ceil32(return_data.size) + 128] = _1019
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
                    _1164 = mem[ceil32(return_data.size) + 96]
                    mem[mem[64] + 64] = mem[ceil32(return_data.size) + 96]
                    idx = 0
                    s = ceil32(return_data.size) + 128
                    t = mem[64] + 96
                    while idx < _1164:
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_1143 + 32] = (32 * _1164) + 96
                    _1263 = mem[ceil32(return_data.size) + (32 * arg5) + 128]
                    mem[_1143 + (32 * _1164) + 96] = mem[ceil32(return_data.size) + (32 * arg5) + 128]
                    idx = 0
                    s = ceil32(return_data.size) + (32 * arg5) + 160
                    t = _1143 + (32 * _1164) + 128
                    while idx < _1263:
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    return memory
                      from mem[64]
                       len _1143 + (32 * _1164) + (32 * _1263) + -mem[64] + 128
                if _1054 > 1:
                    revert with 0, 33
                if _1054 != 1:
                    if idx == -1:
                        revert with 0, 17
                    if arg4 and arg5 > -1 / arg4:
                        revert with 0, 17
                    if arg4 * arg5 > !arg5:
                        revert with 0, 17
                    if idx + 1 < (arg4 * arg5) + arg5:
                        idx = idx + 1
                        continue 
                    _1115 = mem[64]
                    mem[mem[64]] = 64
                    _1131 = mem[ceil32(return_data.size) + 96]
                    mem[mem[64] + 64] = mem[ceil32(return_data.size) + 96]
                    idx = 0
                    s = ceil32(return_data.size) + 128
                    t = mem[64] + 96
                    while idx < _1131:
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_1115 + 32] = (32 * _1131) + 96
                    _1261 = mem[ceil32(return_data.size) + (32 * arg5) + 128]
                    mem[_1115 + (32 * _1131) + 96] = mem[ceil32(return_data.size) + (32 * arg5) + 128]
                    idx = 0
                    s = ceil32(return_data.size) + (32 * arg5) + 160
                    t = _1115 + (32 * _1131) + 128
                    while idx < _1261:
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    return memory
                      from mem[64]
                       len _1115 + (32 * _1131) + (32 * _1261) + -mem[64] + 128
                if 0 >= mem[ceil32(return_data.size) + (32 * arg5) + 128]:
                    revert with 0, 50
                mem[ceil32(return_data.size) + (32 * arg5) + 160] = _1019
                if idx == -1:
                    revert with 0, 17
                if arg4 and arg5 > -1 / arg4:
                    revert with 0, 17
                if arg4 * arg5 > !arg5:
                    revert with 0, 17
                if idx + 1 < (arg4 * arg5) + arg5:
                    idx = idx + 1
                    continue 
                _1163 = mem[64]
                mem[mem[64]] = 64
                _1182 = mem[ceil32(return_data.size) + 96]
                mem[mem[64] + 64] = mem[ceil32(return_data.size) + 96]
                idx = 0
                s = ceil32(return_data.size) + 128
                t = mem[64] + 96
                while idx < _1182:
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_1163 + 32] = (32 * _1182) + 96
                _1262 = mem[ceil32(return_data.size) + (32 * arg5) + 128]
                mem[_1163 + (32 * _1182) + 96] = mem[ceil32(return_data.size) + (32 * arg5) + 128]
                idx = 0
                s = ceil32(return_data.size) + (32 * arg5) + 160
                t = _1163 + (32 * _1182) + 128
                while idx < _1262:
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                return memory
                  from mem[64]
                   len _1163 + (32 * _1182) + (32 * _1262) + -mem[64] + 128
            _996 = mem[64]
            mem[mem[64]] = 64
            _1008 = mem[ceil32(return_data.size) + 96]
            mem[mem[64] + 64] = mem[ceil32(return_data.size) + 96]
            mem[mem[64] + 96 len 32 * _1008] = mem[ceil32(return_data.size) + 128 len 32 * _1008]
            mem[mem[64] + 32] = (32 * _1008) + 96
            _1265 = mem[ceil32(return_data.size) + (32 * arg5) + 128]
            mem[_996 + (32 * _1008) + 96] = mem[ceil32(return_data.size) + (32 * arg5) + 128]
            mem[_996 + (32 * _1008) + 128 len 32 * _1265] = mem[ceil32(return_data.size) + (32 * arg5) + 160 len 32 * _1265]
            return memory
              from mem[64]
               len _996 + (32 * _1008) + (32 * _1265) + -mem[64] + 128
        mem[ceil32(return_data.size) + (32 * arg5) + 160 len 32 * arg5] = call.data[calldata.size len 32 * arg5]
        if arg4 and arg5 > -1 / arg4:
            revert with 0, 17
        if arg4 and arg5 > -1 / arg4:
            revert with 0, 17
        if arg4 * arg5 > !arg5:
            revert with 0, 17
        if var84002 >= (arg4 * arg5) + arg5:
            mem[ceil32(return_data.size) + (64 * arg5) + 160] = 64
            mem[ceil32(return_data.size) + (64 * arg5) + 224] = arg5
            mem[ceil32(return_data.size) + (64 * arg5) + 256 len 32 * arg5] = mem[ceil32(return_data.size) + 128 len 32 * arg5]
            mem[ceil32(return_data.size) + (64 * arg5) + 192] = (32 * arg5) + 96
            mem[ceil32(return_data.size) + (98 * arg5) + 256] = arg5
            mem[ceil32(return_data.size) + (98 * arg5) + 288 len 32 * arg5] = call.data[calldata.size len 32 * arg5]
            return memory
              from ceil32(return_data.size) + (64 * arg5) + 160
               len (194 * arg5) + 128
        idx = var84002
        while idx < ext_call.return_data[0]:
            mem[mem[64] + 4] = idx
            require ext_code.size(address(arg1))
            staticcall address(arg1).allTokenHashes(uint256 arg1) with:
                    gas gas_remaining wei
                   args idx
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1010 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1022 = mem[_1010]
            mem[mem[64] + 4] = mem[_1010]
            require ext_code.size(address(arg1))
            staticcall address(arg1).tokenType(uint256 arg1) with:
                    gas gas_remaining wei
                   args _1022
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1047 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1055 = mem[_1047]
            require mem[_1047] < 2
            mem[mem[64] + 4] = address(arg3)
            mem[mem[64] + 36] = _1022
            require ext_code.size(address(arg2))
            staticcall address(arg2).balanceOf(address arg1, uint256 arg2) with:
                    gas gas_remaining wei
                   args address(arg3), _1022
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1067 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if not mem[_1067]:
                if idx == -1:
                    revert with 0, 17
                if arg4 and arg5 > -1 / arg4:
                    revert with 0, 17
                if arg4 * arg5 > !arg5:
                    revert with 0, 17
                if idx + 1 < (arg4 * arg5) + arg5:
                    idx = idx + 1
                    continue 
                _1083 = mem[64]
                mem[mem[64]] = 64
                _1092 = mem[ceil32(return_data.size) + 96]
                mem[mem[64] + 64] = mem[ceil32(return_data.size) + 96]
                idx = 0
                s = ceil32(return_data.size) + 128
                t = mem[64] + 96
                while idx < _1092:
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_1083 + 32] = (32 * _1092) + 96
                _1267 = mem[ceil32(return_data.size) + (32 * arg5) + 128]
                mem[_1083 + (32 * _1092) + 96] = mem[ceil32(return_data.size) + (32 * arg5) + 128]
                idx = 0
                s = ceil32(return_data.size) + (32 * arg5) + 160
                t = _1083 + (32 * _1092) + 128
                while idx < _1267:
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                return memory
                  from mem[64]
                   len _1083 + (32 * _1092) + (32 * _1267) + -mem[64] + 128
            if not _1022:
                if idx == -1:
                    revert with 0, 17
                if arg4 and arg5 > -1 / arg4:
                    revert with 0, 17
                if arg4 * arg5 > !arg5:
                    revert with 0, 17
                if idx + 1 < (arg4 * arg5) + arg5:
                    idx = idx + 1
                    continue 
                _1087 = mem[64]
                mem[mem[64]] = 64
                _1099 = mem[ceil32(return_data.size) + 96]
                mem[mem[64] + 64] = mem[ceil32(return_data.size) + 96]
                idx = 0
                s = ceil32(return_data.size) + 128
                t = mem[64] + 96
                while idx < _1099:
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_1087 + 32] = (32 * _1099) + 96
                _1268 = mem[ceil32(return_data.size) + (32 * arg5) + 128]
                mem[_1087 + (32 * _1099) + 96] = mem[ceil32(return_data.size) + (32 * arg5) + 128]
                idx = 0
                s = ceil32(return_data.size) + (32 * arg5) + 160
                t = _1087 + (32 * _1099) + 128
                while idx < _1268:
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                return memory
                  from mem[64]
                   len _1087 + (32 * _1099) + (32 * _1268) + -mem[64] + 128
            if 1 == _1022:
                if idx == -1:
                    revert with 0, 17
                if arg4 and arg5 > -1 / arg4:
                    revert with 0, 17
                if arg4 * arg5 > !arg5:
                    revert with 0, 17
                if idx + 1 < (arg4 * arg5) + arg5:
                    idx = idx + 1
                    continue 
                _1093 = mem[64]
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
                mem[_1093 + 32] = (32 * _1105) + 96
                _1272 = mem[ceil32(return_data.size) + (32 * arg5) + 128]
                mem[_1093 + (32 * _1105) + 96] = mem[ceil32(return_data.size) + (32 * arg5) + 128]
                idx = 0
                s = ceil32(return_data.size) + (32 * arg5) + 160
                t = _1093 + (32 * _1105) + 128
                while idx < _1272:
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                return memory
                  from mem[64]
                   len _1093 + (32 * _1105) + (32 * _1272) + -mem[64] + 128
            if _1055 > 1:
                revert with 0, 33
            if not _1055:
                if 0 >= mem[ceil32(return_data.size) + 96]:
                    revert with 0, 50
                mem[ceil32(return_data.size) + 128] = _1022
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
                mem[_1145 + 32] = (32 * _1167) + 96
                _1271 = mem[ceil32(return_data.size) + (32 * arg5) + 128]
                mem[_1145 + (32 * _1167) + 96] = mem[ceil32(return_data.size) + (32 * arg5) + 128]
                idx = 0
                s = ceil32(return_data.size) + (32 * arg5) + 160
                t = _1145 + (32 * _1167) + 128
                while idx < _1271:
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                return memory
                  from mem[64]
                   len _1145 + (32 * _1167) + (32 * _1271) + -mem[64] + 128
            if _1055 > 1:
                revert with 0, 33
            if _1055 != 1:
                if idx == -1:
                    revert with 0, 17
                if arg4 and arg5 > -1 / arg4:
                    revert with 0, 17
                if arg4 * arg5 > !arg5:
                    revert with 0, 17
                if idx + 1 < (arg4 * arg5) + arg5:
                    idx = idx + 1
                    continue 
                _1118 = mem[64]
                mem[mem[64]] = 64
                _1134 = mem[ceil32(return_data.size) + 96]
                mem[mem[64] + 64] = mem[ceil32(return_data.size) + 96]
                idx = 0
                s = ceil32(return_data.size) + 128
                t = mem[64] + 96
                while idx < _1134:
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_1118 + 32] = (32 * _1134) + 96
                _1269 = mem[ceil32(return_data.size) + (32 * arg5) + 128]
                mem[_1118 + (32 * _1134) + 96] = mem[ceil32(return_data.size) + (32 * arg5) + 128]
                idx = 0
                s = ceil32(return_data.size) + (32 * arg5) + 160
                t = _1118 + (32 * _1134) + 128
                while idx < _1269:
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                return memory
                  from mem[64]
                   len _1118 + (32 * _1134) + (32 * _1269) + -mem[64] + 128
            if 0 >= mem[ceil32(return_data.size) + (32 * arg5) + 128]:
                revert with 0, 50
            mem[ceil32(return_data.size) + (32 * arg5) + 160] = _1022
            if idx == -1:
                revert with 0, 17
            if arg4 and arg5 > -1 / arg4:
                revert with 0, 17
            if arg4 * arg5 > !arg5:
                revert with 0, 17
            if idx + 1 < (arg4 * arg5) + arg5:
                idx = idx + 1
                continue 
            _1166 = mem[64]
            mem[mem[64]] = 64
            _1184 = mem[ceil32(return_data.size) + 96]
            mem[mem[64] + 64] = mem[ceil32(return_data.size) + 96]
            idx = 0
            s = ceil32(return_data.size) + 128
            t = mem[64] + 96
            while idx < _1184:
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_1166 + 32] = (32 * _1184) + 96
            _1270 = mem[ceil32(return_data.size) + (32 * arg5) + 128]
            mem[_1166 + (32 * _1184) + 96] = mem[ceil32(return_data.size) + (32 * arg5) + 128]
            idx = 0
            s = ceil32(return_data.size) + (32 * arg5) + 160
            t = _1166 + (32 * _1184) + 128
            while idx < _1270:
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return memory
              from mem[64]
               len _1166 + (32 * _1184) + (32 * _1270) + -mem[64] + 128
        _999 = mem[64]
        mem[mem[64]] = 64
        _1011 = mem[ceil32(return_data.size) + 96]
        mem[mem[64] + 64] = mem[ceil32(return_data.size) + 96]
        mem[mem[64] + 96 len 32 * _1011] = mem[ceil32(return_data.size) + 128 len 32 * _1011]
        mem[mem[64] + 32] = (32 * _1011) + 96
        _1273 = mem[ceil32(return_data.size) + (32 * arg5) + 128]
        mem[_999 + (32 * _1011) + 96] = mem[ceil32(return_data.size) + (32 * arg5) + 128]
        mem[_999 + (32 * _1011) + 128 len 32 * _1273] = mem[ceil32(return_data.size) + (32 * arg5) + 160 len 32 * _1273]
        return memory
          from mem[64]
           len _999 + (32 * _1011) + (32 * _1273) + -mem[64] + 128
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
        if var84002 >= (arg4 * arg5) + arg5:
            mem[ceil32(return_data.size) + (64 * arg5) + 160] = 64
            mem[ceil32(return_data.size) + (64 * arg5) + 224] = arg5
            mem[ceil32(return_data.size) + (64 * arg5) + 256 len 32 * arg5] = call.data[calldata.size len 32 * arg5]
            mem[ceil32(return_data.size) + (64 * arg5) + 192] = (32 * arg5) + 96
            mem[ceil32(return_data.size) + (98 * arg5) + 256] = arg5
            mem[ceil32(return_data.size) + (98 * arg5) + 288 len 32 * arg5] = mem[ceil32(return_data.size) + (32 * arg5) + 160 len 32 * arg5]
            return memory
              from ceil32(return_data.size) + (64 * arg5) + 160
               len (194 * arg5) + 128
        idx = var84002
        while idx < ext_call.return_data[0]:
            mem[mem[64] + 4] = idx
            require ext_code.size(address(arg1))
            staticcall address(arg1).allTokenHashes(uint256 arg1) with:
                    gas gas_remaining wei
                   args idx
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1013 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1025 = mem[_1013]
            mem[mem[64] + 4] = mem[_1013]
            require ext_code.size(address(arg1))
            staticcall address(arg1).tokenType(uint256 arg1) with:
                    gas gas_remaining wei
                   args _1025
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1048 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1056 = mem[_1048]
            require mem[_1048] < 2
            mem[mem[64] + 4] = address(arg3)
            mem[mem[64] + 36] = _1025
            require ext_code.size(address(arg2))
            staticcall address(arg2).balanceOf(address arg1, uint256 arg2) with:
                    gas gas_remaining wei
                   args address(arg3), _1025
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1068 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if not mem[_1068]:
                if idx == -1:
                    revert with 0, 17
                if arg4 and arg5 > -1 / arg4:
                    revert with 0, 17
                if arg4 * arg5 > !arg5:
                    revert with 0, 17
                if idx + 1 < (arg4 * arg5) + arg5:
                    idx = idx + 1
                    continue 
                _1084 = mem[64]
                mem[mem[64]] = 64
                _1094 = mem[ceil32(return_data.size) + 96]
                mem[mem[64] + 64] = mem[ceil32(return_data.size) + 96]
                idx = 0
                s = ceil32(return_data.size) + 128
                t = mem[64] + 96
                while idx < _1094:
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_1084 + 32] = (32 * _1094) + 96
                _1275 = mem[ceil32(return_data.size) + (32 * arg5) + 128]
                mem[_1084 + (32 * _1094) + 96] = mem[ceil32(return_data.size) + (32 * arg5) + 128]
                idx = 0
                s = ceil32(return_data.size) + (32 * arg5) + 160
                t = _1084 + (32 * _1094) + 128
                while idx < _1275:
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                return memory
                  from mem[64]
                   len _1084 + (32 * _1094) + (32 * _1275) + -mem[64] + 128
            if not _1025:
                if idx == -1:
                    revert with 0, 17
                if arg4 and arg5 > -1 / arg4:
                    revert with 0, 17
                if arg4 * arg5 > !arg5:
                    revert with 0, 17
                if idx + 1 < (arg4 * arg5) + arg5:
                    idx = idx + 1
                    continue 
                _1088 = mem[64]
                mem[mem[64]] = 64
                _1100 = mem[ceil32(return_data.size) + 96]
                mem[mem[64] + 64] = mem[ceil32(return_data.size) + 96]
                idx = 0
                s = ceil32(return_data.size) + 128
                t = mem[64] + 96
                while idx < _1100:
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_1088 + 32] = (32 * _1100) + 96
                _1276 = mem[ceil32(return_data.size) + (32 * arg5) + 128]
                mem[_1088 + (32 * _1100) + 96] = mem[ceil32(return_data.size) + (32 * arg5) + 128]
                idx = 0
                s = ceil32(return_data.size) + (32 * arg5) + 160
                t = _1088 + (32 * _1100) + 128
                while idx < _1276:
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                return memory
                  from mem[64]
                   len _1088 + (32 * _1100) + (32 * _1276) + -mem[64] + 128
            if 1 == _1025:
                if idx == -1:
                    revert with 0, 17
                if arg4 and arg5 > -1 / arg4:
                    revert with 0, 17
                if arg4 * arg5 > !arg5:
                    revert with 0, 17
                if idx + 1 < (arg4 * arg5) + arg5:
                    idx = idx + 1
                    continue 
                _1095 = mem[64]
                mem[mem[64]] = 64
                _1107 = mem[ceil32(return_data.size) + 96]
                mem[mem[64] + 64] = mem[ceil32(return_data.size) + 96]
                idx = 0
                s = ceil32(return_data.size) + 128
                t = mem[64] + 96
                while idx < _1107:
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_1095 + 32] = (32 * _1107) + 96
                _1280 = mem[ceil32(return_data.size) + (32 * arg5) + 128]
                mem[_1095 + (32 * _1107) + 96] = mem[ceil32(return_data.size) + (32 * arg5) + 128]
                idx = 0
                s = ceil32(return_data.size) + (32 * arg5) + 160
                t = _1095 + (32 * _1107) + 128
                while idx < _1280:
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                return memory
                  from mem[64]
                   len _1095 + (32 * _1107) + (32 * _1280) + -mem[64] + 128
            if _1056 > 1:
                revert with 0, 33
            if not _1056:
                if 0 >= mem[ceil32(return_data.size) + 96]:
                    revert with 0, 50
                mem[ceil32(return_data.size) + 128] = _1025
                if idx == -1:
                    revert with 0, 17
                if arg4 and arg5 > -1 / arg4:
                    revert with 0, 17
                if arg4 * arg5 > !arg5:
                    revert with 0, 17
                if idx + 1 < (arg4 * arg5) + arg5:
                    idx = idx + 1
                    continue 
                _1147 = mem[64]
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
                mem[_1147 + 32] = (32 * _1170) + 96
                _1279 = mem[ceil32(return_data.size) + (32 * arg5) + 128]
                mem[_1147 + (32 * _1170) + 96] = mem[ceil32(return_data.size) + (32 * arg5) + 128]
                idx = 0
                s = ceil32(return_data.size) + (32 * arg5) + 160
                t = _1147 + (32 * _1170) + 128
                while idx < _1279:
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                return memory
                  from mem[64]
                   len _1147 + (32 * _1170) + (32 * _1279) + -mem[64] + 128
            if _1056 > 1:
                revert with 0, 33
            if _1056 != 1:
                if idx == -1:
                    revert with 0, 17
                if arg4 and arg5 > -1 / arg4:
                    revert with 0, 17
                if arg4 * arg5 > !arg5:
                    revert with 0, 17
                if idx + 1 < (arg4 * arg5) + arg5:
                    idx = idx + 1
                    continue 
                _1121 = mem[64]
                mem[mem[64]] = 64
                _1137 = mem[ceil32(return_data.size) + 96]
                mem[mem[64] + 64] = mem[ceil32(return_data.size) + 96]
                idx = 0
                s = ceil32(return_data.size) + 128
                t = mem[64] + 96
                while idx < _1137:
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_1121 + 32] = (32 * _1137) + 96
                _1277 = mem[ceil32(return_data.size) + (32 * arg5) + 128]
                mem[_1121 + (32 * _1137) + 96] = mem[ceil32(return_data.size) + (32 * arg5) + 128]
                idx = 0
                s = ceil32(return_data.size) + (32 * arg5) + 160
                t = _1121 + (32 * _1137) + 128
                while idx < _1277:
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                return memory
                  from mem[64]
                   len _1121 + (32 * _1137) + (32 * _1277) + -mem[64] + 128
            if 0 >= mem[ceil32(return_data.size) + (32 * arg5) + 128]:
                revert with 0, 50
            mem[ceil32(return_data.size) + (32 * arg5) + 160] = _1025
            if idx == -1:
                revert with 0, 17
            if arg4 and arg5 > -1 / arg4:
                revert with 0, 17
            if arg4 * arg5 > !arg5:
                revert with 0, 17
            if idx + 1 < (arg4 * arg5) + arg5:
                idx = idx + 1
                continue 
            _1169 = mem[64]
            mem[mem[64]] = 64
            _1186 = mem[ceil32(return_data.size) + 96]
            mem[mem[64] + 64] = mem[ceil32(return_data.size) + 96]
            idx = 0
            s = ceil32(return_data.size) + 128
            t = mem[64] + 96
            while idx < _1186:
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_1169 + 32] = (32 * _1186) + 96
            _1278 = mem[ceil32(return_data.size) + (32 * arg5) + 128]
            mem[_1169 + (32 * _1186) + 96] = mem[ceil32(return_data.size) + (32 * arg5) + 128]
            idx = 0
            s = ceil32(return_data.size) + (32 * arg5) + 160
            t = _1169 + (32 * _1186) + 128
            while idx < _1278:
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return memory
              from mem[64]
               len _1169 + (32 * _1186) + (32 * _1278) + -mem[64] + 128
        _1002 = mem[64]
        mem[mem[64]] = 64
        _1014 = mem[ceil32(return_data.size) + 96]
        mem[mem[64] + 64] = mem[ceil32(return_data.size) + 96]
        mem[mem[64] + 96 len 32 * _1014] = mem[ceil32(return_data.size) + 128 len 32 * _1014]
        mem[mem[64] + 32] = (32 * _1014) + 96
        _1281 = mem[ceil32(return_data.size) + (32 * arg5) + 128]
        mem[_1002 + (32 * _1014) + 96] = mem[ceil32(return_data.size) + (32 * arg5) + 128]
        mem[_1002 + (32 * _1014) + 128 len 32 * _1281] = mem[ceil32(return_data.size) + (32 * arg5) + 160 len 32 * _1281]
        return memory
          from mem[64]
           len _1002 + (32 * _1014) + (32 * _1281) + -mem[64] + 128
    mem[ceil32(return_data.size) + (32 * arg5) + 160 len 32 * arg5] = call.data[calldata.size len 32 * arg5]
    if arg4 and arg5 > -1 / arg4:
        revert with 0, 17
    if arg4 and arg5 > -1 / arg4:
        revert with 0, 17
    if arg4 * arg5 > !arg5:
        revert with 0, 17
    if var85002 >= (arg4 * arg5) + arg5:
        mem[ceil32(return_data.size) + (64 * arg5) + 160] = 64
        mem[ceil32(return_data.size) + (64 * arg5) + 224] = arg5
        mem[ceil32(return_data.size) + (64 * arg5) + 256 len 32 * arg5] = call.data[calldata.size len 32 * arg5]
        mem[ceil32(return_data.size) + (64 * arg5) + 192] = (32 * arg5) + 96
        mem[ceil32(return_data.size) + (98 * arg5) + 256] = arg5
        mem[ceil32(return_data.size) + (98 * arg5) + 288 len 32 * arg5] = call.data[calldata.size len 32 * arg5]
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
        _1016 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _1028 = mem[_1016]
        mem[mem[64] + 4] = mem[_1016]
        require ext_code.size(address(arg1))
        staticcall address(arg1).tokenType(uint256 arg1) with:
                gas gas_remaining wei
               args _1028
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1049 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _1057 = mem[_1049]
        require mem[_1049] < 2
        mem[mem[64] + 4] = address(arg3)
        mem[mem[64] + 36] = _1028
        require ext_code.size(address(arg2))
        staticcall address(arg2).balanceOf(address arg1, uint256 arg2) with:
                gas gas_remaining wei
               args address(arg3), _1028
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1069 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if not mem[_1069]:
            if idx == -1:
                revert with 0, 17
            if arg4 and arg5 > -1 / arg4:
                revert with 0, 17
            if arg4 * arg5 > !arg5:
                revert with 0, 17
            if idx + 1 < (arg4 * arg5) + arg5:
                idx = idx + 1
                continue 
            _1085 = mem[64]
            mem[mem[64]] = 64
            _1096 = mem[ceil32(return_data.size) + 96]
            mem[mem[64] + 64] = mem[ceil32(return_data.size) + 96]
            idx = 0
            s = ceil32(return_data.size) + 128
            t = mem[64] + 96
            while idx < _1096:
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_1085 + 32] = (32 * _1096) + 96
            _1283 = mem[ceil32(return_data.size) + (32 * arg5) + 128]
            mem[_1085 + (32 * _1096) + 96] = mem[ceil32(return_data.size) + (32 * arg5) + 128]
            idx = 0
            s = ceil32(return_data.size) + (32 * arg5) + 160
            t = _1085 + (32 * _1096) + 128
            while idx < _1283:
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return memory
              from mem[64]
               len _1085 + (32 * _1096) + (32 * _1283) + -mem[64] + 128
        if not _1028:
            if idx == -1:
                revert with 0, 17
            if arg4 and arg5 > -1 / arg4:
                revert with 0, 17
            if arg4 * arg5 > !arg5:
                revert with 0, 17
            if idx + 1 < (arg4 * arg5) + arg5:
                idx = idx + 1
                continue 
            _1089 = mem[64]
            mem[mem[64]] = 64
            _1101 = mem[ceil32(return_data.size) + 96]
            mem[mem[64] + 64] = mem[ceil32(return_data.size) + 96]
            idx = 0
            s = ceil32(return_data.size) + 128
            t = mem[64] + 96
            while idx < _1101:
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_1089 + 32] = (32 * _1101) + 96
            _1284 = mem[ceil32(return_data.size) + (32 * arg5) + 128]
            mem[_1089 + (32 * _1101) + 96] = mem[ceil32(return_data.size) + (32 * arg5) + 128]
            idx = 0
            s = ceil32(return_data.size) + (32 * arg5) + 160
            t = _1089 + (32 * _1101) + 128
            while idx < _1284:
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return memory
              from mem[64]
               len _1089 + (32 * _1101) + (32 * _1284) + -mem[64] + 128
        if 1 == _1028:
            if idx == -1:
                revert with 0, 17
            if arg4 and arg5 > -1 / arg4:
                revert with 0, 17
            if arg4 * arg5 > !arg5:
                revert with 0, 17
            if idx + 1 < (arg4 * arg5) + arg5:
                idx = idx + 1
                continue 
            _1097 = mem[64]
            mem[mem[64]] = 64
            _1109 = mem[ceil32(return_data.size) + 96]
            mem[mem[64] + 64] = mem[ceil32(return_data.size) + 96]
            idx = 0
            s = ceil32(return_data.size) + 128
            t = mem[64] + 96
            while idx < _1109:
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_1097 + 32] = (32 * _1109) + 96
            _1288 = mem[ceil32(return_data.size) + (32 * arg5) + 128]
            mem[_1097 + (32 * _1109) + 96] = mem[ceil32(return_data.size) + (32 * arg5) + 128]
            idx = 0
            s = ceil32(return_data.size) + (32 * arg5) + 160
            t = _1097 + (32 * _1109) + 128
            while idx < _1288:
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return memory
              from mem[64]
               len _1097 + (32 * _1109) + (32 * _1288) + -mem[64] + 128
        if _1057 > 1:
            revert with 0, 33
        if not _1057:
            if 0 >= mem[ceil32(return_data.size) + 96]:
                revert with 0, 50
            mem[ceil32(return_data.size) + 128] = _1028
            if idx == -1:
                revert with 0, 17
            if arg4 and arg5 > -1 / arg4:
                revert with 0, 17
            if arg4 * arg5 > !arg5:
                revert with 0, 17
            if idx + 1 < (arg4 * arg5) + arg5:
                idx = idx + 1
                continue 
            _1149 = mem[64]
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
            mem[_1149 + 32] = (32 * _1173) + 96
            _1287 = mem[ceil32(return_data.size) + (32 * arg5) + 128]
            mem[_1149 + (32 * _1173) + 96] = mem[ceil32(return_data.size) + (32 * arg5) + 128]
            idx = 0
            s = ceil32(return_data.size) + (32 * arg5) + 160
            t = _1149 + (32 * _1173) + 128
            while idx < _1287:
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return memory
              from mem[64]
               len _1149 + (32 * _1173) + (32 * _1287) + -mem[64] + 128
        if _1057 > 1:
            revert with 0, 33
        if _1057 != 1:
            if idx == -1:
                revert with 0, 17
            if arg4 and arg5 > -1 / arg4:
                revert with 0, 17
            if arg4 * arg5 > !arg5:
                revert with 0, 17
            if idx + 1 < (arg4 * arg5) + arg5:
                idx = idx + 1
                continue 
            _1124 = mem[64]
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
            mem[_1124 + 32] = (32 * _1140) + 96
            _1285 = mem[ceil32(return_data.size) + (32 * arg5) + 128]
            mem[_1124 + (32 * _1140) + 96] = mem[ceil32(return_data.size) + (32 * arg5) + 128]
            idx = 0
            s = ceil32(return_data.size) + (32 * arg5) + 160
            t = _1124 + (32 * _1140) + 128
            while idx < _1285:
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return memory
              from mem[64]
               len _1124 + (32 * _1140) + (32 * _1285) + -mem[64] + 128
        if 0 >= mem[ceil32(return_data.size) + (32 * arg5) + 128]:
            revert with 0, 50
        mem[ceil32(return_data.size) + (32 * arg5) + 160] = _1028
        if idx == -1:
            revert with 0, 17
        if arg4 and arg5 > -1 / arg4:
            revert with 0, 17
        if arg4 * arg5 > !arg5:
            revert with 0, 17
        if idx + 1 < (arg4 * arg5) + arg5:
            idx = idx + 1
            continue 
        _1172 = mem[64]
        mem[mem[64]] = 64
        _1188 = mem[ceil32(return_data.size) + 96]
        mem[mem[64] + 64] = mem[ceil32(return_data.size) + 96]
        idx = 0
        s = ceil32(return_data.size) + 128
        t = mem[64] + 96
        while idx < _1188:
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_1172 + 32] = (32 * _1188) + 96
        _1286 = mem[ceil32(return_data.size) + (32 * arg5) + 128]
        mem[_1172 + (32 * _1188) + 96] = mem[ceil32(return_data.size) + (32 * arg5) + 128]
        idx = 0
        s = ceil32(return_data.size) + (32 * arg5) + 160
        t = _1172 + (32 * _1188) + 128
        while idx < _1286:
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _1172 + (32 * _1188) + (32 * _1286) + -mem[64] + 128
    _1005 = mem[64]
    mem[mem[64]] = 64
    _1017 = mem[ceil32(return_data.size) + 96]
    mem[mem[64] + 64] = mem[ceil32(return_data.size) + 96]
    mem[mem[64] + 96 len 32 * _1017] = mem[ceil32(return_data.size) + 128 len 32 * _1017]
    mem[mem[64] + 32] = (32 * _1017) + 96
    _1289 = mem[ceil32(return_data.size) + (32 * arg5) + 128]
    mem[_1005 + (32 * _1017) + 96] = mem[ceil32(return_data.size) + (32 * arg5) + 128]
    mem[_1005 + (32 * _1017) + 128 len 32 * _1289] = mem[ceil32(return_data.size) + (32 * arg5) + 160 len 32 * _1289]
    return memory
      from mem[64]
       len _1005 + (32 * _1017) + (32 * _1289) + -mem[64] + 128
}



}
