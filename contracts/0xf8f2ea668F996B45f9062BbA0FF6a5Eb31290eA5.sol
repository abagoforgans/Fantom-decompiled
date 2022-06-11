contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function sub_fd225b1f(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    mem[100] = address(arg2)
    require ext_code.size(address(arg1))
    staticcall address(arg1).balanceOf(address arg1) with:
            gas gas_remaining wei
           args address(arg2)
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] > test266151307():
        revert with 'NH{q', 65
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    mem[64] = ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128
    if not ext_call.return_data[0]:
        idx = 0
        while idx < ext_call.return_data[0]:
            mem[mem[64] + 4] = address(arg2)
            mem[mem[64] + 36] = idx
            require ext_code.size(address(arg1))
            staticcall address(arg1).tokenOfOwnerByIndex(address arg1, uint256 arg2) with:
                    gas gas_remaining wei
                   args address(arg2), idx
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _36 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_36] == mem[_36]
            if idx >= mem[ceil32(return_data.size) + 96]:
                revert with 'NH{q', 50
            mem[(32 * idx) + ceil32(return_data.size) + 128] = mem[_36]
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        mem[mem[64]] = 32
        _28 = mem[ceil32(return_data.size) + 96]
        mem[mem[64] + 32] = mem[ceil32(return_data.size) + 96]
        mem[mem[64] + 64 len 32 * _28] = mem[ceil32(return_data.size) + 128 len 32 * _28]
        return 32, mem[mem[64] + 32 len (32 * _28) + 32]
    mem[ceil32(return_data.size) + 128 len 32 * ext_call.return_data[0]] = call.data[calldata.size len 32 * ext_call.return_data[0]]
    idx = 0
    while idx < ext_call.return_data[0]:
        mem[mem[64] + 4] = address(arg2)
        mem[mem[64] + 36] = idx
        require ext_code.size(address(arg1))
        staticcall address(arg1).tokenOfOwnerByIndex(address arg1, uint256 arg2) with:
                gas gas_remaining wei
               args address(arg2), idx
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _37 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_37] == mem[_37]
        if idx >= mem[ceil32(return_data.size) + 96]:
            revert with 'NH{q', 50
        mem[(32 * idx) + ceil32(return_data.size) + 128] = mem[_37]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    mem[mem[64]] = 32
    _29 = mem[ceil32(return_data.size) + 96]
    mem[mem[64] + 32] = mem[ceil32(return_data.size) + 96]
    mem[mem[64] + 64 len 32 * _29] = mem[ceil32(return_data.size) + 128 len 32 * _29]
    return 32, mem[mem[64] + 32 len (32 * _29) + 32]
}

function sub_5a7e1149(?) payable {
    require calldata.size - 4 >= 128
    require cd[4] == address(cd[4])
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    require cd[68] == address(cd[68])
    require cd[100] == cd[100]
    if ('cd', 36).length > test266151307():
        revert with 'NH{q', 65
    mem[96] = ('cd', 36).length
    mem[64] = (32 * ('cd', 36).length) + 128
    if not ('cd', 36).length:
        idx = 0
        while idx < ('cd', 36).length:
            require cd[(cd[36] + (32 * idx) + 36)] < calldata.size + -cd[36] - 67
            require cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] <= test266151307()
            require cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68 <= calldata.size - cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]
            _24 = mem[64]
            mem[mem[64] + 4] = 96
            mem[mem[64] + 100] = cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]
            mem[mem[64] + 132 len cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]] = call.data[cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68 len cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]]
            mem[mem[64] + cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] + 132] = 0
            mem[mem[64] + 36] = address(cd[68])
            mem[_24 + 68] = cd[100]
            require ext_code.size(address(cd[4]))
            staticcall address(cd[4]).0x6ac39786 with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len _24 + ceil32(cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]) + -mem[64] + 128]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _32 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_32] == mem[_32]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            mem[(32 * idx) + 128] = mem[_32]
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
    else:
        mem[128 len 32 * ('cd', 36).length] = call.data[calldata.size len 32 * ('cd', 36).length]
        idx = 0
        while idx < ('cd', 36).length:
            require cd[(cd[36] + (32 * idx) + 36)] < calldata.size + -cd[36] - 67
            require cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] <= test266151307()
            require cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68 <= calldata.size - cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]
            _25 = mem[64]
            mem[mem[64] + 4] = 96
            mem[mem[64] + 100] = cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]
            mem[mem[64] + 132 len cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]] = call.data[cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68 len cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]]
            mem[mem[64] + cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] + 132] = 0
            mem[mem[64] + 36] = address(cd[68])
            mem[_25 + 68] = cd[100]
            require ext_code.size(address(cd[4]))
            staticcall address(cd[4]).0x6ac39786 with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len _25 + ceil32(cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]) + -mem[64] + 128]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _33 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_33] == mem[_33]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            mem[(32 * idx) + 128] = mem[_33]
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
    mem[mem[64]] = 32
    mem[mem[64] + 32] = mem[96]
    mem[mem[64] + 64 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
    return 32, mem[mem[64] + 32 len (32 * mem[96]) + 32]
}

function sub_2253ac49(?) payable {
    require calldata.size - 4 >= 128
    require cd[4] == address(cd[4])
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + ('cd', 36).length + 36 <= calldata.size
    require cd[68] == address(cd[68])
    require cd[100] <= test266151307()
    require cd[100] + 35 < calldata.size
    if ('cd', 100).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 100).length) + 97 > test266151307() or floor32(('cd', 100).length) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = ('cd', 100).length
    require cd[100] + (32 * ('cd', 100).length) + 36 <= calldata.size
    idx = 0
    s = cd[100] + 36
    t = 128
    while idx < ('cd', 100).length:
        require cd[s] == cd[s]
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if ('cd', 100).length > test266151307():
        revert with 'NH{q', 65
    mem[floor32(('cd', 100).length) + 97] = ('cd', 100).length
    mem[64] = floor32(('cd', 100).length) + (32 * ('cd', 100).length) + 129
    if not ('cd', 100).length:
        idx = 0
        while idx < ('cd', 100).length:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _59 = mem[(32 * idx) + 128]
            _60 = mem[64]
            mem[mem[64] + 4] = 96
            mem[mem[64] + 100] = ('cd', 36).length
            mem[mem[64] + 132 len ('cd', 36).length] = call.data[cd[36] + 36 len ('cd', 36).length]
            mem[mem[64] + ('cd', 36).length + 132] = 0
            mem[mem[64] + 36] = address(cd[68])
            mem[_60 + 68] = _59
            require ext_code.size(address(cd[4]))
            staticcall address(cd[4]).0x6ac39786 with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len _60 + ceil32(('cd', 36).length) + -mem[64] + 128]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _72 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_72] == mem[_72]
            if idx >= mem[floor32(('cd', 100).length) + 97]:
                revert with 'NH{q', 50
            mem[(32 * idx) + floor32(('cd', 100).length) + 129] = mem[_72]
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        mem[mem[64]] = 32
        _64 = mem[floor32(('cd', 100).length) + 97]
        mem[mem[64] + 32] = mem[floor32(('cd', 100).length) + 97]
        mem[mem[64] + 64 len 32 * _64] = mem[floor32(('cd', 100).length) + 129 len 32 * _64]
        return 32, mem[mem[64] + 32 len (32 * _64) + 32]
    mem[floor32(('cd', 100).length) + 129 len 32 * ('cd', 100).length] = call.data[calldata.size len 32 * ('cd', 100).length]
    idx = 0
    while idx < ('cd', 100).length:
        if idx >= mem[96]:
            revert with 'NH{q', 50
        _62 = mem[(32 * idx) + 128]
        _63 = mem[64]
        mem[mem[64] + 4] = 96
        mem[mem[64] + 100] = ('cd', 36).length
        mem[mem[64] + 132 len ('cd', 36).length] = call.data[cd[36] + 36 len ('cd', 36).length]
        mem[mem[64] + ('cd', 36).length + 132] = 0
        mem[mem[64] + 36] = address(cd[68])
        mem[_63 + 68] = _62
        require ext_code.size(address(cd[4]))
        staticcall address(cd[4]).0x6ac39786 with:
                gas gas_remaining wei
               args mem[mem[64] + 4 len _63 + ceil32(('cd', 36).length) + -mem[64] + 128]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _73 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_73] == mem[_73]
        if idx >= mem[floor32(('cd', 100).length) + 97]:
            revert with 'NH{q', 50
        mem[(32 * idx) + floor32(('cd', 100).length) + 129] = mem[_73]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    mem[mem[64]] = 32
    _65 = mem[floor32(('cd', 100).length) + 97]
    mem[mem[64] + 32] = mem[floor32(('cd', 100).length) + 97]
    mem[mem[64] + 64 len 32 * _65] = mem[floor32(('cd', 100).length) + 129 len 32 * _65]
    return 32, mem[mem[64] + 32 len (32 * _65) + 32]
}



}
