contract main {




// =====================  Runtime code  =====================


address stor1;
uint256 sub_e5aa0b62;
uint256 stor3;
array of uint256 stor4;
array of uint256 stor5;
uint256 stor7;
uint256 sub_4b9c425a;
uint8 stor10;
mapping of uint256 sub_322a1c8a;

function sub_322a1c8a(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_322a1c8a[address(arg1)]
}

function sub_4b9c425a(?) payable {
    return sub_4b9c425a
}

function sub_b32ac8f6(?) payable {
    return bool(stor10)
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

function sub_422e49f7(?) payable {
    require calldata.size - 4 >= 96
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] == cd[36]
    require cd[68] < 2
    mem[128 len 32 * ('cd', 4).length] = call.data[cd[4] + 36 len 32 * ('cd', 4).length]
    mem[(32 * ('cd', 4).length) + 128] = 0
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= ('cd', 4).length:
            revert with 'NH{q', 50
        if idx > -2:
            revert with 'NH{q', 17
        s = idx + 1
        while s < ('cd', 4).length:
            if s >= ('cd', 4).length:
                revert with 'NH{q', 50
            if mem[(32 * s) + 128] == mem[(32 * idx) + 128]:
                revert with 0, 'Duplicate summoner ids!'
            if s == -1:
                revert with 'NH{q', 17
            s = s + 1
            continue 
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    mem[(32 * ('cd', 4).length) + 128] = ('cd', 4).length
    if ('cd', 4).length:
        mem[(32 * ('cd', 4).length) + 160 len 32 * ('cd', 4).length] = call.data[calldata.size len 32 * ('cd', 4).length]
        idx = 0
        s = 0
        t = cd[36]
        while idx < ('cd', 4).length:
            require ext_code.size(stor1)
            staticcall stor1.summoner(uint256 arg1) with:
                    gas gas_remaining wei
                   args cd[((32 * idx) + cd[4] + 36)]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 128
            require ext_call.return_data[0] == ext_call.return_data[0]
            require ext_call.return_data[32] == ext_call.return_data[32]
            require ext_call.return_data[64] == ext_call.return_data[64]
            require ext_call.return_data[96] == ext_call.return_data[96]
            mem[(64 * ('cd', 4).length) + ceil32(return_data.size) + 320] = 0
            mem[(64 * ('cd', 4).length) + ceil32(return_data.size) + 160] = (64 * ('cd', 4).length) + ceil32(return_data.size) + 320
            mem[(64 * ('cd', 4).length) + ceil32(return_data.size) + 192] = ext_call.return_data[0]
            mem[(64 * ('cd', 4).length) + ceil32(return_data.size) + 224] = ext_call.return_data[32]
            mem[(64 * ('cd', 4).length) + ceil32(return_data.size) + 256] = ext_call.return_data[64]
            mem[(64 * ('cd', 4).length) + ceil32(return_data.size) + 288] = ext_call.return_data[96]
            mem[(64 * ('cd', 4).length) + ceil32(return_data.size) + 356] = cd[((32 * idx) + cd[4] + 36)]
            require ext_code.size(stor1)
            staticcall stor1.0x6352211e with:
                    gas gas_remaining wei
                   args cd[((32 * idx) + cd[4] + 36)]
            mem[(64 * ('cd', 4).length) + ceil32(return_data.size) + 352] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            if ext_call.return_data[12 len 20] != msg.sender:
                revert with 0, 'Not Owner!'
            if block.timestamp <= ext_call.return_data[32]:
                revert with 0, 'Summoner Unavailable!'
            mem[(64 * ('cd', 4).length) + (2 * ceil32(return_data.size)) + 384] = ext_call.return_data[32]
            mem[(64 * ('cd', 4).length) + (2 * ceil32(return_data.size)) + 416] = ext_call.return_data[96]
            mem[(64 * ('cd', 4).length) + (2 * ceil32(return_data.size)) + 448] = t
            mem[(64 * ('cd', 4).length) + (2 * ceil32(return_data.size)) + 480] = block.timestamp
            mem[(64 * ('cd', 4).length) + (2 * ceil32(return_data.size)) + 352] = 128
            t = 0
            while t < 128:
                mem[(64 * ('cd', 4).length) + (2 * ceil32(return_data.size)) + t + 544] = mem[(64 * ('cd', 4).length) + (2 * ceil32(return_data.size)) + t + 384]
                t = t + 32
                continue 
            mem[(64 * ('cd', 4).length) + (2 * ceil32(return_data.size)) + 512] = 128
            _490 = sha3(mem[(64 * ('cd', 4).length) + (2 * ceil32(return_data.size)) + 544 len 128])
            _495 = mem[(64 * ('cd', 4).length) + ceil32(return_data.size) + 288]
            if sha3(mem[(64 * ('cd', 4).length) + (2 * ceil32(return_data.size)) + 544 len 128]) % 4 > -mem[(64 * ('cd', 4).length) + ceil32(return_data.size) + 288] - 1:
                revert with 'NH{q', 17
            if (sha3(mem[(64 * ('cd', 4).length) + (2 * ceil32(return_data.size)) + 544 len 128]) % 4) + mem[(64 * ('cd', 4).length) + ceil32(return_data.size) + 288] and 50 > -1 / (sha3(mem[(64 * ('cd', 4).length) + (2 * ceil32(return_data.size)) + 544 len 128]) % 4) + mem[(64 * ('cd', 4).length) + ceil32(return_data.size) + 288]:
                revert with 'NH{q', 17
            if stor7 > (-50 * sha3(mem[(64 * ('cd', 4).length) + (2 * ceil32(return_data.size)) + 544 len 128]) % 4) + (-50 * mem[(64 * ('cd', 4).length) + ceil32(return_data.size) + 288]) - 1:
                revert with 'NH{q', 17
            if cd[68] > 1:
                revert with 'NH{q', 33
            if cd[68]:
                _511 = mem[(64 * ('cd', 4).length) + ceil32(return_data.size) + 256]
                t = 0
                while t < stor4.length:
                    mem[0] = 4
                    if stor4[t] != _511:
                        if t == -1:
                            revert with 'NH{q', 17
                        t = t + 1
                        continue 
                    if idx >= mem[(32 * ('cd', 4).length) + 128]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + (32 * ('cd', 4).length) + 160] = stor7 + (50 * _490 % 4) + (50 * _495)
                    if s > -stor7 + (-50 * _490 % 4) + (-50 * _495) - 1:
                        revert with 'NH{q', 17
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = s + stor7 + (50 * _490 % 4) + (50 * _495)
                    t = _490
                    continue 
                revert with 0, 'Wrong class for the Heal Action!'
            _512 = mem[(64 * ('cd', 4).length) + ceil32(return_data.size) + 256]
            t = 0
            while t < stor5.length:
                mem[0] = 5
                if stor5[t] != _512:
                    if t == -1:
                        revert with 'NH{q', 17
                    t = t + 1
                    continue 
                if idx >= mem[(32 * ('cd', 4).length) + 128]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + (32 * ('cd', 4).length) + 160] = stor7 + (50 * _490 % 4) + (50 * _495)
                if s > -stor7 + (-50 * _490 % 4) + (-50 * _495) - 1:
                    revert with 'NH{q', 17
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = s + stor7 + (50 * _490 % 4) + (50 * _495)
                t = _490
                continue 
            revert with 0, 'Wrong class for the Attack Action!'
        if cd[68] > 1:
            revert with 'NH{q', 33
        if cd[68]:
            if sub_e5aa0b62 > -s - 1:
                revert with 'NH{q', 17
            sub_e5aa0b62 += s
            if sub_e5aa0b62 > stor3:
                sub_e5aa0b62 = stor3
        else:
            if s <= sub_e5aa0b62:
                if sub_e5aa0b62 < s:
                    revert with 'NH{q', 17
                sub_e5aa0b62 -= s
            else:
                sub_e5aa0b62 = 0
                stor10 = 1
                emit 0x2f3957e6 
        if block.timestamp > -43201:
            revert with 'NH{q', 17
        sub_322a1c8a[address(msg.sender)] = block.timestamp + (12 * 3600)
        if cd[68] >= 2:
            revert with 'NH{q', 33
        require ('cd', 4).length <= 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
        mem[(64 * ('cd', 4).length) + 352 len 32 * ('cd', 4).length] = call.data[cd[4] + 36 len 32 * ('cd', 4).length]
        mem[(98 * ('cd', 4).length) + 352] = ('cd', 4).length
        mem[(98 * ('cd', 4).length) + 384 len 32 * ('cd', 4).length] = call.data[calldata.size len 32 * ('cd', 4).length]
    else:
        idx = 0
        s = 0
        t = cd[36]
        while idx < ('cd', 4).length:
            require ext_code.size(stor1)
            staticcall stor1.summoner(uint256 arg1) with:
                    gas gas_remaining wei
                   args cd[((32 * idx) + cd[4] + 36)]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 128
            require ext_call.return_data[0] == ext_call.return_data[0]
            require ext_call.return_data[32] == ext_call.return_data[32]
            require ext_call.return_data[64] == ext_call.return_data[64]
            require ext_call.return_data[96] == ext_call.return_data[96]
            mem[(64 * ('cd', 4).length) + ceil32(return_data.size) + 320] = 0
            mem[(64 * ('cd', 4).length) + ceil32(return_data.size) + 160] = (64 * ('cd', 4).length) + ceil32(return_data.size) + 320
            mem[(64 * ('cd', 4).length) + ceil32(return_data.size) + 192] = ext_call.return_data[0]
            mem[(64 * ('cd', 4).length) + ceil32(return_data.size) + 224] = ext_call.return_data[32]
            mem[(64 * ('cd', 4).length) + ceil32(return_data.size) + 256] = ext_call.return_data[64]
            mem[(64 * ('cd', 4).length) + ceil32(return_data.size) + 288] = ext_call.return_data[96]
            mem[(64 * ('cd', 4).length) + ceil32(return_data.size) + 356] = cd[((32 * idx) + cd[4] + 36)]
            require ext_code.size(stor1)
            staticcall stor1.0x6352211e with:
                    gas gas_remaining wei
                   args cd[((32 * idx) + cd[4] + 36)]
            mem[(64 * ('cd', 4).length) + ceil32(return_data.size) + 352] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            if ext_call.return_data[12 len 20] != msg.sender:
                revert with 0, 'Not Owner!'
            if block.timestamp <= ext_call.return_data[32]:
                revert with 0, 'Summoner Unavailable!'
            mem[(64 * ('cd', 4).length) + (2 * ceil32(return_data.size)) + 384] = ext_call.return_data[32]
            mem[(64 * ('cd', 4).length) + (2 * ceil32(return_data.size)) + 416] = ext_call.return_data[96]
            mem[(64 * ('cd', 4).length) + (2 * ceil32(return_data.size)) + 448] = t
            mem[(64 * ('cd', 4).length) + (2 * ceil32(return_data.size)) + 480] = block.timestamp
            mem[(64 * ('cd', 4).length) + (2 * ceil32(return_data.size)) + 352] = 128
            t = 0
            while t < 128:
                mem[(64 * ('cd', 4).length) + (2 * ceil32(return_data.size)) + t + 544] = mem[(64 * ('cd', 4).length) + (2 * ceil32(return_data.size)) + t + 384]
                t = t + 32
                continue 
            mem[(64 * ('cd', 4).length) + (2 * ceil32(return_data.size)) + 512] = 128
            _487 = sha3(mem[(64 * ('cd', 4).length) + (2 * ceil32(return_data.size)) + 544 len 128])
            _491 = mem[(64 * ('cd', 4).length) + ceil32(return_data.size) + 288]
            if sha3(mem[(64 * ('cd', 4).length) + (2 * ceil32(return_data.size)) + 544 len 128]) % 4 > -mem[(64 * ('cd', 4).length) + ceil32(return_data.size) + 288] - 1:
                revert with 'NH{q', 17
            if (sha3(mem[(64 * ('cd', 4).length) + (2 * ceil32(return_data.size)) + 544 len 128]) % 4) + mem[(64 * ('cd', 4).length) + ceil32(return_data.size) + 288] and 50 > -1 / (sha3(mem[(64 * ('cd', 4).length) + (2 * ceil32(return_data.size)) + 544 len 128]) % 4) + mem[(64 * ('cd', 4).length) + ceil32(return_data.size) + 288]:
                revert with 'NH{q', 17
            if stor7 > (-50 * sha3(mem[(64 * ('cd', 4).length) + (2 * ceil32(return_data.size)) + 544 len 128]) % 4) + (-50 * mem[(64 * ('cd', 4).length) + ceil32(return_data.size) + 288]) - 1:
                revert with 'NH{q', 17
            if cd[68] > 1:
                revert with 'NH{q', 33
            if cd[68]:
                _509 = mem[(64 * ('cd', 4).length) + ceil32(return_data.size) + 256]
                t = 0
                while t < stor4.length:
                    mem[0] = 4
                    if stor4[t] != _509:
                        if t == -1:
                            revert with 'NH{q', 17
                        t = t + 1
                        continue 
                    if idx >= mem[(32 * ('cd', 4).length) + 128]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + (32 * ('cd', 4).length) + 160] = stor7 + (50 * _487 % 4) + (50 * _491)
                    if s > -stor7 + (-50 * _487 % 4) + (-50 * _491) - 1:
                        revert with 'NH{q', 17
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = s + stor7 + (50 * _487 % 4) + (50 * _491)
                    t = _487
                    continue 
                revert with 0, 'Wrong class for the Heal Action!'
            _510 = mem[(64 * ('cd', 4).length) + ceil32(return_data.size) + 256]
            t = 0
            while t < stor5.length:
                mem[0] = 5
                if stor5[t] != _510:
                    if t == -1:
                        revert with 'NH{q', 17
                    t = t + 1
                    continue 
                if idx >= mem[(32 * ('cd', 4).length) + 128]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + (32 * ('cd', 4).length) + 160] = stor7 + (50 * _487 % 4) + (50 * _491)
                if s > -stor7 + (-50 * _487 % 4) + (-50 * _491) - 1:
                    revert with 'NH{q', 17
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = s + stor7 + (50 * _487 % 4) + (50 * _491)
                t = _487
                continue 
            revert with 0, 'Wrong class for the Attack Action!'
        if cd[68] > 1:
            revert with 'NH{q', 33
        if cd[68]:
            if sub_e5aa0b62 > -s - 1:
                revert with 'NH{q', 17
            sub_e5aa0b62 += s
            if sub_e5aa0b62 > stor3:
                sub_e5aa0b62 = stor3
        else:
            if s <= sub_e5aa0b62:
                if sub_e5aa0b62 < s:
                    revert with 'NH{q', 17
                sub_e5aa0b62 -= s
            else:
                sub_e5aa0b62 = 0
                stor10 = 1
                emit 0x2f3957e6 
        if block.timestamp > -43201:
            revert with 'NH{q', 17
        sub_322a1c8a[address(msg.sender)] = block.timestamp + (12 * 3600)
        mem[(64 * ('cd', 4).length) + 160] = msg.sender
        if cd[68] >= 2:
            revert with 'NH{q', 33
        mem[(64 * ('cd', 4).length) + 192] = cd[68]
        mem[(64 * ('cd', 4).length) + 224] = 160
        mem[(64 * ('cd', 4).length) + 320] = ('cd', 4).length
        require ('cd', 4).length <= 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
        mem[(64 * ('cd', 4).length) + 352 len 32 * ('cd', 4).length] = call.data[cd[4] + 36 len 32 * ('cd', 4).length]
        mem[(64 * ('cd', 4).length) + 256] = (32 * ('cd', 4).length) + 192
        mem[(98 * ('cd', 4).length) + 352] = ('cd', 4).length
        mem[(98 * ('cd', 4).length) + 384 len 32 * ('cd', 4).length] = mem[(32 * ('cd', 4).length) + 160 len 32 * ('cd', 4).length]
    emit 0x647b9049: msg.sender, cd[68], Array(len=('cd', 4).length, data=call.data[cd[4] + 36 len 32 * ('cd', 4).length], mem[(98 * ('cd', 4).length) + 352 len (32 * ('cd', 4).length) + 32]), (32 * ('cd', 4).length) + 192, block.timestamp
}



}
