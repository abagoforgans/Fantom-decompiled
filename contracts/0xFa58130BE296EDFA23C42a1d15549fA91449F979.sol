contract main {




// =====================  Runtime code  =====================


#
#  - sub_bdb6ad48(?)
#
mapping of address stor0;
uint256 numRegistries;
mapping of uint256 stor2;

function numRegistries() payable {
    return numRegistries
}

function _fallback() payable {
    revert
}

function removeRegistry(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor2[address(arg1)]:
        stor0[stor2[address(arg1)]] = 0
        stor2[address(arg1)] = 0
        if numRegistries < 1:
            revert with 'NH{q', 17
        numRegistries--
}

function sub_f6b11a23(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if not stor2[address(arg1)]:
        if numRegistries > -2:
            revert with 'NH{q', 17
        numRegistries++
        stor0[stor1] = address(arg1)
        stor2[address(arg1)] = numRegistries
}

function sub_35884e5a(?) payable {
    if numRegistries > test266151307():
        revert with 'NH{q', 65
    mem[96] = numRegistries
    mem[64] = (32 * numRegistries) + 128
    if numRegistries:
        mem[128 len 32 * numRegistries] = call.data[calldata.size len 32 * numRegistries]
    idx = 0
    while idx < numRegistries:
        if idx > -2:
            revert with 'NH{q', 17
        mem[0] = idx + 1
        mem[32] = 0
        if idx >= numRegistries:
            revert with 'NH{q', 50
        mem[(32 * idx) + 128] = stor0[idx + 1]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    mem[(32 * numRegistries) + 128] = 32
    mem[(32 * numRegistries) + 160] = numRegistries
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < numRegistries:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len (64 * numRegistries) + -mem[64] + 192
}

function sub_2411b0a5(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 4).length) + 97 > test266151307() or floor32(('cd', 4).length) + 97 < 96:
        revert with 'NH{q', 65
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= ('cd', 4).length:
            revert with 'NH{q', 50
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 2
        if not stor2[mem[(32 * idx) + 140 len 20]]:
            if numRegistries > -2:
                revert with 'NH{q', 17
            numRegistries++
            stor0[stor1] = mem[(32 * idx) + 140 len 20]
            mem[0] = mem[(32 * idx) + 140 len 20]
            mem[32] = 2
            stor2[address(mem[(32 * idx) + 128])] = numRegistries
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function sub_a89d490c(?) payable {
    mem[64] = 96
    idx = 0
    s = 0
    while idx < numRegistries:
        if idx > -2:
            revert with 'NH{q', 17
        mem[0] = idx + 1
        mem[32] = 0
        require ext_code.size(stor0[idx + 1])
        staticcall stor0[idx + 1].0xa89d490c with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _13 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_13] == mem[_13]
        if s > -mem[_13] - 1:
            revert with 'NH{q', 17
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = s + mem[_13]
        continue 
    return (s * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries)
}

function sub_e91048f2(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    mem[96] = 0x75d99c5b00000000000000000000000000000000000000000000000000000000
    mem[100] = address(arg1)
    require ext_code.size(address(arg2))
    staticcall address(arg2).0x75d99c5b with:
            gas gas_remaining wei
           args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _4 = mem[96 len 4], address(arg1) << 64
    require mem[96 len 4], address(arg1) << 64 <= test266151307()
    require mem[96 len 4], address(arg1) << 64 + 127 < return_data.size + 96
    _5 = mem[mem[96 len 4], address(arg1) << 64 + 96]
    if mem[mem[96 len 4], address(arg1) << 64 + 96] > test266151307():
        revert with 'NH{q', 65
    if ceil32(return_data.size) + floor32(mem[mem[96 len 4], address(arg1) << 64 + 96]) + 97 > test266151307() or floor32(mem[mem[96 len 4], address(arg1) << 64 + 96]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = ceil32(return_data.size) + floor32(mem[mem[96 len 4], address(arg1) << 64 + 96]) + 97
    mem[ceil32(return_data.size) + 96] = _5
    require _4 + (128 * _5) + 32 <= return_data.size
    idx = 0
    s = _4 + 128
    t = ceil32(return_data.size) + 128
    while idx < _5:
        require return_data.size + -s + 96 >= 128
        _21 = mem[64]
        if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + 128
        require mem[s] == mem[s + 12 len 20]
        mem[_21] = mem[s]
        require mem[s + 32] == mem[s + 32]
        mem[_21 + 32] = mem[s + 32]
        require mem[s + 64] == mem[s + 64]
        mem[_21 + 64] = mem[s + 64]
        require mem[s + 96] == mem[s + 96]
        mem[_21 + 96] = mem[s + 96]
        mem[t] = _21
        idx = idx + 1
        s = s + 128
        t = t + 32
        continue 
    _20 = mem[64]
    mem[mem[64]] = 32
    _22 = mem[ceil32(return_data.size) + 96]
    mem[mem[64] + 32] = mem[ceil32(return_data.size) + 96]
    idx = 0
    s = ceil32(return_data.size) + 128
    t = mem[64] + 64
    while idx < _22:
        _33 = mem[s]
        mem[t] = mem[mem[s] + 12 len 20]
        mem[t + 32] = mem[_33 + 32]
        mem[t + 64] = mem[_33 + 64]
        mem[t + 96] = mem[_33 + 96]
        idx = idx + 1
        s = s + 32
        t = t + 128
        continue 
    return memory
      from mem[64]
       len _20 + (128 * _22) + -mem[64] + 64
}

function sub_7bf9d1b8(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    mem[96] = 0x67e4ac2c00000000000000000000000000000000000000000000000000000000
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x67e4ac2c with:
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
        revert with 'NH{q', 65
    if ceil32(return_data.size) + floor32(mem[mem[96] + 96]) + 97 > test266151307() or floor32(mem[mem[96] + 96]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = ceil32(return_data.size) + floor32(mem[mem[96] + 96]) + 97
    mem[ceil32(return_data.size) + 96] = _5
    idx = 0
    s = _4 + 128
    t = ceil32(return_data.size) + 128
    while idx < _5:
        _38 = mem[s]
        require return_data.size + -_4 + -mem[s] - 32 >= 96
        _40 = mem[64]
        if mem[64] + 96 > test266151307() or mem[64] + 96 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + 96
        _42 = mem[_4 + _38 + 128]
        require mem[_4 + _38 + 128] <= test266151307()
        require _4 + _38 + mem[_4 + _38 + 128] + 159 < return_data.size + 96
        _44 = mem[_4 + _38 + mem[_4 + _38 + 128] + 128]
        if mem[_4 + _38 + mem[_4 + _38 + 128] + 128] > test266151307():
            revert with 'NH{q', 65
        _48 = mem[64]
        if mem[64] + ceil32(ceil32(mem[_4 + _38 + mem[_4 + _38 + 128] + 128])) + 1 > test266151307() or mem[64] + ceil32(ceil32(mem[_4 + _38 + mem[_4 + _38 + 128] + 128])) + 1 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + ceil32(ceil32(mem[_4 + _38 + mem[_4 + _38 + 128] + 128])) + 1
        mem[_48] = mem[_4 + _38 + mem[_4 + _38 + 128] + 128]
        require _4 + _38 + _42 + _44 + 64 <= return_data.size
        u = 0
        while u < _44:
            mem[_48 + u + 32] = mem[_4 + _38 + _42 + u + 160]
            u = u + 32
            continue 
        if ceil32(_44) <= _44:
            mem[_40] = _48
            require mem[_4 + _38 + 160] == mem[_4 + _38 + 172 len 20]
            mem[_40 + 32] = mem[_4 + _38 + 160]
            _77 = mem[_4 + _38 + 192]
            require mem[_4 + _38 + 192] <= test266151307()
            require _4 + _38 + mem[_4 + _38 + 192] + 159 < return_data.size + 96
            _81 = mem[_4 + _38 + mem[_4 + _38 + 192] + 128]
            if mem[_4 + _38 + mem[_4 + _38 + 192] + 128] > test266151307():
                revert with 'NH{q', 65
            _87 = mem[64]
            if mem[64] + ceil32(ceil32(mem[_4 + _38 + mem[_4 + _38 + 192] + 128])) + 1 > test266151307() or mem[64] + ceil32(ceil32(mem[_4 + _38 + mem[_4 + _38 + 192] + 128])) + 1 < mem[64]:
                revert with 'NH{q', 65
            mem[64] = mem[64] + ceil32(ceil32(mem[_4 + _38 + mem[_4 + _38 + 192] + 128])) + 1
            mem[_87] = _81
            require _4 + _38 + _77 + _81 + 64 <= return_data.size
            u = 0
            while u < _81:
                mem[_87 + u + 32] = mem[_4 + _38 + _77 + u + 160]
                u = u + 32
                continue 
            if ceil32(_81) > _81:
                mem[_87 + _81 + 32] = 0
            mem[_40 + 64] = _87
        else:
            mem[_48 + _44 + 32] = 0
            mem[_40] = _48
            require mem[_4 + _38 + 160] == mem[_4 + _38 + 172 len 20]
            mem[_40 + 32] = mem[_4 + _38 + 160]
            _78 = mem[_4 + _38 + 192]
            require mem[_4 + _38 + 192] <= test266151307()
            require _4 + _38 + mem[_4 + _38 + 192] + 159 < return_data.size + 96
            _82 = mem[_4 + _38 + mem[_4 + _38 + 192] + 128]
            if mem[_4 + _38 + mem[_4 + _38 + 192] + 128] > test266151307():
                revert with 'NH{q', 65
            _88 = mem[64]
            if mem[64] + ceil32(ceil32(mem[_4 + _38 + mem[_4 + _38 + 192] + 128])) + 1 > test266151307() or mem[64] + ceil32(ceil32(mem[_4 + _38 + mem[_4 + _38 + 192] + 128])) + 1 < mem[64]:
                revert with 'NH{q', 65
            mem[64] = mem[64] + ceil32(ceil32(mem[_4 + _38 + mem[_4 + _38 + 192] + 128])) + 1
            mem[_88] = _82
            require _4 + _38 + _78 + _82 + 64 <= return_data.size
            u = 0
            while u < _82:
                mem[_88 + u + 32] = mem[_4 + _38 + _78 + u + 160]
                u = u + 32
                continue 
            if ceil32(_82) > _82:
                mem[_88 + _82 + 32] = 0
            mem[_40 + 64] = _88
        mem[t] = _40
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    _39 = mem[64]
    mem[mem[64]] = 32
    _41 = mem[ceil32(return_data.size) + 96]
    mem[mem[64] + 32] = mem[ceil32(return_data.size) + 96]
    idx = 0
    s = ceil32(return_data.size) + 128
    t = mem[64] + (32 * _41) + 64
    u = mem[64] + 64
    while idx < _41:
        mem[u] = t + -_39 - 64
        _69 = mem[s]
        _72 = mem[mem[s]]
        mem[t] = 96
        _73 = mem[_72]
        mem[t + 96] = mem[_72]
        v = 0
        while v < _73:
            mem[t + v + 128] = mem[_72 + v + 32]
            v = v + 32
            continue 
        if ceil32(_73) <= _73:
            mem[t + 32] = mem[_69 + 44 len 20]
            _98 = mem[_69 + 64]
            mem[t + 64] = ceil32(_73) + 128
            _100 = mem[_98]
            mem[t + ceil32(_73) + 128] = mem[_98]
            v = 0
            while v < _100:
                mem[t + ceil32(_73) + v + 160] = mem[_98 + v + 32]
                v = v + 32
                continue 
            if ceil32(_100) > _100:
                mem[t + ceil32(_73) + _100 + 160] = 0
            idx = idx + 1
            s = s + 32
            t = t + ceil32(_73) + ceil32(_100) + 160
            u = u + 32
            continue 
        mem[t + _73 + 128] = 0
        mem[t + 32] = mem[_69 + 44 len 20]
        _99 = mem[_69 + 64]
        mem[t + 64] = ceil32(_73) + 128
        _101 = mem[_99]
        mem[t + ceil32(_73) + 128] = mem[_99]
        v = 0
        while v < _101:
            mem[t + ceil32(_73) + v + 160] = mem[_99 + v + 32]
            v = v + 32
            continue 
        if ceil32(_101) > _101:
            mem[t + ceil32(_73) + _101 + 160] = 0
        idx = idx + 1
        s = s + 32
        t = t + ceil32(_73) + ceil32(_101) + 160
        u = u + 32
        continue 
    return memory
      from mem[64]
       len t - mem[64]
}

function sub_75d99c5b(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    idx = 0
    s = 0
    while idx < numRegistries:
        if idx > -2:
            revert with 'NH{q', 17
        mem[0] = idx + 1
        mem[32] = 0
        require ext_code.size(stor0[idx + 1])
        staticcall stor0[idx + 1].0xa89d490c with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _38 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_38] == mem[_38]
        if s > -mem[_38] - 1:
            revert with 'NH{q', 17
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = s + mem[_38]
        continue 
    if s * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries > test266151307():
        revert with 'NH{q', 65
    _31 = mem[64]
    mem[mem[64]] = s * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries
    mem[64] = mem[64] + (32 * s * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries) + 32
    if not s * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries:
        idx = 0
        while idx < numRegistries:
            if idx > -2:
                revert with 'NH{q', 17
            mem[0] = idx + 1
            mem[32] = 0
            mem[mem[64]] = 0x75d99c5b00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = address(arg1)
            require ext_code.size(stor0[idx + 1])
            staticcall stor0[idx + 1].0x75d99c5b with:
                    gas gas_remaining wei
                   args address(arg1)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _100 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _104 = mem[_100]
            require mem[_100] <= test266151307()
            require _100 + mem[_100] + 31 < _100 + return_data.size
            _106 = mem[_100 + mem[_100]]
            if mem[_100 + mem[_100]] > test266151307():
                revert with 'NH{q', 65
            if _100 + ceil32(return_data.size) + floor32(mem[_100 + mem[_100]]) + 1 > test266151307() or floor32(mem[_100 + mem[_100]]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = _100 + ceil32(return_data.size) + floor32(mem[_100 + mem[_100]]) + 1
            mem[_100 + ceil32(return_data.size)] = _106
            require _104 + (128 * _106) + 32 <= return_data.size
            s = 0
            t = _100 + _104 + 32
            u = _100 + ceil32(return_data.size) + 32
            while s < _106:
                require _100 + return_data.size - t >= 128
                _140 = mem[64]
                if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
                    revert with 'NH{q', 65
                mem[64] = mem[64] + 128
                require mem[t] == mem[t + 12 len 20]
                mem[_140] = mem[t]
                require mem[t + 32] == mem[t + 32]
                mem[_140 + 32] = mem[t + 32]
                require mem[t + 64] == mem[t + 64]
                mem[_140 + 64] = mem[t + 64]
                require mem[t + 96] == mem[t + 96]
                mem[_140 + 96] = mem[t + 96]
                mem[u] = _140
                s = s + 1
                t = t + 128
                u = u + 32
                continue 
            _175 = mem[_100 + ceil32(return_data.size)]
            s = 0
            t = 0
            while s < _175:
                if s >= mem[_100 + ceil32(return_data.size)]:
                    revert with 'NH{q', 50
                if t >= mem[_31]:
                    revert with 'NH{q', 50
                mem[(32 * t) + _31 + 32] = mem[(32 * s) + _100 + ceil32(return_data.size) + 32]
                if t == -1:
                    revert with 'NH{q', 17
                if s == -1:
                    revert with 'NH{q', 17
                _175 = mem[_100 + ceil32(return_data.size)]
                s = s + 1
                t = t + 1
                continue 
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _87 = mem[64]
        mem[mem[64]] = 32
        _88 = mem[_31]
        mem[mem[64] + 32] = mem[_31]
        idx = 0
        s = _31 + 32
        t = mem[64] + 64
        while idx < _88:
            _136 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = mem[_136 + 32]
            mem[t + 64] = mem[_136 + 64]
            mem[t + 96] = mem[_136 + 96]
            idx = idx + 1
            s = s + 32
            t = t + 128
            continue 
        return memory
          from mem[64]
           len _87 + (128 * _88) + -mem[64] + 64
    mem[64] = _31 + (32 * s * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries) + 160
    mem[_31 + (32 * s * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries) + 32] = 0
    mem[_31 + (32 * s * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries) + 64] = 0
    mem[_31 + (32 * s * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries) + 96] = 0
    mem[_31 + (32 * s * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries) + 128] = 0
    mem[var25001] = _31 + (32 * s * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries) + 32
    t = var25001
    idx = var25002
    while idx - 1:
        mem[64] = mem[64] + 128
        mem[_31 + (32 * s * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries) + 32] = 0
        mem[_31 + (32 * s * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries) + 64] = 0
        mem[_31 + (32 * s * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries) + 96] = 0
        mem[_31 + (32 * s * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries) + 128] = 0
        mem[t + 32] = _31 + (32 * s * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries) + 32
        t = t + 32
        idx = idx - 1
        continue 
    idx = 0
    while idx < numRegistries:
        if idx > -2:
            revert with 'NH{q', 17
        mem[0] = idx + 1
        mem[32] = 0
        mem[mem[64]] = 0x75d99c5b00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = address(arg1)
        require ext_code.size(stor0[idx + 1])
        staticcall stor0[idx + 1].0x75d99c5b with:
                gas gas_remaining wei
               args address(arg1)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _187 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _189 = mem[_187]
        require mem[_187] <= test266151307()
        require _187 + mem[_187] + 31 < _187 + return_data.size
        _190 = mem[_187 + mem[_187]]
        if mem[_187 + mem[_187]] > test266151307():
            revert with 'NH{q', 65
        if _187 + ceil32(return_data.size) + floor32(mem[_187 + mem[_187]]) + 1 > test266151307() or floor32(mem[_187 + mem[_187]]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = _187 + ceil32(return_data.size) + floor32(mem[_187 + mem[_187]]) + 1
        mem[_187 + ceil32(return_data.size)] = _190
        require _189 + (128 * _190) + 32 <= return_data.size
        s = 0
        t = _187 + _189 + 32
        u = _187 + ceil32(return_data.size) + 32
        while s < _190:
            require _187 + return_data.size - t >= 128
            _207 = mem[64]
            if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
                revert with 'NH{q', 65
            mem[64] = mem[64] + 128
            require mem[t] == mem[t + 12 len 20]
            mem[_207] = mem[t]
            require mem[t + 32] == mem[t + 32]
            mem[_207 + 32] = mem[t + 32]
            require mem[t + 64] == mem[t + 64]
            mem[_207 + 64] = mem[t + 64]
            require mem[t + 96] == mem[t + 96]
            mem[_207 + 96] = mem[t + 96]
            mem[u] = _207
            s = s + 1
            t = t + 128
            u = u + 32
            continue 
        _218 = mem[_187 + ceil32(return_data.size)]
        s = 0
        t = 0
        while s < _218:
            if s >= mem[_187 + ceil32(return_data.size)]:
                revert with 'NH{q', 50
            if t >= mem[_31]:
                revert with 'NH{q', 50
            mem[(32 * t) + _31 + 32] = mem[(32 * s) + _187 + ceil32(return_data.size) + 32]
            if t == -1:
                revert with 'NH{q', 17
            if s == -1:
                revert with 'NH{q', 17
            _218 = mem[_187 + ceil32(return_data.size)]
            s = s + 1
            t = t + 1
            continue 
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    _179 = mem[64]
    mem[mem[64]] = 32
    _180 = mem[_31]
    mem[mem[64] + 32] = mem[_31]
    idx = 0
    s = _31 + 32
    t = mem[64] + 64
    while idx < _180:
        _203 = mem[s]
        mem[t] = mem[mem[s] + 12 len 20]
        mem[t + 32] = mem[_203 + 32]
        mem[t + 64] = mem[_203 + 64]
        mem[t + 96] = mem[_203 + 96]
        idx = idx + 1
        s = s + 32
        t = t + 128
        continue 
    return memory
      from mem[64]
       len _179 + (128 * _180) + -mem[64] + 64
}

function getAssets() payable {
    mem[64] = 96
    idx = 0
    s = 0
    while idx < numRegistries:
        if idx > -2:
            revert with 'NH{q', 17
        mem[0] = idx + 1
        mem[32] = 0
        require ext_code.size(stor0[idx + 1])
        staticcall stor0[idx + 1].0xa89d490c with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _56 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_56] == mem[_56]
        if s > -mem[_56] - 1:
            revert with 'NH{q', 17
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = s + mem[_56]
        continue 
    if s * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries > test266151307():
        revert with 'NH{q', 65
    _49 = mem[64]
    mem[mem[64]] = s * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries
    mem[64] = mem[64] + (32 * s * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries) + 32
    if not s * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries:
        idx = 0
        while idx < numRegistries:
            if idx > -2:
                revert with 'NH{q', 17
            mem[0] = idx + 1
            mem[32] = 0
            mem[mem[64]] = 0x67e4ac2c00000000000000000000000000000000000000000000000000000000
            require ext_code.size(stor0[idx + 1])
            staticcall stor0[idx + 1].0x67e4ac2c with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _147 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _150 = mem[_147]
            require mem[_147] <= test266151307()
            require _147 + mem[_147] + 31 < _147 + return_data.size
            _156 = mem[_147 + mem[_147]]
            if mem[_147 + mem[_147]] > test266151307():
                revert with 'NH{q', 65
            if _147 + ceil32(return_data.size) + floor32(mem[_147 + mem[_147]]) + 1 > test266151307() or floor32(mem[_147 + mem[_147]]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = _147 + ceil32(return_data.size) + floor32(mem[_147 + mem[_147]]) + 1
            mem[_147 + ceil32(return_data.size)] = _156
            s = 0
            t = _147 + _150 + 32
            u = _147 + ceil32(return_data.size) + 32
            while s < _156:
                _227 = mem[t]
                require return_data.size + -_150 + -mem[t] - 32 >= 96
                _232 = mem[64]
                if mem[64] + 96 > test266151307() or mem[64] + 96 < mem[64]:
                    revert with 'NH{q', 65
                mem[64] = mem[64] + 96
                _239 = mem[_147 + _150 + _227 + 32]
                require mem[_147 + _150 + _227 + 32] <= test266151307()
                require _147 + _150 + _227 + mem[_147 + _150 + _227 + 32] + 63 < _147 + return_data.size
                _244 = mem[_147 + _150 + _227 + mem[_147 + _150 + _227 + 32] + 32]
                if mem[_147 + _150 + _227 + mem[_147 + _150 + _227 + 32] + 32] > test266151307():
                    revert with 'NH{q', 65
                _255 = mem[64]
                if mem[64] + ceil32(ceil32(mem[_147 + _150 + _227 + mem[_147 + _150 + _227 + 32] + 32])) + 1 > test266151307() or mem[64] + ceil32(ceil32(mem[_147 + _150 + _227 + mem[_147 + _150 + _227 + 32] + 32])) + 1 < mem[64]:
                    revert with 'NH{q', 65
                mem[64] = mem[64] + ceil32(ceil32(mem[_147 + _150 + _227 + mem[_147 + _150 + _227 + 32] + 32])) + 1
                mem[_255] = _244
                require _150 + _227 + _239 + _244 + 64 <= return_data.size
                idx = 0
                while idx < _244:
                    mem[_255 + idx + 32] = mem[_147 + _150 + _227 + _239 + idx + 64]
                    idx = idx + 32
                    continue 
                if ceil32(_244) <= _244:
                    mem[_232] = _255
                    require mem[_147 + _150 + _227 + 64] == mem[_147 + _150 + _227 + 76 len 20]
                    mem[_232 + 32] = mem[_147 + _150 + _227 + 64]
                    _322 = mem[_147 + _150 + _227 + 96]
                    require mem[_147 + _150 + _227 + 96] <= test266151307()
                    require _147 + _150 + _227 + mem[_147 + _150 + _227 + 96] + 63 < _147 + return_data.size
                    _329 = mem[_147 + _150 + _227 + mem[_147 + _150 + _227 + 96] + 32]
                    if mem[_147 + _150 + _227 + mem[_147 + _150 + _227 + 96] + 32] > test266151307():
                        revert with 'NH{q', 65
                    _335 = mem[64]
                    if mem[64] + ceil32(ceil32(mem[_147 + _150 + _227 + mem[_147 + _150 + _227 + 96] + 32])) + 1 > test266151307() or mem[64] + ceil32(ceil32(mem[_147 + _150 + _227 + mem[_147 + _150 + _227 + 96] + 32])) + 1 < mem[64]:
                        revert with 'NH{q', 65
                    mem[64] = mem[64] + ceil32(ceil32(mem[_147 + _150 + _227 + mem[_147 + _150 + _227 + 96] + 32])) + 1
                    mem[_335] = _329
                    require _150 + _227 + _322 + _329 + 64 <= return_data.size
                    idx = 0
                    while idx < _329:
                        mem[_335 + idx + 32] = mem[_147 + _150 + _227 + _322 + idx + 64]
                        idx = idx + 32
                        continue 
                    if ceil32(_329) > _329:
                        mem[_335 + _329 + 32] = 0
                    mem[_232 + 64] = _335
                else:
                    mem[_255 + _244 + 32] = 0
                    mem[_232] = _255
                    require mem[_147 + _150 + _227 + 64] == mem[_147 + _150 + _227 + 76 len 20]
                    mem[_232 + 32] = mem[_147 + _150 + _227 + 64]
                    _326 = mem[_147 + _150 + _227 + 96]
                    require mem[_147 + _150 + _227 + 96] <= test266151307()
                    require _147 + _150 + _227 + mem[_147 + _150 + _227 + 96] + 63 < _147 + return_data.size
                    _330 = mem[_147 + _150 + _227 + mem[_147 + _150 + _227 + 96] + 32]
                    if mem[_147 + _150 + _227 + mem[_147 + _150 + _227 + 96] + 32] > test266151307():
                        revert with 'NH{q', 65
                    _336 = mem[64]
                    if mem[64] + ceil32(ceil32(mem[_147 + _150 + _227 + mem[_147 + _150 + _227 + 96] + 32])) + 1 > test266151307() or mem[64] + ceil32(ceil32(mem[_147 + _150 + _227 + mem[_147 + _150 + _227 + 96] + 32])) + 1 < mem[64]:
                        revert with 'NH{q', 65
                    mem[64] = mem[64] + ceil32(ceil32(mem[_147 + _150 + _227 + mem[_147 + _150 + _227 + 96] + 32])) + 1
                    mem[_336] = _330
                    require _150 + _227 + _326 + _330 + 64 <= return_data.size
                    idx = 0
                    while idx < _330:
                        mem[_336 + idx + 32] = mem[_147 + _150 + _227 + _326 + idx + 64]
                        idx = idx + 32
                        continue 
                    if ceil32(_330) > _330:
                        mem[_336 + _330 + 32] = 0
                    mem[_232 + 64] = _336
                mem[u] = _232
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
            _301 = mem[_147 + ceil32(return_data.size)]
            s = 0
            t = 0
            while s < _301:
                if s >= mem[_147 + ceil32(return_data.size)]:
                    revert with 'NH{q', 50
                if t >= mem[_49]:
                    revert with 'NH{q', 50
                mem[(32 * t) + _49 + 32] = mem[(32 * s) + _147 + ceil32(return_data.size) + 32]
                if t == -1:
                    revert with 'NH{q', 17
                if s == -1:
                    revert with 'NH{q', 17
                _301 = mem[_147 + ceil32(return_data.size)]
                s = s + 1
                t = t + 1
                continue 
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _141 = mem[64]
        mem[mem[64]] = 32
        _142 = mem[_49]
        mem[mem[64] + 32] = mem[_49]
        idx = 0
        s = _49 + 32
        t = mem[64] + (32 * _142) + 64
        u = mem[64] + 64
        while idx < _142:
            mem[u] = t + -_141 - 64
            _226 = mem[s]
            _229 = mem[mem[s]]
            mem[t] = 96
            _230 = mem[_229]
            mem[t + 96] = mem[_229]
            v = 0
            while v < _230:
                mem[t + v + 128] = mem[_229 + v + 32]
                v = v + 32
                continue 
            if ceil32(_230) <= _230:
                mem[t + 32] = mem[_226 + 44 len 20]
                _317 = mem[_226 + 64]
                mem[t + 64] = ceil32(_230) + 128
                _321 = mem[_317]
                mem[t + ceil32(_230) + 128] = mem[_317]
                v = 0
                while v < _321:
                    mem[t + ceil32(_230) + v + 160] = mem[_317 + v + 32]
                    v = v + 32
                    continue 
                if ceil32(_321) > _321:
                    mem[t + ceil32(_230) + _321 + 160] = 0
                idx = idx + 1
                s = s + 32
                t = t + ceil32(_230) + ceil32(_321) + 160
                u = u + 32
                continue 
            mem[t + _230 + 128] = 0
            mem[t + 32] = mem[_226 + 44 len 20]
            _320 = mem[_226 + 64]
            mem[t + 64] = ceil32(_230) + 128
            _325 = mem[_320]
            mem[t + ceil32(_230) + 128] = mem[_320]
            v = 0
            while v < _325:
                mem[t + ceil32(_230) + v + 160] = mem[_320 + v + 32]
                v = v + 32
                continue 
            if ceil32(_325) > _325:
                mem[t + ceil32(_230) + _325 + 160] = 0
            idx = idx + 1
            s = s + 32
            t = t + ceil32(_230) + ceil32(_325) + 160
            u = u + 32
            continue 
    else:
        mem[64] = _49 + (32 * s * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries) + 128
        mem[_49 + (32 * s * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries) + 32] = 96
        mem[_49 + (32 * s * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries) + 64] = 0
        mem[_49 + (32 * s * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries) + 96] = 96
        mem[var13001] = _49 + (32 * s * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries) + 32
        t = var13001
        idx = var13002
        while idx - 1:
            mem[64] = mem[64] + 96
            mem[_49 + (32 * s * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries) + 32] = 96
            mem[_49 + (32 * s * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries) + 64] = 0
            mem[_49 + (32 * s * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries) + 96] = 96
            mem[t + 32] = _49 + (32 * s * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries) + 32
            t = t + 32
            idx = idx - 1
            continue 
        idx = 0
        while idx < numRegistries:
            if idx > -2:
                revert with 'NH{q', 17
            mem[0] = idx + 1
            mem[32] = 0
            mem[mem[64]] = 0x67e4ac2c00000000000000000000000000000000000000000000000000000000
            require ext_code.size(stor0[idx + 1])
            staticcall stor0[idx + 1].0x67e4ac2c with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _316 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _319 = mem[_316]
            require mem[_316] <= test266151307()
            require _316 + mem[_316] + 31 < _316 + return_data.size
            _327 = mem[_316 + mem[_316]]
            if mem[_316 + mem[_316]] > test266151307():
                revert with 'NH{q', 65
            if _316 + ceil32(return_data.size) + floor32(mem[_316 + mem[_316]]) + 1 > test266151307() or floor32(mem[_316 + mem[_316]]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = _316 + ceil32(return_data.size) + floor32(mem[_316 + mem[_316]]) + 1
            mem[_316 + ceil32(return_data.size)] = _327
            s = 0
            t = _316 + _319 + 32
            u = _316 + ceil32(return_data.size) + 32
            while s < _327:
                _372 = mem[t]
                require return_data.size + -_319 + -mem[t] - 32 >= 96
                _377 = mem[64]
                if mem[64] + 96 > test266151307() or mem[64] + 96 < mem[64]:
                    revert with 'NH{q', 65
                mem[64] = mem[64] + 96
                _382 = mem[_316 + _319 + _372 + 32]
                require mem[_316 + _319 + _372 + 32] <= test266151307()
                require _316 + _319 + _372 + mem[_316 + _319 + _372 + 32] + 63 < _316 + return_data.size
                _383 = mem[_316 + _319 + _372 + mem[_316 + _319 + _372 + 32] + 32]
                if mem[_316 + _319 + _372 + mem[_316 + _319 + _372 + 32] + 32] > test266151307():
                    revert with 'NH{q', 65
                _388 = mem[64]
                if mem[64] + ceil32(ceil32(mem[_316 + _319 + _372 + mem[_316 + _319 + _372 + 32] + 32])) + 1 > test266151307() or mem[64] + ceil32(ceil32(mem[_316 + _319 + _372 + mem[_316 + _319 + _372 + 32] + 32])) + 1 < mem[64]:
                    revert with 'NH{q', 65
                mem[64] = mem[64] + ceil32(ceil32(mem[_316 + _319 + _372 + mem[_316 + _319 + _372 + 32] + 32])) + 1
                mem[_388] = _383
                require _319 + _372 + _382 + _383 + 64 <= return_data.size
                idx = 0
                while idx < _383:
                    mem[_388 + idx + 32] = mem[_316 + _319 + _372 + _382 + idx + 64]
                    idx = idx + 32
                    continue 
                if ceil32(_383) <= _383:
                    mem[_377] = _388
                    require mem[_316 + _319 + _372 + 64] == mem[_316 + _319 + _372 + 76 len 20]
                    mem[_377 + 32] = mem[_316 + _319 + _372 + 64]
                    _417 = mem[_316 + _319 + _372 + 96]
                    require mem[_316 + _319 + _372 + 96] <= test266151307()
                    require _316 + _319 + _372 + mem[_316 + _319 + _372 + 96] + 63 < _316 + return_data.size
                    _420 = mem[_316 + _319 + _372 + mem[_316 + _319 + _372 + 96] + 32]
                    if mem[_316 + _319 + _372 + mem[_316 + _319 + _372 + 96] + 32] > test266151307():
                        revert with 'NH{q', 65
                    _424 = mem[64]
                    if mem[64] + ceil32(ceil32(mem[_316 + _319 + _372 + mem[_316 + _319 + _372 + 96] + 32])) + 1 > test266151307() or mem[64] + ceil32(ceil32(mem[_316 + _319 + _372 + mem[_316 + _319 + _372 + 96] + 32])) + 1 < mem[64]:
                        revert with 'NH{q', 65
                    mem[64] = mem[64] + ceil32(ceil32(mem[_316 + _319 + _372 + mem[_316 + _319 + _372 + 96] + 32])) + 1
                    mem[_424] = _420
                    require _319 + _372 + _417 + _420 + 64 <= return_data.size
                    idx = 0
                    while idx < _420:
                        mem[_424 + idx + 32] = mem[_316 + _319 + _372 + _417 + idx + 64]
                        idx = idx + 32
                        continue 
                    if ceil32(_420) > _420:
                        mem[_424 + _420 + 32] = 0
                    mem[_377 + 64] = _424
                else:
                    mem[_388 + _383 + 32] = 0
                    mem[_377] = _388
                    require mem[_316 + _319 + _372 + 64] == mem[_316 + _319 + _372 + 76 len 20]
                    mem[_377 + 32] = mem[_316 + _319 + _372 + 64]
                    _419 = mem[_316 + _319 + _372 + 96]
                    require mem[_316 + _319 + _372 + 96] <= test266151307()
                    require _316 + _319 + _372 + mem[_316 + _319 + _372 + 96] + 63 < _316 + return_data.size
                    _421 = mem[_316 + _319 + _372 + mem[_316 + _319 + _372 + 96] + 32]
                    if mem[_316 + _319 + _372 + mem[_316 + _319 + _372 + 96] + 32] > test266151307():
                        revert with 'NH{q', 65
                    _425 = mem[64]
                    if mem[64] + ceil32(ceil32(mem[_316 + _319 + _372 + mem[_316 + _319 + _372 + 96] + 32])) + 1 > test266151307() or mem[64] + ceil32(ceil32(mem[_316 + _319 + _372 + mem[_316 + _319 + _372 + 96] + 32])) + 1 < mem[64]:
                        revert with 'NH{q', 65
                    mem[64] = mem[64] + ceil32(ceil32(mem[_316 + _319 + _372 + mem[_316 + _319 + _372 + 96] + 32])) + 1
                    mem[_425] = _421
                    require _319 + _372 + _419 + _421 + 64 <= return_data.size
                    idx = 0
                    while idx < _421:
                        mem[_425 + idx + 32] = mem[_316 + _319 + _372 + _419 + idx + 64]
                        idx = idx + 32
                        continue 
                    if ceil32(_421) > _421:
                        mem[_425 + _421 + 32] = 0
                    mem[_377 + 64] = _425
                mem[u] = _377
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
            _404 = mem[_316 + ceil32(return_data.size)]
            s = 0
            t = 0
            while s < _404:
                if s >= mem[_316 + ceil32(return_data.size)]:
                    revert with 'NH{q', 50
                if t >= mem[_49]:
                    revert with 'NH{q', 50
                mem[(32 * t) + _49 + 32] = mem[(32 * s) + _316 + ceil32(return_data.size) + 32]
                if t == -1:
                    revert with 'NH{q', 17
                if s == -1:
                    revert with 'NH{q', 17
                _404 = mem[_316 + ceil32(return_data.size)]
                s = s + 1
                t = t + 1
                continue 
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _307 = mem[64]
        mem[mem[64]] = 32
        _308 = mem[_49]
        mem[mem[64] + 32] = mem[_49]
        idx = 0
        s = _49 + 32
        t = mem[64] + (32 * _308) + 64
        u = mem[64] + 64
        while idx < _308:
            mem[u] = t + -_307 - 64
            _371 = mem[s]
            _374 = mem[mem[s]]
            mem[t] = 96
            _375 = mem[_374]
            mem[t + 96] = mem[_374]
            v = 0
            while v < _375:
                mem[t + v + 128] = mem[_374 + v + 32]
                v = v + 32
                continue 
            if ceil32(_375) <= _375:
                mem[t + 32] = mem[_371 + 44 len 20]
                _414 = mem[_371 + 64]
                mem[t + 64] = ceil32(_375) + 128
                _416 = mem[_414]
                mem[t + ceil32(_375) + 128] = mem[_414]
                v = 0
                while v < _416:
                    mem[t + ceil32(_375) + v + 160] = mem[_414 + v + 32]
                    v = v + 32
                    continue 
                if ceil32(_416) > _416:
                    mem[t + ceil32(_375) + _416 + 160] = 0
                idx = idx + 1
                s = s + 32
                t = t + ceil32(_375) + ceil32(_416) + 160
                u = u + 32
                continue 
            mem[t + _375 + 128] = 0
            mem[t + 32] = mem[_371 + 44 len 20]
            _415 = mem[_371 + 64]
            mem[t + 64] = ceil32(_375) + 128
            _418 = mem[_415]
            mem[t + ceil32(_375) + 128] = mem[_415]
            v = 0
            while v < _418:
                mem[t + ceil32(_375) + v + 160] = mem[_415 + v + 32]
                v = v + 32
                continue 
            if ceil32(_418) > _418:
                mem[t + ceil32(_375) + _418 + 160] = 0
            idx = idx + 1
            s = s + 32
            t = t + ceil32(_375) + ceil32(_418) + 160
            u = u + 32
            continue 
    return memory
      from mem[64]
       len t - mem[64]
}



}
