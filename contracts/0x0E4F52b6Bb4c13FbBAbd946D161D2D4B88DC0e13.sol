contract main {




// =====================  Runtime code  =====================


array of struct stor0;
address stor1;
address stor2;

function _fallback() payable {
    revert
}

function sub_eba59f2e(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require (32 * ('cd', 4).length) + 128 <= test266151307() and (32 * ('cd', 4).length) + 128 >= 96
    require calldata.size >= cd[4] + (32 * ('cd', 4).length) + 36
    s = cd[4] + 36
    t = 128
    idx = 0
    while idx < ('cd', 4).length:
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    idx = 0
    while idx < ('cd', 4).length:
        require idx < ('cd', 4).length
        _14 = mem[(32 * idx) + 128]
        mem[(32 * ('cd', 4).length) + 128] = 0x9024944800000000000000000000000000000000000000000000000000000000
        mem[(32 * ('cd', 4).length) + 132] = _14
        require ext_code.size(stor1)
        call stor1.level_up(uint256 arg1) with:
             gas gas_remaining wei
            args _14
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        continue 
}

function sub_3a091650(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require (32 * ('cd', 4).length) + 128 <= test266151307() and (32 * ('cd', 4).length) + 128 >= 96
    require calldata.size >= cd[4] + (32 * ('cd', 4).length) + 36
    s = cd[4] + 36
    t = 128
    idx = 0
    while idx < ('cd', 4).length:
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    idx = 0
    while idx < ('cd', 4).length:
        require idx < ('cd', 4).length
        _14 = mem[(32 * idx) + 128]
        mem[(32 * ('cd', 4).length) + 128] = 0xb00b52f100000000000000000000000000000000000000000000000000000000
        mem[(32 * ('cd', 4).length) + 132] = _14
        require ext_code.size(stor1)
        call stor1.adventure(uint256 arg1) with:
             gas gas_remaining wei
            args _14
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        continue 
}

function sub_7a34289d(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require (32 * ('cd', 4).length) + 128 <= test266151307() and (32 * ('cd', 4).length) + 128 >= 96
    require calldata.size >= cd[4] + (32 * ('cd', 4).length) + 36
    s = cd[4] + 36
    t = 128
    idx = 0
    while idx < ('cd', 4).length:
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    stor0[msg.sender].field_0 = ('cd', 4).length
    if not ('cd', 4).length:
        idx = 0
        while stor0[msg.sender].field_0 > idx:
            stor0[msg.sender][idx].field_0 = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 128
        while (32 * ('cd', 4).length) + 128 > idx:
            stor0[msg.sender][s].field_0 = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * ('cd', 4).length) + 31) >> 5
        while stor0[msg.sender].field_0 > idx:
            stor0[msg.sender][idx].field_0 = 0
            idx = idx + 1
            continue 
}

function sub_5311cd8c(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require (32 * ('cd', 4).length) + 128 <= test266151307() and (32 * ('cd', 4).length) + 128 >= 96
    require calldata.size >= cd[4] + (32 * ('cd', 4).length) + 36
    s = cd[4] + 36
    t = 128
    idx = 0
    while idx < ('cd', 4).length:
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    idx = 0
    while idx < ('cd', 4).length:
        require idx < ('cd', 4).length
        _14 = mem[(32 * idx) + 128]
        mem[(32 * ('cd', 4).length) + 128] = 0x95ea7b300000000000000000000000000000000000000000000000000000000
        mem[(32 * ('cd', 4).length) + 132] = this.address
        mem[(32 * ('cd', 4).length) + 164] = _14
        require ext_code.size(stor1)
        call stor1.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(this.address), _14
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        continue 
}

function sub_2a6fe76d(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require (32 * ('cd', 4).length) + 128 <= test266151307() and (32 * ('cd', 4).length) + 128 >= 96
    mem[64] = (32 * ('cd', 4).length) + 128
    mem[96] = ('cd', 4).length
    require calldata.size >= cd[4] + (32 * ('cd', 4).length) + 36
    s = cd[4] + 36
    t = 128
    idx = 0
    while idx < ('cd', 4).length:
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    idx = 0
    while idx < ('cd', 4).length:
        require idx < mem[96]
        _18 = mem[(32 * idx) + 128]
        mem[mem[64] + 4] = mem[(32 * idx) + 128]
        require ext_code.size(stor2)
        call stor2.adventure(uint256 arg1) with:
             gas gas_remaining wei
            args _18
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        idx = idx + 1
        continue 
}

function sub_8649fe86(?) payable {
    if not stor0[msg.sender].field_0:
        idx = 0
        while idx < stor0[msg.sender].field_0:
            require idx < stor0[msg.sender].field_0
            _11 = mem[(32 * idx) + 128]
            mem[(32 * stor0[msg.sender].field_0) + 128] = 0x9024944800000000000000000000000000000000000000000000000000000000
            mem[(32 * stor0[msg.sender].field_0) + 132] = _11
            require ext_code.size(stor1)
            call stor1.level_up(uint256 arg1) with:
                 gas gas_remaining wei
                args _11
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            idx = idx + 1
            continue 
    else:
        mem[128] = stor0[msg.sender].field_0
        idx = 128
        s = 0
        while (32 * stor0[msg.sender].field_0) + 96 > idx:
            mem[idx + 32] = stor0[msg.sender][s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        idx = 0
        while idx < stor0[msg.sender].field_0:
            require idx < stor0[msg.sender].field_0
            _21 = mem[(32 * idx) + 128]
            mem[(32 * stor0[msg.sender].field_0) + 128] = 0x9024944800000000000000000000000000000000000000000000000000000000
            mem[(32 * stor0[msg.sender].field_0) + 132] = _21
            require ext_code.size(stor1)
            call stor1.level_up(uint256 arg1) with:
                 gas gas_remaining wei
                args _21
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            idx = idx + 1
            continue 
}

function sub_3d81b8fa(?) payable {
    if not stor0[msg.sender].field_0:
        idx = 0
        while idx < stor0[msg.sender].field_0:
            require idx < stor0[msg.sender].field_0
            _11 = mem[(32 * idx) + 128]
            mem[(32 * stor0[msg.sender].field_0) + 128] = 0xb00b52f100000000000000000000000000000000000000000000000000000000
            mem[(32 * stor0[msg.sender].field_0) + 132] = _11
            require ext_code.size(stor1)
            call stor1.adventure(uint256 arg1) with:
                 gas gas_remaining wei
                args _11
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            idx = idx + 1
            continue 
    else:
        mem[128] = stor0[msg.sender].field_0
        idx = 128
        s = 0
        while (32 * stor0[msg.sender].field_0) + 96 > idx:
            mem[idx + 32] = stor0[msg.sender][s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        idx = 0
        while idx < stor0[msg.sender].field_0:
            require idx < stor0[msg.sender].field_0
            _21 = mem[(32 * idx) + 128]
            mem[(32 * stor0[msg.sender].field_0) + 128] = 0xb00b52f100000000000000000000000000000000000000000000000000000000
            mem[(32 * stor0[msg.sender].field_0) + 132] = _21
            require ext_code.size(stor1)
            call stor1.adventure(uint256 arg1) with:
                 gas gas_remaining wei
                args _21
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            idx = idx + 1
            continue 
}

function approveAll() payable {
    if not stor0[msg.sender].field_0:
        idx = 0
        while idx < stor0[msg.sender].field_0:
            require idx < stor0[msg.sender].field_0
            _11 = mem[(32 * idx) + 128]
            mem[(32 * stor0[msg.sender].field_0) + 128] = 0x95ea7b300000000000000000000000000000000000000000000000000000000
            mem[(32 * stor0[msg.sender].field_0) + 132] = this.address
            mem[(32 * stor0[msg.sender].field_0) + 164] = _11
            require ext_code.size(stor1)
            call stor1.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(this.address), _11
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            idx = idx + 1
            continue 
    else:
        mem[128] = stor0[msg.sender].field_0
        idx = 128
        s = 0
        while (32 * stor0[msg.sender].field_0) + 96 > idx:
            mem[idx + 32] = stor0[msg.sender][s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        idx = 0
        while idx < stor0[msg.sender].field_0:
            require idx < stor0[msg.sender].field_0
            _21 = mem[(32 * idx) + 128]
            mem[(32 * stor0[msg.sender].field_0) + 128] = 0x95ea7b300000000000000000000000000000000000000000000000000000000
            mem[(32 * stor0[msg.sender].field_0) + 132] = this.address
            mem[(32 * stor0[msg.sender].field_0) + 164] = _21
            require ext_code.size(stor1)
            call stor1.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(this.address), _21
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            idx = idx + 1
            continue 
}

function sub_57649522(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require (32 * ('cd', 4).length) + 128 <= test266151307() and (32 * ('cd', 4).length) + 128 >= 96
    mem[96] = ('cd', 4).length
    require calldata.size >= cd[4] + (32 * ('cd', 4).length) + 36
    s = cd[4] + 36
    t = 128
    idx = 0
    while idx < ('cd', 4).length:
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    mem[64] = (32 * ('cd', 4).length) + 160
    mem[(32 * ('cd', 4).length) + 128] = 0
    idx = 0
    s = (32 * ('cd', 4).length) + 128
    while idx < ('cd', 4).length:
        require idx < mem[96]
        _58 = mem[(32 * idx) + 128]
        mem[mem[64] + 4] = mem[(32 * idx) + 128]
        require ext_code.size(stor2)
        staticcall stor2.scout(uint256 arg1) with:
                gas gas_remaining wei
               args _58
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _63 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if not mem[_63]:
            idx = idx + 1
            s = s
            continue 
        require idx < mem[96]
        _69 = mem[(32 * idx) + 128]
        if not mem[(32 * idx) + 128]:
            _70 = mem[64]
            mem[64] = mem[64] + 64
            mem[_70] = 1
            mem[_70 + 32] = 0x3000000000000000000000000000000000000000000000000000000000000000
            _71 = mem[64]
            _72 = mem[s]
            t = 0
            while t < _72:
                mem[t + _71 + 32] = mem[t + s + 32]
                t = t + 32
                continue 
            mem[_71 + _72 + 32] = 0x2c00000000000000000000000000000000000000000000000000000000000000
            if ceil32(_72) <= _72:
                _85 = mem[_70]
                s = 0
                while s < _85:
                    mem[s + _71 + _72 + 33] = mem[s + _70 + 32]
                    s = s + 32
                    continue 
                if ceil32(_85) <= _85:
                    _127 = mem[64]
                    mem[mem[64]] = _85 + _71 + _72 + -mem[64] + 1
                    mem[64] = _85 + _71 + _72 + 33
                    idx = idx + 1
                    s = _127
                    continue 
                mem[_71 + _72 + _85 + 33] = 0
                _129 = mem[64]
                mem[mem[64]] = _85 + _71 + _72 + -mem[64] + 1
                mem[64] = _85 + _71 + _72 + 33
                idx = idx + 1
                s = _129
                continue 
            _87 = mem[_70]
            s = 0
            while s < _87:
                mem[s + _71 + _72 + 33] = mem[s + _70 + 32]
                s = s + 32
                continue 
            if ceil32(_87) <= _87:
                _128 = mem[64]
                mem[mem[64]] = _87 + _71 + _72 + -mem[64] + 1
                mem[64] = _87 + _71 + _72 + 33
                idx = idx + 1
                s = _128
                continue 
            mem[_71 + _72 + _87 + 33] = 0
            _130 = mem[64]
            mem[mem[64]] = _87 + _71 + _72 + -mem[64] + 1
            mem[64] = _87 + _71 + _72 + 33
            idx = idx + 1
            s = _130
            continue 
        u = 0
        t = mem[(32 * idx) + 128]
        while t:
            u = u + 1
            t = t / 10
            continue 
        require u <= test266151307()
        _84 = mem[64]
        mem[mem[64]] = u
        mem[64] = mem[64] + ceil32(u) + 32
        if not u:
            v = u
            t = _69
            while t:
                require v - 1 < mem[_84]
                mem[v + _84 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))), 0) - 256
                v = v - 1
                t = t / 10
                continue 
            _123 = mem[64]
            _125 = mem[s]
            t = 0
            while t < _125:
                mem[t + _123 + 32] = mem[t + s + 32]
                t = t + 32
                continue 
            mem[_123 + _125 + 32] = 0x2c00000000000000000000000000000000000000000000000000000000000000
            if ceil32(_125) <= _125:
                _151 = mem[_84]
                s = 0
                while s < _151:
                    mem[s + _123 + _125 + 33] = mem[s + _84 + 32]
                    s = s + 32
                    continue 
                if ceil32(_151) <= _151:
                    _171 = mem[64]
                    mem[mem[64]] = _151 + _123 + _125 + -mem[64] + 1
                    mem[64] = _151 + _123 + _125 + 33
                    idx = idx + 1
                    s = _171
                    continue 
                mem[_123 + _125 + _151 + 33] = 0
                _175 = mem[64]
                mem[mem[64]] = _151 + _123 + _125 + -mem[64] + 1
                mem[64] = _151 + _123 + _125 + 33
                idx = idx + 1
                s = _175
                continue 
            _153 = mem[_84]
            s = 0
            while s < _153:
                mem[s + _123 + _125 + 33] = mem[s + _84 + 32]
                s = s + 32
                continue 
            if ceil32(_153) <= _153:
                _172 = mem[64]
                mem[mem[64]] = _153 + _123 + _125 + -mem[64] + 1
                mem[64] = _153 + _123 + _125 + 33
                idx = idx + 1
                s = _172
                continue 
            mem[_123 + _125 + _153 + 33] = 0
            _176 = mem[64]
            mem[mem[64]] = _153 + _123 + _125 + -mem[64] + 1
            mem[64] = _153 + _123 + _125 + 33
            idx = idx + 1
            s = _176
            continue 
        mem[_84 + 32 len u] = call.data[calldata.size len u]
        v = u
        t = _69
        while t:
            require v - 1 < mem[_84]
            mem[v + _84 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))), 0) - 256
            v = v - 1
            t = t / 10
            continue 
        _124 = mem[64]
        _126 = mem[s]
        t = 0
        while t < _126:
            mem[t + _124 + 32] = mem[t + s + 32]
            t = t + 32
            continue 
        mem[_124 + _126 + 32] = 0x2c00000000000000000000000000000000000000000000000000000000000000
        if ceil32(_126) <= _126:
            _152 = mem[_84]
            s = 0
            while s < _152:
                mem[s + _124 + _126 + 33] = mem[s + _84 + 32]
                s = s + 32
                continue 
            if ceil32(_152) <= _152:
                _173 = mem[64]
                mem[mem[64]] = _152 + _124 + _126 + -mem[64] + 1
                mem[64] = _152 + _124 + _126 + 33
                idx = idx + 1
                s = _173
                continue 
            mem[_124 + _126 + _152 + 33] = 0
            _177 = mem[64]
            mem[mem[64]] = _152 + _124 + _126 + -mem[64] + 1
            mem[64] = _152 + _124 + _126 + 33
            idx = idx + 1
            s = _177
            continue 
        _154 = mem[_84]
        s = 0
        while s < _154:
            mem[s + _124 + _126 + 33] = mem[s + _84 + 32]
            s = s + 32
            continue 
        if ceil32(_154) <= _154:
            _174 = mem[64]
            mem[mem[64]] = _154 + _124 + _126 + -mem[64] + 1
            mem[64] = _154 + _124 + _126 + 33
            idx = idx + 1
            s = _174
            continue 
        mem[_124 + _126 + _154 + 33] = 0
        _178 = mem[64]
        mem[mem[64]] = _154 + _124 + _126 + -mem[64] + 1
        mem[64] = _154 + _124 + _126 + 33
        idx = idx + 1
        s = _178
        continue 
    _60 = mem[64]
    mem[mem[64]] = 32
    _61 = mem[s]
    mem[mem[64] + 32] = mem[s]
    mem[mem[64] + 64 len ceil32(_61)] = mem[s + 32 len ceil32(_61)]
    if ceil32(_61) <= _61:
        return 32, mem[mem[64] + 32 len ceil32(_61) + 32]
    mem[mem[64] + _61 + 64] = 0
    return memory
      from mem[64]
       len ceil32(_61) + _60 + -mem[64] + 64
}



}
