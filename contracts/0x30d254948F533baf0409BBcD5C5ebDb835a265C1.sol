contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function balanceOf(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == arg2:
        return eth.balance(arg1)
    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(arg2):
        revert with 0, 'INVALID_TOKEN'
    if not ext_code.hash(arg2):
        revert with 0, 'INVALID_TOKEN'
    require ext_code.size(arg2)
    staticcall arg2.balanceOf(address arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function batchBalanceOf(address[] arg1, address[] arg2) {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + (32 * arg2.length) + 36 <= calldata.size
    require arg2.length * arg1.length <= test266151307()
    mem[96] = arg2.length * arg1.length
    mem[64] = (32 * arg2.length * arg1.length) + 128
    if not arg2.length * arg1.length:
        idx = 0
        while idx < arg1.length:
            s = 0
            while s < arg2.length:
                require idx < arg1.length
                require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
                require s < arg2.length
                require cd[((32 * s) + arg2 + 36)] == address(cd[((32 * s) + arg2 + 36)])
                if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == address(cd[((32 * s) + arg2 + 36)]):
                    require s + (arg2.length * idx) < mem[96]
                    mem[(32 * s + (arg2.length * idx)) + 128] = eth.balance(cd[((32 * idx) + arg1 + 36)])
                else:
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(address(cd[((32 * s) + arg2 + 36)])):
                        revert with 0, 'INVALID_TOKEN'
                    if not ext_code.hash(address(cd[((32 * s) + arg2 + 36)])):
                        revert with 0, 'INVALID_TOKEN'
                    mem[mem[64] + 4] = address(cd[((32 * idx) + arg1 + 36)])
                    require ext_code.size(address(cd[((32 * s) + arg2 + 36)]))
                    staticcall address(cd[((32 * s) + arg2 + 36)]).balanceOf(address arg1) with:
                            gas gas_remaining wei
                           args address(cd[((32 * idx) + arg1 + 36)])
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _76 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require s + (arg2.length * idx) < mem[96]
                    mem[(32 * s + (arg2.length * idx)) + 128] = mem[_76]
                s = s + 1
                continue 
            idx = idx + 1
            continue 
    else:
        mem[128 len 32 * arg2.length * arg1.length] = call.data[calldata.size len 32 * arg2.length * arg1.length]
        idx = 0
        while idx < arg1.length:
            s = 0
            while s < arg2.length:
                require idx < arg1.length
                require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
                require s < arg2.length
                require cd[((32 * s) + arg2 + 36)] == address(cd[((32 * s) + arg2 + 36)])
                if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == address(cd[((32 * s) + arg2 + 36)]):
                    require s + (arg2.length * idx) < mem[96]
                    mem[(32 * s + (arg2.length * idx)) + 128] = eth.balance(cd[((32 * idx) + arg1 + 36)])
                else:
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(address(cd[((32 * s) + arg2 + 36)])):
                        revert with 0, 'INVALID_TOKEN'
                    if not ext_code.hash(address(cd[((32 * s) + arg2 + 36)])):
                        revert with 0, 'INVALID_TOKEN'
                    mem[mem[64] + 4] = address(cd[((32 * idx) + arg1 + 36)])
                    require ext_code.size(address(cd[((32 * s) + arg2 + 36)]))
                    staticcall address(cd[((32 * s) + arg2 + 36)]).balanceOf(address arg1) with:
                            gas gas_remaining wei
                           args address(cd[((32 * idx) + arg1 + 36)])
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _77 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require s + (arg2.length * idx) < mem[96]
                    mem[(32 * s + (arg2.length * idx)) + 128] = mem[_77]
                s = s + 1
                continue 
            idx = idx + 1
            continue 
    mem[mem[64]] = 32
    mem[mem[64] + 32] = mem[96]
    mem[mem[64] + 64 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
    return 32, mem[mem[64] + 32 len (32 * mem[96]) + 32]
}

function getUserWalletBalances(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require ext_code.size(arg1)
    staticcall arg1.getLendingPool() with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[ceil32(return_data.size) + 96] = 0xd1946dbc00000000000000000000000000000000000000000000000000000000
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).getReservesList() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (2 * ceil32(return_data.size)) + 96
    require return_data.size >= 32
    _8 = mem[ceil32(return_data.size) + 96]
    require mem[ceil32(return_data.size) + 96] <= test266151307()
    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 127 < ceil32(return_data.size) + return_data.size + 96
    _9 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 96]
    require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 96] <= test266151307()
    require (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 96]) + 32 >= 0 and (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 96]) + 128 <= test266151307()
    mem[64] = (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 96]) + 128
    mem[(2 * ceil32(return_data.size)) + 96] = _9
    require return_data.size >= _8 + (32 * _9) + 32
    s = ceil32(return_data.size) + _8 + 128
    t = (2 * ceil32(return_data.size)) + 128
    u = 32 * _9
    idx = 0
    while idx < _9:
        _150 = mem[s]
        require mem[s] == mem[s + 12 len 20]
        mem[t] = mem[s]
        s = s + 32
        t = t + 32
        u = _150
        idx = idx + 1
        continue 
    require _9 + 1 <= test266151307()
    _152 = mem[64]
    mem[mem[64]] = _9 + 1
    mem[64] = mem[64] + (32 * _9 + 1) + 32
    if not _9 + 1:
        idx = 0
        while idx < _9:
            require idx < mem[(2 * ceil32(return_data.size)) + 96]
            require idx < mem[_152]
            mem[(32 * idx) + _152 + 32] = mem[(32 * idx) + (2 * ceil32(return_data.size)) + 140 len 20]
            idx = idx + 1
            continue 
        require mem[(2 * ceil32(return_data.size)) + 96] < mem[_152]
        mem[(32 * mem[(2 * ceil32(return_data.size)) + 96]) + _152 + 32] = 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
        _297 = mem[_152]
        require mem[_152] <= test266151307()
        _303 = mem[64]
        mem[mem[64]] = mem[_152]
        mem[64] = mem[64] + (32 * _297) + 32
        if not _297:
            _425 = mem[(2 * ceil32(return_data.size)) + 96]
            idx = 0
            while idx < _425:
                require idx < mem[_152]
                _433 = mem[(32 * idx) + _152 + 32]
                mem[mem[64] + 4] = mem[(32 * idx) + _152 + 44 len 20]
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).getConfiguration(address arg1) with:
                        gas gas_remaining wei
                       args address(_433)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _453 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _458 = mem[64]
                require mem[64] + 32 <= test266151307() and mem[64] + 32 >= mem[64]
                mem[64] = mem[64] + 32
                mem[_458] = mem[_453]
                if not Mask(1, 56, mem[_458]):
                    require idx < mem[_303]
                    mem[(32 * idx) + _303 + 32] = 0
                else:
                    require idx < mem[_152]
                    _494 = mem[(32 * idx) + _152 + 32]
                    if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == mem[(32 * idx) + _152 + 44 len 20]:
                        require idx < mem[_303]
                        mem[(32 * idx) + _303 + 32] = eth.balance(arg2)
                    else:
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(mem[(32 * idx) + _152 + 44 len 20]):
                            revert with 0, 'INVALID_TOKEN'
                        if not ext_code.hash(mem[(32 * idx) + _152 + 44 len 20]):
                            revert with 0, 'INVALID_TOKEN'
                        mem[mem[64] + 4] = arg2
                        require ext_code.size(address(_494))
                        staticcall address(_494).balanceOf(address arg1) with:
                                gas gas_remaining wei
                               args address(arg2)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _533 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require idx < mem[_303]
                        mem[(32 * idx) + _303 + 32] = mem[_533]
                _425 = mem[(2 * ceil32(return_data.size)) + 96]
                idx = idx + 1
                continue 
            require mem[(2 * ceil32(return_data.size)) + 96] < mem[_303]
            mem[(32 * mem[(2 * ceil32(return_data.size)) + 96]) + _303 + 32] = eth.balance(arg2)
            _457 = mem[64]
            mem[mem[64]] = 64
            _465 = mem[_152]
            mem[mem[64] + 64] = mem[_152]
            idx = 0
            s = _152 + 32
            t = mem[64] + 96
            while idx < _465:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_457 + 32] = (32 * _465) + 96
            _549 = mem[_303]
            mem[_457 + (32 * _465) + 96] = mem[_303]
            mem[_457 + (32 * _465) + 128 len 32 * _549] = mem[_303 + 32 len 32 * _549]
            var61001 = _549
            return memory
              from mem[64]
               len _457 + (32 * _465) + (32 * _549) + -mem[64] + 128
        mem[_303 + 32 len 32 * _297] = call.data[calldata.size len 32 * _297]
        _426 = mem[(2 * ceil32(return_data.size)) + 96]
        idx = 0
        while idx < _426:
            require idx < mem[_152]
            _435 = mem[(32 * idx) + _152 + 32]
            mem[mem[64] + 4] = mem[(32 * idx) + _152 + 44 len 20]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).getConfiguration(address arg1) with:
                    gas gas_remaining wei
                   args address(_435)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _454 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _460 = mem[64]
            require mem[64] + 32 <= test266151307() and mem[64] + 32 >= mem[64]
            mem[64] = mem[64] + 32
            mem[_460] = mem[_454]
            if not Mask(1, 56, mem[_460]):
                require idx < mem[_303]
                mem[(32 * idx) + _303 + 32] = 0
            else:
                require idx < mem[_152]
                _496 = mem[(32 * idx) + _152 + 32]
                if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == mem[(32 * idx) + _152 + 44 len 20]:
                    require idx < mem[_303]
                    mem[(32 * idx) + _303 + 32] = eth.balance(arg2)
                else:
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(mem[(32 * idx) + _152 + 44 len 20]):
                        revert with 0, 'INVALID_TOKEN'
                    if not ext_code.hash(mem[(32 * idx) + _152 + 44 len 20]):
                        revert with 0, 'INVALID_TOKEN'
                    mem[mem[64] + 4] = arg2
                    require ext_code.size(address(_496))
                    staticcall address(_496).balanceOf(address arg1) with:
                            gas gas_remaining wei
                           args address(arg2)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _534 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require idx < mem[_303]
                    mem[(32 * idx) + _303 + 32] = mem[_534]
            _426 = mem[(2 * ceil32(return_data.size)) + 96]
            idx = idx + 1
            continue 
        require mem[(2 * ceil32(return_data.size)) + 96] < mem[_303]
        mem[(32 * mem[(2 * ceil32(return_data.size)) + 96]) + _303 + 32] = eth.balance(arg2)
        _459 = mem[64]
        mem[mem[64]] = 64
        _467 = mem[_152]
        mem[mem[64] + 64] = mem[_152]
        idx = 0
        s = _152 + 32
        t = mem[64] + 96
        while idx < _467:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_459 + 32] = (32 * _467) + 96
        _550 = mem[_303]
        mem[_459 + (32 * _467) + 96] = mem[_303]
        mem[_459 + (32 * _467) + 128 len 32 * _550] = mem[_303 + 32 len 32 * _550]
        var62001 = _550
        return memory
          from mem[64]
           len _459 + (32 * _467) + (32 * _550) + -mem[64] + 128
    mem[_152 + 32 len 32 * _9 + 1] = call.data[calldata.size len 32 * _9 + 1]
    idx = 0
    while idx < _9:
        require idx < mem[(2 * ceil32(return_data.size)) + 96]
        require idx < mem[_152]
        mem[(32 * idx) + _152 + 32] = mem[(32 * idx) + (2 * ceil32(return_data.size)) + 140 len 20]
        idx = idx + 1
        continue 
    require mem[(2 * ceil32(return_data.size)) + 96] < mem[_152]
    mem[(32 * mem[(2 * ceil32(return_data.size)) + 96]) + _152 + 32] = 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
    _300 = mem[_152]
    require mem[_152] <= test266151307()
    _304 = mem[64]
    mem[mem[64]] = mem[_152]
    mem[64] = mem[64] + (32 * _300) + 32
    if not _300:
        _427 = mem[(2 * ceil32(return_data.size)) + 96]
        idx = 0
        while idx < _427:
            require idx < mem[_152]
            _437 = mem[(32 * idx) + _152 + 32]
            mem[mem[64] + 4] = mem[(32 * idx) + _152 + 44 len 20]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).getConfiguration(address arg1) with:
                    gas gas_remaining wei
                   args address(_437)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _455 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _462 = mem[64]
            require mem[64] + 32 <= test266151307() and mem[64] + 32 >= mem[64]
            mem[64] = mem[64] + 32
            mem[_462] = mem[_455]
            if not Mask(1, 56, mem[_462]):
                require idx < mem[_304]
                mem[(32 * idx) + _304 + 32] = 0
            else:
                require idx < mem[_152]
                _498 = mem[(32 * idx) + _152 + 32]
                if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == mem[(32 * idx) + _152 + 44 len 20]:
                    require idx < mem[_304]
                    mem[(32 * idx) + _304 + 32] = eth.balance(arg2)
                else:
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(mem[(32 * idx) + _152 + 44 len 20]):
                        revert with 0, 'INVALID_TOKEN'
                    if not ext_code.hash(mem[(32 * idx) + _152 + 44 len 20]):
                        revert with 0, 'INVALID_TOKEN'
                    mem[mem[64] + 4] = arg2
                    require ext_code.size(address(_498))
                    staticcall address(_498).balanceOf(address arg1) with:
                            gas gas_remaining wei
                           args address(arg2)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _535 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require idx < mem[_304]
                    mem[(32 * idx) + _304 + 32] = mem[_535]
            _427 = mem[(2 * ceil32(return_data.size)) + 96]
            idx = idx + 1
            continue 
        require mem[(2 * ceil32(return_data.size)) + 96] < mem[_304]
        mem[(32 * mem[(2 * ceil32(return_data.size)) + 96]) + _304 + 32] = eth.balance(arg2)
        _461 = mem[64]
        mem[mem[64]] = 64
        _469 = mem[_152]
        mem[mem[64] + 64] = mem[_152]
        idx = 0
        s = _152 + 32
        t = mem[64] + 96
        while idx < _469:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_461 + 32] = (32 * _469) + 96
        _551 = mem[_304]
        mem[_461 + (32 * _469) + 96] = mem[_304]
        mem[_461 + (32 * _469) + 128 len 32 * _551] = mem[_304 + 32 len 32 * _551]
        var62001 = _551
        return memory
          from mem[64]
           len _461 + (32 * _469) + (32 * _551) + -mem[64] + 128
    mem[_304 + 32 len 32 * _300] = call.data[calldata.size len 32 * _300]
    _428 = mem[(2 * ceil32(return_data.size)) + 96]
    idx = 0
    while idx < _428:
        require idx < mem[_152]
        _439 = mem[(32 * idx) + _152 + 32]
        mem[mem[64] + 4] = mem[(32 * idx) + _152 + 44 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).getConfiguration(address arg1) with:
                gas gas_remaining wei
               args address(_439)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _456 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _464 = mem[64]
        require mem[64] + 32 <= test266151307() and mem[64] + 32 >= mem[64]
        mem[64] = mem[64] + 32
        mem[_464] = mem[_456]
        if not Mask(1, 56, mem[_464]):
            require idx < mem[_304]
            mem[(32 * idx) + _304 + 32] = 0
        else:
            require idx < mem[_152]
            _500 = mem[(32 * idx) + _152 + 32]
            if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == mem[(32 * idx) + _152 + 44 len 20]:
                require idx < mem[_304]
                mem[(32 * idx) + _304 + 32] = eth.balance(arg2)
            else:
                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(mem[(32 * idx) + _152 + 44 len 20]):
                    revert with 0, 'INVALID_TOKEN'
                if not ext_code.hash(mem[(32 * idx) + _152 + 44 len 20]):
                    revert with 0, 'INVALID_TOKEN'
                mem[mem[64] + 4] = arg2
                require ext_code.size(address(_500))
                staticcall address(_500).balanceOf(address arg1) with:
                        gas gas_remaining wei
                       args address(arg2)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _536 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require idx < mem[_304]
                mem[(32 * idx) + _304 + 32] = mem[_536]
        _428 = mem[(2 * ceil32(return_data.size)) + 96]
        idx = idx + 1
        continue 
    require mem[(2 * ceil32(return_data.size)) + 96] < mem[_304]
    mem[(32 * mem[(2 * ceil32(return_data.size)) + 96]) + _304 + 32] = eth.balance(arg2)
    _463 = mem[64]
    mem[mem[64]] = 64
    _471 = mem[_152]
    mem[mem[64] + 64] = mem[_152]
    idx = 0
    s = _152 + 32
    t = mem[64] + 96
    while idx < _471:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[_463 + 32] = (32 * _471) + 96
    _552 = mem[_304]
    mem[_463 + (32 * _471) + 96] = mem[_304]
    mem[_463 + (32 * _471) + 128 len 32 * _552] = mem[_304 + 32 len 32 * _552]
    return memory
      from mem[64]
       len _463 + (32 * _471) + (32 * _552) + -mem[64] + 128
}



}
