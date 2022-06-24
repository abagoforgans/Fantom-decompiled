contract main {




// =====================  Runtime code  =====================


uint256 stor0;

function _fallback() payable {
    revert
}

function sub_c815806d(?) payable {
    require calldata.size - 4 >= 128
    require cd[4] == address(cd[4])
    require cd[36] == address(cd[36])
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    require ('cd', 68).length <= test266151307()
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    mem[96] = 2
    mem[128] = address(cd[4])
    mem[160] = address(cd[36])
    mem[192] = 2
    mem[64] = 288
    mem[224] = address(cd[36])
    mem[256] = address(cd[4])
    idx = 0
    s = 0
    t = 0
    while idx < ('cd', 68).length:
        require cd[((32 * idx) + cd[68] + 36)] == address(cd[((32 * idx) + cd[68] + 36)])
        mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = msg.value
        mem[mem[64] + 36] = 64
        mem[mem[64] + 68] = mem[96]
        u = 0
        v = 128
        w = mem[64] + 100
        while u < mem[96]:
            mem[w] = mem[v + 12 len 20]
            u = u + 1
            v = v + 32
            w = w + 32
            continue 
        require ext_code.size(address(cd[((32 * idx) + cd[68] + 36)]))
        staticcall address(cd[((32 * idx) + cd[68] + 36)]).getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args msg.value, 64, mem[mem[64] + 68 len (32 * mem[96]) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1310 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _1311 = mem[_1310]
        require mem[_1310] <= test266151307()
        require _1310 + mem[_1310] + 31 < _1310 + return_data.size
        _1313 = mem[_1310 + mem[_1310]]
        if mem[_1310 + mem[_1310]] > test266151307():
            revert with 0, 65
        if _1310 + ceil32(return_data.size) + ceil32(32 * mem[_1310 + mem[_1310]]) + 1 > test266151307() or ceil32(32 * mem[_1310 + mem[_1310]]) + 1 < 0:
            revert with 0, 65
        mem[64] = _1310 + ceil32(return_data.size) + ceil32(32 * mem[_1310 + mem[_1310]]) + 1
        mem[_1310 + ceil32(return_data.size)] = _1313
        require return_data.size >= _1311 + (32 * _1313) + 32
        v = _1310 + _1311 + 32
        w = _1310 + ceil32(return_data.size) + 32
        u = 0
        while u < _1313:
            mem[w] = mem[v]
            v = v + 32
            w = w + 32
            u = u + 1
            continue 
        if 1 >= _1313:
            revert with 0, 50
        if mem[_1310 + ceil32(return_data.size) + 64] <= s:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s
            t = t
            continue 
        if idx >= ('cd', 68).length:
            revert with 0, 50
        require cd[((32 * idx) + cd[68] + 36)] == address(cd[((32 * idx) + cd[68] + 36)])
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = mem[_1310 + ceil32(return_data.size) + 64]
        t = cd[((32 * idx) + cd[68] + 36)]
        continue 
    u = 0
    v = 0
    w = 0
    while u < ('cd', 68).length:
        require cd[((32 * u) + cd[68] + 36)] == address(cd[((32 * u) + cd[68] + 36)])
        mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = s
        mem[mem[64] + 36] = 64
        _1314 = mem[192]
        mem[mem[64] + 68] = mem[192]
        idx = 0
        t = 224
        x = mem[64] + 100
        while idx < _1314:
            mem[x] = mem[t + 12 len 20]
            idx = idx + 1
            t = t + 32
            x = x + 32
            continue 
        require ext_code.size(address(cd[((32 * u) + cd[68] + 36)]))
        staticcall address(cd[((32 * u) + cd[68] + 36)]).getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args s, 64, mem[mem[64] + 68 len (32 * _1314) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1972 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _1981 = mem[_1972]
        require mem[_1972] <= test266151307()
        require _1972 + mem[_1972] + 31 < _1972 + return_data.size
        _1994 = mem[_1972 + mem[_1972]]
        if mem[_1972 + mem[_1972]] > test266151307():
            revert with 0, 65
        if _1972 + ceil32(return_data.size) + ceil32(32 * mem[_1972 + mem[_1972]]) + 1 > test266151307() or ceil32(32 * mem[_1972 + mem[_1972]]) + 1 < 0:
            revert with 0, 65
        mem[64] = _1972 + ceil32(return_data.size) + ceil32(32 * mem[_1972 + mem[_1972]]) + 1
        mem[_1972 + ceil32(return_data.size)] = _1994
        require return_data.size >= _1981 + (32 * _1994) + 32
        t = _1972 + _1981 + 32
        x = _1972 + ceil32(return_data.size) + 32
        idx = 0
        while idx < _1994:
            mem[x] = mem[t]
            t = t + 32
            x = x + 32
            idx = idx + 1
            continue 
        if 1 >= _1994:
            revert with 0, 50
        if mem[_1972 + ceil32(return_data.size) + 64] <= s:
            if u == -1:
                revert with 0, 17
            u = u + 1
            v = v
            w = w
            continue 
        if u >= ('cd', 68).length:
            revert with 0, 50
        require cd[((32 * u) + cd[68] + 36)] == address(cd[((32 * u) + cd[68] + 36)])
        if u == -1:
            revert with 0, 17
        u = u + 1
        v = mem[_1972 + ceil32(return_data.size) + 64]
        w = cd[((32 * u) + cd[68] + 36)]
        continue 
    if 98 > !cd[100]:
        revert with 0, 17
    if msg.value / 100 and cd[100] + 98 > -1 / msg.value / 100:
        revert with 0, 17
    if v <= (98 * msg.value / 100) + (cd[100] * msg.value / 100):
        revert with 0, 'Arbitrage unprofitable'
    require ext_code.size(address(cd[4]))
    call address(cd[4]).deposit() with:
       value msg.value wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _1321 = mem[64]
    mem[mem[64] + 36] = address(t)
    mem[mem[64] + 68] = stor0
    _1322 = mem[64]
    mem[mem[64]] = 68
    mem[64] = mem[64] + 100
    mem[_1322 + 32 len 4] = approve(address arg1, uint256 arg2)
    _1327 = mem[_1322]
    mem[_1321 + 100 len ceil32(mem[_1322])] = mem[_1322 + 32 len ceil32(mem[_1322])]
    if ceil32(_1327) <= _1327:
        call address(cd[4]) with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len _1327 + _1321 + -mem[64] + 96]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 'TransferHelper::safeApprove: approve failed'
            if not mem[96]:
                mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = msg.value
                mem[mem[64] + 36] = 0
                mem[mem[64] + 68] = 160
                mem[mem[64] + 164] = mem[96]
                idx = 0
                s = 128
                u = mem[64] + 196
                while idx < mem[96]:
                    mem[u] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    u = u + 32
                    continue 
                mem[mem[64] + 100] = this.address
                mem[mem[64] + 132] = 2 * 10^9
                require ext_code.size(address(t))
                call address(t).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args msg.value, 0, 160, address(this.address), 2 * 10^9, mem[mem[64] + 164 len (32 * mem[96]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2618 = mem[64]
                mem[mem[64] + 36] = address(w)
                mem[mem[64] + 68] = stor0
                _2619 = mem[64]
                mem[mem[64]] = 68
                mem[64] = mem[64] + 100
                mem[_2619 + 32 len 4] = approve(address arg1, uint256 arg2)
                _2650 = mem[_2619]
                mem[_2618 + 100 len ceil32(mem[_2619])] = mem[_2619 + 32 len ceil32(mem[_2619])]
                if ceil32(_2650) > _2650:
                    mem[_2618 + _2650 + 100] = 0
                    call address(cd[36]) with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _2650 + _2618 + -mem[64] + 96]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 'TransferHelper::safeApprove: approve failed'
                        if not mem[96]:
                            mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = v
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = 160
                            mem[mem[64] + 164] = mem[192]
                            idx = 0
                            s = 224
                            t = mem[64] + 196
                            while idx < mem[192]:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(address(w))
                            call address(w).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args v, 0, 160, address(this.address), 2 * 10^9, mem[mem[64] + 164 len (32 * mem[192]) + 32]
                        else:
                            require mem[96] >= 32
                            require mem[128] == bool(mem[128])
                            if not mem[128]:
                                revert with 0, 'TransferHelper::safeApprove: approve failed'
                            _3523 = mem[64]
                            mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = v
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = 160
                            _3603 = mem[192]
                            mem[mem[64] + 164] = mem[192]
                            idx = 0
                            s = 224
                            t = mem[64] + 196
                            while idx < _3603:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_3523 + 100] = this.address
                            mem[_3523 + 132] = 2 * 10^9
                            require ext_code.size(address(w))
                            call address(w).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _3523 + (32 * _3603) + -mem[64] + 192]
                    else:
                        _3210 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_3210] = return_data.size
                        mem[_3210 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 'TransferHelper::safeApprove: approve failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[_3210 + 32] == bool(mem[_3210 + 32])
                            if not mem[_3210 + 32]:
                                revert with 0, 'TransferHelper::safeApprove: approve failed'
                        mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = v
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = 160
                        mem[mem[64] + 164] = mem[192]
                        idx = 0
                        s = 224
                        t = mem[64] + 196
                        while idx < mem[192]:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(address(w))
                        call address(w).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args v, 0, 160, address(this.address), 2 * 10^9, mem[mem[64] + 164 len (32 * mem[192]) + 32]
                else:
                    call address(cd[36]) with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _2650 + _2618 + -mem[64] + 96]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 'TransferHelper::safeApprove: approve failed'
                        if not mem[96]:
                            mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = v
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = 160
                            mem[mem[64] + 164] = mem[192]
                            idx = 0
                            s = 224
                            t = mem[64] + 196
                            while idx < mem[192]:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(address(w))
                            call address(w).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args v, 0, 160, address(this.address), 2 * 10^9, mem[mem[64] + 164 len (32 * mem[192]) + 32]
                        else:
                            require mem[96] >= 32
                            require mem[128] == bool(mem[128])
                            if not mem[128]:
                                revert with 0, 'TransferHelper::safeApprove: approve failed'
                            _3459 = mem[64]
                            mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = v
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = 160
                            _3571 = mem[192]
                            mem[mem[64] + 164] = mem[192]
                            idx = 0
                            s = 224
                            t = mem[64] + 196
                            while idx < _3571:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_3459 + 100] = this.address
                            mem[_3459 + 132] = 2 * 10^9
                            require ext_code.size(address(w))
                            call address(w).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _3459 + (32 * _3571) + -mem[64] + 192]
                    else:
                        _3194 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_3194] = return_data.size
                        mem[_3194 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 'TransferHelper::safeApprove: approve failed'
                        if not return_data.size:
                            mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = v
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = 160
                            mem[mem[64] + 164] = mem[192]
                            idx = 0
                            s = 224
                            t = mem[64] + 196
                            while idx < mem[192]:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(address(w))
                            call address(w).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args v, 0, 160, address(this.address), 2 * 10^9, mem[mem[64] + 164 len (32 * mem[192]) + 32]
                        else:
                            require return_data.size >= 32
                            require mem[_3194 + 32] == bool(mem[_3194 + 32])
                            if not mem[_3194 + 32]:
                                revert with 0, 'TransferHelper::safeApprove: approve failed'
                            _3462 = mem[64]
                            mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = v
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = 160
                            _3573 = mem[192]
                            mem[mem[64] + 164] = mem[192]
                            idx = 0
                            s = 224
                            t = mem[64] + 196
                            while idx < _3573:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_3462 + 100] = this.address
                            mem[_3462 + 132] = 2 * 10^9
                            require ext_code.size(address(w))
                            call address(w).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _3462 + (32 * _3573) + -mem[64] + 192]
            else:
                require mem[96] >= 32
                require mem[128] == bool(mem[128])
                if not mem[128]:
                    revert with 0, 'TransferHelper::safeApprove: approve failed'
                mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = msg.value
                mem[mem[64] + 36] = 0
                mem[mem[64] + 68] = 160
                mem[mem[64] + 164] = mem[96]
                idx = 0
                s = 128
                u = mem[64] + 196
                while idx < mem[96]:
                    mem[u] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    u = u + 32
                    continue 
                mem[mem[64] + 100] = this.address
                mem[mem[64] + 132] = 2 * 10^9
                require ext_code.size(address(t))
                call address(t).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args msg.value, 0, 160, address(this.address), 2 * 10^9, mem[mem[64] + 164 len (32 * mem[96]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2622 = mem[64]
                mem[mem[64] + 36] = address(w)
                mem[mem[64] + 68] = stor0
                _2623 = mem[64]
                mem[mem[64]] = 68
                mem[64] = mem[64] + 100
                mem[_2623 + 32 len 4] = approve(address arg1, uint256 arg2)
                _2651 = mem[_2623]
                mem[_2622 + 100 len ceil32(mem[_2623])] = mem[_2623 + 32 len ceil32(mem[_2623])]
                if ceil32(_2651) <= _2651:
                    call address(cd[36]) with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _2651 + _2622 + -mem[64] + 96]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 'TransferHelper::safeApprove: approve failed'
                        if mem[96]:
                            require mem[96] >= 32
                            require mem[128] == bool(mem[128])
                            if not mem[128]:
                                revert with 0, 'TransferHelper::safeApprove: approve failed'
                            mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = v
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = 160
                            mem[mem[64] + 164] = mem[192]
                            idx = 0
                            s = 224
                            t = mem[64] + 196
                            while idx < mem[192]:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(address(w))
                            call address(w).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args v, 0, 160, address(this.address), 2 * 10^9, mem[mem[64] + 164 len (32 * mem[192]) + 32]
                        else:
                            _3336 = mem[64]
                            mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = v
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = 160
                            _3412 = mem[192]
                            mem[mem[64] + 164] = mem[192]
                            idx = 0
                            s = 224
                            t = mem[64] + 196
                            while idx < _3412:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_3336 + 100] = this.address
                            mem[_3336 + 132] = 2 * 10^9
                            require ext_code.size(address(w))
                            call address(w).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _3336 + (32 * _3412) + -mem[64] + 192]
                    else:
                        _3196 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_3196] = return_data.size
                        mem[_3196 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 'TransferHelper::safeApprove: approve failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[_3196 + 32] == bool(mem[_3196 + 32])
                            if not mem[_3196 + 32]:
                                revert with 0, 'TransferHelper::safeApprove: approve failed'
                        mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = v
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = 160
                        mem[mem[64] + 164] = mem[192]
                        idx = 0
                        s = 224
                        t = mem[64] + 196
                        while idx < mem[192]:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(address(w))
                        call address(w).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args v, 0, 160, address(this.address), 2 * 10^9, mem[mem[64] + 164 len (32 * mem[192]) + 32]
                else:
                    mem[_2622 + _2651 + 100] = 0
                    call address(cd[36]) with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _2651 + _2622 + -mem[64] + 96]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 'TransferHelper::safeApprove: approve failed'
                        if mem[96]:
                            require mem[96] >= 32
                            require mem[128] == bool(mem[128])
                            if not mem[128]:
                                revert with 0, 'TransferHelper::safeApprove: approve failed'
                    else:
                        _3211 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_3211] = return_data.size
                        mem[_3211 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 'TransferHelper::safeApprove: approve failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[_3211 + 32] == bool(mem[_3211 + 32])
                            if not mem[_3211 + 32]:
                                revert with 0, 'TransferHelper::safeApprove: approve failed'
                    mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = v
                    mem[mem[64] + 36] = 0
                    mem[mem[64] + 68] = 160
                    mem[mem[64] + 164] = mem[192]
                    idx = 0
                    s = 224
                    t = mem[64] + 196
                    while idx < mem[192]:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(address(w))
                    call address(w).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args v, 0, 160, address(this.address), 2 * 10^9, mem[mem[64] + 164 len (32 * mem[192]) + 32]
        else:
            _1969 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size) + 1
            mem[_1969] = return_data.size
            mem[_1969 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 'TransferHelper::safeApprove: approve failed'
            if not return_data.size:
                mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = msg.value
                mem[mem[64] + 36] = 0
                mem[mem[64] + 68] = 160
                mem[mem[64] + 164] = mem[96]
                idx = 0
                s = 128
                u = mem[64] + 196
                while idx < mem[96]:
                    mem[u] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    u = u + 32
                    continue 
                mem[mem[64] + 100] = this.address
                mem[mem[64] + 132] = 2 * 10^9
                require ext_code.size(address(t))
                call address(t).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args msg.value, 0, 160, address(this.address), 2 * 10^9, mem[mem[64] + 164 len (32 * mem[96]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2626 = mem[64]
                mem[mem[64] + 36] = address(w)
                mem[mem[64] + 68] = stor0
                _2627 = mem[64]
                mem[mem[64]] = 68
                mem[64] = mem[64] + 100
                mem[_2627 + 32 len 4] = approve(address arg1, uint256 arg2)
                _2652 = mem[_2627]
                mem[_2626 + 100 len ceil32(mem[_2627])] = mem[_2627 + 32 len ceil32(mem[_2627])]
                if ceil32(_2652) <= _2652:
                    call address(cd[36]) with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _2652 + _2626 + -mem[64] + 96]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 'TransferHelper::safeApprove: approve failed'
                        if mem[96]:
                            require mem[96] >= 32
                            require mem[128] == bool(mem[128])
                            if not mem[128]:
                                revert with 0, 'TransferHelper::safeApprove: approve failed'
                    else:
                        _3198 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_3198] = return_data.size
                        mem[_3198 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 'TransferHelper::safeApprove: approve failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[_3198 + 32] == bool(mem[_3198 + 32])
                            if not mem[_3198 + 32]:
                                revert with 0, 'TransferHelper::safeApprove: approve failed'
                else:
                    mem[_2626 + _2652 + 100] = 0
                    call address(cd[36]) with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _2652 + _2626 + -mem[64] + 96]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 'TransferHelper::safeApprove: approve failed'
                        if mem[96]:
                            require mem[96] >= 32
                            require mem[128] == bool(mem[128])
                            if not mem[128]:
                                revert with 0, 'TransferHelper::safeApprove: approve failed'
                    else:
                        _3212 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_3212] = return_data.size
                        mem[_3212 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 'TransferHelper::safeApprove: approve failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[_3212 + 32] == bool(mem[_3212 + 32])
                            if not mem[_3212 + 32]:
                                revert with 0, 'TransferHelper::safeApprove: approve failed'
                mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = v
                mem[mem[64] + 36] = 0
                mem[mem[64] + 68] = 160
                mem[mem[64] + 164] = mem[192]
                idx = 0
                s = 224
                t = mem[64] + 196
                while idx < mem[192]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(address(w))
                call address(w).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args v, 0, 160, address(this.address), 2 * 10^9, mem[mem[64] + 164 len (32 * mem[192]) + 32]
            else:
                require return_data.size >= 32
                require mem[_1969 + 32] == bool(mem[_1969 + 32])
                if not mem[_1969 + 32]:
                    revert with 0, 'TransferHelper::safeApprove: approve failed'
                mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = msg.value
                mem[mem[64] + 36] = 0
                mem[mem[64] + 68] = 160
                mem[mem[64] + 164] = mem[96]
                idx = 0
                s = 128
                u = mem[64] + 196
                while idx < mem[96]:
                    mem[u] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    u = u + 32
                    continue 
                mem[mem[64] + 100] = this.address
                mem[mem[64] + 132] = 2 * 10^9
                require ext_code.size(address(t))
                call address(t).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args msg.value, 0, 160, address(this.address), 2 * 10^9, mem[mem[64] + 164 len (32 * mem[96]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2630 = mem[64]
                mem[mem[64] + 36] = address(w)
                mem[mem[64] + 68] = stor0
                _2631 = mem[64]
                mem[mem[64]] = 68
                mem[64] = mem[64] + 100
                mem[_2631 + 32 len 4] = approve(address arg1, uint256 arg2)
                _2653 = mem[_2631]
                mem[_2630 + 100 len ceil32(mem[_2631])] = mem[_2631 + 32 len ceil32(mem[_2631])]
                if ceil32(_2653) <= _2653:
                    call address(cd[36]) with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _2653 + _2630 + -mem[64] + 96]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 'TransferHelper::safeApprove: approve failed'
                        if mem[96]:
                            require mem[96] >= 32
                            require mem[128] == bool(mem[128])
                            if not mem[128]:
                                revert with 0, 'TransferHelper::safeApprove: approve failed'
                        mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = v
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = 160
                        mem[mem[64] + 164] = mem[192]
                        idx = 0
                        s = 224
                        t = mem[64] + 196
                        while idx < mem[192]:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(address(w))
                        call address(w).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args v, 0, 160, address(this.address), 2 * 10^9, mem[mem[64] + 164 len (32 * mem[192]) + 32]
                    else:
                        _3200 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_3200] = return_data.size
                        mem[_3200 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 'TransferHelper::safeApprove: approve failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[_3200 + 32] == bool(mem[_3200 + 32])
                            if not mem[_3200 + 32]:
                                revert with 0, 'TransferHelper::safeApprove: approve failed'
                            mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = v
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = 160
                            mem[mem[64] + 164] = mem[192]
                            idx = 0
                            s = 224
                            t = mem[64] + 196
                            while idx < mem[192]:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(address(w))
                            call address(w).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args v, 0, 160, address(this.address), 2 * 10^9, mem[mem[64] + 164 len (32 * mem[192]) + 32]
                        else:
                            _3350 = mem[64]
                            mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = v
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = 160
                            _3417 = mem[192]
                            mem[mem[64] + 164] = mem[192]
                            idx = 0
                            s = 224
                            t = mem[64] + 196
                            while idx < _3417:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_3350 + 100] = this.address
                            mem[_3350 + 132] = 2 * 10^9
                            require ext_code.size(address(w))
                            call address(w).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _3350 + (32 * _3417) + -mem[64] + 192]
                else:
                    mem[_2630 + _2653 + 100] = 0
                    call address(cd[36]) with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _2653 + _2630 + -mem[64] + 96]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 'TransferHelper::safeApprove: approve failed'
                        if mem[96]:
                            require mem[96] >= 32
                            require mem[128] == bool(mem[128])
                            if not mem[128]:
                                revert with 0, 'TransferHelper::safeApprove: approve failed'
                    else:
                        _3213 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_3213] = return_data.size
                        mem[_3213 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 'TransferHelper::safeApprove: approve failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[_3213 + 32] == bool(mem[_3213 + 32])
                            if not mem[_3213 + 32]:
                                revert with 0, 'TransferHelper::safeApprove: approve failed'
                    mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = v
                    mem[mem[64] + 36] = 0
                    mem[mem[64] + 68] = 160
                    mem[mem[64] + 164] = mem[192]
                    idx = 0
                    s = 224
                    t = mem[64] + 196
                    while idx < mem[192]:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(address(w))
                    call address(w).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args v, 0, 160, address(this.address), 2 * 10^9, mem[mem[64] + 164 len (32 * mem[192]) + 32]
    else:
        mem[_1321 + _1327 + 100] = 0
        call address(cd[4]) with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len _1327 + _1321 + -mem[64] + 96]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 'TransferHelper::safeApprove: approve failed'
            if not mem[96]:
                mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = msg.value
                mem[mem[64] + 36] = 0
                mem[mem[64] + 68] = 160
                mem[mem[64] + 164] = mem[96]
                idx = 0
                s = 128
                u = mem[64] + 196
                while idx < mem[96]:
                    mem[u] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    u = u + 32
                    continue 
                mem[mem[64] + 100] = this.address
                mem[mem[64] + 132] = 2 * 10^9
                require ext_code.size(address(t))
                call address(t).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args msg.value, 0, 160, address(this.address), 2 * 10^9, mem[mem[64] + 164 len (32 * mem[96]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2634 = mem[64]
                mem[mem[64] + 36] = address(w)
                mem[mem[64] + 68] = stor0
                _2635 = mem[64]
                mem[mem[64]] = 68
                mem[64] = mem[64] + 100
                mem[_2635 + 32 len 4] = approve(address arg1, uint256 arg2)
                _2654 = mem[_2635]
                mem[_2634 + 100 len ceil32(mem[_2635])] = mem[_2635 + 32 len ceil32(mem[_2635])]
                if ceil32(_2654) <= _2654:
                    call address(cd[36]) with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _2654 + _2634 + -mem[64] + 96]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 'TransferHelper::safeApprove: approve failed'
                        if mem[96]:
                            require mem[96] >= 32
                            require mem[128] == bool(mem[128])
                            if not mem[128]:
                                revert with 0, 'TransferHelper::safeApprove: approve failed'
                    else:
                        _3202 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_3202] = return_data.size
                        mem[_3202 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 'TransferHelper::safeApprove: approve failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[_3202 + 32] == bool(mem[_3202 + 32])
                            if not mem[_3202 + 32]:
                                revert with 0, 'TransferHelper::safeApprove: approve failed'
                    mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = v
                    mem[mem[64] + 36] = 0
                    mem[mem[64] + 68] = 160
                    mem[mem[64] + 164] = mem[192]
                    idx = 0
                    s = 224
                    t = mem[64] + 196
                    while idx < mem[192]:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(address(w))
                    call address(w).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args v, 0, 160, address(this.address), 2 * 10^9, mem[mem[64] + 164 len (32 * mem[192]) + 32]
                else:
                    mem[_2634 + _2654 + 100] = 0
                    call address(cd[36]) with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _2654 + _2634 + -mem[64] + 96]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 'TransferHelper::safeApprove: approve failed'
                        if mem[96]:
                            require mem[96] >= 32
                            require mem[128] == bool(mem[128])
                            if not mem[128]:
                                revert with 0, 'TransferHelper::safeApprove: approve failed'
                            mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = v
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = 160
                            mem[mem[64] + 164] = mem[192]
                            idx = 0
                            s = 224
                            t = mem[64] + 196
                            while idx < mem[192]:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(address(w))
                            call address(w).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args v, 0, 160, address(this.address), 2 * 10^9, mem[mem[64] + 164 len (32 * mem[192]) + 32]
                        else:
                            _3394 = mem[64]
                            mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = v
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = 160
                            _3444 = mem[192]
                            mem[mem[64] + 164] = mem[192]
                            idx = 0
                            s = 224
                            t = mem[64] + 196
                            while idx < _3444:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_3394 + 100] = this.address
                            mem[_3394 + 132] = 2 * 10^9
                            require ext_code.size(address(w))
                            call address(w).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _3394 + (32 * _3444) + -mem[64] + 192]
                    else:
                        _3214 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_3214] = return_data.size
                        mem[_3214 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 'TransferHelper::safeApprove: approve failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[_3214 + 32] == bool(mem[_3214 + 32])
                            if not mem[_3214 + 32]:
                                revert with 0, 'TransferHelper::safeApprove: approve failed'
                            mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = v
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = 160
                            mem[mem[64] + 164] = mem[192]
                            idx = 0
                            s = 224
                            t = mem[64] + 196
                            while idx < mem[192]:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(address(w))
                            call address(w).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args v, 0, 160, address(this.address), 2 * 10^9, mem[mem[64] + 164 len (32 * mem[192]) + 32]
                        else:
                            _3396 = mem[64]
                            mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = v
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = 160
                            _3445 = mem[192]
                            mem[mem[64] + 164] = mem[192]
                            idx = 0
                            s = 224
                            t = mem[64] + 196
                            while idx < _3445:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_3396 + 100] = this.address
                            mem[_3396 + 132] = 2 * 10^9
                            require ext_code.size(address(w))
                            call address(w).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _3396 + (32 * _3445) + -mem[64] + 192]
            else:
                require mem[96] >= 32
                require mem[128] == bool(mem[128])
                if not mem[128]:
                    revert with 0, 'TransferHelper::safeApprove: approve failed'
                mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = msg.value
                mem[mem[64] + 36] = 0
                mem[mem[64] + 68] = 160
                mem[mem[64] + 164] = mem[96]
                s = 0
                u = 128
                x = mem[64] + 196
                while s < mem[96]:
                    mem[x] = mem[u + 12 len 20]
                    s = s + 1
                    u = u + 32
                    x = x + 32
                    continue 
                mem[mem[64] + 100] = this.address
                mem[mem[64] + 132] = 2 * 10^9
                require ext_code.size(address(t))
                call address(t).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args msg.value, 0, 160, address(this.address), 2 * 10^9, mem[mem[64] + 164 len (32 * mem[96]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2638 = mem[64]
                mem[mem[64] + 36] = address(w)
                mem[mem[64] + 68] = stor0
                _2639 = mem[64]
                mem[mem[64]] = 68
                mem[64] = mem[64] + 100
                mem[_2639 + 32 len 4] = approve(address arg1, uint256 arg2)
                _2655 = mem[_2639]
                mem[_2638 + 100 len ceil32(mem[_2639])] = mem[_2639 + 32 len ceil32(mem[_2639])]
                if ceil32(_2655) <= _2655:
                    call address(cd[36]) with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _2655 + _2638 + -mem[64] + 96]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 'TransferHelper::safeApprove: approve failed'
                        if mem[96]:
                            require mem[96] >= 32
                            require mem[128] == bool(mem[128])
                            if not mem[128]:
                                revert with 0, 'TransferHelper::safeApprove: approve failed'
                    else:
                        _3204 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_3204] = return_data.size
                        mem[_3204 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 'TransferHelper::safeApprove: approve failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[_3204 + 32] == bool(mem[_3204 + 32])
                            if not mem[_3204 + 32]:
                                revert with 0, 'TransferHelper::safeApprove: approve failed'
                else:
                    mem[_2638 + _2655 + 100] = 0
                    call address(cd[36]) with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _2655 + _2638 + -mem[64] + 96]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 'TransferHelper::safeApprove: approve failed'
                        if mem[96]:
                            require mem[96] >= 32
                            require mem[128] == bool(mem[128])
                            if not mem[128]:
                                revert with 0, 'TransferHelper::safeApprove: approve failed'
                    else:
                        _3215 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_3215] = return_data.size
                        mem[_3215 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 'TransferHelper::safeApprove: approve failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[_3215 + 32] == bool(mem[_3215 + 32])
                            if not mem[_3215 + 32]:
                                revert with 0, 'TransferHelper::safeApprove: approve failed'
                mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = v
                mem[mem[64] + 36] = 0
                mem[mem[64] + 68] = 160
                mem[mem[64] + 164] = mem[192]
                idx = 0
                s = 224
                t = mem[64] + 196
                while idx < mem[192]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(address(w))
                call address(w).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args v, 0, 160, address(this.address), 2 * 10^9, mem[mem[64] + 164 len (32 * mem[192]) + 32]
        else:
            _1971 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size) + 1
            mem[_1971] = return_data.size
            mem[_1971 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 'TransferHelper::safeApprove: approve failed'
            if not return_data.size:
                _1997 = mem[64]
                mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = msg.value
                mem[mem[64] + 36] = 0
                mem[mem[64] + 68] = 160
                _2005 = mem[96]
                mem[mem[64] + 164] = mem[96]
                idx = 0
                s = 128
                u = mem[64] + 196
                while idx < _2005:
                    mem[u] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    u = u + 32
                    continue 
                mem[_1997 + 100] = this.address
                mem[_1997 + 132] = 2 * 10^9
                require ext_code.size(address(t))
                call address(t).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _1997 + (32 * _2005) + -mem[64] + 192]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2642 = mem[64]
                mem[mem[64] + 36] = address(w)
                mem[mem[64] + 68] = stor0
                _2643 = mem[64]
                mem[mem[64]] = 68
                mem[64] = mem[64] + 100
                mem[_2643 + 32 len 4] = approve(address arg1, uint256 arg2)
                _2656 = mem[_2643]
                mem[_2642 + 100 len ceil32(mem[_2643])] = mem[_2643 + 32 len ceil32(mem[_2643])]
                if ceil32(_2656) <= _2656:
                    call address(cd[36]) with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _2656 + _2642 + -mem[64] + 96]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 'TransferHelper::safeApprove: approve failed'
                        if mem[96]:
                            require mem[96] >= 32
                            require mem[128] == bool(mem[128])
                            if not mem[128]:
                                revert with 0, 'TransferHelper::safeApprove: approve failed'
                    else:
                        _3206 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_3206] = return_data.size
                        mem[_3206 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 'TransferHelper::safeApprove: approve failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[_3206 + 32] == bool(mem[_3206 + 32])
                            if not mem[_3206 + 32]:
                                revert with 0, 'TransferHelper::safeApprove: approve failed'
                else:
                    mem[_2642 + _2656 + 100] = 0
                    call address(cd[36]) with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _2656 + _2642 + -mem[64] + 96]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 'TransferHelper::safeApprove: approve failed'
                        if mem[96]:
                            require mem[96] >= 32
                            require mem[128] == bool(mem[128])
                            if not mem[128]:
                                revert with 0, 'TransferHelper::safeApprove: approve failed'
                    else:
                        _3216 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_3216] = return_data.size
                        mem[_3216 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 'TransferHelper::safeApprove: approve failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[_3216 + 32] == bool(mem[_3216 + 32])
                            if not mem[_3216 + 32]:
                                revert with 0, 'TransferHelper::safeApprove: approve failed'
            else:
                require return_data.size >= 32
                require mem[_1971 + 32] == bool(mem[_1971 + 32])
                if not mem[_1971 + 32]:
                    revert with 0, 'TransferHelper::safeApprove: approve failed'
                mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = msg.value
                mem[mem[64] + 36] = 0
                mem[mem[64] + 68] = 160
                mem[mem[64] + 164] = mem[96]
                s = 0
                u = 128
                x = mem[64] + 196
                while s < mem[96]:
                    mem[x] = mem[u + 12 len 20]
                    s = s + 1
                    u = u + 32
                    x = x + 32
                    continue 
                mem[mem[64] + 100] = this.address
                mem[mem[64] + 132] = 2 * 10^9
                require ext_code.size(address(t))
                call address(t).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args msg.value, 0, 160, address(this.address), 2 * 10^9, mem[mem[64] + 164 len (32 * mem[96]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2646 = mem[64]
                mem[mem[64] + 36] = address(w)
                mem[mem[64] + 68] = stor0
                _2647 = mem[64]
                mem[mem[64]] = 68
                mem[64] = mem[64] + 100
                mem[_2647 + 32 len 4] = approve(address arg1, uint256 arg2)
                _2657 = mem[_2647]
                mem[_2646 + 100 len ceil32(mem[_2647])] = mem[_2647 + 32 len ceil32(mem[_2647])]
                if ceil32(_2657) <= _2657:
                    call address(cd[36]) with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _2657 + _2646 + -mem[64] + 96]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 'TransferHelper::safeApprove: approve failed'
                        if mem[96]:
                            require mem[96] >= 32
                            require mem[128] == bool(mem[128])
                            if not mem[128]:
                                revert with 0, 'TransferHelper::safeApprove: approve failed'
                    else:
                        _3208 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_3208] = return_data.size
                        mem[_3208 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 'TransferHelper::safeApprove: approve failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[_3208 + 32] == bool(mem[_3208 + 32])
                            if not mem[_3208 + 32]:
                                revert with 0, 'TransferHelper::safeApprove: approve failed'
                else:
                    mem[_2646 + _2657 + 100] = 0
                    call address(cd[36]) with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _2657 + _2646 + -mem[64] + 96]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 'TransferHelper::safeApprove: approve failed'
                        if mem[96]:
                            require mem[96] >= 32
                            require mem[128] == bool(mem[128])
                            if not mem[128]:
                                revert with 0, 'TransferHelper::safeApprove: approve failed'
                    else:
                        _3217 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_3217] = return_data.size
                        mem[_3217 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 'TransferHelper::safeApprove: approve failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[_3217 + 32] == bool(mem[_3217 + 32])
                            if not mem[_3217 + 32]:
                                revert with 0, 'TransferHelper::safeApprove: approve failed'
            mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = v
            mem[mem[64] + 36] = 0
            mem[mem[64] + 68] = 160
            mem[mem[64] + 164] = mem[192]
            idx = 0
            s = 224
            t = mem[64] + 196
            while idx < mem[192]:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(address(w))
            call address(w).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args v, 0, 160, address(this.address), 2 * 10^9, mem[mem[64] + 164 len (32 * mem[192]) + 32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
