contract main {




// =====================  Runtime code  =====================


#
#  - executeOperation(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5)
#  - sub_770cc16e(?)
#
address owner;

function owner() payable {
    return owner
}

function _fallback() payable {
    revert
}

function _test() payable {
    mem[96] = 2
    mem[128] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
    mem[160] = 0x4068da6c83afcfa0e13ba15a6696662335d5b75
    mem[192] = 2
    mem[224 len 64] = call.data[calldata.size len 64]
    mem[288] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[292] = 1000
    mem[324] = 64
    mem[356] = 2
    idx = 0
    s = 128
    t = 388
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
    staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c29.getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args 1000, Array(len=2, data=mem[388 len 64])
    if not ext_call.success:
        if return_data.size >= 68:
            if uint32(mem[4 len 28]) >> 224 == Error(string arg1):
                if bool(36 <= return_data.size):
                    if getAmountsOut(uint256 arg1, address[] arg2), 0 <= test266151307():
                        if getAmountsOut(uint256 arg1, address[] arg2), 0 + 32 <= return_data.size:
                            return Array(len=2, data=10000, 2)
        return Array(len=2, data=10000, 3)
    mem[288 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 288
    require return_data.size >= 32
    _111 = mem[288 len 4], 0
    require mem[288 len 4], 0 <= test266151307()
    require mem[288 len 4], 0 + 319 < return_data.size + 288
    _113 = mem[mem[288 len 4], 0 + 288]
    if mem[mem[288 len 4], 0 + 288] > test266151307():
        revert with 'NH{q', 65
    if ceil32(return_data.size) + (32 * mem[mem[288 len 4], 0 + 288]) + 320 > test266151307() or (32 * mem[mem[288 len 4], 0 + 288]) + 32 < 0:
        revert with 'NH{q', 65
    mem[64] = ceil32(return_data.size) + (32 * mem[mem[288 len 4], 0 + 288]) + 320
    mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], 0 + 288]
    require _111 + (32 * _113) + 32 <= return_data.size
    idx = 0
    s = _111 + 320
    t = ceil32(return_data.size) + 320
    while idx < _113:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return Array(len=2, data=10000, 1)
}

function sub_aa118bae(?) payable {
    require calldata.size - 4 >= 160
    require cd[4] == address(cd[4])
    require cd[36] == cd[36]
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    if ('cd', 68).length > test266151307():
        revert with 'NH{q', 65
    if (32 * ('cd', 68).length) + 128 > test266151307() or (32 * ('cd', 68).length) + 128 < 96:
        revert with 'NH{q', 65
    mem[64] = (32 * ('cd', 68).length) + 128
    mem[96] = ('cd', 68).length
    idx = 0
    s = cd[68] + 36
    t = 128
    while idx < ('cd', 68).length:
        require calldata.size + -cd[68] + -cd[s] - 36 >= 160
        _37 = mem[64]
        if mem[64] + 160 > test266151307() or mem[64] + 160 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + 160
        require cd[(cd[68] + cd[s] + 36)] == address(cd[(cd[68] + cd[s] + 36)])
        mem[_37] = cd[(cd[68] + cd[s] + 36)]
        require cd[(cd[68] + cd[s] + 68)] == cd[(cd[68] + cd[s] + 68)]
        mem[_37 + 32] = cd[(cd[68] + cd[s] + 68)]
        require cd[(cd[68] + cd[s] + 100)] == cd[(cd[68] + cd[s] + 100)]
        mem[_37 + 64] = cd[(cd[68] + cd[s] + 100)]
        require cd[(cd[68] + cd[s] + 132)] <= test266151307()
        require cd[68] + cd[s] + cd[(cd[68] + cd[s] + 132)] + 67 < calldata.size
        if cd[(cd[68] + cd[s] + cd[(cd[68] + cd[s] + 132)] + 36)] > test266151307():
            revert with 'NH{q', 65
        _43 = mem[64]
        if mem[64] + (32 * cd[(cd[68] + cd[s] + cd[(cd[68] + cd[s] + 132)] + 36)]) + 32 > test266151307() or mem[64] + (32 * cd[(cd[68] + cd[s] + cd[(cd[68] + cd[s] + 132)] + 36)]) + 32 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + (32 * cd[(cd[68] + cd[s] + cd[(cd[68] + cd[s] + 132)] + 36)]) + 32
        mem[_43] = cd[(cd[68] + cd[s] + cd[(cd[68] + cd[s] + 132)] + 36)]
        require cd[68] + cd[s] + cd[(cd[68] + cd[s] + 132)] + (32 * cd[(cd[68] + cd[s] + cd[(cd[68] + cd[s] + 132)] + 36)]) + 68 <= calldata.size
        u = 0
        v = cd[68] + cd[v] + cd[(cd[68] + cd[v] + 132)] + 68
        w = _43 + 32
        while u < cd[(cd[68] + cd[v] + cd[(cd[68] + cd[v] + 132)] + 36)]:
            require cd[v] == address(cd[v])
            mem[w] = cd[v]
            u = u + 1
            v = v + 32
            w = w + 32
            continue 
        mem[_37 + 96] = _43
        require cd[(cd[68] + cd[v] + 164)] == cd[(cd[68] + cd[v] + 164)]
        mem[_37 + 128] = cd[(cd[68] + cd[v] + 164)]
        mem[w] = _37
        u = u + 1
        v = v + 32
        w = w + 32
        continue 
    require cd[100] <= test266151307()
    require cd[100] + 35 < calldata.size
    if ('cd', 100).length > test266151307():
        revert with 'NH{q', 65
    _38 = mem[64]
    if mem[64] + (32 * ('cd', 100).length) + 32 > test266151307() or mem[64] + (32 * ('cd', 100).length) + 32 < mem[64]:
        revert with 'NH{q', 65
    mem[64] = mem[64] + (32 * ('cd', 100).length) + 32
    mem[_38] = ('cd', 100).length
    idx = 0
    s = cd[100] + 36
    t = _38 + 32
    while idx < ('cd', 100).length:
        require calldata.size + -cd[100] + -cd[s] - 36 >= 160
        _72 = mem[64]
        if mem[64] + 160 > test266151307() or mem[64] + 160 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + 160
        require cd[(cd[100] + cd[s] + 36)] == address(cd[(cd[100] + cd[s] + 36)])
        mem[_72] = cd[(cd[100] + cd[s] + 36)]
        require cd[(cd[100] + cd[s] + 68)] == cd[(cd[100] + cd[s] + 68)]
        mem[_72 + 32] = cd[(cd[100] + cd[s] + 68)]
        require cd[(cd[100] + cd[s] + 100)] == cd[(cd[100] + cd[s] + 100)]
        mem[_72 + 64] = cd[(cd[100] + cd[s] + 100)]
        require cd[(cd[100] + cd[s] + 132)] <= test266151307()
        require cd[100] + cd[s] + cd[(cd[100] + cd[s] + 132)] + 67 < calldata.size
        if cd[(cd[100] + cd[s] + cd[(cd[100] + cd[s] + 132)] + 36)] > test266151307():
            revert with 'NH{q', 65
        _81 = mem[64]
        if mem[64] + (32 * cd[(cd[100] + cd[s] + cd[(cd[100] + cd[s] + 132)] + 36)]) + 32 > test266151307() or mem[64] + (32 * cd[(cd[100] + cd[s] + cd[(cd[100] + cd[s] + 132)] + 36)]) + 32 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + (32 * cd[(cd[100] + cd[s] + cd[(cd[100] + cd[s] + 132)] + 36)]) + 32
        mem[_81] = cd[(cd[100] + cd[s] + cd[(cd[100] + cd[s] + 132)] + 36)]
        require cd[100] + cd[s] + cd[(cd[100] + cd[s] + 132)] + (32 * cd[(cd[100] + cd[s] + cd[(cd[100] + cd[s] + 132)] + 36)]) + 68 <= calldata.size
        u = 0
        v = cd[100] + cd[v] + cd[(cd[100] + cd[v] + 132)] + 68
        w = _81 + 32
        while u < cd[(cd[100] + cd[v] + cd[(cd[100] + cd[v] + 132)] + 36)]:
            require cd[v] == address(cd[v])
            mem[w] = cd[v]
            u = u + 1
            v = v + 32
            w = w + 32
            continue 
        mem[_72 + 96] = _81
        require cd[(cd[100] + cd[v] + 164)] == cd[(cd[100] + cd[v] + 164)]
        mem[_72 + 128] = cd[(cd[100] + cd[v] + 164)]
        mem[w] = _72
        u = u + 1
        v = v + 32
        w = w + 32
        continue 
    require cd[132] <= test266151307()
    require cd[132] + 35 < calldata.size
    if ('cd', 132).length > test266151307():
        revert with 'NH{q', 65
    _73 = mem[64]
    if mem[64] + (32 * ('cd', 132).length) + 32 > test266151307() or mem[64] + (32 * ('cd', 132).length) + 32 < mem[64]:
        revert with 'NH{q', 65
    mem[64] = mem[64] + (32 * ('cd', 132).length) + 32
    mem[_73] = ('cd', 132).length
    require cd[132] + (32 * ('cd', 132).length) + 36 <= calldata.size
    idx = 0
    s = cd[132] + 36
    t = _73 + 32
    while idx < ('cd', 132).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if owner != msg.sender:
        revert with 0, 'not owner'
    _104 = mem[64]
    mem[mem[64] + 32] = 96
    _106 = mem[96]
    mem[mem[64] + 128] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + (32 * _106) + 160
    u = mem[64] + 160
    while idx < _106:
        mem[u] = t + -_104 - 160
        _133 = mem[s]
        mem[t] = mem[mem[s] + 12 len 20]
        mem[t + 32] = mem[_133 + 32]
        mem[t + 64] = mem[_133 + 64]
        _141 = mem[_133 + 96]
        mem[t + 96] = 160
        _143 = mem[_141]
        mem[t + 160] = mem[_141]
        v = 0
        w = _141 + 32
        x = t + 192
        while v < _143:
            mem[x] = mem[w + 12 len 20]
            v = v + 1
            w = w + 32
            x = x + 32
            continue 
        mem[t + 128] = mem[_133 + 128]
        idx = idx + 1
        s = s + 32
        t = t + (32 * _143) + 192
        u = u + 32
        continue 
    mem[_104 + 64] = t + -_104 - 32
    _135 = mem[_38]
    mem[t] = mem[_38]
    idx = 0
    s = _38 + 32
    u = t + (32 * _135) + 32
    v = t + 32
    while idx < _135:
        mem[v] = u + -t - 32
        _158 = mem[s]
        mem[u] = mem[mem[s] + 12 len 20]
        mem[u + 32] = mem[_158 + 32]
        mem[u + 64] = mem[_158 + 64]
        _168 = mem[_158 + 96]
        mem[u + 96] = 160
        _169 = mem[_168]
        mem[u + 160] = mem[_168]
        t = 0
        w = _168 + 32
        x = u + 192
        while t < _169:
            mem[x] = mem[w + 12 len 20]
            t = t + 1
            w = w + 32
            x = x + 32
            continue 
        mem[u + 128] = mem[_158 + 128]
        idx = idx + 1
        s = s + 32
        u = u + (32 * _169) + 192
        v = v + 32
        continue 
    mem[_104 + 96] = u + -_104 - 32
    _162 = mem[_73]
    mem[u] = mem[_73]
    idx = 0
    s = _73 + 32
    t = u + 32
    while idx < _162:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    _179 = mem[64]
    mem[64] = u + (32 * _162) + 32
    mem[u + (32 * _162) + 32] = 0xe0232b4200000000000000000000000000000000000000000000000000000000
    mem[u + (32 * _162) + 36] = this.address
    mem[u + (32 * _162) + 68] = cd[36]
    mem[u + (32 * _162) + 100] = 96
    _181 = mem[_179]
    mem[u + (32 * _162) + 132] = mem[_179]
    mem[u + (32 * _162) + 164 len ceil32(_181)] = mem[_179 + 32 len ceil32(_181)]
    if ceil32(_181) > _181:
        mem[u + (32 * _162) + _181 + 164] = 0
    require ext_code.size(address(cd[4]))
    call address(cd[4]).flashLoan(address arg1, uint256 arg2, bytes arg3) with:
         gas gas_remaining wei
        args address(this.address), cd[36], 96, mem[u + (32 * _162) + 132 len ceil32(_181) + 32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_02ab146b(?) payable {
    require calldata.size - 4 >= 160
    require cd[4] == cd[4]
    require cd[36] == cd[36]
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    if ('cd', 68).length > test266151307():
        revert with 'NH{q', 65
    if (32 * ('cd', 68).length) + 128 > test266151307() or (32 * ('cd', 68).length) + 128 < 96:
        revert with 'NH{q', 65
    mem[96] = ('cd', 68).length
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    idx = 0
    s = cd[68] + 36
    t = 128
    while idx < ('cd', 68).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[100] == address(cd[100])
    require cd[132] == address(cd[132])
    if ('cd', 68).length > test266151307():
        revert with 'NH{q', 65
    mem[(32 * ('cd', 68).length) + 128] = ('cd', 68).length
    mem[64] = (64 * ('cd', 68).length) + 160
    if not ('cd', 68).length:
        if not cd[36]:
            revert with 'NH{q', 18
        idx = 0
        while idx < ('cd', 68).length:
            _515 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            if 0 >= mem[_515]:
                revert with 'NH{q', 50
            mem[_515 + 32] = address(cd[100])
            if 1 >= mem[_515]:
                revert with 'NH{q', 50
            mem[_515 + 64] = address(cd[132])
            if cd[36] > test266151307():
                revert with 'NH{q', 65
            mem[_515 + 96] = cd[36]
            if not cd[36]:
                if cd[36] > test266151307():
                    revert with 'NH{q', 65
                mem[_515 + (32 * cd[36]) + 128] = cd[36]
                mem[64] = _515 + (64 * cd[36]) + 160
                if not cd[36]:
                    s = 0
                    while s < cd[36]:
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        _781 = mem[(32 * idx) + 128]
                        if s > -2:
                            revert with 'NH{q', 17
                        if s + 1 and 100 / cd[36] > -1 / s + 1:
                            revert with 'NH{q', 17
                        if cd[4] / 100 and (100 / cd[36]) + (s * 100 / cd[36]) > -1 / cd[4] / 100:
                            revert with 'NH{q', 17
                        mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = (100 / cd[36] * cd[4] / 100) + (s * 100 / cd[36] * cd[4] / 100)
                        mem[mem[64] + 36] = 64
                        _847 = mem[_515]
                        mem[mem[64] + 68] = mem[_515]
                        idx = 0
                        t = _515 + 32
                        u = mem[64] + 100
                        while idx < _847:
                            mem[u] = mem[t + 12 len 20]
                            idx = idx + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        require ext_code.size(address(_781))
                        staticcall address(_781).getAmountsOut(uint256 arg1, address[] arg2) with:
                                gas gas_remaining wei
                               args (100 / cd[36] * cd[4] / 100) + (s * 100 / cd[36] * cd[4] / 100), 64, mem[mem[64] + 68 len (32 * _847) + 32]
                        if not ext_call.success:
                            _1029 = mem[64]
                            mem[mem[64]] = 2
                            mem[64] = mem[64] + 96
                            if 0 >= mem[_1029]:
                                revert with 'NH{q', 50
                            mem[_1029 + 32] = cd[4]
                            if 1 >= mem[_1029]:
                                revert with 'NH{q', 50
                            mem[_1029 + 64] = 0
                            if 1 >= mem[_1029]:
                                revert with 'NH{q', 50
                            if s >= mem[_515 + (32 * cd[36]) + 128]:
                                revert with 'NH{q', 50
                            mem[(32 * s) + _515 + (32 * cd[36]) + 160] = 0
                        else:
                            _1023 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1030 = mem[_1023]
                            require mem[_1023] <= test266151307()
                            require _1023 + mem[_1023] + 31 < _1023 + return_data.size
                            _1045 = mem[_1023 + mem[_1023]]
                            if mem[_1023 + mem[_1023]] > test266151307():
                                revert with 'NH{q', 65
                            if _1023 + ceil32(return_data.size) + (32 * mem[_1023 + mem[_1023]]) + 32 > test266151307() or (32 * mem[_1023 + mem[_1023]]) + 32 < 0:
                                revert with 'NH{q', 65
                            mem[64] = _1023 + ceil32(return_data.size) + (32 * mem[_1023 + mem[_1023]]) + 32
                            mem[_1023 + ceil32(return_data.size)] = _1045
                            require _1030 + (32 * _1045) + 32 <= return_data.size
                            idx = 0
                            t = _1023 + _1030 + 32
                            u = _1023 + ceil32(return_data.size) + 32
                            while idx < _1045:
                                require mem[t] == mem[t]
                                mem[u] = mem[t]
                                idx = idx + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            if 1 >= _1045:
                                revert with 'NH{q', 50
                            if s >= mem[_515 + (32 * cd[36]) + 128]:
                                revert with 'NH{q', 50
                            mem[(32 * s) + _515 + (32 * cd[36]) + 160] = mem[_1023 + ceil32(return_data.size) + 64]
                        if s >= mem[_515 + 96]:
                            revert with 'NH{q', 50
                        mem[(32 * s) + _515 + 128] = 0
                        if s == -1:
                            revert with 'NH{q', 17
                        s = s + 1
                        continue 
                    _767 = mem[64]
                    mem[64] = mem[64] + 160
                    mem[_767] = _515
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    mem[_767 + 32] = mem[(32 * idx) + 140 len 20]
                    mem[_767 + 64] = 100 / cd[36]
                    mem[_767 + 96] = _515 + 96
                    mem[_767 + 128] = _515 + (32 * cd[36]) + 128
                    if idx >= mem[(32 * ('cd', 68).length) + 128]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + (32 * ('cd', 68).length) + 160] = _767
                else:
                    mem[_515 + (32 * cd[36]) + 160 len 32 * cd[36]] = call.data[calldata.size len 32 * cd[36]]
                    s = 0
                    while s < cd[36]:
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        _784 = mem[(32 * idx) + 128]
                        if s > -2:
                            revert with 'NH{q', 17
                        if s + 1 and 100 / cd[36] > -1 / s + 1:
                            revert with 'NH{q', 17
                        if cd[4] / 100 and (100 / cd[36]) + (s * 100 / cd[36]) > -1 / cd[4] / 100:
                            revert with 'NH{q', 17
                        mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = (100 / cd[36] * cd[4] / 100) + (s * 100 / cd[36] * cd[4] / 100)
                        mem[mem[64] + 36] = 64
                        _848 = mem[_515]
                        mem[mem[64] + 68] = mem[_515]
                        idx = 0
                        t = _515 + 32
                        u = mem[64] + 100
                        while idx < _848:
                            mem[u] = mem[t + 12 len 20]
                            idx = idx + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        require ext_code.size(address(_784))
                        staticcall address(_784).getAmountsOut(uint256 arg1, address[] arg2) with:
                                gas gas_remaining wei
                               args (100 / cd[36] * cd[4] / 100) + (s * 100 / cd[36] * cd[4] / 100), 64, mem[mem[64] + 68 len (32 * _848) + 32]
                        if not ext_call.success:
                            _1031 = mem[64]
                            mem[mem[64]] = 2
                            mem[64] = mem[64] + 96
                            if 0 >= mem[_1031]:
                                revert with 'NH{q', 50
                            mem[_1031 + 32] = cd[4]
                            if 1 >= mem[_1031]:
                                revert with 'NH{q', 50
                            mem[_1031 + 64] = 0
                            if 1 >= mem[_1031]:
                                revert with 'NH{q', 50
                            if s >= mem[_515 + (32 * cd[36]) + 128]:
                                revert with 'NH{q', 50
                            mem[(32 * s) + _515 + (32 * cd[36]) + 160] = 0
                        else:
                            _1024 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1032 = mem[_1024]
                            require mem[_1024] <= test266151307()
                            require _1024 + mem[_1024] + 31 < _1024 + return_data.size
                            _1047 = mem[_1024 + mem[_1024]]
                            if mem[_1024 + mem[_1024]] > test266151307():
                                revert with 'NH{q', 65
                            if _1024 + ceil32(return_data.size) + (32 * mem[_1024 + mem[_1024]]) + 32 > test266151307() or (32 * mem[_1024 + mem[_1024]]) + 32 < 0:
                                revert with 'NH{q', 65
                            mem[64] = _1024 + ceil32(return_data.size) + (32 * mem[_1024 + mem[_1024]]) + 32
                            mem[_1024 + ceil32(return_data.size)] = _1047
                            require _1032 + (32 * _1047) + 32 <= return_data.size
                            idx = 0
                            t = _1024 + _1032 + 32
                            u = _1024 + ceil32(return_data.size) + 32
                            while idx < _1047:
                                require mem[t] == mem[t]
                                mem[u] = mem[t]
                                idx = idx + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            if 1 >= _1047:
                                revert with 'NH{q', 50
                            if s >= mem[_515 + (32 * cd[36]) + 128]:
                                revert with 'NH{q', 50
                            mem[(32 * s) + _515 + (32 * cd[36]) + 160] = mem[_1024 + ceil32(return_data.size) + 64]
                        if s >= mem[_515 + 96]:
                            revert with 'NH{q', 50
                        mem[(32 * s) + _515 + 128] = 0
                        if s == -1:
                            revert with 'NH{q', 17
                        s = s + 1
                        continue 
                    _770 = mem[64]
                    mem[64] = mem[64] + 160
                    mem[_770] = _515
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    mem[_770 + 32] = mem[(32 * idx) + 140 len 20]
                    mem[_770 + 64] = 100 / cd[36]
                    mem[_770 + 96] = _515 + 96
                    mem[_770 + 128] = _515 + (32 * cd[36]) + 128
                    if idx >= mem[(32 * ('cd', 68).length) + 128]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + (32 * ('cd', 68).length) + 160] = _770
            else:
                mem[_515 + 128 len 32 * cd[36]] = call.data[calldata.size len 32 * cd[36]]
                if cd[36] > test266151307():
                    revert with 'NH{q', 65
                mem[_515 + (32 * cd[36]) + 128] = cd[36]
                mem[64] = _515 + (64 * cd[36]) + 160
                if not cd[36]:
                    s = 0
                    while s < cd[36]:
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        _787 = mem[(32 * idx) + 128]
                        if s > -2:
                            revert with 'NH{q', 17
                        if s + 1 and 100 / cd[36] > -1 / s + 1:
                            revert with 'NH{q', 17
                        if cd[4] / 100 and (100 / cd[36]) + (s * 100 / cd[36]) > -1 / cd[4] / 100:
                            revert with 'NH{q', 17
                        mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = (100 / cd[36] * cd[4] / 100) + (s * 100 / cd[36] * cd[4] / 100)
                        mem[mem[64] + 36] = 64
                        _849 = mem[_515]
                        mem[mem[64] + 68] = mem[_515]
                        idx = 0
                        t = _515 + 32
                        u = mem[64] + 100
                        while idx < _849:
                            mem[u] = mem[t + 12 len 20]
                            idx = idx + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        require ext_code.size(address(_787))
                        staticcall address(_787).getAmountsOut(uint256 arg1, address[] arg2) with:
                                gas gas_remaining wei
                               args (100 / cd[36] * cd[4] / 100) + (s * 100 / cd[36] * cd[4] / 100), 64, mem[mem[64] + 68 len (32 * _849) + 32]
                        if not ext_call.success:
                            _1033 = mem[64]
                            mem[mem[64]] = 2
                            mem[64] = mem[64] + 96
                            if 0 >= mem[_1033]:
                                revert with 'NH{q', 50
                            mem[_1033 + 32] = cd[4]
                            if 1 >= mem[_1033]:
                                revert with 'NH{q', 50
                            mem[_1033 + 64] = 0
                            if 1 >= mem[_1033]:
                                revert with 'NH{q', 50
                            if s >= mem[_515 + (32 * cd[36]) + 128]:
                                revert with 'NH{q', 50
                            mem[(32 * s) + _515 + (32 * cd[36]) + 160] = 0
                        else:
                            _1025 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1034 = mem[_1025]
                            require mem[_1025] <= test266151307()
                            require _1025 + mem[_1025] + 31 < _1025 + return_data.size
                            _1049 = mem[_1025 + mem[_1025]]
                            if mem[_1025 + mem[_1025]] > test266151307():
                                revert with 'NH{q', 65
                            if _1025 + ceil32(return_data.size) + (32 * mem[_1025 + mem[_1025]]) + 32 > test266151307() or (32 * mem[_1025 + mem[_1025]]) + 32 < 0:
                                revert with 'NH{q', 65
                            mem[64] = _1025 + ceil32(return_data.size) + (32 * mem[_1025 + mem[_1025]]) + 32
                            mem[_1025 + ceil32(return_data.size)] = _1049
                            require _1034 + (32 * _1049) + 32 <= return_data.size
                            idx = 0
                            t = _1025 + _1034 + 32
                            u = _1025 + ceil32(return_data.size) + 32
                            while idx < _1049:
                                require mem[t] == mem[t]
                                mem[u] = mem[t]
                                idx = idx + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            if 1 >= _1049:
                                revert with 'NH{q', 50
                            if s >= mem[_515 + (32 * cd[36]) + 128]:
                                revert with 'NH{q', 50
                            mem[(32 * s) + _515 + (32 * cd[36]) + 160] = mem[_1025 + ceil32(return_data.size) + 64]
                        if s >= mem[_515 + 96]:
                            revert with 'NH{q', 50
                        mem[(32 * s) + _515 + 128] = 0
                        if s == -1:
                            revert with 'NH{q', 17
                        s = s + 1
                        continue 
                    _773 = mem[64]
                    mem[64] = mem[64] + 160
                    mem[_773] = _515
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    mem[_773 + 32] = mem[(32 * idx) + 140 len 20]
                    mem[_773 + 64] = 100 / cd[36]
                    mem[_773 + 96] = _515 + 96
                    mem[_773 + 128] = _515 + (32 * cd[36]) + 128
                    if idx >= mem[(32 * ('cd', 68).length) + 128]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + (32 * ('cd', 68).length) + 160] = _773
                else:
                    mem[_515 + (32 * cd[36]) + 160 len 32 * cd[36]] = call.data[calldata.size len 32 * cd[36]]
                    s = 0
                    while s < cd[36]:
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        _790 = mem[(32 * idx) + 128]
                        if s > -2:
                            revert with 'NH{q', 17
                        if s + 1 and 100 / cd[36] > -1 / s + 1:
                            revert with 'NH{q', 17
                        if cd[4] / 100 and (100 / cd[36]) + (s * 100 / cd[36]) > -1 / cd[4] / 100:
                            revert with 'NH{q', 17
                        mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = (100 / cd[36] * cd[4] / 100) + (s * 100 / cd[36] * cd[4] / 100)
                        mem[mem[64] + 36] = 64
                        _850 = mem[_515]
                        mem[mem[64] + 68] = mem[_515]
                        idx = 0
                        t = _515 + 32
                        u = mem[64] + 100
                        while idx < _850:
                            mem[u] = mem[t + 12 len 20]
                            idx = idx + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        require ext_code.size(address(_790))
                        staticcall address(_790).getAmountsOut(uint256 arg1, address[] arg2) with:
                                gas gas_remaining wei
                               args (100 / cd[36] * cd[4] / 100) + (s * 100 / cd[36] * cd[4] / 100), 64, mem[mem[64] + 68 len (32 * _850) + 32]
                        if not ext_call.success:
                            _1035 = mem[64]
                            mem[mem[64]] = 2
                            mem[64] = mem[64] + 96
                            if 0 >= mem[_1035]:
                                revert with 'NH{q', 50
                            mem[_1035 + 32] = cd[4]
                            if 1 >= mem[_1035]:
                                revert with 'NH{q', 50
                            mem[_1035 + 64] = 0
                            if 1 >= mem[_1035]:
                                revert with 'NH{q', 50
                            if s >= mem[_515 + (32 * cd[36]) + 128]:
                                revert with 'NH{q', 50
                            mem[(32 * s) + _515 + (32 * cd[36]) + 160] = 0
                        else:
                            _1026 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1036 = mem[_1026]
                            require mem[_1026] <= test266151307()
                            require _1026 + mem[_1026] + 31 < _1026 + return_data.size
                            _1051 = mem[_1026 + mem[_1026]]
                            if mem[_1026 + mem[_1026]] > test266151307():
                                revert with 'NH{q', 65
                            if _1026 + ceil32(return_data.size) + (32 * mem[_1026 + mem[_1026]]) + 32 > test266151307() or (32 * mem[_1026 + mem[_1026]]) + 32 < 0:
                                revert with 'NH{q', 65
                            mem[64] = _1026 + ceil32(return_data.size) + (32 * mem[_1026 + mem[_1026]]) + 32
                            mem[_1026 + ceil32(return_data.size)] = _1051
                            require _1036 + (32 * _1051) + 32 <= return_data.size
                            idx = 0
                            t = _1026 + _1036 + 32
                            u = _1026 + ceil32(return_data.size) + 32
                            while idx < _1051:
                                require mem[t] == mem[t]
                                mem[u] = mem[t]
                                idx = idx + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            if 1 >= _1051:
                                revert with 'NH{q', 50
                            if s >= mem[_515 + (32 * cd[36]) + 128]:
                                revert with 'NH{q', 50
                            mem[(32 * s) + _515 + (32 * cd[36]) + 160] = mem[_1026 + ceil32(return_data.size) + 64]
                        if s >= mem[_515 + 96]:
                            revert with 'NH{q', 50
                        mem[(32 * s) + _515 + 128] = 0
                        if s == -1:
                            revert with 'NH{q', 17
                        s = s + 1
                        continue 
                    _776 = mem[64]
                    mem[64] = mem[64] + 160
                    mem[_776] = _515
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    mem[_776 + 32] = mem[(32 * idx) + 140 len 20]
                    mem[_776 + 64] = 100 / cd[36]
                    mem[_776 + 96] = _515 + 96
                    mem[_776 + 128] = _515 + (32 * cd[36]) + 128
                    if idx >= mem[(32 * ('cd', 68).length) + 128]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + (32 * ('cd', 68).length) + 160] = _776
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _514 = mem[64]
        mem[mem[64]] = 32
        _517 = mem[(32 * ('cd', 68).length) + 128]
        mem[mem[64] + 32] = mem[(32 * ('cd', 68).length) + 128]
        idx = 0
        s = (32 * ('cd', 68).length) + 160
        t = mem[64] + (32 * _517) + 64
        u = mem[64] + 64
        while idx < _517:
            mem[u] = t + -_514 - 64
            _766 = mem[s]
            _792 = mem[mem[s]]
            mem[t] = 160
            _793 = mem[_792]
            mem[t + 160] = mem[_792]
            v = 0
            w = _792 + 32
            x = t + 192
            while v < _793:
                mem[x] = mem[w + 12 len 20]
                v = v + 1
                w = w + 32
                x = x + 32
                continue 
            mem[t + 32] = mem[_766 + 44 len 20]
            mem[t + 64] = mem[_766 + 64]
            _1053 = mem[_766 + 96]
            mem[t + 96] = (32 * _793) + 192
            _1071 = mem[_1053]
            mem[t + (32 * _793) + 192] = mem[_1053]
            v = 0
            w = _1053 + 32
            x = t + (32 * _793) + 224
            while v < _1071:
                mem[x] = mem[w]
                v = v + 1
                w = w + 32
                x = x + 32
                continue 
            _1230 = mem[_766 + 128]
            mem[t + 128] = (32 * _793) + (32 * _1071) + 224
            _1249 = mem[_1230]
            mem[t + (32 * _793) + (32 * _1071) + 224] = mem[_1230]
            v = 0
            w = _1230 + 32
            x = t + (32 * _793) + (32 * _1071) + 256
            while v < _1249:
                mem[x] = mem[w]
                v = v + 1
                w = w + 32
                x = x + 32
                continue 
            idx = idx + 1
            s = s + 32
            t = t + (32 * _793) + (32 * _1071) + (32 * _1249) + 256
            u = u + 32
            continue 
    else:
        mem[64] = (64 * ('cd', 68).length) + 320
        mem[(64 * ('cd', 68).length) + 160] = 96
        mem[(64 * ('cd', 68).length) + 192] = 0
        mem[(64 * ('cd', 68).length) + 224] = 0
        mem[(64 * ('cd', 68).length) + 256] = 96
        mem[(64 * ('cd', 68).length) + 288] = 96
        mem[var59001] = (64 * ('cd', 68).length) + 160
        s = var59001
        idx = var59002
        while idx - 1:
            mem[64] = mem[64] + 160
            mem[(64 * ('cd', 68).length) + 160] = 96
            mem[(64 * ('cd', 68).length) + 192] = 0
            mem[(64 * ('cd', 68).length) + 224] = 0
            mem[(64 * ('cd', 68).length) + 256] = 96
            mem[(64 * ('cd', 68).length) + 288] = 96
            mem[s + 32] = (64 * ('cd', 68).length) + 160
            s = s + 32
            idx = idx - 1
            continue 
        if not cd[36]:
            revert with 'NH{q', 18
        _1009 = mem[96]
        idx = 0
        while idx < _1009:
            _1017 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            if 0 >= mem[_1017]:
                revert with 'NH{q', 50
            mem[_1017 + 32] = address(cd[100])
            if 1 >= mem[_1017]:
                revert with 'NH{q', 50
            mem[_1017 + 64] = address(cd[132])
            if cd[36] > test266151307():
                revert with 'NH{q', 65
            mem[_1017 + 96] = cd[36]
            if not cd[36]:
                if cd[36] > test266151307():
                    revert with 'NH{q', 65
                mem[_1017 + (32 * cd[36]) + 128] = cd[36]
                mem[64] = _1017 + (64 * cd[36]) + 160
                if not cd[36]:
                    s = 0
                    while s < cd[36]:
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        _1237 = mem[(32 * idx) + 128]
                        if s > -2:
                            revert with 'NH{q', 17
                        if s + 1 and 100 / cd[36] > -1 / s + 1:
                            revert with 'NH{q', 17
                        if cd[4] / 100 and (100 / cd[36]) + (s * 100 / cd[36]) > -1 / cd[4] / 100:
                            revert with 'NH{q', 17
                        mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = (100 / cd[36] * cd[4] / 100) + (s * 100 / cd[36] * cd[4] / 100)
                        mem[mem[64] + 36] = 64
                        _1281 = mem[_1017]
                        mem[mem[64] + 68] = mem[_1017]
                        idx = 0
                        t = _1017 + 32
                        u = mem[64] + 100
                        while idx < _1281:
                            mem[u] = mem[t + 12 len 20]
                            _1009 = mem[96]
                            idx = idx + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        require ext_code.size(address(_1237))
                        staticcall address(_1237).getAmountsOut(uint256 arg1, address[] arg2) with:
                                gas gas_remaining wei
                               args (100 / cd[36] * cd[4] / 100) + (s * 100 / cd[36] * cd[4] / 100), 64, mem[mem[64] + 68 len (32 * _1281) + 32]
                        if not ext_call.success:
                            _1372 = mem[64]
                            mem[mem[64]] = 2
                            mem[64] = mem[64] + 96
                            if 0 >= mem[_1372]:
                                revert with 'NH{q', 50
                            mem[_1372 + 32] = cd[4]
                            if 1 >= mem[_1372]:
                                revert with 'NH{q', 50
                            mem[_1372 + 64] = 0
                            if 1 >= mem[_1372]:
                                revert with 'NH{q', 50
                            if s >= mem[_1017 + (32 * cd[36]) + 128]:
                                revert with 'NH{q', 50
                            mem[(32 * s) + _1017 + (32 * cd[36]) + 160] = 0
                        else:
                            _1368 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1373 = mem[_1368]
                            require mem[_1368] <= test266151307()
                            require _1368 + mem[_1368] + 31 < _1368 + return_data.size
                            _1386 = mem[_1368 + mem[_1368]]
                            if mem[_1368 + mem[_1368]] > test266151307():
                                revert with 'NH{q', 65
                            if _1368 + ceil32(return_data.size) + (32 * mem[_1368 + mem[_1368]]) + 32 > test266151307() or (32 * mem[_1368 + mem[_1368]]) + 32 < 0:
                                revert with 'NH{q', 65
                            mem[64] = _1368 + ceil32(return_data.size) + (32 * mem[_1368 + mem[_1368]]) + 32
                            mem[_1368 + ceil32(return_data.size)] = _1386
                            require _1373 + (32 * _1386) + 32 <= return_data.size
                            idx = 0
                            t = _1368 + _1373 + 32
                            u = _1368 + ceil32(return_data.size) + 32
                            while idx < _1386:
                                require mem[t] == mem[t]
                                mem[u] = mem[t]
                                _1009 = mem[96]
                                idx = idx + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            if 1 >= _1386:
                                revert with 'NH{q', 50
                            if s >= mem[_1017 + (32 * cd[36]) + 128]:
                                revert with 'NH{q', 50
                            mem[(32 * s) + _1017 + (32 * cd[36]) + 160] = mem[_1368 + ceil32(return_data.size) + 64]
                        if s >= mem[_1017 + 96]:
                            revert with 'NH{q', 50
                        mem[(32 * s) + _1017 + 128] = 0
                        if s == -1:
                            revert with 'NH{q', 17
                        _1009 = mem[96]
                        s = s + 1
                        continue 
                    _1218 = mem[64]
                    mem[64] = mem[64] + 160
                    mem[_1218] = _1017
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    mem[_1218 + 32] = mem[(32 * idx) + 140 len 20]
                    mem[_1218 + 64] = 100 / cd[36]
                    mem[_1218 + 96] = _1017 + 96
                    mem[_1218 + 128] = _1017 + (32 * cd[36]) + 128
                    if idx >= mem[(32 * ('cd', 68).length) + 128]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + (32 * ('cd', 68).length) + 160] = _1218
                else:
                    mem[_1017 + (32 * cd[36]) + 160 len 32 * cd[36]] = call.data[calldata.size len 32 * cd[36]]
                    s = 0
                    while s < cd[36]:
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        _1240 = mem[(32 * idx) + 128]
                        if s > -2:
                            revert with 'NH{q', 17
                        if s + 1 and 100 / cd[36] > -1 / s + 1:
                            revert with 'NH{q', 17
                        if cd[4] / 100 and (100 / cd[36]) + (s * 100 / cd[36]) > -1 / cd[4] / 100:
                            revert with 'NH{q', 17
                        mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = (100 / cd[36] * cd[4] / 100) + (s * 100 / cd[36] * cd[4] / 100)
                        mem[mem[64] + 36] = 64
                        _1282 = mem[_1017]
                        mem[mem[64] + 68] = mem[_1017]
                        idx = 0
                        t = _1017 + 32
                        u = mem[64] + 100
                        while idx < _1282:
                            mem[u] = mem[t + 12 len 20]
                            _1009 = mem[96]
                            idx = idx + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        require ext_code.size(address(_1240))
                        staticcall address(_1240).getAmountsOut(uint256 arg1, address[] arg2) with:
                                gas gas_remaining wei
                               args (100 / cd[36] * cd[4] / 100) + (s * 100 / cd[36] * cd[4] / 100), 64, mem[mem[64] + 68 len (32 * _1282) + 32]
                        if not ext_call.success:
                            _1374 = mem[64]
                            mem[mem[64]] = 2
                            mem[64] = mem[64] + 96
                            if 0 >= mem[_1374]:
                                revert with 'NH{q', 50
                            mem[_1374 + 32] = cd[4]
                            if 1 >= mem[_1374]:
                                revert with 'NH{q', 50
                            mem[_1374 + 64] = 0
                            if 1 >= mem[_1374]:
                                revert with 'NH{q', 50
                            if s >= mem[_1017 + (32 * cd[36]) + 128]:
                                revert with 'NH{q', 50
                            mem[(32 * s) + _1017 + (32 * cd[36]) + 160] = 0
                        else:
                            _1369 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1375 = mem[_1369]
                            require mem[_1369] <= test266151307()
                            require _1369 + mem[_1369] + 31 < _1369 + return_data.size
                            _1388 = mem[_1369 + mem[_1369]]
                            if mem[_1369 + mem[_1369]] > test266151307():
                                revert with 'NH{q', 65
                            if _1369 + ceil32(return_data.size) + (32 * mem[_1369 + mem[_1369]]) + 32 > test266151307() or (32 * mem[_1369 + mem[_1369]]) + 32 < 0:
                                revert with 'NH{q', 65
                            mem[64] = _1369 + ceil32(return_data.size) + (32 * mem[_1369 + mem[_1369]]) + 32
                            mem[_1369 + ceil32(return_data.size)] = _1388
                            require _1375 + (32 * _1388) + 32 <= return_data.size
                            idx = 0
                            t = _1369 + _1375 + 32
                            u = _1369 + ceil32(return_data.size) + 32
                            while idx < _1388:
                                require mem[t] == mem[t]
                                mem[u] = mem[t]
                                _1009 = mem[96]
                                idx = idx + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            if 1 >= _1388:
                                revert with 'NH{q', 50
                            if s >= mem[_1017 + (32 * cd[36]) + 128]:
                                revert with 'NH{q', 50
                            mem[(32 * s) + _1017 + (32 * cd[36]) + 160] = mem[_1369 + ceil32(return_data.size) + 64]
                        if s >= mem[_1017 + 96]:
                            revert with 'NH{q', 50
                        mem[(32 * s) + _1017 + 128] = 0
                        if s == -1:
                            revert with 'NH{q', 17
                        _1009 = mem[96]
                        s = s + 1
                        continue 
                    _1221 = mem[64]
                    mem[64] = mem[64] + 160
                    mem[_1221] = _1017
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    mem[_1221 + 32] = mem[(32 * idx) + 140 len 20]
                    mem[_1221 + 64] = 100 / cd[36]
                    mem[_1221 + 96] = _1017 + 96
                    mem[_1221 + 128] = _1017 + (32 * cd[36]) + 128
                    if idx >= mem[(32 * ('cd', 68).length) + 128]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + (32 * ('cd', 68).length) + 160] = _1221
            else:
                mem[_1017 + 128 len 32 * cd[36]] = call.data[calldata.size len 32 * cd[36]]
                if cd[36] > test266151307():
                    revert with 'NH{q', 65
                mem[_1017 + (32 * cd[36]) + 128] = cd[36]
                mem[64] = _1017 + (64 * cd[36]) + 160
                if not cd[36]:
                    s = 0
                    while s < cd[36]:
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        _1243 = mem[(32 * idx) + 128]
                        if s > -2:
                            revert with 'NH{q', 17
                        if s + 1 and 100 / cd[36] > -1 / s + 1:
                            revert with 'NH{q', 17
                        if cd[4] / 100 and (100 / cd[36]) + (s * 100 / cd[36]) > -1 / cd[4] / 100:
                            revert with 'NH{q', 17
                        mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = (100 / cd[36] * cd[4] / 100) + (s * 100 / cd[36] * cd[4] / 100)
                        mem[mem[64] + 36] = 64
                        _1283 = mem[_1017]
                        mem[mem[64] + 68] = mem[_1017]
                        idx = 0
                        t = _1017 + 32
                        u = mem[64] + 100
                        while idx < _1283:
                            mem[u] = mem[t + 12 len 20]
                            _1009 = mem[96]
                            idx = idx + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        require ext_code.size(address(_1243))
                        staticcall address(_1243).getAmountsOut(uint256 arg1, address[] arg2) with:
                                gas gas_remaining wei
                               args (100 / cd[36] * cd[4] / 100) + (s * 100 / cd[36] * cd[4] / 100), 64, mem[mem[64] + 68 len (32 * _1283) + 32]
                        if not ext_call.success:
                            _1376 = mem[64]
                            mem[mem[64]] = 2
                            mem[64] = mem[64] + 96
                            if 0 >= mem[_1376]:
                                revert with 'NH{q', 50
                            mem[_1376 + 32] = cd[4]
                            if 1 >= mem[_1376]:
                                revert with 'NH{q', 50
                            mem[_1376 + 64] = 0
                            if 1 >= mem[_1376]:
                                revert with 'NH{q', 50
                            if s >= mem[_1017 + (32 * cd[36]) + 128]:
                                revert with 'NH{q', 50
                            mem[(32 * s) + _1017 + (32 * cd[36]) + 160] = 0
                        else:
                            _1370 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1377 = mem[_1370]
                            require mem[_1370] <= test266151307()
                            require _1370 + mem[_1370] + 31 < _1370 + return_data.size
                            _1390 = mem[_1370 + mem[_1370]]
                            if mem[_1370 + mem[_1370]] > test266151307():
                                revert with 'NH{q', 65
                            if _1370 + ceil32(return_data.size) + (32 * mem[_1370 + mem[_1370]]) + 32 > test266151307() or (32 * mem[_1370 + mem[_1370]]) + 32 < 0:
                                revert with 'NH{q', 65
                            mem[64] = _1370 + ceil32(return_data.size) + (32 * mem[_1370 + mem[_1370]]) + 32
                            mem[_1370 + ceil32(return_data.size)] = _1390
                            require _1377 + (32 * _1390) + 32 <= return_data.size
                            idx = 0
                            t = _1370 + _1377 + 32
                            u = _1370 + ceil32(return_data.size) + 32
                            while idx < _1390:
                                require mem[t] == mem[t]
                                mem[u] = mem[t]
                                _1009 = mem[96]
                                idx = idx + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            if 1 >= _1390:
                                revert with 'NH{q', 50
                            if s >= mem[_1017 + (32 * cd[36]) + 128]:
                                revert with 'NH{q', 50
                            mem[(32 * s) + _1017 + (32 * cd[36]) + 160] = mem[_1370 + ceil32(return_data.size) + 64]
                        if s >= mem[_1017 + 96]:
                            revert with 'NH{q', 50
                        mem[(32 * s) + _1017 + 128] = 0
                        if s == -1:
                            revert with 'NH{q', 17
                        _1009 = mem[96]
                        s = s + 1
                        continue 
                    _1224 = mem[64]
                    mem[64] = mem[64] + 160
                    mem[_1224] = _1017
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    mem[_1224 + 32] = mem[(32 * idx) + 140 len 20]
                    mem[_1224 + 64] = 100 / cd[36]
                    mem[_1224 + 96] = _1017 + 96
                    mem[_1224 + 128] = _1017 + (32 * cd[36]) + 128
                    if idx >= mem[(32 * ('cd', 68).length) + 128]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + (32 * ('cd', 68).length) + 160] = _1224
                else:
                    mem[_1017 + (32 * cd[36]) + 160 len 32 * cd[36]] = call.data[calldata.size len 32 * cd[36]]
                    s = 0
                    while s < cd[36]:
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        _1246 = mem[(32 * idx) + 128]
                        if s > -2:
                            revert with 'NH{q', 17
                        if s + 1 and 100 / cd[36] > -1 / s + 1:
                            revert with 'NH{q', 17
                        if cd[4] / 100 and (100 / cd[36]) + (s * 100 / cd[36]) > -1 / cd[4] / 100:
                            revert with 'NH{q', 17
                        mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = (100 / cd[36] * cd[4] / 100) + (s * 100 / cd[36] * cd[4] / 100)
                        mem[mem[64] + 36] = 64
                        _1284 = mem[_1017]
                        mem[mem[64] + 68] = mem[_1017]
                        idx = 0
                        t = _1017 + 32
                        u = mem[64] + 100
                        while idx < _1284:
                            mem[u] = mem[t + 12 len 20]
                            _1009 = mem[96]
                            idx = idx + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        require ext_code.size(address(_1246))
                        staticcall address(_1246).getAmountsOut(uint256 arg1, address[] arg2) with:
                                gas gas_remaining wei
                               args (100 / cd[36] * cd[4] / 100) + (s * 100 / cd[36] * cd[4] / 100), 64, mem[mem[64] + 68 len (32 * _1284) + 32]
                        if not ext_call.success:
                            _1378 = mem[64]
                            mem[mem[64]] = 2
                            mem[64] = mem[64] + 96
                            if 0 >= mem[_1378]:
                                revert with 'NH{q', 50
                            mem[_1378 + 32] = cd[4]
                            if 1 >= mem[_1378]:
                                revert with 'NH{q', 50
                            mem[_1378 + 64] = 0
                            if 1 >= mem[_1378]:
                                revert with 'NH{q', 50
                            if s >= mem[_1017 + (32 * cd[36]) + 128]:
                                revert with 'NH{q', 50
                            mem[(32 * s) + _1017 + (32 * cd[36]) + 160] = 0
                        else:
                            _1371 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1379 = mem[_1371]
                            require mem[_1371] <= test266151307()
                            require _1371 + mem[_1371] + 31 < _1371 + return_data.size
                            _1392 = mem[_1371 + mem[_1371]]
                            if mem[_1371 + mem[_1371]] > test266151307():
                                revert with 'NH{q', 65
                            if _1371 + ceil32(return_data.size) + (32 * mem[_1371 + mem[_1371]]) + 32 > test266151307() or (32 * mem[_1371 + mem[_1371]]) + 32 < 0:
                                revert with 'NH{q', 65
                            mem[64] = _1371 + ceil32(return_data.size) + (32 * mem[_1371 + mem[_1371]]) + 32
                            mem[_1371 + ceil32(return_data.size)] = _1392
                            require _1379 + (32 * _1392) + 32 <= return_data.size
                            idx = 0
                            t = _1371 + _1379 + 32
                            u = _1371 + ceil32(return_data.size) + 32
                            while idx < _1392:
                                require mem[t] == mem[t]
                                mem[u] = mem[t]
                                _1009 = mem[96]
                                idx = idx + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            if 1 >= _1392:
                                revert with 'NH{q', 50
                            if s >= mem[_1017 + (32 * cd[36]) + 128]:
                                revert with 'NH{q', 50
                            mem[(32 * s) + _1017 + (32 * cd[36]) + 160] = mem[_1371 + ceil32(return_data.size) + 64]
                        if s >= mem[_1017 + 96]:
                            revert with 'NH{q', 50
                        mem[(32 * s) + _1017 + 128] = 0
                        if s == -1:
                            revert with 'NH{q', 17
                        _1009 = mem[96]
                        s = s + 1
                        continue 
                    _1227 = mem[64]
                    mem[64] = mem[64] + 160
                    mem[_1227] = _1017
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    mem[_1227 + 32] = mem[(32 * idx) + 140 len 20]
                    mem[_1227 + 64] = 100 / cd[36]
                    mem[_1227 + 96] = _1017 + 96
                    mem[_1227 + 128] = _1017 + (32 * cd[36]) + 128
                    if idx >= mem[(32 * ('cd', 68).length) + 128]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + (32 * ('cd', 68).length) + 160] = _1227
            if idx == -1:
                revert with 'NH{q', 17
            _1009 = mem[96]
            idx = idx + 1
            continue 
        _1016 = mem[64]
        mem[mem[64]] = 32
        _1027 = mem[(32 * ('cd', 68).length) + 128]
        mem[mem[64] + 32] = mem[(32 * ('cd', 68).length) + 128]
        idx = 0
        s = (32 * ('cd', 68).length) + 160
        t = mem[64] + (32 * _1027) + 64
        u = mem[64] + 64
        while idx < _1027:
            mem[u] = t + -_1016 - 64
            _1217 = mem[s]
            _1248 = mem[mem[s]]
            mem[t] = 160
            _1250 = mem[_1248]
            mem[t + 160] = mem[_1248]
            v = 0
            w = _1248 + 32
            x = t + 192
            while v < _1250:
                mem[x] = mem[w + 12 len 20]
                v = v + 1
                w = w + 32
                x = x + 32
                continue 
            mem[t + 32] = mem[_1217 + 44 len 20]
            mem[t + 64] = mem[_1217 + 64]
            _1393 = mem[_1217 + 96]
            mem[t + 96] = (32 * _1250) + 192
            _1398 = mem[_1393]
            mem[t + (32 * _1250) + 192] = mem[_1393]
            v = 0
            w = _1393 + 32
            x = t + (32 * _1250) + 224
            while v < _1398:
                mem[x] = mem[w]
                v = v + 1
                w = w + 32
                x = x + 32
                continue 
            _1440 = mem[_1217 + 128]
            mem[t + 128] = (32 * _1250) + (32 * _1398) + 224
            _1445 = mem[_1440]
            mem[t + (32 * _1250) + (32 * _1398) + 224] = mem[_1440]
            v = 0
            w = _1440 + 32
            x = t + (32 * _1250) + (32 * _1398) + 256
            while v < _1445:
                mem[x] = mem[w]
                v = v + 1
                w = w + 32
                x = x + 32
                continue 
            idx = idx + 1
            s = s + 32
            t = t + (32 * _1250) + (32 * _1398) + (32 * _1445) + 256
            u = u + 32
            continue 
    return memory
      from mem[64]
       len t - mem[64]
}

function sub_6bcee570(?) payable {
    require calldata.size - 4 >= 160
    require cd[4] == cd[4]
    require cd[36] == cd[36]
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    if ('cd', 68).length > test266151307():
        revert with 'NH{q', 65
    if (32 * ('cd', 68).length) + 128 > test266151307() or (32 * ('cd', 68).length) + 128 < 96:
        revert with 'NH{q', 65
    mem[64] = (32 * ('cd', 68).length) + 128
    mem[96] = ('cd', 68).length
    require cd[68] + (96 * ('cd', 68).length) + 36 <= calldata.size
    idx = 0
    s = cd[68] + 36
    t = 128
    while idx < ('cd', 68).length:
        require calldata.size - s >= 96
        _564 = mem[64]
        if mem[64] + 96 > test266151307() or mem[64] + 96 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + 96
        require cd[s] == address(cd[s])
        mem[_564] = cd[s]
        require cd[(s + 32)] == cd[(s + 32)]
        mem[_564 + 32] = cd[(s + 32)]
        require cd[(s + 64)] == cd[(s + 64)]
        mem[_564 + 64] = cd[(s + 64)]
        mem[t] = _564
        idx = idx + 1
        s = s + 96
        t = t + 32
        continue 
    require cd[100] <= test266151307()
    require cd[100] + 35 < calldata.size
    if ('cd', 100).length > test266151307():
        revert with 'NH{q', 65
    _565 = mem[64]
    if mem[64] + (32 * ('cd', 100).length) + 32 > test266151307() or mem[64] + (32 * ('cd', 100).length) + 32 < mem[64]:
        revert with 'NH{q', 65
    mem[64] = mem[64] + (32 * ('cd', 100).length) + 32
    mem[_565] = ('cd', 100).length
    require cd[100] + (32 * ('cd', 100).length) + 36 <= calldata.size
    idx = 0
    s = cd[100] + 36
    t = _565 + 32
    while idx < ('cd', 100).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[132] == address(cd[132])
    _1165 = mem[96]
    if mem[96] and ('cd', 100).length > -1 / mem[96]:
        revert with 'NH{q', 17
    if mem[96] * ('cd', 100).length > test266151307():
        revert with 'NH{q', 65
    _1166 = mem[64]
    mem[mem[64]] = mem[96] * ('cd', 100).length
    mem[64] = mem[64] + (32 * _1165 * ('cd', 100).length) + 32
    if not _1165 * ('cd', 100).length:
        _1762 = mem[96]
        idx = 0
        while idx < _1762:
            _2357 = mem[_565]
            s = 0
            while s < _2357:
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                if address(cd[132]) != mem[mem[(32 * idx) + 128] + 12 len 20]:
                    _2365 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    mem[_2365 + 32 len 64] = call.data[calldata.size len 64]
                    if 0 >= mem[_2365]:
                        revert with 'NH{q', 50
                    mem[_2365 + 32] = address(cd[132])
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    if 1 >= mem[_2365]:
                        revert with 'NH{q', 50
                    mem[_2365 + 64] = mem[mem[(32 * idx) + 128] + 12 len 20]
                    if cd[36] > test266151307():
                        revert with 'NH{q', 65
                    mem[_2365 + 96] = cd[36]
                    if not cd[36]:
                        if cd[36] > test266151307():
                            revert with 'NH{q', 65
                        mem[_2365 + (32 * cd[36]) + 128] = cd[36]
                        mem[64] = _2365 + (64 * cd[36]) + 160
                        if not cd[36]:
                            t = 0
                            while t < cd[36]:
                                if s >= mem[_565]:
                                    revert with 'NH{q', 50
                                _2965 = mem[(32 * s) + _565 + 32]
                                if not cd[36]:
                                    revert with 'NH{q', 18
                                if t > -2:
                                    revert with 'NH{q', 17
                                if t + 1 and 100 / cd[36] > -1 / t + 1:
                                    revert with 'NH{q', 17
                                if cd[4] / 100 and (100 / cd[36]) + (t * 100 / cd[36]) > -1 / cd[4] / 100:
                                    revert with 'NH{q', 17
                                mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = (100 / cd[36] * cd[4] / 100) + (t * 100 / cd[36] * cd[4] / 100)
                                mem[mem[64] + 36] = 64
                                _3046 = mem[_2365]
                                mem[mem[64] + 68] = mem[_2365]
                                s = 0
                                u = _2365 + 32
                                v = mem[64] + 100
                                while s < _3046:
                                    mem[v] = mem[u + 12 len 20]
                                    _1762 = mem[96]
                                    _2357 = mem[_565]
                                    s = s + 1
                                    u = u + 32
                                    v = v + 32
                                    continue 
                                require ext_code.size(address(_2965))
                                staticcall address(_2965).getAmountsOut(uint256 arg1, address[] arg2) with:
                                        gas gas_remaining wei
                                       args (100 / cd[36] * cd[4] / 100) + (t * 100 / cd[36] * cd[4] / 100), 64, mem[mem[64] + 68 len (32 * _3046) + 32]
                                if not ext_call.success:
                                    _3548 = mem[64]
                                    mem[mem[64]] = 2
                                    mem[64] = mem[64] + 96
                                    if 0 >= mem[_3548]:
                                        revert with 'NH{q', 50
                                    mem[_3548 + 32] = cd[4]
                                    if 1 >= mem[_3548]:
                                        revert with 'NH{q', 50
                                    mem[_3548 + 64] = 0
                                    if 1 >= mem[_3548]:
                                        revert with 'NH{q', 50
                                    if t >= mem[_2365 + (32 * cd[36]) + 128]:
                                        revert with 'NH{q', 50
                                    mem[(32 * t) + _2365 + (32 * cd[36]) + 160] = 0
                                    if idx >= mem[96]:
                                        revert with 'NH{q', 50
                                    if not mem[mem[(32 * idx) + 128] + 32]:
                                        if idx >= mem[96]:
                                            revert with 'NH{q', 50
                                        if 1 >= mem[_3548]:
                                            revert with 'NH{q', 50
                                        if 0 and mem[mem[(32 * idx) + 128] + 64] > -1 / 0:
                                            revert with 'NH{q', 17
                                        if t >= mem[_2365 + 96]:
                                            revert with 'NH{q', 50
                                        mem[(32 * t) + _2365 + 128] = 0
                                    else:
                                        if bool(bool(mem[mem[(32 * idx) + 128] + 32] < 78)) or bool(bool(mem[mem[(32 * idx) + 128] + 32] < 32)):
                                            if 10^mem[mem[(32 * idx) + 128] + 32] > -1:
                                                revert with 'NH{q', 17
                                            if idx >= mem[96]:
                                                revert with 'NH{q', 50
                                            if 1 >= mem[_3548]:
                                                revert with 'NH{q', 50
                                            if 0 and mem[mem[(32 * idx) + 128] + 64] > -1 / 0:
                                                revert with 'NH{q', 17
                                            if not 10^mem[mem[(32 * idx) + 128] + 32]:
                                                revert with 'NH{q', 18
                                            if t >= mem[_2365 + 96]:
                                                revert with 'NH{q', 50
                                            mem[(32 * t) + _2365 + 128] = 0 / 10^mem[mem[(32 * idx) + 128] + 32]
                                        else:
                                            u = 10
                                            v = 1
                                            s = mem[mem[(32 * idx) + 128] + 32]
                                            while s > 1:
                                                if u > -1 / u:
                                                    revert with 'NH{q', 17
                                                _1762 = mem[96]
                                                _2357 = mem[_565]
                                                if not bool(s):
                                                    u = u * u
                                                    v = v
                                                    s = uint255(s) * 0.5
                                                    continue 
                                                u = u * u
                                                v = v * u
                                                s = uint255(s) * 0.5
                                                continue 
                                            if v > -1 / u:
                                                revert with 'NH{q', 17
                                            if idx >= mem[96]:
                                                revert with 'NH{q', 50
                                            if 1 >= mem[_3548]:
                                                revert with 'NH{q', 50
                                            if 0 and mem[mem[(32 * idx) + 128] + 64] > -1 / 0:
                                                revert with 'NH{q', 17
                                            if not v * u:
                                                revert with 'NH{q', 18
                                            if t >= mem[_2365 + 96]:
                                                revert with 'NH{q', 50
                                            mem[(32 * t) + _2365 + 128] = 0 / v * u
                                else:
                                    _3542 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _3549 = mem[_3542]
                                    require mem[_3542] <= test266151307()
                                    require _3542 + mem[_3542] + 31 < _3542 + return_data.size
                                    _3565 = mem[_3542 + mem[_3542]]
                                    if mem[_3542 + mem[_3542]] > test266151307():
                                        revert with 'NH{q', 65
                                    if _3542 + ceil32(return_data.size) + (32 * mem[_3542 + mem[_3542]]) + 32 > test266151307() or (32 * mem[_3542 + mem[_3542]]) + 32 < 0:
                                        revert with 'NH{q', 65
                                    mem[64] = _3542 + ceil32(return_data.size) + (32 * mem[_3542 + mem[_3542]]) + 32
                                    mem[_3542 + ceil32(return_data.size)] = _3565
                                    require _3549 + (32 * _3565) + 32 <= return_data.size
                                    s = 0
                                    u = _3542 + _3549 + 32
                                    v = _3542 + ceil32(return_data.size) + 32
                                    while s < _3565:
                                        require mem[u] == mem[u]
                                        mem[v] = mem[u]
                                        _1762 = mem[96]
                                        _2357 = mem[_565]
                                        s = s + 1
                                        u = u + 32
                                        v = v + 32
                                        continue 
                                    if 1 >= _3565:
                                        revert with 'NH{q', 50
                                    if t >= mem[_2365 + (32 * cd[36]) + 128]:
                                        revert with 'NH{q', 50
                                    mem[(32 * t) + _2365 + (32 * cd[36]) + 160] = mem[_3542 + ceil32(return_data.size) + 64]
                                    if idx >= mem[96]:
                                        revert with 'NH{q', 50
                                    if not mem[mem[(32 * idx) + 128] + 32]:
                                        if idx >= mem[96]:
                                            revert with 'NH{q', 50
                                        if 1 >= _3565:
                                            revert with 'NH{q', 50
                                        if mem[_3542 + ceil32(return_data.size) + 64] and mem[mem[(32 * idx) + 128] + 64] > -1 / mem[_3542 + ceil32(return_data.size) + 64]:
                                            revert with 'NH{q', 17
                                        if t >= mem[_2365 + 96]:
                                            revert with 'NH{q', 50
                                        mem[(32 * t) + _2365 + 128] = mem[_3542 + ceil32(return_data.size) + 64] * mem[mem[(32 * idx) + 128] + 64]
                                    else:
                                        if bool(bool(mem[mem[(32 * idx) + 128] + 32] < 78)) or bool(bool(mem[mem[(32 * idx) + 128] + 32] < 32)):
                                            if 10^mem[mem[(32 * idx) + 128] + 32] > -1:
                                                revert with 'NH{q', 17
                                            if idx >= mem[96]:
                                                revert with 'NH{q', 50
                                            if 1 >= _3565:
                                                revert with 'NH{q', 50
                                            if mem[_3542 + ceil32(return_data.size) + 64] and mem[mem[(32 * idx) + 128] + 64] > -1 / mem[_3542 + ceil32(return_data.size) + 64]:
                                                revert with 'NH{q', 17
                                            if not 10^mem[mem[(32 * idx) + 128] + 32]:
                                                revert with 'NH{q', 18
                                            if t >= mem[_2365 + 96]:
                                                revert with 'NH{q', 50
                                            mem[(32 * t) + _2365 + 128] = mem[_3542 + ceil32(return_data.size) + 64] * mem[mem[(32 * idx) + 128] + 64] / 10^mem[mem[(32 * idx) + 128] + 32]
                                        else:
                                            u = 10
                                            v = 1
                                            s = mem[mem[(32 * idx) + 128] + 32]
                                            while s > 1:
                                                if u > -1 / u:
                                                    revert with 'NH{q', 17
                                                _1762 = mem[96]
                                                _2357 = mem[_565]
                                                if not bool(s):
                                                    u = u * u
                                                    v = v
                                                    s = uint255(s) * 0.5
                                                    continue 
                                                u = u * u
                                                v = v * u
                                                s = uint255(s) * 0.5
                                                continue 
                                            if v > -1 / u:
                                                revert with 'NH{q', 17
                                            if idx >= mem[96]:
                                                revert with 'NH{q', 50
                                            if 1 >= _3565:
                                                revert with 'NH{q', 50
                                            if mem[_3542 + ceil32(return_data.size) + 64] and mem[mem[(32 * idx) + 128] + 64] > -1 / mem[_3542 + ceil32(return_data.size) + 64]:
                                                revert with 'NH{q', 17
                                            if not v * u:
                                                revert with 'NH{q', 18
                                            if t >= mem[_2365 + 96]:
                                                revert with 'NH{q', 50
                                            mem[(32 * t) + _2365 + 128] = mem[_3542 + ceil32(return_data.size) + 64] * mem[mem[(32 * idx) + 128] + 64] / v * u
                                if t == -1:
                                    revert with 'NH{q', 17
                                _1762 = mem[96]
                                _2357 = mem[_565]
                                t = t + 1
                                continue 
                            _2951 = mem[64]
                            mem[64] = mem[64] + 160
                            mem[_2951] = _2365
                            if s >= mem[_565]:
                                revert with 'NH{q', 50
                            mem[_2951 + 32] = mem[(32 * s) + _565 + 44 len 20]
                            if not cd[36]:
                                revert with 'NH{q', 18
                            mem[_2951 + 64] = 100 / cd[36]
                            mem[_2951 + 96] = _2365 + 96
                            mem[_2951 + 128] = _2365 + (32 * cd[36]) + 128
                            if idx and mem[_565] > -1 / idx:
                                revert with 'NH{q', 17
                            if idx * mem[_565] > -s - 1:
                                revert with 'NH{q', 17
                            if (idx * mem[_565]) + s >= mem[_1166]:
                                revert with 'NH{q', 50
                            mem[(32 * (idx * mem[_565]) + s) + _1166 + 32] = _2951
                        else:
                            mem[_2365 + (32 * cd[36]) + 160 len 32 * cd[36]] = call.data[calldata.size len 32 * cd[36]]
                            t = 0
                            while t < cd[36]:
                                if s >= mem[_565]:
                                    revert with 'NH{q', 50
                                _2967 = mem[(32 * s) + _565 + 32]
                                if not cd[36]:
                                    revert with 'NH{q', 18
                                if t > -2:
                                    revert with 'NH{q', 17
                                if t + 1 and 100 / cd[36] > -1 / t + 1:
                                    revert with 'NH{q', 17
                                if cd[4] / 100 and (100 / cd[36]) + (t * 100 / cd[36]) > -1 / cd[4] / 100:
                                    revert with 'NH{q', 17
                                mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = (100 / cd[36] * cd[4] / 100) + (t * 100 / cd[36] * cd[4] / 100)
                                mem[mem[64] + 36] = 64
                                _3047 = mem[_2365]
                                mem[mem[64] + 68] = mem[_2365]
                                s = 0
                                u = _2365 + 32
                                v = mem[64] + 100
                                while s < _3047:
                                    mem[v] = mem[u + 12 len 20]
                                    _1762 = mem[96]
                                    _2357 = mem[_565]
                                    s = s + 1
                                    u = u + 32
                                    v = v + 32
                                    continue 
                                require ext_code.size(address(_2967))
                                staticcall address(_2967).getAmountsOut(uint256 arg1, address[] arg2) with:
                                        gas gas_remaining wei
                                       args (100 / cd[36] * cd[4] / 100) + (t * 100 / cd[36] * cd[4] / 100), 64, mem[mem[64] + 68 len (32 * _3047) + 32]
                                if not ext_call.success:
                                    _3550 = mem[64]
                                    mem[mem[64]] = 2
                                    mem[64] = mem[64] + 96
                                    if 0 >= mem[_3550]:
                                        revert with 'NH{q', 50
                                    mem[_3550 + 32] = cd[4]
                                    if 1 >= mem[_3550]:
                                        revert with 'NH{q', 50
                                    mem[_3550 + 64] = 0
                                    if 1 >= mem[_3550]:
                                        revert with 'NH{q', 50
                                    if t >= mem[_2365 + (32 * cd[36]) + 128]:
                                        revert with 'NH{q', 50
                                    mem[(32 * t) + _2365 + (32 * cd[36]) + 160] = 0
                                    if idx >= mem[96]:
                                        revert with 'NH{q', 50
                                    if not mem[mem[(32 * idx) + 128] + 32]:
                                        if idx >= mem[96]:
                                            revert with 'NH{q', 50
                                        if 1 >= mem[_3550]:
                                            revert with 'NH{q', 50
                                        if 0 and mem[mem[(32 * idx) + 128] + 64] > -1 / 0:
                                            revert with 'NH{q', 17
                                        if t >= mem[_2365 + 96]:
                                            revert with 'NH{q', 50
                                        mem[(32 * t) + _2365 + 128] = 0
                                    else:
                                        if bool(bool(mem[mem[(32 * idx) + 128] + 32] < 78)) or bool(bool(mem[mem[(32 * idx) + 128] + 32] < 32)):
                                            if 10^mem[mem[(32 * idx) + 128] + 32] > -1:
                                                revert with 'NH{q', 17
                                            if idx >= mem[96]:
                                                revert with 'NH{q', 50
                                            if 1 >= mem[_3550]:
                                                revert with 'NH{q', 50
                                            if 0 and mem[mem[(32 * idx) + 128] + 64] > -1 / 0:
                                                revert with 'NH{q', 17
                                            if not 10^mem[mem[(32 * idx) + 128] + 32]:
                                                revert with 'NH{q', 18
                                            if t >= mem[_2365 + 96]:
                                                revert with 'NH{q', 50
                                            mem[(32 * t) + _2365 + 128] = 0 / 10^mem[mem[(32 * idx) + 128] + 32]
                                        else:
                                            u = 10
                                            v = 1
                                            s = mem[mem[(32 * idx) + 128] + 32]
                                            while s > 1:
                                                if u > -1 / u:
                                                    revert with 'NH{q', 17
                                                _1762 = mem[96]
                                                _2357 = mem[_565]
                                                if not bool(s):
                                                    u = u * u
                                                    v = v
                                                    s = uint255(s) * 0.5
                                                    continue 
                                                u = u * u
                                                v = v * u
                                                s = uint255(s) * 0.5
                                                continue 
                                            if v > -1 / u:
                                                revert with 'NH{q', 17
                                            if idx >= mem[96]:
                                                revert with 'NH{q', 50
                                            if 1 >= mem[_3550]:
                                                revert with 'NH{q', 50
                                            if 0 and mem[mem[(32 * idx) + 128] + 64] > -1 / 0:
                                                revert with 'NH{q', 17
                                            if not v * u:
                                                revert with 'NH{q', 18
                                            if t >= mem[_2365 + 96]:
                                                revert with 'NH{q', 50
                                            mem[(32 * t) + _2365 + 128] = 0 / v * u
                                else:
                                    _3543 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _3551 = mem[_3543]
                                    require mem[_3543] <= test266151307()
                                    require _3543 + mem[_3543] + 31 < _3543 + return_data.size
                                    _3567 = mem[_3543 + mem[_3543]]
                                    if mem[_3543 + mem[_3543]] > test266151307():
                                        revert with 'NH{q', 65
                                    if _3543 + ceil32(return_data.size) + (32 * mem[_3543 + mem[_3543]]) + 32 > test266151307() or (32 * mem[_3543 + mem[_3543]]) + 32 < 0:
                                        revert with 'NH{q', 65
                                    mem[64] = _3543 + ceil32(return_data.size) + (32 * mem[_3543 + mem[_3543]]) + 32
                                    mem[_3543 + ceil32(return_data.size)] = _3567
                                    require _3551 + (32 * _3567) + 32 <= return_data.size
                                    s = 0
                                    u = _3543 + _3551 + 32
                                    v = _3543 + ceil32(return_data.size) + 32
                                    while s < _3567:
                                        require mem[u] == mem[u]
                                        mem[v] = mem[u]
                                        _1762 = mem[96]
                                        _2357 = mem[_565]
                                        s = s + 1
                                        u = u + 32
                                        v = v + 32
                                        continue 
                                    if 1 >= _3567:
                                        revert with 'NH{q', 50
                                    if t >= mem[_2365 + (32 * cd[36]) + 128]:
                                        revert with 'NH{q', 50
                                    mem[(32 * t) + _2365 + (32 * cd[36]) + 160] = mem[_3543 + ceil32(return_data.size) + 64]
                                    if idx >= mem[96]:
                                        revert with 'NH{q', 50
                                    if not mem[mem[(32 * idx) + 128] + 32]:
                                        if idx >= mem[96]:
                                            revert with 'NH{q', 50
                                        if 1 >= _3567:
                                            revert with 'NH{q', 50
                                        if mem[_3543 + ceil32(return_data.size) + 64] and mem[mem[(32 * idx) + 128] + 64] > -1 / mem[_3543 + ceil32(return_data.size) + 64]:
                                            revert with 'NH{q', 17
                                        if t >= mem[_2365 + 96]:
                                            revert with 'NH{q', 50
                                        mem[(32 * t) + _2365 + 128] = mem[_3543 + ceil32(return_data.size) + 64] * mem[mem[(32 * idx) + 128] + 64]
                                    else:
                                        if bool(bool(mem[mem[(32 * idx) + 128] + 32] < 78)) or bool(bool(mem[mem[(32 * idx) + 128] + 32] < 32)):
                                            if 10^mem[mem[(32 * idx) + 128] + 32] > -1:
                                                revert with 'NH{q', 17
                                            if idx >= mem[96]:
                                                revert with 'NH{q', 50
                                            if 1 >= _3567:
                                                revert with 'NH{q', 50
                                            if mem[_3543 + ceil32(return_data.size) + 64] and mem[mem[(32 * idx) + 128] + 64] > -1 / mem[_3543 + ceil32(return_data.size) + 64]:
                                                revert with 'NH{q', 17
                                            if not 10^mem[mem[(32 * idx) + 128] + 32]:
                                                revert with 'NH{q', 18
                                            if t >= mem[_2365 + 96]:
                                                revert with 'NH{q', 50
                                            mem[(32 * t) + _2365 + 128] = mem[_3543 + ceil32(return_data.size) + 64] * mem[mem[(32 * idx) + 128] + 64] / 10^mem[mem[(32 * idx) + 128] + 32]
                                        else:
                                            u = 10
                                            v = 1
                                            s = mem[mem[(32 * idx) + 128] + 32]
                                            while s > 1:
                                                if u > -1 / u:
                                                    revert with 'NH{q', 17
                                                _1762 = mem[96]
                                                _2357 = mem[_565]
                                                if not bool(s):
                                                    u = u * u
                                                    v = v
                                                    s = uint255(s) * 0.5
                                                    continue 
                                                u = u * u
                                                v = v * u
                                                s = uint255(s) * 0.5
                                                continue 
                                            if v > -1 / u:
                                                revert with 'NH{q', 17
                                            if idx >= mem[96]:
                                                revert with 'NH{q', 50
                                            if 1 >= _3567:
                                                revert with 'NH{q', 50
                                            if mem[_3543 + ceil32(return_data.size) + 64] and mem[mem[(32 * idx) + 128] + 64] > -1 / mem[_3543 + ceil32(return_data.size) + 64]:
                                                revert with 'NH{q', 17
                                            if not v * u:
                                                revert with 'NH{q', 18
                                            if t >= mem[_2365 + 96]:
                                                revert with 'NH{q', 50
                                            mem[(32 * t) + _2365 + 128] = mem[_3543 + ceil32(return_data.size) + 64] * mem[mem[(32 * idx) + 128] + 64] / v * u
                                if t == -1:
                                    revert with 'NH{q', 17
                                _1762 = mem[96]
                                _2357 = mem[_565]
                                t = t + 1
                                continue 
                            _2954 = mem[64]
                            mem[64] = mem[64] + 160
                            mem[_2954] = _2365
                            if s >= mem[_565]:
                                revert with 'NH{q', 50
                            mem[_2954 + 32] = mem[(32 * s) + _565 + 44 len 20]
                            if not cd[36]:
                                revert with 'NH{q', 18
                            mem[_2954 + 64] = 100 / cd[36]
                            mem[_2954 + 96] = _2365 + 96
                            mem[_2954 + 128] = _2365 + (32 * cd[36]) + 128
                            if idx and mem[_565] > -1 / idx:
                                revert with 'NH{q', 17
                            if idx * mem[_565] > -s - 1:
                                revert with 'NH{q', 17
                            if (idx * mem[_565]) + s >= mem[_1166]:
                                revert with 'NH{q', 50
                            mem[(32 * (idx * mem[_565]) + s) + _1166 + 32] = _2954
                    else:
                        mem[_2365 + 128 len 32 * cd[36]] = call.data[calldata.size len 32 * cd[36]]
                        if cd[36] > test266151307():
                            revert with 'NH{q', 65
                        mem[_2365 + (32 * cd[36]) + 128] = cd[36]
                        mem[64] = _2365 + (64 * cd[36]) + 160
                        if not cd[36]:
                            t = 0
                            while t < cd[36]:
                                if s >= mem[_565]:
                                    revert with 'NH{q', 50
                                _2969 = mem[(32 * s) + _565 + 32]
                                if not cd[36]:
                                    revert with 'NH{q', 18
                                if t > -2:
                                    revert with 'NH{q', 17
                                if t + 1 and 100 / cd[36] > -1 / t + 1:
                                    revert with 'NH{q', 17
                                if cd[4] / 100 and (100 / cd[36]) + (t * 100 / cd[36]) > -1 / cd[4] / 100:
                                    revert with 'NH{q', 17
                                mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = (100 / cd[36] * cd[4] / 100) + (t * 100 / cd[36] * cd[4] / 100)
                                mem[mem[64] + 36] = 64
                                _3048 = mem[_2365]
                                mem[mem[64] + 68] = mem[_2365]
                                s = 0
                                u = _2365 + 32
                                v = mem[64] + 100
                                while s < _3048:
                                    mem[v] = mem[u + 12 len 20]
                                    _1762 = mem[96]
                                    _2357 = mem[_565]
                                    s = s + 1
                                    u = u + 32
                                    v = v + 32
                                    continue 
                                require ext_code.size(address(_2969))
                                staticcall address(_2969).getAmountsOut(uint256 arg1, address[] arg2) with:
                                        gas gas_remaining wei
                                       args (100 / cd[36] * cd[4] / 100) + (t * 100 / cd[36] * cd[4] / 100), 64, mem[mem[64] + 68 len (32 * _3048) + 32]
                                if not ext_call.success:
                                    _3552 = mem[64]
                                    mem[mem[64]] = 2
                                    mem[64] = mem[64] + 96
                                    if 0 >= mem[_3552]:
                                        revert with 'NH{q', 50
                                    mem[_3552 + 32] = cd[4]
                                    if 1 >= mem[_3552]:
                                        revert with 'NH{q', 50
                                    mem[_3552 + 64] = 0
                                    if 1 >= mem[_3552]:
                                        revert with 'NH{q', 50
                                    if t >= mem[_2365 + (32 * cd[36]) + 128]:
                                        revert with 'NH{q', 50
                                    mem[(32 * t) + _2365 + (32 * cd[36]) + 160] = 0
                                    if idx >= mem[96]:
                                        revert with 'NH{q', 50
                                    if not mem[mem[(32 * idx) + 128] + 32]:
                                        if idx >= mem[96]:
                                            revert with 'NH{q', 50
                                        if 1 >= mem[_3552]:
                                            revert with 'NH{q', 50
                                        if 0 and mem[mem[(32 * idx) + 128] + 64] > -1 / 0:
                                            revert with 'NH{q', 17
                                        if t >= mem[_2365 + 96]:
                                            revert with 'NH{q', 50
                                        mem[(32 * t) + _2365 + 128] = 0
                                    else:
                                        if bool(bool(mem[mem[(32 * idx) + 128] + 32] < 78)) or bool(bool(mem[mem[(32 * idx) + 128] + 32] < 32)):
                                            if 10^mem[mem[(32 * idx) + 128] + 32] > -1:
                                                revert with 'NH{q', 17
                                            if idx >= mem[96]:
                                                revert with 'NH{q', 50
                                            if 1 >= mem[_3552]:
                                                revert with 'NH{q', 50
                                            if 0 and mem[mem[(32 * idx) + 128] + 64] > -1 / 0:
                                                revert with 'NH{q', 17
                                            if not 10^mem[mem[(32 * idx) + 128] + 32]:
                                                revert with 'NH{q', 18
                                            if t >= mem[_2365 + 96]:
                                                revert with 'NH{q', 50
                                            mem[(32 * t) + _2365 + 128] = 0 / 10^mem[mem[(32 * idx) + 128] + 32]
                                        else:
                                            u = 10
                                            v = 1
                                            s = mem[mem[(32 * idx) + 128] + 32]
                                            while s > 1:
                                                if u > -1 / u:
                                                    revert with 'NH{q', 17
                                                _1762 = mem[96]
                                                _2357 = mem[_565]
                                                if not bool(s):
                                                    u = u * u
                                                    v = v
                                                    s = uint255(s) * 0.5
                                                    continue 
                                                u = u * u
                                                v = v * u
                                                s = uint255(s) * 0.5
                                                continue 
                                            if v > -1 / u:
                                                revert with 'NH{q', 17
                                            if idx >= mem[96]:
                                                revert with 'NH{q', 50
                                            if 1 >= mem[_3552]:
                                                revert with 'NH{q', 50
                                            if 0 and mem[mem[(32 * idx) + 128] + 64] > -1 / 0:
                                                revert with 'NH{q', 17
                                            if not v * u:
                                                revert with 'NH{q', 18
                                            if t >= mem[_2365 + 96]:
                                                revert with 'NH{q', 50
                                            mem[(32 * t) + _2365 + 128] = 0 / v * u
                                else:
                                    _3544 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _3553 = mem[_3544]
                                    require mem[_3544] <= test266151307()
                                    require _3544 + mem[_3544] + 31 < _3544 + return_data.size
                                    _3569 = mem[_3544 + mem[_3544]]
                                    if mem[_3544 + mem[_3544]] > test266151307():
                                        revert with 'NH{q', 65
                                    if _3544 + ceil32(return_data.size) + (32 * mem[_3544 + mem[_3544]]) + 32 > test266151307() or (32 * mem[_3544 + mem[_3544]]) + 32 < 0:
                                        revert with 'NH{q', 65
                                    mem[64] = _3544 + ceil32(return_data.size) + (32 * mem[_3544 + mem[_3544]]) + 32
                                    mem[_3544 + ceil32(return_data.size)] = _3569
                                    require _3553 + (32 * _3569) + 32 <= return_data.size
                                    s = 0
                                    u = _3544 + _3553 + 32
                                    v = _3544 + ceil32(return_data.size) + 32
                                    while s < _3569:
                                        require mem[u] == mem[u]
                                        mem[v] = mem[u]
                                        _1762 = mem[96]
                                        _2357 = mem[_565]
                                        s = s + 1
                                        u = u + 32
                                        v = v + 32
                                        continue 
                                    if 1 >= _3569:
                                        revert with 'NH{q', 50
                                    if t >= mem[_2365 + (32 * cd[36]) + 128]:
                                        revert with 'NH{q', 50
                                    mem[(32 * t) + _2365 + (32 * cd[36]) + 160] = mem[_3544 + ceil32(return_data.size) + 64]
                                    if idx >= mem[96]:
                                        revert with 'NH{q', 50
                                    if not mem[mem[(32 * idx) + 128] + 32]:
                                        if idx >= mem[96]:
                                            revert with 'NH{q', 50
                                        if 1 >= _3569:
                                            revert with 'NH{q', 50
                                        if mem[_3544 + ceil32(return_data.size) + 64] and mem[mem[(32 * idx) + 128] + 64] > -1 / mem[_3544 + ceil32(return_data.size) + 64]:
                                            revert with 'NH{q', 17
                                        if t >= mem[_2365 + 96]:
                                            revert with 'NH{q', 50
                                        mem[(32 * t) + _2365 + 128] = mem[_3544 + ceil32(return_data.size) + 64] * mem[mem[(32 * idx) + 128] + 64]
                                    else:
                                        if bool(bool(mem[mem[(32 * idx) + 128] + 32] < 78)) or bool(bool(mem[mem[(32 * idx) + 128] + 32] < 32)):
                                            if 10^mem[mem[(32 * idx) + 128] + 32] > -1:
                                                revert with 'NH{q', 17
                                            if idx >= mem[96]:
                                                revert with 'NH{q', 50
                                            if 1 >= _3569:
                                                revert with 'NH{q', 50
                                            if mem[_3544 + ceil32(return_data.size) + 64] and mem[mem[(32 * idx) + 128] + 64] > -1 / mem[_3544 + ceil32(return_data.size) + 64]:
                                                revert with 'NH{q', 17
                                            if not 10^mem[mem[(32 * idx) + 128] + 32]:
                                                revert with 'NH{q', 18
                                            if t >= mem[_2365 + 96]:
                                                revert with 'NH{q', 50
                                            mem[(32 * t) + _2365 + 128] = mem[_3544 + ceil32(return_data.size) + 64] * mem[mem[(32 * idx) + 128] + 64] / 10^mem[mem[(32 * idx) + 128] + 32]
                                        else:
                                            u = 10
                                            v = 1
                                            s = mem[mem[(32 * idx) + 128] + 32]
                                            while s > 1:
                                                if u > -1 / u:
                                                    revert with 'NH{q', 17
                                                _1762 = mem[96]
                                                _2357 = mem[_565]
                                                if not bool(s):
                                                    u = u * u
                                                    v = v
                                                    s = uint255(s) * 0.5
                                                    continue 
                                                u = u * u
                                                v = v * u
                                                s = uint255(s) * 0.5
                                                continue 
                                            if v > -1 / u:
                                                revert with 'NH{q', 17
                                            if idx >= mem[96]:
                                                revert with 'NH{q', 50
                                            if 1 >= _3569:
                                                revert with 'NH{q', 50
                                            if mem[_3544 + ceil32(return_data.size) + 64] and mem[mem[(32 * idx) + 128] + 64] > -1 / mem[_3544 + ceil32(return_data.size) + 64]:
                                                revert with 'NH{q', 17
                                            if not v * u:
                                                revert with 'NH{q', 18
                                            if t >= mem[_2365 + 96]:
                                                revert with 'NH{q', 50
                                            mem[(32 * t) + _2365 + 128] = mem[_3544 + ceil32(return_data.size) + 64] * mem[mem[(32 * idx) + 128] + 64] / v * u
                                if t == -1:
                                    revert with 'NH{q', 17
                                _1762 = mem[96]
                                _2357 = mem[_565]
                                t = t + 1
                                continue 
                            _2957 = mem[64]
                            mem[64] = mem[64] + 160
                            mem[_2957] = _2365
                            if s >= mem[_565]:
                                revert with 'NH{q', 50
                            mem[_2957 + 32] = mem[(32 * s) + _565 + 44 len 20]
                            if not cd[36]:
                                revert with 'NH{q', 18
                            mem[_2957 + 64] = 100 / cd[36]
                            mem[_2957 + 96] = _2365 + 96
                            mem[_2957 + 128] = _2365 + (32 * cd[36]) + 128
                            if idx and mem[_565] > -1 / idx:
                                revert with 'NH{q', 17
                            if idx * mem[_565] > -s - 1:
                                revert with 'NH{q', 17
                            if (idx * mem[_565]) + s >= mem[_1166]:
                                revert with 'NH{q', 50
                            mem[(32 * (idx * mem[_565]) + s) + _1166 + 32] = _2957
                        else:
                            mem[_2365 + (32 * cd[36]) + 160 len 32 * cd[36]] = call.data[calldata.size len 32 * cd[36]]
                            t = 0
                            while t < cd[36]:
                                if s >= mem[_565]:
                                    revert with 'NH{q', 50
                                _2971 = mem[(32 * s) + _565 + 32]
                                if not cd[36]:
                                    revert with 'NH{q', 18
                                if t > -2:
                                    revert with 'NH{q', 17
                                if t + 1 and 100 / cd[36] > -1 / t + 1:
                                    revert with 'NH{q', 17
                                if cd[4] / 100 and (100 / cd[36]) + (t * 100 / cd[36]) > -1 / cd[4] / 100:
                                    revert with 'NH{q', 17
                                mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = (100 / cd[36] * cd[4] / 100) + (t * 100 / cd[36] * cd[4] / 100)
                                mem[mem[64] + 36] = 64
                                _3049 = mem[_2365]
                                mem[mem[64] + 68] = mem[_2365]
                                s = 0
                                u = _2365 + 32
                                v = mem[64] + 100
                                while s < _3049:
                                    mem[v] = mem[u + 12 len 20]
                                    _1762 = mem[96]
                                    _2357 = mem[_565]
                                    s = s + 1
                                    u = u + 32
                                    v = v + 32
                                    continue 
                                require ext_code.size(address(_2971))
                                staticcall address(_2971).getAmountsOut(uint256 arg1, address[] arg2) with:
                                        gas gas_remaining wei
                                       args (100 / cd[36] * cd[4] / 100) + (t * 100 / cd[36] * cd[4] / 100), 64, mem[mem[64] + 68 len (32 * _3049) + 32]
                                if not ext_call.success:
                                    _3554 = mem[64]
                                    mem[mem[64]] = 2
                                    mem[64] = mem[64] + 96
                                    if 0 >= mem[_3554]:
                                        revert with 'NH{q', 50
                                    mem[_3554 + 32] = cd[4]
                                    if 1 >= mem[_3554]:
                                        revert with 'NH{q', 50
                                    mem[_3554 + 64] = 0
                                    if 1 >= mem[_3554]:
                                        revert with 'NH{q', 50
                                    if t >= mem[_2365 + (32 * cd[36]) + 128]:
                                        revert with 'NH{q', 50
                                    mem[(32 * t) + _2365 + (32 * cd[36]) + 160] = 0
                                    if idx >= mem[96]:
                                        revert with 'NH{q', 50
                                    if not mem[mem[(32 * idx) + 128] + 32]:
                                        if idx >= mem[96]:
                                            revert with 'NH{q', 50
                                        if 1 >= mem[_3554]:
                                            revert with 'NH{q', 50
                                        if 0 and mem[mem[(32 * idx) + 128] + 64] > -1 / 0:
                                            revert with 'NH{q', 17
                                        if t >= mem[_2365 + 96]:
                                            revert with 'NH{q', 50
                                        mem[(32 * t) + _2365 + 128] = 0
                                    else:
                                        if bool(bool(mem[mem[(32 * idx) + 128] + 32] < 78)) or bool(bool(mem[mem[(32 * idx) + 128] + 32] < 32)):
                                            if 10^mem[mem[(32 * idx) + 128] + 32] > -1:
                                                revert with 'NH{q', 17
                                            if idx >= mem[96]:
                                                revert with 'NH{q', 50
                                            if 1 >= mem[_3554]:
                                                revert with 'NH{q', 50
                                            if 0 and mem[mem[(32 * idx) + 128] + 64] > -1 / 0:
                                                revert with 'NH{q', 17
                                            if not 10^mem[mem[(32 * idx) + 128] + 32]:
                                                revert with 'NH{q', 18
                                            if t >= mem[_2365 + 96]:
                                                revert with 'NH{q', 50
                                            mem[(32 * t) + _2365 + 128] = 0 / 10^mem[mem[(32 * idx) + 128] + 32]
                                        else:
                                            u = 10
                                            v = 1
                                            s = mem[mem[(32 * idx) + 128] + 32]
                                            while s > 1:
                                                if u > -1 / u:
                                                    revert with 'NH{q', 17
                                                _1762 = mem[96]
                                                _2357 = mem[_565]
                                                if not bool(s):
                                                    u = u * u
                                                    v = v
                                                    s = uint255(s) * 0.5
                                                    continue 
                                                u = u * u
                                                v = v * u
                                                s = uint255(s) * 0.5
                                                continue 
                                            if v > -1 / u:
                                                revert with 'NH{q', 17
                                            if idx >= mem[96]:
                                                revert with 'NH{q', 50
                                            if 1 >= mem[_3554]:
                                                revert with 'NH{q', 50
                                            if 0 and mem[mem[(32 * idx) + 128] + 64] > -1 / 0:
                                                revert with 'NH{q', 17
                                            if not v * u:
                                                revert with 'NH{q', 18
                                            if t >= mem[_2365 + 96]:
                                                revert with 'NH{q', 50
                                            mem[(32 * t) + _2365 + 128] = 0 / v * u
                                else:
                                    _3545 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _3555 = mem[_3545]
                                    require mem[_3545] <= test266151307()
                                    require _3545 + mem[_3545] + 31 < _3545 + return_data.size
                                    _3571 = mem[_3545 + mem[_3545]]
                                    if mem[_3545 + mem[_3545]] > test266151307():
                                        revert with 'NH{q', 65
                                    if _3545 + ceil32(return_data.size) + (32 * mem[_3545 + mem[_3545]]) + 32 > test266151307() or (32 * mem[_3545 + mem[_3545]]) + 32 < 0:
                                        revert with 'NH{q', 65
                                    mem[64] = _3545 + ceil32(return_data.size) + (32 * mem[_3545 + mem[_3545]]) + 32
                                    mem[_3545 + ceil32(return_data.size)] = _3571
                                    require _3555 + (32 * _3571) + 32 <= return_data.size
                                    s = 0
                                    u = _3545 + _3555 + 32
                                    v = _3545 + ceil32(return_data.size) + 32
                                    while s < _3571:
                                        require mem[u] == mem[u]
                                        mem[v] = mem[u]
                                        _1762 = mem[96]
                                        _2357 = mem[_565]
                                        s = s + 1
                                        u = u + 32
                                        v = v + 32
                                        continue 
                                    if 1 >= _3571:
                                        revert with 'NH{q', 50
                                    if t >= mem[_2365 + (32 * cd[36]) + 128]:
                                        revert with 'NH{q', 50
                                    mem[(32 * t) + _2365 + (32 * cd[36]) + 160] = mem[_3545 + ceil32(return_data.size) + 64]
                                    if idx >= mem[96]:
                                        revert with 'NH{q', 50
                                    if not mem[mem[(32 * idx) + 128] + 32]:
                                        if idx >= mem[96]:
                                            revert with 'NH{q', 50
                                        if 1 >= _3571:
                                            revert with 'NH{q', 50
                                        if mem[_3545 + ceil32(return_data.size) + 64] and mem[mem[(32 * idx) + 128] + 64] > -1 / mem[_3545 + ceil32(return_data.size) + 64]:
                                            revert with 'NH{q', 17
                                        if t >= mem[_2365 + 96]:
                                            revert with 'NH{q', 50
                                        mem[(32 * t) + _2365 + 128] = mem[_3545 + ceil32(return_data.size) + 64] * mem[mem[(32 * idx) + 128] + 64]
                                    else:
                                        if bool(bool(mem[mem[(32 * idx) + 128] + 32] < 78)) or bool(bool(mem[mem[(32 * idx) + 128] + 32] < 32)):
                                            if 10^mem[mem[(32 * idx) + 128] + 32] > -1:
                                                revert with 'NH{q', 17
                                            if idx >= mem[96]:
                                                revert with 'NH{q', 50
                                            if 1 >= _3571:
                                                revert with 'NH{q', 50
                                            if mem[_3545 + ceil32(return_data.size) + 64] and mem[mem[(32 * idx) + 128] + 64] > -1 / mem[_3545 + ceil32(return_data.size) + 64]:
                                                revert with 'NH{q', 17
                                            if not 10^mem[mem[(32 * idx) + 128] + 32]:
                                                revert with 'NH{q', 18
                                            if t >= mem[_2365 + 96]:
                                                revert with 'NH{q', 50
                                            mem[(32 * t) + _2365 + 128] = mem[_3545 + ceil32(return_data.size) + 64] * mem[mem[(32 * idx) + 128] + 64] / 10^mem[mem[(32 * idx) + 128] + 32]
                                        else:
                                            u = 10
                                            v = 1
                                            s = mem[mem[(32 * idx) + 128] + 32]
                                            while s > 1:
                                                if u > -1 / u:
                                                    revert with 'NH{q', 17
                                                _1762 = mem[96]
                                                _2357 = mem[_565]
                                                if not bool(s):
                                                    u = u * u
                                                    v = v
                                                    s = uint255(s) * 0.5
                                                    continue 
                                                u = u * u
                                                v = v * u
                                                s = uint255(s) * 0.5
                                                continue 
                                            if v > -1 / u:
                                                revert with 'NH{q', 17
                                            if idx >= mem[96]:
                                                revert with 'NH{q', 50
                                            if 1 >= _3571:
                                                revert with 'NH{q', 50
                                            if mem[_3545 + ceil32(return_data.size) + 64] and mem[mem[(32 * idx) + 128] + 64] > -1 / mem[_3545 + ceil32(return_data.size) + 64]:
                                                revert with 'NH{q', 17
                                            if not v * u:
                                                revert with 'NH{q', 18
                                            if t >= mem[_2365 + 96]:
                                                revert with 'NH{q', 50
                                            mem[(32 * t) + _2365 + 128] = mem[_3545 + ceil32(return_data.size) + 64] * mem[mem[(32 * idx) + 128] + 64] / v * u
                                if t == -1:
                                    revert with 'NH{q', 17
                                _1762 = mem[96]
                                _2357 = mem[_565]
                                t = t + 1
                                continue 
                            _2960 = mem[64]
                            mem[64] = mem[64] + 160
                            mem[_2960] = _2365
                            if s >= mem[_565]:
                                revert with 'NH{q', 50
                            mem[_2960 + 32] = mem[(32 * s) + _565 + 44 len 20]
                            if not cd[36]:
                                revert with 'NH{q', 18
                            mem[_2960 + 64] = 100 / cd[36]
                            mem[_2960 + 96] = _2365 + 96
                            mem[_2960 + 128] = _2365 + (32 * cd[36]) + 128
                            if idx and mem[_565] > -1 / idx:
                                revert with 'NH{q', 17
                            if idx * mem[_565] > -s - 1:
                                revert with 'NH{q', 17
                            if (idx * mem[_565]) + s >= mem[_1166]:
                                revert with 'NH{q', 50
                            mem[(32 * (idx * mem[_565]) + s) + _1166 + 32] = _2960
                if s == -1:
                    revert with 'NH{q', 17
                _1762 = mem[96]
                _2357 = mem[_565]
                s = s + 1
                continue 
            if idx == -1:
                revert with 'NH{q', 17
            _1762 = mem[96]
            idx = idx + 1
            continue 
        _1764 = mem[64]
        mem[mem[64]] = 32
        _1769 = mem[_1166]
        mem[mem[64] + 32] = mem[_1166]
        idx = 0
        s = _1166 + 32
        t = mem[64] + (32 * _1769) + 64
        u = mem[64] + 64
        while idx < _1769:
            mem[u] = t + -_1764 - 64
            _2359 = mem[s]
            _2364 = mem[mem[s]]
            mem[t] = 160
            _2367 = mem[_2364]
            mem[t + 160] = mem[_2364]
            v = 0
            w = _2364 + 32
            x = t + 192
            while v < _2367:
                mem[x] = mem[w + 12 len 20]
                v = v + 1
                w = w + 32
                x = x + 32
                continue 
            mem[t + 32] = mem[_2359 + 44 len 20]
            mem[t + 64] = mem[_2359 + 64]
            _2989 = mem[_2359 + 96]
            mem[t + 96] = (32 * _2367) + 192
            _2992 = mem[_2989]
            mem[t + (32 * _2367) + 192] = mem[_2989]
            v = 0
            w = _2989 + 32
            x = t + (32 * _2367) + 224
            while v < _2992:
                mem[x] = mem[w]
                v = v + 1
                w = w + 32
                x = x + 32
                continue 
            _3531 = mem[_2359 + 128]
            mem[t + 128] = (32 * _2367) + (32 * _2992) + 224
            _3540 = mem[_3531]
            mem[t + (32 * _2367) + (32 * _2992) + 224] = mem[_3531]
            v = 0
            w = _3531 + 32
            x = t + (32 * _2367) + (32 * _2992) + 256
            while v < _3540:
                mem[x] = mem[w]
                v = v + 1
                w = w + 32
                x = x + 32
                continue 
            idx = idx + 1
            s = s + 32
            t = t + (32 * _2367) + (32 * _2992) + (32 * _3540) + 256
            u = u + 32
            continue 
    else:
        mem[64] = _1166 + (32 * _1165 * ('cd', 100).length) + 192
        mem[_1166 + (32 * _1165 * ('cd', 100).length) + 32] = 96
        mem[_1166 + (32 * _1165 * ('cd', 100).length) + 64] = 0
        mem[_1166 + (32 * _1165 * ('cd', 100).length) + 96] = 0
        mem[_1166 + (32 * _1165 * ('cd', 100).length) + 128] = 96
        mem[_1166 + (32 * _1165 * ('cd', 100).length) + 160] = 96
        mem[var73001] = _1166 + (32 * _1165 * ('cd', 100).length) + 32
        s = var73001
        idx = var73002
        while idx - 1:
            mem[64] = mem[64] + 160
            mem[_1166 + (32 * _1165 * ('cd', 100).length) + 32] = 96
            mem[_1166 + (32 * _1165 * ('cd', 100).length) + 64] = 0
            mem[_1166 + (32 * _1165 * ('cd', 100).length) + 96] = 0
            mem[_1166 + (32 * _1165 * ('cd', 100).length) + 128] = 96
            mem[_1166 + (32 * _1165 * ('cd', 100).length) + 160] = 96
            mem[s + 32] = _1166 + (32 * _1165 * ('cd', 100).length) + 32
            s = s + 32
            idx = idx - 1
            continue 
        _2949 = mem[96]
        idx = 0
        while idx < _2949:
            _3523 = mem[_565]
            s = 0
            while s < _3523:
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                if address(cd[132]) != mem[mem[(32 * idx) + 128] + 12 len 20]:
                    _3541 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    mem[_3541 + 32 len 64] = call.data[calldata.size len 64]
                    if 0 >= mem[_3541]:
                        revert with 'NH{q', 50
                    mem[_3541 + 32] = address(cd[132])
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    if 1 >= mem[_3541]:
                        revert with 'NH{q', 50
                    mem[_3541 + 64] = mem[mem[(32 * idx) + 128] + 12 len 20]
                    if cd[36] > test266151307():
                        revert with 'NH{q', 65
                    mem[_3541 + 96] = cd[36]
                    if not cd[36]:
                        if cd[36] > test266151307():
                            revert with 'NH{q', 65
                        mem[_3541 + (32 * cd[36]) + 128] = cd[36]
                        mem[64] = _3541 + (64 * cd[36]) + 160
                        if not cd[36]:
                            t = 0
                            while t < cd[36]:
                                if s >= mem[_565]:
                                    revert with 'NH{q', 50
                                _4073 = mem[(32 * s) + _565 + 32]
                                if not cd[36]:
                                    revert with 'NH{q', 18
                                if t > -2:
                                    revert with 'NH{q', 17
                                if t + 1 and 100 / cd[36] > -1 / t + 1:
                                    revert with 'NH{q', 17
                                if cd[4] / 100 and (100 / cd[36]) + (t * 100 / cd[36]) > -1 / cd[4] / 100:
                                    revert with 'NH{q', 17
                                mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = (100 / cd[36] * cd[4] / 100) + (t * 100 / cd[36] * cd[4] / 100)
                                mem[mem[64] + 36] = 64
                                _4219 = mem[_3541]
                                mem[mem[64] + 68] = mem[_3541]
                                s = 0
                                u = _3541 + 32
                                v = mem[64] + 100
                                while s < _4219:
                                    mem[v] = mem[u + 12 len 20]
                                    _2949 = mem[96]
                                    _3523 = mem[_565]
                                    s = s + 1
                                    u = u + 32
                                    v = v + 32
                                    continue 
                                require ext_code.size(address(_4073))
                                staticcall address(_4073).getAmountsOut(uint256 arg1, address[] arg2) with:
                                        gas gas_remaining wei
                                       args (100 / cd[36] * cd[4] / 100) + (t * 100 / cd[36] * cd[4] / 100), 64, mem[mem[64] + 68 len (32 * _4219) + 32]
                                if not ext_call.success:
                                    _4486 = mem[64]
                                    mem[mem[64]] = 2
                                    mem[64] = mem[64] + 96
                                    if 0 >= mem[_4486]:
                                        revert with 'NH{q', 50
                                    mem[_4486 + 32] = cd[4]
                                    if 1 >= mem[_4486]:
                                        revert with 'NH{q', 50
                                    mem[_4486 + 64] = 0
                                    if 1 >= mem[_4486]:
                                        revert with 'NH{q', 50
                                    if t >= mem[_3541 + (32 * cd[36]) + 128]:
                                        revert with 'NH{q', 50
                                    mem[(32 * t) + _3541 + (32 * cd[36]) + 160] = 0
                                    if idx >= mem[96]:
                                        revert with 'NH{q', 50
                                    if not mem[mem[(32 * idx) + 128] + 32]:
                                        if idx >= mem[96]:
                                            revert with 'NH{q', 50
                                        if 1 >= mem[_4486]:
                                            revert with 'NH{q', 50
                                        if 0 and mem[mem[(32 * idx) + 128] + 64] > -1 / 0:
                                            revert with 'NH{q', 17
                                        if t >= mem[_3541 + 96]:
                                            revert with 'NH{q', 50
                                        mem[(32 * t) + _3541 + 128] = 0
                                    else:
                                        if bool(bool(mem[mem[(32 * idx) + 128] + 32] < 78)) or bool(bool(mem[mem[(32 * idx) + 128] + 32] < 32)):
                                            if 10^mem[mem[(32 * idx) + 128] + 32] > -1:
                                                revert with 'NH{q', 17
                                            if idx >= mem[96]:
                                                revert with 'NH{q', 50
                                            if 1 >= mem[_4486]:
                                                revert with 'NH{q', 50
                                            if 0 and mem[mem[(32 * idx) + 128] + 64] > -1 / 0:
                                                revert with 'NH{q', 17
                                            if not 10^mem[mem[(32 * idx) + 128] + 32]:
                                                revert with 'NH{q', 18
                                            if t >= mem[_3541 + 96]:
                                                revert with 'NH{q', 50
                                            mem[(32 * t) + _3541 + 128] = 0 / 10^mem[mem[(32 * idx) + 128] + 32]
                                        else:
                                            u = 10
                                            v = 1
                                            s = mem[mem[(32 * idx) + 128] + 32]
                                            while s > 1:
                                                if u > -1 / u:
                                                    revert with 'NH{q', 17
                                                _2949 = mem[96]
                                                _3523 = mem[_565]
                                                if not bool(s):
                                                    u = u * u
                                                    v = v
                                                    s = uint255(s) * 0.5
                                                    continue 
                                                u = u * u
                                                v = v * u
                                                s = uint255(s) * 0.5
                                                continue 
                                            if v > -1 / u:
                                                revert with 'NH{q', 17
                                            if idx >= mem[96]:
                                                revert with 'NH{q', 50
                                            if 1 >= mem[_4486]:
                                                revert with 'NH{q', 50
                                            if 0 and mem[mem[(32 * idx) + 128] + 64] > -1 / 0:
                                                revert with 'NH{q', 17
                                            if not v * u:
                                                revert with 'NH{q', 18
                                            if t >= mem[_3541 + 96]:
                                                revert with 'NH{q', 50
                                            mem[(32 * t) + _3541 + 128] = 0 / v * u
                                else:
                                    _4466 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _4487 = mem[_4466]
                                    require mem[_4466] <= test266151307()
                                    require _4466 + mem[_4466] + 31 < _4466 + return_data.size
                                    _4503 = mem[_4466 + mem[_4466]]
                                    if mem[_4466 + mem[_4466]] > test266151307():
                                        revert with 'NH{q', 65
                                    if _4466 + ceil32(return_data.size) + (32 * mem[_4466 + mem[_4466]]) + 32 > test266151307() or (32 * mem[_4466 + mem[_4466]]) + 32 < 0:
                                        revert with 'NH{q', 65
                                    mem[64] = _4466 + ceil32(return_data.size) + (32 * mem[_4466 + mem[_4466]]) + 32
                                    mem[_4466 + ceil32(return_data.size)] = _4503
                                    require _4487 + (32 * _4503) + 32 <= return_data.size
                                    s = 0
                                    u = _4466 + _4487 + 32
                                    v = _4466 + ceil32(return_data.size) + 32
                                    while s < _4503:
                                        require mem[u] == mem[u]
                                        mem[v] = mem[u]
                                        _2949 = mem[96]
                                        _3523 = mem[_565]
                                        s = s + 1
                                        u = u + 32
                                        v = v + 32
                                        continue 
                                    if 1 >= _4503:
                                        revert with 'NH{q', 50
                                    if t >= mem[_3541 + (32 * cd[36]) + 128]:
                                        revert with 'NH{q', 50
                                    mem[(32 * t) + _3541 + (32 * cd[36]) + 160] = mem[_4466 + ceil32(return_data.size) + 64]
                                    if idx >= mem[96]:
                                        revert with 'NH{q', 50
                                    if not mem[mem[(32 * idx) + 128] + 32]:
                                        if idx >= mem[96]:
                                            revert with 'NH{q', 50
                                        if 1 >= _4503:
                                            revert with 'NH{q', 50
                                        if mem[_4466 + ceil32(return_data.size) + 64] and mem[mem[(32 * idx) + 128] + 64] > -1 / mem[_4466 + ceil32(return_data.size) + 64]:
                                            revert with 'NH{q', 17
                                        if t >= mem[_3541 + 96]:
                                            revert with 'NH{q', 50
                                        mem[(32 * t) + _3541 + 128] = mem[_4466 + ceil32(return_data.size) + 64] * mem[mem[(32 * idx) + 128] + 64]
                                    else:
                                        if bool(bool(mem[mem[(32 * idx) + 128] + 32] < 78)) or bool(bool(mem[mem[(32 * idx) + 128] + 32] < 32)):
                                            if 10^mem[mem[(32 * idx) + 128] + 32] > -1:
                                                revert with 'NH{q', 17
                                            if idx >= mem[96]:
                                                revert with 'NH{q', 50
                                            if 1 >= _4503:
                                                revert with 'NH{q', 50
                                            if mem[_4466 + ceil32(return_data.size) + 64] and mem[mem[(32 * idx) + 128] + 64] > -1 / mem[_4466 + ceil32(return_data.size) + 64]:
                                                revert with 'NH{q', 17
                                            if not 10^mem[mem[(32 * idx) + 128] + 32]:
                                                revert with 'NH{q', 18
                                            if t >= mem[_3541 + 96]:
                                                revert with 'NH{q', 50
                                            mem[(32 * t) + _3541 + 128] = mem[_4466 + ceil32(return_data.size) + 64] * mem[mem[(32 * idx) + 128] + 64] / 10^mem[mem[(32 * idx) + 128] + 32]
                                        else:
                                            u = 10
                                            v = 1
                                            s = mem[mem[(32 * idx) + 128] + 32]
                                            while s > 1:
                                                if u > -1 / u:
                                                    revert with 'NH{q', 17
                                                _2949 = mem[96]
                                                _3523 = mem[_565]
                                                if not bool(s):
                                                    u = u * u
                                                    v = v
                                                    s = uint255(s) * 0.5
                                                    continue 
                                                u = u * u
                                                v = v * u
                                                s = uint255(s) * 0.5
                                                continue 
                                            if v > -1 / u:
                                                revert with 'NH{q', 17
                                            if idx >= mem[96]:
                                                revert with 'NH{q', 50
                                            if 1 >= _4503:
                                                revert with 'NH{q', 50
                                            if mem[_4466 + ceil32(return_data.size) + 64] and mem[mem[(32 * idx) + 128] + 64] > -1 / mem[_4466 + ceil32(return_data.size) + 64]:
                                                revert with 'NH{q', 17
                                            if not v * u:
                                                revert with 'NH{q', 18
                                            if t >= mem[_3541 + 96]:
                                                revert with 'NH{q', 50
                                            mem[(32 * t) + _3541 + 128] = mem[_4466 + ceil32(return_data.size) + 64] * mem[mem[(32 * idx) + 128] + 64] / v * u
                                if t == -1:
                                    revert with 'NH{q', 17
                                _2949 = mem[96]
                                _3523 = mem[_565]
                                t = t + 1
                                continue 
                            _4055 = mem[64]
                            mem[64] = mem[64] + 160
                            mem[_4055] = _3541
                            if s >= mem[_565]:
                                revert with 'NH{q', 50
                            mem[_4055 + 32] = mem[(32 * s) + _565 + 44 len 20]
                            if not cd[36]:
                                revert with 'NH{q', 18
                            mem[_4055 + 64] = 100 / cd[36]
                            mem[_4055 + 96] = _3541 + 96
                            mem[_4055 + 128] = _3541 + (32 * cd[36]) + 128
                            if idx and mem[_565] > -1 / idx:
                                revert with 'NH{q', 17
                            if idx * mem[_565] > -s - 1:
                                revert with 'NH{q', 17
                            if (idx * mem[_565]) + s >= mem[_1166]:
                                revert with 'NH{q', 50
                            mem[(32 * (idx * mem[_565]) + s) + _1166 + 32] = _4055
                        else:
                            mem[_3541 + (32 * cd[36]) + 160 len 32 * cd[36]] = call.data[calldata.size len 32 * cd[36]]
                            t = 0
                            while t < cd[36]:
                                if s >= mem[_565]:
                                    revert with 'NH{q', 50
                                _4075 = mem[(32 * s) + _565 + 32]
                                if not cd[36]:
                                    revert with 'NH{q', 18
                                if t > -2:
                                    revert with 'NH{q', 17
                                if t + 1 and 100 / cd[36] > -1 / t + 1:
                                    revert with 'NH{q', 17
                                if cd[4] / 100 and (100 / cd[36]) + (t * 100 / cd[36]) > -1 / cd[4] / 100:
                                    revert with 'NH{q', 17
                                mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = (100 / cd[36] * cd[4] / 100) + (t * 100 / cd[36] * cd[4] / 100)
                                mem[mem[64] + 36] = 64
                                _4220 = mem[_3541]
                                mem[mem[64] + 68] = mem[_3541]
                                s = 0
                                u = _3541 + 32
                                v = mem[64] + 100
                                while s < _4220:
                                    mem[v] = mem[u + 12 len 20]
                                    _2949 = mem[96]
                                    _3523 = mem[_565]
                                    s = s + 1
                                    u = u + 32
                                    v = v + 32
                                    continue 
                                require ext_code.size(address(_4075))
                                staticcall address(_4075).getAmountsOut(uint256 arg1, address[] arg2) with:
                                        gas gas_remaining wei
                                       args (100 / cd[36] * cd[4] / 100) + (t * 100 / cd[36] * cd[4] / 100), 64, mem[mem[64] + 68 len (32 * _4220) + 32]
                                if not ext_call.success:
                                    _4488 = mem[64]
                                    mem[mem[64]] = 2
                                    mem[64] = mem[64] + 96
                                    if 0 >= mem[_4488]:
                                        revert with 'NH{q', 50
                                    mem[_4488 + 32] = cd[4]
                                    if 1 >= mem[_4488]:
                                        revert with 'NH{q', 50
                                    mem[_4488 + 64] = 0
                                    if 1 >= mem[_4488]:
                                        revert with 'NH{q', 50
                                    if t >= mem[_3541 + (32 * cd[36]) + 128]:
                                        revert with 'NH{q', 50
                                    mem[(32 * t) + _3541 + (32 * cd[36]) + 160] = 0
                                    if idx >= mem[96]:
                                        revert with 'NH{q', 50
                                    if not mem[mem[(32 * idx) + 128] + 32]:
                                        if idx >= mem[96]:
                                            revert with 'NH{q', 50
                                        if 1 >= mem[_4488]:
                                            revert with 'NH{q', 50
                                        if 0 and mem[mem[(32 * idx) + 128] + 64] > -1 / 0:
                                            revert with 'NH{q', 17
                                        if t >= mem[_3541 + 96]:
                                            revert with 'NH{q', 50
                                        mem[(32 * t) + _3541 + 128] = 0
                                    else:
                                        if bool(bool(mem[mem[(32 * idx) + 128] + 32] < 78)) or bool(bool(mem[mem[(32 * idx) + 128] + 32] < 32)):
                                            if 10^mem[mem[(32 * idx) + 128] + 32] > -1:
                                                revert with 'NH{q', 17
                                            if idx >= mem[96]:
                                                revert with 'NH{q', 50
                                            if 1 >= mem[_4488]:
                                                revert with 'NH{q', 50
                                            if 0 and mem[mem[(32 * idx) + 128] + 64] > -1 / 0:
                                                revert with 'NH{q', 17
                                            if not 10^mem[mem[(32 * idx) + 128] + 32]:
                                                revert with 'NH{q', 18
                                            if t >= mem[_3541 + 96]:
                                                revert with 'NH{q', 50
                                            mem[(32 * t) + _3541 + 128] = 0 / 10^mem[mem[(32 * idx) + 128] + 32]
                                        else:
                                            u = 10
                                            v = 1
                                            s = mem[mem[(32 * idx) + 128] + 32]
                                            while s > 1:
                                                if u > -1 / u:
                                                    revert with 'NH{q', 17
                                                _2949 = mem[96]
                                                _3523 = mem[_565]
                                                if not bool(s):
                                                    u = u * u
                                                    v = v
                                                    s = uint255(s) * 0.5
                                                    continue 
                                                u = u * u
                                                v = v * u
                                                s = uint255(s) * 0.5
                                                continue 
                                            if v > -1 / u:
                                                revert with 'NH{q', 17
                                            if idx >= mem[96]:
                                                revert with 'NH{q', 50
                                            if 1 >= mem[_4488]:
                                                revert with 'NH{q', 50
                                            if 0 and mem[mem[(32 * idx) + 128] + 64] > -1 / 0:
                                                revert with 'NH{q', 17
                                            if not v * u:
                                                revert with 'NH{q', 18
                                            if t >= mem[_3541 + 96]:
                                                revert with 'NH{q', 50
                                            mem[(32 * t) + _3541 + 128] = 0 / v * u
                                else:
                                    _4467 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _4489 = mem[_4467]
                                    require mem[_4467] <= test266151307()
                                    require _4467 + mem[_4467] + 31 < _4467 + return_data.size
                                    _4505 = mem[_4467 + mem[_4467]]
                                    if mem[_4467 + mem[_4467]] > test266151307():
                                        revert with 'NH{q', 65
                                    if _4467 + ceil32(return_data.size) + (32 * mem[_4467 + mem[_4467]]) + 32 > test266151307() or (32 * mem[_4467 + mem[_4467]]) + 32 < 0:
                                        revert with 'NH{q', 65
                                    mem[64] = _4467 + ceil32(return_data.size) + (32 * mem[_4467 + mem[_4467]]) + 32
                                    mem[_4467 + ceil32(return_data.size)] = _4505
                                    require _4489 + (32 * _4505) + 32 <= return_data.size
                                    s = 0
                                    u = _4467 + _4489 + 32
                                    v = _4467 + ceil32(return_data.size) + 32
                                    while s < _4505:
                                        require mem[u] == mem[u]
                                        mem[v] = mem[u]
                                        _2949 = mem[96]
                                        _3523 = mem[_565]
                                        s = s + 1
                                        u = u + 32
                                        v = v + 32
                                        continue 
                                    if 1 >= _4505:
                                        revert with 'NH{q', 50
                                    if t >= mem[_3541 + (32 * cd[36]) + 128]:
                                        revert with 'NH{q', 50
                                    mem[(32 * t) + _3541 + (32 * cd[36]) + 160] = mem[_4467 + ceil32(return_data.size) + 64]
                                    if idx >= mem[96]:
                                        revert with 'NH{q', 50
                                    if not mem[mem[(32 * idx) + 128] + 32]:
                                        if idx >= mem[96]:
                                            revert with 'NH{q', 50
                                        if 1 >= _4505:
                                            revert with 'NH{q', 50
                                        if mem[_4467 + ceil32(return_data.size) + 64] and mem[mem[(32 * idx) + 128] + 64] > -1 / mem[_4467 + ceil32(return_data.size) + 64]:
                                            revert with 'NH{q', 17
                                        if t >= mem[_3541 + 96]:
                                            revert with 'NH{q', 50
                                        mem[(32 * t) + _3541 + 128] = mem[_4467 + ceil32(return_data.size) + 64] * mem[mem[(32 * idx) + 128] + 64]
                                    else:
                                        if bool(bool(mem[mem[(32 * idx) + 128] + 32] < 78)) or bool(bool(mem[mem[(32 * idx) + 128] + 32] < 32)):
                                            if 10^mem[mem[(32 * idx) + 128] + 32] > -1:
                                                revert with 'NH{q', 17
                                            if idx >= mem[96]:
                                                revert with 'NH{q', 50
                                            if 1 >= _4505:
                                                revert with 'NH{q', 50
                                            if mem[_4467 + ceil32(return_data.size) + 64] and mem[mem[(32 * idx) + 128] + 64] > -1 / mem[_4467 + ceil32(return_data.size) + 64]:
                                                revert with 'NH{q', 17
                                            if not 10^mem[mem[(32 * idx) + 128] + 32]:
                                                revert with 'NH{q', 18
                                            if t >= mem[_3541 + 96]:
                                                revert with 'NH{q', 50
                                            mem[(32 * t) + _3541 + 128] = mem[_4467 + ceil32(return_data.size) + 64] * mem[mem[(32 * idx) + 128] + 64] / 10^mem[mem[(32 * idx) + 128] + 32]
                                        else:
                                            u = 10
                                            v = 1
                                            s = mem[mem[(32 * idx) + 128] + 32]
                                            while s > 1:
                                                if u > -1 / u:
                                                    revert with 'NH{q', 17
                                                _2949 = mem[96]
                                                _3523 = mem[_565]
                                                if not bool(s):
                                                    u = u * u
                                                    v = v
                                                    s = uint255(s) * 0.5
                                                    continue 
                                                u = u * u
                                                v = v * u
                                                s = uint255(s) * 0.5
                                                continue 
                                            if v > -1 / u:
                                                revert with 'NH{q', 17
                                            if idx >= mem[96]:
                                                revert with 'NH{q', 50
                                            if 1 >= _4505:
                                                revert with 'NH{q', 50
                                            if mem[_4467 + ceil32(return_data.size) + 64] and mem[mem[(32 * idx) + 128] + 64] > -1 / mem[_4467 + ceil32(return_data.size) + 64]:
                                                revert with 'NH{q', 17
                                            if not v * u:
                                                revert with 'NH{q', 18
                                            if t >= mem[_3541 + 96]:
                                                revert with 'NH{q', 50
                                            mem[(32 * t) + _3541 + 128] = mem[_4467 + ceil32(return_data.size) + 64] * mem[mem[(32 * idx) + 128] + 64] / v * u
                                if t == -1:
                                    revert with 'NH{q', 17
                                _2949 = mem[96]
                                _3523 = mem[_565]
                                t = t + 1
                                continue 
                            _4058 = mem[64]
                            mem[64] = mem[64] + 160
                            mem[_4058] = _3541
                            if s >= mem[_565]:
                                revert with 'NH{q', 50
                            mem[_4058 + 32] = mem[(32 * s) + _565 + 44 len 20]
                            if not cd[36]:
                                revert with 'NH{q', 18
                            mem[_4058 + 64] = 100 / cd[36]
                            mem[_4058 + 96] = _3541 + 96
                            mem[_4058 + 128] = _3541 + (32 * cd[36]) + 128
                            if idx and mem[_565] > -1 / idx:
                                revert with 'NH{q', 17
                            if idx * mem[_565] > -s - 1:
                                revert with 'NH{q', 17
                            if (idx * mem[_565]) + s >= mem[_1166]:
                                revert with 'NH{q', 50
                            mem[(32 * (idx * mem[_565]) + s) + _1166 + 32] = _4058
                    else:
                        mem[_3541 + 128 len 32 * cd[36]] = call.data[calldata.size len 32 * cd[36]]
                        if cd[36] > test266151307():
                            revert with 'NH{q', 65
                        mem[_3541 + (32 * cd[36]) + 128] = cd[36]
                        mem[64] = _3541 + (64 * cd[36]) + 160
                        if not cd[36]:
                            t = 0
                            while t < cd[36]:
                                if s >= mem[_565]:
                                    revert with 'NH{q', 50
                                _4077 = mem[(32 * s) + _565 + 32]
                                if not cd[36]:
                                    revert with 'NH{q', 18
                                if t > -2:
                                    revert with 'NH{q', 17
                                if t + 1 and 100 / cd[36] > -1 / t + 1:
                                    revert with 'NH{q', 17
                                if cd[4] / 100 and (100 / cd[36]) + (t * 100 / cd[36]) > -1 / cd[4] / 100:
                                    revert with 'NH{q', 17
                                mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = (100 / cd[36] * cd[4] / 100) + (t * 100 / cd[36] * cd[4] / 100)
                                mem[mem[64] + 36] = 64
                                _4221 = mem[_3541]
                                mem[mem[64] + 68] = mem[_3541]
                                s = 0
                                u = _3541 + 32
                                v = mem[64] + 100
                                while s < _4221:
                                    mem[v] = mem[u + 12 len 20]
                                    _2949 = mem[96]
                                    _3523 = mem[_565]
                                    s = s + 1
                                    u = u + 32
                                    v = v + 32
                                    continue 
                                require ext_code.size(address(_4077))
                                staticcall address(_4077).getAmountsOut(uint256 arg1, address[] arg2) with:
                                        gas gas_remaining wei
                                       args (100 / cd[36] * cd[4] / 100) + (t * 100 / cd[36] * cd[4] / 100), 64, mem[mem[64] + 68 len (32 * _4221) + 32]
                                if not ext_call.success:
                                    _4490 = mem[64]
                                    mem[mem[64]] = 2
                                    mem[64] = mem[64] + 96
                                    if 0 >= mem[_4490]:
                                        revert with 'NH{q', 50
                                    mem[_4490 + 32] = cd[4]
                                    if 1 >= mem[_4490]:
                                        revert with 'NH{q', 50
                                    mem[_4490 + 64] = 0
                                    if 1 >= mem[_4490]:
                                        revert with 'NH{q', 50
                                    if t >= mem[_3541 + (32 * cd[36]) + 128]:
                                        revert with 'NH{q', 50
                                    mem[(32 * t) + _3541 + (32 * cd[36]) + 160] = 0
                                    if idx >= mem[96]:
                                        revert with 'NH{q', 50
                                    if not mem[mem[(32 * idx) + 128] + 32]:
                                        if idx >= mem[96]:
                                            revert with 'NH{q', 50
                                        if 1 >= mem[_4490]:
                                            revert with 'NH{q', 50
                                        if 0 and mem[mem[(32 * idx) + 128] + 64] > -1 / 0:
                                            revert with 'NH{q', 17
                                        if t >= mem[_3541 + 96]:
                                            revert with 'NH{q', 50
                                        mem[(32 * t) + _3541 + 128] = 0
                                    else:
                                        if bool(bool(mem[mem[(32 * idx) + 128] + 32] < 78)) or bool(bool(mem[mem[(32 * idx) + 128] + 32] < 32)):
                                            if 10^mem[mem[(32 * idx) + 128] + 32] > -1:
                                                revert with 'NH{q', 17
                                            if idx >= mem[96]:
                                                revert with 'NH{q', 50
                                            if 1 >= mem[_4490]:
                                                revert with 'NH{q', 50
                                            if 0 and mem[mem[(32 * idx) + 128] + 64] > -1 / 0:
                                                revert with 'NH{q', 17
                                            if not 10^mem[mem[(32 * idx) + 128] + 32]:
                                                revert with 'NH{q', 18
                                            if t >= mem[_3541 + 96]:
                                                revert with 'NH{q', 50
                                            mem[(32 * t) + _3541 + 128] = 0 / 10^mem[mem[(32 * idx) + 128] + 32]
                                        else:
                                            u = 10
                                            v = 1
                                            s = mem[mem[(32 * idx) + 128] + 32]
                                            while s > 1:
                                                if u > -1 / u:
                                                    revert with 'NH{q', 17
                                                _2949 = mem[96]
                                                _3523 = mem[_565]
                                                if not bool(s):
                                                    u = u * u
                                                    v = v
                                                    s = uint255(s) * 0.5
                                                    continue 
                                                u = u * u
                                                v = v * u
                                                s = uint255(s) * 0.5
                                                continue 
                                            if v > -1 / u:
                                                revert with 'NH{q', 17
                                            if idx >= mem[96]:
                                                revert with 'NH{q', 50
                                            if 1 >= mem[_4490]:
                                                revert with 'NH{q', 50
                                            if 0 and mem[mem[(32 * idx) + 128] + 64] > -1 / 0:
                                                revert with 'NH{q', 17
                                            if not v * u:
                                                revert with 'NH{q', 18
                                            if t >= mem[_3541 + 96]:
                                                revert with 'NH{q', 50
                                            mem[(32 * t) + _3541 + 128] = 0 / v * u
                                else:
                                    _4468 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _4491 = mem[_4468]
                                    require mem[_4468] <= test266151307()
                                    require _4468 + mem[_4468] + 31 < _4468 + return_data.size
                                    _4507 = mem[_4468 + mem[_4468]]
                                    if mem[_4468 + mem[_4468]] > test266151307():
                                        revert with 'NH{q', 65
                                    if _4468 + ceil32(return_data.size) + (32 * mem[_4468 + mem[_4468]]) + 32 > test266151307() or (32 * mem[_4468 + mem[_4468]]) + 32 < 0:
                                        revert with 'NH{q', 65
                                    mem[64] = _4468 + ceil32(return_data.size) + (32 * mem[_4468 + mem[_4468]]) + 32
                                    mem[_4468 + ceil32(return_data.size)] = _4507
                                    require _4491 + (32 * _4507) + 32 <= return_data.size
                                    s = 0
                                    u = _4468 + _4491 + 32
                                    v = _4468 + ceil32(return_data.size) + 32
                                    while s < _4507:
                                        require mem[u] == mem[u]
                                        mem[v] = mem[u]
                                        _2949 = mem[96]
                                        _3523 = mem[_565]
                                        s = s + 1
                                        u = u + 32
                                        v = v + 32
                                        continue 
                                    if 1 >= _4507:
                                        revert with 'NH{q', 50
                                    if t >= mem[_3541 + (32 * cd[36]) + 128]:
                                        revert with 'NH{q', 50
                                    mem[(32 * t) + _3541 + (32 * cd[36]) + 160] = mem[_4468 + ceil32(return_data.size) + 64]
                                    if idx >= mem[96]:
                                        revert with 'NH{q', 50
                                    if not mem[mem[(32 * idx) + 128] + 32]:
                                        if idx >= mem[96]:
                                            revert with 'NH{q', 50
                                        if 1 >= _4507:
                                            revert with 'NH{q', 50
                                        if mem[_4468 + ceil32(return_data.size) + 64] and mem[mem[(32 * idx) + 128] + 64] > -1 / mem[_4468 + ceil32(return_data.size) + 64]:
                                            revert with 'NH{q', 17
                                        if t >= mem[_3541 + 96]:
                                            revert with 'NH{q', 50
                                        mem[(32 * t) + _3541 + 128] = mem[_4468 + ceil32(return_data.size) + 64] * mem[mem[(32 * idx) + 128] + 64]
                                    else:
                                        if bool(bool(mem[mem[(32 * idx) + 128] + 32] < 78)) or bool(bool(mem[mem[(32 * idx) + 128] + 32] < 32)):
                                            if 10^mem[mem[(32 * idx) + 128] + 32] > -1:
                                                revert with 'NH{q', 17
                                            if idx >= mem[96]:
                                                revert with 'NH{q', 50
                                            if 1 >= _4507:
                                                revert with 'NH{q', 50
                                            if mem[_4468 + ceil32(return_data.size) + 64] and mem[mem[(32 * idx) + 128] + 64] > -1 / mem[_4468 + ceil32(return_data.size) + 64]:
                                                revert with 'NH{q', 17
                                            if not 10^mem[mem[(32 * idx) + 128] + 32]:
                                                revert with 'NH{q', 18
                                            if t >= mem[_3541 + 96]:
                                                revert with 'NH{q', 50
                                            mem[(32 * t) + _3541 + 128] = mem[_4468 + ceil32(return_data.size) + 64] * mem[mem[(32 * idx) + 128] + 64] / 10^mem[mem[(32 * idx) + 128] + 32]
                                        else:
                                            u = 10
                                            v = 1
                                            s = mem[mem[(32 * idx) + 128] + 32]
                                            while s > 1:
                                                if u > -1 / u:
                                                    revert with 'NH{q', 17
                                                _2949 = mem[96]
                                                _3523 = mem[_565]
                                                if not bool(s):
                                                    u = u * u
                                                    v = v
                                                    s = uint255(s) * 0.5
                                                    continue 
                                                u = u * u
                                                v = v * u
                                                s = uint255(s) * 0.5
                                                continue 
                                            if v > -1 / u:
                                                revert with 'NH{q', 17
                                            if idx >= mem[96]:
                                                revert with 'NH{q', 50
                                            if 1 >= _4507:
                                                revert with 'NH{q', 50
                                            if mem[_4468 + ceil32(return_data.size) + 64] and mem[mem[(32 * idx) + 128] + 64] > -1 / mem[_4468 + ceil32(return_data.size) + 64]:
                                                revert with 'NH{q', 17
                                            if not v * u:
                                                revert with 'NH{q', 18
                                            if t >= mem[_3541 + 96]:
                                                revert with 'NH{q', 50
                                            mem[(32 * t) + _3541 + 128] = mem[_4468 + ceil32(return_data.size) + 64] * mem[mem[(32 * idx) + 128] + 64] / v * u
                                if t == -1:
                                    revert with 'NH{q', 17
                                _2949 = mem[96]
                                _3523 = mem[_565]
                                t = t + 1
                                continue 
                            _4061 = mem[64]
                            mem[64] = mem[64] + 160
                            mem[_4061] = _3541
                            if s >= mem[_565]:
                                revert with 'NH{q', 50
                            mem[_4061 + 32] = mem[(32 * s) + _565 + 44 len 20]
                            if not cd[36]:
                                revert with 'NH{q', 18
                            mem[_4061 + 64] = 100 / cd[36]
                            mem[_4061 + 96] = _3541 + 96
                            mem[_4061 + 128] = _3541 + (32 * cd[36]) + 128
                            if idx and mem[_565] > -1 / idx:
                                revert with 'NH{q', 17
                            if idx * mem[_565] > -s - 1:
                                revert with 'NH{q', 17
                            if (idx * mem[_565]) + s >= mem[_1166]:
                                revert with 'NH{q', 50
                            mem[(32 * (idx * mem[_565]) + s) + _1166 + 32] = _4061
                        else:
                            mem[_3541 + (32 * cd[36]) + 160 len 32 * cd[36]] = call.data[calldata.size len 32 * cd[36]]
                            t = 0
                            while t < cd[36]:
                                if s >= mem[_565]:
                                    revert with 'NH{q', 50
                                _4079 = mem[(32 * s) + _565 + 32]
                                if not cd[36]:
                                    revert with 'NH{q', 18
                                if t > -2:
                                    revert with 'NH{q', 17
                                if t + 1 and 100 / cd[36] > -1 / t + 1:
                                    revert with 'NH{q', 17
                                if cd[4] / 100 and (100 / cd[36]) + (t * 100 / cd[36]) > -1 / cd[4] / 100:
                                    revert with 'NH{q', 17
                                mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = (100 / cd[36] * cd[4] / 100) + (t * 100 / cd[36] * cd[4] / 100)
                                mem[mem[64] + 36] = 64
                                _4222 = mem[_3541]
                                mem[mem[64] + 68] = mem[_3541]
                                s = 0
                                u = _3541 + 32
                                v = mem[64] + 100
                                while s < _4222:
                                    mem[v] = mem[u + 12 len 20]
                                    _2949 = mem[96]
                                    _3523 = mem[_565]
                                    s = s + 1
                                    u = u + 32
                                    v = v + 32
                                    continue 
                                require ext_code.size(address(_4079))
                                staticcall address(_4079).getAmountsOut(uint256 arg1, address[] arg2) with:
                                        gas gas_remaining wei
                                       args (100 / cd[36] * cd[4] / 100) + (t * 100 / cd[36] * cd[4] / 100), 64, mem[mem[64] + 68 len (32 * _4222) + 32]
                                if not ext_call.success:
                                    _4492 = mem[64]
                                    mem[mem[64]] = 2
                                    mem[64] = mem[64] + 96
                                    if 0 >= mem[_4492]:
                                        revert with 'NH{q', 50
                                    mem[_4492 + 32] = cd[4]
                                    if 1 >= mem[_4492]:
                                        revert with 'NH{q', 50
                                    mem[_4492 + 64] = 0
                                    if 1 >= mem[_4492]:
                                        revert with 'NH{q', 50
                                    if t >= mem[_3541 + (32 * cd[36]) + 128]:
                                        revert with 'NH{q', 50
                                    mem[(32 * t) + _3541 + (32 * cd[36]) + 160] = 0
                                    if idx >= mem[96]:
                                        revert with 'NH{q', 50
                                    if not mem[mem[(32 * idx) + 128] + 32]:
                                        if idx >= mem[96]:
                                            revert with 'NH{q', 50
                                        if 1 >= mem[_4492]:
                                            revert with 'NH{q', 50
                                        if 0 and mem[mem[(32 * idx) + 128] + 64] > -1 / 0:
                                            revert with 'NH{q', 17
                                        if t >= mem[_3541 + 96]:
                                            revert with 'NH{q', 50
                                        mem[(32 * t) + _3541 + 128] = 0
                                    else:
                                        if bool(bool(mem[mem[(32 * idx) + 128] + 32] < 78)) or bool(bool(mem[mem[(32 * idx) + 128] + 32] < 32)):
                                            if 10^mem[mem[(32 * idx) + 128] + 32] > -1:
                                                revert with 'NH{q', 17
                                            if idx >= mem[96]:
                                                revert with 'NH{q', 50
                                            if 1 >= mem[_4492]:
                                                revert with 'NH{q', 50
                                            if 0 and mem[mem[(32 * idx) + 128] + 64] > -1 / 0:
                                                revert with 'NH{q', 17
                                            if not 10^mem[mem[(32 * idx) + 128] + 32]:
                                                revert with 'NH{q', 18
                                            if t >= mem[_3541 + 96]:
                                                revert with 'NH{q', 50
                                            mem[(32 * t) + _3541 + 128] = 0 / 10^mem[mem[(32 * idx) + 128] + 32]
                                        else:
                                            u = 10
                                            v = 1
                                            s = mem[mem[(32 * idx) + 128] + 32]
                                            while s > 1:
                                                if u > -1 / u:
                                                    revert with 'NH{q', 17
                                                _2949 = mem[96]
                                                _3523 = mem[_565]
                                                if not bool(s):
                                                    u = u * u
                                                    v = v
                                                    s = uint255(s) * 0.5
                                                    continue 
                                                u = u * u
                                                v = v * u
                                                s = uint255(s) * 0.5
                                                continue 
                                            if v > -1 / u:
                                                revert with 'NH{q', 17
                                            if idx >= mem[96]:
                                                revert with 'NH{q', 50
                                            if 1 >= mem[_4492]:
                                                revert with 'NH{q', 50
                                            if 0 and mem[mem[(32 * idx) + 128] + 64] > -1 / 0:
                                                revert with 'NH{q', 17
                                            if not v * u:
                                                revert with 'NH{q', 18
                                            if t >= mem[_3541 + 96]:
                                                revert with 'NH{q', 50
                                            mem[(32 * t) + _3541 + 128] = 0 / v * u
                                else:
                                    _4469 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _4493 = mem[_4469]
                                    require mem[_4469] <= test266151307()
                                    require _4469 + mem[_4469] + 31 < _4469 + return_data.size
                                    _4509 = mem[_4469 + mem[_4469]]
                                    if mem[_4469 + mem[_4469]] > test266151307():
                                        revert with 'NH{q', 65
                                    if _4469 + ceil32(return_data.size) + (32 * mem[_4469 + mem[_4469]]) + 32 > test266151307() or (32 * mem[_4469 + mem[_4469]]) + 32 < 0:
                                        revert with 'NH{q', 65
                                    mem[64] = _4469 + ceil32(return_data.size) + (32 * mem[_4469 + mem[_4469]]) + 32
                                    mem[_4469 + ceil32(return_data.size)] = _4509
                                    require _4493 + (32 * _4509) + 32 <= return_data.size
                                    s = 0
                                    u = _4469 + _4493 + 32
                                    v = _4469 + ceil32(return_data.size) + 32
                                    while s < _4509:
                                        require mem[u] == mem[u]
                                        mem[v] = mem[u]
                                        _2949 = mem[96]
                                        _3523 = mem[_565]
                                        s = s + 1
                                        u = u + 32
                                        v = v + 32
                                        continue 
                                    if 1 >= _4509:
                                        revert with 'NH{q', 50
                                    if t >= mem[_3541 + (32 * cd[36]) + 128]:
                                        revert with 'NH{q', 50
                                    mem[(32 * t) + _3541 + (32 * cd[36]) + 160] = mem[_4469 + ceil32(return_data.size) + 64]
                                    if idx >= mem[96]:
                                        revert with 'NH{q', 50
                                    if not mem[mem[(32 * idx) + 128] + 32]:
                                        if idx >= mem[96]:
                                            revert with 'NH{q', 50
                                        if 1 >= _4509:
                                            revert with 'NH{q', 50
                                        if mem[_4469 + ceil32(return_data.size) + 64] and mem[mem[(32 * idx) + 128] + 64] > -1 / mem[_4469 + ceil32(return_data.size) + 64]:
                                            revert with 'NH{q', 17
                                        if t >= mem[_3541 + 96]:
                                            revert with 'NH{q', 50
                                        mem[(32 * t) + _3541 + 128] = mem[_4469 + ceil32(return_data.size) + 64] * mem[mem[(32 * idx) + 128] + 64]
                                    else:
                                        if bool(bool(mem[mem[(32 * idx) + 128] + 32] < 78)) or bool(bool(mem[mem[(32 * idx) + 128] + 32] < 32)):
                                            if 10^mem[mem[(32 * idx) + 128] + 32] > -1:
                                                revert with 'NH{q', 17
                                            if idx >= mem[96]:
                                                revert with 'NH{q', 50
                                            if 1 >= _4509:
                                                revert with 'NH{q', 50
                                            if mem[_4469 + ceil32(return_data.size) + 64] and mem[mem[(32 * idx) + 128] + 64] > -1 / mem[_4469 + ceil32(return_data.size) + 64]:
                                                revert with 'NH{q', 17
                                            if not 10^mem[mem[(32 * idx) + 128] + 32]:
                                                revert with 'NH{q', 18
                                            if t >= mem[_3541 + 96]:
                                                revert with 'NH{q', 50
                                            mem[(32 * t) + _3541 + 128] = mem[_4469 + ceil32(return_data.size) + 64] * mem[mem[(32 * idx) + 128] + 64] / 10^mem[mem[(32 * idx) + 128] + 32]
                                        else:
                                            u = 10
                                            v = 1
                                            s = mem[mem[(32 * idx) + 128] + 32]
                                            while s > 1:
                                                if u > -1 / u:
                                                    revert with 'NH{q', 17
                                                _2949 = mem[96]
                                                _3523 = mem[_565]
                                                if not bool(s):
                                                    u = u * u
                                                    v = v
                                                    s = uint255(s) * 0.5
                                                    continue 
                                                u = u * u
                                                v = v * u
                                                s = uint255(s) * 0.5
                                                continue 
                                            if v > -1 / u:
                                                revert with 'NH{q', 17
                                            if idx >= mem[96]:
                                                revert with 'NH{q', 50
                                            if 1 >= _4509:
                                                revert with 'NH{q', 50
                                            if mem[_4469 + ceil32(return_data.size) + 64] and mem[mem[(32 * idx) + 128] + 64] > -1 / mem[_4469 + ceil32(return_data.size) + 64]:
                                                revert with 'NH{q', 17
                                            if not v * u:
                                                revert with 'NH{q', 18
                                            if t >= mem[_3541 + 96]:
                                                revert with 'NH{q', 50
                                            mem[(32 * t) + _3541 + 128] = mem[_4469 + ceil32(return_data.size) + 64] * mem[mem[(32 * idx) + 128] + 64] / v * u
                                if t == -1:
                                    revert with 'NH{q', 17
                                _2949 = mem[96]
                                _3523 = mem[_565]
                                t = t + 1
                                continue 
                            _4064 = mem[64]
                            mem[64] = mem[64] + 160
                            mem[_4064] = _3541
                            if s >= mem[_565]:
                                revert with 'NH{q', 50
                            mem[_4064 + 32] = mem[(32 * s) + _565 + 44 len 20]
                            if not cd[36]:
                                revert with 'NH{q', 18
                            mem[_4064 + 64] = 100 / cd[36]
                            mem[_4064 + 96] = _3541 + 96
                            mem[_4064 + 128] = _3541 + (32 * cd[36]) + 128
                            if idx and mem[_565] > -1 / idx:
                                revert with 'NH{q', 17
                            if idx * mem[_565] > -s - 1:
                                revert with 'NH{q', 17
                            if (idx * mem[_565]) + s >= mem[_1166]:
                                revert with 'NH{q', 50
                            mem[(32 * (idx * mem[_565]) + s) + _1166 + 32] = _4064
                if s == -1:
                    revert with 'NH{q', 17
                _2949 = mem[96]
                _3523 = mem[_565]
                s = s + 1
                continue 
            if idx == -1:
                revert with 'NH{q', 17
            _2949 = mem[96]
            idx = idx + 1
            continue 
        _2972 = mem[64]
        mem[mem[64]] = 32
        _2977 = mem[_1166]
        mem[mem[64] + 32] = mem[_1166]
        idx = 0
        s = _1166 + 32
        t = mem[64] + (32 * _2977) + 64
        u = mem[64] + 64
        while idx < _2977:
            mem[u] = t + -_2972 - 64
            _3529 = mem[s]
            _3539 = mem[mem[s]]
            mem[t] = 160
            _3546 = mem[_3539]
            mem[t + 160] = mem[_3539]
            v = 0
            w = _3539 + 32
            x = t + 192
            while v < _3546:
                mem[x] = mem[w + 12 len 20]
                v = v + 1
                w = w + 32
                x = x + 32
                continue 
            mem[t + 32] = mem[_3529 + 44 len 20]
            mem[t + 64] = mem[_3529 + 64]
            _4129 = mem[_3529 + 96]
            mem[t + 96] = (32 * _3546) + 192
            _4130 = mem[_4129]
            mem[t + (32 * _3546) + 192] = mem[_4129]
            v = 0
            w = _4129 + 32
            x = t + (32 * _3546) + 224
            while v < _4130:
                mem[x] = mem[w]
                v = v + 1
                w = w + 32
                x = x + 32
                continue 
            _4460 = mem[_3529 + 128]
            mem[t + 128] = (32 * _3546) + (32 * _4130) + 224
            _4465 = mem[_4460]
            mem[t + (32 * _3546) + (32 * _4130) + 224] = mem[_4460]
            v = 0
            w = _4460 + 32
            x = t + (32 * _3546) + (32 * _4130) + 256
            while v < _4465:
                mem[x] = mem[w]
                v = v + 1
                w = w + 32
                x = x + 32
                continue 
            idx = idx + 1
            s = s + 32
            t = t + (32 * _3546) + (32 * _4130) + (32 * _4465) + 256
            u = u + 32
            continue 
    return memory
      from mem[64]
       len t - mem[64]
}



}
