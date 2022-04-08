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
array of struct stor7;
uint256 stor8;

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
    stor8 = arg1
}

function removeStrat(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 >= stor7.length:
        revert with 'NH{q', 50
    stor7[arg1].field_0 = 0
    stor7[arg1].field_160 = 0
}

function sub_741d1797(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == bool(arg2)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor7.length++
    stor7[stor7.length].field_0 = address(arg1)
    stor7[stor7.length].field_160 = Mask(96, 0, bool(arg2))
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
    if arg2:
        require ext_code.size(stor4)
        staticcall stor4.getAmountsOut(uint256 rg1, address[] rg2) with:
                gas gas_remaining wei
               args arg1, Array(len=2, data=mem[292 len 64])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 192
        require return_data.size >= 32
        _39 = mem[192 len 4], Mask(224, 32, arg1) >> 32
        require mem[192 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
        require mem[192 len 4], Mask(224, 32, arg1) >> 32 + 223 < return_data.size + 192
        _41 = mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]
        if mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192] > test266151307():
            revert with 'NH{q', 65
        if ceil32(return_data.size) + floor32(mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 193 > test266151307() or floor32(mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = ceil32(return_data.size) + floor32(mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 193
        mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]
        require _39 + (32 * _41) + 32 <= return_data.size
        idx = 0
        s = _39 + 224
        t = ceil32(return_data.size) + 224
        while idx < _41:
            require mem[s] == mem[s]
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        if 1 >= _41:
            revert with 'NH{q', 50
    else:
        require ext_code.size(stor3)
        staticcall stor3.getAmountsOut(uint256 rg1, address[] rg2) with:
                gas gas_remaining wei
               args arg1, Array(len=2, data=mem[292 len 64])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 192
        require return_data.size >= 32
        _40 = mem[192 len 4], Mask(224, 32, arg1) >> 32
        require mem[192 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
        require mem[192 len 4], Mask(224, 32, arg1) >> 32 + 223 < return_data.size + 192
        _42 = mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]
        if mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192] > test266151307():
            revert with 'NH{q', 65
        if ceil32(return_data.size) + floor32(mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 193 > test266151307() or floor32(mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = ceil32(return_data.size) + floor32(mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 193
        mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]
        require _40 + (32 * _42) + 32 <= return_data.size
        idx = 0
        s = _40 + 224
        t = ceil32(return_data.size) + 224
        while idx < _42:
            require mem[s] == mem[s]
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        if 1 >= _42:
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
    while idx < stor7.length:
        if idx >= stor7.length:
            revert with 'NH{q', 50
        mem[0] = 7
        require ext_code.size(stor7[idx].field_0)
        staticcall stor7[idx].field_0.poolId() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if stor7[idx].field_160:
            _110 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _113 = mem[_110]
            require mem[_110] == mem[_110]
            if idx >= stor7.length:
                revert with 'NH{q', 50
            mem[0] = 7
            mem[mem[64] + 4] = _113
            mem[mem[64] + 36] = stor7[idx].field_0
            require ext_code.size(stor6)
            staticcall stor6.0x1778809f with:
                    gas gas_remaining wei
                   args _113, stor7[idx].field_0
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _121 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _123 = mem[_121]
            require mem[_121] == mem[_121]
            if idx >= stor7.length:
                revert with 'NH{q', 50
            mem[0] = 7
            if stor7[idx].field_160:
                _127 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                if 0 >= mem[_127]:
                    revert with 'NH{q', 50
                mem[_127 + 32] = stor1
                if 1 >= mem[_127]:
                    revert with 'NH{q', 50
                mem[_127 + 64] = stor2
                mem[_127 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_127 + 100] = _123
                mem[_127 + 132] = 64
                mem[_127 + 164] = mem[_127]
                t = 0
                u = _127 + 32
                v = _127 + 196
                while t < mem[_127]:
                    mem[v] = mem[u + 12 len 20]
                    t = t + 1
                    u = u + 32
                    v = v + 32
                    continue 
                require ext_code.size(stor4)
                staticcall stor4.mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len _127 + (32 * mem[_127]) + -mem[64] + 192]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _211 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _215 = mem[_211]
                require mem[_211] <= test266151307()
                require _211 + mem[_211] + 31 < _211 + return_data.size
                _219 = mem[_211 + mem[_211]]
                if mem[_211 + mem[_211]] > test266151307():
                    revert with 'NH{q', 65
                if _211 + ceil32(return_data.size) + floor32(mem[_211 + mem[_211]]) + 1 > test266151307() or floor32(mem[_211 + mem[_211]]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = _211 + ceil32(return_data.size) + floor32(mem[_211 + mem[_211]]) + 1
                mem[_211 + ceil32(return_data.size)] = _219
                require _215 + (32 * _219) + 32 <= return_data.size
                t = 0
                u = _211 + _215 + 32
                v = _211 + ceil32(return_data.size) + 32
                while t < _219:
                    require mem[u] == mem[u]
                    mem[v] = mem[u]
                    t = t + 1
                    u = u + 32
                    v = v + 32
                    continue 
                if 1 >= _219:
                    revert with 'NH{q', 50
                _267 = mem[_211 + ceil32(return_data.size) + 64]
                if idx >= stor7.length:
                    revert with 'NH{q', 50
                mem[0] = 7
                require ext_code.size(stor7[idx].field_0)
                staticcall stor7[idx].field_0._callFee() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _283 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_283] == mem[_283]
                if _267 and mem[_283] > -1 / _267:
                    revert with 'NH{q', 17
                if _267 * mem[_283] <= stor8:
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = s
                    continue 
            else:
                _128 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                if 0 >= mem[_128]:
                    revert with 'NH{q', 50
                mem[_128 + 32] = stor1
                if 1 >= mem[_128]:
                    revert with 'NH{q', 50
                mem[_128 + 64] = stor2
                mem[_128 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_128 + 100] = _123
                mem[_128 + 132] = 64
                mem[_128 + 164] = mem[_128]
                t = 0
                u = _128 + 32
                v = _128 + 196
                while t < mem[_128]:
                    mem[v] = mem[u + 12 len 20]
                    t = t + 1
                    u = u + 32
                    v = v + 32
                    continue 
                require ext_code.size(stor3)
                staticcall stor3.mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len _128 + (32 * mem[_128]) + -mem[64] + 192]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _212 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _216 = mem[_212]
                require mem[_212] <= test266151307()
                require _212 + mem[_212] + 31 < _212 + return_data.size
                _220 = mem[_212 + mem[_212]]
                if mem[_212 + mem[_212]] > test266151307():
                    revert with 'NH{q', 65
                if _212 + ceil32(return_data.size) + floor32(mem[_212 + mem[_212]]) + 1 > test266151307() or floor32(mem[_212 + mem[_212]]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = _212 + ceil32(return_data.size) + floor32(mem[_212 + mem[_212]]) + 1
                mem[_212 + ceil32(return_data.size)] = _220
                require _216 + (32 * _220) + 32 <= return_data.size
                t = 0
                u = _212 + _216 + 32
                v = _212 + ceil32(return_data.size) + 32
                while t < _220:
                    require mem[u] == mem[u]
                    mem[v] = mem[u]
                    t = t + 1
                    u = u + 32
                    v = v + 32
                    continue 
                if 1 >= _220:
                    revert with 'NH{q', 50
                _268 = mem[_212 + ceil32(return_data.size) + 64]
                if idx >= stor7.length:
                    revert with 'NH{q', 50
                mem[0] = 7
                require ext_code.size(stor7[idx].field_0)
                staticcall stor7[idx].field_0._callFee() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _284 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_284] == mem[_284]
                if _268 and mem[_284] > -1 / _268:
                    revert with 'NH{q', 17
                if _268 * mem[_284] <= stor8:
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = s
                    continue 
        else:
            _111 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _114 = mem[_111]
            require mem[_111] == mem[_111]
            if idx >= stor7.length:
                revert with 'NH{q', 50
            mem[0] = 7
            mem[mem[64] + 4] = _114
            mem[mem[64] + 36] = stor7[idx].field_0
            require ext_code.size(stor5)
            staticcall stor5.0xa279b07f with:
                    gas gas_remaining wei
                   args _114, stor7[idx].field_0
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _122 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _124 = mem[_122]
            require mem[_122] == mem[_122]
            if idx >= stor7.length:
                revert with 'NH{q', 50
            mem[0] = 7
            if stor7[idx].field_160:
                _129 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                if 0 >= mem[_129]:
                    revert with 'NH{q', 50
                mem[_129 + 32] = stor1
                if 1 >= mem[_129]:
                    revert with 'NH{q', 50
                mem[_129 + 64] = stor2
                mem[_129 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_129 + 100] = _124
                mem[_129 + 132] = 64
                mem[_129 + 164] = mem[_129]
                t = 0
                u = _129 + 32
                v = _129 + 196
                while t < mem[_129]:
                    mem[v] = mem[u + 12 len 20]
                    t = t + 1
                    u = u + 32
                    v = v + 32
                    continue 
                require ext_code.size(stor4)
                staticcall stor4.mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len _129 + (32 * mem[_129]) + -mem[64] + 192]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _213 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _217 = mem[_213]
                require mem[_213] <= test266151307()
                require _213 + mem[_213] + 31 < _213 + return_data.size
                _221 = mem[_213 + mem[_213]]
                if mem[_213 + mem[_213]] > test266151307():
                    revert with 'NH{q', 65
                if _213 + ceil32(return_data.size) + floor32(mem[_213 + mem[_213]]) + 1 > test266151307() or floor32(mem[_213 + mem[_213]]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = _213 + ceil32(return_data.size) + floor32(mem[_213 + mem[_213]]) + 1
                mem[_213 + ceil32(return_data.size)] = _221
                require _217 + (32 * _221) + 32 <= return_data.size
                t = 0
                u = _213 + _217 + 32
                v = _213 + ceil32(return_data.size) + 32
                while t < _221:
                    require mem[u] == mem[u]
                    mem[v] = mem[u]
                    t = t + 1
                    u = u + 32
                    v = v + 32
                    continue 
                if 1 >= _221:
                    revert with 'NH{q', 50
                _269 = mem[_213 + ceil32(return_data.size) + 64]
                if idx >= stor7.length:
                    revert with 'NH{q', 50
                mem[0] = 7
                require ext_code.size(stor7[idx].field_0)
                staticcall stor7[idx].field_0._callFee() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _285 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_285] == mem[_285]
                if _269 and mem[_285] > -1 / _269:
                    revert with 'NH{q', 17
                if _269 * mem[_285] <= stor8:
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = s
                    continue 
            else:
                _130 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                if 0 >= mem[_130]:
                    revert with 'NH{q', 50
                mem[_130 + 32] = stor1
                if 1 >= mem[_130]:
                    revert with 'NH{q', 50
                mem[_130 + 64] = stor2
                mem[_130 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_130 + 100] = _124
                mem[_130 + 132] = 64
                mem[_130 + 164] = mem[_130]
                t = 0
                u = _130 + 32
                v = _130 + 196
                while t < mem[_130]:
                    mem[v] = mem[u + 12 len 20]
                    t = t + 1
                    u = u + 32
                    v = v + 32
                    continue 
                require ext_code.size(stor3)
                staticcall stor3.mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len _130 + (32 * mem[_130]) + -mem[64] + 192]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _214 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _218 = mem[_214]
                require mem[_214] <= test266151307()
                require _214 + mem[_214] + 31 < _214 + return_data.size
                _222 = mem[_214 + mem[_214]]
                if mem[_214 + mem[_214]] > test266151307():
                    revert with 'NH{q', 65
                if _214 + ceil32(return_data.size) + floor32(mem[_214 + mem[_214]]) + 1 > test266151307() or floor32(mem[_214 + mem[_214]]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = _214 + ceil32(return_data.size) + floor32(mem[_214 + mem[_214]]) + 1
                mem[_214 + ceil32(return_data.size)] = _222
                require _218 + (32 * _222) + 32 <= return_data.size
                t = 0
                u = _214 + _218 + 32
                v = _214 + ceil32(return_data.size) + 32
                while t < _222:
                    require mem[u] == mem[u]
                    mem[v] = mem[u]
                    t = t + 1
                    u = u + 32
                    v = v + 32
                    continue 
                if 1 >= _222:
                    revert with 'NH{q', 50
                _270 = mem[_214 + ceil32(return_data.size) + 64]
                if idx >= stor7.length:
                    revert with 'NH{q', 50
                mem[0] = 7
                require ext_code.size(stor7[idx].field_0)
                staticcall stor7[idx].field_0._callFee() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _286 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_286] == mem[_286]
                if _270 and mem[_286] > -1 / _270:
                    revert with 'NH{q', 17
                if _270 * mem[_286] <= stor8:
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
    while idx < stor7.length:
        if idx >= stor7.length:
            revert with 'NH{q', 50
        mem[0] = 7
        require ext_code.size(stor7[idx].field_0)
        staticcall stor7[idx].field_0.poolId() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if stor7[idx].field_160:
            _220 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _232 = mem[_220]
            require mem[_220] == mem[_220]
            if idx >= stor7.length:
                revert with 'NH{q', 50
            mem[0] = 7
            mem[mem[64] + 4] = _232
            mem[mem[64] + 36] = stor7[idx].field_0
            require ext_code.size(stor6)
            staticcall stor6.0x1778809f with:
                    gas gas_remaining wei
                   args _232, stor7[idx].field_0
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _268 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _272 = mem[_268]
            require mem[_268] == mem[_268]
            if idx >= stor7.length:
                revert with 'NH{q', 50
            mem[0] = 7
            if stor7[idx].field_160:
                _286 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                if 0 >= mem[_286]:
                    revert with 'NH{q', 50
                mem[_286 + 32] = stor1
                if 1 >= mem[_286]:
                    revert with 'NH{q', 50
                mem[_286 + 64] = stor2
                mem[_286 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_286 + 100] = _272
                mem[_286 + 132] = 64
                mem[_286 + 164] = mem[_286]
                t = 0
                u = _286 + 32
                v = _286 + 196
                while t < mem[_286]:
                    mem[v] = mem[u + 12 len 20]
                    t = t + 1
                    u = u + 32
                    v = v + 32
                    continue 
                require ext_code.size(stor4)
                staticcall stor4.mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len _286 + (32 * mem[_286]) + -mem[64] + 192]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _560 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _568 = mem[_560]
                require mem[_560] <= test266151307()
                require _560 + mem[_560] + 31 < _560 + return_data.size
                _576 = mem[_560 + mem[_560]]
                if mem[_560 + mem[_560]] > test266151307():
                    revert with 'NH{q', 65
                if _560 + ceil32(return_data.size) + floor32(mem[_560 + mem[_560]]) + 1 > test266151307() or floor32(mem[_560 + mem[_560]]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = _560 + ceil32(return_data.size) + floor32(mem[_560 + mem[_560]]) + 1
                mem[_560 + ceil32(return_data.size)] = _576
                require _568 + (32 * _576) + 32 <= return_data.size
                t = 0
                u = _560 + _568 + 32
                v = _560 + ceil32(return_data.size) + 32
                while t < _576:
                    require mem[u] == mem[u]
                    mem[v] = mem[u]
                    t = t + 1
                    u = u + 32
                    v = v + 32
                    continue 
                if 1 >= _576:
                    revert with 'NH{q', 50
                _848 = mem[_560 + ceil32(return_data.size) + 64]
                if idx >= stor7.length:
                    revert with 'NH{q', 50
                mem[0] = 7
                require ext_code.size(stor7[idx].field_0)
                staticcall stor7[idx].field_0._callFee() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _872 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_872] == mem[_872]
                if _848 and mem[_872] > -1 / _848:
                    revert with 'NH{q', 17
                if _848 * mem[_872] <= stor8:
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = s
                    continue 
            else:
                _287 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                if 0 >= mem[_287]:
                    revert with 'NH{q', 50
                mem[_287 + 32] = stor1
                if 1 >= mem[_287]:
                    revert with 'NH{q', 50
                mem[_287 + 64] = stor2
                mem[_287 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_287 + 100] = _272
                mem[_287 + 132] = 64
                mem[_287 + 164] = mem[_287]
                t = 0
                u = _287 + 32
                v = _287 + 196
                while t < mem[_287]:
                    mem[v] = mem[u + 12 len 20]
                    t = t + 1
                    u = u + 32
                    v = v + 32
                    continue 
                require ext_code.size(stor3)
                staticcall stor3.mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len _287 + (32 * mem[_287]) + -mem[64] + 192]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _561 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _569 = mem[_561]
                require mem[_561] <= test266151307()
                require _561 + mem[_561] + 31 < _561 + return_data.size
                _577 = mem[_561 + mem[_561]]
                if mem[_561 + mem[_561]] > test266151307():
                    revert with 'NH{q', 65
                if _561 + ceil32(return_data.size) + floor32(mem[_561 + mem[_561]]) + 1 > test266151307() or floor32(mem[_561 + mem[_561]]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = _561 + ceil32(return_data.size) + floor32(mem[_561 + mem[_561]]) + 1
                mem[_561 + ceil32(return_data.size)] = _577
                require _569 + (32 * _577) + 32 <= return_data.size
                t = 0
                u = _561 + _569 + 32
                v = _561 + ceil32(return_data.size) + 32
                while t < _577:
                    require mem[u] == mem[u]
                    mem[v] = mem[u]
                    t = t + 1
                    u = u + 32
                    v = v + 32
                    continue 
                if 1 >= _577:
                    revert with 'NH{q', 50
                _849 = mem[_561 + ceil32(return_data.size) + 64]
                if idx >= stor7.length:
                    revert with 'NH{q', 50
                mem[0] = 7
                require ext_code.size(stor7[idx].field_0)
                staticcall stor7[idx].field_0._callFee() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _873 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_873] == mem[_873]
                if _849 and mem[_873] > -1 / _849:
                    revert with 'NH{q', 17
                if _849 * mem[_873] <= stor8:
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = s
                    continue 
        else:
            _221 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _233 = mem[_221]
            require mem[_221] == mem[_221]
            if idx >= stor7.length:
                revert with 'NH{q', 50
            mem[0] = 7
            mem[mem[64] + 4] = _233
            mem[mem[64] + 36] = stor7[idx].field_0
            require ext_code.size(stor5)
            staticcall stor5.0xa279b07f with:
                    gas gas_remaining wei
                   args _233, stor7[idx].field_0
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _269 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _273 = mem[_269]
            require mem[_269] == mem[_269]
            if idx >= stor7.length:
                revert with 'NH{q', 50
            mem[0] = 7
            if stor7[idx].field_160:
                _288 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                if 0 >= mem[_288]:
                    revert with 'NH{q', 50
                mem[_288 + 32] = stor1
                if 1 >= mem[_288]:
                    revert with 'NH{q', 50
                mem[_288 + 64] = stor2
                mem[_288 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_288 + 100] = _273
                mem[_288 + 132] = 64
                mem[_288 + 164] = mem[_288]
                t = 0
                u = _288 + 32
                v = _288 + 196
                while t < mem[_288]:
                    mem[v] = mem[u + 12 len 20]
                    t = t + 1
                    u = u + 32
                    v = v + 32
                    continue 
                require ext_code.size(stor4)
                staticcall stor4.mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len _288 + (32 * mem[_288]) + -mem[64] + 192]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _562 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _570 = mem[_562]
                require mem[_562] <= test266151307()
                require _562 + mem[_562] + 31 < _562 + return_data.size
                _578 = mem[_562 + mem[_562]]
                if mem[_562 + mem[_562]] > test266151307():
                    revert with 'NH{q', 65
                if _562 + ceil32(return_data.size) + floor32(mem[_562 + mem[_562]]) + 1 > test266151307() or floor32(mem[_562 + mem[_562]]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = _562 + ceil32(return_data.size) + floor32(mem[_562 + mem[_562]]) + 1
                mem[_562 + ceil32(return_data.size)] = _578
                require _570 + (32 * _578) + 32 <= return_data.size
                t = 0
                u = _562 + _570 + 32
                v = _562 + ceil32(return_data.size) + 32
                while t < _578:
                    require mem[u] == mem[u]
                    mem[v] = mem[u]
                    t = t + 1
                    u = u + 32
                    v = v + 32
                    continue 
                if 1 >= _578:
                    revert with 'NH{q', 50
                _850 = mem[_562 + ceil32(return_data.size) + 64]
                if idx >= stor7.length:
                    revert with 'NH{q', 50
                mem[0] = 7
                require ext_code.size(stor7[idx].field_0)
                staticcall stor7[idx].field_0._callFee() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _874 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_874] == mem[_874]
                if _850 and mem[_874] > -1 / _850:
                    revert with 'NH{q', 17
                if _850 * mem[_874] <= stor8:
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = s
                    continue 
            else:
                _289 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                if 0 >= mem[_289]:
                    revert with 'NH{q', 50
                mem[_289 + 32] = stor1
                if 1 >= mem[_289]:
                    revert with 'NH{q', 50
                mem[_289 + 64] = stor2
                mem[_289 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_289 + 100] = _273
                mem[_289 + 132] = 64
                mem[_289 + 164] = mem[_289]
                t = 0
                u = _289 + 32
                v = _289 + 196
                while t < mem[_289]:
                    mem[v] = mem[u + 12 len 20]
                    t = t + 1
                    u = u + 32
                    v = v + 32
                    continue 
                require ext_code.size(stor3)
                staticcall stor3.mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len _289 + (32 * mem[_289]) + -mem[64] + 192]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _563 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _571 = mem[_563]
                require mem[_563] <= test266151307()
                require _563 + mem[_563] + 31 < _563 + return_data.size
                _579 = mem[_563 + mem[_563]]
                if mem[_563 + mem[_563]] > test266151307():
                    revert with 'NH{q', 65
                if _563 + ceil32(return_data.size) + floor32(mem[_563 + mem[_563]]) + 1 > test266151307() or floor32(mem[_563 + mem[_563]]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = _563 + ceil32(return_data.size) + floor32(mem[_563 + mem[_563]]) + 1
                mem[_563 + ceil32(return_data.size)] = _579
                require _571 + (32 * _579) + 32 <= return_data.size
                t = 0
                u = _563 + _571 + 32
                v = _563 + ceil32(return_data.size) + 32
                while t < _579:
                    require mem[u] == mem[u]
                    mem[v] = mem[u]
                    t = t + 1
                    u = u + 32
                    v = v + 32
                    continue 
                if 1 >= _579:
                    revert with 'NH{q', 50
                _851 = mem[_563 + ceil32(return_data.size) + 64]
                if idx >= stor7.length:
                    revert with 'NH{q', 50
                mem[0] = 7
                require ext_code.size(stor7[idx].field_0)
                staticcall stor7[idx].field_0._callFee() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _875 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_875] == mem[_875]
                if _851 and mem[_875] > -1 / _851:
                    revert with 'NH{q', 17
                if _851 * mem[_875] <= stor8:
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
    _213 = mem[64]
    mem[mem[64]] = s
    mem[64] = mem[64] + (32 * s) + 32
    if not s:
        idx = 0
        s = 0
        while idx < stor7.length:
            if idx >= stor7.length:
                revert with 'NH{q', 50
            mem[0] = 7
            require ext_code.size(stor7[idx].field_0)
            staticcall stor7[idx].field_0.poolId() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if stor7[idx].field_160:
                _564 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _572 = mem[_564]
                require mem[_564] == mem[_564]
                if idx >= stor7.length:
                    revert with 'NH{q', 50
                mem[0] = 7
                mem[mem[64] + 4] = _572
                mem[mem[64] + 36] = stor7[idx].field_0
                require ext_code.size(stor6)
                staticcall stor6.0x1778809f with:
                        gas gas_remaining wei
                       args _572, stor7[idx].field_0
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _612 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _628 = mem[_612]
                require mem[_612] == mem[_612]
                if idx >= stor7.length:
                    revert with 'NH{q', 50
                mem[0] = 7
                if stor7[idx].field_160:
                    _644 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    if 0 >= mem[_644]:
                        revert with 'NH{q', 50
                    mem[_644 + 32] = stor1
                    if 1 >= mem[_644]:
                        revert with 'NH{q', 50
                    mem[_644 + 64] = stor2
                    mem[_644 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_644 + 100] = _628
                    mem[_644 + 132] = 64
                    mem[_644 + 164] = mem[_644]
                    t = 0
                    u = _644 + 32
                    v = _644 + 196
                    while t < mem[_644]:
                        mem[v] = mem[u + 12 len 20]
                        t = t + 1
                        u = u + 32
                        v = v + 32
                        continue 
                    require ext_code.size(stor4)
                    staticcall stor4.mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _644 + (32 * mem[_644]) + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _840 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _852 = mem[_840]
                    require mem[_840] <= test266151307()
                    require _840 + mem[_840] + 31 < _840 + return_data.size
                    _876 = mem[_840 + mem[_840]]
                    if mem[_840 + mem[_840]] > test266151307():
                        revert with 'NH{q', 65
                    if _840 + ceil32(return_data.size) + floor32(mem[_840 + mem[_840]]) + 1 > test266151307() or floor32(mem[_840 + mem[_840]]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _840 + ceil32(return_data.size) + floor32(mem[_840 + mem[_840]]) + 1
                    mem[_840 + ceil32(return_data.size)] = _876
                    require _852 + (32 * _876) + 32 <= return_data.size
                    t = 0
                    u = _840 + _852 + 32
                    v = _840 + ceil32(return_data.size) + 32
                    while t < _876:
                        require mem[u] == mem[u]
                        mem[v] = mem[u]
                        t = t + 1
                        u = u + 32
                        v = v + 32
                        continue 
                    if 1 >= _876:
                        revert with 'NH{q', 50
                    _992 = mem[_840 + ceil32(return_data.size) + 64]
                    if idx >= stor7.length:
                        revert with 'NH{q', 50
                    mem[0] = 7
                    require ext_code.size(stor7[idx].field_0)
                    staticcall stor7[idx].field_0._callFee() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1024 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1024] == mem[_1024]
                    if _992 and mem[_1024] > -1 / _992:
                        revert with 'NH{q', 17
                    if _992 * mem[_1024] <= stor8:
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = s
                        continue 
                else:
                    _645 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    if 0 >= mem[_645]:
                        revert with 'NH{q', 50
                    mem[_645 + 32] = stor1
                    if 1 >= mem[_645]:
                        revert with 'NH{q', 50
                    mem[_645 + 64] = stor2
                    mem[_645 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_645 + 100] = _628
                    mem[_645 + 132] = 64
                    mem[_645 + 164] = mem[_645]
                    t = 0
                    u = _645 + 32
                    v = _645 + 196
                    while t < mem[_645]:
                        mem[v] = mem[u + 12 len 20]
                        t = t + 1
                        u = u + 32
                        v = v + 32
                        continue 
                    require ext_code.size(stor3)
                    staticcall stor3.mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _645 + (32 * mem[_645]) + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _841 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _853 = mem[_841]
                    require mem[_841] <= test266151307()
                    require _841 + mem[_841] + 31 < _841 + return_data.size
                    _877 = mem[_841 + mem[_841]]
                    if mem[_841 + mem[_841]] > test266151307():
                        revert with 'NH{q', 65
                    if _841 + ceil32(return_data.size) + floor32(mem[_841 + mem[_841]]) + 1 > test266151307() or floor32(mem[_841 + mem[_841]]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _841 + ceil32(return_data.size) + floor32(mem[_841 + mem[_841]]) + 1
                    mem[_841 + ceil32(return_data.size)] = _877
                    require _853 + (32 * _877) + 32 <= return_data.size
                    t = 0
                    u = _841 + _853 + 32
                    v = _841 + ceil32(return_data.size) + 32
                    while t < _877:
                        require mem[u] == mem[u]
                        mem[v] = mem[u]
                        t = t + 1
                        u = u + 32
                        v = v + 32
                        continue 
                    if 1 >= _877:
                        revert with 'NH{q', 50
                    _993 = mem[_841 + ceil32(return_data.size) + 64]
                    if idx >= stor7.length:
                        revert with 'NH{q', 50
                    mem[0] = 7
                    require ext_code.size(stor7[idx].field_0)
                    staticcall stor7[idx].field_0._callFee() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1025 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1025] == mem[_1025]
                    if _993 and mem[_1025] > -1 / _993:
                        revert with 'NH{q', 17
                    if _993 * mem[_1025] <= stor8:
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = s
                        continue 
            else:
                _565 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _573 = mem[_565]
                require mem[_565] == mem[_565]
                if idx >= stor7.length:
                    revert with 'NH{q', 50
                mem[0] = 7
                mem[mem[64] + 4] = _573
                mem[mem[64] + 36] = stor7[idx].field_0
                require ext_code.size(stor5)
                staticcall stor5.0xa279b07f with:
                        gas gas_remaining wei
                       args _573, stor7[idx].field_0
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _613 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _629 = mem[_613]
                require mem[_613] == mem[_613]
                if idx >= stor7.length:
                    revert with 'NH{q', 50
                mem[0] = 7
                if stor7[idx].field_160:
                    _646 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    if 0 >= mem[_646]:
                        revert with 'NH{q', 50
                    mem[_646 + 32] = stor1
                    if 1 >= mem[_646]:
                        revert with 'NH{q', 50
                    mem[_646 + 64] = stor2
                    mem[_646 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_646 + 100] = _629
                    mem[_646 + 132] = 64
                    mem[_646 + 164] = mem[_646]
                    t = 0
                    u = _646 + 32
                    v = _646 + 196
                    while t < mem[_646]:
                        mem[v] = mem[u + 12 len 20]
                        t = t + 1
                        u = u + 32
                        v = v + 32
                        continue 
                    require ext_code.size(stor4)
                    staticcall stor4.mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _646 + (32 * mem[_646]) + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _842 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _854 = mem[_842]
                    require mem[_842] <= test266151307()
                    require _842 + mem[_842] + 31 < _842 + return_data.size
                    _878 = mem[_842 + mem[_842]]
                    if mem[_842 + mem[_842]] > test266151307():
                        revert with 'NH{q', 65
                    if _842 + ceil32(return_data.size) + floor32(mem[_842 + mem[_842]]) + 1 > test266151307() or floor32(mem[_842 + mem[_842]]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _842 + ceil32(return_data.size) + floor32(mem[_842 + mem[_842]]) + 1
                    mem[_842 + ceil32(return_data.size)] = _878
                    require _854 + (32 * _878) + 32 <= return_data.size
                    t = 0
                    u = _842 + _854 + 32
                    v = _842 + ceil32(return_data.size) + 32
                    while t < _878:
                        require mem[u] == mem[u]
                        mem[v] = mem[u]
                        t = t + 1
                        u = u + 32
                        v = v + 32
                        continue 
                    if 1 >= _878:
                        revert with 'NH{q', 50
                    _994 = mem[_842 + ceil32(return_data.size) + 64]
                    if idx >= stor7.length:
                        revert with 'NH{q', 50
                    mem[0] = 7
                    require ext_code.size(stor7[idx].field_0)
                    staticcall stor7[idx].field_0._callFee() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1026 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1026] == mem[_1026]
                    if _994 and mem[_1026] > -1 / _994:
                        revert with 'NH{q', 17
                    if _994 * mem[_1026] <= stor8:
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = s
                        continue 
                else:
                    _647 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    if 0 >= mem[_647]:
                        revert with 'NH{q', 50
                    mem[_647 + 32] = stor1
                    if 1 >= mem[_647]:
                        revert with 'NH{q', 50
                    mem[_647 + 64] = stor2
                    mem[_647 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_647 + 100] = _629
                    mem[_647 + 132] = 64
                    mem[_647 + 164] = mem[_647]
                    t = 0
                    u = _647 + 32
                    v = _647 + 196
                    while t < mem[_647]:
                        mem[v] = mem[u + 12 len 20]
                        t = t + 1
                        u = u + 32
                        v = v + 32
                        continue 
                    require ext_code.size(stor3)
                    staticcall stor3.mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _647 + (32 * mem[_647]) + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _843 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _855 = mem[_843]
                    require mem[_843] <= test266151307()
                    require _843 + mem[_843] + 31 < _843 + return_data.size
                    _879 = mem[_843 + mem[_843]]
                    if mem[_843 + mem[_843]] > test266151307():
                        revert with 'NH{q', 65
                    if _843 + ceil32(return_data.size) + floor32(mem[_843 + mem[_843]]) + 1 > test266151307() or floor32(mem[_843 + mem[_843]]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _843 + ceil32(return_data.size) + floor32(mem[_843 + mem[_843]]) + 1
                    mem[_843 + ceil32(return_data.size)] = _879
                    require _855 + (32 * _879) + 32 <= return_data.size
                    t = 0
                    u = _843 + _855 + 32
                    v = _843 + ceil32(return_data.size) + 32
                    while t < _879:
                        require mem[u] == mem[u]
                        mem[v] = mem[u]
                        t = t + 1
                        u = u + 32
                        v = v + 32
                        continue 
                    if 1 >= _879:
                        revert with 'NH{q', 50
                    _995 = mem[_843 + ceil32(return_data.size) + 64]
                    if idx >= stor7.length:
                        revert with 'NH{q', 50
                    mem[0] = 7
                    require ext_code.size(stor7[idx].field_0)
                    staticcall stor7[idx].field_0._callFee() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1027 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1027] == mem[_1027]
                    if _995 and mem[_1027] > -1 / _995:
                        revert with 'NH{q', 17
                    if _995 * mem[_1027] <= stor8:
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = s
                        continue 
            if idx >= stor7.length:
                revert with 'NH{q', 50
            mem[0] = 7
            if s >= mem[_213]:
                revert with 'NH{q', 50
            mem[(32 * s) + _213 + 32] = stor7[idx].field_0
            if s == -1:
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s + 1
            continue 
        _538 = mem[64]
        mem[mem[64]] = 32
        _558 = mem[_213]
        mem[mem[64] + 32] = mem[_213]
        idx = 0
        s = _213 + 32
        t = mem[64] + 64
        while idx < _558:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _538 + (32 * _558) + -mem[64] + 64
    mem[_213 + 32 len 32 * s] = call.data[calldata.size len 32 * s]
    idx = 0
    s = 0
    while idx < stor7.length:
        if idx >= stor7.length:
            revert with 'NH{q', 50
        mem[0] = 7
        require ext_code.size(stor7[idx].field_0)
        staticcall stor7[idx].field_0.poolId() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if stor7[idx].field_160:
            _566 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _574 = mem[_566]
            require mem[_566] == mem[_566]
            if idx >= stor7.length:
                revert with 'NH{q', 50
            mem[0] = 7
            mem[mem[64] + 4] = _574
            mem[mem[64] + 36] = stor7[idx].field_0
            require ext_code.size(stor6)
            staticcall stor6.0x1778809f with:
                    gas gas_remaining wei
                   args _574, stor7[idx].field_0
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _614 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _630 = mem[_614]
            require mem[_614] == mem[_614]
            if idx >= stor7.length:
                revert with 'NH{q', 50
            mem[0] = 7
            if stor7[idx].field_160:
                _648 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                if 0 >= mem[_648]:
                    revert with 'NH{q', 50
                mem[_648 + 32] = stor1
                if 1 >= mem[_648]:
                    revert with 'NH{q', 50
                mem[_648 + 64] = stor2
                mem[_648 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_648 + 100] = _630
                mem[_648 + 132] = 64
                mem[_648 + 164] = mem[_648]
                t = 0
                u = _648 + 32
                v = _648 + 196
                while t < mem[_648]:
                    mem[v] = mem[u + 12 len 20]
                    t = t + 1
                    u = u + 32
                    v = v + 32
                    continue 
                require ext_code.size(stor4)
                staticcall stor4.mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len _648 + (32 * mem[_648]) + -mem[64] + 192]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _844 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _856 = mem[_844]
                require mem[_844] <= test266151307()
                require _844 + mem[_844] + 31 < _844 + return_data.size
                _880 = mem[_844 + mem[_844]]
                if mem[_844 + mem[_844]] > test266151307():
                    revert with 'NH{q', 65
                if _844 + ceil32(return_data.size) + floor32(mem[_844 + mem[_844]]) + 1 > test266151307() or floor32(mem[_844 + mem[_844]]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = _844 + ceil32(return_data.size) + floor32(mem[_844 + mem[_844]]) + 1
                mem[_844 + ceil32(return_data.size)] = _880
                require _856 + (32 * _880) + 32 <= return_data.size
                t = 0
                u = _844 + _856 + 32
                v = _844 + ceil32(return_data.size) + 32
                while t < _880:
                    require mem[u] == mem[u]
                    mem[v] = mem[u]
                    t = t + 1
                    u = u + 32
                    v = v + 32
                    continue 
                if 1 >= _880:
                    revert with 'NH{q', 50
                _996 = mem[_844 + ceil32(return_data.size) + 64]
                if idx >= stor7.length:
                    revert with 'NH{q', 50
                mem[0] = 7
                require ext_code.size(stor7[idx].field_0)
                staticcall stor7[idx].field_0._callFee() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1028 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1028] == mem[_1028]
                if _996 and mem[_1028] > -1 / _996:
                    revert with 'NH{q', 17
                if _996 * mem[_1028] <= stor8:
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = s
                    continue 
            else:
                _649 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                if 0 >= mem[_649]:
                    revert with 'NH{q', 50
                mem[_649 + 32] = stor1
                if 1 >= mem[_649]:
                    revert with 'NH{q', 50
                mem[_649 + 64] = stor2
                mem[_649 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_649 + 100] = _630
                mem[_649 + 132] = 64
                mem[_649 + 164] = mem[_649]
                t = 0
                u = _649 + 32
                v = _649 + 196
                while t < mem[_649]:
                    mem[v] = mem[u + 12 len 20]
                    t = t + 1
                    u = u + 32
                    v = v + 32
                    continue 
                require ext_code.size(stor3)
                staticcall stor3.mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len _649 + (32 * mem[_649]) + -mem[64] + 192]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _845 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _857 = mem[_845]
                require mem[_845] <= test266151307()
                require _845 + mem[_845] + 31 < _845 + return_data.size
                _881 = mem[_845 + mem[_845]]
                if mem[_845 + mem[_845]] > test266151307():
                    revert with 'NH{q', 65
                if _845 + ceil32(return_data.size) + floor32(mem[_845 + mem[_845]]) + 1 > test266151307() or floor32(mem[_845 + mem[_845]]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = _845 + ceil32(return_data.size) + floor32(mem[_845 + mem[_845]]) + 1
                mem[_845 + ceil32(return_data.size)] = _881
                require _857 + (32 * _881) + 32 <= return_data.size
                t = 0
                u = _845 + _857 + 32
                v = _845 + ceil32(return_data.size) + 32
                while t < _881:
                    require mem[u] == mem[u]
                    mem[v] = mem[u]
                    t = t + 1
                    u = u + 32
                    v = v + 32
                    continue 
                if 1 >= _881:
                    revert with 'NH{q', 50
                _997 = mem[_845 + ceil32(return_data.size) + 64]
                if idx >= stor7.length:
                    revert with 'NH{q', 50
                mem[0] = 7
                require ext_code.size(stor7[idx].field_0)
                staticcall stor7[idx].field_0._callFee() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1029 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1029] == mem[_1029]
                if _997 and mem[_1029] > -1 / _997:
                    revert with 'NH{q', 17
                if _997 * mem[_1029] <= stor8:
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = s
                    continue 
        else:
            _567 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _575 = mem[_567]
            require mem[_567] == mem[_567]
            if idx >= stor7.length:
                revert with 'NH{q', 50
            mem[0] = 7
            mem[mem[64] + 4] = _575
            mem[mem[64] + 36] = stor7[idx].field_0
            require ext_code.size(stor5)
            staticcall stor5.0xa279b07f with:
                    gas gas_remaining wei
                   args _575, stor7[idx].field_0
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _615 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _631 = mem[_615]
            require mem[_615] == mem[_615]
            if idx >= stor7.length:
                revert with 'NH{q', 50
            mem[0] = 7
            if stor7[idx].field_160:
                _650 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                if 0 >= mem[_650]:
                    revert with 'NH{q', 50
                mem[_650 + 32] = stor1
                if 1 >= mem[_650]:
                    revert with 'NH{q', 50
                mem[_650 + 64] = stor2
                mem[_650 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_650 + 100] = _631
                mem[_650 + 132] = 64
                mem[_650 + 164] = mem[_650]
                t = 0
                u = _650 + 32
                v = _650 + 196
                while t < mem[_650]:
                    mem[v] = mem[u + 12 len 20]
                    t = t + 1
                    u = u + 32
                    v = v + 32
                    continue 
                require ext_code.size(stor4)
                staticcall stor4.mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len _650 + (32 * mem[_650]) + -mem[64] + 192]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _846 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _858 = mem[_846]
                require mem[_846] <= test266151307()
                require _846 + mem[_846] + 31 < _846 + return_data.size
                _882 = mem[_846 + mem[_846]]
                if mem[_846 + mem[_846]] > test266151307():
                    revert with 'NH{q', 65
                if _846 + ceil32(return_data.size) + floor32(mem[_846 + mem[_846]]) + 1 > test266151307() or floor32(mem[_846 + mem[_846]]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = _846 + ceil32(return_data.size) + floor32(mem[_846 + mem[_846]]) + 1
                mem[_846 + ceil32(return_data.size)] = _882
                require _858 + (32 * _882) + 32 <= return_data.size
                t = 0
                u = _846 + _858 + 32
                v = _846 + ceil32(return_data.size) + 32
                while t < _882:
                    require mem[u] == mem[u]
                    mem[v] = mem[u]
                    t = t + 1
                    u = u + 32
                    v = v + 32
                    continue 
                if 1 >= _882:
                    revert with 'NH{q', 50
                _998 = mem[_846 + ceil32(return_data.size) + 64]
                if idx >= stor7.length:
                    revert with 'NH{q', 50
                mem[0] = 7
                require ext_code.size(stor7[idx].field_0)
                staticcall stor7[idx].field_0._callFee() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1030 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1030] == mem[_1030]
                if _998 and mem[_1030] > -1 / _998:
                    revert with 'NH{q', 17
                if _998 * mem[_1030] <= stor8:
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = s
                    continue 
            else:
                _651 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                if 0 >= mem[_651]:
                    revert with 'NH{q', 50
                mem[_651 + 32] = stor1
                if 1 >= mem[_651]:
                    revert with 'NH{q', 50
                mem[_651 + 64] = stor2
                mem[_651 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_651 + 100] = _631
                mem[_651 + 132] = 64
                mem[_651 + 164] = mem[_651]
                t = 0
                u = _651 + 32
                v = _651 + 196
                while t < mem[_651]:
                    mem[v] = mem[u + 12 len 20]
                    t = t + 1
                    u = u + 32
                    v = v + 32
                    continue 
                require ext_code.size(stor3)
                staticcall stor3.mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len _651 + (32 * mem[_651]) + -mem[64] + 192]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _847 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _859 = mem[_847]
                require mem[_847] <= test266151307()
                require _847 + mem[_847] + 31 < _847 + return_data.size
                _883 = mem[_847 + mem[_847]]
                if mem[_847 + mem[_847]] > test266151307():
                    revert with 'NH{q', 65
                if _847 + ceil32(return_data.size) + floor32(mem[_847 + mem[_847]]) + 1 > test266151307() or floor32(mem[_847 + mem[_847]]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = _847 + ceil32(return_data.size) + floor32(mem[_847 + mem[_847]]) + 1
                mem[_847 + ceil32(return_data.size)] = _883
                require _859 + (32 * _883) + 32 <= return_data.size
                t = 0
                u = _847 + _859 + 32
                v = _847 + ceil32(return_data.size) + 32
                while t < _883:
                    require mem[u] == mem[u]
                    mem[v] = mem[u]
                    t = t + 1
                    u = u + 32
                    v = v + 32
                    continue 
                if 1 >= _883:
                    revert with 'NH{q', 50
                _999 = mem[_847 + ceil32(return_data.size) + 64]
                if idx >= stor7.length:
                    revert with 'NH{q', 50
                mem[0] = 7
                require ext_code.size(stor7[idx].field_0)
                staticcall stor7[idx].field_0._callFee() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1031 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1031] == mem[_1031]
                if _999 and mem[_1031] > -1 / _999:
                    revert with 'NH{q', 17
                if _999 * mem[_1031] <= stor8:
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = s
                    continue 
        if idx >= stor7.length:
            revert with 'NH{q', 50
        mem[0] = 7
        if s >= mem[_213]:
            revert with 'NH{q', 50
        mem[(32 * s) + _213 + 32] = stor7[idx].field_0
        if s == -1:
            revert with 'NH{q', 17
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = s + 1
        continue 
    _540 = mem[64]
    mem[mem[64]] = 32
    _559 = mem[_213]
    mem[mem[64] + 32] = mem[_213]
    idx = 0
    s = _213 + 32
    t = mem[64] + 64
    while idx < _559:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len _540 + (32 * _559) + -mem[64] + 64
}



}
