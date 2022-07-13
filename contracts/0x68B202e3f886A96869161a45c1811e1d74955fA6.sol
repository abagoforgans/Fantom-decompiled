contract main {




// =====================  Runtime code  =====================


#
#  - getAmountsIn(address arg1, uint256 arg2, uint256 arg3, address[] arg4)
#
function _fallback() payable {
    revert
}

function getReservesOfPairs(address[] arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    if arg1.length and 2 > -1 / arg1.length:
        revert with 'NH{q', 17
    if 2 * arg1.length > test266151307():
        revert with 'NH{q', 65
    mem[96] = 2 * arg1.length
    mem[64] = (64 * arg1.length) + 128
    if not uint255(arg1.length):
        idx = 0
        s = 0
        while idx < arg1.length:
            require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
            staticcall address(cd[((32 * idx) + arg1 + 36)]).getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _36 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _38 = mem[_36]
            require mem[_36] == mem[_36 + 18 len 14]
            require mem[_36 + 32] == mem[_36 + 50 len 14]
            require mem[_36 + 64] == mem[_36 + 92 len 4]
            if s == -1:
                revert with 'NH{q', 17
            if s >= mem[96]:
                revert with 'NH{q', 50
            if s + 1 == -1:
                revert with 'NH{q', 17
            if s + 1 >= mem[96]:
                revert with 'NH{q', 50
            mem[(32 * s + 1) + 128] = mem[_36 + 50 len 14]
            mem[(32 * s) + 128] = Mask(112, 0, _38)
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s + 2
            continue 
        _26 = mem[64]
        mem[mem[64]] = 96
        _28 = mem[96]
        mem[mem[64] + 96] = mem[96]
        mem[mem[64] + 128 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
        mem[_26 + 32] = block.number
        mem[_26 + 64] = block.timestamp
        return memory
          from mem[64]
           len _26 + (32 * _28) + -mem[64] + 128
    mem[128 len 64 * arg1.length] = call.data[calldata.size len 64 * arg1.length]
    idx = 0
    s = 0
    while idx < arg1.length:
        require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
        staticcall address(cd[((32 * idx) + arg1 + 36)]).getReserves() with:
                gas gas_remaining wei
        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _37 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 96
        _39 = mem[_37]
        require mem[_37] == mem[_37 + 18 len 14]
        require mem[_37 + 32] == mem[_37 + 50 len 14]
        require mem[_37 + 64] == mem[_37 + 92 len 4]
        if s == -1:
            revert with 'NH{q', 17
        if s >= mem[96]:
            revert with 'NH{q', 50
        if s + 1 == -1:
            revert with 'NH{q', 17
        if s + 1 >= mem[96]:
            revert with 'NH{q', 50
        mem[(32 * s + 1) + 128] = mem[_37 + 50 len 14]
        mem[(32 * s) + 128] = Mask(112, 0, _39)
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = s + 2
        continue 
    _27 = mem[64]
    mem[mem[64]] = 96
    _29 = mem[96]
    mem[mem[64] + 96] = mem[96]
    mem[mem[64] + 128 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
    mem[mem[64] + 32] = block.number
    mem[_27 + 64] = block.timestamp
    return memory
      from mem[64]
       len _27 + (32 * _29) + -mem[64] + 128
}

function getAmountsOut(address arg1, uint256 arg2, uint256 arg3, address[] arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + (32 * arg4.length) + 36 <= calldata.size
    mem[96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[100] = arg2
    mem[132] = 64
    mem[164] = arg4.length
    idx = 0
    s = arg4 + 36
    t = 196
    while idx < arg4.length:
        require cd[s] == address(cd[s])
        mem[t] = address(cd[s])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(arg1)
    staticcall arg1.getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args arg2, Array(len=arg4.length, data=mem[196 len 32 * arg4.length])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _122 = mem[96 len 4], Mask(224, 32, arg2) >> 32
    require mem[96 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
    require mem[96 len 4], Mask(224, 32, arg2) >> 32 + 127 < return_data.size + 96
    _123 = mem[mem[96 len 4], Mask(224, 32, arg2) >> 32 + 96]
    if mem[mem[96 len 4], Mask(224, 32, arg2) >> 32 + 96] > test266151307():
        revert with 'NH{q', 65
    if ceil32(return_data.size) + floor32(mem[mem[96 len 4], Mask(224, 32, arg2) >> 32 + 96]) + 97 > test266151307() or floor32(mem[mem[96 len 4], Mask(224, 32, arg2) >> 32 + 96]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = ceil32(return_data.size) + floor32(mem[mem[96 len 4], Mask(224, 32, arg2) >> 32 + 96]) + 97
    mem[ceil32(return_data.size) + 96] = _123
    require _122 + (32 * _123) + 32 <= return_data.size
    idx = 0
    s = _122 + 128
    t = ceil32(return_data.size) + 128
    while idx < _123:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if _123 < 1:
        revert with 'NH{q', 17
    if _123 - 1 >= _123:
        revert with 'NH{q', 50
    if mem[(32 * _123 - 1) + ceil32(return_data.size) + 128] < arg3:
        mem[mem[64]] = 160
        mem[mem[64] + 160] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 192
        while idx < mem[96]:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[mem[64] + 32] = (32 * mem[96]) + 192
        _540 = mem[ceil32(return_data.size) + 96]
        mem[mem[64] + (32 * mem[96]) + 192] = mem[ceil32(return_data.size) + 96]
        mem[mem[64] + (32 * mem[96]) + 224 len 32 * _540] = mem[ceil32(return_data.size) + 128 len 32 * _540]
        mem[mem[64] + 64] = (32 * mem[96]) + (32 * _540) + 224
        mem[mem[64] + (32 * mem[96]) + (32 * _540) + 224] = mem[96]
        mem[mem[64] + (32 * mem[96]) + (32 * _540) + 256 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
        var127007 = mem[64] + (64 * mem[96]) + (32 * _540) + 256
        mem[mem[64] + 96] = block.number
        mem[mem[64] + 128] = block.timestamp
        return memory
          from mem[64]
           len var127007 - mem[64]
    if arg4.length < 1:
        revert with 'NH{q', 17
    if arg4.length - 1 > test266151307():
        revert with 'NH{q', 65
    _330 = mem[64]
    mem[mem[64]] = arg4.length - 1
    if not arg4.length - 1:
        if arg4.length < 1:
            revert with 'NH{q', 17
        if arg4.length - 1 and 2 > -1 / arg4.length - 1:
            revert with 'NH{q', 17
        if 2 * arg4.length - 1 > test266151307():
            revert with 'NH{q', 65
        _335 = mem[64] + (32 * arg4.length - 1) + 32
        mem[mem[64] + (32 * arg4.length - 1) + 32] = 2 * arg4.length - 1
        if not uint255(arg4.length - 1):
            require ext_code.size(arg1)
            staticcall arg1.factory() with:
                    gas gas_remaining wei
            mem[_335 + (64 * arg4.length - 1) + 32] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = _335 + (64 * arg4.length - 1) + ceil32(return_data.size) + 32
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            if arg4.length < 1:
                revert with 'NH{q', 17
            if var268002 < arg4.length - 1:
                if var270001 >= arg4.length:
                    revert with 'NH{q', 50
                require cd[((32 * var270001) + arg4 + 36)] == address(cd[((32 * var270001) + arg4 + 36)])
                s = var270001
                idx = var270001
                t = var270003
                u = var270004
                while idx <= -2:
                    if idx + 1 >= arg4.length:
                        revert with 'NH{q', 50
                    require cd[((32 * idx + 1) + arg4 + 36)] == address(cd[((32 * idx + 1) + arg4 + 36)])
                    mem[mem[64] + 4] = address(cd[((32 * s) + arg4 + 36)])
                    mem[mem[64] + 36] = address(cd[((32 * idx + 1) + arg4 + 36)])
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                            gas gas_remaining wei
                           args address(cd[((32 * s) + arg4 + 36)]), address(cd[((32 * idx + 1) + arg4 + 36)])
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if address(cd[((32 * s) + arg4 + 36)]) < address(cd[((32 * idx + 1) + arg4 + 36)]):
                        _2615 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2623 = mem[_2615]
                        require mem[_2615] == mem[_2615 + 12 len 20]
                        if not mem[_2615 + 12 len 20]:
                            if u == -1:
                                revert with 'NH{q', 17
                            if u >= mem[_330]:
                                revert with 'NH{q', 50
                            if t == -1:
                                revert with 'NH{q', 17
                            if t >= mem[_335]:
                                revert with 'NH{q', 50
                            if t + 1 == -1:
                                revert with 'NH{q', 17
                            if t + 1 >= mem[_335]:
                                revert with 'NH{q', 50
                            mem[(32 * t + 1) + _335 + 32] = 0
                            mem[(32 * t) + _335 + 32] = 0
                            mem[(32 * u) + _330 + 32] = address(_2623)
                            if idx == -1:
                                revert with 'NH{q', 17
                            if arg4.length < 1:
                                revert with 'NH{q', 17
                            if idx + 1 < arg4.length - 1:
                                require cd[((32 * idx + 2) + arg4 + 36)] == address(cd[((32 * idx + 2) + arg4 + 36)])
                                s = idx + 1
                                idx = idx + 1
                                t = t + 2
                                u = u + 1
                                continue 
                            _2703 = mem[64]
                            mem[mem[64]] = 160
                            _2727 = mem[_330]
                            mem[mem[64] + 160] = mem[_330]
                            idx = 0
                            t = _330 + 32
                            u = mem[64] + 192
                            while idx < _2727:
                                mem[u] = mem[t + 12 len 20]
                                require cd[((32 * s) + arg4 + 36)] == address(cd[((32 * s) + arg4 + 36)])
                                idx = idx + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            mem[_2703 + 32] = (32 * _2727) + 192
                            _2971 = mem[ceil32(return_data.size) + 96]
                            mem[_2703 + (32 * _2727) + 192] = mem[ceil32(return_data.size) + 96]
                            idx = 0
                            t = ceil32(return_data.size) + 128
                            u = _2703 + (32 * _2727) + 224
                            while idx < _2971:
                                mem[u] = mem[t]
                                require cd[((32 * s) + arg4 + 36)] == address(cd[((32 * s) + arg4 + 36)])
                                idx = idx + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            mem[_2703 + 64] = (32 * _2727) + (32 * _2971) + 224
                            _3119 = mem[_335]
                            mem[_2703 + (32 * _2727) + (32 * _2971) + 224] = mem[_335]
                            idx = 0
                            t = _335 + 32
                            u = _2703 + (32 * _2727) + (32 * _2971) + 256
                            while idx < _3119:
                                mem[u] = mem[t]
                                require cd[((32 * s) + arg4 + 36)] == address(cd[((32 * s) + arg4 + 36)])
                                idx = idx + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            mem[_2703 + 96] = block.number
                            mem[_2703 + 128] = block.timestamp
                            return memory
                              from mem[64]
                               len _2703 + (32 * _2727) + (32 * _2971) + (32 * _3119) + -mem[64] + 256
                        require ext_code.size(mem[_2615 + 12 len 20])
                        staticcall mem[_2615 + 12 len 20].getReserves() with:
                                gas gas_remaining wei
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2647 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        _2655 = mem[_2647]
                        require mem[_2647] == mem[_2647 + 18 len 14]
                        _2672 = mem[_2647 + 32]
                        require mem[_2647 + 32] == mem[_2647 + 50 len 14]
                        require mem[_2647 + 64] == mem[_2647 + 92 len 4]
                        if u == -1:
                            revert with 'NH{q', 17
                        if u >= mem[_330]:
                            revert with 'NH{q', 50
                        if t == -1:
                            revert with 'NH{q', 17
                        if t >= mem[_335]:
                            revert with 'NH{q', 50
                        if t + 1 == -1:
                            revert with 'NH{q', 17
                        if t + 1 >= mem[_335]:
                            revert with 'NH{q', 50
                        if address(cd[((32 * s) + arg4 + 36)]) == address(cd[((32 * s) + arg4 + 36)]):
                            mem[(32 * t + 1) + _335 + 32] = mem[_2647 + 50 len 14]
                            mem[(32 * t) + _335 + 32] = Mask(112, 0, _2655)
                            mem[(32 * u) + _330 + 32] = address(_2623)
                            if idx == -1:
                                revert with 'NH{q', 17
                            if arg4.length < 1:
                                revert with 'NH{q', 17
                            if idx + 1 < arg4.length - 1:
                                require cd[((32 * idx + 2) + arg4 + 36)] == address(cd[((32 * idx + 2) + arg4 + 36)])
                                s = idx + 1
                                idx = idx + 1
                                t = t + 2
                                u = u + 1
                                continue 
                            mem[mem[64]] = 160
                            _2823 = mem[_330]
                            mem[mem[64] + 160] = mem[_330]
                            idx = 0
                            t = _330 + 32
                            u = mem[64] + 192
                            while idx < _2823:
                                mem[u] = mem[t + 12 len 20]
                                require cd[((32 * s) + arg4 + 36)] == address(cd[((32 * s) + arg4 + 36)])
                                idx = idx + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            mem[mem[64] + 32] = (32 * _2823) + 192
                            _2972 = mem[ceil32(return_data.size) + 96]
                            mem[mem[64] + (32 * _2823) + 192] = mem[ceil32(return_data.size) + 96]
                            idx = 0
                            t = ceil32(return_data.size) + 128
                            u = mem[64] + (32 * _2823) + 224
                            while idx < _2972:
                                mem[u] = mem[t]
                                require cd[((32 * s) + arg4 + 36)] == address(cd[((32 * s) + arg4 + 36)])
                                idx = idx + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            mem[mem[64] + 64] = (32 * _2823) + (32 * _2972) + 224
                            _3120 = mem[_335]
                            mem[mem[64] + (32 * _2823) + (32 * _2972) + 224] = mem[_335]
                            idx = 0
                            t = _335 + 32
                            u = mem[64] + (32 * _2823) + (32 * _2972) + 256
                            while idx < _3120:
                                mem[u] = mem[t]
                                require cd[((32 * s) + arg4 + 36)] == address(cd[((32 * s) + arg4 + 36)])
                                idx = idx + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            mem[mem[64] + 96] = block.number
                            return 160, 
                                   (32 * _2823) + 192,
                                   (32 * _2823) + (32 * _2972) + 224,
                                   block.number,
                                   block.timestamp,
                                   mem[mem[64] + 160 len (32 * _2823) + (32 * _2972) + (32 * _3120) + 96]
                        mem[(32 * t + 1) + _335 + 32] = mem[_2647 + 18 len 14]
                        mem[(32 * t) + _335 + 32] = Mask(112, 0, _2672)
                        mem[(32 * u) + _330 + 32] = address(_2623)
                        if idx == -1:
                            revert with 'NH{q', 17
                        if arg4.length < 1:
                            revert with 'NH{q', 17
                        if idx + 1 < arg4.length - 1:
                            require cd[((32 * idx + 2) + arg4 + 36)] == address(cd[((32 * idx + 2) + arg4 + 36)])
                            s = idx + 1
                            idx = idx + 1
                            t = t + 2
                            u = u + 1
                            continue 
                        _2800 = mem[64]
                        mem[mem[64]] = 160
                        _2824 = mem[_330]
                        mem[mem[64] + 160] = mem[_330]
                        idx = 0
                        t = _330 + 32
                        u = mem[64] + 192
                        while idx < _2824:
                            mem[u] = mem[t + 12 len 20]
                            require cd[((32 * s) + arg4 + 36)] == address(cd[((32 * s) + arg4 + 36)])
                            idx = idx + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        mem[_2800 + 32] = (32 * _2824) + 192
                        _2973 = mem[ceil32(return_data.size) + 96]
                        mem[_2800 + (32 * _2824) + 192] = mem[ceil32(return_data.size) + 96]
                        idx = 0
                        t = ceil32(return_data.size) + 128
                        u = _2800 + (32 * _2824) + 224
                        while idx < _2973:
                            mem[u] = mem[t]
                            require cd[((32 * s) + arg4 + 36)] == address(cd[((32 * s) + arg4 + 36)])
                            idx = idx + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        mem[_2800 + 64] = (32 * _2824) + (32 * _2973) + 224
                        _3121 = mem[_335]
                        mem[_2800 + (32 * _2824) + (32 * _2973) + 224] = mem[_335]
                        idx = 0
                        t = _335 + 32
                        u = _2800 + (32 * _2824) + (32 * _2973) + 256
                        while idx < _3121:
                            mem[u] = mem[t]
                            require cd[((32 * s) + arg4 + 36)] == address(cd[((32 * s) + arg4 + 36)])
                            idx = idx + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        mem[_2800 + 96] = block.number
                        mem[_2800 + 128] = block.timestamp
                        return memory
                          from mem[64]
                           len _2800 + (32 * _2824) + (32 * _2973) + (32 * _3121) + -mem[64] + 256
                    _2616 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2624 = mem[_2616]
                    require mem[_2616] == mem[_2616 + 12 len 20]
                    if not mem[_2616 + 12 len 20]:
                        if u == -1:
                            revert with 'NH{q', 17
                        if u >= mem[_330]:
                            revert with 'NH{q', 50
                        if t == -1:
                            revert with 'NH{q', 17
                        if t >= mem[_335]:
                            revert with 'NH{q', 50
                        if t + 1 == -1:
                            revert with 'NH{q', 17
                        if t + 1 >= mem[_335]:
                            revert with 'NH{q', 50
                        mem[(32 * t + 1) + _335 + 32] = 0
                        mem[(32 * t) + _335 + 32] = 0
                        mem[(32 * u) + _330 + 32] = address(_2624)
                        if idx == -1:
                            revert with 'NH{q', 17
                        if arg4.length < 1:
                            revert with 'NH{q', 17
                        if idx + 1 < arg4.length - 1:
                            require cd[((32 * idx + 2) + arg4 + 36)] == address(cd[((32 * idx + 2) + arg4 + 36)])
                            s = idx + 1
                            idx = idx + 1
                            t = t + 2
                            u = u + 1
                            continue 
                        _2706 = mem[64]
                        mem[mem[64]] = 160
                        _2728 = mem[_330]
                        mem[mem[64] + 160] = mem[_330]
                        idx = 0
                        t = _330 + 32
                        u = mem[64] + 192
                        while idx < _2728:
                            mem[u] = mem[t + 12 len 20]
                            require cd[((32 * s) + arg4 + 36)] == address(cd[((32 * s) + arg4 + 36)])
                            idx = idx + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        mem[mem[64] + 32] = (32 * _2728) + 192
                        _2974 = mem[ceil32(return_data.size) + 96]
                        mem[mem[64] + (32 * _2728) + 192] = mem[ceil32(return_data.size) + 96]
                        idx = 0
                        t = ceil32(return_data.size) + 128
                        u = mem[64] + (32 * _2728) + 224
                        while idx < _2974:
                            mem[u] = mem[t]
                            require cd[((32 * s) + arg4 + 36)] == address(cd[((32 * s) + arg4 + 36)])
                            idx = idx + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        mem[mem[64] + 64] = (32 * _2728) + (32 * _2974) + 224
                        _3122 = mem[_335]
                        mem[mem[64] + (32 * _2728) + (32 * _2974) + 224] = mem[_335]
                        idx = 0
                        t = _335 + 32
                        u = mem[64] + (32 * _2728) + (32 * _2974) + 256
                        while idx < _3122:
                            mem[u] = mem[t]
                            require cd[((32 * s) + arg4 + 36)] == address(cd[((32 * s) + arg4 + 36)])
                            idx = idx + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        mem[_2706 + 96] = block.number
                        mem[_2706 + 128] = block.timestamp
                        return memory
                          from mem[64]
                           len _2706 + (32 * _2728) + (32 * _2974) + (32 * _3122) + -mem[64] + 256
                    require ext_code.size(mem[_2616 + 12 len 20])
                    staticcall mem[_2616 + 12 len 20].getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2648 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _2656 = mem[_2648]
                    require mem[_2648] == mem[_2648 + 18 len 14]
                    _2674 = mem[_2648 + 32]
                    require mem[_2648 + 32] == mem[_2648 + 50 len 14]
                    require mem[_2648 + 64] == mem[_2648 + 92 len 4]
                    if u == -1:
                        revert with 'NH{q', 17
                    if u >= mem[_330]:
                        revert with 'NH{q', 50
                    if t == -1:
                        revert with 'NH{q', 17
                    if t >= mem[_335]:
                        revert with 'NH{q', 50
                    if t + 1 == -1:
                        revert with 'NH{q', 17
                    if t + 1 >= mem[_335]:
                        revert with 'NH{q', 50
                    if address(cd[((32 * s) + arg4 + 36)]) == address(cd[((32 * idx + 1) + arg4 + 36)]):
                        mem[(32 * t + 1) + _335 + 32] = mem[_2648 + 50 len 14]
                        mem[(32 * t) + _335 + 32] = Mask(112, 0, _2656)
                        mem[(32 * u) + _330 + 32] = address(_2624)
                        if idx == -1:
                            revert with 'NH{q', 17
                        if arg4.length < 1:
                            revert with 'NH{q', 17
                        if idx + 1 < arg4.length - 1:
                            require cd[((32 * idx + 2) + arg4 + 36)] == address(cd[((32 * idx + 2) + arg4 + 36)])
                            s = idx + 1
                            idx = idx + 1
                            t = t + 2
                            u = u + 1
                            continue 
                        _2801 = mem[64]
                        mem[mem[64]] = 160
                        _2825 = mem[_330]
                        mem[mem[64] + 160] = mem[_330]
                        idx = 0
                        t = _330 + 32
                        u = mem[64] + 192
                        while idx < _2825:
                            mem[u] = mem[t + 12 len 20]
                            require cd[((32 * s) + arg4 + 36)] == address(cd[((32 * s) + arg4 + 36)])
                            idx = idx + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        mem[mem[64] + 32] = (32 * _2825) + 192
                        _2975 = mem[ceil32(return_data.size) + 96]
                        mem[mem[64] + (32 * _2825) + 192] = mem[ceil32(return_data.size) + 96]
                        idx = 0
                        t = ceil32(return_data.size) + 128
                        u = mem[64] + (32 * _2825) + 224
                        while idx < _2975:
                            mem[u] = mem[t]
                            require cd[((32 * s) + arg4 + 36)] == address(cd[((32 * s) + arg4 + 36)])
                            idx = idx + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        mem[_2801 + 64] = (32 * _2825) + (32 * _2975) + 224
                        _3123 = mem[_335]
                        mem[_2801 + (32 * _2825) + (32 * _2975) + 224] = mem[_335]
                        idx = 0
                        t = _335 + 32
                        u = _2801 + (32 * _2825) + (32 * _2975) + 256
                        while idx < _3123:
                            mem[u] = mem[t]
                            require cd[((32 * s) + arg4 + 36)] == address(cd[((32 * s) + arg4 + 36)])
                            idx = idx + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        mem[_2801 + 96] = block.number
                        mem[_2801 + 128] = block.timestamp
                        return memory
                          from mem[64]
                           len _2801 + (32 * _2825) + (32 * _2975) + (32 * _3123) + -mem[64] + 256
                    mem[(32 * t + 1) + _335 + 32] = mem[_2648 + 18 len 14]
                    mem[(32 * t) + _335 + 32] = Mask(112, 0, _2674)
                    mem[(32 * u) + _330 + 32] = address(_2624)
                    if idx == -1:
                        revert with 'NH{q', 17
                    if arg4.length < 1:
                        revert with 'NH{q', 17
                    if idx + 1 < arg4.length - 1:
                        require cd[((32 * idx + 2) + arg4 + 36)] == address(cd[((32 * idx + 2) + arg4 + 36)])
                        s = idx + 1
                        idx = idx + 1
                        t = t + 2
                        u = u + 1
                        continue 
                    _2802 = mem[64]
                    mem[mem[64]] = 160
                    _2826 = mem[_330]
                    mem[mem[64] + 160] = mem[_330]
                    idx = 0
                    t = _330 + 32
                    u = mem[64] + 192
                    while idx < _2826:
                        mem[u] = mem[t + 12 len 20]
                        require cd[((32 * s) + arg4 + 36)] == address(cd[((32 * s) + arg4 + 36)])
                        idx = idx + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    mem[_2802 + 32] = (32 * _2826) + 192
                    _2976 = mem[ceil32(return_data.size) + 96]
                    mem[_2802 + (32 * _2826) + 192] = mem[ceil32(return_data.size) + 96]
                    idx = 0
                    t = ceil32(return_data.size) + 128
                    u = _2802 + (32 * _2826) + 224
                    while idx < _2976:
                        mem[u] = mem[t]
                        require cd[((32 * s) + arg4 + 36)] == address(cd[((32 * s) + arg4 + 36)])
                        idx = idx + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    mem[_2802 + 64] = (32 * _2826) + (32 * _2976) + 224
                    _3124 = mem[_335]
                    mem[_2802 + (32 * _2826) + (32 * _2976) + 224] = mem[_335]
                    idx = 0
                    t = _335 + 32
                    u = _2802 + (32 * _2826) + (32 * _2976) + 256
                    while idx < _3124:
                        mem[u] = mem[t]
                        require cd[((32 * s) + arg4 + 36)] == address(cd[((32 * s) + arg4 + 36)])
                        idx = idx + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    mem[_2802 + 96] = block.number
                    mem[_2802 + 128] = block.timestamp
                    return memory
                      from mem[64]
                       len _2802 + (32 * _2826) + (32 * _2976) + (32 * _3124) + -mem[64] + 256
                revert with 'NH{q', 17
            mem[_335 + (64 * arg4.length - 1) + ceil32(return_data.size) + 32] = 160
            _1843 = mem[_330]
            mem[_335 + (64 * arg4.length - 1) + ceil32(return_data.size) + 192] = mem[_330]
            idx = 0
            s = _330 + 32
            t = _335 + (64 * arg4.length - 1) + ceil32(return_data.size) + 224
            while idx < _1843:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_335 + (64 * arg4.length - 1) + ceil32(return_data.size) + (32 * _1843) + 256 len 32 * _123] = mem[ceil32(return_data.size) + 128 len 32 * _123]
            mem[_335 + (64 * arg4.length - 1) + ceil32(return_data.size) + (32 * _1843) + (32 * _123) + 256] = mem[_335]
            mem[_335 + (64 * arg4.length - 1) + ceil32(return_data.size) + (32 * _1843) + (32 * _123) + 288 len 32 * mem[_335]] = mem[_335 + 32 len 32 * mem[_335]]
            return Array(len=mem[_335 + (64 * arg4.length - 1) + ceil32(return_data.size) + 192 len (32 * _1843) + 32], data=_123, mem[ceil32(return_data.size) + 128 len 32 * _123], mem[_335 + (64 * arg4.length - 1) + ceil32(return_data.size) + (32 * _1843) + (32 * _123) + 256 len (32 * mem[_335]) + 32]), 
                   (32 * _1843) + 192,
                   (32 * _1843) + (32 * _123) + 224,
                   block.number,
                   block.timestamp
        mem[_335 + 32 len 64 * arg4.length - 1] = call.data[calldata.size len 64 * arg4.length - 1]
        require ext_code.size(arg1)
        staticcall arg1.factory() with:
                gas gas_remaining wei
        mem[_335 + (64 * arg4.length - 1) + 32] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = _335 + (64 * arg4.length - 1) + ceil32(return_data.size) + 32
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if arg4.length < 1:
            revert with 'NH{q', 17
        if var269002 < arg4.length - 1:
            if var271001 >= arg4.length:
                revert with 'NH{q', 50
            require cd[((32 * var271001) + arg4 + 36)] == address(cd[((32 * var271001) + arg4 + 36)])
            s = var271001
            idx = var271001
            t = var271003
            u = var271004
            while idx <= -2:
                if idx + 1 >= arg4.length:
                    revert with 'NH{q', 50
                require cd[((32 * idx + 1) + arg4 + 36)] == address(cd[((32 * idx + 1) + arg4 + 36)])
                mem[mem[64] + 4] = address(cd[((32 * s) + arg4 + 36)])
                mem[mem[64] + 36] = address(cd[((32 * idx + 1) + arg4 + 36)])
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args address(cd[((32 * s) + arg4 + 36)]), address(cd[((32 * idx + 1) + arg4 + 36)])
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if address(cd[((32 * s) + arg4 + 36)]) < address(cd[((32 * idx + 1) + arg4 + 36)]):
                    _2617 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2625 = mem[_2617]
                    require mem[_2617] == mem[_2617 + 12 len 20]
                    if not mem[_2617 + 12 len 20]:
                        if u == -1:
                            revert with 'NH{q', 17
                        if u >= mem[_330]:
                            revert with 'NH{q', 50
                        if t == -1:
                            revert with 'NH{q', 17
                        if t >= mem[_335]:
                            revert with 'NH{q', 50
                        if t + 1 == -1:
                            revert with 'NH{q', 17
                        if t + 1 >= mem[_335]:
                            revert with 'NH{q', 50
                        mem[(32 * t + 1) + _335 + 32] = 0
                        mem[(32 * t) + _335 + 32] = 0
                        mem[(32 * u) + _330 + 32] = address(_2625)
                        if idx == -1:
                            revert with 'NH{q', 17
                        if arg4.length < 1:
                            revert with 'NH{q', 17
                        if idx + 1 < arg4.length - 1:
                            require cd[((32 * idx + 2) + arg4 + 36)] == address(cd[((32 * idx + 2) + arg4 + 36)])
                            s = idx + 1
                            idx = idx + 1
                            t = t + 2
                            u = u + 1
                            continue 
                        _2709 = mem[64]
                        mem[mem[64]] = 160
                        _2729 = mem[_330]
                        mem[mem[64] + 160] = mem[_330]
                        idx = 0
                        t = _330 + 32
                        u = mem[64] + 192
                        while idx < _2729:
                            mem[u] = mem[t + 12 len 20]
                            require cd[((32 * s) + arg4 + 36)] == address(cd[((32 * s) + arg4 + 36)])
                            idx = idx + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        mem[mem[64] + 32] = (32 * _2729) + 192
                        _2977 = mem[ceil32(return_data.size) + 96]
                        mem[mem[64] + (32 * _2729) + 192] = mem[ceil32(return_data.size) + 96]
                        idx = 0
                        t = ceil32(return_data.size) + 128
                        u = mem[64] + (32 * _2729) + 224
                        while idx < _2977:
                            mem[u] = mem[t]
                            require cd[((32 * s) + arg4 + 36)] == address(cd[((32 * s) + arg4 + 36)])
                            idx = idx + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        mem[_2709 + 64] = (32 * _2729) + (32 * _2977) + 224
                        _3125 = mem[_335]
                        mem[_2709 + (32 * _2729) + (32 * _2977) + 224] = mem[_335]
                        idx = 0
                        t = _335 + 32
                        u = _2709 + (32 * _2729) + (32 * _2977) + 256
                        while idx < _3125:
                            mem[u] = mem[t]
                            require cd[((32 * s) + arg4 + 36)] == address(cd[((32 * s) + arg4 + 36)])
                            idx = idx + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        mem[_2709 + 96] = block.number
                        mem[_2709 + 128] = block.timestamp
                        return memory
                          from mem[64]
                           len _2709 + (32 * _2729) + (32 * _2977) + (32 * _3125) + -mem[64] + 256
                    require ext_code.size(mem[_2617 + 12 len 20])
                    staticcall mem[_2617 + 12 len 20].getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2649 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _2657 = mem[_2649]
                    require mem[_2649] == mem[_2649 + 18 len 14]
                    _2676 = mem[_2649 + 32]
                    require mem[_2649 + 32] == mem[_2649 + 50 len 14]
                    require mem[_2649 + 64] == mem[_2649 + 92 len 4]
                    if u == -1:
                        revert with 'NH{q', 17
                    if u >= mem[_330]:
                        revert with 'NH{q', 50
                    if t == -1:
                        revert with 'NH{q', 17
                    if t >= mem[_335]:
                        revert with 'NH{q', 50
                    if t + 1 == -1:
                        revert with 'NH{q', 17
                    if t + 1 >= mem[_335]:
                        revert with 'NH{q', 50
                    if address(cd[((32 * s) + arg4 + 36)]) == address(cd[((32 * s) + arg4 + 36)]):
                        mem[(32 * t + 1) + _335 + 32] = mem[_2649 + 50 len 14]
                        mem[(32 * t) + _335 + 32] = Mask(112, 0, _2657)
                        mem[(32 * u) + _330 + 32] = address(_2625)
                        if idx == -1:
                            revert with 'NH{q', 17
                        if arg4.length < 1:
                            revert with 'NH{q', 17
                        if idx + 1 < arg4.length - 1:
                            require cd[((32 * idx + 2) + arg4 + 36)] == address(cd[((32 * idx + 2) + arg4 + 36)])
                            s = idx + 1
                            idx = idx + 1
                            t = t + 2
                            u = u + 1
                            continue 
                        mem[mem[64]] = 160
                        _2827 = mem[_330]
                        mem[mem[64] + 160] = mem[_330]
                        idx = 0
                        t = _330 + 32
                        u = mem[64] + 192
                        while idx < _2827:
                            mem[u] = mem[t + 12 len 20]
                            require cd[((32 * s) + arg4 + 36)] == address(cd[((32 * s) + arg4 + 36)])
                            idx = idx + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        mem[mem[64] + 32] = (32 * _2827) + 192
                        _2978 = mem[ceil32(return_data.size) + 96]
                        mem[mem[64] + (32 * _2827) + 192] = mem[ceil32(return_data.size) + 96]
                        idx = 0
                        t = ceil32(return_data.size) + 128
                        u = mem[64] + (32 * _2827) + 224
                        while idx < _2978:
                            mem[u] = mem[t]
                            require cd[((32 * s) + arg4 + 36)] == address(cd[((32 * s) + arg4 + 36)])
                            idx = idx + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        mem[mem[64] + 64] = (32 * _2827) + (32 * _2978) + 224
                        _3126 = mem[_335]
                        mem[mem[64] + (32 * _2827) + (32 * _2978) + 224] = mem[_335]
                        idx = 0
                        t = _335 + 32
                        u = mem[64] + (32 * _2827) + (32 * _2978) + 256
                        while idx < _3126:
                            mem[u] = mem[t]
                            require cd[((32 * s) + arg4 + 36)] == address(cd[((32 * s) + arg4 + 36)])
                            idx = idx + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        mem[mem[64] + 96] = block.number
                        return 160, 
                               (32 * _2827) + 192,
                               (32 * _2827) + (32 * _2978) + 224,
                               block.number,
                               block.timestamp,
                               mem[mem[64] + 160 len (32 * _2827) + (32 * _2978) + (32 * _3126) + 96]
                    mem[(32 * t + 1) + _335 + 32] = mem[_2649 + 18 len 14]
                    mem[(32 * t) + _335 + 32] = Mask(112, 0, _2676)
                    mem[(32 * u) + _330 + 32] = address(_2625)
                    if idx == -1:
                        revert with 'NH{q', 17
                    if arg4.length < 1:
                        revert with 'NH{q', 17
                    if idx + 1 < arg4.length - 1:
                        require cd[((32 * idx + 2) + arg4 + 36)] == address(cd[((32 * idx + 2) + arg4 + 36)])
                        s = idx + 1
                        idx = idx + 1
                        t = t + 2
                        u = u + 1
                        continue 
                    _2804 = mem[64]
                    mem[mem[64]] = 160
                    _2828 = mem[_330]
                    mem[mem[64] + 160] = mem[_330]
                    idx = 0
                    t = _330 + 32
                    u = mem[64] + 192
                    while idx < _2828:
                        mem[u] = mem[t + 12 len 20]
                        require cd[((32 * s) + arg4 + 36)] == address(cd[((32 * s) + arg4 + 36)])
                        idx = idx + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    mem[mem[64] + 32] = (32 * _2828) + 192
                    _2979 = mem[ceil32(return_data.size) + 96]
                    mem[mem[64] + (32 * _2828) + 192] = mem[ceil32(return_data.size) + 96]
                    idx = 0
                    t = ceil32(return_data.size) + 128
                    u = mem[64] + (32 * _2828) + 224
                    while idx < _2979:
                        mem[u] = mem[t]
                        require cd[((32 * s) + arg4 + 36)] == address(cd[((32 * s) + arg4 + 36)])
                        idx = idx + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    mem[_2804 + 64] = (32 * _2828) + (32 * _2979) + 224
                    _3127 = mem[_335]
                    mem[_2804 + (32 * _2828) + (32 * _2979) + 224] = mem[_335]
                    idx = 0
                    t = _335 + 32
                    u = _2804 + (32 * _2828) + (32 * _2979) + 256
                    while idx < _3127:
                        mem[u] = mem[t]
                        require cd[((32 * s) + arg4 + 36)] == address(cd[((32 * s) + arg4 + 36)])
                        idx = idx + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    mem[_2804 + 96] = block.number
                    mem[_2804 + 128] = block.timestamp
                    return memory
                      from mem[64]
                       len _2804 + (32 * _2828) + (32 * _2979) + (32 * _3127) + -mem[64] + 256
                _2618 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _2626 = mem[_2618]
                require mem[_2618] == mem[_2618 + 12 len 20]
                if not mem[_2618 + 12 len 20]:
                    if u == -1:
                        revert with 'NH{q', 17
                    if u >= mem[_330]:
                        revert with 'NH{q', 50
                    if t == -1:
                        revert with 'NH{q', 17
                    if t >= mem[_335]:
                        revert with 'NH{q', 50
                    if t + 1 == -1:
                        revert with 'NH{q', 17
                    if t + 1 >= mem[_335]:
                        revert with 'NH{q', 50
                    mem[(32 * t + 1) + _335 + 32] = 0
                    mem[(32 * t) + _335 + 32] = 0
                    mem[(32 * u) + _330 + 32] = address(_2626)
                    if idx == -1:
                        revert with 'NH{q', 17
                    if arg4.length < 1:
                        revert with 'NH{q', 17
                    if idx + 1 < arg4.length - 1:
                        require cd[((32 * idx + 2) + arg4 + 36)] == address(cd[((32 * idx + 2) + arg4 + 36)])
                        s = idx + 1
                        idx = idx + 1
                        t = t + 2
                        u = u + 1
                        continue 
                    _2712 = mem[64]
                    mem[mem[64]] = 160
                    _2730 = mem[_330]
                    mem[mem[64] + 160] = mem[_330]
                    idx = 0
                    t = _330 + 32
                    u = mem[64] + 192
                    while idx < _2730:
                        mem[u] = mem[t + 12 len 20]
                        require cd[((32 * s) + arg4 + 36)] == address(cd[((32 * s) + arg4 + 36)])
                        idx = idx + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    mem[mem[64] + 32] = (32 * _2730) + 192
                    _2980 = mem[ceil32(return_data.size) + 96]
                    mem[mem[64] + (32 * _2730) + 192] = mem[ceil32(return_data.size) + 96]
                    idx = 0
                    t = ceil32(return_data.size) + 128
                    u = mem[64] + (32 * _2730) + 224
                    while idx < _2980:
                        mem[u] = mem[t]
                        require cd[((32 * s) + arg4 + 36)] == address(cd[((32 * s) + arg4 + 36)])
                        idx = idx + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    mem[mem[64] + 64] = (32 * _2730) + (32 * _2980) + 224
                    _3128 = mem[_335]
                    mem[mem[64] + (32 * _2730) + (32 * _2980) + 224] = mem[_335]
                    idx = 0
                    t = _335 + 32
                    u = mem[64] + (32 * _2730) + (32 * _2980) + 256
                    while idx < _3128:
                        mem[u] = mem[t]
                        require cd[((32 * s) + arg4 + 36)] == address(cd[((32 * s) + arg4 + 36)])
                        idx = idx + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    mem[_2712 + 96] = block.number
                    mem[_2712 + 128] = block.timestamp
                    return memory
                      from mem[64]
                       len _2712 + (32 * _2730) + (32 * _2980) + (32 * _3128) + -mem[64] + 256
                require ext_code.size(mem[_2618 + 12 len 20])
                staticcall mem[_2618 + 12 len 20].getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2650 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _2658 = mem[_2650]
                require mem[_2650] == mem[_2650 + 18 len 14]
                _2678 = mem[_2650 + 32]
                require mem[_2650 + 32] == mem[_2650 + 50 len 14]
                require mem[_2650 + 64] == mem[_2650 + 92 len 4]
                if u == -1:
                    revert with 'NH{q', 17
                if u >= mem[_330]:
                    revert with 'NH{q', 50
                if t == -1:
                    revert with 'NH{q', 17
                if t >= mem[_335]:
                    revert with 'NH{q', 50
                if t + 1 == -1:
                    revert with 'NH{q', 17
                if t + 1 >= mem[_335]:
                    revert with 'NH{q', 50
                if address(cd[((32 * s) + arg4 + 36)]) == address(cd[((32 * idx + 1) + arg4 + 36)]):
                    mem[(32 * t + 1) + _335 + 32] = mem[_2650 + 50 len 14]
                    mem[(32 * t) + _335 + 32] = Mask(112, 0, _2658)
                    mem[(32 * u) + _330 + 32] = address(_2626)
                    if idx == -1:
                        revert with 'NH{q', 17
                    if arg4.length < 1:
                        revert with 'NH{q', 17
                    if idx + 1 < arg4.length - 1:
                        require cd[((32 * idx + 2) + arg4 + 36)] == address(cd[((32 * idx + 2) + arg4 + 36)])
                        s = idx + 1
                        idx = idx + 1
                        t = t + 2
                        u = u + 1
                        continue 
                    _2805 = mem[64]
                    mem[mem[64]] = 160
                    _2829 = mem[_330]
                    mem[mem[64] + 160] = mem[_330]
                    idx = 0
                    t = _330 + 32
                    u = mem[64] + 192
                    while idx < _2829:
                        mem[u] = mem[t + 12 len 20]
                        require cd[((32 * s) + arg4 + 36)] == address(cd[((32 * s) + arg4 + 36)])
                        idx = idx + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    mem[_2805 + 32] = (32 * _2829) + 192
                    _2981 = mem[ceil32(return_data.size) + 96]
                    mem[_2805 + (32 * _2829) + 192] = mem[ceil32(return_data.size) + 96]
                    idx = 0
                    t = ceil32(return_data.size) + 128
                    u = _2805 + (32 * _2829) + 224
                    while idx < _2981:
                        mem[u] = mem[t]
                        require cd[((32 * s) + arg4 + 36)] == address(cd[((32 * s) + arg4 + 36)])
                        idx = idx + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    mem[_2805 + 64] = (32 * _2829) + (32 * _2981) + 224
                    _3129 = mem[_335]
                    mem[_2805 + (32 * _2829) + (32 * _2981) + 224] = mem[_335]
                    idx = 0
                    t = _335 + 32
                    u = _2805 + (32 * _2829) + (32 * _2981) + 256
                    while idx < _3129:
                        mem[u] = mem[t]
                        require cd[((32 * s) + arg4 + 36)] == address(cd[((32 * s) + arg4 + 36)])
                        idx = idx + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    mem[_2805 + 96] = block.number
                    mem[_2805 + 128] = block.timestamp
                    return memory
                      from mem[64]
                       len _2805 + (32 * _2829) + (32 * _2981) + (32 * _3129) + -mem[64] + 256
                mem[(32 * t + 1) + _335 + 32] = mem[_2650 + 18 len 14]
                mem[(32 * t) + _335 + 32] = Mask(112, 0, _2678)
                mem[(32 * u) + _330 + 32] = address(_2626)
                if idx == -1:
                    revert with 'NH{q', 17
                if arg4.length < 1:
                    revert with 'NH{q', 17
                if idx + 1 < arg4.length - 1:
                    require cd[((32 * idx + 2) + arg4 + 36)] == address(cd[((32 * idx + 2) + arg4 + 36)])
                    s = idx + 1
                    idx = idx + 1
                    t = t + 2
                    u = u + 1
                    continue 
                _2806 = mem[64]
                mem[mem[64]] = 160
                _2830 = mem[_330]
                mem[mem[64] + 160] = mem[_330]
                idx = 0
                t = _330 + 32
                u = mem[64] + 192
                while idx < _2830:
                    mem[u] = mem[t + 12 len 20]
                    require cd[((32 * s) + arg4 + 36)] == address(cd[((32 * s) + arg4 + 36)])
                    idx = idx + 1
                    t = t + 32
                    u = u + 32
                    continue 
                mem[mem[64] + 32] = (32 * _2830) + 192
                _2982 = mem[ceil32(return_data.size) + 96]
                mem[mem[64] + (32 * _2830) + 192] = mem[ceil32(return_data.size) + 96]
                idx = 0
                t = ceil32(return_data.size) + 128
                u = mem[64] + (32 * _2830) + 224
                while idx < _2982:
                    mem[u] = mem[t]
                    require cd[((32 * s) + arg4 + 36)] == address(cd[((32 * s) + arg4 + 36)])
                    idx = idx + 1
                    t = t + 32
                    u = u + 32
                    continue 
                mem[_2806 + 64] = (32 * _2830) + (32 * _2982) + 224
                _3130 = mem[_335]
                mem[_2806 + (32 * _2830) + (32 * _2982) + 224] = mem[_335]
                idx = 0
                t = _335 + 32
                u = _2806 + (32 * _2830) + (32 * _2982) + 256
                while idx < _3130:
                    mem[u] = mem[t]
                    require cd[((32 * s) + arg4 + 36)] == address(cd[((32 * s) + arg4 + 36)])
                    idx = idx + 1
                    t = t + 32
                    u = u + 32
                    continue 
                mem[_2806 + 96] = block.number
                mem[_2806 + 128] = block.timestamp
                return memory
                  from mem[64]
                   len _2806 + (32 * _2830) + (32 * _2982) + (32 * _3130) + -mem[64] + 256
            revert with 'NH{q', 17
        mem[_335 + (64 * arg4.length - 1) + ceil32(return_data.size) + 32] = 160
        _1844 = mem[_330]
        mem[_335 + (64 * arg4.length - 1) + ceil32(return_data.size) + 192] = mem[_330]
        idx = 0
        s = _330 + 32
        t = _335 + (64 * arg4.length - 1) + ceil32(return_data.size) + 224
        while idx < _1844:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_335 + (64 * arg4.length - 1) + ceil32(return_data.size) + (32 * _1844) + 256 len 32 * _123] = mem[ceil32(return_data.size) + 128 len 32 * _123]
        mem[_335 + (64 * arg4.length - 1) + ceil32(return_data.size) + (32 * _1844) + (32 * _123) + 256] = mem[_335]
        mem[_335 + (64 * arg4.length - 1) + ceil32(return_data.size) + (32 * _1844) + (32 * _123) + 288 len 32 * mem[_335]] = mem[_335 + 32 len 32 * mem[_335]]
        return Array(len=mem[_335 + (64 * arg4.length - 1) + ceil32(return_data.size) + 192 len (32 * _1844) + 32], data=_123, mem[ceil32(return_data.size) + 128 len 32 * _123], mem[_335 + (64 * arg4.length - 1) + ceil32(return_data.size) + (32 * _1844) + (32 * _123) + 256 len (32 * mem[_335]) + 32]), 
               (32 * _1844) + 192,
               (32 * _1844) + (32 * _123) + 224,
               block.number,
               block.timestamp
    mem[mem[64] + 32 len 32 * arg4.length - 1] = call.data[calldata.size len 32 * arg4.length - 1]
    if arg4.length < 1:
        revert with 'NH{q', 17
    if arg4.length - 1 and 2 > -1 / arg4.length - 1:
        revert with 'NH{q', 17
    if 2 * arg4.length - 1 > test266151307():
        revert with 'NH{q', 65
    mem[mem[64] + (32 * arg4.length - 1) + 32] = 2 * arg4.length - 1
    mem[64] = mem[64] + (98 * arg4.length) - 34
    if not uint255(arg4.length - 1):
        mem[_330 + (98 * arg4.length) - 34] = 0xc45a015500000000000000000000000000000000000000000000000000000000
        require ext_code.size(arg1)
        staticcall arg1.factory() with:
                gas gas_remaining wei
               args mem[_330 + (98 * arg4.length) - 30 len (192 * arg4.length) - 192]
        mem[_330 + (98 * arg4.length) - 34] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = _330 + (98 * arg4.length) + ceil32(return_data.size) - 34
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if arg4.length < 1:
            revert with 'NH{q', 17
        if var269002 < arg4.length - 1:
            if var271001 >= arg4.length:
                revert with 'NH{q', 50
            require cd[((32 * var271001) + arg4 + 36)] == address(cd[((32 * var271001) + arg4 + 36)])
            s = var271001
            idx = var271001
            t = var271003
            u = var271004
            while idx <= -2:
                if idx + 1 >= arg4.length:
                    revert with 'NH{q', 50
                require cd[((32 * idx + 1) + arg4 + 36)] == address(cd[((32 * idx + 1) + arg4 + 36)])
                mem[mem[64] + 4] = address(cd[((32 * s) + arg4 + 36)])
                mem[mem[64] + 36] = address(cd[((32 * idx + 1) + arg4 + 36)])
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args address(cd[((32 * s) + arg4 + 36)]), address(cd[((32 * idx + 1) + arg4 + 36)])
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if address(cd[((32 * s) + arg4 + 36)]) < address(cd[((32 * idx + 1) + arg4 + 36)]):
                    _2619 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2627 = mem[_2619]
                    require mem[_2619] == mem[_2619 + 12 len 20]
                    if not mem[_2619 + 12 len 20]:
                        if u == -1:
                            revert with 'NH{q', 17
                        if u >= mem[_330]:
                            revert with 'NH{q', 50
                        if t == -1:
                            revert with 'NH{q', 17
                        if t >= mem[_330 + (32 * arg4.length - 1) + 32]:
                            revert with 'NH{q', 50
                        if t + 1 == -1:
                            revert with 'NH{q', 17
                        if t + 1 >= mem[_330 + (32 * arg4.length - 1) + 32]:
                            revert with 'NH{q', 50
                        mem[(32 * t + 1) + _330 + (32 * arg4.length - 1) + 64] = 0
                        mem[(32 * t) + _330 + (32 * arg4.length - 1) + 64] = 0
                        mem[(32 * u) + _330 + 32] = address(_2627)
                        if idx == -1:
                            revert with 'NH{q', 17
                        if arg4.length < 1:
                            revert with 'NH{q', 17
                        if idx + 1 < arg4.length - 1:
                            require cd[((32 * idx + 2) + arg4 + 36)] == address(cd[((32 * idx + 2) + arg4 + 36)])
                            s = idx + 1
                            idx = idx + 1
                            t = t + 2
                            u = u + 1
                            continue 
                        _2715 = mem[64]
                        mem[mem[64]] = 160
                        _2731 = mem[_330]
                        mem[mem[64] + 160] = mem[_330]
                        idx = 0
                        t = _330 + 32
                        u = mem[64] + 192
                        while idx < _2731:
                            mem[u] = mem[t + 12 len 20]
                            require cd[((32 * s) + arg4 + 36)] == address(cd[((32 * s) + arg4 + 36)])
                            idx = idx + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        mem[_2715 + 32] = (32 * _2731) + 192
                        _2983 = mem[ceil32(return_data.size) + 96]
                        mem[_2715 + (32 * _2731) + 192] = mem[ceil32(return_data.size) + 96]
                        idx = 0
                        t = ceil32(return_data.size) + 128
                        u = _2715 + (32 * _2731) + 224
                        while idx < _2983:
                            mem[u] = mem[t]
                            require cd[((32 * s) + arg4 + 36)] == address(cd[((32 * s) + arg4 + 36)])
                            idx = idx + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        mem[_2715 + 64] = (32 * _2731) + (32 * _2983) + 224
                        _3131 = mem[_330 + (32 * arg4.length - 1) + 32]
                        mem[_2715 + (32 * _2731) + (32 * _2983) + 224] = mem[_330 + (32 * arg4.length - 1) + 32]
                        idx = 0
                        t = _330 + (32 * arg4.length - 1) + 64
                        u = _2715 + (32 * _2731) + (32 * _2983) + 256
                        while idx < _3131:
                            mem[u] = mem[t]
                            require cd[((32 * s) + arg4 + 36)] == address(cd[((32 * s) + arg4 + 36)])
                            idx = idx + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        mem[_2715 + 96] = block.number
                        mem[_2715 + 128] = block.timestamp
                        return memory
                          from mem[64]
                           len _2715 + (32 * _2731) + (32 * _2983) + (32 * _3131) + -mem[64] + 256
                    require ext_code.size(mem[_2619 + 12 len 20])
                    staticcall mem[_2619 + 12 len 20].getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2651 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _2659 = mem[_2651]
                    require mem[_2651] == mem[_2651 + 18 len 14]
                    require mem[_2651 + 32] == mem[_2651 + 50 len 14]
                    require mem[_2651 + 64] == mem[_2651 + 92 len 4]
                    if u == -1:
                        revert with 'NH{q', 17
                    if u >= mem[_330]:
                        revert with 'NH{q', 50
                    if t == -1:
                        revert with 'NH{q', 17
                    if t >= mem[_330 + (32 * arg4.length - 1) + 32]:
                        revert with 'NH{q', 50
                    if t + 1 == -1:
                        revert with 'NH{q', 17
                    if t + 1 >= mem[_330 + (32 * arg4.length - 1) + 32]:
                        revert with 'NH{q', 50
                    if address(cd[((32 * s) + arg4 + 36)]) == address(cd[((32 * s) + arg4 + 36)]):
                        mem[(32 * t + 1) + _330 + (32 * arg4.length - 1) + 64] = mem[_2651 + 50 len 14]
                        mem[(32 * t) + _330 + (32 * arg4.length - 1) + 64] = Mask(112, 0, _2659)
                        mem[(32 * u) + _330 + 32] = address(_2627)
                        if idx == -1:
                            revert with 'NH{q', 17
                        if arg4.length < 1:
                            revert with 'NH{q', 17
                        if idx + 1 < arg4.length - 1:
                            require cd[((32 * idx + 2) + arg4 + 36)] == address(cd[((32 * idx + 2) + arg4 + 36)])
                            s = idx + 1
                            idx = idx + 1
                            t = t + 2
                            u = u + 1
                            continue 
                        mem[mem[64]] = 160
                        _2831 = mem[_330]
                        mem[mem[64] + 160] = mem[_330]
                        idx = 0
                        t = _330 + 32
                        u = mem[64] + 192
                        while idx < _2831:
                            mem[u] = mem[t + 12 len 20]
                            require cd[((32 * s) + arg4 + 36)] == address(cd[((32 * s) + arg4 + 36)])
                            idx = idx + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        mem[mem[64] + 32] = (32 * _2831) + 192
                        _2984 = mem[ceil32(return_data.size) + 96]
                        mem[mem[64] + (32 * _2831) + 192] = mem[ceil32(return_data.size) + 96]
                        idx = 0
                        t = ceil32(return_data.size) + 128
                        u = mem[64] + (32 * _2831) + 224
                        while idx < _2984:
                            mem[u] = mem[t]
                            require cd[((32 * s) + arg4 + 36)] == address(cd[((32 * s) + arg4 + 36)])
                            idx = idx + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        mem[mem[64] + 64] = (32 * _2831) + (32 * _2984) + 224
                        _3132 = mem[_330 + (32 * arg4.length - 1) + 32]
                        mem[mem[64] + (32 * _2831) + (32 * _2984) + 224] = mem[_330 + (32 * arg4.length - 1) + 32]
                        idx = 0
                        t = _330 + (32 * arg4.length - 1) + 64
                        u = mem[64] + (32 * _2831) + (32 * _2984) + 256
                        while idx < _3132:
                            mem[u] = mem[t]
                            require cd[((32 * s) + arg4 + 36)] == address(cd[((32 * s) + arg4 + 36)])
                            idx = idx + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        mem[mem[64] + 96] = block.number
                        return 160, 
                               (32 * _2831) + 192,
                               (32 * _2831) + (32 * _2984) + 224,
                               block.number,
                               block.timestamp,
                               mem[mem[64] + 160 len (32 * _2831) + (32 * _2984) + (32 * _3132) + 96]
                    mem[(32 * t + 1) + _330 + (32 * arg4.length - 1) + 64] = mem[_2651 + 18 len 14]
                    mem[(32 * t) + _330 + (32 * arg4.length - 1) + 64] = mem[_2651 + 50 len 14]
                    mem[(32 * u) + _330 + 32] = address(_2627)
                    if idx == -1:
                        revert with 'NH{q', 17
                    if arg4.length < 1:
                        revert with 'NH{q', 17
                    if idx + 1 < arg4.length - 1:
                        require cd[((32 * idx + 2) + arg4 + 36)] == address(cd[((32 * idx + 2) + arg4 + 36)])
                        s = idx + 1
                        idx = idx + 1
                        t = t + 2
                        u = u + 1
                        continue 
                    _2808 = mem[64]
                    mem[mem[64]] = 160
                    _2832 = mem[_330]
                    mem[mem[64] + 160] = mem[_330]
                    idx = 0
                    t = _330 + 32
                    u = mem[64] + 192
                    while idx < _2832:
                        mem[u] = mem[t + 12 len 20]
                        require cd[((32 * s) + arg4 + 36)] == address(cd[((32 * s) + arg4 + 36)])
                        idx = idx + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    mem[mem[64] + 32] = (32 * _2832) + 192
                    _2985 = mem[ceil32(return_data.size) + 96]
                    mem[mem[64] + (32 * _2832) + 192] = mem[ceil32(return_data.size) + 96]
                    idx = 0
                    t = ceil32(return_data.size) + 128
                    u = mem[64] + (32 * _2832) + 224
                    while idx < _2985:
                        mem[u] = mem[t]
                        require cd[((32 * s) + arg4 + 36)] == address(cd[((32 * s) + arg4 + 36)])
                        idx = idx + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    mem[mem[64] + 64] = (32 * _2832) + (32 * _2985) + 224
                    _3133 = mem[_330 + (32 * arg4.length - 1) + 32]
                    mem[mem[64] + (32 * _2832) + (32 * _2985) + 224] = mem[_330 + (32 * arg4.length - 1) + 32]
                    idx = 0
                    t = _330 + (32 * arg4.length - 1) + 64
                    u = mem[64] + (32 * _2832) + (32 * _2985) + 256
                    while idx < _3133:
                        mem[u] = mem[t]
                        require cd[((32 * s) + arg4 + 36)] == address(cd[((32 * s) + arg4 + 36)])
                        idx = idx + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    mem[_2808 + 96] = block.number
                    mem[_2808 + 128] = block.timestamp
                    return memory
                      from mem[64]
                       len _2808 + (32 * _2832) + (32 * _2985) + (32 * _3133) + -mem[64] + 256
                _2620 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _2628 = mem[_2620]
                require mem[_2620] == mem[_2620 + 12 len 20]
                if not mem[_2620 + 12 len 20]:
                    if u == -1:
                        revert with 'NH{q', 17
                    if u >= mem[_330]:
                        revert with 'NH{q', 50
                    if t == -1:
                        revert with 'NH{q', 17
                    if t >= mem[_330 + (32 * arg4.length - 1) + 32]:
                        revert with 'NH{q', 50
                    if t + 1 == -1:
                        revert with 'NH{q', 17
                    if t + 1 >= mem[_330 + (32 * arg4.length - 1) + 32]:
                        revert with 'NH{q', 50
                    mem[(32 * t + 1) + _330 + (32 * arg4.length - 1) + 64] = 0
                    mem[(32 * t) + _330 + (32 * arg4.length - 1) + 64] = 0
                    mem[(32 * u) + _330 + 32] = address(_2628)
                    if idx == -1:
                        revert with 'NH{q', 17
                    if arg4.length < 1:
                        revert with 'NH{q', 17
                    if idx + 1 < arg4.length - 1:
                        require cd[((32 * idx + 2) + arg4 + 36)] == address(cd[((32 * idx + 2) + arg4 + 36)])
                        s = idx + 1
                        idx = idx + 1
                        t = t + 2
                        u = u + 1
                        continue 
                    _2718 = mem[64]
                    mem[mem[64]] = 160
                    _2732 = mem[_330]
                    mem[mem[64] + 160] = mem[_330]
                    idx = 0
                    t = _330 + 32
                    u = mem[64] + 192
                    while idx < _2732:
                        mem[u] = mem[t + 12 len 20]
                        require cd[((32 * s) + arg4 + 36)] == address(cd[((32 * s) + arg4 + 36)])
                        idx = idx + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    mem[mem[64] + 32] = (32 * _2732) + 192
                    _2986 = mem[ceil32(return_data.size) + 96]
                    mem[mem[64] + (32 * _2732) + 192] = mem[ceil32(return_data.size) + 96]
                    idx = 0
                    t = ceil32(return_data.size) + 128
                    u = mem[64] + (32 * _2732) + 224
                    while idx < _2986:
                        mem[u] = mem[t]
                        require cd[((32 * s) + arg4 + 36)] == address(cd[((32 * s) + arg4 + 36)])
                        idx = idx + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    mem[_2718 + 64] = (32 * _2732) + (32 * _2986) + 224
                    _3134 = mem[_330 + (32 * arg4.length - 1) + 32]
                    mem[_2718 + (32 * _2732) + (32 * _2986) + 224] = mem[_330 + (32 * arg4.length - 1) + 32]
                    idx = 0
                    t = _330 + (32 * arg4.length - 1) + 64
                    u = _2718 + (32 * _2732) + (32 * _2986) + 256
                    while idx < _3134:
                        mem[u] = mem[t]
                        require cd[((32 * s) + arg4 + 36)] == address(cd[((32 * s) + arg4 + 36)])
                        idx = idx + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    mem[_2718 + 96] = block.number
                    mem[_2718 + 128] = block.timestamp
                    return memory
                      from mem[64]
                       len _2718 + (32 * _2732) + (32 * _2986) + (32 * _3134) + -mem[64] + 256
                require ext_code.size(mem[_2620 + 12 len 20])
                staticcall mem[_2620 + 12 len 20].getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2652 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _2660 = mem[_2652]
                require mem[_2652] == mem[_2652 + 18 len 14]
                require mem[_2652 + 32] == mem[_2652 + 50 len 14]
                require mem[_2652 + 64] == mem[_2652 + 92 len 4]
                if u == -1:
                    revert with 'NH{q', 17
                if u >= mem[_330]:
                    revert with 'NH{q', 50
                if t == -1:
                    revert with 'NH{q', 17
                if t >= mem[_330 + (32 * arg4.length - 1) + 32]:
                    revert with 'NH{q', 50
                if t + 1 == -1:
                    revert with 'NH{q', 17
                if t + 1 >= mem[_330 + (32 * arg4.length - 1) + 32]:
                    revert with 'NH{q', 50
                if address(cd[((32 * s) + arg4 + 36)]) == address(cd[((32 * idx + 1) + arg4 + 36)]):
                    mem[(32 * t + 1) + _330 + (32 * arg4.length - 1) + 64] = mem[_2652 + 50 len 14]
                    mem[(32 * t) + _330 + (32 * arg4.length - 1) + 64] = Mask(112, 0, _2660)
                    mem[(32 * u) + _330 + 32] = address(_2628)
                    if idx == -1:
                        revert with 'NH{q', 17
                    if arg4.length < 1:
                        revert with 'NH{q', 17
                    if idx + 1 < arg4.length - 1:
                        require cd[((32 * idx + 2) + arg4 + 36)] == address(cd[((32 * idx + 2) + arg4 + 36)])
                        s = idx + 1
                        idx = idx + 1
                        t = t + 2
                        u = u + 1
                        continue 
                    _2809 = mem[64]
                    mem[mem[64]] = 160
                    _2833 = mem[_330]
                    mem[mem[64] + 160] = mem[_330]
                    idx = 0
                    t = _330 + 32
                    u = mem[64] + 192
                    while idx < _2833:
                        mem[u] = mem[t + 12 len 20]
                        require cd[((32 * s) + arg4 + 36)] == address(cd[((32 * s) + arg4 + 36)])
                        idx = idx + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    mem[mem[64] + 32] = (32 * _2833) + 192
                    _2987 = mem[ceil32(return_data.size) + 96]
                    mem[mem[64] + (32 * _2833) + 192] = mem[ceil32(return_data.size) + 96]
                    idx = 0
                    t = ceil32(return_data.size) + 128
                    u = mem[64] + (32 * _2833) + 224
                    while idx < _2987:
                        mem[u] = mem[t]
                        require cd[((32 * s) + arg4 + 36)] == address(cd[((32 * s) + arg4 + 36)])
                        idx = idx + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    mem[_2809 + 64] = (32 * _2833) + (32 * _2987) + 224
                    _3135 = mem[_330 + (32 * arg4.length - 1) + 32]
                    mem[_2809 + (32 * _2833) + (32 * _2987) + 224] = mem[_330 + (32 * arg4.length - 1) + 32]
                    idx = 0
                    t = _330 + (32 * arg4.length - 1) + 64
                    u = _2809 + (32 * _2833) + (32 * _2987) + 256
                    while idx < _3135:
                        mem[u] = mem[t]
                        require cd[((32 * s) + arg4 + 36)] == address(cd[((32 * s) + arg4 + 36)])
                        idx = idx + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    mem[_2809 + 96] = block.number
                    mem[_2809 + 128] = block.timestamp
                    return memory
                      from mem[64]
                       len _2809 + (32 * _2833) + (32 * _2987) + (32 * _3135) + -mem[64] + 256
                mem[(32 * t + 1) + _330 + (32 * arg4.length - 1) + 64] = mem[_2652 + 18 len 14]
                mem[(32 * t) + _330 + (32 * arg4.length - 1) + 64] = mem[_2652 + 50 len 14]
                mem[(32 * u) + _330 + 32] = address(_2628)
                if idx == -1:
                    revert with 'NH{q', 17
                if arg4.length < 1:
                    revert with 'NH{q', 17
                if idx + 1 < arg4.length - 1:
                    require cd[((32 * idx + 2) + arg4 + 36)] == address(cd[((32 * idx + 2) + arg4 + 36)])
                    s = idx + 1
                    idx = idx + 1
                    t = t + 2
                    u = u + 1
                    continue 
                _2810 = mem[64]
                mem[mem[64]] = 160
                _2834 = mem[_330]
                mem[mem[64] + 160] = mem[_330]
                idx = 0
                t = _330 + 32
                u = mem[64] + 192
                while idx < _2834:
                    mem[u] = mem[t + 12 len 20]
                    require cd[((32 * s) + arg4 + 36)] == address(cd[((32 * s) + arg4 + 36)])
                    idx = idx + 1
                    t = t + 32
                    u = u + 32
                    continue 
                mem[mem[64] + 32] = (32 * _2834) + 192
                _2988 = mem[ceil32(return_data.size) + 96]
                mem[mem[64] + (32 * _2834) + 192] = mem[ceil32(return_data.size) + 96]
                idx = 0
                t = ceil32(return_data.size) + 128
                u = mem[64] + (32 * _2834) + 224
                while idx < _2988:
                    mem[u] = mem[t]
                    require cd[((32 * s) + arg4 + 36)] == address(cd[((32 * s) + arg4 + 36)])
                    idx = idx + 1
                    t = t + 32
                    u = u + 32
                    continue 
                mem[mem[64] + 64] = (32 * _2834) + (32 * _2988) + 224
                _3136 = mem[_330 + (32 * arg4.length - 1) + 32]
                mem[mem[64] + (32 * _2834) + (32 * _2988) + 224] = mem[_330 + (32 * arg4.length - 1) + 32]
                idx = 0
                t = _330 + (32 * arg4.length - 1) + 64
                u = mem[64] + (32 * _2834) + (32 * _2988) + 256
                while idx < _3136:
                    mem[u] = mem[t]
                    require cd[((32 * s) + arg4 + 36)] == address(cd[((32 * s) + arg4 + 36)])
                    idx = idx + 1
                    t = t + 32
                    u = u + 32
                    continue 
                mem[_2810 + 96] = block.number
                mem[_2810 + 128] = block.timestamp
                return memory
                  from mem[64]
                   len _2810 + (32 * _2834) + (32 * _2988) + (32 * _3136) + -mem[64] + 256
            revert with 'NH{q', 17
        mem[_330 + (98 * arg4.length) + ceil32(return_data.size) - 34] = 160
        _1845 = mem[_330]
        mem[_330 + (98 * arg4.length) + ceil32(return_data.size) + 126] = mem[_330]
        idx = 0
        s = _330 + 32
        t = _330 + (98 * arg4.length) + ceil32(return_data.size) + 158
        while idx < mem[_330]:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_330 + (98 * arg4.length) + ceil32(return_data.size) - 2] = (32 * mem[_330]) + 192
        mem[_330 + (98 * arg4.length) + ceil32(return_data.size) + (32 * _1845) + 158] = _123
        mem[_330 + (98 * arg4.length) + ceil32(return_data.size) + (32 * _1845) + 190 len 32 * _123] = mem[ceil32(return_data.size) + 128 len 32 * _123]
        mem[_330 + (98 * arg4.length) + ceil32(return_data.size) + 30] = (32 * _1845) + (32 * _123) + 224
        _2589 = mem[_330 + (32 * arg4.length - 1) + 32]
        mem[_330 + (98 * arg4.length) + ceil32(return_data.size) + (32 * _1845) + (32 * _123) + 190] = mem[_330 + (32 * arg4.length - 1) + 32]
        mem[_330 + (98 * arg4.length) + ceil32(return_data.size) + (32 * _1845) + (32 * _123) + 222 len 32 * _2589] = mem[_330 + (32 * arg4.length - 1) + 64 len 32 * _2589]
        return Array(len=mem[_330 + (98 * arg4.length) + ceil32(return_data.size) + 126 len (32 * _1845) + 32], data=_123, mem[_330 + (98 * arg4.length) + ceil32(return_data.size) + (32 * _1845) + 190 len (32 * _123) + (32 * _2589) + 32]), 
               mem[_330 + (98 * arg4.length) + ceil32(return_data.size) - 2],
               (32 * _1845) + (32 * _123) + 224,
               block.number,
               block.timestamp
    mem[_330 + (32 * arg4.length - 1) + 64 len 64 * arg4.length - 1] = call.data[calldata.size len 64 * arg4.length - 1]
    mem[_330 + (98 * arg4.length) - 34] = 0xc45a015500000000000000000000000000000000000000000000000000000000
    require ext_code.size(arg1)
    staticcall arg1.factory() with:
            gas gas_remaining wei
           args mem[_330 + (98 * arg4.length) - 30 len (192 * arg4.length) - 192]
    mem[_330 + (98 * arg4.length) - 34] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = _330 + (98 * arg4.length) + ceil32(return_data.size) - 34
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if arg4.length < 1:
        revert with 'NH{q', 17
    if var270002 < arg4.length - 1:
        if var272001 >= arg4.length:
            revert with 'NH{q', 50
        require cd[((32 * var272001) + arg4 + 36)] == address(cd[((32 * var272001) + arg4 + 36)])
        s = var272001
        idx = var272001
        t = var272003
        u = var272004
        while idx <= -2:
            if idx + 1 >= arg4.length:
                revert with 'NH{q', 50
            require cd[((32 * idx + 1) + arg4 + 36)] == address(cd[((32 * idx + 1) + arg4 + 36)])
            mem[mem[64] + 4] = address(cd[((32 * s) + arg4 + 36)])
            mem[mem[64] + 36] = address(cd[((32 * idx + 1) + arg4 + 36)])
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args address(cd[((32 * s) + arg4 + 36)]), address(cd[((32 * idx + 1) + arg4 + 36)])
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if address(cd[((32 * s) + arg4 + 36)]) >= address(cd[((32 * idx + 1) + arg4 + 36)]):
                _2622 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _2630 = mem[_2622]
                require mem[_2622] == mem[_2622 + 12 len 20]
                if not mem[_2622 + 12 len 20]:
                    if u == -1:
                        revert with 'NH{q', 17
                    if u >= mem[_330]:
                        revert with 'NH{q', 50
                    if t == -1:
                        revert with 'NH{q', 17
                    if t >= mem[_330 + (32 * arg4.length - 1) + 32]:
                        revert with 'NH{q', 50
                    if t + 1 == -1:
                        revert with 'NH{q', 17
                    if t + 1 >= mem[_330 + (32 * arg4.length - 1) + 32]:
                        revert with 'NH{q', 50
                    mem[(32 * t + 1) + _330 + (32 * arg4.length - 1) + 64] = 0
                    mem[(32 * t) + _330 + (32 * arg4.length - 1) + 64] = 0
                    mem[(32 * u) + _330 + 32] = address(_2630)
                    if idx == -1:
                        revert with 'NH{q', 17
                    if arg4.length < 1:
                        revert with 'NH{q', 17
                    if idx + 1 < arg4.length - 1:
                        require cd[((32 * idx + 2) + arg4 + 36)] == address(cd[((32 * idx + 2) + arg4 + 36)])
                        s = idx + 1
                        idx = idx + 1
                        t = t + 2
                        u = u + 1
                        continue 
                    _2724 = mem[64]
                    mem[mem[64]] = 160
                    _2734 = mem[_330]
                    mem[mem[64] + 160] = mem[_330]
                    idx = 0
                    t = _330 + 32
                    u = mem[64] + 192
                    while idx < _2734:
                        mem[u] = mem[t + 12 len 20]
                        require cd[((32 * s) + arg4 + 36)] == address(cd[((32 * s) + arg4 + 36)])
                        idx = idx + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    mem[mem[64] + 32] = (32 * _2734) + 192
                    _2992 = mem[ceil32(return_data.size) + 96]
                    mem[mem[64] + (32 * _2734) + 192] = mem[ceil32(return_data.size) + 96]
                    idx = 0
                    t = ceil32(return_data.size) + 128
                    u = mem[64] + (32 * _2734) + 224
                    while idx < _2992:
                        mem[u] = mem[t]
                        require cd[((32 * s) + arg4 + 36)] == address(cd[((32 * s) + arg4 + 36)])
                        idx = idx + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    mem[mem[64] + 64] = (32 * _2734) + (32 * _2992) + 224
                    _3140 = mem[_330 + (32 * arg4.length - 1) + 32]
                    mem[mem[64] + (32 * _2734) + (32 * _2992) + 224] = mem[_330 + (32 * arg4.length - 1) + 32]
                    idx = 0
                    t = _330 + (32 * arg4.length - 1) + 64
                    u = mem[64] + (32 * _2734) + (32 * _2992) + 256
                    while idx < _3140:
                        mem[u] = mem[t]
                        require cd[((32 * s) + arg4 + 36)] == address(cd[((32 * s) + arg4 + 36)])
                        idx = idx + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    mem[_2724 + 96] = block.number
                    mem[_2724 + 128] = block.timestamp
                    return memory
                      from mem[64]
                       len _2724 + (32 * _2734) + (32 * _2992) + (32 * _3140) + -mem[64] + 256
                require ext_code.size(mem[_2622 + 12 len 20])
                staticcall mem[_2622 + 12 len 20].getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2654 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _2662 = mem[_2654]
                require mem[_2654] == mem[_2654 + 18 len 14]
                require mem[_2654 + 32] == mem[_2654 + 50 len 14]
                require mem[_2654 + 64] == mem[_2654 + 92 len 4]
                if u == -1:
                    revert with 'NH{q', 17
                if u >= mem[_330]:
                    revert with 'NH{q', 50
                if t == -1:
                    revert with 'NH{q', 17
                if t >= mem[_330 + (32 * arg4.length - 1) + 32]:
                    revert with 'NH{q', 50
                if t + 1 == -1:
                    revert with 'NH{q', 17
                if t + 1 >= mem[_330 + (32 * arg4.length - 1) + 32]:
                    revert with 'NH{q', 50
                if address(cd[((32 * s) + arg4 + 36)]) == address(cd[((32 * idx + 1) + arg4 + 36)]):
                    mem[(32 * t + 1) + _330 + (32 * arg4.length - 1) + 64] = mem[_2654 + 50 len 14]
                    mem[(32 * t) + _330 + (32 * arg4.length - 1) + 64] = Mask(112, 0, _2662)
                    mem[(32 * u) + _330 + 32] = address(_2630)
                    if idx == -1:
                        revert with 'NH{q', 17
                    if arg4.length < 1:
                        revert with 'NH{q', 17
                    if idx + 1 < arg4.length - 1:
                        require cd[((32 * idx + 2) + arg4 + 36)] == address(cd[((32 * idx + 2) + arg4 + 36)])
                        s = idx + 1
                        idx = idx + 1
                        t = t + 2
                        u = u + 1
                        continue 
                    mem[mem[64]] = 160
                    _2837 = mem[_330]
                    mem[mem[64] + 160] = mem[_330]
                    idx = 0
                    t = _330 + 32
                    u = mem[64] + 192
                    while idx < _2837:
                        mem[u] = mem[t + 12 len 20]
                        require cd[((32 * s) + arg4 + 36)] == address(cd[((32 * s) + arg4 + 36)])
                        idx = idx + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    mem[mem[64] + 32] = (32 * _2837) + 192
                    _2993 = mem[ceil32(return_data.size) + 96]
                    mem[mem[64] + (32 * _2837) + 192] = mem[ceil32(return_data.size) + 96]
                    idx = 0
                    t = ceil32(return_data.size) + 128
                    u = mem[64] + (32 * _2837) + 224
                    while idx < _2993:
                        mem[u] = mem[t]
                        require cd[((32 * s) + arg4 + 36)] == address(cd[((32 * s) + arg4 + 36)])
                        idx = idx + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    mem[mem[64] + 64] = (32 * _2837) + (32 * _2993) + 224
                    _3141 = mem[_330 + (32 * arg4.length - 1) + 32]
                    mem[mem[64] + (32 * _2837) + (32 * _2993) + 224] = mem[_330 + (32 * arg4.length - 1) + 32]
                    idx = 0
                    t = _330 + (32 * arg4.length - 1) + 64
                    u = mem[64] + (32 * _2837) + (32 * _2993) + 256
                    while idx < _3141:
                        mem[u] = mem[t]
                        require cd[((32 * s) + arg4 + 36)] == address(cd[((32 * s) + arg4 + 36)])
                        idx = idx + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    mem[mem[64] + 96] = block.number
                    return 160, 
                           (32 * _2837) + 192,
                           (32 * _2837) + (32 * _2993) + 224,
                           block.number,
                           block.timestamp,
                           mem[mem[64] + 160 len (32 * _2837) + (32 * _2993) + (32 * _3141) + 96]
                mem[(32 * t + 1) + _330 + (32 * arg4.length - 1) + 64] = mem[_2654 + 18 len 14]
                mem[(32 * t) + _330 + (32 * arg4.length - 1) + 64] = mem[_2654 + 50 len 14]
                mem[(32 * u) + _330 + 32] = address(_2630)
                if idx == -1:
                    revert with 'NH{q', 17
                if arg4.length < 1:
                    revert with 'NH{q', 17
                if idx + 1 < arg4.length - 1:
                    require cd[((32 * idx + 2) + arg4 + 36)] == address(cd[((32 * idx + 2) + arg4 + 36)])
                    s = idx + 1
                    idx = idx + 1
                    t = t + 2
                    u = u + 1
                    continue 
                mem[mem[64]] = 160
                _2838 = mem[_330]
                mem[mem[64] + 160] = mem[_330]
                idx = 0
                t = _330 + 32
                u = mem[64] + 192
                while idx < _2838:
                    mem[u] = mem[t + 12 len 20]
                    require cd[((32 * s) + arg4 + 36)] == address(cd[((32 * s) + arg4 + 36)])
                    idx = idx + 1
                    t = t + 32
                    u = u + 32
                    continue 
                mem[mem[64] + 32] = (32 * _2838) + 192
                _2994 = mem[ceil32(return_data.size) + 96]
                mem[mem[64] + (32 * _2838) + 192] = mem[ceil32(return_data.size) + 96]
                idx = 0
                t = ceil32(return_data.size) + 128
                u = mem[64] + (32 * _2838) + 224
                while idx < _2994:
                    mem[u] = mem[t]
                    require cd[((32 * s) + arg4 + 36)] == address(cd[((32 * s) + arg4 + 36)])
                    idx = idx + 1
                    t = t + 32
                    u = u + 32
                    continue 
                mem[mem[64] + 64] = (32 * _2838) + (32 * _2994) + 224
                _3142 = mem[_330 + (32 * arg4.length - 1) + 32]
                mem[mem[64] + (32 * _2838) + (32 * _2994) + 224] = mem[_330 + (32 * arg4.length - 1) + 32]
                idx = 0
                t = _330 + (32 * arg4.length - 1) + 64
                u = mem[64] + (32 * _2838) + (32 * _2994) + 256
                while idx < _3142:
                    mem[u] = mem[t]
                    require cd[((32 * s) + arg4 + 36)] == address(cd[((32 * s) + arg4 + 36)])
                    idx = idx + 1
                    t = t + 32
                    u = u + 32
                    continue 
                mem[mem[64] + 96] = block.number
                return 160, 
                       (32 * _2838) + 192,
                       (32 * _2838) + (32 * _2994) + 224,
                       block.number,
                       block.timestamp,
                       mem[mem[64] + 160 len (32 * _2838) + (32 * _2994) + (32 * _3142) + 96]
            _2621 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _2629 = mem[_2621]
            require mem[_2621] == mem[_2621 + 12 len 20]
            if not mem[_2621 + 12 len 20]:
                if u == -1:
                    revert with 'NH{q', 17
                if u >= mem[_330]:
                    revert with 'NH{q', 50
                if t == -1:
                    revert with 'NH{q', 17
                if t >= mem[_330 + (32 * arg4.length - 1) + 32]:
                    revert with 'NH{q', 50
                if t + 1 == -1:
                    revert with 'NH{q', 17
                if t + 1 >= mem[_330 + (32 * arg4.length - 1) + 32]:
                    revert with 'NH{q', 50
                mem[(32 * t + 1) + _330 + (32 * arg4.length - 1) + 64] = 0
                mem[(32 * t) + _330 + (32 * arg4.length - 1) + 64] = 0
                mem[(32 * u) + _330 + 32] = address(_2629)
                if idx == -1:
                    revert with 'NH{q', 17
                if arg4.length < 1:
                    revert with 'NH{q', 17
                if idx + 1 < arg4.length - 1:
                    require cd[((32 * idx + 2) + arg4 + 36)] == address(cd[((32 * idx + 2) + arg4 + 36)])
                    s = idx + 1
                    idx = idx + 1
                    t = t + 2
                    u = u + 1
                    continue 
                mem[mem[64]] = 160
                _2733 = mem[_330]
                mem[mem[64] + 160] = mem[_330]
                idx = 0
                t = _330 + 32
                u = mem[64] + 192
                while idx < _2733:
                    mem[u] = mem[t + 12 len 20]
                    require cd[((32 * s) + arg4 + 36)] == address(cd[((32 * s) + arg4 + 36)])
                    idx = idx + 1
                    t = t + 32
                    u = u + 32
                    continue 
                mem[mem[64] + 32] = (32 * _2733) + 192
                _2989 = mem[ceil32(return_data.size) + 96]
                mem[mem[64] + (32 * _2733) + 192] = mem[ceil32(return_data.size) + 96]
                idx = 0
                t = ceil32(return_data.size) + 128
                u = mem[64] + (32 * _2733) + 224
                while idx < _2989:
                    mem[u] = mem[t]
                    require cd[((32 * s) + arg4 + 36)] == address(cd[((32 * s) + arg4 + 36)])
                    idx = idx + 1
                    t = t + 32
                    u = u + 32
                    continue 
                mem[mem[64] + 64] = (32 * _2733) + (32 * _2989) + 224
                _3137 = mem[_330 + (32 * arg4.length - 1) + 32]
                mem[mem[64] + (32 * _2733) + (32 * _2989) + 224] = mem[_330 + (32 * arg4.length - 1) + 32]
                idx = 0
                t = _330 + (32 * arg4.length - 1) + 64
                u = mem[64] + (32 * _2733) + (32 * _2989) + 256
                while idx < _3137:
                    mem[u] = mem[t]
                    require cd[((32 * s) + arg4 + 36)] == address(cd[((32 * s) + arg4 + 36)])
                    idx = idx + 1
                    t = t + 32
                    u = u + 32
                    continue 
                mem[mem[64] + 96] = block.number
                return 160, 
                       (32 * _2733) + 192,
                       (32 * _2733) + (32 * _2989) + 224,
                       block.number,
                       block.timestamp,
                       mem[mem[64] + 160 len (32 * _2733) + (32 * _2989) + (32 * _3137) + 96]
            require ext_code.size(mem[_2621 + 12 len 20])
            staticcall mem[_2621 + 12 len 20].getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2653 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _2661 = mem[_2653]
            require mem[_2653] == mem[_2653 + 18 len 14]
            require mem[_2653 + 32] == mem[_2653 + 50 len 14]
            require mem[_2653 + 64] == mem[_2653 + 92 len 4]
            if u == -1:
                revert with 'NH{q', 17
            if u >= mem[_330]:
                revert with 'NH{q', 50
            if t == -1:
                revert with 'NH{q', 17
            if t >= mem[_330 + (32 * arg4.length - 1) + 32]:
                revert with 'NH{q', 50
            if t + 1 == -1:
                revert with 'NH{q', 17
            if t + 1 >= mem[_330 + (32 * arg4.length - 1) + 32]:
                revert with 'NH{q', 50
            if address(cd[((32 * s) + arg4 + 36)]) == address(cd[((32 * s) + arg4 + 36)]):
                mem[(32 * t + 1) + _330 + (32 * arg4.length - 1) + 64] = mem[_2653 + 50 len 14]
                mem[(32 * t) + _330 + (32 * arg4.length - 1) + 64] = Mask(112, 0, _2661)
                mem[(32 * u) + _330 + 32] = address(_2629)
                if idx == -1:
                    revert with 'NH{q', 17
                if arg4.length < 1:
                    revert with 'NH{q', 17
                if idx + 1 < arg4.length - 1:
                    require cd[((32 * idx + 2) + arg4 + 36)] == address(cd[((32 * idx + 2) + arg4 + 36)])
                    s = idx + 1
                    idx = idx + 1
                    t = t + 2
                    u = u + 1
                    continue 
                mem[mem[64]] = 160
                _2835 = mem[_330]
                mem[mem[64] + 160] = mem[_330]
                idx = 0
                t = _330 + 32
                u = mem[64] + 192
                while idx < _2835:
                    mem[u] = mem[t + 12 len 20]
                    require cd[((32 * s) + arg4 + 36)] == address(cd[((32 * s) + arg4 + 36)])
                    idx = idx + 1
                    t = t + 32
                    u = u + 32
                    continue 
                mem[mem[64] + 32] = (32 * _2835) + 192
                _2990 = mem[ceil32(return_data.size) + 96]
                mem[mem[64] + (32 * _2835) + 192] = mem[ceil32(return_data.size) + 96]
                idx = 0
                t = ceil32(return_data.size) + 128
                u = mem[64] + (32 * _2835) + 224
                while idx < _2990:
                    mem[u] = mem[t]
                    require cd[((32 * s) + arg4 + 36)] == address(cd[((32 * s) + arg4 + 36)])
                    idx = idx + 1
                    t = t + 32
                    u = u + 32
                    continue 
                mem[mem[64] + 64] = (32 * _2835) + (32 * _2990) + 224
                _3138 = mem[_330 + (32 * arg4.length - 1) + 32]
                mem[mem[64] + (32 * _2835) + (32 * _2990) + 224] = mem[_330 + (32 * arg4.length - 1) + 32]
                idx = 0
                t = _330 + (32 * arg4.length - 1) + 64
                u = mem[64] + (32 * _2835) + (32 * _2990) + 256
                while idx < _3138:
                    mem[u] = mem[t]
                    require cd[((32 * s) + arg4 + 36)] == address(cd[((32 * s) + arg4 + 36)])
                    idx = idx + 1
                    t = t + 32
                    u = u + 32
                    continue 
                mem[mem[64] + 96] = block.number
                return 160, 
                       (32 * _2835) + 192,
                       (32 * _2835) + (32 * _2990) + 224,
                       block.number,
                       block.timestamp,
                       mem[mem[64] + 160 len (32 * _2835) + (32 * _2990) + (32 * _3138) + 96]
            mem[(32 * t + 1) + _330 + (32 * arg4.length - 1) + 64] = mem[_2653 + 18 len 14]
            mem[(32 * t) + _330 + (32 * arg4.length - 1) + 64] = mem[_2653 + 50 len 14]
            mem[(32 * u) + _330 + 32] = address(_2629)
            if idx == -1:
                revert with 'NH{q', 17
            if arg4.length < 1:
                revert with 'NH{q', 17
            if idx + 1 < arg4.length - 1:
                require cd[((32 * idx + 2) + arg4 + 36)] == address(cd[((32 * idx + 2) + arg4 + 36)])
                s = idx + 1
                idx = idx + 1
                t = t + 2
                u = u + 1
                continue 
            _2812 = mem[64]
            mem[mem[64]] = 160
            _2836 = mem[_330]
            mem[mem[64] + 160] = mem[_330]
            idx = 0
            t = _330 + 32
            u = mem[64] + 192
            while idx < _2836:
                mem[u] = mem[t + 12 len 20]
                require cd[((32 * s) + arg4 + 36)] == address(cd[((32 * s) + arg4 + 36)])
                idx = idx + 1
                t = t + 32
                u = u + 32
                continue 
            mem[mem[64] + 32] = (32 * _2836) + 192
            _2991 = mem[ceil32(return_data.size) + 96]
            mem[mem[64] + (32 * _2836) + 192] = mem[ceil32(return_data.size) + 96]
            idx = 0
            t = ceil32(return_data.size) + 128
            u = mem[64] + (32 * _2836) + 224
            while idx < _2991:
                mem[u] = mem[t]
                require cd[((32 * s) + arg4 + 36)] == address(cd[((32 * s) + arg4 + 36)])
                idx = idx + 1
                t = t + 32
                u = u + 32
                continue 
            mem[_2812 + 64] = (32 * _2836) + (32 * _2991) + 224
            _3139 = mem[_330 + (32 * arg4.length - 1) + 32]
            mem[_2812 + (32 * _2836) + (32 * _2991) + 224] = mem[_330 + (32 * arg4.length - 1) + 32]
            idx = 0
            t = _330 + (32 * arg4.length - 1) + 64
            u = _2812 + (32 * _2836) + (32 * _2991) + 256
            while idx < _3139:
                mem[u] = mem[t]
                require cd[((32 * s) + arg4 + 36)] == address(cd[((32 * s) + arg4 + 36)])
                idx = idx + 1
                t = t + 32
                u = u + 32
                continue 
            mem[_2812 + 96] = block.number
            mem[_2812 + 128] = block.timestamp
            return memory
              from mem[64]
               len _2812 + (32 * _2836) + (32 * _2991) + (32 * _3139) + -mem[64] + 256
        revert with 'NH{q', 17
    mem[_330 + (98 * arg4.length) + ceil32(return_data.size) - 34] = 160
    _1846 = mem[_330]
    mem[_330 + (98 * arg4.length) + ceil32(return_data.size) + 126] = mem[_330]
    idx = 0
    s = _330 + 32
    t = _330 + (98 * arg4.length) + ceil32(return_data.size) + 158
    while idx < mem[_330]:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[_330 + (98 * arg4.length) + ceil32(return_data.size) - 2] = (32 * mem[_330]) + 192
    mem[_330 + (98 * arg4.length) + ceil32(return_data.size) + (32 * _1846) + 158] = _123
    mem[_330 + (98 * arg4.length) + ceil32(return_data.size) + (32 * _1846) + 190 len 32 * _123] = mem[ceil32(return_data.size) + 128 len 32 * _123]
    mem[_330 + (98 * arg4.length) + ceil32(return_data.size) + 30] = (32 * _1846) + (32 * _123) + 224
    _2590 = mem[_330 + (32 * arg4.length - 1) + 32]
    mem[_330 + (98 * arg4.length) + ceil32(return_data.size) + (32 * _1846) + (32 * _123) + 190] = mem[_330 + (32 * arg4.length - 1) + 32]
    mem[_330 + (98 * arg4.length) + ceil32(return_data.size) + (32 * _1846) + (32 * _123) + 222 len 32 * _2590] = mem[_330 + (32 * arg4.length - 1) + 64 len 32 * _2590]
    return Array(len=mem[_330 + (98 * arg4.length) + ceil32(return_data.size) + 126 len (32 * _1846) + 32], data=_123, mem[_330 + (98 * arg4.length) + ceil32(return_data.size) + (32 * _1846) + 190 len (32 * _123) + (32 * _2590) + 32]), 
           mem[_330 + (98 * arg4.length) + ceil32(return_data.size) - 2],
           (32 * _1846) + (32 * _123) + 224,
           block.number,
           block.timestamp
}



}
