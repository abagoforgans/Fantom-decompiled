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
            _75 = mem[192 len 4], Mask(224, 32, arg1) >> 32
            require mem[192 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
            require mem[192 len 4], Mask(224, 32, arg1) >> 32 + 223 < return_data.size + 192
            _79 = mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]
            if mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192] > test266151307():
                revert with 'NH{q', 65
            if ceil32(return_data.size) + floor32(mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 193 > test266151307() or floor32(mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = ceil32(return_data.size) + floor32(mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 193
            mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]
            require _75 + (32 * _79) + 32 <= return_data.size
            idx = 0
            s = _75 + 224
            t = ceil32(return_data.size) + 224
            while idx < _79:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            if 1 >= _79:
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
            _76 = mem[192 len 4], Mask(224, 32, arg1) >> 32
            require mem[192 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
            require mem[192 len 4], Mask(224, 32, arg1) >> 32 + 223 < return_data.size + 192
            _80 = mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]
            if mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192] > test266151307():
                revert with 'NH{q', 65
            if ceil32(return_data.size) + floor32(mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 193 > test266151307() or floor32(mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = ceil32(return_data.size) + floor32(mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 193
            mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]
            require _76 + (32 * _80) + 32 <= return_data.size
            idx = 0
            s = _76 + 224
            t = ceil32(return_data.size) + 224
            while idx < _80:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            if 1 >= _80:
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
            require ext_code.size(stor4)
            staticcall stor4.getAmountsOut(uint256 rg1, address[] rg2) with:
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
            _182 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _185 = mem[_182]
            require mem[_182] == mem[_182]
            if idx >= stor8.length:
                revert with 'NH{q', 50
            mem[0] = 8
            mem[mem[64] + 4] = _185
            mem[mem[64] + 36] = stor8[idx].field_0
            require ext_code.size(stor7)
            staticcall stor7.0x1778809f with:
                    gas gas_remaining wei
                   args _185, stor8[idx].field_0
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _193 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _195 = mem[_193]
            require mem[_193] == mem[_193]
            if idx >= stor8.length:
                revert with 'NH{q', 50
            mem[0] = 8
            if stor8[idx].field_160:
                _199 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                if 0 >= mem[_199]:
                    revert with 'NH{q', 50
                if stor8[idx].field_160:
                    mem[_199 + 32] = stor2
                    if 1 >= mem[_199]:
                        revert with 'NH{q', 50
                    mem[_199 + 64] = stor3
                    mem[_199 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_199 + 100] = _195
                    mem[_199 + 132] = 64
                    mem[_199 + 164] = mem[_199]
                    t = 0
                    u = _199 + 32
                    v = _199 + 196
                    while t < mem[_199]:
                        mem[v] = mem[u + 12 len 20]
                        t = t + 1
                        u = u + 32
                        v = v + 32
                        continue 
                    require ext_code.size(stor5)
                    staticcall stor5.mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _199 + (32 * mem[_199]) + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _363 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _371 = mem[_363]
                    require mem[_363] <= test266151307()
                    require _363 + mem[_363] + 31 < _363 + return_data.size
                    _379 = mem[_363 + mem[_363]]
                    if mem[_363 + mem[_363]] > test266151307():
                        revert with 'NH{q', 65
                    if _363 + ceil32(return_data.size) + floor32(mem[_363 + mem[_363]]) + 1 > test266151307() or floor32(mem[_363 + mem[_363]]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _363 + ceil32(return_data.size) + floor32(mem[_363 + mem[_363]]) + 1
                    mem[_363 + ceil32(return_data.size)] = _379
                    require _371 + (32 * _379) + 32 <= return_data.size
                    t = 0
                    u = _363 + _371 + 32
                    v = _363 + ceil32(return_data.size) + 32
                    while t < _379:
                        require mem[u] == mem[u]
                        mem[v] = mem[u]
                        t = t + 1
                        u = u + 32
                        v = v + 32
                        continue 
                    if 1 >= _379:
                        revert with 'NH{q', 50
                    _475 = mem[_363 + ceil32(return_data.size) + 64]
                    if idx >= stor8.length:
                        revert with 'NH{q', 50
                    mem[0] = 8
                    require ext_code.size(stor8[idx].field_0)
                    staticcall stor8[idx].field_0._callFee() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _507 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_507] == mem[_507]
                    if _475 and mem[_507] > -1 / _475:
                        revert with 'NH{q', 17
                    if _475 * mem[_507] <= stor9:
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = s
                        continue 
                else:
                    mem[_199 + 32] = stor1
                    if 1 >= mem[_199]:
                        revert with 'NH{q', 50
                    mem[_199 + 64] = stor3
                    mem[_199 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_199 + 100] = _195
                    mem[_199 + 132] = 64
                    mem[_199 + 164] = mem[_199]
                    t = 0
                    u = _199 + 32
                    v = _199 + 196
                    while t < mem[_199]:
                        mem[v] = mem[u + 12 len 20]
                        t = t + 1
                        u = u + 32
                        v = v + 32
                        continue 
                    require ext_code.size(stor5)
                    staticcall stor5.mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _199 + (32 * mem[_199]) + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _364 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _372 = mem[_364]
                    require mem[_364] <= test266151307()
                    require _364 + mem[_364] + 31 < _364 + return_data.size
                    _380 = mem[_364 + mem[_364]]
                    if mem[_364 + mem[_364]] > test266151307():
                        revert with 'NH{q', 65
                    if _364 + ceil32(return_data.size) + floor32(mem[_364 + mem[_364]]) + 1 > test266151307() or floor32(mem[_364 + mem[_364]]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _364 + ceil32(return_data.size) + floor32(mem[_364 + mem[_364]]) + 1
                    mem[_364 + ceil32(return_data.size)] = _380
                    require _372 + (32 * _380) + 32 <= return_data.size
                    t = 0
                    u = _364 + _372 + 32
                    v = _364 + ceil32(return_data.size) + 32
                    while t < _380:
                        require mem[u] == mem[u]
                        mem[v] = mem[u]
                        t = t + 1
                        u = u + 32
                        v = v + 32
                        continue 
                    if 1 >= _380:
                        revert with 'NH{q', 50
                    _476 = mem[_364 + ceil32(return_data.size) + 64]
                    if idx >= stor8.length:
                        revert with 'NH{q', 50
                    mem[0] = 8
                    require ext_code.size(stor8[idx].field_0)
                    staticcall stor8[idx].field_0._callFee() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _508 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_508] == mem[_508]
                    if _476 and mem[_508] > -1 / _476:
                        revert with 'NH{q', 17
                    if _476 * mem[_508] <= stor9:
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = s
                        continue 
            else:
                _200 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                if 0 >= mem[_200]:
                    revert with 'NH{q', 50
                if stor8[idx].field_160:
                    mem[_200 + 32] = stor2
                    if 1 >= mem[_200]:
                        revert with 'NH{q', 50
                    mem[_200 + 64] = stor3
                    mem[_200 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_200 + 100] = _195
                    mem[_200 + 132] = 64
                    mem[_200 + 164] = mem[_200]
                    t = 0
                    u = _200 + 32
                    v = _200 + 196
                    while t < mem[_200]:
                        mem[v] = mem[u + 12 len 20]
                        t = t + 1
                        u = u + 32
                        v = v + 32
                        continue 
                    require ext_code.size(stor4)
                    staticcall stor4.mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _200 + (32 * mem[_200]) + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _365 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _373 = mem[_365]
                    require mem[_365] <= test266151307()
                    require _365 + mem[_365] + 31 < _365 + return_data.size
                    _381 = mem[_365 + mem[_365]]
                    if mem[_365 + mem[_365]] > test266151307():
                        revert with 'NH{q', 65
                    if _365 + ceil32(return_data.size) + floor32(mem[_365 + mem[_365]]) + 1 > test266151307() or floor32(mem[_365 + mem[_365]]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _365 + ceil32(return_data.size) + floor32(mem[_365 + mem[_365]]) + 1
                    mem[_365 + ceil32(return_data.size)] = _381
                    require _373 + (32 * _381) + 32 <= return_data.size
                    t = 0
                    u = _365 + _373 + 32
                    v = _365 + ceil32(return_data.size) + 32
                    while t < _381:
                        require mem[u] == mem[u]
                        mem[v] = mem[u]
                        t = t + 1
                        u = u + 32
                        v = v + 32
                        continue 
                    if 1 >= _381:
                        revert with 'NH{q', 50
                    _477 = mem[_365 + ceil32(return_data.size) + 64]
                    if idx >= stor8.length:
                        revert with 'NH{q', 50
                    mem[0] = 8
                    require ext_code.size(stor8[idx].field_0)
                    staticcall stor8[idx].field_0._callFee() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _509 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_509] == mem[_509]
                    if _477 and mem[_509] > -1 / _477:
                        revert with 'NH{q', 17
                    if _477 * mem[_509] <= stor9:
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = s
                        continue 
                else:
                    mem[_200 + 32] = stor1
                    if 1 >= mem[_200]:
                        revert with 'NH{q', 50
                    mem[_200 + 64] = stor3
                    mem[_200 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_200 + 100] = _195
                    mem[_200 + 132] = 64
                    mem[_200 + 164] = mem[_200]
                    t = 0
                    u = _200 + 32
                    v = _200 + 196
                    while t < mem[_200]:
                        mem[v] = mem[u + 12 len 20]
                        t = t + 1
                        u = u + 32
                        v = v + 32
                        continue 
                    require ext_code.size(stor4)
                    staticcall stor4.mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _200 + (32 * mem[_200]) + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _366 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _374 = mem[_366]
                    require mem[_366] <= test266151307()
                    require _366 + mem[_366] + 31 < _366 + return_data.size
                    _382 = mem[_366 + mem[_366]]
                    if mem[_366 + mem[_366]] > test266151307():
                        revert with 'NH{q', 65
                    if _366 + ceil32(return_data.size) + floor32(mem[_366 + mem[_366]]) + 1 > test266151307() or floor32(mem[_366 + mem[_366]]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _366 + ceil32(return_data.size) + floor32(mem[_366 + mem[_366]]) + 1
                    mem[_366 + ceil32(return_data.size)] = _382
                    require _374 + (32 * _382) + 32 <= return_data.size
                    t = 0
                    u = _366 + _374 + 32
                    v = _366 + ceil32(return_data.size) + 32
                    while t < _382:
                        require mem[u] == mem[u]
                        mem[v] = mem[u]
                        t = t + 1
                        u = u + 32
                        v = v + 32
                        continue 
                    if 1 >= _382:
                        revert with 'NH{q', 50
                    _478 = mem[_366 + ceil32(return_data.size) + 64]
                    if idx >= stor8.length:
                        revert with 'NH{q', 50
                    mem[0] = 8
                    require ext_code.size(stor8[idx].field_0)
                    staticcall stor8[idx].field_0._callFee() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _510 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_510] == mem[_510]
                    if _478 and mem[_510] > -1 / _478:
                        revert with 'NH{q', 17
                    if _478 * mem[_510] <= stor9:
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = s
                        continue 
        else:
            _183 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _186 = mem[_183]
            require mem[_183] == mem[_183]
            if idx >= stor8.length:
                revert with 'NH{q', 50
            mem[0] = 8
            mem[mem[64] + 4] = _186
            mem[mem[64] + 36] = stor8[idx].field_0
            require ext_code.size(stor6)
            staticcall stor6.0xa279b07f with:
                    gas gas_remaining wei
                   args _186, stor8[idx].field_0
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _194 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _196 = mem[_194]
            require mem[_194] == mem[_194]
            if idx >= stor8.length:
                revert with 'NH{q', 50
            mem[0] = 8
            if stor8[idx].field_160:
                _201 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                if 0 >= mem[_201]:
                    revert with 'NH{q', 50
                if stor8[idx].field_160:
                    mem[_201 + 32] = stor2
                    if 1 >= mem[_201]:
                        revert with 'NH{q', 50
                    mem[_201 + 64] = stor3
                    mem[_201 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_201 + 100] = _196
                    mem[_201 + 132] = 64
                    mem[_201 + 164] = mem[_201]
                    t = 0
                    u = _201 + 32
                    v = _201 + 196
                    while t < mem[_201]:
                        mem[v] = mem[u + 12 len 20]
                        t = t + 1
                        u = u + 32
                        v = v + 32
                        continue 
                    require ext_code.size(stor5)
                    staticcall stor5.mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _201 + (32 * mem[_201]) + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _367 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _375 = mem[_367]
                    require mem[_367] <= test266151307()
                    require _367 + mem[_367] + 31 < _367 + return_data.size
                    _383 = mem[_367 + mem[_367]]
                    if mem[_367 + mem[_367]] > test266151307():
                        revert with 'NH{q', 65
                    if _367 + ceil32(return_data.size) + floor32(mem[_367 + mem[_367]]) + 1 > test266151307() or floor32(mem[_367 + mem[_367]]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _367 + ceil32(return_data.size) + floor32(mem[_367 + mem[_367]]) + 1
                    mem[_367 + ceil32(return_data.size)] = _383
                    require _375 + (32 * _383) + 32 <= return_data.size
                    t = 0
                    u = _367 + _375 + 32
                    v = _367 + ceil32(return_data.size) + 32
                    while t < _383:
                        require mem[u] == mem[u]
                        mem[v] = mem[u]
                        t = t + 1
                        u = u + 32
                        v = v + 32
                        continue 
                    if 1 >= _383:
                        revert with 'NH{q', 50
                    _479 = mem[_367 + ceil32(return_data.size) + 64]
                    if idx >= stor8.length:
                        revert with 'NH{q', 50
                    mem[0] = 8
                    require ext_code.size(stor8[idx].field_0)
                    staticcall stor8[idx].field_0._callFee() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _511 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_511] == mem[_511]
                    if _479 and mem[_511] > -1 / _479:
                        revert with 'NH{q', 17
                    if _479 * mem[_511] <= stor9:
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = s
                        continue 
                else:
                    mem[_201 + 32] = stor1
                    if 1 >= mem[_201]:
                        revert with 'NH{q', 50
                    mem[_201 + 64] = stor3
                    mem[_201 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_201 + 100] = _196
                    mem[_201 + 132] = 64
                    mem[_201 + 164] = mem[_201]
                    t = 0
                    u = _201 + 32
                    v = _201 + 196
                    while t < mem[_201]:
                        mem[v] = mem[u + 12 len 20]
                        t = t + 1
                        u = u + 32
                        v = v + 32
                        continue 
                    require ext_code.size(stor5)
                    staticcall stor5.mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _201 + (32 * mem[_201]) + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _368 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _376 = mem[_368]
                    require mem[_368] <= test266151307()
                    require _368 + mem[_368] + 31 < _368 + return_data.size
                    _384 = mem[_368 + mem[_368]]
                    if mem[_368 + mem[_368]] > test266151307():
                        revert with 'NH{q', 65
                    if _368 + ceil32(return_data.size) + floor32(mem[_368 + mem[_368]]) + 1 > test266151307() or floor32(mem[_368 + mem[_368]]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _368 + ceil32(return_data.size) + floor32(mem[_368 + mem[_368]]) + 1
                    mem[_368 + ceil32(return_data.size)] = _384
                    require _376 + (32 * _384) + 32 <= return_data.size
                    t = 0
                    u = _368 + _376 + 32
                    v = _368 + ceil32(return_data.size) + 32
                    while t < _384:
                        require mem[u] == mem[u]
                        mem[v] = mem[u]
                        t = t + 1
                        u = u + 32
                        v = v + 32
                        continue 
                    if 1 >= _384:
                        revert with 'NH{q', 50
                    _480 = mem[_368 + ceil32(return_data.size) + 64]
                    if idx >= stor8.length:
                        revert with 'NH{q', 50
                    mem[0] = 8
                    require ext_code.size(stor8[idx].field_0)
                    staticcall stor8[idx].field_0._callFee() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _512 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_512] == mem[_512]
                    if _480 and mem[_512] > -1 / _480:
                        revert with 'NH{q', 17
                    if _480 * mem[_512] <= stor9:
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = s
                        continue 
            else:
                _202 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                if 0 >= mem[_202]:
                    revert with 'NH{q', 50
                if stor8[idx].field_160:
                    mem[_202 + 32] = stor2
                    if 1 >= mem[_202]:
                        revert with 'NH{q', 50
                    mem[_202 + 64] = stor3
                    mem[_202 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_202 + 100] = _196
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
                    require ext_code.size(stor4)
                    staticcall stor4.mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _202 + (32 * mem[_202]) + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _369 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _377 = mem[_369]
                    require mem[_369] <= test266151307()
                    require _369 + mem[_369] + 31 < _369 + return_data.size
                    _385 = mem[_369 + mem[_369]]
                    if mem[_369 + mem[_369]] > test266151307():
                        revert with 'NH{q', 65
                    if _369 + ceil32(return_data.size) + floor32(mem[_369 + mem[_369]]) + 1 > test266151307() or floor32(mem[_369 + mem[_369]]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _369 + ceil32(return_data.size) + floor32(mem[_369 + mem[_369]]) + 1
                    mem[_369 + ceil32(return_data.size)] = _385
                    require _377 + (32 * _385) + 32 <= return_data.size
                    t = 0
                    u = _369 + _377 + 32
                    v = _369 + ceil32(return_data.size) + 32
                    while t < _385:
                        require mem[u] == mem[u]
                        mem[v] = mem[u]
                        t = t + 1
                        u = u + 32
                        v = v + 32
                        continue 
                    if 1 >= _385:
                        revert with 'NH{q', 50
                    _481 = mem[_369 + ceil32(return_data.size) + 64]
                    if idx >= stor8.length:
                        revert with 'NH{q', 50
                    mem[0] = 8
                    require ext_code.size(stor8[idx].field_0)
                    staticcall stor8[idx].field_0._callFee() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _513 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_513] == mem[_513]
                    if _481 and mem[_513] > -1 / _481:
                        revert with 'NH{q', 17
                    if _481 * mem[_513] <= stor9:
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = s
                        continue 
                else:
                    mem[_202 + 32] = stor1
                    if 1 >= mem[_202]:
                        revert with 'NH{q', 50
                    mem[_202 + 64] = stor3
                    mem[_202 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_202 + 100] = _196
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
                    require ext_code.size(stor4)
                    staticcall stor4.mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _202 + (32 * mem[_202]) + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _370 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _378 = mem[_370]
                    require mem[_370] <= test266151307()
                    require _370 + mem[_370] + 31 < _370 + return_data.size
                    _386 = mem[_370 + mem[_370]]
                    if mem[_370 + mem[_370]] > test266151307():
                        revert with 'NH{q', 65
                    if _370 + ceil32(return_data.size) + floor32(mem[_370 + mem[_370]]) + 1 > test266151307() or floor32(mem[_370 + mem[_370]]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _370 + ceil32(return_data.size) + floor32(mem[_370 + mem[_370]]) + 1
                    mem[_370 + ceil32(return_data.size)] = _386
                    require _378 + (32 * _386) + 32 <= return_data.size
                    t = 0
                    u = _370 + _378 + 32
                    v = _370 + ceil32(return_data.size) + 32
                    while t < _386:
                        require mem[u] == mem[u]
                        mem[v] = mem[u]
                        t = t + 1
                        u = u + 32
                        v = v + 32
                        continue 
                    if 1 >= _386:
                        revert with 'NH{q', 50
                    _482 = mem[_370 + ceil32(return_data.size) + 64]
                    if idx >= stor8.length:
                        revert with 'NH{q', 50
                    mem[0] = 8
                    require ext_code.size(stor8[idx].field_0)
                    staticcall stor8[idx].field_0._callFee() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _514 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_514] == mem[_514]
                    if _482 and mem[_514] > -1 / _482:
                        revert with 'NH{q', 17
                    if _482 * mem[_514] <= stor9:
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
            _372 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _384 = mem[_372]
            require mem[_372] == mem[_372]
            if idx >= stor8.length:
                revert with 'NH{q', 50
            mem[0] = 8
            mem[mem[64] + 4] = _384
            mem[mem[64] + 36] = stor8[idx].field_0
            require ext_code.size(stor7)
            staticcall stor7.0x1778809f with:
                    gas gas_remaining wei
                   args _384, stor8[idx].field_0
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _420 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _424 = mem[_420]
            require mem[_420] == mem[_420]
            if idx >= stor8.length:
                revert with 'NH{q', 50
            mem[0] = 8
            if stor8[idx].field_160:
                _438 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                if 0 >= mem[_438]:
                    revert with 'NH{q', 50
                if stor8[idx].field_160:
                    mem[_438 + 32] = stor2
                    if 1 >= mem[_438]:
                        revert with 'NH{q', 50
                    mem[_438 + 64] = stor3
                    mem[_438 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_438 + 100] = _424
                    mem[_438 + 132] = 64
                    mem[_438 + 164] = mem[_438]
                    t = 0
                    u = _438 + 32
                    v = _438 + 196
                    while t < mem[_438]:
                        mem[v] = mem[u + 12 len 20]
                        t = t + 1
                        u = u + 32
                        v = v + 32
                        continue 
                    require ext_code.size(stor5)
                    staticcall stor5.mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _438 + (32 * mem[_438]) + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _952 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _964 = mem[_952]
                    require mem[_952] <= test266151307()
                    require _952 + mem[_952] + 31 < _952 + return_data.size
                    _976 = mem[_952 + mem[_952]]
                    if mem[_952 + mem[_952]] > test266151307():
                        revert with 'NH{q', 65
                    if _952 + ceil32(return_data.size) + floor32(mem[_952 + mem[_952]]) + 1 > test266151307() or floor32(mem[_952 + mem[_952]]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _952 + ceil32(return_data.size) + floor32(mem[_952 + mem[_952]]) + 1
                    mem[_952 + ceil32(return_data.size)] = _976
                    require _964 + (32 * _976) + 32 <= return_data.size
                    t = 0
                    u = _952 + _964 + 32
                    v = _952 + ceil32(return_data.size) + 32
                    while t < _976:
                        require mem[u] == mem[u]
                        mem[v] = mem[u]
                        t = t + 1
                        u = u + 32
                        v = v + 32
                        continue 
                    if 1 >= _976:
                        revert with 'NH{q', 50
                    _1480 = mem[_952 + ceil32(return_data.size) + 64]
                    if idx >= stor8.length:
                        revert with 'NH{q', 50
                    mem[0] = 8
                    require ext_code.size(stor8[idx].field_0)
                    staticcall stor8[idx].field_0._callFee() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1528 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1528] == mem[_1528]
                    if _1480 and mem[_1528] > -1 / _1480:
                        revert with 'NH{q', 17
                    if _1480 * mem[_1528] <= stor9:
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = s
                        continue 
                else:
                    mem[_438 + 32] = stor1
                    if 1 >= mem[_438]:
                        revert with 'NH{q', 50
                    mem[_438 + 64] = stor3
                    mem[_438 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_438 + 100] = _424
                    mem[_438 + 132] = 64
                    mem[_438 + 164] = mem[_438]
                    t = 0
                    u = _438 + 32
                    v = _438 + 196
                    while t < mem[_438]:
                        mem[v] = mem[u + 12 len 20]
                        t = t + 1
                        u = u + 32
                        v = v + 32
                        continue 
                    require ext_code.size(stor5)
                    staticcall stor5.mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _438 + (32 * mem[_438]) + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _953 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _965 = mem[_953]
                    require mem[_953] <= test266151307()
                    require _953 + mem[_953] + 31 < _953 + return_data.size
                    _977 = mem[_953 + mem[_953]]
                    if mem[_953 + mem[_953]] > test266151307():
                        revert with 'NH{q', 65
                    if _953 + ceil32(return_data.size) + floor32(mem[_953 + mem[_953]]) + 1 > test266151307() or floor32(mem[_953 + mem[_953]]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _953 + ceil32(return_data.size) + floor32(mem[_953 + mem[_953]]) + 1
                    mem[_953 + ceil32(return_data.size)] = _977
                    require _965 + (32 * _977) + 32 <= return_data.size
                    t = 0
                    u = _953 + _965 + 32
                    v = _953 + ceil32(return_data.size) + 32
                    while t < _977:
                        require mem[u] == mem[u]
                        mem[v] = mem[u]
                        t = t + 1
                        u = u + 32
                        v = v + 32
                        continue 
                    if 1 >= _977:
                        revert with 'NH{q', 50
                    _1481 = mem[_953 + ceil32(return_data.size) + 64]
                    if idx >= stor8.length:
                        revert with 'NH{q', 50
                    mem[0] = 8
                    require ext_code.size(stor8[idx].field_0)
                    staticcall stor8[idx].field_0._callFee() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1529 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1529] == mem[_1529]
                    if _1481 and mem[_1529] > -1 / _1481:
                        revert with 'NH{q', 17
                    if _1481 * mem[_1529] <= stor9:
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = s
                        continue 
            else:
                _439 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                if 0 >= mem[_439]:
                    revert with 'NH{q', 50
                if stor8[idx].field_160:
                    mem[_439 + 32] = stor2
                    if 1 >= mem[_439]:
                        revert with 'NH{q', 50
                    mem[_439 + 64] = stor3
                    mem[_439 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_439 + 100] = _424
                    mem[_439 + 132] = 64
                    mem[_439 + 164] = mem[_439]
                    t = 0
                    u = _439 + 32
                    v = _439 + 196
                    while t < mem[_439]:
                        mem[v] = mem[u + 12 len 20]
                        t = t + 1
                        u = u + 32
                        v = v + 32
                        continue 
                    require ext_code.size(stor4)
                    staticcall stor4.mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _439 + (32 * mem[_439]) + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _954 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _966 = mem[_954]
                    require mem[_954] <= test266151307()
                    require _954 + mem[_954] + 31 < _954 + return_data.size
                    _978 = mem[_954 + mem[_954]]
                    if mem[_954 + mem[_954]] > test266151307():
                        revert with 'NH{q', 65
                    if _954 + ceil32(return_data.size) + floor32(mem[_954 + mem[_954]]) + 1 > test266151307() or floor32(mem[_954 + mem[_954]]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _954 + ceil32(return_data.size) + floor32(mem[_954 + mem[_954]]) + 1
                    mem[_954 + ceil32(return_data.size)] = _978
                    require _966 + (32 * _978) + 32 <= return_data.size
                    t = 0
                    u = _954 + _966 + 32
                    v = _954 + ceil32(return_data.size) + 32
                    while t < _978:
                        require mem[u] == mem[u]
                        mem[v] = mem[u]
                        t = t + 1
                        u = u + 32
                        v = v + 32
                        continue 
                    if 1 >= _978:
                        revert with 'NH{q', 50
                    _1482 = mem[_954 + ceil32(return_data.size) + 64]
                    if idx >= stor8.length:
                        revert with 'NH{q', 50
                    mem[0] = 8
                    require ext_code.size(stor8[idx].field_0)
                    staticcall stor8[idx].field_0._callFee() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1530 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1530] == mem[_1530]
                    if _1482 and mem[_1530] > -1 / _1482:
                        revert with 'NH{q', 17
                    if _1482 * mem[_1530] <= stor9:
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = s
                        continue 
                else:
                    mem[_439 + 32] = stor1
                    if 1 >= mem[_439]:
                        revert with 'NH{q', 50
                    mem[_439 + 64] = stor3
                    mem[_439 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_439 + 100] = _424
                    mem[_439 + 132] = 64
                    mem[_439 + 164] = mem[_439]
                    t = 0
                    u = _439 + 32
                    v = _439 + 196
                    while t < mem[_439]:
                        mem[v] = mem[u + 12 len 20]
                        t = t + 1
                        u = u + 32
                        v = v + 32
                        continue 
                    require ext_code.size(stor4)
                    staticcall stor4.mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _439 + (32 * mem[_439]) + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _955 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _967 = mem[_955]
                    require mem[_955] <= test266151307()
                    require _955 + mem[_955] + 31 < _955 + return_data.size
                    _979 = mem[_955 + mem[_955]]
                    if mem[_955 + mem[_955]] > test266151307():
                        revert with 'NH{q', 65
                    if _955 + ceil32(return_data.size) + floor32(mem[_955 + mem[_955]]) + 1 > test266151307() or floor32(mem[_955 + mem[_955]]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _955 + ceil32(return_data.size) + floor32(mem[_955 + mem[_955]]) + 1
                    mem[_955 + ceil32(return_data.size)] = _979
                    require _967 + (32 * _979) + 32 <= return_data.size
                    t = 0
                    u = _955 + _967 + 32
                    v = _955 + ceil32(return_data.size) + 32
                    while t < _979:
                        require mem[u] == mem[u]
                        mem[v] = mem[u]
                        t = t + 1
                        u = u + 32
                        v = v + 32
                        continue 
                    if 1 >= _979:
                        revert with 'NH{q', 50
                    _1483 = mem[_955 + ceil32(return_data.size) + 64]
                    if idx >= stor8.length:
                        revert with 'NH{q', 50
                    mem[0] = 8
                    require ext_code.size(stor8[idx].field_0)
                    staticcall stor8[idx].field_0._callFee() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1531 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1531] == mem[_1531]
                    if _1483 and mem[_1531] > -1 / _1483:
                        revert with 'NH{q', 17
                    if _1483 * mem[_1531] <= stor9:
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = s
                        continue 
        else:
            _373 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _385 = mem[_373]
            require mem[_373] == mem[_373]
            if idx >= stor8.length:
                revert with 'NH{q', 50
            mem[0] = 8
            mem[mem[64] + 4] = _385
            mem[mem[64] + 36] = stor8[idx].field_0
            require ext_code.size(stor6)
            staticcall stor6.0xa279b07f with:
                    gas gas_remaining wei
                   args _385, stor8[idx].field_0
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _421 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _425 = mem[_421]
            require mem[_421] == mem[_421]
            if idx >= stor8.length:
                revert with 'NH{q', 50
            mem[0] = 8
            if stor8[idx].field_160:
                _440 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                if 0 >= mem[_440]:
                    revert with 'NH{q', 50
                if stor8[idx].field_160:
                    mem[_440 + 32] = stor2
                    if 1 >= mem[_440]:
                        revert with 'NH{q', 50
                    mem[_440 + 64] = stor3
                    mem[_440 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_440 + 100] = _425
                    mem[_440 + 132] = 64
                    mem[_440 + 164] = mem[_440]
                    t = 0
                    u = _440 + 32
                    v = _440 + 196
                    while t < mem[_440]:
                        mem[v] = mem[u + 12 len 20]
                        t = t + 1
                        u = u + 32
                        v = v + 32
                        continue 
                    require ext_code.size(stor5)
                    staticcall stor5.mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _440 + (32 * mem[_440]) + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _956 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _968 = mem[_956]
                    require mem[_956] <= test266151307()
                    require _956 + mem[_956] + 31 < _956 + return_data.size
                    _980 = mem[_956 + mem[_956]]
                    if mem[_956 + mem[_956]] > test266151307():
                        revert with 'NH{q', 65
                    if _956 + ceil32(return_data.size) + floor32(mem[_956 + mem[_956]]) + 1 > test266151307() or floor32(mem[_956 + mem[_956]]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _956 + ceil32(return_data.size) + floor32(mem[_956 + mem[_956]]) + 1
                    mem[_956 + ceil32(return_data.size)] = _980
                    require _968 + (32 * _980) + 32 <= return_data.size
                    t = 0
                    u = _956 + _968 + 32
                    v = _956 + ceil32(return_data.size) + 32
                    while t < _980:
                        require mem[u] == mem[u]
                        mem[v] = mem[u]
                        t = t + 1
                        u = u + 32
                        v = v + 32
                        continue 
                    if 1 >= _980:
                        revert with 'NH{q', 50
                    _1484 = mem[_956 + ceil32(return_data.size) + 64]
                    if idx >= stor8.length:
                        revert with 'NH{q', 50
                    mem[0] = 8
                    require ext_code.size(stor8[idx].field_0)
                    staticcall stor8[idx].field_0._callFee() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1532 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1532] == mem[_1532]
                    if _1484 and mem[_1532] > -1 / _1484:
                        revert with 'NH{q', 17
                    if _1484 * mem[_1532] <= stor9:
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = s
                        continue 
                else:
                    mem[_440 + 32] = stor1
                    if 1 >= mem[_440]:
                        revert with 'NH{q', 50
                    mem[_440 + 64] = stor3
                    mem[_440 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_440 + 100] = _425
                    mem[_440 + 132] = 64
                    mem[_440 + 164] = mem[_440]
                    t = 0
                    u = _440 + 32
                    v = _440 + 196
                    while t < mem[_440]:
                        mem[v] = mem[u + 12 len 20]
                        t = t + 1
                        u = u + 32
                        v = v + 32
                        continue 
                    require ext_code.size(stor5)
                    staticcall stor5.mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _440 + (32 * mem[_440]) + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _957 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _969 = mem[_957]
                    require mem[_957] <= test266151307()
                    require _957 + mem[_957] + 31 < _957 + return_data.size
                    _981 = mem[_957 + mem[_957]]
                    if mem[_957 + mem[_957]] > test266151307():
                        revert with 'NH{q', 65
                    if _957 + ceil32(return_data.size) + floor32(mem[_957 + mem[_957]]) + 1 > test266151307() or floor32(mem[_957 + mem[_957]]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _957 + ceil32(return_data.size) + floor32(mem[_957 + mem[_957]]) + 1
                    mem[_957 + ceil32(return_data.size)] = _981
                    require _969 + (32 * _981) + 32 <= return_data.size
                    t = 0
                    u = _957 + _969 + 32
                    v = _957 + ceil32(return_data.size) + 32
                    while t < _981:
                        require mem[u] == mem[u]
                        mem[v] = mem[u]
                        t = t + 1
                        u = u + 32
                        v = v + 32
                        continue 
                    if 1 >= _981:
                        revert with 'NH{q', 50
                    _1485 = mem[_957 + ceil32(return_data.size) + 64]
                    if idx >= stor8.length:
                        revert with 'NH{q', 50
                    mem[0] = 8
                    require ext_code.size(stor8[idx].field_0)
                    staticcall stor8[idx].field_0._callFee() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1533 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1533] == mem[_1533]
                    if _1485 and mem[_1533] > -1 / _1485:
                        revert with 'NH{q', 17
                    if _1485 * mem[_1533] <= stor9:
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = s
                        continue 
            else:
                _441 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                if 0 >= mem[_441]:
                    revert with 'NH{q', 50
                if stor8[idx].field_160:
                    mem[_441 + 32] = stor2
                    if 1 >= mem[_441]:
                        revert with 'NH{q', 50
                    mem[_441 + 64] = stor3
                    mem[_441 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_441 + 100] = _425
                    mem[_441 + 132] = 64
                    mem[_441 + 164] = mem[_441]
                    t = 0
                    u = _441 + 32
                    v = _441 + 196
                    while t < mem[_441]:
                        mem[v] = mem[u + 12 len 20]
                        t = t + 1
                        u = u + 32
                        v = v + 32
                        continue 
                    require ext_code.size(stor4)
                    staticcall stor4.mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _441 + (32 * mem[_441]) + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _958 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _970 = mem[_958]
                    require mem[_958] <= test266151307()
                    require _958 + mem[_958] + 31 < _958 + return_data.size
                    _982 = mem[_958 + mem[_958]]
                    if mem[_958 + mem[_958]] > test266151307():
                        revert with 'NH{q', 65
                    if _958 + ceil32(return_data.size) + floor32(mem[_958 + mem[_958]]) + 1 > test266151307() or floor32(mem[_958 + mem[_958]]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _958 + ceil32(return_data.size) + floor32(mem[_958 + mem[_958]]) + 1
                    mem[_958 + ceil32(return_data.size)] = _982
                    require _970 + (32 * _982) + 32 <= return_data.size
                    t = 0
                    u = _958 + _970 + 32
                    v = _958 + ceil32(return_data.size) + 32
                    while t < _982:
                        require mem[u] == mem[u]
                        mem[v] = mem[u]
                        t = t + 1
                        u = u + 32
                        v = v + 32
                        continue 
                    if 1 >= _982:
                        revert with 'NH{q', 50
                    _1486 = mem[_958 + ceil32(return_data.size) + 64]
                    if idx >= stor8.length:
                        revert with 'NH{q', 50
                    mem[0] = 8
                    require ext_code.size(stor8[idx].field_0)
                    staticcall stor8[idx].field_0._callFee() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1534 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1534] == mem[_1534]
                    if _1486 and mem[_1534] > -1 / _1486:
                        revert with 'NH{q', 17
                    if _1486 * mem[_1534] <= stor9:
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = s
                        continue 
                else:
                    mem[_441 + 32] = stor1
                    if 1 >= mem[_441]:
                        revert with 'NH{q', 50
                    mem[_441 + 64] = stor3
                    mem[_441 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_441 + 100] = _425
                    mem[_441 + 132] = 64
                    mem[_441 + 164] = mem[_441]
                    t = 0
                    u = _441 + 32
                    v = _441 + 196
                    while t < mem[_441]:
                        mem[v] = mem[u + 12 len 20]
                        t = t + 1
                        u = u + 32
                        v = v + 32
                        continue 
                    require ext_code.size(stor4)
                    staticcall stor4.mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _441 + (32 * mem[_441]) + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _959 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _971 = mem[_959]
                    require mem[_959] <= test266151307()
                    require _959 + mem[_959] + 31 < _959 + return_data.size
                    _983 = mem[_959 + mem[_959]]
                    if mem[_959 + mem[_959]] > test266151307():
                        revert with 'NH{q', 65
                    if _959 + ceil32(return_data.size) + floor32(mem[_959 + mem[_959]]) + 1 > test266151307() or floor32(mem[_959 + mem[_959]]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _959 + ceil32(return_data.size) + floor32(mem[_959 + mem[_959]]) + 1
                    mem[_959 + ceil32(return_data.size)] = _983
                    require _971 + (32 * _983) + 32 <= return_data.size
                    t = 0
                    u = _959 + _971 + 32
                    v = _959 + ceil32(return_data.size) + 32
                    while t < _983:
                        require mem[u] == mem[u]
                        mem[v] = mem[u]
                        t = t + 1
                        u = u + 32
                        v = v + 32
                        continue 
                    if 1 >= _983:
                        revert with 'NH{q', 50
                    _1487 = mem[_959 + ceil32(return_data.size) + 64]
                    if idx >= stor8.length:
                        revert with 'NH{q', 50
                    mem[0] = 8
                    require ext_code.size(stor8[idx].field_0)
                    staticcall stor8[idx].field_0._callFee() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1535 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1535] == mem[_1535]
                    if _1487 and mem[_1535] > -1 / _1487:
                        revert with 'NH{q', 17
                    if _1487 * mem[_1535] <= stor9:
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
    if s > test266151307():
        revert with 'NH{q', 65
    _365 = mem[64]
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
                _960 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _972 = mem[_960]
                require mem[_960] == mem[_960]
                if idx >= stor8.length:
                    revert with 'NH{q', 50
                mem[0] = 8
                mem[mem[64] + 4] = _972
                mem[mem[64] + 36] = stor8[idx].field_0
                require ext_code.size(stor7)
                staticcall stor7.0x1778809f with:
                        gas gas_remaining wei
                       args _972, stor8[idx].field_0
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1032 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1060 = mem[_1032]
                require mem[_1032] == mem[_1032]
                if idx >= stor8.length:
                    revert with 'NH{q', 50
                mem[0] = 8
                if stor8[idx].field_160:
                    _1084 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    if 0 >= mem[_1084]:
                        revert with 'NH{q', 50
                    if stor8[idx].field_160:
                        mem[_1084 + 32] = stor2
                        if 1 >= mem[_1084]:
                            revert with 'NH{q', 50
                        mem[_1084 + 64] = stor3
                        mem[_1084 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[_1084 + 100] = _1060
                        mem[_1084 + 132] = 64
                        mem[_1084 + 164] = mem[_1084]
                        t = 0
                        u = _1084 + 32
                        v = _1084 + 196
                        while t < mem[_1084]:
                            mem[v] = mem[u + 12 len 20]
                            t = t + 1
                            u = u + 32
                            v = v + 32
                            continue 
                        require ext_code.size(stor5)
                        staticcall stor5.mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len _1084 + (32 * mem[_1084]) + -mem[64] + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1464 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1488 = mem[_1464]
                        require mem[_1464] <= test266151307()
                        require _1464 + mem[_1464] + 31 < _1464 + return_data.size
                        _1536 = mem[_1464 + mem[_1464]]
                        if mem[_1464 + mem[_1464]] > test266151307():
                            revert with 'NH{q', 65
                        if _1464 + ceil32(return_data.size) + floor32(mem[_1464 + mem[_1464]]) + 1 > test266151307() or floor32(mem[_1464 + mem[_1464]]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = _1464 + ceil32(return_data.size) + floor32(mem[_1464 + mem[_1464]]) + 1
                        mem[_1464 + ceil32(return_data.size)] = _1536
                        require _1488 + (32 * _1536) + 32 <= return_data.size
                        t = 0
                        u = _1464 + _1488 + 32
                        v = _1464 + ceil32(return_data.size) + 32
                        while t < _1536:
                            require mem[u] == mem[u]
                            mem[v] = mem[u]
                            t = t + 1
                            u = u + 32
                            v = v + 32
                            continue 
                        if 1 >= _1536:
                            revert with 'NH{q', 50
                        _1768 = mem[_1464 + ceil32(return_data.size) + 64]
                        if idx >= stor8.length:
                            revert with 'NH{q', 50
                        mem[0] = 8
                        require ext_code.size(stor8[idx].field_0)
                        staticcall stor8[idx].field_0._callFee() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1832 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1832] == mem[_1832]
                        if _1768 and mem[_1832] > -1 / _1768:
                            revert with 'NH{q', 17
                        if _1768 * mem[_1832] <= stor9:
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = s
                            continue 
                    else:
                        mem[_1084 + 32] = stor1
                        if 1 >= mem[_1084]:
                            revert with 'NH{q', 50
                        mem[_1084 + 64] = stor3
                        mem[_1084 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[_1084 + 100] = _1060
                        mem[_1084 + 132] = 64
                        mem[_1084 + 164] = mem[_1084]
                        t = 0
                        u = _1084 + 32
                        v = _1084 + 196
                        while t < mem[_1084]:
                            mem[v] = mem[u + 12 len 20]
                            t = t + 1
                            u = u + 32
                            v = v + 32
                            continue 
                        require ext_code.size(stor5)
                        staticcall stor5.mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len _1084 + (32 * mem[_1084]) + -mem[64] + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1465 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1489 = mem[_1465]
                        require mem[_1465] <= test266151307()
                        require _1465 + mem[_1465] + 31 < _1465 + return_data.size
                        _1537 = mem[_1465 + mem[_1465]]
                        if mem[_1465 + mem[_1465]] > test266151307():
                            revert with 'NH{q', 65
                        if _1465 + ceil32(return_data.size) + floor32(mem[_1465 + mem[_1465]]) + 1 > test266151307() or floor32(mem[_1465 + mem[_1465]]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = _1465 + ceil32(return_data.size) + floor32(mem[_1465 + mem[_1465]]) + 1
                        mem[_1465 + ceil32(return_data.size)] = _1537
                        require _1489 + (32 * _1537) + 32 <= return_data.size
                        t = 0
                        u = _1465 + _1489 + 32
                        v = _1465 + ceil32(return_data.size) + 32
                        while t < _1537:
                            require mem[u] == mem[u]
                            mem[v] = mem[u]
                            t = t + 1
                            u = u + 32
                            v = v + 32
                            continue 
                        if 1 >= _1537:
                            revert with 'NH{q', 50
                        _1769 = mem[_1465 + ceil32(return_data.size) + 64]
                        if idx >= stor8.length:
                            revert with 'NH{q', 50
                        mem[0] = 8
                        require ext_code.size(stor8[idx].field_0)
                        staticcall stor8[idx].field_0._callFee() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1833 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1833] == mem[_1833]
                        if _1769 and mem[_1833] > -1 / _1769:
                            revert with 'NH{q', 17
                        if _1769 * mem[_1833] <= stor9:
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = s
                            continue 
                else:
                    _1085 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    if 0 >= mem[_1085]:
                        revert with 'NH{q', 50
                    if stor8[idx].field_160:
                        mem[_1085 + 32] = stor2
                        if 1 >= mem[_1085]:
                            revert with 'NH{q', 50
                        mem[_1085 + 64] = stor3
                        mem[_1085 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[_1085 + 100] = _1060
                        mem[_1085 + 132] = 64
                        mem[_1085 + 164] = mem[_1085]
                        t = 0
                        u = _1085 + 32
                        v = _1085 + 196
                        while t < mem[_1085]:
                            mem[v] = mem[u + 12 len 20]
                            t = t + 1
                            u = u + 32
                            v = v + 32
                            continue 
                        require ext_code.size(stor4)
                        staticcall stor4.mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len _1085 + (32 * mem[_1085]) + -mem[64] + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1466 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1490 = mem[_1466]
                        require mem[_1466] <= test266151307()
                        require _1466 + mem[_1466] + 31 < _1466 + return_data.size
                        _1538 = mem[_1466 + mem[_1466]]
                        if mem[_1466 + mem[_1466]] > test266151307():
                            revert with 'NH{q', 65
                        if _1466 + ceil32(return_data.size) + floor32(mem[_1466 + mem[_1466]]) + 1 > test266151307() or floor32(mem[_1466 + mem[_1466]]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = _1466 + ceil32(return_data.size) + floor32(mem[_1466 + mem[_1466]]) + 1
                        mem[_1466 + ceil32(return_data.size)] = _1538
                        require _1490 + (32 * _1538) + 32 <= return_data.size
                        t = 0
                        u = _1466 + _1490 + 32
                        v = _1466 + ceil32(return_data.size) + 32
                        while t < _1538:
                            require mem[u] == mem[u]
                            mem[v] = mem[u]
                            t = t + 1
                            u = u + 32
                            v = v + 32
                            continue 
                        if 1 >= _1538:
                            revert with 'NH{q', 50
                        _1770 = mem[_1466 + ceil32(return_data.size) + 64]
                        if idx >= stor8.length:
                            revert with 'NH{q', 50
                        mem[0] = 8
                        require ext_code.size(stor8[idx].field_0)
                        staticcall stor8[idx].field_0._callFee() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1834 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1834] == mem[_1834]
                        if _1770 and mem[_1834] > -1 / _1770:
                            revert with 'NH{q', 17
                        if _1770 * mem[_1834] <= stor9:
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = s
                            continue 
                    else:
                        mem[_1085 + 32] = stor1
                        if 1 >= mem[_1085]:
                            revert with 'NH{q', 50
                        mem[_1085 + 64] = stor3
                        mem[_1085 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[_1085 + 100] = _1060
                        mem[_1085 + 132] = 64
                        mem[_1085 + 164] = mem[_1085]
                        t = 0
                        u = _1085 + 32
                        v = _1085 + 196
                        while t < mem[_1085]:
                            mem[v] = mem[u + 12 len 20]
                            t = t + 1
                            u = u + 32
                            v = v + 32
                            continue 
                        require ext_code.size(stor4)
                        staticcall stor4.mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len _1085 + (32 * mem[_1085]) + -mem[64] + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1467 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1491 = mem[_1467]
                        require mem[_1467] <= test266151307()
                        require _1467 + mem[_1467] + 31 < _1467 + return_data.size
                        _1539 = mem[_1467 + mem[_1467]]
                        if mem[_1467 + mem[_1467]] > test266151307():
                            revert with 'NH{q', 65
                        if _1467 + ceil32(return_data.size) + floor32(mem[_1467 + mem[_1467]]) + 1 > test266151307() or floor32(mem[_1467 + mem[_1467]]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = _1467 + ceil32(return_data.size) + floor32(mem[_1467 + mem[_1467]]) + 1
                        mem[_1467 + ceil32(return_data.size)] = _1539
                        require _1491 + (32 * _1539) + 32 <= return_data.size
                        t = 0
                        u = _1467 + _1491 + 32
                        v = _1467 + ceil32(return_data.size) + 32
                        while t < _1539:
                            require mem[u] == mem[u]
                            mem[v] = mem[u]
                            t = t + 1
                            u = u + 32
                            v = v + 32
                            continue 
                        if 1 >= _1539:
                            revert with 'NH{q', 50
                        _1771 = mem[_1467 + ceil32(return_data.size) + 64]
                        if idx >= stor8.length:
                            revert with 'NH{q', 50
                        mem[0] = 8
                        require ext_code.size(stor8[idx].field_0)
                        staticcall stor8[idx].field_0._callFee() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1835 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1835] == mem[_1835]
                        if _1771 and mem[_1835] > -1 / _1771:
                            revert with 'NH{q', 17
                        if _1771 * mem[_1835] <= stor9:
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = s
                            continue 
            else:
                _961 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _973 = mem[_961]
                require mem[_961] == mem[_961]
                if idx >= stor8.length:
                    revert with 'NH{q', 50
                mem[0] = 8
                mem[mem[64] + 4] = _973
                mem[mem[64] + 36] = stor8[idx].field_0
                require ext_code.size(stor6)
                staticcall stor6.0xa279b07f with:
                        gas gas_remaining wei
                       args _973, stor8[idx].field_0
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1033 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1061 = mem[_1033]
                require mem[_1033] == mem[_1033]
                if idx >= stor8.length:
                    revert with 'NH{q', 50
                mem[0] = 8
                if stor8[idx].field_160:
                    _1086 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    if 0 >= mem[_1086]:
                        revert with 'NH{q', 50
                    if stor8[idx].field_160:
                        mem[_1086 + 32] = stor2
                        if 1 >= mem[_1086]:
                            revert with 'NH{q', 50
                        mem[_1086 + 64] = stor3
                        mem[_1086 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[_1086 + 100] = _1061
                        mem[_1086 + 132] = 64
                        mem[_1086 + 164] = mem[_1086]
                        t = 0
                        u = _1086 + 32
                        v = _1086 + 196
                        while t < mem[_1086]:
                            mem[v] = mem[u + 12 len 20]
                            t = t + 1
                            u = u + 32
                            v = v + 32
                            continue 
                        require ext_code.size(stor5)
                        staticcall stor5.mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len _1086 + (32 * mem[_1086]) + -mem[64] + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1468 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1492 = mem[_1468]
                        require mem[_1468] <= test266151307()
                        require _1468 + mem[_1468] + 31 < _1468 + return_data.size
                        _1540 = mem[_1468 + mem[_1468]]
                        if mem[_1468 + mem[_1468]] > test266151307():
                            revert with 'NH{q', 65
                        if _1468 + ceil32(return_data.size) + floor32(mem[_1468 + mem[_1468]]) + 1 > test266151307() or floor32(mem[_1468 + mem[_1468]]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = _1468 + ceil32(return_data.size) + floor32(mem[_1468 + mem[_1468]]) + 1
                        mem[_1468 + ceil32(return_data.size)] = _1540
                        require _1492 + (32 * _1540) + 32 <= return_data.size
                        t = 0
                        u = _1468 + _1492 + 32
                        v = _1468 + ceil32(return_data.size) + 32
                        while t < _1540:
                            require mem[u] == mem[u]
                            mem[v] = mem[u]
                            t = t + 1
                            u = u + 32
                            v = v + 32
                            continue 
                        if 1 >= _1540:
                            revert with 'NH{q', 50
                        _1772 = mem[_1468 + ceil32(return_data.size) + 64]
                        if idx >= stor8.length:
                            revert with 'NH{q', 50
                        mem[0] = 8
                        require ext_code.size(stor8[idx].field_0)
                        staticcall stor8[idx].field_0._callFee() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1836 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1836] == mem[_1836]
                        if _1772 and mem[_1836] > -1 / _1772:
                            revert with 'NH{q', 17
                        if _1772 * mem[_1836] <= stor9:
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = s
                            continue 
                    else:
                        mem[_1086 + 32] = stor1
                        if 1 >= mem[_1086]:
                            revert with 'NH{q', 50
                        mem[_1086 + 64] = stor3
                        mem[_1086 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[_1086 + 100] = _1061
                        mem[_1086 + 132] = 64
                        mem[_1086 + 164] = mem[_1086]
                        t = 0
                        u = _1086 + 32
                        v = _1086 + 196
                        while t < mem[_1086]:
                            mem[v] = mem[u + 12 len 20]
                            t = t + 1
                            u = u + 32
                            v = v + 32
                            continue 
                        require ext_code.size(stor5)
                        staticcall stor5.mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len _1086 + (32 * mem[_1086]) + -mem[64] + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1469 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1493 = mem[_1469]
                        require mem[_1469] <= test266151307()
                        require _1469 + mem[_1469] + 31 < _1469 + return_data.size
                        _1541 = mem[_1469 + mem[_1469]]
                        if mem[_1469 + mem[_1469]] > test266151307():
                            revert with 'NH{q', 65
                        if _1469 + ceil32(return_data.size) + floor32(mem[_1469 + mem[_1469]]) + 1 > test266151307() or floor32(mem[_1469 + mem[_1469]]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = _1469 + ceil32(return_data.size) + floor32(mem[_1469 + mem[_1469]]) + 1
                        mem[_1469 + ceil32(return_data.size)] = _1541
                        require _1493 + (32 * _1541) + 32 <= return_data.size
                        t = 0
                        u = _1469 + _1493 + 32
                        v = _1469 + ceil32(return_data.size) + 32
                        while t < _1541:
                            require mem[u] == mem[u]
                            mem[v] = mem[u]
                            t = t + 1
                            u = u + 32
                            v = v + 32
                            continue 
                        if 1 >= _1541:
                            revert with 'NH{q', 50
                        _1773 = mem[_1469 + ceil32(return_data.size) + 64]
                        if idx >= stor8.length:
                            revert with 'NH{q', 50
                        mem[0] = 8
                        require ext_code.size(stor8[idx].field_0)
                        staticcall stor8[idx].field_0._callFee() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1837 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1837] == mem[_1837]
                        if _1773 and mem[_1837] > -1 / _1773:
                            revert with 'NH{q', 17
                        if _1773 * mem[_1837] <= stor9:
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = s
                            continue 
                else:
                    _1087 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    if 0 >= mem[_1087]:
                        revert with 'NH{q', 50
                    if stor8[idx].field_160:
                        mem[_1087 + 32] = stor2
                        if 1 >= mem[_1087]:
                            revert with 'NH{q', 50
                        mem[_1087 + 64] = stor3
                        mem[_1087 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[_1087 + 100] = _1061
                        mem[_1087 + 132] = 64
                        mem[_1087 + 164] = mem[_1087]
                        t = 0
                        u = _1087 + 32
                        v = _1087 + 196
                        while t < mem[_1087]:
                            mem[v] = mem[u + 12 len 20]
                            t = t + 1
                            u = u + 32
                            v = v + 32
                            continue 
                        require ext_code.size(stor4)
                        staticcall stor4.mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len _1087 + (32 * mem[_1087]) + -mem[64] + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1470 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1494 = mem[_1470]
                        require mem[_1470] <= test266151307()
                        require _1470 + mem[_1470] + 31 < _1470 + return_data.size
                        _1542 = mem[_1470 + mem[_1470]]
                        if mem[_1470 + mem[_1470]] > test266151307():
                            revert with 'NH{q', 65
                        if _1470 + ceil32(return_data.size) + floor32(mem[_1470 + mem[_1470]]) + 1 > test266151307() or floor32(mem[_1470 + mem[_1470]]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = _1470 + ceil32(return_data.size) + floor32(mem[_1470 + mem[_1470]]) + 1
                        mem[_1470 + ceil32(return_data.size)] = _1542
                        require _1494 + (32 * _1542) + 32 <= return_data.size
                        t = 0
                        u = _1470 + _1494 + 32
                        v = _1470 + ceil32(return_data.size) + 32
                        while t < _1542:
                            require mem[u] == mem[u]
                            mem[v] = mem[u]
                            t = t + 1
                            u = u + 32
                            v = v + 32
                            continue 
                        if 1 >= _1542:
                            revert with 'NH{q', 50
                        _1774 = mem[_1470 + ceil32(return_data.size) + 64]
                        if idx >= stor8.length:
                            revert with 'NH{q', 50
                        mem[0] = 8
                        require ext_code.size(stor8[idx].field_0)
                        staticcall stor8[idx].field_0._callFee() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1838 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1838] == mem[_1838]
                        if _1774 and mem[_1838] > -1 / _1774:
                            revert with 'NH{q', 17
                        if _1774 * mem[_1838] <= stor9:
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = s
                            continue 
                    else:
                        mem[_1087 + 32] = stor1
                        if 1 >= mem[_1087]:
                            revert with 'NH{q', 50
                        mem[_1087 + 64] = stor3
                        mem[_1087 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[_1087 + 100] = _1061
                        mem[_1087 + 132] = 64
                        mem[_1087 + 164] = mem[_1087]
                        t = 0
                        u = _1087 + 32
                        v = _1087 + 196
                        while t < mem[_1087]:
                            mem[v] = mem[u + 12 len 20]
                            t = t + 1
                            u = u + 32
                            v = v + 32
                            continue 
                        require ext_code.size(stor4)
                        staticcall stor4.mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len _1087 + (32 * mem[_1087]) + -mem[64] + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1471 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1495 = mem[_1471]
                        require mem[_1471] <= test266151307()
                        require _1471 + mem[_1471] + 31 < _1471 + return_data.size
                        _1543 = mem[_1471 + mem[_1471]]
                        if mem[_1471 + mem[_1471]] > test266151307():
                            revert with 'NH{q', 65
                        if _1471 + ceil32(return_data.size) + floor32(mem[_1471 + mem[_1471]]) + 1 > test266151307() or floor32(mem[_1471 + mem[_1471]]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = _1471 + ceil32(return_data.size) + floor32(mem[_1471 + mem[_1471]]) + 1
                        mem[_1471 + ceil32(return_data.size)] = _1543
                        require _1495 + (32 * _1543) + 32 <= return_data.size
                        t = 0
                        u = _1471 + _1495 + 32
                        v = _1471 + ceil32(return_data.size) + 32
                        while t < _1543:
                            require mem[u] == mem[u]
                            mem[v] = mem[u]
                            t = t + 1
                            u = u + 32
                            v = v + 32
                            continue 
                        if 1 >= _1543:
                            revert with 'NH{q', 50
                        _1775 = mem[_1471 + ceil32(return_data.size) + 64]
                        if idx >= stor8.length:
                            revert with 'NH{q', 50
                        mem[0] = 8
                        require ext_code.size(stor8[idx].field_0)
                        staticcall stor8[idx].field_0._callFee() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1839 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1839] == mem[_1839]
                        if _1775 and mem[_1839] > -1 / _1775:
                            revert with 'NH{q', 17
                        if _1775 * mem[_1839] <= stor9:
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = s
                            continue 
            if idx >= stor8.length:
                revert with 'NH{q', 50
            mem[0] = 8
            if s >= mem[_365]:
                revert with 'NH{q', 50
            mem[(32 * s) + _365 + 32] = stor8[idx].field_0
            if s == -1:
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s + 1
            continue 
        _926 = mem[64]
        mem[mem[64]] = 32
        _950 = mem[_365]
        mem[mem[64] + 32] = mem[_365]
        idx = 0
        s = _365 + 32
        t = mem[64] + 64
        while idx < _950:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _926 + (32 * _950) + -mem[64] + 64
    mem[_365 + 32 len 32 * s] = call.data[calldata.size len 32 * s]
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
            _962 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _974 = mem[_962]
            require mem[_962] == mem[_962]
            if idx >= stor8.length:
                revert with 'NH{q', 50
            mem[0] = 8
            mem[mem[64] + 4] = _974
            mem[mem[64] + 36] = stor8[idx].field_0
            require ext_code.size(stor7)
            staticcall stor7.0x1778809f with:
                    gas gas_remaining wei
                   args _974, stor8[idx].field_0
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1034 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1062 = mem[_1034]
            require mem[_1034] == mem[_1034]
            if idx >= stor8.length:
                revert with 'NH{q', 50
            mem[0] = 8
            if stor8[idx].field_160:
                _1088 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                if 0 >= mem[_1088]:
                    revert with 'NH{q', 50
                if stor8[idx].field_160:
                    mem[_1088 + 32] = stor2
                    if 1 >= mem[_1088]:
                        revert with 'NH{q', 50
                    mem[_1088 + 64] = stor3
                    mem[_1088 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_1088 + 100] = _1062
                    mem[_1088 + 132] = 64
                    mem[_1088 + 164] = mem[_1088]
                    t = 0
                    u = _1088 + 32
                    v = _1088 + 196
                    while t < mem[_1088]:
                        mem[v] = mem[u + 12 len 20]
                        t = t + 1
                        u = u + 32
                        v = v + 32
                        continue 
                    require ext_code.size(stor5)
                    staticcall stor5.mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _1088 + (32 * mem[_1088]) + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1472 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1496 = mem[_1472]
                    require mem[_1472] <= test266151307()
                    require _1472 + mem[_1472] + 31 < _1472 + return_data.size
                    _1544 = mem[_1472 + mem[_1472]]
                    if mem[_1472 + mem[_1472]] > test266151307():
                        revert with 'NH{q', 65
                    if _1472 + ceil32(return_data.size) + floor32(mem[_1472 + mem[_1472]]) + 1 > test266151307() or floor32(mem[_1472 + mem[_1472]]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _1472 + ceil32(return_data.size) + floor32(mem[_1472 + mem[_1472]]) + 1
                    mem[_1472 + ceil32(return_data.size)] = _1544
                    require _1496 + (32 * _1544) + 32 <= return_data.size
                    t = 0
                    u = _1472 + _1496 + 32
                    v = _1472 + ceil32(return_data.size) + 32
                    while t < _1544:
                        require mem[u] == mem[u]
                        mem[v] = mem[u]
                        t = t + 1
                        u = u + 32
                        v = v + 32
                        continue 
                    if 1 >= _1544:
                        revert with 'NH{q', 50
                    _1776 = mem[_1472 + ceil32(return_data.size) + 64]
                    if idx >= stor8.length:
                        revert with 'NH{q', 50
                    mem[0] = 8
                    require ext_code.size(stor8[idx].field_0)
                    staticcall stor8[idx].field_0._callFee() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1840 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1840] == mem[_1840]
                    if _1776 and mem[_1840] > -1 / _1776:
                        revert with 'NH{q', 17
                    if _1776 * mem[_1840] <= stor9:
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = s
                        continue 
                else:
                    mem[_1088 + 32] = stor1
                    if 1 >= mem[_1088]:
                        revert with 'NH{q', 50
                    mem[_1088 + 64] = stor3
                    mem[_1088 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_1088 + 100] = _1062
                    mem[_1088 + 132] = 64
                    mem[_1088 + 164] = mem[_1088]
                    t = 0
                    u = _1088 + 32
                    v = _1088 + 196
                    while t < mem[_1088]:
                        mem[v] = mem[u + 12 len 20]
                        t = t + 1
                        u = u + 32
                        v = v + 32
                        continue 
                    require ext_code.size(stor5)
                    staticcall stor5.mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _1088 + (32 * mem[_1088]) + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1473 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1497 = mem[_1473]
                    require mem[_1473] <= test266151307()
                    require _1473 + mem[_1473] + 31 < _1473 + return_data.size
                    _1545 = mem[_1473 + mem[_1473]]
                    if mem[_1473 + mem[_1473]] > test266151307():
                        revert with 'NH{q', 65
                    if _1473 + ceil32(return_data.size) + floor32(mem[_1473 + mem[_1473]]) + 1 > test266151307() or floor32(mem[_1473 + mem[_1473]]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _1473 + ceil32(return_data.size) + floor32(mem[_1473 + mem[_1473]]) + 1
                    mem[_1473 + ceil32(return_data.size)] = _1545
                    require _1497 + (32 * _1545) + 32 <= return_data.size
                    t = 0
                    u = _1473 + _1497 + 32
                    v = _1473 + ceil32(return_data.size) + 32
                    while t < _1545:
                        require mem[u] == mem[u]
                        mem[v] = mem[u]
                        t = t + 1
                        u = u + 32
                        v = v + 32
                        continue 
                    if 1 >= _1545:
                        revert with 'NH{q', 50
                    _1777 = mem[_1473 + ceil32(return_data.size) + 64]
                    if idx >= stor8.length:
                        revert with 'NH{q', 50
                    mem[0] = 8
                    require ext_code.size(stor8[idx].field_0)
                    staticcall stor8[idx].field_0._callFee() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1841 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1841] == mem[_1841]
                    if _1777 and mem[_1841] > -1 / _1777:
                        revert with 'NH{q', 17
                    if _1777 * mem[_1841] <= stor9:
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = s
                        continue 
            else:
                _1089 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                if 0 >= mem[_1089]:
                    revert with 'NH{q', 50
                if stor8[idx].field_160:
                    mem[_1089 + 32] = stor2
                    if 1 >= mem[_1089]:
                        revert with 'NH{q', 50
                    mem[_1089 + 64] = stor3
                    mem[_1089 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_1089 + 100] = _1062
                    mem[_1089 + 132] = 64
                    mem[_1089 + 164] = mem[_1089]
                    t = 0
                    u = _1089 + 32
                    v = _1089 + 196
                    while t < mem[_1089]:
                        mem[v] = mem[u + 12 len 20]
                        t = t + 1
                        u = u + 32
                        v = v + 32
                        continue 
                    require ext_code.size(stor4)
                    staticcall stor4.mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _1089 + (32 * mem[_1089]) + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1474 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1498 = mem[_1474]
                    require mem[_1474] <= test266151307()
                    require _1474 + mem[_1474] + 31 < _1474 + return_data.size
                    _1546 = mem[_1474 + mem[_1474]]
                    if mem[_1474 + mem[_1474]] > test266151307():
                        revert with 'NH{q', 65
                    if _1474 + ceil32(return_data.size) + floor32(mem[_1474 + mem[_1474]]) + 1 > test266151307() or floor32(mem[_1474 + mem[_1474]]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _1474 + ceil32(return_data.size) + floor32(mem[_1474 + mem[_1474]]) + 1
                    mem[_1474 + ceil32(return_data.size)] = _1546
                    require _1498 + (32 * _1546) + 32 <= return_data.size
                    t = 0
                    u = _1474 + _1498 + 32
                    v = _1474 + ceil32(return_data.size) + 32
                    while t < _1546:
                        require mem[u] == mem[u]
                        mem[v] = mem[u]
                        t = t + 1
                        u = u + 32
                        v = v + 32
                        continue 
                    if 1 >= _1546:
                        revert with 'NH{q', 50
                    _1778 = mem[_1474 + ceil32(return_data.size) + 64]
                    if idx >= stor8.length:
                        revert with 'NH{q', 50
                    mem[0] = 8
                    require ext_code.size(stor8[idx].field_0)
                    staticcall stor8[idx].field_0._callFee() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1842 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1842] == mem[_1842]
                    if _1778 and mem[_1842] > -1 / _1778:
                        revert with 'NH{q', 17
                    if _1778 * mem[_1842] <= stor9:
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = s
                        continue 
                else:
                    mem[_1089 + 32] = stor1
                    if 1 >= mem[_1089]:
                        revert with 'NH{q', 50
                    mem[_1089 + 64] = stor3
                    mem[_1089 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_1089 + 100] = _1062
                    mem[_1089 + 132] = 64
                    mem[_1089 + 164] = mem[_1089]
                    t = 0
                    u = _1089 + 32
                    v = _1089 + 196
                    while t < mem[_1089]:
                        mem[v] = mem[u + 12 len 20]
                        t = t + 1
                        u = u + 32
                        v = v + 32
                        continue 
                    require ext_code.size(stor4)
                    staticcall stor4.mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _1089 + (32 * mem[_1089]) + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1475 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1499 = mem[_1475]
                    require mem[_1475] <= test266151307()
                    require _1475 + mem[_1475] + 31 < _1475 + return_data.size
                    _1547 = mem[_1475 + mem[_1475]]
                    if mem[_1475 + mem[_1475]] > test266151307():
                        revert with 'NH{q', 65
                    if _1475 + ceil32(return_data.size) + floor32(mem[_1475 + mem[_1475]]) + 1 > test266151307() or floor32(mem[_1475 + mem[_1475]]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _1475 + ceil32(return_data.size) + floor32(mem[_1475 + mem[_1475]]) + 1
                    mem[_1475 + ceil32(return_data.size)] = _1547
                    require _1499 + (32 * _1547) + 32 <= return_data.size
                    t = 0
                    u = _1475 + _1499 + 32
                    v = _1475 + ceil32(return_data.size) + 32
                    while t < _1547:
                        require mem[u] == mem[u]
                        mem[v] = mem[u]
                        t = t + 1
                        u = u + 32
                        v = v + 32
                        continue 
                    if 1 >= _1547:
                        revert with 'NH{q', 50
                    _1779 = mem[_1475 + ceil32(return_data.size) + 64]
                    if idx >= stor8.length:
                        revert with 'NH{q', 50
                    mem[0] = 8
                    require ext_code.size(stor8[idx].field_0)
                    staticcall stor8[idx].field_0._callFee() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1843 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1843] == mem[_1843]
                    if _1779 and mem[_1843] > -1 / _1779:
                        revert with 'NH{q', 17
                    if _1779 * mem[_1843] <= stor9:
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = s
                        continue 
        else:
            _963 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _975 = mem[_963]
            require mem[_963] == mem[_963]
            if idx >= stor8.length:
                revert with 'NH{q', 50
            mem[0] = 8
            mem[mem[64] + 4] = _975
            mem[mem[64] + 36] = stor8[idx].field_0
            require ext_code.size(stor6)
            staticcall stor6.0xa279b07f with:
                    gas gas_remaining wei
                   args _975, stor8[idx].field_0
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1035 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1063 = mem[_1035]
            require mem[_1035] == mem[_1035]
            if idx >= stor8.length:
                revert with 'NH{q', 50
            mem[0] = 8
            if stor8[idx].field_160:
                _1090 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                if 0 >= mem[_1090]:
                    revert with 'NH{q', 50
                if stor8[idx].field_160:
                    mem[_1090 + 32] = stor2
                    if 1 >= mem[_1090]:
                        revert with 'NH{q', 50
                    mem[_1090 + 64] = stor3
                    mem[_1090 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_1090 + 100] = _1063
                    mem[_1090 + 132] = 64
                    mem[_1090 + 164] = mem[_1090]
                    t = 0
                    u = _1090 + 32
                    v = _1090 + 196
                    while t < mem[_1090]:
                        mem[v] = mem[u + 12 len 20]
                        t = t + 1
                        u = u + 32
                        v = v + 32
                        continue 
                    require ext_code.size(stor5)
                    staticcall stor5.mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _1090 + (32 * mem[_1090]) + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1476 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1500 = mem[_1476]
                    require mem[_1476] <= test266151307()
                    require _1476 + mem[_1476] + 31 < _1476 + return_data.size
                    _1548 = mem[_1476 + mem[_1476]]
                    if mem[_1476 + mem[_1476]] > test266151307():
                        revert with 'NH{q', 65
                    if _1476 + ceil32(return_data.size) + floor32(mem[_1476 + mem[_1476]]) + 1 > test266151307() or floor32(mem[_1476 + mem[_1476]]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _1476 + ceil32(return_data.size) + floor32(mem[_1476 + mem[_1476]]) + 1
                    mem[_1476 + ceil32(return_data.size)] = _1548
                    require _1500 + (32 * _1548) + 32 <= return_data.size
                    t = 0
                    u = _1476 + _1500 + 32
                    v = _1476 + ceil32(return_data.size) + 32
                    while t < _1548:
                        require mem[u] == mem[u]
                        mem[v] = mem[u]
                        t = t + 1
                        u = u + 32
                        v = v + 32
                        continue 
                    if 1 >= _1548:
                        revert with 'NH{q', 50
                    _1780 = mem[_1476 + ceil32(return_data.size) + 64]
                    if idx >= stor8.length:
                        revert with 'NH{q', 50
                    mem[0] = 8
                    require ext_code.size(stor8[idx].field_0)
                    staticcall stor8[idx].field_0._callFee() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1844 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1844] == mem[_1844]
                    if _1780 and mem[_1844] > -1 / _1780:
                        revert with 'NH{q', 17
                    if _1780 * mem[_1844] <= stor9:
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = s
                        continue 
                else:
                    mem[_1090 + 32] = stor1
                    if 1 >= mem[_1090]:
                        revert with 'NH{q', 50
                    mem[_1090 + 64] = stor3
                    mem[_1090 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_1090 + 100] = _1063
                    mem[_1090 + 132] = 64
                    mem[_1090 + 164] = mem[_1090]
                    t = 0
                    u = _1090 + 32
                    v = _1090 + 196
                    while t < mem[_1090]:
                        mem[v] = mem[u + 12 len 20]
                        t = t + 1
                        u = u + 32
                        v = v + 32
                        continue 
                    require ext_code.size(stor5)
                    staticcall stor5.mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _1090 + (32 * mem[_1090]) + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1477 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1501 = mem[_1477]
                    require mem[_1477] <= test266151307()
                    require _1477 + mem[_1477] + 31 < _1477 + return_data.size
                    _1549 = mem[_1477 + mem[_1477]]
                    if mem[_1477 + mem[_1477]] > test266151307():
                        revert with 'NH{q', 65
                    if _1477 + ceil32(return_data.size) + floor32(mem[_1477 + mem[_1477]]) + 1 > test266151307() or floor32(mem[_1477 + mem[_1477]]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _1477 + ceil32(return_data.size) + floor32(mem[_1477 + mem[_1477]]) + 1
                    mem[_1477 + ceil32(return_data.size)] = _1549
                    require _1501 + (32 * _1549) + 32 <= return_data.size
                    t = 0
                    u = _1477 + _1501 + 32
                    v = _1477 + ceil32(return_data.size) + 32
                    while t < _1549:
                        require mem[u] == mem[u]
                        mem[v] = mem[u]
                        t = t + 1
                        u = u + 32
                        v = v + 32
                        continue 
                    if 1 >= _1549:
                        revert with 'NH{q', 50
                    _1781 = mem[_1477 + ceil32(return_data.size) + 64]
                    if idx >= stor8.length:
                        revert with 'NH{q', 50
                    mem[0] = 8
                    require ext_code.size(stor8[idx].field_0)
                    staticcall stor8[idx].field_0._callFee() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1845 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1845] == mem[_1845]
                    if _1781 and mem[_1845] > -1 / _1781:
                        revert with 'NH{q', 17
                    if _1781 * mem[_1845] <= stor9:
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = s
                        continue 
            else:
                _1091 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                if 0 >= mem[_1091]:
                    revert with 'NH{q', 50
                if stor8[idx].field_160:
                    mem[_1091 + 32] = stor2
                    if 1 >= mem[_1091]:
                        revert with 'NH{q', 50
                    mem[_1091 + 64] = stor3
                    mem[_1091 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_1091 + 100] = _1063
                    mem[_1091 + 132] = 64
                    mem[_1091 + 164] = mem[_1091]
                    t = 0
                    u = _1091 + 32
                    v = _1091 + 196
                    while t < mem[_1091]:
                        mem[v] = mem[u + 12 len 20]
                        t = t + 1
                        u = u + 32
                        v = v + 32
                        continue 
                    require ext_code.size(stor4)
                    staticcall stor4.mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _1091 + (32 * mem[_1091]) + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1478 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1502 = mem[_1478]
                    require mem[_1478] <= test266151307()
                    require _1478 + mem[_1478] + 31 < _1478 + return_data.size
                    _1550 = mem[_1478 + mem[_1478]]
                    if mem[_1478 + mem[_1478]] > test266151307():
                        revert with 'NH{q', 65
                    if _1478 + ceil32(return_data.size) + floor32(mem[_1478 + mem[_1478]]) + 1 > test266151307() or floor32(mem[_1478 + mem[_1478]]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _1478 + ceil32(return_data.size) + floor32(mem[_1478 + mem[_1478]]) + 1
                    mem[_1478 + ceil32(return_data.size)] = _1550
                    require _1502 + (32 * _1550) + 32 <= return_data.size
                    t = 0
                    u = _1478 + _1502 + 32
                    v = _1478 + ceil32(return_data.size) + 32
                    while t < _1550:
                        require mem[u] == mem[u]
                        mem[v] = mem[u]
                        t = t + 1
                        u = u + 32
                        v = v + 32
                        continue 
                    if 1 >= _1550:
                        revert with 'NH{q', 50
                    _1782 = mem[_1478 + ceil32(return_data.size) + 64]
                    if idx >= stor8.length:
                        revert with 'NH{q', 50
                    mem[0] = 8
                    require ext_code.size(stor8[idx].field_0)
                    staticcall stor8[idx].field_0._callFee() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1846 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1846] == mem[_1846]
                    if _1782 and mem[_1846] > -1 / _1782:
                        revert with 'NH{q', 17
                    if _1782 * mem[_1846] <= stor9:
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = s
                        continue 
                else:
                    mem[_1091 + 32] = stor1
                    if 1 >= mem[_1091]:
                        revert with 'NH{q', 50
                    mem[_1091 + 64] = stor3
                    mem[_1091 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_1091 + 100] = _1063
                    mem[_1091 + 132] = 64
                    mem[_1091 + 164] = mem[_1091]
                    t = 0
                    u = _1091 + 32
                    v = _1091 + 196
                    while t < mem[_1091]:
                        mem[v] = mem[u + 12 len 20]
                        t = t + 1
                        u = u + 32
                        v = v + 32
                        continue 
                    require ext_code.size(stor4)
                    staticcall stor4.mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _1091 + (32 * mem[_1091]) + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1479 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1503 = mem[_1479]
                    require mem[_1479] <= test266151307()
                    require _1479 + mem[_1479] + 31 < _1479 + return_data.size
                    _1551 = mem[_1479 + mem[_1479]]
                    if mem[_1479 + mem[_1479]] > test266151307():
                        revert with 'NH{q', 65
                    if _1479 + ceil32(return_data.size) + floor32(mem[_1479 + mem[_1479]]) + 1 > test266151307() or floor32(mem[_1479 + mem[_1479]]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _1479 + ceil32(return_data.size) + floor32(mem[_1479 + mem[_1479]]) + 1
                    mem[_1479 + ceil32(return_data.size)] = _1551
                    require _1503 + (32 * _1551) + 32 <= return_data.size
                    t = 0
                    u = _1479 + _1503 + 32
                    v = _1479 + ceil32(return_data.size) + 32
                    while t < _1551:
                        require mem[u] == mem[u]
                        mem[v] = mem[u]
                        t = t + 1
                        u = u + 32
                        v = v + 32
                        continue 
                    if 1 >= _1551:
                        revert with 'NH{q', 50
                    _1783 = mem[_1479 + ceil32(return_data.size) + 64]
                    if idx >= stor8.length:
                        revert with 'NH{q', 50
                    mem[0] = 8
                    require ext_code.size(stor8[idx].field_0)
                    staticcall stor8[idx].field_0._callFee() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1847 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1847] == mem[_1847]
                    if _1783 and mem[_1847] > -1 / _1783:
                        revert with 'NH{q', 17
                    if _1783 * mem[_1847] <= stor9:
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = s
                        continue 
        if idx >= stor8.length:
            revert with 'NH{q', 50
        mem[0] = 8
        if s >= mem[_365]:
            revert with 'NH{q', 50
        mem[(32 * s) + _365 + 32] = stor8[idx].field_0
        if s == -1:
            revert with 'NH{q', 17
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = s + 1
        continue 
    _928 = mem[64]
    mem[mem[64]] = 32
    _951 = mem[_365]
    mem[mem[64] + 32] = mem[_365]
    idx = 0
    s = _365 + 32
    t = mem[64] + 64
    while idx < _951:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len _928 + (32 * _951) + -mem[64] + 64
}



}
