contract main {




// =====================  Runtime code  =====================


address stor0;

function _fallback() payable {
    revert
}

function sub_8945e557(?) payable {
    mem[96] = 0x3339691700000000000000000000000000000000000000000000000000000000
    require ext_code.size(stor0)
    staticcall stor0.0x33396917 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _4 = mem[96]
    require mem[96] <= test266151307()
    require mem[96] + 127 < return_data.size + 96
    _5 = mem[mem[96] + 96]
    if mem[mem[96] + 96] > test266151307():
        revert with 0, 65
    if ceil32(32 * mem[mem[96] + 96]) + 1 < 0 or ceil32(return_data.size) + ceil32(32 * mem[mem[96] + 96]) + 97 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(return_data.size) + ceil32(32 * mem[mem[96] + 96]) + 97
    mem[ceil32(return_data.size) + 96] = _5
    require return_data.size >= _4 + (32 * _5) + 32
    s = _4 + 128
    t = ceil32(return_data.size) + 128
    u = 32 * _5
    idx = 0
    while idx < _5:
        _17 = mem[s]
        require mem[s] == mem[s + 12 len 20]
        mem[t] = mem[s]
        s = s + 32
        t = t + 32
        u = _17
        idx = idx + 1
        continue 
    idx = 0
    s = 0
    while idx < _5:
        if idx >= mem[ceil32(return_data.size) + 96]:
            revert with 0, 50
        require ext_code.size(mem[(32 * idx) + ceil32(return_data.size) + 140 len 20])
        staticcall mem[(32 * idx) + ceil32(return_data.size) + 140 len 20].0x3f5369b5 with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _34 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_34] == bool(mem[_34])
        if not mem[_34]:
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

function sub_0429f048(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    mem[96] = 0x3339691700000000000000000000000000000000000000000000000000000000
    require ext_code.size(stor0)
    staticcall stor0.0x33396917 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _4 = mem[96]
    require mem[96] <= test266151307()
    require mem[96] + 127 < return_data.size + 96
    _5 = mem[mem[96] + 96]
    if mem[mem[96] + 96] > test266151307():
        revert with 0, 65
    if ceil32(32 * mem[mem[96] + 96]) + 1 < 0 or ceil32(return_data.size) + ceil32(32 * mem[mem[96] + 96]) + 97 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(return_data.size) + ceil32(32 * mem[mem[96] + 96]) + 97
    mem[ceil32(return_data.size) + 96] = _5
    require return_data.size >= _4 + (32 * _5) + 32
    s = _4 + 128
    t = ceil32(return_data.size) + 128
    u = 32 * _5
    idx = 0
    while idx < _5:
        _17 = mem[s]
        require mem[s] == mem[s + 12 len 20]
        mem[t] = mem[s]
        s = s + 32
        t = t + 32
        u = _17
        idx = idx + 1
        continue 
    idx = 0
    s = 0
    while idx < _5:
        if idx >= mem[ceil32(return_data.size) + 96]:
            revert with 0, 50
        _30 = mem[(32 * idx) + ceil32(return_data.size) + 128]
        mem[mem[64] + 4] = address(arg1)
        require ext_code.size(address(_30))
        staticcall address(_30).0xc350b86a with:
                gas gas_remaining wei
               args address(arg1)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _34 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_34] == bool(mem[_34])
        if not mem[_34]:
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

function sub_b39d782f(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    mem[96] = 0x3339691700000000000000000000000000000000000000000000000000000000
    require ext_code.size(stor0)
    staticcall stor0.0x33396917 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _4 = mem[96]
    require mem[96] <= test266151307()
    require mem[96] + 127 < return_data.size + 96
    _5 = mem[mem[96] + 96]
    if mem[mem[96] + 96] > test266151307():
        revert with 0, 65
    if ceil32(32 * mem[mem[96] + 96]) + 1 < 0 or ceil32(return_data.size) + ceil32(32 * mem[mem[96] + 96]) + 97 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(return_data.size) + ceil32(32 * mem[mem[96] + 96]) + 97
    mem[ceil32(return_data.size) + 96] = _5
    require return_data.size >= _4 + (32 * _5) + 32
    s = _4 + 128
    t = ceil32(return_data.size) + 128
    u = 32 * _5
    idx = 0
    while idx < _5:
        _22 = mem[s]
        require mem[s] == mem[s + 12 len 20]
        mem[t] = mem[s]
        s = s + 32
        t = t + 32
        u = _22
        idx = idx + 1
        continue 
    idx = 0
    s = 0
    while idx < _5:
        if idx >= mem[ceil32(return_data.size) + 96]:
            revert with 0, 50
        require ext_code.size(mem[(32 * idx) + ceil32(return_data.size) + 140 len 20])
        staticcall mem[(32 * idx) + ceil32(return_data.size) + 140 len 20].userData(address rg1) with:
                gas gas_remaining wei
               args address(arg1)
        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _44 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 128
        _45 = mem[64]
        if mem[64] + 128 < mem[64] or mem[64] + 128 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + 128
        mem[_45] = mem[_44]
        mem[_45 + 32] = mem[_44 + 32]
        require mem[_44 + 64] == bool(mem[_44 + 64])
        mem[_45 + 64] = mem[_44 + 64]
        require mem[_44 + 96] == bool(mem[_44 + 96])
        mem[_45 + 96] = mem[_44 + 96]
        if mem[_45] <= 0:
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

function sub_58c0ec61(?) payable {
    mem[96] = 0x3339691700000000000000000000000000000000000000000000000000000000
    require ext_code.size(stor0)
    staticcall stor0.0x33396917 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _4 = mem[96]
    require mem[96] <= test266151307()
    require mem[96] + 127 < return_data.size + 96
    _5 = mem[mem[96] + 96]
    if mem[mem[96] + 96] > test266151307():
        revert with 0, 65
    if ceil32(32 * mem[mem[96] + 96]) + 1 < 0 or ceil32(return_data.size) + ceil32(32 * mem[mem[96] + 96]) + 97 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(return_data.size) + ceil32(32 * mem[mem[96] + 96]) + 97
    mem[ceil32(return_data.size) + 96] = _5
    require return_data.size >= _4 + (32 * _5) + 32
    s = _4 + 128
    t = ceil32(return_data.size) + 128
    u = 32 * _5
    idx = 0
    while idx < _5:
        _21 = mem[s]
        require mem[s] == mem[s + 12 len 20]
        mem[t] = mem[s]
        s = s + 32
        t = t + 32
        u = _21
        idx = idx + 1
        continue 
    idx = 0
    s = 0
    while idx < _5:
        if idx >= mem[ceil32(return_data.size) + 96]:
            revert with 0, 50
        _38 = mem[(32 * idx) + ceil32(return_data.size) + 128]
        require ext_code.size(mem[(32 * idx) + ceil32(return_data.size) + 140 len 20])
        staticcall mem[(32 * idx) + ceil32(return_data.size) + 140 len 20].isSaleOver() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _42 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_42] == bool(mem[_42])
        if mem[_42]:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s
            continue 
        require ext_code.size(address(_38))
        staticcall address(_38).saleStarted() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _46 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_46] == bool(mem[_46])
        if not mem[_46]:
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

function sub_cded3218(?) payable {
    mem[96] = 0x3339691700000000000000000000000000000000000000000000000000000000
    require ext_code.size(stor0)
    staticcall stor0.0x33396917 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _4 = mem[96]
    require mem[96] <= test266151307()
    require mem[96] + 127 < return_data.size + 96
    _5 = mem[mem[96] + 96]
    if mem[mem[96] + 96] > test266151307():
        revert with 0, 65
    if ceil32(32 * mem[mem[96] + 96]) + 1 < 0 or ceil32(return_data.size) + ceil32(32 * mem[mem[96] + 96]) + 97 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(return_data.size) + ceil32(32 * mem[mem[96] + 96]) + 97
    mem[ceil32(return_data.size) + 96] = _5
    require return_data.size >= _4 + (32 * _5) + 32
    s = _4 + 128
    t = ceil32(return_data.size) + 128
    u = 32 * _5
    idx = 0
    while idx < _5:
        _28 = mem[s]
        require mem[s] == mem[s + 12 len 20]
        mem[t] = mem[s]
        s = s + 32
        t = t + 32
        u = _28
        idx = idx + 1
        continue 
    idx = 0
    s = 0
    while idx < _5:
        if idx >= mem[ceil32(return_data.size) + 96]:
            revert with 0, 50
        require ext_code.size(mem[(32 * idx) + ceil32(return_data.size) + 140 len 20])
        staticcall mem[(32 * idx) + ceil32(return_data.size) + 140 len 20].0x3f5369b5 with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _55 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_55] == bool(mem[_55])
        if not mem[_55]:
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
    _54 = mem[64]
    mem[mem[64]] = s
    mem[64] = mem[64] + (32 * s) + 32
    if not s:
        _81 = mem[_54]
        idx = 0
        s = 0
        while idx < _81:
            if idx >= mem[_54]:
                revert with 0, 50
            _86 = mem[(32 * idx) + _54 + 32]
            require ext_code.size(mem[(32 * idx) + _54 + 44 len 20])
            staticcall mem[(32 * idx) + _54 + 44 len 20].0x3f5369b5 with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _95 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_95] == bool(mem[_95])
            if not mem[_95]:
                if idx == -1:
                    revert with 0, 17
                _81 = mem[_54]
                idx = idx + 1
                s = s
                continue 
            if s >= mem[_54]:
                revert with 0, 50
            mem[(32 * s) + _54 + 32] = address(_86)
            if s == -1:
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            _81 = mem[_54]
            idx = idx + 1
            s = s + 1
            continue 
        _85 = mem[64]
        mem[mem[64]] = 32
        _93 = mem[_54]
        mem[mem[64] + 32] = mem[_54]
        idx = 0
        s = mem[64] + 64
        t = _54 + 32
        while idx < _93:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _85 + (32 * _93) + -mem[64] + 64
    mem[_54 + 32 len 32 * s] = call.data[calldata.size len 32 * s]
    _82 = mem[_54]
    idx = 0
    s = 0
    while idx < _82:
        if idx >= mem[_54]:
            revert with 0, 50
        _90 = mem[(32 * idx) + _54 + 32]
        require ext_code.size(mem[(32 * idx) + _54 + 44 len 20])
        staticcall mem[(32 * idx) + _54 + 44 len 20].0x3f5369b5 with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _96 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_96] == bool(mem[_96])
        if not mem[_96]:
            if idx == -1:
                revert with 0, 17
            _82 = mem[_54]
            idx = idx + 1
            s = s
            continue 
        if s >= mem[_54]:
            revert with 0, 50
        mem[(32 * s) + _54 + 32] = address(_90)
        if s == -1:
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        _82 = mem[_54]
        idx = idx + 1
        s = s + 1
        continue 
    _89 = mem[64]
    mem[mem[64]] = 32
    _94 = mem[_54]
    mem[mem[64] + 32] = mem[_54]
    idx = 0
    s = mem[64] + 64
    t = _54 + 32
    while idx < _94:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len _89 + (32 * _94) + -mem[64] + 64
}

function sub_7949357d(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    mem[96] = 0x3339691700000000000000000000000000000000000000000000000000000000
    require ext_code.size(stor0)
    staticcall stor0.0x33396917 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _4 = mem[96]
    require mem[96] <= test266151307()
    require mem[96] + 127 < return_data.size + 96
    _5 = mem[mem[96] + 96]
    if mem[mem[96] + 96] > test266151307():
        revert with 0, 65
    if ceil32(32 * mem[mem[96] + 96]) + 1 < 0 or ceil32(return_data.size) + ceil32(32 * mem[mem[96] + 96]) + 97 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(return_data.size) + ceil32(32 * mem[mem[96] + 96]) + 97
    mem[ceil32(return_data.size) + 96] = _5
    require return_data.size >= _4 + (32 * _5) + 32
    s = _4 + 128
    t = ceil32(return_data.size) + 128
    u = 32 * _5
    idx = 0
    while idx < _5:
        _37 = mem[s]
        require mem[s] == mem[s + 12 len 20]
        mem[t] = mem[s]
        s = s + 32
        t = t + 32
        u = _37
        idx = idx + 1
        continue 
    mem[mem[64]] = 0x3339691700000000000000000000000000000000000000000000000000000000
    require ext_code.size(stor0)
    staticcall stor0.0x33396917 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _40 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _41 = mem[_40]
    require mem[_40] <= test266151307()
    require _40 + mem[_40] + 31 < _40 + return_data.size
    _42 = mem[_40 + mem[_40]]
    if mem[_40 + mem[_40]] > test266151307():
        revert with 0, 65
    if ceil32(32 * mem[_40 + mem[_40]]) + 1 < 0 or _40 + ceil32(return_data.size) + ceil32(32 * mem[_40 + mem[_40]]) + 1 > test266151307():
        revert with 0, 65
    mem[64] = _40 + ceil32(return_data.size) + ceil32(32 * mem[_40 + mem[_40]]) + 1
    mem[_40 + ceil32(return_data.size)] = _42
    require return_data.size >= _41 + (32 * _42) + 32
    s = _40 + _41 + 32
    t = _40 + ceil32(return_data.size) + 32
    u = 32 * _42
    idx = 0
    while idx < _42:
        _67 = mem[s]
        require mem[s] == mem[s + 12 len 20]
        mem[t] = mem[s]
        s = s + 32
        t = t + 32
        u = _67
        idx = idx + 1
        continue 
    idx = 0
    s = 0
    while idx < _42:
        if idx >= mem[_40 + ceil32(return_data.size)]:
            revert with 0, 50
        _92 = mem[(32 * idx) + _40 + ceil32(return_data.size) + 32]
        mem[mem[64] + 4] = address(arg1)
        require ext_code.size(address(_92))
        staticcall address(_92).0xc350b86a with:
                gas gas_remaining wei
               args address(arg1)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _96 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_96] == bool(mem[_96])
        if not mem[_96]:
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
    _95 = mem[64]
    mem[mem[64]] = s
    mem[64] = mem[64] + (32 * s) + 32
    if not s:
        _126 = mem[ceil32(return_data.size) + 96]
        idx = 0
        s = 0
        while idx < _126:
            if idx >= mem[ceil32(return_data.size) + 96]:
                revert with 0, 50
            _131 = mem[(32 * idx) + ceil32(return_data.size) + 128]
            mem[mem[64] + 4] = address(arg1)
            require ext_code.size(address(_131))
            staticcall address(_131).0xc350b86a with:
                    gas gas_remaining wei
                   args address(arg1)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _140 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_140] == bool(mem[_140])
            if not mem[_140]:
                if idx == -1:
                    revert with 0, 17
                _126 = mem[ceil32(return_data.size) + 96]
                idx = idx + 1
                s = s
                continue 
            if idx >= mem[ceil32(return_data.size) + 96]:
                revert with 0, 50
            if s >= mem[_95]:
                revert with 0, 50
            mem[(32 * s) + _95 + 32] = mem[(32 * idx) + ceil32(return_data.size) + 140 len 20]
            if s == -1:
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            _126 = mem[ceil32(return_data.size) + 96]
            idx = idx + 1
            s = s + 1
            continue 
        _130 = mem[64]
        mem[mem[64]] = 32
        _138 = mem[_95]
        mem[mem[64] + 32] = mem[_95]
        idx = 0
        s = mem[64] + 64
        t = _95 + 32
        while idx < _138:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _130 + (32 * _138) + -mem[64] + 64
    mem[_95 + 32 len 32 * s] = call.data[calldata.size len 32 * s]
    _127 = mem[ceil32(return_data.size) + 96]
    idx = 0
    s = 0
    while idx < _127:
        if idx >= mem[ceil32(return_data.size) + 96]:
            revert with 0, 50
        _135 = mem[(32 * idx) + ceil32(return_data.size) + 128]
        mem[mem[64] + 4] = address(arg1)
        require ext_code.size(address(_135))
        staticcall address(_135).0xc350b86a with:
                gas gas_remaining wei
               args address(arg1)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _141 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_141] == bool(mem[_141])
        if not mem[_141]:
            if idx == -1:
                revert with 0, 17
            _127 = mem[ceil32(return_data.size) + 96]
            idx = idx + 1
            s = s
            continue 
        if idx >= mem[ceil32(return_data.size) + 96]:
            revert with 0, 50
        if s >= mem[_95]:
            revert with 0, 50
        mem[(32 * s) + _95 + 32] = mem[(32 * idx) + ceil32(return_data.size) + 140 len 20]
        if s == -1:
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        _127 = mem[ceil32(return_data.size) + 96]
        idx = idx + 1
        s = s + 1
        continue 
    _134 = mem[64]
    mem[mem[64]] = 32
    _139 = mem[_95]
    mem[mem[64] + 32] = mem[_95]
    idx = 0
    s = mem[64] + 64
    t = _95 + 32
    while idx < _139:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len _134 + (32 * _139) + -mem[64] + 64
}

function sub_e2a89667(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    mem[96] = 0x3339691700000000000000000000000000000000000000000000000000000000
    require ext_code.size(stor0)
    staticcall stor0.0x33396917 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _4 = mem[96]
    require mem[96] <= test266151307()
    require mem[96] + 127 < return_data.size + 96
    _5 = mem[mem[96] + 96]
    if mem[mem[96] + 96] > test266151307():
        revert with 0, 65
    if ceil32(32 * mem[mem[96] + 96]) + 1 < 0 or ceil32(return_data.size) + ceil32(32 * mem[mem[96] + 96]) + 97 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(return_data.size) + ceil32(32 * mem[mem[96] + 96]) + 97
    mem[ceil32(return_data.size) + 96] = _5
    require return_data.size >= _4 + (32 * _5) + 32
    s = _4 + 128
    t = ceil32(return_data.size) + 128
    u = 32 * _5
    idx = 0
    while idx < _5:
        _47 = mem[s]
        require mem[s] == mem[s + 12 len 20]
        mem[t] = mem[s]
        s = s + 32
        t = t + 32
        u = _47
        idx = idx + 1
        continue 
    mem[mem[64]] = 0x3339691700000000000000000000000000000000000000000000000000000000
    require ext_code.size(stor0)
    staticcall stor0.0x33396917 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _50 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _51 = mem[_50]
    require mem[_50] <= test266151307()
    require _50 + mem[_50] + 31 < _50 + return_data.size
    _52 = mem[_50 + mem[_50]]
    if mem[_50 + mem[_50]] > test266151307():
        revert with 0, 65
    if ceil32(32 * mem[_50 + mem[_50]]) + 1 < 0 or _50 + ceil32(return_data.size) + ceil32(32 * mem[_50 + mem[_50]]) + 1 > test266151307():
        revert with 0, 65
    mem[64] = _50 + ceil32(return_data.size) + ceil32(32 * mem[_50 + mem[_50]]) + 1
    mem[_50 + ceil32(return_data.size)] = _52
    require return_data.size >= _51 + (32 * _52) + 32
    s = _50 + _51 + 32
    t = _50 + ceil32(return_data.size) + 32
    u = 32 * _52
    idx = 0
    while idx < _52:
        _87 = mem[s]
        require mem[s] == mem[s + 12 len 20]
        mem[t] = mem[s]
        s = s + 32
        t = t + 32
        u = _87
        idx = idx + 1
        continue 
    idx = 0
    s = 0
    while idx < _52:
        if idx >= mem[_50 + ceil32(return_data.size)]:
            revert with 0, 50
        require ext_code.size(mem[(32 * idx) + _50 + ceil32(return_data.size) + 44 len 20])
        staticcall mem[(32 * idx) + _50 + ceil32(return_data.size) + 44 len 20].userData(address rg1) with:
                gas gas_remaining wei
               args address(arg1)
        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _126 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 128
        _135 = mem[64]
        if mem[64] + 128 < mem[64] or mem[64] + 128 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + 128
        mem[_135] = mem[_126]
        mem[_135 + 32] = mem[_126 + 32]
        require mem[_126 + 64] == bool(mem[_126 + 64])
        mem[_135 + 64] = mem[_126 + 64]
        require mem[_126 + 96] == bool(mem[_126 + 96])
        mem[_135 + 96] = mem[_126 + 96]
        if mem[_135] <= 0:
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
    _125 = mem[64]
    mem[mem[64]] = s
    mem[64] = mem[64] + (32 * s) + 32
    if not s:
        _171 = mem[ceil32(return_data.size) + 96]
        idx = 0
        s = 0
        while idx < _171:
            if idx >= mem[ceil32(return_data.size) + 96]:
                revert with 0, 50
            require ext_code.size(mem[(32 * idx) + ceil32(return_data.size) + 140 len 20])
            staticcall mem[(32 * idx) + ceil32(return_data.size) + 140 len 20].userData(address rg1) with:
                    gas gas_remaining wei
                   args address(arg1)
            mem[mem[64] len 128] = ext_call.return_data[0 len 128]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _185 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 128
            _191 = mem[64]
            if mem[64] + 128 < mem[64] or mem[64] + 128 > test266151307():
                revert with 0, 65
            mem[64] = mem[64] + 128
            mem[_191] = mem[_185]
            mem[_191 + 32] = mem[_185 + 32]
            require mem[_185 + 64] == bool(mem[_185 + 64])
            mem[_191 + 64] = mem[_185 + 64]
            require mem[_185 + 96] == bool(mem[_185 + 96])
            mem[_191 + 96] = mem[_185 + 96]
            if mem[_191] <= 0:
                if idx == -1:
                    revert with 0, 17
                _171 = mem[ceil32(return_data.size) + 96]
                idx = idx + 1
                s = s
                continue 
            if idx >= mem[ceil32(return_data.size) + 96]:
                revert with 0, 50
            if s >= mem[_125]:
                revert with 0, 50
            mem[(32 * s) + _125 + 32] = mem[(32 * idx) + ceil32(return_data.size) + 140 len 20]
            if s == -1:
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            _171 = mem[ceil32(return_data.size) + 96]
            idx = idx + 1
            s = s + 1
            continue 
        _175 = mem[64]
        mem[mem[64]] = 32
        _183 = mem[_125]
        mem[mem[64] + 32] = mem[_125]
        idx = 0
        s = mem[64] + 64
        t = _125 + 32
        while idx < _183:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _175 + (32 * _183) + -mem[64] + 64
    mem[_125 + 32 len 32 * s] = call.data[calldata.size len 32 * s]
    _172 = mem[ceil32(return_data.size) + 96]
    idx = 0
    s = 0
    while idx < _172:
        if idx >= mem[ceil32(return_data.size) + 96]:
            revert with 0, 50
        require ext_code.size(mem[(32 * idx) + ceil32(return_data.size) + 140 len 20])
        staticcall mem[(32 * idx) + ceil32(return_data.size) + 140 len 20].userData(address rg1) with:
                gas gas_remaining wei
               args address(arg1)
        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _186 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 128
        _192 = mem[64]
        if mem[64] + 128 < mem[64] or mem[64] + 128 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + 128
        mem[_192] = mem[_186]
        mem[_192 + 32] = mem[_186 + 32]
        require mem[_186 + 64] == bool(mem[_186 + 64])
        mem[_192 + 64] = mem[_186 + 64]
        require mem[_186 + 96] == bool(mem[_186 + 96])
        mem[_192 + 96] = mem[_186 + 96]
        if mem[_192] <= 0:
            if idx == -1:
                revert with 0, 17
            _172 = mem[ceil32(return_data.size) + 96]
            idx = idx + 1
            s = s
            continue 
        if idx >= mem[ceil32(return_data.size) + 96]:
            revert with 0, 50
        if s >= mem[_125]:
            revert with 0, 50
        mem[(32 * s) + _125 + 32] = mem[(32 * idx) + ceil32(return_data.size) + 140 len 20]
        if s == -1:
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        _172 = mem[ceil32(return_data.size) + 96]
        idx = idx + 1
        s = s + 1
        continue 
    _179 = mem[64]
    mem[mem[64]] = 32
    _184 = mem[_125]
    mem[mem[64] + 32] = mem[_125]
    idx = 0
    s = mem[64] + 64
    t = _125 + 32
    while idx < _184:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len _179 + (32 * _184) + -mem[64] + 64
}

function sub_444fb684(?) payable {
    mem[96] = 0x3339691700000000000000000000000000000000000000000000000000000000
    require ext_code.size(stor0)
    staticcall stor0.0x33396917 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _4 = mem[96]
    require mem[96] <= test266151307()
    require mem[96] + 127 < return_data.size + 96
    _5 = mem[mem[96] + 96]
    if mem[mem[96] + 96] > test266151307():
        revert with 0, 65
    if ceil32(32 * mem[mem[96] + 96]) + 1 < 0 or ceil32(return_data.size) + ceil32(32 * mem[mem[96] + 96]) + 97 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(return_data.size) + ceil32(32 * mem[mem[96] + 96]) + 97
    mem[ceil32(return_data.size) + 96] = _5
    require return_data.size >= _4 + (32 * _5) + 32
    s = _4 + 128
    t = ceil32(return_data.size) + 128
    u = 32 * _5
    idx = 0
    while idx < _5:
        _45 = mem[s]
        require mem[s] == mem[s + 12 len 20]
        mem[t] = mem[s]
        s = s + 32
        t = t + 32
        u = _45
        idx = idx + 1
        continue 
    mem[mem[64]] = 0x3339691700000000000000000000000000000000000000000000000000000000
    require ext_code.size(stor0)
    staticcall stor0.0x33396917 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _48 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _49 = mem[_48]
    require mem[_48] <= test266151307()
    require _48 + mem[_48] + 31 < _48 + return_data.size
    _50 = mem[_48 + mem[_48]]
    if mem[_48 + mem[_48]] > test266151307():
        revert with 0, 65
    if ceil32(32 * mem[_48 + mem[_48]]) + 1 < 0 or _48 + ceil32(return_data.size) + ceil32(32 * mem[_48 + mem[_48]]) + 1 > test266151307():
        revert with 0, 65
    mem[64] = _48 + ceil32(return_data.size) + ceil32(32 * mem[_48 + mem[_48]]) + 1
    mem[_48 + ceil32(return_data.size)] = _50
    require return_data.size >= _49 + (32 * _50) + 32
    s = _48 + _49 + 32
    t = _48 + ceil32(return_data.size) + 32
    u = 32 * _50
    idx = 0
    while idx < _50:
        _83 = mem[s]
        require mem[s] == mem[s + 12 len 20]
        mem[t] = mem[s]
        s = s + 32
        t = t + 32
        u = _83
        idx = idx + 1
        continue 
    idx = 0
    s = 0
    while idx < _50:
        if idx >= mem[_48 + ceil32(return_data.size)]:
            revert with 0, 50
        _116 = mem[(32 * idx) + _48 + ceil32(return_data.size) + 32]
        require ext_code.size(mem[(32 * idx) + _48 + ceil32(return_data.size) + 44 len 20])
        staticcall mem[(32 * idx) + _48 + ceil32(return_data.size) + 44 len 20].isSaleOver() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _120 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_120] == bool(mem[_120])
        if mem[_120]:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s
            continue 
        require ext_code.size(address(_116))
        staticcall address(_116).saleStarted() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _146 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_146] == bool(mem[_146])
        if not mem[_146]:
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
    _119 = mem[64]
    mem[mem[64]] = s
    mem[64] = mem[64] + (32 * s) + 32
    if not s:
        _162 = mem[ceil32(return_data.size) + 96]
        idx = 0
        s = 0
        while idx < _162:
            if idx >= mem[ceil32(return_data.size) + 96]:
                revert with 0, 50
            _167 = mem[(32 * idx) + ceil32(return_data.size) + 128]
            require ext_code.size(mem[(32 * idx) + ceil32(return_data.size) + 140 len 20])
            staticcall mem[(32 * idx) + ceil32(return_data.size) + 140 len 20].isSaleOver() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _176 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_176] == bool(mem[_176])
            if mem[_176]:
                if idx == -1:
                    revert with 0, 17
                _162 = mem[ceil32(return_data.size) + 96]
                idx = idx + 1
                s = s
                continue 
            require ext_code.size(address(_167))
            staticcall address(_167).saleStarted() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _188 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_188] == bool(mem[_188])
            if not mem[_188]:
                if idx == -1:
                    revert with 0, 17
                _162 = mem[ceil32(return_data.size) + 96]
                idx = idx + 1
                s = s
                continue 
            if idx >= mem[ceil32(return_data.size) + 96]:
                revert with 0, 50
            if s >= mem[_119]:
                revert with 0, 50
            mem[(32 * s) + _119 + 32] = mem[(32 * idx) + ceil32(return_data.size) + 140 len 20]
            if s == -1:
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            _162 = mem[ceil32(return_data.size) + 96]
            idx = idx + 1
            s = s + 1
            continue 
        _166 = mem[64]
        mem[mem[64]] = 32
        _174 = mem[_119]
        mem[mem[64] + 32] = mem[_119]
        idx = 0
        s = mem[64] + 64
        t = _119 + 32
        while idx < _174:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _166 + (32 * _174) + -mem[64] + 64
    mem[_119 + 32 len 32 * s] = call.data[calldata.size len 32 * s]
    _163 = mem[ceil32(return_data.size) + 96]
    idx = 0
    s = 0
    while idx < _163:
        if idx >= mem[ceil32(return_data.size) + 96]:
            revert with 0, 50
        _171 = mem[(32 * idx) + ceil32(return_data.size) + 128]
        require ext_code.size(mem[(32 * idx) + ceil32(return_data.size) + 140 len 20])
        staticcall mem[(32 * idx) + ceil32(return_data.size) + 140 len 20].isSaleOver() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _177 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_177] == bool(mem[_177])
        if mem[_177]:
            if idx == -1:
                revert with 0, 17
            _163 = mem[ceil32(return_data.size) + 96]
            idx = idx + 1
            s = s
            continue 
        require ext_code.size(address(_171))
        staticcall address(_171).saleStarted() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _189 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_189] == bool(mem[_189])
        if not mem[_189]:
            if idx == -1:
                revert with 0, 17
            _163 = mem[ceil32(return_data.size) + 96]
            idx = idx + 1
            s = s
            continue 
        if idx >= mem[ceil32(return_data.size) + 96]:
            revert with 0, 50
        if s >= mem[_119]:
            revert with 0, 50
        mem[(32 * s) + _119 + 32] = mem[(32 * idx) + ceil32(return_data.size) + 140 len 20]
        if s == -1:
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        _163 = mem[ceil32(return_data.size) + 96]
        idx = idx + 1
        s = s + 1
        continue 
    _170 = mem[64]
    mem[mem[64]] = 32
    _175 = mem[_119]
    mem[mem[64] + 32] = mem[_119]
    idx = 0
    s = mem[64] + 64
    t = _119 + 32
    while idx < _175:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len _170 + (32 * _175) + -mem[64] + 64
}



}
