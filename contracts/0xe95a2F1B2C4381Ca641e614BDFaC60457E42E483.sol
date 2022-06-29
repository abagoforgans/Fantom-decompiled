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
            mem[64] = floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 321
            mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 289] = 0
            mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 129] = floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 289
            mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 161] = 1
            mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 193] = 1
            mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 225] = 1
            mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 257] = 1
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
                _220 = mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 257]
                _221 = mem[64]
                mem[mem[64] + 32] = mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 193]
                mem[mem[64] + 64] = _220
                mem[mem[64] + 96] = s
                mem[mem[64] + 128] = block.timestamp
                _230 = mem[64]
                mem[mem[64]] = 128
                mem[64] = mem[64] + 160
                _234 = mem[_230]
                s = 0
                while s < _234:
                    mem[_221 + s + 192] = mem[_230 + s + 32]
                    s = s + 32
                    continue 
                if ceil32(_234) <= _234:
                    _262 = mem[64]
                    mem[mem[64]] = _221 + _234 + -mem[64] + 160
                    mem[64] = _221 + _234 + 192
                    _264 = sha3(mem[_262 + 32 len mem[_262]])
                    if sha3(mem[_262 + 32 len mem[_262]]) % 4 > -mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 257] - 1:
                        revert with 'NH{q', 17
                    if (sha3(mem[_262 + 32 len mem[_262]]) % 4) + mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 257] and 30 > -1 / (sha3(mem[_262 + 32 len mem[_262]]) % 4) + mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 257]:
                        revert with 'NH{q', 17
                    if stor8 > (-30 * sha3(mem[_262 + 32 len mem[_262]]) % 4) + (-30 * mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 257]) - 1:
                        revert with 'NH{q', 17
                    if idx >= mem[floor32(('cd', 4).length) + 97]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + floor32(('cd', 4).length) + 129] = stor8 + (30 * sha3(mem[_262 + 32 len mem[_262]]) % 4) + (30 * mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 257])
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = _264
                    continue 
                mem[_221 + _234 + 192] = 0
                _269 = mem[64]
                mem[mem[64]] = _221 + _234 + -mem[64] + 160
                mem[64] = _221 + _234 + 192
                _271 = sha3(mem[_269 + 32 len mem[_269]])
                if sha3(mem[_269 + 32 len mem[_269]]) % 4 > -mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 257] - 1:
                    revert with 'NH{q', 17
                if (sha3(mem[_269 + 32 len mem[_269]]) % 4) + mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 257] and 30 > -1 / (sha3(mem[_269 + 32 len mem[_269]]) % 4) + mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 257]:
                    revert with 'NH{q', 17
                if stor8 > (-30 * sha3(mem[_269 + 32 len mem[_269]]) % 4) + (-30 * mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 257]) - 1:
                    revert with 'NH{q', 17
                if idx >= mem[floor32(('cd', 4).length) + 97]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + floor32(('cd', 4).length) + 129] = stor8 + (30 * sha3(mem[_269 + 32 len mem[_269]]) % 4) + (30 * mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 257])
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = _271
                continue 
            revert with 0, 'Wrong class for the Attack Action!'
        stor7 = s
        mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 129] = 96
        mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 225] = ('cd', 4).length
        mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 257 len 32 * ('cd', 4).length] = mem[128 len 32 * ('cd', 4).length]
        mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 161] = (96 * ('cd', 4).length) + 128
        mem[floor32(('cd', 4).length) + (64 * ('cd', 4).length) + 257] = ('cd', 4).length
        mem[floor32(('cd', 4).length) + (64 * ('cd', 4).length) + 289 len 32 * ('cd', 4).length] = mem[floor32(('cd', 4).length) + 129 len 32 * ('cd', 4).length]
    else:
        mem[floor32(('cd', 4).length) + 129 len 32 * ('cd', 4).length] = call.data[calldata.size len 32 * ('cd', 4).length]
        idx = 0
        s = stor7
        while idx < ('cd', 4).length:
            mem[64] = floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 321
            mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 289] = 0
            mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 129] = floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 289
            mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 161] = 1
            mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 193] = 1
            mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 225] = 1
            mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 257] = 1
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
                _224 = mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 257]
                _225 = mem[64]
                mem[mem[64] + 32] = mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 193]
                mem[mem[64] + 64] = _224
                mem[mem[64] + 96] = s
                mem[mem[64] + 128] = block.timestamp
                _231 = mem[64]
                mem[mem[64]] = 128
                mem[64] = mem[64] + 160
                _235 = mem[_231]
                s = 0
                while s < _235:
                    mem[_225 + s + 192] = mem[_231 + s + 32]
                    s = s + 32
                    continue 
                if ceil32(_235) <= _235:
                    _265 = mem[64]
                    mem[mem[64]] = _225 + _235 + -mem[64] + 160
                    mem[64] = _225 + _235 + 192
                    _267 = sha3(mem[_265 + 32 len mem[_265]])
                    if sha3(mem[_265 + 32 len mem[_265]]) % 4 > -mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 257] - 1:
                        revert with 'NH{q', 17
                    if (sha3(mem[_265 + 32 len mem[_265]]) % 4) + mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 257] and 30 > -1 / (sha3(mem[_265 + 32 len mem[_265]]) % 4) + mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 257]:
                        revert with 'NH{q', 17
                    if stor8 > (-30 * sha3(mem[_265 + 32 len mem[_265]]) % 4) + (-30 * mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 257]) - 1:
                        revert with 'NH{q', 17
                    if idx >= mem[floor32(('cd', 4).length) + 97]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + floor32(('cd', 4).length) + 129] = stor8 + (30 * sha3(mem[_265 + 32 len mem[_265]]) % 4) + (30 * mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 257])
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = _267
                    continue 
                mem[_225 + _235 + 192] = 0
                _273 = mem[64]
                mem[mem[64]] = _225 + _235 + -mem[64] + 160
                mem[64] = _225 + _235 + 192
                _275 = sha3(mem[_273 + 32 len mem[_273]])
                if sha3(mem[_273 + 32 len mem[_273]]) % 4 > -mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 257] - 1:
                    revert with 'NH{q', 17
                if (sha3(mem[_273 + 32 len mem[_273]]) % 4) + mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 257] and 30 > -1 / (sha3(mem[_273 + 32 len mem[_273]]) % 4) + mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 257]:
                    revert with 'NH{q', 17
                if stor8 > (-30 * sha3(mem[_273 + 32 len mem[_273]]) % 4) + (-30 * mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 257]) - 1:
                    revert with 'NH{q', 17
                if idx >= mem[floor32(('cd', 4).length) + 97]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + floor32(('cd', 4).length) + 129] = stor8 + (30 * sha3(mem[_273 + 32 len mem[_273]]) % 4) + (30 * mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 257])
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = _275
                continue 
            revert with 0, 'Wrong class for the Attack Action!'
        stor7 = s
        mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 129] = 96
        mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 225] = ('cd', 4).length
        mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 257 len 32 * ('cd', 4).length] = mem[128 len 32 * ('cd', 4).length]
        mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 161] = (96 * ('cd', 4).length) + 128
        mem[floor32(('cd', 4).length) + (64 * ('cd', 4).length) + 257] = ('cd', 4).length
        mem[floor32(('cd', 4).length) + (64 * ('cd', 4).length) + 289 len 32 * ('cd', 4).length] = call.data[calldata.size len 32 * ('cd', 4).length]
    mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 193] = block.timestamp
    emit 0xd92e392a: mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 129 len (129 * ('cd', 4).length) + 160]
}



}
