contract main {




// =====================  Runtime code  =====================


const sub_50d7d613(?) = 0xf491e7b69e4244ad4002bc14e878a34207e38c29

const sub_f452ba42(?) = 0xf491e7b69e4244ad4002bc14e878a34207e38c29


address owner;
address stor1;
address stor2;
address stor3;
address stor4;
address stor5;
address stor6;
address stor7;
array of struct stor8;
uint256 stor9;

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
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor9 = arg1
}

function removeStrat(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 >= stor8.length:
        revert with 'NH{q', 50
    stor8[arg1].field_0 = 0
    stor8[arg1].field_160 = 0
}

function sub_741d1797(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == bool(arg2)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor8.length++
    stor8[stor8.length].field_0 = address(arg1)
    stor8[stor8.length].field_160 = Mask(96, 0, bool(arg2))
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

function sub_634a3f53(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == bool(arg2)
    if arg1 < 10^10:
        return 0
    mem[96] = 2
    if arg2:
        if arg2:
            mem[128] = stor2
            mem[160] = stor3
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
            require ext_code.size(stor5)
            staticcall stor5.getAmountsOut(uint256 rg1, address[] rg2) with:
                    gas gas_remaining wei
                   args arg1, Array(len=2, data=mem[292 len 64])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 192
            require return_data.size >= 32
            _77 = mem[192 len 4], Mask(224, 32, arg1) >> 32
            require mem[192 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
            require mem[192 len 4], Mask(224, 32, arg1) >> 32 + 223 < return_data.size + 192
            _81 = mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]
            if mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192] > test266151307():
                revert with 'NH{q', 65
            if ceil32(return_data.size) + floor32(mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 193 > test266151307() or floor32(mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = ceil32(return_data.size) + floor32(mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 193
            mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]
            require _77 + (32 * _81) + 32 <= return_data.size
            idx = 0
            s = _77 + 224
            t = ceil32(return_data.size) + 224
            while idx < _81:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            if 1 >= _81:
                revert with 'NH{q', 50
        else:
            mem[128] = stor1
            mem[160] = stor3
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
            require ext_code.size(stor5)
            staticcall stor5.getAmountsOut(uint256 rg1, address[] rg2) with:
                    gas gas_remaining wei
                   args arg1, Array(len=2, data=mem[292 len 64])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 192
            require return_data.size >= 32
            _78 = mem[192 len 4], Mask(224, 32, arg1) >> 32
            require mem[192 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
            require mem[192 len 4], Mask(224, 32, arg1) >> 32 + 223 < return_data.size + 192
            _82 = mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]
            if mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192] > test266151307():
                revert with 'NH{q', 65
            if ceil32(return_data.size) + floor32(mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 193 > test266151307() or floor32(mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = ceil32(return_data.size) + floor32(mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 193
            mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]
            require _78 + (32 * _82) + 32 <= return_data.size
            idx = 0
            s = _78 + 224
            t = ceil32(return_data.size) + 224
            while idx < _82:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            if 1 >= _82:
                revert with 'NH{q', 50
    else:
        if arg2:
            mem[128] = stor2
            mem[160] = stor3
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
            require ext_code.size(stor4)
            staticcall stor4.getAmountsOut(uint256 rg1, address[] rg2) with:
                    gas gas_remaining wei
                   args arg1, Array(len=2, data=mem[292 len 64])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 192
            require return_data.size >= 32
            _79 = mem[192 len 4], Mask(224, 32, arg1) >> 32
            require mem[192 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
            require mem[192 len 4], Mask(224, 32, arg1) >> 32 + 223 < return_data.size + 192
            _83 = mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]
            if mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192] > test266151307():
                revert with 'NH{q', 65
            if ceil32(return_data.size) + floor32(mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 193 > test266151307() or floor32(mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = ceil32(return_data.size) + floor32(mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 193
            mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]
            require _79 + (32 * _83) + 32 <= return_data.size
            idx = 0
            s = _79 + 224
            t = ceil32(return_data.size) + 224
            while idx < _83:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            if 1 >= _83:
                revert with 'NH{q', 50
        else:
            mem[128] = stor1
            mem[160] = stor3
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
            require ext_code.size(stor4)
            staticcall stor4.getAmountsOut(uint256 rg1, address[] rg2) with:
                    gas gas_remaining wei
                   args arg1, Array(len=2, data=mem[292 len 64])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 192
            require return_data.size >= 32
            _80 = mem[192 len 4], Mask(224, 32, arg1) >> 32
            require mem[192 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
            require mem[192 len 4], Mask(224, 32, arg1) >> 32 + 223 < return_data.size + 192
            _84 = mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]
            if mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192] > test266151307():
                revert with 'NH{q', 65
            if ceil32(return_data.size) + floor32(mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 193 > test266151307() or floor32(mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = ceil32(return_data.size) + floor32(mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 193
            mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]
            require _80 + (32 * _84) + 32 <= return_data.size
            idx = 0
            s = _80 + 224
            t = ceil32(return_data.size) + 224
            while idx < _84:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            if 1 >= _84:
                revert with 'NH{q', 50
    mem[mem[64]] = mem[ceil32(return_data.size) + 256]
    return memory
      from mem[64]
       len 32
}

function sub_eef7ba9a(?) payable {
    mem[64] = 96
    idx = 0
    s = 0
    while idx < stor8.length:
        if idx >= stor8.length:
            revert with 'NH{q', 50
        mem[0] = 8
        require ext_code.size(stor8[idx].field_0)
        staticcall stor8[idx].field_0.poolId() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if stor8[idx].field_160:
            _192 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _195 = mem[_192]
            require mem[_192] == mem[_192]
            if idx >= stor8.length:
                revert with 'NH{q', 50
            mem[0] = 8
            mem[mem[64] + 4] = _195
            mem[mem[64] + 36] = stor8[idx].field_0
            require ext_code.size(stor7)
            staticcall stor7.0x1778809f with:
                    gas gas_remaining wei
                   args _195, stor8[idx].field_0
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _203 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _205 = mem[_203]
            require mem[_203] == mem[_203]
            if idx >= stor8.length:
                revert with 'NH{q', 50
            mem[0] = 8
            if _205 < 10^10:
                if idx >= stor8.length:
                    revert with 'NH{q', 50
                mem[0] = 8
                require ext_code.size(stor8[idx].field_0)
                staticcall stor8[idx].field_0._callFee() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _219 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_219] == mem[_219]
                if False and mem[_219] > 0:
                    revert with 'NH{q', 17
                if 0 <= stor9:
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = s
                    continue 
                if s == -1:
                    revert with 'NH{q', 17
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = s + 1
                continue 
            if stor8[idx].field_160:
                _209 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                if 0 >= mem[_209]:
                    revert with 'NH{q', 50
                if stor8[idx].field_160:
                    mem[_209 + 32] = stor2
                    if 1 >= mem[_209]:
                        revert with 'NH{q', 50
                    mem[_209 + 64] = stor3
                    mem[_209 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_209 + 100] = _205
                    mem[_209 + 132] = 64
                    _247 = mem[_209]
                    mem[_209 + 164] = mem[_209]
                    t = 0
                    u = _209 + 32
                    v = _209 + 196
                    while t < mem[_209]:
                        mem[v] = mem[u + 12 len 20]
                        t = t + 1
                        u = u + 32
                        v = v + 32
                        continue 
                    require ext_code.size(stor5)
                    staticcall stor5.mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _209 + (32 * mem[_209]) + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _383 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _391 = mem[_383]
                    require mem[_383] <= test266151307()
                    require _383 + mem[_383] + 31 < _383 + return_data.size
                    _399 = mem[_383 + mem[_383]]
                    if mem[_383 + mem[_383]] > test266151307():
                        revert with 'NH{q', 65
                    if _383 + ceil32(return_data.size) + floor32(mem[_383 + mem[_383]]) + 1 > test266151307() or floor32(mem[_383 + mem[_383]]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _383 + ceil32(return_data.size) + floor32(mem[_383 + mem[_383]]) + 1
                    mem[_383 + ceil32(return_data.size)] = _399
                    require _391 + (32 * _399) + 32 <= return_data.size
                    idx = 0
                    s = _383 + _391 + 32
                    t = _383 + ceil32(return_data.size) + 32
                    while idx < _399:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    if 1 >= _399:
                        revert with 'NH{q', 50
                    _495 = mem[_383 + ceil32(return_data.size) + 64]
                    if _247 >= stor8.length:
                        revert with 'NH{q', 50
                    mem[0] = 8
                    require ext_code.size(stor8[_247].field_0)
                    staticcall stor8[_247].field_0._callFee() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _527 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_527] == mem[_527]
                    if _495 and mem[_527] > -1 / _495:
                        revert with 'NH{q', 17
                    if _495 * mem[_527] <= stor9:
                        if _247 == -1:
                            revert with 'NH{q', 17
                        t = _247 + 1
                        u = _209 + (32 * _247) + 32
                        continue 
                    if _209 + (32 * _247) + 32 == -1:
                        revert with 'NH{q', 17
                    if _247 == -1:
                        revert with 'NH{q', 17
                    t = _247 + 1
                    u = _209 + (32 * _247) + 33
                    continue 
                mem[_209 + 32] = stor1
                if 1 >= mem[_209]:
                    revert with 'NH{q', 50
                mem[_209 + 64] = stor3
                mem[_209 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_209 + 100] = _205
                mem[_209 + 132] = 64
                _248 = mem[_209]
                mem[_209 + 164] = mem[_209]
                t = 0
                u = _209 + 32
                v = _209 + 196
                while t < mem[_209]:
                    mem[v] = mem[u + 12 len 20]
                    t = t + 1
                    u = u + 32
                    v = v + 32
                    continue 
                require ext_code.size(stor5)
                staticcall stor5.mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len _209 + (32 * mem[_209]) + -mem[64] + 192]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _384 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _392 = mem[_384]
                require mem[_384] <= test266151307()
                require _384 + mem[_384] + 31 < _384 + return_data.size
                _400 = mem[_384 + mem[_384]]
                if mem[_384 + mem[_384]] > test266151307():
                    revert with 'NH{q', 65
                if _384 + ceil32(return_data.size) + floor32(mem[_384 + mem[_384]]) + 1 > test266151307() or floor32(mem[_384 + mem[_384]]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = _384 + ceil32(return_data.size) + floor32(mem[_384 + mem[_384]]) + 1
                mem[_384 + ceil32(return_data.size)] = _400
                require _392 + (32 * _400) + 32 <= return_data.size
                idx = 0
                s = _384 + _392 + 32
                t = _384 + ceil32(return_data.size) + 32
                while idx < _400:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                if 1 >= _400:
                    revert with 'NH{q', 50
                _496 = mem[_384 + ceil32(return_data.size) + 64]
                if _248 >= stor8.length:
                    revert with 'NH{q', 50
                mem[0] = 8
                require ext_code.size(stor8[_248].field_0)
                staticcall stor8[_248].field_0._callFee() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _528 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_528] == mem[_528]
                if _496 and mem[_528] > -1 / _496:
                    revert with 'NH{q', 17
                if _496 * mem[_528] <= stor9:
                    if _248 == -1:
                        revert with 'NH{q', 17
                    t = _248 + 1
                    u = _209 + (32 * _248) + 32
                    continue 
                if _209 + (32 * _248) + 32 == -1:
                    revert with 'NH{q', 17
                if _248 == -1:
                    revert with 'NH{q', 17
                t = _248 + 1
                u = _209 + (32 * _248) + 33
                continue 
            _210 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            if 0 >= mem[_210]:
                revert with 'NH{q', 50
            if stor8[idx].field_160:
                mem[_210 + 32] = stor2
                if 1 >= mem[_210]:
                    revert with 'NH{q', 50
                mem[_210 + 64] = stor3
                mem[_210 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_210 + 100] = _205
                mem[_210 + 132] = 64
                _249 = mem[_210]
                mem[_210 + 164] = mem[_210]
                t = 0
                u = _210 + 32
                v = _210 + 196
                while t < mem[_210]:
                    mem[v] = mem[u + 12 len 20]
                    t = t + 1
                    u = u + 32
                    v = v + 32
                    continue 
                require ext_code.size(stor4)
                staticcall stor4.mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len _210 + (32 * mem[_210]) + -mem[64] + 192]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _385 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _393 = mem[_385]
                require mem[_385] <= test266151307()
                require _385 + mem[_385] + 31 < _385 + return_data.size
                _401 = mem[_385 + mem[_385]]
                if mem[_385 + mem[_385]] > test266151307():
                    revert with 'NH{q', 65
                if _385 + ceil32(return_data.size) + floor32(mem[_385 + mem[_385]]) + 1 > test266151307() or floor32(mem[_385 + mem[_385]]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = _385 + ceil32(return_data.size) + floor32(mem[_385 + mem[_385]]) + 1
                mem[_385 + ceil32(return_data.size)] = _401
                require _393 + (32 * _401) + 32 <= return_data.size
                idx = 0
                s = _385 + _393 + 32
                t = _385 + ceil32(return_data.size) + 32
                while idx < _401:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                if 1 >= _401:
                    revert with 'NH{q', 50
                _497 = mem[_385 + ceil32(return_data.size) + 64]
                if _249 >= stor8.length:
                    revert with 'NH{q', 50
                mem[0] = 8
                require ext_code.size(stor8[_249].field_0)
                staticcall stor8[_249].field_0._callFee() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _529 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_529] == mem[_529]
                if _497 and mem[_529] > -1 / _497:
                    revert with 'NH{q', 17
                if _497 * mem[_529] <= stor9:
                    if _249 == -1:
                        revert with 'NH{q', 17
                    t = _249 + 1
                    u = _210 + (32 * _249) + 32
                    continue 
                if _210 + (32 * _249) + 32 == -1:
                    revert with 'NH{q', 17
                if _249 == -1:
                    revert with 'NH{q', 17
                t = _249 + 1
                u = _210 + (32 * _249) + 33
                continue 
            mem[_210 + 32] = stor1
            if 1 >= mem[_210]:
                revert with 'NH{q', 50
            mem[_210 + 64] = stor3
            mem[_210 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[_210 + 100] = _205
            mem[_210 + 132] = 64
            _250 = mem[_210]
            mem[_210 + 164] = mem[_210]
            t = 0
            u = _210 + 32
            v = _210 + 196
            while t < mem[_210]:
                mem[v] = mem[u + 12 len 20]
                t = t + 1
                u = u + 32
                v = v + 32
                continue 
            require ext_code.size(stor4)
            staticcall stor4.mem[mem[64] len 4] with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len _210 + (32 * mem[_210]) + -mem[64] + 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _386 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _394 = mem[_386]
            require mem[_386] <= test266151307()
            require _386 + mem[_386] + 31 < _386 + return_data.size
            _402 = mem[_386 + mem[_386]]
            if mem[_386 + mem[_386]] > test266151307():
                revert with 'NH{q', 65
            if _386 + ceil32(return_data.size) + floor32(mem[_386 + mem[_386]]) + 1 > test266151307() or floor32(mem[_386 + mem[_386]]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = _386 + ceil32(return_data.size) + floor32(mem[_386 + mem[_386]]) + 1
            mem[_386 + ceil32(return_data.size)] = _402
            require _394 + (32 * _402) + 32 <= return_data.size
            idx = 0
            s = _386 + _394 + 32
            t = _386 + ceil32(return_data.size) + 32
            while idx < _402:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            if 1 >= _402:
                revert with 'NH{q', 50
            _498 = mem[_386 + ceil32(return_data.size) + 64]
            if _250 >= stor8.length:
                revert with 'NH{q', 50
            mem[0] = 8
            require ext_code.size(stor8[_250].field_0)
            staticcall stor8[_250].field_0._callFee() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _530 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_530] == mem[_530]
            if _498 and mem[_530] > -1 / _498:
                revert with 'NH{q', 17
            if _498 * mem[_530] <= stor9:
                if _250 == -1:
                    revert with 'NH{q', 17
                t = _250 + 1
                u = _210 + (32 * _250) + 32
                continue 
            if _210 + (32 * _250) + 32 == -1:
                revert with 'NH{q', 17
            if _250 == -1:
                revert with 'NH{q', 17
            t = _250 + 1
            u = _210 + (32 * _250) + 33
            continue 
        _193 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _196 = mem[_193]
        require mem[_193] == mem[_193]
        if idx >= stor8.length:
            revert with 'NH{q', 50
        mem[0] = 8
        mem[mem[64] + 4] = _196
        mem[mem[64] + 36] = stor8[idx].field_0
        require ext_code.size(stor6)
        staticcall stor6.0xa279b07f with:
                gas gas_remaining wei
               args _196, stor8[idx].field_0
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _204 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _206 = mem[_204]
        require mem[_204] == mem[_204]
        if idx >= stor8.length:
            revert with 'NH{q', 50
        mem[0] = 8
        if _206 < 10^10:
            if idx >= stor8.length:
                revert with 'NH{q', 50
            mem[0] = 8
            require ext_code.size(stor8[idx].field_0)
            staticcall stor8[idx].field_0._callFee() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _220 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_220] == mem[_220]
            if False and mem[_220] > 0:
                revert with 'NH{q', 17
            if 0 <= stor9:
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = s
                continue 
            if s == -1:
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s + 1
            continue 
        if stor8[idx].field_160:
            _214 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            if 0 >= mem[_214]:
                revert with 'NH{q', 50
            if stor8[idx].field_160:
                mem[_214 + 32] = stor2
                if 1 >= mem[_214]:
                    revert with 'NH{q', 50
                mem[_214 + 64] = stor3
                mem[_214 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_214 + 100] = _206
                mem[_214 + 132] = 64
                _251 = mem[_214]
                mem[_214 + 164] = mem[_214]
                t = 0
                u = _214 + 32
                v = _214 + 196
                while t < mem[_214]:
                    mem[v] = mem[u + 12 len 20]
                    t = t + 1
                    u = u + 32
                    v = v + 32
                    continue 
                require ext_code.size(stor5)
                staticcall stor5.mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len _214 + (32 * mem[_214]) + -mem[64] + 192]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _387 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _395 = mem[_387]
                require mem[_387] <= test266151307()
                require _387 + mem[_387] + 31 < _387 + return_data.size
                _403 = mem[_387 + mem[_387]]
                if mem[_387 + mem[_387]] > test266151307():
                    revert with 'NH{q', 65
                if _387 + ceil32(return_data.size) + floor32(mem[_387 + mem[_387]]) + 1 > test266151307() or floor32(mem[_387 + mem[_387]]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = _387 + ceil32(return_data.size) + floor32(mem[_387 + mem[_387]]) + 1
                mem[_387 + ceil32(return_data.size)] = _403
                require _395 + (32 * _403) + 32 <= return_data.size
                idx = 0
                s = _387 + _395 + 32
                t = _387 + ceil32(return_data.size) + 32
                while idx < _403:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                if 1 >= _403:
                    revert with 'NH{q', 50
                _499 = mem[_387 + ceil32(return_data.size) + 64]
                if _251 >= stor8.length:
                    revert with 'NH{q', 50
                mem[0] = 8
                require ext_code.size(stor8[_251].field_0)
                staticcall stor8[_251].field_0._callFee() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _531 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_531] == mem[_531]
                if _499 and mem[_531] > -1 / _499:
                    revert with 'NH{q', 17
                if _499 * mem[_531] <= stor9:
                    if _251 == -1:
                        revert with 'NH{q', 17
                    t = _251 + 1
                    u = _214 + (32 * _251) + 32
                    continue 
                if _214 + (32 * _251) + 32 == -1:
                    revert with 'NH{q', 17
                if _251 == -1:
                    revert with 'NH{q', 17
                t = _251 + 1
                u = _214 + (32 * _251) + 33
                continue 
            mem[_214 + 32] = stor1
            if 1 >= mem[_214]:
                revert with 'NH{q', 50
            mem[_214 + 64] = stor3
            mem[_214 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[_214 + 100] = _206
            mem[_214 + 132] = 64
            _252 = mem[_214]
            mem[_214 + 164] = mem[_214]
            t = 0
            u = _214 + 32
            v = _214 + 196
            while t < mem[_214]:
                mem[v] = mem[u + 12 len 20]
                t = t + 1
                u = u + 32
                v = v + 32
                continue 
            require ext_code.size(stor5)
            staticcall stor5.mem[mem[64] len 4] with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len _214 + (32 * mem[_214]) + -mem[64] + 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _388 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _396 = mem[_388]
            require mem[_388] <= test266151307()
            require _388 + mem[_388] + 31 < _388 + return_data.size
            _404 = mem[_388 + mem[_388]]
            if mem[_388 + mem[_388]] > test266151307():
                revert with 'NH{q', 65
            if _388 + ceil32(return_data.size) + floor32(mem[_388 + mem[_388]]) + 1 > test266151307() or floor32(mem[_388 + mem[_388]]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = _388 + ceil32(return_data.size) + floor32(mem[_388 + mem[_388]]) + 1
            mem[_388 + ceil32(return_data.size)] = _404
            require _396 + (32 * _404) + 32 <= return_data.size
            idx = 0
            s = _388 + _396 + 32
            t = _388 + ceil32(return_data.size) + 32
            while idx < _404:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            if 1 >= _404:
                revert with 'NH{q', 50
            _500 = mem[_388 + ceil32(return_data.size) + 64]
            if _252 >= stor8.length:
                revert with 'NH{q', 50
            mem[0] = 8
            require ext_code.size(stor8[_252].field_0)
            staticcall stor8[_252].field_0._callFee() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _532 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_532] == mem[_532]
            if _500 and mem[_532] > -1 / _500:
                revert with 'NH{q', 17
            if _500 * mem[_532] <= stor9:
                if _252 == -1:
                    revert with 'NH{q', 17
                t = _252 + 1
                u = _214 + (32 * _252) + 32
                continue 
            if _214 + (32 * _252) + 32 == -1:
                revert with 'NH{q', 17
            if _252 == -1:
                revert with 'NH{q', 17
            t = _252 + 1
            u = _214 + (32 * _252) + 33
            continue 
        _215 = mem[64]
        mem[mem[64]] = 2
        mem[64] = mem[64] + 96
        if 0 >= mem[_215]:
            revert with 'NH{q', 50
        if stor8[idx].field_160:
            mem[_215 + 32] = stor2
            if 1 >= mem[_215]:
                revert with 'NH{q', 50
            mem[_215 + 64] = stor3
            mem[_215 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[_215 + 100] = _206
            mem[_215 + 132] = 64
            _253 = mem[_215]
            mem[_215 + 164] = mem[_215]
            t = 0
            u = _215 + 32
            v = _215 + 196
            while t < mem[_215]:
                mem[v] = mem[u + 12 len 20]
                t = t + 1
                u = u + 32
                v = v + 32
                continue 
            require ext_code.size(stor4)
            staticcall stor4.mem[mem[64] len 4] with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len _215 + (32 * mem[_215]) + -mem[64] + 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _389 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _397 = mem[_389]
            require mem[_389] <= test266151307()
            require _389 + mem[_389] + 31 < _389 + return_data.size
            _405 = mem[_389 + mem[_389]]
            if mem[_389 + mem[_389]] > test266151307():
                revert with 'NH{q', 65
            if _389 + ceil32(return_data.size) + floor32(mem[_389 + mem[_389]]) + 1 > test266151307() or floor32(mem[_389 + mem[_389]]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = _389 + ceil32(return_data.size) + floor32(mem[_389 + mem[_389]]) + 1
            mem[_389 + ceil32(return_data.size)] = _405
            require _397 + (32 * _405) + 32 <= return_data.size
            idx = 0
            s = _389 + _397 + 32
            t = _389 + ceil32(return_data.size) + 32
            while idx < _405:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            if 1 >= _405:
                revert with 'NH{q', 50
            _501 = mem[_389 + ceil32(return_data.size) + 64]
            if _253 >= stor8.length:
                revert with 'NH{q', 50
            mem[0] = 8
            require ext_code.size(stor8[_253].field_0)
            staticcall stor8[_253].field_0._callFee() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _533 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_533] == mem[_533]
            if _501 and mem[_533] > -1 / _501:
                revert with 'NH{q', 17
            if _501 * mem[_533] <= stor9:
                if _253 == -1:
                    revert with 'NH{q', 17
                t = _253 + 1
                u = _215 + (32 * _253) + 32
                continue 
            if _215 + (32 * _253) + 32 == -1:
                revert with 'NH{q', 17
            if _253 == -1:
                revert with 'NH{q', 17
            t = _253 + 1
            u = _215 + (32 * _253) + 33
            continue 
        mem[_215 + 32] = stor1
        if 1 >= mem[_215]:
            revert with 'NH{q', 50
        mem[_215 + 64] = stor3
        mem[_215 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[_215 + 100] = _206
        mem[_215 + 132] = 64
        _254 = mem[_215]
        mem[_215 + 164] = mem[_215]
        t = 0
        u = _215 + 32
        v = _215 + 196
        while t < mem[_215]:
            mem[v] = mem[u + 12 len 20]
            t = t + 1
            u = u + 32
            v = v + 32
            continue 
        require ext_code.size(stor4)
        staticcall stor4.mem[mem[64] len 4] with:
                gas gas_remaining wei
               args mem[mem[64] + 4 len _215 + (32 * mem[_215]) + -mem[64] + 192]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _390 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _398 = mem[_390]
        require mem[_390] <= test266151307()
        require _390 + mem[_390] + 31 < _390 + return_data.size
        _406 = mem[_390 + mem[_390]]
        if mem[_390 + mem[_390]] > test266151307():
            revert with 'NH{q', 65
        if _390 + ceil32(return_data.size) + floor32(mem[_390 + mem[_390]]) + 1 > test266151307() or floor32(mem[_390 + mem[_390]]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = _390 + ceil32(return_data.size) + floor32(mem[_390 + mem[_390]]) + 1
        mem[_390 + ceil32(return_data.size)] = _406
        require _398 + (32 * _406) + 32 <= return_data.size
        idx = 0
        s = _390 + _398 + 32
        t = _390 + ceil32(return_data.size) + 32
        while idx < _406:
            require mem[s] == mem[s]
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        if 1 >= _406:
            revert with 'NH{q', 50
        _502 = mem[_390 + ceil32(return_data.size) + 64]
        if _254 >= stor8.length:
            revert with 'NH{q', 50
        mem[0] = 8
        require ext_code.size(stor8[_254].field_0)
        staticcall stor8[_254].field_0._callFee() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _534 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_534] == mem[_534]
        if _502 and mem[_534] > -1 / _502:
            revert with 'NH{q', 17
        if _502 * mem[_534] <= stor9:
            if _254 == -1:
                revert with 'NH{q', 17
            t = _254 + 1
            u = _215 + (32 * _254) + 32
            continue 
        if _215 + (32 * _254) + 32 == -1:
            revert with 'NH{q', 17
        if _254 == -1:
            revert with 'NH{q', 17
        t = _254 + 1
        u = _215 + (32 * _254) + 33
        continue 
    return s
}

function sub_448280d7(?) payable {
    mem[64] = 96
    idx = 0
    s = 0
    while idx < stor8.length:
        if idx >= stor8.length:
            revert with 'NH{q', 50
        mem[0] = 8
        require ext_code.size(stor8[idx].field_0)
        staticcall stor8[idx].field_0.poolId() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if stor8[idx].field_160:
            _396 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _408 = mem[_396]
            require mem[_396] == mem[_396]
            if idx >= stor8.length:
                revert with 'NH{q', 50
            mem[0] = 8
            mem[mem[64] + 4] = _408
            mem[mem[64] + 36] = stor8[idx].field_0
            require ext_code.size(stor7)
            staticcall stor7.0x1778809f with:
                    gas gas_remaining wei
                   args _408, stor8[idx].field_0
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _444 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _448 = mem[_444]
            require mem[_444] == mem[_444]
            if idx >= stor8.length:
                revert with 'NH{q', 50
            mem[0] = 8
            if _448 < 10^10:
                if idx >= stor8.length:
                    revert with 'NH{q', 50
                mem[0] = 8
                require ext_code.size(stor8[idx].field_0)
                staticcall stor8[idx].field_0._callFee() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _476 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_476] == mem[_476]
                if False and mem[_476] > 0:
                    revert with 'NH{q', 17
                if 0 <= stor9:
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = s
                    continue 
                if s == -1:
                    revert with 'NH{q', 17
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = s + 1
                continue 
            if stor8[idx].field_160:
                _464 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                if 0 >= mem[_464]:
                    revert with 'NH{q', 50
                if stor8[idx].field_160:
                    mem[_464 + 32] = stor2
                    if 1 >= mem[_464]:
                        revert with 'NH{q', 50
                    mem[_464 + 64] = stor3
                    mem[_464 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_464 + 100] = _448
                    mem[_464 + 132] = 64
                    _580 = mem[_464]
                    mem[_464 + 164] = mem[_464]
                    t = 0
                    u = _464 + 32
                    v = _464 + 196
                    while t < mem[_464]:
                        mem[v] = mem[u + 12 len 20]
                        t = t + 1
                        u = u + 32
                        v = v + 32
                        continue 
                    require ext_code.size(stor5)
                    staticcall stor5.mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _464 + (32 * mem[_464]) + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1014 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1026 = mem[_1014]
                    require mem[_1014] <= test266151307()
                    require _1014 + mem[_1014] + 31 < _1014 + return_data.size
                    _1038 = mem[_1014 + mem[_1014]]
                    if mem[_1014 + mem[_1014]] > test266151307():
                        revert with 'NH{q', 65
                    if _1014 + ceil32(return_data.size) + floor32(mem[_1014 + mem[_1014]]) + 1 > test266151307() or floor32(mem[_1014 + mem[_1014]]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _1014 + ceil32(return_data.size) + floor32(mem[_1014 + mem[_1014]]) + 1
                    mem[_1014 + ceil32(return_data.size)] = _1038
                    require _1026 + (32 * _1038) + 32 <= return_data.size
                    idx = 0
                    s = _1014 + _1026 + 32
                    t = _1014 + ceil32(return_data.size) + 32
                    while idx < _1038:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    if 1 >= _1038:
                        revert with 'NH{q', 50
                    _1570 = mem[_1014 + ceil32(return_data.size) + 64]
                    if _580 >= stor8.length:
                        revert with 'NH{q', 50
                    mem[0] = 8
                    require ext_code.size(stor8[_580].field_0)
                    staticcall stor8[_580].field_0._callFee() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1634 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1634] == mem[_1634]
                    if _1570 and mem[_1634] > -1 / _1570:
                        revert with 'NH{q', 17
                    if _1570 * mem[_1634] <= stor9:
                        if _580 == -1:
                            revert with 'NH{q', 17
                        t = _580 + 1
                        u = _464 + (32 * _580) + 32
                        continue 
                    if _464 + (32 * _580) + 32 == -1:
                        revert with 'NH{q', 17
                    if _580 == -1:
                        revert with 'NH{q', 17
                    t = _580 + 1
                    u = _464 + (32 * _580) + 33
                    continue 
                mem[_464 + 32] = stor1
                if 1 >= mem[_464]:
                    revert with 'NH{q', 50
                mem[_464 + 64] = stor3
                mem[_464 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_464 + 100] = _448
                mem[_464 + 132] = 64
                _581 = mem[_464]
                mem[_464 + 164] = mem[_464]
                t = 0
                u = _464 + 32
                v = _464 + 196
                while t < mem[_464]:
                    mem[v] = mem[u + 12 len 20]
                    t = t + 1
                    u = u + 32
                    v = v + 32
                    continue 
                require ext_code.size(stor5)
                staticcall stor5.mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len _464 + (32 * mem[_464]) + -mem[64] + 192]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1015 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1027 = mem[_1015]
                require mem[_1015] <= test266151307()
                require _1015 + mem[_1015] + 31 < _1015 + return_data.size
                _1039 = mem[_1015 + mem[_1015]]
                if mem[_1015 + mem[_1015]] > test266151307():
                    revert with 'NH{q', 65
                if _1015 + ceil32(return_data.size) + floor32(mem[_1015 + mem[_1015]]) + 1 > test266151307() or floor32(mem[_1015 + mem[_1015]]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = _1015 + ceil32(return_data.size) + floor32(mem[_1015 + mem[_1015]]) + 1
                mem[_1015 + ceil32(return_data.size)] = _1039
                require _1027 + (32 * _1039) + 32 <= return_data.size
                idx = 0
                s = _1015 + _1027 + 32
                t = _1015 + ceil32(return_data.size) + 32
                while idx < _1039:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                if 1 >= _1039:
                    revert with 'NH{q', 50
                _1571 = mem[_1015 + ceil32(return_data.size) + 64]
                if _581 >= stor8.length:
                    revert with 'NH{q', 50
                mem[0] = 8
                require ext_code.size(stor8[_581].field_0)
                staticcall stor8[_581].field_0._callFee() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1635 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1635] == mem[_1635]
                if _1571 and mem[_1635] > -1 / _1571:
                    revert with 'NH{q', 17
                if _1571 * mem[_1635] <= stor9:
                    if _581 == -1:
                        revert with 'NH{q', 17
                    t = _581 + 1
                    u = _464 + (32 * _581) + 32
                    continue 
                if _464 + (32 * _581) + 32 == -1:
                    revert with 'NH{q', 17
                if _581 == -1:
                    revert with 'NH{q', 17
                t = _581 + 1
                u = _464 + (32 * _581) + 33
                continue 
            _465 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            if 0 >= mem[_465]:
                revert with 'NH{q', 50
            if stor8[idx].field_160:
                mem[_465 + 32] = stor2
                if 1 >= mem[_465]:
                    revert with 'NH{q', 50
                mem[_465 + 64] = stor3
                mem[_465 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_465 + 100] = _448
                mem[_465 + 132] = 64
                _582 = mem[_465]
                mem[_465 + 164] = mem[_465]
                t = 0
                u = _465 + 32
                v = _465 + 196
                while t < mem[_465]:
                    mem[v] = mem[u + 12 len 20]
                    t = t + 1
                    u = u + 32
                    v = v + 32
                    continue 
                require ext_code.size(stor4)
                staticcall stor4.mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len _465 + (32 * mem[_465]) + -mem[64] + 192]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1016 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1028 = mem[_1016]
                require mem[_1016] <= test266151307()
                require _1016 + mem[_1016] + 31 < _1016 + return_data.size
                _1040 = mem[_1016 + mem[_1016]]
                if mem[_1016 + mem[_1016]] > test266151307():
                    revert with 'NH{q', 65
                if _1016 + ceil32(return_data.size) + floor32(mem[_1016 + mem[_1016]]) + 1 > test266151307() or floor32(mem[_1016 + mem[_1016]]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = _1016 + ceil32(return_data.size) + floor32(mem[_1016 + mem[_1016]]) + 1
                mem[_1016 + ceil32(return_data.size)] = _1040
                require _1028 + (32 * _1040) + 32 <= return_data.size
                idx = 0
                s = _1016 + _1028 + 32
                t = _1016 + ceil32(return_data.size) + 32
                while idx < _1040:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                if 1 >= _1040:
                    revert with 'NH{q', 50
                _1572 = mem[_1016 + ceil32(return_data.size) + 64]
                if _582 >= stor8.length:
                    revert with 'NH{q', 50
                mem[0] = 8
                require ext_code.size(stor8[_582].field_0)
                staticcall stor8[_582].field_0._callFee() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1636 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1636] == mem[_1636]
                if _1572 and mem[_1636] > -1 / _1572:
                    revert with 'NH{q', 17
                if _1572 * mem[_1636] <= stor9:
                    if _582 == -1:
                        revert with 'NH{q', 17
                    t = _582 + 1
                    u = _465 + (32 * _582) + 32
                    continue 
                if _465 + (32 * _582) + 32 == -1:
                    revert with 'NH{q', 17
                if _582 == -1:
                    revert with 'NH{q', 17
                t = _582 + 1
                u = _465 + (32 * _582) + 33
                continue 
            mem[_465 + 32] = stor1
            if 1 >= mem[_465]:
                revert with 'NH{q', 50
            mem[_465 + 64] = stor3
            mem[_465 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[_465 + 100] = _448
            mem[_465 + 132] = 64
            _583 = mem[_465]
            mem[_465 + 164] = mem[_465]
            t = 0
            u = _465 + 32
            v = _465 + 196
            while t < mem[_465]:
                mem[v] = mem[u + 12 len 20]
                t = t + 1
                u = u + 32
                v = v + 32
                continue 
            require ext_code.size(stor4)
            staticcall stor4.mem[mem[64] len 4] with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len _465 + (32 * mem[_465]) + -mem[64] + 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1017 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1029 = mem[_1017]
            require mem[_1017] <= test266151307()
            require _1017 + mem[_1017] + 31 < _1017 + return_data.size
            _1041 = mem[_1017 + mem[_1017]]
            if mem[_1017 + mem[_1017]] > test266151307():
                revert with 'NH{q', 65
            if _1017 + ceil32(return_data.size) + floor32(mem[_1017 + mem[_1017]]) + 1 > test266151307() or floor32(mem[_1017 + mem[_1017]]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = _1017 + ceil32(return_data.size) + floor32(mem[_1017 + mem[_1017]]) + 1
            mem[_1017 + ceil32(return_data.size)] = _1041
            require _1029 + (32 * _1041) + 32 <= return_data.size
            idx = 0
            s = _1017 + _1029 + 32
            t = _1017 + ceil32(return_data.size) + 32
            while idx < _1041:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            if 1 >= _1041:
                revert with 'NH{q', 50
            _1573 = mem[_1017 + ceil32(return_data.size) + 64]
            if _583 >= stor8.length:
                revert with 'NH{q', 50
            mem[0] = 8
            require ext_code.size(stor8[_583].field_0)
            staticcall stor8[_583].field_0._callFee() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1637 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1637] == mem[_1637]
            if _1573 and mem[_1637] > -1 / _1573:
                revert with 'NH{q', 17
            if _1573 * mem[_1637] <= stor9:
                if _583 == -1:
                    revert with 'NH{q', 17
                t = _583 + 1
                u = _465 + (32 * _583) + 32
                continue 
            if _465 + (32 * _583) + 32 == -1:
                revert with 'NH{q', 17
            if _583 == -1:
                revert with 'NH{q', 17
            t = _583 + 1
            u = _465 + (32 * _583) + 33
            continue 
        _397 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _409 = mem[_397]
        require mem[_397] == mem[_397]
        if idx >= stor8.length:
            revert with 'NH{q', 50
        mem[0] = 8
        mem[mem[64] + 4] = _409
        mem[mem[64] + 36] = stor8[idx].field_0
        require ext_code.size(stor6)
        staticcall stor6.0xa279b07f with:
                gas gas_remaining wei
               args _409, stor8[idx].field_0
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _445 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _449 = mem[_445]
        require mem[_445] == mem[_445]
        if idx >= stor8.length:
            revert with 'NH{q', 50
        mem[0] = 8
        if _449 < 10^10:
            if idx >= stor8.length:
                revert with 'NH{q', 50
            mem[0] = 8
            require ext_code.size(stor8[idx].field_0)
            staticcall stor8[idx].field_0._callFee() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _477 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_477] == mem[_477]
            if False and mem[_477] > 0:
                revert with 'NH{q', 17
            if 0 <= stor9:
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = s
                continue 
            if s == -1:
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s + 1
            continue 
        if stor8[idx].field_160:
            _469 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            if 0 >= mem[_469]:
                revert with 'NH{q', 50
            if stor8[idx].field_160:
                mem[_469 + 32] = stor2
                if 1 >= mem[_469]:
                    revert with 'NH{q', 50
                mem[_469 + 64] = stor3
                mem[_469 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_469 + 100] = _449
                mem[_469 + 132] = 64
                _584 = mem[_469]
                mem[_469 + 164] = mem[_469]
                t = 0
                u = _469 + 32
                v = _469 + 196
                while t < mem[_469]:
                    mem[v] = mem[u + 12 len 20]
                    t = t + 1
                    u = u + 32
                    v = v + 32
                    continue 
                require ext_code.size(stor5)
                staticcall stor5.mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len _469 + (32 * mem[_469]) + -mem[64] + 192]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1018 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1030 = mem[_1018]
                require mem[_1018] <= test266151307()
                require _1018 + mem[_1018] + 31 < _1018 + return_data.size
                _1042 = mem[_1018 + mem[_1018]]
                if mem[_1018 + mem[_1018]] > test266151307():
                    revert with 'NH{q', 65
                if _1018 + ceil32(return_data.size) + floor32(mem[_1018 + mem[_1018]]) + 1 > test266151307() or floor32(mem[_1018 + mem[_1018]]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = _1018 + ceil32(return_data.size) + floor32(mem[_1018 + mem[_1018]]) + 1
                mem[_1018 + ceil32(return_data.size)] = _1042
                require _1030 + (32 * _1042) + 32 <= return_data.size
                idx = 0
                s = _1018 + _1030 + 32
                t = _1018 + ceil32(return_data.size) + 32
                while idx < _1042:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                if 1 >= _1042:
                    revert with 'NH{q', 50
                _1574 = mem[_1018 + ceil32(return_data.size) + 64]
                if _584 >= stor8.length:
                    revert with 'NH{q', 50
                mem[0] = 8
                require ext_code.size(stor8[_584].field_0)
                staticcall stor8[_584].field_0._callFee() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1638 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1638] == mem[_1638]
                if _1574 and mem[_1638] > -1 / _1574:
                    revert with 'NH{q', 17
                if _1574 * mem[_1638] <= stor9:
                    if _584 == -1:
                        revert with 'NH{q', 17
                    t = _584 + 1
                    u = _469 + (32 * _584) + 32
                    continue 
                if _469 + (32 * _584) + 32 == -1:
                    revert with 'NH{q', 17
                if _584 == -1:
                    revert with 'NH{q', 17
                t = _584 + 1
                u = _469 + (32 * _584) + 33
                continue 
            mem[_469 + 32] = stor1
            if 1 >= mem[_469]:
                revert with 'NH{q', 50
            mem[_469 + 64] = stor3
            mem[_469 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[_469 + 100] = _449
            mem[_469 + 132] = 64
            _585 = mem[_469]
            mem[_469 + 164] = mem[_469]
            t = 0
            u = _469 + 32
            v = _469 + 196
            while t < mem[_469]:
                mem[v] = mem[u + 12 len 20]
                t = t + 1
                u = u + 32
                v = v + 32
                continue 
            require ext_code.size(stor5)
            staticcall stor5.mem[mem[64] len 4] with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len _469 + (32 * mem[_469]) + -mem[64] + 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1019 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1031 = mem[_1019]
            require mem[_1019] <= test266151307()
            require _1019 + mem[_1019] + 31 < _1019 + return_data.size
            _1043 = mem[_1019 + mem[_1019]]
            if mem[_1019 + mem[_1019]] > test266151307():
                revert with 'NH{q', 65
            if _1019 + ceil32(return_data.size) + floor32(mem[_1019 + mem[_1019]]) + 1 > test266151307() or floor32(mem[_1019 + mem[_1019]]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = _1019 + ceil32(return_data.size) + floor32(mem[_1019 + mem[_1019]]) + 1
            mem[_1019 + ceil32(return_data.size)] = _1043
            require _1031 + (32 * _1043) + 32 <= return_data.size
            idx = 0
            s = _1019 + _1031 + 32
            t = _1019 + ceil32(return_data.size) + 32
            while idx < _1043:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            if 1 >= _1043:
                revert with 'NH{q', 50
            _1575 = mem[_1019 + ceil32(return_data.size) + 64]
            if _585 >= stor8.length:
                revert with 'NH{q', 50
            mem[0] = 8
            require ext_code.size(stor8[_585].field_0)
            staticcall stor8[_585].field_0._callFee() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1639 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1639] == mem[_1639]
            if _1575 and mem[_1639] > -1 / _1575:
                revert with 'NH{q', 17
            if _1575 * mem[_1639] <= stor9:
                if _585 == -1:
                    revert with 'NH{q', 17
                t = _585 + 1
                u = _469 + (32 * _585) + 32
                continue 
            if _469 + (32 * _585) + 32 == -1:
                revert with 'NH{q', 17
            if _585 == -1:
                revert with 'NH{q', 17
            t = _585 + 1
            u = _469 + (32 * _585) + 33
            continue 
        _470 = mem[64]
        mem[mem[64]] = 2
        mem[64] = mem[64] + 96
        if 0 >= mem[_470]:
            revert with 'NH{q', 50
        if stor8[idx].field_160:
            mem[_470 + 32] = stor2
            if 1 >= mem[_470]:
                revert with 'NH{q', 50
            mem[_470 + 64] = stor3
            mem[_470 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[_470 + 100] = _449
            mem[_470 + 132] = 64
            _586 = mem[_470]
            mem[_470 + 164] = mem[_470]
            t = 0
            u = _470 + 32
            v = _470 + 196
            while t < mem[_470]:
                mem[v] = mem[u + 12 len 20]
                t = t + 1
                u = u + 32
                v = v + 32
                continue 
            require ext_code.size(stor4)
            staticcall stor4.mem[mem[64] len 4] with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len _470 + (32 * mem[_470]) + -mem[64] + 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1020 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1032 = mem[_1020]
            require mem[_1020] <= test266151307()
            require _1020 + mem[_1020] + 31 < _1020 + return_data.size
            _1044 = mem[_1020 + mem[_1020]]
            if mem[_1020 + mem[_1020]] > test266151307():
                revert with 'NH{q', 65
            if _1020 + ceil32(return_data.size) + floor32(mem[_1020 + mem[_1020]]) + 1 > test266151307() or floor32(mem[_1020 + mem[_1020]]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = _1020 + ceil32(return_data.size) + floor32(mem[_1020 + mem[_1020]]) + 1
            mem[_1020 + ceil32(return_data.size)] = _1044
            require _1032 + (32 * _1044) + 32 <= return_data.size
            idx = 0
            s = _1020 + _1032 + 32
            t = _1020 + ceil32(return_data.size) + 32
            while idx < _1044:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            if 1 >= _1044:
                revert with 'NH{q', 50
            _1576 = mem[_1020 + ceil32(return_data.size) + 64]
            if _586 >= stor8.length:
                revert with 'NH{q', 50
            mem[0] = 8
            require ext_code.size(stor8[_586].field_0)
            staticcall stor8[_586].field_0._callFee() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1640 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1640] == mem[_1640]
            if _1576 and mem[_1640] > -1 / _1576:
                revert with 'NH{q', 17
            if _1576 * mem[_1640] <= stor9:
                if _586 == -1:
                    revert with 'NH{q', 17
                t = _586 + 1
                u = _470 + (32 * _586) + 32
                continue 
            if _470 + (32 * _586) + 32 == -1:
                revert with 'NH{q', 17
            if _586 == -1:
                revert with 'NH{q', 17
            t = _586 + 1
            u = _470 + (32 * _586) + 33
            continue 
        mem[_470 + 32] = stor1
        if 1 >= mem[_470]:
            revert with 'NH{q', 50
        mem[_470 + 64] = stor3
        mem[_470 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[_470 + 100] = _449
        mem[_470 + 132] = 64
        _587 = mem[_470]
        mem[_470 + 164] = mem[_470]
        t = 0
        u = _470 + 32
        v = _470 + 196
        while t < mem[_470]:
            mem[v] = mem[u + 12 len 20]
            t = t + 1
            u = u + 32
            v = v + 32
            continue 
        require ext_code.size(stor4)
        staticcall stor4.mem[mem[64] len 4] with:
                gas gas_remaining wei
               args mem[mem[64] + 4 len _470 + (32 * mem[_470]) + -mem[64] + 192]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1021 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _1033 = mem[_1021]
        require mem[_1021] <= test266151307()
        require _1021 + mem[_1021] + 31 < _1021 + return_data.size
        _1045 = mem[_1021 + mem[_1021]]
        if mem[_1021 + mem[_1021]] > test266151307():
            revert with 'NH{q', 65
        if _1021 + ceil32(return_data.size) + floor32(mem[_1021 + mem[_1021]]) + 1 > test266151307() or floor32(mem[_1021 + mem[_1021]]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = _1021 + ceil32(return_data.size) + floor32(mem[_1021 + mem[_1021]]) + 1
        mem[_1021 + ceil32(return_data.size)] = _1045
        require _1033 + (32 * _1045) + 32 <= return_data.size
        idx = 0
        s = _1021 + _1033 + 32
        t = _1021 + ceil32(return_data.size) + 32
        while idx < _1045:
            require mem[s] == mem[s]
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        if 1 >= _1045:
            revert with 'NH{q', 50
        _1577 = mem[_1021 + ceil32(return_data.size) + 64]
        if _587 >= stor8.length:
            revert with 'NH{q', 50
        mem[0] = 8
        require ext_code.size(stor8[_587].field_0)
        staticcall stor8[_587].field_0._callFee() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1641 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_1641] == mem[_1641]
        if _1577 and mem[_1641] > -1 / _1577:
            revert with 'NH{q', 17
        if _1577 * mem[_1641] <= stor9:
            if _587 == -1:
                revert with 'NH{q', 17
            t = _587 + 1
            u = _470 + (32 * _587) + 32
            continue 
        if _470 + (32 * _587) + 32 == -1:
            revert with 'NH{q', 17
        if _587 == -1:
            revert with 'NH{q', 17
        t = _587 + 1
        u = _470 + (32 * _587) + 33
        continue 
    if s > test266151307():
        revert with 'NH{q', 65
    _389 = mem[64]
    mem[mem[64]] = s
    mem[64] = mem[64] + (32 * s) + 32
    if not s:
        idx = 0
        s = 0
        while idx < stor8.length:
            if idx >= stor8.length:
                revert with 'NH{q', 50
            mem[0] = 8
            require ext_code.size(stor8[idx].field_0)
            staticcall stor8[idx].field_0.poolId() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if stor8[idx].field_160:
                _1022 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1034 = mem[_1022]
                require mem[_1022] == mem[_1022]
                if idx >= stor8.length:
                    revert with 'NH{q', 50
                mem[0] = 8
                mem[mem[64] + 4] = _1034
                mem[mem[64] + 36] = stor8[idx].field_0
                require ext_code.size(stor7)
                staticcall stor7.0x1778809f with:
                        gas gas_remaining wei
                       args _1034, stor8[idx].field_0
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1094 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1122 = mem[_1094]
                require mem[_1094] == mem[_1094]
                if idx >= stor8.length:
                    revert with 'NH{q', 50
                mem[0] = 8
                if _1122 < 10^10:
                    if idx >= stor8.length:
                        revert with 'NH{q', 50
                    mem[0] = 8
                    require ext_code.size(stor8[idx].field_0)
                    staticcall stor8[idx].field_0._callFee() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1166 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1166] == mem[_1166]
                    if False and mem[_1166] > 0:
                        revert with 'NH{q', 17
                    if 0 <= stor9:
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = s
                        continue 
                else:
                    if stor8[idx].field_160:
                        _1146 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        if 0 >= mem[_1146]:
                            revert with 'NH{q', 50
                        if stor8[idx].field_160:
                            mem[_1146 + 32] = stor2
                            if 1 >= mem[_1146]:
                                revert with 'NH{q', 50
                            mem[_1146 + 64] = stor3
                            mem[_1146 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[_1146 + 100] = _1122
                            mem[_1146 + 132] = 64
                            mem[_1146 + 164] = mem[_1146]
                            t = 0
                            u = _1146 + 32
                            v = _1146 + 196
                            while t < mem[_1146]:
                                mem[v] = mem[u + 12 len 20]
                                t = t + 1
                                u = u + 32
                                v = v + 32
                                continue 
                            require ext_code.size(stor5)
                            staticcall stor5.mem[mem[64] len 4] with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4 len _1146 + (32 * mem[_1146]) + -mem[64] + 192]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1554 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1578 = mem[_1554]
                            require mem[_1554] <= test266151307()
                            require _1554 + mem[_1554] + 31 < _1554 + return_data.size
                            _1618 = mem[_1554 + mem[_1554]]
                            if mem[_1554 + mem[_1554]] > test266151307():
                                revert with 'NH{q', 65
                            if _1554 + ceil32(return_data.size) + floor32(mem[_1554 + mem[_1554]]) + 1 > test266151307() or floor32(mem[_1554 + mem[_1554]]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = _1554 + ceil32(return_data.size) + floor32(mem[_1554 + mem[_1554]]) + 1
                            mem[_1554 + ceil32(return_data.size)] = _1618
                            require _1578 + (32 * _1618) + 32 <= return_data.size
                            t = 0
                            u = _1554 + _1578 + 32
                            v = _1554 + ceil32(return_data.size) + 32
                            while t < _1618:
                                require mem[u] == mem[u]
                                mem[v] = mem[u]
                                t = t + 1
                                u = u + 32
                                v = v + 32
                                continue 
                            if 1 >= _1618:
                                revert with 'NH{q', 50
                            _1858 = mem[_1554 + ceil32(return_data.size) + 64]
                            if idx >= stor8.length:
                                revert with 'NH{q', 50
                            mem[0] = 8
                            require ext_code.size(stor8[idx].field_0)
                            staticcall stor8[idx].field_0._callFee() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1922 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1922] == mem[_1922]
                            if _1858 and mem[_1922] > -1 / _1858:
                                revert with 'NH{q', 17
                            if _1858 * mem[_1922] <= stor9:
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                s = s
                                continue 
                        else:
                            mem[_1146 + 32] = stor1
                            if 1 >= mem[_1146]:
                                revert with 'NH{q', 50
                            mem[_1146 + 64] = stor3
                            mem[_1146 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[_1146 + 100] = _1122
                            mem[_1146 + 132] = 64
                            mem[_1146 + 164] = mem[_1146]
                            t = 0
                            u = _1146 + 32
                            v = _1146 + 196
                            while t < mem[_1146]:
                                mem[v] = mem[u + 12 len 20]
                                t = t + 1
                                u = u + 32
                                v = v + 32
                                continue 
                            require ext_code.size(stor5)
                            staticcall stor5.mem[mem[64] len 4] with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4 len _1146 + (32 * mem[_1146]) + -mem[64] + 192]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1555 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1579 = mem[_1555]
                            require mem[_1555] <= test266151307()
                            require _1555 + mem[_1555] + 31 < _1555 + return_data.size
                            _1619 = mem[_1555 + mem[_1555]]
                            if mem[_1555 + mem[_1555]] > test266151307():
                                revert with 'NH{q', 65
                            if _1555 + ceil32(return_data.size) + floor32(mem[_1555 + mem[_1555]]) + 1 > test266151307() or floor32(mem[_1555 + mem[_1555]]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = _1555 + ceil32(return_data.size) + floor32(mem[_1555 + mem[_1555]]) + 1
                            mem[_1555 + ceil32(return_data.size)] = _1619
                            require _1579 + (32 * _1619) + 32 <= return_data.size
                            t = 0
                            u = _1555 + _1579 + 32
                            v = _1555 + ceil32(return_data.size) + 32
                            while t < _1619:
                                require mem[u] == mem[u]
                                mem[v] = mem[u]
                                t = t + 1
                                u = u + 32
                                v = v + 32
                                continue 
                            if 1 >= _1619:
                                revert with 'NH{q', 50
                            _1859 = mem[_1555 + ceil32(return_data.size) + 64]
                            if idx >= stor8.length:
                                revert with 'NH{q', 50
                            mem[0] = 8
                            require ext_code.size(stor8[idx].field_0)
                            staticcall stor8[idx].field_0._callFee() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1923 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1923] == mem[_1923]
                            if _1859 and mem[_1923] > -1 / _1859:
                                revert with 'NH{q', 17
                            if _1859 * mem[_1923] <= stor9:
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                s = s
                                continue 
                    else:
                        _1147 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        if 0 >= mem[_1147]:
                            revert with 'NH{q', 50
                        if stor8[idx].field_160:
                            mem[_1147 + 32] = stor2
                            if 1 >= mem[_1147]:
                                revert with 'NH{q', 50
                            mem[_1147 + 64] = stor3
                            mem[_1147 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[_1147 + 100] = _1122
                            mem[_1147 + 132] = 64
                            mem[_1147 + 164] = mem[_1147]
                            t = 0
                            u = _1147 + 32
                            v = _1147 + 196
                            while t < mem[_1147]:
                                mem[v] = mem[u + 12 len 20]
                                t = t + 1
                                u = u + 32
                                v = v + 32
                                continue 
                            require ext_code.size(stor4)
                            staticcall stor4.mem[mem[64] len 4] with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4 len _1147 + (32 * mem[_1147]) + -mem[64] + 192]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1556 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1580 = mem[_1556]
                            require mem[_1556] <= test266151307()
                            require _1556 + mem[_1556] + 31 < _1556 + return_data.size
                            _1620 = mem[_1556 + mem[_1556]]
                            if mem[_1556 + mem[_1556]] > test266151307():
                                revert with 'NH{q', 65
                            if _1556 + ceil32(return_data.size) + floor32(mem[_1556 + mem[_1556]]) + 1 > test266151307() or floor32(mem[_1556 + mem[_1556]]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = _1556 + ceil32(return_data.size) + floor32(mem[_1556 + mem[_1556]]) + 1
                            mem[_1556 + ceil32(return_data.size)] = _1620
                            require _1580 + (32 * _1620) + 32 <= return_data.size
                            t = 0
                            u = _1556 + _1580 + 32
                            v = _1556 + ceil32(return_data.size) + 32
                            while t < _1620:
                                require mem[u] == mem[u]
                                mem[v] = mem[u]
                                t = t + 1
                                u = u + 32
                                v = v + 32
                                continue 
                            if 1 >= _1620:
                                revert with 'NH{q', 50
                            _1860 = mem[_1556 + ceil32(return_data.size) + 64]
                            if idx >= stor8.length:
                                revert with 'NH{q', 50
                            mem[0] = 8
                            require ext_code.size(stor8[idx].field_0)
                            staticcall stor8[idx].field_0._callFee() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1924 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1924] == mem[_1924]
                            if _1860 and mem[_1924] > -1 / _1860:
                                revert with 'NH{q', 17
                            if _1860 * mem[_1924] <= stor9:
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                s = s
                                continue 
                        else:
                            mem[_1147 + 32] = stor1
                            if 1 >= mem[_1147]:
                                revert with 'NH{q', 50
                            mem[_1147 + 64] = stor3
                            mem[_1147 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[_1147 + 100] = _1122
                            mem[_1147 + 132] = 64
                            mem[_1147 + 164] = mem[_1147]
                            t = 0
                            u = _1147 + 32
                            v = _1147 + 196
                            while t < mem[_1147]:
                                mem[v] = mem[u + 12 len 20]
                                t = t + 1
                                u = u + 32
                                v = v + 32
                                continue 
                            require ext_code.size(stor4)
                            staticcall stor4.mem[mem[64] len 4] with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4 len _1147 + (32 * mem[_1147]) + -mem[64] + 192]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1557 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1581 = mem[_1557]
                            require mem[_1557] <= test266151307()
                            require _1557 + mem[_1557] + 31 < _1557 + return_data.size
                            _1621 = mem[_1557 + mem[_1557]]
                            if mem[_1557 + mem[_1557]] > test266151307():
                                revert with 'NH{q', 65
                            if _1557 + ceil32(return_data.size) + floor32(mem[_1557 + mem[_1557]]) + 1 > test266151307() or floor32(mem[_1557 + mem[_1557]]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = _1557 + ceil32(return_data.size) + floor32(mem[_1557 + mem[_1557]]) + 1
                            mem[_1557 + ceil32(return_data.size)] = _1621
                            require _1581 + (32 * _1621) + 32 <= return_data.size
                            t = 0
                            u = _1557 + _1581 + 32
                            v = _1557 + ceil32(return_data.size) + 32
                            while t < _1621:
                                require mem[u] == mem[u]
                                mem[v] = mem[u]
                                t = t + 1
                                u = u + 32
                                v = v + 32
                                continue 
                            if 1 >= _1621:
                                revert with 'NH{q', 50
                            _1861 = mem[_1557 + ceil32(return_data.size) + 64]
                            if idx >= stor8.length:
                                revert with 'NH{q', 50
                            mem[0] = 8
                            require ext_code.size(stor8[idx].field_0)
                            staticcall stor8[idx].field_0._callFee() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1925 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1925] == mem[_1925]
                            if _1861 and mem[_1925] > -1 / _1861:
                                revert with 'NH{q', 17
                            if _1861 * mem[_1925] <= stor9:
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                s = s
                                continue 
            else:
                _1023 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1035 = mem[_1023]
                require mem[_1023] == mem[_1023]
                if idx >= stor8.length:
                    revert with 'NH{q', 50
                mem[0] = 8
                mem[mem[64] + 4] = _1035
                mem[mem[64] + 36] = stor8[idx].field_0
                require ext_code.size(stor6)
                staticcall stor6.0xa279b07f with:
                        gas gas_remaining wei
                       args _1035, stor8[idx].field_0
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1095 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1123 = mem[_1095]
                require mem[_1095] == mem[_1095]
                if idx >= stor8.length:
                    revert with 'NH{q', 50
                mem[0] = 8
                if _1123 < 10^10:
                    if idx >= stor8.length:
                        revert with 'NH{q', 50
                    mem[0] = 8
                    require ext_code.size(stor8[idx].field_0)
                    staticcall stor8[idx].field_0._callFee() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1167 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1167] == mem[_1167]
                    if False and mem[_1167] > 0:
                        revert with 'NH{q', 17
                    if 0 <= stor9:
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = s
                        continue 
                else:
                    if stor8[idx].field_160:
                        _1151 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        if 0 >= mem[_1151]:
                            revert with 'NH{q', 50
                        if stor8[idx].field_160:
                            mem[_1151 + 32] = stor2
                            if 1 >= mem[_1151]:
                                revert with 'NH{q', 50
                            mem[_1151 + 64] = stor3
                            mem[_1151 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[_1151 + 100] = _1123
                            mem[_1151 + 132] = 64
                            mem[_1151 + 164] = mem[_1151]
                            t = 0
                            u = _1151 + 32
                            v = _1151 + 196
                            while t < mem[_1151]:
                                mem[v] = mem[u + 12 len 20]
                                t = t + 1
                                u = u + 32
                                v = v + 32
                                continue 
                            require ext_code.size(stor5)
                            staticcall stor5.mem[mem[64] len 4] with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4 len _1151 + (32 * mem[_1151]) + -mem[64] + 192]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1558 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1582 = mem[_1558]
                            require mem[_1558] <= test266151307()
                            require _1558 + mem[_1558] + 31 < _1558 + return_data.size
                            _1622 = mem[_1558 + mem[_1558]]
                            if mem[_1558 + mem[_1558]] > test266151307():
                                revert with 'NH{q', 65
                            if _1558 + ceil32(return_data.size) + floor32(mem[_1558 + mem[_1558]]) + 1 > test266151307() or floor32(mem[_1558 + mem[_1558]]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = _1558 + ceil32(return_data.size) + floor32(mem[_1558 + mem[_1558]]) + 1
                            mem[_1558 + ceil32(return_data.size)] = _1622
                            require _1582 + (32 * _1622) + 32 <= return_data.size
                            t = 0
                            u = _1558 + _1582 + 32
                            v = _1558 + ceil32(return_data.size) + 32
                            while t < _1622:
                                require mem[u] == mem[u]
                                mem[v] = mem[u]
                                t = t + 1
                                u = u + 32
                                v = v + 32
                                continue 
                            if 1 >= _1622:
                                revert with 'NH{q', 50
                            _1862 = mem[_1558 + ceil32(return_data.size) + 64]
                            if idx >= stor8.length:
                                revert with 'NH{q', 50
                            mem[0] = 8
                            require ext_code.size(stor8[idx].field_0)
                            staticcall stor8[idx].field_0._callFee() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1926 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1926] == mem[_1926]
                            if _1862 and mem[_1926] > -1 / _1862:
                                revert with 'NH{q', 17
                            if _1862 * mem[_1926] <= stor9:
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                s = s
                                continue 
                        else:
                            mem[_1151 + 32] = stor1
                            if 1 >= mem[_1151]:
                                revert with 'NH{q', 50
                            mem[_1151 + 64] = stor3
                            mem[_1151 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[_1151 + 100] = _1123
                            mem[_1151 + 132] = 64
                            mem[_1151 + 164] = mem[_1151]
                            t = 0
                            u = _1151 + 32
                            v = _1151 + 196
                            while t < mem[_1151]:
                                mem[v] = mem[u + 12 len 20]
                                t = t + 1
                                u = u + 32
                                v = v + 32
                                continue 
                            require ext_code.size(stor5)
                            staticcall stor5.mem[mem[64] len 4] with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4 len _1151 + (32 * mem[_1151]) + -mem[64] + 192]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1559 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1583 = mem[_1559]
                            require mem[_1559] <= test266151307()
                            require _1559 + mem[_1559] + 31 < _1559 + return_data.size
                            _1623 = mem[_1559 + mem[_1559]]
                            if mem[_1559 + mem[_1559]] > test266151307():
                                revert with 'NH{q', 65
                            if _1559 + ceil32(return_data.size) + floor32(mem[_1559 + mem[_1559]]) + 1 > test266151307() or floor32(mem[_1559 + mem[_1559]]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = _1559 + ceil32(return_data.size) + floor32(mem[_1559 + mem[_1559]]) + 1
                            mem[_1559 + ceil32(return_data.size)] = _1623
                            require _1583 + (32 * _1623) + 32 <= return_data.size
                            t = 0
                            u = _1559 + _1583 + 32
                            v = _1559 + ceil32(return_data.size) + 32
                            while t < _1623:
                                require mem[u] == mem[u]
                                mem[v] = mem[u]
                                t = t + 1
                                u = u + 32
                                v = v + 32
                                continue 
                            if 1 >= _1623:
                                revert with 'NH{q', 50
                            _1863 = mem[_1559 + ceil32(return_data.size) + 64]
                            if idx >= stor8.length:
                                revert with 'NH{q', 50
                            mem[0] = 8
                            require ext_code.size(stor8[idx].field_0)
                            staticcall stor8[idx].field_0._callFee() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1927 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1927] == mem[_1927]
                            if _1863 and mem[_1927] > -1 / _1863:
                                revert with 'NH{q', 17
                            if _1863 * mem[_1927] <= stor9:
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                s = s
                                continue 
                    else:
                        _1152 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        if 0 >= mem[_1152]:
                            revert with 'NH{q', 50
                        if stor8[idx].field_160:
                            mem[_1152 + 32] = stor2
                            if 1 >= mem[_1152]:
                                revert with 'NH{q', 50
                            mem[_1152 + 64] = stor3
                            mem[_1152 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[_1152 + 100] = _1123
                            mem[_1152 + 132] = 64
                            mem[_1152 + 164] = mem[_1152]
                            t = 0
                            u = _1152 + 32
                            v = _1152 + 196
                            while t < mem[_1152]:
                                mem[v] = mem[u + 12 len 20]
                                t = t + 1
                                u = u + 32
                                v = v + 32
                                continue 
                            require ext_code.size(stor4)
                            staticcall stor4.mem[mem[64] len 4] with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4 len _1152 + (32 * mem[_1152]) + -mem[64] + 192]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1560 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1584 = mem[_1560]
                            require mem[_1560] <= test266151307()
                            require _1560 + mem[_1560] + 31 < _1560 + return_data.size
                            _1624 = mem[_1560 + mem[_1560]]
                            if mem[_1560 + mem[_1560]] > test266151307():
                                revert with 'NH{q', 65
                            if _1560 + ceil32(return_data.size) + floor32(mem[_1560 + mem[_1560]]) + 1 > test266151307() or floor32(mem[_1560 + mem[_1560]]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = _1560 + ceil32(return_data.size) + floor32(mem[_1560 + mem[_1560]]) + 1
                            mem[_1560 + ceil32(return_data.size)] = _1624
                            require _1584 + (32 * _1624) + 32 <= return_data.size
                            t = 0
                            u = _1560 + _1584 + 32
                            v = _1560 + ceil32(return_data.size) + 32
                            while t < _1624:
                                require mem[u] == mem[u]
                                mem[v] = mem[u]
                                t = t + 1
                                u = u + 32
                                v = v + 32
                                continue 
                            if 1 >= _1624:
                                revert with 'NH{q', 50
                            _1864 = mem[_1560 + ceil32(return_data.size) + 64]
                            if idx >= stor8.length:
                                revert with 'NH{q', 50
                            mem[0] = 8
                            require ext_code.size(stor8[idx].field_0)
                            staticcall stor8[idx].field_0._callFee() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1928 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1928] == mem[_1928]
                            if _1864 and mem[_1928] > -1 / _1864:
                                revert with 'NH{q', 17
                            if _1864 * mem[_1928] <= stor9:
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                s = s
                                continue 
                        else:
                            mem[_1152 + 32] = stor1
                            if 1 >= mem[_1152]:
                                revert with 'NH{q', 50
                            mem[_1152 + 64] = stor3
                            mem[_1152 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[_1152 + 100] = _1123
                            mem[_1152 + 132] = 64
                            mem[_1152 + 164] = mem[_1152]
                            t = 0
                            u = _1152 + 32
                            v = _1152 + 196
                            while t < mem[_1152]:
                                mem[v] = mem[u + 12 len 20]
                                t = t + 1
                                u = u + 32
                                v = v + 32
                                continue 
                            require ext_code.size(stor4)
                            staticcall stor4.mem[mem[64] len 4] with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4 len _1152 + (32 * mem[_1152]) + -mem[64] + 192]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1561 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1585 = mem[_1561]
                            require mem[_1561] <= test266151307()
                            require _1561 + mem[_1561] + 31 < _1561 + return_data.size
                            _1625 = mem[_1561 + mem[_1561]]
                            if mem[_1561 + mem[_1561]] > test266151307():
                                revert with 'NH{q', 65
                            if _1561 + ceil32(return_data.size) + floor32(mem[_1561 + mem[_1561]]) + 1 > test266151307() or floor32(mem[_1561 + mem[_1561]]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = _1561 + ceil32(return_data.size) + floor32(mem[_1561 + mem[_1561]]) + 1
                            mem[_1561 + ceil32(return_data.size)] = _1625
                            require _1585 + (32 * _1625) + 32 <= return_data.size
                            t = 0
                            u = _1561 + _1585 + 32
                            v = _1561 + ceil32(return_data.size) + 32
                            while t < _1625:
                                require mem[u] == mem[u]
                                mem[v] = mem[u]
                                t = t + 1
                                u = u + 32
                                v = v + 32
                                continue 
                            if 1 >= _1625:
                                revert with 'NH{q', 50
                            _1865 = mem[_1561 + ceil32(return_data.size) + 64]
                            if idx >= stor8.length:
                                revert with 'NH{q', 50
                            mem[0] = 8
                            require ext_code.size(stor8[idx].field_0)
                            staticcall stor8[idx].field_0._callFee() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1929 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1929] == mem[_1929]
                            if _1865 and mem[_1929] > -1 / _1865:
                                revert with 'NH{q', 17
                            if _1865 * mem[_1929] <= stor9:
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                s = s
                                continue 
            if idx >= stor8.length:
                revert with 'NH{q', 50
            mem[0] = 8
            if s >= mem[_389]:
                revert with 'NH{q', 50
            mem[(32 * s) + _389 + 32] = stor8[idx].field_0
            if s == -1:
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s + 1
            continue 
        _988 = mem[64]
        mem[mem[64]] = 32
        _1012 = mem[_389]
        mem[mem[64] + 32] = mem[_389]
        idx = 0
        s = _389 + 32
        t = mem[64] + 64
        while idx < _1012:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _988 + (32 * _1012) + -mem[64] + 64
    mem[_389 + 32 len 32 * s] = call.data[calldata.size len 32 * s]
    idx = 0
    s = 0
    while idx < stor8.length:
        if idx >= stor8.length:
            revert with 'NH{q', 50
        mem[0] = 8
        require ext_code.size(stor8[idx].field_0)
        staticcall stor8[idx].field_0.poolId() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if stor8[idx].field_160:
            _1024 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1036 = mem[_1024]
            require mem[_1024] == mem[_1024]
            if idx >= stor8.length:
                revert with 'NH{q', 50
            mem[0] = 8
            mem[mem[64] + 4] = _1036
            mem[mem[64] + 36] = stor8[idx].field_0
            require ext_code.size(stor7)
            staticcall stor7.0x1778809f with:
                    gas gas_remaining wei
                   args _1036, stor8[idx].field_0
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1096 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1124 = mem[_1096]
            require mem[_1096] == mem[_1096]
            if idx >= stor8.length:
                revert with 'NH{q', 50
            mem[0] = 8
            if _1124 < 10^10:
                if idx >= stor8.length:
                    revert with 'NH{q', 50
                mem[0] = 8
                require ext_code.size(stor8[idx].field_0)
                staticcall stor8[idx].field_0._callFee() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1168 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1168] == mem[_1168]
                if False and mem[_1168] > 0:
                    revert with 'NH{q', 17
                if 0 <= stor9:
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = s
                    continue 
            else:
                if stor8[idx].field_160:
                    _1156 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    if 0 >= mem[_1156]:
                        revert with 'NH{q', 50
                    if stor8[idx].field_160:
                        mem[_1156 + 32] = stor2
                        if 1 >= mem[_1156]:
                            revert with 'NH{q', 50
                        mem[_1156 + 64] = stor3
                        mem[_1156 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[_1156 + 100] = _1124
                        mem[_1156 + 132] = 64
                        mem[_1156 + 164] = mem[_1156]
                        t = 0
                        u = _1156 + 32
                        v = _1156 + 196
                        while t < mem[_1156]:
                            mem[v] = mem[u + 12 len 20]
                            t = t + 1
                            u = u + 32
                            v = v + 32
                            continue 
                        require ext_code.size(stor5)
                        staticcall stor5.mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len _1156 + (32 * mem[_1156]) + -mem[64] + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1562 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1586 = mem[_1562]
                        require mem[_1562] <= test266151307()
                        require _1562 + mem[_1562] + 31 < _1562 + return_data.size
                        _1626 = mem[_1562 + mem[_1562]]
                        if mem[_1562 + mem[_1562]] > test266151307():
                            revert with 'NH{q', 65
                        if _1562 + ceil32(return_data.size) + floor32(mem[_1562 + mem[_1562]]) + 1 > test266151307() or floor32(mem[_1562 + mem[_1562]]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = _1562 + ceil32(return_data.size) + floor32(mem[_1562 + mem[_1562]]) + 1
                        mem[_1562 + ceil32(return_data.size)] = _1626
                        require _1586 + (32 * _1626) + 32 <= return_data.size
                        t = 0
                        u = _1562 + _1586 + 32
                        v = _1562 + ceil32(return_data.size) + 32
                        while t < _1626:
                            require mem[u] == mem[u]
                            mem[v] = mem[u]
                            t = t + 1
                            u = u + 32
                            v = v + 32
                            continue 
                        if 1 >= _1626:
                            revert with 'NH{q', 50
                        _1866 = mem[_1562 + ceil32(return_data.size) + 64]
                        if idx >= stor8.length:
                            revert with 'NH{q', 50
                        mem[0] = 8
                        require ext_code.size(stor8[idx].field_0)
                        staticcall stor8[idx].field_0._callFee() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1930 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1930] == mem[_1930]
                        if _1866 and mem[_1930] > -1 / _1866:
                            revert with 'NH{q', 17
                        if _1866 * mem[_1930] <= stor9:
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = s
                            continue 
                    else:
                        mem[_1156 + 32] = stor1
                        if 1 >= mem[_1156]:
                            revert with 'NH{q', 50
                        mem[_1156 + 64] = stor3
                        mem[_1156 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[_1156 + 100] = _1124
                        mem[_1156 + 132] = 64
                        mem[_1156 + 164] = mem[_1156]
                        t = 0
                        u = _1156 + 32
                        v = _1156 + 196
                        while t < mem[_1156]:
                            mem[v] = mem[u + 12 len 20]
                            t = t + 1
                            u = u + 32
                            v = v + 32
                            continue 
                        require ext_code.size(stor5)
                        staticcall stor5.mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len _1156 + (32 * mem[_1156]) + -mem[64] + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1563 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1587 = mem[_1563]
                        require mem[_1563] <= test266151307()
                        require _1563 + mem[_1563] + 31 < _1563 + return_data.size
                        _1627 = mem[_1563 + mem[_1563]]
                        if mem[_1563 + mem[_1563]] > test266151307():
                            revert with 'NH{q', 65
                        if _1563 + ceil32(return_data.size) + floor32(mem[_1563 + mem[_1563]]) + 1 > test266151307() or floor32(mem[_1563 + mem[_1563]]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = _1563 + ceil32(return_data.size) + floor32(mem[_1563 + mem[_1563]]) + 1
                        mem[_1563 + ceil32(return_data.size)] = _1627
                        require _1587 + (32 * _1627) + 32 <= return_data.size
                        t = 0
                        u = _1563 + _1587 + 32
                        v = _1563 + ceil32(return_data.size) + 32
                        while t < _1627:
                            require mem[u] == mem[u]
                            mem[v] = mem[u]
                            t = t + 1
                            u = u + 32
                            v = v + 32
                            continue 
                        if 1 >= _1627:
                            revert with 'NH{q', 50
                        _1867 = mem[_1563 + ceil32(return_data.size) + 64]
                        if idx >= stor8.length:
                            revert with 'NH{q', 50
                        mem[0] = 8
                        require ext_code.size(stor8[idx].field_0)
                        staticcall stor8[idx].field_0._callFee() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1931 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1931] == mem[_1931]
                        if _1867 and mem[_1931] > -1 / _1867:
                            revert with 'NH{q', 17
                        if _1867 * mem[_1931] <= stor9:
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = s
                            continue 
                else:
                    _1157 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    if 0 >= mem[_1157]:
                        revert with 'NH{q', 50
                    if stor8[idx].field_160:
                        mem[_1157 + 32] = stor2
                        if 1 >= mem[_1157]:
                            revert with 'NH{q', 50
                        mem[_1157 + 64] = stor3
                        mem[_1157 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[_1157 + 100] = _1124
                        mem[_1157 + 132] = 64
                        mem[_1157 + 164] = mem[_1157]
                        t = 0
                        u = _1157 + 32
                        v = _1157 + 196
                        while t < mem[_1157]:
                            mem[v] = mem[u + 12 len 20]
                            t = t + 1
                            u = u + 32
                            v = v + 32
                            continue 
                        require ext_code.size(stor4)
                        staticcall stor4.mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len _1157 + (32 * mem[_1157]) + -mem[64] + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1564 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1588 = mem[_1564]
                        require mem[_1564] <= test266151307()
                        require _1564 + mem[_1564] + 31 < _1564 + return_data.size
                        _1628 = mem[_1564 + mem[_1564]]
                        if mem[_1564 + mem[_1564]] > test266151307():
                            revert with 'NH{q', 65
                        if _1564 + ceil32(return_data.size) + floor32(mem[_1564 + mem[_1564]]) + 1 > test266151307() or floor32(mem[_1564 + mem[_1564]]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = _1564 + ceil32(return_data.size) + floor32(mem[_1564 + mem[_1564]]) + 1
                        mem[_1564 + ceil32(return_data.size)] = _1628
                        require _1588 + (32 * _1628) + 32 <= return_data.size
                        t = 0
                        u = _1564 + _1588 + 32
                        v = _1564 + ceil32(return_data.size) + 32
                        while t < _1628:
                            require mem[u] == mem[u]
                            mem[v] = mem[u]
                            t = t + 1
                            u = u + 32
                            v = v + 32
                            continue 
                        if 1 >= _1628:
                            revert with 'NH{q', 50
                        _1868 = mem[_1564 + ceil32(return_data.size) + 64]
                        if idx >= stor8.length:
                            revert with 'NH{q', 50
                        mem[0] = 8
                        require ext_code.size(stor8[idx].field_0)
                        staticcall stor8[idx].field_0._callFee() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1932 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1932] == mem[_1932]
                        if _1868 and mem[_1932] > -1 / _1868:
                            revert with 'NH{q', 17
                        if _1868 * mem[_1932] <= stor9:
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = s
                            continue 
                    else:
                        mem[_1157 + 32] = stor1
                        if 1 >= mem[_1157]:
                            revert with 'NH{q', 50
                        mem[_1157 + 64] = stor3
                        mem[_1157 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[_1157 + 100] = _1124
                        mem[_1157 + 132] = 64
                        mem[_1157 + 164] = mem[_1157]
                        t = 0
                        u = _1157 + 32
                        v = _1157 + 196
                        while t < mem[_1157]:
                            mem[v] = mem[u + 12 len 20]
                            t = t + 1
                            u = u + 32
                            v = v + 32
                            continue 
                        require ext_code.size(stor4)
                        staticcall stor4.mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len _1157 + (32 * mem[_1157]) + -mem[64] + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1565 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1589 = mem[_1565]
                        require mem[_1565] <= test266151307()
                        require _1565 + mem[_1565] + 31 < _1565 + return_data.size
                        _1629 = mem[_1565 + mem[_1565]]
                        if mem[_1565 + mem[_1565]] > test266151307():
                            revert with 'NH{q', 65
                        if _1565 + ceil32(return_data.size) + floor32(mem[_1565 + mem[_1565]]) + 1 > test266151307() or floor32(mem[_1565 + mem[_1565]]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = _1565 + ceil32(return_data.size) + floor32(mem[_1565 + mem[_1565]]) + 1
                        mem[_1565 + ceil32(return_data.size)] = _1629
                        require _1589 + (32 * _1629) + 32 <= return_data.size
                        t = 0
                        u = _1565 + _1589 + 32
                        v = _1565 + ceil32(return_data.size) + 32
                        while t < _1629:
                            require mem[u] == mem[u]
                            mem[v] = mem[u]
                            t = t + 1
                            u = u + 32
                            v = v + 32
                            continue 
                        if 1 >= _1629:
                            revert with 'NH{q', 50
                        _1869 = mem[_1565 + ceil32(return_data.size) + 64]
                        if idx >= stor8.length:
                            revert with 'NH{q', 50
                        mem[0] = 8
                        require ext_code.size(stor8[idx].field_0)
                        staticcall stor8[idx].field_0._callFee() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1933 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1933] == mem[_1933]
                        if _1869 and mem[_1933] > -1 / _1869:
                            revert with 'NH{q', 17
                        if _1869 * mem[_1933] <= stor9:
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = s
                            continue 
        else:
            _1025 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1037 = mem[_1025]
            require mem[_1025] == mem[_1025]
            if idx >= stor8.length:
                revert with 'NH{q', 50
            mem[0] = 8
            mem[mem[64] + 4] = _1037
            mem[mem[64] + 36] = stor8[idx].field_0
            require ext_code.size(stor6)
            staticcall stor6.0xa279b07f with:
                    gas gas_remaining wei
                   args _1037, stor8[idx].field_0
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1097 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1125 = mem[_1097]
            require mem[_1097] == mem[_1097]
            if idx >= stor8.length:
                revert with 'NH{q', 50
            mem[0] = 8
            if _1125 < 10^10:
                if idx >= stor8.length:
                    revert with 'NH{q', 50
                mem[0] = 8
                require ext_code.size(stor8[idx].field_0)
                staticcall stor8[idx].field_0._callFee() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1169 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1169] == mem[_1169]
                if False and mem[_1169] > 0:
                    revert with 'NH{q', 17
                if 0 <= stor9:
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = s
                    continue 
            else:
                if stor8[idx].field_160:
                    _1161 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    if 0 >= mem[_1161]:
                        revert with 'NH{q', 50
                    if stor8[idx].field_160:
                        mem[_1161 + 32] = stor2
                        if 1 >= mem[_1161]:
                            revert with 'NH{q', 50
                        mem[_1161 + 64] = stor3
                        mem[_1161 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[_1161 + 100] = _1125
                        mem[_1161 + 132] = 64
                        mem[_1161 + 164] = mem[_1161]
                        t = 0
                        u = _1161 + 32
                        v = _1161 + 196
                        while t < mem[_1161]:
                            mem[v] = mem[u + 12 len 20]
                            t = t + 1
                            u = u + 32
                            v = v + 32
                            continue 
                        require ext_code.size(stor5)
                        staticcall stor5.mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len _1161 + (32 * mem[_1161]) + -mem[64] + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1566 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1590 = mem[_1566]
                        require mem[_1566] <= test266151307()
                        require _1566 + mem[_1566] + 31 < _1566 + return_data.size
                        _1630 = mem[_1566 + mem[_1566]]
                        if mem[_1566 + mem[_1566]] > test266151307():
                            revert with 'NH{q', 65
                        if _1566 + ceil32(return_data.size) + floor32(mem[_1566 + mem[_1566]]) + 1 > test266151307() or floor32(mem[_1566 + mem[_1566]]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = _1566 + ceil32(return_data.size) + floor32(mem[_1566 + mem[_1566]]) + 1
                        mem[_1566 + ceil32(return_data.size)] = _1630
                        require _1590 + (32 * _1630) + 32 <= return_data.size
                        t = 0
                        u = _1566 + _1590 + 32
                        v = _1566 + ceil32(return_data.size) + 32
                        while t < _1630:
                            require mem[u] == mem[u]
                            mem[v] = mem[u]
                            t = t + 1
                            u = u + 32
                            v = v + 32
                            continue 
                        if 1 >= _1630:
                            revert with 'NH{q', 50
                        _1870 = mem[_1566 + ceil32(return_data.size) + 64]
                        if idx >= stor8.length:
                            revert with 'NH{q', 50
                        mem[0] = 8
                        require ext_code.size(stor8[idx].field_0)
                        staticcall stor8[idx].field_0._callFee() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1934 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1934] == mem[_1934]
                        if _1870 and mem[_1934] > -1 / _1870:
                            revert with 'NH{q', 17
                        if _1870 * mem[_1934] <= stor9:
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = s
                            continue 
                    else:
                        mem[_1161 + 32] = stor1
                        if 1 >= mem[_1161]:
                            revert with 'NH{q', 50
                        mem[_1161 + 64] = stor3
                        mem[_1161 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[_1161 + 100] = _1125
                        mem[_1161 + 132] = 64
                        mem[_1161 + 164] = mem[_1161]
                        t = 0
                        u = _1161 + 32
                        v = _1161 + 196
                        while t < mem[_1161]:
                            mem[v] = mem[u + 12 len 20]
                            t = t + 1
                            u = u + 32
                            v = v + 32
                            continue 
                        require ext_code.size(stor5)
                        staticcall stor5.mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len _1161 + (32 * mem[_1161]) + -mem[64] + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1567 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1591 = mem[_1567]
                        require mem[_1567] <= test266151307()
                        require _1567 + mem[_1567] + 31 < _1567 + return_data.size
                        _1631 = mem[_1567 + mem[_1567]]
                        if mem[_1567 + mem[_1567]] > test266151307():
                            revert with 'NH{q', 65
                        if _1567 + ceil32(return_data.size) + floor32(mem[_1567 + mem[_1567]]) + 1 > test266151307() or floor32(mem[_1567 + mem[_1567]]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = _1567 + ceil32(return_data.size) + floor32(mem[_1567 + mem[_1567]]) + 1
                        mem[_1567 + ceil32(return_data.size)] = _1631
                        require _1591 + (32 * _1631) + 32 <= return_data.size
                        t = 0
                        u = _1567 + _1591 + 32
                        v = _1567 + ceil32(return_data.size) + 32
                        while t < _1631:
                            require mem[u] == mem[u]
                            mem[v] = mem[u]
                            t = t + 1
                            u = u + 32
                            v = v + 32
                            continue 
                        if 1 >= _1631:
                            revert with 'NH{q', 50
                        _1871 = mem[_1567 + ceil32(return_data.size) + 64]
                        if idx >= stor8.length:
                            revert with 'NH{q', 50
                        mem[0] = 8
                        require ext_code.size(stor8[idx].field_0)
                        staticcall stor8[idx].field_0._callFee() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1935 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1935] == mem[_1935]
                        if _1871 and mem[_1935] > -1 / _1871:
                            revert with 'NH{q', 17
                        if _1871 * mem[_1935] <= stor9:
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = s
                            continue 
                else:
                    _1162 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    if 0 >= mem[_1162]:
                        revert with 'NH{q', 50
                    if stor8[idx].field_160:
                        mem[_1162 + 32] = stor2
                        if 1 >= mem[_1162]:
                            revert with 'NH{q', 50
                        mem[_1162 + 64] = stor3
                        mem[_1162 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[_1162 + 100] = _1125
                        mem[_1162 + 132] = 64
                        mem[_1162 + 164] = mem[_1162]
                        t = 0
                        u = _1162 + 32
                        v = _1162 + 196
                        while t < mem[_1162]:
                            mem[v] = mem[u + 12 len 20]
                            t = t + 1
                            u = u + 32
                            v = v + 32
                            continue 
                        require ext_code.size(stor4)
                        staticcall stor4.mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len _1162 + (32 * mem[_1162]) + -mem[64] + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1568 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1592 = mem[_1568]
                        require mem[_1568] <= test266151307()
                        require _1568 + mem[_1568] + 31 < _1568 + return_data.size
                        _1632 = mem[_1568 + mem[_1568]]
                        if mem[_1568 + mem[_1568]] > test266151307():
                            revert with 'NH{q', 65
                        if _1568 + ceil32(return_data.size) + floor32(mem[_1568 + mem[_1568]]) + 1 > test266151307() or floor32(mem[_1568 + mem[_1568]]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = _1568 + ceil32(return_data.size) + floor32(mem[_1568 + mem[_1568]]) + 1
                        mem[_1568 + ceil32(return_data.size)] = _1632
                        require _1592 + (32 * _1632) + 32 <= return_data.size
                        t = 0
                        u = _1568 + _1592 + 32
                        v = _1568 + ceil32(return_data.size) + 32
                        while t < _1632:
                            require mem[u] == mem[u]
                            mem[v] = mem[u]
                            t = t + 1
                            u = u + 32
                            v = v + 32
                            continue 
                        if 1 >= _1632:
                            revert with 'NH{q', 50
                        _1872 = mem[_1568 + ceil32(return_data.size) + 64]
                        if idx >= stor8.length:
                            revert with 'NH{q', 50
                        mem[0] = 8
                        require ext_code.size(stor8[idx].field_0)
                        staticcall stor8[idx].field_0._callFee() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1936 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1936] == mem[_1936]
                        if _1872 and mem[_1936] > -1 / _1872:
                            revert with 'NH{q', 17
                        if _1872 * mem[_1936] <= stor9:
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = s
                            continue 
                    else:
                        mem[_1162 + 32] = stor1
                        if 1 >= mem[_1162]:
                            revert with 'NH{q', 50
                        mem[_1162 + 64] = stor3
                        mem[_1162 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[_1162 + 100] = _1125
                        mem[_1162 + 132] = 64
                        mem[_1162 + 164] = mem[_1162]
                        t = 0
                        u = _1162 + 32
                        v = _1162 + 196
                        while t < mem[_1162]:
                            mem[v] = mem[u + 12 len 20]
                            t = t + 1
                            u = u + 32
                            v = v + 32
                            continue 
                        require ext_code.size(stor4)
                        staticcall stor4.mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len _1162 + (32 * mem[_1162]) + -mem[64] + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1569 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1593 = mem[_1569]
                        require mem[_1569] <= test266151307()
                        require _1569 + mem[_1569] + 31 < _1569 + return_data.size
                        _1633 = mem[_1569 + mem[_1569]]
                        if mem[_1569 + mem[_1569]] > test266151307():
                            revert with 'NH{q', 65
                        if _1569 + ceil32(return_data.size) + floor32(mem[_1569 + mem[_1569]]) + 1 > test266151307() or floor32(mem[_1569 + mem[_1569]]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = _1569 + ceil32(return_data.size) + floor32(mem[_1569 + mem[_1569]]) + 1
                        mem[_1569 + ceil32(return_data.size)] = _1633
                        require _1593 + (32 * _1633) + 32 <= return_data.size
                        t = 0
                        u = _1569 + _1593 + 32
                        v = _1569 + ceil32(return_data.size) + 32
                        while t < _1633:
                            require mem[u] == mem[u]
                            mem[v] = mem[u]
                            t = t + 1
                            u = u + 32
                            v = v + 32
                            continue 
                        if 1 >= _1633:
                            revert with 'NH{q', 50
                        _1873 = mem[_1569 + ceil32(return_data.size) + 64]
                        if idx >= stor8.length:
                            revert with 'NH{q', 50
                        mem[0] = 8
                        require ext_code.size(stor8[idx].field_0)
                        staticcall stor8[idx].field_0._callFee() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1937 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1937] == mem[_1937]
                        if _1873 and mem[_1937] > -1 / _1873:
                            revert with 'NH{q', 17
                        if _1873 * mem[_1937] <= stor9:
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = s
                            continue 
        if idx >= stor8.length:
            revert with 'NH{q', 50
        mem[0] = 8
        if s >= mem[_389]:
            revert with 'NH{q', 50
        mem[(32 * s) + _389 + 32] = stor8[idx].field_0
        if s == -1:
            revert with 'NH{q', 17
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = s + 1
        continue 
    _990 = mem[64]
    mem[mem[64]] = 32
    _1013 = mem[_389]
    mem[mem[64] + 32] = mem[_389]
    idx = 0
    s = _389 + 32
    t = mem[64] + 64
    while idx < _1013:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len _990 + (32 * _1013) + -mem[64] + 64
}

function sub_2d447480(?) payable {
    mem[64] = 96
    idx = 0
    s = 0
    while idx < stor8.length:
        if idx >= stor8.length:
            revert with 'NH{q', 50
        mem[0] = 8
        require ext_code.size(stor8[idx].field_0)
        staticcall stor8[idx].field_0.poolId() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if stor8[idx].field_160:
            _459 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _469 = mem[_459]
            require mem[_459] == mem[_459]
            if idx >= stor8.length:
                revert with 'NH{q', 50
            mem[0] = 8
            mem[mem[64] + 4] = _469
            mem[mem[64] + 36] = stor8[idx].field_0
            require ext_code.size(stor7)
            staticcall stor7.0x1778809f with:
                    gas gas_remaining wei
                   args _469, stor8[idx].field_0
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _511 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _515 = mem[_511]
            require mem[_511] == mem[_511]
            if idx >= stor8.length:
                revert with 'NH{q', 50
            mem[0] = 8
            if _515 < 10^10:
                if idx >= stor8.length:
                    revert with 'NH{q', 50
                mem[0] = 8
                require ext_code.size(stor8[idx].field_0)
                staticcall stor8[idx].field_0._callFee() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _541 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_541] == mem[_541]
                if False and mem[_541] > 0:
                    revert with 'NH{q', 17
                if 0 <= stor9:
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = s
                    continue 
                if s == -1:
                    revert with 'NH{q', 17
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = s + 1
                continue 
            if stor8[idx].field_160:
                _531 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                if 0 >= mem[_531]:
                    revert with 'NH{q', 50
                if stor8[idx].field_160:
                    mem[_531 + 32] = stor2
                    if 1 >= mem[_531]:
                        revert with 'NH{q', 50
                    mem[_531 + 64] = stor3
                    mem[_531 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_531 + 100] = _515
                    mem[_531 + 132] = 64
                    _621 = mem[_531]
                    mem[_531 + 164] = mem[_531]
                    t = 0
                    u = _531 + 32
                    v = _531 + 196
                    while t < mem[_531]:
                        mem[v] = mem[u + 12 len 20]
                        t = t + 1
                        u = u + 32
                        v = v + 32
                        continue 
                    require ext_code.size(stor5)
                    staticcall stor5.mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _531 + (32 * mem[_531]) + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1193 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1205 = mem[_1193]
                    require mem[_1193] <= test266151307()
                    require _1193 + mem[_1193] + 31 < _1193 + return_data.size
                    _1222 = mem[_1193 + mem[_1193]]
                    if mem[_1193 + mem[_1193]] > test266151307():
                        revert with 'NH{q', 65
                    if _1193 + ceil32(return_data.size) + floor32(mem[_1193 + mem[_1193]]) + 1 > test266151307() or floor32(mem[_1193 + mem[_1193]]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _1193 + ceil32(return_data.size) + floor32(mem[_1193 + mem[_1193]]) + 1
                    mem[_1193 + ceil32(return_data.size)] = _1222
                    require _1205 + (32 * _1222) + 32 <= return_data.size
                    idx = 0
                    s = _1193 + _1205 + 32
                    t = _1193 + ceil32(return_data.size) + 32
                    while idx < _1222:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    if 1 >= _1222:
                        revert with 'NH{q', 50
                    _1858 = mem[_1193 + ceil32(return_data.size) + 64]
                    if _621 >= stor8.length:
                        revert with 'NH{q', 50
                    mem[0] = 8
                    require ext_code.size(stor8[_621].field_0)
                    staticcall stor8[_621].field_0._callFee() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1918 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1918] == mem[_1918]
                    if _1858 and mem[_1918] > -1 / _1858:
                        revert with 'NH{q', 17
                    if _1858 * mem[_1918] <= stor9:
                        if _621 == -1:
                            revert with 'NH{q', 17
                        t = _621 + 1
                        u = _531 + (32 * _621) + 32
                        continue 
                    if _531 + (32 * _621) + 32 == -1:
                        revert with 'NH{q', 17
                    if _621 == -1:
                        revert with 'NH{q', 17
                    t = _621 + 1
                    u = _531 + (32 * _621) + 33
                    continue 
                mem[_531 + 32] = stor1
                if 1 >= mem[_531]:
                    revert with 'NH{q', 50
                mem[_531 + 64] = stor3
                mem[_531 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_531 + 100] = _515
                mem[_531 + 132] = 64
                _622 = mem[_531]
                mem[_531 + 164] = mem[_531]
                t = 0
                u = _531 + 32
                v = _531 + 196
                while t < mem[_531]:
                    mem[v] = mem[u + 12 len 20]
                    t = t + 1
                    u = u + 32
                    v = v + 32
                    continue 
                require ext_code.size(stor5)
                staticcall stor5.mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len _531 + (32 * mem[_531]) + -mem[64] + 192]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1194 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1206 = mem[_1194]
                require mem[_1194] <= test266151307()
                require _1194 + mem[_1194] + 31 < _1194 + return_data.size
                _1223 = mem[_1194 + mem[_1194]]
                if mem[_1194 + mem[_1194]] > test266151307():
                    revert with 'NH{q', 65
                if _1194 + ceil32(return_data.size) + floor32(mem[_1194 + mem[_1194]]) + 1 > test266151307() or floor32(mem[_1194 + mem[_1194]]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = _1194 + ceil32(return_data.size) + floor32(mem[_1194 + mem[_1194]]) + 1
                mem[_1194 + ceil32(return_data.size)] = _1223
                require _1206 + (32 * _1223) + 32 <= return_data.size
                idx = 0
                s = _1194 + _1206 + 32
                t = _1194 + ceil32(return_data.size) + 32
                while idx < _1223:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                if 1 >= _1223:
                    revert with 'NH{q', 50
                _1859 = mem[_1194 + ceil32(return_data.size) + 64]
                if _622 >= stor8.length:
                    revert with 'NH{q', 50
                mem[0] = 8
                require ext_code.size(stor8[_622].field_0)
                staticcall stor8[_622].field_0._callFee() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1919 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1919] == mem[_1919]
                if _1859 and mem[_1919] > -1 / _1859:
                    revert with 'NH{q', 17
                if _1859 * mem[_1919] <= stor9:
                    if _622 == -1:
                        revert with 'NH{q', 17
                    t = _622 + 1
                    u = _531 + (32 * _622) + 32
                    continue 
                if _531 + (32 * _622) + 32 == -1:
                    revert with 'NH{q', 17
                if _622 == -1:
                    revert with 'NH{q', 17
                t = _622 + 1
                u = _531 + (32 * _622) + 33
                continue 
            _532 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            if 0 >= mem[_532]:
                revert with 'NH{q', 50
            if stor8[idx].field_160:
                mem[_532 + 32] = stor2
                if 1 >= mem[_532]:
                    revert with 'NH{q', 50
                mem[_532 + 64] = stor3
                mem[_532 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_532 + 100] = _515
                mem[_532 + 132] = 64
                _623 = mem[_532]
                mem[_532 + 164] = mem[_532]
                t = 0
                u = _532 + 32
                v = _532 + 196
                while t < mem[_532]:
                    mem[v] = mem[u + 12 len 20]
                    t = t + 1
                    u = u + 32
                    v = v + 32
                    continue 
                require ext_code.size(stor4)
                staticcall stor4.mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len _532 + (32 * mem[_532]) + -mem[64] + 192]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1195 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1207 = mem[_1195]
                require mem[_1195] <= test266151307()
                require _1195 + mem[_1195] + 31 < _1195 + return_data.size
                _1224 = mem[_1195 + mem[_1195]]
                if mem[_1195 + mem[_1195]] > test266151307():
                    revert with 'NH{q', 65
                if _1195 + ceil32(return_data.size) + floor32(mem[_1195 + mem[_1195]]) + 1 > test266151307() or floor32(mem[_1195 + mem[_1195]]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = _1195 + ceil32(return_data.size) + floor32(mem[_1195 + mem[_1195]]) + 1
                mem[_1195 + ceil32(return_data.size)] = _1224
                require _1207 + (32 * _1224) + 32 <= return_data.size
                idx = 0
                s = _1195 + _1207 + 32
                t = _1195 + ceil32(return_data.size) + 32
                while idx < _1224:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                if 1 >= _1224:
                    revert with 'NH{q', 50
                _1860 = mem[_1195 + ceil32(return_data.size) + 64]
                if _623 >= stor8.length:
                    revert with 'NH{q', 50
                mem[0] = 8
                require ext_code.size(stor8[_623].field_0)
                staticcall stor8[_623].field_0._callFee() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1920 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1920] == mem[_1920]
                if _1860 and mem[_1920] > -1 / _1860:
                    revert with 'NH{q', 17
                if _1860 * mem[_1920] <= stor9:
                    if _623 == -1:
                        revert with 'NH{q', 17
                    t = _623 + 1
                    u = _532 + (32 * _623) + 32
                    continue 
                if _532 + (32 * _623) + 32 == -1:
                    revert with 'NH{q', 17
                if _623 == -1:
                    revert with 'NH{q', 17
                t = _623 + 1
                u = _532 + (32 * _623) + 33
                continue 
            mem[_532 + 32] = stor1
            if 1 >= mem[_532]:
                revert with 'NH{q', 50
            mem[_532 + 64] = stor3
            mem[_532 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[_532 + 100] = _515
            mem[_532 + 132] = 64
            _624 = mem[_532]
            mem[_532 + 164] = mem[_532]
            t = 0
            u = _532 + 32
            v = _532 + 196
            while t < mem[_532]:
                mem[v] = mem[u + 12 len 20]
                t = t + 1
                u = u + 32
                v = v + 32
                continue 
            require ext_code.size(stor4)
            staticcall stor4.mem[mem[64] len 4] with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len _532 + (32 * mem[_532]) + -mem[64] + 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1196 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1208 = mem[_1196]
            require mem[_1196] <= test266151307()
            require _1196 + mem[_1196] + 31 < _1196 + return_data.size
            _1225 = mem[_1196 + mem[_1196]]
            if mem[_1196 + mem[_1196]] > test266151307():
                revert with 'NH{q', 65
            if _1196 + ceil32(return_data.size) + floor32(mem[_1196 + mem[_1196]]) + 1 > test266151307() or floor32(mem[_1196 + mem[_1196]]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = _1196 + ceil32(return_data.size) + floor32(mem[_1196 + mem[_1196]]) + 1
            mem[_1196 + ceil32(return_data.size)] = _1225
            require _1208 + (32 * _1225) + 32 <= return_data.size
            idx = 0
            s = _1196 + _1208 + 32
            t = _1196 + ceil32(return_data.size) + 32
            while idx < _1225:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            if 1 >= _1225:
                revert with 'NH{q', 50
            _1861 = mem[_1196 + ceil32(return_data.size) + 64]
            if _624 >= stor8.length:
                revert with 'NH{q', 50
            mem[0] = 8
            require ext_code.size(stor8[_624].field_0)
            staticcall stor8[_624].field_0._callFee() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1921 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1921] == mem[_1921]
            if _1861 and mem[_1921] > -1 / _1861:
                revert with 'NH{q', 17
            if _1861 * mem[_1921] <= stor9:
                if _624 == -1:
                    revert with 'NH{q', 17
                t = _624 + 1
                u = _532 + (32 * _624) + 32
                continue 
            if _532 + (32 * _624) + 32 == -1:
                revert with 'NH{q', 17
            if _624 == -1:
                revert with 'NH{q', 17
            t = _624 + 1
            u = _532 + (32 * _624) + 33
            continue 
        _460 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _470 = mem[_460]
        require mem[_460] == mem[_460]
        if idx >= stor8.length:
            revert with 'NH{q', 50
        mem[0] = 8
        mem[mem[64] + 4] = _470
        mem[mem[64] + 36] = stor8[idx].field_0
        require ext_code.size(stor6)
        staticcall stor6.0xa279b07f with:
                gas gas_remaining wei
               args _470, stor8[idx].field_0
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _512 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _516 = mem[_512]
        require mem[_512] == mem[_512]
        if idx >= stor8.length:
            revert with 'NH{q', 50
        mem[0] = 8
        if _516 < 10^10:
            if idx >= stor8.length:
                revert with 'NH{q', 50
            mem[0] = 8
            require ext_code.size(stor8[idx].field_0)
            staticcall stor8[idx].field_0._callFee() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _542 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_542] == mem[_542]
            if False and mem[_542] > 0:
                revert with 'NH{q', 17
            if 0 <= stor9:
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = s
                continue 
            if s == -1:
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s + 1
            continue 
        if stor8[idx].field_160:
            _536 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            if 0 >= mem[_536]:
                revert with 'NH{q', 50
            if stor8[idx].field_160:
                mem[_536 + 32] = stor2
                if 1 >= mem[_536]:
                    revert with 'NH{q', 50
                mem[_536 + 64] = stor3
                mem[_536 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_536 + 100] = _516
                mem[_536 + 132] = 64
                _625 = mem[_536]
                mem[_536 + 164] = mem[_536]
                t = 0
                u = _536 + 32
                v = _536 + 196
                while t < mem[_536]:
                    mem[v] = mem[u + 12 len 20]
                    t = t + 1
                    u = u + 32
                    v = v + 32
                    continue 
                require ext_code.size(stor5)
                staticcall stor5.mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len _536 + (32 * mem[_536]) + -mem[64] + 192]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1197 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1209 = mem[_1197]
                require mem[_1197] <= test266151307()
                require _1197 + mem[_1197] + 31 < _1197 + return_data.size
                _1226 = mem[_1197 + mem[_1197]]
                if mem[_1197 + mem[_1197]] > test266151307():
                    revert with 'NH{q', 65
                if _1197 + ceil32(return_data.size) + floor32(mem[_1197 + mem[_1197]]) + 1 > test266151307() or floor32(mem[_1197 + mem[_1197]]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = _1197 + ceil32(return_data.size) + floor32(mem[_1197 + mem[_1197]]) + 1
                mem[_1197 + ceil32(return_data.size)] = _1226
                require _1209 + (32 * _1226) + 32 <= return_data.size
                idx = 0
                s = _1197 + _1209 + 32
                t = _1197 + ceil32(return_data.size) + 32
                while idx < _1226:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                if 1 >= _1226:
                    revert with 'NH{q', 50
                _1862 = mem[_1197 + ceil32(return_data.size) + 64]
                if _625 >= stor8.length:
                    revert with 'NH{q', 50
                mem[0] = 8
                require ext_code.size(stor8[_625].field_0)
                staticcall stor8[_625].field_0._callFee() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1922 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1922] == mem[_1922]
                if _1862 and mem[_1922] > -1 / _1862:
                    revert with 'NH{q', 17
                if _1862 * mem[_1922] <= stor9:
                    if _625 == -1:
                        revert with 'NH{q', 17
                    t = _625 + 1
                    u = _536 + (32 * _625) + 32
                    continue 
                if _536 + (32 * _625) + 32 == -1:
                    revert with 'NH{q', 17
                if _625 == -1:
                    revert with 'NH{q', 17
                t = _625 + 1
                u = _536 + (32 * _625) + 33
                continue 
            mem[_536 + 32] = stor1
            if 1 >= mem[_536]:
                revert with 'NH{q', 50
            mem[_536 + 64] = stor3
            mem[_536 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[_536 + 100] = _516
            mem[_536 + 132] = 64
            _626 = mem[_536]
            mem[_536 + 164] = mem[_536]
            t = 0
            u = _536 + 32
            v = _536 + 196
            while t < mem[_536]:
                mem[v] = mem[u + 12 len 20]
                t = t + 1
                u = u + 32
                v = v + 32
                continue 
            require ext_code.size(stor5)
            staticcall stor5.mem[mem[64] len 4] with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len _536 + (32 * mem[_536]) + -mem[64] + 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1198 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1210 = mem[_1198]
            require mem[_1198] <= test266151307()
            require _1198 + mem[_1198] + 31 < _1198 + return_data.size
            _1227 = mem[_1198 + mem[_1198]]
            if mem[_1198 + mem[_1198]] > test266151307():
                revert with 'NH{q', 65
            if _1198 + ceil32(return_data.size) + floor32(mem[_1198 + mem[_1198]]) + 1 > test266151307() or floor32(mem[_1198 + mem[_1198]]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = _1198 + ceil32(return_data.size) + floor32(mem[_1198 + mem[_1198]]) + 1
            mem[_1198 + ceil32(return_data.size)] = _1227
            require _1210 + (32 * _1227) + 32 <= return_data.size
            idx = 0
            s = _1198 + _1210 + 32
            t = _1198 + ceil32(return_data.size) + 32
            while idx < _1227:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            if 1 >= _1227:
                revert with 'NH{q', 50
            _1863 = mem[_1198 + ceil32(return_data.size) + 64]
            if _626 >= stor8.length:
                revert with 'NH{q', 50
            mem[0] = 8
            require ext_code.size(stor8[_626].field_0)
            staticcall stor8[_626].field_0._callFee() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1923 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1923] == mem[_1923]
            if _1863 and mem[_1923] > -1 / _1863:
                revert with 'NH{q', 17
            if _1863 * mem[_1923] <= stor9:
                if _626 == -1:
                    revert with 'NH{q', 17
                t = _626 + 1
                u = _536 + (32 * _626) + 32
                continue 
            if _536 + (32 * _626) + 32 == -1:
                revert with 'NH{q', 17
            if _626 == -1:
                revert with 'NH{q', 17
            t = _626 + 1
            u = _536 + (32 * _626) + 33
            continue 
        _537 = mem[64]
        mem[mem[64]] = 2
        mem[64] = mem[64] + 96
        if 0 >= mem[_537]:
            revert with 'NH{q', 50
        if stor8[idx].field_160:
            mem[_537 + 32] = stor2
            if 1 >= mem[_537]:
                revert with 'NH{q', 50
            mem[_537 + 64] = stor3
            mem[_537 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[_537 + 100] = _516
            mem[_537 + 132] = 64
            _627 = mem[_537]
            mem[_537 + 164] = mem[_537]
            t = 0
            u = _537 + 32
            v = _537 + 196
            while t < mem[_537]:
                mem[v] = mem[u + 12 len 20]
                t = t + 1
                u = u + 32
                v = v + 32
                continue 
            require ext_code.size(stor4)
            staticcall stor4.mem[mem[64] len 4] with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len _537 + (32 * mem[_537]) + -mem[64] + 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1199 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1211 = mem[_1199]
            require mem[_1199] <= test266151307()
            require _1199 + mem[_1199] + 31 < _1199 + return_data.size
            _1228 = mem[_1199 + mem[_1199]]
            if mem[_1199 + mem[_1199]] > test266151307():
                revert with 'NH{q', 65
            if _1199 + ceil32(return_data.size) + floor32(mem[_1199 + mem[_1199]]) + 1 > test266151307() or floor32(mem[_1199 + mem[_1199]]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = _1199 + ceil32(return_data.size) + floor32(mem[_1199 + mem[_1199]]) + 1
            mem[_1199 + ceil32(return_data.size)] = _1228
            require _1211 + (32 * _1228) + 32 <= return_data.size
            idx = 0
            s = _1199 + _1211 + 32
            t = _1199 + ceil32(return_data.size) + 32
            while idx < _1228:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            if 1 >= _1228:
                revert with 'NH{q', 50
            _1864 = mem[_1199 + ceil32(return_data.size) + 64]
            if _627 >= stor8.length:
                revert with 'NH{q', 50
            mem[0] = 8
            require ext_code.size(stor8[_627].field_0)
            staticcall stor8[_627].field_0._callFee() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1924 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1924] == mem[_1924]
            if _1864 and mem[_1924] > -1 / _1864:
                revert with 'NH{q', 17
            if _1864 * mem[_1924] <= stor9:
                if _627 == -1:
                    revert with 'NH{q', 17
                t = _627 + 1
                u = _537 + (32 * _627) + 32
                continue 
            if _537 + (32 * _627) + 32 == -1:
                revert with 'NH{q', 17
            if _627 == -1:
                revert with 'NH{q', 17
            t = _627 + 1
            u = _537 + (32 * _627) + 33
            continue 
        mem[_537 + 32] = stor1
        if 1 >= mem[_537]:
            revert with 'NH{q', 50
        mem[_537 + 64] = stor3
        mem[_537 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[_537 + 100] = _516
        mem[_537 + 132] = 64
        _628 = mem[_537]
        mem[_537 + 164] = mem[_537]
        t = 0
        u = _537 + 32
        v = _537 + 196
        while t < mem[_537]:
            mem[v] = mem[u + 12 len 20]
            t = t + 1
            u = u + 32
            v = v + 32
            continue 
        require ext_code.size(stor4)
        staticcall stor4.mem[mem[64] len 4] with:
                gas gas_remaining wei
               args mem[mem[64] + 4 len _537 + (32 * mem[_537]) + -mem[64] + 192]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1200 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _1212 = mem[_1200]
        require mem[_1200] <= test266151307()
        require _1200 + mem[_1200] + 31 < _1200 + return_data.size
        _1229 = mem[_1200 + mem[_1200]]
        if mem[_1200 + mem[_1200]] > test266151307():
            revert with 'NH{q', 65
        if _1200 + ceil32(return_data.size) + floor32(mem[_1200 + mem[_1200]]) + 1 > test266151307() or floor32(mem[_1200 + mem[_1200]]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = _1200 + ceil32(return_data.size) + floor32(mem[_1200 + mem[_1200]]) + 1
        mem[_1200 + ceil32(return_data.size)] = _1229
        require _1212 + (32 * _1229) + 32 <= return_data.size
        idx = 0
        s = _1200 + _1212 + 32
        t = _1200 + ceil32(return_data.size) + 32
        while idx < _1229:
            require mem[s] == mem[s]
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        if 1 >= _1229:
            revert with 'NH{q', 50
        _1865 = mem[_1200 + ceil32(return_data.size) + 64]
        if _628 >= stor8.length:
            revert with 'NH{q', 50
        mem[0] = 8
        require ext_code.size(stor8[_628].field_0)
        staticcall stor8[_628].field_0._callFee() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1925 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_1925] == mem[_1925]
        if _1865 and mem[_1925] > -1 / _1865:
            revert with 'NH{q', 17
        if _1865 * mem[_1925] <= stor9:
            if _628 == -1:
                revert with 'NH{q', 17
            t = _628 + 1
            u = _537 + (32 * _628) + 32
            continue 
        if _537 + (32 * _628) + 32 == -1:
            revert with 'NH{q', 17
        if _628 == -1:
            revert with 'NH{q', 17
        t = _628 + 1
        u = _537 + (32 * _628) + 33
        continue 
    if s > test266151307():
        revert with 'NH{q', 65
    _451 = mem[64]
    mem[mem[64]] = s
    mem[64] = mem[64] + (32 * s) + 32
    if not s:
        idx = 0
        s = 0
        while idx < stor8.length:
            if idx >= stor8.length:
                revert with 'NH{q', 50
            mem[0] = 8
            require ext_code.size(stor8[idx].field_0)
            staticcall stor8[idx].field_0.poolId() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if stor8[idx].field_160:
                _1201 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1213 = mem[_1201]
                require mem[_1201] == mem[_1201]
                if idx >= stor8.length:
                    revert with 'NH{q', 50
                mem[0] = 8
                mem[mem[64] + 4] = _1213
                mem[mem[64] + 36] = stor8[idx].field_0
                require ext_code.size(stor7)
                staticcall stor7.0x1778809f with:
                        gas gas_remaining wei
                       args _1213, stor8[idx].field_0
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1284 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1310 = mem[_1284]
                require mem[_1284] == mem[_1284]
                if idx >= stor8.length:
                    revert with 'NH{q', 50
                mem[0] = 8
                if _1310 < 10^10:
                    if idx >= stor8.length:
                        revert with 'NH{q', 50
                    mem[0] = 8
                    require ext_code.size(stor8[idx].field_0)
                    staticcall stor8[idx].field_0._callFee() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1348 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1348] == mem[_1348]
                    if False and mem[_1348] > 0:
                        revert with 'NH{q', 17
                    if 0 <= stor9:
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = s
                        continue 
                    _1434 = mem[64]
                    mem[64] = mem[64] + 64
                    if idx >= stor8.length:
                        revert with 'NH{q', 50
                    mem[0] = 8
                    mem[_1434] = stor8[idx].field_0
                    mem[0] = 8
                    require ext_code.size(stor8[idx].field_0)
                    staticcall stor8[idx].field_0.gasPermitido() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1460 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1460] == mem[_1460]
                    mem[_1434 + 32] = mem[_1460]
                    if s >= mem[_451]:
                        revert with 'NH{q', 50
                    mem[(32 * s) + _451 + 32] = _1434
                else:
                    if stor8[idx].field_160:
                        _1336 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        if 0 >= mem[_1336]:
                            revert with 'NH{q', 50
                        if stor8[idx].field_160:
                            mem[_1336 + 32] = stor2
                            if 1 >= mem[_1336]:
                                revert with 'NH{q', 50
                            mem[_1336 + 64] = stor3
                            mem[_1336 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[_1336 + 100] = _1310
                            mem[_1336 + 132] = 64
                            mem[_1336 + 164] = mem[_1336]
                            t = 0
                            u = _1336 + 32
                            v = _1336 + 196
                            while t < mem[_1336]:
                                mem[v] = mem[u + 12 len 20]
                                t = t + 1
                                u = u + 32
                                v = v + 32
                                continue 
                            require ext_code.size(stor5)
                            staticcall stor5.mem[mem[64] len 4] with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4 len _1336 + (32 * mem[_1336]) + -mem[64] + 192]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1850 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1868 = mem[_1850]
                            require mem[_1850] <= test266151307()
                            require _1850 + mem[_1850] + 31 < _1850 + return_data.size
                            _1908 = mem[_1850 + mem[_1850]]
                            if mem[_1850 + mem[_1850]] > test266151307():
                                revert with 'NH{q', 65
                            if _1850 + ceil32(return_data.size) + floor32(mem[_1850 + mem[_1850]]) + 1 > test266151307() or floor32(mem[_1850 + mem[_1850]]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = _1850 + ceil32(return_data.size) + floor32(mem[_1850 + mem[_1850]]) + 1
                            mem[_1850 + ceil32(return_data.size)] = _1908
                            require _1868 + (32 * _1908) + 32 <= return_data.size
                            t = 0
                            u = _1850 + _1868 + 32
                            v = _1850 + ceil32(return_data.size) + 32
                            while t < _1908:
                                require mem[u] == mem[u]
                                mem[v] = mem[u]
                                t = t + 1
                                u = u + 32
                                v = v + 32
                                continue 
                            if 1 >= _1908:
                                revert with 'NH{q', 50
                            _2350 = mem[_1850 + ceil32(return_data.size) + 64]
                            if idx >= stor8.length:
                                revert with 'NH{q', 50
                            mem[0] = 8
                            require ext_code.size(stor8[idx].field_0)
                            staticcall stor8[idx].field_0._callFee() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2387 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2387] == mem[_2387]
                            if _2350 and mem[_2387] > -1 / _2350:
                                revert with 'NH{q', 17
                            if _2350 * mem[_2387] <= stor9:
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                s = s
                                continue 
                            _2411 = mem[64]
                            mem[64] = mem[64] + 64
                            if idx >= stor8.length:
                                revert with 'NH{q', 50
                            mem[0] = 8
                            mem[_2411] = stor8[idx].field_0
                            mem[0] = 8
                            require ext_code.size(stor8[idx].field_0)
                            staticcall stor8[idx].field_0.gasPermitido() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2455 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2455] == mem[_2455]
                            mem[_2411 + 32] = mem[_2455]
                            if s >= mem[_451]:
                                revert with 'NH{q', 50
                            mem[(32 * s) + _451 + 32] = _2411
                        else:
                            mem[_1336 + 32] = stor1
                            if 1 >= mem[_1336]:
                                revert with 'NH{q', 50
                            mem[_1336 + 64] = stor3
                            mem[_1336 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[_1336 + 100] = _1310
                            mem[_1336 + 132] = 64
                            mem[_1336 + 164] = mem[_1336]
                            t = 0
                            u = _1336 + 32
                            v = _1336 + 196
                            while t < mem[_1336]:
                                mem[v] = mem[u + 12 len 20]
                                t = t + 1
                                u = u + 32
                                v = v + 32
                                continue 
                            require ext_code.size(stor5)
                            staticcall stor5.mem[mem[64] len 4] with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4 len _1336 + (32 * mem[_1336]) + -mem[64] + 192]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1851 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1869 = mem[_1851]
                            require mem[_1851] <= test266151307()
                            require _1851 + mem[_1851] + 31 < _1851 + return_data.size
                            _1909 = mem[_1851 + mem[_1851]]
                            if mem[_1851 + mem[_1851]] > test266151307():
                                revert with 'NH{q', 65
                            if _1851 + ceil32(return_data.size) + floor32(mem[_1851 + mem[_1851]]) + 1 > test266151307() or floor32(mem[_1851 + mem[_1851]]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = _1851 + ceil32(return_data.size) + floor32(mem[_1851 + mem[_1851]]) + 1
                            mem[_1851 + ceil32(return_data.size)] = _1909
                            require _1869 + (32 * _1909) + 32 <= return_data.size
                            t = 0
                            u = _1851 + _1869 + 32
                            v = _1851 + ceil32(return_data.size) + 32
                            while t < _1909:
                                require mem[u] == mem[u]
                                mem[v] = mem[u]
                                t = t + 1
                                u = u + 32
                                v = v + 32
                                continue 
                            if 1 >= _1909:
                                revert with 'NH{q', 50
                            _2351 = mem[_1851 + ceil32(return_data.size) + 64]
                            if idx >= stor8.length:
                                revert with 'NH{q', 50
                            mem[0] = 8
                            require ext_code.size(stor8[idx].field_0)
                            staticcall stor8[idx].field_0._callFee() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2388 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2388] == mem[_2388]
                            if _2351 and mem[_2388] > -1 / _2351:
                                revert with 'NH{q', 17
                            if _2351 * mem[_2388] <= stor9:
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                s = s
                                continue 
                            _2412 = mem[64]
                            mem[64] = mem[64] + 64
                            if idx >= stor8.length:
                                revert with 'NH{q', 50
                            mem[0] = 8
                            mem[_2412] = stor8[idx].field_0
                            mem[0] = 8
                            require ext_code.size(stor8[idx].field_0)
                            staticcall stor8[idx].field_0.gasPermitido() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2456 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2456] == mem[_2456]
                            mem[_2412 + 32] = mem[_2456]
                            if s >= mem[_451]:
                                revert with 'NH{q', 50
                            mem[(32 * s) + _451 + 32] = _2412
                    else:
                        _1337 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        if 0 >= mem[_1337]:
                            revert with 'NH{q', 50
                        if stor8[idx].field_160:
                            mem[_1337 + 32] = stor2
                            if 1 >= mem[_1337]:
                                revert with 'NH{q', 50
                            mem[_1337 + 64] = stor3
                            mem[_1337 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[_1337 + 100] = _1310
                            mem[_1337 + 132] = 64
                            mem[_1337 + 164] = mem[_1337]
                            t = 0
                            u = _1337 + 32
                            v = _1337 + 196
                            while t < mem[_1337]:
                                mem[v] = mem[u + 12 len 20]
                                t = t + 1
                                u = u + 32
                                v = v + 32
                                continue 
                            require ext_code.size(stor4)
                            staticcall stor4.mem[mem[64] len 4] with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4 len _1337 + (32 * mem[_1337]) + -mem[64] + 192]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1852 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1870 = mem[_1852]
                            require mem[_1852] <= test266151307()
                            require _1852 + mem[_1852] + 31 < _1852 + return_data.size
                            _1910 = mem[_1852 + mem[_1852]]
                            if mem[_1852 + mem[_1852]] > test266151307():
                                revert with 'NH{q', 65
                            if _1852 + ceil32(return_data.size) + floor32(mem[_1852 + mem[_1852]]) + 1 > test266151307() or floor32(mem[_1852 + mem[_1852]]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = _1852 + ceil32(return_data.size) + floor32(mem[_1852 + mem[_1852]]) + 1
                            mem[_1852 + ceil32(return_data.size)] = _1910
                            require _1870 + (32 * _1910) + 32 <= return_data.size
                            t = 0
                            u = _1852 + _1870 + 32
                            v = _1852 + ceil32(return_data.size) + 32
                            while t < _1910:
                                require mem[u] == mem[u]
                                mem[v] = mem[u]
                                t = t + 1
                                u = u + 32
                                v = v + 32
                                continue 
                            if 1 >= _1910:
                                revert with 'NH{q', 50
                            _2352 = mem[_1852 + ceil32(return_data.size) + 64]
                            if idx >= stor8.length:
                                revert with 'NH{q', 50
                            mem[0] = 8
                            require ext_code.size(stor8[idx].field_0)
                            staticcall stor8[idx].field_0._callFee() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2389 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2389] == mem[_2389]
                            if _2352 and mem[_2389] > -1 / _2352:
                                revert with 'NH{q', 17
                            if _2352 * mem[_2389] <= stor9:
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                s = s
                                continue 
                            _2413 = mem[64]
                            mem[64] = mem[64] + 64
                            if idx >= stor8.length:
                                revert with 'NH{q', 50
                            mem[0] = 8
                            mem[_2413] = stor8[idx].field_0
                            mem[0] = 8
                            require ext_code.size(stor8[idx].field_0)
                            staticcall stor8[idx].field_0.gasPermitido() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2457 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2457] == mem[_2457]
                            mem[_2413 + 32] = mem[_2457]
                            if s >= mem[_451]:
                                revert with 'NH{q', 50
                            mem[(32 * s) + _451 + 32] = _2413
                        else:
                            mem[_1337 + 32] = stor1
                            if 1 >= mem[_1337]:
                                revert with 'NH{q', 50
                            mem[_1337 + 64] = stor3
                            mem[_1337 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[_1337 + 100] = _1310
                            mem[_1337 + 132] = 64
                            mem[_1337 + 164] = mem[_1337]
                            t = 0
                            u = _1337 + 32
                            v = _1337 + 196
                            while t < mem[_1337]:
                                mem[v] = mem[u + 12 len 20]
                                t = t + 1
                                u = u + 32
                                v = v + 32
                                continue 
                            require ext_code.size(stor4)
                            staticcall stor4.mem[mem[64] len 4] with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4 len _1337 + (32 * mem[_1337]) + -mem[64] + 192]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1853 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1871 = mem[_1853]
                            require mem[_1853] <= test266151307()
                            require _1853 + mem[_1853] + 31 < _1853 + return_data.size
                            _1911 = mem[_1853 + mem[_1853]]
                            if mem[_1853 + mem[_1853]] > test266151307():
                                revert with 'NH{q', 65
                            if _1853 + ceil32(return_data.size) + floor32(mem[_1853 + mem[_1853]]) + 1 > test266151307() or floor32(mem[_1853 + mem[_1853]]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = _1853 + ceil32(return_data.size) + floor32(mem[_1853 + mem[_1853]]) + 1
                            mem[_1853 + ceil32(return_data.size)] = _1911
                            require _1871 + (32 * _1911) + 32 <= return_data.size
                            t = 0
                            u = _1853 + _1871 + 32
                            v = _1853 + ceil32(return_data.size) + 32
                            while t < _1911:
                                require mem[u] == mem[u]
                                mem[v] = mem[u]
                                t = t + 1
                                u = u + 32
                                v = v + 32
                                continue 
                            if 1 >= _1911:
                                revert with 'NH{q', 50
                            _2353 = mem[_1853 + ceil32(return_data.size) + 64]
                            if idx >= stor8.length:
                                revert with 'NH{q', 50
                            mem[0] = 8
                            require ext_code.size(stor8[idx].field_0)
                            staticcall stor8[idx].field_0._callFee() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2390 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2390] == mem[_2390]
                            if _2353 and mem[_2390] > -1 / _2353:
                                revert with 'NH{q', 17
                            if _2353 * mem[_2390] <= stor9:
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                s = s
                                continue 
                            _2414 = mem[64]
                            mem[64] = mem[64] + 64
                            if idx >= stor8.length:
                                revert with 'NH{q', 50
                            mem[0] = 8
                            mem[_2414] = stor8[idx].field_0
                            mem[0] = 8
                            require ext_code.size(stor8[idx].field_0)
                            staticcall stor8[idx].field_0.gasPermitido() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2458 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2458] == mem[_2458]
                            mem[_2414 + 32] = mem[_2458]
                            if s >= mem[_451]:
                                revert with 'NH{q', 50
                            mem[(32 * s) + _451 + 32] = _2414
            else:
                _1202 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1214 = mem[_1202]
                require mem[_1202] == mem[_1202]
                if idx >= stor8.length:
                    revert with 'NH{q', 50
                mem[0] = 8
                mem[mem[64] + 4] = _1214
                mem[mem[64] + 36] = stor8[idx].field_0
                require ext_code.size(stor6)
                staticcall stor6.0xa279b07f with:
                        gas gas_remaining wei
                       args _1214, stor8[idx].field_0
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1285 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1311 = mem[_1285]
                require mem[_1285] == mem[_1285]
                if idx >= stor8.length:
                    revert with 'NH{q', 50
                mem[0] = 8
                if _1311 < 10^10:
                    if idx >= stor8.length:
                        revert with 'NH{q', 50
                    mem[0] = 8
                    require ext_code.size(stor8[idx].field_0)
                    staticcall stor8[idx].field_0._callFee() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1349 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1349] == mem[_1349]
                    if False and mem[_1349] > 0:
                        revert with 'NH{q', 17
                    if 0 <= stor9:
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = s
                        continue 
                    _1439 = mem[64]
                    mem[64] = mem[64] + 64
                    if idx >= stor8.length:
                        revert with 'NH{q', 50
                    mem[0] = 8
                    mem[_1439] = stor8[idx].field_0
                    mem[0] = 8
                    require ext_code.size(stor8[idx].field_0)
                    staticcall stor8[idx].field_0.gasPermitido() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1465 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1465] == mem[_1465]
                    mem[_1439 + 32] = mem[_1465]
                    if s >= mem[_451]:
                        revert with 'NH{q', 50
                    mem[(32 * s) + _451 + 32] = _1439
                else:
                    if stor8[idx].field_160:
                        _1341 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        if 0 >= mem[_1341]:
                            revert with 'NH{q', 50
                        if stor8[idx].field_160:
                            mem[_1341 + 32] = stor2
                            if 1 >= mem[_1341]:
                                revert with 'NH{q', 50
                            mem[_1341 + 64] = stor3
                            mem[_1341 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[_1341 + 100] = _1311
                            mem[_1341 + 132] = 64
                            mem[_1341 + 164] = mem[_1341]
                            t = 0
                            u = _1341 + 32
                            v = _1341 + 196
                            while t < mem[_1341]:
                                mem[v] = mem[u + 12 len 20]
                                t = t + 1
                                u = u + 32
                                v = v + 32
                                continue 
                            require ext_code.size(stor5)
                            staticcall stor5.mem[mem[64] len 4] with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4 len _1341 + (32 * mem[_1341]) + -mem[64] + 192]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1854 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1872 = mem[_1854]
                            require mem[_1854] <= test266151307()
                            require _1854 + mem[_1854] + 31 < _1854 + return_data.size
                            _1912 = mem[_1854 + mem[_1854]]
                            if mem[_1854 + mem[_1854]] > test266151307():
                                revert with 'NH{q', 65
                            if _1854 + ceil32(return_data.size) + floor32(mem[_1854 + mem[_1854]]) + 1 > test266151307() or floor32(mem[_1854 + mem[_1854]]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = _1854 + ceil32(return_data.size) + floor32(mem[_1854 + mem[_1854]]) + 1
                            mem[_1854 + ceil32(return_data.size)] = _1912
                            require _1872 + (32 * _1912) + 32 <= return_data.size
                            t = 0
                            u = _1854 + _1872 + 32
                            v = _1854 + ceil32(return_data.size) + 32
                            while t < _1912:
                                require mem[u] == mem[u]
                                mem[v] = mem[u]
                                t = t + 1
                                u = u + 32
                                v = v + 32
                                continue 
                            if 1 >= _1912:
                                revert with 'NH{q', 50
                            _2354 = mem[_1854 + ceil32(return_data.size) + 64]
                            if idx >= stor8.length:
                                revert with 'NH{q', 50
                            mem[0] = 8
                            require ext_code.size(stor8[idx].field_0)
                            staticcall stor8[idx].field_0._callFee() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2391 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2391] == mem[_2391]
                            if _2354 and mem[_2391] > -1 / _2354:
                                revert with 'NH{q', 17
                            if _2354 * mem[_2391] <= stor9:
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                s = s
                                continue 
                            _2415 = mem[64]
                            mem[64] = mem[64] + 64
                            if idx >= stor8.length:
                                revert with 'NH{q', 50
                            mem[0] = 8
                            mem[_2415] = stor8[idx].field_0
                            mem[0] = 8
                            require ext_code.size(stor8[idx].field_0)
                            staticcall stor8[idx].field_0.gasPermitido() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2459 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2459] == mem[_2459]
                            mem[_2415 + 32] = mem[_2459]
                            if s >= mem[_451]:
                                revert with 'NH{q', 50
                            mem[(32 * s) + _451 + 32] = _2415
                        else:
                            mem[_1341 + 32] = stor1
                            if 1 >= mem[_1341]:
                                revert with 'NH{q', 50
                            mem[_1341 + 64] = stor3
                            mem[_1341 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[_1341 + 100] = _1311
                            mem[_1341 + 132] = 64
                            mem[_1341 + 164] = mem[_1341]
                            t = 0
                            u = _1341 + 32
                            v = _1341 + 196
                            while t < mem[_1341]:
                                mem[v] = mem[u + 12 len 20]
                                t = t + 1
                                u = u + 32
                                v = v + 32
                                continue 
                            require ext_code.size(stor5)
                            staticcall stor5.mem[mem[64] len 4] with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4 len _1341 + (32 * mem[_1341]) + -mem[64] + 192]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1855 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1873 = mem[_1855]
                            require mem[_1855] <= test266151307()
                            require _1855 + mem[_1855] + 31 < _1855 + return_data.size
                            _1913 = mem[_1855 + mem[_1855]]
                            if mem[_1855 + mem[_1855]] > test266151307():
                                revert with 'NH{q', 65
                            if _1855 + ceil32(return_data.size) + floor32(mem[_1855 + mem[_1855]]) + 1 > test266151307() or floor32(mem[_1855 + mem[_1855]]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = _1855 + ceil32(return_data.size) + floor32(mem[_1855 + mem[_1855]]) + 1
                            mem[_1855 + ceil32(return_data.size)] = _1913
                            require _1873 + (32 * _1913) + 32 <= return_data.size
                            t = 0
                            u = _1855 + _1873 + 32
                            v = _1855 + ceil32(return_data.size) + 32
                            while t < _1913:
                                require mem[u] == mem[u]
                                mem[v] = mem[u]
                                t = t + 1
                                u = u + 32
                                v = v + 32
                                continue 
                            if 1 >= _1913:
                                revert with 'NH{q', 50
                            _2355 = mem[_1855 + ceil32(return_data.size) + 64]
                            if idx >= stor8.length:
                                revert with 'NH{q', 50
                            mem[0] = 8
                            require ext_code.size(stor8[idx].field_0)
                            staticcall stor8[idx].field_0._callFee() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2392 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2392] == mem[_2392]
                            if _2355 and mem[_2392] > -1 / _2355:
                                revert with 'NH{q', 17
                            if _2355 * mem[_2392] <= stor9:
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                s = s
                                continue 
                            _2416 = mem[64]
                            mem[64] = mem[64] + 64
                            if idx >= stor8.length:
                                revert with 'NH{q', 50
                            mem[0] = 8
                            mem[_2416] = stor8[idx].field_0
                            mem[0] = 8
                            require ext_code.size(stor8[idx].field_0)
                            staticcall stor8[idx].field_0.gasPermitido() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2460 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2460] == mem[_2460]
                            mem[_2416 + 32] = mem[_2460]
                            if s >= mem[_451]:
                                revert with 'NH{q', 50
                            mem[(32 * s) + _451 + 32] = _2416
                    else:
                        _1342 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        if 0 >= mem[_1342]:
                            revert with 'NH{q', 50
                        if stor8[idx].field_160:
                            mem[_1342 + 32] = stor2
                            if 1 >= mem[_1342]:
                                revert with 'NH{q', 50
                            mem[_1342 + 64] = stor3
                            mem[_1342 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[_1342 + 100] = _1311
                            mem[_1342 + 132] = 64
                            mem[_1342 + 164] = mem[_1342]
                            t = 0
                            u = _1342 + 32
                            v = _1342 + 196
                            while t < mem[_1342]:
                                mem[v] = mem[u + 12 len 20]
                                t = t + 1
                                u = u + 32
                                v = v + 32
                                continue 
                            require ext_code.size(stor4)
                            staticcall stor4.mem[mem[64] len 4] with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4 len _1342 + (32 * mem[_1342]) + -mem[64] + 192]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1856 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1874 = mem[_1856]
                            require mem[_1856] <= test266151307()
                            require _1856 + mem[_1856] + 31 < _1856 + return_data.size
                            _1914 = mem[_1856 + mem[_1856]]
                            if mem[_1856 + mem[_1856]] > test266151307():
                                revert with 'NH{q', 65
                            if _1856 + ceil32(return_data.size) + floor32(mem[_1856 + mem[_1856]]) + 1 > test266151307() or floor32(mem[_1856 + mem[_1856]]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = _1856 + ceil32(return_data.size) + floor32(mem[_1856 + mem[_1856]]) + 1
                            mem[_1856 + ceil32(return_data.size)] = _1914
                            require _1874 + (32 * _1914) + 32 <= return_data.size
                            t = 0
                            u = _1856 + _1874 + 32
                            v = _1856 + ceil32(return_data.size) + 32
                            while t < _1914:
                                require mem[u] == mem[u]
                                mem[v] = mem[u]
                                t = t + 1
                                u = u + 32
                                v = v + 32
                                continue 
                            if 1 >= _1914:
                                revert with 'NH{q', 50
                            _2356 = mem[_1856 + ceil32(return_data.size) + 64]
                            if idx >= stor8.length:
                                revert with 'NH{q', 50
                            mem[0] = 8
                            require ext_code.size(stor8[idx].field_0)
                            staticcall stor8[idx].field_0._callFee() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2393 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2393] == mem[_2393]
                            if _2356 and mem[_2393] > -1 / _2356:
                                revert with 'NH{q', 17
                            if _2356 * mem[_2393] <= stor9:
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                s = s
                                continue 
                            _2417 = mem[64]
                            mem[64] = mem[64] + 64
                            if idx >= stor8.length:
                                revert with 'NH{q', 50
                            mem[0] = 8
                            mem[_2417] = stor8[idx].field_0
                            mem[0] = 8
                            require ext_code.size(stor8[idx].field_0)
                            staticcall stor8[idx].field_0.gasPermitido() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2461 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2461] == mem[_2461]
                            mem[_2417 + 32] = mem[_2461]
                            if s >= mem[_451]:
                                revert with 'NH{q', 50
                            mem[(32 * s) + _451 + 32] = _2417
                        else:
                            mem[_1342 + 32] = stor1
                            if 1 >= mem[_1342]:
                                revert with 'NH{q', 50
                            mem[_1342 + 64] = stor3
                            mem[_1342 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[_1342 + 100] = _1311
                            mem[_1342 + 132] = 64
                            mem[_1342 + 164] = mem[_1342]
                            t = 0
                            u = _1342 + 32
                            v = _1342 + 196
                            while t < mem[_1342]:
                                mem[v] = mem[u + 12 len 20]
                                t = t + 1
                                u = u + 32
                                v = v + 32
                                continue 
                            require ext_code.size(stor4)
                            staticcall stor4.mem[mem[64] len 4] with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4 len _1342 + (32 * mem[_1342]) + -mem[64] + 192]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1857 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1875 = mem[_1857]
                            require mem[_1857] <= test266151307()
                            require _1857 + mem[_1857] + 31 < _1857 + return_data.size
                            _1915 = mem[_1857 + mem[_1857]]
                            if mem[_1857 + mem[_1857]] > test266151307():
                                revert with 'NH{q', 65
                            if _1857 + ceil32(return_data.size) + floor32(mem[_1857 + mem[_1857]]) + 1 > test266151307() or floor32(mem[_1857 + mem[_1857]]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = _1857 + ceil32(return_data.size) + floor32(mem[_1857 + mem[_1857]]) + 1
                            mem[_1857 + ceil32(return_data.size)] = _1915
                            require _1875 + (32 * _1915) + 32 <= return_data.size
                            t = 0
                            u = _1857 + _1875 + 32
                            v = _1857 + ceil32(return_data.size) + 32
                            while t < _1915:
                                require mem[u] == mem[u]
                                mem[v] = mem[u]
                                t = t + 1
                                u = u + 32
                                v = v + 32
                                continue 
                            if 1 >= _1915:
                                revert with 'NH{q', 50
                            _2357 = mem[_1857 + ceil32(return_data.size) + 64]
                            if idx >= stor8.length:
                                revert with 'NH{q', 50
                            mem[0] = 8
                            require ext_code.size(stor8[idx].field_0)
                            staticcall stor8[idx].field_0._callFee() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2394 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2394] == mem[_2394]
                            if _2357 and mem[_2394] > -1 / _2357:
                                revert with 'NH{q', 17
                            if _2357 * mem[_2394] <= stor9:
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                s = s
                                continue 
                            _2418 = mem[64]
                            mem[64] = mem[64] + 64
                            if idx >= stor8.length:
                                revert with 'NH{q', 50
                            mem[0] = 8
                            mem[_2418] = stor8[idx].field_0
                            mem[0] = 8
                            require ext_code.size(stor8[idx].field_0)
                            staticcall stor8[idx].field_0.gasPermitido() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2462 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2462] == mem[_2462]
                            mem[_2418 + 32] = mem[_2462]
                            if s >= mem[_451]:
                                revert with 'NH{q', 50
                            mem[(32 * s) + _451 + 32] = _2418
            if s == -1:
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s + 1
            continue 
        _1176 = mem[64]
        mem[mem[64]] = 32
        _1192 = mem[_451]
        mem[mem[64] + 32] = mem[_451]
        idx = 0
        s = _451 + 32
        t = mem[64] + 64
        while idx < _1192:
            _1815 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = mem[_1815 + 32]
            idx = idx + 1
            s = s + 32
            t = t + 64
            continue 
        return memory
          from mem[64]
           len _1176 + (64 * _1192) + -mem[64] + 64
    mem[64] = _451 + (32 * s) + 96
    mem[_451 + (32 * s) + 32] = 0
    mem[_451 + (32 * s) + 64] = 0
    mem[var13001] = _451 + (32 * s) + 32
    t = var13001
    idx = var13002
    while idx - 1:
        mem[64] = mem[64] + 64
        mem[_451 + (32 * s) + 32] = 0
        mem[_451 + (32 * s) + 64] = 0
        mem[t + 32] = _451 + (32 * s) + 32
        t = t + 32
        idx = idx - 1
        continue 
    idx = 0
    s = 0
    while idx < stor8.length:
        if idx >= stor8.length:
            revert with 'NH{q', 50
        mem[0] = 8
        require ext_code.size(stor8[idx].field_0)
        staticcall stor8[idx].field_0.poolId() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if stor8[idx].field_160:
            _2359 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _2385 = mem[_2359]
            require mem[_2359] == mem[_2359]
            if idx >= stor8.length:
                revert with 'NH{q', 50
            mem[0] = 8
            mem[mem[64] + 4] = _2385
            mem[mem[64] + 36] = stor8[idx].field_0
            require ext_code.size(stor7)
            staticcall stor7.0x1778809f with:
                    gas gas_remaining wei
                   args _2385, stor8[idx].field_0
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2453 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _2463 = mem[_2453]
            require mem[_2453] == mem[_2453]
            if idx >= stor8.length:
                revert with 'NH{q', 50
            mem[0] = 8
            if _2463 < 10^10:
                if idx >= stor8.length:
                    revert with 'NH{q', 50
                mem[0] = 8
                require ext_code.size(stor8[idx].field_0)
                staticcall stor8[idx].field_0._callFee() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2493 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_2493] == mem[_2493]
                if False and mem[_2493] > 0:
                    revert with 'NH{q', 17
                if 0 <= stor9:
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = s
                    continue 
                _2533 = mem[64]
                mem[64] = mem[64] + 64
                if idx >= stor8.length:
                    revert with 'NH{q', 50
                mem[0] = 8
                mem[_2533] = stor8[idx].field_0
                mem[0] = 8
                require ext_code.size(stor8[idx].field_0)
                staticcall stor8[idx].field_0.gasPermitido() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2559 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_2559] == mem[_2559]
                mem[_2533 + 32] = mem[_2559]
                if s >= mem[_451]:
                    revert with 'NH{q', 50
                mem[(32 * s) + _451 + 32] = _2533
            else:
                if stor8[idx].field_160:
                    _2483 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    if 0 >= mem[_2483]:
                        revert with 'NH{q', 50
                    if stor8[idx].field_160:
                        mem[_2483 + 32] = stor2
                        if 1 >= mem[_2483]:
                            revert with 'NH{q', 50
                        mem[_2483 + 64] = stor3
                        mem[_2483 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[_2483 + 100] = _2463
                        mem[_2483 + 132] = 64
                        mem[_2483 + 164] = mem[_2483]
                        t = 0
                        u = _2483 + 32
                        v = _2483 + 196
                        while t < mem[_2483]:
                            mem[v] = mem[u + 12 len 20]
                            t = t + 1
                            u = u + 32
                            v = v + 32
                            continue 
                        require ext_code.size(stor5)
                        staticcall stor5.mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len _2483 + (32 * mem[_2483]) + -mem[64] + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2740 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2748 = mem[_2740]
                        require mem[_2740] <= test266151307()
                        require _2740 + mem[_2740] + 31 < _2740 + return_data.size
                        _2757 = mem[_2740 + mem[_2740]]
                        if mem[_2740 + mem[_2740]] > test266151307():
                            revert with 'NH{q', 65
                        if _2740 + ceil32(return_data.size) + floor32(mem[_2740 + mem[_2740]]) + 1 > test266151307() or floor32(mem[_2740 + mem[_2740]]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = _2740 + ceil32(return_data.size) + floor32(mem[_2740 + mem[_2740]]) + 1
                        mem[_2740 + ceil32(return_data.size)] = _2757
                        require _2748 + (32 * _2757) + 32 <= return_data.size
                        t = 0
                        u = _2740 + _2748 + 32
                        v = _2740 + ceil32(return_data.size) + 32
                        while t < _2757:
                            require mem[u] == mem[u]
                            mem[v] = mem[u]
                            t = t + 1
                            u = u + 32
                            v = v + 32
                            continue 
                        if 1 >= _2757:
                            revert with 'NH{q', 50
                        _2917 = mem[_2740 + ceil32(return_data.size) + 64]
                        if idx >= stor8.length:
                            revert with 'NH{q', 50
                        mem[0] = 8
                        require ext_code.size(stor8[idx].field_0)
                        staticcall stor8[idx].field_0._callFee() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2949 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2949] == mem[_2949]
                        if _2917 and mem[_2949] > -1 / _2917:
                            revert with 'NH{q', 17
                        if _2917 * mem[_2949] <= stor9:
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = s
                            continue 
                        _2965 = mem[64]
                        mem[64] = mem[64] + 64
                        if idx >= stor8.length:
                            revert with 'NH{q', 50
                        mem[0] = 8
                        mem[_2965] = stor8[idx].field_0
                        mem[0] = 8
                        require ext_code.size(stor8[idx].field_0)
                        staticcall stor8[idx].field_0.gasPermitido() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3005 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_3005] == mem[_3005]
                        mem[_2965 + 32] = mem[_3005]
                        if s >= mem[_451]:
                            revert with 'NH{q', 50
                        mem[(32 * s) + _451 + 32] = _2965
                    else:
                        mem[_2483 + 32] = stor1
                        if 1 >= mem[_2483]:
                            revert with 'NH{q', 50
                        mem[_2483 + 64] = stor3
                        mem[_2483 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[_2483 + 100] = _2463
                        mem[_2483 + 132] = 64
                        mem[_2483 + 164] = mem[_2483]
                        t = 0
                        u = _2483 + 32
                        v = _2483 + 196
                        while t < mem[_2483]:
                            mem[v] = mem[u + 12 len 20]
                            t = t + 1
                            u = u + 32
                            v = v + 32
                            continue 
                        require ext_code.size(stor5)
                        staticcall stor5.mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len _2483 + (32 * mem[_2483]) + -mem[64] + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2741 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2749 = mem[_2741]
                        require mem[_2741] <= test266151307()
                        require _2741 + mem[_2741] + 31 < _2741 + return_data.size
                        _2758 = mem[_2741 + mem[_2741]]
                        if mem[_2741 + mem[_2741]] > test266151307():
                            revert with 'NH{q', 65
                        if _2741 + ceil32(return_data.size) + floor32(mem[_2741 + mem[_2741]]) + 1 > test266151307() or floor32(mem[_2741 + mem[_2741]]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = _2741 + ceil32(return_data.size) + floor32(mem[_2741 + mem[_2741]]) + 1
                        mem[_2741 + ceil32(return_data.size)] = _2758
                        require _2749 + (32 * _2758) + 32 <= return_data.size
                        t = 0
                        u = _2741 + _2749 + 32
                        v = _2741 + ceil32(return_data.size) + 32
                        while t < _2758:
                            require mem[u] == mem[u]
                            mem[v] = mem[u]
                            t = t + 1
                            u = u + 32
                            v = v + 32
                            continue 
                        if 1 >= _2758:
                            revert with 'NH{q', 50
                        _2918 = mem[_2741 + ceil32(return_data.size) + 64]
                        if idx >= stor8.length:
                            revert with 'NH{q', 50
                        mem[0] = 8
                        require ext_code.size(stor8[idx].field_0)
                        staticcall stor8[idx].field_0._callFee() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2950 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2950] == mem[_2950]
                        if _2918 and mem[_2950] > -1 / _2918:
                            revert with 'NH{q', 17
                        if _2918 * mem[_2950] <= stor9:
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = s
                            continue 
                        _2966 = mem[64]
                        mem[64] = mem[64] + 64
                        if idx >= stor8.length:
                            revert with 'NH{q', 50
                        mem[0] = 8
                        mem[_2966] = stor8[idx].field_0
                        mem[0] = 8
                        require ext_code.size(stor8[idx].field_0)
                        staticcall stor8[idx].field_0.gasPermitido() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3006 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_3006] == mem[_3006]
                        mem[_2966 + 32] = mem[_3006]
                        if s >= mem[_451]:
                            revert with 'NH{q', 50
                        mem[(32 * s) + _451 + 32] = _2966
                else:
                    _2484 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    if 0 >= mem[_2484]:
                        revert with 'NH{q', 50
                    if stor8[idx].field_160:
                        mem[_2484 + 32] = stor2
                        if 1 >= mem[_2484]:
                            revert with 'NH{q', 50
                        mem[_2484 + 64] = stor3
                        mem[_2484 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[_2484 + 100] = _2463
                        mem[_2484 + 132] = 64
                        mem[_2484 + 164] = mem[_2484]
                        t = 0
                        u = _2484 + 32
                        v = _2484 + 196
                        while t < mem[_2484]:
                            mem[v] = mem[u + 12 len 20]
                            t = t + 1
                            u = u + 32
                            v = v + 32
                            continue 
                        require ext_code.size(stor4)
                        staticcall stor4.mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len _2484 + (32 * mem[_2484]) + -mem[64] + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2742 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2750 = mem[_2742]
                        require mem[_2742] <= test266151307()
                        require _2742 + mem[_2742] + 31 < _2742 + return_data.size
                        _2759 = mem[_2742 + mem[_2742]]
                        if mem[_2742 + mem[_2742]] > test266151307():
                            revert with 'NH{q', 65
                        if _2742 + ceil32(return_data.size) + floor32(mem[_2742 + mem[_2742]]) + 1 > test266151307() or floor32(mem[_2742 + mem[_2742]]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = _2742 + ceil32(return_data.size) + floor32(mem[_2742 + mem[_2742]]) + 1
                        mem[_2742 + ceil32(return_data.size)] = _2759
                        require _2750 + (32 * _2759) + 32 <= return_data.size
                        t = 0
                        u = _2742 + _2750 + 32
                        v = _2742 + ceil32(return_data.size) + 32
                        while t < _2759:
                            require mem[u] == mem[u]
                            mem[v] = mem[u]
                            t = t + 1
                            u = u + 32
                            v = v + 32
                            continue 
                        if 1 >= _2759:
                            revert with 'NH{q', 50
                        _2919 = mem[_2742 + ceil32(return_data.size) + 64]
                        if idx >= stor8.length:
                            revert with 'NH{q', 50
                        mem[0] = 8
                        require ext_code.size(stor8[idx].field_0)
                        staticcall stor8[idx].field_0._callFee() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2951 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2951] == mem[_2951]
                        if _2919 and mem[_2951] > -1 / _2919:
                            revert with 'NH{q', 17
                        if _2919 * mem[_2951] <= stor9:
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = s
                            continue 
                        _2967 = mem[64]
                        mem[64] = mem[64] + 64
                        if idx >= stor8.length:
                            revert with 'NH{q', 50
                        mem[0] = 8
                        mem[_2967] = stor8[idx].field_0
                        mem[0] = 8
                        require ext_code.size(stor8[idx].field_0)
                        staticcall stor8[idx].field_0.gasPermitido() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3007 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_3007] == mem[_3007]
                        mem[_2967 + 32] = mem[_3007]
                        if s >= mem[_451]:
                            revert with 'NH{q', 50
                        mem[(32 * s) + _451 + 32] = _2967
                    else:
                        mem[_2484 + 32] = stor1
                        if 1 >= mem[_2484]:
                            revert with 'NH{q', 50
                        mem[_2484 + 64] = stor3
                        mem[_2484 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[_2484 + 100] = _2463
                        mem[_2484 + 132] = 64
                        mem[_2484 + 164] = mem[_2484]
                        t = 0
                        u = _2484 + 32
                        v = _2484 + 196
                        while t < mem[_2484]:
                            mem[v] = mem[u + 12 len 20]
                            t = t + 1
                            u = u + 32
                            v = v + 32
                            continue 
                        require ext_code.size(stor4)
                        staticcall stor4.mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len _2484 + (32 * mem[_2484]) + -mem[64] + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2743 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2751 = mem[_2743]
                        require mem[_2743] <= test266151307()
                        require _2743 + mem[_2743] + 31 < _2743 + return_data.size
                        _2760 = mem[_2743 + mem[_2743]]
                        if mem[_2743 + mem[_2743]] > test266151307():
                            revert with 'NH{q', 65
                        if _2743 + ceil32(return_data.size) + floor32(mem[_2743 + mem[_2743]]) + 1 > test266151307() or floor32(mem[_2743 + mem[_2743]]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = _2743 + ceil32(return_data.size) + floor32(mem[_2743 + mem[_2743]]) + 1
                        mem[_2743 + ceil32(return_data.size)] = _2760
                        require _2751 + (32 * _2760) + 32 <= return_data.size
                        t = 0
                        u = _2743 + _2751 + 32
                        v = _2743 + ceil32(return_data.size) + 32
                        while t < _2760:
                            require mem[u] == mem[u]
                            mem[v] = mem[u]
                            t = t + 1
                            u = u + 32
                            v = v + 32
                            continue 
                        if 1 >= _2760:
                            revert with 'NH{q', 50
                        _2920 = mem[_2743 + ceil32(return_data.size) + 64]
                        if idx >= stor8.length:
                            revert with 'NH{q', 50
                        mem[0] = 8
                        require ext_code.size(stor8[idx].field_0)
                        staticcall stor8[idx].field_0._callFee() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2952 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2952] == mem[_2952]
                        if _2920 and mem[_2952] > -1 / _2920:
                            revert with 'NH{q', 17
                        if _2920 * mem[_2952] <= stor9:
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = s
                            continue 
                        _2968 = mem[64]
                        mem[64] = mem[64] + 64
                        if idx >= stor8.length:
                            revert with 'NH{q', 50
                        mem[0] = 8
                        mem[_2968] = stor8[idx].field_0
                        mem[0] = 8
                        require ext_code.size(stor8[idx].field_0)
                        staticcall stor8[idx].field_0.gasPermitido() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3008 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_3008] == mem[_3008]
                        mem[_2968 + 32] = mem[_3008]
                        if s >= mem[_451]:
                            revert with 'NH{q', 50
                        mem[(32 * s) + _451 + 32] = _2968
        else:
            _2360 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _2386 = mem[_2360]
            require mem[_2360] == mem[_2360]
            if idx >= stor8.length:
                revert with 'NH{q', 50
            mem[0] = 8
            mem[mem[64] + 4] = _2386
            mem[mem[64] + 36] = stor8[idx].field_0
            require ext_code.size(stor6)
            staticcall stor6.0xa279b07f with:
                    gas gas_remaining wei
                   args _2386, stor8[idx].field_0
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2454 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _2464 = mem[_2454]
            require mem[_2454] == mem[_2454]
            if idx >= stor8.length:
                revert with 'NH{q', 50
            mem[0] = 8
            if _2464 < 10^10:
                if idx >= stor8.length:
                    revert with 'NH{q', 50
                mem[0] = 8
                require ext_code.size(stor8[idx].field_0)
                staticcall stor8[idx].field_0._callFee() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2494 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_2494] == mem[_2494]
                if False and mem[_2494] > 0:
                    revert with 'NH{q', 17
                if 0 <= stor9:
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = s
                    continue 
                _2538 = mem[64]
                mem[64] = mem[64] + 64
                if idx >= stor8.length:
                    revert with 'NH{q', 50
                mem[0] = 8
                mem[_2538] = stor8[idx].field_0
                mem[0] = 8
                require ext_code.size(stor8[idx].field_0)
                staticcall stor8[idx].field_0.gasPermitido() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2564 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_2564] == mem[_2564]
                mem[_2538 + 32] = mem[_2564]
                if s >= mem[_451]:
                    revert with 'NH{q', 50
                mem[(32 * s) + _451 + 32] = _2538
            else:
                if stor8[idx].field_160:
                    _2488 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    if 0 >= mem[_2488]:
                        revert with 'NH{q', 50
                    if stor8[idx].field_160:
                        mem[_2488 + 32] = stor2
                        if 1 >= mem[_2488]:
                            revert with 'NH{q', 50
                        mem[_2488 + 64] = stor3
                        mem[_2488 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[_2488 + 100] = _2464
                        mem[_2488 + 132] = 64
                        mem[_2488 + 164] = mem[_2488]
                        t = 0
                        u = _2488 + 32
                        v = _2488 + 196
                        while t < mem[_2488]:
                            mem[v] = mem[u + 12 len 20]
                            t = t + 1
                            u = u + 32
                            v = v + 32
                            continue 
                        require ext_code.size(stor5)
                        staticcall stor5.mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len _2488 + (32 * mem[_2488]) + -mem[64] + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2744 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2752 = mem[_2744]
                        require mem[_2744] <= test266151307()
                        require _2744 + mem[_2744] + 31 < _2744 + return_data.size
                        _2761 = mem[_2744 + mem[_2744]]
                        if mem[_2744 + mem[_2744]] > test266151307():
                            revert with 'NH{q', 65
                        if _2744 + ceil32(return_data.size) + floor32(mem[_2744 + mem[_2744]]) + 1 > test266151307() or floor32(mem[_2744 + mem[_2744]]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = _2744 + ceil32(return_data.size) + floor32(mem[_2744 + mem[_2744]]) + 1
                        mem[_2744 + ceil32(return_data.size)] = _2761
                        require _2752 + (32 * _2761) + 32 <= return_data.size
                        t = 0
                        u = _2744 + _2752 + 32
                        v = _2744 + ceil32(return_data.size) + 32
                        while t < _2761:
                            require mem[u] == mem[u]
                            mem[v] = mem[u]
                            t = t + 1
                            u = u + 32
                            v = v + 32
                            continue 
                        if 1 >= _2761:
                            revert with 'NH{q', 50
                        _2921 = mem[_2744 + ceil32(return_data.size) + 64]
                        if idx >= stor8.length:
                            revert with 'NH{q', 50
                        mem[0] = 8
                        require ext_code.size(stor8[idx].field_0)
                        staticcall stor8[idx].field_0._callFee() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2953 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2953] == mem[_2953]
                        if _2921 and mem[_2953] > -1 / _2921:
                            revert with 'NH{q', 17
                        if _2921 * mem[_2953] <= stor9:
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = s
                            continue 
                        _2969 = mem[64]
                        mem[64] = mem[64] + 64
                        if idx >= stor8.length:
                            revert with 'NH{q', 50
                        mem[0] = 8
                        mem[_2969] = stor8[idx].field_0
                        mem[0] = 8
                        require ext_code.size(stor8[idx].field_0)
                        staticcall stor8[idx].field_0.gasPermitido() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3009 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_3009] == mem[_3009]
                        mem[_2969 + 32] = mem[_3009]
                        if s >= mem[_451]:
                            revert with 'NH{q', 50
                        mem[(32 * s) + _451 + 32] = _2969
                    else:
                        mem[_2488 + 32] = stor1
                        if 1 >= mem[_2488]:
                            revert with 'NH{q', 50
                        mem[_2488 + 64] = stor3
                        mem[_2488 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[_2488 + 100] = _2464
                        mem[_2488 + 132] = 64
                        mem[_2488 + 164] = mem[_2488]
                        t = 0
                        u = _2488 + 32
                        v = _2488 + 196
                        while t < mem[_2488]:
                            mem[v] = mem[u + 12 len 20]
                            t = t + 1
                            u = u + 32
                            v = v + 32
                            continue 
                        require ext_code.size(stor5)
                        staticcall stor5.mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len _2488 + (32 * mem[_2488]) + -mem[64] + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2745 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2753 = mem[_2745]
                        require mem[_2745] <= test266151307()
                        require _2745 + mem[_2745] + 31 < _2745 + return_data.size
                        _2762 = mem[_2745 + mem[_2745]]
                        if mem[_2745 + mem[_2745]] > test266151307():
                            revert with 'NH{q', 65
                        if _2745 + ceil32(return_data.size) + floor32(mem[_2745 + mem[_2745]]) + 1 > test266151307() or floor32(mem[_2745 + mem[_2745]]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = _2745 + ceil32(return_data.size) + floor32(mem[_2745 + mem[_2745]]) + 1
                        mem[_2745 + ceil32(return_data.size)] = _2762
                        require _2753 + (32 * _2762) + 32 <= return_data.size
                        t = 0
                        u = _2745 + _2753 + 32
                        v = _2745 + ceil32(return_data.size) + 32
                        while t < _2762:
                            require mem[u] == mem[u]
                            mem[v] = mem[u]
                            t = t + 1
                            u = u + 32
                            v = v + 32
                            continue 
                        if 1 >= _2762:
                            revert with 'NH{q', 50
                        _2922 = mem[_2745 + ceil32(return_data.size) + 64]
                        if idx >= stor8.length:
                            revert with 'NH{q', 50
                        mem[0] = 8
                        require ext_code.size(stor8[idx].field_0)
                        staticcall stor8[idx].field_0._callFee() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2954 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2954] == mem[_2954]
                        if _2922 and mem[_2954] > -1 / _2922:
                            revert with 'NH{q', 17
                        if _2922 * mem[_2954] <= stor9:
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = s
                            continue 
                        _2970 = mem[64]
                        mem[64] = mem[64] + 64
                        if idx >= stor8.length:
                            revert with 'NH{q', 50
                        mem[0] = 8
                        mem[_2970] = stor8[idx].field_0
                        mem[0] = 8
                        require ext_code.size(stor8[idx].field_0)
                        staticcall stor8[idx].field_0.gasPermitido() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3010 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_3010] == mem[_3010]
                        mem[_2970 + 32] = mem[_3010]
                        if s >= mem[_451]:
                            revert with 'NH{q', 50
                        mem[(32 * s) + _451 + 32] = _2970
                else:
                    _2489 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    if 0 >= mem[_2489]:
                        revert with 'NH{q', 50
                    if stor8[idx].field_160:
                        mem[_2489 + 32] = stor2
                        if 1 >= mem[_2489]:
                            revert with 'NH{q', 50
                        mem[_2489 + 64] = stor3
                        mem[_2489 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[_2489 + 100] = _2464
                        mem[_2489 + 132] = 64
                        mem[_2489 + 164] = mem[_2489]
                        t = 0
                        u = _2489 + 32
                        v = _2489 + 196
                        while t < mem[_2489]:
                            mem[v] = mem[u + 12 len 20]
                            t = t + 1
                            u = u + 32
                            v = v + 32
                            continue 
                        require ext_code.size(stor4)
                        staticcall stor4.mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len _2489 + (32 * mem[_2489]) + -mem[64] + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2746 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2754 = mem[_2746]
                        require mem[_2746] <= test266151307()
                        require _2746 + mem[_2746] + 31 < _2746 + return_data.size
                        _2763 = mem[_2746 + mem[_2746]]
                        if mem[_2746 + mem[_2746]] > test266151307():
                            revert with 'NH{q', 65
                        if _2746 + ceil32(return_data.size) + floor32(mem[_2746 + mem[_2746]]) + 1 > test266151307() or floor32(mem[_2746 + mem[_2746]]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = _2746 + ceil32(return_data.size) + floor32(mem[_2746 + mem[_2746]]) + 1
                        mem[_2746 + ceil32(return_data.size)] = _2763
                        require _2754 + (32 * _2763) + 32 <= return_data.size
                        t = 0
                        u = _2746 + _2754 + 32
                        v = _2746 + ceil32(return_data.size) + 32
                        while t < _2763:
                            require mem[u] == mem[u]
                            mem[v] = mem[u]
                            t = t + 1
                            u = u + 32
                            v = v + 32
                            continue 
                        if 1 >= _2763:
                            revert with 'NH{q', 50
                        _2923 = mem[_2746 + ceil32(return_data.size) + 64]
                        if idx >= stor8.length:
                            revert with 'NH{q', 50
                        mem[0] = 8
                        require ext_code.size(stor8[idx].field_0)
                        staticcall stor8[idx].field_0._callFee() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2955 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2955] == mem[_2955]
                        if _2923 and mem[_2955] > -1 / _2923:
                            revert with 'NH{q', 17
                        if _2923 * mem[_2955] <= stor9:
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = s
                            continue 
                        _2971 = mem[64]
                        mem[64] = mem[64] + 64
                        if idx >= stor8.length:
                            revert with 'NH{q', 50
                        mem[0] = 8
                        mem[_2971] = stor8[idx].field_0
                        mem[0] = 8
                        require ext_code.size(stor8[idx].field_0)
                        staticcall stor8[idx].field_0.gasPermitido() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3011 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_3011] == mem[_3011]
                        mem[_2971 + 32] = mem[_3011]
                        if s >= mem[_451]:
                            revert with 'NH{q', 50
                        mem[(32 * s) + _451 + 32] = _2971
                    else:
                        mem[_2489 + 32] = stor1
                        if 1 >= mem[_2489]:
                            revert with 'NH{q', 50
                        mem[_2489 + 64] = stor3
                        mem[_2489 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[_2489 + 100] = _2464
                        mem[_2489 + 132] = 64
                        mem[_2489 + 164] = mem[_2489]
                        t = 0
                        u = _2489 + 32
                        v = _2489 + 196
                        while t < mem[_2489]:
                            mem[v] = mem[u + 12 len 20]
                            t = t + 1
                            u = u + 32
                            v = v + 32
                            continue 
                        require ext_code.size(stor4)
                        staticcall stor4.mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len _2489 + (32 * mem[_2489]) + -mem[64] + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2747 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2755 = mem[_2747]
                        require mem[_2747] <= test266151307()
                        require _2747 + mem[_2747] + 31 < _2747 + return_data.size
                        _2764 = mem[_2747 + mem[_2747]]
                        if mem[_2747 + mem[_2747]] > test266151307():
                            revert with 'NH{q', 65
                        if _2747 + ceil32(return_data.size) + floor32(mem[_2747 + mem[_2747]]) + 1 > test266151307() or floor32(mem[_2747 + mem[_2747]]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = _2747 + ceil32(return_data.size) + floor32(mem[_2747 + mem[_2747]]) + 1
                        mem[_2747 + ceil32(return_data.size)] = _2764
                        require _2755 + (32 * _2764) + 32 <= return_data.size
                        t = 0
                        u = _2747 + _2755 + 32
                        v = _2747 + ceil32(return_data.size) + 32
                        while t < _2764:
                            require mem[u] == mem[u]
                            mem[v] = mem[u]
                            t = t + 1
                            u = u + 32
                            v = v + 32
                            continue 
                        if 1 >= _2764:
                            revert with 'NH{q', 50
                        _2924 = mem[_2747 + ceil32(return_data.size) + 64]
                        if idx >= stor8.length:
                            revert with 'NH{q', 50
                        mem[0] = 8
                        require ext_code.size(stor8[idx].field_0)
                        staticcall stor8[idx].field_0._callFee() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2956 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2956] == mem[_2956]
                        if _2924 and mem[_2956] > -1 / _2924:
                            revert with 'NH{q', 17
                        if _2924 * mem[_2956] <= stor9:
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = s
                            continue 
                        _2972 = mem[64]
                        mem[64] = mem[64] + 64
                        if idx >= stor8.length:
                            revert with 'NH{q', 50
                        mem[0] = 8
                        mem[_2972] = stor8[idx].field_0
                        mem[0] = 8
                        require ext_code.size(stor8[idx].field_0)
                        staticcall stor8[idx].field_0.gasPermitido() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3012 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_3012] == mem[_3012]
                        mem[_2972 + 32] = mem[_3012]
                        if s >= mem[_451]:
                            revert with 'NH{q', 50
                        mem[(32 * s) + _451 + 32] = _2972
        if s == -1:
            revert with 'NH{q', 17
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = s + 1
        continue 
    _2334 = mem[64]
    mem[mem[64]] = 32
    _2358 = mem[_451]
    mem[mem[64] + 32] = mem[_451]
    idx = 0
    s = _451 + 32
    t = mem[64] + 64
    while idx < _2358:
        _2721 = mem[s]
        mem[t] = mem[mem[s] + 12 len 20]
        mem[t + 32] = mem[_2721 + 32]
        idx = idx + 1
        s = s + 32
        t = t + 64
        continue 
    return memory
      from mem[64]
       len _2334 + (64 * _2358) + -mem[64] + 64
}



}
