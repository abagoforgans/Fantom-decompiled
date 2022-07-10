contract main {




// =====================  Runtime code  =====================


#
#  - sub_00d79885(?)
#  - elkCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4)
#  - definixCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4)
#  - polyZapCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4)
#  - uniswapV2Call(address arg1, uint256 arg2, uint256 arg3, bytes arg4)
#  - babyCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4)
#  - sub_1750699e(?)
#  - sub_1b4dd2e9(?)
#  - pantherCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4)
#  - sub_1c9f2b97(?)
#  - polydexCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4)
#  - sub_21aa670e(?)
#  - hswapV2Call(address arg1, uint256 arg2, uint256 arg3, bytes arg4)
#  - sub_29a9cf88(?)
#  - sub_2b2fd72c(?)
#  - sub_39815037(?)
#  - sub_3b1365d8(?)
#  - jetswapCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4)
#  - sub_40c77747(?)
#  - wardenCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4)
#  - waultSwapCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4)
#  - sub_48639c9d(?)
#  - sub_48c5b27e(?)
#  - cheeseswapCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4)
#  - BiswapCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4)
#  - sub_5c629f0f(?)
#  - sub_61987d16(?)
#  - sub_6869d63c(?)
#  - coinswapCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4)
#  - BSCswapCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4)
#  - sub_783a23b3(?)
#  - pancakeCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4)
#  - sub_8955316a(?)
#  - zeroCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4)
#  - sub_9955d5b1(?)
#  - sub_9b6dda6e(?)
#  - sub_b48bd9a4(?)
#  - sub_b9103bf3(?)
#  - sub_bb4d259f(?)
#  - apeCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4)
#  - sub_c0dfa316(?)
#  - shibaCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4)
#  - ThugswapCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4)
#  - sub_cdc84872(?)
#  - sub_ce9c412e(?)
#  - sub_d053452f(?)
#  - sub_e0d4e83d(?)
#  - cafeCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4)
#  - planetCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4)
#  - sub_f05ffd30(?)
#  - sub_f17194aa(?)
#  - sub_fd5cc49d(?)
#  - sub_fdb610cd(?)
#
mapping of uint8 stor0;

function operators(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor0[arg1])
}

function _fallback() payable {
    revert
}

function operator(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor0[address(msg.sender)]:
        stor0[address(arg1)] = 1
}

function withdraw(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor0[address(msg.sender)]:
        require ext_code.size(arg1)
        staticcall arg1.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        require ext_code.size(arg1)
        call arg1.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_735bed27(?) payable {
    require calldata.size - 4 >= 128
    require cd[4] == cd[4]
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    require ('cd', 68).length <= test266151307()
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    require cd[100] <= test266151307()
    require cd[100] + 35 < calldata.size
    require ('cd', 100).length <= test266151307()
    require cd[100] + (32 * ('cd', 100).length) + 36 <= calldata.size
    if ('cd', 36).length > test266151307():
        revert with 'NH{q', 65
    mem[96] = ('cd', 36).length
    mem[64] = (32 * ('cd', 36).length) + 128
    if not ('cd', 36).length:
        if 0 < ('cd', 36).length:
            mem[128] = cd[4]
            if ('cd', 36).length < 1:
                revert with 'NH{q', 17
            if var192002 >= ('cd', 36).length - 1:
                mem[(32 * ('cd', 36).length) + 128] = 32
                mem[(32 * ('cd', 36).length) + 160] = ('cd', 36).length
                mem[(32 * ('cd', 36).length) + 192 len 32 * ('cd', 36).length] = mem[128 len 32 * ('cd', 36).length]
                return memory
                  from (32 * ('cd', 36).length) + 128
                   len (96 * ('cd', 36).length) + 64
            if var194001 < ('cd', 36).length:
                require cd[((32 * var194001) + cd[36] + 36)] == address(cd[((32 * var194001) + cd[36] + 36)])
                s = var194001
                idx = var194001
                while idx < ('cd', 68).length:
                    require cd[((32 * idx) + cd[68] + 36)] == address(cd[((32 * idx) + cd[68] + 36)])
                    if idx > -2:
                        revert with 'NH{q', 17
                    if idx + 1 >= ('cd', 68).length:
                        revert with 'NH{q', 50
                    require cd[((32 * idx + 1) + cd[68] + 36)] == address(cd[((32 * idx + 1) + cd[68] + 36)])
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    _386 = mem[(32 * idx) + 128]
                    if idx >= ('cd', 100).length:
                        revert with 'NH{q', 50
                    require ext_code.size(address(cd[((32 * s) + cd[36] + 36)]))
                    staticcall address(cd[((32 * s) + cd[36] + 36)]).getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _392 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    require mem[_392] == mem[_392 + 18 len 14]
                    require mem[_392 + 32] == mem[_392 + 50 len 14]
                    require mem[_392 + 64] == mem[_392 + 92 len 4]
                    if 10000 < cd[((32 * idx) + cd[100] + 36)]:
                        revert with 'NH{q', 17
                    if _386 and -cd[((32 * idx) + cd[100] + 36)] + 10000 > -1 / _386:
                        revert with 'NH{q', 17
                    if address(cd[((32 * idx) + cd[68] + 36)]) < address(cd[((32 * idx + 1) + cd[68] + 36)]):
                        if address(cd[((32 * idx) + cd[68] + 36)]) == address(cd[((32 * idx) + cd[68] + 36)]):
                            if (10000 * _386) - (cd[((32 * idx) + cd[100] + 36)] * _386) and mem[_392 + 50 len 14] > -1 / (10000 * _386) - (cd[((32 * idx) + cd[100] + 36)] * _386):
                                revert with 'NH{q', 17
                            if mem[_392 + 18 len 14] and 10000 > -1 / mem[_392 + 18 len 14]:
                                revert with 'NH{q', 17
                            if 10000 * mem[_392 + 18 len 14] > (-10000 * _386) + (cd[((32 * idx) + cd[100] + 36)] * _386) - 1:
                                revert with 'NH{q', 17
                            if not (10000 * mem[_392 + 18 len 14]) + (10000 * _386) - (cd[((32 * idx) + cd[100] + 36)] * _386):
                                revert with 'NH{q', 18
                            if idx > -2:
                                revert with 'NH{q', 17
                            if idx + 1 >= mem[96]:
                                revert with 'NH{q', 50
                            mem[(32 * idx + 1) + 128] = (10000 * _386 * mem[_392 + 50 len 14]) - (cd[((32 * idx) + cd[100] + 36)] * _386 * mem[_392 + 50 len 14]) / (10000 * mem[_392 + 18 len 14]) + (10000 * _386) - (cd[((32 * idx) + cd[100] + 36)] * _386)
                            if idx == -1:
                                revert with 'NH{q', 17
                            if ('cd', 36).length < 1:
                                revert with 'NH{q', 17
                            if idx + 1 < ('cd', 36).length - 1:
                                require cd[((32 * idx + 2) + cd[36] + 36)] == address(cd[((32 * idx + 2) + cd[36] + 36)])
                                s = idx + 1
                                idx = idx + 1
                                continue 
                            _408 = mem[64]
                            mem[mem[64]] = 32
                            _416 = mem[96]
                            mem[mem[64] + 32] = mem[96]
                            idx = 0
                            t = 128
                            u = mem[64] + 64
                            while idx < _416:
                                mem[u] = mem[t]
                                require cd[((32 * s) + cd[36] + 36)] == address(cd[((32 * s) + cd[36] + 36)])
                                idx = idx + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            return memory
                              from mem[64]
                               len _408 + (32 * _416) + -mem[64] + 64
                        if (10000 * _386) - (cd[((32 * idx) + cd[100] + 36)] * _386) and mem[_392 + 18 len 14] > -1 / (10000 * _386) - (cd[((32 * idx) + cd[100] + 36)] * _386):
                            revert with 'NH{q', 17
                        if mem[_392 + 50 len 14] and 10000 > -1 / mem[_392 + 50 len 14]:
                            revert with 'NH{q', 17
                        if 10000 * mem[_392 + 50 len 14] > (-10000 * _386) + (cd[((32 * idx) + cd[100] + 36)] * _386) - 1:
                            revert with 'NH{q', 17
                        if not (10000 * mem[_392 + 50 len 14]) + (10000 * _386) - (cd[((32 * idx) + cd[100] + 36)] * _386):
                            revert with 'NH{q', 18
                        if idx > -2:
                            revert with 'NH{q', 17
                        if idx + 1 >= mem[96]:
                            revert with 'NH{q', 50
                        mem[(32 * idx + 1) + 128] = (10000 * _386 * mem[_392 + 18 len 14]) - (cd[((32 * idx) + cd[100] + 36)] * _386 * mem[_392 + 18 len 14]) / (10000 * mem[_392 + 50 len 14]) + (10000 * _386) - (cd[((32 * idx) + cd[100] + 36)] * _386)
                        if idx == -1:
                            revert with 'NH{q', 17
                        if ('cd', 36).length < 1:
                            revert with 'NH{q', 17
                        if idx + 1 < ('cd', 36).length - 1:
                            require cd[((32 * idx + 2) + cd[36] + 36)] == address(cd[((32 * idx + 2) + cd[36] + 36)])
                            s = idx + 1
                            idx = idx + 1
                            continue 
                        _409 = mem[64]
                        mem[mem[64]] = 32
                        _417 = mem[96]
                        mem[mem[64] + 32] = mem[96]
                        idx = 0
                        t = 128
                        u = mem[64] + 64
                        while idx < _417:
                            mem[u] = mem[t]
                            require cd[((32 * s) + cd[36] + 36)] == address(cd[((32 * s) + cd[36] + 36)])
                            idx = idx + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        return memory
                          from mem[64]
                           len _409 + (32 * _417) + -mem[64] + 64
                    if address(cd[((32 * idx) + cd[68] + 36)]) == address(cd[((32 * idx + 1) + cd[68] + 36)]):
                        if (10000 * _386) - (cd[((32 * idx) + cd[100] + 36)] * _386) and mem[_392 + 50 len 14] > -1 / (10000 * _386) - (cd[((32 * idx) + cd[100] + 36)] * _386):
                            revert with 'NH{q', 17
                        if mem[_392 + 18 len 14] and 10000 > -1 / mem[_392 + 18 len 14]:
                            revert with 'NH{q', 17
                        if 10000 * mem[_392 + 18 len 14] > (-10000 * _386) + (cd[((32 * idx) + cd[100] + 36)] * _386) - 1:
                            revert with 'NH{q', 17
                        if not (10000 * mem[_392 + 18 len 14]) + (10000 * _386) - (cd[((32 * idx) + cd[100] + 36)] * _386):
                            revert with 'NH{q', 18
                        if idx > -2:
                            revert with 'NH{q', 17
                        if idx + 1 >= mem[96]:
                            revert with 'NH{q', 50
                        mem[(32 * idx + 1) + 128] = (10000 * _386 * mem[_392 + 50 len 14]) - (cd[((32 * idx) + cd[100] + 36)] * _386 * mem[_392 + 50 len 14]) / (10000 * mem[_392 + 18 len 14]) + (10000 * _386) - (cd[((32 * idx) + cd[100] + 36)] * _386)
                        if idx == -1:
                            revert with 'NH{q', 17
                        if ('cd', 36).length < 1:
                            revert with 'NH{q', 17
                        if idx + 1 < ('cd', 36).length - 1:
                            require cd[((32 * idx + 2) + cd[36] + 36)] == address(cd[((32 * idx + 2) + cd[36] + 36)])
                            s = idx + 1
                            idx = idx + 1
                            continue 
                        _410 = mem[64]
                        mem[mem[64]] = 32
                        _418 = mem[96]
                        mem[mem[64] + 32] = mem[96]
                        idx = 0
                        t = 128
                        u = mem[64] + 64
                        while idx < mem[96]:
                            mem[u] = mem[t]
                            require cd[((32 * s) + cd[36] + 36)] == address(cd[((32 * s) + cd[36] + 36)])
                            idx = idx + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        return memory
                          from mem[64]
                           len _410 + (32 * _418) + -mem[64] + 64
                    if (10000 * _386) - (cd[((32 * idx) + cd[100] + 36)] * _386) and mem[_392 + 18 len 14] > -1 / (10000 * _386) - (cd[((32 * idx) + cd[100] + 36)] * _386):
                        revert with 'NH{q', 17
                    if mem[_392 + 50 len 14] and 10000 > -1 / mem[_392 + 50 len 14]:
                        revert with 'NH{q', 17
                    if 10000 * mem[_392 + 50 len 14] > (-10000 * _386) + (cd[((32 * idx) + cd[100] + 36)] * _386) - 1:
                        revert with 'NH{q', 17
                    if not (10000 * mem[_392 + 50 len 14]) + (10000 * _386) - (cd[((32 * idx) + cd[100] + 36)] * _386):
                        revert with 'NH{q', 18
                    if idx > -2:
                        revert with 'NH{q', 17
                    if idx + 1 >= mem[96]:
                        revert with 'NH{q', 50
                    mem[(32 * idx + 1) + 128] = (10000 * _386 * mem[_392 + 18 len 14]) - (cd[((32 * idx) + cd[100] + 36)] * _386 * mem[_392 + 18 len 14]) / (10000 * mem[_392 + 50 len 14]) + (10000 * _386) - (cd[((32 * idx) + cd[100] + 36)] * _386)
                    if idx == -1:
                        revert with 'NH{q', 17
                    if ('cd', 36).length < 1:
                        revert with 'NH{q', 17
                    if idx + 1 < ('cd', 36).length - 1:
                        require cd[((32 * idx + 2) + cd[36] + 36)] == address(cd[((32 * idx + 2) + cd[36] + 36)])
                        s = idx + 1
                        idx = idx + 1
                        continue 
                    _411 = mem[64]
                    mem[mem[64]] = 32
                    _419 = mem[96]
                    mem[mem[64] + 32] = mem[96]
                    idx = 0
                    t = 128
                    u = mem[64] + 64
                    while idx < mem[96]:
                        mem[u] = mem[t]
                        require cd[((32 * s) + cd[36] + 36)] == address(cd[((32 * s) + cd[36] + 36)])
                        idx = idx + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    return memory
                      from mem[64]
                       len _411 + (32 * _419) + -mem[64] + 64
    else:
        mem[128 len 32 * ('cd', 36).length] = call.data[calldata.size len 32 * ('cd', 36).length]
        if 0 < ('cd', 36).length:
            mem[128] = cd[4]
            if ('cd', 36).length < 1:
                revert with 'NH{q', 17
            if var193002 >= ('cd', 36).length - 1:
                mem[(32 * ('cd', 36).length) + 128] = 32
                mem[(32 * ('cd', 36).length) + 160] = ('cd', 36).length
                mem[(32 * ('cd', 36).length) + 192 len 32 * ('cd', 36).length] = mem[128 len 32 * ('cd', 36).length]
                return memory
                  from (32 * ('cd', 36).length) + 128
                   len (96 * ('cd', 36).length) + 64
            if var195001 < ('cd', 36).length:
                require cd[((32 * var195001) + cd[36] + 36)] == address(cd[((32 * var195001) + cd[36] + 36)])
                s = var195001
                idx = var195001
                while idx < ('cd', 68).length:
                    require cd[((32 * idx) + cd[68] + 36)] == address(cd[((32 * idx) + cd[68] + 36)])
                    if idx > -2:
                        revert with 'NH{q', 17
                    if idx + 1 >= ('cd', 68).length:
                        revert with 'NH{q', 50
                    require cd[((32 * idx + 1) + cd[68] + 36)] == address(cd[((32 * idx + 1) + cd[68] + 36)])
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    _387 = mem[(32 * idx) + 128]
                    if idx >= ('cd', 100).length:
                        revert with 'NH{q', 50
                    require ext_code.size(address(cd[((32 * s) + cd[36] + 36)]))
                    staticcall address(cd[((32 * s) + cd[36] + 36)]).getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _393 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    require mem[_393] == mem[_393 + 18 len 14]
                    require mem[_393 + 32] == mem[_393 + 50 len 14]
                    require mem[_393 + 64] == mem[_393 + 92 len 4]
                    if 10000 < cd[((32 * idx) + cd[100] + 36)]:
                        revert with 'NH{q', 17
                    if _387 and -cd[((32 * idx) + cd[100] + 36)] + 10000 > -1 / _387:
                        revert with 'NH{q', 17
                    if address(cd[((32 * idx) + cd[68] + 36)]) < address(cd[((32 * idx + 1) + cd[68] + 36)]):
                        if address(cd[((32 * idx) + cd[68] + 36)]) == address(cd[((32 * idx) + cd[68] + 36)]):
                            if (10000 * _387) - (cd[((32 * idx) + cd[100] + 36)] * _387) and mem[_393 + 50 len 14] > -1 / (10000 * _387) - (cd[((32 * idx) + cd[100] + 36)] * _387):
                                revert with 'NH{q', 17
                            if mem[_393 + 18 len 14] and 10000 > -1 / mem[_393 + 18 len 14]:
                                revert with 'NH{q', 17
                            if 10000 * mem[_393 + 18 len 14] > (-10000 * _387) + (cd[((32 * idx) + cd[100] + 36)] * _387) - 1:
                                revert with 'NH{q', 17
                            if not (10000 * mem[_393 + 18 len 14]) + (10000 * _387) - (cd[((32 * idx) + cd[100] + 36)] * _387):
                                revert with 'NH{q', 18
                            if idx > -2:
                                revert with 'NH{q', 17
                            if idx + 1 >= mem[96]:
                                revert with 'NH{q', 50
                            mem[(32 * idx + 1) + 128] = (10000 * _387 * mem[_393 + 50 len 14]) - (cd[((32 * idx) + cd[100] + 36)] * _387 * mem[_393 + 50 len 14]) / (10000 * mem[_393 + 18 len 14]) + (10000 * _387) - (cd[((32 * idx) + cd[100] + 36)] * _387)
                            if idx == -1:
                                revert with 'NH{q', 17
                            if ('cd', 36).length < 1:
                                revert with 'NH{q', 17
                            if idx + 1 < ('cd', 36).length - 1:
                                require cd[((32 * idx + 2) + cd[36] + 36)] == address(cd[((32 * idx + 2) + cd[36] + 36)])
                                s = idx + 1
                                idx = idx + 1
                                continue 
                            _412 = mem[64]
                            mem[mem[64]] = 32
                            _420 = mem[96]
                            mem[mem[64] + 32] = mem[96]
                            idx = 0
                            t = 128
                            u = mem[64] + 64
                            while idx < mem[96]:
                                mem[u] = mem[t]
                                require cd[((32 * s) + cd[36] + 36)] == address(cd[((32 * s) + cd[36] + 36)])
                                idx = idx + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            return memory
                              from mem[64]
                               len _412 + (32 * _420) + -mem[64] + 64
                        if (10000 * _387) - (cd[((32 * idx) + cd[100] + 36)] * _387) and mem[_393 + 18 len 14] > -1 / (10000 * _387) - (cd[((32 * idx) + cd[100] + 36)] * _387):
                            revert with 'NH{q', 17
                        if mem[_393 + 50 len 14] and 10000 > -1 / mem[_393 + 50 len 14]:
                            revert with 'NH{q', 17
                        if 10000 * mem[_393 + 50 len 14] > (-10000 * _387) + (cd[((32 * idx) + cd[100] + 36)] * _387) - 1:
                            revert with 'NH{q', 17
                        if not (10000 * mem[_393 + 50 len 14]) + (10000 * _387) - (cd[((32 * idx) + cd[100] + 36)] * _387):
                            revert with 'NH{q', 18
                        if idx > -2:
                            revert with 'NH{q', 17
                        if idx + 1 >= mem[96]:
                            revert with 'NH{q', 50
                        mem[(32 * idx + 1) + 128] = (10000 * _387 * mem[_393 + 18 len 14]) - (cd[((32 * idx) + cd[100] + 36)] * _387 * mem[_393 + 18 len 14]) / (10000 * mem[_393 + 50 len 14]) + (10000 * _387) - (cd[((32 * idx) + cd[100] + 36)] * _387)
                        if idx == -1:
                            revert with 'NH{q', 17
                        if ('cd', 36).length < 1:
                            revert with 'NH{q', 17
                        if idx + 1 < ('cd', 36).length - 1:
                            require cd[((32 * idx + 2) + cd[36] + 36)] == address(cd[((32 * idx + 2) + cd[36] + 36)])
                            s = idx + 1
                            idx = idx + 1
                            continue 
                        _413 = mem[64]
                        mem[mem[64]] = 32
                        _421 = mem[96]
                        mem[mem[64] + 32] = mem[96]
                        idx = 0
                        t = 128
                        u = mem[64] + 64
                        while idx < _421:
                            mem[u] = mem[t]
                            require cd[((32 * s) + cd[36] + 36)] == address(cd[((32 * s) + cd[36] + 36)])
                            idx = idx + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        return memory
                          from mem[64]
                           len _413 + (32 * _421) + -mem[64] + 64
                    if address(cd[((32 * idx) + cd[68] + 36)]) == address(cd[((32 * idx + 1) + cd[68] + 36)]):
                        if (10000 * _387) - (cd[((32 * idx) + cd[100] + 36)] * _387) and mem[_393 + 50 len 14] > -1 / (10000 * _387) - (cd[((32 * idx) + cd[100] + 36)] * _387):
                            revert with 'NH{q', 17
                        if mem[_393 + 18 len 14] and 10000 > -1 / mem[_393 + 18 len 14]:
                            revert with 'NH{q', 17
                        if 10000 * mem[_393 + 18 len 14] > (-10000 * _387) + (cd[((32 * idx) + cd[100] + 36)] * _387) - 1:
                            revert with 'NH{q', 17
                        if not (10000 * mem[_393 + 18 len 14]) + (10000 * _387) - (cd[((32 * idx) + cd[100] + 36)] * _387):
                            revert with 'NH{q', 18
                        if idx > -2:
                            revert with 'NH{q', 17
                        if idx + 1 >= mem[96]:
                            revert with 'NH{q', 50
                        mem[(32 * idx + 1) + 128] = (10000 * _387 * mem[_393 + 50 len 14]) - (cd[((32 * idx) + cd[100] + 36)] * _387 * mem[_393 + 50 len 14]) / (10000 * mem[_393 + 18 len 14]) + (10000 * _387) - (cd[((32 * idx) + cd[100] + 36)] * _387)
                        if idx == -1:
                            revert with 'NH{q', 17
                        if ('cd', 36).length < 1:
                            revert with 'NH{q', 17
                        if idx + 1 < ('cd', 36).length - 1:
                            require cd[((32 * idx + 2) + cd[36] + 36)] == address(cd[((32 * idx + 2) + cd[36] + 36)])
                            s = idx + 1
                            idx = idx + 1
                            continue 
                        _414 = mem[64]
                        mem[mem[64]] = 32
                        _422 = mem[96]
                        mem[mem[64] + 32] = mem[96]
                        idx = 0
                        t = 128
                        u = mem[64] + 64
                        while idx < mem[96]:
                            mem[u] = mem[t]
                            require cd[((32 * s) + cd[36] + 36)] == address(cd[((32 * s) + cd[36] + 36)])
                            idx = idx + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        return memory
                          from mem[64]
                           len _414 + (32 * _422) + -mem[64] + 64
                    if (10000 * _387) - (cd[((32 * idx) + cd[100] + 36)] * _387) and mem[_393 + 18 len 14] > -1 / (10000 * _387) - (cd[((32 * idx) + cd[100] + 36)] * _387):
                        revert with 'NH{q', 17
                    if mem[_393 + 50 len 14] and 10000 > -1 / mem[_393 + 50 len 14]:
                        revert with 'NH{q', 17
                    if 10000 * mem[_393 + 50 len 14] > (-10000 * _387) + (cd[((32 * idx) + cd[100] + 36)] * _387) - 1:
                        revert with 'NH{q', 17
                    if not (10000 * mem[_393 + 50 len 14]) + (10000 * _387) - (cd[((32 * idx) + cd[100] + 36)] * _387):
                        revert with 'NH{q', 18
                    if idx > -2:
                        revert with 'NH{q', 17
                    if idx + 1 >= mem[96]:
                        revert with 'NH{q', 50
                    mem[(32 * idx + 1) + 128] = (10000 * _387 * mem[_393 + 18 len 14]) - (cd[((32 * idx) + cd[100] + 36)] * _387 * mem[_393 + 18 len 14]) / (10000 * mem[_393 + 50 len 14]) + (10000 * _387) - (cd[((32 * idx) + cd[100] + 36)] * _387)
                    if idx == -1:
                        revert with 'NH{q', 17
                    if ('cd', 36).length < 1:
                        revert with 'NH{q', 17
                    if idx + 1 < ('cd', 36).length - 1:
                        require cd[((32 * idx + 2) + cd[36] + 36)] == address(cd[((32 * idx + 2) + cd[36] + 36)])
                        s = idx + 1
                        idx = idx + 1
                        continue 
                    _415 = mem[64]
                    mem[mem[64]] = 32
                    _423 = mem[96]
                    mem[mem[64] + 32] = mem[96]
                    idx = 0
                    t = 128
                    u = mem[64] + 64
                    while idx < _423:
                        mem[u] = mem[t]
                        require cd[((32 * s) + cd[36] + 36)] == address(cd[((32 * s) + cd[36] + 36)])
                        idx = idx + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    return memory
                      from mem[64]
                       len _415 + (32 * _423) + -mem[64] + 64
    revert with 'NH{q', 50
}



}
