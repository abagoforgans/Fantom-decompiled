contract main {




// =====================  Runtime code  =====================


address stor0;

function _fallback() payable {
    revert
}

function changeOwner(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if msg.sender == stor0:
        if arg1:
            stor0 = arg1
}

function retrieveWei(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if msg.sender == stor0:
        call msg.sender with:
           value arg1 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}

function approve(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if msg.sender == stor0:
        require ext_code.size(arg1)
        call arg1.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args msg.sender, -1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function retrieveToken(uint256 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if msg.sender == stor0:
        require ext_code.size(arg2)
        staticcall arg2.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        require ext_code.size(arg2)
        if ext_call.return_data[0] > arg1:
            call arg2.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, arg1
        else:
            call arg2.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_dcbb96d3(?) {
    require calldata.size - 4 >= 96
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 4).length) + 97 > test266151307() or floor32(('cd', 4).length) + 97 < 96:
        revert with 'NH{q', 65
    mem[64] = floor32(('cd', 4).length) + 97
    mem[96] = ('cd', 4).length
    require cd[4] + (128 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        require calldata.size - s >= 128
        _238 = mem[64]
        if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + 128
        require cd[s] == address(cd[s])
        mem[_238] = cd[s]
        require cd[(s + 32)] == address(cd[(s + 32)])
        mem[_238 + 32] = cd[(s + 32)]
        require cd[(s + 64)] == address(cd[(s + 64)])
        mem[_238 + 64] = cd[(s + 64)]
        require cd[(s + 96)] == address(cd[(s + 96)])
        mem[_238 + 96] = cd[(s + 96)]
        mem[t] = _238
        idx = idx + 1
        s = s + 128
        t = t + 32
        continue 
    require cd[36] == cd[36]
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    if ('cd', 68).length > test266151307():
        revert with 'NH{q', 65
    _239 = mem[64]
    if mem[64] + floor32(('cd', 68).length) + 1 > test266151307() or mem[64] + floor32(('cd', 68).length) + 1 < mem[64]:
        revert with 'NH{q', 65
    mem[64] = mem[64] + floor32(('cd', 68).length) + 1
    mem[_239] = ('cd', 68).length
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    idx = 0
    s = cd[68] + 36
    t = _239 + 32
    while idx < ('cd', 68).length:
        require cd[s] == cd[s]
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if msg.sender == stor0:
        _494 = mem[96]
        if mem[96] > -2:
            revert with 'NH{q', 17
        if mem[96] + 1 > test266151307():
            revert with 'NH{q', 65
        _495 = mem[64]
        mem[mem[64]] = mem[96] + 1
        mem[64] = mem[64] + (32 * _494 + 1) + 32
        if not _494 + 1:
            if 0 >= mem[_495]:
                revert with 'NH{q', 50
            mem[_495 + 32] = cd[36]
            _884 = mem[96]
            idx = 0
            s = cd[36]
            while idx < _884:
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                if idx <= 0:
                    _891 = mem[mem[(32 * idx) + 128]]
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    _901 = mem[mem[(32 * idx) + 128] + 64]
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    mem[mem[64] + 4] = mem[mem[(32 * idx) + 128] + 12 len 20]
                    mem[mem[64] + 36] = -1
                    require ext_code.size(address(_901))
                    call address(_901).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4], -1
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _940 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_940] == bool(mem[_940])
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    _957 = mem[mem[(32 * idx) + 128] + 64]
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    _963 = mem[mem[(32 * idx) + 128] + 96]
                    if mem[mem[(32 * idx) + 128] + 76 len 20] == mem[mem[(32 * idx) + 128] + 108 len 20]:
                        revert with 0, 'UniswapV2Library: IDENTICAL_ADDRESSES'
                    if mem[mem[(32 * idx) + 128] + 76 len 20] < mem[mem[(32 * idx) + 128] + 108 len 20]:
                        if not mem[mem[(32 * idx) + 128] + 76 len 20]:
                            revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                        require ext_code.size(mem[mem[(32 * idx) + 128] + 44 len 20])
                        staticcall mem[mem[(32 * idx) + 128] + 44 len 20].getReserves() with:
                                gas gas_remaining wei
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _984 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        _1006 = mem[_984]
                        require mem[_984] == mem[_984 + 18 len 14]
                        _1028 = mem[_984 + 32]
                        require mem[_984 + 32] == mem[_984 + 50 len 14]
                        require mem[_984 + 64] == mem[_984 + 92 len 4]
                        if idx >= mem[_239]:
                            revert with 'NH{q', 50
                        if address(_957) == address(_957):
                            _1062 = mem[(32 * idx) + _239 + 32]
                            if 1000 < mem[(32 * idx) + _239 + 32]:
                                revert with 'NH{q', 17
                            if idx >= mem[96]:
                                revert with 'NH{q', 50
                            _1083 = mem[mem[(32 * idx) + 128]]
                            mem[mem[64] + 4] = s
                            mem[mem[64] + 36] = Mask(112, 0, _1006)
                            mem[mem[64] + 68] = Mask(112, 0, _1028)
                            require ext_code.size(address(_1083))
                            staticcall address(_1083).getAmountOut(uint256 arg1, uint256 arg2, uint256 arg3) with:
                                    gas gas_remaining wei
                                   args s, _1006 << 144, Mask(112, 0, _1028)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1162 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1170 = mem[_1162]
                            require mem[_1162] == mem[_1162]
                            if mem[_1162] and -_1062 + 1000 > -1 / mem[_1162]:
                                revert with 'NH{q', 17
                            if idx >= mem[96]:
                                revert with 'NH{q', 50
                            _1211 = mem[mem[(32 * idx) + 128] + 64]
                            if idx >= mem[96]:
                                revert with 'NH{q', 50
                            _1235 = mem[mem[(32 * idx) + 128] + 96]
                            _1250 = mem[64]
                            mem[mem[64]] = 2
                            mem[64] = mem[64] + 96
                            if 0 >= mem[_1250]:
                                revert with 'NH{q', 50
                            mem[_1250 + 32] = address(_1211)
                            if 1 >= mem[_1250]:
                                revert with 'NH{q', 50
                            mem[_1250 + 64] = address(_1235)
                            if block.timestamp > -601:
                                revert with 'NH{q', 17
                            mem[_1250 + 96] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                            mem[_1250 + 100] = s
                            mem[_1250 + 132] = (1000 * _1170) - (_1062 * _1170) / 1000
                            mem[_1250 + 164] = 160
                            mem[_1250 + 260] = mem[_1250]
                            s = 0
                            t = _1250 + 32
                            u = _1250 + 292
                            while s < mem[_1250]:
                                mem[u] = mem[t + 12 len 20]
                                _884 = mem[96]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            mem[_1250 + 196] = this.address
                            mem[_1250 + 228] = block.timestamp + 600
                            require ext_code.size(address(_891))
                            call address(_891).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _1250 + (32 * mem[_1250]) + -mem[64] + 288]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if idx >= mem[96]:
                                revert with 'NH{q', 50
                            _1571 = mem[mem[(32 * idx) + 128] + 96]
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(_1571))
                            staticcall address(_1571).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1634 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1634] == mem[_1634]
                            if idx == -1:
                                revert with 'NH{q', 17
                            _884 = mem[96]
                            idx = idx + 1
                            s = mem[_1634]
                            continue 
                        _1063 = mem[(32 * idx) + _239 + 32]
                        if 1000 < mem[(32 * idx) + _239 + 32]:
                            revert with 'NH{q', 17
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        _1086 = mem[mem[(32 * idx) + 128]]
                        mem[mem[64] + 4] = s
                        mem[mem[64] + 36] = Mask(112, 0, _1028)
                        mem[mem[64] + 68] = Mask(112, 0, _1006)
                        require ext_code.size(address(_1086))
                        staticcall address(_1086).getAmountOut(uint256 arg1, uint256 arg2, uint256 arg3) with:
                                gas gas_remaining wei
                               args s, _1028 << 144, Mask(112, 0, _1006)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1163 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1171 = mem[_1163]
                        require mem[_1163] == mem[_1163]
                        if mem[_1163] and -_1063 + 1000 > -1 / mem[_1163]:
                            revert with 'NH{q', 17
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        _1214 = mem[mem[(32 * idx) + 128] + 64]
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        _1237 = mem[mem[(32 * idx) + 128] + 96]
                        _1251 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        if 0 >= mem[_1251]:
                            revert with 'NH{q', 50
                        mem[_1251 + 32] = address(_1214)
                        if 1 >= mem[_1251]:
                            revert with 'NH{q', 50
                        mem[_1251 + 64] = address(_1237)
                        if block.timestamp > -601:
                            revert with 'NH{q', 17
                        mem[_1251 + 96] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                        mem[_1251 + 100] = s
                        mem[_1251 + 132] = (1000 * _1171) - (_1063 * _1171) / 1000
                        mem[_1251 + 164] = 160
                        mem[_1251 + 260] = mem[_1251]
                        s = 0
                        t = _1251 + 32
                        u = _1251 + 292
                        while s < mem[_1251]:
                            mem[u] = mem[t + 12 len 20]
                            _884 = mem[96]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        mem[_1251 + 196] = this.address
                        mem[_1251 + 228] = block.timestamp + 600
                        require ext_code.size(address(_891))
                        call address(_891).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _1251 + (32 * mem[_1251]) + -mem[64] + 288]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        _1574 = mem[mem[(32 * idx) + 128] + 96]
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(address(_1574))
                        staticcall address(_1574).0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1635 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1635] == mem[_1635]
                        if idx == -1:
                            revert with 'NH{q', 17
                        _884 = mem[96]
                        idx = idx + 1
                        s = mem[_1635]
                        continue 
                    if not mem[mem[(32 * idx) + 128] + 108 len 20]:
                        revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                    require ext_code.size(mem[mem[(32 * idx) + 128] + 44 len 20])
                    staticcall mem[mem[(32 * idx) + 128] + 44 len 20].getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _985 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _1007 = mem[_985]
                    require mem[_985] == mem[_985 + 18 len 14]
                    _1029 = mem[_985 + 32]
                    require mem[_985 + 32] == mem[_985 + 50 len 14]
                    require mem[_985 + 64] == mem[_985 + 92 len 4]
                    if idx >= mem[_239]:
                        revert with 'NH{q', 50
                    if address(_957) == address(_963):
                        _1064 = mem[(32 * idx) + _239 + 32]
                        if 1000 < mem[(32 * idx) + _239 + 32]:
                            revert with 'NH{q', 17
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        _1089 = mem[mem[(32 * idx) + 128]]
                        mem[mem[64] + 4] = s
                        mem[mem[64] + 36] = Mask(112, 0, _1007)
                        mem[mem[64] + 68] = Mask(112, 0, _1029)
                        require ext_code.size(address(_1089))
                        staticcall address(_1089).getAmountOut(uint256 arg1, uint256 arg2, uint256 arg3) with:
                                gas gas_remaining wei
                               args s, _1007 << 144, Mask(112, 0, _1029)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1164 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1172 = mem[_1164]
                        require mem[_1164] == mem[_1164]
                        if mem[_1164] and -_1064 + 1000 > -1 / mem[_1164]:
                            revert with 'NH{q', 17
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        _1217 = mem[mem[(32 * idx) + 128] + 64]
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        _1239 = mem[mem[(32 * idx) + 128] + 96]
                        _1252 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        if 0 >= mem[_1252]:
                            revert with 'NH{q', 50
                        mem[_1252 + 32] = address(_1217)
                        if 1 >= mem[_1252]:
                            revert with 'NH{q', 50
                        mem[_1252 + 64] = address(_1239)
                        if block.timestamp > -601:
                            revert with 'NH{q', 17
                        mem[_1252 + 96] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                        mem[_1252 + 100] = s
                        mem[_1252 + 132] = (1000 * _1172) - (_1064 * _1172) / 1000
                        mem[_1252 + 164] = 160
                        mem[_1252 + 260] = mem[_1252]
                        s = 0
                        t = _1252 + 32
                        u = _1252 + 292
                        while s < mem[_1252]:
                            mem[u] = mem[t + 12 len 20]
                            _884 = mem[96]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        mem[_1252 + 196] = this.address
                        mem[_1252 + 228] = block.timestamp + 600
                        require ext_code.size(address(_891))
                        call address(_891).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _1252 + (32 * mem[_1252]) + -mem[64] + 288]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        _1577 = mem[mem[(32 * idx) + 128] + 96]
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(address(_1577))
                        staticcall address(_1577).0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1636 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1636] == mem[_1636]
                        if idx == -1:
                            revert with 'NH{q', 17
                        _884 = mem[96]
                        idx = idx + 1
                        s = mem[_1636]
                        continue 
                    _1065 = mem[(32 * idx) + _239 + 32]
                    if 1000 < mem[(32 * idx) + _239 + 32]:
                        revert with 'NH{q', 17
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    _1092 = mem[mem[(32 * idx) + 128]]
                    mem[mem[64] + 4] = s
                    mem[mem[64] + 36] = Mask(112, 0, _1029)
                    mem[mem[64] + 68] = Mask(112, 0, _1007)
                    require ext_code.size(address(_1092))
                    staticcall address(_1092).getAmountOut(uint256 arg1, uint256 arg2, uint256 arg3) with:
                            gas gas_remaining wei
                           args s, _1029 << 144, Mask(112, 0, _1007)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1165 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1173 = mem[_1165]
                    require mem[_1165] == mem[_1165]
                    if mem[_1165] and -_1065 + 1000 > -1 / mem[_1165]:
                        revert with 'NH{q', 17
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    _1220 = mem[mem[(32 * idx) + 128] + 64]
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    _1241 = mem[mem[(32 * idx) + 128] + 96]
                    _1253 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    if 0 >= mem[_1253]:
                        revert with 'NH{q', 50
                    mem[_1253 + 32] = address(_1220)
                    if 1 >= mem[_1253]:
                        revert with 'NH{q', 50
                    mem[_1253 + 64] = address(_1241)
                    if block.timestamp > -601:
                        revert with 'NH{q', 17
                    mem[_1253 + 96] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                    mem[_1253 + 100] = s
                    mem[_1253 + 132] = (1000 * _1173) - (_1065 * _1173) / 1000
                    mem[_1253 + 164] = 160
                    mem[_1253 + 260] = mem[_1253]
                    s = 0
                    t = _1253 + 32
                    u = _1253 + 292
                    while s < mem[_1253]:
                        mem[u] = mem[t + 12 len 20]
                        _884 = mem[96]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    mem[_1253 + 196] = this.address
                    mem[_1253 + 228] = block.timestamp + 600
                    require ext_code.size(address(_891))
                    call address(_891).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _1253 + (32 * mem[_1253]) + -mem[64] + 288]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    _1580 = mem[mem[(32 * idx) + 128] + 96]
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(_1580))
                    staticcall address(_1580).0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1637 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1637] == mem[_1637]
                    if idx == -1:
                        revert with 'NH{q', 17
                    _884 = mem[96]
                    idx = idx + 1
                    s = mem[_1637]
                    continue 
                if idx < 1:
                    revert with 'NH{q', 17
                if idx - 1 >= mem[96]:
                    revert with 'NH{q', 50
                require mem[mem[(32 * idx - 1) + 128] + 108 len 20] == mem[mem[(32 * idx) + 128] + 76 len 20]
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                _921 = mem[mem[(32 * idx) + 128]]
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                _927 = mem[mem[(32 * idx) + 128] + 64]
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                mem[mem[64] + 4] = mem[mem[(32 * idx) + 128] + 12 len 20]
                mem[mem[64] + 36] = -1
                require ext_code.size(address(_927))
                call address(_927).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4], -1
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _951 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_951] == bool(mem[_951])
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                _995 = mem[mem[(32 * idx) + 128] + 64]
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                _1002 = mem[mem[(32 * idx) + 128] + 96]
                if mem[mem[(32 * idx) + 128] + 76 len 20] == mem[mem[(32 * idx) + 128] + 108 len 20]:
                    revert with 0, 'UniswapV2Library: IDENTICAL_ADDRESSES'
                if mem[mem[(32 * idx) + 128] + 76 len 20] < mem[mem[(32 * idx) + 128] + 108 len 20]:
                    if not mem[mem[(32 * idx) + 128] + 76 len 20]:
                        revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                    require ext_code.size(mem[mem[(32 * idx) + 128] + 44 len 20])
                    staticcall mem[mem[(32 * idx) + 128] + 44 len 20].getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1032 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _1038 = mem[_1032]
                    require mem[_1032] == mem[_1032 + 18 len 14]
                    _1050 = mem[_1032 + 32]
                    require mem[_1032 + 32] == mem[_1032 + 50 len 14]
                    require mem[_1032 + 64] == mem[_1032 + 92 len 4]
                    if idx >= mem[_239]:
                        revert with 'NH{q', 50
                    if address(_995) == address(_995):
                        _1114 = mem[(32 * idx) + _239 + 32]
                        if 1000 < mem[(32 * idx) + _239 + 32]:
                            revert with 'NH{q', 17
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        _1131 = mem[mem[(32 * idx) + 128]]
                        mem[mem[64] + 4] = s
                        mem[mem[64] + 36] = Mask(112, 0, _1038)
                        mem[mem[64] + 68] = Mask(112, 0, _1050)
                        require ext_code.size(address(_1131))
                        staticcall address(_1131).getAmountOut(uint256 arg1, uint256 arg2, uint256 arg3) with:
                                gas gas_remaining wei
                               args s, _1038 << 144, Mask(112, 0, _1050)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1186 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1194 = mem[_1186]
                        require mem[_1186] == mem[_1186]
                        if mem[_1186] and -_1114 + 1000 > -1 / mem[_1186]:
                            revert with 'NH{q', 17
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        _1283 = mem[mem[(32 * idx) + 128] + 64]
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        _1307 = mem[mem[(32 * idx) + 128] + 96]
                        _1322 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        if 0 >= mem[_1322]:
                            revert with 'NH{q', 50
                        mem[_1322 + 32] = address(_1283)
                        if 1 >= mem[_1322]:
                            revert with 'NH{q', 50
                        mem[_1322 + 64] = address(_1307)
                        if block.timestamp > -601:
                            revert with 'NH{q', 17
                        mem[_1322 + 96] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                        mem[_1322 + 100] = s
                        mem[_1322 + 132] = (1000 * _1194) - (_1114 * _1194) / 1000
                        mem[_1322 + 164] = 160
                        mem[_1322 + 260] = mem[_1322]
                        s = 0
                        t = _1322 + 32
                        u = _1322 + 292
                        while s < mem[_1322]:
                            mem[u] = mem[t + 12 len 20]
                            _884 = mem[96]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        mem[_1322 + 196] = this.address
                        mem[_1322 + 228] = block.timestamp + 600
                        require ext_code.size(address(_921))
                        call address(_921).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _1322 + (32 * mem[_1322]) + -mem[64] + 288]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        _1583 = mem[mem[(32 * idx) + 128] + 96]
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(address(_1583))
                        staticcall address(_1583).0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1638 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1638] == mem[_1638]
                        if idx == -1:
                            revert with 'NH{q', 17
                        _884 = mem[96]
                        idx = idx + 1
                        s = mem[_1638]
                        continue 
                    _1115 = mem[(32 * idx) + _239 + 32]
                    if 1000 < mem[(32 * idx) + _239 + 32]:
                        revert with 'NH{q', 17
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    _1134 = mem[mem[(32 * idx) + 128]]
                    mem[mem[64] + 4] = s
                    mem[mem[64] + 36] = Mask(112, 0, _1050)
                    mem[mem[64] + 68] = Mask(112, 0, _1038)
                    require ext_code.size(address(_1134))
                    staticcall address(_1134).getAmountOut(uint256 arg1, uint256 arg2, uint256 arg3) with:
                            gas gas_remaining wei
                           args s, _1050 << 144, Mask(112, 0, _1038)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1187 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1195 = mem[_1187]
                    require mem[_1187] == mem[_1187]
                    if mem[_1187] and -_1115 + 1000 > -1 / mem[_1187]:
                        revert with 'NH{q', 17
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    _1286 = mem[mem[(32 * idx) + 128] + 64]
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    _1309 = mem[mem[(32 * idx) + 128] + 96]
                    _1323 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    if 0 >= mem[_1323]:
                        revert with 'NH{q', 50
                    mem[_1323 + 32] = address(_1286)
                    if 1 >= mem[_1323]:
                        revert with 'NH{q', 50
                    mem[_1323 + 64] = address(_1309)
                    if block.timestamp > -601:
                        revert with 'NH{q', 17
                    mem[_1323 + 96] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                    mem[_1323 + 100] = s
                    mem[_1323 + 132] = (1000 * _1195) - (_1115 * _1195) / 1000
                    mem[_1323 + 164] = 160
                    mem[_1323 + 260] = mem[_1323]
                    s = 0
                    t = _1323 + 32
                    u = _1323 + 292
                    while s < mem[_1323]:
                        mem[u] = mem[t + 12 len 20]
                        _884 = mem[96]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    mem[_1323 + 196] = this.address
                    mem[_1323 + 228] = block.timestamp + 600
                    require ext_code.size(address(_921))
                    call address(_921).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _1323 + (32 * mem[_1323]) + -mem[64] + 288]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    _1586 = mem[mem[(32 * idx) + 128] + 96]
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(_1586))
                    staticcall address(_1586).0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1639 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1639] == mem[_1639]
                    if idx == -1:
                        revert with 'NH{q', 17
                    _884 = mem[96]
                    idx = idx + 1
                    s = mem[_1639]
                    continue 
                if not mem[mem[(32 * idx) + 128] + 108 len 20]:
                    revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                require ext_code.size(mem[mem[(32 * idx) + 128] + 44 len 20])
                staticcall mem[mem[(32 * idx) + 128] + 44 len 20].getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1033 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _1039 = mem[_1033]
                require mem[_1033] == mem[_1033 + 18 len 14]
                _1051 = mem[_1033 + 32]
                require mem[_1033 + 32] == mem[_1033 + 50 len 14]
                require mem[_1033 + 64] == mem[_1033 + 92 len 4]
                if idx >= mem[_239]:
                    revert with 'NH{q', 50
                if address(_995) == address(_1002):
                    _1116 = mem[(32 * idx) + _239 + 32]
                    if 1000 < mem[(32 * idx) + _239 + 32]:
                        revert with 'NH{q', 17
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    _1137 = mem[mem[(32 * idx) + 128]]
                    mem[mem[64] + 4] = s
                    mem[mem[64] + 36] = Mask(112, 0, _1039)
                    mem[mem[64] + 68] = Mask(112, 0, _1051)
                    require ext_code.size(address(_1137))
                    staticcall address(_1137).getAmountOut(uint256 arg1, uint256 arg2, uint256 arg3) with:
                            gas gas_remaining wei
                           args s, _1039 << 144, Mask(112, 0, _1051)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1188 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1196 = mem[_1188]
                    require mem[_1188] == mem[_1188]
                    if mem[_1188] and -_1116 + 1000 > -1 / mem[_1188]:
                        revert with 'NH{q', 17
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    _1289 = mem[mem[(32 * idx) + 128] + 64]
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    _1311 = mem[mem[(32 * idx) + 128] + 96]
                    _1324 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    if 0 >= mem[_1324]:
                        revert with 'NH{q', 50
                    mem[_1324 + 32] = address(_1289)
                    if 1 >= mem[_1324]:
                        revert with 'NH{q', 50
                    mem[_1324 + 64] = address(_1311)
                    if block.timestamp > -601:
                        revert with 'NH{q', 17
                    mem[_1324 + 96] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                    mem[_1324 + 100] = s
                    mem[_1324 + 132] = (1000 * _1196) - (_1116 * _1196) / 1000
                    mem[_1324 + 164] = 160
                    mem[_1324 + 260] = mem[_1324]
                    s = 0
                    t = _1324 + 32
                    u = _1324 + 292
                    while s < mem[_1324]:
                        mem[u] = mem[t + 12 len 20]
                        _884 = mem[96]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    mem[_1324 + 196] = this.address
                    mem[_1324 + 228] = block.timestamp + 600
                    require ext_code.size(address(_921))
                    call address(_921).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _1324 + (32 * mem[_1324]) + -mem[64] + 288]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    _1589 = mem[mem[(32 * idx) + 128] + 96]
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(_1589))
                    staticcall address(_1589).0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1640 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1640] == mem[_1640]
                    if idx == -1:
                        revert with 'NH{q', 17
                    _884 = mem[96]
                    idx = idx + 1
                    s = mem[_1640]
                    continue 
                _1117 = mem[(32 * idx) + _239 + 32]
                if 1000 < mem[(32 * idx) + _239 + 32]:
                    revert with 'NH{q', 17
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                _1140 = mem[mem[(32 * idx) + 128]]
                mem[mem[64] + 4] = s
                mem[mem[64] + 36] = Mask(112, 0, _1051)
                mem[mem[64] + 68] = Mask(112, 0, _1039)
                require ext_code.size(address(_1140))
                staticcall address(_1140).getAmountOut(uint256 arg1, uint256 arg2, uint256 arg3) with:
                        gas gas_remaining wei
                       args s, _1051 << 144, Mask(112, 0, _1039)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1189 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1197 = mem[_1189]
                require mem[_1189] == mem[_1189]
                if mem[_1189] and -_1117 + 1000 > -1 / mem[_1189]:
                    revert with 'NH{q', 17
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                _1292 = mem[mem[(32 * idx) + 128] + 64]
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                _1313 = mem[mem[(32 * idx) + 128] + 96]
                _1325 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                if 0 >= mem[_1325]:
                    revert with 'NH{q', 50
                mem[_1325 + 32] = address(_1292)
                if 1 >= mem[_1325]:
                    revert with 'NH{q', 50
                mem[_1325 + 64] = address(_1313)
                if block.timestamp > -601:
                    revert with 'NH{q', 17
                mem[_1325 + 96] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                mem[_1325 + 100] = s
                mem[_1325 + 132] = (1000 * _1197) - (_1117 * _1197) / 1000
                mem[_1325 + 164] = 160
                mem[_1325 + 260] = mem[_1325]
                s = 0
                t = _1325 + 32
                u = _1325 + 292
                while s < mem[_1325]:
                    mem[u] = mem[t + 12 len 20]
                    _884 = mem[96]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                mem[_1325 + 196] = this.address
                mem[_1325 + 228] = block.timestamp + 600
                require ext_code.size(address(_921))
                call address(_921).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _1325 + (32 * mem[_1325]) + -mem[64] + 288]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                _1592 = mem[mem[(32 * idx) + 128] + 96]
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(_1592))
                staticcall address(_1592).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1641 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1641] == mem[_1641]
                if idx == -1:
                    revert with 'NH{q', 17
                _884 = mem[96]
                idx = idx + 1
                s = mem[_1641]
                continue 
        else:
            mem[_495 + 32 len 32 * _494 + 1] = call.data[calldata.size len 32 * _494 + 1]
            if 0 >= mem[_495]:
                revert with 'NH{q', 50
            mem[_495 + 32] = cd[36]
            _885 = mem[96]
            idx = 0
            s = cd[36]
            while idx < _885:
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                if idx <= 0:
                    _896 = mem[mem[(32 * idx) + 128]]
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    _904 = mem[mem[(32 * idx) + 128] + 64]
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    mem[mem[64] + 4] = mem[mem[(32 * idx) + 128] + 12 len 20]
                    mem[mem[64] + 36] = -1
                    require ext_code.size(address(_904))
                    call address(_904).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4], -1
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _941 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_941] == bool(mem[_941])
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    _960 = mem[mem[(32 * idx) + 128] + 64]
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    _965 = mem[mem[(32 * idx) + 128] + 96]
                    if mem[mem[(32 * idx) + 128] + 76 len 20] == mem[mem[(32 * idx) + 128] + 108 len 20]:
                        revert with 0, 'UniswapV2Library: IDENTICAL_ADDRESSES'
                    if mem[mem[(32 * idx) + 128] + 76 len 20] < mem[mem[(32 * idx) + 128] + 108 len 20]:
                        if not mem[mem[(32 * idx) + 128] + 76 len 20]:
                            revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                        require ext_code.size(mem[mem[(32 * idx) + 128] + 44 len 20])
                        staticcall mem[mem[(32 * idx) + 128] + 44 len 20].getReserves() with:
                                gas gas_remaining wei
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _989 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        _1008 = mem[_989]
                        require mem[_989] == mem[_989 + 18 len 14]
                        _1030 = mem[_989 + 32]
                        require mem[_989 + 32] == mem[_989 + 50 len 14]
                        require mem[_989 + 64] == mem[_989 + 92 len 4]
                        if idx >= mem[_239]:
                            revert with 'NH{q', 50
                        if address(_960) == address(_960):
                            _1068 = mem[(32 * idx) + _239 + 32]
                            if 1000 < mem[(32 * idx) + _239 + 32]:
                                revert with 'NH{q', 17
                            if idx >= mem[96]:
                                revert with 'NH{q', 50
                            _1095 = mem[mem[(32 * idx) + 128]]
                            mem[mem[64] + 4] = s
                            mem[mem[64] + 36] = Mask(112, 0, _1008)
                            mem[mem[64] + 68] = Mask(112, 0, _1030)
                            require ext_code.size(address(_1095))
                            staticcall address(_1095).getAmountOut(uint256 arg1, uint256 arg2, uint256 arg3) with:
                                    gas gas_remaining wei
                                   args s, _1008 << 144, Mask(112, 0, _1030)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1166 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1174 = mem[_1166]
                            require mem[_1166] == mem[_1166]
                            if mem[_1166] and -_1068 + 1000 > -1 / mem[_1166]:
                                revert with 'NH{q', 17
                            if idx >= mem[96]:
                                revert with 'NH{q', 50
                            _1223 = mem[mem[(32 * idx) + 128] + 64]
                            if idx >= mem[96]:
                                revert with 'NH{q', 50
                            _1243 = mem[mem[(32 * idx) + 128] + 96]
                            _1254 = mem[64]
                            mem[mem[64]] = 2
                            mem[64] = mem[64] + 96
                            if 0 >= mem[_1254]:
                                revert with 'NH{q', 50
                            mem[_1254 + 32] = address(_1223)
                            if 1 >= mem[_1254]:
                                revert with 'NH{q', 50
                            mem[_1254 + 64] = address(_1243)
                            if block.timestamp > -601:
                                revert with 'NH{q', 17
                            mem[_1254 + 96] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                            mem[_1254 + 100] = s
                            mem[_1254 + 132] = (1000 * _1174) - (_1068 * _1174) / 1000
                            mem[_1254 + 164] = 160
                            mem[_1254 + 260] = mem[_1254]
                            s = 0
                            t = _1254 + 32
                            u = _1254 + 292
                            while s < mem[_1254]:
                                mem[u] = mem[t + 12 len 20]
                                _885 = mem[96]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            mem[_1254 + 196] = this.address
                            mem[_1254 + 228] = block.timestamp + 600
                            require ext_code.size(address(_896))
                            call address(_896).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _1254 + (32 * mem[_1254]) + -mem[64] + 288]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if idx >= mem[96]:
                                revert with 'NH{q', 50
                            _1595 = mem[mem[(32 * idx) + 128] + 96]
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(_1595))
                            staticcall address(_1595).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1642 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1642] == mem[_1642]
                            if idx == -1:
                                revert with 'NH{q', 17
                            _885 = mem[96]
                            idx = idx + 1
                            s = mem[_1642]
                            continue 
                        _1069 = mem[(32 * idx) + _239 + 32]
                        if 1000 < mem[(32 * idx) + _239 + 32]:
                            revert with 'NH{q', 17
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        _1098 = mem[mem[(32 * idx) + 128]]
                        mem[mem[64] + 4] = s
                        mem[mem[64] + 36] = Mask(112, 0, _1030)
                        mem[mem[64] + 68] = Mask(112, 0, _1008)
                        require ext_code.size(address(_1098))
                        staticcall address(_1098).getAmountOut(uint256 arg1, uint256 arg2, uint256 arg3) with:
                                gas gas_remaining wei
                               args s, _1030 << 144, Mask(112, 0, _1008)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1167 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1175 = mem[_1167]
                        require mem[_1167] == mem[_1167]
                        if mem[_1167] and -_1069 + 1000 > -1 / mem[_1167]:
                            revert with 'NH{q', 17
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        _1226 = mem[mem[(32 * idx) + 128] + 64]
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        _1245 = mem[mem[(32 * idx) + 128] + 96]
                        _1255 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        if 0 >= mem[_1255]:
                            revert with 'NH{q', 50
                        mem[_1255 + 32] = address(_1226)
                        if 1 >= mem[_1255]:
                            revert with 'NH{q', 50
                        mem[_1255 + 64] = address(_1245)
                        if block.timestamp > -601:
                            revert with 'NH{q', 17
                        mem[_1255 + 96] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                        mem[_1255 + 100] = s
                        mem[_1255 + 132] = (1000 * _1175) - (_1069 * _1175) / 1000
                        mem[_1255 + 164] = 160
                        mem[_1255 + 260] = mem[_1255]
                        s = 0
                        t = _1255 + 32
                        u = _1255 + 292
                        while s < mem[_1255]:
                            mem[u] = mem[t + 12 len 20]
                            _885 = mem[96]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        mem[_1255 + 196] = this.address
                        mem[_1255 + 228] = block.timestamp + 600
                        require ext_code.size(address(_896))
                        call address(_896).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _1255 + (32 * mem[_1255]) + -mem[64] + 288]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        _1598 = mem[mem[(32 * idx) + 128] + 96]
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(address(_1598))
                        staticcall address(_1598).0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1643 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1643] == mem[_1643]
                        if idx == -1:
                            revert with 'NH{q', 17
                        _885 = mem[96]
                        idx = idx + 1
                        s = mem[_1643]
                        continue 
                    if not mem[mem[(32 * idx) + 128] + 108 len 20]:
                        revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                    require ext_code.size(mem[mem[(32 * idx) + 128] + 44 len 20])
                    staticcall mem[mem[(32 * idx) + 128] + 44 len 20].getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _990 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _1009 = mem[_990]
                    require mem[_990] == mem[_990 + 18 len 14]
                    _1031 = mem[_990 + 32]
                    require mem[_990 + 32] == mem[_990 + 50 len 14]
                    require mem[_990 + 64] == mem[_990 + 92 len 4]
                    if idx >= mem[_239]:
                        revert with 'NH{q', 50
                    if address(_960) == address(_965):
                        _1070 = mem[(32 * idx) + _239 + 32]
                        if 1000 < mem[(32 * idx) + _239 + 32]:
                            revert with 'NH{q', 17
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        _1101 = mem[mem[(32 * idx) + 128]]
                        mem[mem[64] + 4] = s
                        mem[mem[64] + 36] = Mask(112, 0, _1009)
                        mem[mem[64] + 68] = Mask(112, 0, _1031)
                        require ext_code.size(address(_1101))
                        staticcall address(_1101).getAmountOut(uint256 arg1, uint256 arg2, uint256 arg3) with:
                                gas gas_remaining wei
                               args s, _1009 << 144, Mask(112, 0, _1031)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1168 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1176 = mem[_1168]
                        require mem[_1168] == mem[_1168]
                        if mem[_1168] and -_1070 + 1000 > -1 / mem[_1168]:
                            revert with 'NH{q', 17
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        _1229 = mem[mem[(32 * idx) + 128] + 64]
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        _1247 = mem[mem[(32 * idx) + 128] + 96]
                        _1256 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        if 0 >= mem[_1256]:
                            revert with 'NH{q', 50
                        mem[_1256 + 32] = address(_1229)
                        if 1 >= mem[_1256]:
                            revert with 'NH{q', 50
                        mem[_1256 + 64] = address(_1247)
                        if block.timestamp > -601:
                            revert with 'NH{q', 17
                        mem[_1256 + 96] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                        mem[_1256 + 100] = s
                        mem[_1256 + 132] = (1000 * _1176) - (_1070 * _1176) / 1000
                        mem[_1256 + 164] = 160
                        mem[_1256 + 260] = mem[_1256]
                        s = 0
                        t = _1256 + 32
                        u = _1256 + 292
                        while s < mem[_1256]:
                            mem[u] = mem[t + 12 len 20]
                            _885 = mem[96]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        mem[_1256 + 196] = this.address
                        mem[_1256 + 228] = block.timestamp + 600
                        require ext_code.size(address(_896))
                        call address(_896).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _1256 + (32 * mem[_1256]) + -mem[64] + 288]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        _1601 = mem[mem[(32 * idx) + 128] + 96]
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(address(_1601))
                        staticcall address(_1601).0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1644 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1644] == mem[_1644]
                        if idx == -1:
                            revert with 'NH{q', 17
                        _885 = mem[96]
                        idx = idx + 1
                        s = mem[_1644]
                        continue 
                    _1071 = mem[(32 * idx) + _239 + 32]
                    if 1000 < mem[(32 * idx) + _239 + 32]:
                        revert with 'NH{q', 17
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    _1104 = mem[mem[(32 * idx) + 128]]
                    mem[mem[64] + 4] = s
                    mem[mem[64] + 36] = Mask(112, 0, _1031)
                    mem[mem[64] + 68] = Mask(112, 0, _1009)
                    require ext_code.size(address(_1104))
                    staticcall address(_1104).getAmountOut(uint256 arg1, uint256 arg2, uint256 arg3) with:
                            gas gas_remaining wei
                           args s, _1031 << 144, Mask(112, 0, _1009)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1169 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1177 = mem[_1169]
                    require mem[_1169] == mem[_1169]
                    if mem[_1169] and -_1071 + 1000 > -1 / mem[_1169]:
                        revert with 'NH{q', 17
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    _1232 = mem[mem[(32 * idx) + 128] + 64]
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    _1249 = mem[mem[(32 * idx) + 128] + 96]
                    _1257 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    if 0 >= mem[_1257]:
                        revert with 'NH{q', 50
                    mem[_1257 + 32] = address(_1232)
                    if 1 >= mem[_1257]:
                        revert with 'NH{q', 50
                    mem[_1257 + 64] = address(_1249)
                    if block.timestamp > -601:
                        revert with 'NH{q', 17
                    mem[_1257 + 96] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                    mem[_1257 + 100] = s
                    mem[_1257 + 132] = (1000 * _1177) - (_1071 * _1177) / 1000
                    mem[_1257 + 164] = 160
                    mem[_1257 + 260] = mem[_1257]
                    s = 0
                    t = _1257 + 32
                    u = _1257 + 292
                    while s < mem[_1257]:
                        mem[u] = mem[t + 12 len 20]
                        _885 = mem[96]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    mem[_1257 + 196] = this.address
                    mem[_1257 + 228] = block.timestamp + 600
                    require ext_code.size(address(_896))
                    call address(_896).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _1257 + (32 * mem[_1257]) + -mem[64] + 288]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    _1604 = mem[mem[(32 * idx) + 128] + 96]
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(_1604))
                    staticcall address(_1604).0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1645 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1645] == mem[_1645]
                    if idx == -1:
                        revert with 'NH{q', 17
                    _885 = mem[96]
                    idx = idx + 1
                    s = mem[_1645]
                    continue 
                if idx < 1:
                    revert with 'NH{q', 17
                if idx - 1 >= mem[96]:
                    revert with 'NH{q', 50
                require mem[mem[(32 * idx - 1) + 128] + 108 len 20] == mem[mem[(32 * idx) + 128] + 76 len 20]
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                _924 = mem[mem[(32 * idx) + 128]]
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                _930 = mem[mem[(32 * idx) + 128] + 64]
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                mem[mem[64] + 4] = mem[mem[(32 * idx) + 128] + 12 len 20]
                mem[mem[64] + 36] = -1
                require ext_code.size(address(_930))
                call address(_930).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4], -1
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _955 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_955] == bool(mem[_955])
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                _998 = mem[mem[(32 * idx) + 128] + 64]
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                _1005 = mem[mem[(32 * idx) + 128] + 96]
                if mem[mem[(32 * idx) + 128] + 76 len 20] == mem[mem[(32 * idx) + 128] + 108 len 20]:
                    revert with 0, 'UniswapV2Library: IDENTICAL_ADDRESSES'
                if mem[mem[(32 * idx) + 128] + 76 len 20] < mem[mem[(32 * idx) + 128] + 108 len 20]:
                    if not mem[mem[(32 * idx) + 128] + 76 len 20]:
                        revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                    require ext_code.size(mem[mem[(32 * idx) + 128] + 44 len 20])
                    staticcall mem[mem[(32 * idx) + 128] + 44 len 20].getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1034 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _1040 = mem[_1034]
                    require mem[_1034] == mem[_1034 + 18 len 14]
                    _1052 = mem[_1034 + 32]
                    require mem[_1034 + 32] == mem[_1034 + 50 len 14]
                    require mem[_1034 + 64] == mem[_1034 + 92 len 4]
                    if idx >= mem[_239]:
                        revert with 'NH{q', 50
                    if address(_998) == address(_998):
                        _1118 = mem[(32 * idx) + _239 + 32]
                        if 1000 < mem[(32 * idx) + _239 + 32]:
                            revert with 'NH{q', 17
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        _1143 = mem[mem[(32 * idx) + 128]]
                        mem[mem[64] + 4] = s
                        mem[mem[64] + 36] = Mask(112, 0, _1040)
                        mem[mem[64] + 68] = Mask(112, 0, _1052)
                        require ext_code.size(address(_1143))
                        staticcall address(_1143).getAmountOut(uint256 arg1, uint256 arg2, uint256 arg3) with:
                                gas gas_remaining wei
                               args s, _1040 << 144, Mask(112, 0, _1052)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1190 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1198 = mem[_1190]
                        require mem[_1190] == mem[_1190]
                        if mem[_1190] and -_1118 + 1000 > -1 / mem[_1190]:
                            revert with 'NH{q', 17
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        _1295 = mem[mem[(32 * idx) + 128] + 64]
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        _1315 = mem[mem[(32 * idx) + 128] + 96]
                        _1326 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        if 0 >= mem[_1326]:
                            revert with 'NH{q', 50
                        mem[_1326 + 32] = address(_1295)
                        if 1 >= mem[_1326]:
                            revert with 'NH{q', 50
                        mem[_1326 + 64] = address(_1315)
                        if block.timestamp > -601:
                            revert with 'NH{q', 17
                        mem[_1326 + 96] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                        mem[_1326 + 100] = s
                        mem[_1326 + 132] = (1000 * _1198) - (_1118 * _1198) / 1000
                        mem[_1326 + 164] = 160
                        mem[_1326 + 260] = mem[_1326]
                        s = 0
                        t = _1326 + 32
                        u = _1326 + 292
                        while s < mem[_1326]:
                            mem[u] = mem[t + 12 len 20]
                            _885 = mem[96]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        mem[_1326 + 196] = this.address
                        mem[_1326 + 228] = block.timestamp + 600
                        require ext_code.size(address(_924))
                        call address(_924).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _1326 + (32 * mem[_1326]) + -mem[64] + 288]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        _1607 = mem[mem[(32 * idx) + 128] + 96]
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(address(_1607))
                        staticcall address(_1607).0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1646 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1646] == mem[_1646]
                        if idx == -1:
                            revert with 'NH{q', 17
                        _885 = mem[96]
                        idx = idx + 1
                        s = mem[_1646]
                        continue 
                    _1119 = mem[(32 * idx) + _239 + 32]
                    if 1000 < mem[(32 * idx) + _239 + 32]:
                        revert with 'NH{q', 17
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    _1146 = mem[mem[(32 * idx) + 128]]
                    mem[mem[64] + 4] = s
                    mem[mem[64] + 36] = Mask(112, 0, _1052)
                    mem[mem[64] + 68] = Mask(112, 0, _1040)
                    require ext_code.size(address(_1146))
                    staticcall address(_1146).getAmountOut(uint256 arg1, uint256 arg2, uint256 arg3) with:
                            gas gas_remaining wei
                           args s, _1052 << 144, Mask(112, 0, _1040)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1191 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1199 = mem[_1191]
                    require mem[_1191] == mem[_1191]
                    if mem[_1191] and -_1119 + 1000 > -1 / mem[_1191]:
                        revert with 'NH{q', 17
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    _1298 = mem[mem[(32 * idx) + 128] + 64]
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    _1317 = mem[mem[(32 * idx) + 128] + 96]
                    _1327 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    if 0 >= mem[_1327]:
                        revert with 'NH{q', 50
                    mem[_1327 + 32] = address(_1298)
                    if 1 >= mem[_1327]:
                        revert with 'NH{q', 50
                    mem[_1327 + 64] = address(_1317)
                    if block.timestamp > -601:
                        revert with 'NH{q', 17
                    mem[_1327 + 96] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                    mem[_1327 + 100] = s
                    mem[_1327 + 132] = (1000 * _1199) - (_1119 * _1199) / 1000
                    mem[_1327 + 164] = 160
                    mem[_1327 + 260] = mem[_1327]
                    s = 0
                    t = _1327 + 32
                    u = _1327 + 292
                    while s < mem[_1327]:
                        mem[u] = mem[t + 12 len 20]
                        _885 = mem[96]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    mem[_1327 + 196] = this.address
                    mem[_1327 + 228] = block.timestamp + 600
                    require ext_code.size(address(_924))
                    call address(_924).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _1327 + (32 * mem[_1327]) + -mem[64] + 288]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    _1610 = mem[mem[(32 * idx) + 128] + 96]
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(_1610))
                    staticcall address(_1610).0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1647 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1647] == mem[_1647]
                    if idx == -1:
                        revert with 'NH{q', 17
                    _885 = mem[96]
                    idx = idx + 1
                    s = mem[_1647]
                    continue 
                if not mem[mem[(32 * idx) + 128] + 108 len 20]:
                    revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                require ext_code.size(mem[mem[(32 * idx) + 128] + 44 len 20])
                staticcall mem[mem[(32 * idx) + 128] + 44 len 20].getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1035 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _1041 = mem[_1035]
                require mem[_1035] == mem[_1035 + 18 len 14]
                _1053 = mem[_1035 + 32]
                require mem[_1035 + 32] == mem[_1035 + 50 len 14]
                require mem[_1035 + 64] == mem[_1035 + 92 len 4]
                if idx >= mem[_239]:
                    revert with 'NH{q', 50
                if address(_998) == address(_1005):
                    _1120 = mem[(32 * idx) + _239 + 32]
                    if 1000 < mem[(32 * idx) + _239 + 32]:
                        revert with 'NH{q', 17
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    _1149 = mem[mem[(32 * idx) + 128]]
                    mem[mem[64] + 4] = s
                    mem[mem[64] + 36] = Mask(112, 0, _1041)
                    mem[mem[64] + 68] = Mask(112, 0, _1053)
                    require ext_code.size(address(_1149))
                    staticcall address(_1149).getAmountOut(uint256 arg1, uint256 arg2, uint256 arg3) with:
                            gas gas_remaining wei
                           args s, _1041 << 144, Mask(112, 0, _1053)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1192 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1200 = mem[_1192]
                    require mem[_1192] == mem[_1192]
                    if mem[_1192] and -_1120 + 1000 > -1 / mem[_1192]:
                        revert with 'NH{q', 17
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    _1301 = mem[mem[(32 * idx) + 128] + 64]
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    _1319 = mem[mem[(32 * idx) + 128] + 96]
                    _1328 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    if 0 >= mem[_1328]:
                        revert with 'NH{q', 50
                    mem[_1328 + 32] = address(_1301)
                    if 1 >= mem[_1328]:
                        revert with 'NH{q', 50
                    mem[_1328 + 64] = address(_1319)
                    if block.timestamp > -601:
                        revert with 'NH{q', 17
                    mem[_1328 + 96] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                    mem[_1328 + 100] = s
                    mem[_1328 + 132] = (1000 * _1200) - (_1120 * _1200) / 1000
                    mem[_1328 + 164] = 160
                    mem[_1328 + 260] = mem[_1328]
                    s = 0
                    t = _1328 + 32
                    u = _1328 + 292
                    while s < mem[_1328]:
                        mem[u] = mem[t + 12 len 20]
                        _885 = mem[96]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    mem[_1328 + 196] = this.address
                    mem[_1328 + 228] = block.timestamp + 600
                    require ext_code.size(address(_924))
                    call address(_924).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _1328 + (32 * mem[_1328]) + -mem[64] + 288]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    _1613 = mem[mem[(32 * idx) + 128] + 96]
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(_1613))
                    staticcall address(_1613).0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1648 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1648] == mem[_1648]
                    if idx == -1:
                        revert with 'NH{q', 17
                    _885 = mem[96]
                    idx = idx + 1
                    s = mem[_1648]
                    continue 
                _1121 = mem[(32 * idx) + _239 + 32]
                if 1000 < mem[(32 * idx) + _239 + 32]:
                    revert with 'NH{q', 17
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                _1152 = mem[mem[(32 * idx) + 128]]
                mem[mem[64] + 4] = s
                mem[mem[64] + 36] = Mask(112, 0, _1053)
                mem[mem[64] + 68] = Mask(112, 0, _1041)
                require ext_code.size(address(_1152))
                staticcall address(_1152).getAmountOut(uint256 arg1, uint256 arg2, uint256 arg3) with:
                        gas gas_remaining wei
                       args s, _1053 << 144, Mask(112, 0, _1041)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1193 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1201 = mem[_1193]
                require mem[_1193] == mem[_1193]
                if mem[_1193] and -_1121 + 1000 > -1 / mem[_1193]:
                    revert with 'NH{q', 17
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                _1304 = mem[mem[(32 * idx) + 128] + 64]
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                _1321 = mem[mem[(32 * idx) + 128] + 96]
                _1329 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                if 0 >= mem[_1329]:
                    revert with 'NH{q', 50
                mem[_1329 + 32] = address(_1304)
                if 1 >= mem[_1329]:
                    revert with 'NH{q', 50
                mem[_1329 + 64] = address(_1321)
                if block.timestamp > -601:
                    revert with 'NH{q', 17
                mem[_1329 + 96] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                mem[_1329 + 100] = s
                mem[_1329 + 132] = (1000 * _1201) - (_1121 * _1201) / 1000
                mem[_1329 + 164] = 160
                mem[_1329 + 260] = mem[_1329]
                s = 0
                t = _1329 + 32
                u = _1329 + 292
                while s < mem[_1329]:
                    mem[u] = mem[t + 12 len 20]
                    _885 = mem[96]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                mem[_1329 + 196] = this.address
                mem[_1329 + 228] = block.timestamp + 600
                require ext_code.size(address(_924))
                call address(_924).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _1329 + (32 * mem[_1329]) + -mem[64] + 288]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                _1616 = mem[mem[(32 * idx) + 128] + 96]
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(_1616))
                staticcall address(_1616).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1649 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1649] == mem[_1649]
                if idx == -1:
                    revert with 'NH{q', 17
                _885 = mem[96]
                idx = idx + 1
                s = mem[_1649]
                continue 
}



}
