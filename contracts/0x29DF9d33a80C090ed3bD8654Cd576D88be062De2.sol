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
mapping of uint256 log;

function getLog(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return log[arg1]
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
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    if not ('cd', 4).length:
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
            if idx >= ('cd', 4).length:
                revert with 'NH{q', 50
            require ext_code.size(stor1)
            call stor1.adventure(uint256 arg1) with:
                 gas gas_remaining wei
                args cd[((32 * idx) + cd[4] + 36)]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if block.timestamp <= ext_call.return_data[32]:
                revert with 0, 'Summoner Unavailable!'
            mem[(32 * ('cd', 4).length) + ceil32(return_data.size) + 352] = ext_call.return_data[32]
            mem[(32 * ('cd', 4).length) + ceil32(return_data.size) + 384] = ext_call.return_data[96]
            mem[(32 * ('cd', 4).length) + ceil32(return_data.size) + 416] = t
            mem[(32 * ('cd', 4).length) + ceil32(return_data.size) + 448] = block.timestamp
            t = 0
            while t < 128:
                mem[(32 * ('cd', 4).length) + ceil32(return_data.size) + t + 512] = mem[(32 * ('cd', 4).length) + ceil32(return_data.size) + t + 352]
                t = t + 32
                continue 
            _282 = sha3(mem[(32 * ('cd', 4).length) + ceil32(return_data.size) + 512 len 128])
            if sha3(mem[(32 * ('cd', 4).length) + ceil32(return_data.size) + 512 len 128]) % 4 > -ext_call.return_data[96] - 1:
                revert with 'NH{q', 17
            if (sha3(mem[(32 * ('cd', 4).length) + ceil32(return_data.size) + 512 len 128]) % 4) + ext_call.return_data[96] and 50 > -1 / (sha3(mem[(32 * ('cd', 4).length) + ceil32(return_data.size) + 512 len 128]) % 4) + ext_call.return_data[96]:
                revert with 'NH{q', 17
            if stor7 > (-50 * sha3(mem[(32 * ('cd', 4).length) + ceil32(return_data.size) + 512 len 128]) % 4) + (-50 * ext_call.return_data[96]) - 1:
                revert with 'NH{q', 17
            if cd[68] > 1:
                revert with 'NH{q', 33
            if cd[68]:
                t = 0
                while t < stor4.length:
                    mem[0] = 4
                    if stor4[t] != ext_call.return_data[64]:
                        if t == -1:
                            revert with 'NH{q', 17
                        t = t + 1
                        continue 
                    if idx >= ('cd', 4).length:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + 128] = stor7 + (50 * _282 % 4) + (50 * ext_call.return_data[96])
                    if s > -stor7 + (-50 * _282 % 4) + (-50 * ext_call.return_data[96]) - 1:
                        revert with 'NH{q', 17
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = s + stor7 + (50 * _282 % 4) + (50 * ext_call.return_data[96])
                    t = _282
                    continue 
                revert with 0, 'Wrong class for the Heal Action!'
            t = 0
            while t < stor5.length:
                mem[0] = 5
                if stor5[t] != ext_call.return_data[64]:
                    if t == -1:
                        revert with 'NH{q', 17
                    t = t + 1
                    continue 
                if idx >= ('cd', 4).length:
                    revert with 'NH{q', 50
                mem[(32 * idx) + 128] = stor7 + (50 * _282 % 4) + (50 * ext_call.return_data[96])
                if s > -stor7 + (-50 * _282 % 4) + (-50 * ext_call.return_data[96]) - 1:
                    revert with 'NH{q', 17
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = s + stor7 + (50 * _282 % 4) + (50 * ext_call.return_data[96])
                t = _282
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
        mem[(32 * ('cd', 4).length) + 128] = msg.sender
        if cd[68] >= 2:
            revert with 'NH{q', 33
        mem[(32 * ('cd', 4).length) + 160] = cd[68]
        mem[(32 * ('cd', 4).length) + 192] = 160
        mem[(32 * ('cd', 4).length) + 288] = ('cd', 4).length
        require ('cd', 4).length <= 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
        mem[(32 * ('cd', 4).length) + 320 len 32 * ('cd', 4).length] = call.data[cd[4] + 36 len 32 * ('cd', 4).length]
        mem[(32 * ('cd', 4).length) + 224] = (32 * ('cd', 4).length) + 192
        mem[(64 * ('cd', 4).length) + 320] = ('cd', 4).length
        mem[(64 * ('cd', 4).length) + 352 len 32 * ('cd', 4).length] = mem[128 len 32 * ('cd', 4).length]
    else:
        mem[128 len 32 * ('cd', 4).length] = call.data[calldata.size len 32 * ('cd', 4).length]
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
            if idx >= ('cd', 4).length:
                revert with 'NH{q', 50
            require ext_code.size(stor1)
            call stor1.adventure(uint256 arg1) with:
                 gas gas_remaining wei
                args cd[((32 * idx) + cd[4] + 36)]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if block.timestamp <= ext_call.return_data[32]:
                revert with 0, 'Summoner Unavailable!'
            mem[(32 * ('cd', 4).length) + ceil32(return_data.size) + 352] = ext_call.return_data[32]
            mem[(32 * ('cd', 4).length) + ceil32(return_data.size) + 384] = ext_call.return_data[96]
            mem[(32 * ('cd', 4).length) + ceil32(return_data.size) + 416] = t
            mem[(32 * ('cd', 4).length) + ceil32(return_data.size) + 448] = block.timestamp
            t = 0
            while t < 128:
                mem[(32 * ('cd', 4).length) + ceil32(return_data.size) + t + 512] = mem[(32 * ('cd', 4).length) + ceil32(return_data.size) + t + 352]
                t = t + 32
                continue 
            _285 = sha3(mem[(32 * ('cd', 4).length) + ceil32(return_data.size) + 512 len 128])
            if sha3(mem[(32 * ('cd', 4).length) + ceil32(return_data.size) + 512 len 128]) % 4 > -ext_call.return_data[96] - 1:
                revert with 'NH{q', 17
            if (sha3(mem[(32 * ('cd', 4).length) + ceil32(return_data.size) + 512 len 128]) % 4) + ext_call.return_data[96] and 50 > -1 / (sha3(mem[(32 * ('cd', 4).length) + ceil32(return_data.size) + 512 len 128]) % 4) + ext_call.return_data[96]:
                revert with 'NH{q', 17
            if stor7 > (-50 * sha3(mem[(32 * ('cd', 4).length) + ceil32(return_data.size) + 512 len 128]) % 4) + (-50 * ext_call.return_data[96]) - 1:
                revert with 'NH{q', 17
            if cd[68] > 1:
                revert with 'NH{q', 33
            if cd[68]:
                t = 0
                while t < stor4.length:
                    mem[0] = 4
                    if stor4[t] != ext_call.return_data[64]:
                        if t == -1:
                            revert with 'NH{q', 17
                        t = t + 1
                        continue 
                    if idx >= ('cd', 4).length:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + 128] = stor7 + (50 * _285 % 4) + (50 * ext_call.return_data[96])
                    if s > -stor7 + (-50 * _285 % 4) + (-50 * ext_call.return_data[96]) - 1:
                        revert with 'NH{q', 17
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = s + stor7 + (50 * _285 % 4) + (50 * ext_call.return_data[96])
                    t = _285
                    continue 
                revert with 0, 'Wrong class for the Heal Action!'
            t = 0
            while t < stor5.length:
                mem[0] = 5
                if stor5[t] != ext_call.return_data[64]:
                    if t == -1:
                        revert with 'NH{q', 17
                    t = t + 1
                    continue 
                if idx >= ('cd', 4).length:
                    revert with 'NH{q', 50
                mem[(32 * idx) + 128] = stor7 + (50 * _285 % 4) + (50 * ext_call.return_data[96])
                if s > -stor7 + (-50 * _285 % 4) + (-50 * ext_call.return_data[96]) - 1:
                    revert with 'NH{q', 17
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = s + stor7 + (50 * _285 % 4) + (50 * ext_call.return_data[96])
                t = _285
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
        mem[(32 * ('cd', 4).length) + 128] = msg.sender
        if cd[68] >= 2:
            revert with 'NH{q', 33
        mem[(32 * ('cd', 4).length) + 160] = cd[68]
        mem[(32 * ('cd', 4).length) + 192] = 160
        mem[(32 * ('cd', 4).length) + 288] = ('cd', 4).length
        require ('cd', 4).length <= 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
        mem[(32 * ('cd', 4).length) + 320 len 32 * ('cd', 4).length] = call.data[cd[4] + 36 len 32 * ('cd', 4).length]
        mem[(32 * ('cd', 4).length) + 224] = (32 * ('cd', 4).length) + 192
        mem[(64 * ('cd', 4).length) + 320] = ('cd', 4).length
        mem[(64 * ('cd', 4).length) + 352 len 32 * ('cd', 4).length] = call.data[calldata.size len 32 * ('cd', 4).length]
    mem[(32 * ('cd', 4).length) + 256] = block.timestamp
    emit 0x647b9049: mem[(32 * ('cd', 4).length) + 128 len (64 * ('cd', 4).length) + 224]
}



}
