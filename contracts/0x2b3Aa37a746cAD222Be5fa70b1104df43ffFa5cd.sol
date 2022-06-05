contract main {




// =====================  Runtime code  =====================


#
#  - sub_0f4c5ccf(?)
#  - sub_4ee3394d(?)
#  - sub_5890b53a(?)
#  - sub_60daabda(?)
#  - sub_7ce45cba(?)
#  - sub_d7b20e6b(?)
#  - sub_e4cbbc7b(?)
#
mapping of uint8 stor0;
mapping of struct stor1;
array of struct stor2;
array of struct stor3;
array of struct stor4;

function isController(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor0[address(arg1)])
}

function _fallback() payable {
    revert
}

function relinquishControl() payable {
    if bool(stor0[msg.sender]) != 1:
        if this.address != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Controllable: caller is not a controller'
    stor0[msg.sender] = 0
}

function addController(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if bool(stor0[msg.sender]) != 1:
        if this.address != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Controllable: caller is not a controller'
    stor0[address(arg1)] = 1
}

function sub_677808aa(?) payable {
    require calldata.size - 4 >= 160
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    if arg5 > test266151307():
        revert with 0, 65
    mem[96] = arg5
    mem[64] = (32 * arg5) + 128
    if not arg5:
        if arg4 and arg5 > -1 / arg4:
            revert with 0, 17
        if arg4 and arg5 > -1 / arg4:
            revert with 0, 17
        if arg4 * arg5 > !arg5:
            revert with 0, 17
        if var76002 >= (arg4 * arg5) + arg5:
            mem[(32 * arg5) + 128] = 64
            mem[(32 * arg5) + 192] = arg5
            mem[(32 * arg5) + 224 len 32 * arg5] = mem[128 len 32 * arg5]
            mem[(32 * arg5) + 160] = 0
            return memory
              from (32 * arg5) + 128
               len (96 * arg5) + 96
        mem[(32 * arg5) + 128] = 0xd31674db00000000000000000000000000000000000000000000000000000000
        mem[var80001] = var80002
        require ext_code.size(address(arg1))
        staticcall address(arg1).mem[var84003 len 4] with:
                gas gas_remaining wei
               args mem[var84003 + 4 len var84004 - 4]
        if not ext_call.success:
            if var92001 == -1:
                revert with 0, 17
            if arg4 and arg5 > -1 / arg4:
                revert with 0, 17
            # nil
        else:
            require var88002 - var88001 >= 32
            require ext_code.size(address(arg1))
            # nil
    else:
        mem[128 len 32 * arg5] = call.data[calldata.size len 32 * arg5]
        if arg4 and arg5 > -1 / arg4:
            revert with 0, 17
        if arg4 and arg5 > -1 / arg4:
            revert with 0, 17
        if arg4 * arg5 > !arg5:
            revert with 0, 17
        if var77002 >= (arg4 * arg5) + arg5:
            mem[(32 * arg5) + 128] = 64
            mem[(32 * arg5) + 192] = arg5
            mem[(32 * arg5) + 224 len 32 * arg5] = call.data[calldata.size len 32 * arg5]
            mem[(32 * arg5) + 160] = 0
            return memory
              from (32 * arg5) + 128
               len (96 * arg5) + 96
        mem[(32 * arg5) + 128] = 0xd31674db00000000000000000000000000000000000000000000000000000000
        mem[var81001] = var81002
        require ext_code.size(address(arg1))
        staticcall address(arg1).mem[var85003 len 4] with:
                gas gas_remaining wei
               args mem[var85003 + 4 len var85004 - 4]
        if not ext_call.success:
            if var93001 == -1:
                revert with 0, 17
            if arg4 and arg5 > -1 / arg4:
                revert with 0, 17
            # nil
        else:
            require var89002 - var89001 >= 32
            require ext_code.size(address(arg1))
            # nil
}

function sub_b1816a9a(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if (32 * ('cd', 4).length) + 128 < 96 or (32 * ('cd', 4).length) + 128 > test266151307():
        revert with 0, 65
    mem[64] = (32 * ('cd', 4).length) + 128
    mem[96] = ('cd', 4).length
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        require calldata.size + -cd[4] + -cd[s] - 36 >= 288
        _91 = mem[64]
        if mem[64] + 288 < mem[64] or mem[64] + 288 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + 288
        mem[_91] = cd[(cd[4] + cd[s] + 36)]
        require cd[(cd[4] + cd[s] + 68)] == address(cd[(cd[4] + cd[s] + 68)])
        mem[_91 + 32] = cd[(cd[4] + cd[s] + 68)]
        require cd[(cd[4] + cd[s] + 100)] == address(cd[(cd[4] + cd[s] + 100)])
        mem[_91 + 64] = cd[(cd[4] + cd[s] + 100)]
        require cd[(cd[4] + cd[s] + 132)] == address(cd[(cd[4] + cd[s] + 132)])
        mem[_91 + 96] = cd[(cd[4] + cd[s] + 132)]
        require cd[(cd[4] + cd[s] + 164)] <= test266151307()
        require cd[4] + cd[s] + cd[(cd[4] + cd[s] + 164)] + 67 < calldata.size
        if cd[(cd[4] + cd[s] + cd[(cd[4] + cd[s] + 164)] + 36)] > test266151307():
            revert with 0, 65
        _113 = mem[64]
        if mem[64] + ceil32(cd[(cd[4] + cd[s] + cd[(cd[4] + cd[s] + 164)] + 36)]) + 32 < mem[64] or mem[64] + ceil32(cd[(cd[4] + cd[s] + cd[(cd[4] + cd[s] + 164)] + 36)]) + 32 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + ceil32(cd[(cd[4] + cd[s] + cd[(cd[4] + cd[s] + 164)] + 36)]) + 32
        mem[_113] = cd[(cd[4] + cd[s] + cd[(cd[4] + cd[s] + 164)] + 36)]
        require cd[4] + cd[s] + cd[(cd[4] + cd[s] + 164)] + cd[(cd[4] + cd[s] + cd[(cd[4] + cd[s] + 164)] + 36)] + 68 <= calldata.size
        mem[_113 + 32 len cd[(cd[4] + cd[s] + cd[(cd[4] + cd[s] + 164)] + 36)]] = call.data[cd[4] + cd[s] + cd[(cd[4] + cd[s] + 164)] + 68 len cd[(cd[4] + cd[s] + cd[(cd[4] + cd[s] + 164)] + 36)]]
        mem[_113 + cd[(cd[4] + cd[s] + cd[(cd[4] + cd[s] + 164)] + 36)] + 32] = 0
        mem[_91 + 128] = _113
        require cd[(cd[4] + cd[s] + 196)] <= test266151307()
        require cd[4] + cd[s] + cd[(cd[4] + cd[s] + 196)] + 67 < calldata.size
        if cd[(cd[4] + cd[s] + cd[(cd[4] + cd[s] + 196)] + 36)] > test266151307():
            revert with 0, 65
        _143 = mem[64]
        if mem[64] + ceil32(cd[(cd[4] + cd[s] + cd[(cd[4] + cd[s] + 196)] + 36)]) + 32 < mem[64] or mem[64] + ceil32(cd[(cd[4] + cd[s] + cd[(cd[4] + cd[s] + 196)] + 36)]) + 32 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + ceil32(cd[(cd[4] + cd[s] + cd[(cd[4] + cd[s] + 196)] + 36)]) + 32
        mem[_143] = cd[(cd[4] + cd[s] + cd[(cd[4] + cd[s] + 196)] + 36)]
        require cd[4] + cd[s] + cd[(cd[4] + cd[s] + 196)] + cd[(cd[4] + cd[s] + cd[(cd[4] + cd[s] + 196)] + 36)] + 68 <= calldata.size
        mem[_143 + 32 len cd[(cd[4] + cd[s] + cd[(cd[4] + cd[s] + 196)] + 36)]] = call.data[cd[4] + cd[s] + cd[(cd[4] + cd[s] + 196)] + 68 len cd[(cd[4] + cd[s] + cd[(cd[4] + cd[s] + 196)] + 36)]]
        mem[_143 + cd[(cd[4] + cd[s] + cd[(cd[4] + cd[s] + 196)] + 36)] + 32] = 0
        mem[_91 + 160] = _143
        require cd[(cd[4] + cd[s] + 228)] <= test266151307()
        require cd[4] + cd[s] + cd[(cd[4] + cd[s] + 228)] + 67 < calldata.size
        if cd[(cd[4] + cd[s] + cd[(cd[4] + cd[s] + 228)] + 36)] > test266151307():
            revert with 0, 65
        _179 = mem[64]
        if mem[64] + ceil32(cd[(cd[4] + cd[s] + cd[(cd[4] + cd[s] + 228)] + 36)]) + 32 < mem[64] or mem[64] + ceil32(cd[(cd[4] + cd[s] + cd[(cd[4] + cd[s] + 228)] + 36)]) + 32 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + ceil32(cd[(cd[4] + cd[s] + cd[(cd[4] + cd[s] + 228)] + 36)]) + 32
        mem[_179] = cd[(cd[4] + cd[s] + cd[(cd[4] + cd[s] + 228)] + 36)]
        require cd[4] + cd[s] + cd[(cd[4] + cd[s] + 228)] + cd[(cd[4] + cd[s] + cd[(cd[4] + cd[s] + 228)] + 36)] + 68 <= calldata.size
        mem[_179 + 32 len cd[(cd[4] + cd[s] + cd[(cd[4] + cd[s] + 228)] + 36)]] = call.data[cd[4] + cd[s] + cd[(cd[4] + cd[s] + 228)] + 68 len cd[(cd[4] + cd[s] + cd[(cd[4] + cd[s] + 228)] + 36)]]
        mem[_179 + cd[(cd[4] + cd[s] + cd[(cd[4] + cd[s] + 228)] + 36)] + 32] = 0
        mem[_91 + 192] = _179
        mem[_91 + 224] = cd[(cd[4] + cd[s] + 260)]
        mem[_91 + 256] = cd[(cd[4] + cd[s] + 292)]
        mem[t] = _91
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 0, 65
    _92 = mem[64]
    if mem[64] + (32 * ('cd', 36).length) + 32 < mem[64] or mem[64] + (32 * ('cd', 36).length) + 32 > test266151307():
        revert with 0, 65
    mem[64] = mem[64] + (32 * ('cd', 36).length) + 32
    mem[_92] = ('cd', 36).length
    idx = 0
    s = cd[36] + 36
    t = _92 + 32
    while idx < ('cd', 36).length:
        require calldata.size + -cd[36] + -cd[s] - 36 >= 288
        _181 = mem[64]
        if mem[64] + 288 < mem[64] or mem[64] + 288 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + 288
        mem[_181] = cd[(cd[36] + cd[s] + 36)]
        require cd[(cd[36] + cd[s] + 68)] <= test266151307()
        require cd[36] + cd[s] + cd[(cd[36] + cd[s] + 68)] + 67 < calldata.size
        if cd[(cd[36] + cd[s] + cd[(cd[36] + cd[s] + 68)] + 36)] > test266151307():
            revert with 0, 65
        _195 = mem[64]
        if mem[64] + ceil32(cd[(cd[36] + cd[s] + cd[(cd[36] + cd[s] + 68)] + 36)]) + 32 < mem[64] or mem[64] + ceil32(cd[(cd[36] + cd[s] + cd[(cd[36] + cd[s] + 68)] + 36)]) + 32 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + ceil32(cd[(cd[36] + cd[s] + cd[(cd[36] + cd[s] + 68)] + 36)]) + 32
        mem[_195] = cd[(cd[36] + cd[s] + cd[(cd[36] + cd[s] + 68)] + 36)]
        require cd[36] + cd[s] + cd[(cd[36] + cd[s] + 68)] + cd[(cd[36] + cd[s] + cd[(cd[36] + cd[s] + 68)] + 36)] + 68 <= calldata.size
        mem[_195 + 32 len cd[(cd[36] + cd[s] + cd[(cd[36] + cd[s] + 68)] + 36)]] = call.data[cd[36] + cd[s] + cd[(cd[36] + cd[s] + 68)] + 68 len cd[(cd[36] + cd[s] + cd[(cd[36] + cd[s] + 68)] + 36)]]
        mem[_195 + cd[(cd[36] + cd[s] + cd[(cd[36] + cd[s] + 68)] + 36)] + 32] = 0
        mem[_181 + 32] = _195
        require cd[(cd[36] + cd[s] + 100)] <= test266151307()
        require cd[36] + cd[s] + cd[(cd[36] + cd[s] + 100)] + 67 < calldata.size
        if cd[(cd[36] + cd[s] + cd[(cd[36] + cd[s] + 100)] + 36)] > test266151307():
            revert with 0, 65
        _212 = mem[64]
        if mem[64] + ceil32(cd[(cd[36] + cd[s] + cd[(cd[36] + cd[s] + 100)] + 36)]) + 32 < mem[64] or mem[64] + ceil32(cd[(cd[36] + cd[s] + cd[(cd[36] + cd[s] + 100)] + 36)]) + 32 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + ceil32(cd[(cd[36] + cd[s] + cd[(cd[36] + cd[s] + 100)] + 36)]) + 32
        mem[_212] = cd[(cd[36] + cd[s] + cd[(cd[36] + cd[s] + 100)] + 36)]
        require cd[36] + cd[s] + cd[(cd[36] + cd[s] + 100)] + cd[(cd[36] + cd[s] + cd[(cd[36] + cd[s] + 100)] + 36)] + 68 <= calldata.size
        mem[_212 + 32 len cd[(cd[36] + cd[s] + cd[(cd[36] + cd[s] + 100)] + 36)]] = call.data[cd[36] + cd[s] + cd[(cd[36] + cd[s] + 100)] + 68 len cd[(cd[36] + cd[s] + cd[(cd[36] + cd[s] + 100)] + 36)]]
        mem[_212 + cd[(cd[36] + cd[s] + cd[(cd[36] + cd[s] + 100)] + 36)] + 32] = 0
        mem[_181 + 64] = _212
        mem[_181 + 96] = cd[(cd[36] + cd[s] + 132)]
        require cd[(cd[36] + cd[s] + 164)] == address(cd[(cd[36] + cd[s] + 164)])
        mem[_181 + 128] = cd[(cd[36] + cd[s] + 164)]
        require cd[(cd[36] + cd[s] + 196)] == address(cd[(cd[36] + cd[s] + 196)])
        mem[_181 + 160] = cd[(cd[36] + cd[s] + 196)]
        require cd[(cd[36] + cd[s] + 228)] == address(cd[(cd[36] + cd[s] + 228)])
        mem[_181 + 192] = cd[(cd[36] + cd[s] + 228)]
        require cd[(cd[36] + cd[s] + 260)] == address(cd[(cd[36] + cd[s] + 260)])
        mem[_181 + 224] = cd[(cd[36] + cd[s] + 260)]
        mem[_181 + 256] = cd[(cd[36] + cd[s] + 292)]
        mem[t] = _181
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    _180 = mem[64]
    mem[mem[64]] = 64
    _182 = mem[96]
    mem[mem[64] + 64] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + (32 * mem[96]) + 96
    u = mem[64] + 96
    while idx < _182:
        mem[u] = t + -_180 - 96
        _264 = mem[s]
        mem[t] = mem[mem[s]]
        mem[t + 32] = mem[_264 + 44 len 20]
        mem[t + 64] = mem[_264 + 76 len 20]
        mem[t + 96] = mem[_264 + 108 len 20]
        _275 = mem[_264 + 128]
        mem[t + 128] = 288
        _277 = mem[_275]
        mem[t + 288] = mem[_275]
        v = 0
        while v < _277:
            mem[v + t + 320] = mem[v + _275 + 32]
            v = v + 32
            continue 
        if ceil32(_277) <= _277:
            _349 = mem[_264 + 160]
            mem[t + 160] = ceil32(_277) + 320
            _351 = mem[_349]
            mem[ceil32(_277) + t + 320] = mem[_349]
            v = 0
            while v < _351:
                mem[v + ceil32(_277) + t + 352] = mem[v + _349 + 32]
                v = v + 32
                continue 
            if ceil32(_351) <= _351:
                _418 = mem[_264 + 192]
                mem[t + 192] = ceil32(_351) + ceil32(_277) + 352
                _422 = mem[_418]
                mem[ceil32(_351) + ceil32(_277) + t + 352] = mem[_418]
                v = 0
                while v < _422:
                    mem[v + ceil32(_351) + ceil32(_277) + t + 384] = mem[v + _418 + 32]
                    v = v + 32
                    continue 
                if ceil32(_422) > _422:
                    mem[ceil32(_351) + ceil32(_277) + t + _422 + 384] = 0
                mem[t + 224] = mem[_264 + 224]
                mem[t + 256] = mem[_264 + 256]
                idx = idx + 1
                s = s + 32
                t = ceil32(_422) + ceil32(_351) + ceil32(_277) + t + 384
                u = u + 32
                continue 
            mem[ceil32(_277) + t + _351 + 352] = 0
            _423 = mem[_264 + 192]
            mem[t + 192] = ceil32(_351) + ceil32(_277) + 352
            _427 = mem[_423]
            mem[ceil32(_351) + ceil32(_277) + t + 352] = mem[_423]
            v = 0
            while v < _427:
                mem[v + ceil32(_351) + ceil32(_277) + t + 384] = mem[v + _423 + 32]
                v = v + 32
                continue 
            if ceil32(_427) > _427:
                mem[ceil32(_351) + ceil32(_277) + t + _427 + 384] = 0
            mem[t + 224] = mem[_264 + 224]
            mem[t + 256] = mem[_264 + 256]
            idx = idx + 1
            s = s + 32
            t = ceil32(_427) + ceil32(_351) + ceil32(_277) + t + 384
            u = u + 32
            continue 
        mem[t + _277 + 320] = 0
        _352 = mem[_264 + 160]
        mem[t + 160] = ceil32(_277) + 320
        _353 = mem[_352]
        mem[ceil32(_277) + t + 320] = mem[_352]
        v = 0
        while v < _353:
            mem[v + ceil32(_277) + t + 352] = mem[v + _352 + 32]
            v = v + 32
            continue 
        if ceil32(_353) <= _353:
            _419 = mem[_264 + 192]
            mem[t + 192] = ceil32(_353) + ceil32(_277) + 352
            _424 = mem[_419]
            mem[ceil32(_353) + ceil32(_277) + t + 352] = mem[_419]
            v = 0
            while v < _424:
                mem[v + ceil32(_353) + ceil32(_277) + t + 384] = mem[v + _419 + 32]
                v = v + 32
                continue 
            if ceil32(_424) > _424:
                mem[ceil32(_353) + ceil32(_277) + t + _424 + 384] = 0
            mem[t + 224] = mem[_264 + 224]
            mem[t + 256] = mem[_264 + 256]
            idx = idx + 1
            s = s + 32
            t = ceil32(_424) + ceil32(_353) + ceil32(_277) + t + 384
            u = u + 32
            continue 
        mem[ceil32(_277) + t + _353 + 352] = 0
        _425 = mem[_264 + 192]
        mem[t + 192] = ceil32(_353) + ceil32(_277) + 352
        _428 = mem[_425]
        mem[ceil32(_353) + ceil32(_277) + t + 352] = mem[_425]
        v = 0
        while v < _428:
            mem[v + ceil32(_353) + ceil32(_277) + t + 384] = mem[v + _425 + 32]
            v = v + 32
            continue 
        if ceil32(_428) > _428:
            mem[ceil32(_353) + ceil32(_277) + t + _428 + 384] = 0
        mem[t + 224] = mem[_264 + 224]
        mem[t + 256] = mem[_264 + 256]
        idx = idx + 1
        s = s + 32
        t = ceil32(_428) + ceil32(_353) + ceil32(_277) + t + 384
        u = u + 32
        continue 
    mem[_180 + 32] = t - _180
    _267 = mem[_92]
    mem[t] = mem[_92]
    idx = 0
    s = _92 + 32
    u = t + (32 * _267) + 32
    v = t + 32
    while idx < _267:
        mem[v] = u + -t - 32
        _343 = mem[s]
        mem[u] = mem[mem[s]]
        _345 = mem[_343 + 32]
        mem[u + 32] = 288
        _347 = mem[_345]
        mem[u + 288] = mem[_345]
        t = 0
        while t < _347:
            mem[t + u + 320] = mem[t + _345 + 32]
            t = t + 32
            continue 
        if ceil32(_347) <= _347:
            _417 = mem[_343 + 64]
            mem[u + 64] = ceil32(_347) + 320
            _420 = mem[_417]
            mem[ceil32(_347) + u + 320] = mem[_417]
            t = 0
            while t < _420:
                mem[t + ceil32(_347) + u + 352] = mem[t + _417 + 32]
                t = t + 32
                continue 
            if ceil32(_420) > _420:
                mem[ceil32(_347) + u + _420 + 352] = 0
            mem[u + 96] = mem[_343 + 96]
            mem[u + 128] = mem[_343 + 140 len 20]
            mem[u + 160] = mem[_343 + 172 len 20]
            mem[u + 192] = mem[_343 + 204 len 20]
            mem[u + 224] = mem[_343 + 236 len 20]
            mem[u + 256] = mem[_343 + 256]
            idx = idx + 1
            s = s + 32
            u = ceil32(_420) + ceil32(_347) + u + 352
            v = v + 32
            continue 
        mem[u + _347 + 320] = 0
        _421 = mem[_343 + 64]
        mem[u + 64] = ceil32(_347) + 320
        _426 = mem[_421]
        mem[ceil32(_347) + u + 320] = mem[_421]
        t = 0
        while t < _426:
            mem[t + ceil32(_347) + u + 352] = mem[t + _421 + 32]
            t = t + 32
            continue 
        if ceil32(_426) > _426:
            mem[ceil32(_347) + u + _426 + 352] = 0
        mem[u + 96] = mem[_343 + 96]
        mem[u + 128] = mem[_343 + 140 len 20]
        mem[u + 160] = mem[_343 + 172 len 20]
        mem[u + 192] = mem[_343 + 204 len 20]
        mem[u + 224] = mem[_343 + 236 len 20]
        mem[u + 256] = mem[_343 + 256]
        idx = idx + 1
        s = s + 32
        u = ceil32(_426) + ceil32(_347) + u + 352
        v = v + 32
        continue 
    emit 0x5435355d: mem[mem[64] len u - mem[64]]
}

function sub_d0290656(?) payable {
    require calldata.size - 4 >= 32
    if stor1[arg1].field_256:
        if stor1[arg1].field_256 == stor1[arg1].field_257 < 32:
            revert with 0, 34
        if stor1[arg1].field_256:
            if stor1[arg1].field_256 == stor1[arg1].field_257 < 32:
                revert with 0, 34
            if stor1[arg1].field_257:
                if 31 >= stor1[arg1].field_257:
                    mem[128] = 256 * stor1[arg1].field_264
                else:
                    mem[128] = stor1[arg1][1].field_0
                    idx = 128
                    s = 0
                    while stor1[arg1].field_257 + 96 > idx:
                        mem[idx + 32] = stor1[arg1][s + 1].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        else:
            if stor1[arg1].field_256 == stor1[arg1].field_257 < 32:
                revert with 0, 34
            if stor1[arg1].field_257:
                if 31 >= stor1[arg1].field_257:
                    mem[128] = 256 * stor1[arg1].field_264
                else:
                    mem[128] = stor1[arg1][1].field_0
                    idx = 128
                    s = 0
                    while stor1[arg1].field_257 + 96 > idx:
                        mem[idx + 32] = stor1[arg1][s + 1].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        if stor1[arg1].field_512:
            if stor1[arg1].field_512 == stor1[arg1].field_513 < 32:
                revert with 0, 34
            if stor1[arg1].field_512:
                if stor1[arg1].field_512 == stor1[arg1].field_513 < 32:
                    revert with 0, 34
                if not stor1[arg1].field_513:
                    if ceil32(stor1[arg1].field_257) > stor1[arg1].field_257:
                        mem[ceil32(stor1[arg1].field_257) + ceil32(stor1[arg1].field_513) + stor1[arg1].field_257 + 480] = 0
                    mem[(2 * ceil32(stor1[arg1].field_257)) + ceil32(stor1[arg1].field_513) + 480] = stor1[arg1].field_513
                    mem[(2 * ceil32(stor1[arg1].field_257)) + ceil32(stor1[arg1].field_513) + 512 len ceil32(stor1[arg1].field_513)] = mem[ceil32(stor1[arg1].field_257) + 160 len ceil32(stor1[arg1].field_513)]
                    if ceil32(stor1[arg1].field_513) > stor1[arg1].field_513:
                        mem[(2 * ceil32(stor1[arg1].field_257)) + ceil32(stor1[arg1].field_513) + stor1[arg1].field_513 + 512] = 0
                else:
                    if 31 >= stor1[arg1].field_513:
                        mem[ceil32(stor1[arg1].field_257) + 160] = 256 * stor1[arg1].field_520
                    else:
                        mem[ceil32(stor1[arg1].field_257) + 160] = stor1[arg1][2].field_0
                        idx = ceil32(stor1[arg1].field_257) + 160
                        s = 0
                        while ceil32(stor1[arg1].field_257) + stor1[arg1].field_513 + 128 > idx:
                            mem[idx + 32] = stor1[arg1][s + 2].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                    if ceil32(stor1[arg1].field_257) > stor1[arg1].field_257:
                        mem[ceil32(stor1[arg1].field_257) + ceil32(stor1[arg1].field_513) + stor1[arg1].field_257 + 480] = 0
                    mem[(2 * ceil32(stor1[arg1].field_257)) + ceil32(stor1[arg1].field_513) + 480] = stor1[arg1].field_513
                    mem[(2 * ceil32(stor1[arg1].field_257)) + ceil32(stor1[arg1].field_513) + 512 len ceil32(stor1[arg1].field_513)] = mem[ceil32(stor1[arg1].field_257) + 160 len ceil32(stor1[arg1].field_513)]
                    if ceil32(stor1[arg1].field_513) > stor1[arg1].field_513:
                        mem[(2 * ceil32(stor1[arg1].field_257)) + ceil32(stor1[arg1].field_513) + stor1[arg1].field_513 + 512] = 0
            else:
                if stor1[arg1].field_512 == stor1[arg1].field_513 < 32:
                    revert with 0, 34
                if not stor1[arg1].field_513:
                    if ceil32(stor1[arg1].field_257) > stor1[arg1].field_257:
                        mem[ceil32(stor1[arg1].field_257) + ceil32(stor1[arg1].field_513) + stor1[arg1].field_257 + 480] = 0
                    mem[(2 * ceil32(stor1[arg1].field_257)) + ceil32(stor1[arg1].field_513) + 480] = stor1[arg1].field_513
                    mem[(2 * ceil32(stor1[arg1].field_257)) + ceil32(stor1[arg1].field_513) + 512 len ceil32(stor1[arg1].field_513)] = mem[ceil32(stor1[arg1].field_257) + 160 len ceil32(stor1[arg1].field_513)]
                    if ceil32(stor1[arg1].field_513) > stor1[arg1].field_513:
                        mem[(2 * ceil32(stor1[arg1].field_257)) + ceil32(stor1[arg1].field_513) + stor1[arg1].field_513 + 512] = 0
                else:
                    if 31 >= stor1[arg1].field_513:
                        mem[ceil32(stor1[arg1].field_257) + 160] = 256 * stor1[arg1].field_520
                    else:
                        mem[ceil32(stor1[arg1].field_257) + 160] = stor1[arg1][2].field_0
                        idx = ceil32(stor1[arg1].field_257) + 160
                        s = 0
                        while ceil32(stor1[arg1].field_257) + stor1[arg1].field_513 + 128 > idx:
                            mem[idx + 32] = stor1[arg1][s + 2].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                    if ceil32(stor1[arg1].field_257) > stor1[arg1].field_257:
                        mem[ceil32(stor1[arg1].field_257) + ceil32(stor1[arg1].field_513) + stor1[arg1].field_257 + 480] = 0
                    mem[(2 * ceil32(stor1[arg1].field_257)) + ceil32(stor1[arg1].field_513) + 480] = stor1[arg1].field_513
                    mem[(2 * ceil32(stor1[arg1].field_257)) + ceil32(stor1[arg1].field_513) + 512 len ceil32(stor1[arg1].field_513)] = mem[ceil32(stor1[arg1].field_257) + 160 len ceil32(stor1[arg1].field_513)]
                    if ceil32(stor1[arg1].field_513) > stor1[arg1].field_513:
                        mem[(2 * ceil32(stor1[arg1].field_257)) + ceil32(stor1[arg1].field_513) + stor1[arg1].field_513 + 512] = 0
            return stor1[arg1].field_0, 
                   Array(len=2 * Mask(256, -1, stor1[arg1].field_257), data=mem[128 len ceil32(stor1[arg1].field_257)], 2 * Mask(256, -1, stor1[arg1].field_513), mem[ceil32(stor1[arg1].field_257) + 160 len ceil32(stor1[arg1].field_513)]),
                   ceil32(stor1[arg1].field_257) + 320,
                   stor1[arg1].field_768,
                   stor1[arg1].field_1024,
                   stor1[arg1].field_1280,
                   stor1[arg1].field_1536,
                   stor1[arg1].field_1792,
                   stor1[arg1].field_2048
        if stor1[arg1].field_512 == stor1[arg1].field_513 < 32:
            revert with 0, 34
        if stor1[arg1].field_512:
            if stor1[arg1].field_512 == stor1[arg1].field_513 < 32:
                revert with 0, 34
            if not stor1[arg1].field_513:
                if ceil32(stor1[arg1].field_257) > stor1[arg1].field_257:
                    mem[ceil32(stor1[arg1].field_257) + ceil32(stor1[arg1].field_513) + stor1[arg1].field_257 + 480] = 0
                mem[(2 * ceil32(stor1[arg1].field_257)) + ceil32(stor1[arg1].field_513) + 480] = stor1[arg1].field_513
                mem[(2 * ceil32(stor1[arg1].field_257)) + ceil32(stor1[arg1].field_513) + 512 len ceil32(stor1[arg1].field_513)] = mem[ceil32(stor1[arg1].field_257) + 160 len ceil32(stor1[arg1].field_513)]
                if ceil32(stor1[arg1].field_513) > stor1[arg1].field_513:
                    mem[(2 * ceil32(stor1[arg1].field_257)) + ceil32(stor1[arg1].field_513) + stor1[arg1].field_513 + 512] = 0
            else:
                if 31 >= stor1[arg1].field_513:
                    mem[ceil32(stor1[arg1].field_257) + 160] = 256 * stor1[arg1].field_520
                else:
                    mem[ceil32(stor1[arg1].field_257) + 160] = stor1[arg1][2].field_0
                    idx = ceil32(stor1[arg1].field_257) + 160
                    s = 0
                    while ceil32(stor1[arg1].field_257) + stor1[arg1].field_513 + 128 > idx:
                        mem[idx + 32] = stor1[arg1][s + 2].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                if ceil32(stor1[arg1].field_257) > stor1[arg1].field_257:
                    mem[ceil32(stor1[arg1].field_257) + ceil32(stor1[arg1].field_513) + stor1[arg1].field_257 + 480] = 0
                mem[(2 * ceil32(stor1[arg1].field_257)) + ceil32(stor1[arg1].field_513) + 480] = stor1[arg1].field_513
                mem[(2 * ceil32(stor1[arg1].field_257)) + ceil32(stor1[arg1].field_513) + 512 len ceil32(stor1[arg1].field_513)] = mem[ceil32(stor1[arg1].field_257) + 160 len ceil32(stor1[arg1].field_513)]
                if ceil32(stor1[arg1].field_513) > stor1[arg1].field_513:
                    mem[(2 * ceil32(stor1[arg1].field_257)) + ceil32(stor1[arg1].field_513) + stor1[arg1].field_513 + 512] = 0
        else:
            if stor1[arg1].field_512 == stor1[arg1].field_513 < 32:
                revert with 0, 34
            if not stor1[arg1].field_513:
                if ceil32(stor1[arg1].field_257) > stor1[arg1].field_257:
                    mem[ceil32(stor1[arg1].field_257) + ceil32(stor1[arg1].field_513) + stor1[arg1].field_257 + 480] = 0
                mem[(2 * ceil32(stor1[arg1].field_257)) + ceil32(stor1[arg1].field_513) + 480] = stor1[arg1].field_513
                mem[(2 * ceil32(stor1[arg1].field_257)) + ceil32(stor1[arg1].field_513) + 512 len ceil32(stor1[arg1].field_513)] = mem[ceil32(stor1[arg1].field_257) + 160 len ceil32(stor1[arg1].field_513)]
                if ceil32(stor1[arg1].field_513) > stor1[arg1].field_513:
                    mem[(2 * ceil32(stor1[arg1].field_257)) + ceil32(stor1[arg1].field_513) + stor1[arg1].field_513 + 512] = 0
            else:
                if 31 >= stor1[arg1].field_513:
                    mem[ceil32(stor1[arg1].field_257) + 160] = 256 * stor1[arg1].field_520
                else:
                    mem[ceil32(stor1[arg1].field_257) + 160] = stor1[arg1][2].field_0
                    idx = ceil32(stor1[arg1].field_257) + 160
                    s = 0
                    while ceil32(stor1[arg1].field_257) + stor1[arg1].field_513 + 128 > idx:
                        mem[idx + 32] = stor1[arg1][s + 2].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                if ceil32(stor1[arg1].field_257) > stor1[arg1].field_257:
                    mem[ceil32(stor1[arg1].field_257) + ceil32(stor1[arg1].field_513) + stor1[arg1].field_257 + 480] = 0
                mem[(2 * ceil32(stor1[arg1].field_257)) + ceil32(stor1[arg1].field_513) + 480] = stor1[arg1].field_513
                mem[(2 * ceil32(stor1[arg1].field_257)) + ceil32(stor1[arg1].field_513) + 512 len ceil32(stor1[arg1].field_513)] = mem[ceil32(stor1[arg1].field_257) + 160 len ceil32(stor1[arg1].field_513)]
                if ceil32(stor1[arg1].field_513) > stor1[arg1].field_513:
                    mem[(2 * ceil32(stor1[arg1].field_257)) + ceil32(stor1[arg1].field_513) + stor1[arg1].field_513 + 512] = 0
        return stor1[arg1].field_0, 
               Array(len=2 * Mask(256, -1, stor1[arg1].field_257), data=mem[128 len ceil32(stor1[arg1].field_257)], stor1[arg1].field_512, mem[ceil32(stor1[arg1].field_257) + 160 len ceil32(stor1[arg1].field_513)]),
               ceil32(stor1[arg1].field_257) + 320,
               stor1[arg1].field_768,
               stor1[arg1].field_1024,
               stor1[arg1].field_1280,
               stor1[arg1].field_1536,
               stor1[arg1].field_1792,
               stor1[arg1].field_2048
    if stor1[arg1].field_256 == stor1[arg1].field_257 < 32:
        revert with 0, 34
    if stor1[arg1].field_256:
        if stor1[arg1].field_256 == stor1[arg1].field_257 < 32:
            revert with 0, 34
        if stor1[arg1].field_257:
            if 31 >= stor1[arg1].field_257:
                mem[128] = 256 * stor1[arg1].field_264
            else:
                mem[128] = stor1[arg1][1].field_0
                idx = 128
                s = 0
                while stor1[arg1].field_257 + 96 > idx:
                    mem[idx + 32] = stor1[arg1][s + 1].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    else:
        if stor1[arg1].field_256 == stor1[arg1].field_257 < 32:
            revert with 0, 34
        if stor1[arg1].field_257:
            if 31 >= stor1[arg1].field_257:
                mem[128] = 256 * stor1[arg1].field_264
            else:
                mem[128] = stor1[arg1][1].field_0
                idx = 128
                s = 0
                while stor1[arg1].field_257 + 96 > idx:
                    mem[idx + 32] = stor1[arg1][s + 1].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    if stor1[arg1].field_512:
        if stor1[arg1].field_512 == stor1[arg1].field_513 < 32:
            revert with 0, 34
        if stor1[arg1].field_512:
            if stor1[arg1].field_512 == stor1[arg1].field_513 < 32:
                revert with 0, 34
            if not stor1[arg1].field_513:
                if ceil32(stor1[arg1].field_257) > stor1[arg1].field_257:
                    mem[ceil32(stor1[arg1].field_257) + ceil32(stor1[arg1].field_513) + stor1[arg1].field_257 + 480] = 0
                mem[(2 * ceil32(stor1[arg1].field_257)) + ceil32(stor1[arg1].field_513) + 480] = stor1[arg1].field_513
                mem[(2 * ceil32(stor1[arg1].field_257)) + ceil32(stor1[arg1].field_513) + 512 len ceil32(stor1[arg1].field_513)] = mem[ceil32(stor1[arg1].field_257) + 160 len ceil32(stor1[arg1].field_513)]
                if ceil32(stor1[arg1].field_513) > stor1[arg1].field_513:
                    mem[(2 * ceil32(stor1[arg1].field_257)) + ceil32(stor1[arg1].field_513) + stor1[arg1].field_513 + 512] = 0
            else:
                if 31 >= stor1[arg1].field_513:
                    mem[ceil32(stor1[arg1].field_257) + 160] = 256 * stor1[arg1].field_520
                else:
                    mem[ceil32(stor1[arg1].field_257) + 160] = stor1[arg1][2].field_0
                    idx = ceil32(stor1[arg1].field_257) + 160
                    s = 0
                    while ceil32(stor1[arg1].field_257) + stor1[arg1].field_513 + 128 > idx:
                        mem[idx + 32] = stor1[arg1][s + 2].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                if ceil32(stor1[arg1].field_257) > stor1[arg1].field_257:
                    mem[ceil32(stor1[arg1].field_257) + ceil32(stor1[arg1].field_513) + stor1[arg1].field_257 + 480] = 0
                mem[(2 * ceil32(stor1[arg1].field_257)) + ceil32(stor1[arg1].field_513) + 480] = stor1[arg1].field_513
                mem[(2 * ceil32(stor1[arg1].field_257)) + ceil32(stor1[arg1].field_513) + 512 len ceil32(stor1[arg1].field_513)] = mem[ceil32(stor1[arg1].field_257) + 160 len ceil32(stor1[arg1].field_513)]
                if ceil32(stor1[arg1].field_513) > stor1[arg1].field_513:
                    mem[(2 * ceil32(stor1[arg1].field_257)) + ceil32(stor1[arg1].field_513) + stor1[arg1].field_513 + 512] = 0
        else:
            if stor1[arg1].field_512 == stor1[arg1].field_513 < 32:
                revert with 0, 34
            if not stor1[arg1].field_513:
                if ceil32(stor1[arg1].field_257) > stor1[arg1].field_257:
                    mem[ceil32(stor1[arg1].field_257) + ceil32(stor1[arg1].field_513) + stor1[arg1].field_257 + 480] = 0
                mem[(2 * ceil32(stor1[arg1].field_257)) + ceil32(stor1[arg1].field_513) + 480] = stor1[arg1].field_513
                mem[(2 * ceil32(stor1[arg1].field_257)) + ceil32(stor1[arg1].field_513) + 512 len ceil32(stor1[arg1].field_513)] = mem[ceil32(stor1[arg1].field_257) + 160 len ceil32(stor1[arg1].field_513)]
                if ceil32(stor1[arg1].field_513) > stor1[arg1].field_513:
                    mem[(2 * ceil32(stor1[arg1].field_257)) + ceil32(stor1[arg1].field_513) + stor1[arg1].field_513 + 512] = 0
            else:
                if 31 >= stor1[arg1].field_513:
                    mem[ceil32(stor1[arg1].field_257) + 160] = 256 * stor1[arg1].field_520
                else:
                    mem[ceil32(stor1[arg1].field_257) + 160] = stor1[arg1][2].field_0
                    idx = ceil32(stor1[arg1].field_257) + 160
                    s = 0
                    while ceil32(stor1[arg1].field_257) + stor1[arg1].field_513 + 128 > idx:
                        mem[idx + 32] = stor1[arg1][s + 2].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                if ceil32(stor1[arg1].field_257) > stor1[arg1].field_257:
                    mem[ceil32(stor1[arg1].field_257) + ceil32(stor1[arg1].field_513) + stor1[arg1].field_257 + 480] = 0
                mem[(2 * ceil32(stor1[arg1].field_257)) + ceil32(stor1[arg1].field_513) + 480] = stor1[arg1].field_513
                mem[(2 * ceil32(stor1[arg1].field_257)) + ceil32(stor1[arg1].field_513) + 512 len ceil32(stor1[arg1].field_513)] = mem[ceil32(stor1[arg1].field_257) + 160 len ceil32(stor1[arg1].field_513)]
                if ceil32(stor1[arg1].field_513) > stor1[arg1].field_513:
                    mem[(2 * ceil32(stor1[arg1].field_257)) + ceil32(stor1[arg1].field_513) + stor1[arg1].field_513 + 512] = 0
        return stor1[arg1].field_0, 
               Array(len=stor1[arg1].field_256, data=mem[128 len ceil32(stor1[arg1].field_257)], 2 * Mask(256, -1, stor1[arg1].field_513), mem[ceil32(stor1[arg1].field_257) + 160 len ceil32(stor1[arg1].field_513)]),
               ceil32(stor1[arg1].field_257) + 320,
               stor1[arg1].field_768,
               stor1[arg1].field_1024,
               stor1[arg1].field_1280,
               stor1[arg1].field_1536,
               stor1[arg1].field_1792,
               stor1[arg1].field_2048
    if stor1[arg1].field_512 == stor1[arg1].field_513 < 32:
        revert with 0, 34
    if stor1[arg1].field_512:
        if stor1[arg1].field_512 == stor1[arg1].field_513 < 32:
            revert with 0, 34
        if not stor1[arg1].field_513:
            if ceil32(stor1[arg1].field_257) > stor1[arg1].field_257:
                mem[ceil32(stor1[arg1].field_257) + ceil32(stor1[arg1].field_513) + stor1[arg1].field_257 + 480] = 0
            mem[(2 * ceil32(stor1[arg1].field_257)) + ceil32(stor1[arg1].field_513) + 480] = stor1[arg1].field_513
            mem[(2 * ceil32(stor1[arg1].field_257)) + ceil32(stor1[arg1].field_513) + 512 len ceil32(stor1[arg1].field_513)] = mem[ceil32(stor1[arg1].field_257) + 160 len ceil32(stor1[arg1].field_513)]
            if ceil32(stor1[arg1].field_513) > stor1[arg1].field_513:
                mem[(2 * ceil32(stor1[arg1].field_257)) + ceil32(stor1[arg1].field_513) + stor1[arg1].field_513 + 512] = 0
        else:
            if 31 >= stor1[arg1].field_513:
                mem[ceil32(stor1[arg1].field_257) + 160] = 256 * stor1[arg1].field_520
            else:
                mem[ceil32(stor1[arg1].field_257) + 160] = stor1[arg1][2].field_0
                idx = ceil32(stor1[arg1].field_257) + 160
                s = 0
                while ceil32(stor1[arg1].field_257) + stor1[arg1].field_513 + 128 > idx:
                    mem[idx + 32] = stor1[arg1][s + 2].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
            if ceil32(stor1[arg1].field_257) > stor1[arg1].field_257:
                mem[ceil32(stor1[arg1].field_257) + ceil32(stor1[arg1].field_513) + stor1[arg1].field_257 + 480] = 0
            mem[(2 * ceil32(stor1[arg1].field_257)) + ceil32(stor1[arg1].field_513) + 480] = stor1[arg1].field_513
            mem[(2 * ceil32(stor1[arg1].field_257)) + ceil32(stor1[arg1].field_513) + 512 len ceil32(stor1[arg1].field_513)] = mem[ceil32(stor1[arg1].field_257) + 160 len ceil32(stor1[arg1].field_513)]
            if ceil32(stor1[arg1].field_513) > stor1[arg1].field_513:
                mem[(2 * ceil32(stor1[arg1].field_257)) + ceil32(stor1[arg1].field_513) + stor1[arg1].field_513 + 512] = 0
    else:
        if stor1[arg1].field_512 == stor1[arg1].field_513 < 32:
            revert with 0, 34
        if not stor1[arg1].field_513:
            if ceil32(stor1[arg1].field_257) > stor1[arg1].field_257:
                mem[ceil32(stor1[arg1].field_257) + ceil32(stor1[arg1].field_513) + stor1[arg1].field_257 + 480] = 0
            mem[(2 * ceil32(stor1[arg1].field_257)) + ceil32(stor1[arg1].field_513) + 480] = stor1[arg1].field_513
            mem[(2 * ceil32(stor1[arg1].field_257)) + ceil32(stor1[arg1].field_513) + 512 len ceil32(stor1[arg1].field_513)] = mem[ceil32(stor1[arg1].field_257) + 160 len ceil32(stor1[arg1].field_513)]
            if ceil32(stor1[arg1].field_513) > stor1[arg1].field_513:
                mem[(2 * ceil32(stor1[arg1].field_257)) + ceil32(stor1[arg1].field_513) + stor1[arg1].field_513 + 512] = 0
        else:
            if 31 >= stor1[arg1].field_513:
                mem[ceil32(stor1[arg1].field_257) + 160] = 256 * stor1[arg1].field_520
            else:
                mem[ceil32(stor1[arg1].field_257) + 160] = stor1[arg1][2].field_0
                idx = ceil32(stor1[arg1].field_257) + 160
                s = 0
                while ceil32(stor1[arg1].field_257) + stor1[arg1].field_513 + 128 > idx:
                    mem[idx + 32] = stor1[arg1][s + 2].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
            if ceil32(stor1[arg1].field_257) > stor1[arg1].field_257:
                mem[ceil32(stor1[arg1].field_257) + ceil32(stor1[arg1].field_513) + stor1[arg1].field_257 + 480] = 0
            mem[(2 * ceil32(stor1[arg1].field_257)) + ceil32(stor1[arg1].field_513) + 480] = stor1[arg1].field_513
            mem[(2 * ceil32(stor1[arg1].field_257)) + ceil32(stor1[arg1].field_513) + 512 len ceil32(stor1[arg1].field_513)] = mem[ceil32(stor1[arg1].field_257) + 160 len ceil32(stor1[arg1].field_513)]
            if ceil32(stor1[arg1].field_513) > stor1[arg1].field_513:
                mem[(2 * ceil32(stor1[arg1].field_257)) + ceil32(stor1[arg1].field_513) + stor1[arg1].field_513 + 512] = 0
    return stor1[arg1].field_0, 
           Array(len=stor1[arg1].field_256, data=mem[128 len ceil32(stor1[arg1].field_257)], stor1[arg1].field_512, mem[ceil32(stor1[arg1].field_257) + 160 len ceil32(stor1[arg1].field_513)]),
           ceil32(stor1[arg1].field_257) + 320,
           stor1[arg1].field_768,
           stor1[arg1].field_1024,
           stor1[arg1].field_1280,
           stor1[arg1].field_1536,
           stor1[arg1].field_1792,
           stor1[arg1].field_2048
}

function sub_0551f733(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 < stor3[arg1].field_0
    if stor3[arg1][arg2].field_256:
        if stor3[arg1][arg2].field_256 == stor3[arg1][arg2].field_257 < 32:
            revert with 0, 34
        if stor3[arg1][arg2].field_256:
            if stor3[arg1][arg2].field_256 == stor3[arg1][arg2].field_257 < 32:
                revert with 0, 34
            if stor3[arg1][arg2].field_257:
                if 31 >= stor3[arg1][arg2].field_257:
                    mem[128] = 256 * stor3[arg1][arg2].field_264
                else:
                    mem[128] = stor[sha3((9 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor3', 3)) + 1)].field_0
                    idx = 128
                    s = 0
                    while stor3[arg1][arg2].field_257 + 96 > idx:
                        mem[idx + 32] = stor[s + sha3((9 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor3', 3)) + 1)].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        else:
            if stor3[arg1][arg2].field_256 == stor3[arg1][arg2].field_257 < 32:
                revert with 0, 34
            if stor3[arg1][arg2].field_257:
                if 31 >= stor3[arg1][arg2].field_257:
                    mem[128] = 256 * stor3[arg1][arg2].field_264
                else:
                    mem[128] = stor[sha3((9 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor3', 3)) + 1)].field_0
                    idx = 128
                    s = 0
                    while stor3[arg1][arg2].field_257 + 96 > idx:
                        mem[idx + 32] = stor[s + sha3((9 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor3', 3)) + 1)].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        if stor3[arg1][arg2].field_512:
            if stor3[arg1][arg2].field_512 == stor3[arg1][arg2].field_513 < 32:
                revert with 0, 34
            if stor3[arg1][arg2].field_512:
                if stor3[arg1][arg2].field_512 == stor3[arg1][arg2].field_513 < 32:
                    revert with 0, 34
                if not stor3[arg1][arg2].field_513:
                    if ceil32(stor3[arg1][arg2].field_257) > stor3[arg1][arg2].field_257:
                        mem[ceil32(stor3[arg1][arg2].field_257) + ceil32(stor3[arg1][arg2].field_513) + stor3[arg1][arg2].field_257 + 480] = 0
                    mem[(2 * ceil32(stor3[arg1][arg2].field_257)) + ceil32(stor3[arg1][arg2].field_513) + 480] = stor3[arg1][arg2].field_513
                    mem[(2 * ceil32(stor3[arg1][arg2].field_257)) + ceil32(stor3[arg1][arg2].field_513) + 512 len ceil32(stor3[arg1][arg2].field_513)] = mem[ceil32(stor3[arg1][arg2].field_257) + 160 len ceil32(stor3[arg1][arg2].field_513)]
                    if ceil32(stor3[arg1][arg2].field_513) > stor3[arg1][arg2].field_513:
                        mem[(2 * ceil32(stor3[arg1][arg2].field_257)) + ceil32(stor3[arg1][arg2].field_513) + stor3[arg1][arg2].field_513 + 512] = 0
                else:
                    if 31 >= stor3[arg1][arg2].field_513:
                        mem[ceil32(stor3[arg1][arg2].field_257) + 160] = 256 * stor3[arg1][arg2].field_520
                    else:
                        mem[ceil32(stor3[arg1][arg2].field_257) + 160] = stor[sha3((9 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor3', 3)) + 2)].field_0
                        idx = ceil32(stor3[arg1][arg2].field_257) + 160
                        s = 0
                        while ceil32(stor3[arg1][arg2].field_257) + stor3[arg1][arg2].field_513 + 128 > idx:
                            mem[idx + 32] = stor[s + sha3((9 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor3', 3)) + 2)].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                    if ceil32(stor3[arg1][arg2].field_257) > stor3[arg1][arg2].field_257:
                        mem[ceil32(stor3[arg1][arg2].field_257) + ceil32(stor3[arg1][arg2].field_513) + stor3[arg1][arg2].field_257 + 480] = 0
                    mem[(2 * ceil32(stor3[arg1][arg2].field_257)) + ceil32(stor3[arg1][arg2].field_513) + 480] = stor3[arg1][arg2].field_513
                    mem[(2 * ceil32(stor3[arg1][arg2].field_257)) + ceil32(stor3[arg1][arg2].field_513) + 512 len ceil32(stor3[arg1][arg2].field_513)] = mem[ceil32(stor3[arg1][arg2].field_257) + 160 len ceil32(stor3[arg1][arg2].field_513)]
                    if ceil32(stor3[arg1][arg2].field_513) > stor3[arg1][arg2].field_513:
                        mem[(2 * ceil32(stor3[arg1][arg2].field_257)) + ceil32(stor3[arg1][arg2].field_513) + stor3[arg1][arg2].field_513 + 512] = 0
            else:
                if stor3[arg1][arg2].field_512 == stor3[arg1][arg2].field_513 < 32:
                    revert with 0, 34
                if not stor3[arg1][arg2].field_513:
                    if ceil32(stor3[arg1][arg2].field_257) > stor3[arg1][arg2].field_257:
                        mem[ceil32(stor3[arg1][arg2].field_257) + ceil32(stor3[arg1][arg2].field_513) + stor3[arg1][arg2].field_257 + 480] = 0
                    mem[(2 * ceil32(stor3[arg1][arg2].field_257)) + ceil32(stor3[arg1][arg2].field_513) + 480] = stor3[arg1][arg2].field_513
                    mem[(2 * ceil32(stor3[arg1][arg2].field_257)) + ceil32(stor3[arg1][arg2].field_513) + 512 len ceil32(stor3[arg1][arg2].field_513)] = mem[ceil32(stor3[arg1][arg2].field_257) + 160 len ceil32(stor3[arg1][arg2].field_513)]
                    if ceil32(stor3[arg1][arg2].field_513) > stor3[arg1][arg2].field_513:
                        mem[(2 * ceil32(stor3[arg1][arg2].field_257)) + ceil32(stor3[arg1][arg2].field_513) + stor3[arg1][arg2].field_513 + 512] = 0
                else:
                    if 31 >= stor3[arg1][arg2].field_513:
                        mem[ceil32(stor3[arg1][arg2].field_257) + 160] = 256 * stor3[arg1][arg2].field_520
                    else:
                        mem[ceil32(stor3[arg1][arg2].field_257) + 160] = stor[sha3((9 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor3', 3)) + 2)].field_0
                        idx = ceil32(stor3[arg1][arg2].field_257) + 160
                        s = 0
                        while ceil32(stor3[arg1][arg2].field_257) + stor3[arg1][arg2].field_513 + 128 > idx:
                            mem[idx + 32] = stor[s + sha3((9 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor3', 3)) + 2)].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                    if ceil32(stor3[arg1][arg2].field_257) > stor3[arg1][arg2].field_257:
                        mem[ceil32(stor3[arg1][arg2].field_257) + ceil32(stor3[arg1][arg2].field_513) + stor3[arg1][arg2].field_257 + 480] = 0
                    mem[(2 * ceil32(stor3[arg1][arg2].field_257)) + ceil32(stor3[arg1][arg2].field_513) + 480] = stor3[arg1][arg2].field_513
                    mem[(2 * ceil32(stor3[arg1][arg2].field_257)) + ceil32(stor3[arg1][arg2].field_513) + 512 len ceil32(stor3[arg1][arg2].field_513)] = mem[ceil32(stor3[arg1][arg2].field_257) + 160 len ceil32(stor3[arg1][arg2].field_513)]
                    if ceil32(stor3[arg1][arg2].field_513) > stor3[arg1][arg2].field_513:
                        mem[(2 * ceil32(stor3[arg1][arg2].field_257)) + ceil32(stor3[arg1][arg2].field_513) + stor3[arg1][arg2].field_513 + 512] = 0
            return stor3[arg1][arg2].field_0, 
                   Array(len=2 * Mask(256, -1, stor3[arg1][arg2].field_257), data=mem[128 len ceil32(stor3[arg1][arg2].field_257)], 2 * Mask(256, -1, stor3[arg1][arg2].field_513), mem[ceil32(stor3[arg1][arg2].field_257) + 160 len ceil32(stor3[arg1][arg2].field_513)]),
                   ceil32(stor3[arg1][arg2].field_257) + 320,
                   stor3[arg1][arg2].field_768,
                   stor3[arg1][arg2].field_1024,
                   stor3[arg1][arg2].field_1280,
                   stor3[arg1][arg2].field_1536,
                   stor3[arg1][arg2].field_1792,
                   stor3[arg1][arg2].field_2048
        if stor3[arg1][arg2].field_512 == stor3[arg1][arg2].field_513 < 32:
            revert with 0, 34
        if stor3[arg1][arg2].field_512:
            if stor3[arg1][arg2].field_512 == stor3[arg1][arg2].field_513 < 32:
                revert with 0, 34
            if not stor3[arg1][arg2].field_513:
                if ceil32(stor3[arg1][arg2].field_257) > stor3[arg1][arg2].field_257:
                    mem[ceil32(stor3[arg1][arg2].field_257) + ceil32(stor3[arg1][arg2].field_513) + stor3[arg1][arg2].field_257 + 480] = 0
                mem[(2 * ceil32(stor3[arg1][arg2].field_257)) + ceil32(stor3[arg1][arg2].field_513) + 480] = stor3[arg1][arg2].field_513
                mem[(2 * ceil32(stor3[arg1][arg2].field_257)) + ceil32(stor3[arg1][arg2].field_513) + 512 len ceil32(stor3[arg1][arg2].field_513)] = mem[ceil32(stor3[arg1][arg2].field_257) + 160 len ceil32(stor3[arg1][arg2].field_513)]
                if ceil32(stor3[arg1][arg2].field_513) > stor3[arg1][arg2].field_513:
                    mem[(2 * ceil32(stor3[arg1][arg2].field_257)) + ceil32(stor3[arg1][arg2].field_513) + stor3[arg1][arg2].field_513 + 512] = 0
            else:
                if 31 >= stor3[arg1][arg2].field_513:
                    mem[ceil32(stor3[arg1][arg2].field_257) + 160] = 256 * stor3[arg1][arg2].field_520
                else:
                    mem[ceil32(stor3[arg1][arg2].field_257) + 160] = stor[sha3((9 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor3', 3)) + 2)].field_0
                    idx = ceil32(stor3[arg1][arg2].field_257) + 160
                    s = 0
                    while ceil32(stor3[arg1][arg2].field_257) + stor3[arg1][arg2].field_513 + 128 > idx:
                        mem[idx + 32] = stor[s + sha3((9 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor3', 3)) + 2)].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                if ceil32(stor3[arg1][arg2].field_257) > stor3[arg1][arg2].field_257:
                    mem[ceil32(stor3[arg1][arg2].field_257) + ceil32(stor3[arg1][arg2].field_513) + stor3[arg1][arg2].field_257 + 480] = 0
                mem[(2 * ceil32(stor3[arg1][arg2].field_257)) + ceil32(stor3[arg1][arg2].field_513) + 480] = stor3[arg1][arg2].field_513
                mem[(2 * ceil32(stor3[arg1][arg2].field_257)) + ceil32(stor3[arg1][arg2].field_513) + 512 len ceil32(stor3[arg1][arg2].field_513)] = mem[ceil32(stor3[arg1][arg2].field_257) + 160 len ceil32(stor3[arg1][arg2].field_513)]
                if ceil32(stor3[arg1][arg2].field_513) > stor3[arg1][arg2].field_513:
                    mem[(2 * ceil32(stor3[arg1][arg2].field_257)) + ceil32(stor3[arg1][arg2].field_513) + stor3[arg1][arg2].field_513 + 512] = 0
        else:
            if stor3[arg1][arg2].field_512 == stor3[arg1][arg2].field_513 < 32:
                revert with 0, 34
            if not stor3[arg1][arg2].field_513:
                if ceil32(stor3[arg1][arg2].field_257) > stor3[arg1][arg2].field_257:
                    mem[ceil32(stor3[arg1][arg2].field_257) + ceil32(stor3[arg1][arg2].field_513) + stor3[arg1][arg2].field_257 + 480] = 0
                mem[(2 * ceil32(stor3[arg1][arg2].field_257)) + ceil32(stor3[arg1][arg2].field_513) + 480] = stor3[arg1][arg2].field_513
                mem[(2 * ceil32(stor3[arg1][arg2].field_257)) + ceil32(stor3[arg1][arg2].field_513) + 512 len ceil32(stor3[arg1][arg2].field_513)] = mem[ceil32(stor3[arg1][arg2].field_257) + 160 len ceil32(stor3[arg1][arg2].field_513)]
                if ceil32(stor3[arg1][arg2].field_513) > stor3[arg1][arg2].field_513:
                    mem[(2 * ceil32(stor3[arg1][arg2].field_257)) + ceil32(stor3[arg1][arg2].field_513) + stor3[arg1][arg2].field_513 + 512] = 0
            else:
                if 31 >= stor3[arg1][arg2].field_513:
                    mem[ceil32(stor3[arg1][arg2].field_257) + 160] = 256 * stor3[arg1][arg2].field_520
                else:
                    mem[ceil32(stor3[arg1][arg2].field_257) + 160] = stor[sha3((9 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor3', 3)) + 2)].field_0
                    idx = ceil32(stor3[arg1][arg2].field_257) + 160
                    s = 0
                    while ceil32(stor3[arg1][arg2].field_257) + stor3[arg1][arg2].field_513 + 128 > idx:
                        mem[idx + 32] = stor[s + sha3((9 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor3', 3)) + 2)].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                if ceil32(stor3[arg1][arg2].field_257) > stor3[arg1][arg2].field_257:
                    mem[ceil32(stor3[arg1][arg2].field_257) + ceil32(stor3[arg1][arg2].field_513) + stor3[arg1][arg2].field_257 + 480] = 0
                mem[(2 * ceil32(stor3[arg1][arg2].field_257)) + ceil32(stor3[arg1][arg2].field_513) + 480] = stor3[arg1][arg2].field_513
                mem[(2 * ceil32(stor3[arg1][arg2].field_257)) + ceil32(stor3[arg1][arg2].field_513) + 512 len ceil32(stor3[arg1][arg2].field_513)] = mem[ceil32(stor3[arg1][arg2].field_257) + 160 len ceil32(stor3[arg1][arg2].field_513)]
                if ceil32(stor3[arg1][arg2].field_513) > stor3[arg1][arg2].field_513:
                    mem[(2 * ceil32(stor3[arg1][arg2].field_257)) + ceil32(stor3[arg1][arg2].field_513) + stor3[arg1][arg2].field_513 + 512] = 0
        return stor3[arg1][arg2].field_0, 
               Array(len=2 * Mask(256, -1, stor3[arg1][arg2].field_257), data=mem[128 len ceil32(stor3[arg1][arg2].field_257)], stor3[arg1][arg2].field_512, mem[ceil32(stor3[arg1][arg2].field_257) + 160 len ceil32(stor3[arg1][arg2].field_513)]),
               ceil32(stor3[arg1][arg2].field_257) + 320,
               stor3[arg1][arg2].field_768,
               stor3[arg1][arg2].field_1024,
               stor3[arg1][arg2].field_1280,
               stor3[arg1][arg2].field_1536,
               stor3[arg1][arg2].field_1792,
               stor3[arg1][arg2].field_2048
    if stor3[arg1][arg2].field_256 == stor3[arg1][arg2].field_257 < 32:
        revert with 0, 34
    if stor3[arg1][arg2].field_256:
        if stor3[arg1][arg2].field_256 == stor3[arg1][arg2].field_257 < 32:
            revert with 0, 34
        if stor3[arg1][arg2].field_257:
            if 31 >= stor3[arg1][arg2].field_257:
                mem[128] = 256 * stor3[arg1][arg2].field_264
            else:
                mem[128] = stor[sha3((9 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor3', 3)) + 1)].field_0
                idx = 128
                s = 0
                while stor3[arg1][arg2].field_257 + 96 > idx:
                    mem[idx + 32] = stor[s + sha3((9 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor3', 3)) + 1)].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    else:
        if stor3[arg1][arg2].field_256 == stor3[arg1][arg2].field_257 < 32:
            revert with 0, 34
        if stor3[arg1][arg2].field_257:
            if 31 >= stor3[arg1][arg2].field_257:
                mem[128] = 256 * stor3[arg1][arg2].field_264
            else:
                mem[128] = stor[sha3((9 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor3', 3)) + 1)].field_0
                idx = 128
                s = 0
                while stor3[arg1][arg2].field_257 + 96 > idx:
                    mem[idx + 32] = stor[s + sha3((9 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor3', 3)) + 1)].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    if stor3[arg1][arg2].field_512:
        if stor3[arg1][arg2].field_512 == stor3[arg1][arg2].field_513 < 32:
            revert with 0, 34
        if stor3[arg1][arg2].field_512:
            if stor3[arg1][arg2].field_512 == stor3[arg1][arg2].field_513 < 32:
                revert with 0, 34
            if not stor3[arg1][arg2].field_513:
                if ceil32(stor3[arg1][arg2].field_257) > stor3[arg1][arg2].field_257:
                    mem[ceil32(stor3[arg1][arg2].field_257) + ceil32(stor3[arg1][arg2].field_513) + stor3[arg1][arg2].field_257 + 480] = 0
                mem[(2 * ceil32(stor3[arg1][arg2].field_257)) + ceil32(stor3[arg1][arg2].field_513) + 480] = stor3[arg1][arg2].field_513
                mem[(2 * ceil32(stor3[arg1][arg2].field_257)) + ceil32(stor3[arg1][arg2].field_513) + 512 len ceil32(stor3[arg1][arg2].field_513)] = mem[ceil32(stor3[arg1][arg2].field_257) + 160 len ceil32(stor3[arg1][arg2].field_513)]
                if ceil32(stor3[arg1][arg2].field_513) > stor3[arg1][arg2].field_513:
                    mem[(2 * ceil32(stor3[arg1][arg2].field_257)) + ceil32(stor3[arg1][arg2].field_513) + stor3[arg1][arg2].field_513 + 512] = 0
            else:
                if 31 >= stor3[arg1][arg2].field_513:
                    mem[ceil32(stor3[arg1][arg2].field_257) + 160] = 256 * stor3[arg1][arg2].field_520
                else:
                    mem[ceil32(stor3[arg1][arg2].field_257) + 160] = stor[sha3((9 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor3', 3)) + 2)].field_0
                    idx = ceil32(stor3[arg1][arg2].field_257) + 160
                    s = 0
                    while ceil32(stor3[arg1][arg2].field_257) + stor3[arg1][arg2].field_513 + 128 > idx:
                        mem[idx + 32] = stor[s + sha3((9 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor3', 3)) + 2)].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                if ceil32(stor3[arg1][arg2].field_257) > stor3[arg1][arg2].field_257:
                    mem[ceil32(stor3[arg1][arg2].field_257) + ceil32(stor3[arg1][arg2].field_513) + stor3[arg1][arg2].field_257 + 480] = 0
                mem[(2 * ceil32(stor3[arg1][arg2].field_257)) + ceil32(stor3[arg1][arg2].field_513) + 480] = stor3[arg1][arg2].field_513
                mem[(2 * ceil32(stor3[arg1][arg2].field_257)) + ceil32(stor3[arg1][arg2].field_513) + 512 len ceil32(stor3[arg1][arg2].field_513)] = mem[ceil32(stor3[arg1][arg2].field_257) + 160 len ceil32(stor3[arg1][arg2].field_513)]
                if ceil32(stor3[arg1][arg2].field_513) > stor3[arg1][arg2].field_513:
                    mem[(2 * ceil32(stor3[arg1][arg2].field_257)) + ceil32(stor3[arg1][arg2].field_513) + stor3[arg1][arg2].field_513 + 512] = 0
        else:
            if stor3[arg1][arg2].field_512 == stor3[arg1][arg2].field_513 < 32:
                revert with 0, 34
            if not stor3[arg1][arg2].field_513:
                if ceil32(stor3[arg1][arg2].field_257) > stor3[arg1][arg2].field_257:
                    mem[ceil32(stor3[arg1][arg2].field_257) + ceil32(stor3[arg1][arg2].field_513) + stor3[arg1][arg2].field_257 + 480] = 0
                mem[(2 * ceil32(stor3[arg1][arg2].field_257)) + ceil32(stor3[arg1][arg2].field_513) + 480] = stor3[arg1][arg2].field_513
                mem[(2 * ceil32(stor3[arg1][arg2].field_257)) + ceil32(stor3[arg1][arg2].field_513) + 512 len ceil32(stor3[arg1][arg2].field_513)] = mem[ceil32(stor3[arg1][arg2].field_257) + 160 len ceil32(stor3[arg1][arg2].field_513)]
                if ceil32(stor3[arg1][arg2].field_513) > stor3[arg1][arg2].field_513:
                    mem[(2 * ceil32(stor3[arg1][arg2].field_257)) + ceil32(stor3[arg1][arg2].field_513) + stor3[arg1][arg2].field_513 + 512] = 0
            else:
                if 31 >= stor3[arg1][arg2].field_513:
                    mem[ceil32(stor3[arg1][arg2].field_257) + 160] = 256 * stor3[arg1][arg2].field_520
                else:
                    mem[ceil32(stor3[arg1][arg2].field_257) + 160] = stor[sha3((9 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor3', 3)) + 2)].field_0
                    idx = ceil32(stor3[arg1][arg2].field_257) + 160
                    s = 0
                    while ceil32(stor3[arg1][arg2].field_257) + stor3[arg1][arg2].field_513 + 128 > idx:
                        mem[idx + 32] = stor[s + sha3((9 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor3', 3)) + 2)].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                if ceil32(stor3[arg1][arg2].field_257) > stor3[arg1][arg2].field_257:
                    mem[ceil32(stor3[arg1][arg2].field_257) + ceil32(stor3[arg1][arg2].field_513) + stor3[arg1][arg2].field_257 + 480] = 0
                mem[(2 * ceil32(stor3[arg1][arg2].field_257)) + ceil32(stor3[arg1][arg2].field_513) + 480] = stor3[arg1][arg2].field_513
                mem[(2 * ceil32(stor3[arg1][arg2].field_257)) + ceil32(stor3[arg1][arg2].field_513) + 512 len ceil32(stor3[arg1][arg2].field_513)] = mem[ceil32(stor3[arg1][arg2].field_257) + 160 len ceil32(stor3[arg1][arg2].field_513)]
                if ceil32(stor3[arg1][arg2].field_513) > stor3[arg1][arg2].field_513:
                    mem[(2 * ceil32(stor3[arg1][arg2].field_257)) + ceil32(stor3[arg1][arg2].field_513) + stor3[arg1][arg2].field_513 + 512] = 0
        return stor3[arg1][arg2].field_0, 
               Array(len=stor3[arg1][arg2].field_256, data=mem[128 len ceil32(stor3[arg1][arg2].field_257)], 2 * Mask(256, -1, stor3[arg1][arg2].field_513), mem[ceil32(stor3[arg1][arg2].field_257) + 160 len ceil32(stor3[arg1][arg2].field_513)]),
               ceil32(stor3[arg1][arg2].field_257) + 320,
               stor3[arg1][arg2].field_768,
               stor3[arg1][arg2].field_1024,
               stor3[arg1][arg2].field_1280,
               stor3[arg1][arg2].field_1536,
               stor3[arg1][arg2].field_1792,
               stor3[arg1][arg2].field_2048
    if stor3[arg1][arg2].field_512 == stor3[arg1][arg2].field_513 < 32:
        revert with 0, 34
    if stor3[arg1][arg2].field_512:
        if stor3[arg1][arg2].field_512 == stor3[arg1][arg2].field_513 < 32:
            revert with 0, 34
        if not stor3[arg1][arg2].field_513:
            if ceil32(stor3[arg1][arg2].field_257) > stor3[arg1][arg2].field_257:
                mem[ceil32(stor3[arg1][arg2].field_257) + ceil32(stor3[arg1][arg2].field_513) + stor3[arg1][arg2].field_257 + 480] = 0
            mem[(2 * ceil32(stor3[arg1][arg2].field_257)) + ceil32(stor3[arg1][arg2].field_513) + 480] = stor3[arg1][arg2].field_513
            mem[(2 * ceil32(stor3[arg1][arg2].field_257)) + ceil32(stor3[arg1][arg2].field_513) + 512 len ceil32(stor3[arg1][arg2].field_513)] = mem[ceil32(stor3[arg1][arg2].field_257) + 160 len ceil32(stor3[arg1][arg2].field_513)]
            if ceil32(stor3[arg1][arg2].field_513) > stor3[arg1][arg2].field_513:
                mem[(2 * ceil32(stor3[arg1][arg2].field_257)) + ceil32(stor3[arg1][arg2].field_513) + stor3[arg1][arg2].field_513 + 512] = 0
        else:
            if 31 >= stor3[arg1][arg2].field_513:
                mem[ceil32(stor3[arg1][arg2].field_257) + 160] = 256 * stor3[arg1][arg2].field_520
            else:
                mem[ceil32(stor3[arg1][arg2].field_257) + 160] = stor[sha3((9 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor3', 3)) + 2)].field_0
                idx = ceil32(stor3[arg1][arg2].field_257) + 160
                s = 0
                while ceil32(stor3[arg1][arg2].field_257) + stor3[arg1][arg2].field_513 + 128 > idx:
                    mem[idx + 32] = stor[s + sha3((9 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor3', 3)) + 2)].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
            if ceil32(stor3[arg1][arg2].field_257) > stor3[arg1][arg2].field_257:
                mem[ceil32(stor3[arg1][arg2].field_257) + ceil32(stor3[arg1][arg2].field_513) + stor3[arg1][arg2].field_257 + 480] = 0
            mem[(2 * ceil32(stor3[arg1][arg2].field_257)) + ceil32(stor3[arg1][arg2].field_513) + 480] = stor3[arg1][arg2].field_513
            mem[(2 * ceil32(stor3[arg1][arg2].field_257)) + ceil32(stor3[arg1][arg2].field_513) + 512 len ceil32(stor3[arg1][arg2].field_513)] = mem[ceil32(stor3[arg1][arg2].field_257) + 160 len ceil32(stor3[arg1][arg2].field_513)]
            if ceil32(stor3[arg1][arg2].field_513) > stor3[arg1][arg2].field_513:
                mem[(2 * ceil32(stor3[arg1][arg2].field_257)) + ceil32(stor3[arg1][arg2].field_513) + stor3[arg1][arg2].field_513 + 512] = 0
    else:
        if stor3[arg1][arg2].field_512 == stor3[arg1][arg2].field_513 < 32:
            revert with 0, 34
        if not stor3[arg1][arg2].field_513:
            if ceil32(stor3[arg1][arg2].field_257) > stor3[arg1][arg2].field_257:
                mem[ceil32(stor3[arg1][arg2].field_257) + ceil32(stor3[arg1][arg2].field_513) + stor3[arg1][arg2].field_257 + 480] = 0
            mem[(2 * ceil32(stor3[arg1][arg2].field_257)) + ceil32(stor3[arg1][arg2].field_513) + 480] = stor3[arg1][arg2].field_513
            mem[(2 * ceil32(stor3[arg1][arg2].field_257)) + ceil32(stor3[arg1][arg2].field_513) + 512 len ceil32(stor3[arg1][arg2].field_513)] = mem[ceil32(stor3[arg1][arg2].field_257) + 160 len ceil32(stor3[arg1][arg2].field_513)]
            if ceil32(stor3[arg1][arg2].field_513) > stor3[arg1][arg2].field_513:
                mem[(2 * ceil32(stor3[arg1][arg2].field_257)) + ceil32(stor3[arg1][arg2].field_513) + stor3[arg1][arg2].field_513 + 512] = 0
        else:
            if 31 >= stor3[arg1][arg2].field_513:
                mem[ceil32(stor3[arg1][arg2].field_257) + 160] = 256 * stor3[arg1][arg2].field_520
            else:
                mem[ceil32(stor3[arg1][arg2].field_257) + 160] = stor[sha3((9 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor3', 3)) + 2)].field_0
                idx = ceil32(stor3[arg1][arg2].field_257) + 160
                s = 0
                while ceil32(stor3[arg1][arg2].field_257) + stor3[arg1][arg2].field_513 + 128 > idx:
                    mem[idx + 32] = stor[s + sha3((9 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor3', 3)) + 2)].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
            if ceil32(stor3[arg1][arg2].field_257) > stor3[arg1][arg2].field_257:
                mem[ceil32(stor3[arg1][arg2].field_257) + ceil32(stor3[arg1][arg2].field_513) + stor3[arg1][arg2].field_257 + 480] = 0
            mem[(2 * ceil32(stor3[arg1][arg2].field_257)) + ceil32(stor3[arg1][arg2].field_513) + 480] = stor3[arg1][arg2].field_513
            mem[(2 * ceil32(stor3[arg1][arg2].field_257)) + ceil32(stor3[arg1][arg2].field_513) + 512 len ceil32(stor3[arg1][arg2].field_513)] = mem[ceil32(stor3[arg1][arg2].field_257) + 160 len ceil32(stor3[arg1][arg2].field_513)]
            if ceil32(stor3[arg1][arg2].field_513) > stor3[arg1][arg2].field_513:
                mem[(2 * ceil32(stor3[arg1][arg2].field_257)) + ceil32(stor3[arg1][arg2].field_513) + stor3[arg1][arg2].field_513 + 512] = 0
    return stor3[arg1][arg2].field_0, 
           Array(len=stor3[arg1][arg2].field_256, data=mem[128 len ceil32(stor3[arg1][arg2].field_257)], stor3[arg1][arg2].field_512, mem[ceil32(stor3[arg1][arg2].field_257) + 160 len ceil32(stor3[arg1][arg2].field_513)]),
           ceil32(stor3[arg1][arg2].field_257) + 320,
           stor3[arg1][arg2].field_768,
           stor3[arg1][arg2].field_1024,
           stor3[arg1][arg2].field_1280,
           stor3[arg1][arg2].field_1536,
           stor3[arg1][arg2].field_1792,
           stor3[arg1][arg2].field_2048
}

function sub_8c54baf0(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 < stor4[arg1].field_0
    if stor4[arg1][arg2].field_256:
        if stor4[arg1][arg2].field_256 == stor4[arg1][arg2].field_257 < 32:
            revert with 0, 34
        if stor4[arg1][arg2].field_256:
            if stor4[arg1][arg2].field_256 == stor4[arg1][arg2].field_257 < 32:
                revert with 0, 34
            if stor4[arg1][arg2].field_257:
                if 31 >= stor4[arg1][arg2].field_257:
                    mem[128] = 256 * stor4[arg1][arg2].field_264
                else:
                    mem[128] = stor[sha3((9 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor4', 4)) + 1)].field_0
                    idx = 128
                    s = 0
                    while stor4[arg1][arg2].field_257 + 96 > idx:
                        mem[idx + 32] = stor[s + sha3((9 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor4', 4)) + 1)].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        else:
            if stor4[arg1][arg2].field_256 == stor4[arg1][arg2].field_257 < 32:
                revert with 0, 34
            if stor4[arg1][arg2].field_257:
                if 31 >= stor4[arg1][arg2].field_257:
                    mem[128] = 256 * stor4[arg1][arg2].field_264
                else:
                    mem[128] = stor[sha3((9 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor4', 4)) + 1)].field_0
                    idx = 128
                    s = 0
                    while stor4[arg1][arg2].field_257 + 96 > idx:
                        mem[idx + 32] = stor[s + sha3((9 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor4', 4)) + 1)].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        if stor4[arg1][arg2].field_512:
            if stor4[arg1][arg2].field_512 == stor4[arg1][arg2].field_513 < 32:
                revert with 0, 34
            if stor4[arg1][arg2].field_512:
                if stor4[arg1][arg2].field_512 == stor4[arg1][arg2].field_513 < 32:
                    revert with 0, 34
                if not stor4[arg1][arg2].field_513:
                    if ceil32(stor4[arg1][arg2].field_257) > stor4[arg1][arg2].field_257:
                        mem[ceil32(stor4[arg1][arg2].field_257) + ceil32(stor4[arg1][arg2].field_513) + stor4[arg1][arg2].field_257 + 480] = 0
                    mem[(2 * ceil32(stor4[arg1][arg2].field_257)) + ceil32(stor4[arg1][arg2].field_513) + 480] = stor4[arg1][arg2].field_513
                    mem[(2 * ceil32(stor4[arg1][arg2].field_257)) + ceil32(stor4[arg1][arg2].field_513) + 512 len ceil32(stor4[arg1][arg2].field_513)] = mem[ceil32(stor4[arg1][arg2].field_257) + 160 len ceil32(stor4[arg1][arg2].field_513)]
                    if ceil32(stor4[arg1][arg2].field_513) > stor4[arg1][arg2].field_513:
                        mem[(2 * ceil32(stor4[arg1][arg2].field_257)) + ceil32(stor4[arg1][arg2].field_513) + stor4[arg1][arg2].field_513 + 512] = 0
                else:
                    if 31 >= stor4[arg1][arg2].field_513:
                        mem[ceil32(stor4[arg1][arg2].field_257) + 160] = 256 * stor4[arg1][arg2].field_520
                    else:
                        mem[ceil32(stor4[arg1][arg2].field_257) + 160] = stor[sha3((9 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor4', 4)) + 2)].field_0
                        idx = ceil32(stor4[arg1][arg2].field_257) + 160
                        s = 0
                        while ceil32(stor4[arg1][arg2].field_257) + stor4[arg1][arg2].field_513 + 128 > idx:
                            mem[idx + 32] = stor[s + sha3((9 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor4', 4)) + 2)].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                    if ceil32(stor4[arg1][arg2].field_257) > stor4[arg1][arg2].field_257:
                        mem[ceil32(stor4[arg1][arg2].field_257) + ceil32(stor4[arg1][arg2].field_513) + stor4[arg1][arg2].field_257 + 480] = 0
                    mem[(2 * ceil32(stor4[arg1][arg2].field_257)) + ceil32(stor4[arg1][arg2].field_513) + 480] = stor4[arg1][arg2].field_513
                    mem[(2 * ceil32(stor4[arg1][arg2].field_257)) + ceil32(stor4[arg1][arg2].field_513) + 512 len ceil32(stor4[arg1][arg2].field_513)] = mem[ceil32(stor4[arg1][arg2].field_257) + 160 len ceil32(stor4[arg1][arg2].field_513)]
                    if ceil32(stor4[arg1][arg2].field_513) > stor4[arg1][arg2].field_513:
                        mem[(2 * ceil32(stor4[arg1][arg2].field_257)) + ceil32(stor4[arg1][arg2].field_513) + stor4[arg1][arg2].field_513 + 512] = 0
            else:
                if stor4[arg1][arg2].field_512 == stor4[arg1][arg2].field_513 < 32:
                    revert with 0, 34
                if not stor4[arg1][arg2].field_513:
                    if ceil32(stor4[arg1][arg2].field_257) > stor4[arg1][arg2].field_257:
                        mem[ceil32(stor4[arg1][arg2].field_257) + ceil32(stor4[arg1][arg2].field_513) + stor4[arg1][arg2].field_257 + 480] = 0
                    mem[(2 * ceil32(stor4[arg1][arg2].field_257)) + ceil32(stor4[arg1][arg2].field_513) + 480] = stor4[arg1][arg2].field_513
                    mem[(2 * ceil32(stor4[arg1][arg2].field_257)) + ceil32(stor4[arg1][arg2].field_513) + 512 len ceil32(stor4[arg1][arg2].field_513)] = mem[ceil32(stor4[arg1][arg2].field_257) + 160 len ceil32(stor4[arg1][arg2].field_513)]
                    if ceil32(stor4[arg1][arg2].field_513) > stor4[arg1][arg2].field_513:
                        mem[(2 * ceil32(stor4[arg1][arg2].field_257)) + ceil32(stor4[arg1][arg2].field_513) + stor4[arg1][arg2].field_513 + 512] = 0
                else:
                    if 31 >= stor4[arg1][arg2].field_513:
                        mem[ceil32(stor4[arg1][arg2].field_257) + 160] = 256 * stor4[arg1][arg2].field_520
                    else:
                        mem[ceil32(stor4[arg1][arg2].field_257) + 160] = stor[sha3((9 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor4', 4)) + 2)].field_0
                        idx = ceil32(stor4[arg1][arg2].field_257) + 160
                        s = 0
                        while ceil32(stor4[arg1][arg2].field_257) + stor4[arg1][arg2].field_513 + 128 > idx:
                            mem[idx + 32] = stor[s + sha3((9 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor4', 4)) + 2)].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                    if ceil32(stor4[arg1][arg2].field_257) > stor4[arg1][arg2].field_257:
                        mem[ceil32(stor4[arg1][arg2].field_257) + ceil32(stor4[arg1][arg2].field_513) + stor4[arg1][arg2].field_257 + 480] = 0
                    mem[(2 * ceil32(stor4[arg1][arg2].field_257)) + ceil32(stor4[arg1][arg2].field_513) + 480] = stor4[arg1][arg2].field_513
                    mem[(2 * ceil32(stor4[arg1][arg2].field_257)) + ceil32(stor4[arg1][arg2].field_513) + 512 len ceil32(stor4[arg1][arg2].field_513)] = mem[ceil32(stor4[arg1][arg2].field_257) + 160 len ceil32(stor4[arg1][arg2].field_513)]
                    if ceil32(stor4[arg1][arg2].field_513) > stor4[arg1][arg2].field_513:
                        mem[(2 * ceil32(stor4[arg1][arg2].field_257)) + ceil32(stor4[arg1][arg2].field_513) + stor4[arg1][arg2].field_513 + 512] = 0
            return stor4[arg1][arg2].field_0, 
                   Array(len=2 * Mask(256, -1, stor4[arg1][arg2].field_257), data=mem[128 len ceil32(stor4[arg1][arg2].field_257)], 2 * Mask(256, -1, stor4[arg1][arg2].field_513), mem[ceil32(stor4[arg1][arg2].field_257) + 160 len ceil32(stor4[arg1][arg2].field_513)]),
                   ceil32(stor4[arg1][arg2].field_257) + 320,
                   stor4[arg1][arg2].field_768,
                   stor4[arg1][arg2].field_1024,
                   stor4[arg1][arg2].field_1280,
                   stor4[arg1][arg2].field_1536,
                   stor4[arg1][arg2].field_1792,
                   stor4[arg1][arg2].field_2048
        if stor4[arg1][arg2].field_512 == stor4[arg1][arg2].field_513 < 32:
            revert with 0, 34
        if stor4[arg1][arg2].field_512:
            if stor4[arg1][arg2].field_512 == stor4[arg1][arg2].field_513 < 32:
                revert with 0, 34
            if not stor4[arg1][arg2].field_513:
                if ceil32(stor4[arg1][arg2].field_257) > stor4[arg1][arg2].field_257:
                    mem[ceil32(stor4[arg1][arg2].field_257) + ceil32(stor4[arg1][arg2].field_513) + stor4[arg1][arg2].field_257 + 480] = 0
                mem[(2 * ceil32(stor4[arg1][arg2].field_257)) + ceil32(stor4[arg1][arg2].field_513) + 480] = stor4[arg1][arg2].field_513
                mem[(2 * ceil32(stor4[arg1][arg2].field_257)) + ceil32(stor4[arg1][arg2].field_513) + 512 len ceil32(stor4[arg1][arg2].field_513)] = mem[ceil32(stor4[arg1][arg2].field_257) + 160 len ceil32(stor4[arg1][arg2].field_513)]
                if ceil32(stor4[arg1][arg2].field_513) > stor4[arg1][arg2].field_513:
                    mem[(2 * ceil32(stor4[arg1][arg2].field_257)) + ceil32(stor4[arg1][arg2].field_513) + stor4[arg1][arg2].field_513 + 512] = 0
            else:
                if 31 >= stor4[arg1][arg2].field_513:
                    mem[ceil32(stor4[arg1][arg2].field_257) + 160] = 256 * stor4[arg1][arg2].field_520
                else:
                    mem[ceil32(stor4[arg1][arg2].field_257) + 160] = stor[sha3((9 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor4', 4)) + 2)].field_0
                    idx = ceil32(stor4[arg1][arg2].field_257) + 160
                    s = 0
                    while ceil32(stor4[arg1][arg2].field_257) + stor4[arg1][arg2].field_513 + 128 > idx:
                        mem[idx + 32] = stor[s + sha3((9 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor4', 4)) + 2)].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                if ceil32(stor4[arg1][arg2].field_257) > stor4[arg1][arg2].field_257:
                    mem[ceil32(stor4[arg1][arg2].field_257) + ceil32(stor4[arg1][arg2].field_513) + stor4[arg1][arg2].field_257 + 480] = 0
                mem[(2 * ceil32(stor4[arg1][arg2].field_257)) + ceil32(stor4[arg1][arg2].field_513) + 480] = stor4[arg1][arg2].field_513
                mem[(2 * ceil32(stor4[arg1][arg2].field_257)) + ceil32(stor4[arg1][arg2].field_513) + 512 len ceil32(stor4[arg1][arg2].field_513)] = mem[ceil32(stor4[arg1][arg2].field_257) + 160 len ceil32(stor4[arg1][arg2].field_513)]
                if ceil32(stor4[arg1][arg2].field_513) > stor4[arg1][arg2].field_513:
                    mem[(2 * ceil32(stor4[arg1][arg2].field_257)) + ceil32(stor4[arg1][arg2].field_513) + stor4[arg1][arg2].field_513 + 512] = 0
        else:
            if stor4[arg1][arg2].field_512 == stor4[arg1][arg2].field_513 < 32:
                revert with 0, 34
            if not stor4[arg1][arg2].field_513:
                if ceil32(stor4[arg1][arg2].field_257) > stor4[arg1][arg2].field_257:
                    mem[ceil32(stor4[arg1][arg2].field_257) + ceil32(stor4[arg1][arg2].field_513) + stor4[arg1][arg2].field_257 + 480] = 0
                mem[(2 * ceil32(stor4[arg1][arg2].field_257)) + ceil32(stor4[arg1][arg2].field_513) + 480] = stor4[arg1][arg2].field_513
                mem[(2 * ceil32(stor4[arg1][arg2].field_257)) + ceil32(stor4[arg1][arg2].field_513) + 512 len ceil32(stor4[arg1][arg2].field_513)] = mem[ceil32(stor4[arg1][arg2].field_257) + 160 len ceil32(stor4[arg1][arg2].field_513)]
                if ceil32(stor4[arg1][arg2].field_513) > stor4[arg1][arg2].field_513:
                    mem[(2 * ceil32(stor4[arg1][arg2].field_257)) + ceil32(stor4[arg1][arg2].field_513) + stor4[arg1][arg2].field_513 + 512] = 0
            else:
                if 31 >= stor4[arg1][arg2].field_513:
                    mem[ceil32(stor4[arg1][arg2].field_257) + 160] = 256 * stor4[arg1][arg2].field_520
                else:
                    mem[ceil32(stor4[arg1][arg2].field_257) + 160] = stor[sha3((9 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor4', 4)) + 2)].field_0
                    idx = ceil32(stor4[arg1][arg2].field_257) + 160
                    s = 0
                    while ceil32(stor4[arg1][arg2].field_257) + stor4[arg1][arg2].field_513 + 128 > idx:
                        mem[idx + 32] = stor[s + sha3((9 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor4', 4)) + 2)].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                if ceil32(stor4[arg1][arg2].field_257) > stor4[arg1][arg2].field_257:
                    mem[ceil32(stor4[arg1][arg2].field_257) + ceil32(stor4[arg1][arg2].field_513) + stor4[arg1][arg2].field_257 + 480] = 0
                mem[(2 * ceil32(stor4[arg1][arg2].field_257)) + ceil32(stor4[arg1][arg2].field_513) + 480] = stor4[arg1][arg2].field_513
                mem[(2 * ceil32(stor4[arg1][arg2].field_257)) + ceil32(stor4[arg1][arg2].field_513) + 512 len ceil32(stor4[arg1][arg2].field_513)] = mem[ceil32(stor4[arg1][arg2].field_257) + 160 len ceil32(stor4[arg1][arg2].field_513)]
                if ceil32(stor4[arg1][arg2].field_513) > stor4[arg1][arg2].field_513:
                    mem[(2 * ceil32(stor4[arg1][arg2].field_257)) + ceil32(stor4[arg1][arg2].field_513) + stor4[arg1][arg2].field_513 + 512] = 0
        return stor4[arg1][arg2].field_0, 
               Array(len=2 * Mask(256, -1, stor4[arg1][arg2].field_257), data=mem[128 len ceil32(stor4[arg1][arg2].field_257)], stor4[arg1][arg2].field_512, mem[ceil32(stor4[arg1][arg2].field_257) + 160 len ceil32(stor4[arg1][arg2].field_513)]),
               ceil32(stor4[arg1][arg2].field_257) + 320,
               stor4[arg1][arg2].field_768,
               stor4[arg1][arg2].field_1024,
               stor4[arg1][arg2].field_1280,
               stor4[arg1][arg2].field_1536,
               stor4[arg1][arg2].field_1792,
               stor4[arg1][arg2].field_2048
    if stor4[arg1][arg2].field_256 == stor4[arg1][arg2].field_257 < 32:
        revert with 0, 34
    if stor4[arg1][arg2].field_256:
        if stor4[arg1][arg2].field_256 == stor4[arg1][arg2].field_257 < 32:
            revert with 0, 34
        if stor4[arg1][arg2].field_257:
            if 31 >= stor4[arg1][arg2].field_257:
                mem[128] = 256 * stor4[arg1][arg2].field_264
            else:
                mem[128] = stor[sha3((9 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor4', 4)) + 1)].field_0
                idx = 128
                s = 0
                while stor4[arg1][arg2].field_257 + 96 > idx:
                    mem[idx + 32] = stor[s + sha3((9 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor4', 4)) + 1)].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    else:
        if stor4[arg1][arg2].field_256 == stor4[arg1][arg2].field_257 < 32:
            revert with 0, 34
        if stor4[arg1][arg2].field_257:
            if 31 >= stor4[arg1][arg2].field_257:
                mem[128] = 256 * stor4[arg1][arg2].field_264
            else:
                mem[128] = stor[sha3((9 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor4', 4)) + 1)].field_0
                idx = 128
                s = 0
                while stor4[arg1][arg2].field_257 + 96 > idx:
                    mem[idx + 32] = stor[s + sha3((9 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor4', 4)) + 1)].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    if stor4[arg1][arg2].field_512:
        if stor4[arg1][arg2].field_512 == stor4[arg1][arg2].field_513 < 32:
            revert with 0, 34
        if stor4[arg1][arg2].field_512:
            if stor4[arg1][arg2].field_512 == stor4[arg1][arg2].field_513 < 32:
                revert with 0, 34
            if not stor4[arg1][arg2].field_513:
                if ceil32(stor4[arg1][arg2].field_257) > stor4[arg1][arg2].field_257:
                    mem[ceil32(stor4[arg1][arg2].field_257) + ceil32(stor4[arg1][arg2].field_513) + stor4[arg1][arg2].field_257 + 480] = 0
                mem[(2 * ceil32(stor4[arg1][arg2].field_257)) + ceil32(stor4[arg1][arg2].field_513) + 480] = stor4[arg1][arg2].field_513
                mem[(2 * ceil32(stor4[arg1][arg2].field_257)) + ceil32(stor4[arg1][arg2].field_513) + 512 len ceil32(stor4[arg1][arg2].field_513)] = mem[ceil32(stor4[arg1][arg2].field_257) + 160 len ceil32(stor4[arg1][arg2].field_513)]
                if ceil32(stor4[arg1][arg2].field_513) > stor4[arg1][arg2].field_513:
                    mem[(2 * ceil32(stor4[arg1][arg2].field_257)) + ceil32(stor4[arg1][arg2].field_513) + stor4[arg1][arg2].field_513 + 512] = 0
            else:
                if 31 >= stor4[arg1][arg2].field_513:
                    mem[ceil32(stor4[arg1][arg2].field_257) + 160] = 256 * stor4[arg1][arg2].field_520
                else:
                    mem[ceil32(stor4[arg1][arg2].field_257) + 160] = stor[sha3((9 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor4', 4)) + 2)].field_0
                    idx = ceil32(stor4[arg1][arg2].field_257) + 160
                    s = 0
                    while ceil32(stor4[arg1][arg2].field_257) + stor4[arg1][arg2].field_513 + 128 > idx:
                        mem[idx + 32] = stor[s + sha3((9 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor4', 4)) + 2)].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                if ceil32(stor4[arg1][arg2].field_257) > stor4[arg1][arg2].field_257:
                    mem[ceil32(stor4[arg1][arg2].field_257) + ceil32(stor4[arg1][arg2].field_513) + stor4[arg1][arg2].field_257 + 480] = 0
                mem[(2 * ceil32(stor4[arg1][arg2].field_257)) + ceil32(stor4[arg1][arg2].field_513) + 480] = stor4[arg1][arg2].field_513
                mem[(2 * ceil32(stor4[arg1][arg2].field_257)) + ceil32(stor4[arg1][arg2].field_513) + 512 len ceil32(stor4[arg1][arg2].field_513)] = mem[ceil32(stor4[arg1][arg2].field_257) + 160 len ceil32(stor4[arg1][arg2].field_513)]
                if ceil32(stor4[arg1][arg2].field_513) > stor4[arg1][arg2].field_513:
                    mem[(2 * ceil32(stor4[arg1][arg2].field_257)) + ceil32(stor4[arg1][arg2].field_513) + stor4[arg1][arg2].field_513 + 512] = 0
        else:
            if stor4[arg1][arg2].field_512 == stor4[arg1][arg2].field_513 < 32:
                revert with 0, 34
            if not stor4[arg1][arg2].field_513:
                if ceil32(stor4[arg1][arg2].field_257) > stor4[arg1][arg2].field_257:
                    mem[ceil32(stor4[arg1][arg2].field_257) + ceil32(stor4[arg1][arg2].field_513) + stor4[arg1][arg2].field_257 + 480] = 0
                mem[(2 * ceil32(stor4[arg1][arg2].field_257)) + ceil32(stor4[arg1][arg2].field_513) + 480] = stor4[arg1][arg2].field_513
                mem[(2 * ceil32(stor4[arg1][arg2].field_257)) + ceil32(stor4[arg1][arg2].field_513) + 512 len ceil32(stor4[arg1][arg2].field_513)] = mem[ceil32(stor4[arg1][arg2].field_257) + 160 len ceil32(stor4[arg1][arg2].field_513)]
                if ceil32(stor4[arg1][arg2].field_513) > stor4[arg1][arg2].field_513:
                    mem[(2 * ceil32(stor4[arg1][arg2].field_257)) + ceil32(stor4[arg1][arg2].field_513) + stor4[arg1][arg2].field_513 + 512] = 0
            else:
                if 31 >= stor4[arg1][arg2].field_513:
                    mem[ceil32(stor4[arg1][arg2].field_257) + 160] = 256 * stor4[arg1][arg2].field_520
                else:
                    mem[ceil32(stor4[arg1][arg2].field_257) + 160] = stor[sha3((9 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor4', 4)) + 2)].field_0
                    idx = ceil32(stor4[arg1][arg2].field_257) + 160
                    s = 0
                    while ceil32(stor4[arg1][arg2].field_257) + stor4[arg1][arg2].field_513 + 128 > idx:
                        mem[idx + 32] = stor[s + sha3((9 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor4', 4)) + 2)].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                if ceil32(stor4[arg1][arg2].field_257) > stor4[arg1][arg2].field_257:
                    mem[ceil32(stor4[arg1][arg2].field_257) + ceil32(stor4[arg1][arg2].field_513) + stor4[arg1][arg2].field_257 + 480] = 0
                mem[(2 * ceil32(stor4[arg1][arg2].field_257)) + ceil32(stor4[arg1][arg2].field_513) + 480] = stor4[arg1][arg2].field_513
                mem[(2 * ceil32(stor4[arg1][arg2].field_257)) + ceil32(stor4[arg1][arg2].field_513) + 512 len ceil32(stor4[arg1][arg2].field_513)] = mem[ceil32(stor4[arg1][arg2].field_257) + 160 len ceil32(stor4[arg1][arg2].field_513)]
                if ceil32(stor4[arg1][arg2].field_513) > stor4[arg1][arg2].field_513:
                    mem[(2 * ceil32(stor4[arg1][arg2].field_257)) + ceil32(stor4[arg1][arg2].field_513) + stor4[arg1][arg2].field_513 + 512] = 0
        return stor4[arg1][arg2].field_0, 
               Array(len=stor4[arg1][arg2].field_256, data=mem[128 len ceil32(stor4[arg1][arg2].field_257)], 2 * Mask(256, -1, stor4[arg1][arg2].field_513), mem[ceil32(stor4[arg1][arg2].field_257) + 160 len ceil32(stor4[arg1][arg2].field_513)]),
               ceil32(stor4[arg1][arg2].field_257) + 320,
               stor4[arg1][arg2].field_768,
               stor4[arg1][arg2].field_1024,
               stor4[arg1][arg2].field_1280,
               stor4[arg1][arg2].field_1536,
               stor4[arg1][arg2].field_1792,
               stor4[arg1][arg2].field_2048
    if stor4[arg1][arg2].field_512 == stor4[arg1][arg2].field_513 < 32:
        revert with 0, 34
    if stor4[arg1][arg2].field_512:
        if stor4[arg1][arg2].field_512 == stor4[arg1][arg2].field_513 < 32:
            revert with 0, 34
        if not stor4[arg1][arg2].field_513:
            if ceil32(stor4[arg1][arg2].field_257) > stor4[arg1][arg2].field_257:
                mem[ceil32(stor4[arg1][arg2].field_257) + ceil32(stor4[arg1][arg2].field_513) + stor4[arg1][arg2].field_257 + 480] = 0
            mem[(2 * ceil32(stor4[arg1][arg2].field_257)) + ceil32(stor4[arg1][arg2].field_513) + 480] = stor4[arg1][arg2].field_513
            mem[(2 * ceil32(stor4[arg1][arg2].field_257)) + ceil32(stor4[arg1][arg2].field_513) + 512 len ceil32(stor4[arg1][arg2].field_513)] = mem[ceil32(stor4[arg1][arg2].field_257) + 160 len ceil32(stor4[arg1][arg2].field_513)]
            if ceil32(stor4[arg1][arg2].field_513) > stor4[arg1][arg2].field_513:
                mem[(2 * ceil32(stor4[arg1][arg2].field_257)) + ceil32(stor4[arg1][arg2].field_513) + stor4[arg1][arg2].field_513 + 512] = 0
        else:
            if 31 >= stor4[arg1][arg2].field_513:
                mem[ceil32(stor4[arg1][arg2].field_257) + 160] = 256 * stor4[arg1][arg2].field_520
            else:
                mem[ceil32(stor4[arg1][arg2].field_257) + 160] = stor[sha3((9 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor4', 4)) + 2)].field_0
                idx = ceil32(stor4[arg1][arg2].field_257) + 160
                s = 0
                while ceil32(stor4[arg1][arg2].field_257) + stor4[arg1][arg2].field_513 + 128 > idx:
                    mem[idx + 32] = stor[s + sha3((9 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor4', 4)) + 2)].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
            if ceil32(stor4[arg1][arg2].field_257) > stor4[arg1][arg2].field_257:
                mem[ceil32(stor4[arg1][arg2].field_257) + ceil32(stor4[arg1][arg2].field_513) + stor4[arg1][arg2].field_257 + 480] = 0
            mem[(2 * ceil32(stor4[arg1][arg2].field_257)) + ceil32(stor4[arg1][arg2].field_513) + 480] = stor4[arg1][arg2].field_513
            mem[(2 * ceil32(stor4[arg1][arg2].field_257)) + ceil32(stor4[arg1][arg2].field_513) + 512 len ceil32(stor4[arg1][arg2].field_513)] = mem[ceil32(stor4[arg1][arg2].field_257) + 160 len ceil32(stor4[arg1][arg2].field_513)]
            if ceil32(stor4[arg1][arg2].field_513) > stor4[arg1][arg2].field_513:
                mem[(2 * ceil32(stor4[arg1][arg2].field_257)) + ceil32(stor4[arg1][arg2].field_513) + stor4[arg1][arg2].field_513 + 512] = 0
    else:
        if stor4[arg1][arg2].field_512 == stor4[arg1][arg2].field_513 < 32:
            revert with 0, 34
        if not stor4[arg1][arg2].field_513:
            if ceil32(stor4[arg1][arg2].field_257) > stor4[arg1][arg2].field_257:
                mem[ceil32(stor4[arg1][arg2].field_257) + ceil32(stor4[arg1][arg2].field_513) + stor4[arg1][arg2].field_257 + 480] = 0
            mem[(2 * ceil32(stor4[arg1][arg2].field_257)) + ceil32(stor4[arg1][arg2].field_513) + 480] = stor4[arg1][arg2].field_513
            mem[(2 * ceil32(stor4[arg1][arg2].field_257)) + ceil32(stor4[arg1][arg2].field_513) + 512 len ceil32(stor4[arg1][arg2].field_513)] = mem[ceil32(stor4[arg1][arg2].field_257) + 160 len ceil32(stor4[arg1][arg2].field_513)]
            if ceil32(stor4[arg1][arg2].field_513) > stor4[arg1][arg2].field_513:
                mem[(2 * ceil32(stor4[arg1][arg2].field_257)) + ceil32(stor4[arg1][arg2].field_513) + stor4[arg1][arg2].field_513 + 512] = 0
        else:
            if 31 >= stor4[arg1][arg2].field_513:
                mem[ceil32(stor4[arg1][arg2].field_257) + 160] = 256 * stor4[arg1][arg2].field_520
            else:
                mem[ceil32(stor4[arg1][arg2].field_257) + 160] = stor[sha3((9 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor4', 4)) + 2)].field_0
                idx = ceil32(stor4[arg1][arg2].field_257) + 160
                s = 0
                while ceil32(stor4[arg1][arg2].field_257) + stor4[arg1][arg2].field_513 + 128 > idx:
                    mem[idx + 32] = stor[s + sha3((9 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor4', 4)) + 2)].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
            if ceil32(stor4[arg1][arg2].field_257) > stor4[arg1][arg2].field_257:
                mem[ceil32(stor4[arg1][arg2].field_257) + ceil32(stor4[arg1][arg2].field_513) + stor4[arg1][arg2].field_257 + 480] = 0
            mem[(2 * ceil32(stor4[arg1][arg2].field_257)) + ceil32(stor4[arg1][arg2].field_513) + 480] = stor4[arg1][arg2].field_513
            mem[(2 * ceil32(stor4[arg1][arg2].field_257)) + ceil32(stor4[arg1][arg2].field_513) + 512 len ceil32(stor4[arg1][arg2].field_513)] = mem[ceil32(stor4[arg1][arg2].field_257) + 160 len ceil32(stor4[arg1][arg2].field_513)]
            if ceil32(stor4[arg1][arg2].field_513) > stor4[arg1][arg2].field_513:
                mem[(2 * ceil32(stor4[arg1][arg2].field_257)) + ceil32(stor4[arg1][arg2].field_513) + stor4[arg1][arg2].field_513 + 512] = 0
    return stor4[arg1][arg2].field_0, 
           Array(len=stor4[arg1][arg2].field_256, data=mem[128 len ceil32(stor4[arg1][arg2].field_257)], stor4[arg1][arg2].field_512, mem[ceil32(stor4[arg1][arg2].field_257) + 160 len ceil32(stor4[arg1][arg2].field_513)]),
           ceil32(stor4[arg1][arg2].field_257) + 320,
           stor4[arg1][arg2].field_768,
           stor4[arg1][arg2].field_1024,
           stor4[arg1][arg2].field_1280,
           stor4[arg1][arg2].field_1536,
           stor4[arg1][arg2].field_1792,
           stor4[arg1][arg2].field_2048
}

function sub_ef3c4a05(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 < stor2[arg1].field_0
    if stor2[arg1][arg2].field_256:
        if stor2[arg1][arg2].field_256 == stor2[arg1][arg2].field_257 < 32:
            revert with 0, 34
        if stor2[arg1][arg2].field_256:
            if stor2[arg1][arg2].field_256 == stor2[arg1][arg2].field_257 < 32:
                revert with 0, 34
            if stor2[arg1][arg2].field_257:
                if 31 >= stor2[arg1][arg2].field_257:
                    mem[128] = 256 * stor2[arg1][arg2].field_264
                else:
                    mem[128] = stor[sha3((9 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor2', 2)) + 1)].field_0
                    idx = 128
                    s = 0
                    while stor2[arg1][arg2].field_257 + 96 > idx:
                        mem[idx + 32] = stor[s + sha3((9 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor2', 2)) + 1)].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        else:
            if stor2[arg1][arg2].field_256 == stor2[arg1][arg2].field_257 < 32:
                revert with 0, 34
            if stor2[arg1][arg2].field_257:
                if 31 >= stor2[arg1][arg2].field_257:
                    mem[128] = 256 * stor2[arg1][arg2].field_264
                else:
                    mem[128] = stor[sha3((9 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor2', 2)) + 1)].field_0
                    idx = 128
                    s = 0
                    while stor2[arg1][arg2].field_257 + 96 > idx:
                        mem[idx + 32] = stor[s + sha3((9 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor2', 2)) + 1)].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        if stor2[arg1][arg2].field_512:
            if stor2[arg1][arg2].field_512 == stor2[arg1][arg2].field_513 < 32:
                revert with 0, 34
            if stor2[arg1][arg2].field_512:
                if stor2[arg1][arg2].field_512 == stor2[arg1][arg2].field_513 < 32:
                    revert with 0, 34
                if not stor2[arg1][arg2].field_513:
                    if ceil32(stor2[arg1][arg2].field_257) > stor2[arg1][arg2].field_257:
                        mem[ceil32(stor2[arg1][arg2].field_257) + ceil32(stor2[arg1][arg2].field_513) + stor2[arg1][arg2].field_257 + 480] = 0
                    mem[(2 * ceil32(stor2[arg1][arg2].field_257)) + ceil32(stor2[arg1][arg2].field_513) + 480] = stor2[arg1][arg2].field_513
                    mem[(2 * ceil32(stor2[arg1][arg2].field_257)) + ceil32(stor2[arg1][arg2].field_513) + 512 len ceil32(stor2[arg1][arg2].field_513)] = mem[ceil32(stor2[arg1][arg2].field_257) + 160 len ceil32(stor2[arg1][arg2].field_513)]
                    if ceil32(stor2[arg1][arg2].field_513) > stor2[arg1][arg2].field_513:
                        mem[(2 * ceil32(stor2[arg1][arg2].field_257)) + ceil32(stor2[arg1][arg2].field_513) + stor2[arg1][arg2].field_513 + 512] = 0
                else:
                    if 31 >= stor2[arg1][arg2].field_513:
                        mem[ceil32(stor2[arg1][arg2].field_257) + 160] = 256 * stor2[arg1][arg2].field_520
                    else:
                        mem[ceil32(stor2[arg1][arg2].field_257) + 160] = stor[sha3((9 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor2', 2)) + 2)].field_0
                        idx = ceil32(stor2[arg1][arg2].field_257) + 160
                        s = 0
                        while ceil32(stor2[arg1][arg2].field_257) + stor2[arg1][arg2].field_513 + 128 > idx:
                            mem[idx + 32] = stor[s + sha3((9 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor2', 2)) + 2)].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                    if ceil32(stor2[arg1][arg2].field_257) > stor2[arg1][arg2].field_257:
                        mem[ceil32(stor2[arg1][arg2].field_257) + ceil32(stor2[arg1][arg2].field_513) + stor2[arg1][arg2].field_257 + 480] = 0
                    mem[(2 * ceil32(stor2[arg1][arg2].field_257)) + ceil32(stor2[arg1][arg2].field_513) + 480] = stor2[arg1][arg2].field_513
                    mem[(2 * ceil32(stor2[arg1][arg2].field_257)) + ceil32(stor2[arg1][arg2].field_513) + 512 len ceil32(stor2[arg1][arg2].field_513)] = mem[ceil32(stor2[arg1][arg2].field_257) + 160 len ceil32(stor2[arg1][arg2].field_513)]
                    if ceil32(stor2[arg1][arg2].field_513) > stor2[arg1][arg2].field_513:
                        mem[(2 * ceil32(stor2[arg1][arg2].field_257)) + ceil32(stor2[arg1][arg2].field_513) + stor2[arg1][arg2].field_513 + 512] = 0
            else:
                if stor2[arg1][arg2].field_512 == stor2[arg1][arg2].field_513 < 32:
                    revert with 0, 34
                if not stor2[arg1][arg2].field_513:
                    if ceil32(stor2[arg1][arg2].field_257) > stor2[arg1][arg2].field_257:
                        mem[ceil32(stor2[arg1][arg2].field_257) + ceil32(stor2[arg1][arg2].field_513) + stor2[arg1][arg2].field_257 + 480] = 0
                    mem[(2 * ceil32(stor2[arg1][arg2].field_257)) + ceil32(stor2[arg1][arg2].field_513) + 480] = stor2[arg1][arg2].field_513
                    mem[(2 * ceil32(stor2[arg1][arg2].field_257)) + ceil32(stor2[arg1][arg2].field_513) + 512 len ceil32(stor2[arg1][arg2].field_513)] = mem[ceil32(stor2[arg1][arg2].field_257) + 160 len ceil32(stor2[arg1][arg2].field_513)]
                    if ceil32(stor2[arg1][arg2].field_513) > stor2[arg1][arg2].field_513:
                        mem[(2 * ceil32(stor2[arg1][arg2].field_257)) + ceil32(stor2[arg1][arg2].field_513) + stor2[arg1][arg2].field_513 + 512] = 0
                else:
                    if 31 >= stor2[arg1][arg2].field_513:
                        mem[ceil32(stor2[arg1][arg2].field_257) + 160] = 256 * stor2[arg1][arg2].field_520
                    else:
                        mem[ceil32(stor2[arg1][arg2].field_257) + 160] = stor[sha3((9 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor2', 2)) + 2)].field_0
                        idx = ceil32(stor2[arg1][arg2].field_257) + 160
                        s = 0
                        while ceil32(stor2[arg1][arg2].field_257) + stor2[arg1][arg2].field_513 + 128 > idx:
                            mem[idx + 32] = stor[s + sha3((9 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor2', 2)) + 2)].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                    if ceil32(stor2[arg1][arg2].field_257) > stor2[arg1][arg2].field_257:
                        mem[ceil32(stor2[arg1][arg2].field_257) + ceil32(stor2[arg1][arg2].field_513) + stor2[arg1][arg2].field_257 + 480] = 0
                    mem[(2 * ceil32(stor2[arg1][arg2].field_257)) + ceil32(stor2[arg1][arg2].field_513) + 480] = stor2[arg1][arg2].field_513
                    mem[(2 * ceil32(stor2[arg1][arg2].field_257)) + ceil32(stor2[arg1][arg2].field_513) + 512 len ceil32(stor2[arg1][arg2].field_513)] = mem[ceil32(stor2[arg1][arg2].field_257) + 160 len ceil32(stor2[arg1][arg2].field_513)]
                    if ceil32(stor2[arg1][arg2].field_513) > stor2[arg1][arg2].field_513:
                        mem[(2 * ceil32(stor2[arg1][arg2].field_257)) + ceil32(stor2[arg1][arg2].field_513) + stor2[arg1][arg2].field_513 + 512] = 0
            return stor2[arg1][arg2].field_0, 
                   Array(len=2 * Mask(256, -1, stor2[arg1][arg2].field_257), data=mem[128 len ceil32(stor2[arg1][arg2].field_257)], 2 * Mask(256, -1, stor2[arg1][arg2].field_513), mem[ceil32(stor2[arg1][arg2].field_257) + 160 len ceil32(stor2[arg1][arg2].field_513)]),
                   ceil32(stor2[arg1][arg2].field_257) + 320,
                   stor2[arg1][arg2].field_768,
                   stor2[arg1][arg2].field_1024,
                   stor2[arg1][arg2].field_1280,
                   stor2[arg1][arg2].field_1536,
                   stor2[arg1][arg2].field_1792,
                   stor2[arg1][arg2].field_2048
        if stor2[arg1][arg2].field_512 == stor2[arg1][arg2].field_513 < 32:
            revert with 0, 34
        if stor2[arg1][arg2].field_512:
            if stor2[arg1][arg2].field_512 == stor2[arg1][arg2].field_513 < 32:
                revert with 0, 34
            if not stor2[arg1][arg2].field_513:
                if ceil32(stor2[arg1][arg2].field_257) > stor2[arg1][arg2].field_257:
                    mem[ceil32(stor2[arg1][arg2].field_257) + ceil32(stor2[arg1][arg2].field_513) + stor2[arg1][arg2].field_257 + 480] = 0
                mem[(2 * ceil32(stor2[arg1][arg2].field_257)) + ceil32(stor2[arg1][arg2].field_513) + 480] = stor2[arg1][arg2].field_513
                mem[(2 * ceil32(stor2[arg1][arg2].field_257)) + ceil32(stor2[arg1][arg2].field_513) + 512 len ceil32(stor2[arg1][arg2].field_513)] = mem[ceil32(stor2[arg1][arg2].field_257) + 160 len ceil32(stor2[arg1][arg2].field_513)]
                if ceil32(stor2[arg1][arg2].field_513) > stor2[arg1][arg2].field_513:
                    mem[(2 * ceil32(stor2[arg1][arg2].field_257)) + ceil32(stor2[arg1][arg2].field_513) + stor2[arg1][arg2].field_513 + 512] = 0
            else:
                if 31 >= stor2[arg1][arg2].field_513:
                    mem[ceil32(stor2[arg1][arg2].field_257) + 160] = 256 * stor2[arg1][arg2].field_520
                else:
                    mem[ceil32(stor2[arg1][arg2].field_257) + 160] = stor[sha3((9 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor2', 2)) + 2)].field_0
                    idx = ceil32(stor2[arg1][arg2].field_257) + 160
                    s = 0
                    while ceil32(stor2[arg1][arg2].field_257) + stor2[arg1][arg2].field_513 + 128 > idx:
                        mem[idx + 32] = stor[s + sha3((9 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor2', 2)) + 2)].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                if ceil32(stor2[arg1][arg2].field_257) > stor2[arg1][arg2].field_257:
                    mem[ceil32(stor2[arg1][arg2].field_257) + ceil32(stor2[arg1][arg2].field_513) + stor2[arg1][arg2].field_257 + 480] = 0
                mem[(2 * ceil32(stor2[arg1][arg2].field_257)) + ceil32(stor2[arg1][arg2].field_513) + 480] = stor2[arg1][arg2].field_513
                mem[(2 * ceil32(stor2[arg1][arg2].field_257)) + ceil32(stor2[arg1][arg2].field_513) + 512 len ceil32(stor2[arg1][arg2].field_513)] = mem[ceil32(stor2[arg1][arg2].field_257) + 160 len ceil32(stor2[arg1][arg2].field_513)]
                if ceil32(stor2[arg1][arg2].field_513) > stor2[arg1][arg2].field_513:
                    mem[(2 * ceil32(stor2[arg1][arg2].field_257)) + ceil32(stor2[arg1][arg2].field_513) + stor2[arg1][arg2].field_513 + 512] = 0
        else:
            if stor2[arg1][arg2].field_512 == stor2[arg1][arg2].field_513 < 32:
                revert with 0, 34
            if not stor2[arg1][arg2].field_513:
                if ceil32(stor2[arg1][arg2].field_257) > stor2[arg1][arg2].field_257:
                    mem[ceil32(stor2[arg1][arg2].field_257) + ceil32(stor2[arg1][arg2].field_513) + stor2[arg1][arg2].field_257 + 480] = 0
                mem[(2 * ceil32(stor2[arg1][arg2].field_257)) + ceil32(stor2[arg1][arg2].field_513) + 480] = stor2[arg1][arg2].field_513
                mem[(2 * ceil32(stor2[arg1][arg2].field_257)) + ceil32(stor2[arg1][arg2].field_513) + 512 len ceil32(stor2[arg1][arg2].field_513)] = mem[ceil32(stor2[arg1][arg2].field_257) + 160 len ceil32(stor2[arg1][arg2].field_513)]
                if ceil32(stor2[arg1][arg2].field_513) > stor2[arg1][arg2].field_513:
                    mem[(2 * ceil32(stor2[arg1][arg2].field_257)) + ceil32(stor2[arg1][arg2].field_513) + stor2[arg1][arg2].field_513 + 512] = 0
            else:
                if 31 >= stor2[arg1][arg2].field_513:
                    mem[ceil32(stor2[arg1][arg2].field_257) + 160] = 256 * stor2[arg1][arg2].field_520
                else:
                    mem[ceil32(stor2[arg1][arg2].field_257) + 160] = stor[sha3((9 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor2', 2)) + 2)].field_0
                    idx = ceil32(stor2[arg1][arg2].field_257) + 160
                    s = 0
                    while ceil32(stor2[arg1][arg2].field_257) + stor2[arg1][arg2].field_513 + 128 > idx:
                        mem[idx + 32] = stor[s + sha3((9 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor2', 2)) + 2)].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                if ceil32(stor2[arg1][arg2].field_257) > stor2[arg1][arg2].field_257:
                    mem[ceil32(stor2[arg1][arg2].field_257) + ceil32(stor2[arg1][arg2].field_513) + stor2[arg1][arg2].field_257 + 480] = 0
                mem[(2 * ceil32(stor2[arg1][arg2].field_257)) + ceil32(stor2[arg1][arg2].field_513) + 480] = stor2[arg1][arg2].field_513
                mem[(2 * ceil32(stor2[arg1][arg2].field_257)) + ceil32(stor2[arg1][arg2].field_513) + 512 len ceil32(stor2[arg1][arg2].field_513)] = mem[ceil32(stor2[arg1][arg2].field_257) + 160 len ceil32(stor2[arg1][arg2].field_513)]
                if ceil32(stor2[arg1][arg2].field_513) > stor2[arg1][arg2].field_513:
                    mem[(2 * ceil32(stor2[arg1][arg2].field_257)) + ceil32(stor2[arg1][arg2].field_513) + stor2[arg1][arg2].field_513 + 512] = 0
        return stor2[arg1][arg2].field_0, 
               Array(len=2 * Mask(256, -1, stor2[arg1][arg2].field_257), data=mem[128 len ceil32(stor2[arg1][arg2].field_257)], stor2[arg1][arg2].field_512, mem[ceil32(stor2[arg1][arg2].field_257) + 160 len ceil32(stor2[arg1][arg2].field_513)]),
               ceil32(stor2[arg1][arg2].field_257) + 320,
               stor2[arg1][arg2].field_768,
               stor2[arg1][arg2].field_1024,
               stor2[arg1][arg2].field_1280,
               stor2[arg1][arg2].field_1536,
               stor2[arg1][arg2].field_1792,
               stor2[arg1][arg2].field_2048
    if stor2[arg1][arg2].field_256 == stor2[arg1][arg2].field_257 < 32:
        revert with 0, 34
    if stor2[arg1][arg2].field_256:
        if stor2[arg1][arg2].field_256 == stor2[arg1][arg2].field_257 < 32:
            revert with 0, 34
        if stor2[arg1][arg2].field_257:
            if 31 >= stor2[arg1][arg2].field_257:
                mem[128] = 256 * stor2[arg1][arg2].field_264
            else:
                mem[128] = stor[sha3((9 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor2', 2)) + 1)].field_0
                idx = 128
                s = 0
                while stor2[arg1][arg2].field_257 + 96 > idx:
                    mem[idx + 32] = stor[s + sha3((9 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor2', 2)) + 1)].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    else:
        if stor2[arg1][arg2].field_256 == stor2[arg1][arg2].field_257 < 32:
            revert with 0, 34
        if stor2[arg1][arg2].field_257:
            if 31 >= stor2[arg1][arg2].field_257:
                mem[128] = 256 * stor2[arg1][arg2].field_264
            else:
                mem[128] = stor[sha3((9 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor2', 2)) + 1)].field_0
                idx = 128
                s = 0
                while stor2[arg1][arg2].field_257 + 96 > idx:
                    mem[idx + 32] = stor[s + sha3((9 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor2', 2)) + 1)].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    if stor2[arg1][arg2].field_512:
        if stor2[arg1][arg2].field_512 == stor2[arg1][arg2].field_513 < 32:
            revert with 0, 34
        if stor2[arg1][arg2].field_512:
            if stor2[arg1][arg2].field_512 == stor2[arg1][arg2].field_513 < 32:
                revert with 0, 34
            if not stor2[arg1][arg2].field_513:
                if ceil32(stor2[arg1][arg2].field_257) > stor2[arg1][arg2].field_257:
                    mem[ceil32(stor2[arg1][arg2].field_257) + ceil32(stor2[arg1][arg2].field_513) + stor2[arg1][arg2].field_257 + 480] = 0
                mem[(2 * ceil32(stor2[arg1][arg2].field_257)) + ceil32(stor2[arg1][arg2].field_513) + 480] = stor2[arg1][arg2].field_513
                mem[(2 * ceil32(stor2[arg1][arg2].field_257)) + ceil32(stor2[arg1][arg2].field_513) + 512 len ceil32(stor2[arg1][arg2].field_513)] = mem[ceil32(stor2[arg1][arg2].field_257) + 160 len ceil32(stor2[arg1][arg2].field_513)]
                if ceil32(stor2[arg1][arg2].field_513) > stor2[arg1][arg2].field_513:
                    mem[(2 * ceil32(stor2[arg1][arg2].field_257)) + ceil32(stor2[arg1][arg2].field_513) + stor2[arg1][arg2].field_513 + 512] = 0
            else:
                if 31 >= stor2[arg1][arg2].field_513:
                    mem[ceil32(stor2[arg1][arg2].field_257) + 160] = 256 * stor2[arg1][arg2].field_520
                else:
                    mem[ceil32(stor2[arg1][arg2].field_257) + 160] = stor[sha3((9 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor2', 2)) + 2)].field_0
                    idx = ceil32(stor2[arg1][arg2].field_257) + 160
                    s = 0
                    while ceil32(stor2[arg1][arg2].field_257) + stor2[arg1][arg2].field_513 + 128 > idx:
                        mem[idx + 32] = stor[s + sha3((9 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor2', 2)) + 2)].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                if ceil32(stor2[arg1][arg2].field_257) > stor2[arg1][arg2].field_257:
                    mem[ceil32(stor2[arg1][arg2].field_257) + ceil32(stor2[arg1][arg2].field_513) + stor2[arg1][arg2].field_257 + 480] = 0
                mem[(2 * ceil32(stor2[arg1][arg2].field_257)) + ceil32(stor2[arg1][arg2].field_513) + 480] = stor2[arg1][arg2].field_513
                mem[(2 * ceil32(stor2[arg1][arg2].field_257)) + ceil32(stor2[arg1][arg2].field_513) + 512 len ceil32(stor2[arg1][arg2].field_513)] = mem[ceil32(stor2[arg1][arg2].field_257) + 160 len ceil32(stor2[arg1][arg2].field_513)]
                if ceil32(stor2[arg1][arg2].field_513) > stor2[arg1][arg2].field_513:
                    mem[(2 * ceil32(stor2[arg1][arg2].field_257)) + ceil32(stor2[arg1][arg2].field_513) + stor2[arg1][arg2].field_513 + 512] = 0
        else:
            if stor2[arg1][arg2].field_512 == stor2[arg1][arg2].field_513 < 32:
                revert with 0, 34
            if not stor2[arg1][arg2].field_513:
                if ceil32(stor2[arg1][arg2].field_257) > stor2[arg1][arg2].field_257:
                    mem[ceil32(stor2[arg1][arg2].field_257) + ceil32(stor2[arg1][arg2].field_513) + stor2[arg1][arg2].field_257 + 480] = 0
                mem[(2 * ceil32(stor2[arg1][arg2].field_257)) + ceil32(stor2[arg1][arg2].field_513) + 480] = stor2[arg1][arg2].field_513
                mem[(2 * ceil32(stor2[arg1][arg2].field_257)) + ceil32(stor2[arg1][arg2].field_513) + 512 len ceil32(stor2[arg1][arg2].field_513)] = mem[ceil32(stor2[arg1][arg2].field_257) + 160 len ceil32(stor2[arg1][arg2].field_513)]
                if ceil32(stor2[arg1][arg2].field_513) > stor2[arg1][arg2].field_513:
                    mem[(2 * ceil32(stor2[arg1][arg2].field_257)) + ceil32(stor2[arg1][arg2].field_513) + stor2[arg1][arg2].field_513 + 512] = 0
            else:
                if 31 >= stor2[arg1][arg2].field_513:
                    mem[ceil32(stor2[arg1][arg2].field_257) + 160] = 256 * stor2[arg1][arg2].field_520
                else:
                    mem[ceil32(stor2[arg1][arg2].field_257) + 160] = stor[sha3((9 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor2', 2)) + 2)].field_0
                    idx = ceil32(stor2[arg1][arg2].field_257) + 160
                    s = 0
                    while ceil32(stor2[arg1][arg2].field_257) + stor2[arg1][arg2].field_513 + 128 > idx:
                        mem[idx + 32] = stor[s + sha3((9 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor2', 2)) + 2)].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                if ceil32(stor2[arg1][arg2].field_257) > stor2[arg1][arg2].field_257:
                    mem[ceil32(stor2[arg1][arg2].field_257) + ceil32(stor2[arg1][arg2].field_513) + stor2[arg1][arg2].field_257 + 480] = 0
                mem[(2 * ceil32(stor2[arg1][arg2].field_257)) + ceil32(stor2[arg1][arg2].field_513) + 480] = stor2[arg1][arg2].field_513
                mem[(2 * ceil32(stor2[arg1][arg2].field_257)) + ceil32(stor2[arg1][arg2].field_513) + 512 len ceil32(stor2[arg1][arg2].field_513)] = mem[ceil32(stor2[arg1][arg2].field_257) + 160 len ceil32(stor2[arg1][arg2].field_513)]
                if ceil32(stor2[arg1][arg2].field_513) > stor2[arg1][arg2].field_513:
                    mem[(2 * ceil32(stor2[arg1][arg2].field_257)) + ceil32(stor2[arg1][arg2].field_513) + stor2[arg1][arg2].field_513 + 512] = 0
        return stor2[arg1][arg2].field_0, 
               Array(len=stor2[arg1][arg2].field_256, data=mem[128 len ceil32(stor2[arg1][arg2].field_257)], 2 * Mask(256, -1, stor2[arg1][arg2].field_513), mem[ceil32(stor2[arg1][arg2].field_257) + 160 len ceil32(stor2[arg1][arg2].field_513)]),
               ceil32(stor2[arg1][arg2].field_257) + 320,
               stor2[arg1][arg2].field_768,
               stor2[arg1][arg2].field_1024,
               stor2[arg1][arg2].field_1280,
               stor2[arg1][arg2].field_1536,
               stor2[arg1][arg2].field_1792,
               stor2[arg1][arg2].field_2048
    if stor2[arg1][arg2].field_512 == stor2[arg1][arg2].field_513 < 32:
        revert with 0, 34
    if stor2[arg1][arg2].field_512:
        if stor2[arg1][arg2].field_512 == stor2[arg1][arg2].field_513 < 32:
            revert with 0, 34
        if not stor2[arg1][arg2].field_513:
            if ceil32(stor2[arg1][arg2].field_257) > stor2[arg1][arg2].field_257:
                mem[ceil32(stor2[arg1][arg2].field_257) + ceil32(stor2[arg1][arg2].field_513) + stor2[arg1][arg2].field_257 + 480] = 0
            mem[(2 * ceil32(stor2[arg1][arg2].field_257)) + ceil32(stor2[arg1][arg2].field_513) + 480] = stor2[arg1][arg2].field_513
            mem[(2 * ceil32(stor2[arg1][arg2].field_257)) + ceil32(stor2[arg1][arg2].field_513) + 512 len ceil32(stor2[arg1][arg2].field_513)] = mem[ceil32(stor2[arg1][arg2].field_257) + 160 len ceil32(stor2[arg1][arg2].field_513)]
            if ceil32(stor2[arg1][arg2].field_513) > stor2[arg1][arg2].field_513:
                mem[(2 * ceil32(stor2[arg1][arg2].field_257)) + ceil32(stor2[arg1][arg2].field_513) + stor2[arg1][arg2].field_513 + 512] = 0
        else:
            if 31 >= stor2[arg1][arg2].field_513:
                mem[ceil32(stor2[arg1][arg2].field_257) + 160] = 256 * stor2[arg1][arg2].field_520
            else:
                mem[ceil32(stor2[arg1][arg2].field_257) + 160] = stor[sha3((9 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor2', 2)) + 2)].field_0
                idx = ceil32(stor2[arg1][arg2].field_257) + 160
                s = 0
                while ceil32(stor2[arg1][arg2].field_257) + stor2[arg1][arg2].field_513 + 128 > idx:
                    mem[idx + 32] = stor[s + sha3((9 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor2', 2)) + 2)].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
            if ceil32(stor2[arg1][arg2].field_257) > stor2[arg1][arg2].field_257:
                mem[ceil32(stor2[arg1][arg2].field_257) + ceil32(stor2[arg1][arg2].field_513) + stor2[arg1][arg2].field_257 + 480] = 0
            mem[(2 * ceil32(stor2[arg1][arg2].field_257)) + ceil32(stor2[arg1][arg2].field_513) + 480] = stor2[arg1][arg2].field_513
            mem[(2 * ceil32(stor2[arg1][arg2].field_257)) + ceil32(stor2[arg1][arg2].field_513) + 512 len ceil32(stor2[arg1][arg2].field_513)] = mem[ceil32(stor2[arg1][arg2].field_257) + 160 len ceil32(stor2[arg1][arg2].field_513)]
            if ceil32(stor2[arg1][arg2].field_513) > stor2[arg1][arg2].field_513:
                mem[(2 * ceil32(stor2[arg1][arg2].field_257)) + ceil32(stor2[arg1][arg2].field_513) + stor2[arg1][arg2].field_513 + 512] = 0
    else:
        if stor2[arg1][arg2].field_512 == stor2[arg1][arg2].field_513 < 32:
            revert with 0, 34
        if not stor2[arg1][arg2].field_513:
            if ceil32(stor2[arg1][arg2].field_257) > stor2[arg1][arg2].field_257:
                mem[ceil32(stor2[arg1][arg2].field_257) + ceil32(stor2[arg1][arg2].field_513) + stor2[arg1][arg2].field_257 + 480] = 0
            mem[(2 * ceil32(stor2[arg1][arg2].field_257)) + ceil32(stor2[arg1][arg2].field_513) + 480] = stor2[arg1][arg2].field_513
            mem[(2 * ceil32(stor2[arg1][arg2].field_257)) + ceil32(stor2[arg1][arg2].field_513) + 512 len ceil32(stor2[arg1][arg2].field_513)] = mem[ceil32(stor2[arg1][arg2].field_257) + 160 len ceil32(stor2[arg1][arg2].field_513)]
            if ceil32(stor2[arg1][arg2].field_513) > stor2[arg1][arg2].field_513:
                mem[(2 * ceil32(stor2[arg1][arg2].field_257)) + ceil32(stor2[arg1][arg2].field_513) + stor2[arg1][arg2].field_513 + 512] = 0
        else:
            if 31 >= stor2[arg1][arg2].field_513:
                mem[ceil32(stor2[arg1][arg2].field_257) + 160] = 256 * stor2[arg1][arg2].field_520
            else:
                mem[ceil32(stor2[arg1][arg2].field_257) + 160] = stor[sha3((9 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor2', 2)) + 2)].field_0
                idx = ceil32(stor2[arg1][arg2].field_257) + 160
                s = 0
                while ceil32(stor2[arg1][arg2].field_257) + stor2[arg1][arg2].field_513 + 128 > idx:
                    mem[idx + 32] = stor[s + sha3((9 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor2', 2)) + 2)].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
            if ceil32(stor2[arg1][arg2].field_257) > stor2[arg1][arg2].field_257:
                mem[ceil32(stor2[arg1][arg2].field_257) + ceil32(stor2[arg1][arg2].field_513) + stor2[arg1][arg2].field_257 + 480] = 0
            mem[(2 * ceil32(stor2[arg1][arg2].field_257)) + ceil32(stor2[arg1][arg2].field_513) + 480] = stor2[arg1][arg2].field_513
            mem[(2 * ceil32(stor2[arg1][arg2].field_257)) + ceil32(stor2[arg1][arg2].field_513) + 512 len ceil32(stor2[arg1][arg2].field_513)] = mem[ceil32(stor2[arg1][arg2].field_257) + 160 len ceil32(stor2[arg1][arg2].field_513)]
            if ceil32(stor2[arg1][arg2].field_513) > stor2[arg1][arg2].field_513:
                mem[(2 * ceil32(stor2[arg1][arg2].field_257)) + ceil32(stor2[arg1][arg2].field_513) + stor2[arg1][arg2].field_513 + 512] = 0
    return stor2[arg1][arg2].field_0, 
           Array(len=stor2[arg1][arg2].field_256, data=mem[128 len ceil32(stor2[arg1][arg2].field_257)], stor2[arg1][arg2].field_512, mem[ceil32(stor2[arg1][arg2].field_257) + 160 len ceil32(stor2[arg1][arg2].field_513)]),
           ceil32(stor2[arg1][arg2].field_257) + 320,
           stor2[arg1][arg2].field_768,
           stor2[arg1][arg2].field_1024,
           stor2[arg1][arg2].field_1280,
           stor2[arg1][arg2].field_1536,
           stor2[arg1][arg2].field_1792,
           stor2[arg1][arg2].field_2048
}



}
