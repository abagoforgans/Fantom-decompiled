contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function sub_dbc342d7(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    return address(arg1), Mask(96, 64, arg2) >> 64
}

function sub_b794c19a(?) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require arg4 == arg4
    mem[96] = 1
    mem[288] = 96
    mem[128] = 160
    mem[160] = arg4
    mem[192] = 0
    mem[224] = 1
    mem[256] = arg1
    mem[320] = 2
    mem[352] = address(arg2)
    mem[384] = address(arg3)
    mem[64] = 544
    mem[448] = 0
    mem[512] = 0
    mem[416] = this.address
    mem[480] = this.address
    mem[544] = 0xf84d066e00000000000000000000000000000000000000000000000000000000
    mem[548] = 0
    mem[580] = 224
    mem[772] = 1
    idx = 0
    s = 128
    t = (32 * mem[96]) + 804
    u = 804
    while idx < 1:
        mem[u] = t - 804
        _42 = mem[s]
        mem[t] = mem[mem[s]]
        mem[t + 32] = mem[_42 + 32]
        mem[t + 64] = mem[_42 + 64]
        mem[t + 96] = mem[_42 + 96]
        _51 = mem[_42 + 128]
        mem[t + 128] = 160
        _52 = mem[_51]
        mem[t + 160] = mem[_51]
        v = 0
        while v < _52:
            mem[t + v + 192] = mem[_51 + v + 32]
            v = v + 32
            continue 
        if ceil32(_52) > _52:
            mem[t + _52 + 192] = 0
        idx = idx + 1
        s = s + 32
        t = t + ceil32(_52) + 192
        u = u + 32
        continue 
    mem[612] = t - 548
    _44 = mem[320]
    mem[t] = mem[320]
    idx = 0
    s = 352
    u = t + 32
    while idx < _44:
        mem[u] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        u = u + 32
        continue 
    mem[644] = mem[428 len 20]
    mem[676] = bool(mem[448])
    mem[708] = mem[492 len 20]
    mem[740] = bool(mem[512])
    require ext_code.size(0x20dd72ed959b6147912c2e529f0a0c651c33c9ce)
    call 0x20dd72ed959b6147912c2e529f0a0c651c33c9ce.mem[mem[64] len 4] with:
         gas gas_remaining wei
        args mem[mem[64] + 4 len t + (32 * _44) + -mem[64] + 28]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _74 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _75 = mem[_74]
    require mem[_74] <= test266151307()
    require _74 + mem[_74] + 31 < _74 + return_data.size
    _76 = mem[_74 + mem[_74]]
    if mem[_74 + mem[_74]] > test266151307():
        revert with 'NH{q', 65
    if _74 + ceil32(return_data.size) + floor32(mem[_74 + mem[_74]]) + 1 > test266151307() or floor32(mem[_74 + mem[_74]]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = _74 + ceil32(return_data.size) + floor32(mem[_74 + mem[_74]]) + 1
    mem[_74 + ceil32(return_data.size)] = _76
    require _75 + (32 * _76) + 32 <= return_data.size
    idx = 0
    s = _74 + _75 + 32
    t = _74 + ceil32(return_data.size) + 32
    while idx < _76:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if _76 < 1:
        revert with 'NH{q', 17
    if _76 - 1 >= _76:
        revert with 'NH{q', 50
    mem[mem[64]] = mem[(32 * _76 - 1) + _74 + ceil32(return_data.size) + 32]
    return memory
      from mem[64]
       len 32
}

function sub_35c88b15(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == arg2
    require ext_code.size(address(arg1))
    staticcall address(arg1).getSwapFeePercentage() with:
            gas gas_remaining wei
    mem[192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    mem[128] = ext_call.return_data[0]
    mem[96] = block.number
    mem[ceil32(return_data.size) + 192] = 0xf94d466800000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 196] = arg2
    require ext_code.size(0x20dd72ed959b6147912c2e529f0a0c651c33c9ce)
    staticcall 0x20dd72ed959b6147912c2e529f0a0c651c33c9ce.getPoolTokens(bytes32 arg1) with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (2 * ceil32(return_data.size)) + 192
    require return_data.size >= 96
    _9 = mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg2) >> 32
    require mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg2) >> 32 + 223 < ceil32(return_data.size) + return_data.size + 192
    _10 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]
    if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192] > test266151307():
        revert with 'NH{q', 65
    if (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 193 > test266151307() or floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 193
    mem[(2 * ceil32(return_data.size)) + 192] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]
    require _9 + (32 * _10) + 32 <= return_data.size
    idx = 0
    s = ceil32(return_data.size) + _9 + 224
    t = (2 * ceil32(return_data.size)) + 224
    while idx < _10:
        require mem[s] == mem[s + 12 len 20]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    _26 = mem[ceil32(return_data.size) + 224]
    require mem[ceil32(return_data.size) + 224] <= test266151307()
    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 224] + 223 < ceil32(return_data.size) + return_data.size + 192
    _27 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224] + 192]
    if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224] + 192] > test266151307():
        revert with 'NH{q', 65
    _28 = mem[64]
    if mem[64] + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224] + 192]) + 1 > test266151307() or mem[64] + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224] + 192]) + 1 < mem[64]:
        revert with 'NH{q', 65
    mem[64] = mem[64] + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224] + 192]) + 1
    mem[_28] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224] + 192]
    require _26 + (32 * _27) + 32 <= return_data.size
    idx = 0
    s = ceil32(return_data.size) + _26 + 224
    t = _28 + 32
    while idx < _27:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require mem[ceil32(return_data.size) + 256] == mem[ceil32(return_data.size) + 256]
    mem[160] = _28
    mem[mem[64]] = 32
    mem[mem[64] + 32] = mem[96]
    mem[mem[64] + 64] = mem[128]
    mem[mem[64] + 96] = 96
    _44 = mem[_28]
    mem[mem[64] + 128] = mem[_28]
    mem[mem[64] + 160 len 32 * _44] = mem[_28 + 32 len 32 * _44]
    return 32, mem[mem[64] + 32 len 64], 96, mem[mem[64] + 128 len (32 * _44) + 32]
}

function sub_9701eaa8(?) payable {
    require calldata.size - 4 >= 128
    require cd[4] == cd[4]
    require cd[36] == address(cd[36])
    require cd[68] == cd[68]
    require cd[100] <= test266151307()
    require cd[100] + 35 < calldata.size
    require ('cd', 100).length <= test266151307()
    require cd[100] + (32 * ('cd', 100).length) + 36 <= calldata.size
    if ('cd', 100).length != 3:
        revert with 0, 'BalancerV2Adaptor: PathLength'
    if 0 >= ('cd', 100).length:
        revert with 'NH{q', 50
    require ('cd', 100)[0] == address(('cd', 100)[0])
    if 2 >= ('cd', 100).length:
        revert with 'NH{q', 50
    require ('cd', 100)[2] == address(('cd', 100)[2])
    if 1 >= ('cd', 100).length:
        revert with 'NH{q', 50
    require ('cd', 100)[1] == address(('cd', 100)[1])
    require ext_code.size(address(('cd', 100)[2]))
    staticcall address(('cd', 100)[2]).decimals() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    if not ext_call.return_data[31 len 1]:
        require ext_code.size(address(('cd', 100)[0]))
        staticcall address(('cd', 100)[0]).decimals() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
        if not ext_call.return_data[31 len 1]:
            if cd[4] and uint64(('cd', 100)[1]) > -1 / cd[4]:
                revert with 'NH{q', 17
            if cd[4] * uint64(('cd', 100)[1]) and 1 > -1 / cd[4] * uint64(('cd', 100)[1]):
                revert with 'NH{q', 17
            return (cd[4] * uint64(('cd', 100)[1]) / 100 * 10^6)
        if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
            if 10^ext_call.return_data[31 len 1] > -1:
                revert with 'NH{q', 17
            if cd[4] and uint64(('cd', 100)[1]) > -1 / cd[4]:
                revert with 'NH{q', 17
            if not 10^ext_call.return_data[31 len 1]:
                revert with 'NH{q', 18
            if cd[4] * uint64(('cd', 100)[1]) / 10^ext_call.return_data[31 len 1] and 1 > -1 / cd[4] * uint64(('cd', 100)[1]) / 10^ext_call.return_data[31 len 1]:
                revert with 'NH{q', 17
            return (cd[4] * uint64(('cd', 100)[1]) / 10^ext_call.return_data[31 len 1] / 100 * 10^6)
        s = 10
        t = 1
        idx = ext_call.return_data[31 len 1]
        while idx > 1:
            if s > -1 / s:
                revert with 'NH{q', 17
            if not bool(idx):
                s = s * s
                t = t
                idx = uint255(idx) * 0.5
                continue 
            s = s * s
            t = t * s
            idx = uint255(idx) * 0.5
            continue 
        if t > -1 / s:
            revert with 'NH{q', 17
        if cd[4] and uint64(('cd', 100)[1]) > -1 / cd[4]:
            revert with 'NH{q', 17
        if not t * s:
            revert with 'NH{q', 18
        if cd[4] * uint64(('cd', 100)[1]) / t * s and 1 > -1 / cd[4] * uint64(('cd', 100)[1]) / t * s:
            revert with 'NH{q', 17
        return (cd[4] * uint64(('cd', 100)[1]) / t * s / 100 * 10^6)
    if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
        if 10^ext_call.return_data[31 len 1] > -1:
            revert with 'NH{q', 17
        require ext_code.size(address(('cd', 100)[0]))
        staticcall address(('cd', 100)[0]).decimals() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
        if not ext_call.return_data[31 len 1]:
            if cd[4] and uint64(('cd', 100)[1]) > -1 / cd[4]:
                revert with 'NH{q', 17
            if cd[4] * uint64(('cd', 100)[1]) and 10^uint8(ext_call.return_data[0]) > -1 / cd[4] * uint64(('cd', 100)[1]):
                revert with 'NH{q', 17
            return (cd[4] * uint64(('cd', 100)[1]) * 10^uint8(ext_call.return_data[0]) / 100 * 10^6)
        if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
            if 10^ext_call.return_data[31 len 1] > -1:
                revert with 'NH{q', 17
            if cd[4] and uint64(('cd', 100)[1]) > -1 / cd[4]:
                revert with 'NH{q', 17
            if not 10^ext_call.return_data[31 len 1]:
                revert with 'NH{q', 18
            if cd[4] * uint64(('cd', 100)[1]) / 10^ext_call.return_data[31 len 1] and 10^uint8(ext_call.return_data[0]) > -1 / cd[4] * uint64(('cd', 100)[1]) / 10^ext_call.return_data[31 len 1]:
                revert with 'NH{q', 17
            return (cd[4] * uint64(('cd', 100)[1]) / 10^ext_call.return_data[31 len 1] * 10^uint8(ext_call.return_data[0]) / 100 * 10^6)
        s = 10
        t = 1
        idx = ext_call.return_data[31 len 1]
        while idx > 1:
            if s > -1 / s:
                revert with 'NH{q', 17
            if not bool(idx):
                s = s * s
                t = t
                idx = uint255(idx) * 0.5
                continue 
            s = s * s
            t = t * s
            idx = uint255(idx) * 0.5
            continue 
        if t > -1 / s:
            revert with 'NH{q', 17
        if cd[4] and uint64(('cd', 100)[1]) > -1 / cd[4]:
            revert with 'NH{q', 17
        if not t * s:
            revert with 'NH{q', 18
        if cd[4] * uint64(('cd', 100)[1]) / t * s and 10^uint8(ext_call.return_data[0]) > -1 / cd[4] * uint64(('cd', 100)[1]) / t * s:
            revert with 'NH{q', 17
        return (cd[4] * uint64(('cd', 100)[1]) / t * s * 10^uint8(ext_call.return_data[0]) / 100 * 10^6)
    s = 10
    t = 1
    idx = ext_call.return_data[31 len 1]
    while idx > 1:
        if s > -1 / s:
            revert with 'NH{q', 17
        if not bool(idx):
            s = s * s
            t = t
            idx = uint255(idx) * 0.5
            continue 
        s = s * s
        t = t * s
        idx = uint255(idx) * 0.5
        continue 
    if t > -1 / s:
        revert with 'NH{q', 17
    require ext_code.size(address(('cd', 100)[0]))
    staticcall address(('cd', 100)[0]).decimals() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    if not ext_call.return_data[31 len 1]:
        if cd[4] and uint64(('cd', 100)[1]) > -1 / cd[4]:
            revert with 'NH{q', 17
        if cd[4] * uint64(('cd', 100)[1]) and t * s > -1 / cd[4] * uint64(('cd', 100)[1]):
            revert with 'NH{q', 17
        return (cd[4] * uint64(('cd', 100)[1]) * t * s / 100 * 10^6)
    if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
        if 10^ext_call.return_data[31 len 1] > -1:
            revert with 'NH{q', 17
        if cd[4] and uint64(('cd', 100)[1]) > -1 / cd[4]:
            revert with 'NH{q', 17
        if not 10^ext_call.return_data[31 len 1]:
            revert with 'NH{q', 18
        if cd[4] * uint64(('cd', 100)[1]) / 10^ext_call.return_data[31 len 1] and t * s > -1 / cd[4] * uint64(('cd', 100)[1]) / 10^ext_call.return_data[31 len 1]:
            revert with 'NH{q', 17
        return (cd[4] * uint64(('cd', 100)[1]) / 10^ext_call.return_data[31 len 1] * t * s / 100 * 10^6)
    u = 10
    v = 1
    idx = ext_call.return_data[31 len 1]
    while idx > 1:
        if u > -1 / u:
            revert with 'NH{q', 17
        if not bool(idx):
            u = u * u
            v = v
            idx = uint255(idx) * 0.5
            continue 
        u = u * u
        v = v * u
        idx = uint255(idx) * 0.5
        continue 
    if v > -1 / u:
        revert with 'NH{q', 17
    if cd[4] and uint64(('cd', 100)[1]) > -1 / cd[4]:
        revert with 'NH{q', 17
    if not v * u:
        revert with 'NH{q', 18
    if cd[4] * uint64(('cd', 100)[1]) / v * u and t * s > -1 / cd[4] * uint64(('cd', 100)[1]) / v * u:
        revert with 'NH{q', 17
    return (cd[4] * uint64(('cd', 100)[1]) / v * u * t * s / 100 * 10^6)
}

function sub_1975fedf(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    mem[96] = ('cd', 4).length
    mem[64] = (32 * ('cd', 4).length) + 128
    if not ('cd', 4).length:
        idx = 0
        while idx < ('cd', 4).length:
            require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
            if idx >= ('cd', 36).length:
                revert with 'NH{q', 50
            _65 = mem[64]
            mem[64] = mem[64] + 96
            mem[_65] = 0
            mem[_65 + 32] = 0
            mem[_65 + 64] = 96
            require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
            staticcall address(cd[((32 * idx) + cd[4] + 36)]).getSwapFeePercentage() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _72 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_72] == mem[_72]
            mem[_65 + 32] = mem[_72]
            mem[_65] = block.number
            mem[mem[64]] = 0xf94d466800000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = cd[((32 * idx) + cd[36] + 36)]
            require ext_code.size(0x20dd72ed959b6147912c2e529f0a0c651c33c9ce)
            staticcall 0x20dd72ed959b6147912c2e529f0a0c651c33c9ce.getPoolTokens(bytes32 arg1) with:
                    gas gas_remaining wei
                   args cd[((32 * idx) + cd[36] + 36)]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _89 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _90 = mem[_89]
            require mem[_89] <= test266151307()
            require _89 + mem[_89] + 31 < _89 + return_data.size
            _92 = mem[_89 + mem[_89]]
            if mem[_89 + mem[_89]] > test266151307():
                revert with 'NH{q', 65
            if _89 + ceil32(return_data.size) + floor32(mem[_89 + mem[_89]]) + 1 > test266151307() or floor32(mem[_89 + mem[_89]]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = _89 + ceil32(return_data.size) + floor32(mem[_89 + mem[_89]]) + 1
            mem[_89 + ceil32(return_data.size)] = _92
            require _90 + (32 * _92) + 32 <= return_data.size
            s = 0
            t = _89 + _90 + 32
            u = _89 + ceil32(return_data.size) + 32
            while s < _92:
                require mem[t] == mem[t + 12 len 20]
                mem[u] = mem[t]
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
            _117 = mem[_89 + 32]
            require mem[_89 + 32] <= test266151307()
            require _89 + mem[_89 + 32] + 31 < _89 + return_data.size
            _118 = mem[_89 + mem[_89 + 32]]
            if mem[_89 + mem[_89 + 32]] > test266151307():
                revert with 'NH{q', 65
            _123 = mem[64]
            if mem[64] + floor32(mem[_89 + mem[_89 + 32]]) + 1 > test266151307() or mem[64] + floor32(mem[_89 + mem[_89 + 32]]) + 1 < mem[64]:
                revert with 'NH{q', 65
            mem[64] = mem[64] + floor32(mem[_89 + mem[_89 + 32]]) + 1
            mem[_123] = _118
            require _117 + (32 * _118) + 32 <= return_data.size
            s = 0
            t = _89 + _117 + 32
            u = _123 + 32
            while s < _118:
                require mem[t] == mem[t]
                mem[u] = mem[t]
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
            require mem[_89 + 64] == mem[_89 + 64]
            mem[_65 + 64] = _123
            if idx >= mem[96]:
                revert with 'NH{q', 50
            mem[(32 * idx) + 128] = _65
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _58 = mem[64]
        mem[mem[64]] = 32
        _59 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + (32 * mem[96]) + 64
        u = mem[64] + 64
        while idx < _59:
            mem[u] = t + -_58 - 64
            _113 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_113 + 32]
            _122 = mem[_113 + 64]
            mem[t + 64] = 96
            _124 = mem[_122]
            mem[t + 96] = mem[_122]
            v = 0
            w = _122 + 32
            x = t + 128
            while v < _124:
                mem[x] = mem[w]
                v = v + 1
                w = w + 32
                x = x + 32
                continue 
            idx = idx + 1
            s = s + 32
            t = t + (32 * _124) + 128
            u = u + 32
            continue 
    else:
        mem[64] = (32 * ('cd', 4).length) + 224
        mem[(32 * ('cd', 4).length) + 128] = 0
        mem[(32 * ('cd', 4).length) + 160] = 0
        mem[(32 * ('cd', 4).length) + 192] = 96
        mem[var23001] = (32 * ('cd', 4).length) + 128
        s = var23001
        idx = var23002
        while idx - 1:
            mem[64] = mem[64] + 96
            mem[(32 * ('cd', 4).length) + 128] = 0
            mem[(32 * ('cd', 4).length) + 160] = 0
            mem[(32 * ('cd', 4).length) + 192] = 96
            mem[s + 32] = (32 * ('cd', 4).length) + 128
            s = s + 32
            idx = idx - 1
            continue 
        idx = 0
        while idx < ('cd', 4).length:
            require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
            if idx >= ('cd', 36).length:
                revert with 'NH{q', 50
            _163 = mem[64]
            mem[64] = mem[64] + 96
            mem[_163] = 0
            mem[_163 + 32] = 0
            mem[_163 + 64] = 96
            require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
            staticcall address(cd[((32 * idx) + cd[4] + 36)]).getSwapFeePercentage() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _167 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_167] == mem[_167]
            mem[_163 + 32] = mem[_167]
            mem[_163] = block.number
            mem[mem[64]] = 0xf94d466800000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = cd[((32 * idx) + cd[36] + 36)]
            require ext_code.size(0x20dd72ed959b6147912c2e529f0a0c651c33c9ce)
            staticcall 0x20dd72ed959b6147912c2e529f0a0c651c33c9ce.getPoolTokens(bytes32 arg1) with:
                    gas gas_remaining wei
                   args cd[((32 * idx) + cd[36] + 36)]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _174 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _175 = mem[_174]
            require mem[_174] <= test266151307()
            require _174 + mem[_174] + 31 < _174 + return_data.size
            _176 = mem[_174 + mem[_174]]
            if mem[_174 + mem[_174]] > test266151307():
                revert with 'NH{q', 65
            if _174 + ceil32(return_data.size) + floor32(mem[_174 + mem[_174]]) + 1 > test266151307() or floor32(mem[_174 + mem[_174]]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = _174 + ceil32(return_data.size) + floor32(mem[_174 + mem[_174]]) + 1
            mem[_174 + ceil32(return_data.size)] = _176
            require _175 + (32 * _176) + 32 <= return_data.size
            s = 0
            t = _174 + _175 + 32
            u = _174 + ceil32(return_data.size) + 32
            while s < _176:
                require mem[t] == mem[t + 12 len 20]
                mem[u] = mem[t]
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
            _189 = mem[_174 + 32]
            require mem[_174 + 32] <= test266151307()
            require _174 + mem[_174 + 32] + 31 < _174 + return_data.size
            _190 = mem[_174 + mem[_174 + 32]]
            if mem[_174 + mem[_174 + 32]] > test266151307():
                revert with 'NH{q', 65
            _193 = mem[64]
            if mem[64] + floor32(mem[_174 + mem[_174 + 32]]) + 1 > test266151307() or mem[64] + floor32(mem[_174 + mem[_174 + 32]]) + 1 < mem[64]:
                revert with 'NH{q', 65
            mem[64] = mem[64] + floor32(mem[_174 + mem[_174 + 32]]) + 1
            mem[_193] = _190
            require _189 + (32 * _190) + 32 <= return_data.size
            s = 0
            t = _174 + _189 + 32
            u = _193 + 32
            while s < _190:
                require mem[t] == mem[t]
                mem[u] = mem[t]
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
            require mem[_174 + 64] == mem[_174 + 64]
            mem[_163 + 64] = _193
            if idx >= mem[96]:
                revert with 'NH{q', 50
            mem[(32 * idx) + 128] = _163
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _156 = mem[64]
        mem[mem[64]] = 32
        _158 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + (32 * mem[96]) + 64
        u = mem[64] + 64
        while idx < _158:
            mem[u] = t + -_156 - 64
            _185 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_185 + 32]
            _192 = mem[_185 + 64]
            mem[t + 64] = 96
            _194 = mem[_192]
            mem[t + 96] = mem[_192]
            v = 0
            w = _192 + 32
            x = t + 128
            while v < _194:
                mem[x] = mem[w]
                v = v + 1
                w = w + 32
                x = x + 32
                continue 
            idx = idx + 1
            s = s + 32
            t = t + (32 * _194) + 128
            u = u + 32
            continue 
    return memory
      from mem[64]
       len t - mem[64]
}

function sub_b9dfb211(?) payable {
    require calldata.size - 4 >= 192
    require cd[4] == cd[4]
    require cd[36] == cd[36]
    require cd[68] == address(cd[68])
    require cd[100] == cd[100]
    require cd[132] <= test266151307()
    require cd[132] + 35 < calldata.size
    require ('cd', 132).length <= test266151307()
    require cd[132] + (32 * ('cd', 132).length) + 36 <= calldata.size
    require cd[164] == address(cd[164])
    if ('cd', 132).length != 3:
        revert with 0, 'BalancerV2Adaptor: PathLength'
    mem[256] = 96
    if 1 >= ('cd', 132).length:
        revert with 'NH{q', 50
    require ('cd', 132)[1] == address(('cd', 132)[1])
    mem[128] = 0
    if 0 >= ('cd', 132).length:
        revert with 'NH{q', 50
    require ('cd', 132)[0] == address(('cd', 132)[0])
    mem[160] = address(('cd', 132)[0])
    if 2 >= ('cd', 132).length:
        revert with 'NH{q', 50
    require ('cd', 132)[2] == address(('cd', 132)[2])
    mem[192] = address(('cd', 132)[2])
    mem[224] = cd[4]
    mem[320] = 0
    mem[384] = 0
    mem[288] = this.address
    mem[352] = address(cd[164])
    mem[420] = this.address
    mem[452] = 0x20dd72ed959b6147912c2e529f0a0c651c33c9ce
    require ext_code.size(address(('cd', 132)[0]))
    staticcall address(('cd', 132)[0]).allowance(address arg1, address arg2) with:
            gas gas_remaining wei
           args address(this.address), 0x20dd72ed959b6147912c2e529f0a0c651c33c9ce
    mem[416] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0]:
        mem[ceil32(return_data.size) + 416] = 0x52bbbe2900000000000000000000000000000000000000000000000000000000
        mem[ceil32(return_data.size) + 420] = 224
        mem[ceil32(return_data.size) + 664 len 12] = Mask(96, 64, ('cd', 132)[1]) >> 64
        mem[ceil32(return_data.size) + 644 len 20] = address(cd[68])
        mem[ceil32(return_data.size) + 676] = 0
        mem[ceil32(return_data.size) + 708] = address(('cd', 132)[0])
        mem[ceil32(return_data.size) + 740] = address(('cd', 132)[2])
        mem[ceil32(return_data.size) + 772] = cd[4]
        mem[ceil32(return_data.size) + 804] = 192
        mem[ceil32(return_data.size) + 836] = address(cd[68]), Mask(96, 64, ('cd', 132)[1]) >> 64
        mem[ceil32(return_data.size) + 868 len ceil32(address(cd[68]), Mask(96, 64, ('cd', 132)[1]) >> 64)] = mem[128 len ceil32(address(cd[68]), Mask(96, 64, ('cd', 132)[1]) >> 64)]
        if ceil32(address(cd[68]), Mask(96, 64, ('cd', 132)[1]) >> 64) > address(cd[68]), Mask(96, 64, ('cd', 132)[1]) >> 64:
            mem[ceil32(return_data.size) + address(cd[68]), Mask(96, 64, ('cd', 132)[1]) >> 64 + 868] = 0
        mem[ceil32(return_data.size) + 452] = uint64(this.address) << 96
        mem[ceil32(return_data.size) + 484] = 0
        mem[ceil32(return_data.size) + 516] = uint64(cd[164]) << 96
        mem[ceil32(return_data.size) + 548] = 0
        mem[ceil32(return_data.size) + 580] = cd[36]
        mem[ceil32(return_data.size) + 612] = 99999999999
        require ext_code.size(0x20dd72ed959b6147912c2e529f0a0c651c33c9ce)
        call 0x20dd72ed959b6147912c2e529f0a0c651c33c9ce.swap(bytes32 arg1, uint8 arg2, address arg3, address arg4, uint256 arg5, bytes arg6, address arg7, bool arg8, address arg9, bool arg10, uint256 arg11, uint256 arg12) with:
             gas gas_remaining wei
            args mem[ceil32(return_data.size) + 420 len ceil32(address(cd[68]), Mask(96, 64, ('cd', 132)[1]) >> 64) + 448]
    else:
        mem[ceil32(return_data.size) + 420] = this.address
        mem[ceil32(return_data.size) + 452] = 0x20dd72ed959b6147912c2e529f0a0c651c33c9ce
        require ext_code.size(address(('cd', 132)[0]))
        staticcall address(('cd', 132)[0]).allowance(address arg1, address arg2) with:
                gas gas_remaining wei
               args address(this.address), 0x20dd72ed959b6147912c2e529f0a0c651c33c9ce
        mem[ceil32(return_data.size) + 416] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0]:
            revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
        mem[(2 * ceil32(return_data.size)) + 452] = 0x20dd72ed959b6147912c2e529f0a0c651c33c9ce
        mem[(2 * ceil32(return_data.size)) + 484] = -1
        mem[(2 * ceil32(return_data.size)) + 416] = 68
        mem[(2 * ceil32(return_data.size)) + 452 len 28] = 0x20dd72ed959b6147912c2e529f0a0c65
        mem[(2 * ceil32(return_data.size)) + 448 len 4] = approve(address arg1, uint256 arg2)
        mem[(2 * ceil32(return_data.size)) + 516] = 32
        mem[(2 * ceil32(return_data.size)) + 548] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if ext_code.size(address(('cd', 132)[0])) <= 0:
            revert with 0, 'Address: call to non-contract'
        mem[(2 * ceil32(return_data.size)) + 580 len 96] = approve(address arg1, uint256 arg2), 0x20dd72ed959b6147912c2e52, 0, -1, 0
        mem[(2 * ceil32(return_data.size)) + 648] = 0
        call address(('cd', 132)[0]) with:
           funct Mask(32, 224, approve(address arg1, uint256 arg2), 0x20dd72ed959b6147912c2e52, 0, -1, 0) >> 224
             gas gas_remaining wei
            args (Mask(512, -288, approve(address arg1, uint256 arg2), 0x20dd72ed959b6147912c2e52, 0, -1, 0) << 288)
        if not return_data.size:
            if not ext_call.success:
                if address(cd[68]), Mask(96, 64, ('cd', 132)[1]) >> 64 > 0:
                    revert with memory
                      from 128
                       len address(cd[68]), Mask(96, 64, ('cd', 132)[1]) >> 64
                revert with 0, 'SafeERC20: low-level call failed'
            if address(cd[68]), Mask(96, 64, ('cd', 132)[1]) >> 64 > 0:
                require address(cd[68]), Mask(96, 64, ('cd', 132)[1]) >> 64 >= 32
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            mem[(2 * ceil32(return_data.size)) + 580] = 0x52bbbe2900000000000000000000000000000000000000000000000000000000
            mem[(2 * ceil32(return_data.size)) + 584] = 224
            mem[(2 * ceil32(return_data.size)) + 808] = address(cd[68]), Mask(96, 64, ('cd', 132)[1]) >> 64
            mem[(2 * ceil32(return_data.size)) + 840] = 0
            mem[(2 * ceil32(return_data.size)) + 872] = uint64(('cd', 132)[0]) << 96
            mem[(2 * ceil32(return_data.size)) + 904] = uint64(('cd', 132)[2]) << 96
            mem[(2 * ceil32(return_data.size)) + 936] = cd[4]
            mem[(2 * ceil32(return_data.size)) + 968] = 192
            mem[(2 * ceil32(return_data.size)) + 1000] = address(cd[68]), Mask(96, 64, ('cd', 132)[1]) >> 64
            mem[(2 * ceil32(return_data.size)) + 1032 len ceil32(address(cd[68]), Mask(96, 64, ('cd', 132)[1]) >> 64)] = mem[128 len ceil32(address(cd[68]), Mask(96, 64, ('cd', 132)[1]) >> 64)]
            if ceil32(address(cd[68]), Mask(96, 64, ('cd', 132)[1]) >> 64) > address(cd[68]), Mask(96, 64, ('cd', 132)[1]) >> 64:
                mem[(2 * ceil32(return_data.size)) + address(cd[68]), Mask(96, 64, ('cd', 132)[1]) >> 64 + 1032] = 0
            mem[(2 * ceil32(return_data.size)) + 616] = uint64(this.address) << 96
            mem[(2 * ceil32(return_data.size)) + 648] = 0
            mem[(2 * ceil32(return_data.size)) + 680] = uint64(cd[164]) << 96
            mem[(2 * ceil32(return_data.size)) + 712] = 0
            mem[(2 * ceil32(return_data.size)) + 744] = cd[36]
            mem[(2 * ceil32(return_data.size)) + 776] = 99999999999
            require ext_code.size(0x20dd72ed959b6147912c2e529f0a0c651c33c9ce)
            call 0x20dd72ed959b6147912c2e529f0a0c651c33c9ce.swap(bytes32 arg1, uint8 arg2, address arg3, address arg4, uint256 arg5, bytes arg6, address arg7, bool arg8, address arg9, bool arg10, uint256 arg11, uint256 arg12) with:
                 gas gas_remaining wei
                args mem[(2 * ceil32(return_data.size)) + 584 len ceil32(address(cd[68]), Mask(96, 64, ('cd', 132)[1]) >> 64) + 448]
        else:
            mem[(2 * ceil32(return_data.size)) + 580] = return_data.size
            mem[(2 * ceil32(return_data.size)) + 612 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size > 0:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size > 0:
                require return_data.size >= 32
                require mem[(2 * ceil32(return_data.size)) + 612] == bool(mem[(2 * ceil32(return_data.size)) + 612])
                if not mem[(2 * ceil32(return_data.size)) + 612]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 581] = 0x52bbbe2900000000000000000000000000000000000000000000000000000000
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 585] = 224
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 809] = address(cd[68]), Mask(96, 64, ('cd', 132)[1]) >> 64
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 841] = 0
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 873] = uint64(('cd', 132)[0]) << 96
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 905] = uint64(('cd', 132)[2]) << 96
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 937] = cd[4]
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 969] = 192
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 1001] = address(cd[68]), Mask(96, 64, ('cd', 132)[1]) >> 64
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 1033 len ceil32(address(cd[68]), Mask(96, 64, ('cd', 132)[1]) >> 64)] = mem[128 len ceil32(address(cd[68]), Mask(96, 64, ('cd', 132)[1]) >> 64)]
            if ceil32(address(cd[68]), Mask(96, 64, ('cd', 132)[1]) >> 64) > address(cd[68]), Mask(96, 64, ('cd', 132)[1]) >> 64:
                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + address(cd[68]), Mask(96, 64, ('cd', 132)[1]) >> 64 + 1033] = 0
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 617] = uint64(this.address) << 96
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 649] = 0
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 681] = uint64(cd[164]) << 96
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 713] = 0
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 745] = cd[36]
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 777] = 99999999999
            require ext_code.size(0x20dd72ed959b6147912c2e529f0a0c651c33c9ce)
            call 0x20dd72ed959b6147912c2e529f0a0c651c33c9ce.swap(bytes32 arg1, uint8 arg2, address arg3, address arg4, uint256 arg5, bytes arg6, address arg7, bool arg8, address arg9, bool arg10, uint256 arg11, uint256 arg12) with:
                 gas gas_remaining wei
                args mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len ceil32(address(cd[68]), Mask(96, 64, ('cd', 132)[1]) >> 64) + 448]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
}



}
