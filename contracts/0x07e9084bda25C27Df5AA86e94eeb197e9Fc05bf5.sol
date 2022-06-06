contract main {




// =====================  Runtime code  =====================


address sub_74932a71Address;
uint256 sub_ff00e8fa;

function sub_74932a71(?) payable {
    return sub_74932a71Address
}

function sub_ff00e8fa(?) payable {
    return sub_ff00e8fa
}

function _fallback() payable {
    revert
}

function sub_13a0f614(?) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require calldata.size > arg1 + 35
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(ceil32(arg1.length)) + 97
    mem[96] = arg1.length
    require arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    idx = 0
    s = 0
    while idx <= sub_ff00e8fa:
        _18 = sha3(mem[128 len mem[96]])
        mem[mem[64]] = 0x73075aff00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = idx
        require ext_code.size(sub_74932a71Address)
        staticcall sub_74932a71Address.getSkinColor(uint256 arg1) with:
                gas gas_remaining wei
               args idx
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _23 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _24 = mem[_23]
        require mem[_23] <= test266151307()
        require _23 + return_data.size > _23 + mem[_23] + 31
        _25 = mem[_23 + mem[_23]]
        if mem[_23 + mem[_23]] > test266151307():
            revert with 0, 65
        if ceil32(ceil32(mem[_23 + mem[_23]])) + 1 < 0 or _23 + ceil32(return_data.size) + ceil32(ceil32(mem[_23 + mem[_23]])) + 1 > test266151307():
            revert with 0, 65
        mem[64] = _23 + ceil32(return_data.size) + ceil32(ceil32(mem[_23 + mem[_23]])) + 1
        mem[_23 + ceil32(return_data.size)] = _25
        require _24 + _25 + 32 <= return_data.size
        t = 0
        while t < _25:
            mem[t + _23 + ceil32(return_data.size) + 32] = mem[t + _23 + _24 + 32]
            t = t + 32
            continue 
        if ceil32(_25) > _25:
            mem[_23 + ceil32(return_data.size) + _25 + 32] = 0
        if sha3(mem[_23 + ceil32(return_data.size) + 32 len _25]) != _18:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s
            continue 
        if s == -1:
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s + 1
        continue 
    return s
}

function sub_4da6e3d5(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    mem[100] = address(arg1)
    require ext_code.size(sub_74932a71Address)
    staticcall sub_74932a71Address.balanceOf(address arg1) with:
            gas gas_remaining wei
           args address(arg1)
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > test266151307():
        revert with 0, 65
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    mem[64] = ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128
    if not ext_call.return_data[0]:
        idx = 0
        while idx < ext_call.return_data[0]:
            mem[mem[64] + 4] = address(arg1)
            mem[mem[64] + 36] = idx
            require ext_code.size(sub_74932a71Address)
            staticcall sub_74932a71Address.tokenOfOwnerByIndex(address arg1, uint256 arg2) with:
                    gas gas_remaining wei
                   args address(arg1), idx
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _31 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if idx >= mem[ceil32(return_data.size) + 96]:
                revert with 0, 50
            mem[(32 * idx) + ceil32(return_data.size) + 128] = mem[_31]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        mem[mem[64]] = 32
        _30 = mem[ceil32(return_data.size) + 96]
        mem[mem[64] + 32] = mem[ceil32(return_data.size) + 96]
        mem[mem[64] + 64 len 32 * _30] = mem[ceil32(return_data.size) + 128 len 32 * _30]
        return 32, mem[mem[64] + 32 len (32 * _30) + 32]
    mem[ceil32(return_data.size) + 128 len 32 * ext_call.return_data[0]] = call.data[calldata.size len 32 * ext_call.return_data[0]]
    idx = 0
    while idx < ext_call.return_data[0]:
        mem[mem[64] + 4] = address(arg1)
        mem[mem[64] + 36] = idx
        require ext_code.size(sub_74932a71Address)
        staticcall sub_74932a71Address.tokenOfOwnerByIndex(address arg1, uint256 arg2) with:
                gas gas_remaining wei
               args address(arg1), idx
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _33 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if idx >= mem[ceil32(return_data.size) + 96]:
            revert with 0, 50
        mem[(32 * idx) + ceil32(return_data.size) + 128] = mem[_33]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    mem[mem[64]] = 32
    _32 = mem[ceil32(return_data.size) + 96]
    mem[mem[64] + 32] = mem[ceil32(return_data.size) + 96]
    mem[mem[64] + 64 len 32 * _32] = mem[ceil32(return_data.size) + 128 len 32 * _32]
    return 32, mem[mem[64] + 32 len (32 * _32) + 32]
}

function sub_965562a6(?) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require calldata.size > arg1 + 35
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(ceil32(arg1.length)) + 97
    mem[96] = arg1.length
    require arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    idx = 0
    s = 0
    while idx <= sub_ff00e8fa:
        _36 = sha3(mem[128 len mem[96]])
        mem[mem[64]] = 0x73075aff00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = idx
        require ext_code.size(sub_74932a71Address)
        staticcall sub_74932a71Address.getSkinColor(uint256 arg1) with:
                gas gas_remaining wei
               args idx
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _40 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _41 = mem[_40]
        require mem[_40] <= test266151307()
        require _40 + return_data.size > _40 + mem[_40] + 31
        _51 = mem[_40 + mem[_40]]
        if mem[_40 + mem[_40]] > test266151307():
            revert with 0, 65
        if ceil32(ceil32(mem[_40 + mem[_40]])) + 1 < 0 or _40 + ceil32(return_data.size) + ceil32(ceil32(mem[_40 + mem[_40]])) + 1 > test266151307():
            revert with 0, 65
        mem[64] = _40 + ceil32(return_data.size) + ceil32(ceil32(mem[_40 + mem[_40]])) + 1
        mem[_40 + ceil32(return_data.size)] = _51
        require _41 + _51 + 32 <= return_data.size
        t = 0
        while t < _51:
            mem[t + _40 + ceil32(return_data.size) + 32] = mem[t + _40 + _41 + 32]
            t = t + 32
            continue 
        if ceil32(_51) > _51:
            mem[_40 + ceil32(return_data.size) + _51 + 32] = 0
        if sha3(mem[_40 + ceil32(return_data.size) + 32 len _51]) != _36:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s
            continue 
        if s == -1:
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s + 1
        continue 
    if s > test266151307():
        revert with 0, 65
    _39 = mem[64]
    mem[mem[64]] = s
    mem[64] = mem[64] + (32 * s) + 32
    if not s:
        idx = 0
        s = 0
        while idx < sub_ff00e8fa:
            _88 = sha3(mem[128 len mem[96]])
            mem[mem[64]] = 0x73075aff00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = idx
            require ext_code.size(sub_74932a71Address)
            staticcall sub_74932a71Address.getSkinColor(uint256 arg1) with:
                    gas gas_remaining wei
                   args idx
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _99 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _107 = mem[_99]
            require mem[_99] <= test266151307()
            require _99 + return_data.size > _99 + mem[_99] + 31
            _112 = mem[_99 + mem[_99]]
            if mem[_99 + mem[_99]] > test266151307():
                revert with 0, 65
            if ceil32(ceil32(mem[_99 + mem[_99]])) + 1 < 0 or _99 + ceil32(return_data.size) + ceil32(ceil32(mem[_99 + mem[_99]])) + 1 > test266151307():
                revert with 0, 65
            mem[64] = _99 + ceil32(return_data.size) + ceil32(ceil32(mem[_99 + mem[_99]])) + 1
            mem[_99 + ceil32(return_data.size)] = _112
            require _107 + _112 + 32 <= return_data.size
            t = 0
            while t < _112:
                mem[t + _99 + ceil32(return_data.size) + 32] = mem[t + _99 + _107 + 32]
                t = t + 32
                continue 
            if ceil32(_112) > _112:
                mem[_99 + ceil32(return_data.size) + _112 + 32] = 0
            if sha3(mem[_99 + ceil32(return_data.size) + 32 len _112]) != _88:
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s
                continue 
            if s >= mem[_39]:
                revert with 0, 50
            mem[(32 * s) + _39 + 32] = idx
            if s == -1:
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + 1
            continue 
        mem[mem[64]] = 32
        _98 = mem[_39]
        mem[mem[64] + 32] = mem[_39]
        mem[mem[64] + 64 len 32 * _98] = mem[_39 + 32 len 32 * _98]
        return 32, mem[mem[64] + 32 len (32 * _98) + 32]
    mem[_39 + 32 len 32 * s] = call.data[calldata.size len 32 * s]
    idx = 0
    s = 0
    while idx < sub_ff00e8fa:
        _92 = sha3(mem[128 len mem[96]])
        mem[mem[64]] = 0x73075aff00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = idx
        require ext_code.size(sub_74932a71Address)
        staticcall sub_74932a71Address.getSkinColor(uint256 arg1) with:
                gas gas_remaining wei
               args idx
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _101 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _109 = mem[_101]
        require mem[_101] <= test266151307()
        require _101 + return_data.size > _101 + mem[_101] + 31
        _113 = mem[_101 + mem[_101]]
        if mem[_101 + mem[_101]] > test266151307():
            revert with 0, 65
        if ceil32(ceil32(mem[_101 + mem[_101]])) + 1 < 0 or _101 + ceil32(return_data.size) + ceil32(ceil32(mem[_101 + mem[_101]])) + 1 > test266151307():
            revert with 0, 65
        mem[64] = _101 + ceil32(return_data.size) + ceil32(ceil32(mem[_101 + mem[_101]])) + 1
        mem[_101 + ceil32(return_data.size)] = _113
        require _109 + _113 + 32 <= return_data.size
        t = 0
        while t < _113:
            mem[t + _101 + ceil32(return_data.size) + 32] = mem[t + _101 + _109 + 32]
            t = t + 32
            continue 
        if ceil32(_113) > _113:
            mem[_101 + ceil32(return_data.size) + _113 + 32] = 0
        if sha3(mem[_101 + ceil32(return_data.size) + 32 len _113]) != _92:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s
            continue 
        if s >= mem[_39]:
            revert with 0, 50
        mem[(32 * s) + _39 + 32] = idx
        if s == -1:
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s + 1
        continue 
    mem[mem[64]] = 32
    _100 = mem[_39]
    mem[mem[64] + 32] = mem[_39]
    mem[mem[64] + 64 len 32 * _100] = mem[_39 + 32 len 32 * _100]
    return 32, mem[mem[64] + 32 len (32 * _100) + 32]
}



}
