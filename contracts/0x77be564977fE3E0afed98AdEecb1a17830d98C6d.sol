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
            if idx >= ('cd', 4).length:
                revert with 'NH{q', 50
            require ext_code.size(stor1)
            staticcall stor1.summoner(uint256 arg1) with:
                    gas gas_remaining wei
                   args mem[(32 * idx) + 128]
            mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 129 len 128] = ext_call.return_data[0 len 128]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 128
            require ext_call.return_data[0] == ext_call.return_data[0]
            require ext_call.return_data[32] == ext_call.return_data[32]
            require ext_call.return_data[64] == ext_call.return_data[64]
            require ext_call.return_data[96] == ext_call.return_data[96]
            mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + ceil32(return_data.size) + 289] = 0
            mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + ceil32(return_data.size) + 129] = floor32(('cd', 4).length) + (32 * ('cd', 4).length) + ceil32(return_data.size) + 289
            mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + ceil32(return_data.size) + 161] = ext_call.return_data[0]
            mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + ceil32(return_data.size) + 193] = ext_call.return_data[32]
            mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + ceil32(return_data.size) + 225] = ext_call.return_data[64]
            mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + ceil32(return_data.size) + 257] = ext_call.return_data[96]
            if idx >= ('cd', 4).length:
                revert with 'NH{q', 50
            _238 = mem[(32 * idx) + 128]
            mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + ceil32(return_data.size) + 325] = mem[(32 * idx) + 128]
            require ext_code.size(stor1)
            staticcall stor1.0x6352211e with:
                    gas gas_remaining wei
                   args _238
            mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + ceil32(return_data.size) + 321] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = floor32(('cd', 4).length) + (32 * ('cd', 4).length) + (2 * ceil32(return_data.size)) + 321
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            if ext_call.return_data[12 len 20] != msg.sender:
                revert with 0, 'Not Owner!'
            t = 0
            while t < stor5.length:
                mem[0] = 5
                if stor5[t] != ext_call.return_data[64]:
                    if t == -1:
                        revert with 'NH{q', 17
                    t = t + 1
                    continue 
                if block.timestamp <= mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + ceil32(return_data.size) + 193]:
                    revert with 0, 'Unavailable for adventure!'
                _314 = mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + ceil32(return_data.size) + 257]
                _315 = mem[64]
                mem[mem[64] + 32] = mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + ceil32(return_data.size) + 193]
                mem[mem[64] + 64] = _314
                mem[mem[64] + 96] = s
                mem[mem[64] + 128] = block.timestamp
                _322 = mem[64]
                mem[mem[64]] = 128
                mem[64] = mem[64] + 160
                _326 = mem[_322]
                s = 0
                while s < _326:
                    mem[_315 + s + 192] = mem[_322 + s + 32]
                    s = s + 32
                    continue 
                if ceil32(_326) <= _326:
                    _352 = mem[64]
                    mem[mem[64]] = _315 + _326 + -mem[64] + 160
                    mem[64] = _315 + _326 + 192
                    _354 = sha3(mem[_352 + 32 len mem[_352]])
                    if sha3(mem[_352 + 32 len mem[_352]]) % 4 > -mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + ceil32(return_data.size) + 257] - 1:
                        revert with 'NH{q', 17
                    if (sha3(mem[_352 + 32 len mem[_352]]) % 4) + mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + ceil32(return_data.size) + 257] and 30 > -1 / (sha3(mem[_352 + 32 len mem[_352]]) % 4) + mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + ceil32(return_data.size) + 257]:
                        revert with 'NH{q', 17
                    if stor8 > (-30 * sha3(mem[_352 + 32 len mem[_352]]) % 4) + (-30 * mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + ceil32(return_data.size) + 257]) - 1:
                        revert with 'NH{q', 17
                    if idx >= mem[floor32(('cd', 4).length) + 97]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + floor32(('cd', 4).length) + 129] = stor8 + (30 * sha3(mem[_352 + 32 len mem[_352]]) % 4) + (30 * mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + ceil32(return_data.size) + 257])
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = _354
                    continue 
                mem[_315 + _326 + 192] = 0
                _359 = mem[64]
                mem[mem[64]] = _315 + _326 + -mem[64] + 160
                mem[64] = _315 + _326 + 192
                _361 = sha3(mem[_359 + 32 len mem[_359]])
                if sha3(mem[_359 + 32 len mem[_359]]) % 4 > -mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + ceil32(return_data.size) + 257] - 1:
                    revert with 'NH{q', 17
                if (sha3(mem[_359 + 32 len mem[_359]]) % 4) + mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + ceil32(return_data.size) + 257] and 30 > -1 / (sha3(mem[_359 + 32 len mem[_359]]) % 4) + mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + ceil32(return_data.size) + 257]:
                    revert with 'NH{q', 17
                if stor8 > (-30 * sha3(mem[_359 + 32 len mem[_359]]) % 4) + (-30 * mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + ceil32(return_data.size) + 257]) - 1:
                    revert with 'NH{q', 17
                if idx >= mem[floor32(('cd', 4).length) + 97]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + floor32(('cd', 4).length) + 129] = stor8 + (30 * sha3(mem[_359 + 32 len mem[_359]]) % 4) + (30 * mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + ceil32(return_data.size) + 257])
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = _361
                continue 
            revert with 0, 'Wrong class for the Attack Action!'
        stor7 = s
        sub_ec14ba6a[address(msg.sender)] = 0
        emit 0xf49ba494: Array(len=('cd', 4).length, data=mem[floor32(('cd', 4).length) + 129 len 32 * ('cd', 4).length]), block.timestamp
    else:
        mem[floor32(('cd', 4).length) + 129 len 32 * ('cd', 4).length] = call.data[calldata.size len 32 * ('cd', 4).length]
        idx = 0
        s = stor7
        while idx < ('cd', 4).length:
            if idx >= ('cd', 4).length:
                revert with 'NH{q', 50
            require ext_code.size(stor1)
            staticcall stor1.summoner(uint256 arg1) with:
                    gas gas_remaining wei
                   args mem[(32 * idx) + 128]
            mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 129 len 128] = ext_call.return_data[0 len 128]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 128
            require ext_call.return_data[0] == ext_call.return_data[0]
            require ext_call.return_data[32] == ext_call.return_data[32]
            require ext_call.return_data[64] == ext_call.return_data[64]
            require ext_call.return_data[96] == ext_call.return_data[96]
            mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + ceil32(return_data.size) + 289] = 0
            mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + ceil32(return_data.size) + 129] = floor32(('cd', 4).length) + (32 * ('cd', 4).length) + ceil32(return_data.size) + 289
            mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + ceil32(return_data.size) + 161] = ext_call.return_data[0]
            mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + ceil32(return_data.size) + 193] = ext_call.return_data[32]
            mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + ceil32(return_data.size) + 225] = ext_call.return_data[64]
            mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + ceil32(return_data.size) + 257] = ext_call.return_data[96]
            if idx >= ('cd', 4).length:
                revert with 'NH{q', 50
            _240 = mem[(32 * idx) + 128]
            mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + ceil32(return_data.size) + 325] = mem[(32 * idx) + 128]
            require ext_code.size(stor1)
            staticcall stor1.0x6352211e with:
                    gas gas_remaining wei
                   args _240
            mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + ceil32(return_data.size) + 321] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = floor32(('cd', 4).length) + (32 * ('cd', 4).length) + (2 * ceil32(return_data.size)) + 321
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            if ext_call.return_data[12 len 20] != msg.sender:
                revert with 0, 'Not Owner!'
            t = 0
            while t < stor5.length:
                mem[0] = 5
                if stor5[t] != ext_call.return_data[64]:
                    if t == -1:
                        revert with 'NH{q', 17
                    t = t + 1
                    continue 
                if block.timestamp <= mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + ceil32(return_data.size) + 193]:
                    revert with 0, 'Unavailable for adventure!'
                _318 = mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + ceil32(return_data.size) + 257]
                _319 = mem[64]
                mem[mem[64] + 32] = mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + ceil32(return_data.size) + 193]
                mem[mem[64] + 64] = _318
                mem[mem[64] + 96] = s
                mem[mem[64] + 128] = block.timestamp
                _323 = mem[64]
                mem[mem[64]] = 128
                mem[64] = mem[64] + 160
                _327 = mem[_323]
                s = 0
                while s < _327:
                    mem[_319 + s + 192] = mem[_323 + s + 32]
                    s = s + 32
                    continue 
                if ceil32(_327) <= _327:
                    _355 = mem[64]
                    mem[mem[64]] = _319 + _327 + -mem[64] + 160
                    mem[64] = _319 + _327 + 192
                    _357 = sha3(mem[_355 + 32 len mem[_355]])
                    if sha3(mem[_355 + 32 len mem[_355]]) % 4 > -mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + ceil32(return_data.size) + 257] - 1:
                        revert with 'NH{q', 17
                    if (sha3(mem[_355 + 32 len mem[_355]]) % 4) + mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + ceil32(return_data.size) + 257] and 30 > -1 / (sha3(mem[_355 + 32 len mem[_355]]) % 4) + mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + ceil32(return_data.size) + 257]:
                        revert with 'NH{q', 17
                    if stor8 > (-30 * sha3(mem[_355 + 32 len mem[_355]]) % 4) + (-30 * mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + ceil32(return_data.size) + 257]) - 1:
                        revert with 'NH{q', 17
                    if idx >= mem[floor32(('cd', 4).length) + 97]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + floor32(('cd', 4).length) + 129] = stor8 + (30 * sha3(mem[_355 + 32 len mem[_355]]) % 4) + (30 * mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + ceil32(return_data.size) + 257])
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = _357
                    continue 
                mem[_319 + _327 + 192] = 0
                _363 = mem[64]
                mem[mem[64]] = _319 + _327 + -mem[64] + 160
                mem[64] = _319 + _327 + 192
                _365 = sha3(mem[_363 + 32 len mem[_363]])
                if sha3(mem[_363 + 32 len mem[_363]]) % 4 > -mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + ceil32(return_data.size) + 257] - 1:
                    revert with 'NH{q', 17
                if (sha3(mem[_363 + 32 len mem[_363]]) % 4) + mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + ceil32(return_data.size) + 257] and 30 > -1 / (sha3(mem[_363 + 32 len mem[_363]]) % 4) + mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + ceil32(return_data.size) + 257]:
                    revert with 'NH{q', 17
                if stor8 > (-30 * sha3(mem[_363 + 32 len mem[_363]]) % 4) + (-30 * mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + ceil32(return_data.size) + 257]) - 1:
                    revert with 'NH{q', 17
                if idx >= mem[floor32(('cd', 4).length) + 97]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + floor32(('cd', 4).length) + 129] = stor8 + (30 * sha3(mem[_363 + 32 len mem[_363]]) % 4) + (30 * mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + ceil32(return_data.size) + 257])
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = _365
                continue 
            revert with 0, 'Wrong class for the Attack Action!'
        stor7 = s
        sub_ec14ba6a[address(msg.sender)] = 0
        emit 0xf49ba494: Array(len=('cd', 4).length, data=call.data[calldata.size len 32 * ('cd', 4).length]), block.timestamp
}



}
