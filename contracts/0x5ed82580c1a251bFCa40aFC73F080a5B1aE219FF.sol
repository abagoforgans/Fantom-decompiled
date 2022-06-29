contract main {




// =====================  Runtime code  =====================


address stor1;
uint256 sub_e5aa0b62;
array of uint256 stor5;
uint256 stor8;
mapping of uint8 sub_ec14ba6a;
uint256 sub_4b9c425a;
uint8 stor12;
mapping of uint256 sub_547b5c0c;

function sub_4b9c425a(?) payable {
    return sub_4b9c425a
}

function sub_547b5c0c(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_547b5c0c[address(arg1)]
}

function sub_b32ac8f6(?) payable {
    return bool(stor12)
}

function sub_e5aa0b62(?) payable {
    return sub_e5aa0b62
}

function sub_ec14ba6a(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if sub_ec14ba6a[address(arg1)] >= 3:
        revert with 'NH{q', 33
    return sub_ec14ba6a[address(arg1)]
}

function reset() payable {
  stop
}

function _fallback() payable {
    revert
}

function getDaysElapsed() payable {
    if block.timestamp < sub_4b9c425a:
        revert with 'NH{q', 17
    return (block.timestamp - sub_4b9c425a / 24 * 3600)
}

function sub_555d3ea8(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 4).length) + 97 > test266151307() or floor32(('cd', 4).length) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = ('cd', 4).length
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = cd[4] + 36
    s = 128
    while idx < cd[4] + (32 * ('cd', 4).length) + 36:
        require cd[idx] == cd[idx]
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= mem[96]:
            revert with 'NH{q', 50
        _14 = mem[(32 * idx) + 128]
        mem[floor32(('cd', 4).length) + 97] = 0xb00b52f100000000000000000000000000000000000000000000000000000000
        mem[floor32(('cd', 4).length) + 101] = _14
        require ext_code.size(stor1)
        call stor1.adventure(uint256 arg1) with:
             gas gas_remaining wei
            args _14
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function sub_716c2f49(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 4).length) + 97 > test266151307() or floor32(('cd', 4).length) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = ('cd', 4).length
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = cd[4] + 36
    s = 128
    while idx < cd[4] + (32 * ('cd', 4).length) + 36:
        require cd[idx] == cd[idx]
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 4).length) + floor32(('cd', 36).length) + 98 > test266151307() or floor32(('cd', 36).length) + 98 < 97:
        revert with 'NH{q', 65
    mem[floor32(('cd', 4).length) + 97] = ('cd', 36).length
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    idx = cd[36] + 36
    s = floor32(('cd', 4).length) + 129
    while idx < cd[36] + (32 * ('cd', 36).length) + 36:
        require cd[idx] == cd[idx]
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 98] = ('cd', 4).length
    if not ('cd', 4).length:
        idx = 0
        s = 0
        while idx < ('cd', 4).length:
            mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + (32 * ('cd', 4).length) + 290] = 0
            mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + (32 * ('cd', 4).length) + 130] = floor32(('cd', 4).length) + floor32(('cd', 36).length) + (32 * ('cd', 4).length) + 290
            mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + (32 * ('cd', 4).length) + 162] = 1
            mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + (32 * ('cd', 4).length) + 194] = 1
            mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + (32 * ('cd', 4).length) + 226] = 1
            mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + (32 * ('cd', 4).length) + 258] = 1
            if idx >= ('cd', 4).length:
                revert with 'NH{q', 50
            _234 = mem[(32 * idx) + 128]
            mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + (32 * ('cd', 4).length) + 326] = mem[(32 * idx) + 128]
            require ext_code.size(stor1)
            staticcall stor1.ownerOf(uint256 arg1) with:
                    gas gas_remaining wei
                   args _234
            mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + (32 * ('cd', 4).length) + 322] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            if ext_call.return_data[12 len 20] != msg.sender:
                revert with 0, 'Not Owner!'
            if idx >= ('cd', 36).length:
                revert with 'NH{q', 50
            _258 = mem[(32 * idx) + floor32(('cd', 4).length) + 129]
            t = 0
            while t < stor5.length:
                mem[0] = 5
                if stor5[t] != 1:
                    if t == -1:
                        revert with 'NH{q', 17
                    t = t + 1
                    continue 
                if block.timestamp <= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + (32 * ('cd', 4).length) + 194]:
                    revert with 0, 'Unavailable for adventure!'
                _319 = mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + (32 * ('cd', 4).length) + 258]
                if _258 % 4 > -mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + (32 * ('cd', 4).length) + 258] - 1:
                    revert with 'NH{q', 17
                if (_258 % 4) + mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + (32 * ('cd', 4).length) + 258] and 30 > -1 / (_258 % 4) + mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + (32 * ('cd', 4).length) + 258]:
                    revert with 'NH{q', 17
                if stor8 > (-30 * _258 % 4) + (-30 * mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + (32 * ('cd', 4).length) + 258]) - 1:
                    revert with 'NH{q', 17
                if idx >= ('cd', 4).length:
                    revert with 'NH{q', 50
                mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + 130] = stor8 + (30 * _258 % 4) + (30 * mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + (32 * ('cd', 4).length) + 258])
                if s > -stor8 + (-30 * _258 % 4) + (-30 * _319) - 1:
                    revert with 'NH{q', 17
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = s + stor8 + (30 * _258 % 4) + (30 * _319)
                continue 
            revert with 0, 'Wrong class for the Attack Action!'
        if s > sub_e5aa0b62:
            sub_e5aa0b62 = 0
        else:
            if sub_e5aa0b62 < s:
                revert with 'NH{q', 17
            sub_e5aa0b62 -= s
        if block.timestamp > -43201:
            revert with 'NH{q', 17
        sub_547b5c0c[address(msg.sender)] = block.timestamp + (12 * 3600)
        mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + (32 * ('cd', 4).length) + 130] = msg.sender
        mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + (32 * ('cd', 4).length) + 162] = 128
        mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + (32 * ('cd', 4).length) + 258] = ('cd', 4).length
        mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + (32 * ('cd', 4).length) + 290 len 32 * ('cd', 4).length] = mem[128 len 32 * ('cd', 4).length]
        mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + (32 * ('cd', 4).length) + 194] = (32 * ('cd', 4).length) + 160
        mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + (64 * ('cd', 4).length) + 290] = ('cd', 4).length
        mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + (64 * ('cd', 4).length) + 322 len 32 * ('cd', 4).length] = mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 130 len 32 * ('cd', 4).length]
    else:
        mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 130 len 32 * ('cd', 4).length] = call.data[calldata.size len 32 * ('cd', 4).length]
        idx = 0
        s = 0
        while idx < ('cd', 4).length:
            mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + (32 * ('cd', 4).length) + 290] = 0
            mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + (32 * ('cd', 4).length) + 130] = floor32(('cd', 4).length) + floor32(('cd', 36).length) + (32 * ('cd', 4).length) + 290
            mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + (32 * ('cd', 4).length) + 162] = 1
            mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + (32 * ('cd', 4).length) + 194] = 1
            mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + (32 * ('cd', 4).length) + 226] = 1
            mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + (32 * ('cd', 4).length) + 258] = 1
            if idx >= ('cd', 4).length:
                revert with 'NH{q', 50
            _236 = mem[(32 * idx) + 128]
            mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + (32 * ('cd', 4).length) + 326] = mem[(32 * idx) + 128]
            require ext_code.size(stor1)
            staticcall stor1.ownerOf(uint256 arg1) with:
                    gas gas_remaining wei
                   args _236
            mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + (32 * ('cd', 4).length) + 322] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            if ext_call.return_data[12 len 20] != msg.sender:
                revert with 0, 'Not Owner!'
            if idx >= ('cd', 36).length:
                revert with 'NH{q', 50
            _259 = mem[(32 * idx) + floor32(('cd', 4).length) + 129]
            t = 0
            while t < stor5.length:
                mem[0] = 5
                if stor5[t] != 1:
                    if t == -1:
                        revert with 'NH{q', 17
                    t = t + 1
                    continue 
                if block.timestamp <= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + (32 * ('cd', 4).length) + 194]:
                    revert with 0, 'Unavailable for adventure!'
                _321 = mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + (32 * ('cd', 4).length) + 258]
                if _259 % 4 > -mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + (32 * ('cd', 4).length) + 258] - 1:
                    revert with 'NH{q', 17
                if (_259 % 4) + mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + (32 * ('cd', 4).length) + 258] and 30 > -1 / (_259 % 4) + mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + (32 * ('cd', 4).length) + 258]:
                    revert with 'NH{q', 17
                if stor8 > (-30 * _259 % 4) + (-30 * mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + (32 * ('cd', 4).length) + 258]) - 1:
                    revert with 'NH{q', 17
                if idx >= ('cd', 4).length:
                    revert with 'NH{q', 50
                mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + 130] = stor8 + (30 * _259 % 4) + (30 * mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + (32 * ('cd', 4).length) + 258])
                if s > -stor8 + (-30 * _259 % 4) + (-30 * _321) - 1:
                    revert with 'NH{q', 17
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = s + stor8 + (30 * _259 % 4) + (30 * _321)
                continue 
            revert with 0, 'Wrong class for the Attack Action!'
        if s <= sub_e5aa0b62:
            if sub_e5aa0b62 < s:
                revert with 'NH{q', 17
            sub_e5aa0b62 -= s
            if block.timestamp > -43201:
                revert with 'NH{q', 17
            sub_547b5c0c[address(msg.sender)] = block.timestamp + (12 * 3600)
            mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + (32 * ('cd', 4).length) + 130] = msg.sender
            mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + (32 * ('cd', 4).length) + 162] = 128
            mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + (32 * ('cd', 4).length) + 258] = ('cd', 4).length
            mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + (32 * ('cd', 4).length) + 290 len 32 * ('cd', 4).length] = mem[128 len 32 * ('cd', 4).length]
        else:
            sub_e5aa0b62 = 0
            if block.timestamp > -43201:
                revert with 'NH{q', 17
            sub_547b5c0c[address(msg.sender)] = block.timestamp + (12 * 3600)
            mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + (32 * ('cd', 4).length) + 130] = msg.sender
            mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + (32 * ('cd', 4).length) + 162] = 128
            mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + (32 * ('cd', 4).length) + 258] = ('cd', 4).length
            mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + (32 * ('cd', 4).length) + 290 len 32 * ('cd', 4).length] = mem[128 len 32 * ('cd', 4).length]
            var89001 = ('cd', 4).length
        mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + (32 * ('cd', 4).length) + 194] = (32 * ('cd', 4).length) + 160
        mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + (64 * ('cd', 4).length) + 290] = ('cd', 4).length
        mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + (64 * ('cd', 4).length) + 322 len 32 * ('cd', 4).length] = call.data[calldata.size len 32 * ('cd', 4).length]
    mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + (32 * ('cd', 4).length) + 226] = block.timestamp
    emit 0x954c14f8: mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + (32 * ('cd', 4).length) + 130 len (64 * ('cd', 4).length) + 192]
}



}
