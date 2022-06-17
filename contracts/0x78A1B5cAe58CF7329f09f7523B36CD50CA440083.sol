contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function sub_415f55c5(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    s = 0
    while idx < ('cd', 4).length:
        mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
        require ext_code.size(0x2a0f1cb17680161cf255348ddfdee94ea8ca196a)
        staticcall 0x2a0f1cb17680161cf255348ddfdee94ea8ca196a.adventurers_log(uint256 arg1) with:
                gas gas_remaining wei
               args cd[((32 * idx) + cd[4] + 36)]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _11 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if block.timestamp <= mem[_11]:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s
            continue 
        if s == -1:
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s + 1
        continue 
    return s
}

function sub_6f24da4f(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    s = 0
    while idx < ('cd', 4).length:
        mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
        require ext_code.size(0xfe000000000000000000000000ce761d788df608bd21bdd59d6f4b54b2e27f25)
        staticcall 0xfe000000000000000000000000ce761d788df608bd21bdd59d6f4b54b2e27f25.adventurers_log(uint256 arg1) with:
                gas gas_remaining wei
               args cd[((32 * idx) + cd[4] + 36)]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _15 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if block.timestamp <= mem[_15]:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s
            continue 
        if s == -1:
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s + 1
        continue 
    return s
}

function sub_9df90666(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    s = 0
    while idx < ('cd', 4).length:
        mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
        require ext_code.size(0xfe000000000000000000000000ce761d788df608bd21bdd59d6f4b54b2e27f25)
        staticcall 0xfe000000000000000000000000ce761d788df608bd21bdd59d6f4b54b2e27f25.level(uint256 arg1) with:
                gas gas_remaining wei
               args cd[((32 * idx) + cd[4] + 36)]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _25 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _26 = mem[_25]
        mem[mem[64] + 4] = mem[_25]
        require ext_code.size(0xfe000000000000000000000000ce761d788df608bd21bdd59d6f4b54b2e27f25)
        staticcall 0xfe000000000000000000000000ce761d788df608bd21bdd59d6f4b54b2e27f25.xp_required(uint256 arg1) with:
                gas gas_remaining wei
               args _26
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _29 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _30 = mem[_29]
        if idx >= ('cd', 4).length:
            revert with 0, 50
        mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
        require ext_code.size(0xfe000000000000000000000000ce761d788df608bd21bdd59d6f4b54b2e27f25)
        staticcall 0xfe000000000000000000000000ce761d788df608bd21bdd59d6f4b54b2e27f25.xp(uint256 arg1) with:
                gas gas_remaining wei
               args cd[((32 * idx) + cd[4] + 36)]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _35 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if mem[_35] < _30:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s
            continue 
        if s == -1:
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s + 1
        continue 
    return s
}

function sub_4f721e1c(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    s = 0
    while idx < ('cd', 4).length:
        mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
        require ext_code.size(0xfe000000000000000000000000ce761d788df608bd21bdd59d6f4b54b2e27f25)
        staticcall 0xfe000000000000000000000000ce761d788df608bd21bdd59d6f4b54b2e27f25.level(uint256 arg1) with:
                gas gas_remaining wei
               args cd[((32 * idx) + cd[4] + 36)]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _25 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if mem[_25] < 2:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s
            continue 
        if idx >= ('cd', 4).length:
            revert with 0, 50
        mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
        require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
        staticcall 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.claimed(uint256 arg1) with:
                gas gas_remaining wei
               args cd[((32 * idx) + cd[4] + 36)]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _29 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _30 = mem[_29]
        if idx >= ('cd', 4).length:
            revert with 0, 50
        mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
        require ext_code.size(0xfe000000000000000000000000ce761d788df608bd21bdd59d6f4b54b2e27f25)
        staticcall 0xfe000000000000000000000000ce761d788df608bd21bdd59d6f4b54b2e27f25.level(uint256 arg1) with:
                gas gas_remaining wei
               args cd[((32 * idx) + cd[4] + 36)]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _35 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if mem[_35] <= _30:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s
            continue 
        if s == -1:
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s + 1
        continue 
    return s
}

function sub_26689dbb(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    s = 0
    while idx < ('cd', 4).length:
        mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
        require ext_code.size(0x2a0f1cb17680161cf255348ddfdee94ea8ca196a)
        staticcall 0x2a0f1cb17680161cf255348ddfdee94ea8ca196a.adventurers_log(uint256 arg1) with:
                gas gas_remaining wei
               args cd[((32 * idx) + cd[4] + 36)]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _18 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if block.timestamp >= mem[_18]:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s
            continue 
        if s == -1:
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s + 1
        continue 
    if s > test266151307():
        revert with 0, 65
    _15 = mem[64]
    mem[mem[64]] = s
    mem[64] = mem[64] + (32 * s) + 32
    if not s:
        idx = 0
        s = 0
        while idx < ('cd', 4).length:
            mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
            require ext_code.size(0x2a0f1cb17680161cf255348ddfdee94ea8ca196a)
            staticcall 0x2a0f1cb17680161cf255348ddfdee94ea8ca196a.adventurers_log(uint256 arg1) with:
                    gas gas_remaining wei
                   args cd[((32 * idx) + cd[4] + 36)]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _47 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if block.timestamp >= mem[_47]:
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s
                continue 
            if idx >= ('cd', 4).length:
                revert with 0, 50
            if s >= mem[_15]:
                revert with 0, 50
            mem[(32 * s) + _15 + 32] = cd[((32 * idx) + cd[4] + 36)]
            if s == -1:
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + 1
            continue 
        mem[mem[64]] = 32
        _42 = mem[_15]
        mem[mem[64] + 32] = mem[_15]
        mem[mem[64] + 64 len 32 * _42] = mem[_15 + 32 len 32 * _42]
        return 32, mem[mem[64] + 32 len (32 * _42) + 32]
    mem[_15 + 32 len 32 * s] = call.data[calldata.size len 32 * s]
    idx = 0
    s = 0
    while idx < ('cd', 4).length:
        mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
        require ext_code.size(0x2a0f1cb17680161cf255348ddfdee94ea8ca196a)
        staticcall 0x2a0f1cb17680161cf255348ddfdee94ea8ca196a.adventurers_log(uint256 arg1) with:
                gas gas_remaining wei
               args cd[((32 * idx) + cd[4] + 36)]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _49 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if block.timestamp >= mem[_49]:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s
            continue 
        if idx >= ('cd', 4).length:
            revert with 0, 50
        if s >= mem[_15]:
            revert with 0, 50
        mem[(32 * s) + _15 + 32] = cd[((32 * idx) + cd[4] + 36)]
        if s == -1:
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s + 1
        continue 
    mem[mem[64]] = 32
    _44 = mem[_15]
    mem[mem[64] + 32] = mem[_15]
    mem[mem[64] + 64 len 32 * _44] = mem[_15 + 32 len 32 * _44]
    return 32, mem[mem[64] + 32 len (32 * _44) + 32]
}

function sub_3166aab6(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    s = 0
    while idx < ('cd', 4).length:
        mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
        require ext_code.size(0x2a0f1cb17680161cf255348ddfdee94ea8ca196a)
        staticcall 0x2a0f1cb17680161cf255348ddfdee94ea8ca196a.adventurers_log(uint256 arg1) with:
                gas gas_remaining wei
               args cd[((32 * idx) + cd[4] + 36)]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _18 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if block.timestamp <= mem[_18]:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s
            continue 
        if s == -1:
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s + 1
        continue 
    if s > test266151307():
        revert with 0, 65
    _15 = mem[64]
    mem[mem[64]] = s
    mem[64] = mem[64] + (32 * s) + 32
    if not s:
        idx = 0
        s = 0
        while idx < ('cd', 4).length:
            mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
            require ext_code.size(0x2a0f1cb17680161cf255348ddfdee94ea8ca196a)
            staticcall 0x2a0f1cb17680161cf255348ddfdee94ea8ca196a.adventurers_log(uint256 arg1) with:
                    gas gas_remaining wei
                   args cd[((32 * idx) + cd[4] + 36)]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _47 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if block.timestamp <= mem[_47]:
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s
                continue 
            if idx >= ('cd', 4).length:
                revert with 0, 50
            if s >= mem[_15]:
                revert with 0, 50
            mem[(32 * s) + _15 + 32] = cd[((32 * idx) + cd[4] + 36)]
            if s == -1:
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + 1
            continue 
        mem[mem[64]] = 32
        _42 = mem[_15]
        mem[mem[64] + 32] = mem[_15]
        mem[mem[64] + 64 len 32 * _42] = mem[_15 + 32 len 32 * _42]
        return 32, mem[mem[64] + 32 len (32 * _42) + 32]
    mem[_15 + 32 len 32 * s] = call.data[calldata.size len 32 * s]
    idx = 0
    s = 0
    while idx < ('cd', 4).length:
        mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
        require ext_code.size(0x2a0f1cb17680161cf255348ddfdee94ea8ca196a)
        staticcall 0x2a0f1cb17680161cf255348ddfdee94ea8ca196a.adventurers_log(uint256 arg1) with:
                gas gas_remaining wei
               args cd[((32 * idx) + cd[4] + 36)]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _49 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if block.timestamp <= mem[_49]:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s
            continue 
        if idx >= ('cd', 4).length:
            revert with 0, 50
        if s >= mem[_15]:
            revert with 0, 50
        mem[(32 * s) + _15 + 32] = cd[((32 * idx) + cd[4] + 36)]
        if s == -1:
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s + 1
        continue 
    mem[mem[64]] = 32
    _44 = mem[_15]
    mem[mem[64] + 32] = mem[_15]
    mem[mem[64] + 64 len 32 * _44] = mem[_15 + 32 len 32 * _44]
    return 32, mem[mem[64] + 32 len (32 * _44) + 32]
}

function sub_ac4fd404(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    s = 0
    while idx < ('cd', 4).length:
        mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
        require ext_code.size(0xfe000000000000000000000000ce761d788df608bd21bdd59d6f4b54b2e27f25)
        staticcall 0xfe000000000000000000000000ce761d788df608bd21bdd59d6f4b54b2e27f25.adventurers_log(uint256 arg1) with:
                gas gas_remaining wei
               args cd[((32 * idx) + cd[4] + 36)]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _26 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if block.timestamp >= mem[_26]:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s
            continue 
        if s == -1:
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s + 1
        continue 
    if s > test266151307():
        revert with 0, 65
    _21 = mem[64]
    mem[mem[64]] = s
    mem[64] = mem[64] + (32 * s) + 32
    if not s:
        idx = 0
        s = 0
        while idx < ('cd', 4).length:
            mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
            require ext_code.size(0xfe000000000000000000000000ce761d788df608bd21bdd59d6f4b54b2e27f25)
            staticcall 0xfe000000000000000000000000ce761d788df608bd21bdd59d6f4b54b2e27f25.adventurers_log(uint256 arg1) with:
                    gas gas_remaining wei
                   args cd[((32 * idx) + cd[4] + 36)]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _61 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if block.timestamp >= mem[_61]:
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s
                continue 
            if idx >= ('cd', 4).length:
                revert with 0, 50
            if s >= mem[_21]:
                revert with 0, 50
            mem[(32 * s) + _21 + 32] = cd[((32 * idx) + cd[4] + 36)]
            if s == -1:
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + 1
            continue 
        mem[mem[64]] = 32
        _56 = mem[_21]
        mem[mem[64] + 32] = mem[_21]
        mem[mem[64] + 64 len 32 * _56] = mem[_21 + 32 len 32 * _56]
        return 32, mem[mem[64] + 32 len (32 * _56) + 32]
    mem[_21 + 32 len 32 * s] = call.data[calldata.size len 32 * s]
    idx = 0
    s = 0
    while idx < ('cd', 4).length:
        mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
        require ext_code.size(0xfe000000000000000000000000ce761d788df608bd21bdd59d6f4b54b2e27f25)
        staticcall 0xfe000000000000000000000000ce761d788df608bd21bdd59d6f4b54b2e27f25.adventurers_log(uint256 arg1) with:
                gas gas_remaining wei
               args cd[((32 * idx) + cd[4] + 36)]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _63 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if block.timestamp >= mem[_63]:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s
            continue 
        if idx >= ('cd', 4).length:
            revert with 0, 50
        if s >= mem[_21]:
            revert with 0, 50
        mem[(32 * s) + _21 + 32] = cd[((32 * idx) + cd[4] + 36)]
        if s == -1:
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s + 1
        continue 
    mem[mem[64]] = 32
    _58 = mem[_21]
    mem[mem[64] + 32] = mem[_21]
    mem[mem[64] + 64 len 32 * _58] = mem[_21 + 32 len 32 * _58]
    return 32, mem[mem[64] + 32 len (32 * _58) + 32]
}

function sub_f6fae615(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    s = 0
    while idx < ('cd', 4).length:
        mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
        require ext_code.size(0xfe000000000000000000000000ce761d788df608bd21bdd59d6f4b54b2e27f25)
        staticcall 0xfe000000000000000000000000ce761d788df608bd21bdd59d6f4b54b2e27f25.adventurers_log(uint256 arg1) with:
                gas gas_remaining wei
               args cd[((32 * idx) + cd[4] + 36)]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _26 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if block.timestamp <= mem[_26]:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s
            continue 
        if s == -1:
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s + 1
        continue 
    if s > test266151307():
        revert with 0, 65
    _21 = mem[64]
    mem[mem[64]] = s
    mem[64] = mem[64] + (32 * s) + 32
    if not s:
        idx = 0
        s = 0
        while idx < ('cd', 4).length:
            mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
            require ext_code.size(0xfe000000000000000000000000ce761d788df608bd21bdd59d6f4b54b2e27f25)
            staticcall 0xfe000000000000000000000000ce761d788df608bd21bdd59d6f4b54b2e27f25.adventurers_log(uint256 arg1) with:
                    gas gas_remaining wei
                   args cd[((32 * idx) + cd[4] + 36)]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _61 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if block.timestamp <= mem[_61]:
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s
                continue 
            if idx >= ('cd', 4).length:
                revert with 0, 50
            if s >= mem[_21]:
                revert with 0, 50
            mem[(32 * s) + _21 + 32] = cd[((32 * idx) + cd[4] + 36)]
            if s == -1:
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + 1
            continue 
        mem[mem[64]] = 32
        _56 = mem[_21]
        mem[mem[64] + 32] = mem[_21]
        mem[mem[64] + 64 len 32 * _56] = mem[_21 + 32 len 32 * _56]
        return 32, mem[mem[64] + 32 len (32 * _56) + 32]
    mem[_21 + 32 len 32 * s] = call.data[calldata.size len 32 * s]
    idx = 0
    s = 0
    while idx < ('cd', 4).length:
        mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
        require ext_code.size(0xfe000000000000000000000000ce761d788df608bd21bdd59d6f4b54b2e27f25)
        staticcall 0xfe000000000000000000000000ce761d788df608bd21bdd59d6f4b54b2e27f25.adventurers_log(uint256 arg1) with:
                gas gas_remaining wei
               args cd[((32 * idx) + cd[4] + 36)]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _63 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if block.timestamp <= mem[_63]:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s
            continue 
        if idx >= ('cd', 4).length:
            revert with 0, 50
        if s >= mem[_21]:
            revert with 0, 50
        mem[(32 * s) + _21 + 32] = cd[((32 * idx) + cd[4] + 36)]
        if s == -1:
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s + 1
        continue 
    mem[mem[64]] = 32
    _58 = mem[_21]
    mem[mem[64] + 32] = mem[_21]
    mem[mem[64] + 64 len 32 * _58] = mem[_21 + 32 len 32 * _58]
    return 32, mem[mem[64] + 32 len (32 * _58) + 32]
}

function sub_f4a5da83(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    s = 0
    while idx < ('cd', 4).length:
        mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
        require ext_code.size(0xfe000000000000000000000000ce761d788df608bd21bdd59d6f4b54b2e27f25)
        staticcall 0xfe000000000000000000000000ce761d788df608bd21bdd59d6f4b54b2e27f25.level(uint256 arg1) with:
                gas gas_remaining wei
               args cd[((32 * idx) + cd[4] + 36)]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _46 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _55 = mem[_46]
        mem[mem[64] + 4] = mem[_46]
        require ext_code.size(0xfe000000000000000000000000ce761d788df608bd21bdd59d6f4b54b2e27f25)
        staticcall 0xfe000000000000000000000000ce761d788df608bd21bdd59d6f4b54b2e27f25.xp_required(uint256 arg1) with:
                gas gas_remaining wei
               args _55
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _67 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _72 = mem[_67]
        if idx >= ('cd', 4).length:
            revert with 0, 50
        mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
        require ext_code.size(0xfe000000000000000000000000ce761d788df608bd21bdd59d6f4b54b2e27f25)
        staticcall 0xfe000000000000000000000000ce761d788df608bd21bdd59d6f4b54b2e27f25.xp(uint256 arg1) with:
                gas gas_remaining wei
               args cd[((32 * idx) + cd[4] + 36)]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _84 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if mem[_84] < _72:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s
            continue 
        if s == -1:
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s + 1
        continue 
    if s > test266151307():
        revert with 0, 65
    _41 = mem[64]
    mem[mem[64]] = s
    mem[64] = mem[64] + (32 * s) + 32
    if not s:
        idx = 0
        s = 0
        while idx < ('cd', 4).length:
            mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
            require ext_code.size(0xfe000000000000000000000000ce761d788df608bd21bdd59d6f4b54b2e27f25)
            staticcall 0xfe000000000000000000000000ce761d788df608bd21bdd59d6f4b54b2e27f25.level(uint256 arg1) with:
                    gas gas_remaining wei
                   args cd[((32 * idx) + cd[4] + 36)]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _111 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _116 = mem[_111]
            mem[mem[64] + 4] = mem[_111]
            require ext_code.size(0xfe000000000000000000000000ce761d788df608bd21bdd59d6f4b54b2e27f25)
            staticcall 0xfe000000000000000000000000ce761d788df608bd21bdd59d6f4b54b2e27f25.xp_required(uint256 arg1) with:
                    gas gas_remaining wei
                   args _116
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _122 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _124 = mem[_122]
            if idx >= ('cd', 4).length:
                revert with 0, 50
            mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
            require ext_code.size(0xfe000000000000000000000000ce761d788df608bd21bdd59d6f4b54b2e27f25)
            staticcall 0xfe000000000000000000000000ce761d788df608bd21bdd59d6f4b54b2e27f25.xp(uint256 arg1) with:
                    gas gas_remaining wei
                   args cd[((32 * idx) + cd[4] + 36)]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _134 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if mem[_134] < _124:
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s
                continue 
            if idx >= ('cd', 4).length:
                revert with 0, 50
            if s >= mem[_41]:
                revert with 0, 50
            mem[(32 * s) + _41 + 32] = cd[((32 * idx) + cd[4] + 36)]
            if s == -1:
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + 1
            continue 
        mem[mem[64]] = 32
        _106 = mem[_41]
        mem[mem[64] + 32] = mem[_41]
        mem[mem[64] + 64 len 32 * _106] = mem[_41 + 32 len 32 * _106]
        return 32, mem[mem[64] + 32 len (32 * _106) + 32]
    mem[_41 + 32 len 32 * s] = call.data[calldata.size len 32 * s]
    idx = 0
    s = 0
    while idx < ('cd', 4).length:
        mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
        require ext_code.size(0xfe000000000000000000000000ce761d788df608bd21bdd59d6f4b54b2e27f25)
        staticcall 0xfe000000000000000000000000ce761d788df608bd21bdd59d6f4b54b2e27f25.level(uint256 arg1) with:
                gas gas_remaining wei
               args cd[((32 * idx) + cd[4] + 36)]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _113 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _117 = mem[_113]
        mem[mem[64] + 4] = mem[_113]
        require ext_code.size(0xfe000000000000000000000000ce761d788df608bd21bdd59d6f4b54b2e27f25)
        staticcall 0xfe000000000000000000000000ce761d788df608bd21bdd59d6f4b54b2e27f25.xp_required(uint256 arg1) with:
                gas gas_remaining wei
               args _117
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _123 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _125 = mem[_123]
        if idx >= ('cd', 4).length:
            revert with 0, 50
        mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
        require ext_code.size(0xfe000000000000000000000000ce761d788df608bd21bdd59d6f4b54b2e27f25)
        staticcall 0xfe000000000000000000000000ce761d788df608bd21bdd59d6f4b54b2e27f25.xp(uint256 arg1) with:
                gas gas_remaining wei
               args cd[((32 * idx) + cd[4] + 36)]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _135 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if mem[_135] < _125:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s
            continue 
        if idx >= ('cd', 4).length:
            revert with 0, 50
        if s >= mem[_41]:
            revert with 0, 50
        mem[(32 * s) + _41 + 32] = cd[((32 * idx) + cd[4] + 36)]
        if s == -1:
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s + 1
        continue 
    mem[mem[64]] = 32
    _108 = mem[_41]
    mem[mem[64] + 32] = mem[_41]
    mem[mem[64] + 64 len 32 * _108] = mem[_41 + 32 len 32 * _108]
    return 32, mem[mem[64] + 32 len (32 * _108) + 32]
}

function sub_287f7e43(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    s = 0
    while idx < ('cd', 4).length:
        mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
        require ext_code.size(0xfe000000000000000000000000ce761d788df608bd21bdd59d6f4b54b2e27f25)
        staticcall 0xfe000000000000000000000000ce761d788df608bd21bdd59d6f4b54b2e27f25.level(uint256 arg1) with:
                gas gas_remaining wei
               args cd[((32 * idx) + cd[4] + 36)]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _46 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if mem[_46] < 2:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s
            continue 
        if idx >= ('cd', 4).length:
            revert with 0, 50
        mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
        require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
        staticcall 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.claimed(uint256 arg1) with:
                gas gas_remaining wei
               args cd[((32 * idx) + cd[4] + 36)]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _68 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _72 = mem[_68]
        if idx >= ('cd', 4).length:
            revert with 0, 50
        mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
        require ext_code.size(0xfe000000000000000000000000ce761d788df608bd21bdd59d6f4b54b2e27f25)
        staticcall 0xfe000000000000000000000000ce761d788df608bd21bdd59d6f4b54b2e27f25.level(uint256 arg1) with:
                gas gas_remaining wei
               args cd[((32 * idx) + cd[4] + 36)]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _84 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if mem[_84] <= _72:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s
            continue 
        if s == -1:
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s + 1
        continue 
    if s > test266151307():
        revert with 0, 65
    _41 = mem[64]
    mem[mem[64]] = s
    mem[64] = mem[64] + (32 * s) + 32
    if not s:
        idx = 0
        s = 0
        while idx < ('cd', 4).length:
            mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
            require ext_code.size(0xfe000000000000000000000000ce761d788df608bd21bdd59d6f4b54b2e27f25)
            staticcall 0xfe000000000000000000000000ce761d788df608bd21bdd59d6f4b54b2e27f25.level(uint256 arg1) with:
                    gas gas_remaining wei
                   args cd[((32 * idx) + cd[4] + 36)]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _111 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if mem[_111] < 2:
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s
                continue 
            if idx >= ('cd', 4).length:
                revert with 0, 50
            mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
            require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
            staticcall 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.claimed(uint256 arg1) with:
                    gas gas_remaining wei
                   args cd[((32 * idx) + cd[4] + 36)]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _122 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _124 = mem[_122]
            if idx >= ('cd', 4).length:
                revert with 0, 50
            mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
            require ext_code.size(0xfe000000000000000000000000ce761d788df608bd21bdd59d6f4b54b2e27f25)
            staticcall 0xfe000000000000000000000000ce761d788df608bd21bdd59d6f4b54b2e27f25.level(uint256 arg1) with:
                    gas gas_remaining wei
                   args cd[((32 * idx) + cd[4] + 36)]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _134 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if mem[_134] <= _124:
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s
                continue 
            if idx >= ('cd', 4).length:
                revert with 0, 50
            if s >= mem[_41]:
                revert with 0, 50
            mem[(32 * s) + _41 + 32] = cd[((32 * idx) + cd[4] + 36)]
            if s == -1:
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + 1
            continue 
        mem[mem[64]] = 32
        _106 = mem[_41]
        mem[mem[64] + 32] = mem[_41]
        mem[mem[64] + 64 len 32 * _106] = mem[_41 + 32 len 32 * _106]
        return 32, mem[mem[64] + 32 len (32 * _106) + 32]
    mem[_41 + 32 len 32 * s] = call.data[calldata.size len 32 * s]
    idx = 0
    s = 0
    while idx < ('cd', 4).length:
        mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
        require ext_code.size(0xfe000000000000000000000000ce761d788df608bd21bdd59d6f4b54b2e27f25)
        staticcall 0xfe000000000000000000000000ce761d788df608bd21bdd59d6f4b54b2e27f25.level(uint256 arg1) with:
                gas gas_remaining wei
               args cd[((32 * idx) + cd[4] + 36)]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _113 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if mem[_113] < 2:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s
            continue 
        if idx >= ('cd', 4).length:
            revert with 0, 50
        mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
        require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
        staticcall 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.claimed(uint256 arg1) with:
                gas gas_remaining wei
               args cd[((32 * idx) + cd[4] + 36)]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _123 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _125 = mem[_123]
        if idx >= ('cd', 4).length:
            revert with 0, 50
        mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
        require ext_code.size(0xfe000000000000000000000000ce761d788df608bd21bdd59d6f4b54b2e27f25)
        staticcall 0xfe000000000000000000000000ce761d788df608bd21bdd59d6f4b54b2e27f25.level(uint256 arg1) with:
                gas gas_remaining wei
               args cd[((32 * idx) + cd[4] + 36)]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _135 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if mem[_135] <= _125:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s
            continue 
        if idx >= ('cd', 4).length:
            revert with 0, 50
        if s >= mem[_41]:
            revert with 0, 50
        mem[(32 * s) + _41 + 32] = cd[((32 * idx) + cd[4] + 36)]
        if s == -1:
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s + 1
        continue 
    mem[mem[64]] = 32
    _108 = mem[_41]
    mem[mem[64] + 32] = mem[_41]
    mem[mem[64] + 64 len 32 * _108] = mem[_41 + 32 len 32 * _108]
    return 32, mem[mem[64] + 32 len (32 * _108) + 32]
}



}
