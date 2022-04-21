contract main {




// =====================  Runtime code  =====================


address stor0;
address stor1;

function _fallback() payable {
  stop
}

function executeWithdraw(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == stor0
    call stor0 with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_a33a22e6(?) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == address(arg2)
    require msg.sender == stor0
    require ext_code.size(address(arg2))
    call address(arg2).0xa9059cbb with:
         gas gas_remaining wei
        args stor0, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_b9d4fda4(?) {
    require calldata.size - 4 >= 128
    require cd[4] == cd[4]
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    require cd[68] == cd[68]
    require cd[100] <= test266151307()
    require cd[100] + 35 < calldata.size
    require ('cd', 100).length <= test266151307()
    require cd[100] + (32 * ('cd', 100).length) + 36 <= calldata.size
    mem[96] = ('cd', 100).length
    mem[128 len 32 * ('cd', 100).length] = call.data[cd[100] + 36 len 32 * ('cd', 100).length]
    mem[(32 * ('cd', 100).length) + 128] = ('cd', 36).length
    mem[(32 * ('cd', 100).length) + 160 len 32 * ('cd', 36).length] = call.data[cd[36] + 36 len 32 * ('cd', 36).length]
    if ('cd', 36).length > test266151307():
        revert with 'NH{q', 65
    mem[(32 * ('cd', 100).length) + (32 * ('cd', 36).length) + 160] = ('cd', 36).length
    if not ('cd', 36).length:
        if ('cd', 36).length > test266151307():
            revert with 'NH{q', 65
        mem[(32 * ('cd', 100).length) + (64 * ('cd', 36).length) + 192] = ('cd', 36).length
        mem[64] = (32 * ('cd', 100).length) + (98 * ('cd', 36).length) + 224
        if not ('cd', 36).length:
            idx = 0
            s = cd[4]
            while idx < ('cd', 36).length:
                if idx >= mem[(32 * ('cd', 100).length) + 128]:
                    revert with 'NH{q', 50
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                _541 = mem[(32 * idx) + 128]
                if idx > -2:
                    revert with 'NH{q', 17
                if idx + 1 >= mem[96]:
                    revert with 'NH{q', 50
                _549 = mem[(32 * idx + 1) + 128]
                if mem[(32 * idx) + 140 len 20] == mem[(32 * idx + 1) + 140 len 20]:
                    revert with 0, 'UniswapV2Library: IDENTICAL_ADDRESSES'
                if mem[(32 * idx) + 140 len 20] < mem[(32 * idx + 1) + 140 len 20]:
                    if not mem[(32 * idx) + 140 len 20]:
                        revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                    require ext_code.size(mem[(32 * idx) + (32 * ('cd', 100).length) + 172 len 20])
                    staticcall mem[(32 * idx) + (32 * ('cd', 100).length) + 172 len 20].getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _585 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _597 = mem[_585]
                    require mem[_585] == mem[_585 + 18 len 14]
                    _613 = mem[_585 + 32]
                    require mem[_585 + 32] == mem[_585 + 50 len 14]
                    require mem[_585 + 64] == mem[_585 + 92 len 4]
                    if s and 997 > -1 / s:
                        revert with 'NH{q', 17
                    if 997 * s / 997 != s:
                        revert with 0, 'ds-math-mul-overflow'
                    if address(_541) == address(_541):
                        if not mem[_585 + 50 len 14]:
                            if mem[_585 + 18 len 14] and 1000 > -1 / mem[_585 + 18 len 14]:
                                revert with 'NH{q', 17
                            if 1000 * mem[_585 + 18 len 14] / 1000 != mem[_585 + 18 len 14]:
                                revert with 0, 'ds-math-mul-overflow'
                            if 1000 * mem[_585 + 18 len 14] > (-997 * s) - 1:
                                revert with 'NH{q', 17
                            if (1000 * mem[_585 + 18 len 14]) + (997 * s) < 1000 * mem[_585 + 18 len 14]:
                                revert with 0, 'ds-math-add-overflow'
                            if not (1000 * mem[_585 + 18 len 14]) + (997 * s):
                                revert with 'NH{q', 18
                            if idx >= mem[(32 * ('cd', 100).length) + (32 * ('cd', 36).length) + 160]:
                                revert with 'NH{q', 50
                            mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 36).length) + 192] = mem[_585 + 18 len 14]
                            if idx >= mem[(32 * ('cd', 100).length) + (64 * ('cd', 36).length) + 192]:
                                revert with 'NH{q', 50
                            mem[(32 * idx) + (32 * ('cd', 100).length) + (64 * ('cd', 36).length) + 224] = Mask(112, 0, _613)
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = 0 / (1000 * Mask(112, 0, _597)) + (997 * s)
                            continue 
                        if 997 * s and mem[_585 + 50 len 14] > -1 / 997 * s:
                            revert with 'NH{q', 17
                        if not mem[_585 + 50 len 14]:
                            revert with 'NH{q', 18
                        if 997 * s * mem[_585 + 50 len 14] / mem[_585 + 50 len 14] != 997 * s:
                            revert with 0, 'ds-math-mul-overflow'
                        if mem[_585 + 18 len 14] and 1000 > -1 / mem[_585 + 18 len 14]:
                            revert with 'NH{q', 17
                        if 1000 * mem[_585 + 18 len 14] / 1000 != mem[_585 + 18 len 14]:
                            revert with 0, 'ds-math-mul-overflow'
                        if 1000 * mem[_585 + 18 len 14] > (-997 * s) - 1:
                            revert with 'NH{q', 17
                        if (1000 * mem[_585 + 18 len 14]) + (997 * s) < 1000 * mem[_585 + 18 len 14]:
                            revert with 0, 'ds-math-add-overflow'
                        if not (1000 * mem[_585 + 18 len 14]) + (997 * s):
                            revert with 'NH{q', 18
                        if idx >= mem[(32 * ('cd', 100).length) + (32 * ('cd', 36).length) + 160]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 36).length) + 192] = mem[_585 + 18 len 14]
                        if idx >= mem[(32 * ('cd', 100).length) + (64 * ('cd', 36).length) + 192]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + (32 * ('cd', 100).length) + (64 * ('cd', 36).length) + 224] = Mask(112, 0, _613)
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = 997 * s * Mask(112, 0, _613) / (1000 * Mask(112, 0, _597)) + (997 * s)
                        continue 
                    if not mem[_585 + 18 len 14]:
                        if mem[_585 + 50 len 14] and 1000 > -1 / mem[_585 + 50 len 14]:
                            revert with 'NH{q', 17
                        if 1000 * mem[_585 + 50 len 14] / 1000 != mem[_585 + 50 len 14]:
                            revert with 0, 'ds-math-mul-overflow'
                        if 1000 * mem[_585 + 50 len 14] > (-997 * s) - 1:
                            revert with 'NH{q', 17
                        if (1000 * mem[_585 + 50 len 14]) + (997 * s) < 1000 * mem[_585 + 50 len 14]:
                            revert with 0, 'ds-math-add-overflow'
                        if not (1000 * mem[_585 + 50 len 14]) + (997 * s):
                            revert with 'NH{q', 18
                        if idx >= mem[(32 * ('cd', 100).length) + (32 * ('cd', 36).length) + 160]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 36).length) + 192] = mem[_585 + 50 len 14]
                        if idx >= mem[(32 * ('cd', 100).length) + (64 * ('cd', 36).length) + 192]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + (32 * ('cd', 100).length) + (64 * ('cd', 36).length) + 224] = Mask(112, 0, _597)
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = 0 / (1000 * Mask(112, 0, _613)) + (997 * s)
                        continue 
                    if 997 * s and mem[_585 + 18 len 14] > -1 / 997 * s:
                        revert with 'NH{q', 17
                    if not mem[_585 + 18 len 14]:
                        revert with 'NH{q', 18
                    if 997 * s * mem[_585 + 18 len 14] / mem[_585 + 18 len 14] != 997 * s:
                        revert with 0, 'ds-math-mul-overflow'
                    if mem[_585 + 50 len 14] and 1000 > -1 / mem[_585 + 50 len 14]:
                        revert with 'NH{q', 17
                    if 1000 * mem[_585 + 50 len 14] / 1000 != mem[_585 + 50 len 14]:
                        revert with 0, 'ds-math-mul-overflow'
                    if 1000 * mem[_585 + 50 len 14] > (-997 * s) - 1:
                        revert with 'NH{q', 17
                    if (1000 * mem[_585 + 50 len 14]) + (997 * s) < 1000 * mem[_585 + 50 len 14]:
                        revert with 0, 'ds-math-add-overflow'
                    if not (1000 * mem[_585 + 50 len 14]) + (997 * s):
                        revert with 'NH{q', 18
                    if idx >= mem[(32 * ('cd', 100).length) + (32 * ('cd', 36).length) + 160]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 36).length) + 192] = mem[_585 + 50 len 14]
                    if idx >= mem[(32 * ('cd', 100).length) + (64 * ('cd', 36).length) + 192]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + (32 * ('cd', 100).length) + (64 * ('cd', 36).length) + 224] = Mask(112, 0, _597)
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = 997 * s * Mask(112, 0, _597) / (1000 * Mask(112, 0, _613)) + (997 * s)
                    continue 
                if not mem[(32 * idx + 1) + 140 len 20]:
                    revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                require ext_code.size(mem[(32 * idx) + (32 * ('cd', 100).length) + 172 len 20])
                staticcall mem[(32 * idx) + (32 * ('cd', 100).length) + 172 len 20].getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _586 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _598 = mem[_586]
                require mem[_586] == mem[_586 + 18 len 14]
                _614 = mem[_586 + 32]
                require mem[_586 + 32] == mem[_586 + 50 len 14]
                require mem[_586 + 64] == mem[_586 + 92 len 4]
                if s and 997 > -1 / s:
                    revert with 'NH{q', 17
                if 997 * s / 997 != s:
                    revert with 0, 'ds-math-mul-overflow'
                if address(_541) == address(_549):
                    if not mem[_586 + 50 len 14]:
                        if mem[_586 + 18 len 14] and 1000 > -1 / mem[_586 + 18 len 14]:
                            revert with 'NH{q', 17
                        if 1000 * mem[_586 + 18 len 14] / 1000 != mem[_586 + 18 len 14]:
                            revert with 0, 'ds-math-mul-overflow'
                        if 1000 * mem[_586 + 18 len 14] > (-997 * s) - 1:
                            revert with 'NH{q', 17
                        if (1000 * mem[_586 + 18 len 14]) + (997 * s) < 1000 * mem[_586 + 18 len 14]:
                            revert with 0, 'ds-math-add-overflow'
                        if not (1000 * mem[_586 + 18 len 14]) + (997 * s):
                            revert with 'NH{q', 18
                        if idx >= mem[(32 * ('cd', 100).length) + (32 * ('cd', 36).length) + 160]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 36).length) + 192] = mem[_586 + 18 len 14]
                        if idx >= mem[(32 * ('cd', 100).length) + (64 * ('cd', 36).length) + 192]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + (32 * ('cd', 100).length) + (64 * ('cd', 36).length) + 224] = Mask(112, 0, _614)
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = 0 / (1000 * Mask(112, 0, _598)) + (997 * s)
                        continue 
                    if 997 * s and mem[_586 + 50 len 14] > -1 / 997 * s:
                        revert with 'NH{q', 17
                    if not mem[_586 + 50 len 14]:
                        revert with 'NH{q', 18
                    if 997 * s * mem[_586 + 50 len 14] / mem[_586 + 50 len 14] != 997 * s:
                        revert with 0, 'ds-math-mul-overflow'
                    if mem[_586 + 18 len 14] and 1000 > -1 / mem[_586 + 18 len 14]:
                        revert with 'NH{q', 17
                    if 1000 * mem[_586 + 18 len 14] / 1000 != mem[_586 + 18 len 14]:
                        revert with 0, 'ds-math-mul-overflow'
                    if 1000 * mem[_586 + 18 len 14] > (-997 * s) - 1:
                        revert with 'NH{q', 17
                    if (1000 * mem[_586 + 18 len 14]) + (997 * s) < 1000 * mem[_586 + 18 len 14]:
                        revert with 0, 'ds-math-add-overflow'
                    if not (1000 * mem[_586 + 18 len 14]) + (997 * s):
                        revert with 'NH{q', 18
                    if idx >= mem[(32 * ('cd', 100).length) + (32 * ('cd', 36).length) + 160]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 36).length) + 192] = mem[_586 + 18 len 14]
                    if idx >= mem[(32 * ('cd', 100).length) + (64 * ('cd', 36).length) + 192]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + (32 * ('cd', 100).length) + (64 * ('cd', 36).length) + 224] = Mask(112, 0, _614)
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = 997 * s * Mask(112, 0, _614) / (1000 * Mask(112, 0, _598)) + (997 * s)
                    continue 
                if not mem[_586 + 18 len 14]:
                    if mem[_586 + 50 len 14] and 1000 > -1 / mem[_586 + 50 len 14]:
                        revert with 'NH{q', 17
                    if 1000 * mem[_586 + 50 len 14] / 1000 != mem[_586 + 50 len 14]:
                        revert with 0, 'ds-math-mul-overflow'
                    if 1000 * mem[_586 + 50 len 14] > (-997 * s) - 1:
                        revert with 'NH{q', 17
                    if (1000 * mem[_586 + 50 len 14]) + (997 * s) < 1000 * mem[_586 + 50 len 14]:
                        revert with 0, 'ds-math-add-overflow'
                    if not (1000 * mem[_586 + 50 len 14]) + (997 * s):
                        revert with 'NH{q', 18
                    if idx >= mem[(32 * ('cd', 100).length) + (32 * ('cd', 36).length) + 160]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 36).length) + 192] = mem[_586 + 50 len 14]
                    if idx >= mem[(32 * ('cd', 100).length) + (64 * ('cd', 36).length) + 192]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + (32 * ('cd', 100).length) + (64 * ('cd', 36).length) + 224] = Mask(112, 0, _598)
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = 0 / (1000 * Mask(112, 0, _614)) + (997 * s)
                    continue 
                if 997 * s and mem[_586 + 18 len 14] > -1 / 997 * s:
                    revert with 'NH{q', 17
                if not mem[_586 + 18 len 14]:
                    revert with 'NH{q', 18
                if 997 * s * mem[_586 + 18 len 14] / mem[_586 + 18 len 14] != 997 * s:
                    revert with 0, 'ds-math-mul-overflow'
                if mem[_586 + 50 len 14] and 1000 > -1 / mem[_586 + 50 len 14]:
                    revert with 'NH{q', 17
                if 1000 * mem[_586 + 50 len 14] / 1000 != mem[_586 + 50 len 14]:
                    revert with 0, 'ds-math-mul-overflow'
                if 1000 * mem[_586 + 50 len 14] > (-997 * s) - 1:
                    revert with 'NH{q', 17
                if (1000 * mem[_586 + 50 len 14]) + (997 * s) < 1000 * mem[_586 + 50 len 14]:
                    revert with 0, 'ds-math-add-overflow'
                if not (1000 * mem[_586 + 50 len 14]) + (997 * s):
                    revert with 'NH{q', 18
                if idx >= mem[(32 * ('cd', 100).length) + (32 * ('cd', 36).length) + 160]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 36).length) + 192] = mem[_586 + 50 len 14]
                if idx >= mem[(32 * ('cd', 100).length) + (64 * ('cd', 36).length) + 192]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + (32 * ('cd', 100).length) + (64 * ('cd', 36).length) + 224] = Mask(112, 0, _598)
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = 997 * s * Mask(112, 0, _598) / (1000 * Mask(112, 0, _614)) + (997 * s)
                continue 
            require s >= cd[68]
            if 0 >= ('cd', 36).length:
                revert with 'NH{q', 50
            require ('cd', 36)[0] == address(('cd', 36)[0])
            mem[mem[64]] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = address(('cd', 36)[0])
            mem[mem[64] + 68] = cd[4]
            require ext_code.size(stor1)
            call stor1.0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, address(('cd', 36)[0]), cd[4]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            idx = 0
            s = cd[4]
            while idx < ('cd', 36).length:
                if idx >= ('cd', 100).length:
                    revert with 'NH{q', 50
                require cd[((32 * idx) + cd[100] + 36)] == address(cd[((32 * idx) + cd[100] + 36)])
                if idx > -2:
                    revert with 'NH{q', 17
                if idx + 1 >= ('cd', 100).length:
                    revert with 'NH{q', 50
                require cd[((32 * idx + 1) + cd[100] + 36)] == address(cd[((32 * idx + 1) + cd[100] + 36)])
                if address(cd[((32 * idx) + cd[100] + 36)]) == address(cd[((32 * idx + 1) + cd[100] + 36)]):
                    revert with 0, 'UniswapV2Library: IDENTICAL_ADDRESSES'
                if address(cd[((32 * idx) + cd[100] + 36)]) < address(cd[((32 * idx + 1) + cd[100] + 36)]):
                    if not address(cd[((32 * idx) + cd[100] + 36)]):
                        revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                    if idx >= mem[(32 * ('cd', 100).length) + (32 * ('cd', 36).length) + 160]:
                        revert with 'NH{q', 50
                    _1445 = mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 36).length) + 192]
                    if idx >= mem[(32 * ('cd', 100).length) + (64 * ('cd', 36).length) + 192]:
                        revert with 'NH{q', 50
                    _1461 = mem[(32 * idx) + (32 * ('cd', 100).length) + (64 * ('cd', 36).length) + 224]
                    if s and 997 > -1 / s:
                        revert with 'NH{q', 17
                    if 997 * s / 997 != s:
                        revert with 0, 'ds-math-mul-overflow'
                    if not mem[(32 * idx) + (32 * ('cd', 100).length) + (64 * ('cd', 36).length) + 224]:
                        if mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 36).length) + 192] and 1000 > -1 / mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 36).length) + 192]:
                            revert with 'NH{q', 17
                        if 1000 * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 36).length) + 192] / 1000 != mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 36).length) + 192]:
                            revert with 0, 'ds-math-mul-overflow'
                        if 1000 * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 36).length) + 192] > (-997 * s) - 1:
                            revert with 'NH{q', 17
                        if (1000 * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 36).length) + 192]) + (997 * s) < 1000 * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 36).length) + 192]:
                            revert with 0, 'ds-math-add-overflow'
                        if not (1000 * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 36).length) + 192]) + (997 * s):
                            revert with 'NH{q', 18
                        if idx >= ('cd', 100).length:
                            revert with 'NH{q', 50
                        require cd[((32 * idx) + cd[100] + 36)] == address(cd[((32 * idx) + cd[100] + 36)])
                        if ('cd', 36).length < 1:
                            revert with 'NH{q', 17
                        if address(cd[((32 * idx) + cd[100] + 36)]) == address(cd[((32 * idx) + cd[100] + 36)]):
                            if idx >= ('cd', 36).length - 1:
                                if idx >= ('cd', 36).length:
                                    revert with 'NH{q', 50
                                require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                                _1577 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_1577 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1577 + 36] = 0
                                mem[_1577 + 68] = 0 / (1000 * _1445) + (997 * s)
                                mem[_1577 + 100] = msg.sender
                                mem[_1577 + 132] = 128
                                mem[_1577 + 164] = mem[_1577]
                                t = 0
                                while t < mem[_1577]:
                                    mem[_1577 + t + 196] = mem[_1577 + t + 32]
                                    t = t + 32
                                    continue 
                                if ceil32(mem[_1577]) > mem[_1577]:
                                    mem[_1577 + mem[_1577] + 196] = 0
                                require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                call address(cd[((32 * idx) + cd[36] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, 0 / (1000 * _1445) + (997 * s), msg.sender, 128, mem[_1577], mem[_1577 + 196 len ceil32(mem[_1577])]
                            else:
                                if idx > -2:
                                    revert with 'NH{q', 17
                                if idx + 1 >= ('cd', 36).length:
                                    revert with 'NH{q', 50
                                require cd[((32 * idx + 1) + cd[36] + 36)] == address(cd[((32 * idx + 1) + cd[36] + 36)])
                                if idx >= ('cd', 36).length:
                                    revert with 'NH{q', 50
                                require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                                _1657 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_1657 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1657 + 36] = 0
                                mem[_1657 + 68] = 0 / (1000 * _1445) + (997 * s)
                                mem[_1657 + 100] = address(cd[((32 * idx + 1) + cd[36] + 36)])
                                mem[_1657 + 132] = 128
                                mem[_1657 + 164] = mem[_1657]
                                t = 0
                                while t < mem[_1657]:
                                    mem[_1657 + t + 196] = mem[_1657 + t + 32]
                                    t = t + 32
                                    continue 
                                if ceil32(mem[_1657]) > mem[_1657]:
                                    mem[_1657 + mem[_1657] + 196] = 0
                                require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                call address(cd[((32 * idx) + cd[36] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, 0 / (1000 * _1445) + (997 * s), address(cd[((32 * idx + 1) + cd[36] + 36)]), 128, mem[_1657], mem[_1657 + 196 len ceil32(mem[_1657])]
                        else:
                            if idx >= ('cd', 36).length - 1:
                                if idx >= ('cd', 36).length:
                                    revert with 'NH{q', 50
                                require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                                _1578 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_1578 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1578 + 36] = 0 / (1000 * _1445) + (997 * s)
                                mem[_1578 + 68] = 0
                                mem[_1578 + 100] = msg.sender
                                mem[_1578 + 132] = 128
                                mem[_1578 + 164] = mem[_1578]
                                t = 0
                                while t < mem[_1578]:
                                    mem[_1578 + t + 196] = mem[_1578 + t + 32]
                                    t = t + 32
                                    continue 
                                if ceil32(mem[_1578]) > mem[_1578]:
                                    mem[_1578 + mem[_1578] + 196] = 0
                                require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                call address(cd[((32 * idx) + cd[36] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0 / (1000 * _1445) + (997 * s), 0, msg.sender, 128, mem[_1578], mem[_1578 + 196 len ceil32(mem[_1578])]
                            else:
                                if idx > -2:
                                    revert with 'NH{q', 17
                                if idx + 1 >= ('cd', 36).length:
                                    revert with 'NH{q', 50
                                require cd[((32 * idx + 1) + cd[36] + 36)] == address(cd[((32 * idx + 1) + cd[36] + 36)])
                                if idx >= ('cd', 36).length:
                                    revert with 'NH{q', 50
                                require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                                _1658 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_1658 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1658 + 36] = 0 / (1000 * _1445) + (997 * s)
                                mem[_1658 + 68] = 0
                                mem[_1658 + 100] = address(cd[((32 * idx + 1) + cd[36] + 36)])
                                mem[_1658 + 132] = 128
                                mem[_1658 + 164] = mem[_1658]
                                t = 0
                                while t < mem[_1658]:
                                    mem[_1658 + t + 196] = mem[_1658 + t + 32]
                                    t = t + 32
                                    continue 
                                if ceil32(mem[_1658]) > mem[_1658]:
                                    mem[_1658 + mem[_1658] + 196] = 0
                                require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                call address(cd[((32 * idx) + cd[36] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0 / (1000 * _1445) + (997 * s), 0, address(cd[((32 * idx + 1) + cd[36] + 36)]), 128, mem[_1658], mem[_1658 + 196 len ceil32(mem[_1658])]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = 0 / (1000 * _1445) + (997 * s)
                        continue 
                    if 997 * s and mem[(32 * idx) + (32 * ('cd', 100).length) + (64 * ('cd', 36).length) + 224] > -1 / 997 * s:
                        revert with 'NH{q', 17
                    if not mem[(32 * idx) + (32 * ('cd', 100).length) + (64 * ('cd', 36).length) + 224]:
                        revert with 'NH{q', 18
                    if 997 * s * mem[(32 * idx) + (32 * ('cd', 100).length) + (64 * ('cd', 36).length) + 224] / mem[(32 * idx) + (32 * ('cd', 100).length) + (64 * ('cd', 36).length) + 224] != 997 * s:
                        revert with 0, 'ds-math-mul-overflow'
                    if mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 36).length) + 192] and 1000 > -1 / mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 36).length) + 192]:
                        revert with 'NH{q', 17
                    if 1000 * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 36).length) + 192] / 1000 != mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 36).length) + 192]:
                        revert with 0, 'ds-math-mul-overflow'
                    if 1000 * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 36).length) + 192] > (-997 * s) - 1:
                        revert with 'NH{q', 17
                    if (1000 * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 36).length) + 192]) + (997 * s) < 1000 * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 36).length) + 192]:
                        revert with 0, 'ds-math-add-overflow'
                    if not (1000 * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 36).length) + 192]) + (997 * s):
                        revert with 'NH{q', 18
                    if idx >= ('cd', 100).length:
                        revert with 'NH{q', 50
                    require cd[((32 * idx) + cd[100] + 36)] == address(cd[((32 * idx) + cd[100] + 36)])
                    if ('cd', 36).length < 1:
                        revert with 'NH{q', 17
                    if address(cd[((32 * idx) + cd[100] + 36)]) == address(cd[((32 * idx) + cd[100] + 36)]):
                        if idx >= ('cd', 36).length - 1:
                            if idx >= ('cd', 36).length:
                                revert with 'NH{q', 50
                            require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                            _1609 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_1609 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_1609 + 36] = 0
                            mem[_1609 + 68] = 997 * s * _1461 / (1000 * _1445) + (997 * s)
                            mem[_1609 + 100] = msg.sender
                            mem[_1609 + 132] = 128
                            mem[_1609 + 164] = mem[_1609]
                            t = 0
                            while t < mem[_1609]:
                                mem[_1609 + t + 196] = mem[_1609 + t + 32]
                                t = t + 32
                                continue 
                            if ceil32(mem[_1609]) > mem[_1609]:
                                mem[_1609 + mem[_1609] + 196] = 0
                            require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                            call address(cd[((32 * idx) + cd[36] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, 997 * s * _1461 / (1000 * _1445) + (997 * s), msg.sender, 128, mem[_1609], mem[_1609 + 196 len ceil32(mem[_1609])]
                        else:
                            if idx > -2:
                                revert with 'NH{q', 17
                            if idx + 1 >= ('cd', 36).length:
                                revert with 'NH{q', 50
                            require cd[((32 * idx + 1) + cd[36] + 36)] == address(cd[((32 * idx + 1) + cd[36] + 36)])
                            if idx >= ('cd', 36).length:
                                revert with 'NH{q', 50
                            require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                            _1753 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_1753 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_1753 + 36] = 0
                            mem[_1753 + 68] = 997 * s * _1461 / (1000 * _1445) + (997 * s)
                            mem[_1753 + 100] = address(cd[((32 * idx + 1) + cd[36] + 36)])
                            mem[_1753 + 132] = 128
                            mem[_1753 + 164] = mem[_1753]
                            t = 0
                            while t < mem[_1753]:
                                mem[_1753 + t + 196] = mem[_1753 + t + 32]
                                t = t + 32
                                continue 
                            if ceil32(mem[_1753]) > mem[_1753]:
                                mem[_1753 + mem[_1753] + 196] = 0
                            require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                            call address(cd[((32 * idx) + cd[36] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, 997 * s * _1461 / (1000 * _1445) + (997 * s), address(cd[((32 * idx + 1) + cd[36] + 36)]), 128, mem[_1753], mem[_1753 + 196 len ceil32(mem[_1753])]
                    else:
                        if idx >= ('cd', 36).length - 1:
                            if idx >= ('cd', 36).length:
                                revert with 'NH{q', 50
                            require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                            _1610 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_1610 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_1610 + 36] = 997 * s * _1461 / (1000 * _1445) + (997 * s)
                            mem[_1610 + 68] = 0
                            mem[_1610 + 100] = msg.sender
                            mem[_1610 + 132] = 128
                            mem[_1610 + 164] = mem[_1610]
                            t = 0
                            while t < mem[_1610]:
                                mem[_1610 + t + 196] = mem[_1610 + t + 32]
                                t = t + 32
                                continue 
                            if ceil32(mem[_1610]) > mem[_1610]:
                                mem[_1610 + mem[_1610] + 196] = 0
                            require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                            call address(cd[((32 * idx) + cd[36] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 997 * s * _1461 / (1000 * _1445) + (997 * s), 0, msg.sender, 128, mem[_1610], mem[_1610 + 196 len ceil32(mem[_1610])]
                        else:
                            if idx > -2:
                                revert with 'NH{q', 17
                            if idx + 1 >= ('cd', 36).length:
                                revert with 'NH{q', 50
                            require cd[((32 * idx + 1) + cd[36] + 36)] == address(cd[((32 * idx + 1) + cd[36] + 36)])
                            if idx >= ('cd', 36).length:
                                revert with 'NH{q', 50
                            require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                            _1754 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_1754 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_1754 + 36] = 997 * s * _1461 / (1000 * _1445) + (997 * s)
                            mem[_1754 + 68] = 0
                            mem[_1754 + 100] = address(cd[((32 * idx + 1) + cd[36] + 36)])
                            mem[_1754 + 132] = 128
                            mem[_1754 + 164] = mem[_1754]
                            t = 0
                            while t < mem[_1754]:
                                mem[_1754 + t + 196] = mem[_1754 + t + 32]
                                t = t + 32
                                continue 
                            if ceil32(mem[_1754]) > mem[_1754]:
                                mem[_1754 + mem[_1754] + 196] = 0
                            require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                            call address(cd[((32 * idx) + cd[36] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 997 * s * _1461 / (1000 * _1445) + (997 * s), 0, address(cd[((32 * idx + 1) + cd[36] + 36)]), 128, mem[_1754], mem[_1754 + 196 len ceil32(mem[_1754])]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = 997 * s * _1461 / (1000 * _1445) + (997 * s)
                    continue 
                if not address(cd[((32 * idx + 1) + cd[100] + 36)]):
                    revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                if idx >= mem[(32 * ('cd', 100).length) + (32 * ('cd', 36).length) + 160]:
                    revert with 'NH{q', 50
                _1447 = mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 36).length) + 192]
                if idx >= mem[(32 * ('cd', 100).length) + (64 * ('cd', 36).length) + 192]:
                    revert with 'NH{q', 50
                _1462 = mem[(32 * idx) + (32 * ('cd', 100).length) + (64 * ('cd', 36).length) + 224]
                if s and 997 > -1 / s:
                    revert with 'NH{q', 17
                if 997 * s / 997 != s:
                    revert with 0, 'ds-math-mul-overflow'
                if not mem[(32 * idx) + (32 * ('cd', 100).length) + (64 * ('cd', 36).length) + 224]:
                    if mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 36).length) + 192] and 1000 > -1 / mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 36).length) + 192]:
                        revert with 'NH{q', 17
                    if 1000 * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 36).length) + 192] / 1000 != mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 36).length) + 192]:
                        revert with 0, 'ds-math-mul-overflow'
                    if 1000 * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 36).length) + 192] > (-997 * s) - 1:
                        revert with 'NH{q', 17
                    if (1000 * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 36).length) + 192]) + (997 * s) < 1000 * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 36).length) + 192]:
                        revert with 0, 'ds-math-add-overflow'
                    if not (1000 * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 36).length) + 192]) + (997 * s):
                        revert with 'NH{q', 18
                    if idx >= ('cd', 100).length:
                        revert with 'NH{q', 50
                    require cd[((32 * idx) + cd[100] + 36)] == address(cd[((32 * idx) + cd[100] + 36)])
                    if ('cd', 36).length < 1:
                        revert with 'NH{q', 17
                    if address(cd[((32 * idx) + cd[100] + 36)]) == address(cd[((32 * idx + 1) + cd[100] + 36)]):
                        if idx >= ('cd', 36).length - 1:
                            if idx >= ('cd', 36).length:
                                revert with 'NH{q', 50
                            require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                            _1579 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_1579 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_1579 + 36] = 0
                            mem[_1579 + 68] = 0 / (1000 * _1447) + (997 * s)
                            mem[_1579 + 100] = msg.sender
                            mem[_1579 + 132] = 128
                            mem[_1579 + 164] = mem[_1579]
                            t = 0
                            while t < mem[_1579]:
                                mem[_1579 + t + 196] = mem[_1579 + t + 32]
                                t = t + 32
                                continue 
                            if ceil32(mem[_1579]) > mem[_1579]:
                                mem[_1579 + mem[_1579] + 196] = 0
                            require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                            call address(cd[((32 * idx) + cd[36] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, 0 / (1000 * _1447) + (997 * s), msg.sender, 128, mem[_1579], mem[_1579 + 196 len ceil32(mem[_1579])]
                        else:
                            if idx > -2:
                                revert with 'NH{q', 17
                            if idx + 1 >= ('cd', 36).length:
                                revert with 'NH{q', 50
                            require cd[((32 * idx + 1) + cd[36] + 36)] == address(cd[((32 * idx + 1) + cd[36] + 36)])
                            if idx >= ('cd', 36).length:
                                revert with 'NH{q', 50
                            require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                            _1659 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_1659 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_1659 + 36] = 0
                            mem[_1659 + 68] = 0 / (1000 * _1447) + (997 * s)
                            mem[_1659 + 100] = address(cd[((32 * idx + 1) + cd[36] + 36)])
                            mem[_1659 + 132] = 128
                            mem[_1659 + 164] = mem[_1659]
                            t = 0
                            while t < mem[_1659]:
                                mem[_1659 + t + 196] = mem[_1659 + t + 32]
                                t = t + 32
                                continue 
                            if ceil32(mem[_1659]) > mem[_1659]:
                                mem[_1659 + mem[_1659] + 196] = 0
                            require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                            call address(cd[((32 * idx) + cd[36] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, 0 / (1000 * _1447) + (997 * s), address(cd[((32 * idx + 1) + cd[36] + 36)]), 128, mem[_1659], mem[_1659 + 196 len ceil32(mem[_1659])]
                    else:
                        if idx >= ('cd', 36).length - 1:
                            if idx >= ('cd', 36).length:
                                revert with 'NH{q', 50
                            require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                            _1580 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_1580 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_1580 + 36] = 0 / (1000 * _1447) + (997 * s)
                            mem[_1580 + 68] = 0
                            mem[_1580 + 100] = msg.sender
                            mem[_1580 + 132] = 128
                            mem[_1580 + 164] = mem[_1580]
                            t = 0
                            while t < mem[_1580]:
                                mem[_1580 + t + 196] = mem[_1580 + t + 32]
                                t = t + 32
                                continue 
                            if ceil32(mem[_1580]) > mem[_1580]:
                                mem[_1580 + mem[_1580] + 196] = 0
                            require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                            call address(cd[((32 * idx) + cd[36] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0 / (1000 * _1447) + (997 * s), 0, msg.sender, 128, mem[_1580], mem[_1580 + 196 len ceil32(mem[_1580])]
                        else:
                            if idx > -2:
                                revert with 'NH{q', 17
                            if idx + 1 >= ('cd', 36).length:
                                revert with 'NH{q', 50
                            require cd[((32 * idx + 1) + cd[36] + 36)] == address(cd[((32 * idx + 1) + cd[36] + 36)])
                            if idx >= ('cd', 36).length:
                                revert with 'NH{q', 50
                            require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                            _1660 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_1660 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_1660 + 36] = 0 / (1000 * _1447) + (997 * s)
                            mem[_1660 + 68] = 0
                            mem[_1660 + 100] = address(cd[((32 * idx + 1) + cd[36] + 36)])
                            mem[_1660 + 132] = 128
                            mem[_1660 + 164] = mem[_1660]
                            t = 0
                            while t < mem[_1660]:
                                mem[_1660 + t + 196] = mem[_1660 + t + 32]
                                t = t + 32
                                continue 
                            if ceil32(mem[_1660]) > mem[_1660]:
                                mem[_1660 + mem[_1660] + 196] = 0
                            require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                            call address(cd[((32 * idx) + cd[36] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0 / (1000 * _1447) + (997 * s), 0, address(cd[((32 * idx + 1) + cd[36] + 36)]), 128, mem[_1660], mem[_1660 + 196 len ceil32(mem[_1660])]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = 0 / (1000 * _1447) + (997 * s)
                    continue 
                if 997 * s and mem[(32 * idx) + (32 * ('cd', 100).length) + (64 * ('cd', 36).length) + 224] > -1 / 997 * s:
                    revert with 'NH{q', 17
                if not mem[(32 * idx) + (32 * ('cd', 100).length) + (64 * ('cd', 36).length) + 224]:
                    revert with 'NH{q', 18
                if 997 * s * mem[(32 * idx) + (32 * ('cd', 100).length) + (64 * ('cd', 36).length) + 224] / mem[(32 * idx) + (32 * ('cd', 100).length) + (64 * ('cd', 36).length) + 224] != 997 * s:
                    revert with 0, 'ds-math-mul-overflow'
                if mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 36).length) + 192] and 1000 > -1 / mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 36).length) + 192]:
                    revert with 'NH{q', 17
                if 1000 * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 36).length) + 192] / 1000 != mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 36).length) + 192]:
                    revert with 0, 'ds-math-mul-overflow'
                if 1000 * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 36).length) + 192] > (-997 * s) - 1:
                    revert with 'NH{q', 17
                if (1000 * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 36).length) + 192]) + (997 * s) < 1000 * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 36).length) + 192]:
                    revert with 0, 'ds-math-add-overflow'
                if not (1000 * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 36).length) + 192]) + (997 * s):
                    revert with 'NH{q', 18
                if idx >= ('cd', 100).length:
                    revert with 'NH{q', 50
                require cd[((32 * idx) + cd[100] + 36)] == address(cd[((32 * idx) + cd[100] + 36)])
                if ('cd', 36).length < 1:
                    revert with 'NH{q', 17
                if address(cd[((32 * idx) + cd[100] + 36)]) == address(cd[((32 * idx + 1) + cd[100] + 36)]):
                    if idx >= ('cd', 36).length - 1:
                        if idx >= ('cd', 36).length:
                            revert with 'NH{q', 50
                        require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                        _1611 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_1611 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_1611 + 36] = 0
                        mem[_1611 + 68] = 997 * s * _1462 / (1000 * _1447) + (997 * s)
                        mem[_1611 + 100] = msg.sender
                        mem[_1611 + 132] = 128
                        mem[_1611 + 164] = mem[_1611]
                        t = 0
                        while t < mem[_1611]:
                            mem[_1611 + t + 196] = mem[_1611 + t + 32]
                            t = t + 32
                            continue 
                        if ceil32(mem[_1611]) > mem[_1611]:
                            mem[_1611 + mem[_1611] + 196] = 0
                        require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                        call address(cd[((32 * idx) + cd[36] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, 997 * s * _1462 / (1000 * _1447) + (997 * s), msg.sender, 128, mem[_1611], mem[_1611 + 196 len ceil32(mem[_1611])]
                    else:
                        if idx > -2:
                            revert with 'NH{q', 17
                        if idx + 1 >= ('cd', 36).length:
                            revert with 'NH{q', 50
                        require cd[((32 * idx + 1) + cd[36] + 36)] == address(cd[((32 * idx + 1) + cd[36] + 36)])
                        if idx >= ('cd', 36).length:
                            revert with 'NH{q', 50
                        require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                        _1755 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_1755 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_1755 + 36] = 0
                        mem[_1755 + 68] = 997 * s * _1462 / (1000 * _1447) + (997 * s)
                        mem[_1755 + 100] = address(cd[((32 * idx + 1) + cd[36] + 36)])
                        mem[_1755 + 132] = 128
                        mem[_1755 + 164] = mem[_1755]
                        t = 0
                        while t < mem[_1755]:
                            mem[_1755 + t + 196] = mem[_1755 + t + 32]
                            t = t + 32
                            continue 
                        if ceil32(mem[_1755]) > mem[_1755]:
                            mem[_1755 + mem[_1755] + 196] = 0
                        require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                        call address(cd[((32 * idx) + cd[36] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, 997 * s * _1462 / (1000 * _1447) + (997 * s), address(cd[((32 * idx + 1) + cd[36] + 36)]), 128, mem[_1755], mem[_1755 + 196 len ceil32(mem[_1755])]
                else:
                    if idx >= ('cd', 36).length - 1:
                        if idx >= ('cd', 36).length:
                            revert with 'NH{q', 50
                        require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                        _1612 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_1612 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_1612 + 36] = 997 * s * _1462 / (1000 * _1447) + (997 * s)
                        mem[_1612 + 68] = 0
                        mem[_1612 + 100] = msg.sender
                        mem[_1612 + 132] = 128
                        mem[_1612 + 164] = mem[_1612]
                        t = 0
                        while t < mem[_1612]:
                            mem[_1612 + t + 196] = mem[_1612 + t + 32]
                            t = t + 32
                            continue 
                        if ceil32(mem[_1612]) > mem[_1612]:
                            mem[_1612 + mem[_1612] + 196] = 0
                        require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                        call address(cd[((32 * idx) + cd[36] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 997 * s * _1462 / (1000 * _1447) + (997 * s), 0, msg.sender, 128, mem[_1612], mem[_1612 + 196 len ceil32(mem[_1612])]
                    else:
                        if idx > -2:
                            revert with 'NH{q', 17
                        if idx + 1 >= ('cd', 36).length:
                            revert with 'NH{q', 50
                        require cd[((32 * idx + 1) + cd[36] + 36)] == address(cd[((32 * idx + 1) + cd[36] + 36)])
                        if idx >= ('cd', 36).length:
                            revert with 'NH{q', 50
                        require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                        _1756 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_1756 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_1756 + 36] = 997 * s * _1462 / (1000 * _1447) + (997 * s)
                        mem[_1756 + 68] = 0
                        mem[_1756 + 100] = address(cd[((32 * idx + 1) + cd[36] + 36)])
                        mem[_1756 + 132] = 128
                        mem[_1756 + 164] = mem[_1756]
                        t = 0
                        while t < mem[_1756]:
                            mem[_1756 + t + 196] = mem[_1756 + t + 32]
                            t = t + 32
                            continue 
                        if ceil32(mem[_1756]) > mem[_1756]:
                            mem[_1756 + mem[_1756] + 196] = 0
                        require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                        call address(cd[((32 * idx) + cd[36] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 997 * s * _1462 / (1000 * _1447) + (997 * s), 0, address(cd[((32 * idx + 1) + cd[36] + 36)]), 128, mem[_1756], mem[_1756 + 196 len ceil32(mem[_1756])]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = 997 * s * _1462 / (1000 * _1447) + (997 * s)
                continue 
        else:
            mem[(32 * ('cd', 100).length) + (64 * ('cd', 36).length) + 224 len 32 * ('cd', 36).length] = call.data[calldata.size len 32 * ('cd', 36).length]
            idx = 0
            s = cd[4]
            while idx < ('cd', 36).length:
                if idx >= mem[(32 * ('cd', 100).length) + 128]:
                    revert with 'NH{q', 50
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                _542 = mem[(32 * idx) + 128]
                if idx > -2:
                    revert with 'NH{q', 17
                if idx + 1 >= mem[96]:
                    revert with 'NH{q', 50
                _550 = mem[(32 * idx + 1) + 128]
                if mem[(32 * idx) + 140 len 20] == mem[(32 * idx + 1) + 140 len 20]:
                    revert with 0, 'UniswapV2Library: IDENTICAL_ADDRESSES'
                if mem[(32 * idx) + 140 len 20] < mem[(32 * idx + 1) + 140 len 20]:
                    if not mem[(32 * idx) + 140 len 20]:
                        revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                    require ext_code.size(mem[(32 * idx) + (32 * ('cd', 100).length) + 172 len 20])
                    staticcall mem[(32 * idx) + (32 * ('cd', 100).length) + 172 len 20].getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _587 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _599 = mem[_587]
                    require mem[_587] == mem[_587 + 18 len 14]
                    _615 = mem[_587 + 32]
                    require mem[_587 + 32] == mem[_587 + 50 len 14]
                    require mem[_587 + 64] == mem[_587 + 92 len 4]
                    if s and 997 > -1 / s:
                        revert with 'NH{q', 17
                    if 997 * s / 997 != s:
                        revert with 0, 'ds-math-mul-overflow'
                    if address(_542) == address(_542):
                        if not mem[_587 + 50 len 14]:
                            if mem[_587 + 18 len 14] and 1000 > -1 / mem[_587 + 18 len 14]:
                                revert with 'NH{q', 17
                            if 1000 * mem[_587 + 18 len 14] / 1000 != mem[_587 + 18 len 14]:
                                revert with 0, 'ds-math-mul-overflow'
                            if 1000 * mem[_587 + 18 len 14] > (-997 * s) - 1:
                                revert with 'NH{q', 17
                            if (1000 * mem[_587 + 18 len 14]) + (997 * s) < 1000 * mem[_587 + 18 len 14]:
                                revert with 0, 'ds-math-add-overflow'
                            if not (1000 * mem[_587 + 18 len 14]) + (997 * s):
                                revert with 'NH{q', 18
                            if idx >= mem[(32 * ('cd', 100).length) + (32 * ('cd', 36).length) + 160]:
                                revert with 'NH{q', 50
                            mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 36).length) + 192] = mem[_587 + 18 len 14]
                            if idx >= mem[(32 * ('cd', 100).length) + (64 * ('cd', 36).length) + 192]:
                                revert with 'NH{q', 50
                            mem[(32 * idx) + (32 * ('cd', 100).length) + (64 * ('cd', 36).length) + 224] = Mask(112, 0, _615)
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = 0 / (1000 * Mask(112, 0, _599)) + (997 * s)
                            continue 
                        if 997 * s and mem[_587 + 50 len 14] > -1 / 997 * s:
                            revert with 'NH{q', 17
                        if not mem[_587 + 50 len 14]:
                            revert with 'NH{q', 18
                        if 997 * s * mem[_587 + 50 len 14] / mem[_587 + 50 len 14] != 997 * s:
                            revert with 0, 'ds-math-mul-overflow'
                        if mem[_587 + 18 len 14] and 1000 > -1 / mem[_587 + 18 len 14]:
                            revert with 'NH{q', 17
                        if 1000 * mem[_587 + 18 len 14] / 1000 != mem[_587 + 18 len 14]:
                            revert with 0, 'ds-math-mul-overflow'
                        if 1000 * mem[_587 + 18 len 14] > (-997 * s) - 1:
                            revert with 'NH{q', 17
                        if (1000 * mem[_587 + 18 len 14]) + (997 * s) < 1000 * mem[_587 + 18 len 14]:
                            revert with 0, 'ds-math-add-overflow'
                        if not (1000 * mem[_587 + 18 len 14]) + (997 * s):
                            revert with 'NH{q', 18
                        if idx >= mem[(32 * ('cd', 100).length) + (32 * ('cd', 36).length) + 160]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 36).length) + 192] = mem[_587 + 18 len 14]
                        if idx >= mem[(32 * ('cd', 100).length) + (64 * ('cd', 36).length) + 192]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + (32 * ('cd', 100).length) + (64 * ('cd', 36).length) + 224] = Mask(112, 0, _615)
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = 997 * s * Mask(112, 0, _615) / (1000 * Mask(112, 0, _599)) + (997 * s)
                        continue 
                    if not mem[_587 + 18 len 14]:
                        if mem[_587 + 50 len 14] and 1000 > -1 / mem[_587 + 50 len 14]:
                            revert with 'NH{q', 17
                        if 1000 * mem[_587 + 50 len 14] / 1000 != mem[_587 + 50 len 14]:
                            revert with 0, 'ds-math-mul-overflow'
                        if 1000 * mem[_587 + 50 len 14] > (-997 * s) - 1:
                            revert with 'NH{q', 17
                        if (1000 * mem[_587 + 50 len 14]) + (997 * s) < 1000 * mem[_587 + 50 len 14]:
                            revert with 0, 'ds-math-add-overflow'
                        if not (1000 * mem[_587 + 50 len 14]) + (997 * s):
                            revert with 'NH{q', 18
                        if idx >= mem[(32 * ('cd', 100).length) + (32 * ('cd', 36).length) + 160]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 36).length) + 192] = mem[_587 + 50 len 14]
                        if idx >= mem[(32 * ('cd', 100).length) + (64 * ('cd', 36).length) + 192]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + (32 * ('cd', 100).length) + (64 * ('cd', 36).length) + 224] = Mask(112, 0, _599)
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = 0 / (1000 * Mask(112, 0, _615)) + (997 * s)
                        continue 
                    if 997 * s and mem[_587 + 18 len 14] > -1 / 997 * s:
                        revert with 'NH{q', 17
                    if not mem[_587 + 18 len 14]:
                        revert with 'NH{q', 18
                    if 997 * s * mem[_587 + 18 len 14] / mem[_587 + 18 len 14] != 997 * s:
                        revert with 0, 'ds-math-mul-overflow'
                    if mem[_587 + 50 len 14] and 1000 > -1 / mem[_587 + 50 len 14]:
                        revert with 'NH{q', 17
                    if 1000 * mem[_587 + 50 len 14] / 1000 != mem[_587 + 50 len 14]:
                        revert with 0, 'ds-math-mul-overflow'
                    if 1000 * mem[_587 + 50 len 14] > (-997 * s) - 1:
                        revert with 'NH{q', 17
                    if (1000 * mem[_587 + 50 len 14]) + (997 * s) < 1000 * mem[_587 + 50 len 14]:
                        revert with 0, 'ds-math-add-overflow'
                    if not (1000 * mem[_587 + 50 len 14]) + (997 * s):
                        revert with 'NH{q', 18
                    if idx >= mem[(32 * ('cd', 100).length) + (32 * ('cd', 36).length) + 160]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 36).length) + 192] = mem[_587 + 50 len 14]
                    if idx >= mem[(32 * ('cd', 100).length) + (64 * ('cd', 36).length) + 192]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + (32 * ('cd', 100).length) + (64 * ('cd', 36).length) + 224] = Mask(112, 0, _599)
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = 997 * s * Mask(112, 0, _599) / (1000 * Mask(112, 0, _615)) + (997 * s)
                    continue 
                if not mem[(32 * idx + 1) + 140 len 20]:
                    revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                require ext_code.size(mem[(32 * idx) + (32 * ('cd', 100).length) + 172 len 20])
                staticcall mem[(32 * idx) + (32 * ('cd', 100).length) + 172 len 20].getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _588 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _600 = mem[_588]
                require mem[_588] == mem[_588 + 18 len 14]
                _616 = mem[_588 + 32]
                require mem[_588 + 32] == mem[_588 + 50 len 14]
                require mem[_588 + 64] == mem[_588 + 92 len 4]
                if s and 997 > -1 / s:
                    revert with 'NH{q', 17
                if 997 * s / 997 != s:
                    revert with 0, 'ds-math-mul-overflow'
                if address(_542) == address(_550):
                    if not mem[_588 + 50 len 14]:
                        if mem[_588 + 18 len 14] and 1000 > -1 / mem[_588 + 18 len 14]:
                            revert with 'NH{q', 17
                        if 1000 * mem[_588 + 18 len 14] / 1000 != mem[_588 + 18 len 14]:
                            revert with 0, 'ds-math-mul-overflow'
                        if 1000 * mem[_588 + 18 len 14] > (-997 * s) - 1:
                            revert with 'NH{q', 17
                        if (1000 * mem[_588 + 18 len 14]) + (997 * s) < 1000 * mem[_588 + 18 len 14]:
                            revert with 0, 'ds-math-add-overflow'
                        if not (1000 * mem[_588 + 18 len 14]) + (997 * s):
                            revert with 'NH{q', 18
                        if idx >= mem[(32 * ('cd', 100).length) + (32 * ('cd', 36).length) + 160]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 36).length) + 192] = mem[_588 + 18 len 14]
                        if idx >= mem[(32 * ('cd', 100).length) + (64 * ('cd', 36).length) + 192]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + (32 * ('cd', 100).length) + (64 * ('cd', 36).length) + 224] = Mask(112, 0, _616)
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = 0 / (1000 * Mask(112, 0, _600)) + (997 * s)
                        continue 
                    if 997 * s and mem[_588 + 50 len 14] > -1 / 997 * s:
                        revert with 'NH{q', 17
                    if not mem[_588 + 50 len 14]:
                        revert with 'NH{q', 18
                    if 997 * s * mem[_588 + 50 len 14] / mem[_588 + 50 len 14] != 997 * s:
                        revert with 0, 'ds-math-mul-overflow'
                    if mem[_588 + 18 len 14] and 1000 > -1 / mem[_588 + 18 len 14]:
                        revert with 'NH{q', 17
                    if 1000 * mem[_588 + 18 len 14] / 1000 != mem[_588 + 18 len 14]:
                        revert with 0, 'ds-math-mul-overflow'
                    if 1000 * mem[_588 + 18 len 14] > (-997 * s) - 1:
                        revert with 'NH{q', 17
                    if (1000 * mem[_588 + 18 len 14]) + (997 * s) < 1000 * mem[_588 + 18 len 14]:
                        revert with 0, 'ds-math-add-overflow'
                    if not (1000 * mem[_588 + 18 len 14]) + (997 * s):
                        revert with 'NH{q', 18
                    if idx >= mem[(32 * ('cd', 100).length) + (32 * ('cd', 36).length) + 160]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 36).length) + 192] = mem[_588 + 18 len 14]
                    if idx >= mem[(32 * ('cd', 100).length) + (64 * ('cd', 36).length) + 192]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + (32 * ('cd', 100).length) + (64 * ('cd', 36).length) + 224] = Mask(112, 0, _616)
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = 997 * s * Mask(112, 0, _616) / (1000 * Mask(112, 0, _600)) + (997 * s)
                    continue 
                if not mem[_588 + 18 len 14]:
                    if mem[_588 + 50 len 14] and 1000 > -1 / mem[_588 + 50 len 14]:
                        revert with 'NH{q', 17
                    if 1000 * mem[_588 + 50 len 14] / 1000 != mem[_588 + 50 len 14]:
                        revert with 0, 'ds-math-mul-overflow'
                    if 1000 * mem[_588 + 50 len 14] > (-997 * s) - 1:
                        revert with 'NH{q', 17
                    if (1000 * mem[_588 + 50 len 14]) + (997 * s) < 1000 * mem[_588 + 50 len 14]:
                        revert with 0, 'ds-math-add-overflow'
                    if not (1000 * mem[_588 + 50 len 14]) + (997 * s):
                        revert with 'NH{q', 18
                    if idx >= mem[(32 * ('cd', 100).length) + (32 * ('cd', 36).length) + 160]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 36).length) + 192] = mem[_588 + 50 len 14]
                    if idx >= mem[(32 * ('cd', 100).length) + (64 * ('cd', 36).length) + 192]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + (32 * ('cd', 100).length) + (64 * ('cd', 36).length) + 224] = Mask(112, 0, _600)
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = 0 / (1000 * Mask(112, 0, _616)) + (997 * s)
                    continue 
                if 997 * s and mem[_588 + 18 len 14] > -1 / 997 * s:
                    revert with 'NH{q', 17
                if not mem[_588 + 18 len 14]:
                    revert with 'NH{q', 18
                if 997 * s * mem[_588 + 18 len 14] / mem[_588 + 18 len 14] != 997 * s:
                    revert with 0, 'ds-math-mul-overflow'
                if mem[_588 + 50 len 14] and 1000 > -1 / mem[_588 + 50 len 14]:
                    revert with 'NH{q', 17
                if 1000 * mem[_588 + 50 len 14] / 1000 != mem[_588 + 50 len 14]:
                    revert with 0, 'ds-math-mul-overflow'
                if 1000 * mem[_588 + 50 len 14] > (-997 * s) - 1:
                    revert with 'NH{q', 17
                if (1000 * mem[_588 + 50 len 14]) + (997 * s) < 1000 * mem[_588 + 50 len 14]:
                    revert with 0, 'ds-math-add-overflow'
                if not (1000 * mem[_588 + 50 len 14]) + (997 * s):
                    revert with 'NH{q', 18
                if idx >= mem[(32 * ('cd', 100).length) + (32 * ('cd', 36).length) + 160]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 36).length) + 192] = mem[_588 + 50 len 14]
                if idx >= mem[(32 * ('cd', 100).length) + (64 * ('cd', 36).length) + 192]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + (32 * ('cd', 100).length) + (64 * ('cd', 36).length) + 224] = Mask(112, 0, _600)
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = 997 * s * Mask(112, 0, _600) / (1000 * Mask(112, 0, _616)) + (997 * s)
                continue 
            require s >= cd[68]
            if 0 >= ('cd', 36).length:
                revert with 'NH{q', 50
            require ('cd', 36)[0] == address(('cd', 36)[0])
            mem[mem[64]] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = address(('cd', 36)[0])
            mem[mem[64] + 68] = cd[4]
            require ext_code.size(stor1)
            call stor1.0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, address(('cd', 36)[0]), cd[4]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            idx = 0
            s = cd[4]
            while idx < ('cd', 36).length:
                if idx >= ('cd', 100).length:
                    revert with 'NH{q', 50
                require cd[((32 * idx) + cd[100] + 36)] == address(cd[((32 * idx) + cd[100] + 36)])
                if idx > -2:
                    revert with 'NH{q', 17
                if idx + 1 >= ('cd', 100).length:
                    revert with 'NH{q', 50
                require cd[((32 * idx + 1) + cd[100] + 36)] == address(cd[((32 * idx + 1) + cd[100] + 36)])
                if address(cd[((32 * idx) + cd[100] + 36)]) == address(cd[((32 * idx + 1) + cd[100] + 36)]):
                    revert with 0, 'UniswapV2Library: IDENTICAL_ADDRESSES'
                if address(cd[((32 * idx) + cd[100] + 36)]) < address(cd[((32 * idx + 1) + cd[100] + 36)]):
                    if not address(cd[((32 * idx) + cd[100] + 36)]):
                        revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                    if idx >= mem[(32 * ('cd', 100).length) + (32 * ('cd', 36).length) + 160]:
                        revert with 'NH{q', 50
                    _1449 = mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 36).length) + 192]
                    if idx >= mem[(32 * ('cd', 100).length) + (64 * ('cd', 36).length) + 192]:
                        revert with 'NH{q', 50
                    _1463 = mem[(32 * idx) + (32 * ('cd', 100).length) + (64 * ('cd', 36).length) + 224]
                    if s and 997 > -1 / s:
                        revert with 'NH{q', 17
                    if 997 * s / 997 != s:
                        revert with 0, 'ds-math-mul-overflow'
                    if not mem[(32 * idx) + (32 * ('cd', 100).length) + (64 * ('cd', 36).length) + 224]:
                        if mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 36).length) + 192] and 1000 > -1 / mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 36).length) + 192]:
                            revert with 'NH{q', 17
                        if 1000 * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 36).length) + 192] / 1000 != mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 36).length) + 192]:
                            revert with 0, 'ds-math-mul-overflow'
                        if 1000 * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 36).length) + 192] > (-997 * s) - 1:
                            revert with 'NH{q', 17
                        if (1000 * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 36).length) + 192]) + (997 * s) < 1000 * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 36).length) + 192]:
                            revert with 0, 'ds-math-add-overflow'
                        if not (1000 * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 36).length) + 192]) + (997 * s):
                            revert with 'NH{q', 18
                        if idx >= ('cd', 100).length:
                            revert with 'NH{q', 50
                        require cd[((32 * idx) + cd[100] + 36)] == address(cd[((32 * idx) + cd[100] + 36)])
                        if ('cd', 36).length < 1:
                            revert with 'NH{q', 17
                        if address(cd[((32 * idx) + cd[100] + 36)]) == address(cd[((32 * idx) + cd[100] + 36)]):
                            if idx >= ('cd', 36).length - 1:
                                if idx >= ('cd', 36).length:
                                    revert with 'NH{q', 50
                                require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                                _1581 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_1581 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1581 + 36] = 0
                                mem[_1581 + 68] = 0 / (1000 * _1449) + (997 * s)
                                mem[_1581 + 100] = msg.sender
                                mem[_1581 + 132] = 128
                                mem[_1581 + 164] = mem[_1581]
                                t = 0
                                while t < mem[_1581]:
                                    mem[_1581 + t + 196] = mem[_1581 + t + 32]
                                    t = t + 32
                                    continue 
                                if ceil32(mem[_1581]) > mem[_1581]:
                                    mem[_1581 + mem[_1581] + 196] = 0
                                require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                call address(cd[((32 * idx) + cd[36] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, 0 / (1000 * _1449) + (997 * s), msg.sender, 128, mem[_1581], mem[_1581 + 196 len ceil32(mem[_1581])]
                            else:
                                if idx > -2:
                                    revert with 'NH{q', 17
                                if idx + 1 >= ('cd', 36).length:
                                    revert with 'NH{q', 50
                                require cd[((32 * idx + 1) + cd[36] + 36)] == address(cd[((32 * idx + 1) + cd[36] + 36)])
                                if idx >= ('cd', 36).length:
                                    revert with 'NH{q', 50
                                require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                                _1661 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_1661 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1661 + 36] = 0
                                mem[_1661 + 68] = 0 / (1000 * _1449) + (997 * s)
                                mem[_1661 + 100] = address(cd[((32 * idx + 1) + cd[36] + 36)])
                                mem[_1661 + 132] = 128
                                mem[_1661 + 164] = mem[_1661]
                                t = 0
                                while t < mem[_1661]:
                                    mem[_1661 + t + 196] = mem[_1661 + t + 32]
                                    t = t + 32
                                    continue 
                                if ceil32(mem[_1661]) > mem[_1661]:
                                    mem[_1661 + mem[_1661] + 196] = 0
                                require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                call address(cd[((32 * idx) + cd[36] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, 0 / (1000 * _1449) + (997 * s), address(cd[((32 * idx + 1) + cd[36] + 36)]), 128, mem[_1661], mem[_1661 + 196 len ceil32(mem[_1661])]
                        else:
                            if idx >= ('cd', 36).length - 1:
                                if idx >= ('cd', 36).length:
                                    revert with 'NH{q', 50
                                require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                                _1582 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_1582 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1582 + 36] = 0 / (1000 * _1449) + (997 * s)
                                mem[_1582 + 68] = 0
                                mem[_1582 + 100] = msg.sender
                                mem[_1582 + 132] = 128
                                mem[_1582 + 164] = mem[_1582]
                                t = 0
                                while t < mem[_1582]:
                                    mem[_1582 + t + 196] = mem[_1582 + t + 32]
                                    t = t + 32
                                    continue 
                                if ceil32(mem[_1582]) > mem[_1582]:
                                    mem[_1582 + mem[_1582] + 196] = 0
                                require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                call address(cd[((32 * idx) + cd[36] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0 / (1000 * _1449) + (997 * s), 0, msg.sender, 128, mem[_1582], mem[_1582 + 196 len ceil32(mem[_1582])]
                            else:
                                if idx > -2:
                                    revert with 'NH{q', 17
                                if idx + 1 >= ('cd', 36).length:
                                    revert with 'NH{q', 50
                                require cd[((32 * idx + 1) + cd[36] + 36)] == address(cd[((32 * idx + 1) + cd[36] + 36)])
                                if idx >= ('cd', 36).length:
                                    revert with 'NH{q', 50
                                require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                                _1662 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_1662 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1662 + 36] = 0 / (1000 * _1449) + (997 * s)
                                mem[_1662 + 68] = 0
                                mem[_1662 + 100] = address(cd[((32 * idx + 1) + cd[36] + 36)])
                                mem[_1662 + 132] = 128
                                mem[_1662 + 164] = mem[_1662]
                                t = 0
                                while t < mem[_1662]:
                                    mem[_1662 + t + 196] = mem[_1662 + t + 32]
                                    t = t + 32
                                    continue 
                                if ceil32(mem[_1662]) > mem[_1662]:
                                    mem[_1662 + mem[_1662] + 196] = 0
                                require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                call address(cd[((32 * idx) + cd[36] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0 / (1000 * _1449) + (997 * s), 0, address(cd[((32 * idx + 1) + cd[36] + 36)]), 128, mem[_1662], mem[_1662 + 196 len ceil32(mem[_1662])]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = 0 / (1000 * _1449) + (997 * s)
                        continue 
                    if 997 * s and mem[(32 * idx) + (32 * ('cd', 100).length) + (64 * ('cd', 36).length) + 224] > -1 / 997 * s:
                        revert with 'NH{q', 17
                    if not mem[(32 * idx) + (32 * ('cd', 100).length) + (64 * ('cd', 36).length) + 224]:
                        revert with 'NH{q', 18
                    if 997 * s * mem[(32 * idx) + (32 * ('cd', 100).length) + (64 * ('cd', 36).length) + 224] / mem[(32 * idx) + (32 * ('cd', 100).length) + (64 * ('cd', 36).length) + 224] != 997 * s:
                        revert with 0, 'ds-math-mul-overflow'
                    if mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 36).length) + 192] and 1000 > -1 / mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 36).length) + 192]:
                        revert with 'NH{q', 17
                    if 1000 * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 36).length) + 192] / 1000 != mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 36).length) + 192]:
                        revert with 0, 'ds-math-mul-overflow'
                    if 1000 * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 36).length) + 192] > (-997 * s) - 1:
                        revert with 'NH{q', 17
                    if (1000 * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 36).length) + 192]) + (997 * s) < 1000 * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 36).length) + 192]:
                        revert with 0, 'ds-math-add-overflow'
                    if not (1000 * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 36).length) + 192]) + (997 * s):
                        revert with 'NH{q', 18
                    if idx >= ('cd', 100).length:
                        revert with 'NH{q', 50
                    require cd[((32 * idx) + cd[100] + 36)] == address(cd[((32 * idx) + cd[100] + 36)])
                    if ('cd', 36).length < 1:
                        revert with 'NH{q', 17
                    if address(cd[((32 * idx) + cd[100] + 36)]) == address(cd[((32 * idx) + cd[100] + 36)]):
                        if idx >= ('cd', 36).length - 1:
                            if idx >= ('cd', 36).length:
                                revert with 'NH{q', 50
                            require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                            _1613 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_1613 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_1613 + 36] = 0
                            mem[_1613 + 68] = 997 * s * _1463 / (1000 * _1449) + (997 * s)
                            mem[_1613 + 100] = msg.sender
                            mem[_1613 + 132] = 128
                            mem[_1613 + 164] = mem[_1613]
                            t = 0
                            while t < mem[_1613]:
                                mem[_1613 + t + 196] = mem[_1613 + t + 32]
                                t = t + 32
                                continue 
                            if ceil32(mem[_1613]) > mem[_1613]:
                                mem[_1613 + mem[_1613] + 196] = 0
                            require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                            call address(cd[((32 * idx) + cd[36] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, 997 * s * _1463 / (1000 * _1449) + (997 * s), msg.sender, 128, mem[_1613], mem[_1613 + 196 len ceil32(mem[_1613])]
                        else:
                            if idx > -2:
                                revert with 'NH{q', 17
                            if idx + 1 >= ('cd', 36).length:
                                revert with 'NH{q', 50
                            require cd[((32 * idx + 1) + cd[36] + 36)] == address(cd[((32 * idx + 1) + cd[36] + 36)])
                            if idx >= ('cd', 36).length:
                                revert with 'NH{q', 50
                            require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                            _1757 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_1757 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_1757 + 36] = 0
                            mem[_1757 + 68] = 997 * s * _1463 / (1000 * _1449) + (997 * s)
                            mem[_1757 + 100] = address(cd[((32 * idx + 1) + cd[36] + 36)])
                            mem[_1757 + 132] = 128
                            mem[_1757 + 164] = mem[_1757]
                            t = 0
                            while t < mem[_1757]:
                                mem[_1757 + t + 196] = mem[_1757 + t + 32]
                                t = t + 32
                                continue 
                            if ceil32(mem[_1757]) > mem[_1757]:
                                mem[_1757 + mem[_1757] + 196] = 0
                            require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                            call address(cd[((32 * idx) + cd[36] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, 997 * s * _1463 / (1000 * _1449) + (997 * s), address(cd[((32 * idx + 1) + cd[36] + 36)]), 128, mem[_1757], mem[_1757 + 196 len ceil32(mem[_1757])]
                    else:
                        if idx >= ('cd', 36).length - 1:
                            if idx >= ('cd', 36).length:
                                revert with 'NH{q', 50
                            require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                            _1614 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_1614 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_1614 + 36] = 997 * s * _1463 / (1000 * _1449) + (997 * s)
                            mem[_1614 + 68] = 0
                            mem[_1614 + 100] = msg.sender
                            mem[_1614 + 132] = 128
                            mem[_1614 + 164] = mem[_1614]
                            t = 0
                            while t < mem[_1614]:
                                mem[_1614 + t + 196] = mem[_1614 + t + 32]
                                t = t + 32
                                continue 
                            if ceil32(mem[_1614]) > mem[_1614]:
                                mem[_1614 + mem[_1614] + 196] = 0
                            require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                            call address(cd[((32 * idx) + cd[36] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 997 * s * _1463 / (1000 * _1449) + (997 * s), 0, msg.sender, 128, mem[_1614], mem[_1614 + 196 len ceil32(mem[_1614])]
                        else:
                            if idx > -2:
                                revert with 'NH{q', 17
                            if idx + 1 >= ('cd', 36).length:
                                revert with 'NH{q', 50
                            require cd[((32 * idx + 1) + cd[36] + 36)] == address(cd[((32 * idx + 1) + cd[36] + 36)])
                            if idx >= ('cd', 36).length:
                                revert with 'NH{q', 50
                            require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                            _1758 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_1758 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_1758 + 36] = 997 * s * _1463 / (1000 * _1449) + (997 * s)
                            mem[_1758 + 68] = 0
                            mem[_1758 + 100] = address(cd[((32 * idx + 1) + cd[36] + 36)])
                            mem[_1758 + 132] = 128
                            mem[_1758 + 164] = mem[_1758]
                            t = 0
                            while t < mem[_1758]:
                                mem[_1758 + t + 196] = mem[_1758 + t + 32]
                                t = t + 32
                                continue 
                            if ceil32(mem[_1758]) > mem[_1758]:
                                mem[_1758 + mem[_1758] + 196] = 0
                            require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                            call address(cd[((32 * idx) + cd[36] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 997 * s * _1463 / (1000 * _1449) + (997 * s), 0, address(cd[((32 * idx + 1) + cd[36] + 36)]), 128, mem[_1758], mem[_1758 + 196 len ceil32(mem[_1758])]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = 997 * s * _1463 / (1000 * _1449) + (997 * s)
                    continue 
                if not address(cd[((32 * idx + 1) + cd[100] + 36)]):
                    revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                if idx >= mem[(32 * ('cd', 100).length) + (32 * ('cd', 36).length) + 160]:
                    revert with 'NH{q', 50
                _1451 = mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 36).length) + 192]
                if idx >= mem[(32 * ('cd', 100).length) + (64 * ('cd', 36).length) + 192]:
                    revert with 'NH{q', 50
                _1464 = mem[(32 * idx) + (32 * ('cd', 100).length) + (64 * ('cd', 36).length) + 224]
                if s and 997 > -1 / s:
                    revert with 'NH{q', 17
                if 997 * s / 997 != s:
                    revert with 0, 'ds-math-mul-overflow'
                if not mem[(32 * idx) + (32 * ('cd', 100).length) + (64 * ('cd', 36).length) + 224]:
                    if mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 36).length) + 192] and 1000 > -1 / mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 36).length) + 192]:
                        revert with 'NH{q', 17
                    if 1000 * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 36).length) + 192] / 1000 != mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 36).length) + 192]:
                        revert with 0, 'ds-math-mul-overflow'
                    if 1000 * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 36).length) + 192] > (-997 * s) - 1:
                        revert with 'NH{q', 17
                    if (1000 * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 36).length) + 192]) + (997 * s) < 1000 * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 36).length) + 192]:
                        revert with 0, 'ds-math-add-overflow'
                    if not (1000 * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 36).length) + 192]) + (997 * s):
                        revert with 'NH{q', 18
                    if idx >= ('cd', 100).length:
                        revert with 'NH{q', 50
                    require cd[((32 * idx) + cd[100] + 36)] == address(cd[((32 * idx) + cd[100] + 36)])
                    if ('cd', 36).length < 1:
                        revert with 'NH{q', 17
                    if address(cd[((32 * idx) + cd[100] + 36)]) == address(cd[((32 * idx + 1) + cd[100] + 36)]):
                        if idx >= ('cd', 36).length - 1:
                            if idx >= ('cd', 36).length:
                                revert with 'NH{q', 50
                            require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                            _1583 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_1583 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_1583 + 36] = 0
                            mem[_1583 + 68] = 0 / (1000 * _1451) + (997 * s)
                            mem[_1583 + 100] = msg.sender
                            mem[_1583 + 132] = 128
                            mem[_1583 + 164] = mem[_1583]
                            t = 0
                            while t < mem[_1583]:
                                mem[_1583 + t + 196] = mem[_1583 + t + 32]
                                t = t + 32
                                continue 
                            if ceil32(mem[_1583]) > mem[_1583]:
                                mem[_1583 + mem[_1583] + 196] = 0
                            require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                            call address(cd[((32 * idx) + cd[36] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, 0 / (1000 * _1451) + (997 * s), msg.sender, 128, mem[_1583], mem[_1583 + 196 len ceil32(mem[_1583])]
                        else:
                            if idx > -2:
                                revert with 'NH{q', 17
                            if idx + 1 >= ('cd', 36).length:
                                revert with 'NH{q', 50
                            require cd[((32 * idx + 1) + cd[36] + 36)] == address(cd[((32 * idx + 1) + cd[36] + 36)])
                            if idx >= ('cd', 36).length:
                                revert with 'NH{q', 50
                            require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                            _1663 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_1663 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_1663 + 36] = 0
                            mem[_1663 + 68] = 0 / (1000 * _1451) + (997 * s)
                            mem[_1663 + 100] = address(cd[((32 * idx + 1) + cd[36] + 36)])
                            mem[_1663 + 132] = 128
                            mem[_1663 + 164] = mem[_1663]
                            t = 0
                            while t < mem[_1663]:
                                mem[_1663 + t + 196] = mem[_1663 + t + 32]
                                t = t + 32
                                continue 
                            if ceil32(mem[_1663]) > mem[_1663]:
                                mem[_1663 + mem[_1663] + 196] = 0
                            require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                            call address(cd[((32 * idx) + cd[36] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, 0 / (1000 * _1451) + (997 * s), address(cd[((32 * idx + 1) + cd[36] + 36)]), 128, mem[_1663], mem[_1663 + 196 len ceil32(mem[_1663])]
                    else:
                        if idx >= ('cd', 36).length - 1:
                            if idx >= ('cd', 36).length:
                                revert with 'NH{q', 50
                            require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                            _1584 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_1584 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_1584 + 36] = 0 / (1000 * _1451) + (997 * s)
                            mem[_1584 + 68] = 0
                            mem[_1584 + 100] = msg.sender
                            mem[_1584 + 132] = 128
                            mem[_1584 + 164] = mem[_1584]
                            t = 0
                            while t < mem[_1584]:
                                mem[_1584 + t + 196] = mem[_1584 + t + 32]
                                t = t + 32
                                continue 
                            if ceil32(mem[_1584]) > mem[_1584]:
                                mem[_1584 + mem[_1584] + 196] = 0
                            require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                            call address(cd[((32 * idx) + cd[36] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0 / (1000 * _1451) + (997 * s), 0, msg.sender, 128, mem[_1584], mem[_1584 + 196 len ceil32(mem[_1584])]
                        else:
                            if idx > -2:
                                revert with 'NH{q', 17
                            if idx + 1 >= ('cd', 36).length:
                                revert with 'NH{q', 50
                            require cd[((32 * idx + 1) + cd[36] + 36)] == address(cd[((32 * idx + 1) + cd[36] + 36)])
                            if idx >= ('cd', 36).length:
                                revert with 'NH{q', 50
                            require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                            _1664 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_1664 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_1664 + 36] = 0 / (1000 * _1451) + (997 * s)
                            mem[_1664 + 68] = 0
                            mem[_1664 + 100] = address(cd[((32 * idx + 1) + cd[36] + 36)])
                            mem[_1664 + 132] = 128
                            mem[_1664 + 164] = mem[_1664]
                            t = 0
                            while t < mem[_1664]:
                                mem[_1664 + t + 196] = mem[_1664 + t + 32]
                                t = t + 32
                                continue 
                            if ceil32(mem[_1664]) > mem[_1664]:
                                mem[_1664 + mem[_1664] + 196] = 0
                            require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                            call address(cd[((32 * idx) + cd[36] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0 / (1000 * _1451) + (997 * s), 0, address(cd[((32 * idx + 1) + cd[36] + 36)]), 128, mem[_1664], mem[_1664 + 196 len ceil32(mem[_1664])]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = 0 / (1000 * _1451) + (997 * s)
                    continue 
                if 997 * s and mem[(32 * idx) + (32 * ('cd', 100).length) + (64 * ('cd', 36).length) + 224] > -1 / 997 * s:
                    revert with 'NH{q', 17
                if not mem[(32 * idx) + (32 * ('cd', 100).length) + (64 * ('cd', 36).length) + 224]:
                    revert with 'NH{q', 18
                if 997 * s * mem[(32 * idx) + (32 * ('cd', 100).length) + (64 * ('cd', 36).length) + 224] / mem[(32 * idx) + (32 * ('cd', 100).length) + (64 * ('cd', 36).length) + 224] != 997 * s:
                    revert with 0, 'ds-math-mul-overflow'
                if mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 36).length) + 192] and 1000 > -1 / mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 36).length) + 192]:
                    revert with 'NH{q', 17
                if 1000 * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 36).length) + 192] / 1000 != mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 36).length) + 192]:
                    revert with 0, 'ds-math-mul-overflow'
                if 1000 * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 36).length) + 192] > (-997 * s) - 1:
                    revert with 'NH{q', 17
                if (1000 * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 36).length) + 192]) + (997 * s) < 1000 * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 36).length) + 192]:
                    revert with 0, 'ds-math-add-overflow'
                if not (1000 * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 36).length) + 192]) + (997 * s):
                    revert with 'NH{q', 18
                if idx >= ('cd', 100).length:
                    revert with 'NH{q', 50
                require cd[((32 * idx) + cd[100] + 36)] == address(cd[((32 * idx) + cd[100] + 36)])
                if ('cd', 36).length < 1:
                    revert with 'NH{q', 17
                if address(cd[((32 * idx) + cd[100] + 36)]) == address(cd[((32 * idx + 1) + cd[100] + 36)]):
                    if idx >= ('cd', 36).length - 1:
                        if idx >= ('cd', 36).length:
                            revert with 'NH{q', 50
                        require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                        _1615 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_1615 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_1615 + 36] = 0
                        mem[_1615 + 68] = 997 * s * _1464 / (1000 * _1451) + (997 * s)
                        mem[_1615 + 100] = msg.sender
                        mem[_1615 + 132] = 128
                        mem[_1615 + 164] = mem[_1615]
                        t = 0
                        while t < mem[_1615]:
                            mem[_1615 + t + 196] = mem[_1615 + t + 32]
                            t = t + 32
                            continue 
                        if ceil32(mem[_1615]) > mem[_1615]:
                            mem[_1615 + mem[_1615] + 196] = 0
                        require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                        call address(cd[((32 * idx) + cd[36] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, 997 * s * _1464 / (1000 * _1451) + (997 * s), msg.sender, 128, mem[_1615], mem[_1615 + 196 len ceil32(mem[_1615])]
                    else:
                        if idx > -2:
                            revert with 'NH{q', 17
                        if idx + 1 >= ('cd', 36).length:
                            revert with 'NH{q', 50
                        require cd[((32 * idx + 1) + cd[36] + 36)] == address(cd[((32 * idx + 1) + cd[36] + 36)])
                        if idx >= ('cd', 36).length:
                            revert with 'NH{q', 50
                        require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                        _1759 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_1759 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_1759 + 36] = 0
                        mem[_1759 + 68] = 997 * s * _1464 / (1000 * _1451) + (997 * s)
                        mem[_1759 + 100] = address(cd[((32 * idx + 1) + cd[36] + 36)])
                        mem[_1759 + 132] = 128
                        mem[_1759 + 164] = mem[_1759]
                        t = 0
                        while t < mem[_1759]:
                            mem[_1759 + t + 196] = mem[_1759 + t + 32]
                            t = t + 32
                            continue 
                        if ceil32(mem[_1759]) > mem[_1759]:
                            mem[_1759 + mem[_1759] + 196] = 0
                        require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                        call address(cd[((32 * idx) + cd[36] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, 997 * s * _1464 / (1000 * _1451) + (997 * s), address(cd[((32 * idx + 1) + cd[36] + 36)]), 128, mem[_1759], mem[_1759 + 196 len ceil32(mem[_1759])]
                else:
                    if idx >= ('cd', 36).length - 1:
                        if idx >= ('cd', 36).length:
                            revert with 'NH{q', 50
                        require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                        _1616 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_1616 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_1616 + 36] = 997 * s * _1464 / (1000 * _1451) + (997 * s)
                        mem[_1616 + 68] = 0
                        mem[_1616 + 100] = msg.sender
                        mem[_1616 + 132] = 128
                        mem[_1616 + 164] = mem[_1616]
                        t = 0
                        while t < mem[_1616]:
                            mem[_1616 + t + 196] = mem[_1616 + t + 32]
                            t = t + 32
                            continue 
                        if ceil32(mem[_1616]) > mem[_1616]:
                            mem[_1616 + mem[_1616] + 196] = 0
                        require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                        call address(cd[((32 * idx) + cd[36] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 997 * s * _1464 / (1000 * _1451) + (997 * s), 0, msg.sender, 128, mem[_1616], mem[_1616 + 196 len ceil32(mem[_1616])]
                    else:
                        if idx > -2:
                            revert with 'NH{q', 17
                        if idx + 1 >= ('cd', 36).length:
                            revert with 'NH{q', 50
                        require cd[((32 * idx + 1) + cd[36] + 36)] == address(cd[((32 * idx + 1) + cd[36] + 36)])
                        if idx >= ('cd', 36).length:
                            revert with 'NH{q', 50
                        require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                        _1760 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_1760 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_1760 + 36] = 997 * s * _1464 / (1000 * _1451) + (997 * s)
                        mem[_1760 + 68] = 0
                        mem[_1760 + 100] = address(cd[((32 * idx + 1) + cd[36] + 36)])
                        mem[_1760 + 132] = 128
                        mem[_1760 + 164] = mem[_1760]
                        t = 0
                        while t < mem[_1760]:
                            mem[_1760 + t + 196] = mem[_1760 + t + 32]
                            t = t + 32
                            continue 
                        if ceil32(mem[_1760]) > mem[_1760]:
                            mem[_1760 + mem[_1760] + 196] = 0
                        require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                        call address(cd[((32 * idx) + cd[36] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 997 * s * _1464 / (1000 * _1451) + (997 * s), 0, address(cd[((32 * idx + 1) + cd[36] + 36)]), 128, mem[_1760], mem[_1760 + 196 len ceil32(mem[_1760])]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = 997 * s * _1464 / (1000 * _1451) + (997 * s)
                continue 
    else:
        mem[(32 * ('cd', 100).length) + (32 * ('cd', 36).length) + 192 len 32 * ('cd', 36).length] = call.data[calldata.size len 32 * ('cd', 36).length]
        if ('cd', 36).length > test266151307():
            revert with 'NH{q', 65
        mem[(32 * ('cd', 100).length) + (64 * ('cd', 36).length) + 192] = ('cd', 36).length
        mem[64] = (32 * ('cd', 100).length) + (98 * ('cd', 36).length) + 224
        if not ('cd', 36).length:
            idx = 0
            s = cd[4]
            while idx < ('cd', 36).length:
                if idx >= mem[(32 * ('cd', 100).length) + 128]:
                    revert with 'NH{q', 50
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                _543 = mem[(32 * idx) + 128]
                if idx > -2:
                    revert with 'NH{q', 17
                if idx + 1 >= mem[96]:
                    revert with 'NH{q', 50
                _551 = mem[(32 * idx + 1) + 128]
                if mem[(32 * idx) + 140 len 20] == mem[(32 * idx + 1) + 140 len 20]:
                    revert with 0, 'UniswapV2Library: IDENTICAL_ADDRESSES'
                if mem[(32 * idx) + 140 len 20] < mem[(32 * idx + 1) + 140 len 20]:
                    if not mem[(32 * idx) + 140 len 20]:
                        revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                    require ext_code.size(mem[(32 * idx) + (32 * ('cd', 100).length) + 172 len 20])
                    staticcall mem[(32 * idx) + (32 * ('cd', 100).length) + 172 len 20].getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _589 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _601 = mem[_589]
                    require mem[_589] == mem[_589 + 18 len 14]
                    _617 = mem[_589 + 32]
                    require mem[_589 + 32] == mem[_589 + 50 len 14]
                    require mem[_589 + 64] == mem[_589 + 92 len 4]
                    if s and 997 > -1 / s:
                        revert with 'NH{q', 17
                    if 997 * s / 997 != s:
                        revert with 0, 'ds-math-mul-overflow'
                    if address(_543) == address(_543):
                        if not mem[_589 + 50 len 14]:
                            if mem[_589 + 18 len 14] and 1000 > -1 / mem[_589 + 18 len 14]:
                                revert with 'NH{q', 17
                            if 1000 * mem[_589 + 18 len 14] / 1000 != mem[_589 + 18 len 14]:
                                revert with 0, 'ds-math-mul-overflow'
                            if 1000 * mem[_589 + 18 len 14] > (-997 * s) - 1:
                                revert with 'NH{q', 17
                            if (1000 * mem[_589 + 18 len 14]) + (997 * s) < 1000 * mem[_589 + 18 len 14]:
                                revert with 0, 'ds-math-add-overflow'
                            if not (1000 * mem[_589 + 18 len 14]) + (997 * s):
                                revert with 'NH{q', 18
                            if idx >= mem[(32 * ('cd', 100).length) + (32 * ('cd', 36).length) + 160]:
                                revert with 'NH{q', 50
                            mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 36).length) + 192] = mem[_589 + 18 len 14]
                            if idx >= mem[(32 * ('cd', 100).length) + (64 * ('cd', 36).length) + 192]:
                                revert with 'NH{q', 50
                            mem[(32 * idx) + (32 * ('cd', 100).length) + (64 * ('cd', 36).length) + 224] = Mask(112, 0, _617)
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = 0 / (1000 * Mask(112, 0, _601)) + (997 * s)
                            continue 
                        if 997 * s and mem[_589 + 50 len 14] > -1 / 997 * s:
                            revert with 'NH{q', 17
                        if not mem[_589 + 50 len 14]:
                            revert with 'NH{q', 18
                        if 997 * s * mem[_589 + 50 len 14] / mem[_589 + 50 len 14] != 997 * s:
                            revert with 0, 'ds-math-mul-overflow'
                        if mem[_589 + 18 len 14] and 1000 > -1 / mem[_589 + 18 len 14]:
                            revert with 'NH{q', 17
                        if 1000 * mem[_589 + 18 len 14] / 1000 != mem[_589 + 18 len 14]:
                            revert with 0, 'ds-math-mul-overflow'
                        if 1000 * mem[_589 + 18 len 14] > (-997 * s) - 1:
                            revert with 'NH{q', 17
                        if (1000 * mem[_589 + 18 len 14]) + (997 * s) < 1000 * mem[_589 + 18 len 14]:
                            revert with 0, 'ds-math-add-overflow'
                        if not (1000 * mem[_589 + 18 len 14]) + (997 * s):
                            revert with 'NH{q', 18
                        if idx >= mem[(32 * ('cd', 100).length) + (32 * ('cd', 36).length) + 160]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 36).length) + 192] = mem[_589 + 18 len 14]
                        if idx >= mem[(32 * ('cd', 100).length) + (64 * ('cd', 36).length) + 192]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + (32 * ('cd', 100).length) + (64 * ('cd', 36).length) + 224] = Mask(112, 0, _617)
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = 997 * s * Mask(112, 0, _617) / (1000 * Mask(112, 0, _601)) + (997 * s)
                        continue 
                    if not mem[_589 + 18 len 14]:
                        if mem[_589 + 50 len 14] and 1000 > -1 / mem[_589 + 50 len 14]:
                            revert with 'NH{q', 17
                        if 1000 * mem[_589 + 50 len 14] / 1000 != mem[_589 + 50 len 14]:
                            revert with 0, 'ds-math-mul-overflow'
                        if 1000 * mem[_589 + 50 len 14] > (-997 * s) - 1:
                            revert with 'NH{q', 17
                        if (1000 * mem[_589 + 50 len 14]) + (997 * s) < 1000 * mem[_589 + 50 len 14]:
                            revert with 0, 'ds-math-add-overflow'
                        if not (1000 * mem[_589 + 50 len 14]) + (997 * s):
                            revert with 'NH{q', 18
                        if idx >= mem[(32 * ('cd', 100).length) + (32 * ('cd', 36).length) + 160]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 36).length) + 192] = mem[_589 + 50 len 14]
                        if idx >= mem[(32 * ('cd', 100).length) + (64 * ('cd', 36).length) + 192]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + (32 * ('cd', 100).length) + (64 * ('cd', 36).length) + 224] = Mask(112, 0, _601)
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = 0 / (1000 * Mask(112, 0, _617)) + (997 * s)
                        continue 
                    if 997 * s and mem[_589 + 18 len 14] > -1 / 997 * s:
                        revert with 'NH{q', 17
                    if not mem[_589 + 18 len 14]:
                        revert with 'NH{q', 18
                    if 997 * s * mem[_589 + 18 len 14] / mem[_589 + 18 len 14] != 997 * s:
                        revert with 0, 'ds-math-mul-overflow'
                    if mem[_589 + 50 len 14] and 1000 > -1 / mem[_589 + 50 len 14]:
                        revert with 'NH{q', 17
                    if 1000 * mem[_589 + 50 len 14] / 1000 != mem[_589 + 50 len 14]:
                        revert with 0, 'ds-math-mul-overflow'
                    if 1000 * mem[_589 + 50 len 14] > (-997 * s) - 1:
                        revert with 'NH{q', 17
                    if (1000 * mem[_589 + 50 len 14]) + (997 * s) < 1000 * mem[_589 + 50 len 14]:
                        revert with 0, 'ds-math-add-overflow'
                    if not (1000 * mem[_589 + 50 len 14]) + (997 * s):
                        revert with 'NH{q', 18
                    if idx >= mem[(32 * ('cd', 100).length) + (32 * ('cd', 36).length) + 160]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 36).length) + 192] = mem[_589 + 50 len 14]
                    if idx >= mem[(32 * ('cd', 100).length) + (64 * ('cd', 36).length) + 192]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + (32 * ('cd', 100).length) + (64 * ('cd', 36).length) + 224] = Mask(112, 0, _601)
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = 997 * s * Mask(112, 0, _601) / (1000 * Mask(112, 0, _617)) + (997 * s)
                    continue 
                if not mem[(32 * idx + 1) + 140 len 20]:
                    revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                require ext_code.size(mem[(32 * idx) + (32 * ('cd', 100).length) + 172 len 20])
                staticcall mem[(32 * idx) + (32 * ('cd', 100).length) + 172 len 20].getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _590 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _602 = mem[_590]
                require mem[_590] == mem[_590 + 18 len 14]
                _618 = mem[_590 + 32]
                require mem[_590 + 32] == mem[_590 + 50 len 14]
                require mem[_590 + 64] == mem[_590 + 92 len 4]
                if s and 997 > -1 / s:
                    revert with 'NH{q', 17
                if 997 * s / 997 != s:
                    revert with 0, 'ds-math-mul-overflow'
                if address(_543) == address(_551):
                    if not mem[_590 + 50 len 14]:
                        if mem[_590 + 18 len 14] and 1000 > -1 / mem[_590 + 18 len 14]:
                            revert with 'NH{q', 17
                        if 1000 * mem[_590 + 18 len 14] / 1000 != mem[_590 + 18 len 14]:
                            revert with 0, 'ds-math-mul-overflow'
                        if 1000 * mem[_590 + 18 len 14] > (-997 * s) - 1:
                            revert with 'NH{q', 17
                        if (1000 * mem[_590 + 18 len 14]) + (997 * s) < 1000 * mem[_590 + 18 len 14]:
                            revert with 0, 'ds-math-add-overflow'
                        if not (1000 * mem[_590 + 18 len 14]) + (997 * s):
                            revert with 'NH{q', 18
                        if idx >= mem[(32 * ('cd', 100).length) + (32 * ('cd', 36).length) + 160]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 36).length) + 192] = mem[_590 + 18 len 14]
                        if idx >= mem[(32 * ('cd', 100).length) + (64 * ('cd', 36).length) + 192]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + (32 * ('cd', 100).length) + (64 * ('cd', 36).length) + 224] = Mask(112, 0, _618)
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = 0 / (1000 * Mask(112, 0, _602)) + (997 * s)
                        continue 
                    if 997 * s and mem[_590 + 50 len 14] > -1 / 997 * s:
                        revert with 'NH{q', 17
                    if not mem[_590 + 50 len 14]:
                        revert with 'NH{q', 18
                    if 997 * s * mem[_590 + 50 len 14] / mem[_590 + 50 len 14] != 997 * s:
                        revert with 0, 'ds-math-mul-overflow'
                    if mem[_590 + 18 len 14] and 1000 > -1 / mem[_590 + 18 len 14]:
                        revert with 'NH{q', 17
                    if 1000 * mem[_590 + 18 len 14] / 1000 != mem[_590 + 18 len 14]:
                        revert with 0, 'ds-math-mul-overflow'
                    if 1000 * mem[_590 + 18 len 14] > (-997 * s) - 1:
                        revert with 'NH{q', 17
                    if (1000 * mem[_590 + 18 len 14]) + (997 * s) < 1000 * mem[_590 + 18 len 14]:
                        revert with 0, 'ds-math-add-overflow'
                    if not (1000 * mem[_590 + 18 len 14]) + (997 * s):
                        revert with 'NH{q', 18
                    if idx >= mem[(32 * ('cd', 100).length) + (32 * ('cd', 36).length) + 160]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 36).length) + 192] = mem[_590 + 18 len 14]
                    if idx >= mem[(32 * ('cd', 100).length) + (64 * ('cd', 36).length) + 192]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + (32 * ('cd', 100).length) + (64 * ('cd', 36).length) + 224] = Mask(112, 0, _618)
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = 997 * s * Mask(112, 0, _618) / (1000 * Mask(112, 0, _602)) + (997 * s)
                    continue 
                if not mem[_590 + 18 len 14]:
                    if mem[_590 + 50 len 14] and 1000 > -1 / mem[_590 + 50 len 14]:
                        revert with 'NH{q', 17
                    if 1000 * mem[_590 + 50 len 14] / 1000 != mem[_590 + 50 len 14]:
                        revert with 0, 'ds-math-mul-overflow'
                    if 1000 * mem[_590 + 50 len 14] > (-997 * s) - 1:
                        revert with 'NH{q', 17
                    if (1000 * mem[_590 + 50 len 14]) + (997 * s) < 1000 * mem[_590 + 50 len 14]:
                        revert with 0, 'ds-math-add-overflow'
                    if not (1000 * mem[_590 + 50 len 14]) + (997 * s):
                        revert with 'NH{q', 18
                    if idx >= mem[(32 * ('cd', 100).length) + (32 * ('cd', 36).length) + 160]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 36).length) + 192] = mem[_590 + 50 len 14]
                    if idx >= mem[(32 * ('cd', 100).length) + (64 * ('cd', 36).length) + 192]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + (32 * ('cd', 100).length) + (64 * ('cd', 36).length) + 224] = Mask(112, 0, _602)
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = 0 / (1000 * Mask(112, 0, _618)) + (997 * s)
                    continue 
                if 997 * s and mem[_590 + 18 len 14] > -1 / 997 * s:
                    revert with 'NH{q', 17
                if not mem[_590 + 18 len 14]:
                    revert with 'NH{q', 18
                if 997 * s * mem[_590 + 18 len 14] / mem[_590 + 18 len 14] != 997 * s:
                    revert with 0, 'ds-math-mul-overflow'
                if mem[_590 + 50 len 14] and 1000 > -1 / mem[_590 + 50 len 14]:
                    revert with 'NH{q', 17
                if 1000 * mem[_590 + 50 len 14] / 1000 != mem[_590 + 50 len 14]:
                    revert with 0, 'ds-math-mul-overflow'
                if 1000 * mem[_590 + 50 len 14] > (-997 * s) - 1:
                    revert with 'NH{q', 17
                if (1000 * mem[_590 + 50 len 14]) + (997 * s) < 1000 * mem[_590 + 50 len 14]:
                    revert with 0, 'ds-math-add-overflow'
                if not (1000 * mem[_590 + 50 len 14]) + (997 * s):
                    revert with 'NH{q', 18
                if idx >= mem[(32 * ('cd', 100).length) + (32 * ('cd', 36).length) + 160]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 36).length) + 192] = mem[_590 + 50 len 14]
                if idx >= mem[(32 * ('cd', 100).length) + (64 * ('cd', 36).length) + 192]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + (32 * ('cd', 100).length) + (64 * ('cd', 36).length) + 224] = Mask(112, 0, _602)
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = 997 * s * Mask(112, 0, _602) / (1000 * Mask(112, 0, _618)) + (997 * s)
                continue 
            require s >= cd[68]
            if 0 >= ('cd', 36).length:
                revert with 'NH{q', 50
            require ('cd', 36)[0] == address(('cd', 36)[0])
            mem[mem[64]] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = address(('cd', 36)[0])
            mem[mem[64] + 68] = cd[4]
            require ext_code.size(stor1)
            call stor1.0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, address(('cd', 36)[0]), cd[4]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            idx = 0
            s = cd[4]
            while idx < ('cd', 36).length:
                if idx >= ('cd', 100).length:
                    revert with 'NH{q', 50
                require cd[((32 * idx) + cd[100] + 36)] == address(cd[((32 * idx) + cd[100] + 36)])
                if idx > -2:
                    revert with 'NH{q', 17
                if idx + 1 >= ('cd', 100).length:
                    revert with 'NH{q', 50
                require cd[((32 * idx + 1) + cd[100] + 36)] == address(cd[((32 * idx + 1) + cd[100] + 36)])
                if address(cd[((32 * idx) + cd[100] + 36)]) == address(cd[((32 * idx + 1) + cd[100] + 36)]):
                    revert with 0, 'UniswapV2Library: IDENTICAL_ADDRESSES'
                if address(cd[((32 * idx) + cd[100] + 36)]) < address(cd[((32 * idx + 1) + cd[100] + 36)]):
                    if not address(cd[((32 * idx) + cd[100] + 36)]):
                        revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                    if idx >= mem[(32 * ('cd', 100).length) + (32 * ('cd', 36).length) + 160]:
                        revert with 'NH{q', 50
                    _1453 = mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 36).length) + 192]
                    if idx >= mem[(32 * ('cd', 100).length) + (64 * ('cd', 36).length) + 192]:
                        revert with 'NH{q', 50
                    _1465 = mem[(32 * idx) + (32 * ('cd', 100).length) + (64 * ('cd', 36).length) + 224]
                    if s and 997 > -1 / s:
                        revert with 'NH{q', 17
                    if 997 * s / 997 != s:
                        revert with 0, 'ds-math-mul-overflow'
                    if not mem[(32 * idx) + (32 * ('cd', 100).length) + (64 * ('cd', 36).length) + 224]:
                        if mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 36).length) + 192] and 1000 > -1 / mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 36).length) + 192]:
                            revert with 'NH{q', 17
                        if 1000 * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 36).length) + 192] / 1000 != mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 36).length) + 192]:
                            revert with 0, 'ds-math-mul-overflow'
                        if 1000 * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 36).length) + 192] > (-997 * s) - 1:
                            revert with 'NH{q', 17
                        if (1000 * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 36).length) + 192]) + (997 * s) < 1000 * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 36).length) + 192]:
                            revert with 0, 'ds-math-add-overflow'
                        if not (1000 * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 36).length) + 192]) + (997 * s):
                            revert with 'NH{q', 18
                        if idx >= ('cd', 100).length:
                            revert with 'NH{q', 50
                        require cd[((32 * idx) + cd[100] + 36)] == address(cd[((32 * idx) + cd[100] + 36)])
                        if ('cd', 36).length < 1:
                            revert with 'NH{q', 17
                        if address(cd[((32 * idx) + cd[100] + 36)]) == address(cd[((32 * idx) + cd[100] + 36)]):
                            if idx >= ('cd', 36).length - 1:
                                if idx >= ('cd', 36).length:
                                    revert with 'NH{q', 50
                                require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                                _1585 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_1585 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1585 + 36] = 0
                                mem[_1585 + 68] = 0 / (1000 * _1453) + (997 * s)
                                mem[_1585 + 100] = msg.sender
                                mem[_1585 + 132] = 128
                                mem[_1585 + 164] = mem[_1585]
                                t = 0
                                while t < mem[_1585]:
                                    mem[_1585 + t + 196] = mem[_1585 + t + 32]
                                    t = t + 32
                                    continue 
                                if ceil32(mem[_1585]) > mem[_1585]:
                                    mem[_1585 + mem[_1585] + 196] = 0
                                require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                call address(cd[((32 * idx) + cd[36] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, 0 / (1000 * _1453) + (997 * s), msg.sender, 128, mem[_1585], mem[_1585 + 196 len ceil32(mem[_1585])]
                            else:
                                if idx > -2:
                                    revert with 'NH{q', 17
                                if idx + 1 >= ('cd', 36).length:
                                    revert with 'NH{q', 50
                                require cd[((32 * idx + 1) + cd[36] + 36)] == address(cd[((32 * idx + 1) + cd[36] + 36)])
                                if idx >= ('cd', 36).length:
                                    revert with 'NH{q', 50
                                require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                                _1665 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_1665 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1665 + 36] = 0
                                mem[_1665 + 68] = 0 / (1000 * _1453) + (997 * s)
                                mem[_1665 + 100] = address(cd[((32 * idx + 1) + cd[36] + 36)])
                                mem[_1665 + 132] = 128
                                mem[_1665 + 164] = mem[_1665]
                                t = 0
                                while t < mem[_1665]:
                                    mem[_1665 + t + 196] = mem[_1665 + t + 32]
                                    t = t + 32
                                    continue 
                                if ceil32(mem[_1665]) > mem[_1665]:
                                    mem[_1665 + mem[_1665] + 196] = 0
                                require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                call address(cd[((32 * idx) + cd[36] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, 0 / (1000 * _1453) + (997 * s), address(cd[((32 * idx + 1) + cd[36] + 36)]), 128, mem[_1665], mem[_1665 + 196 len ceil32(mem[_1665])]
                        else:
                            if idx >= ('cd', 36).length - 1:
                                if idx >= ('cd', 36).length:
                                    revert with 'NH{q', 50
                                require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                                _1586 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_1586 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1586 + 36] = 0 / (1000 * _1453) + (997 * s)
                                mem[_1586 + 68] = 0
                                mem[_1586 + 100] = msg.sender
                                mem[_1586 + 132] = 128
                                mem[_1586 + 164] = mem[_1586]
                                t = 0
                                while t < mem[_1586]:
                                    mem[_1586 + t + 196] = mem[_1586 + t + 32]
                                    t = t + 32
                                    continue 
                                if ceil32(mem[_1586]) > mem[_1586]:
                                    mem[_1586 + mem[_1586] + 196] = 0
                                require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                call address(cd[((32 * idx) + cd[36] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0 / (1000 * _1453) + (997 * s), 0, msg.sender, 128, mem[_1586], mem[_1586 + 196 len ceil32(mem[_1586])]
                            else:
                                if idx > -2:
                                    revert with 'NH{q', 17
                                if idx + 1 >= ('cd', 36).length:
                                    revert with 'NH{q', 50
                                require cd[((32 * idx + 1) + cd[36] + 36)] == address(cd[((32 * idx + 1) + cd[36] + 36)])
                                if idx >= ('cd', 36).length:
                                    revert with 'NH{q', 50
                                require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                                _1666 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_1666 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1666 + 36] = 0 / (1000 * _1453) + (997 * s)
                                mem[_1666 + 68] = 0
                                mem[_1666 + 100] = address(cd[((32 * idx + 1) + cd[36] + 36)])
                                mem[_1666 + 132] = 128
                                mem[_1666 + 164] = mem[_1666]
                                t = 0
                                while t < mem[_1666]:
                                    mem[_1666 + t + 196] = mem[_1666 + t + 32]
                                    t = t + 32
                                    continue 
                                if ceil32(mem[_1666]) > mem[_1666]:
                                    mem[_1666 + mem[_1666] + 196] = 0
                                require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                call address(cd[((32 * idx) + cd[36] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0 / (1000 * _1453) + (997 * s), 0, address(cd[((32 * idx + 1) + cd[36] + 36)]), 128, mem[_1666], mem[_1666 + 196 len ceil32(mem[_1666])]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = 0 / (1000 * _1453) + (997 * s)
                        continue 
                    if 997 * s and mem[(32 * idx) + (32 * ('cd', 100).length) + (64 * ('cd', 36).length) + 224] > -1 / 997 * s:
                        revert with 'NH{q', 17
                    if not mem[(32 * idx) + (32 * ('cd', 100).length) + (64 * ('cd', 36).length) + 224]:
                        revert with 'NH{q', 18
                    if 997 * s * mem[(32 * idx) + (32 * ('cd', 100).length) + (64 * ('cd', 36).length) + 224] / mem[(32 * idx) + (32 * ('cd', 100).length) + (64 * ('cd', 36).length) + 224] != 997 * s:
                        revert with 0, 'ds-math-mul-overflow'
                    if mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 36).length) + 192] and 1000 > -1 / mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 36).length) + 192]:
                        revert with 'NH{q', 17
                    if 1000 * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 36).length) + 192] / 1000 != mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 36).length) + 192]:
                        revert with 0, 'ds-math-mul-overflow'
                    if 1000 * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 36).length) + 192] > (-997 * s) - 1:
                        revert with 'NH{q', 17
                    if (1000 * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 36).length) + 192]) + (997 * s) < 1000 * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 36).length) + 192]:
                        revert with 0, 'ds-math-add-overflow'
                    if not (1000 * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 36).length) + 192]) + (997 * s):
                        revert with 'NH{q', 18
                    if idx >= ('cd', 100).length:
                        revert with 'NH{q', 50
                    require cd[((32 * idx) + cd[100] + 36)] == address(cd[((32 * idx) + cd[100] + 36)])
                    if ('cd', 36).length < 1:
                        revert with 'NH{q', 17
                    if address(cd[((32 * idx) + cd[100] + 36)]) == address(cd[((32 * idx) + cd[100] + 36)]):
                        if idx >= ('cd', 36).length - 1:
                            if idx >= ('cd', 36).length:
                                revert with 'NH{q', 50
                            require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                            _1617 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_1617 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_1617 + 36] = 0
                            mem[_1617 + 68] = 997 * s * _1465 / (1000 * _1453) + (997 * s)
                            mem[_1617 + 100] = msg.sender
                            mem[_1617 + 132] = 128
                            mem[_1617 + 164] = mem[_1617]
                            t = 0
                            while t < mem[_1617]:
                                mem[_1617 + t + 196] = mem[_1617 + t + 32]
                                t = t + 32
                                continue 
                            if ceil32(mem[_1617]) > mem[_1617]:
                                mem[_1617 + mem[_1617] + 196] = 0
                            require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                            call address(cd[((32 * idx) + cd[36] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, 997 * s * _1465 / (1000 * _1453) + (997 * s), msg.sender, 128, mem[_1617], mem[_1617 + 196 len ceil32(mem[_1617])]
                        else:
                            if idx > -2:
                                revert with 'NH{q', 17
                            if idx + 1 >= ('cd', 36).length:
                                revert with 'NH{q', 50
                            require cd[((32 * idx + 1) + cd[36] + 36)] == address(cd[((32 * idx + 1) + cd[36] + 36)])
                            if idx >= ('cd', 36).length:
                                revert with 'NH{q', 50
                            require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                            _1761 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_1761 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_1761 + 36] = 0
                            mem[_1761 + 68] = 997 * s * _1465 / (1000 * _1453) + (997 * s)
                            mem[_1761 + 100] = address(cd[((32 * idx + 1) + cd[36] + 36)])
                            mem[_1761 + 132] = 128
                            mem[_1761 + 164] = mem[_1761]
                            t = 0
                            while t < mem[_1761]:
                                mem[_1761 + t + 196] = mem[_1761 + t + 32]
                                t = t + 32
                                continue 
                            if ceil32(mem[_1761]) > mem[_1761]:
                                mem[_1761 + mem[_1761] + 196] = 0
                            require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                            call address(cd[((32 * idx) + cd[36] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, 997 * s * _1465 / (1000 * _1453) + (997 * s), address(cd[((32 * idx + 1) + cd[36] + 36)]), 128, mem[_1761], mem[_1761 + 196 len ceil32(mem[_1761])]
                    else:
                        if idx >= ('cd', 36).length - 1:
                            if idx >= ('cd', 36).length:
                                revert with 'NH{q', 50
                            require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                            _1618 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_1618 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_1618 + 36] = 997 * s * _1465 / (1000 * _1453) + (997 * s)
                            mem[_1618 + 68] = 0
                            mem[_1618 + 100] = msg.sender
                            mem[_1618 + 132] = 128
                            mem[_1618 + 164] = mem[_1618]
                            t = 0
                            while t < mem[_1618]:
                                mem[_1618 + t + 196] = mem[_1618 + t + 32]
                                t = t + 32
                                continue 
                            if ceil32(mem[_1618]) > mem[_1618]:
                                mem[_1618 + mem[_1618] + 196] = 0
                            require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                            call address(cd[((32 * idx) + cd[36] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 997 * s * _1465 / (1000 * _1453) + (997 * s), 0, msg.sender, 128, mem[_1618], mem[_1618 + 196 len ceil32(mem[_1618])]
                        else:
                            if idx > -2:
                                revert with 'NH{q', 17
                            if idx + 1 >= ('cd', 36).length:
                                revert with 'NH{q', 50
                            require cd[((32 * idx + 1) + cd[36] + 36)] == address(cd[((32 * idx + 1) + cd[36] + 36)])
                            if idx >= ('cd', 36).length:
                                revert with 'NH{q', 50
                            require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                            _1762 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_1762 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_1762 + 36] = 997 * s * _1465 / (1000 * _1453) + (997 * s)
                            mem[_1762 + 68] = 0
                            mem[_1762 + 100] = address(cd[((32 * idx + 1) + cd[36] + 36)])
                            mem[_1762 + 132] = 128
                            mem[_1762 + 164] = mem[_1762]
                            t = 0
                            while t < mem[_1762]:
                                mem[_1762 + t + 196] = mem[_1762 + t + 32]
                                t = t + 32
                                continue 
                            if ceil32(mem[_1762]) > mem[_1762]:
                                mem[_1762 + mem[_1762] + 196] = 0
                            require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                            call address(cd[((32 * idx) + cd[36] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 997 * s * _1465 / (1000 * _1453) + (997 * s), 0, address(cd[((32 * idx + 1) + cd[36] + 36)]), 128, mem[_1762], mem[_1762 + 196 len ceil32(mem[_1762])]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = 997 * s * _1465 / (1000 * _1453) + (997 * s)
                    continue 
                if not address(cd[((32 * idx + 1) + cd[100] + 36)]):
                    revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                if idx >= mem[(32 * ('cd', 100).length) + (32 * ('cd', 36).length) + 160]:
                    revert with 'NH{q', 50
                _1455 = mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 36).length) + 192]
                if idx >= mem[(32 * ('cd', 100).length) + (64 * ('cd', 36).length) + 192]:
                    revert with 'NH{q', 50
                _1466 = mem[(32 * idx) + (32 * ('cd', 100).length) + (64 * ('cd', 36).length) + 224]
                if s and 997 > -1 / s:
                    revert with 'NH{q', 17
                if 997 * s / 997 != s:
                    revert with 0, 'ds-math-mul-overflow'
                if not mem[(32 * idx) + (32 * ('cd', 100).length) + (64 * ('cd', 36).length) + 224]:
                    if mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 36).length) + 192] and 1000 > -1 / mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 36).length) + 192]:
                        revert with 'NH{q', 17
                    if 1000 * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 36).length) + 192] / 1000 != mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 36).length) + 192]:
                        revert with 0, 'ds-math-mul-overflow'
                    if 1000 * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 36).length) + 192] > (-997 * s) - 1:
                        revert with 'NH{q', 17
                    if (1000 * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 36).length) + 192]) + (997 * s) < 1000 * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 36).length) + 192]:
                        revert with 0, 'ds-math-add-overflow'
                    if not (1000 * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 36).length) + 192]) + (997 * s):
                        revert with 'NH{q', 18
                    if idx >= ('cd', 100).length:
                        revert with 'NH{q', 50
                    require cd[((32 * idx) + cd[100] + 36)] == address(cd[((32 * idx) + cd[100] + 36)])
                    if ('cd', 36).length < 1:
                        revert with 'NH{q', 17
                    if address(cd[((32 * idx) + cd[100] + 36)]) == address(cd[((32 * idx + 1) + cd[100] + 36)]):
                        if idx >= ('cd', 36).length - 1:
                            if idx >= ('cd', 36).length:
                                revert with 'NH{q', 50
                            require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                            _1587 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_1587 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_1587 + 36] = 0
                            mem[_1587 + 68] = 0 / (1000 * _1455) + (997 * s)
                            mem[_1587 + 100] = msg.sender
                            mem[_1587 + 132] = 128
                            mem[_1587 + 164] = mem[_1587]
                            t = 0
                            while t < mem[_1587]:
                                mem[_1587 + t + 196] = mem[_1587 + t + 32]
                                t = t + 32
                                continue 
                            if ceil32(mem[_1587]) > mem[_1587]:
                                mem[_1587 + mem[_1587] + 196] = 0
                            require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                            call address(cd[((32 * idx) + cd[36] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, 0 / (1000 * _1455) + (997 * s), msg.sender, 128, mem[_1587], mem[_1587 + 196 len ceil32(mem[_1587])]
                        else:
                            if idx > -2:
                                revert with 'NH{q', 17
                            if idx + 1 >= ('cd', 36).length:
                                revert with 'NH{q', 50
                            require cd[((32 * idx + 1) + cd[36] + 36)] == address(cd[((32 * idx + 1) + cd[36] + 36)])
                            if idx >= ('cd', 36).length:
                                revert with 'NH{q', 50
                            require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                            _1667 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_1667 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_1667 + 36] = 0
                            mem[_1667 + 68] = 0 / (1000 * _1455) + (997 * s)
                            mem[_1667 + 100] = address(cd[((32 * idx + 1) + cd[36] + 36)])
                            mem[_1667 + 132] = 128
                            mem[_1667 + 164] = mem[_1667]
                            t = 0
                            while t < mem[_1667]:
                                mem[_1667 + t + 196] = mem[_1667 + t + 32]
                                t = t + 32
                                continue 
                            if ceil32(mem[_1667]) > mem[_1667]:
                                mem[_1667 + mem[_1667] + 196] = 0
                            require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                            call address(cd[((32 * idx) + cd[36] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, 0 / (1000 * _1455) + (997 * s), address(cd[((32 * idx + 1) + cd[36] + 36)]), 128, mem[_1667], mem[_1667 + 196 len ceil32(mem[_1667])]
                    else:
                        if idx >= ('cd', 36).length - 1:
                            if idx >= ('cd', 36).length:
                                revert with 'NH{q', 50
                            require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                            _1588 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_1588 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_1588 + 36] = 0 / (1000 * _1455) + (997 * s)
                            mem[_1588 + 68] = 0
                            mem[_1588 + 100] = msg.sender
                            mem[_1588 + 132] = 128
                            mem[_1588 + 164] = mem[_1588]
                            t = 0
                            while t < mem[_1588]:
                                mem[_1588 + t + 196] = mem[_1588 + t + 32]
                                t = t + 32
                                continue 
                            if ceil32(mem[_1588]) > mem[_1588]:
                                mem[_1588 + mem[_1588] + 196] = 0
                            require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                            call address(cd[((32 * idx) + cd[36] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0 / (1000 * _1455) + (997 * s), 0, msg.sender, 128, mem[_1588], mem[_1588 + 196 len ceil32(mem[_1588])]
                        else:
                            if idx > -2:
                                revert with 'NH{q', 17
                            if idx + 1 >= ('cd', 36).length:
                                revert with 'NH{q', 50
                            require cd[((32 * idx + 1) + cd[36] + 36)] == address(cd[((32 * idx + 1) + cd[36] + 36)])
                            if idx >= ('cd', 36).length:
                                revert with 'NH{q', 50
                            require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                            _1668 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_1668 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_1668 + 36] = 0 / (1000 * _1455) + (997 * s)
                            mem[_1668 + 68] = 0
                            mem[_1668 + 100] = address(cd[((32 * idx + 1) + cd[36] + 36)])
                            mem[_1668 + 132] = 128
                            mem[_1668 + 164] = mem[_1668]
                            t = 0
                            while t < mem[_1668]:
                                mem[_1668 + t + 196] = mem[_1668 + t + 32]
                                t = t + 32
                                continue 
                            if ceil32(mem[_1668]) > mem[_1668]:
                                mem[_1668 + mem[_1668] + 196] = 0
                            require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                            call address(cd[((32 * idx) + cd[36] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0 / (1000 * _1455) + (997 * s), 0, address(cd[((32 * idx + 1) + cd[36] + 36)]), 128, mem[_1668], mem[_1668 + 196 len ceil32(mem[_1668])]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = 0 / (1000 * _1455) + (997 * s)
                    continue 
                if 997 * s and mem[(32 * idx) + (32 * ('cd', 100).length) + (64 * ('cd', 36).length) + 224] > -1 / 997 * s:
                    revert with 'NH{q', 17
                if not mem[(32 * idx) + (32 * ('cd', 100).length) + (64 * ('cd', 36).length) + 224]:
                    revert with 'NH{q', 18
                if 997 * s * mem[(32 * idx) + (32 * ('cd', 100).length) + (64 * ('cd', 36).length) + 224] / mem[(32 * idx) + (32 * ('cd', 100).length) + (64 * ('cd', 36).length) + 224] != 997 * s:
                    revert with 0, 'ds-math-mul-overflow'
                if mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 36).length) + 192] and 1000 > -1 / mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 36).length) + 192]:
                    revert with 'NH{q', 17
                if 1000 * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 36).length) + 192] / 1000 != mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 36).length) + 192]:
                    revert with 0, 'ds-math-mul-overflow'
                if 1000 * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 36).length) + 192] > (-997 * s) - 1:
                    revert with 'NH{q', 17
                if (1000 * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 36).length) + 192]) + (997 * s) < 1000 * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 36).length) + 192]:
                    revert with 0, 'ds-math-add-overflow'
                if not (1000 * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 36).length) + 192]) + (997 * s):
                    revert with 'NH{q', 18
                if idx >= ('cd', 100).length:
                    revert with 'NH{q', 50
                require cd[((32 * idx) + cd[100] + 36)] == address(cd[((32 * idx) + cd[100] + 36)])
                if ('cd', 36).length < 1:
                    revert with 'NH{q', 17
                if address(cd[((32 * idx) + cd[100] + 36)]) == address(cd[((32 * idx + 1) + cd[100] + 36)]):
                    if idx >= ('cd', 36).length - 1:
                        if idx >= ('cd', 36).length:
                            revert with 'NH{q', 50
                        require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                        _1619 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_1619 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_1619 + 36] = 0
                        mem[_1619 + 68] = 997 * s * _1466 / (1000 * _1455) + (997 * s)
                        mem[_1619 + 100] = msg.sender
                        mem[_1619 + 132] = 128
                        mem[_1619 + 164] = mem[_1619]
                        t = 0
                        while t < mem[_1619]:
                            mem[_1619 + t + 196] = mem[_1619 + t + 32]
                            t = t + 32
                            continue 
                        if ceil32(mem[_1619]) > mem[_1619]:
                            mem[_1619 + mem[_1619] + 196] = 0
                        require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                        call address(cd[((32 * idx) + cd[36] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, 997 * s * _1466 / (1000 * _1455) + (997 * s), msg.sender, 128, mem[_1619], mem[_1619 + 196 len ceil32(mem[_1619])]
                    else:
                        if idx > -2:
                            revert with 'NH{q', 17
                        if idx + 1 >= ('cd', 36).length:
                            revert with 'NH{q', 50
                        require cd[((32 * idx + 1) + cd[36] + 36)] == address(cd[((32 * idx + 1) + cd[36] + 36)])
                        if idx >= ('cd', 36).length:
                            revert with 'NH{q', 50
                        require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                        _1763 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_1763 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_1763 + 36] = 0
                        mem[_1763 + 68] = 997 * s * _1466 / (1000 * _1455) + (997 * s)
                        mem[_1763 + 100] = address(cd[((32 * idx + 1) + cd[36] + 36)])
                        mem[_1763 + 132] = 128
                        mem[_1763 + 164] = mem[_1763]
                        t = 0
                        while t < mem[_1763]:
                            mem[_1763 + t + 196] = mem[_1763 + t + 32]
                            t = t + 32
                            continue 
                        if ceil32(mem[_1763]) > mem[_1763]:
                            mem[_1763 + mem[_1763] + 196] = 0
                        require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                        call address(cd[((32 * idx) + cd[36] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, 997 * s * _1466 / (1000 * _1455) + (997 * s), address(cd[((32 * idx + 1) + cd[36] + 36)]), 128, mem[_1763], mem[_1763 + 196 len ceil32(mem[_1763])]
                else:
                    if idx >= ('cd', 36).length - 1:
                        if idx >= ('cd', 36).length:
                            revert with 'NH{q', 50
                        require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                        _1620 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_1620 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_1620 + 36] = 997 * s * _1466 / (1000 * _1455) + (997 * s)
                        mem[_1620 + 68] = 0
                        mem[_1620 + 100] = msg.sender
                        mem[_1620 + 132] = 128
                        mem[_1620 + 164] = mem[_1620]
                        t = 0
                        while t < mem[_1620]:
                            mem[_1620 + t + 196] = mem[_1620 + t + 32]
                            t = t + 32
                            continue 
                        if ceil32(mem[_1620]) > mem[_1620]:
                            mem[_1620 + mem[_1620] + 196] = 0
                        require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                        call address(cd[((32 * idx) + cd[36] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 997 * s * _1466 / (1000 * _1455) + (997 * s), 0, msg.sender, 128, mem[_1620], mem[_1620 + 196 len ceil32(mem[_1620])]
                    else:
                        if idx > -2:
                            revert with 'NH{q', 17
                        if idx + 1 >= ('cd', 36).length:
                            revert with 'NH{q', 50
                        require cd[((32 * idx + 1) + cd[36] + 36)] == address(cd[((32 * idx + 1) + cd[36] + 36)])
                        if idx >= ('cd', 36).length:
                            revert with 'NH{q', 50
                        require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                        _1764 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_1764 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_1764 + 36] = 997 * s * _1466 / (1000 * _1455) + (997 * s)
                        mem[_1764 + 68] = 0
                        mem[_1764 + 100] = address(cd[((32 * idx + 1) + cd[36] + 36)])
                        mem[_1764 + 132] = 128
                        mem[_1764 + 164] = mem[_1764]
                        t = 0
                        while t < mem[_1764]:
                            mem[_1764 + t + 196] = mem[_1764 + t + 32]
                            t = t + 32
                            continue 
                        if ceil32(mem[_1764]) > mem[_1764]:
                            mem[_1764 + mem[_1764] + 196] = 0
                        require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                        call address(cd[((32 * idx) + cd[36] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 997 * s * _1466 / (1000 * _1455) + (997 * s), 0, address(cd[((32 * idx + 1) + cd[36] + 36)]), 128, mem[_1764], mem[_1764 + 196 len ceil32(mem[_1764])]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = 997 * s * _1466 / (1000 * _1455) + (997 * s)
                continue 
        else:
            mem[(32 * ('cd', 100).length) + (64 * ('cd', 36).length) + 224 len 32 * ('cd', 36).length] = call.data[calldata.size len 32 * ('cd', 36).length]
            idx = 0
            s = cd[4]
            while idx < ('cd', 36).length:
                if idx >= mem[(32 * ('cd', 100).length) + 128]:
                    revert with 'NH{q', 50
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                _544 = mem[(32 * idx) + 128]
                if idx > -2:
                    revert with 'NH{q', 17
                if idx + 1 >= mem[96]:
                    revert with 'NH{q', 50
                _552 = mem[(32 * idx + 1) + 128]
                if mem[(32 * idx) + 140 len 20] == mem[(32 * idx + 1) + 140 len 20]:
                    revert with 0, 'UniswapV2Library: IDENTICAL_ADDRESSES'
                if mem[(32 * idx) + 140 len 20] < mem[(32 * idx + 1) + 140 len 20]:
                    if not mem[(32 * idx) + 140 len 20]:
                        revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                    require ext_code.size(mem[(32 * idx) + (32 * ('cd', 100).length) + 172 len 20])
                    staticcall mem[(32 * idx) + (32 * ('cd', 100).length) + 172 len 20].getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _591 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _603 = mem[_591]
                    require mem[_591] == mem[_591 + 18 len 14]
                    _619 = mem[_591 + 32]
                    require mem[_591 + 32] == mem[_591 + 50 len 14]
                    require mem[_591 + 64] == mem[_591 + 92 len 4]
                    if s and 997 > -1 / s:
                        revert with 'NH{q', 17
                    if 997 * s / 997 != s:
                        revert with 0, 'ds-math-mul-overflow'
                    if address(_544) == address(_544):
                        if not mem[_591 + 50 len 14]:
                            if mem[_591 + 18 len 14] and 1000 > -1 / mem[_591 + 18 len 14]:
                                revert with 'NH{q', 17
                            if 1000 * mem[_591 + 18 len 14] / 1000 != mem[_591 + 18 len 14]:
                                revert with 0, 'ds-math-mul-overflow'
                            if 1000 * mem[_591 + 18 len 14] > (-997 * s) - 1:
                                revert with 'NH{q', 17
                            if (1000 * mem[_591 + 18 len 14]) + (997 * s) < 1000 * mem[_591 + 18 len 14]:
                                revert with 0, 'ds-math-add-overflow'
                            if not (1000 * mem[_591 + 18 len 14]) + (997 * s):
                                revert with 'NH{q', 18
                            if idx >= mem[(32 * ('cd', 100).length) + (32 * ('cd', 36).length) + 160]:
                                revert with 'NH{q', 50
                            mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 36).length) + 192] = mem[_591 + 18 len 14]
                            if idx >= mem[(32 * ('cd', 100).length) + (64 * ('cd', 36).length) + 192]:
                                revert with 'NH{q', 50
                            mem[(32 * idx) + (32 * ('cd', 100).length) + (64 * ('cd', 36).length) + 224] = Mask(112, 0, _619)
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = 0 / (1000 * Mask(112, 0, _603)) + (997 * s)
                            continue 
                        if 997 * s and mem[_591 + 50 len 14] > -1 / 997 * s:
                            revert with 'NH{q', 17
                        if not mem[_591 + 50 len 14]:
                            revert with 'NH{q', 18
                        if 997 * s * mem[_591 + 50 len 14] / mem[_591 + 50 len 14] != 997 * s:
                            revert with 0, 'ds-math-mul-overflow'
                        if mem[_591 + 18 len 14] and 1000 > -1 / mem[_591 + 18 len 14]:
                            revert with 'NH{q', 17
                        if 1000 * mem[_591 + 18 len 14] / 1000 != mem[_591 + 18 len 14]:
                            revert with 0, 'ds-math-mul-overflow'
                        if 1000 * mem[_591 + 18 len 14] > (-997 * s) - 1:
                            revert with 'NH{q', 17
                        if (1000 * mem[_591 + 18 len 14]) + (997 * s) < 1000 * mem[_591 + 18 len 14]:
                            revert with 0, 'ds-math-add-overflow'
                        if not (1000 * mem[_591 + 18 len 14]) + (997 * s):
                            revert with 'NH{q', 18
                        if idx >= mem[(32 * ('cd', 100).length) + (32 * ('cd', 36).length) + 160]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 36).length) + 192] = mem[_591 + 18 len 14]
                        if idx >= mem[(32 * ('cd', 100).length) + (64 * ('cd', 36).length) + 192]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + (32 * ('cd', 100).length) + (64 * ('cd', 36).length) + 224] = Mask(112, 0, _619)
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = 997 * s * Mask(112, 0, _619) / (1000 * Mask(112, 0, _603)) + (997 * s)
                        continue 
                    if not mem[_591 + 18 len 14]:
                        if mem[_591 + 50 len 14] and 1000 > -1 / mem[_591 + 50 len 14]:
                            revert with 'NH{q', 17
                        if 1000 * mem[_591 + 50 len 14] / 1000 != mem[_591 + 50 len 14]:
                            revert with 0, 'ds-math-mul-overflow'
                        if 1000 * mem[_591 + 50 len 14] > (-997 * s) - 1:
                            revert with 'NH{q', 17
                        if (1000 * mem[_591 + 50 len 14]) + (997 * s) < 1000 * mem[_591 + 50 len 14]:
                            revert with 0, 'ds-math-add-overflow'
                        if not (1000 * mem[_591 + 50 len 14]) + (997 * s):
                            revert with 'NH{q', 18
                        if idx >= mem[(32 * ('cd', 100).length) + (32 * ('cd', 36).length) + 160]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 36).length) + 192] = mem[_591 + 50 len 14]
                        if idx >= mem[(32 * ('cd', 100).length) + (64 * ('cd', 36).length) + 192]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + (32 * ('cd', 100).length) + (64 * ('cd', 36).length) + 224] = Mask(112, 0, _603)
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = 0 / (1000 * Mask(112, 0, _619)) + (997 * s)
                        continue 
                    if 997 * s and mem[_591 + 18 len 14] > -1 / 997 * s:
                        revert with 'NH{q', 17
                    if not mem[_591 + 18 len 14]:
                        revert with 'NH{q', 18
                    if 997 * s * mem[_591 + 18 len 14] / mem[_591 + 18 len 14] != 997 * s:
                        revert with 0, 'ds-math-mul-overflow'
                    if mem[_591 + 50 len 14] and 1000 > -1 / mem[_591 + 50 len 14]:
                        revert with 'NH{q', 17
                    if 1000 * mem[_591 + 50 len 14] / 1000 != mem[_591 + 50 len 14]:
                        revert with 0, 'ds-math-mul-overflow'
                    if 1000 * mem[_591 + 50 len 14] > (-997 * s) - 1:
                        revert with 'NH{q', 17
                    if (1000 * mem[_591 + 50 len 14]) + (997 * s) < 1000 * mem[_591 + 50 len 14]:
                        revert with 0, 'ds-math-add-overflow'
                    if not (1000 * mem[_591 + 50 len 14]) + (997 * s):
                        revert with 'NH{q', 18
                    if idx >= mem[(32 * ('cd', 100).length) + (32 * ('cd', 36).length) + 160]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 36).length) + 192] = mem[_591 + 50 len 14]
                    if idx >= mem[(32 * ('cd', 100).length) + (64 * ('cd', 36).length) + 192]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + (32 * ('cd', 100).length) + (64 * ('cd', 36).length) + 224] = Mask(112, 0, _603)
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = 997 * s * Mask(112, 0, _603) / (1000 * Mask(112, 0, _619)) + (997 * s)
                    continue 
                if not mem[(32 * idx + 1) + 140 len 20]:
                    revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                require ext_code.size(mem[(32 * idx) + (32 * ('cd', 100).length) + 172 len 20])
                staticcall mem[(32 * idx) + (32 * ('cd', 100).length) + 172 len 20].getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _592 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _604 = mem[_592]
                require mem[_592] == mem[_592 + 18 len 14]
                _620 = mem[_592 + 32]
                require mem[_592 + 32] == mem[_592 + 50 len 14]
                require mem[_592 + 64] == mem[_592 + 92 len 4]
                if s and 997 > -1 / s:
                    revert with 'NH{q', 17
                if 997 * s / 997 != s:
                    revert with 0, 'ds-math-mul-overflow'
                if address(_544) == address(_552):
                    if not mem[_592 + 50 len 14]:
                        if mem[_592 + 18 len 14] and 1000 > -1 / mem[_592 + 18 len 14]:
                            revert with 'NH{q', 17
                        if 1000 * mem[_592 + 18 len 14] / 1000 != mem[_592 + 18 len 14]:
                            revert with 0, 'ds-math-mul-overflow'
                        if 1000 * mem[_592 + 18 len 14] > (-997 * s) - 1:
                            revert with 'NH{q', 17
                        if (1000 * mem[_592 + 18 len 14]) + (997 * s) < 1000 * mem[_592 + 18 len 14]:
                            revert with 0, 'ds-math-add-overflow'
                        if not (1000 * mem[_592 + 18 len 14]) + (997 * s):
                            revert with 'NH{q', 18
                        if idx >= mem[(32 * ('cd', 100).length) + (32 * ('cd', 36).length) + 160]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 36).length) + 192] = mem[_592 + 18 len 14]
                        if idx >= mem[(32 * ('cd', 100).length) + (64 * ('cd', 36).length) + 192]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + (32 * ('cd', 100).length) + (64 * ('cd', 36).length) + 224] = Mask(112, 0, _620)
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = 0 / (1000 * Mask(112, 0, _604)) + (997 * s)
                        continue 
                    if 997 * s and mem[_592 + 50 len 14] > -1 / 997 * s:
                        revert with 'NH{q', 17
                    if not mem[_592 + 50 len 14]:
                        revert with 'NH{q', 18
                    if 997 * s * mem[_592 + 50 len 14] / mem[_592 + 50 len 14] != 997 * s:
                        revert with 0, 'ds-math-mul-overflow'
                    if mem[_592 + 18 len 14] and 1000 > -1 / mem[_592 + 18 len 14]:
                        revert with 'NH{q', 17
                    if 1000 * mem[_592 + 18 len 14] / 1000 != mem[_592 + 18 len 14]:
                        revert with 0, 'ds-math-mul-overflow'
                    if 1000 * mem[_592 + 18 len 14] > (-997 * s) - 1:
                        revert with 'NH{q', 17
                    if (1000 * mem[_592 + 18 len 14]) + (997 * s) < 1000 * mem[_592 + 18 len 14]:
                        revert with 0, 'ds-math-add-overflow'
                    if not (1000 * mem[_592 + 18 len 14]) + (997 * s):
                        revert with 'NH{q', 18
                    if idx >= mem[(32 * ('cd', 100).length) + (32 * ('cd', 36).length) + 160]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 36).length) + 192] = mem[_592 + 18 len 14]
                    if idx >= mem[(32 * ('cd', 100).length) + (64 * ('cd', 36).length) + 192]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + (32 * ('cd', 100).length) + (64 * ('cd', 36).length) + 224] = Mask(112, 0, _620)
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = 997 * s * Mask(112, 0, _620) / (1000 * Mask(112, 0, _604)) + (997 * s)
                    continue 
                if not mem[_592 + 18 len 14]:
                    if mem[_592 + 50 len 14] and 1000 > -1 / mem[_592 + 50 len 14]:
                        revert with 'NH{q', 17
                    if 1000 * mem[_592 + 50 len 14] / 1000 != mem[_592 + 50 len 14]:
                        revert with 0, 'ds-math-mul-overflow'
                    if 1000 * mem[_592 + 50 len 14] > (-997 * s) - 1:
                        revert with 'NH{q', 17
                    if (1000 * mem[_592 + 50 len 14]) + (997 * s) < 1000 * mem[_592 + 50 len 14]:
                        revert with 0, 'ds-math-add-overflow'
                    if not (1000 * mem[_592 + 50 len 14]) + (997 * s):
                        revert with 'NH{q', 18
                    if idx >= mem[(32 * ('cd', 100).length) + (32 * ('cd', 36).length) + 160]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 36).length) + 192] = mem[_592 + 50 len 14]
                    if idx >= mem[(32 * ('cd', 100).length) + (64 * ('cd', 36).length) + 192]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + (32 * ('cd', 100).length) + (64 * ('cd', 36).length) + 224] = Mask(112, 0, _604)
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = 0 / (1000 * Mask(112, 0, _620)) + (997 * s)
                    continue 
                if 997 * s and mem[_592 + 18 len 14] > -1 / 997 * s:
                    revert with 'NH{q', 17
                if not mem[_592 + 18 len 14]:
                    revert with 'NH{q', 18
                if 997 * s * mem[_592 + 18 len 14] / mem[_592 + 18 len 14] != 997 * s:
                    revert with 0, 'ds-math-mul-overflow'
                if mem[_592 + 50 len 14] and 1000 > -1 / mem[_592 + 50 len 14]:
                    revert with 'NH{q', 17
                if 1000 * mem[_592 + 50 len 14] / 1000 != mem[_592 + 50 len 14]:
                    revert with 0, 'ds-math-mul-overflow'
                if 1000 * mem[_592 + 50 len 14] > (-997 * s) - 1:
                    revert with 'NH{q', 17
                if (1000 * mem[_592 + 50 len 14]) + (997 * s) < 1000 * mem[_592 + 50 len 14]:
                    revert with 0, 'ds-math-add-overflow'
                if not (1000 * mem[_592 + 50 len 14]) + (997 * s):
                    revert with 'NH{q', 18
                if idx >= mem[(32 * ('cd', 100).length) + (32 * ('cd', 36).length) + 160]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 36).length) + 192] = mem[_592 + 50 len 14]
                if idx >= mem[(32 * ('cd', 100).length) + (64 * ('cd', 36).length) + 192]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + (32 * ('cd', 100).length) + (64 * ('cd', 36).length) + 224] = Mask(112, 0, _604)
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = 997 * s * Mask(112, 0, _604) / (1000 * Mask(112, 0, _620)) + (997 * s)
                continue 
            require s >= cd[68]
            if 0 >= ('cd', 36).length:
                revert with 'NH{q', 50
            require ('cd', 36)[0] == address(('cd', 36)[0])
            mem[mem[64]] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = address(('cd', 36)[0])
            mem[mem[64] + 68] = cd[4]
            require ext_code.size(stor1)
            call stor1.0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, address(('cd', 36)[0]), cd[4]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            idx = 0
            s = cd[4]
            while idx < ('cd', 36).length:
                if idx >= ('cd', 100).length:
                    revert with 'NH{q', 50
                require cd[((32 * idx) + cd[100] + 36)] == address(cd[((32 * idx) + cd[100] + 36)])
                if idx > -2:
                    revert with 'NH{q', 17
                if idx + 1 >= ('cd', 100).length:
                    revert with 'NH{q', 50
                require cd[((32 * idx + 1) + cd[100] + 36)] == address(cd[((32 * idx + 1) + cd[100] + 36)])
                if address(cd[((32 * idx) + cd[100] + 36)]) == address(cd[((32 * idx + 1) + cd[100] + 36)]):
                    revert with 0, 'UniswapV2Library: IDENTICAL_ADDRESSES'
                if address(cd[((32 * idx) + cd[100] + 36)]) < address(cd[((32 * idx + 1) + cd[100] + 36)]):
                    if not address(cd[((32 * idx) + cd[100] + 36)]):
                        revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                    if idx >= mem[(32 * ('cd', 100).length) + (32 * ('cd', 36).length) + 160]:
                        revert with 'NH{q', 50
                    _1457 = mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 36).length) + 192]
                    if idx >= mem[(32 * ('cd', 100).length) + (64 * ('cd', 36).length) + 192]:
                        revert with 'NH{q', 50
                    _1467 = mem[(32 * idx) + (32 * ('cd', 100).length) + (64 * ('cd', 36).length) + 224]
                    if s and 997 > -1 / s:
                        revert with 'NH{q', 17
                    if 997 * s / 997 != s:
                        revert with 0, 'ds-math-mul-overflow'
                    if not mem[(32 * idx) + (32 * ('cd', 100).length) + (64 * ('cd', 36).length) + 224]:
                        if mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 36).length) + 192] and 1000 > -1 / mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 36).length) + 192]:
                            revert with 'NH{q', 17
                        if 1000 * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 36).length) + 192] / 1000 != mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 36).length) + 192]:
                            revert with 0, 'ds-math-mul-overflow'
                        if 1000 * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 36).length) + 192] > (-997 * s) - 1:
                            revert with 'NH{q', 17
                        if (1000 * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 36).length) + 192]) + (997 * s) < 1000 * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 36).length) + 192]:
                            revert with 0, 'ds-math-add-overflow'
                        if not (1000 * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 36).length) + 192]) + (997 * s):
                            revert with 'NH{q', 18
                        if idx >= ('cd', 100).length:
                            revert with 'NH{q', 50
                        require cd[((32 * idx) + cd[100] + 36)] == address(cd[((32 * idx) + cd[100] + 36)])
                        if ('cd', 36).length < 1:
                            revert with 'NH{q', 17
                        if address(cd[((32 * idx) + cd[100] + 36)]) == address(cd[((32 * idx) + cd[100] + 36)]):
                            if idx >= ('cd', 36).length - 1:
                                if idx >= ('cd', 36).length:
                                    revert with 'NH{q', 50
                                require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                                _1589 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_1589 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1589 + 36] = 0
                                mem[_1589 + 68] = 0 / (1000 * _1457) + (997 * s)
                                mem[_1589 + 100] = msg.sender
                                mem[_1589 + 132] = 128
                                mem[_1589 + 164] = mem[_1589]
                                t = 0
                                while t < mem[_1589]:
                                    mem[_1589 + t + 196] = mem[_1589 + t + 32]
                                    t = t + 32
                                    continue 
                                if ceil32(mem[_1589]) > mem[_1589]:
                                    mem[_1589 + mem[_1589] + 196] = 0
                                require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                call address(cd[((32 * idx) + cd[36] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, 0 / (1000 * _1457) + (997 * s), msg.sender, 128, mem[_1589], mem[_1589 + 196 len ceil32(mem[_1589])]
                            else:
                                if idx > -2:
                                    revert with 'NH{q', 17
                                if idx + 1 >= ('cd', 36).length:
                                    revert with 'NH{q', 50
                                require cd[((32 * idx + 1) + cd[36] + 36)] == address(cd[((32 * idx + 1) + cd[36] + 36)])
                                if idx >= ('cd', 36).length:
                                    revert with 'NH{q', 50
                                require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                                _1669 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_1669 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1669 + 36] = 0
                                mem[_1669 + 68] = 0 / (1000 * _1457) + (997 * s)
                                mem[_1669 + 100] = address(cd[((32 * idx + 1) + cd[36] + 36)])
                                mem[_1669 + 132] = 128
                                mem[_1669 + 164] = mem[_1669]
                                t = 0
                                while t < mem[_1669]:
                                    mem[_1669 + t + 196] = mem[_1669 + t + 32]
                                    t = t + 32
                                    continue 
                                if ceil32(mem[_1669]) > mem[_1669]:
                                    mem[_1669 + mem[_1669] + 196] = 0
                                require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                call address(cd[((32 * idx) + cd[36] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, 0 / (1000 * _1457) + (997 * s), address(cd[((32 * idx + 1) + cd[36] + 36)]), 128, mem[_1669], mem[_1669 + 196 len ceil32(mem[_1669])]
                        else:
                            if idx >= ('cd', 36).length - 1:
                                if idx >= ('cd', 36).length:
                                    revert with 'NH{q', 50
                                require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                                _1590 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_1590 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1590 + 36] = 0 / (1000 * _1457) + (997 * s)
                                mem[_1590 + 68] = 0
                                mem[_1590 + 100] = msg.sender
                                mem[_1590 + 132] = 128
                                mem[_1590 + 164] = mem[_1590]
                                t = 0
                                while t < mem[_1590]:
                                    mem[_1590 + t + 196] = mem[_1590 + t + 32]
                                    t = t + 32
                                    continue 
                                if ceil32(mem[_1590]) > mem[_1590]:
                                    mem[_1590 + mem[_1590] + 196] = 0
                                require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                call address(cd[((32 * idx) + cd[36] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0 / (1000 * _1457) + (997 * s), 0, msg.sender, 128, mem[_1590], mem[_1590 + 196 len ceil32(mem[_1590])]
                            else:
                                if idx > -2:
                                    revert with 'NH{q', 17
                                if idx + 1 >= ('cd', 36).length:
                                    revert with 'NH{q', 50
                                require cd[((32 * idx + 1) + cd[36] + 36)] == address(cd[((32 * idx + 1) + cd[36] + 36)])
                                if idx >= ('cd', 36).length:
                                    revert with 'NH{q', 50
                                require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                                _1670 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_1670 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1670 + 36] = 0 / (1000 * _1457) + (997 * s)
                                mem[_1670 + 68] = 0
                                mem[_1670 + 100] = address(cd[((32 * idx + 1) + cd[36] + 36)])
                                mem[_1670 + 132] = 128
                                mem[_1670 + 164] = mem[_1670]
                                t = 0
                                while t < mem[_1670]:
                                    mem[_1670 + t + 196] = mem[_1670 + t + 32]
                                    t = t + 32
                                    continue 
                                if ceil32(mem[_1670]) > mem[_1670]:
                                    mem[_1670 + mem[_1670] + 196] = 0
                                require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                call address(cd[((32 * idx) + cd[36] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0 / (1000 * _1457) + (997 * s), 0, address(cd[((32 * idx + 1) + cd[36] + 36)]), 128, mem[_1670], mem[_1670 + 196 len ceil32(mem[_1670])]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = 0 / (1000 * _1457) + (997 * s)
                        continue 
                    if 997 * s and mem[(32 * idx) + (32 * ('cd', 100).length) + (64 * ('cd', 36).length) + 224] > -1 / 997 * s:
                        revert with 'NH{q', 17
                    if not mem[(32 * idx) + (32 * ('cd', 100).length) + (64 * ('cd', 36).length) + 224]:
                        revert with 'NH{q', 18
                    if 997 * s * mem[(32 * idx) + (32 * ('cd', 100).length) + (64 * ('cd', 36).length) + 224] / mem[(32 * idx) + (32 * ('cd', 100).length) + (64 * ('cd', 36).length) + 224] != 997 * s:
                        revert with 0, 'ds-math-mul-overflow'
                    if mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 36).length) + 192] and 1000 > -1 / mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 36).length) + 192]:
                        revert with 'NH{q', 17
                    if 1000 * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 36).length) + 192] / 1000 != mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 36).length) + 192]:
                        revert with 0, 'ds-math-mul-overflow'
                    if 1000 * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 36).length) + 192] > (-997 * s) - 1:
                        revert with 'NH{q', 17
                    if (1000 * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 36).length) + 192]) + (997 * s) < 1000 * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 36).length) + 192]:
                        revert with 0, 'ds-math-add-overflow'
                    if not (1000 * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 36).length) + 192]) + (997 * s):
                        revert with 'NH{q', 18
                    if idx >= ('cd', 100).length:
                        revert with 'NH{q', 50
                    require cd[((32 * idx) + cd[100] + 36)] == address(cd[((32 * idx) + cd[100] + 36)])
                    if ('cd', 36).length < 1:
                        revert with 'NH{q', 17
                    if address(cd[((32 * idx) + cd[100] + 36)]) == address(cd[((32 * idx) + cd[100] + 36)]):
                        if idx >= ('cd', 36).length - 1:
                            if idx >= ('cd', 36).length:
                                revert with 'NH{q', 50
                            require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                            _1621 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_1621 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_1621 + 36] = 0
                            mem[_1621 + 68] = 997 * s * _1467 / (1000 * _1457) + (997 * s)
                            mem[_1621 + 100] = msg.sender
                            mem[_1621 + 132] = 128
                            mem[_1621 + 164] = mem[_1621]
                            t = 0
                            while t < mem[_1621]:
                                mem[_1621 + t + 196] = mem[_1621 + t + 32]
                                t = t + 32
                                continue 
                            if ceil32(mem[_1621]) > mem[_1621]:
                                mem[_1621 + mem[_1621] + 196] = 0
                            require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                            call address(cd[((32 * idx) + cd[36] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, 997 * s * _1467 / (1000 * _1457) + (997 * s), msg.sender, 128, mem[_1621], mem[_1621 + 196 len ceil32(mem[_1621])]
                        else:
                            if idx > -2:
                                revert with 'NH{q', 17
                            if idx + 1 >= ('cd', 36).length:
                                revert with 'NH{q', 50
                            require cd[((32 * idx + 1) + cd[36] + 36)] == address(cd[((32 * idx + 1) + cd[36] + 36)])
                            if idx >= ('cd', 36).length:
                                revert with 'NH{q', 50
                            require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                            _1765 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_1765 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_1765 + 36] = 0
                            mem[_1765 + 68] = 997 * s * _1467 / (1000 * _1457) + (997 * s)
                            mem[_1765 + 100] = address(cd[((32 * idx + 1) + cd[36] + 36)])
                            mem[_1765 + 132] = 128
                            mem[_1765 + 164] = mem[_1765]
                            t = 0
                            while t < mem[_1765]:
                                mem[_1765 + t + 196] = mem[_1765 + t + 32]
                                t = t + 32
                                continue 
                            if ceil32(mem[_1765]) > mem[_1765]:
                                mem[_1765 + mem[_1765] + 196] = 0
                            require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                            call address(cd[((32 * idx) + cd[36] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, 997 * s * _1467 / (1000 * _1457) + (997 * s), address(cd[((32 * idx + 1) + cd[36] + 36)]), 128, mem[_1765], mem[_1765 + 196 len ceil32(mem[_1765])]
                    else:
                        if idx >= ('cd', 36).length - 1:
                            if idx >= ('cd', 36).length:
                                revert with 'NH{q', 50
                            require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                            _1622 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_1622 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_1622 + 36] = 997 * s * _1467 / (1000 * _1457) + (997 * s)
                            mem[_1622 + 68] = 0
                            mem[_1622 + 100] = msg.sender
                            mem[_1622 + 132] = 128
                            mem[_1622 + 164] = mem[_1622]
                            t = 0
                            while t < mem[_1622]:
                                mem[_1622 + t + 196] = mem[_1622 + t + 32]
                                t = t + 32
                                continue 
                            if ceil32(mem[_1622]) > mem[_1622]:
                                mem[_1622 + mem[_1622] + 196] = 0
                            require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                            call address(cd[((32 * idx) + cd[36] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 997 * s * _1467 / (1000 * _1457) + (997 * s), 0, msg.sender, 128, mem[_1622], mem[_1622 + 196 len ceil32(mem[_1622])]
                        else:
                            if idx > -2:
                                revert with 'NH{q', 17
                            if idx + 1 >= ('cd', 36).length:
                                revert with 'NH{q', 50
                            require cd[((32 * idx + 1) + cd[36] + 36)] == address(cd[((32 * idx + 1) + cd[36] + 36)])
                            if idx >= ('cd', 36).length:
                                revert with 'NH{q', 50
                            require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                            _1766 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_1766 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_1766 + 36] = 997 * s * _1467 / (1000 * _1457) + (997 * s)
                            mem[_1766 + 68] = 0
                            mem[_1766 + 100] = address(cd[((32 * idx + 1) + cd[36] + 36)])
                            mem[_1766 + 132] = 128
                            mem[_1766 + 164] = mem[_1766]
                            t = 0
                            while t < mem[_1766]:
                                mem[_1766 + t + 196] = mem[_1766 + t + 32]
                                t = t + 32
                                continue 
                            if ceil32(mem[_1766]) > mem[_1766]:
                                mem[_1766 + mem[_1766] + 196] = 0
                            require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                            call address(cd[((32 * idx) + cd[36] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 997 * s * _1467 / (1000 * _1457) + (997 * s), 0, address(cd[((32 * idx + 1) + cd[36] + 36)]), 128, mem[_1766], mem[_1766 + 196 len ceil32(mem[_1766])]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = 997 * s * _1467 / (1000 * _1457) + (997 * s)
                    continue 
                if not address(cd[((32 * idx + 1) + cd[100] + 36)]):
                    revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                if idx >= mem[(32 * ('cd', 100).length) + (32 * ('cd', 36).length) + 160]:
                    revert with 'NH{q', 50
                _1459 = mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 36).length) + 192]
                if idx >= mem[(32 * ('cd', 100).length) + (64 * ('cd', 36).length) + 192]:
                    revert with 'NH{q', 50
                _1468 = mem[(32 * idx) + (32 * ('cd', 100).length) + (64 * ('cd', 36).length) + 224]
                if s and 997 > -1 / s:
                    revert with 'NH{q', 17
                if 997 * s / 997 != s:
                    revert with 0, 'ds-math-mul-overflow'
                if not mem[(32 * idx) + (32 * ('cd', 100).length) + (64 * ('cd', 36).length) + 224]:
                    if mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 36).length) + 192] and 1000 > -1 / mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 36).length) + 192]:
                        revert with 'NH{q', 17
                    if 1000 * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 36).length) + 192] / 1000 != mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 36).length) + 192]:
                        revert with 0, 'ds-math-mul-overflow'
                    if 1000 * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 36).length) + 192] > (-997 * s) - 1:
                        revert with 'NH{q', 17
                    if (1000 * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 36).length) + 192]) + (997 * s) < 1000 * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 36).length) + 192]:
                        revert with 0, 'ds-math-add-overflow'
                    if not (1000 * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 36).length) + 192]) + (997 * s):
                        revert with 'NH{q', 18
                    if idx >= ('cd', 100).length:
                        revert with 'NH{q', 50
                    require cd[((32 * idx) + cd[100] + 36)] == address(cd[((32 * idx) + cd[100] + 36)])
                    if ('cd', 36).length < 1:
                        revert with 'NH{q', 17
                    if address(cd[((32 * idx) + cd[100] + 36)]) == address(cd[((32 * idx + 1) + cd[100] + 36)]):
                        if idx >= ('cd', 36).length - 1:
                            if idx >= ('cd', 36).length:
                                revert with 'NH{q', 50
                            require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                            _1591 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_1591 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_1591 + 36] = 0
                            mem[_1591 + 68] = 0 / (1000 * _1459) + (997 * s)
                            mem[_1591 + 100] = msg.sender
                            mem[_1591 + 132] = 128
                            mem[_1591 + 164] = mem[_1591]
                            t = 0
                            while t < mem[_1591]:
                                mem[_1591 + t + 196] = mem[_1591 + t + 32]
                                t = t + 32
                                continue 
                            if ceil32(mem[_1591]) > mem[_1591]:
                                mem[_1591 + mem[_1591] + 196] = 0
                            require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                            call address(cd[((32 * idx) + cd[36] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, 0 / (1000 * _1459) + (997 * s), msg.sender, 128, mem[_1591], mem[_1591 + 196 len ceil32(mem[_1591])]
                        else:
                            if idx > -2:
                                revert with 'NH{q', 17
                            if idx + 1 >= ('cd', 36).length:
                                revert with 'NH{q', 50
                            require cd[((32 * idx + 1) + cd[36] + 36)] == address(cd[((32 * idx + 1) + cd[36] + 36)])
                            if idx >= ('cd', 36).length:
                                revert with 'NH{q', 50
                            require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                            _1671 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_1671 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_1671 + 36] = 0
                            mem[_1671 + 68] = 0 / (1000 * _1459) + (997 * s)
                            mem[_1671 + 100] = address(cd[((32 * idx + 1) + cd[36] + 36)])
                            mem[_1671 + 132] = 128
                            mem[_1671 + 164] = mem[_1671]
                            t = 0
                            while t < mem[_1671]:
                                mem[_1671 + t + 196] = mem[_1671 + t + 32]
                                t = t + 32
                                continue 
                            if ceil32(mem[_1671]) > mem[_1671]:
                                mem[_1671 + mem[_1671] + 196] = 0
                            require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                            call address(cd[((32 * idx) + cd[36] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, 0 / (1000 * _1459) + (997 * s), address(cd[((32 * idx + 1) + cd[36] + 36)]), 128, mem[_1671], mem[_1671 + 196 len ceil32(mem[_1671])]
                    else:
                        if idx >= ('cd', 36).length - 1:
                            if idx >= ('cd', 36).length:
                                revert with 'NH{q', 50
                            require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                            _1592 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_1592 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_1592 + 36] = 0 / (1000 * _1459) + (997 * s)
                            mem[_1592 + 68] = 0
                            mem[_1592 + 100] = msg.sender
                            mem[_1592 + 132] = 128
                            mem[_1592 + 164] = mem[_1592]
                            t = 0
                            while t < mem[_1592]:
                                mem[_1592 + t + 196] = mem[_1592 + t + 32]
                                t = t + 32
                                continue 
                            if ceil32(mem[_1592]) > mem[_1592]:
                                mem[_1592 + mem[_1592] + 196] = 0
                            require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                            call address(cd[((32 * idx) + cd[36] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0 / (1000 * _1459) + (997 * s), 0, msg.sender, 128, mem[_1592], mem[_1592 + 196 len ceil32(mem[_1592])]
                        else:
                            if idx > -2:
                                revert with 'NH{q', 17
                            if idx + 1 >= ('cd', 36).length:
                                revert with 'NH{q', 50
                            require cd[((32 * idx + 1) + cd[36] + 36)] == address(cd[((32 * idx + 1) + cd[36] + 36)])
                            if idx >= ('cd', 36).length:
                                revert with 'NH{q', 50
                            require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                            _1672 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_1672 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_1672 + 36] = 0 / (1000 * _1459) + (997 * s)
                            mem[_1672 + 68] = 0
                            mem[_1672 + 100] = address(cd[((32 * idx + 1) + cd[36] + 36)])
                            mem[_1672 + 132] = 128
                            mem[_1672 + 164] = mem[_1672]
                            t = 0
                            while t < mem[_1672]:
                                mem[_1672 + t + 196] = mem[_1672 + t + 32]
                                t = t + 32
                                continue 
                            if ceil32(mem[_1672]) > mem[_1672]:
                                mem[_1672 + mem[_1672] + 196] = 0
                            require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                            call address(cd[((32 * idx) + cd[36] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0 / (1000 * _1459) + (997 * s), 0, address(cd[((32 * idx + 1) + cd[36] + 36)]), 128, mem[_1672], mem[_1672 + 196 len ceil32(mem[_1672])]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = 0 / (1000 * _1459) + (997 * s)
                    continue 
                if 997 * s and mem[(32 * idx) + (32 * ('cd', 100).length) + (64 * ('cd', 36).length) + 224] > -1 / 997 * s:
                    revert with 'NH{q', 17
                if not mem[(32 * idx) + (32 * ('cd', 100).length) + (64 * ('cd', 36).length) + 224]:
                    revert with 'NH{q', 18
                if 997 * s * mem[(32 * idx) + (32 * ('cd', 100).length) + (64 * ('cd', 36).length) + 224] / mem[(32 * idx) + (32 * ('cd', 100).length) + (64 * ('cd', 36).length) + 224] != 997 * s:
                    revert with 0, 'ds-math-mul-overflow'
                if mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 36).length) + 192] and 1000 > -1 / mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 36).length) + 192]:
                    revert with 'NH{q', 17
                if 1000 * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 36).length) + 192] / 1000 != mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 36).length) + 192]:
                    revert with 0, 'ds-math-mul-overflow'
                if 1000 * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 36).length) + 192] > (-997 * s) - 1:
                    revert with 'NH{q', 17
                if (1000 * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 36).length) + 192]) + (997 * s) < 1000 * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 36).length) + 192]:
                    revert with 0, 'ds-math-add-overflow'
                if not (1000 * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 36).length) + 192]) + (997 * s):
                    revert with 'NH{q', 18
                if idx >= ('cd', 100).length:
                    revert with 'NH{q', 50
                require cd[((32 * idx) + cd[100] + 36)] == address(cd[((32 * idx) + cd[100] + 36)])
                if ('cd', 36).length < 1:
                    revert with 'NH{q', 17
                if address(cd[((32 * idx) + cd[100] + 36)]) == address(cd[((32 * idx + 1) + cd[100] + 36)]):
                    if idx >= ('cd', 36).length - 1:
                        if idx >= ('cd', 36).length:
                            revert with 'NH{q', 50
                        require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                        _1623 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_1623 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_1623 + 36] = 0
                        mem[_1623 + 68] = 997 * s * _1468 / (1000 * _1459) + (997 * s)
                        mem[_1623 + 100] = msg.sender
                        mem[_1623 + 132] = 128
                        mem[_1623 + 164] = mem[_1623]
                        t = 0
                        while t < mem[_1623]:
                            mem[_1623 + t + 196] = mem[_1623 + t + 32]
                            t = t + 32
                            continue 
                        if ceil32(mem[_1623]) > mem[_1623]:
                            mem[_1623 + mem[_1623] + 196] = 0
                        require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                        call address(cd[((32 * idx) + cd[36] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, 997 * s * _1468 / (1000 * _1459) + (997 * s), msg.sender, 128, mem[_1623], mem[_1623 + 196 len ceil32(mem[_1623])]
                    else:
                        if idx > -2:
                            revert with 'NH{q', 17
                        if idx + 1 >= ('cd', 36).length:
                            revert with 'NH{q', 50
                        require cd[((32 * idx + 1) + cd[36] + 36)] == address(cd[((32 * idx + 1) + cd[36] + 36)])
                        if idx >= ('cd', 36).length:
                            revert with 'NH{q', 50
                        require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                        _1767 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_1767 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_1767 + 36] = 0
                        mem[_1767 + 68] = 997 * s * _1468 / (1000 * _1459) + (997 * s)
                        mem[_1767 + 100] = address(cd[((32 * idx + 1) + cd[36] + 36)])
                        mem[_1767 + 132] = 128
                        mem[_1767 + 164] = mem[_1767]
                        t = 0
                        while t < mem[_1767]:
                            mem[_1767 + t + 196] = mem[_1767 + t + 32]
                            t = t + 32
                            continue 
                        if ceil32(mem[_1767]) > mem[_1767]:
                            mem[_1767 + mem[_1767] + 196] = 0
                        require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                        call address(cd[((32 * idx) + cd[36] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, 997 * s * _1468 / (1000 * _1459) + (997 * s), address(cd[((32 * idx + 1) + cd[36] + 36)]), 128, mem[_1767], mem[_1767 + 196 len ceil32(mem[_1767])]
                else:
                    if idx >= ('cd', 36).length - 1:
                        if idx >= ('cd', 36).length:
                            revert with 'NH{q', 50
                        require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                        _1624 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_1624 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_1624 + 36] = 997 * s * _1468 / (1000 * _1459) + (997 * s)
                        mem[_1624 + 68] = 0
                        mem[_1624 + 100] = msg.sender
                        mem[_1624 + 132] = 128
                        mem[_1624 + 164] = mem[_1624]
                        t = 0
                        while t < mem[_1624]:
                            mem[_1624 + t + 196] = mem[_1624 + t + 32]
                            t = t + 32
                            continue 
                        if ceil32(mem[_1624]) > mem[_1624]:
                            mem[_1624 + mem[_1624] + 196] = 0
                        require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                        call address(cd[((32 * idx) + cd[36] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 997 * s * _1468 / (1000 * _1459) + (997 * s), 0, msg.sender, 128, mem[_1624], mem[_1624 + 196 len ceil32(mem[_1624])]
                    else:
                        if idx > -2:
                            revert with 'NH{q', 17
                        if idx + 1 >= ('cd', 36).length:
                            revert with 'NH{q', 50
                        require cd[((32 * idx + 1) + cd[36] + 36)] == address(cd[((32 * idx + 1) + cd[36] + 36)])
                        if idx >= ('cd', 36).length:
                            revert with 'NH{q', 50
                        require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                        _1768 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_1768 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_1768 + 36] = 997 * s * _1468 / (1000 * _1459) + (997 * s)
                        mem[_1768 + 68] = 0
                        mem[_1768 + 100] = address(cd[((32 * idx + 1) + cd[36] + 36)])
                        mem[_1768 + 132] = 128
                        mem[_1768 + 164] = mem[_1768]
                        t = 0
                        while t < mem[_1768]:
                            mem[_1768 + t + 196] = mem[_1768 + t + 32]
                            t = t + 32
                            continue 
                        if ceil32(mem[_1768]) > mem[_1768]:
                            mem[_1768 + mem[_1768] + 196] = 0
                        require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                        call address(cd[((32 * idx) + cd[36] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 997 * s * _1468 / (1000 * _1459) + (997 * s), 0, address(cd[((32 * idx + 1) + cd[36] + 36)]), 128, mem[_1768], mem[_1768 + 196 len ceil32(mem[_1768])]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = 997 * s * _1468 / (1000 * _1459) + (997 * s)
                continue 
    require msg.sender == stor0
}



}
