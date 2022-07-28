contract main {




// =====================  Runtime code  =====================


#
#  - sub_81137c21(?)
#  - sub_8c73fff3(?)
#  - sub_9fcf8b3d(?)
#  - sub_abf15750(?)
#  - sub_c4bb59e7(?)
#  - sub_d3b25006(?)
#
uint256 sum;

function sum() payable {
    return sum
}

function _fallback() payable {
    revert
}

function setBase(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    sum = arg1
}

function sub_b50f1ec3(?) payable {
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
    s = 0
    t = 0
    while uint16(idx) < ('cd', 4).length:
        if uint16(idx) >= mem[96]:
            revert with 'NH{q', 50
        _73 = mem[(32 * uint16(idx)) + 128]
        mem[mem[64] + 4] = mem[(32 * uint16(idx)) + 128]
        require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
        staticcall 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.claimable(uint256 arg1) with:
                gas gas_remaining wei
               args _73
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _76 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_76] == mem[_76]
        if uint16(idx) >= mem[96]:
            revert with 'NH{q', 50
        if mem[_76] <= 0:
            _82 = mem[(32 * uint16(idx)) + 128]
            mem[mem[64] + 4] = mem[(32 * uint16(idx)) + 128]
            require ext_code.size(0x2a0f1cb17680161cf255348ddfdee94ea8ca196a)
            staticcall 0x2a0f1cb17680161cf255348ddfdee94ea8ca196a.adventurers_log(uint256 arg1) with:
                    gas gas_remaining wei
                   args _82
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _90 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_90] == mem[_90]
            if block.timestamp <= mem[_90]:
                if uint16(idx) == 65535:
                    revert with 'NH{q', 17
                idx = uint16(idx) + 1
                s = s
                t = t
                continue 
            if uint16(idx) >= mem[96]:
                revert with 'NH{q', 50
            if uint16(s) >= mem[96]:
                revert with 'NH{q', 50
            mem[(32 * uint16(s)) + 128] = mem[(32 * uint16(idx)) + 128]
            if uint16(s) == 65535:
                revert with 'NH{q', 17
            if uint16(idx) == 65535:
                revert with 'NH{q', 17
            idx = uint16(idx) + 1
            s = uint16(s) + 1
            t = t
            continue 
        if uint16(t) >= mem[96]:
            revert with 'NH{q', 50
        mem[(32 * uint16(t)) + 128] = mem[(32 * uint16(idx)) + 128]
        if uint16(t) == 65535:
            revert with 'NH{q', 17
        if uint16(idx) >= mem[96]:
            revert with 'NH{q', 50
        _91 = mem[(32 * uint16(idx)) + 128]
        mem[mem[64] + 4] = mem[(32 * uint16(idx)) + 128]
        require ext_code.size(0x2a0f1cb17680161cf255348ddfdee94ea8ca196a)
        staticcall 0x2a0f1cb17680161cf255348ddfdee94ea8ca196a.adventurers_log(uint256 arg1) with:
                gas gas_remaining wei
               args _91
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _96 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_96] == mem[_96]
        if block.timestamp <= mem[_96]:
            if uint16(idx) == 65535:
                revert with 'NH{q', 17
            idx = uint16(idx) + 1
            s = s
            t = uint16(t) + 1
            continue 
        if uint16(idx) >= mem[96]:
            revert with 'NH{q', 50
        if uint16(s) >= mem[96]:
            revert with 'NH{q', 50
        mem[(32 * uint16(s)) + 128] = mem[(32 * uint16(idx)) + 128]
        if uint16(s) == 65535:
            revert with 'NH{q', 17
        if uint16(idx) == 65535:
            revert with 'NH{q', 17
        idx = uint16(idx) + 1
        s = uint16(s) + 1
        t = uint16(t) + 1
        continue 
    mem[mem[64]] = uint16(t)
    mem[mem[64] + 32] = uint16(s)
    mem[mem[64] + 64] = 128
    _77 = mem[96]
    mem[mem[64] + 128] = mem[96]
    mem[mem[64] + 160 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
    mem[mem[64] + 96] = (32 * mem[96]) + 160
    mem[mem[64] + (32 * _77) + 160] = mem[96]
    mem[mem[64] + (32 * _77) + 192 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
    return t << 240, s << 240, 128, (32 * mem[96]) + 160, mem[mem[64] + 128 len (32 * _77) + (32 * mem[96]) + 64]
}

function sub_de2eaa3f(?) payable {
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
    s = 0
    s = 0
    s = 0
    s = 0
    t = 0
    while uint16(idx) < ('cd', 4).length:
        if uint16(idx) >= mem[96]:
            revert with 'NH{q', 50
        require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
        staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.summoner(uint256 arg1) with:
                gas gas_remaining wei
               args mem[(32 * uint16(idx)) + 128]
        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _74 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 128
        _76 = mem[_74]
        require mem[_74] == mem[_74]
        _78 = mem[_74 + 32]
        require mem[_74 + 32] == mem[_74 + 32]
        _80 = mem[_74 + 64]
        require mem[_74 + 64] == mem[_74 + 64]
        require mem[_74 + 96] == mem[_74 + 96]
        if block.timestamp <= mem[_74]:
            mem[mem[64] + 4] = mem[_74 + 64]
            require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
            staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.xp_required(uint256 arg1) with:
                    gas gas_remaining wei
                   args _80
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _89 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_89] == mem[_89]
            if _78 < mem[_89]:
                if uint16(idx) == 65535:
                    revert with 'NH{q', 17
                idx = uint16(idx) + 1
                s = _80
                s = _78
                s = _76
                s = s
                t = t
                continue 
            if uint16(idx) >= mem[96]:
                revert with 'NH{q', 50
            if uint16(s) >= mem[96]:
                revert with 'NH{q', 50
            mem[(32 * uint16(s)) + 128] = mem[(32 * uint16(idx)) + 128]
            if uint16(s) == 65535:
                revert with 'NH{q', 17
            if uint16(idx) == 65535:
                revert with 'NH{q', 17
            idx = uint16(idx) + 1
            s = _80
            s = _78
            s = _76
            s = uint16(s) + 1
            t = t
            continue 
        if uint16(idx) >= mem[96]:
            revert with 'NH{q', 50
        if uint16(t) >= mem[96]:
            revert with 'NH{q', 50
        mem[(32 * uint16(t)) + 128] = mem[(32 * uint16(idx)) + 128]
        if uint16(t) == 65535:
            revert with 'NH{q', 17
        mem[mem[64] + 4] = _80
        require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
        staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.xp_required(uint256 arg1) with:
                gas gas_remaining wei
               args _80
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _93 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_93] == mem[_93]
        if _78 < mem[_93]:
            if uint16(idx) == 65535:
                revert with 'NH{q', 17
            idx = uint16(idx) + 1
            s = _80
            s = _78
            s = _76
            s = s
            t = uint16(t) + 1
            continue 
        if uint16(idx) >= mem[96]:
            revert with 'NH{q', 50
        if uint16(s) >= mem[96]:
            revert with 'NH{q', 50
        mem[(32 * uint16(s)) + 128] = mem[(32 * uint16(idx)) + 128]
        if uint16(s) == 65535:
            revert with 'NH{q', 17
        if uint16(idx) == 65535:
            revert with 'NH{q', 17
        idx = uint16(idx) + 1
        s = _80
        s = _78
        s = _76
        s = uint16(s) + 1
        t = uint16(t) + 1
        continue 
    mem[mem[64]] = uint16(t)
    mem[mem[64] + 32] = uint16(s)
    mem[mem[64] + 64] = 128
    _75 = mem[96]
    mem[mem[64] + 128] = mem[96]
    mem[mem[64] + 160 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
    mem[mem[64] + 96] = (32 * mem[96]) + 160
    mem[mem[64] + (32 * _75) + 160] = mem[96]
    mem[mem[64] + (32 * _75) + 192 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
    return t << 240, s << 240, 128, mem[mem[64] + 96 len (32 * _75) + (32 * mem[96]) + 96]
}



}
