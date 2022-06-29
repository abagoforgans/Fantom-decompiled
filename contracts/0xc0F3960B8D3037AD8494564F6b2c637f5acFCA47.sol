contract main {




// =====================  Runtime code  =====================


address stor1;
uint256 sub_e5aa0b62;
array of uint256 stor5;
uint256 stor7;
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

function sub_4c67e6f6(?) payable {
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
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    mem[floor32(('cd', 4).length) + 97] = ('cd', 4).length
    mem[64] = floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 129
    if not ('cd', 4).length:
        idx = 0
        s = 0
        t = stor7
        while idx < ('cd', 4).length:
            mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 289] = 0
            mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 129] = floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 289
            mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 161] = 1
            mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 193] = 1
            mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 225] = 1
            mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 257] = 1
            if idx >= ('cd', 4).length:
                revert with 'NH{q', 50
            _210 = mem[(32 * idx) + 128]
            mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 325] = mem[(32 * idx) + 128]
            require ext_code.size(stor1)
            staticcall stor1.0x6352211e with:
                    gas gas_remaining wei
                   args _210
            mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 321] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = floor32(('cd', 4).length) + (32 * ('cd', 4).length) + ceil32(return_data.size) + 321
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            if ext_call.return_data[12 len 20] != msg.sender:
                revert with 0, 'Not Owner!'
            u = 0
            while u < stor5.length:
                mem[0] = 5
                if stor5[u] != 1:
                    if u == -1:
                        revert with 'NH{q', 17
                    u = u + 1
                    continue 
                if block.timestamp <= mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 193]:
                    revert with 0, 'Unavailable for adventure!'
                _322 = mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 257]
                _323 = mem[64]
                mem[mem[64] + 32] = mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 193]
                mem[mem[64] + 64] = _322
                mem[mem[64] + 96] = t
                mem[mem[64] + 128] = block.timestamp
                _334 = mem[64]
                mem[mem[64]] = 128
                mem[64] = mem[64] + 160
                _338 = mem[_334]
                t = 0
                while t < _338:
                    mem[_323 + t + 192] = mem[_334 + t + 32]
                    t = t + 32
                    continue 
                if ceil32(_338) <= _338:
                    _368 = mem[64]
                    mem[mem[64]] = _323 + _338 + -mem[64] + 160
                    mem[64] = _323 + _338 + 192
                    _370 = sha3(mem[_368 + 32 len mem[_368]])
                    _374 = mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 257]
                    if sha3(mem[_368 + 32 len mem[_368]]) % 4 > -mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 257] - 1:
                        revert with 'NH{q', 17
                    if (sha3(mem[_368 + 32 len mem[_368]]) % 4) + mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 257] and 30 > -1 / (sha3(mem[_368 + 32 len mem[_368]]) % 4) + mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 257]:
                        revert with 'NH{q', 17
                    if stor8 > (-30 * sha3(mem[_368 + 32 len mem[_368]]) % 4) + (-30 * mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 257]) - 1:
                        revert with 'NH{q', 17
                    if idx >= mem[floor32(('cd', 4).length) + 97]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + floor32(('cd', 4).length) + 129] = stor8 + (30 * sha3(mem[_368 + 32 len mem[_368]]) % 4) + (30 * mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 257])
                    if s > -stor8 + (-30 * _370 % 4) + (-30 * _374) - 1:
                        revert with 'NH{q', 17
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = s + stor8 + (30 * _370 % 4) + (30 * _374)
                    t = _370
                    continue 
                mem[_323 + _338 + 192] = 0
                _375 = mem[64]
                mem[mem[64]] = _323 + _338 + -mem[64] + 160
                mem[64] = _323 + _338 + 192
                _377 = sha3(mem[_375 + 32 len mem[_375]])
                _384 = mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 257]
                if sha3(mem[_375 + 32 len mem[_375]]) % 4 > -mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 257] - 1:
                    revert with 'NH{q', 17
                if (sha3(mem[_375 + 32 len mem[_375]]) % 4) + mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 257] and 30 > -1 / (sha3(mem[_375 + 32 len mem[_375]]) % 4) + mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 257]:
                    revert with 'NH{q', 17
                if stor8 > (-30 * sha3(mem[_375 + 32 len mem[_375]]) % 4) + (-30 * mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 257]) - 1:
                    revert with 'NH{q', 17
                if idx >= mem[floor32(('cd', 4).length) + 97]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + floor32(('cd', 4).length) + 129] = stor8 + (30 * sha3(mem[_375 + 32 len mem[_375]]) % 4) + (30 * mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 257])
                if s > -stor8 + (-30 * _377 % 4) + (-30 * _384) - 1:
                    revert with 'NH{q', 17
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = s + stor8 + (30 * _377 % 4) + (30 * _384)
                t = _377
                continue 
            revert with 0, 'Wrong class for the Attack Action!'
        if s <= sub_e5aa0b62:
            if sub_e5aa0b62 < s:
                revert with 'NH{q', 17
            sub_e5aa0b62 -= s
            if block.timestamp > -43201:
                revert with 'NH{q', 17
            sub_547b5c0c[address(msg.sender)] = block.timestamp + (12 * 3600)
            mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 129] = msg.sender
            mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 161] = 128
            mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 257] = ('cd', 4).length
            mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 289 len 32 * ('cd', 4).length] = mem[128 len 32 * ('cd', 4).length]
        else:
            sub_e5aa0b62 = 0
            if block.timestamp > -43201:
                revert with 'NH{q', 17
            sub_547b5c0c[address(msg.sender)] = block.timestamp + (12 * 3600)
            mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 129] = msg.sender
            mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 161] = 128
            mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 257] = ('cd', 4).length
            mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 289 len 32 * ('cd', 4).length] = mem[128 len 32 * ('cd', 4).length]
            var66001 = ('cd', 4).length
        mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 193] = (96 * ('cd', 4).length) + 160
        mem[floor32(('cd', 4).length) + (64 * ('cd', 4).length) + 289] = ('cd', 4).length
        mem[floor32(('cd', 4).length) + (64 * ('cd', 4).length) + 321 len 32 * ('cd', 4).length] = mem[floor32(('cd', 4).length) + 129 len 32 * ('cd', 4).length]
    else:
        mem[floor32(('cd', 4).length) + 129 len 32 * ('cd', 4).length] = call.data[calldata.size len 32 * ('cd', 4).length]
        idx = 0
        s = 0
        t = stor7
        while idx < ('cd', 4).length:
            mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 289] = 0
            mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 129] = floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 289
            mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 161] = 1
            mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 193] = 1
            mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 225] = 1
            mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 257] = 1
            if idx >= ('cd', 4).length:
                revert with 'NH{q', 50
            _212 = mem[(32 * idx) + 128]
            mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 325] = mem[(32 * idx) + 128]
            require ext_code.size(stor1)
            staticcall stor1.0x6352211e with:
                    gas gas_remaining wei
                   args _212
            mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 321] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = floor32(('cd', 4).length) + (32 * ('cd', 4).length) + ceil32(return_data.size) + 321
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            if ext_call.return_data[12 len 20] != msg.sender:
                revert with 0, 'Not Owner!'
            u = 0
            while u < stor5.length:
                mem[0] = 5
                if stor5[u] != 1:
                    if u == -1:
                        revert with 'NH{q', 17
                    u = u + 1
                    continue 
                if block.timestamp <= mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 193]:
                    revert with 0, 'Unavailable for adventure!'
                _326 = mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 257]
                _327 = mem[64]
                mem[mem[64] + 32] = mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 193]
                mem[mem[64] + 64] = _326
                mem[mem[64] + 96] = t
                mem[mem[64] + 128] = block.timestamp
                _335 = mem[64]
                mem[mem[64]] = 128
                mem[64] = mem[64] + 160
                _339 = mem[_335]
                t = 0
                while t < _339:
                    mem[_327 + t + 192] = mem[_335 + t + 32]
                    t = t + 32
                    continue 
                if ceil32(_339) <= _339:
                    _371 = mem[64]
                    mem[mem[64]] = _327 + _339 + -mem[64] + 160
                    mem[64] = _327 + _339 + 192
                    _373 = sha3(mem[_371 + 32 len mem[_371]])
                    _378 = mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 257]
                    if sha3(mem[_371 + 32 len mem[_371]]) % 4 > -mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 257] - 1:
                        revert with 'NH{q', 17
                    if (sha3(mem[_371 + 32 len mem[_371]]) % 4) + mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 257] and 30 > -1 / (sha3(mem[_371 + 32 len mem[_371]]) % 4) + mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 257]:
                        revert with 'NH{q', 17
                    if stor8 > (-30 * sha3(mem[_371 + 32 len mem[_371]]) % 4) + (-30 * mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 257]) - 1:
                        revert with 'NH{q', 17
                    if idx >= mem[floor32(('cd', 4).length) + 97]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + floor32(('cd', 4).length) + 129] = stor8 + (30 * sha3(mem[_371 + 32 len mem[_371]]) % 4) + (30 * mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 257])
                    if s > -stor8 + (-30 * _373 % 4) + (-30 * _378) - 1:
                        revert with 'NH{q', 17
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = s + stor8 + (30 * _373 % 4) + (30 * _378)
                    t = _373
                    continue 
                mem[_327 + _339 + 192] = 0
                _379 = mem[64]
                mem[mem[64]] = _327 + _339 + -mem[64] + 160
                mem[64] = _327 + _339 + 192
                _381 = sha3(mem[_379 + 32 len mem[_379]])
                _387 = mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 257]
                if sha3(mem[_379 + 32 len mem[_379]]) % 4 > -mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 257] - 1:
                    revert with 'NH{q', 17
                if (sha3(mem[_379 + 32 len mem[_379]]) % 4) + mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 257] and 30 > -1 / (sha3(mem[_379 + 32 len mem[_379]]) % 4) + mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 257]:
                    revert with 'NH{q', 17
                if stor8 > (-30 * sha3(mem[_379 + 32 len mem[_379]]) % 4) + (-30 * mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 257]) - 1:
                    revert with 'NH{q', 17
                if idx >= mem[floor32(('cd', 4).length) + 97]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + floor32(('cd', 4).length) + 129] = stor8 + (30 * sha3(mem[_379 + 32 len mem[_379]]) % 4) + (30 * mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 257])
                if s > -stor8 + (-30 * _381 % 4) + (-30 * _387) - 1:
                    revert with 'NH{q', 17
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = s + stor8 + (30 * _381 % 4) + (30 * _387)
                t = _381
                continue 
            revert with 0, 'Wrong class for the Attack Action!'
        if s <= sub_e5aa0b62:
            if sub_e5aa0b62 < s:
                revert with 'NH{q', 17
            sub_e5aa0b62 -= s
            if block.timestamp > -43201:
                revert with 'NH{q', 17
            sub_547b5c0c[address(msg.sender)] = block.timestamp + (12 * 3600)
            mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 129] = msg.sender
            mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 161] = 128
            mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 257] = ('cd', 4).length
            mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 289 len 32 * ('cd', 4).length] = mem[128 len 32 * ('cd', 4).length]
        else:
            sub_e5aa0b62 = 0
            if block.timestamp > -43201:
                revert with 'NH{q', 17
            sub_547b5c0c[address(msg.sender)] = block.timestamp + (12 * 3600)
            mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 129] = msg.sender
            mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 161] = 128
            mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 257] = ('cd', 4).length
            mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 289 len 32 * ('cd', 4).length] = mem[128 len 32 * ('cd', 4).length]
            var67001 = ('cd', 4).length
        mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 193] = (96 * ('cd', 4).length) + 160
        mem[floor32(('cd', 4).length) + (64 * ('cd', 4).length) + 289] = ('cd', 4).length
        mem[floor32(('cd', 4).length) + (64 * ('cd', 4).length) + 321 len 32 * ('cd', 4).length] = call.data[calldata.size len 32 * ('cd', 4).length]
    mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 225] = block.timestamp
    emit 0x954c14f8: mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 129 len (129 * ('cd', 4).length) + 192]
}



}
