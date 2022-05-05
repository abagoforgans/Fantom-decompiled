contract main {




// =====================  Runtime code  =====================


#
#  - sub_3b4335a6(?)
#
function _fallback() payable {
    revert
}

function sub_0784f212(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    mem[96] = 2
    require ext_code.size(address(arg1))
    staticcall address(arg1).token0() with:
            gas gas_remaining wei
    mem[192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[128] = ext_call.return_data[12 len 20]
    require ext_code.size(address(arg1))
    staticcall address(arg1).token1() with:
            gas gas_remaining wei
    mem[ceil32(return_data.size) + 192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[160] = ext_call.return_data[12 len 20]
    mem[(2 * ceil32(return_data.size)) + 192] = 2
    s = (2 * ceil32(return_data.size)) + 224
    idx = 2
    while idx - 1:
        mem[s + 32] = 96
        s = s + 32
        idx = idx - 1
        continue 
    mem[(2 * ceil32(return_data.size)) + 288] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
    require ext_code.size(address(ext_call.return_data[12 len 20]))
    staticcall address(ext_call.return_data[12 len 20]).0x95d89b41 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(2 * ceil32(return_data.size)) + 288 len return_data.size] = ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    _18 = mem[(2 * ceil32(return_data.size)) + 288]
    require mem[(2 * ceil32(return_data.size)) + 288] <= test266151307()
    require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 288] + 319 < (2 * ceil32(return_data.size)) + return_data.size + 288
    _19 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 288] + 288]
    if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 288] + 288] > test266151307():
        revert with 0, 65
    if ceil32(ceil32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 288] + 288])) + 1 < 0 or (4 * ceil32(return_data.size)) + ceil32(ceil32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 288] + 288])) + 289 > test266151307():
        revert with 0, 65
    mem[64] = (4 * ceil32(return_data.size)) + ceil32(ceil32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 288] + 288])) + 289
    mem[(4 * ceil32(return_data.size)) + 288] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 288] + 288]
    require _18 + _19 + 32 <= return_data.size
    mem[(4 * ceil32(return_data.size)) + 320 len ceil32(_19)] = mem[(2 * ceil32(return_data.size)) + _18 + 320 len ceil32(_19)]
    if ceil32(_19) <= _19:
        mem[(2 * ceil32(return_data.size)) + 224] = (4 * ceil32(return_data.size)) + 288
        mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
        require ext_code.size(address(ext_call.return_data[12 len 20]))
        staticcall address(ext_call.return_data[12 len 20]).0x95d89b41 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _225 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _227 = mem[_225]
        require mem[_225] <= test266151307()
        require _225 + mem[_225] + 31 < _225 + return_data.size
        _229 = mem[_225 + mem[_225]]
        if mem[_225 + mem[_225]] > test266151307():
            revert with 0, 65
        if ceil32(ceil32(mem[_225 + mem[_225]])) + 1 < 0 or _225 + ceil32(return_data.size) + ceil32(ceil32(mem[_225 + mem[_225]])) + 1 > test266151307():
            revert with 0, 65
        mem[64] = _225 + ceil32(return_data.size) + ceil32(ceil32(mem[_225 + mem[_225]])) + 1
        mem[_225 + ceil32(return_data.size)] = _229
        require _227 + _229 + 32 <= return_data.size
        mem[_225 + ceil32(return_data.size) + 32 len ceil32(_229)] = mem[_225 + _227 + 32 len ceil32(_229)]
        if ceil32(_229) <= _229:
            mem[(2 * ceil32(return_data.size)) + 256] = _225 + ceil32(return_data.size)
            _411 = mem[64]
            mem[mem[64]] = 2
            mem[mem[64] + 32 len 64] = call.data[calldata.size len 64]
            require ext_code.size(address(ext_call.return_data[12 len 20]))
            staticcall address(ext_call.return_data[12 len 20]).0x313ce567 with:
                    gas gas_remaining wei
            mem[mem[64] + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size) + 96
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
            if 0 >= mem[_411]:
                revert with 'NH{q', 50
            mem[_411 + 32] = ext_call.return_data[31 len 1]
            require ext_code.size(address(ext_call.return_data[12 len 20]))
            staticcall address(ext_call.return_data[12 len 20]).0x313ce567 with:
                    gas gas_remaining wei
            mem[_411 + ceil32(return_data.size) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = _411 + (2 * ceil32(return_data.size)) + 96
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
            if 1 >= mem[_411]:
                revert with 'NH{q', 50
            mem[_411 + 64] = ext_call.return_data[31 len 1]
            mem[_411 + (2 * ceil32(return_data.size)) + 96] = 2
            mem[_411 + (2 * ceil32(return_data.size)) + 196] = address(arg1)
            require ext_code.size(address(ext_call.return_data[12 len 20]))
            staticcall address(ext_call.return_data[12 len 20]).0x70a08231 with:
                    gas gas_remaining wei
                   args address(arg1)
            mem[_411 + (2 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[_411 + (2 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
            mem[_411 + (4 * ceil32(return_data.size)) + 196] = address(arg1)
            require ext_code.size(address(ext_call.return_data[12 len 20]))
            staticcall address(ext_call.return_data[12 len 20]).0x70a08231 with:
                    gas gas_remaining wei
                   args mem[_411 + (4 * ceil32(return_data.size)) + 196 len (5 * ceil32(return_data.size)) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = _411 + (4 * ceil32(return_data.size)) + 192
            require return_data.size >= 32
            mem[_411 + (2 * ceil32(return_data.size)) + 160] = ext_call.return_data[0]
            mem[_411 + (4 * ceil32(return_data.size)) + 192] = 128
            mem[_411 + (4 * ceil32(return_data.size)) + 320] = 2
            idx = 0
            s = 128
            t = _411 + (4 * ceil32(return_data.size)) + 352
            while idx < 2:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_411 + (4 * ceil32(return_data.size)) + 224] = 224
            _581 = mem[(2 * ceil32(return_data.size)) + 192]
            mem[_411 + (4 * ceil32(return_data.size)) + 416] = mem[(2 * ceil32(return_data.size)) + 192]
            idx = 0
            s = (2 * ceil32(return_data.size)) + 224
            t = _411 + (4 * ceil32(return_data.size)) + (32 * mem[96]) + (32 * mem[(2 * ceil32(return_data.size)) + 192]) + 384
            u = _411 + (4 * ceil32(return_data.size)) + (32 * mem[96]) + 384
            while idx < _581:
                mem[u] = t + -_411 + -(4 * ceil32(return_data.size)) - 448
                _621 = mem[s]
                _622 = mem[mem[s]]
                mem[t] = mem[mem[s]]
                v = 0
                while v < _622:
                    mem[v + t + 32] = mem[v + _621 + 32]
                    v = v + 32
                    continue 
                if ceil32(_622) > _622:
                    mem[t + _622 + 32] = 0
                idx = idx + 1
                s = s + 32
                t = ceil32(_622) + t + 32
                u = u + 32
                continue 
            mem[_411 + (4 * ceil32(return_data.size)) + 256] = t + -_411 + -(4 * ceil32(return_data.size)) - 192
            _629 = mem[_411]
            mem[t] = mem[_411]
            mem[t + 32 len 32 * _629] = mem[_411 + 32 len 32 * _629]
            var107001 = _629
            mem[_411 + (4 * ceil32(return_data.size)) + 288] = t + (32 * _629) + -_411 + -(4 * ceil32(return_data.size)) - 160
            _661 = mem[_411 + (2 * ceil32(return_data.size)) + 96]
            mem[t + (32 * _629) + 32] = mem[_411 + (2 * ceil32(return_data.size)) + 96]
            mem[t + (32 * _629) + 64 len 32 * _661] = mem[_411 + (2 * ceil32(return_data.size)) + 128 len 32 * _661]
            return memory
              from mem[64]
               len t + (32 * _629) + (32 * _661) + -mem[64] + 64
        mem[_225 + ceil32(return_data.size) + _229 + 32] = 0
        mem[(2 * ceil32(return_data.size)) + 256] = _225 + ceil32(return_data.size)
        _420 = mem[64]
        mem[mem[64]] = 2
        mem[mem[64] + 32 len 64] = call.data[calldata.size len 64]
        require ext_code.size(address(ext_call.return_data[12 len 20]))
        staticcall address(ext_call.return_data[12 len 20]).0x313ce567 with:
                gas gas_remaining wei
        mem[mem[64] + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size) + 96
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
        if 0 >= mem[_420]:
            revert with 'NH{q', 50
        mem[_420 + 32] = ext_call.return_data[31 len 1]
        require ext_code.size(address(ext_call.return_data[12 len 20]))
        staticcall address(ext_call.return_data[12 len 20]).0x313ce567 with:
                gas gas_remaining wei
        mem[_420 + ceil32(return_data.size) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = _420 + (2 * ceil32(return_data.size)) + 96
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
        if 1 >= mem[_420]:
            revert with 'NH{q', 50
        mem[_420 + 64] = ext_call.return_data[31 len 1]
        mem[_420 + (2 * ceil32(return_data.size)) + 96] = 2
        mem[_420 + (2 * ceil32(return_data.size)) + 196] = address(arg1)
        require ext_code.size(address(ext_call.return_data[12 len 20]))
        staticcall address(ext_call.return_data[12 len 20]).0x70a08231 with:
                gas gas_remaining wei
               args address(arg1)
        mem[_420 + (2 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[_420 + (2 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
        mem[_420 + (4 * ceil32(return_data.size)) + 196] = address(arg1)
        require ext_code.size(address(ext_call.return_data[12 len 20]))
        staticcall address(ext_call.return_data[12 len 20]).0x70a08231 with:
                gas gas_remaining wei
               args mem[_420 + (4 * ceil32(return_data.size)) + 196 len (5 * ceil32(return_data.size)) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = _420 + (4 * ceil32(return_data.size)) + 192
        require return_data.size >= 32
        mem[_420 + (2 * ceil32(return_data.size)) + 160] = ext_call.return_data[0]
        mem[_420 + (4 * ceil32(return_data.size)) + 192] = 128
        mem[_420 + (4 * ceil32(return_data.size)) + 320] = 2
        idx = 0
        s = 128
        t = _420 + (4 * ceil32(return_data.size)) + 352
        while idx < 2:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_420 + (4 * ceil32(return_data.size)) + 224] = 224
        _583 = mem[(2 * ceil32(return_data.size)) + 192]
        mem[_420 + (4 * ceil32(return_data.size)) + 416] = mem[(2 * ceil32(return_data.size)) + 192]
        idx = 0
        s = (2 * ceil32(return_data.size)) + 224
        t = _420 + (4 * ceil32(return_data.size)) + (32 * mem[96]) + (32 * mem[(2 * ceil32(return_data.size)) + 192]) + 384
        u = _420 + (4 * ceil32(return_data.size)) + (32 * mem[96]) + 384
        while idx < _583:
            mem[u] = t + -_420 + -(4 * ceil32(return_data.size)) - 448
            _623 = mem[s]
            _624 = mem[mem[s]]
            mem[t] = mem[mem[s]]
            v = 0
            while v < _624:
                mem[v + t + 32] = mem[v + _623 + 32]
                v = v + 32
                continue 
            if ceil32(_624) > _624:
                mem[t + _624 + 32] = 0
            idx = idx + 1
            s = s + 32
            t = ceil32(_624) + t + 32
            u = u + 32
            continue 
        mem[_420 + (4 * ceil32(return_data.size)) + 256] = t + -_420 + -(4 * ceil32(return_data.size)) - 192
        _630 = mem[_420]
        mem[t] = mem[_420]
        mem[t + 32 len 32 * _630] = mem[_420 + 32 len 32 * _630]
        var108001 = _630
        mem[_420 + (4 * ceil32(return_data.size)) + 288] = t + (32 * _630) + -_420 + -(4 * ceil32(return_data.size)) - 160
        _662 = mem[_420 + (2 * ceil32(return_data.size)) + 96]
        mem[t + (32 * _630) + 32] = mem[_420 + (2 * ceil32(return_data.size)) + 96]
        mem[t + (32 * _630) + 64 len 32 * _662] = mem[_420 + (2 * ceil32(return_data.size)) + 128 len 32 * _662]
        return memory
          from mem[64]
           len t + (32 * _630) + (32 * _662) + -mem[64] + 64
    mem[(4 * ceil32(return_data.size)) + _19 + 320] = 0
    mem[(2 * ceil32(return_data.size)) + 224] = (4 * ceil32(return_data.size)) + 288
    mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
    require ext_code.size(address(ext_call.return_data[12 len 20]))
    staticcall address(ext_call.return_data[12 len 20]).0x95d89b41 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _226 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _228 = mem[_226]
    require mem[_226] <= test266151307()
    require _226 + mem[_226] + 31 < _226 + return_data.size
    _231 = mem[_226 + mem[_226]]
    if mem[_226 + mem[_226]] > test266151307():
        revert with 0, 65
    if ceil32(ceil32(mem[_226 + mem[_226]])) + 1 < 0 or _226 + ceil32(return_data.size) + ceil32(ceil32(mem[_226 + mem[_226]])) + 1 > test266151307():
        revert with 0, 65
    mem[64] = _226 + ceil32(return_data.size) + ceil32(ceil32(mem[_226 + mem[_226]])) + 1
    mem[_226 + ceil32(return_data.size)] = _231
    require _228 + _231 + 32 <= return_data.size
    mem[_226 + ceil32(return_data.size) + 32 len ceil32(_231)] = mem[_226 + _228 + 32 len ceil32(_231)]
    if ceil32(_231) <= _231:
        mem[(2 * ceil32(return_data.size)) + 256] = _226 + ceil32(return_data.size)
        _414 = mem[64]
        mem[mem[64]] = 2
        mem[mem[64] + 32 len 64] = call.data[calldata.size len 64]
        require ext_code.size(address(ext_call.return_data[12 len 20]))
        staticcall address(ext_call.return_data[12 len 20]).0x313ce567 with:
                gas gas_remaining wei
        mem[mem[64] + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size) + 96
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
        if 0 >= mem[_414]:
            revert with 'NH{q', 50
        mem[_414 + 32] = ext_call.return_data[31 len 1]
        require ext_code.size(address(ext_call.return_data[12 len 20]))
        staticcall address(ext_call.return_data[12 len 20]).0x313ce567 with:
                gas gas_remaining wei
        mem[_414 + ceil32(return_data.size) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = _414 + (2 * ceil32(return_data.size)) + 96
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
        if 1 >= mem[_414]:
            revert with 'NH{q', 50
        mem[_414 + 64] = ext_call.return_data[31 len 1]
        mem[_414 + (2 * ceil32(return_data.size)) + 96] = 2
        mem[_414 + (2 * ceil32(return_data.size)) + 196] = address(arg1)
        require ext_code.size(address(ext_call.return_data[12 len 20]))
        staticcall address(ext_call.return_data[12 len 20]).0x70a08231 with:
                gas gas_remaining wei
               args address(arg1)
        mem[_414 + (2 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[_414 + (2 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
        mem[_414 + (4 * ceil32(return_data.size)) + 196] = address(arg1)
        require ext_code.size(address(ext_call.return_data[12 len 20]))
        staticcall address(ext_call.return_data[12 len 20]).0x70a08231 with:
                gas gas_remaining wei
               args mem[_414 + (4 * ceil32(return_data.size)) + 196 len (5 * ceil32(return_data.size)) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = _414 + (4 * ceil32(return_data.size)) + 192
        require return_data.size >= 32
        mem[_414 + (2 * ceil32(return_data.size)) + 160] = ext_call.return_data[0]
        mem[_414 + (4 * ceil32(return_data.size)) + 192] = 128
        mem[_414 + (4 * ceil32(return_data.size)) + 320] = 2
        idx = 0
        s = 128
        t = _414 + (4 * ceil32(return_data.size)) + 352
        while idx < 2:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_414 + (4 * ceil32(return_data.size)) + 224] = 224
        _585 = mem[(2 * ceil32(return_data.size)) + 192]
        mem[_414 + (4 * ceil32(return_data.size)) + 416] = mem[(2 * ceil32(return_data.size)) + 192]
        idx = 0
        s = (2 * ceil32(return_data.size)) + 224
        t = _414 + (4 * ceil32(return_data.size)) + (32 * mem[96]) + (32 * mem[(2 * ceil32(return_data.size)) + 192]) + 384
        u = _414 + (4 * ceil32(return_data.size)) + (32 * mem[96]) + 384
        while idx < _585:
            mem[u] = t + -_414 + -(4 * ceil32(return_data.size)) - 448
            _625 = mem[s]
            _626 = mem[mem[s]]
            mem[t] = mem[mem[s]]
            v = 0
            while v < _626:
                mem[v + t + 32] = mem[v + _625 + 32]
                v = v + 32
                continue 
            if ceil32(_626) > _626:
                mem[t + _626 + 32] = 0
            idx = idx + 1
            s = s + 32
            t = ceil32(_626) + t + 32
            u = u + 32
            continue 
        mem[_414 + (4 * ceil32(return_data.size)) + 256] = t + -_414 + -(4 * ceil32(return_data.size)) - 192
        _631 = mem[_414]
        mem[t] = mem[_414]
        mem[t + 32 len 32 * _631] = mem[_414 + 32 len 32 * _631]
        var108001 = _631
        mem[_414 + (4 * ceil32(return_data.size)) + 288] = t + (32 * _631) + -_414 + -(4 * ceil32(return_data.size)) - 160
        _663 = mem[_414 + (2 * ceil32(return_data.size)) + 96]
        mem[t + (32 * _631) + 32] = mem[_414 + (2 * ceil32(return_data.size)) + 96]
        mem[t + (32 * _631) + 64 len 32 * _663] = mem[_414 + (2 * ceil32(return_data.size)) + 128 len 32 * _663]
        return memory
          from mem[64]
           len t + (32 * _631) + (32 * _663) + -mem[64] + 64
    mem[_226 + ceil32(return_data.size) + _231 + 32] = 0
    mem[(2 * ceil32(return_data.size)) + 256] = _226 + ceil32(return_data.size)
    _425 = mem[64]
    mem[mem[64]] = 2
    mem[mem[64] + 32 len 64] = call.data[calldata.size len 64]
    require ext_code.size(address(ext_call.return_data[12 len 20]))
    staticcall address(ext_call.return_data[12 len 20]).0x313ce567 with:
            gas gas_remaining wei
    mem[mem[64] + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size) + 96
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    if 0 >= mem[_425]:
        revert with 'NH{q', 50
    mem[_425 + 32] = ext_call.return_data[31 len 1]
    require ext_code.size(address(ext_call.return_data[12 len 20]))
    staticcall address(ext_call.return_data[12 len 20]).0x313ce567 with:
            gas gas_remaining wei
    mem[_425 + ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = _425 + (2 * ceil32(return_data.size)) + 96
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    if 1 >= mem[_425]:
        revert with 'NH{q', 50
    mem[_425 + 64] = ext_call.return_data[31 len 1]
    mem[_425 + (2 * ceil32(return_data.size)) + 96] = 2
    mem[_425 + (2 * ceil32(return_data.size)) + 196] = address(arg1)
    require ext_code.size(address(ext_call.return_data[12 len 20]))
    staticcall address(ext_call.return_data[12 len 20]).0x70a08231 with:
            gas gas_remaining wei
           args address(arg1)
    mem[_425 + (2 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[_425 + (2 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
    mem[_425 + (4 * ceil32(return_data.size)) + 196] = address(arg1)
    require ext_code.size(address(ext_call.return_data[12 len 20]))
    staticcall address(ext_call.return_data[12 len 20]).0x70a08231 with:
            gas gas_remaining wei
           args mem[_425 + (4 * ceil32(return_data.size)) + 196 len (5 * ceil32(return_data.size)) + 32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = _425 + (4 * ceil32(return_data.size)) + 192
    require return_data.size >= 32
    mem[_425 + (2 * ceil32(return_data.size)) + 160] = ext_call.return_data[0]
    mem[_425 + (4 * ceil32(return_data.size)) + 192] = 128
    mem[_425 + (4 * ceil32(return_data.size)) + 320] = 2
    idx = 0
    s = 128
    t = _425 + (4 * ceil32(return_data.size)) + 352
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[_425 + (4 * ceil32(return_data.size)) + 224] = 224
    _587 = mem[(2 * ceil32(return_data.size)) + 192]
    mem[_425 + (4 * ceil32(return_data.size)) + 416] = mem[(2 * ceil32(return_data.size)) + 192]
    idx = 0
    s = (2 * ceil32(return_data.size)) + 224
    t = _425 + (4 * ceil32(return_data.size)) + (32 * mem[96]) + (32 * mem[(2 * ceil32(return_data.size)) + 192]) + 384
    u = _425 + (4 * ceil32(return_data.size)) + (32 * mem[96]) + 384
    while idx < _587:
        mem[u] = t + -_425 + -(4 * ceil32(return_data.size)) - 448
        _627 = mem[s]
        _628 = mem[mem[s]]
        mem[t] = mem[mem[s]]
        v = 0
        while v < _628:
            mem[v + t + 32] = mem[v + _627 + 32]
            v = v + 32
            continue 
        if ceil32(_628) > _628:
            mem[t + _628 + 32] = 0
        idx = idx + 1
        s = s + 32
        t = ceil32(_628) + t + 32
        u = u + 32
        continue 
    mem[_425 + (4 * ceil32(return_data.size)) + 256] = t + -_425 + -(4 * ceil32(return_data.size)) - 192
    _632 = mem[_425]
    mem[t] = mem[_425]
    mem[t + 32 len 32 * _632] = mem[_425 + 32 len 32 * _632]
    var109001 = _632
    var109002 = _425 + (32 * _632) + 32
    mem[_425 + (4 * ceil32(return_data.size)) + 288] = t + (32 * _632) + -_425 + -(4 * ceil32(return_data.size)) - 160
    _664 = mem[_425 + (2 * ceil32(return_data.size)) + 96]
    mem[t + (32 * _632) + 32] = mem[_425 + (2 * ceil32(return_data.size)) + 96]
    mem[t + (32 * _632) + 64 len 32 * _664] = mem[_425 + (2 * ceil32(return_data.size)) + 128 len 32 * _664]
    return memory
      from mem[64]
       len t + (32 * _632) + (32 * _664) + -mem[64] + 64
}



}
