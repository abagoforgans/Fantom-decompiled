contract main {




// =====================  Runtime code  =====================


address stor1;
uint256 sub_e5aa0b62;
array of uint256 stor5;
uint256 stor7;
uint256 stor8;
mapping of uint8 sub_d1c9c996;
uint256 sub_4b9c425a;
uint8 sub_b32ac8f6;

function sub_4b9c425a(?) payable {
    return sub_4b9c425a
}

function sub_b32ac8f6(?) payable {
    return bool(sub_b32ac8f6)
}

function sub_d1c9c996(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if sub_d1c9c996[arg1] >= 3:
        revert with 'NH{q', 33
    return sub_d1c9c996[arg1]
}

function sub_e5aa0b62(?) payable {
    return sub_e5aa0b62
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
    mem[64] = floor32(('cd', 4).length) + 97
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
    s = stor7
    while idx < ('cd', 4).length:
        if idx >= ('cd', 4).length:
            revert with 'NH{q', 50
        require ext_code.size(stor1)
        staticcall stor1.summoner(uint256 arg1) with:
                gas gas_remaining wei
               args mem[(32 * idx) + 128]
        mem[floor32(('cd', 4).length) + 97 len 128] = ext_call.return_data[0 len 128]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 128
        require ext_call.return_data[0] == ext_call.return_data[0]
        require ext_call.return_data[32] == ext_call.return_data[32]
        require ext_call.return_data[64] == ext_call.return_data[64]
        require ext_call.return_data[96] == ext_call.return_data[96]
        mem[floor32(('cd', 4).length) + ceil32(return_data.size) + 257] = 0
        mem[floor32(('cd', 4).length) + ceil32(return_data.size) + 97] = floor32(('cd', 4).length) + ceil32(return_data.size) + 257
        mem[floor32(('cd', 4).length) + ceil32(return_data.size) + 129] = ext_call.return_data[0]
        mem[floor32(('cd', 4).length) + ceil32(return_data.size) + 161] = ext_call.return_data[32]
        mem[floor32(('cd', 4).length) + ceil32(return_data.size) + 193] = ext_call.return_data[64]
        mem[floor32(('cd', 4).length) + ceil32(return_data.size) + 225] = ext_call.return_data[96]
        if idx >= ('cd', 4).length:
            revert with 'NH{q', 50
        _99 = mem[(32 * idx) + 128]
        mem[floor32(('cd', 4).length) + ceil32(return_data.size) + 293] = mem[(32 * idx) + 128]
        require ext_code.size(stor1)
        staticcall stor1.ownerOf(uint256 arg1) with:
                gas gas_remaining wei
               args _99
        mem[floor32(('cd', 4).length) + ceil32(return_data.size) + 289] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = floor32(('cd', 4).length) + (2 * ceil32(return_data.size)) + 289
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
            if block.timestamp <= mem[floor32(('cd', 4).length) + ceil32(return_data.size) + 161]:
                revert with 0, 'Unavailable for adventure!'
            _134 = mem[floor32(('cd', 4).length) + ceil32(return_data.size) + 225]
            _135 = mem[64]
            mem[mem[64] + 32] = mem[floor32(('cd', 4).length) + ceil32(return_data.size) + 161]
            mem[mem[64] + 64] = _134
            mem[mem[64] + 96] = s
            mem[mem[64] + 128] = block.timestamp
            _137 = mem[64]
            mem[mem[64]] = 128
            mem[64] = mem[64] + 160
            _139 = mem[_137]
            s = 0
            while s < _139:
                mem[_135 + s + 192] = mem[_137 + s + 32]
                s = s + 32
                continue 
            if ceil32(_139) <= _139:
                _150 = mem[64]
                mem[mem[64]] = _135 + _139 + -mem[64] + 160
                mem[64] = _135 + _139 + 192
                if sha3(mem[_150 + 32 len mem[_150]]) % 4 > -mem[floor32(('cd', 4).length) + ceil32(return_data.size) + 225] - 1:
                    revert with 'NH{q', 17
                if (sha3(mem[_150 + 32 len mem[_150]]) % 4) + mem[floor32(('cd', 4).length) + ceil32(return_data.size) + 225] and 30 > -1 / (sha3(mem[_150 + 32 len mem[_150]]) % 4) + mem[floor32(('cd', 4).length) + ceil32(return_data.size) + 225]:
                    revert with 'NH{q', 17
                if stor8 > (-30 * sha3(mem[_150 + 32 len mem[_150]]) % 4) + (-30 * mem[floor32(('cd', 4).length) + ceil32(return_data.size) + 225]) - 1:
                    revert with 'NH{q', 17
                if stor8 + (30 * sha3(mem[_150 + 32 len mem[_150]]) % 4) + (30 * mem[floor32(('cd', 4).length) + ceil32(return_data.size) + 225]) > sub_e5aa0b62:
                    sub_e5aa0b62 = 0
                else:
                    if sub_e5aa0b62 < stor8 + (30 * sha3(mem[_150 + 32 len mem[_150]]) % 4) + (30 * mem[floor32(('cd', 4).length) + ceil32(return_data.size) + 225]):
                        revert with 'NH{q', 17
                    sub_e5aa0b62 = sub_e5aa0b62 - stor8 - (30 * sha3(mem[_150 + 32 len mem[_150]]) % 4) - (30 * mem[floor32(('cd', 4).length) + ceil32(return_data.size) + 225])
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = sha3(mem[_150 + 32 len mem[_150]])
                continue 
            mem[_135 + _139 + 192] = 0
            _154 = mem[64]
            mem[mem[64]] = _135 + _139 + -mem[64] + 160
            mem[64] = _135 + _139 + 192
            if sha3(mem[_154 + 32 len mem[_154]]) % 4 > -mem[floor32(('cd', 4).length) + ceil32(return_data.size) + 225] - 1:
                revert with 'NH{q', 17
            if (sha3(mem[_154 + 32 len mem[_154]]) % 4) + mem[floor32(('cd', 4).length) + ceil32(return_data.size) + 225] and 30 > -1 / (sha3(mem[_154 + 32 len mem[_154]]) % 4) + mem[floor32(('cd', 4).length) + ceil32(return_data.size) + 225]:
                revert with 'NH{q', 17
            if stor8 > (-30 * sha3(mem[_154 + 32 len mem[_154]]) % 4) + (-30 * mem[floor32(('cd', 4).length) + ceil32(return_data.size) + 225]) - 1:
                revert with 'NH{q', 17
            if stor8 + (30 * sha3(mem[_154 + 32 len mem[_154]]) % 4) + (30 * mem[floor32(('cd', 4).length) + ceil32(return_data.size) + 225]) > sub_e5aa0b62:
                sub_e5aa0b62 = 0
            else:
                if sub_e5aa0b62 < stor8 + (30 * sha3(mem[_154 + 32 len mem[_154]]) % 4) + (30 * mem[floor32(('cd', 4).length) + ceil32(return_data.size) + 225]):
                    revert with 'NH{q', 17
                sub_e5aa0b62 = sub_e5aa0b62 - stor8 - (30 * sha3(mem[_154 + 32 len mem[_154]]) % 4) - (30 * mem[floor32(('cd', 4).length) + ceil32(return_data.size) + 225])
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = sha3(mem[_154 + 32 len mem[_154]])
            continue 
        revert with 0, 'Wrong class for the Attack Action!'
    stor7 = s
}



}
