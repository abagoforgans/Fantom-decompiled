contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function getTokenDetails(address[] arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    require arg1.length <= test266151307()
    mem[96] = arg1.length
    mem[64] = (32 * arg1.length) + 128
    if not arg1.length:
        idx = 0
        while idx < arg1.length:
            _121 = mem[64]
            mem[64] = mem[64] + 96
            require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
            mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
            staticcall address(cd[((32 * idx) + arg1 + 36)]).symbol() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _133 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _136 = mem[_133]
            require mem[_133] <= test266151307()
            require _133 + mem[_133] + 31 < _133 + return_data.size
            _144 = mem[_133 + mem[_133]]
            require mem[_133 + mem[_133]] <= test266151307()
            require _133 + ceil32(return_data.size) + ceil32(mem[_133 + mem[_133]]) + 32 <= test266151307() and ceil32(mem[_133 + mem[_133]]) + 32 >= 0
            mem[64] = _133 + ceil32(return_data.size) + ceil32(mem[_133 + mem[_133]]) + 32
            mem[_133 + ceil32(return_data.size)] = _144
            require return_data.size >= _144 + _136 + 32
            s = 0
            while s < _144:
                mem[s + _133 + ceil32(return_data.size) + 32] = mem[s + _133 + _136 + 32]
                s = s + 32
                continue 
            if ceil32(_144) <= _144:
                mem[_121] = _133 + ceil32(return_data.size)
                require idx < arg1.length
                require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
                mem[mem[64]] = 0x6fdde0300000000000000000000000000000000000000000000000000000000
                require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                staticcall address(cd[((32 * idx) + arg1 + 36)]).name() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _264 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _269 = mem[_264]
                require mem[_264] <= test266151307()
                require _264 + mem[_264] + 31 < _264 + return_data.size
                _274 = mem[_264 + mem[_264]]
                require mem[_264 + mem[_264]] <= test266151307()
                require _264 + ceil32(return_data.size) + ceil32(mem[_264 + mem[_264]]) + 32 <= test266151307() and ceil32(mem[_264 + mem[_264]]) + 32 >= 0
                mem[64] = _264 + ceil32(return_data.size) + ceil32(mem[_264 + mem[_264]]) + 32
                mem[_264 + ceil32(return_data.size)] = _274
                require return_data.size >= _274 + _269 + 32
                s = 0
                while s < _274:
                    mem[s + _264 + ceil32(return_data.size) + 32] = mem[s + _264 + _269 + 32]
                    s = s + 32
                    continue 
                if ceil32(_274) <= _274:
                    mem[_121 + 32] = _264 + ceil32(return_data.size)
                    require idx < arg1.length
                    require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
                    require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                    staticcall address(cd[((32 * idx) + arg1 + 36)]).decimals() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _380 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_380] == mem[_380 + 31 len 1]
                    mem[_121 + 64] = mem[_380 + 31 len 1]
                else:
                    mem[_264 + ceil32(return_data.size) + _274 + 32] = 0
                    mem[_121 + 32] = _264 + ceil32(return_data.size)
                    require idx < arg1.length
                    require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
                    require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                    staticcall address(cd[((32 * idx) + arg1 + 36)]).decimals() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _384 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_384] == mem[_384 + 31 len 1]
                    mem[_121 + 64] = mem[_384 + 31 len 1]
            else:
                mem[_133 + ceil32(return_data.size) + _144 + 32] = 0
                mem[_121] = _133 + ceil32(return_data.size)
                require idx < arg1.length
                require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
                mem[mem[64]] = 0x6fdde0300000000000000000000000000000000000000000000000000000000
                require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                staticcall address(cd[((32 * idx) + arg1 + 36)]).name() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _266 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _271 = mem[_266]
                require mem[_266] <= test266151307()
                require _266 + mem[_266] + 31 < _266 + return_data.size
                _278 = mem[_266 + mem[_266]]
                require mem[_266 + mem[_266]] <= test266151307()
                require _266 + ceil32(return_data.size) + ceil32(mem[_266 + mem[_266]]) + 32 <= test266151307() and ceil32(mem[_266 + mem[_266]]) + 32 >= 0
                mem[64] = _266 + ceil32(return_data.size) + ceil32(mem[_266 + mem[_266]]) + 32
                mem[_266 + ceil32(return_data.size)] = _278
                require return_data.size >= _278 + _271 + 32
                s = 0
                while s < _278:
                    mem[s + _266 + ceil32(return_data.size) + 32] = mem[s + _266 + _271 + 32]
                    s = s + 32
                    continue 
                if ceil32(_278) <= _278:
                    mem[_121 + 32] = _266 + ceil32(return_data.size)
                    require idx < arg1.length
                    require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
                    require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                    staticcall address(cd[((32 * idx) + arg1 + 36)]).decimals() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _381 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_381] == mem[_381 + 31 len 1]
                    mem[_121 + 64] = mem[_381 + 31 len 1]
                else:
                    mem[_266 + ceil32(return_data.size) + _278 + 32] = 0
                    mem[_121 + 32] = _266 + ceil32(return_data.size)
                    require idx < arg1.length
                    require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
                    require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                    staticcall address(cd[((32 * idx) + arg1 + 36)]).decimals() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _385 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_385] == mem[_385 + 31 len 1]
                    mem[_121 + 64] = mem[_385 + 31 len 1]
            require idx < mem[96]
            mem[(32 * idx) + 128] = _121
            idx = idx + 1
            continue 
        _123 = mem[64]
        mem[mem[64]] = 32
        _124 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + (32 * mem[96]) + 64
        u = mem[64] + 64
        while idx < _124:
            mem[u] = t + -_123 - 64
            _241 = mem[s]
            _242 = mem[mem[s]]
            mem[t] = 96
            _245 = mem[_242]
            mem[t + 96] = mem[_242]
            v = 0
            while v < _245:
                mem[v + t + 128] = mem[v + _242 + 32]
                v = v + 32
                continue 
            if ceil32(_245) <= _245:
                _356 = mem[_241 + 32]
                mem[t + 32] = ceil32(_245) + 128
                _357 = mem[_356]
                mem[ceil32(_245) + t + 128] = mem[_356]
                v = 0
                while v < _357:
                    mem[v + ceil32(_245) + t + 160] = mem[v + _356 + 32]
                    v = v + 32
                    continue 
                if ceil32(_357) > _357:
                    mem[ceil32(_245) + t + _357 + 160] = 0
                mem[t + 64] = mem[_241 + 95 len 1]
                idx = idx + 1
                s = s + 32
                t = ceil32(_357) + ceil32(_245) + t + 160
                u = u + 32
                continue 
            mem[t + _245 + 128] = 0
            _358 = mem[_241 + 32]
            mem[t + 32] = ceil32(_245) + 128
            _361 = mem[_358]
            mem[ceil32(_245) + t + 128] = mem[_358]
            v = 0
            while v < _361:
                mem[v + ceil32(_245) + t + 160] = mem[v + _358 + 32]
                v = v + 32
                continue 
            if ceil32(_361) > _361:
                mem[ceil32(_245) + t + _361 + 160] = 0
            mem[t + 64] = mem[_241 + 95 len 1]
            idx = idx + 1
            s = s + 32
            t = ceil32(_361) + ceil32(_245) + t + 160
            u = u + 32
            continue 
    else:
        mem[64] = (32 * arg1.length) + 224
        mem[(32 * arg1.length) + 128] = 96
        mem[(32 * arg1.length) + 160] = 96
        mem[(32 * arg1.length) + 192] = 0
        mem[var15001] = (32 * arg1.length) + 128
        s = var15001
        idx = var15002
        while idx - 1:
            mem[64] = mem[64] + 96
            mem[(32 * arg1.length) + 128] = 96
            mem[(32 * arg1.length) + 160] = 96
            mem[(32 * arg1.length) + 192] = 0
            mem[s + 32] = (32 * arg1.length) + 128
            s = s + 32
            idx = idx - 1
            continue 
        idx = 0
        while idx < arg1.length:
            _353 = mem[64]
            mem[64] = mem[64] + 96
            require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
            mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
            staticcall address(cd[((32 * idx) + arg1 + 36)]).symbol() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _367 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _378 = mem[_367]
            require mem[_367] <= test266151307()
            require _367 + mem[_367] + 31 < _367 + return_data.size
            _387 = mem[_367 + mem[_367]]
            require mem[_367 + mem[_367]] <= test266151307()
            require _367 + ceil32(return_data.size) + ceil32(mem[_367 + mem[_367]]) + 32 <= test266151307() and ceil32(mem[_367 + mem[_367]]) + 32 >= 0
            mem[64] = _367 + ceil32(return_data.size) + ceil32(mem[_367 + mem[_367]]) + 32
            mem[_367 + ceil32(return_data.size)] = _387
            require return_data.size >= _387 + _378 + 32
            s = 0
            while s < _387:
                mem[s + _367 + ceil32(return_data.size) + 32] = mem[s + _367 + _378 + 32]
                s = s + 32
                continue 
            if ceil32(_387) <= _387:
                mem[_353] = _367 + ceil32(return_data.size)
                require idx < arg1.length
                require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
                mem[mem[64]] = 0x6fdde0300000000000000000000000000000000000000000000000000000000
                require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                staticcall address(cd[((32 * idx) + arg1 + 36)]).name() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _462 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _466 = mem[_462]
                require mem[_462] <= test266151307()
                require _462 + mem[_462] + 31 < _462 + return_data.size
                _469 = mem[_462 + mem[_462]]
                require mem[_462 + mem[_462]] <= test266151307()
                require _462 + ceil32(return_data.size) + ceil32(mem[_462 + mem[_462]]) + 32 <= test266151307() and ceil32(mem[_462 + mem[_462]]) + 32 >= 0
                mem[64] = _462 + ceil32(return_data.size) + ceil32(mem[_462 + mem[_462]]) + 32
                mem[_462 + ceil32(return_data.size)] = _469
                require return_data.size >= _469 + _466 + 32
                s = 0
                while s < _469:
                    mem[s + _462 + ceil32(return_data.size) + 32] = mem[s + _462 + _466 + 32]
                    s = s + 32
                    continue 
                if ceil32(_469) <= _469:
                    mem[_353 + 32] = _462 + ceil32(return_data.size)
                    require idx < arg1.length
                    require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
                    require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                    staticcall address(cd[((32 * idx) + arg1 + 36)]).decimals() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _516 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_516] == mem[_516 + 31 len 1]
                    mem[_353 + 64] = mem[_516 + 31 len 1]
                else:
                    mem[_462 + ceil32(return_data.size) + _469 + 32] = 0
                    mem[_353 + 32] = _462 + ceil32(return_data.size)
                    require idx < arg1.length
                    require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
                    require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                    staticcall address(cd[((32 * idx) + arg1 + 36)]).decimals() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _520 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_520] == mem[_520 + 31 len 1]
                    mem[_353 + 64] = mem[_520 + 31 len 1]
            else:
                mem[_367 + ceil32(return_data.size) + _387 + 32] = 0
                mem[_353] = _367 + ceil32(return_data.size)
                require idx < arg1.length
                require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
                mem[mem[64]] = 0x6fdde0300000000000000000000000000000000000000000000000000000000
                require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                staticcall address(cd[((32 * idx) + arg1 + 36)]).name() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _464 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _467 = mem[_464]
                require mem[_464] <= test266151307()
                require _464 + mem[_464] + 31 < _464 + return_data.size
                _473 = mem[_464 + mem[_464]]
                require mem[_464 + mem[_464]] <= test266151307()
                require _464 + ceil32(return_data.size) + ceil32(mem[_464 + mem[_464]]) + 32 <= test266151307() and ceil32(mem[_464 + mem[_464]]) + 32 >= 0
                mem[64] = _464 + ceil32(return_data.size) + ceil32(mem[_464 + mem[_464]]) + 32
                mem[_464 + ceil32(return_data.size)] = _473
                require return_data.size >= _473 + _467 + 32
                s = 0
                while s < _473:
                    mem[s + _464 + ceil32(return_data.size) + 32] = mem[s + _464 + _467 + 32]
                    s = s + 32
                    continue 
                if ceil32(_473) <= _473:
                    mem[_353 + 32] = _464 + ceil32(return_data.size)
                    require idx < arg1.length
                    require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
                    require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                    staticcall address(cd[((32 * idx) + arg1 + 36)]).decimals() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _517 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_517] == mem[_517 + 31 len 1]
                    mem[_353 + 64] = mem[_517 + 31 len 1]
                else:
                    mem[_464 + ceil32(return_data.size) + _473 + 32] = 0
                    mem[_353 + 32] = _464 + ceil32(return_data.size)
                    require idx < arg1.length
                    require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
                    require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                    staticcall address(cd[((32 * idx) + arg1 + 36)]).decimals() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _521 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_521] == mem[_521 + 31 len 1]
                    mem[_353 + 64] = mem[_521 + 31 len 1]
            require idx < mem[96]
            mem[(32 * idx) + 128] = _353
            idx = idx + 1
            continue 
        _354 = mem[64]
        mem[mem[64]] = 32
        _355 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + (32 * mem[96]) + 64
        u = mem[64] + 64
        while idx < _355:
            mem[u] = t + -_354 - 64
            _444 = mem[s]
            _445 = mem[mem[s]]
            mem[t] = 96
            _448 = mem[_445]
            mem[t + 96] = mem[_445]
            v = 0
            while v < _448:
                mem[v + t + 128] = mem[v + _445 + 32]
                v = v + 32
                continue 
            if ceil32(_448) <= _448:
                _501 = mem[_444 + 32]
                mem[t + 32] = ceil32(_448) + 128
                _502 = mem[_501]
                mem[ceil32(_448) + t + 128] = mem[_501]
                v = 0
                while v < _502:
                    mem[v + ceil32(_448) + t + 160] = mem[v + _501 + 32]
                    v = v + 32
                    continue 
                if ceil32(_502) > _502:
                    mem[ceil32(_448) + t + _502 + 160] = 0
                mem[t + 64] = mem[_444 + 95 len 1]
                idx = idx + 1
                s = s + 32
                t = ceil32(_502) + ceil32(_448) + t + 160
                u = u + 32
                continue 
            mem[t + _448 + 128] = 0
            _503 = mem[_444 + 32]
            mem[t + 32] = ceil32(_448) + 128
            _504 = mem[_503]
            mem[ceil32(_448) + t + 128] = mem[_503]
            v = 0
            while v < _504:
                mem[v + ceil32(_448) + t + 160] = mem[v + _503 + 32]
                v = v + 32
                continue 
            if ceil32(_504) > _504:
                mem[ceil32(_448) + t + _504 + 160] = 0
            mem[t + 64] = mem[_444 + 95 len 1]
            idx = idx + 1
            s = s + 32
            t = ceil32(_504) + ceil32(_448) + t + 160
            u = u + 32
            continue 
    return memory
      from mem[64]
       len t - mem[64]
}



}
