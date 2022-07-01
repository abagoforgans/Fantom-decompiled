contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function aggregate(address arg1, bytes[] arg2) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require (32 * arg1.length) + 128 >= 96 and (32 * arg1.length) + 128 <= test266151307()
    mem[64] = (32 * arg1.length) + 128
    mem[96] = arg1.length
    idx = 0
    s = arg1 + 36
    t = 128
    while idx < arg1.length:
        require calldata.size + -arg1 + -cd[s] - 36 >= 64
        _72 = mem[64]
        require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
        mem[64] = mem[64] + 64
        require cd[(arg1 + cd[s] + 36)] == address(cd[(arg1 + cd[s] + 36)])
        mem[_72] = cd[(arg1 + cd[s] + 36)]
        require cd[(arg1 + cd[s] + 68)] <= test266151307()
        require arg1 + cd[s] + cd[(arg1 + cd[s] + 68)] + 67 < calldata.size
        require cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 68)] + 36)] <= test266151307()
        _92 = mem[64]
        require mem[64] + ceil32(cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 68)] + 36)]) + 32 >= mem[64] and mem[64] + ceil32(cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 68)] + 36)]) + 32 <= test266151307()
        mem[64] = mem[64] + ceil32(cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 68)] + 36)]) + 32
        mem[_92] = cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 68)] + 36)]
        require arg1 + cd[s] + cd[(arg1 + cd[s] + 68)] + cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 68)] + 36)] + 68 <= calldata.size
        mem[_92 + 32 len cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 68)] + 36)]] = call.data[arg1 + cd[s] + cd[(arg1 + cd[s] + 68)] + 68 len cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 68)] + 36)]]
        mem[_92 + cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 68)] + 36)] + 32] = 0
        mem[_72 + 32] = _92
        mem[t] = _72
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    _70 = mem[96]
    require mem[96] <= test266151307()
    _71 = mem[64]
    mem[mem[64]] = mem[96]
    mem[64] = mem[64] + (32 * _70) + 32
    if not _70:
        _138 = mem[96]
        idx = 0
        while idx < _138:
            require idx < mem[96]
            _142 = mem[mem[(32 * idx) + 128]]
            require idx < mem[96]
            _146 = mem[mem[(32 * idx) + 128] + 32]
            _147 = mem[64]
            _149 = mem[mem[mem[(32 * idx) + 128] + 32]]
            s = 0
            while arg1.length < _149:
                mem[arg1.length + _147] = mem[arg1.length + _146 + 32]
                _138 = mem[96]
                s = arg1.length + 32
                continue 
            if arg1.length <= _149:
                staticcall address(_142).mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len _149 + _147 + -mem[64] - 4]
                if not return_data.size:
                    if ext_call.success:
                        require s < mem[_71]
                        mem[(32 * s) + _71 + 32] = 96
                    else:
                        _225 = mem[64]
                        mem[mem[64]] = 0
                        mem[64] = mem[64] + 32
                        require s < mem[_71]
                        mem[(32 * s) + _71 + 32] = _225
                else:
                    _219 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_219] = return_data.size
                    mem[_219 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if ext_call.success:
                        require s < mem[_71]
                        mem[(32 * s) + _71 + 32] = _219
                    else:
                        _228 = mem[64]
                        mem[mem[64]] = 0
                        mem[64] = mem[64] + 32
                        require s < mem[_71]
                        mem[(32 * s) + _71 + 32] = _228
            else:
                mem[_147 + _149] = 0
                staticcall address(_142).mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len _149 + _147 + -mem[64] - 4]
                if not return_data.size:
                    if ext_call.success:
                        require s < mem[_71]
                        mem[(32 * s) + _71 + 32] = 96
                    else:
                        _232 = mem[64]
                        mem[mem[64]] = 0
                        mem[64] = mem[64] + 32
                        require s < mem[_71]
                        mem[(32 * s) + _71 + 32] = _232
                else:
                    _223 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_223] = return_data.size
                    mem[_223 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if ext_call.success:
                        require s < mem[_71]
                        mem[(32 * s) + _71 + 32] = _223
                    else:
                        _235 = mem[64]
                        mem[mem[64]] = 0
                        mem[64] = mem[64] + 32
                        require s < mem[_71]
                        mem[(32 * s) + _71 + 32] = _235
            _138 = mem[96]
            s = s + 1
            continue 
        _140 = mem[64]
        mem[mem[64]] = 32
        _144 = mem[_71]
        mem[mem[64] + 32] = mem[_71]
        idx = 0
        s = _71 + 32
        t = mem[64] + 64
        u = mem[64] + (32 * _144) + 64
        while idx < _144:
            mem[t] = u + -_140 - 64
            _203 = mem[s]
            _204 = mem[mem[s]]
            mem[u] = mem[mem[s]]
            v = 0
            while v < _204:
                mem[v + u + 32] = mem[v + _203 + 32]
                v = v + 32
                continue 
            if ceil32(_204) > _204:
                mem[u + _204 + 32] = 0
            idx = idx + 1
            s = s + 32
            t = t + 32
            u = ceil32(_204) + u + 32
            continue 
    else:
        mem[_71 + 32] = 96
        s = _71 + 32
        idx = _70
        while idx - 1:
            mem[s + 32] = 96
            s = s + 32
            idx = idx - 1
            continue 
        _202 = mem[96]
        idx = 0
        while idx < _202:
            require idx < mem[96]
            _210 = mem[mem[(32 * idx) + 128]]
            require idx < mem[96]
            _214 = mem[mem[(32 * idx) + 128] + 32]
            _215 = mem[64]
            _218 = mem[mem[mem[(32 * idx) + 128] + 32]]
            s = 0
            while s < _218:
                mem[s + _215] = mem[s + _214 + 32]
                _202 = mem[96]
                s = s + 32
                continue 
            if ceil32(_218) <= _218:
                staticcall address(_210).mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len _218 + _215 + -mem[64] - 4]
                if not return_data.size:
                    if ext_call.success:
                        require idx < mem[_71]
                        mem[(32 * idx) + _71 + 32] = 96
                    else:
                        _265 = mem[64]
                        mem[mem[64]] = 0
                        mem[64] = mem[64] + 32
                        require idx < mem[_71]
                        mem[(32 * idx) + _71 + 32] = _265
                else:
                    _262 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_262] = return_data.size
                    mem[_262 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if ext_call.success:
                        require idx < mem[_71]
                        mem[(32 * idx) + _71 + 32] = _262
                    else:
                        _268 = mem[64]
                        mem[mem[64]] = 0
                        mem[64] = mem[64] + 32
                        require idx < mem[_71]
                        mem[(32 * idx) + _71 + 32] = _268
            else:
                mem[_215 + _218] = 0
                staticcall address(_210).mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len _218 + _215 + -mem[64] - 4]
                if not return_data.size:
                    if ext_call.success:
                        require idx < mem[_71]
                        mem[(32 * idx) + _71 + 32] = 96
                    else:
                        _271 = mem[64]
                        mem[mem[64]] = 0
                        mem[64] = mem[64] + 32
                        require idx < mem[_71]
                        mem[(32 * idx) + _71 + 32] = _271
                else:
                    _264 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_264] = return_data.size
                    mem[_264 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if ext_call.success:
                        require idx < mem[_71]
                        mem[(32 * idx) + _71 + 32] = _264
                    else:
                        _274 = mem[64]
                        mem[mem[64]] = 0
                        mem[64] = mem[64] + 32
                        require idx < mem[_71]
                        mem[(32 * idx) + _71 + 32] = _274
            _202 = mem[96]
            idx = idx + 1
            continue 
        _208 = mem[64]
        mem[mem[64]] = 32
        _212 = mem[_71]
        mem[mem[64] + 32] = mem[_71]
        idx = 0
        s = _71 + 32
        t = mem[64] + 64
        u = mem[64] + (32 * _212) + 64
        while idx < _212:
            mem[t] = u + -_208 - 64
            _256 = mem[s]
            _257 = mem[mem[s]]
            mem[u] = mem[mem[s]]
            v = 0
            while v < _257:
                mem[v + u + 32] = mem[v + _256 + 32]
                v = v + 32
                continue 
            if ceil32(_257) > _257:
                mem[u + _257 + 32] = 0
            idx = idx + 1
            s = s + 32
            t = t + 32
            u = ceil32(_257) + u + 32
            continue 
    return memory
      from mem[64]
       len u - mem[64]
}



}
