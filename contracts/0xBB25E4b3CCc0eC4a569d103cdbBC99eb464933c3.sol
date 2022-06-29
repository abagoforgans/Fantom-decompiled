contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function sub_ca882660(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 0, 65
    if ceil32(arg2.length) + 128 < 96 or ceil32(arg2.length) + 128 > test266151307():
        revert with 0, 65
    require calldata.size >= arg2.length + arg2 + 36
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    mem[ceil32(arg2.length) + 128 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
    if ceil32(arg2.length) > arg2.length:
        mem[ceil32(arg2.length) + arg2.length + 128] = 0
    staticcall address(arg1) with:
         funct Mask(32, -(8 * ceil32(arg2.length) + -arg2.length + 4) + 256, 0) >> -(8 * ceil32(arg2.length) + -arg2.length + 4) + 256
            gas gas_remaining wei
           args mem[ceil32(arg2.length) + 132 len arg2.length - 4]
    if return_data.size:
        return Array(len=return_data.size, data=ext_call.return_data[0 len return_data.size])
    mem[ceil32(arg2.length) + 128] = 32
    mem[ceil32(arg2.length) + 160] = arg2.length
    return Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), 
           mem[arg2.length + 160 len (2 * ceil32(arg2.length)) + -arg2.length + 32]
}

function sub_ce25f24e(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] == address(cd[4])
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    if ('cd', 36).length > test266151307():
        revert with 0, 65
    mem[96] = ('cd', 36).length
    mem[64] = (32 * ('cd', 36).length) + 128
    if not ('cd', 36).length:
        idx = 0
        while idx < ('cd', 36).length:
            require cd[(cd[36] + (32 * idx) + 36)] < calldata.size + -cd[36] - 67
            require cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] <= test266151307()
            require cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68 <= calldata.size - cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]
            mem[mem[64] len cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]] = call.data[cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68 len cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]]
            mem[cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] + mem[64]] = 0
            staticcall address(cd[4]).mem[mem[64] len 4] with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] - 4]
            if not return_data.size:
                if idx >= mem[96]:
                    revert with 0, 50
                mem[(32 * idx) + 128] = 96
            else:
                _37 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_37] = return_data.size
                mem[_37 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if idx >= mem[96]:
                    revert with 0, 50
                mem[(32 * idx) + 128] = _37
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _24 = mem[64]
        mem[mem[64]] = 32
        _25 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        u = mem[64] + (32 * mem[96]) + 64
        while idx < _25:
            mem[t] = u + -_24 - 64
            _46 = mem[s]
            _48 = mem[mem[s]]
            mem[u] = mem[mem[s]]
            v = 0
            while v < _48:
                mem[v + u + 32] = mem[v + _46 + 32]
                v = v + 32
                continue 
            if ceil32(_48) > _48:
                mem[u + _48 + 32] = 0
            idx = idx + 1
            s = s + 32
            t = t + 32
            u = ceil32(_48) + u + 32
            continue 
    else:
        mem[128] = 96
        s = 128
        idx = ('cd', 36).length
        while idx - 1:
            mem[s + 32] = 96
            s = s + 32
            idx = idx - 1
            continue 
        idx = 0
        while idx < ('cd', 36).length:
            require cd[(cd[36] + (32 * idx) + 36)] < calldata.size + -cd[36] - 67
            require cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] <= test266151307()
            require cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68 <= calldata.size - cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]
            mem[mem[64] len cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]] = call.data[cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68 len cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]]
            mem[cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] + mem[64]] = 0
            staticcall address(cd[4]).mem[mem[64] len 4] with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] - 4]
            if not return_data.size:
                if idx >= mem[96]:
                    revert with 0, 50
                mem[(32 * idx) + 128] = 96
            else:
                _58 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_58] = return_data.size
                mem[_58 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if idx >= mem[96]:
                    revert with 0, 50
                mem[(32 * idx) + 128] = _58
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _49 = mem[64]
        mem[mem[64]] = 32
        _50 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        u = mem[64] + (32 * mem[96]) + 64
        while idx < _50:
            mem[t] = u + -_49 - 64
            _62 = mem[s]
            _64 = mem[mem[s]]
            mem[u] = mem[mem[s]]
            v = 0
            while v < _64:
                mem[v + u + 32] = mem[v + _62 + 32]
                v = v + 32
                continue 
            if ceil32(_64) > _64:
                mem[u + _64 + 32] = 0
            idx = idx + 1
            s = s + 32
            t = t + 32
            u = ceil32(_64) + u + 32
            continue 
    return memory
      from mem[64]
       len u - mem[64]
}

function sub_6365d3e3(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 0, 65
    if ceil32(arg2.length) + 128 < 96 or ceil32(arg2.length) + 128 > test266151307():
        revert with 0, 65
    mem[96] = arg2.length
    require calldata.size >= arg2.length + arg2 + 36
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    mem[ceil32(arg2.length) + 128] = 1
    mem[64] = ceil32(arg2.length) + 192
    mem[ceil32(arg2.length) + 160] = 96
    mem[ceil32(arg2.length) + 192 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
    if ceil32(arg2.length) <= arg2.length:
        staticcall address(arg1).mem[ceil32(arg2.length) + 192 len 4] with:
                gas gas_remaining wei
               args mem[ceil32(arg2.length) + 196 len arg2.length - 4]
        if not return_data.size:
            if 1 >= Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]:
                revert with 0, 50
            mem[ceil32(arg2.length) + 192] = 32
            _49 = Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
            mem[ceil32(arg2.length) + 224] = Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
            idx = 0
            s = ceil32(arg2.length) + 160
            t = mem[64] + 64
            u = mem[64] + (32 * Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + 64
            while idx < _49:
                mem[t] = u + -ceil32(arg2.length) - 256
                _71 = mem[s]
                _76 = mem[mem[s]]
                mem[u] = mem[mem[s]]
                v = 0
                while v < _76:
                    mem[v + u + 32] = mem[v + _71 + 32]
                    v = v + 32
                    continue 
                if ceil32(_76) > _76:
                    mem[u + _76 + 32] = 0
                idx = idx + 1
                s = s + 32
                t = t + 32
                u = ceil32(_76) + u + 32
                continue 
        else:
            mem[64] = ceil32(arg2.length) + ceil32(return_data.size) + 193
            mem[ceil32(arg2.length) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if 1 >= Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]:
                revert with 0, 50
            mem[ceil32(arg2.length) + 192] = ceil32(arg2.length) + 192
            mem[ceil32(arg2.length) + ceil32(return_data.size) + 193] = 32
            _50 = Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
            mem[ceil32(arg2.length) + ceil32(return_data.size) + 225] = Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
            idx = 0
            s = ceil32(arg2.length) + 160
            t = mem[64] + 64
            u = mem[64] + (32 * Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + 64
            while idx < _50:
                mem[t] = u + -ceil32(arg2.length) + -ceil32(return_data.size) - 257
                _72 = mem[s]
                _78 = mem[mem[s]]
                mem[u] = mem[mem[s]]
                v = 0
                while v < _78:
                    mem[v + u + 32] = mem[v + _72 + 32]
                    v = v + 32
                    continue 
                if ceil32(_78) > _78:
                    mem[u + _78 + 32] = 0
                idx = idx + 1
                s = s + 32
                t = t + 32
                u = ceil32(_78) + u + 32
                continue 
    else:
        mem[ceil32(arg2.length) + arg2.length + 192] = 0
        staticcall address(arg1).mem[ceil32(arg2.length) + 192 len 4] with:
                gas gas_remaining wei
               args mem[ceil32(arg2.length) + 196 len arg2.length - 4]
        if not return_data.size:
            if 1 >= Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]:
                revert with 0, 50
            mem[ceil32(arg2.length) + 192] = 32
            _53 = Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
            mem[ceil32(arg2.length) + 224] = Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
            idx = 0
            s = ceil32(arg2.length) + 160
            t = mem[64] + 64
            u = mem[64] + (32 * Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + 64
            while idx < _53:
                mem[t] = u + -ceil32(arg2.length) - 256
                _73 = mem[s]
                _80 = mem[mem[s]]
                mem[u] = mem[mem[s]]
                v = 0
                while v < _80:
                    mem[v + u + 32] = mem[v + _73 + 32]
                    v = v + 32
                    continue 
                if ceil32(_80) > _80:
                    mem[u + _80 + 32] = 0
                idx = idx + 1
                s = s + 32
                t = t + 32
                u = ceil32(_80) + u + 32
                continue 
        else:
            mem[64] = ceil32(arg2.length) + ceil32(return_data.size) + 193
            mem[ceil32(arg2.length) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if 1 >= Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]:
                revert with 0, 50
            mem[ceil32(arg2.length) + 192] = ceil32(arg2.length) + 192
            mem[ceil32(arg2.length) + ceil32(return_data.size) + 193] = 32
            _54 = Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
            mem[ceil32(arg2.length) + ceil32(return_data.size) + 225] = Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
            idx = 0
            s = ceil32(arg2.length) + 160
            t = mem[64] + 64
            u = mem[64] + (32 * Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + 64
            while idx < _54:
                mem[t] = u + -ceil32(arg2.length) + -ceil32(return_data.size) - 257
                _74 = mem[s]
                _82 = mem[mem[s]]
                mem[u] = mem[mem[s]]
                v = 0
                while v < _82:
                    mem[v + u + 32] = mem[v + _74 + 32]
                    v = v + 32
                    continue 
                if ceil32(_82) > _82:
                    mem[u + _82 + 32] = 0
                idx = idx + 1
                s = s + 32
                t = t + 32
                u = ceil32(_82) + u + 32
                continue 
    return memory
      from mem[64]
       len u - mem[64]
}



}
