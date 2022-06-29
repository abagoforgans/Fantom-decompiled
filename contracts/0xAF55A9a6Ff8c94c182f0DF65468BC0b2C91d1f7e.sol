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
            _202 = mem[(32 * idx) + 128]
            mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 325] = mem[(32 * idx) + 128]
            require ext_code.size(stor1)
            staticcall stor1.0x6352211e with:
                    gas gas_remaining wei
                   args _202
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
                _310 = mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 257]
                _311 = mem[64]
                mem[mem[64] + 32] = mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 193]
                mem[mem[64] + 64] = _310
                mem[mem[64] + 96] = t
                mem[mem[64] + 128] = block.timestamp
                _322 = mem[64]
                mem[mem[64]] = 128
                mem[64] = mem[64] + 160
                _326 = mem[_322]
                t = 0
                while t < _326:
                    mem[_311 + t + 192] = mem[_322 + t + 32]
                    t = t + 32
                    continue 
                if ceil32(_326) <= _326:
                    _356 = mem[64]
                    mem[mem[64]] = _311 + _326 + -mem[64] + 160
                    mem[64] = _311 + _326 + 192
                    _358 = sha3(mem[_356 + 32 len mem[_356]])
                    _362 = mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 257]
                    if sha3(mem[_356 + 32 len mem[_356]]) % 4 > -mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 257] - 1:
                        revert with 'NH{q', 17
                    if (sha3(mem[_356 + 32 len mem[_356]]) % 4) + mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 257] and 30 > -1 / (sha3(mem[_356 + 32 len mem[_356]]) % 4) + mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 257]:
                        revert with 'NH{q', 17
                    if stor8 > (-30 * sha3(mem[_356 + 32 len mem[_356]]) % 4) + (-30 * mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 257]) - 1:
                        revert with 'NH{q', 17
                    if idx >= mem[floor32(('cd', 4).length) + 97]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + floor32(('cd', 4).length) + 129] = stor8 + (30 * sha3(mem[_356 + 32 len mem[_356]]) % 4) + (30 * mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 257])
                    if s > -stor8 + (-30 * _358 % 4) + (-30 * _362) - 1:
                        revert with 'NH{q', 17
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = s + stor8 + (30 * _358 % 4) + (30 * _362)
                    t = _358
                    continue 
                mem[_311 + _326 + 192] = 0
                _363 = mem[64]
                mem[mem[64]] = _311 + _326 + -mem[64] + 160
                mem[64] = _311 + _326 + 192
                _365 = sha3(mem[_363 + 32 len mem[_363]])
                _372 = mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 257]
                if sha3(mem[_363 + 32 len mem[_363]]) % 4 > -mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 257] - 1:
                    revert with 'NH{q', 17
                if (sha3(mem[_363 + 32 len mem[_363]]) % 4) + mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 257] and 30 > -1 / (sha3(mem[_363 + 32 len mem[_363]]) % 4) + mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 257]:
                    revert with 'NH{q', 17
                if stor8 > (-30 * sha3(mem[_363 + 32 len mem[_363]]) % 4) + (-30 * mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 257]) - 1:
                    revert with 'NH{q', 17
                if idx >= mem[floor32(('cd', 4).length) + 97]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + floor32(('cd', 4).length) + 129] = stor8 + (30 * sha3(mem[_363 + 32 len mem[_363]]) % 4) + (30 * mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 257])
                if s > -stor8 + (-30 * _365 % 4) + (-30 * _372) - 1:
                    revert with 'NH{q', 17
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = s + stor8 + (30 * _365 % 4) + (30 * _372)
                t = _365
                continue 
            revert with 0, 'Wrong class for the Attack Action!'
        if s > sub_e5aa0b62:
            sub_e5aa0b62 = 0
            mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 129] = msg.sender
            mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 161] = 128
            mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 257] = ('cd', 4).length
            mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 289 len 32 * ('cd', 4).length] = mem[128 len 32 * ('cd', 4).length]
        else:
            if sub_e5aa0b62 < s:
                revert with 'NH{q', 17
            sub_e5aa0b62 -= s
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
            _204 = mem[(32 * idx) + 128]
            mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 325] = mem[(32 * idx) + 128]
            require ext_code.size(stor1)
            staticcall stor1.0x6352211e with:
                    gas gas_remaining wei
                   args _204
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
                _314 = mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 257]
                _315 = mem[64]
                mem[mem[64] + 32] = mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 193]
                mem[mem[64] + 64] = _314
                mem[mem[64] + 96] = t
                mem[mem[64] + 128] = block.timestamp
                _323 = mem[64]
                mem[mem[64]] = 128
                mem[64] = mem[64] + 160
                _327 = mem[_323]
                t = 0
                while t < _327:
                    mem[_315 + t + 192] = mem[_323 + t + 32]
                    t = t + 32
                    continue 
                if ceil32(_327) <= _327:
                    _359 = mem[64]
                    mem[mem[64]] = _315 + _327 + -mem[64] + 160
                    mem[64] = _315 + _327 + 192
                    _361 = sha3(mem[_359 + 32 len mem[_359]])
                    _366 = mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 257]
                    if sha3(mem[_359 + 32 len mem[_359]]) % 4 > -mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 257] - 1:
                        revert with 'NH{q', 17
                    if (sha3(mem[_359 + 32 len mem[_359]]) % 4) + mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 257] and 30 > -1 / (sha3(mem[_359 + 32 len mem[_359]]) % 4) + mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 257]:
                        revert with 'NH{q', 17
                    if stor8 > (-30 * sha3(mem[_359 + 32 len mem[_359]]) % 4) + (-30 * mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 257]) - 1:
                        revert with 'NH{q', 17
                    if idx >= mem[floor32(('cd', 4).length) + 97]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + floor32(('cd', 4).length) + 129] = stor8 + (30 * sha3(mem[_359 + 32 len mem[_359]]) % 4) + (30 * mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 257])
                    if s > -stor8 + (-30 * _361 % 4) + (-30 * _366) - 1:
                        revert with 'NH{q', 17
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = s + stor8 + (30 * _361 % 4) + (30 * _366)
                    t = _361
                    continue 
                mem[_315 + _327 + 192] = 0
                _367 = mem[64]
                mem[mem[64]] = _315 + _327 + -mem[64] + 160
                mem[64] = _315 + _327 + 192
                _369 = sha3(mem[_367 + 32 len mem[_367]])
                _375 = mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 257]
                if sha3(mem[_367 + 32 len mem[_367]]) % 4 > -mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 257] - 1:
                    revert with 'NH{q', 17
                if (sha3(mem[_367 + 32 len mem[_367]]) % 4) + mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 257] and 30 > -1 / (sha3(mem[_367 + 32 len mem[_367]]) % 4) + mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 257]:
                    revert with 'NH{q', 17
                if stor8 > (-30 * sha3(mem[_367 + 32 len mem[_367]]) % 4) + (-30 * mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 257]) - 1:
                    revert with 'NH{q', 17
                if idx >= mem[floor32(('cd', 4).length) + 97]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + floor32(('cd', 4).length) + 129] = stor8 + (30 * sha3(mem[_367 + 32 len mem[_367]]) % 4) + (30 * mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 257])
                if s > -stor8 + (-30 * _369 % 4) + (-30 * _375) - 1:
                    revert with 'NH{q', 17
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = s + stor8 + (30 * _369 % 4) + (30 * _375)
                t = _369
                continue 
            revert with 0, 'Wrong class for the Attack Action!'
        if s > sub_e5aa0b62:
            sub_e5aa0b62 = 0
            mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 129] = msg.sender
            mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 161] = 128
            mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 257] = ('cd', 4).length
            mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 289 len 32 * ('cd', 4).length] = mem[128 len 32 * ('cd', 4).length]
        else:
            if sub_e5aa0b62 < s:
                revert with 'NH{q', 17
            sub_e5aa0b62 -= s
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
