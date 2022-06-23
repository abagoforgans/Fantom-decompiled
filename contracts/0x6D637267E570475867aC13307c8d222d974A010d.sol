contract main {




// =====================  Runtime code  =====================


uint256 denominator;

function denominator() payable {
    return denominator
}

function _fallback() payable {
    revert
}

function sub_ec0a63d8(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require ext_code.size(address(arg1))
    staticcall address(arg1).getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    return ext_call.return_data[18 len 14], 
           ext_call.return_data[32] << 144,
           ext_call.return_data[64] << 224,
           block.number,
           block.timestamp
}

function sub_7b3d5567(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == arg2
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    if arg3.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg3.length)) + 97 > test266151307() or ceil32(ceil32(arg3.length)) + 97 < 96:
        revert with 'NH{q', 65
    require arg3 + arg3.length + 36 <= calldata.size
    require ext_code.size(address(arg1))
    call address(arg1).quoteExactInput(bytes arg1, uint256 arg2) with:
         gas gas_remaining wei
        args Array(len=arg3.length, data=arg3[all]), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return ext_call.return_data[0]
}

function sub_820e4eaa(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == arg2
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    if arg3.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg3.length)) + 97 > test266151307() or ceil32(ceil32(arg3.length)) + 97 < 96:
        revert with 'NH{q', 65
    require arg3 + arg3.length + 36 <= calldata.size
    require ext_code.size(address(arg1))
    call address(arg1).quoteExactOutput(bytes arg1, uint256 arg2) with:
         gas gas_remaining wei
        args Array(len=arg3.length, data=arg3[all]), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return ext_call.return_data[0]
}

function sub_6cc6580f(?) payable {
    require calldata.size - 4 >= 96
    require cd[4] == address(cd[4])
    require cd[36] == cd[36]
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    if ('cd', 68).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 68).length) + 97 > test266151307() or floor32(('cd', 68).length) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = ('cd', 68).length
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    idx = 0
    s = cd[68] + 36
    t = 128
    while idx < ('cd', 68).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[floor32(('cd', 68).length) + 97] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
    mem[floor32(('cd', 68).length) + 101] = cd[36]
    mem[floor32(('cd', 68).length) + 133] = 64
    mem[floor32(('cd', 68).length) + 165] = ('cd', 68).length
    idx = 0
    s = 128
    t = floor32(('cd', 68).length) + 197
    while idx < ('cd', 68).length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(address(cd[4]))
    staticcall address(cd[4]).getAmountsIn(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args cd[36], Array(len=('cd', 68).length, data=mem[floor32(('cd', 68).length) + 197 len 32 * ('cd', 68).length])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[floor32(('cd', 68).length) + 97 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = floor32(('cd', 68).length) + ceil32(return_data.size) + 97
    require return_data.size >= 32
    _31 = mem[floor32(('cd', 68).length) + 97 len 4], Mask(224, 32, cd[36]) >> 32
    require mem[floor32(('cd', 68).length) + 97 len 4], Mask(224, 32, cd[36]) >> 32 <= test266151307()
    require floor32(('cd', 68).length) + mem[floor32(('cd', 68).length) + 97 len 4], Mask(224, 32, cd[36]) >> 32 + 128 < floor32(('cd', 68).length) + return_data.size + 97
    _32 = mem[floor32(('cd', 68).length) + mem[floor32(('cd', 68).length) + 97 len 4], Mask(224, 32, cd[36]) >> 32 + 97]
    if mem[floor32(('cd', 68).length) + mem[floor32(('cd', 68).length) + 97 len 4], Mask(224, 32, cd[36]) >> 32 + 97] > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 68).length) + ceil32(return_data.size) + floor32(mem[floor32(('cd', 68).length) + mem[floor32(('cd', 68).length) + 97 len 4], Mask(224, 32, cd[36]) >> 32 + 97]) + 98 > test266151307() or floor32(mem[floor32(('cd', 68).length) + mem[floor32(('cd', 68).length) + 97 len 4], Mask(224, 32, cd[36]) >> 32 + 97]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = floor32(('cd', 68).length) + ceil32(return_data.size) + floor32(mem[floor32(('cd', 68).length) + mem[floor32(('cd', 68).length) + 97 len 4], Mask(224, 32, cd[36]) >> 32 + 97]) + 98
    mem[floor32(('cd', 68).length) + ceil32(return_data.size) + 97] = mem[floor32(('cd', 68).length) + mem[floor32(('cd', 68).length) + 97 len 4], Mask(224, 32, cd[36]) >> 32 + 97]
    require _31 + (32 * _32) + 32 <= return_data.size
    idx = 0
    s = floor32(('cd', 68).length) + _31 + 129
    t = floor32(('cd', 68).length) + ceil32(return_data.size) + 129
    while idx < _32:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if 0 >= _32:
        revert with 'NH{q', 50
    mem[mem[64]] = mem[floor32(('cd', 68).length) + ceil32(return_data.size) + 129]
    return memory
      from mem[64]
       len 32
}

function sub_f11b1297(?) payable {
    require calldata.size - 4 >= 96
    require cd[4] == address(cd[4])
    require cd[36] == cd[36]
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    if ('cd', 68).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 68).length) + 97 > test266151307() or floor32(('cd', 68).length) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = ('cd', 68).length
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    idx = 0
    s = cd[68] + 36
    t = 128
    while idx < ('cd', 68).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[floor32(('cd', 68).length) + 97] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[floor32(('cd', 68).length) + 101] = cd[36]
    mem[floor32(('cd', 68).length) + 133] = 64
    mem[floor32(('cd', 68).length) + 165] = ('cd', 68).length
    idx = 0
    s = 128
    t = floor32(('cd', 68).length) + 197
    while idx < ('cd', 68).length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(address(cd[4]))
    staticcall address(cd[4]).getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args cd[36], Array(len=('cd', 68).length, data=mem[floor32(('cd', 68).length) + 197 len 32 * ('cd', 68).length])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[floor32(('cd', 68).length) + 97 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = floor32(('cd', 68).length) + ceil32(return_data.size) + 97
    require return_data.size >= 32
    _33 = mem[floor32(('cd', 68).length) + 97 len 4], Mask(224, 32, cd[36]) >> 32
    require mem[floor32(('cd', 68).length) + 97 len 4], Mask(224, 32, cd[36]) >> 32 <= test266151307()
    require floor32(('cd', 68).length) + mem[floor32(('cd', 68).length) + 97 len 4], Mask(224, 32, cd[36]) >> 32 + 128 < floor32(('cd', 68).length) + return_data.size + 97
    _34 = mem[floor32(('cd', 68).length) + mem[floor32(('cd', 68).length) + 97 len 4], Mask(224, 32, cd[36]) >> 32 + 97]
    if mem[floor32(('cd', 68).length) + mem[floor32(('cd', 68).length) + 97 len 4], Mask(224, 32, cd[36]) >> 32 + 97] > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 68).length) + ceil32(return_data.size) + floor32(mem[floor32(('cd', 68).length) + mem[floor32(('cd', 68).length) + 97 len 4], Mask(224, 32, cd[36]) >> 32 + 97]) + 98 > test266151307() or floor32(mem[floor32(('cd', 68).length) + mem[floor32(('cd', 68).length) + 97 len 4], Mask(224, 32, cd[36]) >> 32 + 97]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = floor32(('cd', 68).length) + ceil32(return_data.size) + floor32(mem[floor32(('cd', 68).length) + mem[floor32(('cd', 68).length) + 97 len 4], Mask(224, 32, cd[36]) >> 32 + 97]) + 98
    mem[floor32(('cd', 68).length) + ceil32(return_data.size) + 97] = mem[floor32(('cd', 68).length) + mem[floor32(('cd', 68).length) + 97 len 4], Mask(224, 32, cd[36]) >> 32 + 97]
    require _33 + (32 * _34) + 32 <= return_data.size
    idx = 0
    s = floor32(('cd', 68).length) + _33 + 129
    t = floor32(('cd', 68).length) + ceil32(return_data.size) + 129
    while idx < _34:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if _34 < 1:
        revert with 'NH{q', 17
    if _34 - 1 >= _34:
        revert with 'NH{q', 50
    return memory
      from (32 * _34 - 1) + floor32(('cd', 68).length) + ceil32(return_data.size) + 129
       len 32
}

function sub_3047c1a7(?) payable {
    require calldata.size - 4 >= 192
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require arg4 == arg4
    require arg5 == arg5
    require arg6 == arg6
    if arg6 > 50:
        revert with 0, 'max loop'
    mem[96] = 2
    mem[192] = 2
    mem[128] = address(arg3)
    mem[160] = address(arg2)
    mem[224] = address(arg2)
    mem[256] = address(arg3)
    if arg6 and 2 > -1 / arg6:
        revert with 'NH{q', 17
    if 2 * arg6 > test266151307():
        revert with 'NH{q', 65
    mem[288] = 2 * arg6
    if not uint255(arg6):
        if arg6 and 2 > -1 / arg6:
            revert with 'NH{q', 17
        if 2 * arg6 > test266151307():
            revert with 'NH{q', 65
        mem[(64 * arg6) + 320] = 2 * arg6
        mem[64] = (128 * arg6) + 352
        if not uint255(arg6):
            idx = 0
            s = arg4
            while idx < arg6:
                mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = s
                mem[mem[64] + 36] = 64
                mem[mem[64] + 68] = mem[96]
                t = 0
                u = 128
                v = mem[64] + 100
                while t < mem[96]:
                    mem[v] = mem[u + 12 len 20]
                    t = t + 1
                    u = u + 32
                    v = v + 32
                    continue 
                require ext_code.size(address(arg1))
                staticcall address(arg1).getAmountsIn(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args s, 64, mem[mem[64] + 68 len (32 * mem[96]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _400 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _404 = mem[_400]
                require mem[_400] <= test266151307()
                require _400 + mem[_400] + 31 < _400 + return_data.size
                _408 = mem[_400 + mem[_400]]
                if mem[_400 + mem[_400]] > test266151307():
                    revert with 'NH{q', 65
                if _400 + ceil32(return_data.size) + floor32(mem[_400 + mem[_400]]) + 1 > test266151307() or floor32(mem[_400 + mem[_400]]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = _400 + ceil32(return_data.size) + floor32(mem[_400 + mem[_400]]) + 1
                mem[_400 + ceil32(return_data.size)] = _408
                require _404 + (32 * _408) + 32 <= return_data.size
                t = 0
                u = _400 + _404 + 32
                v = _400 + ceil32(return_data.size) + 32
                while t < _408:
                    require mem[u] == mem[u]
                    mem[v] = mem[u]
                    t = t + 1
                    u = u + 32
                    v = v + 32
                    continue 
                if 0 >= _408:
                    revert with 'NH{q', 50
                if idx and 2 > -1 / idx:
                    revert with 'NH{q', 17
                if 2 * idx >= mem[288]:
                    revert with 'NH{q', 50
                mem[(64 * idx) + 320] = mem[_400 + ceil32(return_data.size) + 32]
                mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = s
                mem[mem[64] + 36] = 64
                _528 = mem[192]
                mem[mem[64] + 68] = mem[192]
                t = 0
                u = 224
                v = mem[64] + 100
                while t < _528:
                    mem[v] = mem[u + 12 len 20]
                    t = t + 1
                    u = u + 32
                    v = v + 32
                    continue 
                require ext_code.size(address(arg1))
                staticcall address(arg1).getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args s, 64, mem[mem[64] + 68 len (32 * _528) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _592 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _596 = mem[_592]
                require mem[_592] <= test266151307()
                require _592 + mem[_592] + 31 < _592 + return_data.size
                _600 = mem[_592 + mem[_592]]
                if mem[_592 + mem[_592]] > test266151307():
                    revert with 'NH{q', 65
                if _592 + ceil32(return_data.size) + floor32(mem[_592 + mem[_592]]) + 1 > test266151307() or floor32(mem[_592 + mem[_592]]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = _592 + ceil32(return_data.size) + floor32(mem[_592 + mem[_592]]) + 1
                mem[_592 + ceil32(return_data.size)] = _600
                require _596 + (32 * _600) + 32 <= return_data.size
                t = 0
                u = _592 + _596 + 32
                v = _592 + ceil32(return_data.size) + 32
                while t < _600:
                    require mem[u] == mem[u]
                    mem[v] = mem[u]
                    t = t + 1
                    u = u + 32
                    v = v + 32
                    continue 
                if _600 < 1:
                    revert with 'NH{q', 17
                if _600 - 1 >= _600:
                    revert with 'NH{q', 50
                if idx and 2 > -1 / idx:
                    revert with 'NH{q', 17
                if 2 * idx >= mem[(64 * arg6) + 320]:
                    revert with 'NH{q', 50
                mem[(64 * idx) + (64 * arg6) + 352] = mem[(32 * _600 - 1) + _592 + ceil32(return_data.size) + 32]
                if idx and 2 > -1 / idx:
                    revert with 'NH{q', 17
                if 2 * idx > -2:
                    revert with 'NH{q', 17
                if (2 * idx) + 1 >= mem[288]:
                    revert with 'NH{q', 50
                mem[(32 * (2 * idx) + 1) + 320] = s
                if idx and 2 > -1 / idx:
                    revert with 'NH{q', 17
                if 2 * idx > -2:
                    revert with 'NH{q', 17
                if (2 * idx) + 1 >= mem[(64 * arg6) + 320]:
                    revert with 'NH{q', 50
                mem[(32 * (2 * idx) + 1) + (64 * arg6) + 352] = s
                if s and arg5 > -1 / s:
                    revert with 'NH{q', 17
                if not denominator:
                    revert with 'NH{q', 18
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = s * arg5 / denominator
                continue 
            mem[mem[64]] = 128
            _260 = mem[288]
            mem[mem[64] + 128] = mem[288]
            mem[mem[64] + 160 len 32 * _260] = mem[320 len 32 * _260]
            mem[mem[64] + 32] = (32 * _260) + 160
            _396 = mem[(64 * arg6) + 320]
            mem[mem[64] + (32 * _260) + 160] = mem[(64 * arg6) + 320]
            mem[mem[64] + (32 * _260) + 192 len 32 * _396] = mem[(64 * arg6) + 352 len 32 * _396]
            mem[mem[64] + 64] = block.number
            mem[mem[64] + 96] = block.timestamp
            return 128, (32 * _260) + 160, block.number, block.timestamp, mem[mem[64] + 128 len (32 * _260) + (32 * _396) + 64]
        mem[(64 * arg6) + 352 len 64 * arg6] = call.data[calldata.size len 64 * arg6]
        idx = 0
        s = arg4
        while idx < arg6:
            mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = s
            mem[mem[64] + 36] = 64
            mem[mem[64] + 68] = mem[96]
            t = 0
            u = 128
            v = mem[64] + 100
            while t < mem[96]:
                mem[v] = mem[u + 12 len 20]
                t = t + 1
                u = u + 32
                v = v + 32
                continue 
            require ext_code.size(address(arg1))
            staticcall address(arg1).getAmountsIn(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args s, 64, mem[mem[64] + 68 len (32 * mem[96]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _401 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _405 = mem[_401]
            require mem[_401] <= test266151307()
            require _401 + mem[_401] + 31 < _401 + return_data.size
            _409 = mem[_401 + mem[_401]]
            if mem[_401 + mem[_401]] > test266151307():
                revert with 'NH{q', 65
            if _401 + ceil32(return_data.size) + floor32(mem[_401 + mem[_401]]) + 1 > test266151307() or floor32(mem[_401 + mem[_401]]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = _401 + ceil32(return_data.size) + floor32(mem[_401 + mem[_401]]) + 1
            mem[_401 + ceil32(return_data.size)] = _409
            require _405 + (32 * _409) + 32 <= return_data.size
            t = 0
            u = _401 + _405 + 32
            v = _401 + ceil32(return_data.size) + 32
            while t < _409:
                require mem[u] == mem[u]
                mem[v] = mem[u]
                t = t + 1
                u = u + 32
                v = v + 32
                continue 
            if 0 >= _409:
                revert with 'NH{q', 50
            if idx and 2 > -1 / idx:
                revert with 'NH{q', 17
            if 2 * idx >= mem[288]:
                revert with 'NH{q', 50
            mem[(64 * idx) + 320] = mem[_401 + ceil32(return_data.size) + 32]
            mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = s
            mem[mem[64] + 36] = 64
            _529 = mem[192]
            mem[mem[64] + 68] = mem[192]
            t = 0
            u = 224
            v = mem[64] + 100
            while t < _529:
                mem[v] = mem[u + 12 len 20]
                t = t + 1
                u = u + 32
                v = v + 32
                continue 
            require ext_code.size(address(arg1))
            staticcall address(arg1).getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args s, 64, mem[mem[64] + 68 len (32 * _529) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _593 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _597 = mem[_593]
            require mem[_593] <= test266151307()
            require _593 + mem[_593] + 31 < _593 + return_data.size
            _601 = mem[_593 + mem[_593]]
            if mem[_593 + mem[_593]] > test266151307():
                revert with 'NH{q', 65
            if _593 + ceil32(return_data.size) + floor32(mem[_593 + mem[_593]]) + 1 > test266151307() or floor32(mem[_593 + mem[_593]]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = _593 + ceil32(return_data.size) + floor32(mem[_593 + mem[_593]]) + 1
            mem[_593 + ceil32(return_data.size)] = _601
            require _597 + (32 * _601) + 32 <= return_data.size
            t = 0
            u = _593 + _597 + 32
            v = _593 + ceil32(return_data.size) + 32
            while t < _601:
                require mem[u] == mem[u]
                mem[v] = mem[u]
                t = t + 1
                u = u + 32
                v = v + 32
                continue 
            if _601 < 1:
                revert with 'NH{q', 17
            if _601 - 1 >= _601:
                revert with 'NH{q', 50
            if idx and 2 > -1 / idx:
                revert with 'NH{q', 17
            if 2 * idx >= mem[(64 * arg6) + 320]:
                revert with 'NH{q', 50
            mem[(64 * idx) + (64 * arg6) + 352] = mem[(32 * _601 - 1) + _593 + ceil32(return_data.size) + 32]
            if idx and 2 > -1 / idx:
                revert with 'NH{q', 17
            if 2 * idx > -2:
                revert with 'NH{q', 17
            if (2 * idx) + 1 >= mem[288]:
                revert with 'NH{q', 50
            mem[(32 * (2 * idx) + 1) + 320] = s
            if idx and 2 > -1 / idx:
                revert with 'NH{q', 17
            if 2 * idx > -2:
                revert with 'NH{q', 17
            if (2 * idx) + 1 >= mem[(64 * arg6) + 320]:
                revert with 'NH{q', 50
            mem[(32 * (2 * idx) + 1) + (64 * arg6) + 352] = s
            if s and arg5 > -1 / s:
                revert with 'NH{q', 17
            if not denominator:
                revert with 'NH{q', 18
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s * arg5 / denominator
            continue 
        mem[mem[64]] = 128
        _261 = mem[288]
        mem[mem[64] + 128] = mem[288]
        mem[mem[64] + 160 len 32 * _261] = mem[320 len 32 * _261]
        mem[mem[64] + 32] = (32 * _261) + 160
        _397 = mem[(64 * arg6) + 320]
        mem[mem[64] + (32 * _261) + 160] = mem[(64 * arg6) + 320]
        mem[mem[64] + (32 * _261) + 192 len 32 * _397] = mem[(64 * arg6) + 352 len 32 * _397]
        mem[mem[64] + 64] = block.number
        mem[mem[64] + 96] = block.timestamp
        return 128, (32 * _261) + 160, block.number, block.timestamp, mem[mem[64] + 128 len (32 * _261) + (32 * _397) + 64]
    mem[320 len 64 * arg6] = call.data[calldata.size len 64 * arg6]
    if arg6 and 2 > -1 / arg6:
        revert with 'NH{q', 17
    if 2 * arg6 > test266151307():
        revert with 'NH{q', 65
    mem[(64 * arg6) + 320] = 2 * arg6
    mem[64] = (128 * arg6) + 352
    if not uint255(arg6):
        idx = 0
        s = arg4
        while idx < arg6:
            mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = s
            mem[mem[64] + 36] = 64
            mem[mem[64] + 68] = mem[96]
            t = 0
            u = 128
            v = mem[64] + 100
            while t < mem[96]:
                mem[v] = mem[u + 12 len 20]
                t = t + 1
                u = u + 32
                v = v + 32
                continue 
            require ext_code.size(address(arg1))
            staticcall address(arg1).getAmountsIn(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args s, 64, mem[mem[64] + 68 len (32 * mem[96]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _402 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _406 = mem[_402]
            require mem[_402] <= test266151307()
            require _402 + mem[_402] + 31 < _402 + return_data.size
            _410 = mem[_402 + mem[_402]]
            if mem[_402 + mem[_402]] > test266151307():
                revert with 'NH{q', 65
            if _402 + ceil32(return_data.size) + floor32(mem[_402 + mem[_402]]) + 1 > test266151307() or floor32(mem[_402 + mem[_402]]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = _402 + ceil32(return_data.size) + floor32(mem[_402 + mem[_402]]) + 1
            mem[_402 + ceil32(return_data.size)] = _410
            require _406 + (32 * _410) + 32 <= return_data.size
            t = 0
            u = _402 + _406 + 32
            v = _402 + ceil32(return_data.size) + 32
            while t < _410:
                require mem[u] == mem[u]
                mem[v] = mem[u]
                t = t + 1
                u = u + 32
                v = v + 32
                continue 
            if 0 >= _410:
                revert with 'NH{q', 50
            if idx and 2 > -1 / idx:
                revert with 'NH{q', 17
            if 2 * idx >= mem[288]:
                revert with 'NH{q', 50
            mem[(64 * idx) + 320] = mem[_402 + ceil32(return_data.size) + 32]
            mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = s
            mem[mem[64] + 36] = 64
            _530 = mem[192]
            mem[mem[64] + 68] = mem[192]
            t = 0
            u = 224
            v = mem[64] + 100
            while t < _530:
                mem[v] = mem[u + 12 len 20]
                t = t + 1
                u = u + 32
                v = v + 32
                continue 
            require ext_code.size(address(arg1))
            staticcall address(arg1).getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args s, 64, mem[mem[64] + 68 len (32 * _530) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _594 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _598 = mem[_594]
            require mem[_594] <= test266151307()
            require _594 + mem[_594] + 31 < _594 + return_data.size
            _602 = mem[_594 + mem[_594]]
            if mem[_594 + mem[_594]] > test266151307():
                revert with 'NH{q', 65
            if _594 + ceil32(return_data.size) + floor32(mem[_594 + mem[_594]]) + 1 > test266151307() or floor32(mem[_594 + mem[_594]]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = _594 + ceil32(return_data.size) + floor32(mem[_594 + mem[_594]]) + 1
            mem[_594 + ceil32(return_data.size)] = _602
            require _598 + (32 * _602) + 32 <= return_data.size
            t = 0
            u = _594 + _598 + 32
            v = _594 + ceil32(return_data.size) + 32
            while t < _602:
                require mem[u] == mem[u]
                mem[v] = mem[u]
                t = t + 1
                u = u + 32
                v = v + 32
                continue 
            if _602 < 1:
                revert with 'NH{q', 17
            if _602 - 1 >= _602:
                revert with 'NH{q', 50
            if idx and 2 > -1 / idx:
                revert with 'NH{q', 17
            if 2 * idx >= mem[(64 * arg6) + 320]:
                revert with 'NH{q', 50
            mem[(64 * idx) + (64 * arg6) + 352] = mem[(32 * _602 - 1) + _594 + ceil32(return_data.size) + 32]
            if idx and 2 > -1 / idx:
                revert with 'NH{q', 17
            if 2 * idx > -2:
                revert with 'NH{q', 17
            if (2 * idx) + 1 >= mem[288]:
                revert with 'NH{q', 50
            mem[(32 * (2 * idx) + 1) + 320] = s
            if idx and 2 > -1 / idx:
                revert with 'NH{q', 17
            if 2 * idx > -2:
                revert with 'NH{q', 17
            if (2 * idx) + 1 >= mem[(64 * arg6) + 320]:
                revert with 'NH{q', 50
            mem[(32 * (2 * idx) + 1) + (64 * arg6) + 352] = s
            if s and arg5 > -1 / s:
                revert with 'NH{q', 17
            if not denominator:
                revert with 'NH{q', 18
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s * arg5 / denominator
            continue 
        mem[mem[64]] = 128
        _262 = mem[288]
        mem[mem[64] + 128] = mem[288]
        mem[mem[64] + 160 len 32 * _262] = mem[320 len 32 * _262]
        mem[mem[64] + 32] = (32 * _262) + 160
        _398 = mem[(64 * arg6) + 320]
        mem[mem[64] + (32 * _262) + 160] = mem[(64 * arg6) + 320]
        mem[mem[64] + (32 * _262) + 192 len 32 * _398] = mem[(64 * arg6) + 352 len 32 * _398]
        mem[mem[64] + 64] = block.number
        mem[mem[64] + 96] = block.timestamp
        return 128, (32 * _262) + 160, block.number, block.timestamp, mem[mem[64] + 128 len (32 * _262) + (32 * _398) + 64]
    mem[(64 * arg6) + 352 len 64 * arg6] = call.data[calldata.size len 64 * arg6]
    idx = 0
    s = arg4
    while idx < arg6:
        mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = s
        mem[mem[64] + 36] = 64
        mem[mem[64] + 68] = mem[96]
        t = 0
        u = 128
        v = mem[64] + 100
        while t < mem[96]:
            mem[v] = mem[u + 12 len 20]
            t = t + 1
            u = u + 32
            v = v + 32
            continue 
        require ext_code.size(address(arg1))
        staticcall address(arg1).getAmountsIn(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args s, 64, mem[mem[64] + 68 len (32 * mem[96]) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _403 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _407 = mem[_403]
        require mem[_403] <= test266151307()
        require _403 + mem[_403] + 31 < _403 + return_data.size
        _411 = mem[_403 + mem[_403]]
        if mem[_403 + mem[_403]] > test266151307():
            revert with 'NH{q', 65
        if _403 + ceil32(return_data.size) + floor32(mem[_403 + mem[_403]]) + 1 > test266151307() or floor32(mem[_403 + mem[_403]]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = _403 + ceil32(return_data.size) + floor32(mem[_403 + mem[_403]]) + 1
        mem[_403 + ceil32(return_data.size)] = _411
        require _407 + (32 * _411) + 32 <= return_data.size
        t = 0
        u = _403 + _407 + 32
        v = _403 + ceil32(return_data.size) + 32
        while t < _411:
            require mem[u] == mem[u]
            mem[v] = mem[u]
            t = t + 1
            u = u + 32
            v = v + 32
            continue 
        if 0 >= _411:
            revert with 'NH{q', 50
        if idx and 2 > -1 / idx:
            revert with 'NH{q', 17
        if 2 * idx >= mem[288]:
            revert with 'NH{q', 50
        mem[(64 * idx) + 320] = mem[_403 + ceil32(return_data.size) + 32]
        mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = s
        mem[mem[64] + 36] = 64
        _531 = mem[192]
        mem[mem[64] + 68] = mem[192]
        t = 0
        u = 224
        v = mem[64] + 100
        while t < _531:
            mem[v] = mem[u + 12 len 20]
            t = t + 1
            u = u + 32
            v = v + 32
            continue 
        require ext_code.size(address(arg1))
        staticcall address(arg1).getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args s, 64, mem[mem[64] + 68 len (32 * _531) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _595 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _599 = mem[_595]
        require mem[_595] <= test266151307()
        require _595 + mem[_595] + 31 < _595 + return_data.size
        _603 = mem[_595 + mem[_595]]
        if mem[_595 + mem[_595]] > test266151307():
            revert with 'NH{q', 65
        if _595 + ceil32(return_data.size) + floor32(mem[_595 + mem[_595]]) + 1 > test266151307() or floor32(mem[_595 + mem[_595]]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = _595 + ceil32(return_data.size) + floor32(mem[_595 + mem[_595]]) + 1
        mem[_595 + ceil32(return_data.size)] = _603
        require _599 + (32 * _603) + 32 <= return_data.size
        t = 0
        u = _595 + _599 + 32
        v = _595 + ceil32(return_data.size) + 32
        while t < _603:
            require mem[u] == mem[u]
            mem[v] = mem[u]
            t = t + 1
            u = u + 32
            v = v + 32
            continue 
        if _603 < 1:
            revert with 'NH{q', 17
        if _603 - 1 >= _603:
            revert with 'NH{q', 50
        if idx and 2 > -1 / idx:
            revert with 'NH{q', 17
        if 2 * idx >= mem[(64 * arg6) + 320]:
            revert with 'NH{q', 50
        mem[(64 * idx) + (64 * arg6) + 352] = mem[(32 * _603 - 1) + _595 + ceil32(return_data.size) + 32]
        if idx and 2 > -1 / idx:
            revert with 'NH{q', 17
        if 2 * idx > -2:
            revert with 'NH{q', 17
        if (2 * idx) + 1 >= mem[288]:
            revert with 'NH{q', 50
        mem[(32 * (2 * idx) + 1) + 320] = s
        if idx and 2 > -1 / idx:
            revert with 'NH{q', 17
        if 2 * idx > -2:
            revert with 'NH{q', 17
        if (2 * idx) + 1 >= mem[(64 * arg6) + 320]:
            revert with 'NH{q', 50
        mem[(32 * (2 * idx) + 1) + (64 * arg6) + 352] = s
        if s and arg5 > -1 / s:
            revert with 'NH{q', 17
        if not denominator:
            revert with 'NH{q', 18
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = s * arg5 / denominator
        continue 
    mem[mem[64]] = 128
    _263 = mem[288]
    mem[mem[64] + 128] = mem[288]
    mem[mem[64] + 160 len 32 * _263] = mem[320 len 32 * _263]
    mem[mem[64] + 32] = (32 * _263) + 160
    _399 = mem[(64 * arg6) + 320]
    mem[mem[64] + (32 * _263) + 160] = mem[(64 * arg6) + 320]
    mem[mem[64] + (32 * _263) + 192 len 32 * _399] = mem[(64 * arg6) + 352 len 32 * _399]
    mem[mem[64] + 64] = block.number
    mem[mem[64] + 96] = block.timestamp
    return 128, (32 * _263) + 160, block.number, block.timestamp, mem[mem[64] + 128 len (32 * _263) + (32 * _399) + 64]
}

function sub_12c15f3a(?) payable {
    require calldata.size - 4 >= 224
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require arg4 == arg4 % 16777216
    require arg5 == arg5
    require arg6 == arg6
    require arg7 == arg7
    if arg7 > 50:
        revert with 0, 'max loop'
    mem[128] = address(arg2)
    mem[148] = arg4 << 232
    mem[151] = address(arg3)
    mem[96] = 43
    mem[203] = address(arg2)
    mem[223] = arg4 << 232
    mem[226] = address(arg3)
    mem[171] = 43
    if arg7 and 2 > -1 / arg7:
        revert with 'NH{q', 17
    if 2 * arg7 > test266151307():
        revert with 'NH{q', 65
    mem[246] = 2 * arg7
    if not uint255(arg7):
        if arg7 and 2 > -1 / arg7:
            revert with 'NH{q', 17
        if 2 * arg7 > test266151307():
            revert with 'NH{q', 65
        mem[(64 * arg7) + 278] = 2 * arg7
        mem[64] = (128 * arg7) + 310
        if not uint255(arg7):
            idx = 0
            s = arg5
            while idx < arg7:
                mem[mem[64]] = 0x2f80bb1d00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 64
                mem[mem[64] + 68] = mem[96]
                t = 0
                while t < mem[96]:
                    mem[mem[64] + t + 100] = mem[t + 128]
                    t = t + 32
                    continue 
                if ceil32(mem[96]) <= mem[96]:
                    mem[mem[64] + 36] = s
                    require ext_code.size(address(arg1))
                    call address(arg1).quoteExactOutput(bytes arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args Array(len=mem[96], data=mem[mem[64] + 100 len ceil32(mem[96])]), s
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _479 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_479] == mem[_479]
                    if idx and 2 > -1 / idx:
                        revert with 'NH{q', 17
                    if 2 * idx >= mem[246]:
                        revert with 'NH{q', 50
                    mem[(64 * idx) + 278] = mem[_479]
                    mem[mem[64]] = 0xcdca175300000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 64
                    _515 = mem[171]
                    mem[mem[64] + 68] = mem[171]
                    t = 0
                    while t < _515:
                        mem[mem[64] + t + 100] = mem[t + 203]
                        t = t + 32
                        continue 
                    if ceil32(_515) <= _515:
                        mem[mem[64] + 36] = s
                        require ext_code.size(address(arg1))
                        call address(arg1).quoteExactInput(bytes arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args 64, s, mem[mem[64] + 68 len ceil32(_515) + 32]
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _659 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_659] == mem[_659]
                        if idx and 2 > -1 / idx:
                            revert with 'NH{q', 17
                        if 2 * idx >= mem[(64 * arg7) + 278]:
                            revert with 'NH{q', 50
                        mem[(64 * idx) + (64 * arg7) + 310] = mem[_659]
                    else:
                        mem[mem[64] + _515 + 100] = 0
                        mem[mem[64] + 36] = s
                        require ext_code.size(address(arg1))
                        call address(arg1).quoteExactInput(bytes arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args 64, s, mem[mem[64] + 68 len ceil32(_515) + 32]
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _667 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_667] == mem[_667]
                        if idx and 2 > -1 / idx:
                            revert with 'NH{q', 17
                        if 2 * idx >= mem[(64 * arg7) + 278]:
                            revert with 'NH{q', 50
                        mem[(64 * idx) + (64 * arg7) + 310] = mem[_667]
                else:
                    mem[mem[64] + mem[96] + 100] = 0
                    mem[mem[64] + 36] = s
                    require ext_code.size(address(arg1))
                    call address(arg1).quoteExactOutput(bytes arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args Array(len=mem[96], data=mem[mem[64] + 100 len ceil32(mem[96])]), s
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _483 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_483] == mem[_483]
                    if idx and 2 > -1 / idx:
                        revert with 'NH{q', 17
                    if 2 * idx >= mem[246]:
                        revert with 'NH{q', 50
                    mem[(64 * idx) + 278] = mem[_483]
                    mem[mem[64]] = 0xcdca175300000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 64
                    _519 = mem[171]
                    mem[mem[64] + 68] = mem[171]
                    t = 0
                    while t < _519:
                        mem[mem[64] + t + 100] = mem[t + 203]
                        t = t + 32
                        continue 
                    if ceil32(_519) <= _519:
                        mem[mem[64] + 36] = s
                        require ext_code.size(address(arg1))
                        call address(arg1).quoteExactInput(bytes arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args 64, s, mem[mem[64] + 68 len ceil32(_519) + 32]
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _660 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_660] == mem[_660]
                        if idx and 2 > -1 / idx:
                            revert with 'NH{q', 17
                        if 2 * idx >= mem[(64 * arg7) + 278]:
                            revert with 'NH{q', 50
                        mem[(64 * idx) + (64 * arg7) + 310] = mem[_660]
                    else:
                        mem[mem[64] + _519 + 100] = 0
                        mem[mem[64] + 36] = s
                        require ext_code.size(address(arg1))
                        call address(arg1).quoteExactInput(bytes arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args 64, s, mem[mem[64] + 68 len ceil32(_519) + 32]
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _668 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_668] == mem[_668]
                        if idx and 2 > -1 / idx:
                            revert with 'NH{q', 17
                        if 2 * idx >= mem[(64 * arg7) + 278]:
                            revert with 'NH{q', 50
                        mem[(64 * idx) + (64 * arg7) + 310] = mem[_668]
                if idx and 2 > -1 / idx:
                    revert with 'NH{q', 17
                if 2 * idx > -2:
                    revert with 'NH{q', 17
                if (2 * idx) + 1 >= mem[246]:
                    revert with 'NH{q', 50
                mem[(32 * (2 * idx) + 1) + 278] = s
                if idx and 2 > -1 / idx:
                    revert with 'NH{q', 17
                if 2 * idx > -2:
                    revert with 'NH{q', 17
                if (2 * idx) + 1 >= mem[(64 * arg7) + 278]:
                    revert with 'NH{q', 50
                mem[(32 * (2 * idx) + 1) + (64 * arg7) + 310] = s
                if s and arg6 > -1 / s:
                    revert with 'NH{q', 17
                if not denominator:
                    revert with 'NH{q', 18
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = s * arg6 / denominator
                continue 
            mem[mem[64]] = 128
            _275 = mem[246]
            mem[mem[64] + 128] = mem[246]
            mem[mem[64] + 160 len 32 * _275] = mem[278 len 32 * _275]
            mem[mem[64] + 32] = (32 * _275) + 160
            _463 = mem[(64 * arg7) + 278]
            mem[mem[64] + (32 * _275) + 160] = mem[(64 * arg7) + 278]
            mem[mem[64] + (32 * _275) + 192 len 32 * _463] = mem[(64 * arg7) + 310 len 32 * _463]
            mem[mem[64] + 64] = block.number
            mem[mem[64] + 96] = block.timestamp
            return 128, (32 * _275) + 160, block.number, block.timestamp, mem[mem[64] + 128 len (32 * _275) + (32 * _463) + 64]
        mem[(64 * arg7) + 310 len 64 * arg7] = call.data[calldata.size len 64 * arg7]
        idx = 0
        s = arg5
        while idx < arg7:
            mem[mem[64]] = 0x2f80bb1d00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 64
            mem[mem[64] + 68] = mem[96]
            t = 0
            while t < mem[96]:
                mem[mem[64] + t + 100] = mem[t + 128]
                t = t + 32
                continue 
            if ceil32(mem[96]) <= mem[96]:
                mem[mem[64] + 36] = s
                require ext_code.size(address(arg1))
                call address(arg1).quoteExactOutput(bytes arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args Array(len=mem[96], data=mem[mem[64] + 100 len ceil32(mem[96])]), s
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _480 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_480] == mem[_480]
                if idx and 2 > -1 / idx:
                    revert with 'NH{q', 17
                if 2 * idx >= mem[246]:
                    revert with 'NH{q', 50
                mem[(64 * idx) + 278] = mem[_480]
                mem[mem[64]] = 0xcdca175300000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 64
                _516 = mem[171]
                mem[mem[64] + 68] = mem[171]
                t = 0
                while t < _516:
                    mem[mem[64] + t + 100] = mem[t + 203]
                    t = t + 32
                    continue 
                if ceil32(_516) <= _516:
                    mem[mem[64] + 36] = s
                    require ext_code.size(address(arg1))
                    call address(arg1).quoteExactInput(bytes arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args 64, s, mem[mem[64] + 68 len ceil32(_516) + 32]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _661 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_661] == mem[_661]
                    if idx and 2 > -1 / idx:
                        revert with 'NH{q', 17
                    if 2 * idx >= mem[(64 * arg7) + 278]:
                        revert with 'NH{q', 50
                    mem[(64 * idx) + (64 * arg7) + 310] = mem[_661]
                else:
                    mem[mem[64] + _516 + 100] = 0
                    mem[mem[64] + 36] = s
                    require ext_code.size(address(arg1))
                    call address(arg1).quoteExactInput(bytes arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args 64, s, mem[mem[64] + 68 len ceil32(_516) + 32]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _669 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_669] == mem[_669]
                    if idx and 2 > -1 / idx:
                        revert with 'NH{q', 17
                    if 2 * idx >= mem[(64 * arg7) + 278]:
                        revert with 'NH{q', 50
                    mem[(64 * idx) + (64 * arg7) + 310] = mem[_669]
            else:
                mem[mem[64] + mem[96] + 100] = 0
                mem[mem[64] + 36] = s
                require ext_code.size(address(arg1))
                call address(arg1).quoteExactOutput(bytes arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args Array(len=mem[96], data=mem[mem[64] + 100 len ceil32(mem[96])]), s
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _484 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_484] == mem[_484]
                if idx and 2 > -1 / idx:
                    revert with 'NH{q', 17
                if 2 * idx >= mem[246]:
                    revert with 'NH{q', 50
                mem[(64 * idx) + 278] = mem[_484]
                mem[mem[64]] = 0xcdca175300000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 64
                _520 = mem[171]
                mem[mem[64] + 68] = mem[171]
                t = 0
                while t < _520:
                    mem[mem[64] + t + 100] = mem[t + 203]
                    t = t + 32
                    continue 
                if ceil32(_520) <= _520:
                    mem[mem[64] + 36] = s
                    require ext_code.size(address(arg1))
                    call address(arg1).quoteExactInput(bytes arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args 64, s, mem[mem[64] + 68 len ceil32(_520) + 32]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _662 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_662] == mem[_662]
                    if idx and 2 > -1 / idx:
                        revert with 'NH{q', 17
                    if 2 * idx >= mem[(64 * arg7) + 278]:
                        revert with 'NH{q', 50
                    mem[(64 * idx) + (64 * arg7) + 310] = mem[_662]
                else:
                    mem[mem[64] + _520 + 100] = 0
                    mem[mem[64] + 36] = s
                    require ext_code.size(address(arg1))
                    call address(arg1).quoteExactInput(bytes arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args 64, s, mem[mem[64] + 68 len ceil32(_520) + 32]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _670 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_670] == mem[_670]
                    if idx and 2 > -1 / idx:
                        revert with 'NH{q', 17
                    if 2 * idx >= mem[(64 * arg7) + 278]:
                        revert with 'NH{q', 50
                    mem[(64 * idx) + (64 * arg7) + 310] = mem[_670]
            if idx and 2 > -1 / idx:
                revert with 'NH{q', 17
            if 2 * idx > -2:
                revert with 'NH{q', 17
            if (2 * idx) + 1 >= mem[246]:
                revert with 'NH{q', 50
            mem[(32 * (2 * idx) + 1) + 278] = s
            if idx and 2 > -1 / idx:
                revert with 'NH{q', 17
            if 2 * idx > -2:
                revert with 'NH{q', 17
            if (2 * idx) + 1 >= mem[(64 * arg7) + 278]:
                revert with 'NH{q', 50
            mem[(32 * (2 * idx) + 1) + (64 * arg7) + 310] = s
            if s and arg6 > -1 / s:
                revert with 'NH{q', 17
            if not denominator:
                revert with 'NH{q', 18
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s * arg6 / denominator
            continue 
        mem[mem[64]] = 128
        _277 = mem[246]
        mem[mem[64] + 128] = mem[246]
        mem[mem[64] + 160 len 32 * _277] = mem[278 len 32 * _277]
        mem[mem[64] + 32] = (32 * _277) + 160
        _464 = mem[(64 * arg7) + 278]
        mem[mem[64] + (32 * _277) + 160] = mem[(64 * arg7) + 278]
        mem[mem[64] + (32 * _277) + 192 len 32 * _464] = mem[(64 * arg7) + 310 len 32 * _464]
        mem[mem[64] + 64] = block.number
        mem[mem[64] + 96] = block.timestamp
        return 128, (32 * _277) + 160, block.number, block.timestamp, mem[mem[64] + 128 len (32 * _277) + (32 * _464) + 64]
    mem[278 len 64 * arg7] = call.data[calldata.size len 64 * arg7]
    if arg7 and 2 > -1 / arg7:
        revert with 'NH{q', 17
    if 2 * arg7 > test266151307():
        revert with 'NH{q', 65
    mem[(64 * arg7) + 278] = 2 * arg7
    mem[64] = (128 * arg7) + 310
    if not uint255(arg7):
        idx = 0
        s = arg5
        while idx < arg7:
            mem[mem[64]] = 0x2f80bb1d00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 64
            mem[mem[64] + 68] = mem[96]
            t = 0
            while t < mem[96]:
                mem[mem[64] + t + 100] = mem[t + 128]
                t = t + 32
                continue 
            if ceil32(mem[96]) <= mem[96]:
                mem[mem[64] + 36] = s
                require ext_code.size(address(arg1))
                call address(arg1).quoteExactOutput(bytes arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args Array(len=mem[96], data=mem[mem[64] + 100 len ceil32(mem[96])]), s
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _481 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_481] == mem[_481]
                if idx and 2 > -1 / idx:
                    revert with 'NH{q', 17
                if 2 * idx >= mem[246]:
                    revert with 'NH{q', 50
                mem[(64 * idx) + 278] = mem[_481]
                mem[mem[64]] = 0xcdca175300000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 64
                _517 = mem[171]
                mem[mem[64] + 68] = mem[171]
                t = 0
                while t < _517:
                    mem[mem[64] + t + 100] = mem[t + 203]
                    t = t + 32
                    continue 
                if ceil32(_517) <= _517:
                    mem[mem[64] + 36] = s
                    require ext_code.size(address(arg1))
                    call address(arg1).quoteExactInput(bytes arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args 64, s, mem[mem[64] + 68 len ceil32(_517) + 32]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _663 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_663] == mem[_663]
                    if idx and 2 > -1 / idx:
                        revert with 'NH{q', 17
                    if 2 * idx >= mem[(64 * arg7) + 278]:
                        revert with 'NH{q', 50
                    mem[(64 * idx) + (64 * arg7) + 310] = mem[_663]
                else:
                    mem[mem[64] + _517 + 100] = 0
                    mem[mem[64] + 36] = s
                    require ext_code.size(address(arg1))
                    call address(arg1).quoteExactInput(bytes arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args 64, s, mem[mem[64] + 68 len ceil32(_517) + 32]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _671 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_671] == mem[_671]
                    if idx and 2 > -1 / idx:
                        revert with 'NH{q', 17
                    if 2 * idx >= mem[(64 * arg7) + 278]:
                        revert with 'NH{q', 50
                    mem[(64 * idx) + (64 * arg7) + 310] = mem[_671]
            else:
                mem[mem[64] + mem[96] + 100] = 0
                mem[mem[64] + 36] = s
                require ext_code.size(address(arg1))
                call address(arg1).quoteExactOutput(bytes arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args Array(len=mem[96], data=mem[mem[64] + 100 len ceil32(mem[96])]), s
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _485 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_485] == mem[_485]
                if idx and 2 > -1 / idx:
                    revert with 'NH{q', 17
                if 2 * idx >= mem[246]:
                    revert with 'NH{q', 50
                mem[(64 * idx) + 278] = mem[_485]
                mem[mem[64]] = 0xcdca175300000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 64
                _521 = mem[171]
                mem[mem[64] + 68] = mem[171]
                t = 0
                while t < _521:
                    mem[mem[64] + t + 100] = mem[t + 203]
                    t = t + 32
                    continue 
                if ceil32(_521) <= _521:
                    mem[mem[64] + 36] = s
                    require ext_code.size(address(arg1))
                    call address(arg1).quoteExactInput(bytes arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args 64, s, mem[mem[64] + 68 len ceil32(_521) + 32]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _664 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_664] == mem[_664]
                    if idx and 2 > -1 / idx:
                        revert with 'NH{q', 17
                    if 2 * idx >= mem[(64 * arg7) + 278]:
                        revert with 'NH{q', 50
                    mem[(64 * idx) + (64 * arg7) + 310] = mem[_664]
                else:
                    mem[mem[64] + _521 + 100] = 0
                    mem[mem[64] + 36] = s
                    require ext_code.size(address(arg1))
                    call address(arg1).quoteExactInput(bytes arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args 64, s, mem[mem[64] + 68 len ceil32(_521) + 32]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _672 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_672] == mem[_672]
                    if idx and 2 > -1 / idx:
                        revert with 'NH{q', 17
                    if 2 * idx >= mem[(64 * arg7) + 278]:
                        revert with 'NH{q', 50
                    mem[(64 * idx) + (64 * arg7) + 310] = mem[_672]
            if idx and 2 > -1 / idx:
                revert with 'NH{q', 17
            if 2 * idx > -2:
                revert with 'NH{q', 17
            if (2 * idx) + 1 >= mem[246]:
                revert with 'NH{q', 50
            mem[(32 * (2 * idx) + 1) + 278] = s
            if idx and 2 > -1 / idx:
                revert with 'NH{q', 17
            if 2 * idx > -2:
                revert with 'NH{q', 17
            if (2 * idx) + 1 >= mem[(64 * arg7) + 278]:
                revert with 'NH{q', 50
            mem[(32 * (2 * idx) + 1) + (64 * arg7) + 310] = s
            if s and arg6 > -1 / s:
                revert with 'NH{q', 17
            if not denominator:
                revert with 'NH{q', 18
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s * arg6 / denominator
            continue 
        mem[mem[64]] = 128
        _279 = mem[246]
        mem[mem[64] + 128] = mem[246]
        mem[mem[64] + 160 len 32 * _279] = mem[278 len 32 * _279]
        mem[mem[64] + 32] = (32 * _279) + 160
        _465 = mem[(64 * arg7) + 278]
        mem[mem[64] + (32 * _279) + 160] = mem[(64 * arg7) + 278]
        mem[mem[64] + (32 * _279) + 192 len 32 * _465] = mem[(64 * arg7) + 310 len 32 * _465]
        mem[mem[64] + 64] = block.number
        mem[mem[64] + 96] = block.timestamp
        return 128, (32 * _279) + 160, block.number, block.timestamp, mem[mem[64] + 128 len (32 * _279) + (32 * _465) + 64]
    mem[(64 * arg7) + 310 len 64 * arg7] = call.data[calldata.size len 64 * arg7]
    idx = 0
    s = arg5
    while idx < arg7:
        mem[mem[64]] = 0x2f80bb1d00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 64
        mem[mem[64] + 68] = mem[96]
        t = 0
        while t < mem[96]:
            mem[mem[64] + t + 100] = mem[t + 128]
            t = t + 32
            continue 
        if ceil32(mem[96]) <= mem[96]:
            mem[mem[64] + 36] = s
            require ext_code.size(address(arg1))
            call address(arg1).quoteExactOutput(bytes arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args Array(len=mem[96], data=mem[mem[64] + 100 len ceil32(mem[96])]), s
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _482 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_482] == mem[_482]
            if idx and 2 > -1 / idx:
                revert with 'NH{q', 17
            if 2 * idx >= mem[246]:
                revert with 'NH{q', 50
            mem[(64 * idx) + 278] = mem[_482]
            mem[mem[64]] = 0xcdca175300000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 64
            _518 = mem[171]
            mem[mem[64] + 68] = mem[171]
            t = 0
            while t < _518:
                mem[mem[64] + t + 100] = mem[t + 203]
                t = t + 32
                continue 
            if ceil32(_518) <= _518:
                mem[mem[64] + 36] = s
                require ext_code.size(address(arg1))
                call address(arg1).quoteExactInput(bytes arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args 64, s, mem[mem[64] + 68 len ceil32(_518) + 32]
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _665 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_665] == mem[_665]
                if idx and 2 > -1 / idx:
                    revert with 'NH{q', 17
                if 2 * idx >= mem[(64 * arg7) + 278]:
                    revert with 'NH{q', 50
                mem[(64 * idx) + (64 * arg7) + 310] = mem[_665]
            else:
                mem[mem[64] + _518 + 100] = 0
                mem[mem[64] + 36] = s
                require ext_code.size(address(arg1))
                call address(arg1).quoteExactInput(bytes arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args 64, s, mem[mem[64] + 68 len ceil32(_518) + 32]
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _673 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_673] == mem[_673]
                if idx and 2 > -1 / idx:
                    revert with 'NH{q', 17
                if 2 * idx >= mem[(64 * arg7) + 278]:
                    revert with 'NH{q', 50
                mem[(64 * idx) + (64 * arg7) + 310] = mem[_673]
        else:
            mem[mem[64] + mem[96] + 100] = 0
            mem[mem[64] + 36] = s
            require ext_code.size(address(arg1))
            call address(arg1).quoteExactOutput(bytes arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args Array(len=mem[96], data=mem[mem[64] + 100 len ceil32(mem[96])]), s
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _486 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_486] == mem[_486]
            if idx and 2 > -1 / idx:
                revert with 'NH{q', 17
            if 2 * idx >= mem[246]:
                revert with 'NH{q', 50
            mem[(64 * idx) + 278] = mem[_486]
            mem[mem[64]] = 0xcdca175300000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 64
            _522 = mem[171]
            mem[mem[64] + 68] = mem[171]
            t = 0
            while t < _522:
                mem[mem[64] + t + 100] = mem[t + 203]
                t = t + 32
                continue 
            if ceil32(_522) <= _522:
                mem[mem[64] + 36] = s
                require ext_code.size(address(arg1))
                call address(arg1).quoteExactInput(bytes arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args 64, s, mem[mem[64] + 68 len ceil32(_522) + 32]
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _666 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_666] == mem[_666]
                if idx and 2 > -1 / idx:
                    revert with 'NH{q', 17
                if 2 * idx >= mem[(64 * arg7) + 278]:
                    revert with 'NH{q', 50
                mem[(64 * idx) + (64 * arg7) + 310] = mem[_666]
            else:
                mem[mem[64] + _522 + 100] = 0
                mem[mem[64] + 36] = s
                require ext_code.size(address(arg1))
                call address(arg1).quoteExactInput(bytes arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args 64, s, mem[mem[64] + 68 len ceil32(_522) + 32]
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _674 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_674] == mem[_674]
                if idx and 2 > -1 / idx:
                    revert with 'NH{q', 17
                if 2 * idx >= mem[(64 * arg7) + 278]:
                    revert with 'NH{q', 50
                mem[(64 * idx) + (64 * arg7) + 310] = mem[_674]
        if idx and 2 > -1 / idx:
            revert with 'NH{q', 17
        if 2 * idx > -2:
            revert with 'NH{q', 17
        if (2 * idx) + 1 >= mem[246]:
            revert with 'NH{q', 50
        mem[(32 * (2 * idx) + 1) + 278] = s
        if idx and 2 > -1 / idx:
            revert with 'NH{q', 17
        if 2 * idx > -2:
            revert with 'NH{q', 17
        if (2 * idx) + 1 >= mem[(64 * arg7) + 278]:
            revert with 'NH{q', 50
        mem[(32 * (2 * idx) + 1) + (64 * arg7) + 310] = s
        if s and arg6 > -1 / s:
            revert with 'NH{q', 17
        if not denominator:
            revert with 'NH{q', 18
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = s * arg6 / denominator
        continue 
    mem[mem[64]] = 128
    _281 = mem[246]
    mem[mem[64] + 128] = mem[246]
    mem[mem[64] + 160 len 32 * _281] = mem[278 len 32 * _281]
    mem[mem[64] + 32] = (32 * _281) + 160
    _466 = mem[(64 * arg7) + 278]
    mem[mem[64] + (32 * _281) + 160] = mem[(64 * arg7) + 278]
    mem[mem[64] + (32 * _281) + 192 len 32 * _466] = mem[(64 * arg7) + 310 len 32 * _466]
    mem[mem[64] + 64] = block.number
    mem[mem[64] + 96] = block.timestamp
    return 128, (32 * _281) + 160, block.number, block.timestamp, mem[mem[64] + 128 len (32 * _281) + (32 * _466) + 64]
}



}
