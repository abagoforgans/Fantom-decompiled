contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function sub_1a7a7b8f(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] == address(cd[4])
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (96 * ('cd', 36).length) + 36 <= calldata.size
    require ('cd', 36).length <= test266151307()
    mem[96] = ('cd', 36).length
    if not ('cd', 36).length:
        require ext_code.size(address(cd[4]))
        staticcall address(cd[4]).factory() with:
                gas gas_remaining wei
        mem[(32 * ('cd', 36).length) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * ('cd', 36).length) + ceil32(return_data.size) + 128
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        idx = 0
        while idx < ('cd', 36).length:
            require cd[((96 * idx) + cd[36] + 68)] == address(cd[((96 * idx) + cd[36] + 68)])
            require idx < ('cd', 36).length
            require cd[((96 * idx) + cd[36] + 100)] == address(cd[((96 * idx) + cd[36] + 100)])
            mem[mem[64] + 4] = address(cd[((96 * idx) + cd[36] + 68)])
            mem[mem[64] + 36] = address(cd[((96 * idx) + cd[36] + 100)])
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).getPair(address rg1, address rg2) with:
                    gas gas_remaining wei
                   args address(cd[((96 * idx) + cd[36] + 68)]), address(cd[((96 * idx) + cd[36] + 100)])
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _209 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_209] == mem[_209 + 12 len 20]
            if not mem[_209 + 12 len 20]:
                _212 = mem[64]
                mem[64] = mem[64] + 96
                mem[_212] = 0
                mem[_212 + 32] = 0
                mem[_212 + 64] = 0
                require idx < mem[96]
                mem[(32 * idx) + 128] = _212
            else:
                require ext_code.size(mem[_209 + 12 len 20])
                staticcall mem[_209 + 12 len 20].getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if address(cd[((96 * idx) + cd[36] + 68)]) < address(cd[((96 * idx) + cd[36] + 100)]):
                    _221 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _224 = mem[_221]
                    require mem[_221] == mem[_221 + 18 len 14]
                    _226 = mem[_221 + 32]
                    require mem[_221 + 32] == mem[_221 + 50 len 14]
                    require mem[_221 + 64] == mem[_221 + 92 len 4]
                    require idx < ('cd', 36).length
                    if 997 * cd[((96 * idx) + cd[36] + 36)] / 997 != cd[((96 * idx) + cd[36] + 36)]:
                        revert with 0, 'ds-math-mul-overflow'
                    if address(cd[((96 * idx) + cd[36] + 68)]) == address(cd[((96 * idx) + cd[36] + 68)]):
                        if not mem[_221 + 50 len 14]:
                            if 1000 * mem[_221 + 18 len 14] / 1000 != mem[_221 + 18 len 14]:
                                revert with 0, 'ds-math-mul-overflow'
                            if (1000 * mem[_221 + 18 len 14]) + (997 * cd[((96 * idx) + cd[36] + 36)]) < 1000 * mem[_221 + 18 len 14]:
                                revert with 0, 'ds-math-add-overflow'
                            require (1000 * mem[_221 + 18 len 14]) + (997 * cd[((96 * idx) + cd[36] + 36)])
                            _300 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_300] = 0 / (1000 * Mask(112, 0, _224)) + (997 * cd[((96 * idx) + cd[36] + 36)])
                            mem[_300 + 32] = Mask(112, 0, _224)
                            mem[_300 + 64] = Mask(112, 0, _226)
                            require idx < mem[96]
                            mem[(32 * idx) + 128] = _300
                        else:
                            require mem[_221 + 50 len 14]
                            if 997 * cd[((96 * idx) + cd[36] + 36)] * mem[_221 + 50 len 14] / mem[_221 + 50 len 14] != 997 * cd[((96 * idx) + cd[36] + 36)]:
                                revert with 0, 'ds-math-mul-overflow'
                            if 1000 * mem[_221 + 18 len 14] / 1000 != mem[_221 + 18 len 14]:
                                revert with 0, 'ds-math-mul-overflow'
                            if (1000 * mem[_221 + 18 len 14]) + (997 * cd[((96 * idx) + cd[36] + 36)]) < 1000 * mem[_221 + 18 len 14]:
                                revert with 0, 'ds-math-add-overflow'
                            require (1000 * mem[_221 + 18 len 14]) + (997 * cd[((96 * idx) + cd[36] + 36)])
                            _308 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_308] = 997 * cd[((96 * idx) + cd[36] + 36)] * Mask(112, 0, _226) / (1000 * Mask(112, 0, _224)) + (997 * cd[((96 * idx) + cd[36] + 36)])
                            mem[_308 + 32] = Mask(112, 0, _224)
                            mem[_308 + 64] = Mask(112, 0, _226)
                            require idx < mem[96]
                            mem[(32 * idx) + 128] = _308
                    else:
                        if not mem[_221 + 18 len 14]:
                            if 1000 * mem[_221 + 50 len 14] / 1000 != mem[_221 + 50 len 14]:
                                revert with 0, 'ds-math-mul-overflow'
                            if (1000 * mem[_221 + 50 len 14]) + (997 * cd[((96 * idx) + cd[36] + 36)]) < 1000 * mem[_221 + 50 len 14]:
                                revert with 0, 'ds-math-add-overflow'
                            require (1000 * mem[_221 + 50 len 14]) + (997 * cd[((96 * idx) + cd[36] + 36)])
                            _302 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_302] = 0 / (1000 * Mask(112, 0, _226)) + (997 * cd[((96 * idx) + cd[36] + 36)])
                            mem[_302 + 32] = Mask(112, 0, _226)
                            mem[_302 + 64] = Mask(112, 0, _224)
                            require idx < mem[96]
                            mem[(32 * idx) + 128] = _302
                        else:
                            require mem[_221 + 18 len 14]
                            if 997 * cd[((96 * idx) + cd[36] + 36)] * mem[_221 + 18 len 14] / mem[_221 + 18 len 14] != 997 * cd[((96 * idx) + cd[36] + 36)]:
                                revert with 0, 'ds-math-mul-overflow'
                            if 1000 * mem[_221 + 50 len 14] / 1000 != mem[_221 + 50 len 14]:
                                revert with 0, 'ds-math-mul-overflow'
                            if (1000 * mem[_221 + 50 len 14]) + (997 * cd[((96 * idx) + cd[36] + 36)]) < 1000 * mem[_221 + 50 len 14]:
                                revert with 0, 'ds-math-add-overflow'
                            require (1000 * mem[_221 + 50 len 14]) + (997 * cd[((96 * idx) + cd[36] + 36)])
                            _310 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_310] = 997 * cd[((96 * idx) + cd[36] + 36)] * Mask(112, 0, _224) / (1000 * Mask(112, 0, _226)) + (997 * cd[((96 * idx) + cd[36] + 36)])
                            mem[_310 + 32] = Mask(112, 0, _226)
                            mem[_310 + 64] = Mask(112, 0, _224)
                            require idx < mem[96]
                            mem[(32 * idx) + 128] = _310
                else:
                    _222 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _225 = mem[_222]
                    require mem[_222] == mem[_222 + 18 len 14]
                    _227 = mem[_222 + 32]
                    require mem[_222 + 32] == mem[_222 + 50 len 14]
                    require mem[_222 + 64] == mem[_222 + 92 len 4]
                    require idx < ('cd', 36).length
                    if 997 * cd[((96 * idx) + cd[36] + 36)] / 997 != cd[((96 * idx) + cd[36] + 36)]:
                        revert with 0, 'ds-math-mul-overflow'
                    if address(cd[((96 * idx) + cd[36] + 68)]) == address(cd[((96 * idx) + cd[36] + 100)]):
                        if not mem[_222 + 50 len 14]:
                            if 1000 * mem[_222 + 18 len 14] / 1000 != mem[_222 + 18 len 14]:
                                revert with 0, 'ds-math-mul-overflow'
                            if (1000 * mem[_222 + 18 len 14]) + (997 * cd[((96 * idx) + cd[36] + 36)]) < 1000 * mem[_222 + 18 len 14]:
                                revert with 0, 'ds-math-add-overflow'
                            require (1000 * mem[_222 + 18 len 14]) + (997 * cd[((96 * idx) + cd[36] + 36)])
                            _304 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_304] = 0 / (1000 * Mask(112, 0, _225)) + (997 * cd[((96 * idx) + cd[36] + 36)])
                            mem[_304 + 32] = Mask(112, 0, _225)
                            mem[_304 + 64] = Mask(112, 0, _227)
                            require idx < mem[96]
                            mem[(32 * idx) + 128] = _304
                        else:
                            require mem[_222 + 50 len 14]
                            if 997 * cd[((96 * idx) + cd[36] + 36)] * mem[_222 + 50 len 14] / mem[_222 + 50 len 14] != 997 * cd[((96 * idx) + cd[36] + 36)]:
                                revert with 0, 'ds-math-mul-overflow'
                            if 1000 * mem[_222 + 18 len 14] / 1000 != mem[_222 + 18 len 14]:
                                revert with 0, 'ds-math-mul-overflow'
                            if (1000 * mem[_222 + 18 len 14]) + (997 * cd[((96 * idx) + cd[36] + 36)]) < 1000 * mem[_222 + 18 len 14]:
                                revert with 0, 'ds-math-add-overflow'
                            require (1000 * mem[_222 + 18 len 14]) + (997 * cd[((96 * idx) + cd[36] + 36)])
                            _312 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_312] = 997 * cd[((96 * idx) + cd[36] + 36)] * Mask(112, 0, _227) / (1000 * Mask(112, 0, _225)) + (997 * cd[((96 * idx) + cd[36] + 36)])
                            mem[_312 + 32] = Mask(112, 0, _225)
                            mem[_312 + 64] = Mask(112, 0, _227)
                            require idx < mem[96]
                            mem[(32 * idx) + 128] = _312
                    else:
                        if not mem[_222 + 18 len 14]:
                            if 1000 * mem[_222 + 50 len 14] / 1000 != mem[_222 + 50 len 14]:
                                revert with 0, 'ds-math-mul-overflow'
                            if (1000 * mem[_222 + 50 len 14]) + (997 * cd[((96 * idx) + cd[36] + 36)]) < 1000 * mem[_222 + 50 len 14]:
                                revert with 0, 'ds-math-add-overflow'
                            require (1000 * mem[_222 + 50 len 14]) + (997 * cd[((96 * idx) + cd[36] + 36)])
                            _306 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_306] = 0 / (1000 * Mask(112, 0, _227)) + (997 * cd[((96 * idx) + cd[36] + 36)])
                            mem[_306 + 32] = Mask(112, 0, _227)
                            mem[_306 + 64] = Mask(112, 0, _225)
                            require idx < mem[96]
                            mem[(32 * idx) + 128] = _306
                        else:
                            require mem[_222 + 18 len 14]
                            if 997 * cd[((96 * idx) + cd[36] + 36)] * mem[_222 + 18 len 14] / mem[_222 + 18 len 14] != 997 * cd[((96 * idx) + cd[36] + 36)]:
                                revert with 0, 'ds-math-mul-overflow'
                            if 1000 * mem[_222 + 50 len 14] / 1000 != mem[_222 + 50 len 14]:
                                revert with 0, 'ds-math-mul-overflow'
                            if (1000 * mem[_222 + 50 len 14]) + (997 * cd[((96 * idx) + cd[36] + 36)]) < 1000 * mem[_222 + 50 len 14]:
                                revert with 0, 'ds-math-add-overflow'
                            require (1000 * mem[_222 + 50 len 14]) + (997 * cd[((96 * idx) + cd[36] + 36)])
                            _314 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_314] = 997 * cd[((96 * idx) + cd[36] + 36)] * Mask(112, 0, _225) / (1000 * Mask(112, 0, _227)) + (997 * cd[((96 * idx) + cd[36] + 36)])
                            mem[_314 + 32] = Mask(112, 0, _227)
                            mem[_314 + 64] = Mask(112, 0, _225)
                            require idx < mem[96]
                            mem[(32 * idx) + 128] = _314
            idx = idx + 1
            continue 
        _190 = mem[64]
        mem[mem[64]] = 64
        _191 = mem[96]
        mem[mem[64] + 64] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 96
        while idx < _191:
            _373 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_373 + 32]
            mem[t + 64] = mem[_373 + 64]
            idx = idx + 1
            s = s + 32
            t = t + 96
            continue 
        mem[_190 + 32] = block.number
        return memory
          from mem[64]
           len _190 + (96 * _191) + -mem[64] + 96
    mem[64] = (32 * ('cd', 36).length) + 224
    mem[(32 * ('cd', 36).length) + 128] = 0
    mem[(32 * ('cd', 36).length) + 160] = 0
    mem[(32 * ('cd', 36).length) + 192] = 0
    mem[var18001] = (32 * ('cd', 36).length) + 128
    s = var18001
    idx = var18002
    while idx - 1:
        mem[64] = mem[64] + 96
        mem[(32 * ('cd', 36).length) + 128] = 0
        mem[(32 * ('cd', 36).length) + 160] = 0
        mem[(32 * ('cd', 36).length) + 192] = 0
        mem[s + 32] = (32 * ('cd', 36).length) + 128
        s = s + 32
        idx = idx - 1
        continue 
    require ext_code.size(address(cd[4]))
    staticcall address(cd[4]).factory() with:
            gas gas_remaining wei
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _380 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _381 = mem[_380]
    require mem[_380] == mem[_380 + 12 len 20]
    idx = 0
    while idx < ('cd', 36).length:
        require cd[((96 * idx) + cd[36] + 68)] == address(cd[((96 * idx) + cd[36] + 68)])
        require idx < ('cd', 36).length
        require cd[((96 * idx) + cd[36] + 100)] == address(cd[((96 * idx) + cd[36] + 100)])
        mem[mem[64] + 4] = address(cd[((96 * idx) + cd[36] + 68)])
        mem[mem[64] + 36] = address(cd[((96 * idx) + cd[36] + 100)])
        require ext_code.size(address(_381))
        staticcall address(_381).getPair(address rg1, address rg2) with:
                gas gas_remaining wei
               args address(cd[((96 * idx) + cd[36] + 68)]), address(cd[((96 * idx) + cd[36] + 100)])
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _480 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_480] == mem[_480 + 12 len 20]
        if not mem[_480 + 12 len 20]:
            _482 = mem[64]
            mem[64] = mem[64] + 96
            mem[_482] = 0
            mem[_482 + 32] = 0
            mem[_482 + 64] = 0
            require idx < mem[96]
            mem[(32 * idx) + 128] = _482
        else:
            require ext_code.size(mem[_480 + 12 len 20])
            staticcall mem[_480 + 12 len 20].getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if address(cd[((96 * idx) + cd[36] + 68)]) < address(cd[((96 * idx) + cd[36] + 100)]):
                _488 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _490 = mem[_488]
                require mem[_488] == mem[_488 + 18 len 14]
                _492 = mem[_488 + 32]
                require mem[_488 + 32] == mem[_488 + 50 len 14]
                require mem[_488 + 64] == mem[_488 + 92 len 4]
                require idx < ('cd', 36).length
                if 997 * cd[((96 * idx) + cd[36] + 36)] / 997 != cd[((96 * idx) + cd[36] + 36)]:
                    revert with 0, 'ds-math-mul-overflow'
                if address(cd[((96 * idx) + cd[36] + 68)]) == address(cd[((96 * idx) + cd[36] + 68)]):
                    if not mem[_488 + 50 len 14]:
                        if 1000 * mem[_488 + 18 len 14] / 1000 != mem[_488 + 18 len 14]:
                            revert with 0, 'ds-math-mul-overflow'
                        if (1000 * mem[_488 + 18 len 14]) + (997 * cd[((96 * idx) + cd[36] + 36)]) < 1000 * mem[_488 + 18 len 14]:
                            revert with 0, 'ds-math-add-overflow'
                        require (1000 * mem[_488 + 18 len 14]) + (997 * cd[((96 * idx) + cd[36] + 36)])
                        _544 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_544] = 0 / (1000 * Mask(112, 0, _490)) + (997 * cd[((96 * idx) + cd[36] + 36)])
                        mem[_544 + 32] = Mask(112, 0, _490)
                        mem[_544 + 64] = Mask(112, 0, _492)
                        require idx < mem[96]
                        mem[(32 * idx) + 128] = _544
                    else:
                        require mem[_488 + 50 len 14]
                        if 997 * cd[((96 * idx) + cd[36] + 36)] * mem[_488 + 50 len 14] / mem[_488 + 50 len 14] != 997 * cd[((96 * idx) + cd[36] + 36)]:
                            revert with 0, 'ds-math-mul-overflow'
                        if 1000 * mem[_488 + 18 len 14] / 1000 != mem[_488 + 18 len 14]:
                            revert with 0, 'ds-math-mul-overflow'
                        if (1000 * mem[_488 + 18 len 14]) + (997 * cd[((96 * idx) + cd[36] + 36)]) < 1000 * mem[_488 + 18 len 14]:
                            revert with 0, 'ds-math-add-overflow'
                        require (1000 * mem[_488 + 18 len 14]) + (997 * cd[((96 * idx) + cd[36] + 36)])
                        _552 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_552] = 997 * cd[((96 * idx) + cd[36] + 36)] * Mask(112, 0, _492) / (1000 * Mask(112, 0, _490)) + (997 * cd[((96 * idx) + cd[36] + 36)])
                        mem[_552 + 32] = Mask(112, 0, _490)
                        mem[_552 + 64] = Mask(112, 0, _492)
                        require idx < mem[96]
                        mem[(32 * idx) + 128] = _552
                else:
                    if not mem[_488 + 18 len 14]:
                        if 1000 * mem[_488 + 50 len 14] / 1000 != mem[_488 + 50 len 14]:
                            revert with 0, 'ds-math-mul-overflow'
                        if (1000 * mem[_488 + 50 len 14]) + (997 * cd[((96 * idx) + cd[36] + 36)]) < 1000 * mem[_488 + 50 len 14]:
                            revert with 0, 'ds-math-add-overflow'
                        require (1000 * mem[_488 + 50 len 14]) + (997 * cd[((96 * idx) + cd[36] + 36)])
                        _546 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_546] = 0 / (1000 * Mask(112, 0, _492)) + (997 * cd[((96 * idx) + cd[36] + 36)])
                        mem[_546 + 32] = Mask(112, 0, _492)
                        mem[_546 + 64] = Mask(112, 0, _490)
                        require idx < mem[96]
                        mem[(32 * idx) + 128] = _546
                    else:
                        require mem[_488 + 18 len 14]
                        if 997 * cd[((96 * idx) + cd[36] + 36)] * mem[_488 + 18 len 14] / mem[_488 + 18 len 14] != 997 * cd[((96 * idx) + cd[36] + 36)]:
                            revert with 0, 'ds-math-mul-overflow'
                        if 1000 * mem[_488 + 50 len 14] / 1000 != mem[_488 + 50 len 14]:
                            revert with 0, 'ds-math-mul-overflow'
                        if (1000 * mem[_488 + 50 len 14]) + (997 * cd[((96 * idx) + cd[36] + 36)]) < 1000 * mem[_488 + 50 len 14]:
                            revert with 0, 'ds-math-add-overflow'
                        require (1000 * mem[_488 + 50 len 14]) + (997 * cd[((96 * idx) + cd[36] + 36)])
                        _554 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_554] = 997 * cd[((96 * idx) + cd[36] + 36)] * Mask(112, 0, _490) / (1000 * Mask(112, 0, _492)) + (997 * cd[((96 * idx) + cd[36] + 36)])
                        mem[_554 + 32] = Mask(112, 0, _492)
                        mem[_554 + 64] = Mask(112, 0, _490)
                        require idx < mem[96]
                        mem[(32 * idx) + 128] = _554
            else:
                _489 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _491 = mem[_489]
                require mem[_489] == mem[_489 + 18 len 14]
                _493 = mem[_489 + 32]
                require mem[_489 + 32] == mem[_489 + 50 len 14]
                require mem[_489 + 64] == mem[_489 + 92 len 4]
                require idx < ('cd', 36).length
                if 997 * cd[((96 * idx) + cd[36] + 36)] / 997 != cd[((96 * idx) + cd[36] + 36)]:
                    revert with 0, 'ds-math-mul-overflow'
                if address(cd[((96 * idx) + cd[36] + 68)]) == address(cd[((96 * idx) + cd[36] + 100)]):
                    if not mem[_489 + 50 len 14]:
                        if 1000 * mem[_489 + 18 len 14] / 1000 != mem[_489 + 18 len 14]:
                            revert with 0, 'ds-math-mul-overflow'
                        if (1000 * mem[_489 + 18 len 14]) + (997 * cd[((96 * idx) + cd[36] + 36)]) < 1000 * mem[_489 + 18 len 14]:
                            revert with 0, 'ds-math-add-overflow'
                        require (1000 * mem[_489 + 18 len 14]) + (997 * cd[((96 * idx) + cd[36] + 36)])
                        _548 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_548] = 0 / (1000 * Mask(112, 0, _491)) + (997 * cd[((96 * idx) + cd[36] + 36)])
                        mem[_548 + 32] = Mask(112, 0, _491)
                        mem[_548 + 64] = Mask(112, 0, _493)
                        require idx < mem[96]
                        mem[(32 * idx) + 128] = _548
                    else:
                        require mem[_489 + 50 len 14]
                        if 997 * cd[((96 * idx) + cd[36] + 36)] * mem[_489 + 50 len 14] / mem[_489 + 50 len 14] != 997 * cd[((96 * idx) + cd[36] + 36)]:
                            revert with 0, 'ds-math-mul-overflow'
                        if 1000 * mem[_489 + 18 len 14] / 1000 != mem[_489 + 18 len 14]:
                            revert with 0, 'ds-math-mul-overflow'
                        if (1000 * mem[_489 + 18 len 14]) + (997 * cd[((96 * idx) + cd[36] + 36)]) < 1000 * mem[_489 + 18 len 14]:
                            revert with 0, 'ds-math-add-overflow'
                        require (1000 * mem[_489 + 18 len 14]) + (997 * cd[((96 * idx) + cd[36] + 36)])
                        _556 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_556] = 997 * cd[((96 * idx) + cd[36] + 36)] * Mask(112, 0, _493) / (1000 * Mask(112, 0, _491)) + (997 * cd[((96 * idx) + cd[36] + 36)])
                        mem[_556 + 32] = Mask(112, 0, _491)
                        mem[_556 + 64] = Mask(112, 0, _493)
                        require idx < mem[96]
                        mem[(32 * idx) + 128] = _556
                else:
                    if not mem[_489 + 18 len 14]:
                        if 1000 * mem[_489 + 50 len 14] / 1000 != mem[_489 + 50 len 14]:
                            revert with 0, 'ds-math-mul-overflow'
                        if (1000 * mem[_489 + 50 len 14]) + (997 * cd[((96 * idx) + cd[36] + 36)]) < 1000 * mem[_489 + 50 len 14]:
                            revert with 0, 'ds-math-add-overflow'
                        require (1000 * mem[_489 + 50 len 14]) + (997 * cd[((96 * idx) + cd[36] + 36)])
                        _550 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_550] = 0 / (1000 * Mask(112, 0, _493)) + (997 * cd[((96 * idx) + cd[36] + 36)])
                        mem[_550 + 32] = Mask(112, 0, _493)
                        mem[_550 + 64] = Mask(112, 0, _491)
                        require idx < mem[96]
                        mem[(32 * idx) + 128] = _550
                    else:
                        require mem[_489 + 18 len 14]
                        if 997 * cd[((96 * idx) + cd[36] + 36)] * mem[_489 + 18 len 14] / mem[_489 + 18 len 14] != 997 * cd[((96 * idx) + cd[36] + 36)]:
                            revert with 0, 'ds-math-mul-overflow'
                        if 1000 * mem[_489 + 50 len 14] / 1000 != mem[_489 + 50 len 14]:
                            revert with 0, 'ds-math-mul-overflow'
                        if (1000 * mem[_489 + 50 len 14]) + (997 * cd[((96 * idx) + cd[36] + 36)]) < 1000 * mem[_489 + 50 len 14]:
                            revert with 0, 'ds-math-add-overflow'
                        require (1000 * mem[_489 + 50 len 14]) + (997 * cd[((96 * idx) + cd[36] + 36)])
                        _558 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_558] = 997 * cd[((96 * idx) + cd[36] + 36)] * Mask(112, 0, _491) / (1000 * Mask(112, 0, _493)) + (997 * cd[((96 * idx) + cd[36] + 36)])
                        mem[_558 + 32] = Mask(112, 0, _493)
                        mem[_558 + 64] = Mask(112, 0, _491)
                        require idx < mem[96]
                        mem[(32 * idx) + 128] = _558
        idx = idx + 1
        continue 
    _471 = mem[64]
    mem[mem[64]] = 64
    _472 = mem[96]
    mem[mem[64] + 64] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 96
    while idx < _472:
        _560 = mem[s]
        mem[t] = mem[mem[s]]
        mem[t + 32] = mem[_560 + 32]
        mem[t + 64] = mem[_560 + 64]
        idx = idx + 1
        s = s + 32
        t = t + 96
        continue 
    mem[_471 + 32] = block.number
    return memory
      from mem[64]
       len _471 + (96 * _472) + -mem[64] + 96
}



}
