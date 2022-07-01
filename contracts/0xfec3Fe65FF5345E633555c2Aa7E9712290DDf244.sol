contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function sub_0634a9ab(?) payable {
    require calldata.size - 4 >= 160
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    mem[96] = 2
    require arg2 == address(arg2)
    mem[128] = address(arg2)
    require arg3 == address(arg3)
    mem[160] = address(arg3)
    mem[192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[196] = arg4
    mem[228] = 64
    mem[260] = 2
    idx = 0
    s = 292
    t = 128
    while idx < 2:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(address(arg1))
    staticcall address(arg1).getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args arg4, Array(len=2, data=mem[292 len 64])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 192
    require return_data.size >= 32
    _21 = mem[192 len 4], Mask(224, 32, arg4) >> 32
    require mem[192 len 4], Mask(224, 32, arg4) >> 32 <= test266151307()
    require return_data.size + 192 > mem[192 len 4], Mask(224, 32, arg4) >> 32 + 223
    _22 = mem[mem[192 len 4], Mask(224, 32, arg4) >> 32 + 192]
    require mem[mem[192 len 4], Mask(224, 32, arg4) >> 32 + 192] <= test266151307()
    require (32 * mem[mem[192 len 4], Mask(224, 32, arg4) >> 32 + 192]) + 32 >= 0 and ceil32(return_data.size) + (32 * mem[mem[192 len 4], Mask(224, 32, arg4) >> 32 + 192]) + 224 <= test266151307()
    mem[64] = ceil32(return_data.size) + (32 * mem[mem[192 len 4], Mask(224, 32, arg4) >> 32 + 192]) + 224
    mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg4) >> 32 + 192]
    require return_data.size >= _21 + (32 * _22) + 32
    mem[ceil32(return_data.size) + 224 len 32 * _22] = mem[_21 + 224 len 32 * _22]
    require _22 - 1 < _22
    mem[mem[64]] = mem[(32 * _22 - 1) + ceil32(return_data.size) + 224]
    return memory
      from mem[64]
       len 32
}

function sub_deae0e16(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (128 * ('cd', 4).length) + 36 <= calldata.size
    require 2 * ('cd', 4).length <= test266151307()
    mem[96] = 2 * ('cd', 4).length
    mem[64] = (64 * ('cd', 4).length) + 128
    if not uint255(('cd', 4).length):
        idx = 0
        while idx < ('cd', 4).length:
            require cd[((128 * idx) + cd[4] + 100)] == address(cd[((128 * idx) + cd[4] + 100)])
            require cd[((128 * idx) + cd[4] + 132)] == address(cd[((128 * idx) + cd[4] + 132)])
            if address(cd[((128 * idx) + cd[4] + 100)]) == address(cd[((128 * idx) + cd[4] + 132)]):
                revert with 0, 'UniswapV2Library: IDENTICAL_ADDRESSES'
            if address(cd[((128 * idx) + cd[4] + 100)]) < address(cd[((128 * idx) + cd[4] + 132)]):
                if not address(cd[((128 * idx) + cd[4] + 100)]):
                    revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                require cd[((128 * idx) + cd[4] + 68)] == address(cd[((128 * idx) + cd[4] + 68)])
                require ext_code.size(address(cd[((128 * idx) + cd[4] + 68)]))
                staticcall address(cd[((128 * idx) + cd[4] + 68)]).getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _90 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _94 = mem[_90]
                require mem[_90] == mem[_90 + 18 len 14]
                _98 = mem[_90 + 32]
                require mem[_90 + 32] == mem[_90 + 50 len 14]
                require mem[_90 + 64] == mem[_90 + 92 len 4]
                require cd[((128 * idx) + cd[4] + 100)] == address(cd[((128 * idx) + cd[4] + 100)])
                require 2 * idx < mem[96]
                if address(cd[((128 * idx) + cd[4] + 100)]) == address(cd[((128 * idx) + cd[4] + 100)]):
                    mem[(64 * idx) + 128] = mem[_90 + 18 len 14]
                    require (2 * idx) + 1 < mem[96]
                    mem[(32 * (2 * idx) + 1) + 128] = Mask(112, 0, _98)
                else:
                    mem[(64 * idx) + 128] = mem[_90 + 50 len 14]
                    require (2 * idx) + 1 < mem[96]
                    mem[(32 * (2 * idx) + 1) + 128] = Mask(112, 0, _94)
            else:
                if not address(cd[((128 * idx) + cd[4] + 132)]):
                    revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                require cd[((128 * idx) + cd[4] + 68)] == address(cd[((128 * idx) + cd[4] + 68)])
                require ext_code.size(address(cd[((128 * idx) + cd[4] + 68)]))
                staticcall address(cd[((128 * idx) + cd[4] + 68)]).getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _91 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _95 = mem[_91]
                require mem[_91] == mem[_91 + 18 len 14]
                _99 = mem[_91 + 32]
                require mem[_91 + 32] == mem[_91 + 50 len 14]
                require mem[_91 + 64] == mem[_91 + 92 len 4]
                require cd[((128 * idx) + cd[4] + 100)] == address(cd[((128 * idx) + cd[4] + 100)])
                require 2 * idx < mem[96]
                if address(cd[((128 * idx) + cd[4] + 100)]) == address(cd[((128 * idx) + cd[4] + 132)]):
                    mem[(64 * idx) + 128] = mem[_91 + 18 len 14]
                    require (2 * idx) + 1 < mem[96]
                    mem[(32 * (2 * idx) + 1) + 128] = Mask(112, 0, _99)
                else:
                    mem[(64 * idx) + 128] = mem[_91 + 50 len 14]
                    require (2 * idx) + 1 < mem[96]
                    mem[(32 * (2 * idx) + 1) + 128] = Mask(112, 0, _95)
            idx = idx + 1
            continue 
    else:
        mem[128 len 64 * ('cd', 4).length] = call.data[calldata.size len 64 * ('cd', 4).length]
        idx = 0
        while idx < ('cd', 4).length:
            require cd[((128 * idx) + cd[4] + 100)] == address(cd[((128 * idx) + cd[4] + 100)])
            require cd[((128 * idx) + cd[4] + 132)] == address(cd[((128 * idx) + cd[4] + 132)])
            if address(cd[((128 * idx) + cd[4] + 100)]) == address(cd[((128 * idx) + cd[4] + 132)]):
                revert with 0, 'UniswapV2Library: IDENTICAL_ADDRESSES'
            if address(cd[((128 * idx) + cd[4] + 100)]) < address(cd[((128 * idx) + cd[4] + 132)]):
                if not address(cd[((128 * idx) + cd[4] + 100)]):
                    revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                require cd[((128 * idx) + cd[4] + 68)] == address(cd[((128 * idx) + cd[4] + 68)])
                require ext_code.size(address(cd[((128 * idx) + cd[4] + 68)]))
                staticcall address(cd[((128 * idx) + cd[4] + 68)]).getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _92 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _96 = mem[_92]
                require mem[_92] == mem[_92 + 18 len 14]
                _100 = mem[_92 + 32]
                require mem[_92 + 32] == mem[_92 + 50 len 14]
                require mem[_92 + 64] == mem[_92 + 92 len 4]
                require cd[((128 * idx) + cd[4] + 100)] == address(cd[((128 * idx) + cd[4] + 100)])
                require 2 * idx < mem[96]
                if address(cd[((128 * idx) + cd[4] + 100)]) == address(cd[((128 * idx) + cd[4] + 100)]):
                    mem[(64 * idx) + 128] = mem[_92 + 18 len 14]
                    require (2 * idx) + 1 < mem[96]
                    mem[(32 * (2 * idx) + 1) + 128] = Mask(112, 0, _100)
                else:
                    mem[(64 * idx) + 128] = mem[_92 + 50 len 14]
                    require (2 * idx) + 1 < mem[96]
                    mem[(32 * (2 * idx) + 1) + 128] = Mask(112, 0, _96)
            else:
                if not address(cd[((128 * idx) + cd[4] + 132)]):
                    revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                require cd[((128 * idx) + cd[4] + 68)] == address(cd[((128 * idx) + cd[4] + 68)])
                require ext_code.size(address(cd[((128 * idx) + cd[4] + 68)]))
                staticcall address(cd[((128 * idx) + cd[4] + 68)]).getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _93 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _97 = mem[_93]
                require mem[_93] == mem[_93 + 18 len 14]
                _101 = mem[_93 + 32]
                require mem[_93 + 32] == mem[_93 + 50 len 14]
                require mem[_93 + 64] == mem[_93 + 92 len 4]
                require cd[((128 * idx) + cd[4] + 100)] == address(cd[((128 * idx) + cd[4] + 100)])
                require 2 * idx < mem[96]
                if address(cd[((128 * idx) + cd[4] + 100)]) == address(cd[((128 * idx) + cd[4] + 132)]):
                    mem[(64 * idx) + 128] = mem[_93 + 18 len 14]
                    require (2 * idx) + 1 < mem[96]
                    mem[(32 * (2 * idx) + 1) + 128] = Mask(112, 0, _101)
                else:
                    mem[(64 * idx) + 128] = mem[_93 + 50 len 14]
                    require (2 * idx) + 1 < mem[96]
                    mem[(32 * (2 * idx) + 1) + 128] = Mask(112, 0, _97)
            idx = idx + 1
            continue 
    mem[mem[64]] = 32
    mem[mem[64] + 32] = mem[96]
    mem[mem[64] + 64 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
    return 32, mem[mem[64] + 32 len (32 * mem[96]) + 32]
}

function sub_5c140aaa(?) payable {
    require calldata.size - 4 >= 128
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require (32 * ('cd', 36).length) + 128 >= 96 and (32 * ('cd', 36).length) + 128 <= test266151307()
    mem[64] = (32 * ('cd', 36).length) + 128
    mem[96] = ('cd', 36).length
    idx = 0
    s = cd[36] + 36
    t = 128
    while idx < ('cd', 36).length:
        require cd[36] + cd[s] + 67 < calldata.size
        require cd[(cd[36] + cd[s] + 36)] <= test266151307()
        _114 = mem[64]
        require mem[64] + ceil32(cd[(cd[36] + cd[s] + 36)]) + 32 >= mem[64] and mem[64] + ceil32(cd[(cd[36] + cd[s] + 36)]) + 32 <= test266151307()
        mem[64] = mem[64] + ceil32(cd[(cd[36] + cd[s] + 36)]) + 32
        mem[_114] = cd[(cd[36] + cd[s] + 36)]
        require cd[36] + cd[s] + cd[(cd[36] + cd[s] + 36)] + 68 <= calldata.size
        mem[_114 + 32 len cd[(cd[36] + cd[s] + 36)]] = call.data[cd[36] + cd[s] + 68 len cd[(cd[36] + cd[s] + 36)]]
        mem[_114 + cd[(cd[36] + cd[s] + 36)] + 32] = 0
        mem[t] = _114
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    require ('cd', 68).length <= test266151307()
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    require ('cd', 4).length + 1 <= test266151307()
    _115 = mem[64]
    mem[mem[64]] = ('cd', 4).length + 1
    mem[64] = mem[64] + (32 * ('cd', 4).length + 1) + 32
    if not ('cd', 4).length + 1:
        require 0 < mem[_115]
        mem[_115 + 32] = cd[100]
        idx = 0
        s = cd[100]
        while idx < ('cd', 4).length:
            require idx < mem[96]
            _228 = mem[(32 * idx) + 128]
            require idx < ('cd', 68).length
            _232 = mem[64]
            mem[mem[64]] = 32
            mem[64] = mem[64] + 64
            mem[_232 + 32] = call.data[calldata.size]
            if cd[((32 * idx) + cd[68] + 36)] + 32 > mem[_228]:
                mem[_232 + 32] = s
                require idx < ('cd', 4).length
                require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                staticcall cd[((32 * idx) + cd[4] + 36)] with:
                     funct Mask(32, 224, s) >> 224
                        gas gas_remaining wei
                       args mem[_232 + 36 len mem[_232] - 4]
                mem[0] = ext_call.return_data[0]
                if 1 != ext_call.success:
                    mem[_232 + 64] = 0
                    mem[_232 + 96] = 64
                    if not ext_call.success:
                        _274 = mem[_115]
                        mem[_232 + 128] = mem[_115]
                        idx = 0
                        s = _115 + 32
                        t = _232 + 160
                        while idx < _274:
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        return memory
                          from mem[64]
                           len _232 + (32 * _274) + -mem[64] + 160
                    _278 = mem[_115]
                    mem[_232 + 128] = mem[_115]
                    idx = 0
                    s = _115 + 32
                    t = _232 + 160
                    while idx < _278:
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    return memory
                      from mem[64]
                       len _232 + (32 * _278) + -mem[64] + 160
                if not ext_call.success:
                    mem[_232 + 64] = 0
                    mem[_232 + 96] = 64
                    _279 = mem[_115]
                    mem[_232 + 128] = mem[_115]
                    idx = 0
                    s = _115 + 32
                    t = _232 + 160
                    while idx < _279:
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    return memory
                      from mem[64]
                       len _232 + (32 * _279) + -mem[64] + 160
                if ext_call.return_data[0]:
                    require idx + 1 < mem[_115]
                    mem[(32 * idx + 1) + _115 + 32] = ext_call.return_data[0]
                    idx = idx + 1
                    s = ext_call.return_data[0]
                    continue 
                mem[_232 + 64] = 0
                mem[_232 + 96] = 64
                _283 = mem[_115]
                mem[_232 + 128] = mem[_115]
                idx = 0
                s = _115 + 32
                t = _232 + 160
                while idx < _283:
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                return memory
                  from mem[64]
                   len _232 + (32 * _283) + -mem[64] + 160
            _237 = mem[_228]
            mem[_232 + 64] = cd[((32 * idx) + cd[68] + 36)]
            t = _228 + 32
            u = _232 + 96
            while u < _232 + cd[((32 * idx) + cd[68] + 36)] + 96:
                mem[u] = mem[t]
                t = t + 32
                u = u + 32
                continue 
            mem[_232 + 32] = s
            mem[_232 + 64] = mem[_232 + 64] + 32
            s = _232 + 32
            t = _232 + cd[((32 * idx) + cd[68] + 36)] + 96
            while t < _232 + cd[((32 * idx) + cd[68] + 36)] + 128:
                mem[t] = mem[s]
                s = s + 32
                t = t + 32
                continue 
            mem[_232 + 64] = _237 + -cd[((32 * idx) + cd[68] + 36)] + mem[_232 + 64] - 32
            t = cd[((32 * idx) + cd[68] + 36)] + _228 + 64
            s = _232 + cd[((32 * idx) + cd[68] + 36)] + 128
            while s < _237 + _232 + 96:
                mem[s] = mem[t]
                t = t + 32
                s = s + 32
                continue 
            mem[64] = floor32(not mem[_228] + _237 + -cd[((32 * idx) + cd[68] + 36)] - 32 + _237 + _232 + 31) + 3
            require idx < ('cd', 4).length
            require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
            staticcall cd[((32 * idx) + cd[4] + 36)].mem[_232 + 96 len 4] with:
                    gas gas_remaining wei
                   args mem[_232 + 100 len mem[_232 + 64] - 4]
            mem[0] = ext_call.return_data[0]
            if 1 != ext_call.success:
                if not ext_call.success:
                    _458 = mem[64]
                    mem[mem[64]] = 0
                    mem[mem[64] + 32] = 64
                    _466 = mem[_115]
                    mem[mem[64] + 64] = mem[_115]
                    idx = 0
                    s = _115 + 32
                    t = mem[64] + 96
                    while idx < _466:
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    return memory
                      from mem[64]
                       len _458 + (32 * _466) + -mem[64] + 96
                _462 = mem[64]
                mem[mem[64]] = 0
                mem[mem[64] + 32] = 64
                _470 = mem[_115]
                mem[mem[64] + 64] = mem[_115]
                idx = 0
                s = _115 + 32
                t = mem[64] + 96
                while idx < _470:
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                return memory
                  from mem[64]
                   len _462 + (32 * _470) + -mem[64] + 96
            if not ext_call.success:
                _463 = mem[64]
                mem[mem[64]] = 0
                mem[mem[64] + 32] = 64
                _471 = mem[_115]
                mem[mem[64] + 64] = mem[_115]
                idx = 0
                s = _115 + 32
                t = mem[64] + 96
                while idx < _471:
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                return memory
                  from mem[64]
                   len _463 + (32 * _471) + -mem[64] + 96
            if ext_call.return_data[0]:
                require idx + 1 < mem[_115]
                mem[(32 * idx + 1) + _115 + 32] = ext_call.return_data[0]
                idx = idx + 1
                s = ext_call.return_data[0]
                continue 
            _467 = mem[64]
            mem[mem[64]] = 0
            mem[mem[64] + 32] = 64
            _475 = mem[_115]
            mem[mem[64] + 64] = mem[_115]
            idx = 0
            s = _115 + 32
            t = mem[64] + 96
            while idx < _475:
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return memory
              from mem[64]
               len _467 + (32 * _475) + -mem[64] + 96
        mem[mem[64]] = s
        mem[mem[64] + 32] = 64
        _236 = mem[_115]
        mem[mem[64] + 64] = mem[_115]
        mem[mem[64] + 96 len 32 * _236] = mem[_115 + 32 len 32 * _236]
        var41001 = _236
        return s, 64, mem[mem[64] + 64 len (32 * _236) + 32]
    mem[_115 + 32 len 32 * ('cd', 4).length + 1] = call.data[calldata.size len 32 * ('cd', 4).length + 1]
    require 0 < mem[_115]
    mem[_115 + 32] = cd[100]
    idx = 0
    s = cd[100]
    while idx < ('cd', 4).length:
        require idx < mem[96]
        _229 = mem[(32 * idx) + 128]
        require idx < ('cd', 68).length
        _234 = mem[64]
        mem[mem[64]] = 32
        mem[64] = mem[64] + 64
        mem[_234 + 32] = call.data[calldata.size]
        if cd[((32 * idx) + cd[68] + 36)] + 32 > mem[_229]:
            mem[_234 + 32] = s
            require idx < ('cd', 4).length
            require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
            staticcall cd[((32 * idx) + cd[4] + 36)] with:
                 funct Mask(32, 224, s) >> 224
                    gas gas_remaining wei
                   args mem[_234 + 36 len mem[_234] - 4]
            mem[0] = ext_call.return_data[0]
            if 1 != ext_call.success:
                mem[_234 + 64] = 0
                mem[_234 + 96] = 64
                if not ext_call.success:
                    _276 = mem[_115]
                    mem[_234 + 128] = mem[_115]
                    idx = 0
                    s = _115 + 32
                    t = _234 + 160
                    while idx < _276:
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    return memory
                      from mem[64]
                       len _234 + (32 * _276) + -mem[64] + 160
                _280 = mem[_115]
                mem[_234 + 128] = mem[_115]
                idx = 0
                s = _115 + 32
                t = _234 + 160
                while idx < _280:
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                return memory
                  from mem[64]
                   len _234 + (32 * _280) + -mem[64] + 160
            if not ext_call.success:
                mem[_234 + 64] = 0
                mem[_234 + 96] = 64
                _281 = mem[_115]
                mem[_234 + 128] = mem[_115]
                idx = 0
                s = _115 + 32
                t = _234 + 160
                while idx < _281:
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                return memory
                  from mem[64]
                   len _234 + (32 * _281) + -mem[64] + 160
            if ext_call.return_data[0]:
                require idx + 1 < mem[_115]
                mem[(32 * idx + 1) + _115 + 32] = ext_call.return_data[0]
                idx = idx + 1
                s = ext_call.return_data[0]
                continue 
            mem[_234 + 64] = 0
            mem[_234 + 96] = 64
            _285 = mem[_115]
            mem[_234 + 128] = mem[_115]
            idx = 0
            s = _115 + 32
            t = _234 + 160
            while idx < _285:
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return memory
              from mem[64]
               len _234 + (32 * _285) + -mem[64] + 160
        _240 = mem[_229]
        mem[_234 + 64] = cd[((32 * idx) + cd[68] + 36)]
        t = _229 + 32
        u = _234 + 96
        while u < _234 + cd[((32 * idx) + cd[68] + 36)] + 96:
            mem[u] = mem[t]
            t = t + 32
            u = u + 32
            continue 
        mem[_234 + 32] = s
        mem[_234 + 64] = mem[_234 + 64] + 32
        s = _234 + 32
        t = _234 + cd[((32 * idx) + cd[68] + 36)] + 96
        while t < _234 + cd[((32 * idx) + cd[68] + 36)] + 128:
            mem[t] = mem[s]
            s = s + 32
            t = t + 32
            continue 
        mem[_234 + 64] = _240 + -cd[((32 * idx) + cd[68] + 36)] + mem[_234 + 64] - 32
        t = cd[((32 * idx) + cd[68] + 36)] + _229 + 64
        s = _234 + cd[((32 * idx) + cd[68] + 36)] + 128
        while s < _240 + _234 + 96:
            mem[s] = mem[t]
            t = t + 32
            s = s + 32
            continue 
        mem[64] = floor32(not mem[_229] + _240 + -cd[((32 * idx) + cd[68] + 36)] - 32 + _240 + _234 + 31) + 3
        require idx < ('cd', 4).length
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        staticcall cd[((32 * idx) + cd[4] + 36)].mem[_234 + 96 len 4] with:
                gas gas_remaining wei
               args mem[_234 + 100 len mem[_234 + 64] - 4]
        mem[0] = ext_call.return_data[0]
        if 1 != ext_call.success:
            if not ext_call.success:
                _460 = mem[64]
                mem[mem[64]] = 0
                mem[mem[64] + 32] = 64
                _468 = mem[_115]
                mem[mem[64] + 64] = mem[_115]
                idx = 0
                s = _115 + 32
                t = mem[64] + 96
                while idx < _468:
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                return memory
                  from mem[64]
                   len _460 + (32 * _468) + -mem[64] + 96
            _464 = mem[64]
            mem[mem[64]] = 0
            mem[mem[64] + 32] = 64
            _472 = mem[_115]
            mem[mem[64] + 64] = mem[_115]
            idx = 0
            s = _115 + 32
            t = mem[64] + 96
            while idx < _472:
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return memory
              from mem[64]
               len _464 + (32 * _472) + -mem[64] + 96
        if not ext_call.success:
            _465 = mem[64]
            mem[mem[64]] = 0
            mem[mem[64] + 32] = 64
            _473 = mem[_115]
            mem[mem[64] + 64] = mem[_115]
            idx = 0
            s = _115 + 32
            t = mem[64] + 96
            while idx < _473:
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return memory
              from mem[64]
               len _465 + (32 * _473) + -mem[64] + 96
        if ext_call.return_data[0]:
            require idx + 1 < mem[_115]
            mem[(32 * idx + 1) + _115 + 32] = ext_call.return_data[0]
            idx = idx + 1
            s = ext_call.return_data[0]
            continue 
        _469 = mem[64]
        mem[mem[64]] = 0
        mem[mem[64] + 32] = 64
        _477 = mem[_115]
        mem[mem[64] + 64] = mem[_115]
        idx = 0
        s = _115 + 32
        t = mem[64] + 96
        while idx < _477:
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _469 + (32 * _477) + -mem[64] + 96
    mem[mem[64]] = s
    mem[mem[64] + 32] = 64
    _239 = mem[_115]
    mem[mem[64] + 64] = mem[_115]
    mem[mem[64] + 96 len 32 * _239] = mem[_115 + 32 len 32 * _239]
    var42001 = _239
    return s, 64, mem[mem[64] + 64 len (32 * _239) + 32]
}



}
