contract main {




// =====================  Runtime code  =====================


#
#  - getBalancesReservesMulti(address[] arg1)
#  - getBalancesReserves(address arg1)
#  - getLiqudityAndReserve(address arg1)
#
function _fallback() payable {
    revert
}

function getLiquidityAndReserveMulti(address[] arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg1.length
    if not arg1.length:
        mem[(64 * arg1.length) + 160] = arg1.length
        mem[64] = (98 * arg1.length) + 192
        if not arg1.length:
            idx = 0
            while idx < arg1.length:
                require idx < mem[96]
                require idx < mem[96]
                _672 = mem[(32 * idx) + 128]
                _679 = mem[64]
                mem[mem[64] + 36] = mem[(32 * idx) + 140 len 20]
                _680 = mem[64]
                mem[mem[64]] = 36
                mem[64] = mem[64] + 68
                mem[_680 + 32] = 0x70a0823100000000000000000000000000000000000000000000000000000000 or mem[_680 + 36 len 28]
                _683 = mem[_680]
                t = _680 + 32
                u = _679 + 68
                s = mem[_680]
                while s >= 32:
                    mem[u] = mem[t]
                    t = t + 32
                    u = u + 32
                    s = s - 32
                    continue 
                mem[_679 + floor32(mem[_680]) + 68] = mem[_680 + -(mem[_680] % 32) + floor32(mem[_680]) + 64 len mem[_680] % 32] or Mask(8 * -(mem[_680] % 32) + 32, -(8 * -(mem[_680] % 32) + 32) + 256, mem[_679 + floor32(mem[_680]) + 68])
                staticcall address(_672).mem[_679 + 68 len 4] with:
                        gas gas_remaining wei
                       args mem[_679 + 72 len _683 - 4]
                if not return_data.size:
                    if not ext_call.success:
                        require idx < mem[(32 * arg1.length) + 128]
                        mem[(32 * idx) + (32 * arg1.length) + 160] = 0
                        require idx < mem[96]
                        _1352 = mem[(32 * idx) + 128]
                        mem[_679 + 68] = 4
                        mem[64] = _679 + 104
                        mem[_679 + 100] = 0x18160ddd00000000000000000000000000000000000000000000000000000000 or mem[_679 + 104 len 28]
                        mem[_679 + 104] = mem[_679 + 128 len 4] or Mask(224, 32, mem[_679 + 104])
                        staticcall address(_1352).mem[_679 + 104 len 4] with:
                                gas gas_remaining wei
                    else:
                        require mem[96] >= 32
                        require idx < mem[(32 * arg1.length) + 128]
                        mem[(32 * idx) + (32 * arg1.length) + 160] = mem[128]
                        require idx < mem[96]
                        _1412 = mem[(32 * idx) + 128]
                        mem[_679 + 68] = 4
                        mem[64] = _679 + 104
                        mem[_679 + 100] = 0x18160ddd00000000000000000000000000000000000000000000000000000000 or mem[_679 + 104 len 28]
                        mem[_679 + 104] = mem[_679 + 128 len 4] or Mask(224, 32, mem[_679 + 104])
                        staticcall address(_1412).mem[_679 + 104 len 4] with:
                                gas gas_remaining wei
                    if not return_data.size:
                        if not ext_call.success:
                            require idx < mem[(64 * arg1.length) + 160]
                            mem[(32 * idx) + (64 * arg1.length) + 192] = 0
                        else:
                            require mem[96] >= 32
                            require idx < mem[(64 * arg1.length) + 160]
                            mem[(32 * idx) + (64 * arg1.length) + 192] = mem[128]
                    else:
                        mem[64] = _679 + ceil32(return_data.size) + 105
                        mem[_679 + 104] = return_data.size
                        mem[_679 + 136 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            require idx < mem[(64 * arg1.length) + 160]
                            mem[(32 * idx) + (64 * arg1.length) + 192] = 0
                        else:
                            require return_data.size >= 32
                            require idx < mem[(64 * arg1.length) + 160]
                            mem[(32 * idx) + (64 * arg1.length) + 192] = mem[_679 + 136]
                else:
                    mem[64] = _679 + ceil32(return_data.size) + 69
                    mem[_679 + 68] = return_data.size
                    mem[_679 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        require idx < mem[(32 * arg1.length) + 128]
                        mem[(32 * idx) + (32 * arg1.length) + 160] = 0
                        require idx < mem[96]
                        _1354 = mem[(32 * idx) + 128]
                        mem[_679 + ceil32(return_data.size) + 69] = 4
                        mem[64] = _679 + ceil32(return_data.size) + 105
                        mem[_679 + ceil32(return_data.size) + 101] = 0x18160ddd00000000000000000000000000000000000000000000000000000000 or mem[_679 + ceil32(return_data.size) + 105 len 28]
                        mem[_679 + ceil32(return_data.size) + 105] = mem[_679 + ceil32(return_data.size) + 129 len 4] or Mask(224, 32, mem[_679 + ceil32(return_data.size) + 105])
                        staticcall address(_1354).mem[_679 + ceil32(return_data.size) + 105 len 4] with:
                                gas gas_remaining wei
                    else:
                        require return_data.size >= 32
                        require idx < mem[(32 * arg1.length) + 128]
                        mem[(32 * idx) + (32 * arg1.length) + 160] = mem[_679 + 100]
                        require idx < mem[96]
                        _1417 = mem[(32 * idx) + 128]
                        mem[_679 + ceil32(return_data.size) + 69] = 4
                        mem[64] = _679 + ceil32(return_data.size) + 105
                        mem[_679 + ceil32(return_data.size) + 101] = 0x18160ddd00000000000000000000000000000000000000000000000000000000 or mem[_679 + ceil32(return_data.size) + 105 len 28]
                        mem[_679 + ceil32(return_data.size) + 105] = mem[_679 + ceil32(return_data.size) + 129 len 4] or Mask(224, 32, mem[_679 + ceil32(return_data.size) + 105])
                        staticcall address(_1417).mem[_679 + ceil32(return_data.size) + 105 len 4] with:
                                gas gas_remaining wei
                    if not return_data.size:
                        if not ext_call.success:
                            require idx < mem[(64 * arg1.length) + 160]
                            mem[(32 * idx) + (64 * arg1.length) + 192] = 0
                        else:
                            require mem[96] >= 32
                            require idx < mem[(64 * arg1.length) + 160]
                            mem[(32 * idx) + (64 * arg1.length) + 192] = mem[128]
                    else:
                        mem[64] = _679 + (2 * ceil32(return_data.size)) + 106
                        mem[_679 + ceil32(return_data.size) + 105] = return_data.size
                        mem[_679 + ceil32(return_data.size) + 137 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            require idx < mem[(64 * arg1.length) + 160]
                            mem[(32 * idx) + (64 * arg1.length) + 192] = 0
                        else:
                            require return_data.size >= 32
                            require idx < mem[(64 * arg1.length) + 160]
                            mem[(32 * idx) + (64 * arg1.length) + 192] = mem[_679 + ceil32(return_data.size) + 137]
                idx = idx + 1
                continue 
            _652 = mem[64]
            mem[mem[64] + 64] = block.number
            mem[mem[64]] = 96
            mem[mem[64] + 96] = mem[(32 * arg1.length) + 128]
            _654 = mem[(32 * arg1.length) + 128]
            mem[mem[64] + 128 len floor32(mem[(32 * arg1.length) + 128])] = mem[(32 * arg1.length) + 160 len floor32(mem[(32 * arg1.length) + 128])]
            mem[mem[64] + 32] = (32 * _654) + 128
            mem[(32 * _654) + _652 + 128] = mem[(64 * arg1.length) + 160]
            _1281 = mem[(64 * arg1.length) + 160]
            mem[(32 * _654) + _652 + 160 len floor32(mem[(64 * arg1.length) + 160])] = mem[(64 * arg1.length) + 192 len floor32(mem[(64 * arg1.length) + 160])]
            return memory
              from mem[64]
               len (32 * _1281) + (32 * _654) + _652 + -mem[64] + 160
        mem[(64 * arg1.length) + 192 len 32 * arg1.length] = code.data[2974 len 32 * arg1.length]
        idx = 0
        while idx < arg1.length:
            require idx < mem[96]
            require idx < mem[96]
            _673 = mem[(32 * idx) + 128]
            _687 = mem[64]
            mem[mem[64] + 36] = mem[(32 * idx) + 140 len 20]
            _688 = mem[64]
            mem[mem[64]] = 36
            mem[64] = mem[64] + 68
            mem[_688 + 32] = 0x70a0823100000000000000000000000000000000000000000000000000000000 or mem[_688 + 36 len 28]
            _691 = mem[_688]
            t = _688 + 32
            u = mem[64]
            s = mem[_688]
            while s >= 32:
                mem[u] = mem[t]
                t = t + 32
                u = u + 32
                s = s - 32
                continue 
            mem[mem[64] + floor32(mem[_688])] = mem[_688 + floor32(mem[_688]) + -(mem[_688] % 32) + 64 len mem[_688] % 32] or Mask(8 * -(mem[_688] % 32) + 32, -(8 * -(mem[_688] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_688])])
            staticcall address(_673).mem[mem[64] len 4] with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len _691 + _687 + -mem[64] + 64]
            if not return_data.size:
                if not ext_call.success:
                    require idx < mem[(32 * arg1.length) + 128]
                    mem[(32 * idx) + (32 * arg1.length) + 160] = 0
                    require idx < mem[96]
                    _1356 = mem[(32 * idx) + 128]
                    _1378 = mem[64]
                    mem[mem[64]] = 4
                    mem[64] = mem[64] + 36
                    mem[_1378 + 32] = 0x18160ddd00000000000000000000000000000000000000000000000000000000 or mem[_1378 + 36 len 28]
                    if mem[_1378] < 32:
                        mem[_1378 + 36] = Mask(-(8 * -mem[_1378] + 32) + 256, 0, mem[_1378 + 32]) or Mask(8 * -mem[_1378] + 32, -(8 * -mem[_1378] + 32) + 256, 4)
                        staticcall address(_1356).mem[_1378 + 36 len 4] with:
                                gas gas_remaining wei
                               args mem[_1378 + 40 len mem[_1378] - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                require idx < mem[(64 * arg1.length) + 160]
                                mem[(32 * idx) + (64 * arg1.length) + 192] = 0
                            else:
                                require mem[96] >= 32
                                require idx < mem[(64 * arg1.length) + 160]
                                mem[(32 * idx) + (64 * arg1.length) + 192] = mem[128]
                        else:
                            mem[64] = _1378 + ceil32(return_data.size) + 37
                            mem[_1378 + 36] = return_data.size
                            mem[_1378 + 68 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                require idx < mem[(64 * arg1.length) + 160]
                                mem[(32 * idx) + (64 * arg1.length) + 192] = 0
                            else:
                                require return_data.size >= 32
                                require idx < mem[(64 * arg1.length) + 160]
                                mem[(32 * idx) + (64 * arg1.length) + 192] = mem[_1378 + 68]
                    else:
                        mem[_1378 + 36] = mem[_1378 + 32]
                        t = _1378 + 64
                        u = _1378 + 68
                        s = mem[_1378] - 32
                        while s >= 32:
                            mem[u] = mem[t]
                            t = t + 32
                            u = u + 32
                            s = s - 32
                            continue 
                        mem[_1378 + floor32(mem[_1378] - 32) + 68] = mem[_1378 + (2 * floor32(mem[_1378] - 32)) + -mem[_1378] + 128 len mem[_1378] + -floor32(mem[_1378] - 32) - 32] or Mask(8 * -mem[_1378] + floor32(mem[_1378] - 32) + 64, -(8 * -mem[_1378] + floor32(mem[_1378] - 32) + 64) + 256, mem[_1378 + floor32(mem[_1378] - 32) + 68])
                        staticcall address(_1356).mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len mem[_1378] + _1378 + -mem[64] + 32]
                        if not return_data.size:
                            if not ext_call.success:
                                require idx < mem[(64 * arg1.length) + 160]
                                mem[(32 * idx) + (64 * arg1.length) + 192] = 0
                            else:
                                require mem[96] >= 32
                                require idx < mem[(64 * arg1.length) + 160]
                                mem[(32 * idx) + (64 * arg1.length) + 192] = mem[128]
                        else:
                            _1940 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_1940] = return_data.size
                            mem[_1940 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                require idx < mem[(64 * arg1.length) + 160]
                                mem[(32 * idx) + (64 * arg1.length) + 192] = 0
                            else:
                                require return_data.size >= 32
                                require idx < mem[(64 * arg1.length) + 160]
                                mem[(32 * idx) + (64 * arg1.length) + 192] = mem[_1940 + 32]
                else:
                    require mem[96] >= 32
                    require idx < mem[(32 * arg1.length) + 128]
                    mem[(32 * idx) + (32 * arg1.length) + 160] = mem[128]
                    require idx < mem[96]
                    _1422 = mem[(32 * idx) + 128]
                    _1459 = mem[64]
                    mem[mem[64]] = 4
                    mem[64] = mem[64] + 36
                    mem[_1459 + 32] = 0x18160ddd00000000000000000000000000000000000000000000000000000000 or mem[_1459 + 36 len 28]
                    if mem[_1459] < 32:
                        mem[_1459 + 36] = Mask(-(8 * -mem[_1459] + 32) + 256, 0, mem[_1459 + 32]) or Mask(8 * -mem[_1459] + 32, -(8 * -mem[_1459] + 32) + 256, 4)
                        staticcall address(_1422).mem[_1459 + 36 len 4] with:
                                gas gas_remaining wei
                               args mem[_1459 + 40 len mem[_1459] - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                require idx < mem[(64 * arg1.length) + 160]
                                mem[(32 * idx) + (64 * arg1.length) + 192] = 0
                            else:
                                require mem[96] >= 32
                                require idx < mem[(64 * arg1.length) + 160]
                                mem[(32 * idx) + (64 * arg1.length) + 192] = mem[128]
                        else:
                            mem[64] = _1459 + ceil32(return_data.size) + 37
                            mem[_1459 + 36] = return_data.size
                            mem[_1459 + 68 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                require idx < mem[(64 * arg1.length) + 160]
                                mem[(32 * idx) + (64 * arg1.length) + 192] = 0
                            else:
                                require return_data.size >= 32
                                require idx < mem[(64 * arg1.length) + 160]
                                mem[(32 * idx) + (64 * arg1.length) + 192] = mem[_1459 + 68]
                    else:
                        mem[_1459 + 36] = mem[_1459 + 32]
                        t = _1459 + 64
                        u = _1459 + 68
                        s = mem[_1459] - 32
                        while s >= 32:
                            mem[u] = mem[t]
                            t = t + 32
                            u = u + 32
                            s = s - 32
                            continue 
                        mem[_1459 + floor32(mem[_1459] - 32) + 68] = mem[_1459 + (2 * floor32(mem[_1459] - 32)) + -mem[_1459] + 128 len mem[_1459] + -floor32(mem[_1459] - 32) - 32] or Mask(8 * -mem[_1459] + floor32(mem[_1459] - 32) + 64, -(8 * -mem[_1459] + floor32(mem[_1459] - 32) + 64) + 256, mem[_1459 + floor32(mem[_1459] - 32) + 68])
                        staticcall address(_1422).mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len mem[_1459] + _1459 + -mem[64] + 32]
                        if not return_data.size:
                            if not ext_call.success:
                                require idx < mem[(64 * arg1.length) + 160]
                                mem[(32 * idx) + (64 * arg1.length) + 192] = 0
                            else:
                                require mem[96] >= 32
                                require idx < mem[(64 * arg1.length) + 160]
                                mem[(32 * idx) + (64 * arg1.length) + 192] = mem[128]
                        else:
                            _1941 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_1941] = return_data.size
                            mem[_1941 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                require idx < mem[(64 * arg1.length) + 160]
                                mem[(32 * idx) + (64 * arg1.length) + 192] = 0
                            else:
                                require return_data.size >= 32
                                require idx < mem[(64 * arg1.length) + 160]
                                mem[(32 * idx) + (64 * arg1.length) + 192] = mem[_1941 + 32]
            else:
                _1309 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_1309] = return_data.size
                mem[_1309 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    require idx < mem[(32 * arg1.length) + 128]
                    mem[(32 * idx) + (32 * arg1.length) + 160] = 0
                    require idx < mem[96]
                    _1358 = mem[(32 * idx) + 128]
                    _1383 = mem[64]
                    mem[mem[64]] = 4
                    mem[64] = mem[64] + 36
                    mem[_1383 + 32] = 0x18160ddd00000000000000000000000000000000000000000000000000000000 or mem[_1383 + 36 len 28]
                    if mem[_1383] < 32:
                        mem[_1383 + 36] = Mask(-(8 * -mem[_1383] + 32) + 256, 0, mem[_1383 + 32]) or Mask(8 * -mem[_1383] + 32, -(8 * -mem[_1383] + 32) + 256, 4)
                        staticcall address(_1358).mem[_1383 + 36 len 4] with:
                                gas gas_remaining wei
                               args mem[_1383 + 40 len mem[_1383] - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                require idx < mem[(64 * arg1.length) + 160]
                                mem[(32 * idx) + (64 * arg1.length) + 192] = 0
                            else:
                                require mem[96] >= 32
                                require idx < mem[(64 * arg1.length) + 160]
                                mem[(32 * idx) + (64 * arg1.length) + 192] = mem[128]
                        else:
                            mem[64] = _1383 + ceil32(return_data.size) + 37
                            mem[_1383 + 36] = return_data.size
                            mem[_1383 + 68 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                require idx < mem[(64 * arg1.length) + 160]
                                mem[(32 * idx) + (64 * arg1.length) + 192] = 0
                            else:
                                require return_data.size >= 32
                                require idx < mem[(64 * arg1.length) + 160]
                                mem[(32 * idx) + (64 * arg1.length) + 192] = mem[_1383 + 68]
                    else:
                        mem[_1383 + 36] = mem[_1383 + 32]
                        t = _1383 + 64
                        u = _1383 + 68
                        s = mem[_1383] - 32
                        while s >= 32:
                            mem[u] = mem[t]
                            t = t + 32
                            u = u + 32
                            s = s - 32
                            continue 
                        mem[_1383 + floor32(mem[_1383] - 32) + 68] = mem[_1383 + (2 * floor32(mem[_1383] - 32)) + -mem[_1383] + 128 len mem[_1383] + -floor32(mem[_1383] - 32) - 32] or Mask(8 * -mem[_1383] + floor32(mem[_1383] - 32) + 64, -(8 * -mem[_1383] + floor32(mem[_1383] - 32) + 64) + 256, mem[_1383 + floor32(mem[_1383] - 32) + 68])
                        staticcall address(_1358).mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len mem[_1383] + _1383 + -mem[64] + 32]
                        if not return_data.size:
                            if not ext_call.success:
                                require idx < mem[(64 * arg1.length) + 160]
                                mem[(32 * idx) + (64 * arg1.length) + 192] = 0
                            else:
                                require mem[96] >= 32
                                require idx < mem[(64 * arg1.length) + 160]
                                mem[(32 * idx) + (64 * arg1.length) + 192] = mem[128]
                        else:
                            _1942 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_1942] = return_data.size
                            mem[_1942 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                require idx < mem[(64 * arg1.length) + 160]
                                mem[(32 * idx) + (64 * arg1.length) + 192] = 0
                            else:
                                require return_data.size >= 32
                                require idx < mem[(64 * arg1.length) + 160]
                                mem[(32 * idx) + (64 * arg1.length) + 192] = mem[_1942 + 32]
                else:
                    require return_data.size >= 32
                    require idx < mem[(32 * arg1.length) + 128]
                    mem[(32 * idx) + (32 * arg1.length) + 160] = mem[_1309 + 32]
                    require idx < mem[96]
                    _1427 = mem[(32 * idx) + 128]
                    _1464 = mem[64]
                    mem[mem[64]] = 4
                    mem[64] = mem[64] + 36
                    mem[_1464 + 32] = 0x18160ddd00000000000000000000000000000000000000000000000000000000 or mem[_1464 + 36 len 28]
                    if mem[_1464] < 32:
                        mem[_1464 + 36] = Mask(-(8 * -mem[_1464] + 32) + 256, 0, mem[_1464 + 32]) or Mask(8 * -mem[_1464] + 32, -(8 * -mem[_1464] + 32) + 256, 4)
                        staticcall address(_1427).mem[_1464 + 36 len 4] with:
                                gas gas_remaining wei
                               args mem[_1464 + 40 len mem[_1464] - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                require idx < mem[(64 * arg1.length) + 160]
                                mem[(32 * idx) + (64 * arg1.length) + 192] = 0
                            else:
                                require mem[96] >= 32
                                require idx < mem[(64 * arg1.length) + 160]
                                mem[(32 * idx) + (64 * arg1.length) + 192] = mem[128]
                        else:
                            mem[64] = _1464 + ceil32(return_data.size) + 37
                            mem[_1464 + 36] = return_data.size
                            mem[_1464 + 68 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                require idx < mem[(64 * arg1.length) + 160]
                                mem[(32 * idx) + (64 * arg1.length) + 192] = 0
                            else:
                                require return_data.size >= 32
                                require idx < mem[(64 * arg1.length) + 160]
                                mem[(32 * idx) + (64 * arg1.length) + 192] = mem[_1464 + 68]
                    else:
                        mem[_1464 + 36] = mem[_1464 + 32]
                        t = _1464 + 64
                        u = _1464 + 68
                        s = mem[_1464] - 32
                        while s >= 32:
                            mem[u] = mem[t]
                            t = t + 32
                            u = u + 32
                            s = s - 32
                            continue 
                        mem[_1464 + floor32(mem[_1464] - 32) + 68] = mem[_1464 + (2 * floor32(mem[_1464] - 32)) + -mem[_1464] + 128 len mem[_1464] + -floor32(mem[_1464] - 32) - 32] or Mask(8 * -mem[_1464] + floor32(mem[_1464] - 32) + 64, -(8 * -mem[_1464] + floor32(mem[_1464] - 32) + 64) + 256, mem[_1464 + floor32(mem[_1464] - 32) + 68])
                        staticcall address(_1427).mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len mem[_1464] + _1464 + -mem[64] + 32]
                        if not return_data.size:
                            if not ext_call.success:
                                require idx < mem[(64 * arg1.length) + 160]
                                mem[(32 * idx) + (64 * arg1.length) + 192] = 0
                            else:
                                require mem[96] >= 32
                                require idx < mem[(64 * arg1.length) + 160]
                                mem[(32 * idx) + (64 * arg1.length) + 192] = mem[128]
                        else:
                            _1943 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_1943] = return_data.size
                            mem[_1943 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                require idx < mem[(64 * arg1.length) + 160]
                                mem[(32 * idx) + (64 * arg1.length) + 192] = 0
                            else:
                                require return_data.size >= 32
                                require idx < mem[(64 * arg1.length) + 160]
                                mem[(32 * idx) + (64 * arg1.length) + 192] = mem[_1943 + 32]
            idx = idx + 1
            continue 
        _657 = mem[64]
        mem[mem[64] + 64] = block.number
        mem[mem[64]] = 96
        mem[mem[64] + 96] = mem[(32 * arg1.length) + 128]
        _659 = mem[(32 * arg1.length) + 128]
        mem[mem[64] + 128 len floor32(mem[(32 * arg1.length) + 128])] = mem[(32 * arg1.length) + 160 len floor32(mem[(32 * arg1.length) + 128])]
        mem[mem[64] + 32] = (32 * _659) + 128
        mem[(32 * _659) + _657 + 128] = mem[(64 * arg1.length) + 160]
        _1288 = mem[(64 * arg1.length) + 160]
        mem[(32 * _659) + _657 + 160 len floor32(mem[(64 * arg1.length) + 160])] = mem[(64 * arg1.length) + 192 len floor32(mem[(64 * arg1.length) + 160])]
        return memory
          from mem[64]
           len (32 * _1288) + (32 * _659) + _657 + -mem[64] + 160
    mem[(32 * arg1.length) + 160 len 32 * arg1.length] = code.data[2974 len 32 * arg1.length]
    mem[(64 * arg1.length) + 160] = arg1.length
    mem[64] = (98 * arg1.length) + 192
    if not arg1.length:
        idx = 0
        while idx < arg1.length:
            require idx < mem[96]
            require idx < mem[96]
            _674 = mem[(32 * idx) + 128]
            _695 = mem[64]
            mem[mem[64] + 36] = mem[(32 * idx) + 140 len 20]
            _696 = mem[64]
            mem[mem[64]] = 36
            mem[64] = mem[64] + 68
            mem[_696 + 32] = 0x70a0823100000000000000000000000000000000000000000000000000000000 or mem[_696 + 36 len 28]
            _699 = mem[_696]
            t = _696 + 32
            u = _695 + 68
            s = mem[_696]
            while s >= 32:
                mem[u] = mem[t]
                t = t + 32
                u = u + 32
                s = s - 32
                continue 
            mem[_695 + floor32(mem[_696]) + 68] = mem[_696 + -(mem[_696] % 32) + floor32(mem[_696]) + 64 len mem[_696] % 32] or Mask(8 * -(mem[_696] % 32) + 32, -(8 * -(mem[_696] % 32) + 32) + 256, mem[_695 + floor32(mem[_696]) + 68])
            staticcall address(_674).mem[_695 + 68 len 4] with:
                    gas gas_remaining wei
                   args mem[_695 + 72 len _699 - 4]
            if not return_data.size:
                if not ext_call.success:
                    require idx < mem[(32 * arg1.length) + 128]
                    mem[(32 * idx) + (32 * arg1.length) + 160] = 0
                    require idx < mem[96]
                    _1360 = mem[(32 * idx) + 128]
                    mem[_695 + 68] = 4
                    mem[64] = _695 + 104
                    mem[_695 + 100] = 0x18160ddd00000000000000000000000000000000000000000000000000000000 or mem[_695 + 104 len 28]
                    mem[_695 + 104] = mem[_695 + 128 len 4] or Mask(224, 32, mem[_695 + 104])
                    staticcall address(_1360).mem[_695 + 104 len 4] with:
                            gas gas_remaining wei
                else:
                    require mem[96] >= 32
                    require idx < mem[(32 * arg1.length) + 128]
                    mem[(32 * idx) + (32 * arg1.length) + 160] = mem[128]
                    require idx < mem[96]
                    _1432 = mem[(32 * idx) + 128]
                    mem[_695 + 68] = 4
                    mem[64] = _695 + 104
                    mem[_695 + 100] = 0x18160ddd00000000000000000000000000000000000000000000000000000000 or mem[_695 + 104 len 28]
                    mem[_695 + 104] = mem[_695 + 128 len 4] or Mask(224, 32, mem[_695 + 104])
                    staticcall address(_1432).mem[_695 + 104 len 4] with:
                            gas gas_remaining wei
                if not return_data.size:
                    if not ext_call.success:
                        require idx < mem[(64 * arg1.length) + 160]
                        mem[(32 * idx) + (64 * arg1.length) + 192] = 0
                    else:
                        require mem[96] >= 32
                        require idx < mem[(64 * arg1.length) + 160]
                        mem[(32 * idx) + (64 * arg1.length) + 192] = mem[128]
                else:
                    mem[64] = _695 + ceil32(return_data.size) + 105
                    mem[_695 + 104] = return_data.size
                    mem[_695 + 136 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        require idx < mem[(64 * arg1.length) + 160]
                        mem[(32 * idx) + (64 * arg1.length) + 192] = 0
                    else:
                        require return_data.size >= 32
                        require idx < mem[(64 * arg1.length) + 160]
                        mem[(32 * idx) + (64 * arg1.length) + 192] = mem[_695 + 136]
            else:
                mem[64] = _695 + ceil32(return_data.size) + 69
                mem[_695 + 68] = return_data.size
                mem[_695 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    require idx < mem[(32 * arg1.length) + 128]
                    mem[(32 * idx) + (32 * arg1.length) + 160] = 0
                    require idx < mem[96]
                    _1362 = mem[(32 * idx) + 128]
                    mem[_695 + ceil32(return_data.size) + 69] = 4
                    mem[64] = _695 + ceil32(return_data.size) + 105
                    mem[_695 + ceil32(return_data.size) + 101] = 0x18160ddd00000000000000000000000000000000000000000000000000000000 or mem[_695 + ceil32(return_data.size) + 105 len 28]
                    mem[_695 + ceil32(return_data.size) + 105] = mem[_695 + ceil32(return_data.size) + 129 len 4] or Mask(224, 32, mem[_695 + ceil32(return_data.size) + 105])
                    staticcall address(_1362).mem[_695 + ceil32(return_data.size) + 105 len 4] with:
                            gas gas_remaining wei
                else:
                    require return_data.size >= 32
                    require idx < mem[(32 * arg1.length) + 128]
                    mem[(32 * idx) + (32 * arg1.length) + 160] = mem[_695 + 100]
                    require idx < mem[96]
                    _1437 = mem[(32 * idx) + 128]
                    mem[_695 + ceil32(return_data.size) + 69] = 4
                    mem[64] = _695 + ceil32(return_data.size) + 105
                    mem[_695 + ceil32(return_data.size) + 101] = 0x18160ddd00000000000000000000000000000000000000000000000000000000 or mem[_695 + ceil32(return_data.size) + 105 len 28]
                    mem[_695 + ceil32(return_data.size) + 105] = mem[_695 + ceil32(return_data.size) + 129 len 4] or Mask(224, 32, mem[_695 + ceil32(return_data.size) + 105])
                    staticcall address(_1437).mem[_695 + ceil32(return_data.size) + 105 len 4] with:
                            gas gas_remaining wei
                if not return_data.size:
                    if not ext_call.success:
                        require idx < mem[(64 * arg1.length) + 160]
                        mem[(32 * idx) + (64 * arg1.length) + 192] = 0
                    else:
                        require mem[96] >= 32
                        require idx < mem[(64 * arg1.length) + 160]
                        mem[(32 * idx) + (64 * arg1.length) + 192] = mem[128]
                else:
                    mem[64] = _695 + (2 * ceil32(return_data.size)) + 106
                    mem[_695 + ceil32(return_data.size) + 105] = return_data.size
                    mem[_695 + ceil32(return_data.size) + 137 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        require idx < mem[(64 * arg1.length) + 160]
                        mem[(32 * idx) + (64 * arg1.length) + 192] = 0
                    else:
                        require return_data.size >= 32
                        require idx < mem[(64 * arg1.length) + 160]
                        mem[(32 * idx) + (64 * arg1.length) + 192] = mem[_695 + ceil32(return_data.size) + 137]
            idx = idx + 1
            continue 
        _662 = mem[64]
        mem[mem[64] + 64] = block.number
        mem[mem[64]] = 96
        mem[mem[64] + 96] = mem[(32 * arg1.length) + 128]
        _664 = mem[(32 * arg1.length) + 128]
        mem[mem[64] + 128 len floor32(mem[(32 * arg1.length) + 128])] = mem[(32 * arg1.length) + 160 len floor32(mem[(32 * arg1.length) + 128])]
        mem[mem[64] + 32] = (32 * _664) + 128
        mem[(32 * _664) + _662 + 128] = mem[(64 * arg1.length) + 160]
        _1295 = mem[(64 * arg1.length) + 160]
        mem[(32 * _664) + _662 + 160 len floor32(mem[(64 * arg1.length) + 160])] = mem[(64 * arg1.length) + 192 len floor32(mem[(64 * arg1.length) + 160])]
        return memory
          from mem[64]
           len (32 * _1295) + (32 * _664) + _662 + -mem[64] + 160
    mem[(64 * arg1.length) + 192 len 32 * arg1.length] = code.data[2974 len 32 * arg1.length]
    idx = 0
    while idx < arg1.length:
        require idx < mem[96]
        require idx < mem[96]
        _675 = mem[(32 * idx) + 128]
        _703 = mem[64]
        mem[mem[64] + 36] = mem[(32 * idx) + 140 len 20]
        _704 = mem[64]
        mem[mem[64]] = 36
        mem[64] = mem[64] + 68
        mem[_704 + 32] = 0x70a0823100000000000000000000000000000000000000000000000000000000 or mem[_704 + 36 len 28]
        _707 = mem[_704]
        t = _704 + 32
        u = _703 + 68
        s = mem[_704]
        while s >= 32:
            mem[u] = mem[t]
            t = t + 32
            u = u + 32
            s = s - 32
            continue 
        mem[_703 + floor32(mem[_704]) + 68] = mem[_704 + -(mem[_704] % 32) + floor32(mem[_704]) + 64 len mem[_704] % 32] or Mask(8 * -(mem[_704] % 32) + 32, -(8 * -(mem[_704] % 32) + 32) + 256, mem[_703 + floor32(mem[_704]) + 68])
        staticcall address(_675).mem[_703 + 68 len 4] with:
                gas gas_remaining wei
               args mem[_703 + 72 len _707 - 4]
        if not return_data.size:
            if not ext_call.success:
                require idx < mem[(32 * arg1.length) + 128]
                mem[(32 * idx) + (32 * arg1.length) + 160] = 0
                require idx < mem[96]
                _1364 = mem[(32 * idx) + 128]
                mem[_703 + 68] = 4
                mem[64] = _703 + 104
                mem[_703 + 100] = 0x18160ddd00000000000000000000000000000000000000000000000000000000 or mem[_703 + 104 len 28]
                mem[_703 + 104] = mem[_703 + 128 len 4] or Mask(224, 32, mem[_703 + 104])
                staticcall address(_1364).mem[_703 + 104 len 4] with:
                        gas gas_remaining wei
            else:
                require mem[96] >= 32
                require idx < mem[(32 * arg1.length) + 128]
                mem[(32 * idx) + (32 * arg1.length) + 160] = mem[128]
                require idx < mem[96]
                _1442 = mem[(32 * idx) + 128]
                mem[_703 + 68] = 4
                mem[64] = _703 + 104
                mem[_703 + 100] = 0x18160ddd00000000000000000000000000000000000000000000000000000000 or mem[_703 + 104 len 28]
                mem[_703 + 104] = mem[_703 + 128 len 4] or Mask(224, 32, mem[_703 + 104])
                staticcall address(_1442).mem[_703 + 104 len 4] with:
                        gas gas_remaining wei
            if not return_data.size:
                if not ext_call.success:
                    require idx < mem[(64 * arg1.length) + 160]
                    mem[(32 * idx) + (64 * arg1.length) + 192] = 0
                else:
                    require mem[96] >= 32
                    require idx < mem[(64 * arg1.length) + 160]
                    mem[(32 * idx) + (64 * arg1.length) + 192] = mem[128]
            else:
                mem[64] = _703 + ceil32(return_data.size) + 105
                mem[_703 + 104] = return_data.size
                mem[_703 + 136 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    require idx < mem[(64 * arg1.length) + 160]
                    mem[(32 * idx) + (64 * arg1.length) + 192] = 0
                else:
                    require return_data.size >= 32
                    require idx < mem[(64 * arg1.length) + 160]
                    mem[(32 * idx) + (64 * arg1.length) + 192] = mem[_703 + 136]
        else:
            mem[64] = _703 + ceil32(return_data.size) + 69
            mem[_703 + 68] = return_data.size
            mem[_703 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                require idx < mem[(32 * arg1.length) + 128]
                mem[(32 * idx) + (32 * arg1.length) + 160] = 0
                require idx < mem[96]
                _1366 = mem[(32 * idx) + 128]
                mem[_703 + ceil32(return_data.size) + 69] = 4
                mem[64] = _703 + ceil32(return_data.size) + 105
                mem[_703 + ceil32(return_data.size) + 101] = 0x18160ddd00000000000000000000000000000000000000000000000000000000 or mem[_703 + ceil32(return_data.size) + 105 len 28]
                mem[_703 + ceil32(return_data.size) + 105] = mem[_703 + ceil32(return_data.size) + 129 len 4] or Mask(224, 32, mem[_703 + ceil32(return_data.size) + 105])
                staticcall address(_1366).mem[_703 + ceil32(return_data.size) + 105 len 4] with:
                        gas gas_remaining wei
            else:
                require return_data.size >= 32
                require idx < mem[(32 * arg1.length) + 128]
                mem[(32 * idx) + (32 * arg1.length) + 160] = mem[_703 + 100]
                require idx < mem[96]
                _1447 = mem[(32 * idx) + 128]
                mem[_703 + ceil32(return_data.size) + 69] = 4
                mem[64] = _703 + ceil32(return_data.size) + 105
                mem[_703 + ceil32(return_data.size) + 101] = 0x18160ddd00000000000000000000000000000000000000000000000000000000 or mem[_703 + ceil32(return_data.size) + 105 len 28]
                mem[_703 + ceil32(return_data.size) + 105] = mem[_703 + ceil32(return_data.size) + 129 len 4] or Mask(224, 32, mem[_703 + ceil32(return_data.size) + 105])
                staticcall address(_1447).mem[_703 + ceil32(return_data.size) + 105 len 4] with:
                        gas gas_remaining wei
            if not return_data.size:
                if not ext_call.success:
                    require idx < mem[(64 * arg1.length) + 160]
                    mem[(32 * idx) + (64 * arg1.length) + 192] = 0
                else:
                    require mem[96] >= 32
                    require idx < mem[(64 * arg1.length) + 160]
                    mem[(32 * idx) + (64 * arg1.length) + 192] = mem[128]
            else:
                mem[64] = _703 + (2 * ceil32(return_data.size)) + 106
                mem[_703 + ceil32(return_data.size) + 105] = return_data.size
                mem[_703 + ceil32(return_data.size) + 137 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    require idx < mem[(64 * arg1.length) + 160]
                    mem[(32 * idx) + (64 * arg1.length) + 192] = 0
                else:
                    require return_data.size >= 32
                    require idx < mem[(64 * arg1.length) + 160]
                    mem[(32 * idx) + (64 * arg1.length) + 192] = mem[_703 + ceil32(return_data.size) + 137]
        idx = idx + 1
        continue 
    _667 = mem[64]
    mem[mem[64] + 64] = block.number
    mem[mem[64]] = 96
    mem[mem[64] + 96] = mem[(32 * arg1.length) + 128]
    _669 = mem[(32 * arg1.length) + 128]
    mem[mem[64] + 128 len floor32(mem[(32 * arg1.length) + 128])] = mem[(32 * arg1.length) + 160 len floor32(mem[(32 * arg1.length) + 128])]
    mem[mem[64] + 32] = (32 * _669) + 128
    mem[(32 * _669) + _667 + 128] = mem[(64 * arg1.length) + 160]
    _1302 = mem[(64 * arg1.length) + 160]
    mem[(32 * _669) + _667 + 160 len floor32(mem[(64 * arg1.length) + 160])] = mem[(64 * arg1.length) + 192 len floor32(mem[(64 * arg1.length) + 160])]
    return memory
      from mem[64]
       len (32 * _1302) + (32 * _669) + _667 + -mem[64] + 160
}



}
