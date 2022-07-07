contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function multicall(address arg1, bytes[] arg2) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require (32 * arg1.length) + 128 >= 96 and (32 * arg1.length) + 128 <= test266151307()
    mem[64] = (32 * arg1.length) + 128
    mem[96] = arg1.length
    idx = 0
    s = arg1 + 36
    t = 128
    while idx < arg1.length:
        require calldata.size + -arg1 + -cd[s] - 36 >= 64
        _132 = mem[64]
        require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
        mem[64] = mem[64] + 64
        require cd[(arg1 + cd[s] + 36)] == address(cd[(arg1 + cd[s] + 36)])
        mem[_132] = cd[(arg1 + cd[s] + 36)]
        require cd[(arg1 + cd[s] + 68)] <= test266151307()
        require arg1 + cd[s] + cd[(arg1 + cd[s] + 68)] + 67 < calldata.size
        require cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 68)] + 36)] <= test266151307()
        _154 = mem[64]
        require mem[64] + ceil32(cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 68)] + 36)]) + 32 >= mem[64] and mem[64] + ceil32(cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 68)] + 36)]) + 32 <= test266151307()
        mem[64] = mem[64] + ceil32(cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 68)] + 36)]) + 32
        mem[_154] = cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 68)] + 36)]
        require arg1 + cd[s] + cd[(arg1 + cd[s] + 68)] + cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 68)] + 36)] + 68 <= calldata.size
        mem[_154 + 32 len cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 68)] + 36)]] = call.data[arg1 + cd[s] + cd[(arg1 + cd[s] + 68)] + 68 len cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 68)] + 36)]]
        mem[_154 + cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 68)] + 36)] + 32] = 0
        mem[_132 + 32] = _154
        mem[t] = _132
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    _130 = mem[96]
    require mem[96] <= test266151307()
    _131 = mem[64]
    mem[mem[64]] = mem[96]
    mem[64] = mem[64] + (32 * _130) + 32
    if not _130:
        _133 = mem[96]
        require mem[96] <= test266151307()
        mem[_131 + (32 * _130) + 32] = mem[96]
        mem[64] = _131 + (32 * _130) + (32 * _133) + 64
        if not _133:
            _258 = mem[96]
            idx = 0
            while idx < _258:
                require idx < mem[96]
                _264 = mem[mem[(32 * idx) + 128]]
                require idx < mem[96]
                _273 = mem[mem[(32 * idx) + 128] + 32]
                _274 = mem[64]
                _280 = mem[mem[mem[(32 * idx) + 128] + 32]]
                s = 0
                while s < _280:
                    mem[s + _274] = mem[s + _273 + 32]
                    _258 = mem[96]
                    s = s + 32
                    continue 
                if ceil32(_280) <= _280:
                    call address(_264).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _280 + _274 + -mem[64] - 4]
                    if not return_data.size:
                        require idx < mem[_131 + (32 * _130) + 32]
                        require idx < mem[_131]
                        mem[(32 * idx) + _131 + 32] = 96
                    else:
                        _416 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_416] = return_data.size
                        mem[_416 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        require idx < mem[_131 + (32 * _130) + 32]
                        require idx < mem[_131]
                        mem[(32 * idx) + _131 + 32] = _416
                else:
                    mem[_274 + _280] = 0
                    call address(_264).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _280 + _274 + -mem[64] - 4]
                    if not return_data.size:
                        require idx < mem[_131 + (32 * _130) + 32]
                        require idx < mem[_131]
                        mem[(32 * idx) + _131 + 32] = 96
                    else:
                        _427 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_427] = return_data.size
                        mem[_427 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        require idx < mem[_131 + (32 * _130) + 32]
                        require idx < mem[_131]
                        mem[(32 * idx) + _131 + 32] = _427
                mem[(32 * idx) + _131 + (32 * _130) + 64] = bool(ext_call.success)
                _258 = mem[96]
                idx = idx + 1
                continue 
            _262 = mem[64]
            mem[mem[64]] = 64
            _271 = mem[_131]
            mem[mem[64] + 64] = mem[_131]
            idx = 0
            s = _131 + 32
            t = mem[64] + (32 * _271) + 96
            u = mem[64] + 96
            while idx < _271:
                mem[u] = t + -_262 - 96
                _382 = mem[s]
                _383 = mem[mem[s]]
                mem[t] = mem[mem[s]]
                v = 0
                while v < _383:
                    mem[v + t + 32] = mem[v + _382 + 32]
                    v = v + 32
                    continue 
                if ceil32(_383) > _383:
                    mem[t + _383 + 32] = 0
                idx = idx + 1
                s = s + 32
                t = ceil32(_383) + t + 32
                u = u + 32
                continue 
            mem[_262 + 32] = t - _262
            _390 = mem[_131 + (32 * _130) + 32]
            mem[t] = mem[_131 + (32 * _130) + 32]
            idx = 0
            s = _131 + (32 * _130) + 64
            u = t + 32
            while idx < _390:
                mem[u] = bool(mem[s])
                idx = idx + 1
                s = s + 32
                u = u + 32
                continue 
            return memory
              from mem[64]
               len t + (32 * _390) + -mem[64] + 32
        mem[_131 + (32 * _130) + 64 len 32 * _133] = call.data[calldata.size len 32 * _133]
        _259 = mem[96]
        idx = 0
        while idx < _259:
            require idx < mem[96]
            _268 = mem[mem[(32 * idx) + 128]]
            require idx < mem[96]
            _277 = mem[mem[(32 * idx) + 128] + 32]
            _278 = mem[64]
            _281 = mem[mem[mem[(32 * idx) + 128] + 32]]
            s = 0
            while s < _281:
                mem[s + _278] = mem[s + _277 + 32]
                _259 = mem[96]
                s = s + 32
                continue 
            if ceil32(_281) <= _281:
                call address(_268).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _281 + _278 + -mem[64] - 4]
                if not return_data.size:
                    require idx < mem[_131 + (32 * _130) + 32]
                    require idx < mem[_131]
                    mem[(32 * idx) + _131 + 32] = 96
                else:
                    _418 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_418] = return_data.size
                    mem[_418 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    require idx < mem[_131 + (32 * _130) + 32]
                    require idx < mem[_131]
                    mem[(32 * idx) + _131 + 32] = _418
            else:
                mem[_278 + _281] = 0
                call address(_268).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _281 + _278 + -mem[64] - 4]
                if not return_data.size:
                    require idx < mem[_131 + (32 * _130) + 32]
                    require idx < mem[_131]
                    mem[(32 * idx) + _131 + 32] = 96
                else:
                    _431 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_431] = return_data.size
                    mem[_431 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    require idx < mem[_131 + (32 * _130) + 32]
                    require idx < mem[_131]
                    mem[(32 * idx) + _131 + 32] = _431
            mem[(32 * idx) + _131 + (32 * _130) + 64] = bool(ext_call.success)
            _259 = mem[96]
            idx = idx + 1
            continue 
        _266 = mem[64]
        mem[mem[64]] = 64
        _275 = mem[_131]
        mem[mem[64] + 64] = mem[_131]
        idx = 0
        s = _131 + 32
        t = mem[64] + (32 * _275) + 96
        u = mem[64] + 96
        while idx < _275:
            mem[u] = t + -_266 - 96
            _385 = mem[s]
            _386 = mem[mem[s]]
            mem[t] = mem[mem[s]]
            v = 0
            while v < _386:
                mem[v + t + 32] = mem[v + _385 + 32]
                v = v + 32
                continue 
            if ceil32(_386) > _386:
                mem[t + _386 + 32] = 0
            idx = idx + 1
            s = s + 32
            t = ceil32(_386) + t + 32
            u = u + 32
            continue 
        mem[_266 + 32] = t - _266
        _391 = mem[_131 + (32 * _130) + 32]
        mem[t] = mem[_131 + (32 * _130) + 32]
        idx = 0
        s = _131 + (32 * _130) + 64
        u = t + 32
        while idx < _391:
            mem[u] = bool(mem[s])
            idx = idx + 1
            s = s + 32
            u = u + 32
            continue 
        return memory
          from mem[64]
           len t + (32 * _391) + -mem[64] + 32
    mem[_131 + 32] = 96
    s = _131 + 32
    idx = _130
    while idx - 1:
        mem[s + 32] = 96
        s = s + 32
        idx = idx - 1
        continue 
    _270 = mem[96]
    require mem[96] <= test266151307()
    _279 = mem[64]
    mem[mem[64]] = mem[96]
    mem[64] = mem[64] + (32 * _270) + 32
    if not _270:
        _380 = mem[96]
        idx = 0
        while idx < _380:
            require idx < mem[96]
            _394 = mem[mem[(32 * idx) + 128]]
            require idx < mem[96]
            _402 = mem[mem[(32 * idx) + 128] + 32]
            _403 = mem[64]
            _414 = mem[mem[mem[(32 * idx) + 128] + 32]]
            s = 0
            while s < _414:
                mem[s + _403] = mem[s + _402 + 32]
                _380 = mem[96]
                s = s + 32
                continue 
            if ceil32(_414) <= _414:
                call address(_394).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _414 + _403 + -mem[64] - 4]
                if not return_data.size:
                    require idx < mem[_279]
                    require idx < mem[_131]
                    mem[(32 * idx) + _131 + 32] = 96
                else:
                    _498 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_498] = return_data.size
                    mem[_498 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    require idx < mem[_279]
                    require idx < mem[_131]
                    mem[(32 * idx) + _131 + 32] = _498
            else:
                mem[_403 + _414] = 0
                call address(_394).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _414 + _403 + -mem[64] - 4]
                if not return_data.size:
                    require idx < mem[_279]
                    require idx < mem[_131]
                    mem[(32 * idx) + _131 + 32] = 96
                else:
                    _505 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_505] = return_data.size
                    mem[_505 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    require idx < mem[_279]
                    require idx < mem[_131]
                    mem[(32 * idx) + _131 + 32] = _505
            mem[(32 * idx) + _279 + 32] = bool(ext_call.success)
            _380 = mem[96]
            idx = idx + 1
            continue 
        _392 = mem[64]
        mem[mem[64]] = 64
        _400 = mem[_131]
        mem[mem[64] + 64] = mem[_131]
        idx = 0
        s = _131 + 32
        t = mem[64] + (32 * _400) + 96
        u = mem[64] + 96
        while idx < _400:
            mem[u] = t + -_392 - 96
            _482 = mem[s]
            _483 = mem[mem[s]]
            mem[t] = mem[mem[s]]
            v = 0
            while v < _483:
                mem[v + t + 32] = mem[v + _482 + 32]
                v = v + 32
                continue 
            if ceil32(_483) > _483:
                mem[t + _483 + 32] = 0
            idx = idx + 1
            s = s + 32
            t = ceil32(_483) + t + 32
            u = u + 32
            continue 
        mem[_392 + 32] = t - _392
        _488 = mem[_279]
        mem[t] = mem[_279]
        idx = 0
        s = _279 + 32
        u = t + 32
        while idx < _488:
            mem[u] = bool(mem[s])
            idx = idx + 1
            s = s + 32
            u = u + 32
            continue 
        return memory
          from mem[64]
           len t + (32 * _488) + -mem[64] + 32
    mem[_279 + 32 len 32 * _270] = call.data[calldata.size len 32 * _270]
    _381 = mem[96]
    idx = 0
    while idx < _381:
        require idx < mem[96]
        _398 = mem[mem[(32 * idx) + 128]]
        require idx < mem[96]
        _406 = mem[mem[(32 * idx) + 128] + 32]
        _407 = mem[64]
        _415 = mem[mem[mem[(32 * idx) + 128] + 32]]
        s = 0
        while s < _415:
            mem[s + _407] = mem[s + _406 + 32]
            _381 = mem[96]
            s = s + 32
            continue 
        if ceil32(_415) <= _415:
            call address(_398).mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _415 + _407 + -mem[64] - 4]
            if not return_data.size:
                require idx < mem[_279]
                require idx < mem[_131]
                mem[(32 * idx) + _131 + 32] = 96
            else:
                _500 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_500] = return_data.size
                mem[_500 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                require idx < mem[_279]
                require idx < mem[_131]
                mem[(32 * idx) + _131 + 32] = _500
        else:
            mem[_407 + _415] = 0
            call address(_398).mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _415 + _407 + -mem[64] - 4]
            if not return_data.size:
                require idx < mem[_279]
                require idx < mem[_131]
                mem[(32 * idx) + _131 + 32] = 96
            else:
                _509 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_509] = return_data.size
                mem[_509 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                require idx < mem[_279]
                require idx < mem[_131]
                mem[(32 * idx) + _131 + 32] = _509
        mem[(32 * idx) + _279 + 32] = bool(ext_call.success)
        _381 = mem[96]
        idx = idx + 1
        continue 
    _396 = mem[64]
    mem[mem[64]] = 64
    _404 = mem[_131]
    mem[mem[64] + 64] = mem[_131]
    idx = 0
    s = _131 + 32
    t = mem[64] + (32 * _404) + 96
    u = mem[64] + 96
    while idx < _404:
        mem[u] = t + -_396 - 96
        _485 = mem[s]
        _486 = mem[mem[s]]
        mem[t] = mem[mem[s]]
        v = 0
        while v < _486:
            mem[v + t + 32] = mem[v + _485 + 32]
            v = v + 32
            continue 
        if ceil32(_486) > _486:
            mem[t + _486 + 32] = 0
        idx = idx + 1
        s = s + 32
        t = ceil32(_486) + t + 32
        u = u + 32
        continue 
    mem[_396 + 32] = t - _396
    _489 = mem[_279]
    mem[t] = mem[_279]
    idx = 0
    s = _279 + 32
    u = t + 32
    while idx < _489:
        mem[u] = bool(mem[s])
        idx = idx + 1
        s = s + 32
        u = u + 32
        continue 
    return memory
      from mem[64]
       len t + (32 * _489) + -mem[64] + 32
}



}
