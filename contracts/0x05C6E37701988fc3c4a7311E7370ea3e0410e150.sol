contract main {




// =====================  Runtime code  =====================


#
#  - sub_6e24a036(?)
#  - _fallback()
#
function sub_4cd68e33(?) {
    if msg.sender != 0xfabd8f0b3b2b918fb3371f1c81dae8860caefc49:
        revert with 0, 'shoo'
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_805c195d(?) payable {
    require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
    call 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0xd0e30db0 with:
       value msg.value wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_da57b587(?) {
    require calldata.size - 4 >= 32
    if msg.sender != 0xfabd8f0b3b2b918fb3371f1c81dae8860caefc49:
        revert with 0, 'shoo'
    require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
    call 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x2e1a7d4d with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    call msg.sender with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function execute(address arg1, bytes arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(arg2.length) + 128 < 96 or ceil32(arg2.length) + 128 > test266151307():
        revert with 'NH{q', 65
    require arg2 + arg2.length + 36 <= calldata.size
    if msg.sender != 0xfabd8f0b3b2b918fb3371f1c81dae8860caefc49:
        revert with 0, 'shoo'
    if not arg1:
        revert with 0, 'proxy-logic'
    delegate arg1 with:
         gas gas_remaining - 5000 wei
        args arg2[all]
    if not delegate.return_code == 1:
        revert with ext_call.return_data[0 len return_data.size]
    return Array(len=return_data.size, data=ext_call.return_data[0 len return_data.size])
}

function recoverERC20(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if msg.sender != 0xfabd8f0b3b2b918fb3371f1c81dae8860caefc49:
        revert with 0, 'shoo'
    mem[100] = this.address
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(return_data.size) + 96] = 68
    mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
    mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
    mem[ceil32(return_data.size) + 196 len 96] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0], mem[ceil32(return_data.size) + 196 len 28]
    call arg1.mem[ceil32(return_data.size) + 196 len 4] with:
         gas gas_remaining wei
        args mem[ceil32(return_data.size) + 200 len 64]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'TRANSFER_FAILED'
        if ext_call.return_data[0]:
            require ext_call.return_data[0] >= 32
            require 0, mem[132 len 28] == bool(0, mem[132 len 28])
            if not 0, mem[132 len 28]:
                revert with 0, 'TRANSFER_FAILED'
    else:
        mem[ceil32(return_data.size) + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'TRANSFER_FAILED'
        if return_data.size:
            require return_data.size >= 32
            require mem[ceil32(return_data.size) + 228] == bool(mem[ceil32(return_data.size) + 228])
            if not mem[ceil32(return_data.size) + 228]:
                revert with 0, 'TRANSFER_FAILED'
}

function sub_a10bcd78(?) {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    if (32 * ('cd', 4).length) + 128 < 96 or (32 * ('cd', 4).length) + 128 > test266151307():
        revert with 'NH{q', 65
    mem[96] = ('cd', 4).length
    require calldata.size >= cd[4] + (32 * ('cd', 4).length) + 36
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
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 'NH{q', 65
    if (32 * ('cd', 36).length) + 160 < 128 or (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160 > test266151307():
        revert with 'NH{q', 65
    mem[64] = (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160
    mem[(32 * ('cd', 4).length) + 128] = ('cd', 36).length
    require calldata.size >= cd[36] + (32 * ('cd', 36).length) + 36
    idx = 0
    s = cd[36] + 36
    t = (32 * ('cd', 4).length) + 160
    while idx < ('cd', 36).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if msg.sender != 0xfabd8f0b3b2b918fb3371f1c81dae8860caefc49:
        revert with 0, 'shoo'
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= mem[(32 * ('cd', 4).length) + 128]:
            revert with 'NH{q', 50
        if idx >= mem[96]:
            revert with 'NH{q', 50
        _143 = mem[(32 * idx) + 128]
        _144 = mem[64]
        mem[mem[64] + 36] = mem[(32 * idx) + (32 * ('cd', 4).length) + 172 len 20]
        mem[mem[64] + 68] = 0
        _145 = mem[64]
        mem[mem[64]] = 68
        mem[64] = mem[64] + 100
        mem[_145 + 32] = 0x95ea7b300000000000000000000000000000000000000000000000000000000 or mem[_145 + 36 len 28]
        _148 = mem[_145]
        s = 0
        while s < _148:
            mem[s + _144 + 100] = mem[s + _145 + 32]
            s = s + 32
            continue 
        if ceil32(_148) <= _148:
            call address(_143).mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _148 + _144 + -mem[64] + 96]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'APPROVE_FAILED'
                if mem[96]:
                    require mem[96] >= 32
                    require mem[128] == bool(mem[128])
                    if not mem[128]:
                        revert with 0, 'APPROVE_FAILED'
            else:
                _184 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_184] = return_data.size
                mem[_184 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'APPROVE_FAILED'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[_184 + 32] == bool(mem[_184 + 32])
                    if not mem[_184 + 32]:
                        revert with 0, 'APPROVE_FAILED'
        else:
            mem[_144 + _148 + 100] = 0
            call address(_143).mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _148 + _144 + -mem[64] + 96]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'APPROVE_FAILED'
                if mem[96]:
                    require mem[96] >= 32
                    require mem[128] == bool(mem[128])
                    if not mem[128]:
                        revert with 0, 'APPROVE_FAILED'
            else:
                _186 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_186] = return_data.size
                mem[_186 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'APPROVE_FAILED'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[_186 + 32] == bool(mem[_186 + 32])
                    if not mem[_186 + 32]:
                        revert with 0, 'APPROVE_FAILED'
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function sub_c43be7a8(?) {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    if (32 * ('cd', 4).length) + 128 < 96 or (32 * ('cd', 4).length) + 128 > test266151307():
        revert with 'NH{q', 65
    mem[96] = ('cd', 4).length
    require calldata.size >= cd[4] + (32 * ('cd', 4).length) + 36
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
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 'NH{q', 65
    if (32 * ('cd', 36).length) + 160 < 128 or (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160 > test266151307():
        revert with 'NH{q', 65
    mem[64] = (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160
    mem[(32 * ('cd', 4).length) + 128] = ('cd', 36).length
    require calldata.size >= cd[36] + (32 * ('cd', 36).length) + 36
    idx = 0
    s = cd[36] + 36
    t = (32 * ('cd', 4).length) + 160
    while idx < ('cd', 36).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if msg.sender != 0xfabd8f0b3b2b918fb3371f1c81dae8860caefc49:
        revert with 0, 'shoo'
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= mem[(32 * ('cd', 4).length) + 128]:
            revert with 'NH{q', 50
        if idx >= mem[96]:
            revert with 'NH{q', 50
        _1151 = mem[(32 * idx) + 128]
        _1152 = mem[64]
        mem[mem[64] + 36] = mem[(32 * idx) + (32 * ('cd', 4).length) + 172 len 20]
        mem[mem[64] + 68] = 0
        _1153 = mem[64]
        mem[mem[64]] = 68
        mem[64] = mem[64] + 100
        mem[_1153 + 32] = 0x95ea7b300000000000000000000000000000000000000000000000000000000 or mem[_1153 + 36 len 28]
        _1156 = mem[_1153]
        s = 0
        while s < _1156:
            mem[s + _1152 + 100] = mem[s + _1153 + 32]
            s = s + 32
            continue 
        if ceil32(_1156) <= _1156:
            call address(_1151).mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _1156 + _1152 + -mem[64] + 96]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'APPROVE_FAILED'
                if not mem[96]:
                    if idx >= mem[(32 * ('cd', 4).length) + 128]:
                        revert with 'NH{q', 50
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    _1559 = mem[(32 * idx) + 128]
                    _1565 = mem[64]
                    mem[mem[64] + 36] = mem[(32 * idx) + (32 * ('cd', 4).length) + 172 len 20]
                    mem[mem[64] + 68] = -1
                    _1577 = mem[64]
                    mem[mem[64]] = 68
                    mem[64] = mem[64] + 100
                    mem[_1577 + 32] = 0x95ea7b300000000000000000000000000000000000000000000000000000000 or mem[_1577 + 36 len 28]
                    _1591 = mem[_1577]
                    s = 0
                    while s < _1591:
                        mem[s + _1565 + 100] = mem[s + _1577 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_1591) <= _1591:
                        call address(_1559).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _1591 + _1565 + -mem[64] + 96]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 'APPROVE_FAILED'
                            if mem[96]:
                                require mem[96] >= 32
                                require mem[128] == bool(mem[128])
                                if not mem[128]:
                                    revert with 0, 'APPROVE_FAILED'
                        else:
                            _1911 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_1911] = return_data.size
                            mem[_1911 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 'APPROVE_FAILED'
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[_1911 + 32] == bool(mem[_1911 + 32])
                                if not mem[_1911 + 32]:
                                    revert with 0, 'APPROVE_FAILED'
                    else:
                        mem[_1565 + _1591 + 100] = 0
                        call address(_1559).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _1591 + _1565 + -mem[64] + 96]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 'APPROVE_FAILED'
                            if mem[96]:
                                require mem[96] >= 32
                                require mem[128] == bool(mem[128])
                                if not mem[128]:
                                    revert with 0, 'APPROVE_FAILED'
                        else:
                            _1927 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_1927] = return_data.size
                            mem[_1927 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 'APPROVE_FAILED'
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[_1927 + 32] == bool(mem[_1927 + 32])
                                if not mem[_1927 + 32]:
                                    revert with 0, 'APPROVE_FAILED'
                else:
                    require mem[96] >= 32
                    require mem[128] == bool(mem[128])
                    if not mem[128]:
                        revert with 0, 'APPROVE_FAILED'
                    if idx >= mem[(32 * ('cd', 4).length) + 128]:
                        revert with 'NH{q', 50
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    _1592 = mem[(32 * idx) + 128]
                    _1607 = mem[64]
                    mem[mem[64] + 36] = mem[(32 * idx) + (32 * ('cd', 4).length) + 172 len 20]
                    mem[mem[64] + 68] = -1
                    _1616 = mem[64]
                    mem[mem[64]] = 68
                    mem[64] = mem[64] + 100
                    mem[_1616 + 32] = 0x95ea7b300000000000000000000000000000000000000000000000000000000 or mem[_1616 + 36 len 28]
                    _1623 = mem[_1616]
                    s = 0
                    while s < _1623:
                        mem[s + _1607 + 100] = mem[s + _1616 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_1623) <= _1623:
                        call address(_1592).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _1623 + _1607 + -mem[64] + 96]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 'APPROVE_FAILED'
                            if mem[96]:
                                require mem[96] >= 32
                                require mem[128] == bool(mem[128])
                                if not mem[128]:
                                    revert with 0, 'APPROVE_FAILED'
                        else:
                            _1913 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_1913] = return_data.size
                            mem[_1913 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 'APPROVE_FAILED'
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[_1913 + 32] == bool(mem[_1913 + 32])
                                if not mem[_1913 + 32]:
                                    revert with 0, 'APPROVE_FAILED'
                    else:
                        mem[_1607 + _1623 + 100] = 0
                        call address(_1592).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _1623 + _1607 + -mem[64] + 96]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 'APPROVE_FAILED'
                            if mem[96]:
                                require mem[96] >= 32
                                require mem[128] == bool(mem[128])
                                if not mem[128]:
                                    revert with 0, 'APPROVE_FAILED'
                        else:
                            _1928 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_1928] = return_data.size
                            mem[_1928 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 'APPROVE_FAILED'
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[_1928 + 32] == bool(mem[_1928 + 32])
                                if not mem[_1928 + 32]:
                                    revert with 0, 'APPROVE_FAILED'
            else:
                _1528 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_1528] = return_data.size
                mem[_1528 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'APPROVE_FAILED'
                if not return_data.size:
                    if idx >= mem[(32 * ('cd', 4).length) + 128]:
                        revert with 'NH{q', 50
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    _1560 = mem[(32 * idx) + 128]
                    _1567 = mem[64]
                    mem[mem[64] + 36] = mem[(32 * idx) + (32 * ('cd', 4).length) + 172 len 20]
                    mem[mem[64] + 68] = -1
                    _1583 = mem[64]
                    mem[mem[64]] = 68
                    mem[64] = mem[64] + 100
                    mem[_1583 + 32] = 0x95ea7b300000000000000000000000000000000000000000000000000000000 or mem[_1583 + 36 len 28]
                    _1593 = mem[_1583]
                    s = 0
                    while s < _1593:
                        mem[s + _1567 + 100] = mem[s + _1583 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_1593) <= _1593:
                        call address(_1560).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _1593 + _1567 + -mem[64] + 96]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 'APPROVE_FAILED'
                            if mem[96]:
                                require mem[96] >= 32
                                require mem[128] == bool(mem[128])
                                if not mem[128]:
                                    revert with 0, 'APPROVE_FAILED'
                        else:
                            _1915 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_1915] = return_data.size
                            mem[_1915 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 'APPROVE_FAILED'
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[_1915 + 32] == bool(mem[_1915 + 32])
                                if not mem[_1915 + 32]:
                                    revert with 0, 'APPROVE_FAILED'
                    else:
                        mem[_1567 + _1593 + 100] = 0
                        call address(_1560).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _1593 + _1567 + -mem[64] + 96]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 'APPROVE_FAILED'
                            if mem[96]:
                                require mem[96] >= 32
                                require mem[128] == bool(mem[128])
                                if not mem[128]:
                                    revert with 0, 'APPROVE_FAILED'
                        else:
                            _1929 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_1929] = return_data.size
                            mem[_1929 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 'APPROVE_FAILED'
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[_1929 + 32] == bool(mem[_1929 + 32])
                                if not mem[_1929 + 32]:
                                    revert with 0, 'APPROVE_FAILED'
                else:
                    require return_data.size >= 32
                    require mem[_1528 + 32] == bool(mem[_1528 + 32])
                    if not mem[_1528 + 32]:
                        revert with 0, 'APPROVE_FAILED'
                    if idx >= mem[(32 * ('cd', 4).length) + 128]:
                        revert with 'NH{q', 50
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    _1594 = mem[(32 * idx) + 128]
                    _1608 = mem[64]
                    mem[mem[64] + 36] = mem[(32 * idx) + (32 * ('cd', 4).length) + 172 len 20]
                    mem[mem[64] + 68] = -1
                    _1620 = mem[64]
                    mem[mem[64]] = 68
                    mem[64] = mem[64] + 100
                    mem[_1620 + 32] = 0x95ea7b300000000000000000000000000000000000000000000000000000000 or mem[_1620 + 36 len 28]
                    _1624 = mem[_1620]
                    s = 0
                    while s < _1624:
                        mem[s + _1608 + 100] = mem[s + _1620 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_1624) <= _1624:
                        call address(_1594).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _1624 + _1608 + -mem[64] + 96]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 'APPROVE_FAILED'
                            if mem[96]:
                                require mem[96] >= 32
                                require mem[128] == bool(mem[128])
                                if not mem[128]:
                                    revert with 0, 'APPROVE_FAILED'
                        else:
                            _1917 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_1917] = return_data.size
                            mem[_1917 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 'APPROVE_FAILED'
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[_1917 + 32] == bool(mem[_1917 + 32])
                                if not mem[_1917 + 32]:
                                    revert with 0, 'APPROVE_FAILED'
                    else:
                        mem[_1608 + _1624 + 100] = 0
                        call address(_1594).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _1624 + _1608 + -mem[64] + 96]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 'APPROVE_FAILED'
                            if mem[96]:
                                require mem[96] >= 32
                                require mem[128] == bool(mem[128])
                                if not mem[128]:
                                    revert with 0, 'APPROVE_FAILED'
                        else:
                            _1930 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_1930] = return_data.size
                            mem[_1930 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 'APPROVE_FAILED'
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[_1930 + 32] == bool(mem[_1930 + 32])
                                if not mem[_1930 + 32]:
                                    revert with 0, 'APPROVE_FAILED'
        else:
            mem[_1152 + _1156 + 100] = 0
            call address(_1151).mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _1156 + _1152 + -mem[64] + 96]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'APPROVE_FAILED'
                if not mem[96]:
                    if idx >= mem[(32 * ('cd', 4).length) + 128]:
                        revert with 'NH{q', 50
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    _1569 = mem[(32 * idx) + 128]
                    _1573 = mem[64]
                    mem[mem[64] + 36] = mem[(32 * idx) + (32 * ('cd', 4).length) + 172 len 20]
                    mem[mem[64] + 68] = -1
                    _1595 = mem[64]
                    mem[mem[64]] = 68
                    mem[64] = mem[64] + 100
                    mem[_1595 + 32] = 0x95ea7b300000000000000000000000000000000000000000000000000000000 or mem[_1595 + 36 len 28]
                    _1609 = mem[_1595]
                    s = 0
                    while s < _1609:
                        mem[s + _1573 + 100] = mem[s + _1595 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_1609) <= _1609:
                        call address(_1569).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _1609 + _1573 + -mem[64] + 96]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 'APPROVE_FAILED'
                            if mem[96]:
                                require mem[96] >= 32
                                require mem[128] == bool(mem[128])
                                if not mem[128]:
                                    revert with 0, 'APPROVE_FAILED'
                        else:
                            _1919 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_1919] = return_data.size
                            mem[_1919 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 'APPROVE_FAILED'
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[_1919 + 32] == bool(mem[_1919 + 32])
                                if not mem[_1919 + 32]:
                                    revert with 0, 'APPROVE_FAILED'
                    else:
                        mem[_1573 + _1609 + 100] = 0
                        call address(_1569).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _1609 + _1573 + -mem[64] + 96]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 'APPROVE_FAILED'
                            if mem[96]:
                                require mem[96] >= 32
                                require mem[128] == bool(mem[128])
                                if not mem[128]:
                                    revert with 0, 'APPROVE_FAILED'
                        else:
                            _1931 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_1931] = return_data.size
                            mem[_1931 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 'APPROVE_FAILED'
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[_1931 + 32] == bool(mem[_1931 + 32])
                                if not mem[_1931 + 32]:
                                    revert with 0, 'APPROVE_FAILED'
                else:
                    require mem[96] >= 32
                    require mem[128] == bool(mem[128])
                    if not mem[128]:
                        revert with 0, 'APPROVE_FAILED'
                    if idx >= mem[(32 * ('cd', 4).length) + 128]:
                        revert with 'NH{q', 50
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    _1610 = mem[(32 * idx) + 128]
                    _1613 = mem[64]
                    mem[mem[64] + 36] = mem[(32 * idx) + (32 * ('cd', 4).length) + 172 len 20]
                    mem[mem[64] + 68] = -1
                    _1626 = mem[64]
                    mem[mem[64]] = 68
                    mem[64] = mem[64] + 100
                    mem[_1626 + 32] = 0x95ea7b300000000000000000000000000000000000000000000000000000000 or mem[_1626 + 36 len 28]
                    _1633 = mem[_1626]
                    s = 0
                    while s < _1633:
                        mem[s + _1613 + 100] = mem[s + _1626 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_1633) <= _1633:
                        call address(_1610).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _1633 + _1613 + -mem[64] + 96]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 'APPROVE_FAILED'
                            if mem[96]:
                                require mem[96] >= 32
                                require mem[128] == bool(mem[128])
                                if not mem[128]:
                                    revert with 0, 'APPROVE_FAILED'
                        else:
                            _1921 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_1921] = return_data.size
                            mem[_1921 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 'APPROVE_FAILED'
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[_1921 + 32] == bool(mem[_1921 + 32])
                                if not mem[_1921 + 32]:
                                    revert with 0, 'APPROVE_FAILED'
                    else:
                        mem[_1613 + _1633 + 100] = 0
                        call address(_1610).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _1633 + _1613 + -mem[64] + 96]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 'APPROVE_FAILED'
                            if mem[96]:
                                require mem[96] >= 32
                                require mem[128] == bool(mem[128])
                                if not mem[128]:
                                    revert with 0, 'APPROVE_FAILED'
                        else:
                            _1932 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_1932] = return_data.size
                            mem[_1932 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 'APPROVE_FAILED'
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[_1932 + 32] == bool(mem[_1932 + 32])
                                if not mem[_1932 + 32]:
                                    revert with 0, 'APPROVE_FAILED'
            else:
                _1530 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_1530] = return_data.size
                mem[_1530 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'APPROVE_FAILED'
                if not return_data.size:
                    if idx >= mem[(32 * ('cd', 4).length) + 128]:
                        revert with 'NH{q', 50
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    _1570 = mem[(32 * idx) + 128]
                    _1575 = mem[64]
                    mem[mem[64] + 36] = mem[(32 * idx) + (32 * ('cd', 4).length) + 172 len 20]
                    mem[mem[64] + 68] = -1
                    _1601 = mem[64]
                    mem[mem[64]] = 68
                    mem[64] = mem[64] + 100
                    mem[_1601 + 32] = 0x95ea7b300000000000000000000000000000000000000000000000000000000 or mem[_1601 + 36 len 28]
                    _1611 = mem[_1601]
                    s = 0
                    while s < _1611:
                        mem[s + _1575 + 100] = mem[s + _1601 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_1611) <= _1611:
                        call address(_1570).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _1611 + _1575 + -mem[64] + 96]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 'APPROVE_FAILED'
                            if mem[96]:
                                require mem[96] >= 32
                                require mem[128] == bool(mem[128])
                                if not mem[128]:
                                    revert with 0, 'APPROVE_FAILED'
                        else:
                            _1923 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_1923] = return_data.size
                            mem[_1923 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 'APPROVE_FAILED'
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[_1923 + 32] == bool(mem[_1923 + 32])
                                if not mem[_1923 + 32]:
                                    revert with 0, 'APPROVE_FAILED'
                    else:
                        mem[_1575 + _1611 + 100] = 0
                        call address(_1570).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _1611 + _1575 + -mem[64] + 96]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 'APPROVE_FAILED'
                            if mem[96]:
                                require mem[96] >= 32
                                require mem[128] == bool(mem[128])
                                if not mem[128]:
                                    revert with 0, 'APPROVE_FAILED'
                        else:
                            _1933 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_1933] = return_data.size
                            mem[_1933 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 'APPROVE_FAILED'
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[_1933 + 32] == bool(mem[_1933 + 32])
                                if not mem[_1933 + 32]:
                                    revert with 0, 'APPROVE_FAILED'
                else:
                    require return_data.size >= 32
                    require mem[_1530 + 32] == bool(mem[_1530 + 32])
                    if not mem[_1530 + 32]:
                        revert with 0, 'APPROVE_FAILED'
                    if idx >= mem[(32 * ('cd', 4).length) + 128]:
                        revert with 'NH{q', 50
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    _1612 = mem[(32 * idx) + 128]
                    _1614 = mem[64]
                    mem[mem[64] + 36] = mem[(32 * idx) + (32 * ('cd', 4).length) + 172 len 20]
                    mem[mem[64] + 68] = -1
                    _1630 = mem[64]
                    mem[mem[64]] = 68
                    mem[64] = mem[64] + 100
                    mem[_1630 + 32] = 0x95ea7b300000000000000000000000000000000000000000000000000000000 or mem[_1630 + 36 len 28]
                    _1634 = mem[_1630]
                    s = 0
                    while s < _1634:
                        mem[s + _1614 + 100] = mem[s + _1630 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_1634) <= _1634:
                        call address(_1612).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _1634 + _1614 + -mem[64] + 96]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 'APPROVE_FAILED'
                            if mem[96]:
                                require mem[96] >= 32
                                require mem[128] == bool(mem[128])
                                if not mem[128]:
                                    revert with 0, 'APPROVE_FAILED'
                        else:
                            _1925 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_1925] = return_data.size
                            mem[_1925 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 'APPROVE_FAILED'
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[_1925 + 32] == bool(mem[_1925 + 32])
                                if not mem[_1925 + 32]:
                                    revert with 0, 'APPROVE_FAILED'
                    else:
                        mem[_1614 + _1634 + 100] = 0
                        call address(_1612).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _1634 + _1614 + -mem[64] + 96]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 'APPROVE_FAILED'
                            if mem[96]:
                                require mem[96] >= 32
                                require mem[128] == bool(mem[128])
                                if not mem[128]:
                                    revert with 0, 'APPROVE_FAILED'
                        else:
                            _1934 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_1934] = return_data.size
                            mem[_1934 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 'APPROVE_FAILED'
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[_1934 + 32] == bool(mem[_1934 + 32])
                                if not mem[_1934 + 32]:
                                    revert with 0, 'APPROVE_FAILED'
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}



}
