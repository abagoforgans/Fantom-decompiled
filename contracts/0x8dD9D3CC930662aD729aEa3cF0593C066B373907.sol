contract main {




// =====================  Runtime code  =====================


#
#  - sub_3c528ca4(?)
#
address owner;

function owner() payable {
    return owner
}

function _fallback() payable {
    revert
}

function withdraw(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Owner'
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args owner, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function getReserves(address[] arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if floor32(arg1.length) + 97 > test266151307() or floor32(arg1.length) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = arg1.length
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    idx = 0
    s = arg1 + 36
    t = 128
    while idx < arg1.length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if arg1.length > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
        revert with 'NH{q', 17
    if 2 * arg1.length > test266151307():
        revert with 'NH{q', 65
    mem[floor32(arg1.length) + 97] = 2 * arg1.length
    mem[64] = floor32(arg1.length) + (64 * arg1.length) + 129
    if not uint255(arg1.length):
        idx = 0
        while idx < arg1.length:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            require ext_code.size(mem[(32 * idx) + 140 len 20])
            staticcall mem[(32 * idx) + 140 len 20].getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _72 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            require mem[_72] == mem[_72 + 18 len 14]
            _81 = mem[_72 + 32]
            require mem[_72 + 32] == mem[_72 + 50 len 14]
            require mem[_72 + 64] == mem[_72 + 92 len 4]
            if idx and 2 > -1 / idx:
                revert with 'NH{q', 17
            if 2 * idx > -1:
                revert with 'NH{q', 17
            if 2 * idx >= mem[floor32(arg1.length) + 97]:
                revert with 'NH{q', 50
            mem[(64 * idx) + floor32(arg1.length) + 129] = mem[_72 + 18 len 14]
            if idx and 2 > -1 / idx:
                revert with 'NH{q', 17
            if 2 * idx > -2:
                revert with 'NH{q', 17
            if (2 * idx) + 1 >= mem[floor32(arg1.length) + 97]:
                revert with 'NH{q', 50
            mem[(32 * (2 * idx) + 1) + floor32(arg1.length) + 129] = Mask(112, 0, _81)
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _64 = mem[64]
        mem[mem[64]] = 32
        _74 = mem[floor32(arg1.length) + 97]
        mem[mem[64] + 32] = mem[floor32(arg1.length) + 97]
        idx = 0
        s = floor32(arg1.length) + 129
        t = mem[64] + 64
        while idx < _74:
            mem[t] = mem[s + 18 len 14]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _64 + (32 * _74) + -mem[64] + 64
    mem[floor32(arg1.length) + 129 len 64 * arg1.length] = call.data[calldata.size len 64 * arg1.length]
    idx = 0
    while idx < arg1.length:
        if idx >= mem[96]:
            revert with 'NH{q', 50
        require ext_code.size(mem[(32 * idx) + 140 len 20])
        staticcall mem[(32 * idx) + 140 len 20].getReserves() with:
                gas gas_remaining wei
        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _73 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 96
        require mem[_73] == mem[_73 + 18 len 14]
        _83 = mem[_73 + 32]
        require mem[_73 + 32] == mem[_73 + 50 len 14]
        require mem[_73 + 64] == mem[_73 + 92 len 4]
        if idx and 2 > -1 / idx:
            revert with 'NH{q', 17
        if 2 * idx > -1:
            revert with 'NH{q', 17
        if 2 * idx >= mem[floor32(arg1.length) + 97]:
            revert with 'NH{q', 50
        mem[(64 * idx) + floor32(arg1.length) + 129] = mem[_73 + 18 len 14]
        if idx and 2 > -1 / idx:
            revert with 'NH{q', 17
        if 2 * idx > -2:
            revert with 'NH{q', 17
        if (2 * idx) + 1 >= mem[floor32(arg1.length) + 97]:
            revert with 'NH{q', 50
        mem[(32 * (2 * idx) + 1) + floor32(arg1.length) + 129] = Mask(112, 0, _83)
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    _68 = mem[64]
    mem[mem[64]] = 32
    _75 = mem[floor32(arg1.length) + 97]
    mem[mem[64] + 32] = mem[floor32(arg1.length) + 97]
    idx = 0
    s = floor32(arg1.length) + 129
    t = mem[64] + 64
    while idx < _75:
        mem[t] = mem[s + 18 len 14]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len _68 + (32 * _75) + -mem[64] + 64
}



}
