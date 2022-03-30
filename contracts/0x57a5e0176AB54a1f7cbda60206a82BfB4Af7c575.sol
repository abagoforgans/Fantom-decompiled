contract main {




// =====================  Runtime code  =====================


#
#  - sub_75d99c5b(?)
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
            revert with 0, 17
        numRegistries--
}

function sub_f6b11a23(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if not stor2[address(arg1)]:
        if numRegistries > -2:
            revert with 0, 17
        numRegistries++
        stor0[stor1] = address(arg1)
        stor2[address(arg1)] = numRegistries
}

function sub_2411b0a5(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require calldata.size > cd[4] + 35
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if floor32(('cd', 4).length) + 97 < 96 or floor32(('cd', 4).length) + 97 > test266151307():
        revert with 0, 65
    require calldata.size >= cd[4] + (32 * ('cd', 4).length) + 36
    s = cd[4] + 36
    t = 128
    idx = 0
    while idx < ('cd', 4).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= ('cd', 4).length:
            revert with 0, 50
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 2
        if not stor2[mem[(32 * idx) + 140 len 20]]:
            if numRegistries > -2:
                revert with 0, 17
            numRegistries++
            stor0[stor1] = mem[(32 * idx) + 140 len 20]
            mem[0] = mem[(32 * idx) + 140 len 20]
            mem[32] = 2
            stor2[address(mem[(32 * idx) + 128])] = numRegistries
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_35884e5a(?) payable {
    if numRegistries > test266151307():
        revert with 0, 65
    mem[96] = numRegistries
    mem[64] = (32 * numRegistries) + 128
    if not numRegistries:
        idx = 0
        while idx < numRegistries:
            if 1 > !idx:
                revert with 0, 17
            mem[0] = idx + 1
            mem[32] = 0
            if idx >= numRegistries:
                revert with 0, 50
            mem[(32 * idx) + 128] = stor0[idx + 1]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        mem[(32 * numRegistries) + 128] = 32
        mem[(32 * numRegistries) + 160] = numRegistries
        idx = 0
        s = mem[64] + 64
        t = 128
        while idx < mem[96]:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
    else:
        mem[128 len 32 * numRegistries] = call.data[calldata.size len 32 * numRegistries]
        idx = 0
        while idx < numRegistries:
            if 1 > !idx:
                revert with 0, 17
            mem[0] = idx + 1
            mem[32] = 0
            if idx >= numRegistries:
                revert with 0, 50
            mem[(32 * idx) + 128] = stor0[idx + 1]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        mem[(32 * numRegistries) + 128] = 32
        mem[(32 * numRegistries) + 160] = numRegistries
        idx = 0
        s = mem[64] + 64
        t = 128
        while idx < numRegistries:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
    return memory
      from mem[64]
       len (64 * numRegistries) + -mem[64] + 192
}

function sub_a89d490c(?) payable {
    mem[64] = 96
    idx = 0
    s = 0
    while idx < numRegistries:
        if 1 > !idx:
            revert with 0, 17
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
        if s > !mem[_13]:
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
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
    require return_data.size + 96 > mem[96 len 4], address(arg1) << 64 + 127
    _5 = mem[mem[96 len 4], address(arg1) << 64 + 96]
    if mem[mem[96 len 4], address(arg1) << 64 + 96] > test266151307():
        revert with 0, 65
    if floor32(mem[mem[96 len 4], address(arg1) << 64 + 96]) + 1 < 0 or ceil32(return_data.size) + floor32(mem[mem[96 len 4], address(arg1) << 64 + 96]) + 97 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(return_data.size) + floor32(mem[mem[96 len 4], address(arg1) << 64 + 96]) + 97
    mem[ceil32(return_data.size) + 96] = _5
    require return_data.size >= _4 + (128 * _5) + 32
    s = _4 + 128
    t = ceil32(return_data.size) + 128
    idx = 0
    while idx < _5:
        require return_data.size + -s + 96 >= 128
        _21 = mem[64]
        if mem[64] + 128 < mem[64] or mem[64] + 128 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + 128
        require mem[s] == mem[s + 12 len 20]
        mem[_21] = mem[s]
        mem[_21 + 32] = mem[s + 32]
        mem[_21 + 64] = mem[s + 64]
        mem[_21 + 96] = mem[s + 96]
        mem[t] = _21
        s = s + 128
        t = t + 32
        idx = idx + 1
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
        revert with 0, 65
    if floor32(mem[mem[96] + 96]) + 1 < 0 or ceil32(return_data.size) + floor32(mem[mem[96] + 96]) + 97 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(return_data.size) + floor32(mem[mem[96] + 96]) + 97
    mem[ceil32(return_data.size) + 96] = _5
    idx = 0
    s = _4 + 128
    t = ceil32(return_data.size) + 128
    while idx < _5:
        _38 = mem[s]
        require return_data.size + -_4 + -mem[s] - 32 >= 96
        _40 = mem[64]
        if mem[64] + 96 < mem[64] or mem[64] + 96 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + 96
        _42 = mem[_4 + _38 + 128]
        require mem[_4 + _38 + 128] <= test266151307()
        require _4 + _38 + mem[_4 + _38 + 128] + 159 < return_data.size + 96
        _47 = mem[_4 + _38 + mem[_4 + _38 + 128] + 128]
        if mem[_4 + _38 + mem[_4 + _38 + 128] + 128] > test266151307():
            revert with 0, 65
        _49 = mem[64]
        if mem[64] + ceil32(ceil32(mem[_4 + _38 + mem[_4 + _38 + 128] + 128])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[_4 + _38 + mem[_4 + _38 + 128] + 128])) + 1 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + ceil32(ceil32(mem[_4 + _38 + mem[_4 + _38 + 128] + 128])) + 1
        mem[_49] = mem[_4 + _38 + mem[_4 + _38 + 128] + 128]
        require _4 + _38 + _42 + _47 + 64 <= return_data.size
        u = 0
        while u < _47:
            mem[u + _49 + 32] = mem[u + _4 + _38 + _42 + 160]
            u = u + 32
            continue 
        if ceil32(_47) <= _47:
            mem[_40] = _49
            require mem[_4 + _38 + 160] == mem[_4 + _38 + 172 len 20]
            mem[_40 + 32] = mem[_4 + _38 + 160]
            _77 = mem[_4 + _38 + 192]
            require mem[_4 + _38 + 192] <= test266151307()
            require _4 + _38 + mem[_4 + _38 + 192] + 159 < return_data.size + 96
            _85 = mem[_4 + _38 + mem[_4 + _38 + 192] + 128]
            if mem[_4 + _38 + mem[_4 + _38 + 192] + 128] > test266151307():
                revert with 0, 65
            _88 = mem[64]
            if mem[64] + ceil32(ceil32(mem[_4 + _38 + mem[_4 + _38 + 192] + 128])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[_4 + _38 + mem[_4 + _38 + 192] + 128])) + 1 > test266151307():
                revert with 0, 65
            mem[64] = mem[64] + ceil32(ceil32(mem[_4 + _38 + mem[_4 + _38 + 192] + 128])) + 1
            mem[_88] = mem[_4 + _38 + mem[_4 + _38 + 192] + 128]
            require _4 + _38 + _77 + _85 + 64 <= return_data.size
            u = 0
            while u < _85:
                mem[u + _88 + 32] = mem[u + _4 + _38 + _77 + 160]
                u = u + 32
                continue 
            if ceil32(_85) > _85:
                mem[_88 + _85 + 32] = 0
            mem[_40 + 64] = _88
        else:
            mem[_49 + _47 + 32] = 0
            mem[_40] = _49
            require mem[_4 + _38 + 160] == mem[_4 + _38 + 172 len 20]
            mem[_40 + 32] = mem[_4 + _38 + 160]
            _80 = mem[_4 + _38 + 192]
            require mem[_4 + _38 + 192] <= test266151307()
            require _4 + _38 + mem[_4 + _38 + 192] + 159 < return_data.size + 96
            _86 = mem[_4 + _38 + mem[_4 + _38 + 192] + 128]
            if mem[_4 + _38 + mem[_4 + _38 + 192] + 128] > test266151307():
                revert with 0, 65
            _90 = mem[64]
            if mem[64] + ceil32(ceil32(mem[_4 + _38 + mem[_4 + _38 + 192] + 128])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[_4 + _38 + mem[_4 + _38 + 192] + 128])) + 1 > test266151307():
                revert with 0, 65
            mem[64] = mem[64] + ceil32(ceil32(mem[_4 + _38 + mem[_4 + _38 + 192] + 128])) + 1
            mem[_90] = mem[_4 + _38 + mem[_4 + _38 + 192] + 128]
            require _4 + _38 + _80 + _86 + 64 <= return_data.size
            u = 0
            while u < _86:
                mem[u + _90 + 32] = mem[u + _4 + _38 + _80 + 160]
                u = u + 32
                continue 
            if ceil32(_86) > _86:
                mem[_90 + _86 + 32] = 0
            mem[_40 + 64] = _90
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
        _70 = mem[mem[s]]
        mem[t] = 96
        _73 = mem[_70]
        mem[t + 96] = mem[_70]
        v = 0
        while v < _73:
            mem[v + t + 128] = mem[v + _70 + 32]
            v = v + 32
            continue 
        if ceil32(_73) <= _73:
            mem[t + 32] = mem[_69 + 44 len 20]
            _97 = mem[_69 + 64]
            mem[t + 64] = ceil32(_73) + 128
            _98 = mem[_97]
            mem[ceil32(_73) + t + 128] = mem[_97]
            v = 0
            while v < _98:
                mem[v + ceil32(_73) + t + 160] = mem[v + _97 + 32]
                v = v + 32
                continue 
            if ceil32(_98) > _98:
                mem[ceil32(_73) + t + _98 + 160] = 0
            idx = idx + 1
            s = s + 32
            t = ceil32(_98) + ceil32(_73) + t + 160
            u = u + 32
            continue 
        mem[t + _73 + 128] = 0
        mem[t + 32] = mem[_69 + 44 len 20]
        _100 = mem[_69 + 64]
        mem[t + 64] = ceil32(_73) + 128
        _101 = mem[_100]
        mem[ceil32(_73) + t + 128] = mem[_100]
        v = 0
        while v < _101:
            mem[v + ceil32(_73) + t + 160] = mem[v + _100 + 32]
            v = v + 32
            continue 
        if ceil32(_101) > _101:
            mem[ceil32(_73) + t + _101 + 160] = 0
        idx = idx + 1
        s = s + 32
        t = ceil32(_101) + ceil32(_73) + t + 160
        u = u + 32
        continue 
    return memory
      from mem[64]
       len t - mem[64]
}

function sub_bdb6ad48(?) payable {
    mem[64] = 96
    idx = 0
    s = 0
    while idx < numRegistries:
        if 1 > !idx:
            revert with 0, 17
        mem[0] = idx + 1
        mem[32] = 0
        require ext_code.size(stor0[idx + 1])
        staticcall stor0[idx + 1].0xa89d490c with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _27 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if s > !mem[_27]:
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s + mem[_27]
        continue 
    if s * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries > test266151307():
        revert with 0, 65
    _23 = mem[64]
    mem[mem[64]] = s * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries
    mem[64] = mem[64] + (32 * s * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries) + 32
    if not s * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries:
        idx = 0
        while idx < numRegistries:
            if 1 > !idx:
                revert with 0, 17
            mem[0] = idx + 1
            mem[32] = 0
            mem[mem[64]] = 0xbdb6ad4800000000000000000000000000000000000000000000000000000000
            require ext_code.size(stor0[idx + 1])
            staticcall stor0[idx + 1].0xbdb6ad48 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _74 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _77 = mem[_74]
            require mem[_74] <= test266151307()
            require _74 + return_data.size > _74 + mem[_74] + 31
            _79 = mem[_74 + mem[_74]]
            if mem[_74 + mem[_74]] > test266151307():
                revert with 0, 65
            if floor32(mem[_74 + mem[_74]]) + 1 < 0 or _74 + ceil32(return_data.size) + floor32(mem[_74 + mem[_74]]) + 1 > test266151307():
                revert with 0, 65
            mem[64] = _74 + ceil32(return_data.size) + floor32(mem[_74 + mem[_74]]) + 1
            mem[_74 + ceil32(return_data.size)] = _79
            require return_data.size >= _77 + (32 * _79) + 32
            t = _74 + _77 + 32
            u = _74 + ceil32(return_data.size) + 32
            s = 0
            while s < _79:
                require mem[t] == mem[t + 12 len 20]
                mem[u] = mem[t]
                t = t + 32
                u = u + 32
                s = s + 1
                continue 
            s = 0
            t = 0
            while s < _79:
                if s >= mem[_74 + ceil32(return_data.size)]:
                    revert with 0, 50
                if t >= mem[_23]:
                    revert with 0, 50
                mem[(32 * t) + _23 + 32] = mem[(32 * s) + _74 + ceil32(return_data.size) + 44 len 20]
                if t == -1:
                    revert with 0, 17
                if s == -1:
                    revert with 0, 17
                s = s + 1
                t = t + 1
                continue 
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _61 = mem[64]
        mem[mem[64]] = 32
        _63 = mem[_23]
        mem[mem[64] + 32] = mem[_23]
        idx = 0
        s = mem[64] + 64
        t = _23 + 32
        while idx < _63:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _61 + (32 * _63) + -mem[64] + 64
    mem[_23 + 32 len 32 * s * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries] = call.data[calldata.size len 32 * s * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries]
    idx = 0
    while idx < numRegistries:
        if 1 > !idx:
            revert with 0, 17
        mem[0] = idx + 1
        mem[32] = 0
        mem[mem[64]] = 0xbdb6ad4800000000000000000000000000000000000000000000000000000000
        require ext_code.size(stor0[idx + 1])
        staticcall stor0[idx + 1].0xbdb6ad48 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _76 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _78 = mem[_76]
        require mem[_76] <= test266151307()
        require _76 + return_data.size > _76 + mem[_76] + 31
        _80 = mem[_76 + mem[_76]]
        if mem[_76 + mem[_76]] > test266151307():
            revert with 0, 65
        if floor32(mem[_76 + mem[_76]]) + 1 < 0 or _76 + ceil32(return_data.size) + floor32(mem[_76 + mem[_76]]) + 1 > test266151307():
            revert with 0, 65
        mem[64] = _76 + ceil32(return_data.size) + floor32(mem[_76 + mem[_76]]) + 1
        mem[_76 + ceil32(return_data.size)] = _80
        require return_data.size >= _78 + (32 * _80) + 32
        t = _76 + _78 + 32
        u = _76 + ceil32(return_data.size) + 32
        s = 0
        while s < _80:
            require mem[t] == mem[t + 12 len 20]
            mem[u] = mem[t]
            t = t + 32
            u = u + 32
            s = s + 1
            continue 
        s = 0
        t = 0
        while s < _80:
            if s >= mem[_76 + ceil32(return_data.size)]:
                revert with 0, 50
            if t >= mem[_23]:
                revert with 0, 50
            mem[(32 * t) + _23 + 32] = mem[(32 * s) + _76 + ceil32(return_data.size) + 44 len 20]
            if t == -1:
                revert with 0, 17
            if s == -1:
                revert with 0, 17
            s = s + 1
            t = t + 1
            continue 
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    _62 = mem[64]
    mem[mem[64]] = 32
    _64 = mem[_23]
    mem[mem[64] + 32] = mem[_23]
    idx = 0
    s = mem[64] + 64
    t = _23 + 32
    while idx < _64:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len _62 + (32 * _64) + -mem[64] + 64
}

function getAssets() payable {
    mem[64] = 96
    idx = 0
    s = 0
    while idx < numRegistries:
        if 1 > !idx:
            revert with 0, 17
        mem[0] = idx + 1
        mem[32] = 0
        require ext_code.size(stor0[idx + 1])
        staticcall stor0[idx + 1].0xa89d490c with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _54 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if s > !mem[_54]:
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s + mem[_54]
        continue 
    if s * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries > test266151307():
        revert with 0, 65
    _49 = mem[64]
    mem[mem[64]] = s * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries
    mem[64] = mem[64] + (32 * s * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries) + 32
    if not s * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries:
        idx = 0
        while idx < numRegistries:
            if 1 > !idx:
                revert with 0, 17
            mem[0] = idx + 1
            mem[32] = 0
            mem[mem[64]] = 0x67e4ac2c00000000000000000000000000000000000000000000000000000000
            require ext_code.size(stor0[idx + 1])
            staticcall stor0[idx + 1].0x67e4ac2c with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _151 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _156 = mem[_151]
            require mem[_151] <= test266151307()
            require _151 + mem[_151] + 31 < _151 + return_data.size
            _163 = mem[_151 + mem[_151]]
            if mem[_151 + mem[_151]] > test266151307():
                revert with 0, 65
            if floor32(mem[_151 + mem[_151]]) + 1 < 0 or _151 + ceil32(return_data.size) + floor32(mem[_151 + mem[_151]]) + 1 > test266151307():
                revert with 0, 65
            mem[64] = _151 + ceil32(return_data.size) + floor32(mem[_151 + mem[_151]]) + 1
            mem[_151 + ceil32(return_data.size)] = _163
            s = 0
            t = _151 + _156 + 32
            u = _151 + ceil32(return_data.size) + 32
            while s < _163:
                _227 = mem[t]
                require return_data.size + -_156 + -mem[t] - 32 >= 96
                _232 = mem[64]
                if mem[64] + 96 < mem[64] or mem[64] + 96 > test266151307():
                    revert with 0, 65
                mem[64] = mem[64] + 96
                _241 = mem[_151 + _156 + _227 + 32]
                require mem[_151 + _156 + _227 + 32] <= test266151307()
                require _151 + _156 + _227 + mem[_151 + _156 + _227 + 32] + 63 < _151 + return_data.size
                _249 = mem[_151 + _156 + _227 + mem[_151 + _156 + _227 + 32] + 32]
                if mem[_151 + _156 + _227 + mem[_151 + _156 + _227 + 32] + 32] > test266151307():
                    revert with 0, 65
                _256 = mem[64]
                if mem[64] + ceil32(ceil32(mem[_151 + _156 + _227 + mem[_151 + _156 + _227 + 32] + 32])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[_151 + _156 + _227 + mem[_151 + _156 + _227 + 32] + 32])) + 1 > test266151307():
                    revert with 0, 65
                mem[64] = mem[64] + ceil32(ceil32(mem[_151 + _156 + _227 + mem[_151 + _156 + _227 + 32] + 32])) + 1
                mem[_256] = _249
                require _156 + _227 + _241 + _249 + 64 <= return_data.size
                idx = 0
                while idx < _249:
                    mem[idx + _256 + 32] = mem[idx + _151 + _156 + _227 + _241 + 64]
                    idx = idx + 32
                    continue 
                if ceil32(_249) <= _249:
                    mem[_232] = _256
                    require mem[_151 + _156 + _227 + 64] == mem[_151 + _156 + _227 + 76 len 20]
                    mem[_232 + 32] = mem[_151 + _156 + _227 + 64]
                    _326 = mem[_151 + _156 + _227 + 96]
                    require mem[_151 + _156 + _227 + 96] <= test266151307()
                    require _151 + _156 + _227 + mem[_151 + _156 + _227 + 96] + 63 < _151 + return_data.size
                    _336 = mem[_151 + _156 + _227 + mem[_151 + _156 + _227 + 96] + 32]
                    if mem[_151 + _156 + _227 + mem[_151 + _156 + _227 + 96] + 32] > test266151307():
                        revert with 0, 65
                    _340 = mem[64]
                    if mem[64] + ceil32(ceil32(mem[_151 + _156 + _227 + mem[_151 + _156 + _227 + 96] + 32])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[_151 + _156 + _227 + mem[_151 + _156 + _227 + 96] + 32])) + 1 > test266151307():
                        revert with 0, 65
                    mem[64] = mem[64] + ceil32(ceil32(mem[_151 + _156 + _227 + mem[_151 + _156 + _227 + 96] + 32])) + 1
                    mem[_340] = _336
                    require _156 + _227 + _326 + _336 + 64 <= return_data.size
                    idx = 0
                    while idx < _336:
                        mem[idx + _340 + 32] = mem[idx + _151 + _156 + _227 + _326 + 64]
                        idx = idx + 32
                        continue 
                    if ceil32(_336) > _336:
                        mem[_340 + _336 + 32] = 0
                    mem[_232 + 64] = _340
                else:
                    mem[_256 + _249 + 32] = 0
                    mem[_232] = _256
                    require mem[_151 + _156 + _227 + 64] == mem[_151 + _156 + _227 + 76 len 20]
                    mem[_232 + 32] = mem[_151 + _156 + _227 + 64]
                    _328 = mem[_151 + _156 + _227 + 96]
                    require mem[_151 + _156 + _227 + 96] <= test266151307()
                    require _151 + _156 + _227 + mem[_151 + _156 + _227 + 96] + 63 < _151 + return_data.size
                    _339 = mem[_151 + _156 + _227 + mem[_151 + _156 + _227 + 96] + 32]
                    if mem[_151 + _156 + _227 + mem[_151 + _156 + _227 + 96] + 32] > test266151307():
                        revert with 0, 65
                    _342 = mem[64]
                    if mem[64] + ceil32(ceil32(mem[_151 + _156 + _227 + mem[_151 + _156 + _227 + 96] + 32])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[_151 + _156 + _227 + mem[_151 + _156 + _227 + 96] + 32])) + 1 > test266151307():
                        revert with 0, 65
                    mem[64] = mem[64] + ceil32(ceil32(mem[_151 + _156 + _227 + mem[_151 + _156 + _227 + 96] + 32])) + 1
                    mem[_342] = _339
                    require _156 + _227 + _328 + _339 + 64 <= return_data.size
                    idx = 0
                    while idx < _339:
                        mem[idx + _342 + 32] = mem[idx + _151 + _156 + _227 + _328 + 64]
                        idx = idx + 32
                        continue 
                    if ceil32(_339) > _339:
                        mem[_342 + _339 + 32] = 0
                    mem[_232 + 64] = _342
                mem[u] = _232
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
            _300 = mem[_151 + ceil32(return_data.size)]
            s = 0
            t = 0
            while s < _300:
                if s >= mem[_151 + ceil32(return_data.size)]:
                    revert with 0, 50
                if t >= mem[_49]:
                    revert with 0, 50
                mem[(32 * t) + _49 + 32] = mem[(32 * s) + _151 + ceil32(return_data.size) + 32]
                if t == -1:
                    revert with 0, 17
                if s == -1:
                    revert with 0, 17
                _300 = mem[_151 + ceil32(return_data.size)]
                s = s + 1
                t = t + 1
                continue 
            if idx == -1:
                revert with 0, 17
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
            _225 = mem[s]
            _226 = mem[mem[s]]
            mem[t] = 96
            _229 = mem[_226]
            mem[t + 96] = mem[_226]
            v = 0
            while v < _229:
                mem[v + t + 128] = mem[v + _226 + 32]
                v = v + 32
                continue 
            if ceil32(_229) <= _229:
                mem[t + 32] = mem[_225 + 44 len 20]
                _314 = mem[_225 + 64]
                mem[t + 64] = ceil32(_229) + 128
                _317 = mem[_314]
                mem[ceil32(_229) + t + 128] = mem[_314]
                v = 0
                while v < _317:
                    mem[v + ceil32(_229) + t + 160] = mem[v + _314 + 32]
                    v = v + 32
                    continue 
                if ceil32(_317) > _317:
                    mem[ceil32(_229) + t + _317 + 160] = 0
                idx = idx + 1
                s = s + 32
                t = ceil32(_317) + ceil32(_229) + t + 160
                u = u + 32
                continue 
            mem[t + _229 + 128] = 0
            mem[t + 32] = mem[_225 + 44 len 20]
            _319 = mem[_225 + 64]
            mem[t + 64] = ceil32(_229) + 128
            _325 = mem[_319]
            mem[ceil32(_229) + t + 128] = mem[_319]
            v = 0
            while v < _325:
                mem[v + ceil32(_229) + t + 160] = mem[v + _319 + 32]
                v = v + 32
                continue 
            if ceil32(_325) > _325:
                mem[ceil32(_229) + t + _325 + 160] = 0
            idx = idx + 1
            s = s + 32
            t = ceil32(_325) + ceil32(_229) + t + 160
            u = u + 32
            continue 
    else:
        mem[64] = _49 + (32 * s * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries) + 128
        mem[_49 + (32 * s * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries) + 32] = 96
        mem[_49 + (32 * s * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries) + 64] = 0
        mem[_49 + (32 * s * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries) + 96] = 96
        mem[_49 + 32] = _49 + (32 * s * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries) + 32
        t = _49 + 32
        idx = s * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries * numRegistries
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
            if 1 > !idx:
                revert with 0, 17
            mem[0] = idx + 1
            mem[32] = 0
            mem[mem[64]] = 0x67e4ac2c00000000000000000000000000000000000000000000000000000000
            require ext_code.size(stor0[idx + 1])
            staticcall stor0[idx + 1].0x67e4ac2c with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _246 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _250 = mem[_246]
            require mem[_246] <= test266151307()
            require _246 + mem[_246] + 31 < _246 + return_data.size
            _257 = mem[_246 + mem[_246]]
            if mem[_246 + mem[_246]] > test266151307():
                revert with 0, 65
            if floor32(mem[_246 + mem[_246]]) + 1 < 0 or _246 + ceil32(return_data.size) + floor32(mem[_246 + mem[_246]]) + 1 > test266151307():
                revert with 0, 65
            mem[64] = _246 + ceil32(return_data.size) + floor32(mem[_246 + mem[_246]]) + 1
            mem[_246 + ceil32(return_data.size)] = _257
            s = 0
            t = _246 + _250 + 32
            u = _246 + ceil32(return_data.size) + 32
            while s < _257:
                _306 = mem[t]
                require return_data.size + -_250 + -mem[t] - 32 >= 96
                _312 = mem[64]
                if mem[64] + 96 < mem[64] or mem[64] + 96 > test266151307():
                    revert with 0, 65
                mem[64] = mem[64] + 96
                _324 = mem[_246 + _250 + _306 + 32]
                require mem[_246 + _250 + _306 + 32] <= test266151307()
                require _246 + _250 + _306 + mem[_246 + _250 + _306 + 32] + 63 < _246 + return_data.size
                _331 = mem[_246 + _250 + _306 + mem[_246 + _250 + _306 + 32] + 32]
                if mem[_246 + _250 + _306 + mem[_246 + _250 + _306 + 32] + 32] > test266151307():
                    revert with 0, 65
                _338 = mem[64]
                if mem[64] + ceil32(ceil32(mem[_246 + _250 + _306 + mem[_246 + _250 + _306 + 32] + 32])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[_246 + _250 + _306 + mem[_246 + _250 + _306 + 32] + 32])) + 1 > test266151307():
                    revert with 0, 65
                mem[64] = mem[64] + ceil32(ceil32(mem[_246 + _250 + _306 + mem[_246 + _250 + _306 + 32] + 32])) + 1
                mem[_338] = _331
                require _250 + _306 + _324 + _331 + 64 <= return_data.size
                idx = 0
                while idx < _331:
                    mem[idx + _338 + 32] = mem[idx + _246 + _250 + _306 + _324 + 64]
                    idx = idx + 32
                    continue 
                if ceil32(_331) <= _331:
                    mem[_312] = _338
                    require mem[_246 + _250 + _306 + 64] == mem[_246 + _250 + _306 + 76 len 20]
                    mem[_312 + 32] = mem[_246 + _250 + _306 + 64]
                    _375 = mem[_246 + _250 + _306 + 96]
                    require mem[_246 + _250 + _306 + 96] <= test266151307()
                    require _246 + _250 + _306 + mem[_246 + _250 + _306 + 96] + 63 < _246 + return_data.size
                    _379 = mem[_246 + _250 + _306 + mem[_246 + _250 + _306 + 96] + 32]
                    if mem[_246 + _250 + _306 + mem[_246 + _250 + _306 + 96] + 32] > test266151307():
                        revert with 0, 65
                    _381 = mem[64]
                    if mem[64] + ceil32(ceil32(mem[_246 + _250 + _306 + mem[_246 + _250 + _306 + 96] + 32])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[_246 + _250 + _306 + mem[_246 + _250 + _306 + 96] + 32])) + 1 > test266151307():
                        revert with 0, 65
                    mem[64] = mem[64] + ceil32(ceil32(mem[_246 + _250 + _306 + mem[_246 + _250 + _306 + 96] + 32])) + 1
                    mem[_381] = _379
                    require _250 + _306 + _375 + _379 + 64 <= return_data.size
                    idx = 0
                    while idx < _379:
                        mem[idx + _381 + 32] = mem[idx + _246 + _250 + _306 + _375 + 64]
                        idx = idx + 32
                        continue 
                    if ceil32(_379) > _379:
                        mem[_381 + _379 + 32] = 0
                    mem[_312 + 64] = _381
                else:
                    mem[_338 + _331 + 32] = 0
                    mem[_312] = _338
                    require mem[_246 + _250 + _306 + 64] == mem[_246 + _250 + _306 + 76 len 20]
                    mem[_312 + 32] = mem[_246 + _250 + _306 + 64]
                    _377 = mem[_246 + _250 + _306 + 96]
                    require mem[_246 + _250 + _306 + 96] <= test266151307()
                    require _246 + _250 + _306 + mem[_246 + _250 + _306 + 96] + 63 < _246 + return_data.size
                    _380 = mem[_246 + _250 + _306 + mem[_246 + _250 + _306 + 96] + 32]
                    if mem[_246 + _250 + _306 + mem[_246 + _250 + _306 + 96] + 32] > test266151307():
                        revert with 0, 65
                    _382 = mem[64]
                    if mem[64] + ceil32(ceil32(mem[_246 + _250 + _306 + mem[_246 + _250 + _306 + 96] + 32])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[_246 + _250 + _306 + mem[_246 + _250 + _306 + 96] + 32])) + 1 > test266151307():
                        revert with 0, 65
                    mem[64] = mem[64] + ceil32(ceil32(mem[_246 + _250 + _306 + mem[_246 + _250 + _306 + 96] + 32])) + 1
                    mem[_382] = _380
                    require _250 + _306 + _377 + _380 + 64 <= return_data.size
                    idx = 0
                    while idx < _380:
                        mem[idx + _382 + 32] = mem[idx + _246 + _250 + _306 + _377 + 64]
                        idx = idx + 32
                        continue 
                    if ceil32(_380) > _380:
                        mem[_382 + _380 + 32] = 0
                    mem[_312 + 64] = _382
                mem[u] = _312
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
            _357 = mem[_246 + ceil32(return_data.size)]
            s = 0
            t = 0
            while s < _357:
                if s >= mem[_246 + ceil32(return_data.size)]:
                    revert with 0, 50
                if t >= mem[_49]:
                    revert with 0, 50
                mem[(32 * t) + _49 + 32] = mem[(32 * s) + _246 + ceil32(return_data.size) + 32]
                if t == -1:
                    revert with 0, 17
                if s == -1:
                    revert with 0, 17
                _357 = mem[_246 + ceil32(return_data.size)]
                s = s + 1
                t = t + 1
                continue 
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _230 = mem[64]
        mem[mem[64]] = 32
        _233 = mem[_49]
        mem[mem[64] + 32] = mem[_49]
        idx = 0
        s = _49 + 32
        t = mem[64] + (32 * _233) + 64
        u = mem[64] + 64
        while idx < _233:
            mem[u] = t + -_230 - 64
            _304 = mem[s]
            _305 = mem[mem[s]]
            mem[t] = 96
            _310 = mem[_305]
            mem[t + 96] = mem[_305]
            v = 0
            while v < _310:
                mem[v + t + 128] = mem[v + _305 + 32]
                v = v + 32
                continue 
            if ceil32(_310) <= _310:
                mem[t + 32] = mem[_304 + 44 len 20]
                _368 = mem[_304 + 64]
                mem[t + 64] = ceil32(_310) + 128
                _370 = mem[_368]
                mem[ceil32(_310) + t + 128] = mem[_368]
                v = 0
                while v < _370:
                    mem[v + ceil32(_310) + t + 160] = mem[v + _368 + 32]
                    v = v + 32
                    continue 
                if ceil32(_370) > _370:
                    mem[ceil32(_310) + t + _370 + 160] = 0
                idx = idx + 1
                s = s + 32
                t = ceil32(_370) + ceil32(_310) + t + 160
                u = u + 32
                continue 
            mem[t + _310 + 128] = 0
            mem[t + 32] = mem[_304 + 44 len 20]
            _372 = mem[_304 + 64]
            mem[t + 64] = ceil32(_310) + 128
            _374 = mem[_372]
            mem[ceil32(_310) + t + 128] = mem[_372]
            v = 0
            while v < _374:
                mem[v + ceil32(_310) + t + 160] = mem[v + _372 + 32]
                v = v + 32
                continue 
            if ceil32(_374) > _374:
                mem[ceil32(_310) + t + _374 + 160] = 0
            idx = idx + 1
            s = s + 32
            t = ceil32(_374) + ceil32(_310) + t + 160
            u = u + 32
            continue 
    return memory
      from mem[64]
       len t - mem[64]
}



}
