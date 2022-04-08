contract main {




// =====================  Runtime code  =====================


const unirouter = 0xf491e7b69e4244ad4002bc14e878a34207e38c29


address owner;
address stor1;
address stor2;
address stor3;
address stor4;
array of address stor5;
uint256 stor6;
array of address stor1546678032441257452667456735582814959992782782816731922691272282333561699760;

function owner() payable {
    return owner
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function updateCost(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor6 = arg1
}

function removeStrat(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 >= stor5.length:
        revert with 0, 50
    stor5[arg1] = 0
}

function addStrat(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor5.length++
    stor36B6[stor5.length] = arg1
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_cc9aa33b(?) payable {
    require calldata.size - 4 >= 32
    mem[96] = 2
    mem[128] = stor1
    mem[160] = stor2
    mem[192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[196] = arg1
    mem[228] = 64
    mem[260] = 2
    idx = 0
    s = 128
    t = 292
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(stor3)
    staticcall stor3.getAmountsOut(uint256 rg1, address[] rg2) with:
            gas gas_remaining wei
           args arg1, Array(len=2, data=mem[292 len 64])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 192
    require return_data.size >= 32
    _20 = mem[192 len 4], Mask(224, 32, arg1) >> 32
    require mem[192 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
    require mem[192 len 4], Mask(224, 32, arg1) >> 32 + 223 < return_data.size + 192
    _21 = mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]
    if mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192] > test266151307():
        revert with 0, 65
    if ceil32(return_data.size) + floor32(mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 193 > test266151307() or floor32(mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 1 < 0:
        revert with 0, 65
    mem[64] = ceil32(return_data.size) + floor32(mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 193
    mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]
    require return_data.size >= _20 + (32 * _21) + 32
    mem[ceil32(return_data.size) + 224 len 32 * _21] = mem[_20 + 224 len 32 * _21]
    if 1 >= _21:
        revert with 0, 50
    mem[mem[64]] = mem[ceil32(return_data.size) + 256]
    return memory
      from mem[64]
       len 32
}

function sub_eef7ba9a(?) payable {
    mem[64] = 96
    idx = 0
    s = 0
    while idx < stor5.length:
        mem[0] = 5
        require ext_code.size(stor5[idx])
        staticcall stor5[idx].poolId() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _37 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _38 = mem[_37]
        if idx >= stor5.length:
            revert with 0, 50
        mem[0] = 5
        mem[mem[64] + 4] = _38
        mem[mem[64] + 36] = stor5[idx]
        require ext_code.size(stor4)
        staticcall stor4.0xa279b07f with:
                gas gas_remaining wei
               args _38, stor5[idx]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _42 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _43 = mem[_42]
        _44 = mem[64]
        mem[mem[64]] = 2
        mem[64] = mem[64] + 96
        if not mem[_44]:
            revert with 0, 50
        mem[_44 + 32] = stor1
        if 1 >= mem[_44]:
            revert with 0, 50
        mem[_44 + 64] = stor2
        mem[_44 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[_44 + 100] = _43
        mem[_44 + 132] = 64
        mem[_44 + 164] = mem[_44]
        t = 0
        u = _44 + 32
        v = _44 + 196
        while t < mem[_44]:
            mem[v] = mem[u + 12 len 20]
            t = t + 1
            u = u + 32
            v = v + 32
            continue 
        require ext_code.size(stor3)
        staticcall stor3.mem[mem[64] len 4] with:
                gas gas_remaining wei
               args mem[mem[64] + 4 len _44 + (32 * mem[_44]) + -mem[64] + 192]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _65 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _66 = mem[_65]
        require mem[_65] <= test266151307()
        require _65 + mem[_65] + 31 < _65 + return_data.size
        _67 = mem[_65 + mem[_65]]
        if mem[_65 + mem[_65]] > test266151307():
            revert with 0, 65
        if _65 + ceil32(return_data.size) + floor32(mem[_65 + mem[_65]]) + 1 > test266151307() or floor32(mem[_65 + mem[_65]]) + 1 < 0:
            revert with 0, 65
        mem[64] = _65 + ceil32(return_data.size) + floor32(mem[_65 + mem[_65]]) + 1
        mem[_65 + ceil32(return_data.size)] = _67
        require return_data.size >= _66 + (32 * _67) + 32
        u = _65 + _66 + 32
        v = _65 + ceil32(return_data.size) + 32
        t = 0
        while t < _67:
            mem[v] = mem[u]
            u = u + 32
            v = v + 32
            t = t + 1
            continue 
        if 1 >= _67:
            revert with 0, 50
        _79 = mem[_65 + ceil32(return_data.size) + 64]
        if idx >= stor5.length:
            revert with 0, 50
        mem[0] = 5
        require ext_code.size(stor5[idx])
        staticcall stor5[idx]._callFee() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _83 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if _79 and mem[_83] > -1 / _79:
            revert with 0, 17
        if _79 * mem[_83] <= stor6:
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

function sub_448280d7(?) payable {
    mem[64] = 96
    idx = 0
    s = 0
    while idx < stor5.length:
        mem[0] = 5
        require ext_code.size(stor5[idx])
        staticcall stor5[idx].poolId() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _70 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _71 = mem[_70]
        if idx >= stor5.length:
            revert with 0, 50
        mem[0] = 5
        mem[mem[64] + 4] = _71
        mem[mem[64] + 36] = stor5[idx]
        require ext_code.size(stor4)
        staticcall stor4.0xa279b07f with:
                gas gas_remaining wei
               args _71, stor5[idx]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _91 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _98 = mem[_91]
        _101 = mem[64]
        mem[mem[64]] = 2
        mem[64] = mem[64] + 96
        if not mem[_101]:
            revert with 0, 50
        mem[_101 + 32] = stor1
        if 1 >= mem[_101]:
            revert with 0, 50
        mem[_101 + 64] = stor2
        mem[_101 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[_101 + 100] = _98
        mem[_101 + 132] = 64
        mem[_101 + 164] = mem[_101]
        t = 0
        u = _101 + 32
        v = _101 + 196
        while t < mem[_101]:
            mem[v] = mem[u + 12 len 20]
            t = t + 1
            u = u + 32
            v = v + 32
            continue 
        require ext_code.size(stor3)
        staticcall stor3.mem[mem[64] len 4] with:
                gas gas_remaining wei
               args mem[mem[64] + 4 len _101 + (32 * mem[_101]) + -mem[64] + 192]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _180 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _185 = mem[_180]
        require mem[_180] <= test266151307()
        require _180 + mem[_180] + 31 < _180 + return_data.size
        _192 = mem[_180 + mem[_180]]
        if mem[_180 + mem[_180]] > test266151307():
            revert with 0, 65
        if _180 + ceil32(return_data.size) + floor32(mem[_180 + mem[_180]]) + 1 > test266151307() or floor32(mem[_180 + mem[_180]]) + 1 < 0:
            revert with 0, 65
        mem[64] = _180 + ceil32(return_data.size) + floor32(mem[_180 + mem[_180]]) + 1
        mem[_180 + ceil32(return_data.size)] = _192
        require return_data.size >= _185 + (32 * _192) + 32
        u = _180 + _185 + 32
        v = _180 + ceil32(return_data.size) + 32
        t = 0
        while t < _192:
            mem[v] = mem[u]
            u = u + 32
            v = v + 32
            t = t + 1
            continue 
        if 1 >= _192:
            revert with 0, 50
        _260 = mem[_180 + ceil32(return_data.size) + 64]
        if idx >= stor5.length:
            revert with 0, 50
        mem[0] = 5
        require ext_code.size(stor5[idx])
        staticcall stor5[idx]._callFee() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _268 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if _260 and mem[_268] > -1 / _260:
            revert with 0, 17
        if _260 * mem[_268] <= stor6:
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
    _69 = mem[64]
    mem[mem[64]] = s
    mem[64] = mem[64] + (32 * s) + 32
    if not s:
        idx = 0
        s = 0
        while idx < stor5.length:
            mem[0] = 5
            require ext_code.size(stor5[idx])
            staticcall stor5[idx].poolId() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _177 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _182 = mem[_177]
            if idx >= stor5.length:
                revert with 0, 50
            mem[0] = 5
            mem[mem[64] + 4] = _182
            mem[mem[64] + 36] = stor5[idx]
            require ext_code.size(stor4)
            staticcall stor4.0xa279b07f with:
                    gas gas_remaining wei
                   args _182, stor5[idx]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _196 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _198 = mem[_196]
            _202 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            if not mem[_202]:
                revert with 0, 50
            mem[_202 + 32] = stor1
            if 1 >= mem[_202]:
                revert with 0, 50
            mem[_202 + 64] = stor2
            mem[_202 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[_202 + 100] = _198
            mem[_202 + 132] = 64
            mem[_202 + 164] = mem[_202]
            t = 0
            u = _202 + 32
            v = _202 + 196
            while t < mem[_202]:
                mem[v] = mem[u + 12 len 20]
                t = t + 1
                u = u + 32
                v = v + 32
                continue 
            require ext_code.size(stor3)
            staticcall stor3.mem[mem[64] len 4] with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len _202 + (32 * mem[_202]) + -mem[64] + 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _261 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _266 = mem[_261]
            require mem[_261] <= test266151307()
            require _261 + mem[_261] + 31 < _261 + return_data.size
            _269 = mem[_261 + mem[_261]]
            if mem[_261 + mem[_261]] > test266151307():
                revert with 0, 65
            if _261 + ceil32(return_data.size) + floor32(mem[_261 + mem[_261]]) + 1 > test266151307() or floor32(mem[_261 + mem[_261]]) + 1 < 0:
                revert with 0, 65
            mem[64] = _261 + ceil32(return_data.size) + floor32(mem[_261 + mem[_261]]) + 1
            mem[_261 + ceil32(return_data.size)] = _269
            require return_data.size >= _266 + (32 * _269) + 32
            u = _261 + _266 + 32
            v = _261 + ceil32(return_data.size) + 32
            t = 0
            while t < _269:
                mem[v] = mem[u]
                u = u + 32
                v = v + 32
                t = t + 1
                continue 
            if 1 >= _269:
                revert with 0, 50
            _298 = mem[_261 + ceil32(return_data.size) + 64]
            if idx >= stor5.length:
                revert with 0, 50
            mem[0] = 5
            require ext_code.size(stor5[idx])
            staticcall stor5[idx]._callFee() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _306 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if _298 and mem[_306] > -1 / _298:
                revert with 0, 17
            if _298 * mem[_306] <= stor6:
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s
                continue 
            if idx >= stor5.length:
                revert with 0, 50
            mem[0] = 5
            if s >= mem[_69]:
                revert with 0, 50
            mem[(32 * s) + _69 + 32] = stor5[idx]
            if s == -1:
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + 1
            continue 
        _167 = mem[64]
        mem[mem[64]] = 32
        _176 = mem[_69]
        mem[mem[64] + 32] = mem[_69]
        idx = 0
        s = _69 + 32
        t = mem[64] + 64
        while idx < _176:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _167 + (32 * _176) + -mem[64] + 64
    mem[_69 + 32 len 32 * s] = call.data[calldata.size len 32 * s]
    idx = 0
    s = 0
    while idx < stor5.length:
        mem[0] = 5
        require ext_code.size(stor5[idx])
        staticcall stor5[idx].poolId() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _179 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _184 = mem[_179]
        if idx >= stor5.length:
            revert with 0, 50
        mem[0] = 5
        mem[mem[64] + 4] = _184
        mem[mem[64] + 36] = stor5[idx]
        require ext_code.size(stor4)
        staticcall stor4.0xa279b07f with:
                gas gas_remaining wei
               args _184, stor5[idx]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _197 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _199 = mem[_197]
        _204 = mem[64]
        mem[mem[64]] = 2
        mem[64] = mem[64] + 96
        if not mem[_204]:
            revert with 0, 50
        mem[_204 + 32] = stor1
        if 1 >= mem[_204]:
            revert with 0, 50
        mem[_204 + 64] = stor2
        mem[_204 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[_204 + 100] = _199
        mem[_204 + 132] = 64
        mem[_204 + 164] = mem[_204]
        t = 0
        u = _204 + 32
        v = _204 + 196
        while t < mem[_204]:
            mem[v] = mem[u + 12 len 20]
            t = t + 1
            u = u + 32
            v = v + 32
            continue 
        require ext_code.size(stor3)
        staticcall stor3.mem[mem[64] len 4] with:
                gas gas_remaining wei
               args mem[mem[64] + 4 len _204 + (32 * mem[_204]) + -mem[64] + 192]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _262 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _267 = mem[_262]
        require mem[_262] <= test266151307()
        require _262 + mem[_262] + 31 < _262 + return_data.size
        _270 = mem[_262 + mem[_262]]
        if mem[_262 + mem[_262]] > test266151307():
            revert with 0, 65
        if _262 + ceil32(return_data.size) + floor32(mem[_262 + mem[_262]]) + 1 > test266151307() or floor32(mem[_262 + mem[_262]]) + 1 < 0:
            revert with 0, 65
        mem[64] = _262 + ceil32(return_data.size) + floor32(mem[_262 + mem[_262]]) + 1
        mem[_262 + ceil32(return_data.size)] = _270
        require return_data.size >= _267 + (32 * _270) + 32
        u = _262 + _267 + 32
        v = _262 + ceil32(return_data.size) + 32
        t = 0
        while t < _270:
            mem[v] = mem[u]
            u = u + 32
            v = v + 32
            t = t + 1
            continue 
        if 1 >= _270:
            revert with 0, 50
        _299 = mem[_262 + ceil32(return_data.size) + 64]
        if idx >= stor5.length:
            revert with 0, 50
        mem[0] = 5
        require ext_code.size(stor5[idx])
        staticcall stor5[idx]._callFee() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _307 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if _299 and mem[_307] > -1 / _299:
            revert with 0, 17
        if _299 * mem[_307] <= stor6:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s
            continue 
        if idx >= stor5.length:
            revert with 0, 50
        mem[0] = 5
        if s >= mem[_69]:
            revert with 0, 50
        mem[(32 * s) + _69 + 32] = stor5[idx]
        if s == -1:
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s + 1
        continue 
    _171 = mem[64]
    mem[mem[64]] = 32
    _178 = mem[_69]
    mem[mem[64] + 32] = mem[_69]
    idx = 0
    s = _69 + 32
    t = mem[64] + 64
    while idx < _178:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len _171 + (32 * _178) + -mem[64] + 64
}



}
