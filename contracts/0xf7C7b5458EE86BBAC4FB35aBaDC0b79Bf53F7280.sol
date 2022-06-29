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
        s = stor7
        while idx < ('cd', 4).length:
            mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 289] = 0
            mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 129] = floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 289
            mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 161] = 1
            mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 193] = 1
            mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 225] = 1
            mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 257] = 1
            if idx >= ('cd', 4).length:
                revert with 'NH{q', 50
            _188 = mem[(32 * idx) + 128]
            mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 325] = mem[(32 * idx) + 128]
            require ext_code.size(stor1)
            staticcall stor1.0x6352211e with:
                    gas gas_remaining wei
                   args _188
            mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 321] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = floor32(('cd', 4).length) + (32 * ('cd', 4).length) + ceil32(return_data.size) + 321
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            if ext_call.return_data[12 len 20] != msg.sender:
                revert with 0, 'Not Owner!'
            t = 0
            while t < stor5.length:
                mem[0] = 5
                if stor5[t] != 1:
                    if t == -1:
                        revert with 'NH{q', 17
                    t = t + 1
                    continue 
                if block.timestamp <= mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 193]:
                    revert with 0, 'Unavailable for adventure!'
                _280 = mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 257]
                _281 = mem[64]
                mem[mem[64] + 32] = mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 193]
                mem[mem[64] + 64] = _280
                mem[mem[64] + 96] = s
                mem[mem[64] + 128] = block.timestamp
                _290 = mem[64]
                mem[mem[64]] = 128
                mem[64] = mem[64] + 160
                _294 = mem[_290]
                s = 0
                while s < _294:
                    mem[_281 + s + 192] = mem[_290 + s + 32]
                    s = s + 32
                    continue 
                if ceil32(_294) <= _294:
                    _326 = mem[64]
                    mem[mem[64]] = _281 + _294 + -mem[64] + 160
                    mem[64] = _281 + _294 + 192
                    _328 = sha3(mem[_326 + 32 len mem[_326]])
                    if sha3(mem[_326 + 32 len mem[_326]]) % 4 > -mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 257] - 1:
                        revert with 'NH{q', 17
                    if (sha3(mem[_326 + 32 len mem[_326]]) % 4) + mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 257] and 30 > -1 / (sha3(mem[_326 + 32 len mem[_326]]) % 4) + mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 257]:
                        revert with 'NH{q', 17
                    if stor8 > (-30 * sha3(mem[_326 + 32 len mem[_326]]) % 4) + (-30 * mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 257]) - 1:
                        revert with 'NH{q', 17
                    if stor8 + (30 * sha3(mem[_326 + 32 len mem[_326]]) % 4) + (30 * mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 257]) > sub_e5aa0b62:
                        sub_e5aa0b62 = 0
                    else:
                        if sub_e5aa0b62 < stor8 + (30 * sha3(mem[_326 + 32 len mem[_326]]) % 4) + (30 * mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 257]):
                            revert with 'NH{q', 17
                        sub_e5aa0b62 = sub_e5aa0b62 - stor8 - (30 * sha3(mem[_326 + 32 len mem[_326]]) % 4) - (30 * mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 257])
                    if idx >= mem[floor32(('cd', 4).length) + 97]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + floor32(('cd', 4).length) + 129] = stor8 + (30 * sha3(mem[_326 + 32 len mem[_326]]) % 4) + (30 * mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 257])
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = _328
                    continue 
                mem[_281 + _294 + 192] = 0
                _333 = mem[64]
                mem[mem[64]] = _281 + _294 + -mem[64] + 160
                mem[64] = _281 + _294 + 192
                _335 = sha3(mem[_333 + 32 len mem[_333]])
                if sha3(mem[_333 + 32 len mem[_333]]) % 4 > -mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 257] - 1:
                    revert with 'NH{q', 17
                if (sha3(mem[_333 + 32 len mem[_333]]) % 4) + mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 257] and 30 > -1 / (sha3(mem[_333 + 32 len mem[_333]]) % 4) + mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 257]:
                    revert with 'NH{q', 17
                if stor8 > (-30 * sha3(mem[_333 + 32 len mem[_333]]) % 4) + (-30 * mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 257]) - 1:
                    revert with 'NH{q', 17
                if stor8 + (30 * sha3(mem[_333 + 32 len mem[_333]]) % 4) + (30 * mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 257]) > sub_e5aa0b62:
                    sub_e5aa0b62 = 0
                else:
                    if sub_e5aa0b62 < stor8 + (30 * sha3(mem[_333 + 32 len mem[_333]]) % 4) + (30 * mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 257]):
                        revert with 'NH{q', 17
                    sub_e5aa0b62 = sub_e5aa0b62 - stor8 - (30 * sha3(mem[_333 + 32 len mem[_333]]) % 4) - (30 * mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 257])
                if idx >= mem[floor32(('cd', 4).length) + 97]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + floor32(('cd', 4).length) + 129] = stor8 + (30 * sha3(mem[_333 + 32 len mem[_333]]) % 4) + (30 * mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 257])
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = _335
                continue 
            revert with 0, 'Wrong class for the Attack Action!'
        stor7 = s
        mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 129] = msg.sender
        mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 161] = 128
        mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 257] = ('cd', 4).length
        mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 289 len 32 * ('cd', 4).length] = mem[128 len 32 * ('cd', 4).length]
        mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 193] = (96 * ('cd', 4).length) + 160
        mem[floor32(('cd', 4).length) + (64 * ('cd', 4).length) + 289] = ('cd', 4).length
        mem[floor32(('cd', 4).length) + (64 * ('cd', 4).length) + 321 len 32 * ('cd', 4).length] = mem[floor32(('cd', 4).length) + 129 len 32 * ('cd', 4).length]
    else:
        mem[floor32(('cd', 4).length) + 129 len 32 * ('cd', 4).length] = call.data[calldata.size len 32 * ('cd', 4).length]
        idx = 0
        s = stor7
        while idx < ('cd', 4).length:
            mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 289] = 0
            mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 129] = floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 289
            mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 161] = 1
            mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 193] = 1
            mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 225] = 1
            mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 257] = 1
            if idx >= ('cd', 4).length:
                revert with 'NH{q', 50
            _190 = mem[(32 * idx) + 128]
            mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 325] = mem[(32 * idx) + 128]
            require ext_code.size(stor1)
            staticcall stor1.0x6352211e with:
                    gas gas_remaining wei
                   args _190
            mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 321] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = floor32(('cd', 4).length) + (32 * ('cd', 4).length) + ceil32(return_data.size) + 321
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            if ext_call.return_data[12 len 20] != msg.sender:
                revert with 0, 'Not Owner!'
            t = 0
            while t < stor5.length:
                mem[0] = 5
                if stor5[t] != 1:
                    if t == -1:
                        revert with 'NH{q', 17
                    t = t + 1
                    continue 
                if block.timestamp <= mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 193]:
                    revert with 0, 'Unavailable for adventure!'
                _284 = mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 257]
                _285 = mem[64]
                mem[mem[64] + 32] = mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 193]
                mem[mem[64] + 64] = _284
                mem[mem[64] + 96] = s
                mem[mem[64] + 128] = block.timestamp
                _291 = mem[64]
                mem[mem[64]] = 128
                mem[64] = mem[64] + 160
                _295 = mem[_291]
                s = 0
                while s < _295:
                    mem[_285 + s + 192] = mem[_291 + s + 32]
                    s = s + 32
                    continue 
                if ceil32(_295) <= _295:
                    _329 = mem[64]
                    mem[mem[64]] = _285 + _295 + -mem[64] + 160
                    mem[64] = _285 + _295 + 192
                    _331 = sha3(mem[_329 + 32 len mem[_329]])
                    if sha3(mem[_329 + 32 len mem[_329]]) % 4 > -mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 257] - 1:
                        revert with 'NH{q', 17
                    if (sha3(mem[_329 + 32 len mem[_329]]) % 4) + mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 257] and 30 > -1 / (sha3(mem[_329 + 32 len mem[_329]]) % 4) + mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 257]:
                        revert with 'NH{q', 17
                    if stor8 > (-30 * sha3(mem[_329 + 32 len mem[_329]]) % 4) + (-30 * mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 257]) - 1:
                        revert with 'NH{q', 17
                    if stor8 + (30 * sha3(mem[_329 + 32 len mem[_329]]) % 4) + (30 * mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 257]) > sub_e5aa0b62:
                        sub_e5aa0b62 = 0
                    else:
                        if sub_e5aa0b62 < stor8 + (30 * sha3(mem[_329 + 32 len mem[_329]]) % 4) + (30 * mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 257]):
                            revert with 'NH{q', 17
                        sub_e5aa0b62 = sub_e5aa0b62 - stor8 - (30 * sha3(mem[_329 + 32 len mem[_329]]) % 4) - (30 * mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 257])
                    if idx >= mem[floor32(('cd', 4).length) + 97]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + floor32(('cd', 4).length) + 129] = stor8 + (30 * sha3(mem[_329 + 32 len mem[_329]]) % 4) + (30 * mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 257])
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = _331
                    continue 
                mem[_285 + _295 + 192] = 0
                _337 = mem[64]
                mem[mem[64]] = _285 + _295 + -mem[64] + 160
                mem[64] = _285 + _295 + 192
                _339 = sha3(mem[_337 + 32 len mem[_337]])
                if sha3(mem[_337 + 32 len mem[_337]]) % 4 > -mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 257] - 1:
                    revert with 'NH{q', 17
                if (sha3(mem[_337 + 32 len mem[_337]]) % 4) + mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 257] and 30 > -1 / (sha3(mem[_337 + 32 len mem[_337]]) % 4) + mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 257]:
                    revert with 'NH{q', 17
                if stor8 > (-30 * sha3(mem[_337 + 32 len mem[_337]]) % 4) + (-30 * mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 257]) - 1:
                    revert with 'NH{q', 17
                if stor8 + (30 * sha3(mem[_337 + 32 len mem[_337]]) % 4) + (30 * mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 257]) > sub_e5aa0b62:
                    sub_e5aa0b62 = 0
                else:
                    if sub_e5aa0b62 < stor8 + (30 * sha3(mem[_337 + 32 len mem[_337]]) % 4) + (30 * mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 257]):
                        revert with 'NH{q', 17
                    sub_e5aa0b62 = sub_e5aa0b62 - stor8 - (30 * sha3(mem[_337 + 32 len mem[_337]]) % 4) - (30 * mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 257])
                if idx >= mem[floor32(('cd', 4).length) + 97]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + floor32(('cd', 4).length) + 129] = stor8 + (30 * sha3(mem[_337 + 32 len mem[_337]]) % 4) + (30 * mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 257])
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = _339
                continue 
            revert with 0, 'Wrong class for the Attack Action!'
        stor7 = s
        mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 129] = msg.sender
        mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 161] = 128
        mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 257] = ('cd', 4).length
        mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 289 len 32 * ('cd', 4).length] = mem[128 len 32 * ('cd', 4).length]
        mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 193] = (96 * ('cd', 4).length) + 160
        mem[floor32(('cd', 4).length) + (64 * ('cd', 4).length) + 289] = ('cd', 4).length
        mem[floor32(('cd', 4).length) + (64 * ('cd', 4).length) + 321 len 32 * ('cd', 4).length] = call.data[calldata.size len 32 * ('cd', 4).length]
    mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 225] = block.timestamp
    emit 0x954c14f8: mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 129 len (129 * ('cd', 4).length) + 192]
}



}
