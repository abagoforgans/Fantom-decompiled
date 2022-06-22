contract main {




// =====================  Runtime code  =====================


address stor0;

function _fallback() payable {
    revert
}

function sub_b33b5dc6(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 4).length) + 97 > test266151307() or floor32(('cd', 4).length) + 97 < 96:
        revert with 'NH{q', 65
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return tx.origin
}

function sub_95e38dcd(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 4).length) + 97 > test266151307() or floor32(('cd', 4).length) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = ('cd', 4).length
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    mem[floor32(('cd', 4).length) + 97] = ('cd', 4).length
    mem[64] = floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 129
    if not ('cd', 4).length:
        idx = 0
        s = 0
        s = 0
        while idx < ('cd', 4).length:
            mem[mem[64] + 4] = tx.origin
            require ext_code.size(stor0)
            staticcall stor0.0x70a08231 with:
                    gas gas_remaining wei
                   args tx.origin
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _528 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _533 = mem[_528]
            require mem[_528] == mem[_528]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            require ext_code.size(mem[(32 * idx) + 140 len 20])
            call mem[(32 * idx) + 140 len 20].harvest() with:
                 gas gas_remaining wei
            if not ext_call.success:
                mem[mem[64] + 4] = tx.origin
                require ext_code.size(stor0)
                staticcall stor0.0x70a08231 with:
                        gas gas_remaining wei
                       args tx.origin
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _552 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _556 = mem[_552]
                require mem[_552] == mem[_552]
                if mem[_552] < _533:
                    revert with 'NH{q', 17
                if idx >= mem[floor32(('cd', 4).length) + 97]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + floor32(('cd', 4).length) + 129] = mem[_552] - _533
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = _556
                s = _533
                continue 
            mem[mem[64] + 4] = this.address
            require ext_code.size(stor0)
            staticcall stor0.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _553 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _557 = mem[_553]
            require mem[_553] == mem[_553]
            if mem[_553] <= 0:
                mem[mem[64] + 4] = tx.origin
                require ext_code.size(stor0)
                staticcall stor0.0x70a08231 with:
                        gas gas_remaining wei
                       args tx.origin
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _568 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _574 = mem[_568]
                require mem[_568] == mem[_568]
                if mem[_568] < _533:
                    revert with 'NH{q', 17
                if idx >= mem[floor32(('cd', 4).length) + 97]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + floor32(('cd', 4).length) + 129] = mem[_568] - _533
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = _574
                s = _533
                continue 
            _561 = mem[64]
            mem[mem[64] + 36] = tx.origin
            mem[mem[64] + 68] = _557
            _570 = mem[64]
            mem[mem[64]] = 68
            mem[64] = mem[64] + 100
            mem[_570 + 32] = mem[_570 + 36 len 28] or 0xa9059cbb00000000000000000000000000000000000000000000000000000000
            mem[64] = _561 + 164
            mem[_561 + 100] = 32
            mem[_561 + 132] = 'SafeERC20: low-level call failed'
            if ext_code.size(stor0) <= 0:
                revert with 0, 'Address: call to non-contract'
            _582 = mem[_570]
            s = 0
            while s < _582:
                mem[_561 + s + 164] = mem[_570 + s + 32]
                s = s + 32
                continue 
            if ceil32(_582) > _582:
                mem[_561 + _582 + 164] = 0
            call stor0.mem[_561 + 164 len 4] with:
                 gas gas_remaining wei
                args mem[_561 + 168 len _582 - 4]
            if not return_data.size:
                if not ext_call.success:
                    if mem[96] > 0:
                        revert with memory
                          from 128
                           len mem[96]
                    mem[_561 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_561 + 168] = 32
                    idx = 0
                    while idx < 32:
                        mem[_561 + idx + 232] = mem[_561 + idx + 132]
                        idx = idx + 32
                        continue 
                    revert with 0, 32, 32, mem[_561 + 232]
                if mem[96] > 0:
                    require mem[96] >= 32
                    require mem[128] == bool(mem[128])
                    if not mem[128]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                mem[_561 + 168] = tx.origin
                require ext_code.size(stor0)
                staticcall stor0.0x70a08231 with:
                        gas gas_remaining wei
                       args tx.origin
                mem[_561 + 164] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = _561 + ceil32(return_data.size) + 164
            else:
                mem[_561 + 164] = return_data.size
                mem[_561 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_561 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_561 + ceil32(return_data.size) + 169] = 32
                    idx = 0
                    while idx < 32:
                        mem[_561 + ceil32(return_data.size) + idx + 233] = mem[_561 + idx + 132]
                        idx = idx + 32
                        continue 
                    revert with 0, 32, 32, mem[_561 + ceil32(return_data.size) + 233]
                if return_data.size > 0:
                    require return_data.size >= 32
                    require mem[_561 + 196] == bool(mem[_561 + 196])
                    if not mem[_561 + 196]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                mem[_561 + ceil32(return_data.size) + 169] = tx.origin
                require ext_code.size(stor0)
                staticcall stor0.0x70a08231 with:
                        gas gas_remaining wei
                       args tx.origin
                mem[_561 + ceil32(return_data.size) + 165] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = _561 + ceil32(return_data.size) + ceil32(return_data.size) + 165
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if ext_call.return_data[0] < _533:
                revert with 'NH{q', 17
            if idx >= mem[floor32(('cd', 4).length) + 97]:
                revert with 'NH{q', 50
            mem[(32 * idx) + floor32(('cd', 4).length) + 129] = ext_call.return_data[0] - _533
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = ext_call.return_data[0]
            s = _533
            continue 
        mem[mem[64]] = 32
        _524 = mem[floor32(('cd', 4).length) + 97]
        mem[mem[64] + 32] = mem[floor32(('cd', 4).length) + 97]
        mem[mem[64] + 64 len 32 * _524] = mem[floor32(('cd', 4).length) + 129 len 32 * _524]
        return 32, mem[mem[64] + 32 len (32 * _524) + 32]
    mem[floor32(('cd', 4).length) + 129 len 32 * ('cd', 4).length] = call.data[calldata.size len 32 * ('cd', 4).length]
    idx = 0
    s = 0
    s = 0
    while idx < ('cd', 4).length:
        mem[mem[64] + 4] = tx.origin
        require ext_code.size(stor0)
        staticcall stor0.0x70a08231 with:
                gas gas_remaining wei
               args tx.origin
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _529 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _535 = mem[_529]
        require mem[_529] == mem[_529]
        if idx >= mem[96]:
            revert with 'NH{q', 50
        require ext_code.size(mem[(32 * idx) + 140 len 20])
        call mem[(32 * idx) + 140 len 20].harvest() with:
             gas gas_remaining wei
        if not ext_call.success:
            mem[mem[64] + 4] = tx.origin
            require ext_code.size(stor0)
            staticcall stor0.0x70a08231 with:
                    gas gas_remaining wei
                   args tx.origin
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _554 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _558 = mem[_554]
            require mem[_554] == mem[_554]
            if mem[_554] < _535:
                revert with 'NH{q', 17
            if idx >= mem[floor32(('cd', 4).length) + 97]:
                revert with 'NH{q', 50
            mem[(32 * idx) + floor32(('cd', 4).length) + 129] = mem[_554] - _535
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = _558
            s = _535
            continue 
        mem[mem[64] + 4] = this.address
        require ext_code.size(stor0)
        staticcall stor0.0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _555 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _559 = mem[_555]
        require mem[_555] == mem[_555]
        if mem[_555] <= 0:
            mem[mem[64] + 4] = tx.origin
            require ext_code.size(stor0)
            staticcall stor0.0x70a08231 with:
                    gas gas_remaining wei
                   args tx.origin
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _569 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _576 = mem[_569]
            require mem[_569] == mem[_569]
            if mem[_569] < _535:
                revert with 'NH{q', 17
            if idx >= mem[floor32(('cd', 4).length) + 97]:
                revert with 'NH{q', 50
            mem[(32 * idx) + floor32(('cd', 4).length) + 129] = mem[_569] - _535
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = _576
            s = _535
            continue 
        _563 = mem[64]
        mem[mem[64] + 36] = tx.origin
        mem[mem[64] + 68] = _559
        _572 = mem[64]
        mem[mem[64]] = 68
        mem[64] = mem[64] + 100
        mem[_572 + 32] = mem[_572 + 36 len 28] or 0xa9059cbb00000000000000000000000000000000000000000000000000000000
        mem[64] = _563 + 164
        mem[_563 + 100] = 32
        mem[_563 + 132] = 'SafeERC20: low-level call failed'
        if ext_code.size(stor0) <= 0:
            revert with 0, 'Address: call to non-contract'
        _583 = mem[_572]
        s = 0
        while s < _583:
            mem[_563 + s + 164] = mem[_572 + s + 32]
            s = s + 32
            continue 
        if ceil32(_583) > _583:
            mem[_563 + _583 + 164] = 0
        call stor0.mem[_563 + 164 len 4] with:
             gas gas_remaining wei
            args mem[_563 + 168 len _583 - 4]
        if not return_data.size:
            if not ext_call.success:
                if mem[96] > 0:
                    revert with memory
                      from 128
                       len mem[96]
                mem[_563 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_563 + 168] = 32
                idx = 0
                while idx < 32:
                    mem[_563 + idx + 232] = mem[_563 + idx + 132]
                    idx = idx + 32
                    continue 
                revert with 0, 32, 32, mem[_563 + 232]
            if mem[96] > 0:
                require mem[96] >= 32
                require mem[128] == bool(mem[128])
                if not mem[128]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            mem[_563 + 168] = tx.origin
            require ext_code.size(stor0)
            staticcall stor0.0x70a08231 with:
                    gas gas_remaining wei
                   args tx.origin
            mem[_563 + 164] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = _563 + ceil32(return_data.size) + 164
        else:
            mem[_563 + 164] = return_data.size
            mem[_563 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size > 0:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_563 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_563 + ceil32(return_data.size) + 169] = 32
                idx = 0
                while idx < 32:
                    mem[_563 + ceil32(return_data.size) + idx + 233] = mem[_563 + idx + 132]
                    idx = idx + 32
                    continue 
                revert with 0, 32, 32, mem[_563 + ceil32(return_data.size) + 233]
            if return_data.size > 0:
                require return_data.size >= 32
                require mem[_563 + 196] == bool(mem[_563 + 196])
                if not mem[_563 + 196]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            mem[_563 + ceil32(return_data.size) + 169] = tx.origin
            require ext_code.size(stor0)
            staticcall stor0.0x70a08231 with:
                    gas gas_remaining wei
                   args tx.origin
            mem[_563 + ceil32(return_data.size) + 165] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = _563 + ceil32(return_data.size) + ceil32(return_data.size) + 165
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0] < _535:
            revert with 'NH{q', 17
        if idx >= mem[floor32(('cd', 4).length) + 97]:
            revert with 'NH{q', 50
        mem[(32 * idx) + floor32(('cd', 4).length) + 129] = ext_call.return_data[0] - _535
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = ext_call.return_data[0]
        s = _535
        continue 
    mem[mem[64]] = 32
    _525 = mem[floor32(('cd', 4).length) + 97]
    mem[mem[64] + 32] = mem[floor32(('cd', 4).length) + 97]
    mem[mem[64] + 64 len 32 * _525] = mem[floor32(('cd', 4).length) + 129 len 32 * _525]
    return 32, mem[mem[64] + 32 len (32 * _525) + 32]
}



}
