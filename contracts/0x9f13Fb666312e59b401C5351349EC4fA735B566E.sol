contract main {




// =====================  Runtime code  =====================


address stor0;
address stor1;

function _fallback() payable {
    revert
}

function tokensOfOwner(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[100] = arg1
    require ext_code.size(stor0)
    staticcall stor0.0x70a08231 with:
            gas gas_remaining wei
           args arg1
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > test266151307():
        revert with 'NH{q', 65
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    mem[64] = ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128
    if not ext_call.return_data[0]:
        idx = 0
        while idx < ext_call.return_data[0]:
            mem[mem[64] + 4] = arg1
            mem[mem[64] + 36] = idx
            require ext_code.size(stor0)
            staticcall stor0.'/t\Y' with:
                    gas gas_remaining wei
                   args address(arg1), idx
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _31 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if idx >= mem[ceil32(return_data.size) + 96]:
                revert with 'NH{q', 50
            mem[(32 * idx) + ceil32(return_data.size) + 128] = mem[_31]
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        mem[mem[64]] = 32
        _30 = mem[ceil32(return_data.size) + 96]
        mem[mem[64] + 32] = mem[ceil32(return_data.size) + 96]
        mem[mem[64] + 64 len 32 * _30] = mem[ceil32(return_data.size) + 128 len 32 * _30]
        return 32, mem[mem[64] + 32 len (32 * _30) + 32]
    mem[ceil32(return_data.size) + 128 len 32 * ext_call.return_data[0]] = call.data[calldata.size len 32 * ext_call.return_data[0]]
    idx = 0
    while idx < ext_call.return_data[0]:
        mem[mem[64] + 4] = arg1
        mem[mem[64] + 36] = idx
        require ext_code.size(stor0)
        staticcall stor0.'/t\Y' with:
                gas gas_remaining wei
               args address(arg1), idx
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _33 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if idx >= mem[ceil32(return_data.size) + 96]:
            revert with 'NH{q', 50
        mem[(32 * idx) + ceil32(return_data.size) + 128] = mem[_33]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    mem[mem[64]] = 32
    _32 = mem[ceil32(return_data.size) + 96]
    mem[mem[64] + 32] = mem[ceil32(return_data.size) + 96]
    mem[mem[64] + 64 len 32 * _32] = mem[ceil32(return_data.size) + 128 len 32 * _32]
    return 32, mem[mem[64] + 32 len (32 * _32) + 32]
}

function sub_4497f4d4(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    mem[100] = address(arg1)
    require ext_code.size(stor0)
    staticcall stor0.0x70a08231 with:
            gas gas_remaining wei
           args address(arg1)
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > test266151307():
        revert with 'NH{q', 65
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    mem[64] = ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128
    if not ext_call.return_data[0]:
        idx = 0
        while idx < ext_call.return_data[0]:
            mem[mem[64] + 4] = address(arg1)
            mem[mem[64] + 36] = idx
            require ext_code.size(stor0)
            staticcall stor0.'/t\Y' with:
                    gas gas_remaining wei
                   args address(arg1), idx
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _48 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _52 = mem[_48]
            mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = _52
            require ext_code.size(stor0)
            staticcall stor0.0xc87b56dd with:
                    gas gas_remaining wei
                   args _52
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _60 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _68 = mem[_60]
            require mem[_60] <= test266151307()
            require _60 + mem[_60] + 31 < _60 + return_data.size
            _70 = mem[_60 + mem[_60]]
            if mem[_60 + mem[_60]] > test266151307():
                revert with 'NH{q', 65
            if ceil32(ceil32(mem[_60 + mem[_60]])) + 1 < 0 or _60 + ceil32(return_data.size) + ceil32(ceil32(mem[_60 + mem[_60]])) + 1 > test266151307():
                revert with 'NH{q', 65
            mem[64] = _60 + ceil32(return_data.size) + ceil32(ceil32(mem[_60 + mem[_60]])) + 1
            mem[_60 + ceil32(return_data.size)] = _70
            require _68 + _70 + 32 <= return_data.size
            s = 0
            while s < _70:
                mem[s + _60 + ceil32(return_data.size) + 32] = mem[s + _60 + _68 + 32]
                s = s + 32
                continue 
            if ceil32(_70) > _70:
                mem[_60 + ceil32(return_data.size) + _70 + 32] = 0
            if idx >= mem[ceil32(return_data.size) + 96]:
                revert with 'NH{q', 50
            mem[(32 * idx) + ceil32(return_data.size) + 128] = _60 + ceil32(return_data.size)
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _46 = mem[64]
        mem[mem[64]] = 32
        _47 = mem[ceil32(return_data.size) + 96]
        mem[mem[64] + 32] = mem[ceil32(return_data.size) + 96]
        idx = 0
        s = ceil32(return_data.size) + 128
        t = mem[64] + 64
        u = mem[64] + (32 * _47) + 64
        while idx < _47:
            mem[t] = u + -_46 - 64
            _82 = mem[s]
            _87 = mem[mem[s]]
            mem[u] = mem[mem[s]]
            v = 0
            while v < _87:
                mem[v + u + 32] = mem[v + _82 + 32]
                v = v + 32
                continue 
            if ceil32(_87) > _87:
                mem[u + _87 + 32] = 0
            idx = idx + 1
            s = s + 32
            t = t + 32
            u = ceil32(_87) + u + 32
            continue 
    else:
        mem[ceil32(return_data.size) + 128] = 96
        s = ceil32(return_data.size) + 128
        idx = ext_call.return_data[0]
        while idx - 1:
            mem[s + 32] = 96
            s = s + 32
            idx = idx - 1
            continue 
        idx = 0
        while idx < ext_call.return_data[0]:
            mem[mem[64] + 4] = address(arg1)
            mem[mem[64] + 36] = idx
            require ext_code.size(stor0)
            staticcall stor0.'/t\Y' with:
                    gas gas_remaining wei
                   args address(arg1), idx
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _90 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _95 = mem[_90]
            mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = _95
            require ext_code.size(stor0)
            staticcall stor0.0xc87b56dd with:
                    gas gas_remaining wei
                   args _95
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _100 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _102 = mem[_100]
            require mem[_100] <= test266151307()
            require _100 + mem[_100] + 31 < _100 + return_data.size
            _103 = mem[_100 + mem[_100]]
            if mem[_100 + mem[_100]] > test266151307():
                revert with 'NH{q', 65
            if ceil32(ceil32(mem[_100 + mem[_100]])) + 1 < 0 or _100 + ceil32(return_data.size) + ceil32(ceil32(mem[_100 + mem[_100]])) + 1 > test266151307():
                revert with 'NH{q', 65
            mem[64] = _100 + ceil32(return_data.size) + ceil32(ceil32(mem[_100 + mem[_100]])) + 1
            mem[_100 + ceil32(return_data.size)] = _103
            require _102 + _103 + 32 <= return_data.size
            s = 0
            while s < _103:
                mem[s + _100 + ceil32(return_data.size) + 32] = mem[s + _100 + _102 + 32]
                s = s + 32
                continue 
            if ceil32(_103) > _103:
                mem[_100 + ceil32(return_data.size) + _103 + 32] = 0
            if idx >= mem[ceil32(return_data.size) + 96]:
                revert with 'NH{q', 50
            mem[(32 * idx) + ceil32(return_data.size) + 128] = _100 + ceil32(return_data.size)
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _88 = mem[64]
        mem[mem[64]] = 32
        _89 = mem[ceil32(return_data.size) + 96]
        mem[mem[64] + 32] = mem[ceil32(return_data.size) + 96]
        idx = 0
        s = ceil32(return_data.size) + 128
        t = mem[64] + 64
        u = mem[64] + (32 * _89) + 64
        while idx < _89:
            mem[t] = u + -_88 - 64
            _109 = mem[s]
            _112 = mem[mem[s]]
            mem[u] = mem[mem[s]]
            v = 0
            while v < _112:
                mem[v + u + 32] = mem[v + _109 + 32]
                v = v + 32
                continue 
            if ceil32(_112) > _112:
                mem[u + _112 + 32] = 0
            idx = idx + 1
            s = s + 32
            t = t + 32
            u = ceil32(_112) + u + 32
            continue 
    return memory
      from mem[64]
       len u - mem[64]
}

function sub_62875b84(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    mem[100] = address(arg1)
    require ext_code.size(stor0)
    staticcall stor0.0x70a08231 with:
            gas gas_remaining wei
           args address(arg1)
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > test266151307():
        revert with 'NH{q', 65
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    mem[64] = ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128
    if not ext_call.return_data[0]:
        idx = 0
        while idx < ext_call.return_data[0]:
            mem[mem[64] + 4] = address(arg1)
            mem[mem[64] + 36] = idx
            require ext_code.size(stor0)
            staticcall stor0.'/t\Y' with:
                    gas gas_remaining wei
                   args address(arg1), idx
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _56 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _62 = mem[_56]
            _66 = mem[64]
            mem[64] = mem[64] + 64
            mem[_66] = _62
            mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = _62
            require ext_code.size(stor0)
            staticcall stor0.0xc87b56dd with:
                    gas gas_remaining wei
                   args _62
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _71 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _82 = mem[_71]
            require mem[_71] <= test266151307()
            require _71 + mem[_71] + 31 < _71 + return_data.size
            _84 = mem[_71 + mem[_71]]
            if mem[_71 + mem[_71]] > test266151307():
                revert with 'NH{q', 65
            if ceil32(ceil32(mem[_71 + mem[_71]])) + 1 < 0 or _71 + ceil32(return_data.size) + ceil32(ceil32(mem[_71 + mem[_71]])) + 1 > test266151307():
                revert with 'NH{q', 65
            mem[64] = _71 + ceil32(return_data.size) + ceil32(ceil32(mem[_71 + mem[_71]])) + 1
            mem[_71 + ceil32(return_data.size)] = _84
            require _82 + _84 + 32 <= return_data.size
            s = 0
            while s < _84:
                mem[s + _71 + ceil32(return_data.size) + 32] = mem[s + _71 + _82 + 32]
                s = s + 32
                continue 
            if ceil32(_84) > _84:
                mem[_71 + ceil32(return_data.size) + _84 + 32] = 0
            mem[_66 + 32] = _71 + ceil32(return_data.size)
            if idx >= mem[ceil32(return_data.size) + 96]:
                revert with 'NH{q', 50
            mem[(32 * idx) + ceil32(return_data.size) + 128] = _66
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _54 = mem[64]
        mem[mem[64]] = 32
        _55 = mem[ceil32(return_data.size) + 96]
        mem[mem[64] + 32] = mem[ceil32(return_data.size) + 96]
        idx = 0
        s = ceil32(return_data.size) + 128
        t = mem[64] + (32 * _55) + 64
        u = mem[64] + 64
        while idx < _55:
            mem[u] = t + -_54 - 64
            _96 = mem[s]
            mem[t] = mem[mem[s]]
            _98 = mem[_96 + 32]
            mem[t + 32] = 64
            _103 = mem[_98]
            mem[t + 64] = mem[_98]
            v = 0
            while v < _103:
                mem[v + t + 96] = mem[v + _98 + 32]
                v = v + 32
                continue 
            if ceil32(_103) > _103:
                mem[t + _103 + 96] = 0
            idx = idx + 1
            s = s + 32
            t = ceil32(_103) + t + 96
            u = u + 32
            continue 
    else:
        mem[64] = ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 192
        mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128] = 0
        mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 160] = 96
        mem[ceil32(return_data.size) + 128] = ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128
        s = ceil32(return_data.size) + 128
        idx = ext_call.return_data[0]
        while idx - 1:
            mem[64] = mem[64] + 64
            mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128] = 0
            mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 160] = 96
            mem[s + 32] = ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128
            s = s + 32
            idx = idx - 1
            continue 
        idx = 0
        while idx < ext_call.return_data[0]:
            mem[mem[64] + 4] = address(arg1)
            mem[mem[64] + 36] = idx
            require ext_code.size(stor0)
            staticcall stor0.'/t\Y' with:
                    gas gas_remaining wei
                   args address(arg1), idx
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _106 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _113 = mem[_106]
            _116 = mem[64]
            mem[64] = mem[64] + 64
            mem[_116] = _113
            mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = _113
            require ext_code.size(stor0)
            staticcall stor0.0xc87b56dd with:
                    gas gas_remaining wei
                   args _113
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _119 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _121 = mem[_119]
            require mem[_119] <= test266151307()
            require _119 + mem[_119] + 31 < _119 + return_data.size
            _122 = mem[_119 + mem[_119]]
            if mem[_119 + mem[_119]] > test266151307():
                revert with 'NH{q', 65
            if ceil32(ceil32(mem[_119 + mem[_119]])) + 1 < 0 or _119 + ceil32(return_data.size) + ceil32(ceil32(mem[_119 + mem[_119]])) + 1 > test266151307():
                revert with 'NH{q', 65
            mem[64] = _119 + ceil32(return_data.size) + ceil32(ceil32(mem[_119 + mem[_119]])) + 1
            mem[_119 + ceil32(return_data.size)] = _122
            require _121 + _122 + 32 <= return_data.size
            s = 0
            while s < _122:
                mem[s + _119 + ceil32(return_data.size) + 32] = mem[s + _119 + _121 + 32]
                s = s + 32
                continue 
            if ceil32(_122) > _122:
                mem[_119 + ceil32(return_data.size) + _122 + 32] = 0
            mem[_116 + 32] = _119 + ceil32(return_data.size)
            if idx >= mem[ceil32(return_data.size) + 96]:
                revert with 'NH{q', 50
            mem[(32 * idx) + ceil32(return_data.size) + 128] = _116
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _104 = mem[64]
        mem[mem[64]] = 32
        _105 = mem[ceil32(return_data.size) + 96]
        mem[mem[64] + 32] = mem[ceil32(return_data.size) + 96]
        idx = 0
        s = ceil32(return_data.size) + 128
        t = mem[64] + (32 * _105) + 64
        u = mem[64] + 64
        while idx < _105:
            mem[u] = t + -_104 - 64
            _128 = mem[s]
            mem[t] = mem[mem[s]]
            _130 = mem[_128 + 32]
            mem[t + 32] = 64
            _133 = mem[_130]
            mem[t + 64] = mem[_130]
            v = 0
            while v < _133:
                mem[v + t + 96] = mem[v + _130 + 32]
                v = v + 32
                continue 
            if ceil32(_133) > _133:
                mem[t + _133 + 96] = 0
            idx = idx + 1
            s = s + 32
            t = ceil32(_133) + t + 96
            u = u + 32
            continue 
    return memory
      from mem[64]
       len t - mem[64]
}

function sub_c006153b(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == bool(arg2)
    mem[100] = address(arg1)
    require ext_code.size(stor0)
    staticcall stor0.0x70a08231 with:
            gas gas_remaining wei
           args address(arg1)
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > test266151307():
        revert with 'NH{q', 65
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    mem[64] = ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128
    if not ext_call.return_data[0]:
        idx = 0
        while idx < ext_call.return_data[0]:
            mem[mem[64] + 4] = address(arg1)
            mem[mem[64] + 36] = idx
            require ext_code.size(stor0)
            staticcall stor0.'/t\Y' with:
                    gas gas_remaining wei
                   args address(arg1), idx
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _56 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _62 = mem[_56]
            _66 = mem[64]
            mem[64] = mem[64] + 64
            mem[_66] = _62
            mem[mem[64]] = 0x2b219d8300000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = _62
            mem[mem[64] + 36] = stor0
            mem[mem[64] + 68] = bool(arg2)
            require ext_code.size(stor1)
            staticcall stor1.0x2b219d83 with:
                    gas gas_remaining wei
                   args _62, stor0, bool(arg2)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _71 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _82 = mem[_71]
            require mem[_71] <= test266151307()
            require _71 + mem[_71] + 31 < _71 + return_data.size
            _84 = mem[_71 + mem[_71]]
            if mem[_71 + mem[_71]] > test266151307():
                revert with 'NH{q', 65
            if ceil32(ceil32(mem[_71 + mem[_71]])) + 1 < 0 or _71 + ceil32(return_data.size) + ceil32(ceil32(mem[_71 + mem[_71]])) + 1 > test266151307():
                revert with 'NH{q', 65
            mem[64] = _71 + ceil32(return_data.size) + ceil32(ceil32(mem[_71 + mem[_71]])) + 1
            mem[_71 + ceil32(return_data.size)] = _84
            require _82 + _84 + 32 <= return_data.size
            s = 0
            while s < _84:
                mem[s + _71 + ceil32(return_data.size) + 32] = mem[s + _71 + _82 + 32]
                s = s + 32
                continue 
            if ceil32(_84) > _84:
                mem[_71 + ceil32(return_data.size) + _84 + 32] = 0
            mem[_66 + 32] = _71 + ceil32(return_data.size)
            if idx >= mem[ceil32(return_data.size) + 96]:
                revert with 'NH{q', 50
            mem[(32 * idx) + ceil32(return_data.size) + 128] = _66
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _54 = mem[64]
        mem[mem[64]] = 32
        _55 = mem[ceil32(return_data.size) + 96]
        mem[mem[64] + 32] = mem[ceil32(return_data.size) + 96]
        idx = 0
        s = ceil32(return_data.size) + 128
        t = mem[64] + (32 * _55) + 64
        u = mem[64] + 64
        while idx < _55:
            mem[u] = t + -_54 - 64
            _96 = mem[s]
            mem[t] = mem[mem[s]]
            _98 = mem[_96 + 32]
            mem[t + 32] = 64
            _103 = mem[_98]
            mem[t + 64] = mem[_98]
            v = 0
            while v < _103:
                mem[v + t + 96] = mem[v + _98 + 32]
                v = v + 32
                continue 
            if ceil32(_103) > _103:
                mem[t + _103 + 96] = 0
            idx = idx + 1
            s = s + 32
            t = ceil32(_103) + t + 96
            u = u + 32
            continue 
    else:
        mem[64] = ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 192
        mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128] = 0
        mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 160] = 96
        mem[ceil32(return_data.size) + 128] = ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128
        s = ceil32(return_data.size) + 128
        idx = ext_call.return_data[0]
        while idx - 1:
            mem[64] = mem[64] + 64
            mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128] = 0
            mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 160] = 96
            mem[s + 32] = ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128
            s = s + 32
            idx = idx - 1
            continue 
        idx = 0
        while idx < ext_call.return_data[0]:
            mem[mem[64] + 4] = address(arg1)
            mem[mem[64] + 36] = idx
            require ext_code.size(stor0)
            staticcall stor0.'/t\Y' with:
                    gas gas_remaining wei
                   args address(arg1), idx
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _106 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _113 = mem[_106]
            _116 = mem[64]
            mem[64] = mem[64] + 64
            mem[_116] = _113
            mem[mem[64]] = 0x2b219d8300000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = _113
            mem[mem[64] + 36] = stor0
            mem[mem[64] + 68] = bool(arg2)
            require ext_code.size(stor1)
            staticcall stor1.0x2b219d83 with:
                    gas gas_remaining wei
                   args _113, stor0, bool(arg2)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _119 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _121 = mem[_119]
            require mem[_119] <= test266151307()
            require _119 + mem[_119] + 31 < _119 + return_data.size
            _122 = mem[_119 + mem[_119]]
            if mem[_119 + mem[_119]] > test266151307():
                revert with 'NH{q', 65
            if ceil32(ceil32(mem[_119 + mem[_119]])) + 1 < 0 or _119 + ceil32(return_data.size) + ceil32(ceil32(mem[_119 + mem[_119]])) + 1 > test266151307():
                revert with 'NH{q', 65
            mem[64] = _119 + ceil32(return_data.size) + ceil32(ceil32(mem[_119 + mem[_119]])) + 1
            mem[_119 + ceil32(return_data.size)] = _122
            require _121 + _122 + 32 <= return_data.size
            s = 0
            while s < _122:
                mem[s + _119 + ceil32(return_data.size) + 32] = mem[s + _119 + _121 + 32]
                s = s + 32
                continue 
            if ceil32(_122) > _122:
                mem[_119 + ceil32(return_data.size) + _122 + 32] = 0
            mem[_116 + 32] = _119 + ceil32(return_data.size)
            if idx >= mem[ceil32(return_data.size) + 96]:
                revert with 'NH{q', 50
            mem[(32 * idx) + ceil32(return_data.size) + 128] = _116
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _104 = mem[64]
        mem[mem[64]] = 32
        _105 = mem[ceil32(return_data.size) + 96]
        mem[mem[64] + 32] = mem[ceil32(return_data.size) + 96]
        idx = 0
        s = ceil32(return_data.size) + 128
        t = mem[64] + (32 * _105) + 64
        u = mem[64] + 64
        while idx < _105:
            mem[u] = t + -_104 - 64
            _128 = mem[s]
            mem[t] = mem[mem[s]]
            _130 = mem[_128 + 32]
            mem[t + 32] = 64
            _133 = mem[_130]
            mem[t + 64] = mem[_130]
            v = 0
            while v < _133:
                mem[v + t + 96] = mem[v + _130 + 32]
                v = v + 32
                continue 
            if ceil32(_133) > _133:
                mem[t + _133 + 96] = 0
            idx = idx + 1
            s = s + 32
            t = ceil32(_133) + t + 96
            u = u + 32
            continue 
    return memory
      from mem[64]
       len t - mem[64]
}

function sub_f27362f3(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    mem[100] = address(arg1)
    require ext_code.size(stor0)
    staticcall stor0.0x70a08231 with:
            gas gas_remaining wei
           args address(arg1)
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > test266151307():
        revert with 'NH{q', 65
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    mem[64] = ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128
    if not ext_call.return_data[0]:
        idx = 0
        while idx < ext_call.return_data[0]:
            mem[mem[64] + 4] = address(arg1)
            mem[mem[64] + 36] = idx
            require ext_code.size(stor0)
            staticcall stor0.'/t\Y' with:
                    gas gas_remaining wei
                   args address(arg1), idx
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _107 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _111 = mem[_107]
            mem[mem[64]] = 0x2b219d8300000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = _111
            mem[mem[64] + 36] = stor0
            mem[mem[64] + 68] = 0
            require ext_code.size(stor1)
            staticcall stor1.0x2b219d83 with:
                    gas gas_remaining wei
                   args _111, stor0, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _121 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _127 = mem[_121]
            require mem[_121] <= test266151307()
            require _121 + mem[_121] + 31 < _121 + return_data.size
            _133 = mem[_121 + mem[_121]]
            if mem[_121 + mem[_121]] > test266151307():
                revert with 'NH{q', 65
            if ceil32(ceil32(mem[_121 + mem[_121]])) + 1 < 0 or _121 + ceil32(return_data.size) + ceil32(ceil32(mem[_121 + mem[_121]])) + 1 > test266151307():
                revert with 'NH{q', 65
            mem[64] = _121 + ceil32(return_data.size) + ceil32(ceil32(mem[_121 + mem[_121]])) + 1
            mem[_121 + ceil32(return_data.size)] = _133
            require _127 + _133 + 32 <= return_data.size
            s = 0
            while s < _133:
                mem[s + _121 + ceil32(return_data.size) + 32] = mem[s + _121 + _127 + 32]
                s = s + 32
                continue 
            if ceil32(_133) <= _133:
                mem[mem[64]] = 0x2b219d8300000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = _111
                mem[mem[64] + 36] = stor0
                mem[mem[64] + 68] = 1
                require ext_code.size(stor1)
                staticcall stor1.0x2b219d83 with:
                        gas gas_remaining wei
                       args _111, stor0, 1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _212 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _220 = mem[_212]
                require mem[_212] <= test266151307()
                require _212 + mem[_212] + 31 < _212 + return_data.size
                _235 = mem[_212 + mem[_212]]
                if mem[_212 + mem[_212]] > test266151307():
                    revert with 'NH{q', 65
                if ceil32(ceil32(mem[_212 + mem[_212]])) + 1 < 0 or _212 + ceil32(return_data.size) + ceil32(ceil32(mem[_212 + mem[_212]])) + 1 > test266151307():
                    revert with 'NH{q', 65
                mem[64] = _212 + ceil32(return_data.size) + ceil32(ceil32(mem[_212 + mem[_212]])) + 1
                mem[_212 + ceil32(return_data.size)] = _235
                require _220 + _235 + 32 <= return_data.size
                s = 0
                while s < _235:
                    mem[s + _212 + ceil32(return_data.size) + 32] = mem[s + _212 + _220 + 32]
                    s = s + 32
                    continue 
                if ceil32(_235) <= _235:
                    _338 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_338] = _111
                    mem[_338 + 32] = _121 + ceil32(return_data.size)
                    mem[_338 + 64] = _212 + ceil32(return_data.size)
                    if idx >= mem[ceil32(return_data.size) + 96]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + ceil32(return_data.size) + 128] = _338
                else:
                    mem[_212 + ceil32(return_data.size) + _235 + 32] = 0
                    _344 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_344] = _111
                    mem[_344 + 32] = _121 + ceil32(return_data.size)
                    mem[_344 + 64] = _212 + ceil32(return_data.size)
                    if idx >= mem[ceil32(return_data.size) + 96]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + ceil32(return_data.size) + 128] = _344
            else:
                mem[_121 + ceil32(return_data.size) + _133 + 32] = 0
                mem[mem[64]] = 0x2b219d8300000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = _111
                mem[mem[64] + 36] = stor0
                mem[mem[64] + 68] = 1
                require ext_code.size(stor1)
                staticcall stor1.0x2b219d83 with:
                        gas gas_remaining wei
                       args _111, stor0, 1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _217 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _229 = mem[_217]
                require mem[_217] <= test266151307()
                require _217 + mem[_217] + 31 < _217 + return_data.size
                _241 = mem[_217 + mem[_217]]
                if mem[_217 + mem[_217]] > test266151307():
                    revert with 'NH{q', 65
                if ceil32(ceil32(mem[_217 + mem[_217]])) + 1 < 0 or _217 + ceil32(return_data.size) + ceil32(ceil32(mem[_217 + mem[_217]])) + 1 > test266151307():
                    revert with 'NH{q', 65
                mem[64] = _217 + ceil32(return_data.size) + ceil32(ceil32(mem[_217 + mem[_217]])) + 1
                mem[_217 + ceil32(return_data.size)] = _241
                require _229 + _241 + 32 <= return_data.size
                s = 0
                while s < _241:
                    mem[s + _217 + ceil32(return_data.size) + 32] = mem[s + _217 + _229 + 32]
                    s = s + 32
                    continue 
                if ceil32(_241) <= _241:
                    _340 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_340] = _111
                    mem[_340 + 32] = _121 + ceil32(return_data.size)
                    mem[_340 + 64] = _217 + ceil32(return_data.size)
                    if idx >= mem[ceil32(return_data.size) + 96]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + ceil32(return_data.size) + 128] = _340
                else:
                    mem[_217 + ceil32(return_data.size) + _241 + 32] = 0
                    _346 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_346] = _111
                    mem[_346 + 32] = _121 + ceil32(return_data.size)
                    mem[_346 + 64] = _217 + ceil32(return_data.size)
                    if idx >= mem[ceil32(return_data.size) + 96]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + ceil32(return_data.size) + 128] = _346
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _104 = mem[64]
        mem[mem[64]] = 32
        _106 = mem[ceil32(return_data.size) + 96]
        mem[mem[64] + 32] = mem[ceil32(return_data.size) + 96]
        idx = 0
        s = ceil32(return_data.size) + 128
        t = mem[64] + (32 * _106) + 64
        u = mem[64] + 64
        while idx < _106:
            mem[u] = t + -_104 - 64
            _197 = mem[s]
            mem[t] = mem[mem[s]]
            _199 = mem[_197 + 32]
            mem[t + 32] = 96
            _203 = mem[_199]
            mem[t + 96] = mem[_199]
            v = 0
            while v < _203:
                mem[v + t + 128] = mem[v + _199 + 32]
                v = v + 32
                continue 
            if ceil32(_203) <= _203:
                _337 = mem[_197 + 64]
                mem[t + 64] = ceil32(_203) + 128
                _342 = mem[_337]
                mem[ceil32(_203) + t + 128] = mem[_337]
                v = 0
                while v < _342:
                    mem[v + ceil32(_203) + t + 160] = mem[v + _337 + 32]
                    v = v + 32
                    continue 
                if ceil32(_342) > _342:
                    mem[ceil32(_203) + t + _342 + 160] = 0
                idx = idx + 1
                s = s + 32
                t = ceil32(_342) + ceil32(_203) + t + 160
                u = u + 32
                continue 
            mem[t + _203 + 128] = 0
            _343 = mem[_197 + 64]
            mem[t + 64] = ceil32(_203) + 128
            _354 = mem[_343]
            mem[ceil32(_203) + t + 128] = mem[_343]
            v = 0
            while v < _354:
                mem[v + ceil32(_203) + t + 160] = mem[v + _343 + 32]
                v = v + 32
                continue 
            if ceil32(_354) > _354:
                mem[ceil32(_203) + t + _354 + 160] = 0
            idx = idx + 1
            s = s + 32
            t = ceil32(_354) + ceil32(_203) + t + 160
            u = u + 32
            continue 
        return memory
          from mem[64]
           len t - mem[64]
    mem[64] = ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 224
    mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128] = 0
    mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 160] = 96
    mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 192] = 96
    mem[var20002] = var20001
    if not var20003 - 1:
        idx = 0
        while idx < ext_call.return_data[0]:
            mem[mem[64] + 4] = address(arg1)
            mem[mem[64] + 36] = idx
            require ext_code.size(stor0)
            staticcall stor0.'/t\Y' with:
                    gas gas_remaining wei
                   args address(arg1), idx
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _336 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _353 = mem[_336]
            mem[mem[64]] = 0x2b219d8300000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = _353
            mem[mem[64] + 36] = stor0
            mem[mem[64] + 68] = 0
            require ext_code.size(stor1)
            staticcall stor1.0x2b219d83 with:
                    gas gas_remaining wei
                   args _353, stor0, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _363 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _374 = mem[_363]
            require mem[_363] <= test266151307()
            require _363 + mem[_363] + 31 < _363 + return_data.size
            _377 = mem[_363 + mem[_363]]
            if mem[_363 + mem[_363]] > test266151307():
                revert with 'NH{q', 65
            if ceil32(ceil32(mem[_363 + mem[_363]])) + 1 < 0 or _363 + ceil32(return_data.size) + ceil32(ceil32(mem[_363 + mem[_363]])) + 1 > test266151307():
                revert with 'NH{q', 65
            mem[64] = _363 + ceil32(return_data.size) + ceil32(ceil32(mem[_363 + mem[_363]])) + 1
            mem[_363 + ceil32(return_data.size)] = _377
            require _374 + _377 + 32 <= return_data.size
            s = 0
            while s < _377:
                mem[s + _363 + ceil32(return_data.size) + 32] = mem[s + _363 + _374 + 32]
                s = s + 32
                continue 
            if ceil32(_377) <= _377:
                mem[mem[64]] = 0x2b219d8300000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = _353
                mem[mem[64] + 36] = stor0
                mem[mem[64] + 68] = 1
                require ext_code.size(stor1)
                staticcall stor1.0x2b219d83 with:
                        gas gas_remaining wei
                       args _353, stor0, 1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _461 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _471 = mem[_461]
                require mem[_461] <= test266151307()
                require _461 + mem[_461] + 31 < _461 + return_data.size
                _484 = mem[_461 + mem[_461]]
                if mem[_461 + mem[_461]] > test266151307():
                    revert with 'NH{q', 65
                if ceil32(ceil32(mem[_461 + mem[_461]])) + 1 < 0 or _461 + ceil32(return_data.size) + ceil32(ceil32(mem[_461 + mem[_461]])) + 1 > test266151307():
                    revert with 'NH{q', 65
                mem[64] = _461 + ceil32(return_data.size) + ceil32(ceil32(mem[_461 + mem[_461]])) + 1
                mem[_461 + ceil32(return_data.size)] = _484
                require _471 + _484 + 32 <= return_data.size
                s = 0
                while s < _484:
                    mem[s + _461 + ceil32(return_data.size) + 32] = mem[s + _461 + _471 + 32]
                    s = s + 32
                    continue 
                if ceil32(_484) <= _484:
                    _583 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_583] = _353
                    mem[_583 + 32] = _363 + ceil32(return_data.size)
                    mem[_583 + 64] = _461 + ceil32(return_data.size)
                    if idx >= mem[ceil32(return_data.size) + 96]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + ceil32(return_data.size) + 128] = _583
                else:
                    mem[_461 + ceil32(return_data.size) + _484 + 32] = 0
                    _595 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_595] = _353
                    mem[_595 + 32] = _363 + ceil32(return_data.size)
                    mem[_595 + 64] = _461 + ceil32(return_data.size)
                    if idx >= mem[ceil32(return_data.size) + 96]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + ceil32(return_data.size) + 128] = _595
            else:
                mem[_363 + ceil32(return_data.size) + _377 + 32] = 0
                mem[mem[64]] = 0x2b219d8300000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = _353
                mem[mem[64] + 36] = stor0
                mem[mem[64] + 68] = 1
                require ext_code.size(stor1)
                staticcall stor1.0x2b219d83 with:
                        gas gas_remaining wei
                       args _353, stor0, 1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _463 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _478 = mem[_463]
                require mem[_463] <= test266151307()
                require _463 + mem[_463] + 31 < _463 + return_data.size
                _491 = mem[_463 + mem[_463]]
                if mem[_463 + mem[_463]] > test266151307():
                    revert with 'NH{q', 65
                if ceil32(ceil32(mem[_463 + mem[_463]])) + 1 < 0 or _463 + ceil32(return_data.size) + ceil32(ceil32(mem[_463 + mem[_463]])) + 1 > test266151307():
                    revert with 'NH{q', 65
                mem[64] = _463 + ceil32(return_data.size) + ceil32(ceil32(mem[_463 + mem[_463]])) + 1
                mem[_463 + ceil32(return_data.size)] = _491
                require _478 + _491 + 32 <= return_data.size
                s = 0
                while s < _491:
                    mem[s + _463 + ceil32(return_data.size) + 32] = mem[s + _463 + _478 + 32]
                    s = s + 32
                    continue 
                if ceil32(_491) <= _491:
                    _585 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_585] = _353
                    mem[_585 + 32] = _363 + ceil32(return_data.size)
                    mem[_585 + 64] = _463 + ceil32(return_data.size)
                    if idx >= mem[ceil32(return_data.size) + 96]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + ceil32(return_data.size) + 128] = _585
                else:
                    mem[_463 + ceil32(return_data.size) + _491 + 32] = 0
                    _597 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_597] = _353
                    mem[_597 + 32] = _363 + ceil32(return_data.size)
                    mem[_597 + 64] = _463 + ceil32(return_data.size)
                    if idx >= mem[ceil32(return_data.size) + 96]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + ceil32(return_data.size) + 128] = _597
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _334 = mem[64]
        mem[mem[64]] = 32
        _335 = mem[ceil32(return_data.size) + 96]
        mem[mem[64] + 32] = mem[ceil32(return_data.size) + 96]
        idx = 0
        s = ceil32(return_data.size) + 128
        t = mem[64] + (32 * _335) + 64
        u = mem[64] + 64
        while idx < _335:
            mem[u] = t + -_334 - 64
            _443 = mem[s]
            mem[t] = mem[mem[s]]
            _445 = mem[_443 + 32]
            mem[t + 32] = 96
            _448 = mem[_445]
            mem[t + 96] = mem[_445]
            v = 0
            while v < _448:
                mem[v + t + 128] = mem[v + _445 + 32]
                v = v + 32
                continue 
            if ceil32(_448) <= _448:
                _582 = mem[_443 + 64]
                mem[t + 64] = ceil32(_448) + 128
                _593 = mem[_582]
                mem[ceil32(_448) + t + 128] = mem[_582]
                v = 0
                while v < _593:
                    mem[v + ceil32(_448) + t + 160] = mem[v + _582 + 32]
                    v = v + 32
                    continue 
                if ceil32(_593) > _593:
                    mem[ceil32(_448) + t + _593 + 160] = 0
                idx = idx + 1
                s = s + 32
                t = ceil32(_593) + ceil32(_448) + t + 160
                u = u + 32
                continue 
            mem[t + _448 + 128] = 0
            _594 = mem[_443 + 64]
            mem[t + 64] = ceil32(_448) + 128
            _604 = mem[_594]
            mem[ceil32(_448) + t + 128] = mem[_594]
            v = 0
            while v < _604:
                mem[v + ceil32(_448) + t + 160] = mem[v + _594 + 32]
                v = v + 32
                continue 
            if ceil32(_604) > _604:
                mem[ceil32(_448) + t + _604 + 160] = 0
            idx = idx + 1
            s = s + 32
            t = ceil32(_604) + ceil32(_448) + t + 160
            u = u + 32
            continue 
        return memory
          from mem[64]
           len t - mem[64]
    mem[64] = ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 320
    mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 224] = 0
    mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 256] = 96
    mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 288] = 96
    mem[var24002] = var24001
    if not var24003 - 1:
        idx = 0
        while idx < ext_call.return_data[0]:
            mem[mem[64] + 4] = address(arg1)
            mem[mem[64] + 36] = idx
            require ext_code.size(stor0)
            staticcall stor0.'/t\Y' with:
                    gas gas_remaining wei
                   args address(arg1), idx
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _581 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _592 = mem[_581]
            mem[mem[64]] = 0x2b219d8300000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = _592
            mem[mem[64] + 36] = stor0
            mem[mem[64] + 68] = 0
            require ext_code.size(stor1)
            staticcall stor1.0x2b219d83 with:
                    gas gas_remaining wei
                   args _592, stor0, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _607 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _619 = mem[_607]
            require mem[_607] <= test266151307()
            require _607 + mem[_607] + 31 < _607 + return_data.size
            _622 = mem[_607 + mem[_607]]
            if mem[_607 + mem[_607]] > test266151307():
                revert with 'NH{q', 65
            if ceil32(ceil32(mem[_607 + mem[_607]])) + 1 < 0 or _607 + ceil32(return_data.size) + ceil32(ceil32(mem[_607 + mem[_607]])) + 1 > test266151307():
                revert with 'NH{q', 65
            mem[64] = _607 + ceil32(return_data.size) + ceil32(ceil32(mem[_607 + mem[_607]])) + 1
            mem[_607 + ceil32(return_data.size)] = _622
            require _619 + _622 + 32 <= return_data.size
            s = 0
            while s < _622:
                mem[s + _607 + ceil32(return_data.size) + 32] = mem[s + _607 + _619 + 32]
                s = s + 32
                continue 
            if ceil32(_622) <= _622:
                mem[mem[64]] = 0x2b219d8300000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = _592
                mem[mem[64] + 36] = stor0
                mem[mem[64] + 68] = 1
                require ext_code.size(stor1)
                staticcall stor1.0x2b219d83 with:
                        gas gas_remaining wei
                       args _592, stor0, 1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _706 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _716 = mem[_706]
                require mem[_706] <= test266151307()
                require _706 + mem[_706] + 31 < _706 + return_data.size
                _729 = mem[_706 + mem[_706]]
                if mem[_706 + mem[_706]] > test266151307():
                    revert with 'NH{q', 65
                if ceil32(ceil32(mem[_706 + mem[_706]])) + 1 < 0 or _706 + ceil32(return_data.size) + ceil32(ceil32(mem[_706 + mem[_706]])) + 1 > test266151307():
                    revert with 'NH{q', 65
                mem[64] = _706 + ceil32(return_data.size) + ceil32(ceil32(mem[_706 + mem[_706]])) + 1
                mem[_706 + ceil32(return_data.size)] = _729
                require _716 + _729 + 32 <= return_data.size
                s = 0
                while s < _729:
                    mem[s + _706 + ceil32(return_data.size) + 32] = mem[s + _706 + _716 + 32]
                    s = s + 32
                    continue 
                if ceil32(_729) <= _729:
                    _828 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_828] = _592
                    mem[_828 + 32] = _607 + ceil32(return_data.size)
                    mem[_828 + 64] = _706 + ceil32(return_data.size)
                    if idx >= mem[ceil32(return_data.size) + 96]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + ceil32(return_data.size) + 128] = _828
                else:
                    mem[_706 + ceil32(return_data.size) + _729 + 32] = 0
                    _840 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_840] = _592
                    mem[_840 + 32] = _607 + ceil32(return_data.size)
                    mem[_840 + 64] = _706 + ceil32(return_data.size)
                    if idx >= mem[ceil32(return_data.size) + 96]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + ceil32(return_data.size) + 128] = _840
            else:
                mem[_607 + ceil32(return_data.size) + _622 + 32] = 0
                mem[mem[64]] = 0x2b219d8300000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = _592
                mem[mem[64] + 36] = stor0
                mem[mem[64] + 68] = 1
                require ext_code.size(stor1)
                staticcall stor1.0x2b219d83 with:
                        gas gas_remaining wei
                       args _592, stor0, 1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _708 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _723 = mem[_708]
                require mem[_708] <= test266151307()
                require _708 + mem[_708] + 31 < _708 + return_data.size
                _736 = mem[_708 + mem[_708]]
                if mem[_708 + mem[_708]] > test266151307():
                    revert with 'NH{q', 65
                if ceil32(ceil32(mem[_708 + mem[_708]])) + 1 < 0 or _708 + ceil32(return_data.size) + ceil32(ceil32(mem[_708 + mem[_708]])) + 1 > test266151307():
                    revert with 'NH{q', 65
                mem[64] = _708 + ceil32(return_data.size) + ceil32(ceil32(mem[_708 + mem[_708]])) + 1
                mem[_708 + ceil32(return_data.size)] = _736
                require _723 + _736 + 32 <= return_data.size
                s = 0
                while s < _736:
                    mem[s + _708 + ceil32(return_data.size) + 32] = mem[s + _708 + _723 + 32]
                    s = s + 32
                    continue 
                if ceil32(_736) <= _736:
                    _830 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_830] = _592
                    mem[_830 + 32] = _607 + ceil32(return_data.size)
                    mem[_830 + 64] = _708 + ceil32(return_data.size)
                    if idx >= mem[ceil32(return_data.size) + 96]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + ceil32(return_data.size) + 128] = _830
                else:
                    mem[_708 + ceil32(return_data.size) + _736 + 32] = 0
                    _842 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_842] = _592
                    mem[_842 + 32] = _607 + ceil32(return_data.size)
                    mem[_842 + 64] = _708 + ceil32(return_data.size)
                    if idx >= mem[ceil32(return_data.size) + 96]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + ceil32(return_data.size) + 128] = _842
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _579 = mem[64]
        mem[mem[64]] = 32
        _580 = mem[ceil32(return_data.size) + 96]
        mem[mem[64] + 32] = mem[ceil32(return_data.size) + 96]
        idx = 0
        s = ceil32(return_data.size) + 128
        t = mem[64] + (32 * _580) + 64
        u = mem[64] + 64
        while idx < _580:
            mem[u] = t + -_579 - 64
            _686 = mem[s]
            mem[t] = mem[mem[s]]
            _688 = mem[_686 + 32]
            mem[t + 32] = 96
            _693 = mem[_688]
            mem[t + 96] = mem[_688]
            v = 0
            while v < _693:
                mem[v + t + 128] = mem[v + _688 + 32]
                v = v + 32
                continue 
            if ceil32(_693) <= _693:
                _827 = mem[_686 + 64]
                mem[t + 64] = ceil32(_693) + 128
                _838 = mem[_827]
                mem[ceil32(_693) + t + 128] = mem[_827]
                v = 0
                while v < _838:
                    mem[v + ceil32(_693) + t + 160] = mem[v + _827 + 32]
                    v = v + 32
                    continue 
                if ceil32(_838) > _838:
                    mem[ceil32(_693) + t + _838 + 160] = 0
                idx = idx + 1
                s = s + 32
                t = ceil32(_838) + ceil32(_693) + t + 160
                u = u + 32
                continue 
            mem[t + _693 + 128] = 0
            _839 = mem[_686 + 64]
            mem[t + 64] = ceil32(_693) + 128
            _849 = mem[_839]
            mem[ceil32(_693) + t + 128] = mem[_839]
            v = 0
            while v < _849:
                mem[v + ceil32(_693) + t + 160] = mem[v + _839 + 32]
                v = v + 32
                continue 
            if ceil32(_849) > _849:
                mem[ceil32(_693) + t + _849 + 160] = 0
            idx = idx + 1
            s = s + 32
            t = ceil32(_849) + ceil32(_693) + t + 160
            u = u + 32
            continue 
        return memory
          from mem[64]
           len t - mem[64]
    mem[64] = ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 416
    mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 320] = 0
    mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 352] = 96
    mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 384] = 96
    mem[var28002] = var28001
    if not var28003 - 1:
        idx = 0
        while idx < ext_call.return_data[0]:
            mem[mem[64] + 4] = address(arg1)
            mem[mem[64] + 36] = idx
            require ext_code.size(stor0)
            staticcall stor0.'/t\Y' with:
                    gas gas_remaining wei
                   args address(arg1), idx
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _826 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _837 = mem[_826]
            mem[mem[64]] = 0x2b219d8300000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = _837
            mem[mem[64] + 36] = stor0
            mem[mem[64] + 68] = 0
            require ext_code.size(stor1)
            staticcall stor1.0x2b219d83 with:
                    gas gas_remaining wei
                   args _837, stor0, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _852 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _864 = mem[_852]
            require mem[_852] <= test266151307()
            require _852 + mem[_852] + 31 < _852 + return_data.size
            _867 = mem[_852 + mem[_852]]
            if mem[_852 + mem[_852]] > test266151307():
                revert with 'NH{q', 65
            if ceil32(ceil32(mem[_852 + mem[_852]])) + 1 < 0 or _852 + ceil32(return_data.size) + ceil32(ceil32(mem[_852 + mem[_852]])) + 1 > test266151307():
                revert with 'NH{q', 65
            mem[64] = _852 + ceil32(return_data.size) + ceil32(ceil32(mem[_852 + mem[_852]])) + 1
            mem[_852 + ceil32(return_data.size)] = _867
            require _864 + _867 + 32 <= return_data.size
            s = 0
            while s < _867:
                mem[s + _852 + ceil32(return_data.size) + 32] = mem[s + _852 + _864 + 32]
                s = s + 32
                continue 
            if ceil32(_867) <= _867:
                mem[mem[64]] = 0x2b219d8300000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = _837
                mem[mem[64] + 36] = stor0
                mem[mem[64] + 68] = 1
                require ext_code.size(stor1)
                staticcall stor1.0x2b219d83 with:
                        gas gas_remaining wei
                       args _837, stor0, 1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _951 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _961 = mem[_951]
                require mem[_951] <= test266151307()
                require _951 + mem[_951] + 31 < _951 + return_data.size
                _974 = mem[_951 + mem[_951]]
                if mem[_951 + mem[_951]] > test266151307():
                    revert with 'NH{q', 65
                if ceil32(ceil32(mem[_951 + mem[_951]])) + 1 < 0 or _951 + ceil32(return_data.size) + ceil32(ceil32(mem[_951 + mem[_951]])) + 1 > test266151307():
                    revert with 'NH{q', 65
                mem[64] = _951 + ceil32(return_data.size) + ceil32(ceil32(mem[_951 + mem[_951]])) + 1
                mem[_951 + ceil32(return_data.size)] = _974
                require _961 + _974 + 32 <= return_data.size
                s = 0
                while s < _974:
                    mem[s + _951 + ceil32(return_data.size) + 32] = mem[s + _951 + _961 + 32]
                    s = s + 32
                    continue 
                if ceil32(_974) <= _974:
                    _1073 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_1073] = _837
                    mem[_1073 + 32] = _852 + ceil32(return_data.size)
                    mem[_1073 + 64] = _951 + ceil32(return_data.size)
                    if idx >= mem[ceil32(return_data.size) + 96]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + ceil32(return_data.size) + 128] = _1073
                else:
                    mem[_951 + ceil32(return_data.size) + _974 + 32] = 0
                    _1085 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_1085] = _837
                    mem[_1085 + 32] = _852 + ceil32(return_data.size)
                    mem[_1085 + 64] = _951 + ceil32(return_data.size)
                    if idx >= mem[ceil32(return_data.size) + 96]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + ceil32(return_data.size) + 128] = _1085
            else:
                mem[_852 + ceil32(return_data.size) + _867 + 32] = 0
                mem[mem[64]] = 0x2b219d8300000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = _837
                mem[mem[64] + 36] = stor0
                mem[mem[64] + 68] = 1
                require ext_code.size(stor1)
                staticcall stor1.0x2b219d83 with:
                        gas gas_remaining wei
                       args _837, stor0, 1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _953 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _968 = mem[_953]
                require mem[_953] <= test266151307()
                require _953 + mem[_953] + 31 < _953 + return_data.size
                _981 = mem[_953 + mem[_953]]
                if mem[_953 + mem[_953]] > test266151307():
                    revert with 'NH{q', 65
                if ceil32(ceil32(mem[_953 + mem[_953]])) + 1 < 0 or _953 + ceil32(return_data.size) + ceil32(ceil32(mem[_953 + mem[_953]])) + 1 > test266151307():
                    revert with 'NH{q', 65
                mem[64] = _953 + ceil32(return_data.size) + ceil32(ceil32(mem[_953 + mem[_953]])) + 1
                mem[_953 + ceil32(return_data.size)] = _981
                require _968 + _981 + 32 <= return_data.size
                s = 0
                while s < _981:
                    mem[s + _953 + ceil32(return_data.size) + 32] = mem[s + _953 + _968 + 32]
                    s = s + 32
                    continue 
                if ceil32(_981) <= _981:
                    _1075 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_1075] = _837
                    mem[_1075 + 32] = _852 + ceil32(return_data.size)
                    mem[_1075 + 64] = _953 + ceil32(return_data.size)
                    if idx >= mem[ceil32(return_data.size) + 96]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + ceil32(return_data.size) + 128] = _1075
                else:
                    mem[_953 + ceil32(return_data.size) + _981 + 32] = 0
                    _1087 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_1087] = _837
                    mem[_1087 + 32] = _852 + ceil32(return_data.size)
                    mem[_1087 + 64] = _953 + ceil32(return_data.size)
                    if idx >= mem[ceil32(return_data.size) + 96]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + ceil32(return_data.size) + 128] = _1087
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _824 = mem[64]
        mem[mem[64]] = 32
        _825 = mem[ceil32(return_data.size) + 96]
        mem[mem[64] + 32] = mem[ceil32(return_data.size) + 96]
        idx = 0
        s = ceil32(return_data.size) + 128
        t = mem[64] + (32 * _825) + 64
        u = mem[64] + 64
        while idx < _825:
            mem[u] = t + -_824 - 64
            _931 = mem[s]
            mem[t] = mem[mem[s]]
            _933 = mem[_931 + 32]
            mem[t + 32] = 96
            _938 = mem[_933]
            mem[t + 96] = mem[_933]
            v = 0
            while v < _938:
                mem[v + t + 128] = mem[v + _933 + 32]
                v = v + 32
                continue 
            if ceil32(_938) <= _938:
                _1072 = mem[_931 + 64]
                mem[t + 64] = ceil32(_938) + 128
                _1083 = mem[_1072]
                mem[ceil32(_938) + t + 128] = mem[_1072]
                v = 0
                while v < _1083:
                    mem[v + ceil32(_938) + t + 160] = mem[v + _1072 + 32]
                    v = v + 32
                    continue 
                if ceil32(_1083) > _1083:
                    mem[ceil32(_938) + t + _1083 + 160] = 0
                idx = idx + 1
                s = s + 32
                t = ceil32(_1083) + ceil32(_938) + t + 160
                u = u + 32
                continue 
            mem[t + _938 + 128] = 0
            _1084 = mem[_931 + 64]
            mem[t + 64] = ceil32(_938) + 128
            _1094 = mem[_1084]
            mem[ceil32(_938) + t + 128] = mem[_1084]
            v = 0
            while v < _1094:
                mem[v + ceil32(_938) + t + 160] = mem[v + _1084 + 32]
                v = v + 32
                continue 
            if ceil32(_1094) > _1094:
                mem[ceil32(_938) + t + _1094 + 160] = 0
            idx = idx + 1
            s = s + 32
            t = ceil32(_1094) + ceil32(_938) + t + 160
            u = u + 32
            continue 
        return memory
          from mem[64]
           len t - mem[64]
    mem[64] = ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 512
    mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 416] = 0
    mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 448] = 96
    mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 480] = 96
    mem[var32002] = var32001
    if not var32003 - 1:
        idx = 0
        while idx < ext_call.return_data[0]:
            mem[mem[64] + 4] = address(arg1)
            mem[mem[64] + 36] = idx
            require ext_code.size(stor0)
            staticcall stor0.'/t\Y' with:
                    gas gas_remaining wei
                   args address(arg1), idx
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1071 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1082 = mem[_1071]
            mem[mem[64]] = 0x2b219d8300000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = _1082
            mem[mem[64] + 36] = stor0
            mem[mem[64] + 68] = 0
            require ext_code.size(stor1)
            staticcall stor1.0x2b219d83 with:
                    gas gas_remaining wei
                   args _1082, stor0, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1097 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1109 = mem[_1097]
            require mem[_1097] <= test266151307()
            require _1097 + mem[_1097] + 31 < _1097 + return_data.size
            _1112 = mem[_1097 + mem[_1097]]
            if mem[_1097 + mem[_1097]] > test266151307():
                revert with 'NH{q', 65
            if ceil32(ceil32(mem[_1097 + mem[_1097]])) + 1 < 0 or _1097 + ceil32(return_data.size) + ceil32(ceil32(mem[_1097 + mem[_1097]])) + 1 > test266151307():
                revert with 'NH{q', 65
            mem[64] = _1097 + ceil32(return_data.size) + ceil32(ceil32(mem[_1097 + mem[_1097]])) + 1
            mem[_1097 + ceil32(return_data.size)] = _1112
            require _1109 + _1112 + 32 <= return_data.size
            s = 0
            while s < _1112:
                mem[s + _1097 + ceil32(return_data.size) + 32] = mem[s + _1097 + _1109 + 32]
                s = s + 32
                continue 
            if ceil32(_1112) <= _1112:
                mem[mem[64]] = 0x2b219d8300000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = _1082
                mem[mem[64] + 36] = stor0
                mem[mem[64] + 68] = 1
                require ext_code.size(stor1)
                staticcall stor1.0x2b219d83 with:
                        gas gas_remaining wei
                       args _1082, stor0, 1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1196 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1206 = mem[_1196]
                require mem[_1196] <= test266151307()
                require _1196 + mem[_1196] + 31 < _1196 + return_data.size
                _1219 = mem[_1196 + mem[_1196]]
                if mem[_1196 + mem[_1196]] > test266151307():
                    revert with 'NH{q', 65
                if ceil32(ceil32(mem[_1196 + mem[_1196]])) + 1 < 0 or _1196 + ceil32(return_data.size) + ceil32(ceil32(mem[_1196 + mem[_1196]])) + 1 > test266151307():
                    revert with 'NH{q', 65
                mem[64] = _1196 + ceil32(return_data.size) + ceil32(ceil32(mem[_1196 + mem[_1196]])) + 1
                mem[_1196 + ceil32(return_data.size)] = _1219
                require _1206 + _1219 + 32 <= return_data.size
                s = 0
                while s < _1219:
                    mem[s + _1196 + ceil32(return_data.size) + 32] = mem[s + _1196 + _1206 + 32]
                    s = s + 32
                    continue 
                if ceil32(_1219) <= _1219:
                    _1318 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_1318] = _1082
                    mem[_1318 + 32] = _1097 + ceil32(return_data.size)
                    mem[_1318 + 64] = _1196 + ceil32(return_data.size)
                    if idx >= mem[ceil32(return_data.size) + 96]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + ceil32(return_data.size) + 128] = _1318
                else:
                    mem[_1196 + ceil32(return_data.size) + _1219 + 32] = 0
                    _1330 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_1330] = _1082
                    mem[_1330 + 32] = _1097 + ceil32(return_data.size)
                    mem[_1330 + 64] = _1196 + ceil32(return_data.size)
                    if idx >= mem[ceil32(return_data.size) + 96]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + ceil32(return_data.size) + 128] = _1330
            else:
                mem[_1097 + ceil32(return_data.size) + _1112 + 32] = 0
                mem[mem[64]] = 0x2b219d8300000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = _1082
                mem[mem[64] + 36] = stor0
                mem[mem[64] + 68] = 1
                require ext_code.size(stor1)
                staticcall stor1.0x2b219d83 with:
                        gas gas_remaining wei
                       args _1082, stor0, 1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1198 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1213 = mem[_1198]
                require mem[_1198] <= test266151307()
                require _1198 + mem[_1198] + 31 < _1198 + return_data.size
                _1226 = mem[_1198 + mem[_1198]]
                if mem[_1198 + mem[_1198]] > test266151307():
                    revert with 'NH{q', 65
                if ceil32(ceil32(mem[_1198 + mem[_1198]])) + 1 < 0 or _1198 + ceil32(return_data.size) + ceil32(ceil32(mem[_1198 + mem[_1198]])) + 1 > test266151307():
                    revert with 'NH{q', 65
                mem[64] = _1198 + ceil32(return_data.size) + ceil32(ceil32(mem[_1198 + mem[_1198]])) + 1
                mem[_1198 + ceil32(return_data.size)] = _1226
                require _1213 + _1226 + 32 <= return_data.size
                s = 0
                while s < _1226:
                    mem[s + _1198 + ceil32(return_data.size) + 32] = mem[s + _1198 + _1213 + 32]
                    s = s + 32
                    continue 
                if ceil32(_1226) <= _1226:
                    _1320 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_1320] = _1082
                    mem[_1320 + 32] = _1097 + ceil32(return_data.size)
                    mem[_1320 + 64] = _1198 + ceil32(return_data.size)
                    if idx >= mem[ceil32(return_data.size) + 96]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + ceil32(return_data.size) + 128] = _1320
                else:
                    mem[_1198 + ceil32(return_data.size) + _1226 + 32] = 0
                    _1332 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_1332] = _1082
                    mem[_1332 + 32] = _1097 + ceil32(return_data.size)
                    mem[_1332 + 64] = _1198 + ceil32(return_data.size)
                    if idx >= mem[ceil32(return_data.size) + 96]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + ceil32(return_data.size) + 128] = _1332
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _1069 = mem[64]
        mem[mem[64]] = 32
        _1070 = mem[ceil32(return_data.size) + 96]
        mem[mem[64] + 32] = mem[ceil32(return_data.size) + 96]
        idx = 0
        s = ceil32(return_data.size) + 128
        t = mem[64] + (32 * _1070) + 64
        u = mem[64] + 64
        while idx < _1070:
            mem[u] = t + -_1069 - 64
            _1176 = mem[s]
            mem[t] = mem[mem[s]]
            _1178 = mem[_1176 + 32]
            mem[t + 32] = 96
            _1183 = mem[_1178]
            mem[t + 96] = mem[_1178]
            v = 0
            while v < _1183:
                mem[v + t + 128] = mem[v + _1178 + 32]
                v = v + 32
                continue 
            if ceil32(_1183) <= _1183:
                _1317 = mem[_1176 + 64]
                mem[t + 64] = ceil32(_1183) + 128
                _1328 = mem[_1317]
                mem[ceil32(_1183) + t + 128] = mem[_1317]
                v = 0
                while v < _1328:
                    mem[v + ceil32(_1183) + t + 160] = mem[v + _1317 + 32]
                    v = v + 32
                    continue 
                if ceil32(_1328) > _1328:
                    mem[ceil32(_1183) + t + _1328 + 160] = 0
                idx = idx + 1
                s = s + 32
                t = ceil32(_1328) + ceil32(_1183) + t + 160
                u = u + 32
                continue 
            mem[t + _1183 + 128] = 0
            _1329 = mem[_1176 + 64]
            mem[t + 64] = ceil32(_1183) + 128
            _1339 = mem[_1329]
            mem[ceil32(_1183) + t + 128] = mem[_1329]
            v = 0
            while v < _1339:
                mem[v + ceil32(_1183) + t + 160] = mem[v + _1329 + 32]
                v = v + 32
                continue 
            if ceil32(_1339) > _1339:
                mem[ceil32(_1183) + t + _1339 + 160] = 0
            idx = idx + 1
            s = s + 32
            t = ceil32(_1339) + ceil32(_1183) + t + 160
            u = u + 32
            continue 
        return memory
          from mem[64]
           len t - mem[64]
    mem[64] = ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 608
    mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 512] = 0
    mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 544] = 96
    mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 576] = 96
    mem[var36002] = var36001
    if not var36003 - 1:
        idx = 0
        while idx < ext_call.return_data[0]:
            mem[mem[64] + 4] = address(arg1)
            mem[mem[64] + 36] = idx
            require ext_code.size(stor0)
            staticcall stor0.'/t\Y' with:
                    gas gas_remaining wei
                   args address(arg1), idx
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1316 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1327 = mem[_1316]
            mem[mem[64]] = 0x2b219d8300000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = _1327
            mem[mem[64] + 36] = stor0
            mem[mem[64] + 68] = 0
            require ext_code.size(stor1)
            staticcall stor1.0x2b219d83 with:
                    gas gas_remaining wei
                   args _1327, stor0, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1342 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1354 = mem[_1342]
            require mem[_1342] <= test266151307()
            require _1342 + mem[_1342] + 31 < _1342 + return_data.size
            _1357 = mem[_1342 + mem[_1342]]
            if mem[_1342 + mem[_1342]] > test266151307():
                revert with 'NH{q', 65
            if ceil32(ceil32(mem[_1342 + mem[_1342]])) + 1 < 0 or _1342 + ceil32(return_data.size) + ceil32(ceil32(mem[_1342 + mem[_1342]])) + 1 > test266151307():
                revert with 'NH{q', 65
            mem[64] = _1342 + ceil32(return_data.size) + ceil32(ceil32(mem[_1342 + mem[_1342]])) + 1
            mem[_1342 + ceil32(return_data.size)] = _1357
            require _1354 + _1357 + 32 <= return_data.size
            s = 0
            while s < _1357:
                mem[s + _1342 + ceil32(return_data.size) + 32] = mem[s + _1342 + _1354 + 32]
                s = s + 32
                continue 
            if ceil32(_1357) <= _1357:
                mem[mem[64]] = 0x2b219d8300000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = _1327
                mem[mem[64] + 36] = stor0
                mem[mem[64] + 68] = 1
                require ext_code.size(stor1)
                staticcall stor1.0x2b219d83 with:
                        gas gas_remaining wei
                       args _1327, stor0, 1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1441 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1451 = mem[_1441]
                require mem[_1441] <= test266151307()
                require _1441 + mem[_1441] + 31 < _1441 + return_data.size
                _1464 = mem[_1441 + mem[_1441]]
                if mem[_1441 + mem[_1441]] > test266151307():
                    revert with 'NH{q', 65
                if ceil32(ceil32(mem[_1441 + mem[_1441]])) + 1 < 0 or _1441 + ceil32(return_data.size) + ceil32(ceil32(mem[_1441 + mem[_1441]])) + 1 > test266151307():
                    revert with 'NH{q', 65
                mem[64] = _1441 + ceil32(return_data.size) + ceil32(ceil32(mem[_1441 + mem[_1441]])) + 1
                mem[_1441 + ceil32(return_data.size)] = _1464
                require _1451 + _1464 + 32 <= return_data.size
                s = 0
                while s < _1464:
                    mem[s + _1441 + ceil32(return_data.size) + 32] = mem[s + _1441 + _1451 + 32]
                    s = s + 32
                    continue 
                if ceil32(_1464) <= _1464:
                    _1563 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_1563] = _1327
                    mem[_1563 + 32] = _1342 + ceil32(return_data.size)
                    mem[_1563 + 64] = _1441 + ceil32(return_data.size)
                    if idx >= mem[ceil32(return_data.size) + 96]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + ceil32(return_data.size) + 128] = _1563
                else:
                    mem[_1441 + ceil32(return_data.size) + _1464 + 32] = 0
                    _1575 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_1575] = _1327
                    mem[_1575 + 32] = _1342 + ceil32(return_data.size)
                    mem[_1575 + 64] = _1441 + ceil32(return_data.size)
                    if idx >= mem[ceil32(return_data.size) + 96]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + ceil32(return_data.size) + 128] = _1575
            else:
                mem[_1342 + ceil32(return_data.size) + _1357 + 32] = 0
                mem[mem[64]] = 0x2b219d8300000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = _1327
                mem[mem[64] + 36] = stor0
                mem[mem[64] + 68] = 1
                require ext_code.size(stor1)
                staticcall stor1.0x2b219d83 with:
                        gas gas_remaining wei
                       args _1327, stor0, 1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1443 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1458 = mem[_1443]
                require mem[_1443] <= test266151307()
                require _1443 + mem[_1443] + 31 < _1443 + return_data.size
                _1471 = mem[_1443 + mem[_1443]]
                if mem[_1443 + mem[_1443]] > test266151307():
                    revert with 'NH{q', 65
                if ceil32(ceil32(mem[_1443 + mem[_1443]])) + 1 < 0 or _1443 + ceil32(return_data.size) + ceil32(ceil32(mem[_1443 + mem[_1443]])) + 1 > test266151307():
                    revert with 'NH{q', 65
                mem[64] = _1443 + ceil32(return_data.size) + ceil32(ceil32(mem[_1443 + mem[_1443]])) + 1
                mem[_1443 + ceil32(return_data.size)] = _1471
                require _1458 + _1471 + 32 <= return_data.size
                s = 0
                while s < _1471:
                    mem[s + _1443 + ceil32(return_data.size) + 32] = mem[s + _1443 + _1458 + 32]
                    s = s + 32
                    continue 
                if ceil32(_1471) <= _1471:
                    _1565 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_1565] = _1327
                    mem[_1565 + 32] = _1342 + ceil32(return_data.size)
                    mem[_1565 + 64] = _1443 + ceil32(return_data.size)
                    if idx >= mem[ceil32(return_data.size) + 96]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + ceil32(return_data.size) + 128] = _1565
                else:
                    mem[_1443 + ceil32(return_data.size) + _1471 + 32] = 0
                    _1577 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_1577] = _1327
                    mem[_1577 + 32] = _1342 + ceil32(return_data.size)
                    mem[_1577 + 64] = _1443 + ceil32(return_data.size)
                    if idx >= mem[ceil32(return_data.size) + 96]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + ceil32(return_data.size) + 128] = _1577
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _1314 = mem[64]
        mem[mem[64]] = 32
        _1315 = mem[ceil32(return_data.size) + 96]
        mem[mem[64] + 32] = mem[ceil32(return_data.size) + 96]
        idx = 0
        s = ceil32(return_data.size) + 128
        t = mem[64] + (32 * _1315) + 64
        u = mem[64] + 64
        while idx < _1315:
            mem[u] = t + -_1314 - 64
            _1421 = mem[s]
            mem[t] = mem[mem[s]]
            _1423 = mem[_1421 + 32]
            mem[t + 32] = 96
            _1428 = mem[_1423]
            mem[t + 96] = mem[_1423]
            v = 0
            while v < _1428:
                mem[v + t + 128] = mem[v + _1423 + 32]
                v = v + 32
                continue 
            if ceil32(_1428) <= _1428:
                _1562 = mem[_1421 + 64]
                mem[t + 64] = ceil32(_1428) + 128
                _1573 = mem[_1562]
                mem[ceil32(_1428) + t + 128] = mem[_1562]
                v = 0
                while v < _1573:
                    mem[v + ceil32(_1428) + t + 160] = mem[v + _1562 + 32]
                    v = v + 32
                    continue 
                if ceil32(_1573) > _1573:
                    mem[ceil32(_1428) + t + _1573 + 160] = 0
                idx = idx + 1
                s = s + 32
                t = ceil32(_1573) + ceil32(_1428) + t + 160
                u = u + 32
                continue 
            mem[t + _1428 + 128] = 0
            _1574 = mem[_1421 + 64]
            mem[t + 64] = ceil32(_1428) + 128
            _1584 = mem[_1574]
            mem[ceil32(_1428) + t + 128] = mem[_1574]
            v = 0
            while v < _1584:
                mem[v + ceil32(_1428) + t + 160] = mem[v + _1574 + 32]
                v = v + 32
                continue 
            if ceil32(_1584) > _1584:
                mem[ceil32(_1428) + t + _1584 + 160] = 0
            idx = idx + 1
            s = s + 32
            t = ceil32(_1584) + ceil32(_1428) + t + 160
            u = u + 32
            continue 
        return memory
          from mem[64]
           len t - mem[64]
    mem[64] = ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 704
    mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 608] = 0
    mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 640] = 96
    mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 672] = 96
    mem[var40002] = var40001
    if not var40003 - 1:
        idx = 0
        while idx < ext_call.return_data[0]:
            mem[mem[64] + 4] = address(arg1)
            mem[mem[64] + 36] = idx
            require ext_code.size(stor0)
            staticcall stor0.'/t\Y' with:
                    gas gas_remaining wei
                   args address(arg1), idx
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1561 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1572 = mem[_1561]
            mem[mem[64]] = 0x2b219d8300000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = _1572
            mem[mem[64] + 36] = stor0
            mem[mem[64] + 68] = 0
            require ext_code.size(stor1)
            staticcall stor1.0x2b219d83 with:
                    gas gas_remaining wei
                   args _1572, stor0, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1587 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1599 = mem[_1587]
            require mem[_1587] <= test266151307()
            require _1587 + mem[_1587] + 31 < _1587 + return_data.size
            _1602 = mem[_1587 + mem[_1587]]
            if mem[_1587 + mem[_1587]] > test266151307():
                revert with 'NH{q', 65
            if ceil32(ceil32(mem[_1587 + mem[_1587]])) + 1 < 0 or _1587 + ceil32(return_data.size) + ceil32(ceil32(mem[_1587 + mem[_1587]])) + 1 > test266151307():
                revert with 'NH{q', 65
            mem[64] = _1587 + ceil32(return_data.size) + ceil32(ceil32(mem[_1587 + mem[_1587]])) + 1
            mem[_1587 + ceil32(return_data.size)] = _1602
            require _1599 + _1602 + 32 <= return_data.size
            s = 0
            while s < _1602:
                mem[s + _1587 + ceil32(return_data.size) + 32] = mem[s + _1587 + _1599 + 32]
                s = s + 32
                continue 
            if ceil32(_1602) <= _1602:
                mem[mem[64]] = 0x2b219d8300000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = _1572
                mem[mem[64] + 36] = stor0
                mem[mem[64] + 68] = 1
                require ext_code.size(stor1)
                staticcall stor1.0x2b219d83 with:
                        gas gas_remaining wei
                       args _1572, stor0, 1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1686 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1696 = mem[_1686]
                require mem[_1686] <= test266151307()
                require _1686 + mem[_1686] + 31 < _1686 + return_data.size
                _1709 = mem[_1686 + mem[_1686]]
                if mem[_1686 + mem[_1686]] > test266151307():
                    revert with 'NH{q', 65
                if ceil32(ceil32(mem[_1686 + mem[_1686]])) + 1 < 0 or _1686 + ceil32(return_data.size) + ceil32(ceil32(mem[_1686 + mem[_1686]])) + 1 > test266151307():
                    revert with 'NH{q', 65
                mem[64] = _1686 + ceil32(return_data.size) + ceil32(ceil32(mem[_1686 + mem[_1686]])) + 1
                mem[_1686 + ceil32(return_data.size)] = _1709
                require _1696 + _1709 + 32 <= return_data.size
                s = 0
                while s < _1709:
                    mem[s + _1686 + ceil32(return_data.size) + 32] = mem[s + _1686 + _1696 + 32]
                    s = s + 32
                    continue 
                if ceil32(_1709) <= _1709:
                    _1808 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_1808] = _1572
                    mem[_1808 + 32] = _1587 + ceil32(return_data.size)
                    mem[_1808 + 64] = _1686 + ceil32(return_data.size)
                    if idx >= mem[ceil32(return_data.size) + 96]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + ceil32(return_data.size) + 128] = _1808
                else:
                    mem[_1686 + ceil32(return_data.size) + _1709 + 32] = 0
                    _1820 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_1820] = _1572
                    mem[_1820 + 32] = _1587 + ceil32(return_data.size)
                    mem[_1820 + 64] = _1686 + ceil32(return_data.size)
                    if idx >= mem[ceil32(return_data.size) + 96]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + ceil32(return_data.size) + 128] = _1820
            else:
                mem[_1587 + ceil32(return_data.size) + _1602 + 32] = 0
                mem[mem[64]] = 0x2b219d8300000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = _1572
                mem[mem[64] + 36] = stor0
                mem[mem[64] + 68] = 1
                require ext_code.size(stor1)
                staticcall stor1.0x2b219d83 with:
                        gas gas_remaining wei
                       args _1572, stor0, 1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1688 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1703 = mem[_1688]
                require mem[_1688] <= test266151307()
                require _1688 + mem[_1688] + 31 < _1688 + return_data.size
                _1716 = mem[_1688 + mem[_1688]]
                if mem[_1688 + mem[_1688]] > test266151307():
                    revert with 'NH{q', 65
                if ceil32(ceil32(mem[_1688 + mem[_1688]])) + 1 < 0 or _1688 + ceil32(return_data.size) + ceil32(ceil32(mem[_1688 + mem[_1688]])) + 1 > test266151307():
                    revert with 'NH{q', 65
                mem[64] = _1688 + ceil32(return_data.size) + ceil32(ceil32(mem[_1688 + mem[_1688]])) + 1
                mem[_1688 + ceil32(return_data.size)] = _1716
                require _1703 + _1716 + 32 <= return_data.size
                s = 0
                while s < _1716:
                    mem[s + _1688 + ceil32(return_data.size) + 32] = mem[s + _1688 + _1703 + 32]
                    s = s + 32
                    continue 
                if ceil32(_1716) <= _1716:
                    _1810 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_1810] = _1572
                    mem[_1810 + 32] = _1587 + ceil32(return_data.size)
                    mem[_1810 + 64] = _1688 + ceil32(return_data.size)
                    if idx >= mem[ceil32(return_data.size) + 96]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + ceil32(return_data.size) + 128] = _1810
                else:
                    mem[_1688 + ceil32(return_data.size) + _1716 + 32] = 0
                    _1822 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_1822] = _1572
                    mem[_1822 + 32] = _1587 + ceil32(return_data.size)
                    mem[_1822 + 64] = _1688 + ceil32(return_data.size)
                    if idx >= mem[ceil32(return_data.size) + 96]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + ceil32(return_data.size) + 128] = _1822
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _1559 = mem[64]
        mem[mem[64]] = 32
        _1560 = mem[ceil32(return_data.size) + 96]
        mem[mem[64] + 32] = mem[ceil32(return_data.size) + 96]
        idx = 0
        s = ceil32(return_data.size) + 128
        t = mem[64] + (32 * _1560) + 64
        u = mem[64] + 64
        while idx < _1560:
            mem[u] = t + -_1559 - 64
            _1666 = mem[s]
            mem[t] = mem[mem[s]]
            _1668 = mem[_1666 + 32]
            mem[t + 32] = 96
            _1673 = mem[_1668]
            mem[t + 96] = mem[_1668]
            v = 0
            while v < _1673:
                mem[v + t + 128] = mem[v + _1668 + 32]
                v = v + 32
                continue 
            if ceil32(_1673) <= _1673:
                _1807 = mem[_1666 + 64]
                mem[t + 64] = ceil32(_1673) + 128
                _1818 = mem[_1807]
                mem[ceil32(_1673) + t + 128] = mem[_1807]
                v = 0
                while v < _1818:
                    mem[v + ceil32(_1673) + t + 160] = mem[v + _1807 + 32]
                    v = v + 32
                    continue 
                if ceil32(_1818) > _1818:
                    mem[ceil32(_1673) + t + _1818 + 160] = 0
                idx = idx + 1
                s = s + 32
                t = ceil32(_1818) + ceil32(_1673) + t + 160
                u = u + 32
                continue 
            mem[t + _1673 + 128] = 0
            _1819 = mem[_1666 + 64]
            mem[t + 64] = ceil32(_1673) + 128
            _1829 = mem[_1819]
            mem[ceil32(_1673) + t + 128] = mem[_1819]
            v = 0
            while v < _1829:
                mem[v + ceil32(_1673) + t + 160] = mem[v + _1819 + 32]
                v = v + 32
                continue 
            if ceil32(_1829) > _1829:
                mem[ceil32(_1673) + t + _1829 + 160] = 0
            idx = idx + 1
            s = s + 32
            t = ceil32(_1829) + ceil32(_1673) + t + 160
            u = u + 32
            continue 
        return memory
          from mem[64]
           len t - mem[64]
    mem[64] = ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 800
    mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 704] = 0
    mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 736] = 96
    mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 768] = 96
    mem[var44002] = var44001
    if not var44003 - 1:
        idx = 0
        while idx < ext_call.return_data[0]:
            mem[mem[64] + 4] = address(arg1)
            mem[mem[64] + 36] = idx
            require ext_code.size(stor0)
            staticcall stor0.'/t\Y' with:
                    gas gas_remaining wei
                   args address(arg1), idx
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1806 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1817 = mem[_1806]
            mem[mem[64]] = 0x2b219d8300000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = _1817
            mem[mem[64] + 36] = stor0
            mem[mem[64] + 68] = 0
            require ext_code.size(stor1)
            staticcall stor1.0x2b219d83 with:
                    gas gas_remaining wei
                   args _1817, stor0, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1832 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1844 = mem[_1832]
            require mem[_1832] <= test266151307()
            require _1832 + mem[_1832] + 31 < _1832 + return_data.size
            _1847 = mem[_1832 + mem[_1832]]
            if mem[_1832 + mem[_1832]] > test266151307():
                revert with 'NH{q', 65
            if ceil32(ceil32(mem[_1832 + mem[_1832]])) + 1 < 0 or _1832 + ceil32(return_data.size) + ceil32(ceil32(mem[_1832 + mem[_1832]])) + 1 > test266151307():
                revert with 'NH{q', 65
            mem[64] = _1832 + ceil32(return_data.size) + ceil32(ceil32(mem[_1832 + mem[_1832]])) + 1
            mem[_1832 + ceil32(return_data.size)] = _1847
            require _1844 + _1847 + 32 <= return_data.size
            s = 0
            while s < _1847:
                mem[s + _1832 + ceil32(return_data.size) + 32] = mem[s + _1832 + _1844 + 32]
                s = s + 32
                continue 
            if ceil32(_1847) <= _1847:
                mem[mem[64]] = 0x2b219d8300000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = _1817
                mem[mem[64] + 36] = stor0
                mem[mem[64] + 68] = 1
                require ext_code.size(stor1)
                staticcall stor1.0x2b219d83 with:
                        gas gas_remaining wei
                       args _1817, stor0, 1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1931 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1941 = mem[_1931]
                require mem[_1931] <= test266151307()
                require _1931 + mem[_1931] + 31 < _1931 + return_data.size
                _1954 = mem[_1931 + mem[_1931]]
                if mem[_1931 + mem[_1931]] > test266151307():
                    revert with 'NH{q', 65
                if ceil32(ceil32(mem[_1931 + mem[_1931]])) + 1 < 0 or _1931 + ceil32(return_data.size) + ceil32(ceil32(mem[_1931 + mem[_1931]])) + 1 > test266151307():
                    revert with 'NH{q', 65
                mem[64] = _1931 + ceil32(return_data.size) + ceil32(ceil32(mem[_1931 + mem[_1931]])) + 1
                mem[_1931 + ceil32(return_data.size)] = _1954
                require _1941 + _1954 + 32 <= return_data.size
                s = 0
                while s < _1954:
                    mem[s + _1931 + ceil32(return_data.size) + 32] = mem[s + _1931 + _1941 + 32]
                    s = s + 32
                    continue 
                if ceil32(_1954) <= _1954:
                    _2053 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_2053] = _1817
                    mem[_2053 + 32] = _1832 + ceil32(return_data.size)
                    mem[_2053 + 64] = _1931 + ceil32(return_data.size)
                    if idx >= mem[ceil32(return_data.size) + 96]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + ceil32(return_data.size) + 128] = _2053
                else:
                    mem[_1931 + ceil32(return_data.size) + _1954 + 32] = 0
                    _2065 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_2065] = _1817
                    mem[_2065 + 32] = _1832 + ceil32(return_data.size)
                    mem[_2065 + 64] = _1931 + ceil32(return_data.size)
                    if idx >= mem[ceil32(return_data.size) + 96]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + ceil32(return_data.size) + 128] = _2065
            else:
                mem[_1832 + ceil32(return_data.size) + _1847 + 32] = 0
                mem[mem[64]] = 0x2b219d8300000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = _1817
                mem[mem[64] + 36] = stor0
                mem[mem[64] + 68] = 1
                require ext_code.size(stor1)
                staticcall stor1.0x2b219d83 with:
                        gas gas_remaining wei
                       args _1817, stor0, 1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1933 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1948 = mem[_1933]
                require mem[_1933] <= test266151307()
                require _1933 + mem[_1933] + 31 < _1933 + return_data.size
                _1961 = mem[_1933 + mem[_1933]]
                if mem[_1933 + mem[_1933]] > test266151307():
                    revert with 'NH{q', 65
                if ceil32(ceil32(mem[_1933 + mem[_1933]])) + 1 < 0 or _1933 + ceil32(return_data.size) + ceil32(ceil32(mem[_1933 + mem[_1933]])) + 1 > test266151307():
                    revert with 'NH{q', 65
                mem[64] = _1933 + ceil32(return_data.size) + ceil32(ceil32(mem[_1933 + mem[_1933]])) + 1
                mem[_1933 + ceil32(return_data.size)] = _1961
                require _1948 + _1961 + 32 <= return_data.size
                s = 0
                while s < _1961:
                    mem[s + _1933 + ceil32(return_data.size) + 32] = mem[s + _1933 + _1948 + 32]
                    s = s + 32
                    continue 
                if ceil32(_1961) <= _1961:
                    _2055 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_2055] = _1817
                    mem[_2055 + 32] = _1832 + ceil32(return_data.size)
                    mem[_2055 + 64] = _1933 + ceil32(return_data.size)
                    if idx >= mem[ceil32(return_data.size) + 96]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + ceil32(return_data.size) + 128] = _2055
                else:
                    mem[_1933 + ceil32(return_data.size) + _1961 + 32] = 0
                    _2067 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_2067] = _1817
                    mem[_2067 + 32] = _1832 + ceil32(return_data.size)
                    mem[_2067 + 64] = _1933 + ceil32(return_data.size)
                    if idx >= mem[ceil32(return_data.size) + 96]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + ceil32(return_data.size) + 128] = _2067
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _1804 = mem[64]
        mem[mem[64]] = 32
        _1805 = mem[ceil32(return_data.size) + 96]
        mem[mem[64] + 32] = mem[ceil32(return_data.size) + 96]
        idx = 0
        s = ceil32(return_data.size) + 128
        t = mem[64] + (32 * _1805) + 64
        u = mem[64] + 64
        while idx < _1805:
            mem[u] = t + -_1804 - 64
            _1911 = mem[s]
            mem[t] = mem[mem[s]]
            _1913 = mem[_1911 + 32]
            mem[t + 32] = 96
            _1918 = mem[_1913]
            mem[t + 96] = mem[_1913]
            v = 0
            while v < _1918:
                mem[v + t + 128] = mem[v + _1913 + 32]
                v = v + 32
                continue 
            if ceil32(_1918) <= _1918:
                _2052 = mem[_1911 + 64]
                mem[t + 64] = ceil32(_1918) + 128
                _2063 = mem[_2052]
                mem[ceil32(_1918) + t + 128] = mem[_2052]
                v = 0
                while v < _2063:
                    mem[v + ceil32(_1918) + t + 160] = mem[v + _2052 + 32]
                    v = v + 32
                    continue 
                if ceil32(_2063) > _2063:
                    mem[ceil32(_1918) + t + _2063 + 160] = 0
                idx = idx + 1
                s = s + 32
                t = ceil32(_2063) + ceil32(_1918) + t + 160
                u = u + 32
                continue 
            mem[t + _1918 + 128] = 0
            _2064 = mem[_1911 + 64]
            mem[t + 64] = ceil32(_1918) + 128
            _2074 = mem[_2064]
            mem[ceil32(_1918) + t + 128] = mem[_2064]
            v = 0
            while v < _2074:
                mem[v + ceil32(_1918) + t + 160] = mem[v + _2064 + 32]
                v = v + 32
                continue 
            if ceil32(_2074) > _2074:
                mem[ceil32(_1918) + t + _2074 + 160] = 0
            idx = idx + 1
            s = s + 32
            t = ceil32(_2074) + ceil32(_1918) + t + 160
            u = u + 32
            continue 
        return memory
          from mem[64]
           len t - mem[64]
    mem[64] = ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 896
    mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 800] = 0
    mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 832] = 96
    mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 864] = 96
    mem[var48002] = var48001
    if not var48003 - 1:
        idx = 0
        while idx < ext_call.return_data[0]:
            mem[mem[64] + 4] = address(arg1)
            mem[mem[64] + 36] = idx
            require ext_code.size(stor0)
            staticcall stor0.'/t\Y' with:
                    gas gas_remaining wei
                   args address(arg1), idx
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2051 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _2062 = mem[_2051]
            mem[mem[64]] = 0x2b219d8300000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = _2062
            mem[mem[64] + 36] = stor0
            mem[mem[64] + 68] = 0
            require ext_code.size(stor1)
            staticcall stor1.0x2b219d83 with:
                    gas gas_remaining wei
                   args _2062, stor0, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2077 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _2089 = mem[_2077]
            require mem[_2077] <= test266151307()
            require _2077 + mem[_2077] + 31 < _2077 + return_data.size
            _2092 = mem[_2077 + mem[_2077]]
            if mem[_2077 + mem[_2077]] > test266151307():
                revert with 'NH{q', 65
            if ceil32(ceil32(mem[_2077 + mem[_2077]])) + 1 < 0 or _2077 + ceil32(return_data.size) + ceil32(ceil32(mem[_2077 + mem[_2077]])) + 1 > test266151307():
                revert with 'NH{q', 65
            mem[64] = _2077 + ceil32(return_data.size) + ceil32(ceil32(mem[_2077 + mem[_2077]])) + 1
            mem[_2077 + ceil32(return_data.size)] = _2092
            require _2089 + _2092 + 32 <= return_data.size
            s = 0
            while s < _2092:
                mem[s + _2077 + ceil32(return_data.size) + 32] = mem[s + _2077 + _2089 + 32]
                s = s + 32
                continue 
            if ceil32(_2092) <= _2092:
                mem[mem[64]] = 0x2b219d8300000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = _2062
                mem[mem[64] + 36] = stor0
                mem[mem[64] + 68] = 1
                require ext_code.size(stor1)
                staticcall stor1.0x2b219d83 with:
                        gas gas_remaining wei
                       args _2062, stor0, 1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2176 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _2186 = mem[_2176]
                require mem[_2176] <= test266151307()
                require _2176 + mem[_2176] + 31 < _2176 + return_data.size
                _2199 = mem[_2176 + mem[_2176]]
                if mem[_2176 + mem[_2176]] > test266151307():
                    revert with 'NH{q', 65
                if ceil32(ceil32(mem[_2176 + mem[_2176]])) + 1 < 0 or _2176 + ceil32(return_data.size) + ceil32(ceil32(mem[_2176 + mem[_2176]])) + 1 > test266151307():
                    revert with 'NH{q', 65
                mem[64] = _2176 + ceil32(return_data.size) + ceil32(ceil32(mem[_2176 + mem[_2176]])) + 1
                mem[_2176 + ceil32(return_data.size)] = _2199
                require _2186 + _2199 + 32 <= return_data.size
                s = 0
                while s < _2199:
                    mem[s + _2176 + ceil32(return_data.size) + 32] = mem[s + _2176 + _2186 + 32]
                    s = s + 32
                    continue 
                if ceil32(_2199) <= _2199:
                    _2298 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_2298] = _2062
                    mem[_2298 + 32] = _2077 + ceil32(return_data.size)
                    mem[_2298 + 64] = _2176 + ceil32(return_data.size)
                    if idx >= mem[ceil32(return_data.size) + 96]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + ceil32(return_data.size) + 128] = _2298
                else:
                    mem[_2176 + ceil32(return_data.size) + _2199 + 32] = 0
                    _2310 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_2310] = _2062
                    mem[_2310 + 32] = _2077 + ceil32(return_data.size)
                    mem[_2310 + 64] = _2176 + ceil32(return_data.size)
                    if idx >= mem[ceil32(return_data.size) + 96]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + ceil32(return_data.size) + 128] = _2310
            else:
                mem[_2077 + ceil32(return_data.size) + _2092 + 32] = 0
                mem[mem[64]] = 0x2b219d8300000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = _2062
                mem[mem[64] + 36] = stor0
                mem[mem[64] + 68] = 1
                require ext_code.size(stor1)
                staticcall stor1.0x2b219d83 with:
                        gas gas_remaining wei
                       args _2062, stor0, 1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2178 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _2193 = mem[_2178]
                require mem[_2178] <= test266151307()
                require _2178 + mem[_2178] + 31 < _2178 + return_data.size
                _2206 = mem[_2178 + mem[_2178]]
                if mem[_2178 + mem[_2178]] > test266151307():
                    revert with 'NH{q', 65
                if ceil32(ceil32(mem[_2178 + mem[_2178]])) + 1 < 0 or _2178 + ceil32(return_data.size) + ceil32(ceil32(mem[_2178 + mem[_2178]])) + 1 > test266151307():
                    revert with 'NH{q', 65
                mem[64] = _2178 + ceil32(return_data.size) + ceil32(ceil32(mem[_2178 + mem[_2178]])) + 1
                mem[_2178 + ceil32(return_data.size)] = _2206
                require _2193 + _2206 + 32 <= return_data.size
                s = 0
                while s < _2206:
                    mem[s + _2178 + ceil32(return_data.size) + 32] = mem[s + _2178 + _2193 + 32]
                    s = s + 32
                    continue 
                if ceil32(_2206) <= _2206:
                    _2300 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_2300] = _2062
                    mem[_2300 + 32] = _2077 + ceil32(return_data.size)
                    mem[_2300 + 64] = _2178 + ceil32(return_data.size)
                    if idx >= mem[ceil32(return_data.size) + 96]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + ceil32(return_data.size) + 128] = _2300
                else:
                    mem[_2178 + ceil32(return_data.size) + _2206 + 32] = 0
                    _2312 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_2312] = _2062
                    mem[_2312 + 32] = _2077 + ceil32(return_data.size)
                    mem[_2312 + 64] = _2178 + ceil32(return_data.size)
                    if idx >= mem[ceil32(return_data.size) + 96]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + ceil32(return_data.size) + 128] = _2312
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        mem[mem[64]] = 32
        _2050 = mem[ceil32(return_data.size) + 96]
        mem[mem[64] + 32] = mem[ceil32(return_data.size) + 96]
        if var73001 >= _2050:
            return memory
              from mem[64]
               len var73003 - mem[64]
        mem[var73005] = var73003 + -mem[64] - 64
        _2156 = mem[var73002]
        mem[var73003] = mem[mem[var73002]]
        _2158 = mem[_2156 + 32]
        mem[var73003 + 32] = 96
        # nil
    else:
        mem[var52002] = var52001
        if var52003 - 1:
            # nil
        else:
            if var97002 >= ext_call.return_data[0]:
                # nil
            else:
                mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 996] = address(arg1)
                mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 1028] = var97002
                require ext_code.size(stor0)
                staticcall stor0.'/t\Y' with:
                        gas gas_remaining wei
                       args address(arg1), var97002
                mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 992] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[(2 * ceil32(return_data.size)) + (32 * ext_call.return_data[0]) + 992] = 0x2b219d8300000000000000000000000000000000000000000000000000000000
                mem[(2 * ceil32(return_data.size)) + (32 * ext_call.return_data[0]) + 996] = ext_call.return_data[0]
                mem[(2 * ceil32(return_data.size)) + (32 * ext_call.return_data[0]) + 1028] = stor0
                mem[(2 * ceil32(return_data.size)) + (32 * ext_call.return_data[0]) + 1060] = 0
                require ext_code.size(stor1)
                staticcall stor1.0x2b219d83 with:
                        gas gas_remaining wei
                       args mem[(2 * ceil32(return_data.size)) + (32 * ext_call.return_data[0]) + 996 len ceil32(return_data.size) + 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(2 * ceil32(return_data.size)) + (32 * ext_call.return_data[0]) + 992 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (4 * ceil32(return_data.size)) + (32 * ext_call.return_data[0]) + 992
                require return_data.size >= 32
                require mem[(2 * ceil32(return_data.size)) + (32 * ext_call.return_data[0]) + 992 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 <= test266151307()
                require (2 * ceil32(return_data.size)) + (32 * ext_call.return_data[0]) + mem[(2 * ceil32(return_data.size)) + (32 * ext_call.return_data[0]) + 992 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 1023 < (2 * ceil32(return_data.size)) + (32 * ext_call.return_data[0]) + return_data.size + 992
                if mem[(2 * ceil32(return_data.size)) + (32 * ext_call.return_data[0]) + mem[(2 * ceil32(return_data.size)) + (32 * ext_call.return_data[0]) + 992 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 992] > test266151307():
                    revert with 'NH{q', 65
                if ceil32(ceil32(mem[(2 * ceil32(return_data.size)) + (32 * ext_call.return_data[0]) + mem[(2 * ceil32(return_data.size)) + (32 * ext_call.return_data[0]) + 992 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 992])) + 1 < 0 or (4 * ceil32(return_data.size)) + (32 * ext_call.return_data[0]) + ceil32(ceil32(mem[(2 * ceil32(return_data.size)) + (32 * ext_call.return_data[0]) + mem[(2 * ceil32(return_data.size)) + (32 * ext_call.return_data[0]) + 992 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 992])) + 993 > test266151307():
                    revert with 'NH{q', 65
                require mem[(2 * ceil32(return_data.size)) + (32 * ext_call.return_data[0]) + 992 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + mem[(2 * ceil32(return_data.size)) + (32 * ext_call.return_data[0]) + mem[(2 * ceil32(return_data.size)) + (32 * ext_call.return_data[0]) + 992 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 992] + 32 <= return_data.size
                # nil
}



}
