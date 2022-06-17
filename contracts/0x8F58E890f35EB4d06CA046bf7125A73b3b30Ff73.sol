contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function level_up() payable {
    mem[164 len 64] = 2472366775, 0, 0, mem[164 len 28]
    call 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.mem[164 len 4] with:
         gas gas_remaining wei
        args mem[168]
    require bool(ext_call.success) == 1
    if not return_data.size:
        emit 0xdfe6d9c6: 2050841, bool(ext_call.success), 96, 36, 2472366775, 0, 0, 0 >> 32, 0, msg.sender
    else:
        emit 0xdfe6d9c6: 2050841, bool(ext_call.success), Array(len=return_data.size, data=ext_call.return_data[0 len return_data.size]), msg.sender
}

function sub_ea5688e1(?) payable {
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
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        require cd[s] == cd[s]
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= mem[96]:
            revert with 'NH{q', 50
        _70 = mem[(32 * idx) + 128]
        _71 = mem[64]
        mem[mem[64] + 36] = mem[(32 * idx) + 128]
        _72 = mem[64]
        mem[mem[64]] = 36
        mem[64] = mem[64] + 68
        mem[_72 + 32] = mem[_72 + 36 len 28] or 0xb00b52f100000000000000000000000000000000000000000000000000000000
        _75 = mem[_72]
        s = 0
        while s < _75:
            mem[_71 + s + 68] = mem[_72 + s + 32]
            s = s + 32
            continue 
        if ceil32(_75) <= _75:
            call 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.mem[mem[64] len 4] with:
                 gas 8000 wei
                args mem[mem[64] + 4 len _71 + _75 + -mem[64] + 64]
            if not return_data.size:
                require bool(ext_call.success) == 1
                mem[mem[64]] = _70
                mem[mem[64] + 32] = bool(ext_call.success)
                mem[mem[64] + 64] = 96
                _110 = mem[96]
                mem[mem[64] + 96] = mem[96]
                s = 0
                while s < _110:
                    mem[mem[64] + s + 128] = mem[s + 128]
                    s = s + 32
                    continue 
                if ceil32(_110) > _110:
                    mem[mem[64] + _110 + 128] = 0
                emit 0xdfe6d9c6: _70, bool(ext_call.success), 96, mem[mem[64] + 96 len ceil32(_110) + 32], msg.sender
            else:
                _103 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_103] = return_data.size
                mem[_103 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                require bool(ext_call.success) == 1
                mem[mem[64]] = _70
                mem[mem[64] + 32] = bool(ext_call.success)
                mem[mem[64] + 64] = 96
                mem[mem[64] + 96] = return_data.size
                s = 0
                while s < return_data.size:
                    mem[mem[64] + s + 128] = mem[_103 + s + 32]
                    s = s + 32
                    continue 
                if ceil32(return_data.size) > return_data.size:
                    mem[mem[64] + return_data.size + 128] = 0
                emit 0xdfe6d9c6: _70, bool(ext_call.success), Array(len=return_data.size, data=mem[mem[64] + 128 len ceil32(return_data.size)]), msg.sender
        else:
            mem[_71 + _75 + 68] = 0
            call 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.mem[mem[64] len 4] with:
                 gas 8000 wei
                args mem[mem[64] + 4 len _71 + _75 + -mem[64] + 64]
            if not return_data.size:
                require bool(ext_call.success) == 1
                mem[mem[64]] = _70
                mem[mem[64] + 32] = bool(ext_call.success)
                mem[mem[64] + 64] = 96
                _112 = mem[96]
                mem[mem[64] + 96] = mem[96]
                s = 0
                while s < _112:
                    mem[mem[64] + s + 128] = mem[s + 128]
                    s = s + 32
                    continue 
                if ceil32(_112) > _112:
                    mem[mem[64] + _112 + 128] = 0
                emit 0xdfe6d9c6: _70, bool(ext_call.success), 96, mem[mem[64] + 96 len ceil32(_112) + 32], msg.sender
            else:
                _105 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_105] = return_data.size
                mem[_105 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                require bool(ext_call.success) == 1
                mem[mem[64]] = _70
                mem[mem[64] + 32] = bool(ext_call.success)
                mem[mem[64] + 64] = 96
                mem[mem[64] + 96] = return_data.size
                s = 0
                while s < return_data.size:
                    mem[mem[64] + s + 128] = mem[_105 + s + 32]
                    s = s + 32
                    continue 
                if ceil32(return_data.size) > return_data.size:
                    mem[mem[64] + return_data.size + 128] = 0
                emit 0xdfe6d9c6: _70, bool(ext_call.success), Array(len=return_data.size, data=mem[mem[64] + 128 len ceil32(return_data.size)]), msg.sender
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}



}
