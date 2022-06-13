contract main {




// =====================  Runtime code  =====================


address stor0;
address stor1;

function _fallback() payable {
    revert
}

function sub_cc53a01d(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[96] = 0x348d9d5100000000000000000000000000000000000000000000000000000000
    mem[100] = arg1
    require ext_code.size(stor0)
    staticcall stor0.0x348d9d51 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _4 = mem[96 len 4], Mask(224, 32, arg1) >> 32
    require mem[96 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
    require mem[96 len 4], Mask(224, 32, arg1) >> 32 + 127 < return_data.size + 96
    _5 = mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96]
    if mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96] > test266151307():
        revert with 'NH{q', 65
    if ceil32(return_data.size) + floor32(mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96]) + 97 > test266151307() or floor32(mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = ceil32(return_data.size) + floor32(mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96]) + 97
    mem[ceil32(return_data.size) + 96] = _5
    require _4 + (32 * _5) + 32 <= return_data.size
    idx = 0
    s = _4 + 128
    t = ceil32(return_data.size) + 128
    while idx < _5:
        require mem[s] == mem[s + 12 len 20]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if _5 > test266151307():
        revert with 'NH{q', 65
    _600 = mem[64]
    mem[mem[64]] = _5
    if not _5:
        if _5 > test266151307():
            revert with 'NH{q', 65
        _602 = mem[64] + (32 * _5) + 32
        mem[mem[64] + (32 * _5) + 32] = _5
        if not _5:
            if _5 > test266151307():
                revert with 'NH{q', 65
            mem[_602 + (32 * _5) + 32] = _5
            if not _5:
                if _5 > test266151307():
                    revert with 'NH{q', 65
                mem[_602 + (64 * _5) + 64] = _5
                mem[64] = _602 + (98 * _5) + 96
                if not _5:
                    s = 0
                    idx = 0
                    t = 0
                    while idx < _5:
                        if idx >= mem[ceil32(return_data.size) + 96]:
                            revert with 'NH{q', 50
                        if not mem[(32 * idx) + ceil32(return_data.size) + 140 len 20]:
                            if idx == -1:
                                revert with 'NH{q', 17
                            s = s
                            idx = idx + 1
                            t = t
                            continue 
                        if idx >= mem[ceil32(return_data.size) + 96]:
                            revert with 'NH{q', 50
                        mem[mem[64] + 4] = mem[(32 * idx) + ceil32(return_data.size) + 140 len 20]
                        mem[mem[64] + 36] = arg1
                        require ext_code.size(stor1)
                        staticcall stor1.balanceOf(address arg1, uint256 arg2) with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4], arg1
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1365 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1381 = mem[_1365]
                        require mem[_1365] == mem[_1365]
                        if mem[_1365] <= 0:
                            if idx == -1:
                                revert with 'NH{q', 17
                            s = s
                            idx = idx + 1
                            t = mem[_1365]
                            continue 
                        if idx >= mem[ceil32(return_data.size) + 96]:
                            revert with 'NH{q', 50
                        if s >= mem[_600]:
                            revert with 'NH{q', 50
                        mem[(32 * s) + _600 + 32] = mem[(32 * idx) + ceil32(return_data.size) + 140 len 20]
                        if idx >= mem[ceil32(return_data.size) + 96]:
                            revert with 'NH{q', 50
                        mem[mem[64] + 4] = mem[(32 * idx) + ceil32(return_data.size) + 140 len 20]
                        mem[mem[64] + 36] = arg1
                        require ext_code.size(stor0)
                        staticcall stor0.0x92873644 with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4], arg1
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1573 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1573] == mem[_1573]
                        if s >= mem[_602]:
                            revert with 'NH{q', 50
                        mem[(32 * s) + _602 + 32] = mem[_1573]
                        if idx >= mem[ceil32(return_data.size) + 96]:
                            revert with 'NH{q', 50
                        mem[mem[64] + 4] = mem[(32 * idx) + ceil32(return_data.size) + 140 len 20]
                        mem[mem[64] + 36] = arg1
                        require ext_code.size(stor0)
                        staticcall stor0.0xc0a5e34b with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4], arg1
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1685 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1685] == mem[_1685]
                        if s >= mem[_602 + (32 * _5) + 32]:
                            revert with 'NH{q', 50
                        mem[(32 * s) + _602 + (32 * _5) + 64] = mem[_1685]
                        if s >= mem[_602 + (64 * _5) + 64]:
                            revert with 'NH{q', 50
                        mem[(32 * s) + _602 + (64 * _5) + 96] = _1381
                        if s > -2:
                            revert with 'NH{q', 17
                        if idx == -1:
                            revert with 'NH{q', 17
                        s = s + 1
                        idx = idx + 1
                        t = _1381
                        continue 
                    _1221 = mem[64]
                    mem[mem[64]] = 96
                    _1301 = mem[_600]
                    mem[mem[64] + 96] = mem[_600]
                    idx = 0
                    s = _600 + 32
                    t = mem[64] + 128
                    while idx < _1301:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_1221 + 32] = (32 * _1301) + 128
                    _1765 = mem[_602]
                    mem[_1221 + (32 * _1301) + 128] = mem[_602]
                    mem[_1221 + (32 * _1301) + 160 len 32 * _1765] = mem[_602 + 32 len 32 * _1765]
                    mem[_1221 + 64] = (32 * _1301) + (32 * _1765) + 160
                    _1861 = mem[_602 + (32 * _5) + 32]
                    mem[_1221 + (32 * _1301) + (32 * _1765) + 160] = mem[_602 + (32 * _5) + 32]
                    mem[_1221 + (32 * _1301) + (32 * _1765) + 192 len 32 * _1861] = mem[_602 + (32 * _5) + 64 len 32 * _1861]
                    return memory
                      from mem[64]
                       len _1221 + (32 * _1301) + (32 * _1765) + (32 * _1861) + -mem[64] + 192
                mem[_602 + (64 * _5) + 96 len 32 * _5] = call.data[calldata.size len 32 * _5]
                s = 0
                idx = 0
                t = 0
                while idx < _5:
                    if idx >= mem[ceil32(return_data.size) + 96]:
                        revert with 'NH{q', 50
                    if not mem[(32 * idx) + ceil32(return_data.size) + 140 len 20]:
                        if idx == -1:
                            revert with 'NH{q', 17
                        s = s
                        idx = idx + 1
                        t = t
                        continue 
                    if idx >= mem[ceil32(return_data.size) + 96]:
                        revert with 'NH{q', 50
                    mem[mem[64] + 4] = mem[(32 * idx) + ceil32(return_data.size) + 140 len 20]
                    mem[mem[64] + 36] = arg1
                    require ext_code.size(stor1)
                    staticcall stor1.balanceOf(address arg1, uint256 arg2) with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4], arg1
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1366 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1382 = mem[_1366]
                    require mem[_1366] == mem[_1366]
                    if mem[_1366] <= 0:
                        if idx == -1:
                            revert with 'NH{q', 17
                        s = s
                        idx = idx + 1
                        t = mem[_1366]
                        continue 
                    if idx >= mem[ceil32(return_data.size) + 96]:
                        revert with 'NH{q', 50
                    if s >= mem[_600]:
                        revert with 'NH{q', 50
                    mem[(32 * s) + _600 + 32] = mem[(32 * idx) + ceil32(return_data.size) + 140 len 20]
                    if idx >= mem[ceil32(return_data.size) + 96]:
                        revert with 'NH{q', 50
                    mem[mem[64] + 4] = mem[(32 * idx) + ceil32(return_data.size) + 140 len 20]
                    mem[mem[64] + 36] = arg1
                    require ext_code.size(stor0)
                    staticcall stor0.0x92873644 with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4], arg1
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1574 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1574] == mem[_1574]
                    if s >= mem[_602]:
                        revert with 'NH{q', 50
                    mem[(32 * s) + _602 + 32] = mem[_1574]
                    if idx >= mem[ceil32(return_data.size) + 96]:
                        revert with 'NH{q', 50
                    mem[mem[64] + 4] = mem[(32 * idx) + ceil32(return_data.size) + 140 len 20]
                    mem[mem[64] + 36] = arg1
                    require ext_code.size(stor0)
                    staticcall stor0.0xc0a5e34b with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4], arg1
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1686 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1686] == mem[_1686]
                    if s >= mem[_602 + (32 * _5) + 32]:
                        revert with 'NH{q', 50
                    mem[(32 * s) + _602 + (32 * _5) + 64] = mem[_1686]
                    if s >= mem[_602 + (64 * _5) + 64]:
                        revert with 'NH{q', 50
                    mem[(32 * s) + _602 + (64 * _5) + 96] = _1382
                    if s > -2:
                        revert with 'NH{q', 17
                    if idx == -1:
                        revert with 'NH{q', 17
                    s = s + 1
                    idx = idx + 1
                    t = _1382
                    continue 
                _1223 = mem[64]
                mem[mem[64]] = 96
                _1302 = mem[_600]
                mem[mem[64] + 96] = mem[_600]
                idx = 0
                s = _600 + 32
                t = mem[64] + 128
                while idx < _1302:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_1223 + 32] = (32 * _1302) + 128
                _1766 = mem[_602]
                mem[_1223 + (32 * _1302) + 128] = mem[_602]
                mem[_1223 + (32 * _1302) + 160 len 32 * _1766] = mem[_602 + 32 len 32 * _1766]
                mem[_1223 + 64] = (32 * _1302) + (32 * _1766) + 160
                _1862 = mem[_602 + (32 * _5) + 32]
                mem[_1223 + (32 * _1302) + (32 * _1766) + 160] = mem[_602 + (32 * _5) + 32]
                mem[_1223 + (32 * _1302) + (32 * _1766) + 192 len 32 * _1862] = mem[_602 + (32 * _5) + 64 len 32 * _1862]
                return memory
                  from mem[64]
                   len _1223 + (32 * _1302) + (32 * _1766) + (32 * _1862) + -mem[64] + 192
            mem[_602 + (32 * _5) + 64 len 32 * _5] = call.data[calldata.size len 32 * _5]
            if _5 > test266151307():
                revert with 'NH{q', 65
            mem[_602 + (64 * _5) + 64] = _5
            mem[64] = _602 + (98 * _5) + 96
            if not _5:
                s = 0
                idx = 0
                t = 0
                while idx < _5:
                    if idx >= mem[ceil32(return_data.size) + 96]:
                        revert with 'NH{q', 50
                    if not mem[(32 * idx) + ceil32(return_data.size) + 140 len 20]:
                        if idx == -1:
                            revert with 'NH{q', 17
                        s = s
                        idx = idx + 1
                        t = t
                        continue 
                    if idx >= mem[ceil32(return_data.size) + 96]:
                        revert with 'NH{q', 50
                    mem[mem[64] + 4] = mem[(32 * idx) + ceil32(return_data.size) + 140 len 20]
                    mem[mem[64] + 36] = arg1
                    require ext_code.size(stor1)
                    staticcall stor1.balanceOf(address arg1, uint256 arg2) with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4], arg1
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1367 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1383 = mem[_1367]
                    require mem[_1367] == mem[_1367]
                    if mem[_1367] <= 0:
                        if idx == -1:
                            revert with 'NH{q', 17
                        s = s
                        idx = idx + 1
                        t = mem[_1367]
                        continue 
                    if idx >= mem[ceil32(return_data.size) + 96]:
                        revert with 'NH{q', 50
                    if s >= mem[_600]:
                        revert with 'NH{q', 50
                    mem[(32 * s) + _600 + 32] = mem[(32 * idx) + ceil32(return_data.size) + 140 len 20]
                    if idx >= mem[ceil32(return_data.size) + 96]:
                        revert with 'NH{q', 50
                    mem[mem[64] + 4] = mem[(32 * idx) + ceil32(return_data.size) + 140 len 20]
                    mem[mem[64] + 36] = arg1
                    require ext_code.size(stor0)
                    staticcall stor0.0x92873644 with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4], arg1
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1575 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1575] == mem[_1575]
                    if s >= mem[_602]:
                        revert with 'NH{q', 50
                    mem[(32 * s) + _602 + 32] = mem[_1575]
                    if idx >= mem[ceil32(return_data.size) + 96]:
                        revert with 'NH{q', 50
                    mem[mem[64] + 4] = mem[(32 * idx) + ceil32(return_data.size) + 140 len 20]
                    mem[mem[64] + 36] = arg1
                    require ext_code.size(stor0)
                    staticcall stor0.0xc0a5e34b with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4], arg1
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1687 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1687] == mem[_1687]
                    if s >= mem[_602 + (32 * _5) + 32]:
                        revert with 'NH{q', 50
                    mem[(32 * s) + _602 + (32 * _5) + 64] = mem[_1687]
                    if s >= mem[_602 + (64 * _5) + 64]:
                        revert with 'NH{q', 50
                    mem[(32 * s) + _602 + (64 * _5) + 96] = _1383
                    if s > -2:
                        revert with 'NH{q', 17
                    if idx == -1:
                        revert with 'NH{q', 17
                    s = s + 1
                    idx = idx + 1
                    t = _1383
                    continue 
                _1225 = mem[64]
                mem[mem[64]] = 96
                _1303 = mem[_600]
                mem[mem[64] + 96] = mem[_600]
                idx = 0
                s = _600 + 32
                t = mem[64] + 128
                while idx < _1303:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_1225 + 32] = (32 * _1303) + 128
                _1767 = mem[_602]
                mem[_1225 + (32 * _1303) + 128] = mem[_602]
                mem[_1225 + (32 * _1303) + 160 len 32 * _1767] = mem[_602 + 32 len 32 * _1767]
                mem[_1225 + 64] = (32 * _1303) + (32 * _1767) + 160
                _1863 = mem[_602 + (32 * _5) + 32]
                mem[_1225 + (32 * _1303) + (32 * _1767) + 160] = mem[_602 + (32 * _5) + 32]
                mem[_1225 + (32 * _1303) + (32 * _1767) + 192 len 32 * _1863] = mem[_602 + (32 * _5) + 64 len 32 * _1863]
                return memory
                  from mem[64]
                   len _1225 + (32 * _1303) + (32 * _1767) + (32 * _1863) + -mem[64] + 192
            mem[_602 + (64 * _5) + 96 len 32 * _5] = call.data[calldata.size len 32 * _5]
            s = 0
            idx = 0
            t = 0
            while idx < _5:
                if idx >= mem[ceil32(return_data.size) + 96]:
                    revert with 'NH{q', 50
                if not mem[(32 * idx) + ceil32(return_data.size) + 140 len 20]:
                    if idx == -1:
                        revert with 'NH{q', 17
                    s = s
                    idx = idx + 1
                    t = t
                    continue 
                if idx >= mem[ceil32(return_data.size) + 96]:
                    revert with 'NH{q', 50
                mem[mem[64] + 4] = mem[(32 * idx) + ceil32(return_data.size) + 140 len 20]
                mem[mem[64] + 36] = arg1
                require ext_code.size(stor1)
                staticcall stor1.balanceOf(address arg1, uint256 arg2) with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4], arg1
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1368 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1384 = mem[_1368]
                require mem[_1368] == mem[_1368]
                if mem[_1368] <= 0:
                    if idx == -1:
                        revert with 'NH{q', 17
                    s = s
                    idx = idx + 1
                    t = mem[_1368]
                    continue 
                if idx >= mem[ceil32(return_data.size) + 96]:
                    revert with 'NH{q', 50
                if s >= mem[_600]:
                    revert with 'NH{q', 50
                mem[(32 * s) + _600 + 32] = mem[(32 * idx) + ceil32(return_data.size) + 140 len 20]
                if idx >= mem[ceil32(return_data.size) + 96]:
                    revert with 'NH{q', 50
                mem[mem[64] + 4] = mem[(32 * idx) + ceil32(return_data.size) + 140 len 20]
                mem[mem[64] + 36] = arg1
                require ext_code.size(stor0)
                staticcall stor0.0x92873644 with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4], arg1
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1576 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1576] == mem[_1576]
                if s >= mem[_602]:
                    revert with 'NH{q', 50
                mem[(32 * s) + _602 + 32] = mem[_1576]
                if idx >= mem[ceil32(return_data.size) + 96]:
                    revert with 'NH{q', 50
                mem[mem[64] + 4] = mem[(32 * idx) + ceil32(return_data.size) + 140 len 20]
                mem[mem[64] + 36] = arg1
                require ext_code.size(stor0)
                staticcall stor0.0xc0a5e34b with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4], arg1
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1688 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1688] == mem[_1688]
                if s >= mem[_602 + (32 * _5) + 32]:
                    revert with 'NH{q', 50
                mem[(32 * s) + _602 + (32 * _5) + 64] = mem[_1688]
                if s >= mem[_602 + (64 * _5) + 64]:
                    revert with 'NH{q', 50
                mem[(32 * s) + _602 + (64 * _5) + 96] = _1384
                if s > -2:
                    revert with 'NH{q', 17
                if idx == -1:
                    revert with 'NH{q', 17
                s = s + 1
                idx = idx + 1
                t = _1384
                continue 
            _1227 = mem[64]
            mem[mem[64]] = 96
            _1304 = mem[_600]
            mem[mem[64] + 96] = mem[_600]
            idx = 0
            s = _600 + 32
            t = mem[64] + 128
            while idx < _1304:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_1227 + 32] = (32 * _1304) + 128
            _1768 = mem[_602]
            mem[_1227 + (32 * _1304) + 128] = mem[_602]
            mem[_1227 + (32 * _1304) + 160 len 32 * _1768] = mem[_602 + 32 len 32 * _1768]
            mem[_1227 + 64] = (32 * _1304) + (32 * _1768) + 160
            _1864 = mem[_602 + (32 * _5) + 32]
            mem[_1227 + (32 * _1304) + (32 * _1768) + 160] = mem[_602 + (32 * _5) + 32]
            mem[_1227 + (32 * _1304) + (32 * _1768) + 192 len 32 * _1864] = mem[_602 + (32 * _5) + 64 len 32 * _1864]
            return memory
              from mem[64]
               len _1227 + (32 * _1304) + (32 * _1768) + (32 * _1864) + -mem[64] + 192
        mem[_602 + 32 len 32 * _5] = call.data[calldata.size len 32 * _5]
        if _5 > test266151307():
            revert with 'NH{q', 65
        mem[_602 + (32 * _5) + 32] = _5
        if not _5:
            if _5 > test266151307():
                revert with 'NH{q', 65
            mem[_602 + (64 * _5) + 64] = _5
            mem[64] = _602 + (98 * _5) + 96
            if not _5:
                s = 0
                idx = 0
                t = 0
                while idx < _5:
                    if idx >= mem[ceil32(return_data.size) + 96]:
                        revert with 'NH{q', 50
                    if not mem[(32 * idx) + ceil32(return_data.size) + 140 len 20]:
                        if idx == -1:
                            revert with 'NH{q', 17
                        s = s
                        idx = idx + 1
                        t = t
                        continue 
                    if idx >= mem[ceil32(return_data.size) + 96]:
                        revert with 'NH{q', 50
                    mem[mem[64] + 4] = mem[(32 * idx) + ceil32(return_data.size) + 140 len 20]
                    mem[mem[64] + 36] = arg1
                    require ext_code.size(stor1)
                    staticcall stor1.balanceOf(address arg1, uint256 arg2) with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4], arg1
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1369 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1385 = mem[_1369]
                    require mem[_1369] == mem[_1369]
                    if mem[_1369] <= 0:
                        if idx == -1:
                            revert with 'NH{q', 17
                        s = s
                        idx = idx + 1
                        t = mem[_1369]
                        continue 
                    if idx >= mem[ceil32(return_data.size) + 96]:
                        revert with 'NH{q', 50
                    if s >= mem[_600]:
                        revert with 'NH{q', 50
                    mem[(32 * s) + _600 + 32] = mem[(32 * idx) + ceil32(return_data.size) + 140 len 20]
                    if idx >= mem[ceil32(return_data.size) + 96]:
                        revert with 'NH{q', 50
                    mem[mem[64] + 4] = mem[(32 * idx) + ceil32(return_data.size) + 140 len 20]
                    mem[mem[64] + 36] = arg1
                    require ext_code.size(stor0)
                    staticcall stor0.0x92873644 with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4], arg1
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1577 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1577] == mem[_1577]
                    if s >= mem[_602]:
                        revert with 'NH{q', 50
                    mem[(32 * s) + _602 + 32] = mem[_1577]
                    if idx >= mem[ceil32(return_data.size) + 96]:
                        revert with 'NH{q', 50
                    mem[mem[64] + 4] = mem[(32 * idx) + ceil32(return_data.size) + 140 len 20]
                    mem[mem[64] + 36] = arg1
                    require ext_code.size(stor0)
                    staticcall stor0.0xc0a5e34b with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4], arg1
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1689 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1689] == mem[_1689]
                    if s >= mem[_602 + (32 * _5) + 32]:
                        revert with 'NH{q', 50
                    mem[(32 * s) + _602 + (32 * _5) + 64] = mem[_1689]
                    if s >= mem[_602 + (64 * _5) + 64]:
                        revert with 'NH{q', 50
                    mem[(32 * s) + _602 + (64 * _5) + 96] = _1385
                    if s > -2:
                        revert with 'NH{q', 17
                    if idx == -1:
                        revert with 'NH{q', 17
                    s = s + 1
                    idx = idx + 1
                    t = _1385
                    continue 
                _1229 = mem[64]
                mem[mem[64]] = 96
                _1305 = mem[_600]
                mem[mem[64] + 96] = mem[_600]
                idx = 0
                s = _600 + 32
                t = mem[64] + 128
                while idx < _1305:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_1229 + 32] = (32 * _1305) + 128
                _1769 = mem[_602]
                mem[_1229 + (32 * _1305) + 128] = mem[_602]
                mem[_1229 + (32 * _1305) + 160 len 32 * _1769] = mem[_602 + 32 len 32 * _1769]
                mem[_1229 + 64] = (32 * _1305) + (32 * _1769) + 160
                _1865 = mem[_602 + (32 * _5) + 32]
                mem[_1229 + (32 * _1305) + (32 * _1769) + 160] = mem[_602 + (32 * _5) + 32]
                mem[_1229 + (32 * _1305) + (32 * _1769) + 192 len 32 * _1865] = mem[_602 + (32 * _5) + 64 len 32 * _1865]
                return memory
                  from mem[64]
                   len _1229 + (32 * _1305) + (32 * _1769) + (32 * _1865) + -mem[64] + 192
            mem[_602 + (64 * _5) + 96 len 32 * _5] = call.data[calldata.size len 32 * _5]
            s = 0
            idx = 0
            t = 0
            while idx < _5:
                if idx >= mem[ceil32(return_data.size) + 96]:
                    revert with 'NH{q', 50
                if not mem[(32 * idx) + ceil32(return_data.size) + 140 len 20]:
                    if idx == -1:
                        revert with 'NH{q', 17
                    s = s
                    idx = idx + 1
                    t = t
                    continue 
                if idx >= mem[ceil32(return_data.size) + 96]:
                    revert with 'NH{q', 50
                mem[mem[64] + 4] = mem[(32 * idx) + ceil32(return_data.size) + 140 len 20]
                mem[mem[64] + 36] = arg1
                require ext_code.size(stor1)
                staticcall stor1.balanceOf(address arg1, uint256 arg2) with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4], arg1
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1370 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1386 = mem[_1370]
                require mem[_1370] == mem[_1370]
                if mem[_1370] <= 0:
                    if idx == -1:
                        revert with 'NH{q', 17
                    s = s
                    idx = idx + 1
                    t = mem[_1370]
                    continue 
                if idx >= mem[ceil32(return_data.size) + 96]:
                    revert with 'NH{q', 50
                if s >= mem[_600]:
                    revert with 'NH{q', 50
                mem[(32 * s) + _600 + 32] = mem[(32 * idx) + ceil32(return_data.size) + 140 len 20]
                if idx >= mem[ceil32(return_data.size) + 96]:
                    revert with 'NH{q', 50
                mem[mem[64] + 4] = mem[(32 * idx) + ceil32(return_data.size) + 140 len 20]
                mem[mem[64] + 36] = arg1
                require ext_code.size(stor0)
                staticcall stor0.0x92873644 with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4], arg1
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1578 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1578] == mem[_1578]
                if s >= mem[_602]:
                    revert with 'NH{q', 50
                mem[(32 * s) + _602 + 32] = mem[_1578]
                if idx >= mem[ceil32(return_data.size) + 96]:
                    revert with 'NH{q', 50
                mem[mem[64] + 4] = mem[(32 * idx) + ceil32(return_data.size) + 140 len 20]
                mem[mem[64] + 36] = arg1
                require ext_code.size(stor0)
                staticcall stor0.0xc0a5e34b with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4], arg1
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1690 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1690] == mem[_1690]
                if s >= mem[_602 + (32 * _5) + 32]:
                    revert with 'NH{q', 50
                mem[(32 * s) + _602 + (32 * _5) + 64] = mem[_1690]
                if s >= mem[_602 + (64 * _5) + 64]:
                    revert with 'NH{q', 50
                mem[(32 * s) + _602 + (64 * _5) + 96] = _1386
                if s > -2:
                    revert with 'NH{q', 17
                if idx == -1:
                    revert with 'NH{q', 17
                s = s + 1
                idx = idx + 1
                t = _1386
                continue 
            _1231 = mem[64]
            mem[mem[64]] = 96
            _1306 = mem[_600]
            mem[mem[64] + 96] = mem[_600]
            idx = 0
            s = _600 + 32
            t = mem[64] + 128
            while idx < _1306:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_1231 + 32] = (32 * _1306) + 128
            _1770 = mem[_602]
            mem[_1231 + (32 * _1306) + 128] = mem[_602]
            mem[_1231 + (32 * _1306) + 160 len 32 * _1770] = mem[_602 + 32 len 32 * _1770]
            mem[_1231 + 64] = (32 * _1306) + (32 * _1770) + 160
            _1866 = mem[_602 + (32 * _5) + 32]
            mem[_1231 + (32 * _1306) + (32 * _1770) + 160] = mem[_602 + (32 * _5) + 32]
            mem[_1231 + (32 * _1306) + (32 * _1770) + 192 len 32 * _1866] = mem[_602 + (32 * _5) + 64 len 32 * _1866]
            return memory
              from mem[64]
               len _1231 + (32 * _1306) + (32 * _1770) + (32 * _1866) + -mem[64] + 192
        mem[_602 + (32 * _5) + 64 len 32 * _5] = call.data[calldata.size len 32 * _5]
        if _5 > test266151307():
            revert with 'NH{q', 65
        mem[_602 + (64 * _5) + 64] = _5
        mem[64] = _602 + (98 * _5) + 96
        if not _5:
            s = 0
            idx = 0
            t = 0
            while idx < _5:
                if idx >= mem[ceil32(return_data.size) + 96]:
                    revert with 'NH{q', 50
                if not mem[(32 * idx) + ceil32(return_data.size) + 140 len 20]:
                    if idx == -1:
                        revert with 'NH{q', 17
                    s = s
                    idx = idx + 1
                    t = t
                    continue 
                if idx >= mem[ceil32(return_data.size) + 96]:
                    revert with 'NH{q', 50
                mem[mem[64] + 4] = mem[(32 * idx) + ceil32(return_data.size) + 140 len 20]
                mem[mem[64] + 36] = arg1
                require ext_code.size(stor1)
                staticcall stor1.balanceOf(address arg1, uint256 arg2) with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4], arg1
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1371 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1387 = mem[_1371]
                require mem[_1371] == mem[_1371]
                if mem[_1371] <= 0:
                    if idx == -1:
                        revert with 'NH{q', 17
                    s = s
                    idx = idx + 1
                    t = mem[_1371]
                    continue 
                if idx >= mem[ceil32(return_data.size) + 96]:
                    revert with 'NH{q', 50
                if s >= mem[_600]:
                    revert with 'NH{q', 50
                mem[(32 * s) + _600 + 32] = mem[(32 * idx) + ceil32(return_data.size) + 140 len 20]
                if idx >= mem[ceil32(return_data.size) + 96]:
                    revert with 'NH{q', 50
                mem[mem[64] + 4] = mem[(32 * idx) + ceil32(return_data.size) + 140 len 20]
                mem[mem[64] + 36] = arg1
                require ext_code.size(stor0)
                staticcall stor0.0x92873644 with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4], arg1
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1579 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1579] == mem[_1579]
                if s >= mem[_602]:
                    revert with 'NH{q', 50
                mem[(32 * s) + _602 + 32] = mem[_1579]
                if idx >= mem[ceil32(return_data.size) + 96]:
                    revert with 'NH{q', 50
                mem[mem[64] + 4] = mem[(32 * idx) + ceil32(return_data.size) + 140 len 20]
                mem[mem[64] + 36] = arg1
                require ext_code.size(stor0)
                staticcall stor0.0xc0a5e34b with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4], arg1
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1691 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1691] == mem[_1691]
                if s >= mem[_602 + (32 * _5) + 32]:
                    revert with 'NH{q', 50
                mem[(32 * s) + _602 + (32 * _5) + 64] = mem[_1691]
                if s >= mem[_602 + (64 * _5) + 64]:
                    revert with 'NH{q', 50
                mem[(32 * s) + _602 + (64 * _5) + 96] = _1387
                if s > -2:
                    revert with 'NH{q', 17
                if idx == -1:
                    revert with 'NH{q', 17
                s = s + 1
                idx = idx + 1
                t = _1387
                continue 
            _1233 = mem[64]
            mem[mem[64]] = 96
            _1307 = mem[_600]
            mem[mem[64] + 96] = mem[_600]
            idx = 0
            s = _600 + 32
            t = mem[64] + 128
            while idx < _1307:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_1233 + 32] = (32 * _1307) + 128
            _1771 = mem[_602]
            mem[_1233 + (32 * _1307) + 128] = mem[_602]
            mem[_1233 + (32 * _1307) + 160 len 32 * _1771] = mem[_602 + 32 len 32 * _1771]
            mem[_1233 + 64] = (32 * _1307) + (32 * _1771) + 160
            _1867 = mem[_602 + (32 * _5) + 32]
            mem[_1233 + (32 * _1307) + (32 * _1771) + 160] = mem[_602 + (32 * _5) + 32]
            mem[_1233 + (32 * _1307) + (32 * _1771) + 192 len 32 * _1867] = mem[_602 + (32 * _5) + 64 len 32 * _1867]
            return memory
              from mem[64]
               len _1233 + (32 * _1307) + (32 * _1771) + (32 * _1867) + -mem[64] + 192
        mem[_602 + (64 * _5) + 96 len 32 * _5] = call.data[calldata.size len 32 * _5]
        s = 0
        idx = 0
        t = 0
        while idx < _5:
            if idx >= mem[ceil32(return_data.size) + 96]:
                revert with 'NH{q', 50
            if not mem[(32 * idx) + ceil32(return_data.size) + 140 len 20]:
                if idx == -1:
                    revert with 'NH{q', 17
                s = s
                idx = idx + 1
                t = t
                continue 
            if idx >= mem[ceil32(return_data.size) + 96]:
                revert with 'NH{q', 50
            mem[mem[64] + 4] = mem[(32 * idx) + ceil32(return_data.size) + 140 len 20]
            mem[mem[64] + 36] = arg1
            require ext_code.size(stor1)
            staticcall stor1.balanceOf(address arg1, uint256 arg2) with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4], arg1
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1372 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1388 = mem[_1372]
            require mem[_1372] == mem[_1372]
            if mem[_1372] <= 0:
                if idx == -1:
                    revert with 'NH{q', 17
                s = s
                idx = idx + 1
                t = mem[_1372]
                continue 
            if idx >= mem[ceil32(return_data.size) + 96]:
                revert with 'NH{q', 50
            if s >= mem[_600]:
                revert with 'NH{q', 50
            mem[(32 * s) + _600 + 32] = mem[(32 * idx) + ceil32(return_data.size) + 140 len 20]
            if idx >= mem[ceil32(return_data.size) + 96]:
                revert with 'NH{q', 50
            mem[mem[64] + 4] = mem[(32 * idx) + ceil32(return_data.size) + 140 len 20]
            mem[mem[64] + 36] = arg1
            require ext_code.size(stor0)
            staticcall stor0.0x92873644 with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4], arg1
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1580 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1580] == mem[_1580]
            if s >= mem[_602]:
                revert with 'NH{q', 50
            mem[(32 * s) + _602 + 32] = mem[_1580]
            if idx >= mem[ceil32(return_data.size) + 96]:
                revert with 'NH{q', 50
            mem[mem[64] + 4] = mem[(32 * idx) + ceil32(return_data.size) + 140 len 20]
            mem[mem[64] + 36] = arg1
            require ext_code.size(stor0)
            staticcall stor0.0xc0a5e34b with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4], arg1
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1692 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1692] == mem[_1692]
            if s >= mem[_602 + (32 * _5) + 32]:
                revert with 'NH{q', 50
            mem[(32 * s) + _602 + (32 * _5) + 64] = mem[_1692]
            if s >= mem[_602 + (64 * _5) + 64]:
                revert with 'NH{q', 50
            mem[(32 * s) + _602 + (64 * _5) + 96] = _1388
            if s > -2:
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            s = s + 1
            idx = idx + 1
            t = _1388
            continue 
        _1235 = mem[64]
        mem[mem[64]] = 96
        _1308 = mem[_600]
        mem[mem[64] + 96] = mem[_600]
        idx = 0
        s = _600 + 32
        t = mem[64] + 128
        while idx < _1308:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_1235 + 32] = (32 * _1308) + 128
        _1772 = mem[_602]
        mem[_1235 + (32 * _1308) + 128] = mem[_602]
        mem[_1235 + (32 * _1308) + 160 len 32 * _1772] = mem[_602 + 32 len 32 * _1772]
        mem[_1235 + 64] = (32 * _1308) + (32 * _1772) + 160
        _1868 = mem[_602 + (32 * _5) + 32]
        mem[_1235 + (32 * _1308) + (32 * _1772) + 160] = mem[_602 + (32 * _5) + 32]
        mem[_1235 + (32 * _1308) + (32 * _1772) + 192 len 32 * _1868] = mem[_602 + (32 * _5) + 64 len 32 * _1868]
        return memory
          from mem[64]
           len _1235 + (32 * _1308) + (32 * _1772) + (32 * _1868) + -mem[64] + 192
    mem[mem[64] + 32 len 32 * _5] = call.data[calldata.size len 32 * _5]
    if _5 > test266151307():
        revert with 'NH{q', 65
    mem[mem[64] + (32 * _5) + 32] = _5
    if not _5:
        if _5 > test266151307():
            revert with 'NH{q', 65
        mem[_600 + (64 * _5) + 64] = _5
        if not _5:
            if _5 > test266151307():
                revert with 'NH{q', 65
            mem[_600 + (98 * _5) + 96] = _5
            mem[64] = _600 + (131 * _5) + 128
            if not _5:
                s = 0
                idx = 0
                t = 0
                while idx < _5:
                    if idx >= mem[ceil32(return_data.size) + 96]:
                        revert with 'NH{q', 50
                    if not mem[(32 * idx) + ceil32(return_data.size) + 140 len 20]:
                        if idx == -1:
                            revert with 'NH{q', 17
                        s = s
                        idx = idx + 1
                        t = t
                        continue 
                    if idx >= mem[ceil32(return_data.size) + 96]:
                        revert with 'NH{q', 50
                    mem[mem[64] + 4] = mem[(32 * idx) + ceil32(return_data.size) + 140 len 20]
                    mem[mem[64] + 36] = arg1
                    require ext_code.size(stor1)
                    staticcall stor1.balanceOf(address arg1, uint256 arg2) with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4], arg1
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1373 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1389 = mem[_1373]
                    require mem[_1373] == mem[_1373]
                    if mem[_1373] <= 0:
                        if idx == -1:
                            revert with 'NH{q', 17
                        s = s
                        idx = idx + 1
                        t = mem[_1373]
                        continue 
                    if idx >= mem[ceil32(return_data.size) + 96]:
                        revert with 'NH{q', 50
                    if s >= mem[_600]:
                        revert with 'NH{q', 50
                    mem[(32 * s) + _600 + 32] = mem[(32 * idx) + ceil32(return_data.size) + 140 len 20]
                    if idx >= mem[ceil32(return_data.size) + 96]:
                        revert with 'NH{q', 50
                    mem[mem[64] + 4] = mem[(32 * idx) + ceil32(return_data.size) + 140 len 20]
                    mem[mem[64] + 36] = arg1
                    require ext_code.size(stor0)
                    staticcall stor0.0x92873644 with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4], arg1
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1581 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1581] == mem[_1581]
                    if s >= mem[_600 + (32 * _5) + 32]:
                        revert with 'NH{q', 50
                    mem[(32 * s) + _600 + (32 * _5) + 64] = mem[_1581]
                    if idx >= mem[ceil32(return_data.size) + 96]:
                        revert with 'NH{q', 50
                    mem[mem[64] + 4] = mem[(32 * idx) + ceil32(return_data.size) + 140 len 20]
                    mem[mem[64] + 36] = arg1
                    require ext_code.size(stor0)
                    staticcall stor0.0xc0a5e34b with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4], arg1
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1693 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1693] == mem[_1693]
                    if s >= mem[_600 + (64 * _5) + 64]:
                        revert with 'NH{q', 50
                    mem[(32 * s) + _600 + (64 * _5) + 96] = mem[_1693]
                    if s >= mem[_600 + (98 * _5) + 96]:
                        revert with 'NH{q', 50
                    mem[(32 * s) + _600 + (98 * _5) + 128] = _1389
                    if s > -2:
                        revert with 'NH{q', 17
                    if idx == -1:
                        revert with 'NH{q', 17
                    s = s + 1
                    idx = idx + 1
                    t = _1389
                    continue 
                _1237 = mem[64]
                mem[mem[64]] = 96
                _1309 = mem[_600]
                mem[mem[64] + 96] = mem[_600]
                idx = 0
                s = _600 + 32
                t = mem[64] + 128
                while idx < _1309:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_1237 + 32] = (32 * _1309) + 128
                _1773 = mem[_600 + (32 * _5) + 32]
                mem[_1237 + (32 * _1309) + 128] = mem[_600 + (32 * _5) + 32]
                mem[_1237 + (32 * _1309) + 160 len 32 * _1773] = mem[_600 + (32 * _5) + 64 len 32 * _1773]
                mem[_1237 + 64] = (32 * _1309) + (32 * _1773) + 160
                _1869 = mem[_600 + (64 * _5) + 64]
                mem[_1237 + (32 * _1309) + (32 * _1773) + 160] = mem[_600 + (64 * _5) + 64]
                mem[_1237 + (32 * _1309) + (32 * _1773) + 192 len 32 * _1869] = mem[_600 + (64 * _5) + 96 len 32 * _1869]
                return memory
                  from mem[64]
                   len _1237 + (32 * _1309) + (32 * _1773) + (32 * _1869) + -mem[64] + 192
            mem[_600 + (98 * _5) + 128 len 32 * _5] = call.data[calldata.size len 32 * _5]
            s = 0
            idx = 0
            t = 0
            while idx < _5:
                if idx >= mem[ceil32(return_data.size) + 96]:
                    revert with 'NH{q', 50
                if not mem[(32 * idx) + ceil32(return_data.size) + 140 len 20]:
                    if idx == -1:
                        revert with 'NH{q', 17
                    s = s
                    idx = idx + 1
                    t = t
                    continue 
                if idx >= mem[ceil32(return_data.size) + 96]:
                    revert with 'NH{q', 50
                mem[mem[64] + 4] = mem[(32 * idx) + ceil32(return_data.size) + 140 len 20]
                mem[mem[64] + 36] = arg1
                require ext_code.size(stor1)
                staticcall stor1.balanceOf(address arg1, uint256 arg2) with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4], arg1
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1374 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1390 = mem[_1374]
                require mem[_1374] == mem[_1374]
                if mem[_1374] <= 0:
                    if idx == -1:
                        revert with 'NH{q', 17
                    s = s
                    idx = idx + 1
                    t = mem[_1374]
                    continue 
                if idx >= mem[ceil32(return_data.size) + 96]:
                    revert with 'NH{q', 50
                if s >= mem[_600]:
                    revert with 'NH{q', 50
                mem[(32 * s) + _600 + 32] = mem[(32 * idx) + ceil32(return_data.size) + 140 len 20]
                if idx >= mem[ceil32(return_data.size) + 96]:
                    revert with 'NH{q', 50
                mem[mem[64] + 4] = mem[(32 * idx) + ceil32(return_data.size) + 140 len 20]
                mem[mem[64] + 36] = arg1
                require ext_code.size(stor0)
                staticcall stor0.0x92873644 with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4], arg1
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1582 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1582] == mem[_1582]
                if s >= mem[_600 + (32 * _5) + 32]:
                    revert with 'NH{q', 50
                mem[(32 * s) + _600 + (32 * _5) + 64] = mem[_1582]
                if idx >= mem[ceil32(return_data.size) + 96]:
                    revert with 'NH{q', 50
                mem[mem[64] + 4] = mem[(32 * idx) + ceil32(return_data.size) + 140 len 20]
                mem[mem[64] + 36] = arg1
                require ext_code.size(stor0)
                staticcall stor0.0xc0a5e34b with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4], arg1
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1694 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1694] == mem[_1694]
                if s >= mem[_600 + (64 * _5) + 64]:
                    revert with 'NH{q', 50
                mem[(32 * s) + _600 + (64 * _5) + 96] = mem[_1694]
                if s >= mem[_600 + (98 * _5) + 96]:
                    revert with 'NH{q', 50
                mem[(32 * s) + _600 + (98 * _5) + 128] = _1390
                if s > -2:
                    revert with 'NH{q', 17
                if idx == -1:
                    revert with 'NH{q', 17
                s = s + 1
                idx = idx + 1
                t = _1390
                continue 
            _1239 = mem[64]
            mem[mem[64]] = 96
            _1310 = mem[_600]
            mem[mem[64] + 96] = mem[_600]
            idx = 0
            s = _600 + 32
            t = mem[64] + 128
            while idx < _1310:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_1239 + 32] = (32 * _1310) + 128
            _1774 = mem[_600 + (32 * _5) + 32]
            mem[_1239 + (32 * _1310) + 128] = mem[_600 + (32 * _5) + 32]
            mem[_1239 + (32 * _1310) + 160 len 32 * _1774] = mem[_600 + (32 * _5) + 64 len 32 * _1774]
            mem[_1239 + 64] = (32 * _1310) + (32 * _1774) + 160
            _1870 = mem[_600 + (64 * _5) + 64]
            mem[_1239 + (32 * _1310) + (32 * _1774) + 160] = mem[_600 + (64 * _5) + 64]
            mem[_1239 + (32 * _1310) + (32 * _1774) + 192 len 32 * _1870] = mem[_600 + (64 * _5) + 96 len 32 * _1870]
            return memory
              from mem[64]
               len _1239 + (32 * _1310) + (32 * _1774) + (32 * _1870) + -mem[64] + 192
        mem[_600 + (64 * _5) + 96 len 32 * _5] = call.data[calldata.size len 32 * _5]
        if _5 > test266151307():
            revert with 'NH{q', 65
        mem[_600 + (98 * _5) + 96] = _5
        mem[64] = _600 + (131 * _5) + 128
        if not _5:
            s = 0
            idx = 0
            t = 0
            while idx < _5:
                if idx >= mem[ceil32(return_data.size) + 96]:
                    revert with 'NH{q', 50
                if not mem[(32 * idx) + ceil32(return_data.size) + 140 len 20]:
                    if idx == -1:
                        revert with 'NH{q', 17
                    s = s
                    idx = idx + 1
                    t = t
                    continue 
                if idx >= mem[ceil32(return_data.size) + 96]:
                    revert with 'NH{q', 50
                mem[mem[64] + 4] = mem[(32 * idx) + ceil32(return_data.size) + 140 len 20]
                mem[mem[64] + 36] = arg1
                require ext_code.size(stor1)
                staticcall stor1.balanceOf(address arg1, uint256 arg2) with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4], arg1
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1375 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1391 = mem[_1375]
                require mem[_1375] == mem[_1375]
                if mem[_1375] <= 0:
                    if idx == -1:
                        revert with 'NH{q', 17
                    s = s
                    idx = idx + 1
                    t = mem[_1375]
                    continue 
                if idx >= mem[ceil32(return_data.size) + 96]:
                    revert with 'NH{q', 50
                if s >= mem[_600]:
                    revert with 'NH{q', 50
                mem[(32 * s) + _600 + 32] = mem[(32 * idx) + ceil32(return_data.size) + 140 len 20]
                if idx >= mem[ceil32(return_data.size) + 96]:
                    revert with 'NH{q', 50
                mem[mem[64] + 4] = mem[(32 * idx) + ceil32(return_data.size) + 140 len 20]
                mem[mem[64] + 36] = arg1
                require ext_code.size(stor0)
                staticcall stor0.0x92873644 with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4], arg1
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1583 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1583] == mem[_1583]
                if s >= mem[_600 + (32 * _5) + 32]:
                    revert with 'NH{q', 50
                mem[(32 * s) + _600 + (32 * _5) + 64] = mem[_1583]
                if idx >= mem[ceil32(return_data.size) + 96]:
                    revert with 'NH{q', 50
                mem[mem[64] + 4] = mem[(32 * idx) + ceil32(return_data.size) + 140 len 20]
                mem[mem[64] + 36] = arg1
                require ext_code.size(stor0)
                staticcall stor0.0xc0a5e34b with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4], arg1
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1695 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1695] == mem[_1695]
                if s >= mem[_600 + (64 * _5) + 64]:
                    revert with 'NH{q', 50
                mem[(32 * s) + _600 + (64 * _5) + 96] = mem[_1695]
                if s >= mem[_600 + (98 * _5) + 96]:
                    revert with 'NH{q', 50
                mem[(32 * s) + _600 + (98 * _5) + 128] = _1391
                if s > -2:
                    revert with 'NH{q', 17
                if idx == -1:
                    revert with 'NH{q', 17
                s = s + 1
                idx = idx + 1
                t = _1391
                continue 
            _1241 = mem[64]
            mem[mem[64]] = 96
            _1311 = mem[_600]
            mem[mem[64] + 96] = mem[_600]
            idx = 0
            s = _600 + 32
            t = mem[64] + 128
            while idx < _1311:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_1241 + 32] = (32 * _1311) + 128
            _1775 = mem[_600 + (32 * _5) + 32]
            mem[_1241 + (32 * _1311) + 128] = mem[_600 + (32 * _5) + 32]
            mem[_1241 + (32 * _1311) + 160 len 32 * _1775] = mem[_600 + (32 * _5) + 64 len 32 * _1775]
            mem[_1241 + 64] = (32 * _1311) + (32 * _1775) + 160
            _1871 = mem[_600 + (64 * _5) + 64]
            mem[_1241 + (32 * _1311) + (32 * _1775) + 160] = mem[_600 + (64 * _5) + 64]
            mem[_1241 + (32 * _1311) + (32 * _1775) + 192 len 32 * _1871] = mem[_600 + (64 * _5) + 96 len 32 * _1871]
            return memory
              from mem[64]
               len _1241 + (32 * _1311) + (32 * _1775) + (32 * _1871) + -mem[64] + 192
        mem[_600 + (98 * _5) + 128 len 32 * _5] = call.data[calldata.size len 32 * _5]
        s = 0
        idx = 0
        t = 0
        while idx < _5:
            if idx >= mem[ceil32(return_data.size) + 96]:
                revert with 'NH{q', 50
            if not mem[(32 * idx) + ceil32(return_data.size) + 140 len 20]:
                if idx == -1:
                    revert with 'NH{q', 17
                s = s
                idx = idx + 1
                t = t
                continue 
            if idx >= mem[ceil32(return_data.size) + 96]:
                revert with 'NH{q', 50
            mem[mem[64] + 4] = mem[(32 * idx) + ceil32(return_data.size) + 140 len 20]
            mem[mem[64] + 36] = arg1
            require ext_code.size(stor1)
            staticcall stor1.balanceOf(address arg1, uint256 arg2) with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4], arg1
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1376 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1392 = mem[_1376]
            require mem[_1376] == mem[_1376]
            if mem[_1376] <= 0:
                if idx == -1:
                    revert with 'NH{q', 17
                s = s
                idx = idx + 1
                t = mem[_1376]
                continue 
            if idx >= mem[ceil32(return_data.size) + 96]:
                revert with 'NH{q', 50
            if s >= mem[_600]:
                revert with 'NH{q', 50
            mem[(32 * s) + _600 + 32] = mem[(32 * idx) + ceil32(return_data.size) + 140 len 20]
            if idx >= mem[ceil32(return_data.size) + 96]:
                revert with 'NH{q', 50
            mem[mem[64] + 4] = mem[(32 * idx) + ceil32(return_data.size) + 140 len 20]
            mem[mem[64] + 36] = arg1
            require ext_code.size(stor0)
            staticcall stor0.0x92873644 with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4], arg1
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1584 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1584] == mem[_1584]
            if s >= mem[_600 + (32 * _5) + 32]:
                revert with 'NH{q', 50
            mem[(32 * s) + _600 + (32 * _5) + 64] = mem[_1584]
            if idx >= mem[ceil32(return_data.size) + 96]:
                revert with 'NH{q', 50
            mem[mem[64] + 4] = mem[(32 * idx) + ceil32(return_data.size) + 140 len 20]
            mem[mem[64] + 36] = arg1
            require ext_code.size(stor0)
            staticcall stor0.0xc0a5e34b with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4], arg1
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1696 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1696] == mem[_1696]
            if s >= mem[_600 + (64 * _5) + 64]:
                revert with 'NH{q', 50
            mem[(32 * s) + _600 + (64 * _5) + 96] = mem[_1696]
            if s >= mem[_600 + (98 * _5) + 96]:
                revert with 'NH{q', 50
            mem[(32 * s) + _600 + (98 * _5) + 128] = _1392
            if s > -2:
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            s = s + 1
            idx = idx + 1
            t = _1392
            continue 
        _1243 = mem[64]
        mem[mem[64]] = 96
        _1312 = mem[_600]
        mem[mem[64] + 96] = mem[_600]
        idx = 0
        s = _600 + 32
        t = mem[64] + 128
        while idx < _1312:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_1243 + 32] = (32 * _1312) + 128
        _1776 = mem[_600 + (32 * _5) + 32]
        mem[_1243 + (32 * _1312) + 128] = mem[_600 + (32 * _5) + 32]
        mem[_1243 + (32 * _1312) + 160 len 32 * _1776] = mem[_600 + (32 * _5) + 64 len 32 * _1776]
        mem[_1243 + 64] = (32 * _1312) + (32 * _1776) + 160
        _1872 = mem[_600 + (64 * _5) + 64]
        mem[_1243 + (32 * _1312) + (32 * _1776) + 160] = mem[_600 + (64 * _5) + 64]
        mem[_1243 + (32 * _1312) + (32 * _1776) + 192 len 32 * _1872] = mem[_600 + (64 * _5) + 96 len 32 * _1872]
        return memory
          from mem[64]
           len _1243 + (32 * _1312) + (32 * _1776) + (32 * _1872) + -mem[64] + 192
    mem[_600 + (32 * _5) + 64 len 32 * _5] = call.data[calldata.size len 32 * _5]
    if _5 > test266151307():
        revert with 'NH{q', 65
    mem[_600 + (64 * _5) + 64] = _5
    if not _5:
        if _5 > test266151307():
            revert with 'NH{q', 65
        mem[_600 + (98 * _5) + 96] = _5
        mem[64] = _600 + (131 * _5) + 128
        if not _5:
            s = 0
            idx = 0
            t = 0
            while idx < _5:
                if idx >= mem[ceil32(return_data.size) + 96]:
                    revert with 'NH{q', 50
                if not mem[(32 * idx) + ceil32(return_data.size) + 140 len 20]:
                    if idx == -1:
                        revert with 'NH{q', 17
                    s = s
                    idx = idx + 1
                    t = t
                    continue 
                if idx >= mem[ceil32(return_data.size) + 96]:
                    revert with 'NH{q', 50
                mem[mem[64] + 4] = mem[(32 * idx) + ceil32(return_data.size) + 140 len 20]
                mem[mem[64] + 36] = arg1
                require ext_code.size(stor1)
                staticcall stor1.balanceOf(address arg1, uint256 arg2) with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4], arg1
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1377 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1393 = mem[_1377]
                require mem[_1377] == mem[_1377]
                if mem[_1377] <= 0:
                    if idx == -1:
                        revert with 'NH{q', 17
                    s = s
                    idx = idx + 1
                    t = mem[_1377]
                    continue 
                if idx >= mem[ceil32(return_data.size) + 96]:
                    revert with 'NH{q', 50
                if s >= mem[_600]:
                    revert with 'NH{q', 50
                mem[(32 * s) + _600 + 32] = mem[(32 * idx) + ceil32(return_data.size) + 140 len 20]
                if idx >= mem[ceil32(return_data.size) + 96]:
                    revert with 'NH{q', 50
                mem[mem[64] + 4] = mem[(32 * idx) + ceil32(return_data.size) + 140 len 20]
                mem[mem[64] + 36] = arg1
                require ext_code.size(stor0)
                staticcall stor0.0x92873644 with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4], arg1
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1585 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1585] == mem[_1585]
                if s >= mem[_600 + (32 * _5) + 32]:
                    revert with 'NH{q', 50
                mem[(32 * s) + _600 + (32 * _5) + 64] = mem[_1585]
                if idx >= mem[ceil32(return_data.size) + 96]:
                    revert with 'NH{q', 50
                mem[mem[64] + 4] = mem[(32 * idx) + ceil32(return_data.size) + 140 len 20]
                mem[mem[64] + 36] = arg1
                require ext_code.size(stor0)
                staticcall stor0.0xc0a5e34b with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4], arg1
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1697 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1697] == mem[_1697]
                if s >= mem[_600 + (64 * _5) + 64]:
                    revert with 'NH{q', 50
                mem[(32 * s) + _600 + (64 * _5) + 96] = mem[_1697]
                if s >= mem[_600 + (98 * _5) + 96]:
                    revert with 'NH{q', 50
                mem[(32 * s) + _600 + (98 * _5) + 128] = _1393
                if s > -2:
                    revert with 'NH{q', 17
                if idx == -1:
                    revert with 'NH{q', 17
                s = s + 1
                idx = idx + 1
                t = _1393
                continue 
            _1245 = mem[64]
            mem[mem[64]] = 96
            _1313 = mem[_600]
            mem[mem[64] + 96] = mem[_600]
            idx = 0
            s = _600 + 32
            t = mem[64] + 128
            while idx < _1313:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_1245 + 32] = (32 * _1313) + 128
            _1777 = mem[_600 + (32 * _5) + 32]
            mem[_1245 + (32 * _1313) + 128] = mem[_600 + (32 * _5) + 32]
            mem[_1245 + (32 * _1313) + 160 len 32 * _1777] = mem[_600 + (32 * _5) + 64 len 32 * _1777]
            mem[_1245 + 64] = (32 * _1313) + (32 * _1777) + 160
            _1873 = mem[_600 + (64 * _5) + 64]
            mem[_1245 + (32 * _1313) + (32 * _1777) + 160] = mem[_600 + (64 * _5) + 64]
            mem[_1245 + (32 * _1313) + (32 * _1777) + 192 len 32 * _1873] = mem[_600 + (64 * _5) + 96 len 32 * _1873]
            return memory
              from mem[64]
               len _1245 + (32 * _1313) + (32 * _1777) + (32 * _1873) + -mem[64] + 192
        mem[_600 + (98 * _5) + 128 len 32 * _5] = call.data[calldata.size len 32 * _5]
        s = 0
        idx = 0
        t = 0
        while idx < _5:
            if idx >= mem[ceil32(return_data.size) + 96]:
                revert with 'NH{q', 50
            if not mem[(32 * idx) + ceil32(return_data.size) + 140 len 20]:
                if idx == -1:
                    revert with 'NH{q', 17
                s = s
                idx = idx + 1
                t = t
                continue 
            if idx >= mem[ceil32(return_data.size) + 96]:
                revert with 'NH{q', 50
            mem[mem[64] + 4] = mem[(32 * idx) + ceil32(return_data.size) + 140 len 20]
            mem[mem[64] + 36] = arg1
            require ext_code.size(stor1)
            staticcall stor1.balanceOf(address arg1, uint256 arg2) with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4], arg1
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1378 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1394 = mem[_1378]
            require mem[_1378] == mem[_1378]
            if mem[_1378] <= 0:
                if idx == -1:
                    revert with 'NH{q', 17
                s = s
                idx = idx + 1
                t = mem[_1378]
                continue 
            if idx >= mem[ceil32(return_data.size) + 96]:
                revert with 'NH{q', 50
            if s >= mem[_600]:
                revert with 'NH{q', 50
            mem[(32 * s) + _600 + 32] = mem[(32 * idx) + ceil32(return_data.size) + 140 len 20]
            if idx >= mem[ceil32(return_data.size) + 96]:
                revert with 'NH{q', 50
            mem[mem[64] + 4] = mem[(32 * idx) + ceil32(return_data.size) + 140 len 20]
            mem[mem[64] + 36] = arg1
            require ext_code.size(stor0)
            staticcall stor0.0x92873644 with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4], arg1
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1586 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1586] == mem[_1586]
            if s >= mem[_600 + (32 * _5) + 32]:
                revert with 'NH{q', 50
            mem[(32 * s) + _600 + (32 * _5) + 64] = mem[_1586]
            if idx >= mem[ceil32(return_data.size) + 96]:
                revert with 'NH{q', 50
            mem[mem[64] + 4] = mem[(32 * idx) + ceil32(return_data.size) + 140 len 20]
            mem[mem[64] + 36] = arg1
            require ext_code.size(stor0)
            staticcall stor0.0xc0a5e34b with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4], arg1
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1698 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1698] == mem[_1698]
            if s >= mem[_600 + (64 * _5) + 64]:
                revert with 'NH{q', 50
            mem[(32 * s) + _600 + (64 * _5) + 96] = mem[_1698]
            if s >= mem[_600 + (98 * _5) + 96]:
                revert with 'NH{q', 50
            mem[(32 * s) + _600 + (98 * _5) + 128] = _1394
            if s > -2:
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            s = s + 1
            idx = idx + 1
            t = _1394
            continue 
        _1247 = mem[64]
        mem[mem[64]] = 96
        _1314 = mem[_600]
        mem[mem[64] + 96] = mem[_600]
        idx = 0
        s = _600 + 32
        t = mem[64] + 128
        while idx < _1314:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_1247 + 32] = (32 * _1314) + 128
        _1778 = mem[_600 + (32 * _5) + 32]
        mem[_1247 + (32 * _1314) + 128] = mem[_600 + (32 * _5) + 32]
        mem[_1247 + (32 * _1314) + 160 len 32 * _1778] = mem[_600 + (32 * _5) + 64 len 32 * _1778]
        mem[_1247 + 64] = (32 * _1314) + (32 * _1778) + 160
        _1874 = mem[_600 + (64 * _5) + 64]
        mem[_1247 + (32 * _1314) + (32 * _1778) + 160] = mem[_600 + (64 * _5) + 64]
        mem[_1247 + (32 * _1314) + (32 * _1778) + 192 len 32 * _1874] = mem[_600 + (64 * _5) + 96 len 32 * _1874]
        return memory
          from mem[64]
           len _1247 + (32 * _1314) + (32 * _1778) + (32 * _1874) + -mem[64] + 192
    mem[_600 + (64 * _5) + 96 len 32 * _5] = call.data[calldata.size len 32 * _5]
    if _5 > test266151307():
        revert with 'NH{q', 65
    mem[_600 + (98 * _5) + 96] = _5
    mem[64] = _600 + (131 * _5) + 128
    if not _5:
        s = 0
        idx = 0
        t = 0
        while idx < _5:
            if idx >= mem[ceil32(return_data.size) + 96]:
                revert with 'NH{q', 50
            if not mem[(32 * idx) + ceil32(return_data.size) + 140 len 20]:
                if idx == -1:
                    revert with 'NH{q', 17
                s = s
                idx = idx + 1
                t = t
                continue 
            if idx >= mem[ceil32(return_data.size) + 96]:
                revert with 'NH{q', 50
            mem[mem[64] + 4] = mem[(32 * idx) + ceil32(return_data.size) + 140 len 20]
            mem[mem[64] + 36] = arg1
            require ext_code.size(stor1)
            staticcall stor1.balanceOf(address arg1, uint256 arg2) with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4], arg1
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1379 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1395 = mem[_1379]
            require mem[_1379] == mem[_1379]
            if mem[_1379] <= 0:
                if idx == -1:
                    revert with 'NH{q', 17
                s = s
                idx = idx + 1
                t = mem[_1379]
                continue 
            if idx >= mem[ceil32(return_data.size) + 96]:
                revert with 'NH{q', 50
            if s >= mem[_600]:
                revert with 'NH{q', 50
            mem[(32 * s) + _600 + 32] = mem[(32 * idx) + ceil32(return_data.size) + 140 len 20]
            if idx >= mem[ceil32(return_data.size) + 96]:
                revert with 'NH{q', 50
            mem[mem[64] + 4] = mem[(32 * idx) + ceil32(return_data.size) + 140 len 20]
            mem[mem[64] + 36] = arg1
            require ext_code.size(stor0)
            staticcall stor0.0x92873644 with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4], arg1
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1587 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1587] == mem[_1587]
            if s >= mem[_600 + (32 * _5) + 32]:
                revert with 'NH{q', 50
            mem[(32 * s) + _600 + (32 * _5) + 64] = mem[_1587]
            if idx >= mem[ceil32(return_data.size) + 96]:
                revert with 'NH{q', 50
            mem[mem[64] + 4] = mem[(32 * idx) + ceil32(return_data.size) + 140 len 20]
            mem[mem[64] + 36] = arg1
            require ext_code.size(stor0)
            staticcall stor0.0xc0a5e34b with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4], arg1
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1699 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1699] == mem[_1699]
            if s >= mem[_600 + (64 * _5) + 64]:
                revert with 'NH{q', 50
            mem[(32 * s) + _600 + (64 * _5) + 96] = mem[_1699]
            if s >= mem[_600 + (98 * _5) + 96]:
                revert with 'NH{q', 50
            mem[(32 * s) + _600 + (98 * _5) + 128] = _1395
            if s > -2:
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            s = s + 1
            idx = idx + 1
            t = _1395
            continue 
        _1249 = mem[64]
        mem[mem[64]] = 96
        _1315 = mem[_600]
        mem[mem[64] + 96] = mem[_600]
        idx = 0
        s = _600 + 32
        t = mem[64] + 128
        while idx < _1315:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_1249 + 32] = (32 * _1315) + 128
        _1779 = mem[_600 + (32 * _5) + 32]
        mem[_1249 + (32 * _1315) + 128] = mem[_600 + (32 * _5) + 32]
        mem[_1249 + (32 * _1315) + 160 len 32 * _1779] = mem[_600 + (32 * _5) + 64 len 32 * _1779]
        mem[_1249 + 64] = (32 * _1315) + (32 * _1779) + 160
        _1875 = mem[_600 + (64 * _5) + 64]
        mem[_1249 + (32 * _1315) + (32 * _1779) + 160] = mem[_600 + (64 * _5) + 64]
        mem[_1249 + (32 * _1315) + (32 * _1779) + 192 len 32 * _1875] = mem[_600 + (64 * _5) + 96 len 32 * _1875]
        return memory
          from mem[64]
           len _1249 + (32 * _1315) + (32 * _1779) + (32 * _1875) + -mem[64] + 192
    mem[_600 + (98 * _5) + 128 len 32 * _5] = call.data[calldata.size len 32 * _5]
    s = 0
    idx = 0
    t = 0
    while idx < _5:
        if idx >= mem[ceil32(return_data.size) + 96]:
            revert with 'NH{q', 50
        if not mem[(32 * idx) + ceil32(return_data.size) + 140 len 20]:
            if idx == -1:
                revert with 'NH{q', 17
            s = s
            idx = idx + 1
            t = t
            continue 
        if idx >= mem[ceil32(return_data.size) + 96]:
            revert with 'NH{q', 50
        mem[mem[64] + 4] = mem[(32 * idx) + ceil32(return_data.size) + 140 len 20]
        mem[mem[64] + 36] = arg1
        require ext_code.size(stor1)
        staticcall stor1.balanceOf(address arg1, uint256 arg2) with:
                gas gas_remaining wei
               args mem[mem[64] + 4], arg1
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1380 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _1396 = mem[_1380]
        require mem[_1380] == mem[_1380]
        if mem[_1380] <= 0:
            if idx == -1:
                revert with 'NH{q', 17
            s = s
            idx = idx + 1
            t = mem[_1380]
            continue 
        if idx >= mem[ceil32(return_data.size) + 96]:
            revert with 'NH{q', 50
        if s >= mem[_600]:
            revert with 'NH{q', 50
        mem[(32 * s) + _600 + 32] = mem[(32 * idx) + ceil32(return_data.size) + 140 len 20]
        if idx >= mem[ceil32(return_data.size) + 96]:
            revert with 'NH{q', 50
        mem[mem[64] + 4] = mem[(32 * idx) + ceil32(return_data.size) + 140 len 20]
        mem[mem[64] + 36] = arg1
        require ext_code.size(stor0)
        staticcall stor0.0x92873644 with:
                gas gas_remaining wei
               args mem[mem[64] + 4], arg1
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1588 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_1588] == mem[_1588]
        if s >= mem[_600 + (32 * _5) + 32]:
            revert with 'NH{q', 50
        mem[(32 * s) + _600 + (32 * _5) + 64] = mem[_1588]
        if idx >= mem[ceil32(return_data.size) + 96]:
            revert with 'NH{q', 50
        mem[mem[64] + 4] = mem[(32 * idx) + ceil32(return_data.size) + 140 len 20]
        mem[mem[64] + 36] = arg1
        require ext_code.size(stor0)
        staticcall stor0.0xc0a5e34b with:
                gas gas_remaining wei
               args mem[mem[64] + 4], arg1
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1700 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_1700] == mem[_1700]
        if s >= mem[_600 + (64 * _5) + 64]:
            revert with 'NH{q', 50
        mem[(32 * s) + _600 + (64 * _5) + 96] = mem[_1700]
        if s >= mem[_600 + (98 * _5) + 96]:
            revert with 'NH{q', 50
        mem[(32 * s) + _600 + (98 * _5) + 128] = _1396
        if s > -2:
            revert with 'NH{q', 17
        if idx == -1:
            revert with 'NH{q', 17
        s = s + 1
        idx = idx + 1
        t = _1396
        continue 
    _1251 = mem[64]
    mem[mem[64]] = 96
    _1316 = mem[_600]
    mem[mem[64] + 96] = mem[_600]
    idx = 0
    s = _600 + 32
    t = mem[64] + 128
    while idx < _1316:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[_1251 + 32] = (32 * _1316) + 128
    _1780 = mem[_600 + (32 * _5) + 32]
    mem[_1251 + (32 * _1316) + 128] = mem[_600 + (32 * _5) + 32]
    mem[_1251 + (32 * _1316) + 160 len 32 * _1780] = mem[_600 + (32 * _5) + 64 len 32 * _1780]
    mem[_1251 + 64] = (32 * _1316) + (32 * _1780) + 160
    _1876 = mem[_600 + (64 * _5) + 64]
    mem[_1251 + (32 * _1316) + (32 * _1780) + 160] = mem[_600 + (64 * _5) + 64]
    mem[_1251 + (32 * _1316) + (32 * _1780) + 192 len 32 * _1876] = mem[_600 + (64 * _5) + 96 len 32 * _1876]
    return memory
      from mem[64]
       len _1251 + (32 * _1316) + (32 * _1780) + (32 * _1876) + -mem[64] + 192
}



}
